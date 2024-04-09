; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102178 () Bool)

(assert start!102178)

(declare-fun b!1229231 () Bool)

(declare-fun res!817827 () Bool)

(declare-fun e!697796 () Bool)

(assert (=> b!1229231 (=> (not res!817827) (not e!697796))))

(declare-datatypes ((array!79292 0))(
  ( (array!79293 (arr!38262 (Array (_ BitVec 32) (_ BitVec 64))) (size!38799 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79292)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229231 (= res!817827 (validKeyInArray!0 (select (arr!38262 a!3806) from!3184)))))

(declare-fun b!1229232 () Bool)

(declare-fun res!817834 () Bool)

(assert (=> b!1229232 (=> (not res!817834) (not e!697796))))

(declare-datatypes ((List!27213 0))(
  ( (Nil!27210) (Cons!27209 (h!28418 (_ BitVec 64)) (t!40683 List!27213)) )
))
(declare-fun acc!823 () List!27213)

(declare-fun arrayNoDuplicates!0 (array!79292 (_ BitVec 32) List!27213) Bool)

(assert (=> b!1229232 (= res!817834 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229233 () Bool)

(declare-fun res!817822 () Bool)

(declare-fun e!697797 () Bool)

(assert (=> b!1229233 (=> res!817822 e!697797)))

(declare-fun lt!559090 () List!27213)

(declare-fun noDuplicate!1735 (List!27213) Bool)

(assert (=> b!1229233 (= res!817822 (not (noDuplicate!1735 lt!559090)))))

(declare-fun b!1229234 () Bool)

(declare-fun res!817829 () Bool)

(assert (=> b!1229234 (=> res!817829 e!697797)))

(declare-fun contains!7128 (List!27213 (_ BitVec 64)) Bool)

(assert (=> b!1229234 (= res!817829 (contains!7128 lt!559090 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229235 () Bool)

(declare-fun res!817833 () Bool)

(assert (=> b!1229235 (=> (not res!817833) (not e!697796))))

(assert (=> b!1229235 (= res!817833 (not (contains!7128 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229236 () Bool)

(declare-fun res!817828 () Bool)

(assert (=> b!1229236 (=> (not res!817828) (not e!697796))))

(assert (=> b!1229236 (= res!817828 (not (contains!7128 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!817830 () Bool)

(assert (=> start!102178 (=> (not res!817830) (not e!697796))))

(assert (=> start!102178 (= res!817830 (bvslt (size!38799 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102178 e!697796))

(declare-fun array_inv!29038 (array!79292) Bool)

(assert (=> start!102178 (array_inv!29038 a!3806)))

(assert (=> start!102178 true))

(declare-fun b!1229237 () Bool)

(declare-fun res!817835 () Bool)

(assert (=> b!1229237 (=> res!817835 e!697797)))

(assert (=> b!1229237 (= res!817835 (contains!7128 lt!559090 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229238 () Bool)

(assert (=> b!1229238 (= e!697796 (not e!697797))))

(declare-fun res!817831 () Bool)

(assert (=> b!1229238 (=> res!817831 e!697797)))

(assert (=> b!1229238 (= res!817831 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229238 (= lt!559090 (Cons!27209 (select (arr!38262 a!3806) from!3184) Nil!27210))))

(declare-fun e!697798 () Bool)

(assert (=> b!1229238 e!697798))

(declare-fun res!817826 () Bool)

(assert (=> b!1229238 (=> (not res!817826) (not e!697798))))

(assert (=> b!1229238 (= res!817826 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27210))))

(declare-datatypes ((Unit!40664 0))(
  ( (Unit!40665) )
))
(declare-fun lt!559089 () Unit!40664)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79292 List!27213 List!27213 (_ BitVec 32)) Unit!40664)

(assert (=> b!1229238 (= lt!559089 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27210 from!3184))))

(assert (=> b!1229238 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27209 (select (arr!38262 a!3806) from!3184) acc!823))))

(declare-fun b!1229239 () Bool)

(declare-fun res!817832 () Bool)

(assert (=> b!1229239 (=> (not res!817832) (not e!697796))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1229239 (= res!817832 (validKeyInArray!0 k!2913))))

(declare-fun b!1229240 () Bool)

(declare-fun res!817824 () Bool)

(assert (=> b!1229240 (=> (not res!817824) (not e!697796))))

(assert (=> b!1229240 (= res!817824 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38799 a!3806)) (bvslt from!3184 (size!38799 a!3806))))))

(declare-fun b!1229241 () Bool)

(declare-fun res!817825 () Bool)

(assert (=> b!1229241 (=> (not res!817825) (not e!697796))))

(declare-fun arrayContainsKey!0 (array!79292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229241 (= res!817825 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229242 () Bool)

(declare-fun res!817823 () Bool)

(assert (=> b!1229242 (=> (not res!817823) (not e!697796))))

(assert (=> b!1229242 (= res!817823 (noDuplicate!1735 acc!823))))

(declare-fun b!1229243 () Bool)

(assert (=> b!1229243 (= e!697798 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27209 (select (arr!38262 a!3806) from!3184) Nil!27210)))))

(declare-fun b!1229244 () Bool)

(assert (=> b!1229244 (= e!697797 true)))

(declare-fun lt!559091 () Bool)

(assert (=> b!1229244 (= lt!559091 (contains!7128 lt!559090 (select (arr!38262 a!3806) from!3184)))))

(assert (= (and start!102178 res!817830) b!1229239))

(assert (= (and b!1229239 res!817832) b!1229240))

(assert (= (and b!1229240 res!817824) b!1229242))

(assert (= (and b!1229242 res!817823) b!1229236))

(assert (= (and b!1229236 res!817828) b!1229235))

(assert (= (and b!1229235 res!817833) b!1229241))

(assert (= (and b!1229241 res!817825) b!1229232))

(assert (= (and b!1229232 res!817834) b!1229231))

(assert (= (and b!1229231 res!817827) b!1229238))

(assert (= (and b!1229238 res!817826) b!1229243))

(assert (= (and b!1229238 (not res!817831)) b!1229233))

(assert (= (and b!1229233 (not res!817822)) b!1229234))

(assert (= (and b!1229234 (not res!817829)) b!1229237))

(assert (= (and b!1229237 (not res!817835)) b!1229244))

(declare-fun m!1133891 () Bool)

(assert (=> b!1229241 m!1133891))

(declare-fun m!1133893 () Bool)

(assert (=> b!1229238 m!1133893))

(declare-fun m!1133895 () Bool)

(assert (=> b!1229238 m!1133895))

(declare-fun m!1133897 () Bool)

(assert (=> b!1229238 m!1133897))

(declare-fun m!1133899 () Bool)

(assert (=> b!1229238 m!1133899))

(declare-fun m!1133901 () Bool)

(assert (=> b!1229237 m!1133901))

(declare-fun m!1133903 () Bool)

(assert (=> b!1229232 m!1133903))

(declare-fun m!1133905 () Bool)

(assert (=> b!1229236 m!1133905))

(assert (=> b!1229231 m!1133893))

(assert (=> b!1229231 m!1133893))

(declare-fun m!1133907 () Bool)

(assert (=> b!1229231 m!1133907))

(declare-fun m!1133909 () Bool)

(assert (=> start!102178 m!1133909))

(assert (=> b!1229243 m!1133893))

(declare-fun m!1133911 () Bool)

(assert (=> b!1229243 m!1133911))

(declare-fun m!1133913 () Bool)

(assert (=> b!1229235 m!1133913))

(declare-fun m!1133915 () Bool)

(assert (=> b!1229242 m!1133915))

(declare-fun m!1133917 () Bool)

(assert (=> b!1229233 m!1133917))

(declare-fun m!1133919 () Bool)

(assert (=> b!1229234 m!1133919))

(assert (=> b!1229244 m!1133893))

(assert (=> b!1229244 m!1133893))

(declare-fun m!1133921 () Bool)

(assert (=> b!1229244 m!1133921))

(declare-fun m!1133923 () Bool)

(assert (=> b!1229239 m!1133923))

(push 1)

(assert (not b!1229235))

(assert (not b!1229239))

(assert (not b!1229242))

(assert (not b!1229236))

(assert (not b!1229233))

(assert (not start!102178))

(assert (not b!1229234))

(assert (not b!1229237))

(assert (not b!1229244))

(assert (not b!1229232))

(assert (not b!1229241))

(assert (not b!1229238))

(assert (not b!1229243))

(assert (not b!1229231))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

