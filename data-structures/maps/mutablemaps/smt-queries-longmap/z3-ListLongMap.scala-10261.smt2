; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120660 () Bool)

(assert start!120660)

(declare-fun res!942903 () Bool)

(declare-fun e!794999 () Bool)

(assert (=> start!120660 (=> (not res!942903) (not e!794999))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120660 (= res!942903 (validMask!0 mask!2840))))

(assert (=> start!120660 e!794999))

(assert (=> start!120660 true))

(declare-datatypes ((array!95987 0))(
  ( (array!95988 (arr!46340 (Array (_ BitVec 32) (_ BitVec 64))) (size!46891 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95987)

(declare-fun array_inv!35285 (array!95987) Bool)

(assert (=> start!120660 (array_inv!35285 a!2901)))

(declare-fun b!1404281 () Bool)

(assert (=> b!1404281 (= e!794999 false)))

(declare-datatypes ((SeekEntryResult!10673 0))(
  ( (MissingZero!10673 (index!45068 (_ BitVec 32))) (Found!10673 (index!45069 (_ BitVec 32))) (Intermediate!10673 (undefined!11485 Bool) (index!45070 (_ BitVec 32)) (x!126687 (_ BitVec 32))) (Undefined!10673) (MissingVacant!10673 (index!45071 (_ BitVec 32))) )
))
(declare-fun lt!618571 () SeekEntryResult!10673)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95987 (_ BitVec 32)) SeekEntryResult!10673)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404281 (= lt!618571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46340 a!2901) j!112) mask!2840) (select (arr!46340 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404282 () Bool)

(declare-fun res!942906 () Bool)

(assert (=> b!1404282 (=> (not res!942906) (not e!794999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95987 (_ BitVec 32)) Bool)

(assert (=> b!1404282 (= res!942906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404283 () Bool)

(declare-fun res!942904 () Bool)

(assert (=> b!1404283 (=> (not res!942904) (not e!794999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404283 (= res!942904 (validKeyInArray!0 (select (arr!46340 a!2901) j!112)))))

(declare-fun b!1404284 () Bool)

(declare-fun res!942901 () Bool)

(assert (=> b!1404284 (=> (not res!942901) (not e!794999))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404284 (= res!942901 (validKeyInArray!0 (select (arr!46340 a!2901) i!1037)))))

(declare-fun b!1404285 () Bool)

(declare-fun res!942902 () Bool)

(assert (=> b!1404285 (=> (not res!942902) (not e!794999))))

(declare-datatypes ((List!33039 0))(
  ( (Nil!33036) (Cons!33035 (h!34283 (_ BitVec 64)) (t!47740 List!33039)) )
))
(declare-fun arrayNoDuplicates!0 (array!95987 (_ BitVec 32) List!33039) Bool)

(assert (=> b!1404285 (= res!942902 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33036))))

(declare-fun b!1404286 () Bool)

(declare-fun res!942905 () Bool)

(assert (=> b!1404286 (=> (not res!942905) (not e!794999))))

(assert (=> b!1404286 (= res!942905 (and (= (size!46891 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46891 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46891 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120660 res!942903) b!1404286))

(assert (= (and b!1404286 res!942905) b!1404284))

(assert (= (and b!1404284 res!942901) b!1404283))

(assert (= (and b!1404283 res!942904) b!1404282))

(assert (= (and b!1404282 res!942906) b!1404285))

(assert (= (and b!1404285 res!942902) b!1404281))

(declare-fun m!1293169 () Bool)

(assert (=> b!1404283 m!1293169))

(assert (=> b!1404283 m!1293169))

(declare-fun m!1293171 () Bool)

(assert (=> b!1404283 m!1293171))

(declare-fun m!1293173 () Bool)

(assert (=> b!1404282 m!1293173))

(declare-fun m!1293175 () Bool)

(assert (=> b!1404284 m!1293175))

(assert (=> b!1404284 m!1293175))

(declare-fun m!1293177 () Bool)

(assert (=> b!1404284 m!1293177))

(assert (=> b!1404281 m!1293169))

(assert (=> b!1404281 m!1293169))

(declare-fun m!1293179 () Bool)

(assert (=> b!1404281 m!1293179))

(assert (=> b!1404281 m!1293179))

(assert (=> b!1404281 m!1293169))

(declare-fun m!1293181 () Bool)

(assert (=> b!1404281 m!1293181))

(declare-fun m!1293183 () Bool)

(assert (=> b!1404285 m!1293183))

(declare-fun m!1293185 () Bool)

(assert (=> start!120660 m!1293185))

(declare-fun m!1293187 () Bool)

(assert (=> start!120660 m!1293187))

(check-sat (not b!1404281) (not start!120660) (not b!1404284) (not b!1404285) (not b!1404283) (not b!1404282))
(check-sat)
