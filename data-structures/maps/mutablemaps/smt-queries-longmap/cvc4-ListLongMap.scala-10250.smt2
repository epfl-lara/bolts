; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120596 () Bool)

(assert start!120596)

(declare-fun b!1403678 () Bool)

(declare-fun res!942300 () Bool)

(declare-fun e!794771 () Bool)

(assert (=> b!1403678 (=> (not res!942300) (not e!794771))))

(declare-datatypes ((array!95923 0))(
  ( (array!95924 (arr!46308 (Array (_ BitVec 32) (_ BitVec 64))) (size!46859 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95923)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403678 (= res!942300 (validKeyInArray!0 (select (arr!46308 a!2901) i!1037)))))

(declare-fun b!1403679 () Bool)

(declare-fun res!942298 () Bool)

(assert (=> b!1403679 (=> (not res!942298) (not e!794771))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95923 (_ BitVec 32)) Bool)

(assert (=> b!1403679 (= res!942298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403680 () Bool)

(declare-fun res!942302 () Bool)

(assert (=> b!1403680 (=> (not res!942302) (not e!794771))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403680 (= res!942302 (validKeyInArray!0 (select (arr!46308 a!2901) j!112)))))

(declare-fun b!1403681 () Bool)

(declare-fun res!942299 () Bool)

(assert (=> b!1403681 (=> (not res!942299) (not e!794771))))

(assert (=> b!1403681 (= res!942299 (and (= (size!46859 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46859 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46859 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403682 () Bool)

(assert (=> b!1403682 (= e!794771 (not true))))

(declare-fun e!794769 () Bool)

(assert (=> b!1403682 e!794769))

(declare-fun res!942297 () Bool)

(assert (=> b!1403682 (=> (not res!942297) (not e!794769))))

(assert (=> b!1403682 (= res!942297 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47248 0))(
  ( (Unit!47249) )
))
(declare-fun lt!618438 () Unit!47248)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95923 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47248)

(assert (=> b!1403682 (= lt!618438 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10647 0))(
  ( (MissingZero!10647 (index!44964 (_ BitVec 32))) (Found!10647 (index!44965 (_ BitVec 32))) (Intermediate!10647 (undefined!11459 Bool) (index!44966 (_ BitVec 32)) (x!126573 (_ BitVec 32))) (Undefined!10647) (MissingVacant!10647 (index!44967 (_ BitVec 32))) )
))
(declare-fun lt!618439 () SeekEntryResult!10647)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95923 (_ BitVec 32)) SeekEntryResult!10647)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403682 (= lt!618439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46308 a!2901) j!112) mask!2840) (select (arr!46308 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403683 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95923 (_ BitVec 32)) SeekEntryResult!10647)

(assert (=> b!1403683 (= e!794769 (= (seekEntryOrOpen!0 (select (arr!46308 a!2901) j!112) a!2901 mask!2840) (Found!10647 j!112)))))

(declare-fun res!942301 () Bool)

(assert (=> start!120596 (=> (not res!942301) (not e!794771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120596 (= res!942301 (validMask!0 mask!2840))))

(assert (=> start!120596 e!794771))

(assert (=> start!120596 true))

(declare-fun array_inv!35253 (array!95923) Bool)

(assert (=> start!120596 (array_inv!35253 a!2901)))

(declare-fun b!1403677 () Bool)

(declare-fun res!942303 () Bool)

(assert (=> b!1403677 (=> (not res!942303) (not e!794771))))

(declare-datatypes ((List!33007 0))(
  ( (Nil!33004) (Cons!33003 (h!34251 (_ BitVec 64)) (t!47708 List!33007)) )
))
(declare-fun arrayNoDuplicates!0 (array!95923 (_ BitVec 32) List!33007) Bool)

(assert (=> b!1403677 (= res!942303 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33004))))

(assert (= (and start!120596 res!942301) b!1403681))

(assert (= (and b!1403681 res!942299) b!1403678))

(assert (= (and b!1403678 res!942300) b!1403680))

(assert (= (and b!1403680 res!942302) b!1403679))

(assert (= (and b!1403679 res!942298) b!1403677))

(assert (= (and b!1403677 res!942303) b!1403682))

(assert (= (and b!1403682 res!942297) b!1403683))

(declare-fun m!1292469 () Bool)

(assert (=> b!1403682 m!1292469))

(declare-fun m!1292471 () Bool)

(assert (=> b!1403682 m!1292471))

(assert (=> b!1403682 m!1292469))

(declare-fun m!1292473 () Bool)

(assert (=> b!1403682 m!1292473))

(assert (=> b!1403682 m!1292471))

(assert (=> b!1403682 m!1292469))

(declare-fun m!1292475 () Bool)

(assert (=> b!1403682 m!1292475))

(declare-fun m!1292477 () Bool)

(assert (=> b!1403682 m!1292477))

(assert (=> b!1403683 m!1292469))

(assert (=> b!1403683 m!1292469))

(declare-fun m!1292479 () Bool)

(assert (=> b!1403683 m!1292479))

(declare-fun m!1292481 () Bool)

(assert (=> b!1403678 m!1292481))

(assert (=> b!1403678 m!1292481))

(declare-fun m!1292483 () Bool)

(assert (=> b!1403678 m!1292483))

(declare-fun m!1292485 () Bool)

(assert (=> b!1403679 m!1292485))

(declare-fun m!1292487 () Bool)

(assert (=> start!120596 m!1292487))

(declare-fun m!1292489 () Bool)

(assert (=> start!120596 m!1292489))

(declare-fun m!1292491 () Bool)

(assert (=> b!1403677 m!1292491))

(assert (=> b!1403680 m!1292469))

(assert (=> b!1403680 m!1292469))

(declare-fun m!1292493 () Bool)

(assert (=> b!1403680 m!1292493))

(push 1)

(assert (not start!120596))

(assert (not b!1403682))

(assert (not b!1403678))

(assert (not b!1403683))

(assert (not b!1403680))

(assert (not b!1403677))

(assert (not b!1403679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

