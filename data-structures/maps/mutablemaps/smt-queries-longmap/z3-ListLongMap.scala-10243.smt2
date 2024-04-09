; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120552 () Bool)

(assert start!120552)

(declare-fun b!1403184 () Bool)

(declare-fun res!941805 () Bool)

(declare-fun e!794543 () Bool)

(assert (=> b!1403184 (=> (not res!941805) (not e!794543))))

(declare-datatypes ((array!95879 0))(
  ( (array!95880 (arr!46286 (Array (_ BitVec 32) (_ BitVec 64))) (size!46837 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95879)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403184 (= res!941805 (validKeyInArray!0 (select (arr!46286 a!2901) j!112)))))

(declare-fun b!1403185 () Bool)

(declare-fun res!941807 () Bool)

(assert (=> b!1403185 (=> (not res!941807) (not e!794543))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403185 (= res!941807 (and (= (size!46837 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46837 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46837 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403186 () Bool)

(declare-fun res!941811 () Bool)

(assert (=> b!1403186 (=> (not res!941811) (not e!794543))))

(declare-datatypes ((List!32985 0))(
  ( (Nil!32982) (Cons!32981 (h!34229 (_ BitVec 64)) (t!47686 List!32985)) )
))
(declare-fun arrayNoDuplicates!0 (array!95879 (_ BitVec 32) List!32985) Bool)

(assert (=> b!1403186 (= res!941811 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32982))))

(declare-fun b!1403187 () Bool)

(declare-fun res!941809 () Bool)

(assert (=> b!1403187 (=> (not res!941809) (not e!794543))))

(assert (=> b!1403187 (= res!941809 (validKeyInArray!0 (select (arr!46286 a!2901) i!1037)))))

(declare-fun res!941806 () Bool)

(assert (=> start!120552 (=> (not res!941806) (not e!794543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120552 (= res!941806 (validMask!0 mask!2840))))

(assert (=> start!120552 e!794543))

(assert (=> start!120552 true))

(declare-fun array_inv!35231 (array!95879) Bool)

(assert (=> start!120552 (array_inv!35231 a!2901)))

(declare-fun b!1403188 () Bool)

(declare-fun res!941804 () Bool)

(assert (=> b!1403188 (=> (not res!941804) (not e!794543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95879 (_ BitVec 32)) Bool)

(assert (=> b!1403188 (= res!941804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403189 () Bool)

(declare-fun e!794542 () Bool)

(assert (=> b!1403189 (= e!794543 (not e!794542))))

(declare-fun res!941810 () Bool)

(assert (=> b!1403189 (=> res!941810 e!794542)))

(declare-datatypes ((SeekEntryResult!10625 0))(
  ( (MissingZero!10625 (index!44876 (_ BitVec 32))) (Found!10625 (index!44877 (_ BitVec 32))) (Intermediate!10625 (undefined!11437 Bool) (index!44878 (_ BitVec 32)) (x!126495 (_ BitVec 32))) (Undefined!10625) (MissingVacant!10625 (index!44879 (_ BitVec 32))) )
))
(declare-fun lt!618275 () SeekEntryResult!10625)

(get-info :version)

(assert (=> b!1403189 (= res!941810 (or (not ((_ is Intermediate!10625) lt!618275)) (undefined!11437 lt!618275)))))

(declare-fun e!794541 () Bool)

(assert (=> b!1403189 e!794541))

(declare-fun res!941808 () Bool)

(assert (=> b!1403189 (=> (not res!941808) (not e!794541))))

(assert (=> b!1403189 (= res!941808 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47204 0))(
  ( (Unit!47205) )
))
(declare-fun lt!618276 () Unit!47204)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47204)

(assert (=> b!1403189 (= lt!618276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95879 (_ BitVec 32)) SeekEntryResult!10625)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403189 (= lt!618275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46286 a!2901) j!112) mask!2840) (select (arr!46286 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403190 () Bool)

(assert (=> b!1403190 (= e!794542 true)))

(declare-fun lt!618277 () SeekEntryResult!10625)

(assert (=> b!1403190 (= lt!618277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46286 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46286 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95880 (store (arr!46286 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46837 a!2901)) mask!2840))))

(declare-fun b!1403191 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95879 (_ BitVec 32)) SeekEntryResult!10625)

(assert (=> b!1403191 (= e!794541 (= (seekEntryOrOpen!0 (select (arr!46286 a!2901) j!112) a!2901 mask!2840) (Found!10625 j!112)))))

(assert (= (and start!120552 res!941806) b!1403185))

(assert (= (and b!1403185 res!941807) b!1403187))

(assert (= (and b!1403187 res!941809) b!1403184))

(assert (= (and b!1403184 res!941805) b!1403188))

(assert (= (and b!1403188 res!941804) b!1403186))

(assert (= (and b!1403186 res!941811) b!1403189))

(assert (= (and b!1403189 res!941808) b!1403191))

(assert (= (and b!1403189 (not res!941810)) b!1403190))

(declare-fun m!1291809 () Bool)

(assert (=> start!120552 m!1291809))

(declare-fun m!1291811 () Bool)

(assert (=> start!120552 m!1291811))

(declare-fun m!1291813 () Bool)

(assert (=> b!1403184 m!1291813))

(assert (=> b!1403184 m!1291813))

(declare-fun m!1291815 () Bool)

(assert (=> b!1403184 m!1291815))

(declare-fun m!1291817 () Bool)

(assert (=> b!1403186 m!1291817))

(assert (=> b!1403189 m!1291813))

(declare-fun m!1291819 () Bool)

(assert (=> b!1403189 m!1291819))

(assert (=> b!1403189 m!1291813))

(declare-fun m!1291821 () Bool)

(assert (=> b!1403189 m!1291821))

(assert (=> b!1403189 m!1291819))

(assert (=> b!1403189 m!1291813))

(declare-fun m!1291823 () Bool)

(assert (=> b!1403189 m!1291823))

(declare-fun m!1291825 () Bool)

(assert (=> b!1403189 m!1291825))

(declare-fun m!1291827 () Bool)

(assert (=> b!1403187 m!1291827))

(assert (=> b!1403187 m!1291827))

(declare-fun m!1291829 () Bool)

(assert (=> b!1403187 m!1291829))

(assert (=> b!1403191 m!1291813))

(assert (=> b!1403191 m!1291813))

(declare-fun m!1291831 () Bool)

(assert (=> b!1403191 m!1291831))

(declare-fun m!1291833 () Bool)

(assert (=> b!1403190 m!1291833))

(declare-fun m!1291835 () Bool)

(assert (=> b!1403190 m!1291835))

(assert (=> b!1403190 m!1291835))

(declare-fun m!1291837 () Bool)

(assert (=> b!1403190 m!1291837))

(assert (=> b!1403190 m!1291837))

(assert (=> b!1403190 m!1291835))

(declare-fun m!1291839 () Bool)

(assert (=> b!1403190 m!1291839))

(declare-fun m!1291841 () Bool)

(assert (=> b!1403188 m!1291841))

(check-sat (not b!1403184) (not b!1403186) (not start!120552) (not b!1403191) (not b!1403187) (not b!1403189) (not b!1403190) (not b!1403188))
