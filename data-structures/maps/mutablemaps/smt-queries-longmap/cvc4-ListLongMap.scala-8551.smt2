; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104474 () Bool)

(assert start!104474)

(declare-fun b!1246341 () Bool)

(declare-fun res!831811 () Bool)

(declare-fun e!706890 () Bool)

(assert (=> b!1246341 (=> (not res!831811) (not e!706890))))

(declare-datatypes ((array!80211 0))(
  ( (array!80212 (arr!38678 (Array (_ BitVec 32) (_ BitVec 64))) (size!39215 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80211)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27659 0))(
  ( (Nil!27656) (Cons!27655 (h!28864 (_ BitVec 64)) (t!41135 List!27659)) )
))
(declare-fun arrayNoDuplicates!0 (array!80211 (_ BitVec 32) List!27659) Bool)

(assert (=> b!1246341 (= res!831811 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27656))))

(declare-fun b!1246342 () Bool)

(assert (=> b!1246342 (= e!706890 false)))

(declare-datatypes ((Unit!41350 0))(
  ( (Unit!41351) )
))
(declare-fun lt!563017 () Unit!41350)

(declare-fun e!706889 () Unit!41350)

(assert (=> b!1246342 (= lt!563017 e!706889)))

(declare-fun c!121953 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246342 (= c!121953 (validKeyInArray!0 (select (arr!38678 a!3892) from!3270)))))

(declare-fun b!1246343 () Bool)

(declare-fun Unit!41352 () Unit!41350)

(assert (=> b!1246343 (= e!706889 Unit!41352)))

(declare-fun b!1246344 () Bool)

(declare-fun res!831810 () Bool)

(assert (=> b!1246344 (=> (not res!831810) (not e!706890))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246344 (= res!831810 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39215 a!3892)) (not (= newFrom!287 (size!39215 a!3892)))))))

(declare-fun b!1246345 () Bool)

(declare-fun lt!563018 () Unit!41350)

(assert (=> b!1246345 (= e!706889 lt!563018)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80211 List!27659 List!27659 (_ BitVec 32)) Unit!41350)

(assert (=> b!1246345 (= lt!563018 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27655 (select (arr!38678 a!3892) from!3270) Nil!27656) Nil!27656 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246345 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27656)))

(declare-fun res!831809 () Bool)

(assert (=> start!104474 (=> (not res!831809) (not e!706890))))

(assert (=> start!104474 (= res!831809 (and (bvslt (size!39215 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39215 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39215 a!3892))))))

(assert (=> start!104474 e!706890))

(declare-fun array_inv!29454 (array!80211) Bool)

(assert (=> start!104474 (array_inv!29454 a!3892)))

(assert (=> start!104474 true))

(assert (= (and start!104474 res!831809) b!1246341))

(assert (= (and b!1246341 res!831811) b!1246344))

(assert (= (and b!1246344 res!831810) b!1246342))

(assert (= (and b!1246342 c!121953) b!1246345))

(assert (= (and b!1246342 (not c!121953)) b!1246343))

(declare-fun m!1148219 () Bool)

(assert (=> b!1246341 m!1148219))

(declare-fun m!1148221 () Bool)

(assert (=> b!1246342 m!1148221))

(assert (=> b!1246342 m!1148221))

(declare-fun m!1148223 () Bool)

(assert (=> b!1246342 m!1148223))

(assert (=> b!1246345 m!1148221))

(declare-fun m!1148225 () Bool)

(assert (=> b!1246345 m!1148225))

(declare-fun m!1148227 () Bool)

(assert (=> b!1246345 m!1148227))

(declare-fun m!1148229 () Bool)

(assert (=> start!104474 m!1148229))

(push 1)

(assert (not b!1246345))

(assert (not start!104474))

(assert (not b!1246341))

(assert (not b!1246342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

