; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101996 () Bool)

(assert start!101996)

(declare-fun b!1227327 () Bool)

(declare-fun res!816058 () Bool)

(declare-fun e!696971 () Bool)

(assert (=> b!1227327 (=> (not res!816058) (not e!696971))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227327 (= res!816058 (validKeyInArray!0 k!2913))))

(declare-fun b!1227328 () Bool)

(declare-fun res!816068 () Bool)

(assert (=> b!1227328 (=> (not res!816068) (not e!696971))))

(declare-datatypes ((List!27176 0))(
  ( (Nil!27173) (Cons!27172 (h!28381 (_ BitVec 64)) (t!40646 List!27176)) )
))
(declare-fun acc!823 () List!27176)

(declare-fun contains!7091 (List!27176 (_ BitVec 64)) Bool)

(assert (=> b!1227328 (= res!816068 (not (contains!7091 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227330 () Bool)

(declare-fun res!816063 () Bool)

(assert (=> b!1227330 (=> (not res!816063) (not e!696971))))

(declare-datatypes ((array!79212 0))(
  ( (array!79213 (arr!38225 (Array (_ BitVec 32) (_ BitVec 64))) (size!38762 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79212)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1227330 (= res!816063 (validKeyInArray!0 (select (arr!38225 a!3806) from!3184)))))

(declare-fun b!1227331 () Bool)

(declare-fun res!816059 () Bool)

(declare-fun e!696972 () Bool)

(assert (=> b!1227331 (=> res!816059 e!696972)))

(assert (=> b!1227331 (= res!816059 (contains!7091 Nil!27173 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227332 () Bool)

(declare-fun res!816065 () Bool)

(assert (=> b!1227332 (=> (not res!816065) (not e!696971))))

(declare-fun arrayNoDuplicates!0 (array!79212 (_ BitVec 32) List!27176) Bool)

(assert (=> b!1227332 (= res!816065 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227333 () Bool)

(declare-fun res!816064 () Bool)

(assert (=> b!1227333 (=> (not res!816064) (not e!696971))))

(declare-fun arrayContainsKey!0 (array!79212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227333 (= res!816064 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227334 () Bool)

(declare-fun res!816061 () Bool)

(assert (=> b!1227334 (=> (not res!816061) (not e!696971))))

(assert (=> b!1227334 (= res!816061 (not (contains!7091 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227335 () Bool)

(declare-fun res!816060 () Bool)

(assert (=> b!1227335 (=> (not res!816060) (not e!696971))))

(declare-fun noDuplicate!1698 (List!27176) Bool)

(assert (=> b!1227335 (= res!816060 (noDuplicate!1698 acc!823))))

(declare-fun b!1227336 () Bool)

(declare-fun res!816056 () Bool)

(assert (=> b!1227336 (=> res!816056 e!696972)))

(declare-fun subseq!478 (List!27176 List!27176) Bool)

(assert (=> b!1227336 (= res!816056 (not (subseq!478 Nil!27173 acc!823)))))

(declare-fun b!1227337 () Bool)

(declare-fun res!816057 () Bool)

(assert (=> b!1227337 (=> res!816057 e!696972)))

(assert (=> b!1227337 (= res!816057 (contains!7091 Nil!27173 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!816067 () Bool)

(assert (=> start!101996 (=> (not res!816067) (not e!696971))))

(assert (=> start!101996 (= res!816067 (bvslt (size!38762 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101996 e!696971))

(declare-fun array_inv!29001 (array!79212) Bool)

(assert (=> start!101996 (array_inv!29001 a!3806)))

(assert (=> start!101996 true))

(declare-fun b!1227329 () Bool)

(assert (=> b!1227329 (= e!696972 true)))

(declare-datatypes ((Unit!40590 0))(
  ( (Unit!40591) )
))
(declare-fun lt!558851 () Unit!40590)

(declare-fun noDuplicateSubseq!31 (List!27176 List!27176) Unit!40590)

(assert (=> b!1227329 (= lt!558851 (noDuplicateSubseq!31 Nil!27173 acc!823))))

(declare-fun b!1227338 () Bool)

(declare-fun res!816066 () Bool)

(assert (=> b!1227338 (=> (not res!816066) (not e!696971))))

(assert (=> b!1227338 (= res!816066 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38762 a!3806)) (bvslt from!3184 (size!38762 a!3806))))))

(declare-fun b!1227339 () Bool)

(assert (=> b!1227339 (= e!696971 (not e!696972))))

(declare-fun res!816062 () Bool)

(assert (=> b!1227339 (=> res!816062 e!696972)))

(assert (=> b!1227339 (= res!816062 (bvsgt from!3184 (size!38762 a!3806)))))

(assert (=> b!1227339 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27172 (select (arr!38225 a!3806) from!3184) acc!823))))

(assert (= (and start!101996 res!816067) b!1227327))

(assert (= (and b!1227327 res!816058) b!1227338))

(assert (= (and b!1227338 res!816066) b!1227335))

(assert (= (and b!1227335 res!816060) b!1227334))

(assert (= (and b!1227334 res!816061) b!1227328))

(assert (= (and b!1227328 res!816068) b!1227333))

(assert (= (and b!1227333 res!816064) b!1227332))

(assert (= (and b!1227332 res!816065) b!1227330))

(assert (= (and b!1227330 res!816063) b!1227339))

(assert (= (and b!1227339 (not res!816062)) b!1227331))

(assert (= (and b!1227331 (not res!816059)) b!1227337))

(assert (= (and b!1227337 (not res!816057)) b!1227336))

(assert (= (and b!1227336 (not res!816056)) b!1227329))

(declare-fun m!1132165 () Bool)

(assert (=> b!1227329 m!1132165))

(declare-fun m!1132167 () Bool)

(assert (=> start!101996 m!1132167))

(declare-fun m!1132169 () Bool)

(assert (=> b!1227328 m!1132169))

(declare-fun m!1132171 () Bool)

(assert (=> b!1227333 m!1132171))

(declare-fun m!1132173 () Bool)

(assert (=> b!1227336 m!1132173))

(declare-fun m!1132175 () Bool)

(assert (=> b!1227332 m!1132175))

(declare-fun m!1132177 () Bool)

(assert (=> b!1227337 m!1132177))

(declare-fun m!1132179 () Bool)

(assert (=> b!1227339 m!1132179))

(declare-fun m!1132181 () Bool)

(assert (=> b!1227339 m!1132181))

(declare-fun m!1132183 () Bool)

(assert (=> b!1227331 m!1132183))

(declare-fun m!1132185 () Bool)

(assert (=> b!1227327 m!1132185))

(declare-fun m!1132187 () Bool)

(assert (=> b!1227335 m!1132187))

(declare-fun m!1132189 () Bool)

(assert (=> b!1227334 m!1132189))

(assert (=> b!1227330 m!1132179))

(assert (=> b!1227330 m!1132179))

(declare-fun m!1132191 () Bool)

(assert (=> b!1227330 m!1132191))

(push 1)

(assert (not b!1227329))

(assert (not b!1227331))

(assert (not b!1227335))

(assert (not b!1227332))

(assert (not start!101996))

(assert (not b!1227339))

(assert (not b!1227330))

(assert (not b!1227333))

(assert (not b!1227337))

(assert (not b!1227336))

(assert (not b!1227328))

(assert (not b!1227327))

(assert (not b!1227334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

