; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117838 () Bool)

(assert start!117838)

(declare-fun res!922880 () Bool)

(declare-fun e!782917 () Bool)

(assert (=> start!117838 (=> (not res!922880) (not e!782917))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117838 (= res!922880 (validMask!0 mask!3034))))

(assert (=> start!117838 e!782917))

(assert (=> start!117838 true))

(declare-datatypes ((array!94206 0))(
  ( (array!94207 (arr!45485 (Array (_ BitVec 32) (_ BitVec 64))) (size!46036 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94206)

(declare-fun array_inv!34430 (array!94206) Bool)

(assert (=> start!117838 (array_inv!34430 a!2971)))

(declare-fun b!1381142 () Bool)

(declare-fun res!922881 () Bool)

(assert (=> b!1381142 (=> (not res!922881) (not e!782917))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381142 (= res!922881 (and (= (size!46036 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46036 a!2971))))))

(declare-fun b!1381143 () Bool)

(declare-fun res!922879 () Bool)

(assert (=> b!1381143 (=> (not res!922879) (not e!782917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381143 (= res!922879 (validKeyInArray!0 (select (arr!45485 a!2971) i!1094)))))

(declare-fun b!1381144 () Bool)

(assert (=> b!1381144 (= e!782917 (bvsgt #b00000000000000000000000000000000 (size!46036 a!2971)))))

(assert (= (and start!117838 res!922880) b!1381142))

(assert (= (and b!1381142 res!922881) b!1381143))

(assert (= (and b!1381143 res!922879) b!1381144))

(declare-fun m!1266413 () Bool)

(assert (=> start!117838 m!1266413))

(declare-fun m!1266415 () Bool)

(assert (=> start!117838 m!1266415))

(declare-fun m!1266417 () Bool)

(assert (=> b!1381143 m!1266417))

(assert (=> b!1381143 m!1266417))

(declare-fun m!1266419 () Bool)

(assert (=> b!1381143 m!1266419))

(check-sat (not start!117838) (not b!1381143))
(check-sat)
