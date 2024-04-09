; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104478 () Bool)

(assert start!104478)

(declare-fun b!1246371 () Bool)

(declare-fun res!831827 () Bool)

(declare-fun e!706909 () Bool)

(assert (=> b!1246371 (=> (not res!831827) (not e!706909))))

(declare-datatypes ((array!80215 0))(
  ( (array!80216 (arr!38680 (Array (_ BitVec 32) (_ BitVec 64))) (size!39217 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80215)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246371 (= res!831827 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39217 a!3892)) (not (= newFrom!287 (size!39217 a!3892)))))))

(declare-fun res!831828 () Bool)

(assert (=> start!104478 (=> (not res!831828) (not e!706909))))

(assert (=> start!104478 (= res!831828 (and (bvslt (size!39217 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39217 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39217 a!3892))))))

(assert (=> start!104478 e!706909))

(declare-fun array_inv!29456 (array!80215) Bool)

(assert (=> start!104478 (array_inv!29456 a!3892)))

(assert (=> start!104478 true))

(declare-fun b!1246372 () Bool)

(assert (=> b!1246372 (= e!706909 (bvslt (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41356 0))(
  ( (Unit!41357) )
))
(declare-fun lt!563030 () Unit!41356)

(declare-fun e!706907 () Unit!41356)

(assert (=> b!1246372 (= lt!563030 e!706907)))

(declare-fun c!121959 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246372 (= c!121959 (validKeyInArray!0 (select (arr!38680 a!3892) from!3270)))))

(declare-fun b!1246373 () Bool)

(declare-fun res!831829 () Bool)

(assert (=> b!1246373 (=> (not res!831829) (not e!706909))))

(declare-datatypes ((List!27661 0))(
  ( (Nil!27658) (Cons!27657 (h!28866 (_ BitVec 64)) (t!41137 List!27661)) )
))
(declare-fun arrayNoDuplicates!0 (array!80215 (_ BitVec 32) List!27661) Bool)

(assert (=> b!1246373 (= res!831829 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27658))))

(declare-fun b!1246374 () Bool)

(declare-fun lt!563029 () Unit!41356)

(assert (=> b!1246374 (= e!706907 lt!563029)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80215 List!27661 List!27661 (_ BitVec 32)) Unit!41356)

(assert (=> b!1246374 (= lt!563029 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27657 (select (arr!38680 a!3892) from!3270) Nil!27658) Nil!27658 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246374 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27658)))

(declare-fun b!1246375 () Bool)

(declare-fun Unit!41358 () Unit!41356)

(assert (=> b!1246375 (= e!706907 Unit!41358)))

(assert (= (and start!104478 res!831828) b!1246373))

(assert (= (and b!1246373 res!831829) b!1246371))

(assert (= (and b!1246371 res!831827) b!1246372))

(assert (= (and b!1246372 c!121959) b!1246374))

(assert (= (and b!1246372 (not c!121959)) b!1246375))

(declare-fun m!1148243 () Bool)

(assert (=> start!104478 m!1148243))

(declare-fun m!1148245 () Bool)

(assert (=> b!1246372 m!1148245))

(assert (=> b!1246372 m!1148245))

(declare-fun m!1148247 () Bool)

(assert (=> b!1246372 m!1148247))

(declare-fun m!1148249 () Bool)

(assert (=> b!1246373 m!1148249))

(assert (=> b!1246374 m!1148245))

(declare-fun m!1148251 () Bool)

(assert (=> b!1246374 m!1148251))

(declare-fun m!1148253 () Bool)

(assert (=> b!1246374 m!1148253))

(check-sat (not start!104478) (not b!1246374) (not b!1246373) (not b!1246372))
(check-sat)
