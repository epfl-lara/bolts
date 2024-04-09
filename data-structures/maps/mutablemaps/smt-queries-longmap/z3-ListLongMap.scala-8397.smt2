; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102204 () Bool)

(assert start!102204)

(declare-fun b!1229777 () Bool)

(declare-fun res!818379 () Bool)

(declare-fun e!697954 () Bool)

(assert (=> b!1229777 (=> (not res!818379) (not e!697954))))

(declare-datatypes ((array!79318 0))(
  ( (array!79319 (arr!38275 (Array (_ BitVec 32) (_ BitVec 64))) (size!38812 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79318)

(declare-datatypes ((List!27226 0))(
  ( (Nil!27223) (Cons!27222 (h!28431 (_ BitVec 64)) (t!40696 List!27226)) )
))
(declare-fun acc!823 () List!27226)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79318 (_ BitVec 32) List!27226) Bool)

(assert (=> b!1229777 (= res!818379 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229778 () Bool)

(declare-fun res!818368 () Bool)

(declare-fun e!697952 () Bool)

(assert (=> b!1229778 (=> res!818368 e!697952)))

(declare-fun lt!559207 () List!27226)

(declare-fun noDuplicate!1748 (List!27226) Bool)

(assert (=> b!1229778 (= res!818368 (not (noDuplicate!1748 lt!559207)))))

(declare-fun b!1229779 () Bool)

(assert (=> b!1229779 (= e!697952 true)))

(declare-fun lt!559208 () Bool)

(declare-fun contains!7141 (List!27226 (_ BitVec 64)) Bool)

(assert (=> b!1229779 (= lt!559208 (contains!7141 lt!559207 (select (arr!38275 a!3806) from!3184)))))

(declare-fun b!1229780 () Bool)

(declare-fun res!818378 () Bool)

(assert (=> b!1229780 (=> res!818378 e!697952)))

(assert (=> b!1229780 (= res!818378 (contains!7141 lt!559207 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229781 () Bool)

(assert (=> b!1229781 (= e!697954 (not e!697952))))

(declare-fun res!818369 () Bool)

(assert (=> b!1229781 (=> res!818369 e!697952)))

(assert (=> b!1229781 (= res!818369 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229781 (= lt!559207 (Cons!27222 (select (arr!38275 a!3806) from!3184) Nil!27223))))

(declare-fun e!697951 () Bool)

(assert (=> b!1229781 e!697951))

(declare-fun res!818373 () Bool)

(assert (=> b!1229781 (=> (not res!818373) (not e!697951))))

(assert (=> b!1229781 (= res!818373 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27223))))

(declare-datatypes ((Unit!40690 0))(
  ( (Unit!40691) )
))
(declare-fun lt!559206 () Unit!40690)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79318 List!27226 List!27226 (_ BitVec 32)) Unit!40690)

(assert (=> b!1229781 (= lt!559206 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27223 from!3184))))

(assert (=> b!1229781 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27222 (select (arr!38275 a!3806) from!3184) acc!823))))

(declare-fun b!1229782 () Bool)

(declare-fun res!818376 () Bool)

(assert (=> b!1229782 (=> (not res!818376) (not e!697954))))

(assert (=> b!1229782 (= res!818376 (noDuplicate!1748 acc!823))))

(declare-fun b!1229783 () Bool)

(declare-fun res!818372 () Bool)

(assert (=> b!1229783 (=> (not res!818372) (not e!697954))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229783 (= res!818372 (validKeyInArray!0 k0!2913))))

(declare-fun b!1229784 () Bool)

(declare-fun res!818375 () Bool)

(assert (=> b!1229784 (=> (not res!818375) (not e!697954))))

(declare-fun arrayContainsKey!0 (array!79318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229784 (= res!818375 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229785 () Bool)

(declare-fun res!818380 () Bool)

(assert (=> b!1229785 (=> res!818380 e!697952)))

(assert (=> b!1229785 (= res!818380 (contains!7141 lt!559207 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!818381 () Bool)

(assert (=> start!102204 (=> (not res!818381) (not e!697954))))

(assert (=> start!102204 (= res!818381 (bvslt (size!38812 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102204 e!697954))

(declare-fun array_inv!29051 (array!79318) Bool)

(assert (=> start!102204 (array_inv!29051 a!3806)))

(assert (=> start!102204 true))

(declare-fun b!1229786 () Bool)

(declare-fun res!818377 () Bool)

(assert (=> b!1229786 (=> (not res!818377) (not e!697954))))

(assert (=> b!1229786 (= res!818377 (not (contains!7141 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229787 () Bool)

(declare-fun res!818374 () Bool)

(assert (=> b!1229787 (=> (not res!818374) (not e!697954))))

(assert (=> b!1229787 (= res!818374 (validKeyInArray!0 (select (arr!38275 a!3806) from!3184)))))

(declare-fun b!1229788 () Bool)

(assert (=> b!1229788 (= e!697951 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27222 (select (arr!38275 a!3806) from!3184) Nil!27223)))))

(declare-fun b!1229789 () Bool)

(declare-fun res!818370 () Bool)

(assert (=> b!1229789 (=> (not res!818370) (not e!697954))))

(assert (=> b!1229789 (= res!818370 (not (contains!7141 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229790 () Bool)

(declare-fun res!818371 () Bool)

(assert (=> b!1229790 (=> (not res!818371) (not e!697954))))

(assert (=> b!1229790 (= res!818371 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38812 a!3806)) (bvslt from!3184 (size!38812 a!3806))))))

(assert (= (and start!102204 res!818381) b!1229783))

(assert (= (and b!1229783 res!818372) b!1229790))

(assert (= (and b!1229790 res!818371) b!1229782))

(assert (= (and b!1229782 res!818376) b!1229789))

(assert (= (and b!1229789 res!818370) b!1229786))

(assert (= (and b!1229786 res!818377) b!1229784))

(assert (= (and b!1229784 res!818375) b!1229777))

(assert (= (and b!1229777 res!818379) b!1229787))

(assert (= (and b!1229787 res!818374) b!1229781))

(assert (= (and b!1229781 res!818373) b!1229788))

(assert (= (and b!1229781 (not res!818369)) b!1229778))

(assert (= (and b!1229778 (not res!818368)) b!1229785))

(assert (= (and b!1229785 (not res!818380)) b!1229780))

(assert (= (and b!1229780 (not res!818378)) b!1229779))

(declare-fun m!1134333 () Bool)

(assert (=> start!102204 m!1134333))

(declare-fun m!1134335 () Bool)

(assert (=> b!1229783 m!1134335))

(declare-fun m!1134337 () Bool)

(assert (=> b!1229779 m!1134337))

(assert (=> b!1229779 m!1134337))

(declare-fun m!1134339 () Bool)

(assert (=> b!1229779 m!1134339))

(declare-fun m!1134341 () Bool)

(assert (=> b!1229782 m!1134341))

(assert (=> b!1229788 m!1134337))

(declare-fun m!1134343 () Bool)

(assert (=> b!1229788 m!1134343))

(declare-fun m!1134345 () Bool)

(assert (=> b!1229778 m!1134345))

(declare-fun m!1134347 () Bool)

(assert (=> b!1229789 m!1134347))

(declare-fun m!1134349 () Bool)

(assert (=> b!1229785 m!1134349))

(assert (=> b!1229781 m!1134337))

(declare-fun m!1134351 () Bool)

(assert (=> b!1229781 m!1134351))

(declare-fun m!1134353 () Bool)

(assert (=> b!1229781 m!1134353))

(declare-fun m!1134355 () Bool)

(assert (=> b!1229781 m!1134355))

(declare-fun m!1134357 () Bool)

(assert (=> b!1229786 m!1134357))

(declare-fun m!1134359 () Bool)

(assert (=> b!1229784 m!1134359))

(declare-fun m!1134361 () Bool)

(assert (=> b!1229780 m!1134361))

(declare-fun m!1134363 () Bool)

(assert (=> b!1229777 m!1134363))

(assert (=> b!1229787 m!1134337))

(assert (=> b!1229787 m!1134337))

(declare-fun m!1134365 () Bool)

(assert (=> b!1229787 m!1134365))

(check-sat (not b!1229789) (not b!1229779) (not b!1229778) (not b!1229784) (not b!1229787) (not b!1229788) (not start!102204) (not b!1229777) (not b!1229783) (not b!1229780) (not b!1229786) (not b!1229781) (not b!1229782) (not b!1229785))
