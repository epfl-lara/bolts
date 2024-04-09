; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120576 () Bool)

(assert start!120576)

(declare-fun b!1403467 () Bool)

(declare-fun res!942087 () Bool)

(declare-fun e!794681 () Bool)

(assert (=> b!1403467 (=> (not res!942087) (not e!794681))))

(declare-datatypes ((array!95903 0))(
  ( (array!95904 (arr!46298 (Array (_ BitVec 32) (_ BitVec 64))) (size!46849 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95903)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403467 (= res!942087 (validKeyInArray!0 (select (arr!46298 a!2901) j!112)))))

(declare-fun b!1403468 () Bool)

(declare-fun res!942091 () Bool)

(assert (=> b!1403468 (=> (not res!942091) (not e!794681))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95903 (_ BitVec 32)) Bool)

(assert (=> b!1403468 (= res!942091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403469 () Bool)

(assert (=> b!1403469 (= e!794681 (not true))))

(declare-fun e!794679 () Bool)

(assert (=> b!1403469 e!794679))

(declare-fun res!942090 () Bool)

(assert (=> b!1403469 (=> (not res!942090) (not e!794679))))

(assert (=> b!1403469 (= res!942090 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47228 0))(
  ( (Unit!47229) )
))
(declare-fun lt!618378 () Unit!47228)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95903 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47228)

(assert (=> b!1403469 (= lt!618378 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10637 0))(
  ( (MissingZero!10637 (index!44924 (_ BitVec 32))) (Found!10637 (index!44925 (_ BitVec 32))) (Intermediate!10637 (undefined!11449 Bool) (index!44926 (_ BitVec 32)) (x!126539 (_ BitVec 32))) (Undefined!10637) (MissingVacant!10637 (index!44927 (_ BitVec 32))) )
))
(declare-fun lt!618379 () SeekEntryResult!10637)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95903 (_ BitVec 32)) SeekEntryResult!10637)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403469 (= lt!618379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46298 a!2901) j!112) mask!2840) (select (arr!46298 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!942089 () Bool)

(assert (=> start!120576 (=> (not res!942089) (not e!794681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120576 (= res!942089 (validMask!0 mask!2840))))

(assert (=> start!120576 e!794681))

(assert (=> start!120576 true))

(declare-fun array_inv!35243 (array!95903) Bool)

(assert (=> start!120576 (array_inv!35243 a!2901)))

(declare-fun b!1403470 () Bool)

(declare-fun res!942088 () Bool)

(assert (=> b!1403470 (=> (not res!942088) (not e!794681))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403470 (= res!942088 (validKeyInArray!0 (select (arr!46298 a!2901) i!1037)))))

(declare-fun b!1403471 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95903 (_ BitVec 32)) SeekEntryResult!10637)

(assert (=> b!1403471 (= e!794679 (= (seekEntryOrOpen!0 (select (arr!46298 a!2901) j!112) a!2901 mask!2840) (Found!10637 j!112)))))

(declare-fun b!1403472 () Bool)

(declare-fun res!942092 () Bool)

(assert (=> b!1403472 (=> (not res!942092) (not e!794681))))

(assert (=> b!1403472 (= res!942092 (and (= (size!46849 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46849 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46849 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403473 () Bool)

(declare-fun res!942093 () Bool)

(assert (=> b!1403473 (=> (not res!942093) (not e!794681))))

(declare-datatypes ((List!32997 0))(
  ( (Nil!32994) (Cons!32993 (h!34241 (_ BitVec 64)) (t!47698 List!32997)) )
))
(declare-fun arrayNoDuplicates!0 (array!95903 (_ BitVec 32) List!32997) Bool)

(assert (=> b!1403473 (= res!942093 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32994))))

(assert (= (and start!120576 res!942089) b!1403472))

(assert (= (and b!1403472 res!942092) b!1403470))

(assert (= (and b!1403470 res!942088) b!1403467))

(assert (= (and b!1403467 res!942087) b!1403468))

(assert (= (and b!1403468 res!942091) b!1403473))

(assert (= (and b!1403473 res!942093) b!1403469))

(assert (= (and b!1403469 res!942090) b!1403471))

(declare-fun m!1292209 () Bool)

(assert (=> b!1403469 m!1292209))

(declare-fun m!1292211 () Bool)

(assert (=> b!1403469 m!1292211))

(assert (=> b!1403469 m!1292209))

(declare-fun m!1292213 () Bool)

(assert (=> b!1403469 m!1292213))

(assert (=> b!1403469 m!1292211))

(assert (=> b!1403469 m!1292209))

(declare-fun m!1292215 () Bool)

(assert (=> b!1403469 m!1292215))

(declare-fun m!1292217 () Bool)

(assert (=> b!1403469 m!1292217))

(declare-fun m!1292219 () Bool)

(assert (=> b!1403468 m!1292219))

(declare-fun m!1292221 () Bool)

(assert (=> b!1403470 m!1292221))

(assert (=> b!1403470 m!1292221))

(declare-fun m!1292223 () Bool)

(assert (=> b!1403470 m!1292223))

(declare-fun m!1292225 () Bool)

(assert (=> start!120576 m!1292225))

(declare-fun m!1292227 () Bool)

(assert (=> start!120576 m!1292227))

(assert (=> b!1403467 m!1292209))

(assert (=> b!1403467 m!1292209))

(declare-fun m!1292229 () Bool)

(assert (=> b!1403467 m!1292229))

(declare-fun m!1292231 () Bool)

(assert (=> b!1403473 m!1292231))

(assert (=> b!1403471 m!1292209))

(assert (=> b!1403471 m!1292209))

(declare-fun m!1292233 () Bool)

(assert (=> b!1403471 m!1292233))

(check-sat (not b!1403467) (not b!1403471) (not b!1403468) (not b!1403469) (not start!120576) (not b!1403470) (not b!1403473))
