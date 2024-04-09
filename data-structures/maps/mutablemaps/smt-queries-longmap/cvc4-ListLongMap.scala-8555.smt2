; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104498 () Bool)

(assert start!104498)

(declare-fun res!831926 () Bool)

(declare-fun e!707005 () Bool)

(assert (=> start!104498 (=> (not res!831926) (not e!707005))))

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((array!80235 0))(
  ( (array!80236 (arr!38690 (Array (_ BitVec 32) (_ BitVec 64))) (size!39227 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80235)

(assert (=> start!104498 (= res!831926 (and (bvslt (size!39227 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39227 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39227 a!3892))))))

(assert (=> start!104498 e!707005))

(declare-fun array_inv!29466 (array!80235) Bool)

(assert (=> start!104498 (array_inv!29466 a!3892)))

(assert (=> start!104498 true))

(declare-fun b!1246529 () Bool)

(declare-fun res!831925 () Bool)

(assert (=> b!1246529 (=> (not res!831925) (not e!707005))))

(declare-datatypes ((List!27671 0))(
  ( (Nil!27668) (Cons!27667 (h!28876 (_ BitVec 64)) (t!41147 List!27671)) )
))
(declare-fun arrayNoDuplicates!0 (array!80235 (_ BitVec 32) List!27671) Bool)

(assert (=> b!1246529 (= res!831925 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27668))))

(declare-fun b!1246530 () Bool)

(declare-fun e!707007 () Bool)

(assert (=> b!1246530 (= e!707005 e!707007)))

(declare-fun res!831927 () Bool)

(assert (=> b!1246530 (=> (not res!831927) (not e!707007))))

(assert (=> b!1246530 (= res!831927 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41386 0))(
  ( (Unit!41387) )
))
(declare-fun lt!563090 () Unit!41386)

(declare-fun e!707008 () Unit!41386)

(assert (=> b!1246530 (= lt!563090 e!707008)))

(declare-fun c!121989 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246530 (= c!121989 (validKeyInArray!0 (select (arr!38690 a!3892) from!3270)))))

(declare-fun b!1246531 () Bool)

(declare-fun lt!563089 () Unit!41386)

(assert (=> b!1246531 (= e!707008 lt!563089)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80235 List!27671 List!27671 (_ BitVec 32)) Unit!41386)

(assert (=> b!1246531 (= lt!563089 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27667 (select (arr!38690 a!3892) from!3270) Nil!27668) Nil!27668 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246531 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27668)))

(declare-fun b!1246532 () Bool)

(declare-fun res!831928 () Bool)

(assert (=> b!1246532 (=> (not res!831928) (not e!707005))))

(assert (=> b!1246532 (= res!831928 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39227 a!3892)) (not (= newFrom!287 (size!39227 a!3892)))))))

(declare-fun b!1246533 () Bool)

(declare-fun Unit!41388 () Unit!41386)

(assert (=> b!1246533 (= e!707008 Unit!41388)))

(declare-fun b!1246534 () Bool)

(assert (=> b!1246534 (= e!707007 (not (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27668)))))

(assert (= (and start!104498 res!831926) b!1246529))

(assert (= (and b!1246529 res!831925) b!1246532))

(assert (= (and b!1246532 res!831928) b!1246530))

(assert (= (and b!1246530 c!121989) b!1246531))

(assert (= (and b!1246530 (not c!121989)) b!1246533))

(assert (= (and b!1246530 res!831927) b!1246534))

(declare-fun m!1148363 () Bool)

(assert (=> b!1246530 m!1148363))

(assert (=> b!1246530 m!1148363))

(declare-fun m!1148365 () Bool)

(assert (=> b!1246530 m!1148365))

(assert (=> b!1246531 m!1148363))

(declare-fun m!1148367 () Bool)

(assert (=> b!1246531 m!1148367))

(declare-fun m!1148369 () Bool)

(assert (=> b!1246531 m!1148369))

(declare-fun m!1148371 () Bool)

(assert (=> b!1246529 m!1148371))

(declare-fun m!1148373 () Bool)

(assert (=> start!104498 m!1148373))

(assert (=> b!1246534 m!1148369))

(push 1)

(assert (not b!1246534))

(assert (not b!1246529))

(assert (not b!1246531))

(assert (not start!104498))

(assert (not b!1246530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1246580 () Bool)

(declare-fun e!707047 () Bool)

(declare-fun e!707045 () Bool)

(assert (=> b!1246580 (= e!707047 e!707045)))

(declare-fun c!121999 () Bool)

(assert (=> b!1246580 (= c!121999 (validKeyInArray!0 (select (arr!38690 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246582 () Bool)

(declare-fun call!61533 () Bool)

(assert (=> b!1246582 (= e!707045 call!61533)))

(declare-fun b!1246583 () Bool)

(assert (=> b!1246583 (= e!707045 call!61533)))

(declare-fun b!1246584 () Bool)

(declare-fun e!707048 () Bool)

(assert (=> b!1246584 (= e!707048 e!707047)))

(declare-fun res!831956 () Bool)

(assert (=> b!1246584 (=> (not res!831956) (not e!707047))))

(declare-fun e!707046 () Bool)

(assert (=> b!1246584 (= res!831956 (not e!707046))))

(declare-fun res!831957 () Bool)

(assert (=> b!1246584 (=> (not res!831957) (not e!707046))))

(assert (=> b!1246584 (= res!831957 (validKeyInArray!0 (select (arr!38690 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun bm!61530 () Bool)

(assert (=> bm!61530 (= call!61533 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121999 (Cons!27667 (select (arr!38690 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27668) Nil!27668)))))

(declare-fun d!137579 () Bool)

(declare-fun res!831958 () Bool)

(assert (=> d!137579 (=> res!831958 e!707048)))

(assert (=> d!137579 (= res!831958 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39227 a!3892)))))

(assert (=> d!137579 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27668) e!707048)))

(declare-fun b!1246581 () Bool)

(declare-fun contains!7477 (List!27671 (_ BitVec 64)) Bool)

(assert (=> b!1246581 (= e!707046 (contains!7477 Nil!27668 (select (arr!38690 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(assert (= (and d!137579 (not res!831958)) b!1246584))

(assert (= (and b!1246584 res!831957) b!1246581))

(assert (= (and b!1246584 res!831956) b!1246580))

(assert (= (and b!1246580 c!121999) b!1246583))

(assert (= (and b!1246580 (not c!121999)) b!1246582))

(assert (= (or b!1246583 b!1246582) bm!61530))

(declare-fun m!1148399 () Bool)

(assert (=> b!1246580 m!1148399))

(assert (=> b!1246580 m!1148399))

(declare-fun m!1148401 () Bool)

(assert (=> b!1246580 m!1148401))

(assert (=> b!1246584 m!1148399))

(assert (=> b!1246584 m!1148399))

(assert (=> b!1246584 m!1148401))

(assert (=> bm!61530 m!1148399))

