; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103976 () Bool)

(assert start!103976)

(declare-fun b!1244062 () Bool)

(declare-fun res!829921 () Bool)

(declare-fun e!705161 () Bool)

(assert (=> b!1244062 (=> (not res!829921) (not e!705161))))

(declare-datatypes ((array!80014 0))(
  ( (array!80015 (arr!38596 (Array (_ BitVec 32) (_ BitVec 64))) (size!39133 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80014)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27577 0))(
  ( (Nil!27574) (Cons!27573 (h!28782 (_ BitVec 64)) (t!41053 List!27577)) )
))
(declare-fun arrayNoDuplicates!0 (array!80014 (_ BitVec 32) List!27577) Bool)

(assert (=> b!1244062 (= res!829921 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27574))))

(declare-fun b!1244063 () Bool)

(declare-fun e!705160 () Bool)

(assert (=> b!1244063 (= e!705160 false)))

(declare-fun lt!562555 () Bool)

(assert (=> b!1244063 (= lt!562555 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27574))))

(declare-fun res!829918 () Bool)

(assert (=> start!103976 (=> (not res!829918) (not e!705161))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103976 (= res!829918 (and (bvslt (size!39133 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39133 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39133 a!3892))))))

(assert (=> start!103976 e!705161))

(declare-fun array_inv!29372 (array!80014) Bool)

(assert (=> start!103976 (array_inv!29372 a!3892)))

(assert (=> start!103976 true))

(declare-fun b!1244064 () Bool)

(declare-fun res!829920 () Bool)

(assert (=> b!1244064 (=> (not res!829920) (not e!705161))))

(assert (=> b!1244064 (= res!829920 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39133 a!3892)) (not (= newFrom!287 (size!39133 a!3892)))))))

(declare-fun b!1244065 () Bool)

(assert (=> b!1244065 (= e!705161 e!705160)))

(declare-fun res!829919 () Bool)

(assert (=> b!1244065 (=> (not res!829919) (not e!705160))))

(assert (=> b!1244065 (= res!829919 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41278 0))(
  ( (Unit!41279) )
))
(declare-fun lt!562554 () Unit!41278)

(declare-fun e!705159 () Unit!41278)

(assert (=> b!1244065 (= lt!562554 e!705159)))

(declare-fun c!121759 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244065 (= c!121759 (validKeyInArray!0 (select (arr!38596 a!3892) from!3270)))))

(declare-fun b!1244066 () Bool)

(declare-fun lt!562553 () Unit!41278)

(assert (=> b!1244066 (= e!705159 lt!562553)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80014 List!27577 List!27577 (_ BitVec 32)) Unit!41278)

(assert (=> b!1244066 (= lt!562553 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27573 (select (arr!38596 a!3892) from!3270) Nil!27574) Nil!27574 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244066 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27574)))

(declare-fun b!1244067 () Bool)

(declare-fun Unit!41280 () Unit!41278)

(assert (=> b!1244067 (= e!705159 Unit!41280)))

(assert (= (and start!103976 res!829918) b!1244062))

(assert (= (and b!1244062 res!829921) b!1244064))

(assert (= (and b!1244064 res!829920) b!1244065))

(assert (= (and b!1244065 c!121759) b!1244066))

(assert (= (and b!1244065 (not c!121759)) b!1244067))

(assert (= (and b!1244065 res!829919) b!1244063))

(declare-fun m!1146453 () Bool)

(assert (=> b!1244063 m!1146453))

(declare-fun m!1146455 () Bool)

(assert (=> b!1244062 m!1146455))

(declare-fun m!1146457 () Bool)

(assert (=> b!1244065 m!1146457))

(assert (=> b!1244065 m!1146457))

(declare-fun m!1146459 () Bool)

(assert (=> b!1244065 m!1146459))

(declare-fun m!1146461 () Bool)

(assert (=> start!103976 m!1146461))

(assert (=> b!1244066 m!1146457))

(declare-fun m!1146463 () Bool)

(assert (=> b!1244066 m!1146463))

(assert (=> b!1244066 m!1146453))

(check-sat (not b!1244062) (not b!1244063) (not start!103976) (not b!1244065) (not b!1244066))
(check-sat)
