; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119200 () Bool)

(assert start!119200)

(declare-fun b!1389970 () Bool)

(declare-fun res!930241 () Bool)

(declare-fun e!787238 () Bool)

(assert (=> b!1389970 (=> (not res!930241) (not e!787238))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95055 0))(
  ( (array!95056 (arr!45889 (Array (_ BitVec 32) (_ BitVec 64))) (size!46440 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95055)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389970 (= res!930241 (and (= (size!46440 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46440 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46440 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!787237 () Bool)

(declare-fun b!1389971 () Bool)

(declare-datatypes ((SeekEntryResult!10228 0))(
  ( (MissingZero!10228 (index!43282 (_ BitVec 32))) (Found!10228 (index!43283 (_ BitVec 32))) (Intermediate!10228 (undefined!11040 Bool) (index!43284 (_ BitVec 32)) (x!124973 (_ BitVec 32))) (Undefined!10228) (MissingVacant!10228 (index!43285 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95055 (_ BitVec 32)) SeekEntryResult!10228)

(assert (=> b!1389971 (= e!787237 (= (seekEntryOrOpen!0 (select (arr!45889 a!2901) j!112) a!2901 mask!2840) (Found!10228 j!112)))))

(declare-fun b!1389972 () Bool)

(declare-fun res!930243 () Bool)

(assert (=> b!1389972 (=> (not res!930243) (not e!787238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389972 (= res!930243 (validKeyInArray!0 (select (arr!45889 a!2901) i!1037)))))

(declare-fun b!1389973 () Bool)

(assert (=> b!1389973 (= e!787238 (not true))))

(assert (=> b!1389973 e!787237))

(declare-fun res!930245 () Bool)

(assert (=> b!1389973 (=> (not res!930245) (not e!787237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95055 (_ BitVec 32)) Bool)

(assert (=> b!1389973 (= res!930245 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46410 0))(
  ( (Unit!46411) )
))
(declare-fun lt!610653 () Unit!46410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46410)

(assert (=> b!1389973 (= lt!610653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610654 () SeekEntryResult!10228)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95055 (_ BitVec 32)) SeekEntryResult!10228)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389973 (= lt!610654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45889 a!2901) j!112) mask!2840) (select (arr!45889 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!930242 () Bool)

(assert (=> start!119200 (=> (not res!930242) (not e!787238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119200 (= res!930242 (validMask!0 mask!2840))))

(assert (=> start!119200 e!787238))

(assert (=> start!119200 true))

(declare-fun array_inv!34834 (array!95055) Bool)

(assert (=> start!119200 (array_inv!34834 a!2901)))

(declare-fun b!1389974 () Bool)

(declare-fun res!930244 () Bool)

(assert (=> b!1389974 (=> (not res!930244) (not e!787238))))

(assert (=> b!1389974 (= res!930244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389975 () Bool)

(declare-fun res!930240 () Bool)

(assert (=> b!1389975 (=> (not res!930240) (not e!787238))))

(assert (=> b!1389975 (= res!930240 (validKeyInArray!0 (select (arr!45889 a!2901) j!112)))))

(declare-fun b!1389976 () Bool)

(declare-fun res!930246 () Bool)

(assert (=> b!1389976 (=> (not res!930246) (not e!787238))))

(declare-datatypes ((List!32588 0))(
  ( (Nil!32585) (Cons!32584 (h!33802 (_ BitVec 64)) (t!47289 List!32588)) )
))
(declare-fun arrayNoDuplicates!0 (array!95055 (_ BitVec 32) List!32588) Bool)

(assert (=> b!1389976 (= res!930246 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32585))))

(assert (= (and start!119200 res!930242) b!1389970))

(assert (= (and b!1389970 res!930241) b!1389972))

(assert (= (and b!1389972 res!930243) b!1389975))

(assert (= (and b!1389975 res!930240) b!1389974))

(assert (= (and b!1389974 res!930244) b!1389976))

(assert (= (and b!1389976 res!930246) b!1389973))

(assert (= (and b!1389973 res!930245) b!1389971))

(declare-fun m!1275785 () Bool)

(assert (=> b!1389975 m!1275785))

(assert (=> b!1389975 m!1275785))

(declare-fun m!1275787 () Bool)

(assert (=> b!1389975 m!1275787))

(declare-fun m!1275789 () Bool)

(assert (=> start!119200 m!1275789))

(declare-fun m!1275791 () Bool)

(assert (=> start!119200 m!1275791))

(declare-fun m!1275793 () Bool)

(assert (=> b!1389972 m!1275793))

(assert (=> b!1389972 m!1275793))

(declare-fun m!1275795 () Bool)

(assert (=> b!1389972 m!1275795))

(assert (=> b!1389971 m!1275785))

(assert (=> b!1389971 m!1275785))

(declare-fun m!1275797 () Bool)

(assert (=> b!1389971 m!1275797))

(declare-fun m!1275799 () Bool)

(assert (=> b!1389976 m!1275799))

(assert (=> b!1389973 m!1275785))

(declare-fun m!1275801 () Bool)

(assert (=> b!1389973 m!1275801))

(assert (=> b!1389973 m!1275785))

(declare-fun m!1275803 () Bool)

(assert (=> b!1389973 m!1275803))

(assert (=> b!1389973 m!1275801))

(assert (=> b!1389973 m!1275785))

(declare-fun m!1275805 () Bool)

(assert (=> b!1389973 m!1275805))

(declare-fun m!1275807 () Bool)

(assert (=> b!1389973 m!1275807))

(declare-fun m!1275809 () Bool)

(assert (=> b!1389974 m!1275809))

(push 1)

(assert (not b!1389976))

(assert (not b!1389972))

(assert (not b!1389974))

(assert (not b!1389973))

(assert (not b!1389975))

(assert (not start!119200))

(assert (not b!1389971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

