# SaaS subscription revenue and churn dashboard

Built SQL views in MySQL (`saas_churn_analytics`) and linked them to Power BI to check MRR, subscriptions, and churn reasons by plan tier.

## what i did
- **sql views:** made two views (`vw_subscription_revenue` and `vw_churn_by_reason`) using joins to group MRR, ARR, subscription counts, churn events, and refunds.
- **revenue & churn:** looked at 11M total MRR across 5K subscriptions (`annual` vs `monthly` across Basic, Pro, Enterprise) and 600 churn events led by features (19%), budget (17.33%), and support (17.33%).

## Files
- `saas_churn_views.sql` – MySQL views for revenue and churn
- `dashboard_preview.png` – Power BI dashboard screenshot
- `saas_revenue_churn.pbix` – Power BI file
