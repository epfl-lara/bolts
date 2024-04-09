; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103994 () Bool)

(assert start!103994)

(declare-fun res!830032 () Bool)

(declare-fun e!705268 () Bool)

(assert (=> start!103994 (=> (not res!830032) (not e!705268))))

(declare-datatypes ((array!80032 0))(
  ( (array!80033 (arr!38605 (Array (_ BitVec 32) (_ BitVec 64))) (size!39142 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80032)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103994 (= res!830032 (and (bvslt (size!39142 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39142 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39142 a!3892))))))

(assert (=> start!103994 e!705268))

(declare-fun array_inv!29381 (array!80032) Bool)

(assert (=> start!103994 (array_inv!29381 a!3892)))

(assert (=> start!103994 true))

(declare-fun b!1244229 () Bool)

(declare-datatypes ((Unit!41305 0))(
  ( (Unit!41306) )
))
(declare-fun e!705266 () Unit!41305)

(declare-fun Unit!41307 () Unit!41305)

(assert (=> b!1244229 (= e!705266 Unit!41307)))

(declare-fun b!1244230 () Bool)

(declare-fun res!830035 () Bool)

(declare-fun e!705269 () Bool)

(assert (=> b!1244230 (=> (not res!830035) (not e!705269))))

(declare-datatypes ((List!27586 0))(
  ( (Nil!27583) (Cons!27582 (h!28791 (_ BitVec 64)) (t!41062 List!27586)) )
))
(declare-fun arrayNoDuplicates!0 (array!80032 (_ BitVec 32) List!27586) Bool)

(assert (=> b!1244230 (= res!830035 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27583))))

(declare-fun b!1244231 () Bool)

(declare-fun lt!562636 () Unit!41305)

(assert (=> b!1244231 (= e!705266 lt!562636)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80032 List!27586 List!27586 (_ BitVec 32)) Unit!41305)

(assert (=> b!1244231 (= lt!562636 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27582 (select (arr!38605 a!3892) from!3270) Nil!27583) Nil!27583 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244231 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27583)))

(declare-fun b!1244232 () Bool)

(declare-fun res!830034 () Bool)

(assert (=> b!1244232 (=> (not res!830034) (not e!705268))))

(assert (=> b!1244232 (= res!830034 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27583))))

(declare-fun b!1244233 () Bool)

(assert (=> b!1244233 (= e!705268 e!705269)))

(declare-fun res!830031 () Bool)

(assert (=> b!1244233 (=> (not res!830031) (not e!705269))))

(assert (=> b!1244233 (= res!830031 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562634 () Unit!41305)

(assert (=> b!1244233 (= lt!562634 e!705266)))

(declare-fun c!121786 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244233 (= c!121786 (validKeyInArray!0 (select (arr!38605 a!3892) from!3270)))))

(declare-fun b!1244234 () Bool)

(assert (=> b!1244234 (= e!705269 (not (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(assert (=> b!1244234 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27583)))

(declare-fun lt!562635 () Unit!41305)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80032 (_ BitVec 32) (_ BitVec 32)) Unit!41305)

(assert (=> b!1244234 (= lt!562635 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244235 () Bool)

(declare-fun res!830033 () Bool)

(assert (=> b!1244235 (=> (not res!830033) (not e!705268))))

(assert (=> b!1244235 (= res!830033 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39142 a!3892)) (not (= newFrom!287 (size!39142 a!3892)))))))

(assert (= (and start!103994 res!830032) b!1244232))

(assert (= (and b!1244232 res!830034) b!1244235))

(assert (= (and b!1244235 res!830033) b!1244233))

(assert (= (and b!1244233 c!121786) b!1244231))

(assert (= (and b!1244233 (not c!121786)) b!1244229))

(assert (= (and b!1244233 res!830031) b!1244230))

(assert (= (and b!1244230 res!830035) b!1244234))

(declare-fun m!1146565 () Bool)

(assert (=> b!1244233 m!1146565))

(assert (=> b!1244233 m!1146565))

(declare-fun m!1146567 () Bool)

(assert (=> b!1244233 m!1146567))

(declare-fun m!1146569 () Bool)

(assert (=> b!1244234 m!1146569))

(declare-fun m!1146571 () Bool)

(assert (=> b!1244234 m!1146571))

(declare-fun m!1146573 () Bool)

(assert (=> b!1244230 m!1146573))

(assert (=> b!1244231 m!1146565))

(declare-fun m!1146575 () Bool)

(assert (=> b!1244231 m!1146575))

(assert (=> b!1244231 m!1146573))

(declare-fun m!1146577 () Bool)

(assert (=> b!1244232 m!1146577))

(declare-fun m!1146579 () Bool)

(assert (=> start!103994 m!1146579))

(check-sat (not b!1244233) (not b!1244234) (not start!103994) (not b!1244231) (not b!1244230) (not b!1244232))
(check-sat)
