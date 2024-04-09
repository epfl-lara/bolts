; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103982 () Bool)

(assert start!103982)

(declare-fun b!1244116 () Bool)

(declare-datatypes ((Unit!41287 0))(
  ( (Unit!41288) )
))
(declare-fun e!705196 () Unit!41287)

(declare-fun lt!562580 () Unit!41287)

(assert (=> b!1244116 (= e!705196 lt!562580)))

(declare-datatypes ((array!80020 0))(
  ( (array!80021 (arr!38599 (Array (_ BitVec 32) (_ BitVec 64))) (size!39136 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80020)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27580 0))(
  ( (Nil!27577) (Cons!27576 (h!28785 (_ BitVec 64)) (t!41056 List!27580)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80020 List!27580 List!27580 (_ BitVec 32)) Unit!41287)

(assert (=> b!1244116 (= lt!562580 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27576 (select (arr!38599 a!3892) from!3270) Nil!27577) Nil!27577 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80020 (_ BitVec 32) List!27580) Bool)

(assert (=> b!1244116 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27577)))

(declare-fun b!1244117 () Bool)

(declare-fun res!829957 () Bool)

(declare-fun e!705195 () Bool)

(assert (=> b!1244117 (=> (not res!829957) (not e!705195))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244117 (= res!829957 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39136 a!3892)) (not (= newFrom!287 (size!39136 a!3892)))))))

(declare-fun b!1244118 () Bool)

(declare-fun res!829956 () Bool)

(assert (=> b!1244118 (=> (not res!829956) (not e!705195))))

(assert (=> b!1244118 (= res!829956 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27577))))

(declare-fun b!1244119 () Bool)

(declare-fun e!705194 () Bool)

(assert (=> b!1244119 (= e!705195 e!705194)))

(declare-fun res!829954 () Bool)

(assert (=> b!1244119 (=> (not res!829954) (not e!705194))))

(assert (=> b!1244119 (= res!829954 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562582 () Unit!41287)

(assert (=> b!1244119 (= lt!562582 e!705196)))

(declare-fun c!121768 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244119 (= c!121768 (validKeyInArray!0 (select (arr!38599 a!3892) from!3270)))))

(declare-fun res!829955 () Bool)

(assert (=> start!103982 (=> (not res!829955) (not e!705195))))

(assert (=> start!103982 (= res!829955 (and (bvslt (size!39136 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39136 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39136 a!3892))))))

(assert (=> start!103982 e!705195))

(declare-fun array_inv!29375 (array!80020) Bool)

(assert (=> start!103982 (array_inv!29375 a!3892)))

(assert (=> start!103982 true))

(declare-fun b!1244120 () Bool)

(declare-fun Unit!41289 () Unit!41287)

(assert (=> b!1244120 (= e!705196 Unit!41289)))

(declare-fun b!1244121 () Bool)

(assert (=> b!1244121 (= e!705194 false)))

(declare-fun lt!562581 () Bool)

(assert (=> b!1244121 (= lt!562581 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27577))))

(assert (= (and start!103982 res!829955) b!1244118))

(assert (= (and b!1244118 res!829956) b!1244117))

(assert (= (and b!1244117 res!829957) b!1244119))

(assert (= (and b!1244119 c!121768) b!1244116))

(assert (= (and b!1244119 (not c!121768)) b!1244120))

(assert (= (and b!1244119 res!829954) b!1244121))

(declare-fun m!1146489 () Bool)

(assert (=> b!1244118 m!1146489))

(declare-fun m!1146491 () Bool)

(assert (=> b!1244116 m!1146491))

(declare-fun m!1146493 () Bool)

(assert (=> b!1244116 m!1146493))

(declare-fun m!1146495 () Bool)

(assert (=> b!1244116 m!1146495))

(assert (=> b!1244119 m!1146491))

(assert (=> b!1244119 m!1146491))

(declare-fun m!1146497 () Bool)

(assert (=> b!1244119 m!1146497))

(assert (=> b!1244121 m!1146495))

(declare-fun m!1146499 () Bool)

(assert (=> start!103982 m!1146499))

(check-sat (not b!1244121) (not b!1244118) (not b!1244116) (not b!1244119) (not start!103982))
(check-sat)
