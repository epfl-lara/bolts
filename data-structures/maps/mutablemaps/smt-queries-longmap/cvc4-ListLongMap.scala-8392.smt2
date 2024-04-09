; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102176 () Bool)

(assert start!102176)

(declare-fun b!1229189 () Bool)

(declare-fun res!817789 () Bool)

(declare-fun e!697784 () Bool)

(assert (=> b!1229189 (=> res!817789 e!697784)))

(declare-datatypes ((List!27212 0))(
  ( (Nil!27209) (Cons!27208 (h!28417 (_ BitVec 64)) (t!40682 List!27212)) )
))
(declare-fun lt!559082 () List!27212)

(declare-fun contains!7127 (List!27212 (_ BitVec 64)) Bool)

(assert (=> b!1229189 (= res!817789 (contains!7127 lt!559082 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229190 () Bool)

(declare-fun e!697786 () Bool)

(declare-datatypes ((array!79290 0))(
  ( (array!79291 (arr!38261 (Array (_ BitVec 32) (_ BitVec 64))) (size!38798 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79290)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79290 (_ BitVec 32) List!27212) Bool)

(assert (=> b!1229190 (= e!697786 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27208 (select (arr!38261 a!3806) from!3184) Nil!27209)))))

(declare-fun b!1229191 () Bool)

(declare-fun res!817784 () Bool)

(assert (=> b!1229191 (=> res!817784 e!697784)))

(assert (=> b!1229191 (= res!817784 (contains!7127 lt!559082 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229192 () Bool)

(declare-fun res!817791 () Bool)

(declare-fun e!697785 () Bool)

(assert (=> b!1229192 (=> (not res!817791) (not e!697785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229192 (= res!817791 (validKeyInArray!0 (select (arr!38261 a!3806) from!3184)))))

(declare-fun b!1229193 () Bool)

(declare-fun res!817788 () Bool)

(assert (=> b!1229193 (=> (not res!817788) (not e!697785))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229193 (= res!817788 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229194 () Bool)

(declare-fun res!817782 () Bool)

(assert (=> b!1229194 (=> (not res!817782) (not e!697785))))

(declare-fun acc!823 () List!27212)

(assert (=> b!1229194 (= res!817782 (not (contains!7127 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229195 () Bool)

(declare-fun res!817783 () Bool)

(assert (=> b!1229195 (=> (not res!817783) (not e!697785))))

(assert (=> b!1229195 (= res!817783 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38798 a!3806)) (bvslt from!3184 (size!38798 a!3806))))))

(declare-fun b!1229196 () Bool)

(declare-fun res!817792 () Bool)

(assert (=> b!1229196 (=> (not res!817792) (not e!697785))))

(assert (=> b!1229196 (= res!817792 (not (contains!7127 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229197 () Bool)

(assert (=> b!1229197 (= e!697785 (not e!697784))))

(declare-fun res!817793 () Bool)

(assert (=> b!1229197 (=> res!817793 e!697784)))

(assert (=> b!1229197 (= res!817793 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229197 (= lt!559082 (Cons!27208 (select (arr!38261 a!3806) from!3184) Nil!27209))))

(assert (=> b!1229197 e!697786))

(declare-fun res!817787 () Bool)

(assert (=> b!1229197 (=> (not res!817787) (not e!697786))))

(assert (=> b!1229197 (= res!817787 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27209))))

(declare-datatypes ((Unit!40662 0))(
  ( (Unit!40663) )
))
(declare-fun lt!559081 () Unit!40662)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79290 List!27212 List!27212 (_ BitVec 32)) Unit!40662)

(assert (=> b!1229197 (= lt!559081 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27209 from!3184))))

(assert (=> b!1229197 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27208 (select (arr!38261 a!3806) from!3184) acc!823))))

(declare-fun res!817786 () Bool)

(assert (=> start!102176 (=> (not res!817786) (not e!697785))))

(assert (=> start!102176 (= res!817786 (bvslt (size!38798 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102176 e!697785))

(declare-fun array_inv!29037 (array!79290) Bool)

(assert (=> start!102176 (array_inv!29037 a!3806)))

(assert (=> start!102176 true))

(declare-fun b!1229198 () Bool)

(declare-fun res!817785 () Bool)

(assert (=> b!1229198 (=> (not res!817785) (not e!697785))))

(assert (=> b!1229198 (= res!817785 (validKeyInArray!0 k!2913))))

(declare-fun b!1229199 () Bool)

(assert (=> b!1229199 (= e!697784 true)))

(declare-fun lt!559080 () Bool)

(assert (=> b!1229199 (= lt!559080 (contains!7127 lt!559082 (select (arr!38261 a!3806) from!3184)))))

(declare-fun b!1229200 () Bool)

(declare-fun res!817780 () Bool)

(assert (=> b!1229200 (=> (not res!817780) (not e!697785))))

(declare-fun noDuplicate!1734 (List!27212) Bool)

(assert (=> b!1229200 (= res!817780 (noDuplicate!1734 acc!823))))

(declare-fun b!1229201 () Bool)

(declare-fun res!817790 () Bool)

(assert (=> b!1229201 (=> res!817790 e!697784)))

(assert (=> b!1229201 (= res!817790 (not (noDuplicate!1734 lt!559082)))))

(declare-fun b!1229202 () Bool)

(declare-fun res!817781 () Bool)

(assert (=> b!1229202 (=> (not res!817781) (not e!697785))))

(assert (=> b!1229202 (= res!817781 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102176 res!817786) b!1229198))

(assert (= (and b!1229198 res!817785) b!1229195))

(assert (= (and b!1229195 res!817783) b!1229200))

(assert (= (and b!1229200 res!817780) b!1229196))

(assert (= (and b!1229196 res!817792) b!1229194))

(assert (= (and b!1229194 res!817782) b!1229193))

(assert (= (and b!1229193 res!817788) b!1229202))

(assert (= (and b!1229202 res!817781) b!1229192))

(assert (= (and b!1229192 res!817791) b!1229197))

(assert (= (and b!1229197 res!817787) b!1229190))

(assert (= (and b!1229197 (not res!817793)) b!1229201))

(assert (= (and b!1229201 (not res!817790)) b!1229191))

(assert (= (and b!1229191 (not res!817784)) b!1229189))

(assert (= (and b!1229189 (not res!817789)) b!1229199))

(declare-fun m!1133857 () Bool)

(assert (=> b!1229201 m!1133857))

(declare-fun m!1133859 () Bool)

(assert (=> b!1229193 m!1133859))

(declare-fun m!1133861 () Bool)

(assert (=> b!1229196 m!1133861))

(declare-fun m!1133863 () Bool)

(assert (=> b!1229189 m!1133863))

(declare-fun m!1133865 () Bool)

(assert (=> b!1229190 m!1133865))

(declare-fun m!1133867 () Bool)

(assert (=> b!1229190 m!1133867))

(declare-fun m!1133869 () Bool)

(assert (=> start!102176 m!1133869))

(assert (=> b!1229197 m!1133865))

(declare-fun m!1133871 () Bool)

(assert (=> b!1229197 m!1133871))

(declare-fun m!1133873 () Bool)

(assert (=> b!1229197 m!1133873))

(declare-fun m!1133875 () Bool)

(assert (=> b!1229197 m!1133875))

(declare-fun m!1133877 () Bool)

(assert (=> b!1229200 m!1133877))

(assert (=> b!1229192 m!1133865))

(assert (=> b!1229192 m!1133865))

(declare-fun m!1133879 () Bool)

(assert (=> b!1229192 m!1133879))

(declare-fun m!1133881 () Bool)

(assert (=> b!1229191 m!1133881))

(declare-fun m!1133883 () Bool)

(assert (=> b!1229198 m!1133883))

(assert (=> b!1229199 m!1133865))

(assert (=> b!1229199 m!1133865))

(declare-fun m!1133885 () Bool)

(assert (=> b!1229199 m!1133885))

(declare-fun m!1133887 () Bool)

(assert (=> b!1229194 m!1133887))

(declare-fun m!1133889 () Bool)

(assert (=> b!1229202 m!1133889))

(push 1)

(assert (not b!1229202))

(assert (not start!102176))

(assert (not b!1229191))

(assert (not b!1229199))

(assert (not b!1229189))

(assert (not b!1229197))

(assert (not b!1229198))

(assert (not b!1229190))

(assert (not b!1229196))

(assert (not b!1229193))

(assert (not b!1229194))

(assert (not b!1229200))

(assert (not b!1229201))

(assert (not b!1229192))

(check-sat)

