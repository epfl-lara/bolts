; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103998 () Bool)

(assert start!103998)

(declare-fun b!1244271 () Bool)

(declare-fun e!705293 () Bool)

(declare-fun e!705292 () Bool)

(assert (=> b!1244271 (= e!705293 e!705292)))

(declare-fun res!830061 () Bool)

(assert (=> b!1244271 (=> (not res!830061) (not e!705292))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244271 (= res!830061 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41311 0))(
  ( (Unit!41312) )
))
(declare-fun lt!562653 () Unit!41311)

(declare-fun e!705290 () Unit!41311)

(assert (=> b!1244271 (= lt!562653 e!705290)))

(declare-fun c!121792 () Bool)

(declare-datatypes ((array!80036 0))(
  ( (array!80037 (arr!38607 (Array (_ BitVec 32) (_ BitVec 64))) (size!39144 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80036)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244271 (= c!121792 (validKeyInArray!0 (select (arr!38607 a!3892) from!3270)))))

(declare-fun b!1244273 () Bool)

(declare-fun lt!562654 () Unit!41311)

(assert (=> b!1244273 (= e!705290 lt!562654)))

(declare-datatypes ((List!27588 0))(
  ( (Nil!27585) (Cons!27584 (h!28793 (_ BitVec 64)) (t!41064 List!27588)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80036 List!27588 List!27588 (_ BitVec 32)) Unit!41311)

(assert (=> b!1244273 (= lt!562654 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27584 (select (arr!38607 a!3892) from!3270) Nil!27585) Nil!27585 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80036 (_ BitVec 32) List!27588) Bool)

(assert (=> b!1244273 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27585)))

(declare-fun b!1244272 () Bool)

(declare-fun Unit!41313 () Unit!41311)

(assert (=> b!1244272 (= e!705290 Unit!41313)))

(declare-fun res!830062 () Bool)

(assert (=> start!103998 (=> (not res!830062) (not e!705293))))

(assert (=> start!103998 (= res!830062 (and (bvslt (size!39144 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39144 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39144 a!3892))))))

(assert (=> start!103998 e!705293))

(declare-fun array_inv!29383 (array!80036) Bool)

(assert (=> start!103998 (array_inv!29383 a!3892)))

(assert (=> start!103998 true))

(declare-fun b!1244274 () Bool)

(declare-fun res!830063 () Bool)

(assert (=> b!1244274 (=> (not res!830063) (not e!705293))))

(assert (=> b!1244274 (= res!830063 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39144 a!3892)) (not (= newFrom!287 (size!39144 a!3892)))))))

(declare-fun b!1244275 () Bool)

(declare-fun res!830065 () Bool)

(assert (=> b!1244275 (=> (not res!830065) (not e!705292))))

(assert (=> b!1244275 (= res!830065 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27585))))

(declare-fun b!1244276 () Bool)

(declare-fun res!830064 () Bool)

(assert (=> b!1244276 (=> (not res!830064) (not e!705293))))

(assert (=> b!1244276 (= res!830064 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27585))))

(declare-fun b!1244277 () Bool)

(assert (=> b!1244277 (= e!705292 (not true))))

(assert (=> b!1244277 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27585)))

(declare-fun lt!562652 () Unit!41311)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80036 (_ BitVec 32) (_ BitVec 32)) Unit!41311)

(assert (=> b!1244277 (= lt!562652 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(assert (= (and start!103998 res!830062) b!1244276))

(assert (= (and b!1244276 res!830064) b!1244274))

(assert (= (and b!1244274 res!830063) b!1244271))

(assert (= (and b!1244271 c!121792) b!1244273))

(assert (= (and b!1244271 (not c!121792)) b!1244272))

(assert (= (and b!1244271 res!830061) b!1244275))

(assert (= (and b!1244275 res!830065) b!1244277))

(declare-fun m!1146597 () Bool)

(assert (=> b!1244277 m!1146597))

(declare-fun m!1146599 () Bool)

(assert (=> b!1244277 m!1146599))

(declare-fun m!1146601 () Bool)

(assert (=> b!1244275 m!1146601))

(declare-fun m!1146603 () Bool)

(assert (=> b!1244273 m!1146603))

(declare-fun m!1146605 () Bool)

(assert (=> b!1244273 m!1146605))

(assert (=> b!1244273 m!1146601))

(declare-fun m!1146607 () Bool)

(assert (=> b!1244276 m!1146607))

(declare-fun m!1146609 () Bool)

(assert (=> start!103998 m!1146609))

(assert (=> b!1244271 m!1146603))

(assert (=> b!1244271 m!1146603))

(declare-fun m!1146611 () Bool)

(assert (=> b!1244271 m!1146611))

(push 1)

