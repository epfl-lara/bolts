; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119150 () Bool)

(assert start!119150)

(declare-fun b!1389509 () Bool)

(declare-fun res!929779 () Bool)

(declare-fun e!787075 () Bool)

(assert (=> b!1389509 (=> (not res!929779) (not e!787075))))

(declare-datatypes ((array!95005 0))(
  ( (array!95006 (arr!45864 (Array (_ BitVec 32) (_ BitVec 64))) (size!46415 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95005)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95005 (_ BitVec 32)) Bool)

(assert (=> b!1389509 (= res!929779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929784 () Bool)

(assert (=> start!119150 (=> (not res!929784) (not e!787075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119150 (= res!929784 (validMask!0 mask!2840))))

(assert (=> start!119150 e!787075))

(assert (=> start!119150 true))

(declare-fun array_inv!34809 (array!95005) Bool)

(assert (=> start!119150 (array_inv!34809 a!2901)))

(declare-fun b!1389510 () Bool)

(declare-fun res!929781 () Bool)

(assert (=> b!1389510 (=> (not res!929781) (not e!787075))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389510 (= res!929781 (validKeyInArray!0 (select (arr!45864 a!2901) j!112)))))

(declare-fun b!1389511 () Bool)

(assert (=> b!1389511 (= e!787075 false)))

(declare-datatypes ((SeekEntryResult!10203 0))(
  ( (MissingZero!10203 (index!43182 (_ BitVec 32))) (Found!10203 (index!43183 (_ BitVec 32))) (Intermediate!10203 (undefined!11015 Bool) (index!43184 (_ BitVec 32)) (x!124876 (_ BitVec 32))) (Undefined!10203) (MissingVacant!10203 (index!43185 (_ BitVec 32))) )
))
(declare-fun lt!610531 () SeekEntryResult!10203)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95005 (_ BitVec 32)) SeekEntryResult!10203)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389511 (= lt!610531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45864 a!2901) j!112) mask!2840) (select (arr!45864 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389512 () Bool)

(declare-fun res!929783 () Bool)

(assert (=> b!1389512 (=> (not res!929783) (not e!787075))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389512 (= res!929783 (and (= (size!46415 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46415 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46415 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389513 () Bool)

(declare-fun res!929782 () Bool)

(assert (=> b!1389513 (=> (not res!929782) (not e!787075))))

(assert (=> b!1389513 (= res!929782 (validKeyInArray!0 (select (arr!45864 a!2901) i!1037)))))

(declare-fun b!1389514 () Bool)

(declare-fun res!929780 () Bool)

(assert (=> b!1389514 (=> (not res!929780) (not e!787075))))

(declare-datatypes ((List!32563 0))(
  ( (Nil!32560) (Cons!32559 (h!33777 (_ BitVec 64)) (t!47264 List!32563)) )
))
(declare-fun arrayNoDuplicates!0 (array!95005 (_ BitVec 32) List!32563) Bool)

(assert (=> b!1389514 (= res!929780 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32560))))

(assert (= (and start!119150 res!929784) b!1389512))

(assert (= (and b!1389512 res!929783) b!1389513))

(assert (= (and b!1389513 res!929782) b!1389510))

(assert (= (and b!1389510 res!929781) b!1389509))

(assert (= (and b!1389509 res!929779) b!1389514))

(assert (= (and b!1389514 res!929780) b!1389511))

(declare-fun m!1275219 () Bool)

(assert (=> b!1389510 m!1275219))

(assert (=> b!1389510 m!1275219))

(declare-fun m!1275221 () Bool)

(assert (=> b!1389510 m!1275221))

(declare-fun m!1275223 () Bool)

(assert (=> b!1389514 m!1275223))

(assert (=> b!1389511 m!1275219))

(assert (=> b!1389511 m!1275219))

(declare-fun m!1275225 () Bool)

(assert (=> b!1389511 m!1275225))

(assert (=> b!1389511 m!1275225))

(assert (=> b!1389511 m!1275219))

(declare-fun m!1275227 () Bool)

(assert (=> b!1389511 m!1275227))

(declare-fun m!1275229 () Bool)

(assert (=> b!1389513 m!1275229))

(assert (=> b!1389513 m!1275229))

(declare-fun m!1275231 () Bool)

(assert (=> b!1389513 m!1275231))

(declare-fun m!1275233 () Bool)

(assert (=> start!119150 m!1275233))

(declare-fun m!1275235 () Bool)

(assert (=> start!119150 m!1275235))

(declare-fun m!1275237 () Bool)

(assert (=> b!1389509 m!1275237))

(push 1)

(assert (not b!1389514))

(assert (not b!1389511))

(assert (not b!1389510))

(assert (not b!1389513))

(assert (not b!1389509))

(assert (not start!119150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

