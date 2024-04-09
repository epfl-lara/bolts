; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120646 () Bool)

(assert start!120646)

(declare-fun b!1404155 () Bool)

(declare-fun res!942778 () Bool)

(declare-fun e!794956 () Bool)

(assert (=> b!1404155 (=> (not res!942778) (not e!794956))))

(declare-datatypes ((array!95973 0))(
  ( (array!95974 (arr!46333 (Array (_ BitVec 32) (_ BitVec 64))) (size!46884 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95973)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95973 (_ BitVec 32)) Bool)

(assert (=> b!1404155 (= res!942778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404156 () Bool)

(declare-fun res!942776 () Bool)

(assert (=> b!1404156 (=> (not res!942776) (not e!794956))))

(declare-datatypes ((List!33032 0))(
  ( (Nil!33029) (Cons!33028 (h!34276 (_ BitVec 64)) (t!47733 List!33032)) )
))
(declare-fun arrayNoDuplicates!0 (array!95973 (_ BitVec 32) List!33032) Bool)

(assert (=> b!1404156 (= res!942776 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33029))))

(declare-fun b!1404157 () Bool)

(declare-fun res!942777 () Bool)

(assert (=> b!1404157 (=> (not res!942777) (not e!794956))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404157 (= res!942777 (and (= (size!46884 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46884 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46884 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942779 () Bool)

(assert (=> start!120646 (=> (not res!942779) (not e!794956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120646 (= res!942779 (validMask!0 mask!2840))))

(assert (=> start!120646 e!794956))

(assert (=> start!120646 true))

(declare-fun array_inv!35278 (array!95973) Bool)

(assert (=> start!120646 (array_inv!35278 a!2901)))

(declare-fun b!1404158 () Bool)

(declare-fun res!942775 () Bool)

(assert (=> b!1404158 (=> (not res!942775) (not e!794956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404158 (= res!942775 (validKeyInArray!0 (select (arr!46333 a!2901) i!1037)))))

(declare-fun b!1404159 () Bool)

(declare-fun res!942780 () Bool)

(assert (=> b!1404159 (=> (not res!942780) (not e!794956))))

(assert (=> b!1404159 (= res!942780 (validKeyInArray!0 (select (arr!46333 a!2901) j!112)))))

(declare-fun b!1404160 () Bool)

(assert (=> b!1404160 (= e!794956 (bvsgt #b00000000000000000000000000000000 (size!46884 a!2901)))))

(declare-datatypes ((SeekEntryResult!10666 0))(
  ( (MissingZero!10666 (index!45040 (_ BitVec 32))) (Found!10666 (index!45041 (_ BitVec 32))) (Intermediate!10666 (undefined!11478 Bool) (index!45042 (_ BitVec 32)) (x!126664 (_ BitVec 32))) (Undefined!10666) (MissingVacant!10666 (index!45043 (_ BitVec 32))) )
))
(declare-fun lt!618550 () SeekEntryResult!10666)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95973 (_ BitVec 32)) SeekEntryResult!10666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404160 (= lt!618550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46333 a!2901) j!112) mask!2840) (select (arr!46333 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120646 res!942779) b!1404157))

(assert (= (and b!1404157 res!942777) b!1404158))

(assert (= (and b!1404158 res!942775) b!1404159))

(assert (= (and b!1404159 res!942780) b!1404155))

(assert (= (and b!1404155 res!942778) b!1404156))

(assert (= (and b!1404156 res!942776) b!1404160))

(declare-fun m!1293029 () Bool)

(assert (=> b!1404155 m!1293029))

(declare-fun m!1293031 () Bool)

(assert (=> start!120646 m!1293031))

(declare-fun m!1293033 () Bool)

(assert (=> start!120646 m!1293033))

(declare-fun m!1293035 () Bool)

(assert (=> b!1404156 m!1293035))

(declare-fun m!1293037 () Bool)

(assert (=> b!1404160 m!1293037))

(assert (=> b!1404160 m!1293037))

(declare-fun m!1293039 () Bool)

(assert (=> b!1404160 m!1293039))

(assert (=> b!1404160 m!1293039))

(assert (=> b!1404160 m!1293037))

(declare-fun m!1293041 () Bool)

(assert (=> b!1404160 m!1293041))

(assert (=> b!1404159 m!1293037))

(assert (=> b!1404159 m!1293037))

(declare-fun m!1293043 () Bool)

(assert (=> b!1404159 m!1293043))

(declare-fun m!1293045 () Bool)

(assert (=> b!1404158 m!1293045))

(assert (=> b!1404158 m!1293045))

(declare-fun m!1293047 () Bool)

(assert (=> b!1404158 m!1293047))

(push 1)

(assert (not start!120646))

(assert (not b!1404158))

