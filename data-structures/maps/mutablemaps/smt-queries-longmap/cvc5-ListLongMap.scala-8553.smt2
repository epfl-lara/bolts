; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104482 () Bool)

(assert start!104482)

(declare-fun res!831845 () Bool)

(declare-fun e!706927 () Bool)

(assert (=> start!104482 (=> (not res!831845) (not e!706927))))

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((array!80219 0))(
  ( (array!80220 (arr!38682 (Array (_ BitVec 32) (_ BitVec 64))) (size!39219 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80219)

(assert (=> start!104482 (= res!831845 (and (bvslt (size!39219 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39219 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39219 a!3892))))))

(assert (=> start!104482 e!706927))

(declare-fun array_inv!29458 (array!80219) Bool)

(assert (=> start!104482 (array_inv!29458 a!3892)))

(assert (=> start!104482 true))

(declare-fun b!1246401 () Bool)

(declare-fun res!831847 () Bool)

(assert (=> b!1246401 (=> (not res!831847) (not e!706927))))

(assert (=> b!1246401 (= res!831847 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39219 a!3892)) (not (= newFrom!287 (size!39219 a!3892)))))))

(declare-fun b!1246402 () Bool)

(declare-fun res!831846 () Bool)

(assert (=> b!1246402 (=> (not res!831846) (not e!706927))))

(declare-datatypes ((List!27663 0))(
  ( (Nil!27660) (Cons!27659 (h!28868 (_ BitVec 64)) (t!41139 List!27663)) )
))
(declare-fun arrayNoDuplicates!0 (array!80219 (_ BitVec 32) List!27663) Bool)

(assert (=> b!1246402 (= res!831846 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27660))))

(declare-fun b!1246403 () Bool)

(assert (=> b!1246403 (= e!706927 false)))

(declare-datatypes ((Unit!41362 0))(
  ( (Unit!41363) )
))
(declare-fun lt!563041 () Unit!41362)

(declare-fun e!706925 () Unit!41362)

(assert (=> b!1246403 (= lt!563041 e!706925)))

(declare-fun c!121965 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246403 (= c!121965 (validKeyInArray!0 (select (arr!38682 a!3892) from!3270)))))

(declare-fun b!1246404 () Bool)

(declare-fun lt!563042 () Unit!41362)

(assert (=> b!1246404 (= e!706925 lt!563042)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80219 List!27663 List!27663 (_ BitVec 32)) Unit!41362)

(assert (=> b!1246404 (= lt!563042 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27659 (select (arr!38682 a!3892) from!3270) Nil!27660) Nil!27660 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246404 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27660)))

(declare-fun b!1246405 () Bool)

(declare-fun Unit!41364 () Unit!41362)

(assert (=> b!1246405 (= e!706925 Unit!41364)))

(assert (= (and start!104482 res!831845) b!1246402))

(assert (= (and b!1246402 res!831846) b!1246401))

(assert (= (and b!1246401 res!831847) b!1246403))

(assert (= (and b!1246403 c!121965) b!1246404))

(assert (= (and b!1246403 (not c!121965)) b!1246405))

(declare-fun m!1148267 () Bool)

(assert (=> start!104482 m!1148267))

(declare-fun m!1148269 () Bool)

(assert (=> b!1246402 m!1148269))

(declare-fun m!1148271 () Bool)

(assert (=> b!1246403 m!1148271))

(assert (=> b!1246403 m!1148271))

(declare-fun m!1148273 () Bool)

(assert (=> b!1246403 m!1148273))

(assert (=> b!1246404 m!1148271))

(declare-fun m!1148275 () Bool)

(assert (=> b!1246404 m!1148275))

(declare-fun m!1148277 () Bool)

(assert (=> b!1246404 m!1148277))

(push 1)

(assert (not start!104482))

(assert (not b!1246404))

(assert (not b!1246403))

(assert (not b!1246402))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

