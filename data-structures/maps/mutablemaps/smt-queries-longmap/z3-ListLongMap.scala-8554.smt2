; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104490 () Bool)

(assert start!104490)

(declare-fun res!831882 () Bool)

(declare-fun e!706963 () Bool)

(assert (=> start!104490 (=> (not res!831882) (not e!706963))))

(declare-datatypes ((array!80227 0))(
  ( (array!80228 (arr!38686 (Array (_ BitVec 32) (_ BitVec 64))) (size!39223 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80227)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104490 (= res!831882 (and (bvslt (size!39223 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39223 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39223 a!3892))))))

(assert (=> start!104490 e!706963))

(declare-fun array_inv!29462 (array!80227) Bool)

(assert (=> start!104490 (array_inv!29462 a!3892)))

(assert (=> start!104490 true))

(declare-fun b!1246461 () Bool)

(declare-datatypes ((Unit!41374 0))(
  ( (Unit!41375) )
))
(declare-fun e!706962 () Unit!41374)

(declare-fun lt!563066 () Unit!41374)

(assert (=> b!1246461 (= e!706962 lt!563066)))

(declare-datatypes ((List!27667 0))(
  ( (Nil!27664) (Cons!27663 (h!28872 (_ BitVec 64)) (t!41143 List!27667)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80227 List!27667 List!27667 (_ BitVec 32)) Unit!41374)

(assert (=> b!1246461 (= lt!563066 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27663 (select (arr!38686 a!3892) from!3270) Nil!27664) Nil!27664 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80227 (_ BitVec 32) List!27667) Bool)

(assert (=> b!1246461 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27664)))

(declare-fun b!1246462 () Bool)

(declare-fun Unit!41376 () Unit!41374)

(assert (=> b!1246462 (= e!706962 Unit!41376)))

(declare-fun b!1246463 () Bool)

(declare-fun res!831881 () Bool)

(assert (=> b!1246463 (=> (not res!831881) (not e!706963))))

(assert (=> b!1246463 (= res!831881 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39223 a!3892)) (not (= newFrom!287 (size!39223 a!3892)))))))

(declare-fun b!1246464 () Bool)

(declare-fun res!831883 () Bool)

(assert (=> b!1246464 (=> (not res!831883) (not e!706963))))

(assert (=> b!1246464 (= res!831883 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27664))))

(declare-fun b!1246465 () Bool)

(assert (=> b!1246465 (= e!706963 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvslt newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563065 () Unit!41374)

(assert (=> b!1246465 (= lt!563065 e!706962)))

(declare-fun c!121977 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246465 (= c!121977 (validKeyInArray!0 (select (arr!38686 a!3892) from!3270)))))

(assert (= (and start!104490 res!831882) b!1246464))

(assert (= (and b!1246464 res!831883) b!1246463))

(assert (= (and b!1246463 res!831881) b!1246465))

(assert (= (and b!1246465 c!121977) b!1246461))

(assert (= (and b!1246465 (not c!121977)) b!1246462))

(declare-fun m!1148315 () Bool)

(assert (=> start!104490 m!1148315))

(declare-fun m!1148317 () Bool)

(assert (=> b!1246461 m!1148317))

(declare-fun m!1148319 () Bool)

(assert (=> b!1246461 m!1148319))

(declare-fun m!1148321 () Bool)

(assert (=> b!1246461 m!1148321))

(declare-fun m!1148323 () Bool)

(assert (=> b!1246464 m!1148323))

(assert (=> b!1246465 m!1148317))

(assert (=> b!1246465 m!1148317))

(declare-fun m!1148325 () Bool)

(assert (=> b!1246465 m!1148325))

(check-sat (not b!1246461) (not start!104490) (not b!1246465) (not b!1246464))
(check-sat)
