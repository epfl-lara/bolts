; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114694 () Bool)

(assert start!114694)

(declare-fun b!1360000 () Bool)

(declare-fun res!904481 () Bool)

(declare-fun e!771694 () Bool)

(assert (=> b!1360000 (=> (not res!904481) (not e!771694))))

(declare-datatypes ((array!92505 0))(
  ( (array!92506 (arr!44687 (Array (_ BitVec 32) (_ BitVec 64))) (size!45238 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92505)

(declare-datatypes ((List!31908 0))(
  ( (Nil!31905) (Cons!31904 (h!33113 (_ BitVec 64)) (t!46591 List!31908)) )
))
(declare-fun arrayNoDuplicates!0 (array!92505 (_ BitVec 32) List!31908) Bool)

(assert (=> b!1360000 (= res!904481 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31905))))

(declare-fun res!904484 () Bool)

(assert (=> start!114694 (=> (not res!904484) (not e!771694))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114694 (= res!904484 (and (bvslt (size!45238 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45238 a!3742))))))

(assert (=> start!114694 e!771694))

(assert (=> start!114694 true))

(declare-fun array_inv!33632 (array!92505) Bool)

(assert (=> start!114694 (array_inv!33632 a!3742)))

(declare-fun b!1360001 () Bool)

(declare-fun res!904482 () Bool)

(assert (=> b!1360001 (=> (not res!904482) (not e!771694))))

(declare-fun acc!759 () List!31908)

(declare-fun contains!9473 (List!31908 (_ BitVec 64)) Bool)

(assert (=> b!1360001 (= res!904482 (not (contains!9473 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360002 () Bool)

(declare-fun res!904485 () Bool)

(assert (=> b!1360002 (=> (not res!904485) (not e!771694))))

(assert (=> b!1360002 (= res!904485 (not (contains!9473 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360003 () Bool)

(declare-fun res!904477 () Bool)

(assert (=> b!1360003 (=> (not res!904477) (not e!771694))))

(assert (=> b!1360003 (= res!904477 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45238 a!3742)))))

(declare-fun b!1360004 () Bool)

(declare-fun res!904479 () Bool)

(assert (=> b!1360004 (=> (not res!904479) (not e!771694))))

(assert (=> b!1360004 (= res!904479 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360005 () Bool)

(declare-fun res!904483 () Bool)

(assert (=> b!1360005 (=> (not res!904483) (not e!771694))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360005 (= res!904483 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360006 () Bool)

(declare-datatypes ((Unit!44744 0))(
  ( (Unit!44745) )
))
(declare-fun e!771693 () Unit!44744)

(declare-fun Unit!44746 () Unit!44744)

(assert (=> b!1360006 (= e!771693 Unit!44746)))

(declare-fun b!1360007 () Bool)

(declare-fun res!904478 () Bool)

(assert (=> b!1360007 (=> (not res!904478) (not e!771694))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360007 (= res!904478 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45238 a!3742))))))

(declare-fun b!1360008 () Bool)

(assert (=> b!1360008 (= e!771694 false)))

(declare-fun lt!599721 () Unit!44744)

(assert (=> b!1360008 (= lt!599721 e!771693)))

(declare-fun c!127204 () Bool)

(assert (=> b!1360008 (= c!127204 (validKeyInArray!0 (select (arr!44687 a!3742) from!3120)))))

(declare-fun b!1360009 () Bool)

(declare-fun res!904480 () Bool)

(assert (=> b!1360009 (=> (not res!904480) (not e!771694))))

(declare-fun noDuplicate!2352 (List!31908) Bool)

(assert (=> b!1360009 (= res!904480 (noDuplicate!2352 acc!759))))

(declare-fun b!1360010 () Bool)

(declare-fun lt!599722 () Unit!44744)

(assert (=> b!1360010 (= e!771693 lt!599722)))

(declare-fun lt!599723 () Unit!44744)

(declare-fun lemmaListSubSeqRefl!0 (List!31908) Unit!44744)

(assert (=> b!1360010 (= lt!599723 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!864 (List!31908 List!31908) Bool)

(assert (=> b!1360010 (subseq!864 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92505 List!31908 List!31908 (_ BitVec 32)) Unit!44744)

(declare-fun $colon$colon!869 (List!31908 (_ BitVec 64)) List!31908)

(assert (=> b!1360010 (= lt!599722 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!869 acc!759 (select (arr!44687 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360010 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114694 res!904484) b!1360009))

(assert (= (and b!1360009 res!904480) b!1360002))

(assert (= (and b!1360002 res!904485) b!1360001))

(assert (= (and b!1360001 res!904482) b!1360000))

(assert (= (and b!1360000 res!904481) b!1360004))

(assert (= (and b!1360004 res!904479) b!1360007))

(assert (= (and b!1360007 res!904478) b!1360005))

(assert (= (and b!1360005 res!904483) b!1360003))

(assert (= (and b!1360003 res!904477) b!1360008))

(assert (= (and b!1360008 c!127204) b!1360010))

(assert (= (and b!1360008 (not c!127204)) b!1360006))

(declare-fun m!1245365 () Bool)

(assert (=> start!114694 m!1245365))

(declare-fun m!1245367 () Bool)

(assert (=> b!1360005 m!1245367))

(declare-fun m!1245369 () Bool)

(assert (=> b!1360004 m!1245369))

(declare-fun m!1245371 () Bool)

(assert (=> b!1360002 m!1245371))

(declare-fun m!1245373 () Bool)

(assert (=> b!1360010 m!1245373))

(declare-fun m!1245375 () Bool)

(assert (=> b!1360010 m!1245375))

(declare-fun m!1245377 () Bool)

(assert (=> b!1360010 m!1245377))

(declare-fun m!1245379 () Bool)

(assert (=> b!1360010 m!1245379))

(declare-fun m!1245381 () Bool)

(assert (=> b!1360010 m!1245381))

(assert (=> b!1360010 m!1245375))

(assert (=> b!1360010 m!1245377))

(declare-fun m!1245383 () Bool)

(assert (=> b!1360010 m!1245383))

(assert (=> b!1360008 m!1245375))

(assert (=> b!1360008 m!1245375))

(declare-fun m!1245385 () Bool)

(assert (=> b!1360008 m!1245385))

(declare-fun m!1245387 () Bool)

(assert (=> b!1360000 m!1245387))

(declare-fun m!1245389 () Bool)

(assert (=> b!1360001 m!1245389))

(declare-fun m!1245391 () Bool)

(assert (=> b!1360009 m!1245391))

(check-sat (not b!1360010) (not b!1360001) (not start!114694) (not b!1360002) (not b!1360009) (not b!1360004) (not b!1360008) (not b!1360000) (not b!1360005))
