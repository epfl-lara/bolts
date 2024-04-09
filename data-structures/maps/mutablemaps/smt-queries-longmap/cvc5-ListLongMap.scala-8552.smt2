; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104476 () Bool)

(assert start!104476)

(declare-fun b!1246356 () Bool)

(declare-datatypes ((Unit!41353 0))(
  ( (Unit!41354) )
))
(declare-fun e!706898 () Unit!41353)

(declare-fun Unit!41355 () Unit!41353)

(assert (=> b!1246356 (= e!706898 Unit!41355)))

(declare-fun b!1246357 () Bool)

(declare-fun lt!563023 () Unit!41353)

(assert (=> b!1246357 (= e!706898 lt!563023)))

(declare-datatypes ((array!80213 0))(
  ( (array!80214 (arr!38679 (Array (_ BitVec 32) (_ BitVec 64))) (size!39216 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80213)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27660 0))(
  ( (Nil!27657) (Cons!27656 (h!28865 (_ BitVec 64)) (t!41136 List!27660)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80213 List!27660 List!27660 (_ BitVec 32)) Unit!41353)

(assert (=> b!1246357 (= lt!563023 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27656 (select (arr!38679 a!3892) from!3270) Nil!27657) Nil!27657 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80213 (_ BitVec 32) List!27660) Bool)

(assert (=> b!1246357 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27657)))

(declare-fun b!1246359 () Bool)

(declare-fun e!706900 () Bool)

(assert (=> b!1246359 (= e!706900 (bvslt (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-fun lt!563024 () Unit!41353)

(assert (=> b!1246359 (= lt!563024 e!706898)))

(declare-fun c!121956 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246359 (= c!121956 (validKeyInArray!0 (select (arr!38679 a!3892) from!3270)))))

(declare-fun b!1246360 () Bool)

(declare-fun res!831818 () Bool)

(assert (=> b!1246360 (=> (not res!831818) (not e!706900))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246360 (= res!831818 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39216 a!3892)) (not (= newFrom!287 (size!39216 a!3892)))))))

(declare-fun b!1246358 () Bool)

(declare-fun res!831820 () Bool)

(assert (=> b!1246358 (=> (not res!831820) (not e!706900))))

(assert (=> b!1246358 (= res!831820 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27657))))

(declare-fun res!831819 () Bool)

(assert (=> start!104476 (=> (not res!831819) (not e!706900))))

(assert (=> start!104476 (= res!831819 (and (bvslt (size!39216 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39216 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39216 a!3892))))))

(assert (=> start!104476 e!706900))

(declare-fun array_inv!29455 (array!80213) Bool)

(assert (=> start!104476 (array_inv!29455 a!3892)))

(assert (=> start!104476 true))

(assert (= (and start!104476 res!831819) b!1246358))

(assert (= (and b!1246358 res!831820) b!1246360))

(assert (= (and b!1246360 res!831818) b!1246359))

(assert (= (and b!1246359 c!121956) b!1246357))

(assert (= (and b!1246359 (not c!121956)) b!1246356))

(declare-fun m!1148231 () Bool)

(assert (=> b!1246357 m!1148231))

(declare-fun m!1148233 () Bool)

(assert (=> b!1246357 m!1148233))

(declare-fun m!1148235 () Bool)

(assert (=> b!1246357 m!1148235))

(assert (=> b!1246359 m!1148231))

(assert (=> b!1246359 m!1148231))

(declare-fun m!1148237 () Bool)

(assert (=> b!1246359 m!1148237))

(declare-fun m!1148239 () Bool)

(assert (=> b!1246358 m!1148239))

(declare-fun m!1148241 () Bool)

(assert (=> start!104476 m!1148241))

(push 1)

(assert (not start!104476))

(assert (not b!1246359))

(assert (not b!1246358))

(assert (not b!1246357))

