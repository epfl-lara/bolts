; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103964 () Bool)

(assert start!103964)

(declare-fun b!1243954 () Bool)

(declare-fun e!705088 () Bool)

(declare-fun e!705089 () Bool)

(assert (=> b!1243954 (= e!705088 e!705089)))

(declare-fun res!829847 () Bool)

(assert (=> b!1243954 (=> (not res!829847) (not e!705089))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243954 (= res!829847 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41260 0))(
  ( (Unit!41261) )
))
(declare-fun lt!562500 () Unit!41260)

(declare-fun e!705086 () Unit!41260)

(assert (=> b!1243954 (= lt!562500 e!705086)))

(declare-fun c!121741 () Bool)

(declare-datatypes ((array!80002 0))(
  ( (array!80003 (arr!38590 (Array (_ BitVec 32) (_ BitVec 64))) (size!39127 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80002)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243954 (= c!121741 (validKeyInArray!0 (select (arr!38590 a!3892) from!3270)))))

(declare-fun b!1243955 () Bool)

(declare-fun Unit!41262 () Unit!41260)

(assert (=> b!1243955 (= e!705086 Unit!41262)))

(declare-fun b!1243956 () Bool)

(declare-fun lt!562499 () Unit!41260)

(assert (=> b!1243956 (= e!705086 lt!562499)))

(declare-datatypes ((List!27571 0))(
  ( (Nil!27568) (Cons!27567 (h!28776 (_ BitVec 64)) (t!41047 List!27571)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80002 List!27571 List!27571 (_ BitVec 32)) Unit!41260)

(assert (=> b!1243956 (= lt!562499 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27567 (select (arr!38590 a!3892) from!3270) Nil!27568) Nil!27568 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80002 (_ BitVec 32) List!27571) Bool)

(assert (=> b!1243956 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27568)))

(declare-fun b!1243957 () Bool)

(declare-fun res!829846 () Bool)

(assert (=> b!1243957 (=> (not res!829846) (not e!705088))))

(assert (=> b!1243957 (= res!829846 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27568))))

(declare-fun b!1243958 () Bool)

(declare-fun res!829849 () Bool)

(assert (=> b!1243958 (=> (not res!829849) (not e!705088))))

(assert (=> b!1243958 (= res!829849 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39127 a!3892)) (not (= newFrom!287 (size!39127 a!3892)))))))

(declare-fun res!829848 () Bool)

(assert (=> start!103964 (=> (not res!829848) (not e!705088))))

(assert (=> start!103964 (= res!829848 (and (bvslt (size!39127 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39127 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39127 a!3892))))))

(assert (=> start!103964 e!705088))

(declare-fun array_inv!29366 (array!80002) Bool)

(assert (=> start!103964 (array_inv!29366 a!3892)))

(assert (=> start!103964 true))

(declare-fun b!1243959 () Bool)

(assert (=> b!1243959 (= e!705089 false)))

(declare-fun lt!562501 () Bool)

(assert (=> b!1243959 (= lt!562501 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27568))))

(assert (= (and start!103964 res!829848) b!1243957))

(assert (= (and b!1243957 res!829846) b!1243958))

(assert (= (and b!1243958 res!829849) b!1243954))

(assert (= (and b!1243954 c!121741) b!1243956))

(assert (= (and b!1243954 (not c!121741)) b!1243955))

(assert (= (and b!1243954 res!829847) b!1243959))

(declare-fun m!1146381 () Bool)

(assert (=> start!103964 m!1146381))

(declare-fun m!1146383 () Bool)

(assert (=> b!1243959 m!1146383))

(declare-fun m!1146385 () Bool)

(assert (=> b!1243956 m!1146385))

(declare-fun m!1146387 () Bool)

(assert (=> b!1243956 m!1146387))

(assert (=> b!1243956 m!1146383))

(declare-fun m!1146389 () Bool)

(assert (=> b!1243957 m!1146389))

(assert (=> b!1243954 m!1146385))

(assert (=> b!1243954 m!1146385))

(declare-fun m!1146391 () Bool)

(assert (=> b!1243954 m!1146391))

(check-sat (not b!1243959) (not start!103964) (not b!1243956) (not b!1243954) (not b!1243957))
(check-sat)
