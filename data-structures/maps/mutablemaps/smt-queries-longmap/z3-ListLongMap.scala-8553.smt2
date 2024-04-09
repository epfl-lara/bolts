; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104484 () Bool)

(assert start!104484)

(declare-fun b!1246416 () Bool)

(declare-datatypes ((Unit!41365 0))(
  ( (Unit!41366) )
))
(declare-fun e!706935 () Unit!41365)

(declare-fun Unit!41367 () Unit!41365)

(assert (=> b!1246416 (= e!706935 Unit!41367)))

(declare-fun b!1246417 () Bool)

(declare-fun res!831854 () Bool)

(declare-fun e!706936 () Bool)

(assert (=> b!1246417 (=> (not res!831854) (not e!706936))))

(declare-datatypes ((array!80221 0))(
  ( (array!80222 (arr!38683 (Array (_ BitVec 32) (_ BitVec 64))) (size!39220 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80221)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27664 0))(
  ( (Nil!27661) (Cons!27660 (h!28869 (_ BitVec 64)) (t!41140 List!27664)) )
))
(declare-fun arrayNoDuplicates!0 (array!80221 (_ BitVec 32) List!27664) Bool)

(assert (=> b!1246417 (= res!831854 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27661))))

(declare-fun b!1246418 () Bool)

(declare-fun res!831856 () Bool)

(assert (=> b!1246418 (=> (not res!831856) (not e!706936))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246418 (= res!831856 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39220 a!3892)) (not (= newFrom!287 (size!39220 a!3892)))))))

(declare-fun b!1246419 () Bool)

(assert (=> b!1246419 (= e!706936 false)))

(declare-fun lt!563048 () Unit!41365)

(assert (=> b!1246419 (= lt!563048 e!706935)))

(declare-fun c!121968 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246419 (= c!121968 (validKeyInArray!0 (select (arr!38683 a!3892) from!3270)))))

(declare-fun res!831855 () Bool)

(assert (=> start!104484 (=> (not res!831855) (not e!706936))))

(assert (=> start!104484 (= res!831855 (and (bvslt (size!39220 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39220 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39220 a!3892))))))

(assert (=> start!104484 e!706936))

(declare-fun array_inv!29459 (array!80221) Bool)

(assert (=> start!104484 (array_inv!29459 a!3892)))

(assert (=> start!104484 true))

(declare-fun b!1246420 () Bool)

(declare-fun lt!563047 () Unit!41365)

(assert (=> b!1246420 (= e!706935 lt!563047)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80221 List!27664 List!27664 (_ BitVec 32)) Unit!41365)

(assert (=> b!1246420 (= lt!563047 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27660 (select (arr!38683 a!3892) from!3270) Nil!27661) Nil!27661 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246420 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27661)))

(assert (= (and start!104484 res!831855) b!1246417))

(assert (= (and b!1246417 res!831854) b!1246418))

(assert (= (and b!1246418 res!831856) b!1246419))

(assert (= (and b!1246419 c!121968) b!1246420))

(assert (= (and b!1246419 (not c!121968)) b!1246416))

(declare-fun m!1148279 () Bool)

(assert (=> b!1246417 m!1148279))

(declare-fun m!1148281 () Bool)

(assert (=> b!1246419 m!1148281))

(assert (=> b!1246419 m!1148281))

(declare-fun m!1148283 () Bool)

(assert (=> b!1246419 m!1148283))

(declare-fun m!1148285 () Bool)

(assert (=> start!104484 m!1148285))

(assert (=> b!1246420 m!1148281))

(declare-fun m!1148287 () Bool)

(assert (=> b!1246420 m!1148287))

(declare-fun m!1148289 () Bool)

(assert (=> b!1246420 m!1148289))

(check-sat (not start!104484) (not b!1246420) (not b!1246419) (not b!1246417))
