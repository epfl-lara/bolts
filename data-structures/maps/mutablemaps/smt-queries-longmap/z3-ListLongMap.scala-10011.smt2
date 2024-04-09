; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118146 () Bool)

(assert start!118146)

(declare-fun res!924345 () Bool)

(declare-fun e!783679 () Bool)

(assert (=> start!118146 (=> (not res!924345) (not e!783679))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118146 (= res!924345 (validMask!0 mask!2987))))

(assert (=> start!118146 e!783679))

(assert (=> start!118146 true))

(declare-datatypes ((array!94426 0))(
  ( (array!94427 (arr!45590 (Array (_ BitVec 32) (_ BitVec 64))) (size!46141 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94426)

(declare-fun array_inv!34535 (array!94426) Bool)

(assert (=> start!118146 (array_inv!34535 a!2938)))

(declare-fun b!1382642 () Bool)

(declare-fun res!924343 () Bool)

(assert (=> b!1382642 (=> (not res!924343) (not e!783679))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382642 (= res!924343 (and (= (size!46141 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46141 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46141 a!2938))))))

(declare-fun b!1382643 () Bool)

(declare-fun res!924344 () Bool)

(assert (=> b!1382643 (=> (not res!924344) (not e!783679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382643 (= res!924344 (validKeyInArray!0 (select (arr!45590 a!2938) i!1065)))))

(declare-fun b!1382644 () Bool)

(assert (=> b!1382644 (= e!783679 (bvsgt #b00000000000000000000000000000000 (size!46141 a!2938)))))

(assert (= (and start!118146 res!924345) b!1382642))

(assert (= (and b!1382642 res!924343) b!1382643))

(assert (= (and b!1382643 res!924344) b!1382644))

(declare-fun m!1267835 () Bool)

(assert (=> start!118146 m!1267835))

(declare-fun m!1267837 () Bool)

(assert (=> start!118146 m!1267837))

(declare-fun m!1267839 () Bool)

(assert (=> b!1382643 m!1267839))

(assert (=> b!1382643 m!1267839))

(declare-fun m!1267841 () Bool)

(assert (=> b!1382643 m!1267841))

(check-sat (not b!1382643) (not start!118146))
(check-sat)
