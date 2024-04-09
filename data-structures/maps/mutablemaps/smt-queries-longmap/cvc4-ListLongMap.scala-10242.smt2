; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120548 () Bool)

(assert start!120548)

(declare-fun b!1403136 () Bool)

(declare-fun res!941763 () Bool)

(declare-fun e!794519 () Bool)

(assert (=> b!1403136 (=> (not res!941763) (not e!794519))))

(declare-datatypes ((array!95875 0))(
  ( (array!95876 (arr!46284 (Array (_ BitVec 32) (_ BitVec 64))) (size!46835 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95875)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403136 (= res!941763 (validKeyInArray!0 (select (arr!46284 a!2901) i!1037)))))

(declare-fun b!1403137 () Bool)

(declare-fun res!941756 () Bool)

(assert (=> b!1403137 (=> (not res!941756) (not e!794519))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95875 (_ BitVec 32)) Bool)

(assert (=> b!1403137 (= res!941756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403138 () Bool)

(declare-fun e!794516 () Bool)

(assert (=> b!1403138 (= e!794519 (not e!794516))))

(declare-fun res!941760 () Bool)

(assert (=> b!1403138 (=> res!941760 e!794516)))

(declare-datatypes ((SeekEntryResult!10623 0))(
  ( (MissingZero!10623 (index!44868 (_ BitVec 32))) (Found!10623 (index!44869 (_ BitVec 32))) (Intermediate!10623 (undefined!11435 Bool) (index!44870 (_ BitVec 32)) (x!126485 (_ BitVec 32))) (Undefined!10623) (MissingVacant!10623 (index!44871 (_ BitVec 32))) )
))
(declare-fun lt!618257 () SeekEntryResult!10623)

(assert (=> b!1403138 (= res!941760 (or (not (is-Intermediate!10623 lt!618257)) (undefined!11435 lt!618257)))))

(declare-fun e!794517 () Bool)

(assert (=> b!1403138 e!794517))

(declare-fun res!941758 () Bool)

(assert (=> b!1403138 (=> (not res!941758) (not e!794517))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403138 (= res!941758 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47200 0))(
  ( (Unit!47201) )
))
(declare-fun lt!618258 () Unit!47200)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95875 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47200)

(assert (=> b!1403138 (= lt!618258 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95875 (_ BitVec 32)) SeekEntryResult!10623)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403138 (= lt!618257 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46284 a!2901) j!112) mask!2840) (select (arr!46284 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403139 () Bool)

(assert (=> b!1403139 (= e!794516 true)))

(declare-fun lt!618259 () SeekEntryResult!10623)

(assert (=> b!1403139 (= lt!618259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46284 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46284 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95876 (store (arr!46284 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46835 a!2901)) mask!2840))))

(declare-fun b!1403140 () Bool)

(declare-fun res!941761 () Bool)

(assert (=> b!1403140 (=> (not res!941761) (not e!794519))))

(assert (=> b!1403140 (= res!941761 (validKeyInArray!0 (select (arr!46284 a!2901) j!112)))))

(declare-fun b!1403141 () Bool)

(declare-fun res!941759 () Bool)

(assert (=> b!1403141 (=> (not res!941759) (not e!794519))))

(assert (=> b!1403141 (= res!941759 (and (= (size!46835 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46835 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46835 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!941762 () Bool)

(assert (=> start!120548 (=> (not res!941762) (not e!794519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120548 (= res!941762 (validMask!0 mask!2840))))

(assert (=> start!120548 e!794519))

(assert (=> start!120548 true))

(declare-fun array_inv!35229 (array!95875) Bool)

(assert (=> start!120548 (array_inv!35229 a!2901)))

(declare-fun b!1403142 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95875 (_ BitVec 32)) SeekEntryResult!10623)

(assert (=> b!1403142 (= e!794517 (= (seekEntryOrOpen!0 (select (arr!46284 a!2901) j!112) a!2901 mask!2840) (Found!10623 j!112)))))

(declare-fun b!1403143 () Bool)

(declare-fun res!941757 () Bool)

(assert (=> b!1403143 (=> (not res!941757) (not e!794519))))

(declare-datatypes ((List!32983 0))(
  ( (Nil!32980) (Cons!32979 (h!34227 (_ BitVec 64)) (t!47684 List!32983)) )
))
(declare-fun arrayNoDuplicates!0 (array!95875 (_ BitVec 32) List!32983) Bool)

(assert (=> b!1403143 (= res!941757 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32980))))

(assert (= (and start!120548 res!941762) b!1403141))

(assert (= (and b!1403141 res!941759) b!1403136))

(assert (= (and b!1403136 res!941763) b!1403140))

(assert (= (and b!1403140 res!941761) b!1403137))

(assert (= (and b!1403137 res!941756) b!1403143))

(assert (= (and b!1403143 res!941757) b!1403138))

(assert (= (and b!1403138 res!941758) b!1403142))

(assert (= (and b!1403138 (not res!941760)) b!1403139))

(declare-fun m!1291741 () Bool)

(assert (=> b!1403138 m!1291741))

(declare-fun m!1291743 () Bool)

(assert (=> b!1403138 m!1291743))

(assert (=> b!1403138 m!1291741))

(declare-fun m!1291745 () Bool)

(assert (=> b!1403138 m!1291745))

(assert (=> b!1403138 m!1291743))

(assert (=> b!1403138 m!1291741))

(declare-fun m!1291747 () Bool)

(assert (=> b!1403138 m!1291747))

(declare-fun m!1291749 () Bool)

(assert (=> b!1403138 m!1291749))

(declare-fun m!1291751 () Bool)

(assert (=> b!1403137 m!1291751))

(declare-fun m!1291753 () Bool)

(assert (=> b!1403143 m!1291753))

(declare-fun m!1291755 () Bool)

(assert (=> start!120548 m!1291755))

(declare-fun m!1291757 () Bool)

(assert (=> start!120548 m!1291757))

(declare-fun m!1291759 () Bool)

(assert (=> b!1403139 m!1291759))

(declare-fun m!1291761 () Bool)

(assert (=> b!1403139 m!1291761))

(assert (=> b!1403139 m!1291761))

(declare-fun m!1291763 () Bool)

(assert (=> b!1403139 m!1291763))

(assert (=> b!1403139 m!1291763))

(assert (=> b!1403139 m!1291761))

(declare-fun m!1291765 () Bool)

(assert (=> b!1403139 m!1291765))

(declare-fun m!1291767 () Bool)

(assert (=> b!1403136 m!1291767))

(assert (=> b!1403136 m!1291767))

(declare-fun m!1291769 () Bool)

(assert (=> b!1403136 m!1291769))

(assert (=> b!1403142 m!1291741))

(assert (=> b!1403142 m!1291741))

(declare-fun m!1291771 () Bool)

(assert (=> b!1403142 m!1291771))

(assert (=> b!1403140 m!1291741))

(assert (=> b!1403140 m!1291741))

(declare-fun m!1291773 () Bool)

(assert (=> b!1403140 m!1291773))

(push 1)

(assert (not start!120548))

(assert (not b!1403136))

(assert (not b!1403143))

(assert (not b!1403139))

(assert (not b!1403142))

(assert (not b!1403138))

(assert (not b!1403140))

(assert (not b!1403137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

