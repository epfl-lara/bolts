; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101998 () Bool)

(assert start!101998)

(declare-fun b!1227366 () Bool)

(declare-fun res!816096 () Bool)

(declare-fun e!696980 () Bool)

(assert (=> b!1227366 (=> (not res!816096) (not e!696980))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79214 0))(
  ( (array!79215 (arr!38226 (Array (_ BitVec 32) (_ BitVec 64))) (size!38763 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79214)

(assert (=> b!1227366 (= res!816096 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38763 a!3806)) (bvslt from!3184 (size!38763 a!3806))))))

(declare-fun b!1227367 () Bool)

(declare-fun res!816107 () Bool)

(assert (=> b!1227367 (=> (not res!816107) (not e!696980))))

(declare-datatypes ((List!27177 0))(
  ( (Nil!27174) (Cons!27173 (h!28382 (_ BitVec 64)) (t!40647 List!27177)) )
))
(declare-fun acc!823 () List!27177)

(declare-fun contains!7092 (List!27177 (_ BitVec 64)) Bool)

(assert (=> b!1227367 (= res!816107 (not (contains!7092 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227368 () Bool)

(declare-fun e!696981 () Bool)

(assert (=> b!1227368 (= e!696980 (not e!696981))))

(declare-fun res!816105 () Bool)

(assert (=> b!1227368 (=> res!816105 e!696981)))

(assert (=> b!1227368 (= res!816105 (bvsgt from!3184 (size!38763 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79214 (_ BitVec 32) List!27177) Bool)

(assert (=> b!1227368 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27173 (select (arr!38226 a!3806) from!3184) acc!823))))

(declare-fun b!1227369 () Bool)

(declare-fun res!816106 () Bool)

(assert (=> b!1227369 (=> res!816106 e!696981)))

(assert (=> b!1227369 (= res!816106 (contains!7092 Nil!27174 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!816100 () Bool)

(assert (=> start!101998 (=> (not res!816100) (not e!696980))))

(assert (=> start!101998 (= res!816100 (bvslt (size!38763 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101998 e!696980))

(declare-fun array_inv!29002 (array!79214) Bool)

(assert (=> start!101998 (array_inv!29002 a!3806)))

(assert (=> start!101998 true))

(declare-fun b!1227370 () Bool)

(assert (=> b!1227370 (= e!696981 true)))

(declare-datatypes ((Unit!40592 0))(
  ( (Unit!40593) )
))
(declare-fun lt!558854 () Unit!40592)

(declare-fun noDuplicateSubseq!32 (List!27177 List!27177) Unit!40592)

(assert (=> b!1227370 (= lt!558854 (noDuplicateSubseq!32 Nil!27174 acc!823))))

(declare-fun b!1227371 () Bool)

(declare-fun res!816097 () Bool)

(assert (=> b!1227371 (=> (not res!816097) (not e!696980))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227371 (= res!816097 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227372 () Bool)

(declare-fun res!816103 () Bool)

(assert (=> b!1227372 (=> (not res!816103) (not e!696980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227372 (= res!816103 (validKeyInArray!0 (select (arr!38226 a!3806) from!3184)))))

(declare-fun b!1227373 () Bool)

(declare-fun res!816099 () Bool)

(assert (=> b!1227373 (=> (not res!816099) (not e!696980))))

(declare-fun noDuplicate!1699 (List!27177) Bool)

(assert (=> b!1227373 (= res!816099 (noDuplicate!1699 acc!823))))

(declare-fun b!1227374 () Bool)

(declare-fun res!816095 () Bool)

(assert (=> b!1227374 (=> res!816095 e!696981)))

(assert (=> b!1227374 (= res!816095 (contains!7092 Nil!27174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227375 () Bool)

(declare-fun res!816102 () Bool)

(assert (=> b!1227375 (=> (not res!816102) (not e!696980))))

(assert (=> b!1227375 (= res!816102 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227376 () Bool)

(declare-fun res!816101 () Bool)

(assert (=> b!1227376 (=> (not res!816101) (not e!696980))))

(assert (=> b!1227376 (= res!816101 (validKeyInArray!0 k!2913))))

(declare-fun b!1227377 () Bool)

(declare-fun res!816104 () Bool)

(assert (=> b!1227377 (=> res!816104 e!696981)))

(declare-fun subseq!479 (List!27177 List!27177) Bool)

(assert (=> b!1227377 (= res!816104 (not (subseq!479 Nil!27174 acc!823)))))

(declare-fun b!1227378 () Bool)

(declare-fun res!816098 () Bool)

(assert (=> b!1227378 (=> (not res!816098) (not e!696980))))

(assert (=> b!1227378 (= res!816098 (not (contains!7092 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!101998 res!816100) b!1227376))

(assert (= (and b!1227376 res!816101) b!1227366))

(assert (= (and b!1227366 res!816096) b!1227373))

(assert (= (and b!1227373 res!816099) b!1227378))

(assert (= (and b!1227378 res!816098) b!1227367))

(assert (= (and b!1227367 res!816107) b!1227371))

(assert (= (and b!1227371 res!816097) b!1227375))

(assert (= (and b!1227375 res!816102) b!1227372))

(assert (= (and b!1227372 res!816103) b!1227368))

(assert (= (and b!1227368 (not res!816105)) b!1227374))

(assert (= (and b!1227374 (not res!816095)) b!1227369))

(assert (= (and b!1227369 (not res!816106)) b!1227377))

(assert (= (and b!1227377 (not res!816104)) b!1227370))

(declare-fun m!1132193 () Bool)

(assert (=> b!1227370 m!1132193))

(declare-fun m!1132195 () Bool)

(assert (=> b!1227373 m!1132195))

(declare-fun m!1132197 () Bool)

(assert (=> start!101998 m!1132197))

(declare-fun m!1132199 () Bool)

(assert (=> b!1227367 m!1132199))

(declare-fun m!1132201 () Bool)

(assert (=> b!1227378 m!1132201))

(declare-fun m!1132203 () Bool)

(assert (=> b!1227369 m!1132203))

(declare-fun m!1132205 () Bool)

(assert (=> b!1227377 m!1132205))

(declare-fun m!1132207 () Bool)

(assert (=> b!1227374 m!1132207))

(declare-fun m!1132209 () Bool)

(assert (=> b!1227375 m!1132209))

(declare-fun m!1132211 () Bool)

(assert (=> b!1227368 m!1132211))

(declare-fun m!1132213 () Bool)

(assert (=> b!1227368 m!1132213))

(assert (=> b!1227372 m!1132211))

(assert (=> b!1227372 m!1132211))

(declare-fun m!1132215 () Bool)

(assert (=> b!1227372 m!1132215))

(declare-fun m!1132217 () Bool)

(assert (=> b!1227371 m!1132217))

(declare-fun m!1132219 () Bool)

(assert (=> b!1227376 m!1132219))

(push 1)

(assert (not b!1227377))

(assert (not b!1227375))

(assert (not b!1227378))

(assert (not start!101998))

(assert (not b!1227369))

(assert (not b!1227374))

(assert (not b!1227368))

(assert (not b!1227373))

(assert (not b!1227371))

(assert (not b!1227372))

(assert (not b!1227367))

(assert (not b!1227370))

(assert (not b!1227376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

