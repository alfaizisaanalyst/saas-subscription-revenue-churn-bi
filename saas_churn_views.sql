use saas_churn_analytics;

create or replace view vw_subscription_revenue as
select
    a.plan_tier,
    s.billing_frequency,
    count(s.subscription_id) as total_subscriptions,
    sum(s.mrr_amount) as total_mrr_usd,
    sum(s.arr_amount) as total_arr_usd
from ravenstack_subscriptions s
left join ravenstack_accounts a
    on s.account_id = a.account_id
group by
    a.plan_tier,
    s.billing_frequency;

create or replace view vw_churn_by_reason as
select
    c.reason_code,
    a.plan_tier,
    count(c.churn_event_id) as total_churn_events,
    sum(c.refund_amount_usd) as total_refund_usd
from ravenstack_churn_events c
left join ravenstack_accounts a
    on c.account_id = a.account_id
group by
    c.reason_code,
    a.plan_tier;

select * from vw_subscription_revenue;
select * from vw_churn_by_reason;