Worked for 12s

Good. Sandvik actually has a developer portal, so we can investigate whether there's an API that will automate the tool assembly process.

I verified the portal is real and provides API discovery, documentation, and subscription management. What I haven't verified yet is whether it offers an API to take four Sandvik component part numbers, assemble them, and generate a GTC file. That's the capability we're looking for. developers.sandvik.coromant.com

### Step 1 — Open Sandvik's developer portal

Sandvik Coromant Developer Portal

developers.sandvik.coromant.com

Open developer portal

The landing page describes three areas:

* Explore API-Products: Find API packages you can subscribe to.

* Explore APIs: Browse individual available APIs.

* View Subscriptions: See API subscriptions associated with your account.

Sandvik says you must sign in with a Sandvik Coromant website account before accessing the APIs. developers.sandvik.coromant.com

Since you've already been using Sandvik's regular product website, try signing in with the same account.

### Step 2 — Examine the available APIs

Once you're signed in, select Explore APIs.

Look for anything involving tool catalog data, product search, tool assemblies, ISO 13399, GTC exports, or tool geometry.

The important distinction is that a product-search API alone won't solve our entire problem. Ideally, we need an API that can also construct an assembly from compatible components and return the complete manufacturer's tool data.

### Step 3 — Check the API documentation

If you find a promising API, open its documentation. We're looking for these capabilities:

| Capability                 | Why we need it                                |
| -------------------------- | --------------------------------------------- |
| Search by product code     | Find each Sandvik part number                 |
| Retrieve component details | Obtain dimensions and connection data         |
| Assembly creation          | Join the four components in the correct order |
| Assembly export            | Produce GTC or ISO 13399 data                 |

If the API supports these functions, we could automate all five unique tool assemblies using a small PowerShell or Python utility.

### Step 4 — Check API-Products and access

If you find a suitable API, return to Explore API-Products and see whether it belongs to a subscription package. The portal supports subscriptions, but I haven't confirmed which products are offered or whether access requires approval or payment.

Don't purchase a subscription yet. First, we need to confirm the API can accomplish our specific task.

### Step 5 — Our first test assembly

We'll use the button tool that had the 0.500-inch gauge-point error:

```text
C8-A390.547-50 070
C8-SL70-RG-090
SL70A-SRDCL-300-4HP
RCMT 43 4335
```

Our ideal automated workflow would be:

Four Sandvik component numbers

API retrieves verified component data

API constructs and validates assembly

Complete GTC assembly

Import into Mastercam or VERICUT

This is our target workflow, not a confirmed Sandvik API capability.

### What I want you to do now

Open the developer portal, sign in, and click Explore APIs.

Send me a screenshot showing the available API names. I'll help identify which ones can provide the manufacturer geometry and whether complete assembly creation is supported.

That will give us a concrete answer about the programmatic route without wasting time writing scripts against an API that might not support what we need.

One additional avenue: Sandvik's Tool Library officially supports GTC, ISO 13399, and STEP exports, so if we can obtain the original assembly data through the API, we may not need the unreliable interactive builder at all. sandvik.coromant.com

