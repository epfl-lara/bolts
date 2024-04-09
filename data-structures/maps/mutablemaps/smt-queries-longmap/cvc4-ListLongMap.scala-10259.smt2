; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120650 () Bool)

(assert start!120650)

(declare-fun b!1404191 () Bool)

(declare-fun e!794968 () Bool)

(declare-datatypes ((array!95977 0))(
  ( (array!95978 (arr!46335 (Array (_ BitVec 32) (_ BitVec 64))) (size!46886 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95977)

(assert (=> b!1404191 (= e!794968 (bvsgt #b00000000000000000000000000000000 (size!46886 a!2901)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10668 0))(
  ( (MissingZero!10668 (index!45048 (_ BitVec 32))) (Found!10668 (index!45049 (_ BitVec 32))) (Intermediate!10668 (undefined!11480 Bool) (index!45050 (_ BitVec 32)) (x!126666 (_ BitVec 32))) (Undefined!10668) (MissingVacant!10668 (index!45051 (_ BitVec 32))) )
))
(declare-fun lt!618556 () SeekEntryResult!10668)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95977 (_ BitVec 32)) SeekEntryResult!10668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404191 (= lt!618556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46335 a!2901) j!112) mask!2840) (select (arr!46335 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404192 () Bool)

(declare-fun res!942812 () Bool)

(assert (=> b!1404192 (=> (not res!942812) (not e!794968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95977 (_ BitVec 32)) Bool)

(assert (=> b!1404192 (= res!942812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404193 () Bool)

(declare-fun res!942815 () Bool)

(assert (=> b!1404193 (=> (not res!942815) (not e!794968))))

(declare-datatypes ((List!33034 0))(
  ( (Nil!33031) (Cons!33030 (h!34278 (_ BitVec 64)) (t!47735 List!33034)) )
))
(declare-fun arrayNoDuplicates!0 (array!95977 (_ BitVec 32) List!33034) Bool)

(assert (=> b!1404193 (= res!942815 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33031))))

(declare-fun b!1404194 () Bool)

(declare-fun res!942811 () Bool)

(assert (=> b!1404194 (=> (not res!942811) (not e!794968))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404194 (= res!942811 (validKeyInArray!0 (select (arr!46335 a!2901) i!1037)))))

(declare-fun res!942814 () Bool)

(assert (=> start!120650 (=> (not res!942814) (not e!794968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120650 (= res!942814 (validMask!0 mask!2840))))

(assert (=> start!120650 e!794968))

(assert (=> start!120650 true))

(declare-fun array_inv!35280 (array!95977) Bool)

(assert (=> start!120650 (array_inv!35280 a!2901)))

(declare-fun b!1404195 () Bool)

(declare-fun res!942816 () Bool)

(assert (=> b!1404195 (=> (not res!942816) (not e!794968))))

(assert (=> b!1404195 (= res!942816 (and (= (size!46886 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46886 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46886 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404196 () Bool)

(declare-fun res!942813 () Bool)

(assert (=> b!1404196 (=> (not res!942813) (not e!794968))))

(assert (=> b!1404196 (= res!942813 (validKeyInArray!0 (select (arr!46335 a!2901) j!112)))))

(assert (= (and start!120650 res!942814) b!1404195))

(assert (= (and b!1404195 res!942816) b!1404194))

(assert (= (and b!1404194 res!942811) b!1404196))

(assert (= (and b!1404196 res!942813) b!1404192))

(assert (= (and b!1404192 res!942812) b!1404193))

(assert (= (and b!1404193 res!942815) b!1404191))

(declare-fun m!1293069 () Bool)

(assert (=> start!120650 m!1293069))

(declare-fun m!1293071 () Bool)

(assert (=> start!120650 m!1293071))

(declare-fun m!1293073 () Bool)

(assert (=> b!1404196 m!1293073))

(assert (=> b!1404196 m!1293073))

(declare-fun m!1293075 () Bool)

(assert (=> b!1404196 m!1293075))

(declare-fun m!1293077 () Bool)

(assert (=> b!1404194 m!1293077))

(assert (=> b!1404194 m!1293077))

(declare-fun m!1293079 () Bool)

(assert (=> b!1404194 m!1293079))

(assert (=> b!1404191 m!1293073))

(assert (=> b!1404191 m!1293073))

(declare-fun m!1293081 () Bool)

(assert (=> b!1404191 m!1293081))

(assert (=> b!1404191 m!1293081))

(assert (=> b!1404191 m!1293073))

(declare-fun m!1293083 () Bool)

(assert (=> b!1404191 m!1293083))

(declare-fun m!1293085 () Bool)

(assert (=> b!1404192 m!1293085))

(declare-fun m!1293087 () Bool)

(assert (=> b!1404193 m!1293087))

(push 1)

(assert (not b!1404196))

(assert (not b!1404192))

(assert (not b!1404193))

(assert (not b!1404191))

(assert (not b!1404194))

(assert (not start!120650))

(check-sat)

