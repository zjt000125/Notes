

## 4. Inequalities

### 4.1 Probability Inequalities

![image-20240207181121662](./images/image-20240207181121662.png)

![image-20240207181206683](./images/image-20240207181206683.png)

![image-20240207181303629](./images/image-20240207181303629.png)

![image-20240207181343810](./images/image-20240207181343810.png)

![image-20240207181518115](./images/image-20240207181518115.png)

![image-20240207181801325](./images/image-20240207181801325.png)

![image-20240207181545444](./images/image-20240207181545444.png)

### 4.2 Inequalities For Expectations

![image-20240207181656947](./images/image-20240207181656947.png)

## 5. Convergence of Random Variables

### 5.1 Introduction

![image-20240207182220191](./images/image-20240207182220191.png)

![image-20240207182252884](./images/image-20240207182252884.png)

### 5.2 Types of Convergence

![image-20240207182552088](./images/image-20240207182552088.png)

![image-20240208190059717](./images/image-20240208190059717.png)

![image-20240208190810385](./images/image-20240208190810385.png)

![image-20240208191028286](./images/image-20240208191028286.png)

![image-20240208191103455](./images/image-20240208191103455.png)

![image-20240208191202184](./images/image-20240208191202184.png)

![image-20240208192046117](./images/image-20240208192046117.png)

![image-20240208192441095](./images/image-20240208192441095.png)

![image-20240208193814917](./images/image-20240208193814917.png)

![image-20240208195537672](./images/image-20240208195537672.png)

### 5.3 The Law of Large Numbers

**This theorem says that the mean of a large sample is close to the mean of the distribution.**

![image-20240208193305553](./images/image-20240208193305553.png)

![image-20240208194320767](./images/image-20240208194320767.png)

### 5.4 The Central Limit Theorem

![image-20240208194652077](./images/image-20240208194652077.png)

![image-20240208201050360](./images/image-20240208201050360.png)

![image-20240208195609754](./images/image-20240208195609754.png)

![image-20240208195701531](./images/image-20240208195701531.png)

![image-20240208194744026](./images/image-20240208194744026.png)

![image-20240208194816982](./images/image-20240208194816982.png)

![image-20240208194832885](./images/image-20240208194832885.png)

### 5.5 The Delta Method

![image-20240208195112023](./images/image-20240208195112023.png)

![image-20240208195200231](./images/image-20240208195200231.png)

![image-20240208195234991](./images/image-20240208195234991.png)



## 6. Models, Statistical Inference and Learning

### 6.1 What's Statistical inference?

![image-20240207172604976](./images/image-20240207172604976.png)

**抽样分布**是指样本统计量的概率分布，如样本均值的分布、样本比例的分布等。它是由随机抽样的样本统计量所形成的概率分布，**是统计量的分布**，也称统计量分布、随机变量函数分布

## 7. Estimating the cdf and Statistical Functionals

The first inference problem we will consider is **nonparametric estimation of the cdf F**.

**statistical functionals:** functions of cdf, such as the mean, the variance, and the correlation.

**plug-in method: **The nonparametric method for estimating functionals.

### 7.1 The Empirical Distribution Function

![image-20240207173625130](./images/image-20240207173625130.png)

![image-20240207175619006](./images/image-20240207175619006.png)

**Proof:**
![image-20240207175655798](./images/image-20240207175655798.png)

![image-20240207175735783](./images/image-20240207175735783.png)

![image-20240208195918938](./images/image-20240208195918938.png)

![image-20240207175816467](./images/image-20240207175816467.png)

![image-20240207175832282](./images/image-20240207175832282.png)

![image-20240208200423849](./images/image-20240208200423849.png)

### 7.2 Statistical Functionals

![image-20240208200553965](./images/image-20240208200553965.png)

![image-20240208200632253](./images/image-20240208200632253.png)

![image-20240208200807317](./images/image-20240208200807317.png)

![image-20240208201319447](./images/image-20240208201319447.png)

![image-20240208201348779](./images/image-20240208201348779.png)

![image-20240208201256699](./images/image-20240208201256699.png)

![image-20240208201423096](./images/image-20240208201423096.png)

![image-20240208201509129](./images/image-20240208201509129.png)

## 8. The Bootstrap

![image-20240208210754269](./images/image-20240208210754269.png)

Note: The core of bootstrap is to sample for multi times from the empirical distribution function $\widehat{F}_n$. For one time, take n samples from $\widehat{F}_n$ with replacement. For second time, take n samples from $\widehat{F}_n$ with replacement...

### 8.1 Simulation

![image-20240208211802993](./images/image-20240208211802993.png)

### 8.2 Bootstrap Variance Estimation

![image-20240208215508090](./images/image-20240208215508090.png)

![image-20240208215543753](./images/image-20240208215543753.png)

![image-20240208215609082](./images/image-20240208215609082.png)

![image-20240208220118392](./images/image-20240208220118392.png)

![image-20240208220137553](./images/image-20240208220137553.png)

### 8.3 Bootstrap Confidence Intervals

![image-20240211151353809](./images/image-20240211151353809.png)

![image-20240211154341404](./images/image-20240211154341404.png)

![image-20240211183709369](./images/image-20240211183709369.png)

**![image-20240211190849629](./images/image-20240211190849629.png)**



### 8.4 The Jackknife

![image-20240211184634941](./images/image-20240211184634941.png)

![image-20240211184659314](./images/image-20240211184659314.png)

## 9. Parametric Inference

![image-20240212213548878](./images/image-20240212213548878.png)

### 9.1 Parameter of Interest

![image-20240212214448066](./images/image-20240212214448066.png)

![image-20240212214641179](./images/image-20240212214641179.png)

### 9.2 The Method of Moments

![image-20240212215036226](./images/image-20240212215036226.png)

![image-20240212215053894](./images/image-20240212215053894.png)

![image-20240212222326248](./images/image-20240212222326248.png)

### 9.3 Maximum Likelihood

![image-20240212222539604](./images/image-20240212222539604.png)

![image-20240212222615659](./images/image-20240212222615659.png)

![image-20240212222701404](./images/image-20240212222701404.png)

### 9.4 Properties of Maximum Likelihood Estimators

![image-20240212222827041](./images/image-20240212222827041.png)

![image-20240213113425469](./images/image-20240213113425469.png)

### 9.5 Consistency of Maximum Likelihood Estimators

![image-20240213113630232](./images/image-20240213113630232.png)

![image-20240213113705959](./images/image-20240213113705959.png)

![image-20240213113811786](./images/image-20240213113811786.png)

![image-20240213113825521](./images/image-20240213113825521.png)

### 9.7 Asymptotic Normality

![image-20240213114006339](./images/image-20240213114006339.png)

![image-20240213114031940](./images/image-20240213114031940.png)

![image-20240213114044735](./images/image-20240213114044735.png)

![image-20240213114106068](./images/image-20240213114106068.png)

### 9.8 Optimality

![image-20240213114148999](./images/image-20240213114148999.png)

![image-20240213114214298](./images/image-20240213114214298.png)

### 9.9 The Delta Method

![image-20240213114804428](./images/image-20240213114804428.png)

![image-20240213114839228](./images/image-20240213114839228.png)

![image-20240213114904696](./images/image-20240213114904696.png)

![image-20240213114922082](./images/image-20240213114922082.png)

### 9.10 Multi-parameter Models

![image-20240213115118947](./images/image-20240213115118947.png)

![image-20240213115146764](./images/image-20240213115146764.png)

![image-20240213115210805](./images/image-20240213115210805.png)

### 9.11 The Parametric Bootstrap

![image-20240213115325910](./images/image-20240213115325910.png)

![image-20240213115340410](./images/image-20240213115340410.png)

### 9.12 Checking Assumptions

![image-20240213115522551](./images/image-20240213115522551.png)