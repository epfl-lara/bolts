; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118254 () Bool)

(assert start!118254)

(declare-fun b!1382932 () Bool)

(declare-fun res!924633 () Bool)

(declare-fun e!783874 () Bool)

(assert (=> b!1382932 (=> (not res!924633) (not e!783874))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((array!94475 0))(
  ( (array!94476 (arr!45611 (Array (_ BitVec 32) (_ BitVec 64))) (size!46162 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94475)

(assert (=> b!1382932 (= res!924633 (and (= (size!46162 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46162 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46162 a!2938))))))

(declare-fun b!1382935 () Bool)

(assert (=> b!1382935 (= e!783874 (bvsgt #b00000000000000000000000000000000 (size!46162 a!2938)))))

(declare-fun b!1382934 () Bool)

(declare-fun res!924634 () Bool)

(assert (=> b!1382934 (=> (not res!924634) (not e!783874))))

(declare-datatypes ((List!32319 0))(
  ( (Nil!32316) (Cons!32315 (h!33524 (_ BitVec 64)) (t!47020 List!32319)) )
))
(declare-fun arrayNoDuplicates!0 (array!94475 (_ BitVec 32) List!32319) Bool)

(assert (=> b!1382934 (= res!924634 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32316))))

(declare-fun b!1382933 () Bool)

(declare-fun res!924635 () Bool)

(assert (=> b!1382933 (=> (not res!924635) (not e!783874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382933 (= res!924635 (validKeyInArray!0 (select (arr!45611 a!2938) i!1065)))))

(declare-fun res!924636 () Bool)

(assert (=> start!118254 (=> (not res!924636) (not e!783874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118254 (= res!924636 (validMask!0 mask!2987))))

(assert (=> start!118254 e!783874))

(assert (=> start!118254 true))

(declare-fun array_inv!34556 (array!94475) Bool)

(assert (=> start!118254 (array_inv!34556 a!2938)))

(assert (= (and start!118254 res!924636) b!1382932))

(assert (= (and b!1382932 res!924633) b!1382933))

(assert (= (and b!1382933 res!924635) b!1382934))

(assert (= (and b!1382934 res!924634) b!1382935))

(declare-fun m!1268097 () Bool)

(assert (=> b!1382934 m!1268097))

(declare-fun m!1268099 () Bool)

(assert (=> b!1382933 m!1268099))

(assert (=> b!1382933 m!1268099))

(declare-fun m!1268101 () Bool)

(assert (=> b!1382933 m!1268101))

(declare-fun m!1268103 () Bool)

(assert (=> start!118254 m!1268103))

(declare-fun m!1268105 () Bool)

(assert (=> start!118254 m!1268105))

(check-sat (not start!118254) (not b!1382933) (not b!1382934))
(check-sat)
