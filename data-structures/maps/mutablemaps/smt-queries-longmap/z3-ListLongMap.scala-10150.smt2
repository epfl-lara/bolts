; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119706 () Bool)

(assert start!119706)

(declare-fun res!933369 () Bool)

(declare-fun e!789246 () Bool)

(assert (=> start!119706 (=> (not res!933369) (not e!789246))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119706 (= res!933369 (validMask!0 mask!2840))))

(assert (=> start!119706 e!789246))

(assert (=> start!119706 true))

(declare-datatypes ((array!95306 0))(
  ( (array!95307 (arr!46007 (Array (_ BitVec 32) (_ BitVec 64))) (size!46558 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95306)

(declare-fun array_inv!34952 (array!95306) Bool)

(assert (=> start!119706 (array_inv!34952 a!2901)))

(declare-fun b!1393845 () Bool)

(declare-fun e!789245 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10346 0))(
  ( (MissingZero!10346 (index!43754 (_ BitVec 32))) (Found!10346 (index!43755 (_ BitVec 32))) (Intermediate!10346 (undefined!11158 Bool) (index!43756 (_ BitVec 32)) (x!125433 (_ BitVec 32))) (Undefined!10346) (MissingVacant!10346 (index!43757 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95306 (_ BitVec 32)) SeekEntryResult!10346)

(assert (=> b!1393845 (= e!789245 (= (seekEntryOrOpen!0 (select (arr!46007 a!2901) j!112) a!2901 mask!2840) (Found!10346 j!112)))))

(declare-fun b!1393846 () Bool)

(declare-fun e!789247 () Bool)

(assert (=> b!1393846 (= e!789246 (not e!789247))))

(declare-fun res!933362 () Bool)

(assert (=> b!1393846 (=> res!933362 e!789247)))

(declare-fun lt!612113 () SeekEntryResult!10346)

(get-info :version)

(assert (=> b!1393846 (= res!933362 (or (not ((_ is Intermediate!10346) lt!612113)) (undefined!11158 lt!612113)))))

(assert (=> b!1393846 e!789245))

(declare-fun res!933367 () Bool)

(assert (=> b!1393846 (=> (not res!933367) (not e!789245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95306 (_ BitVec 32)) Bool)

(assert (=> b!1393846 (= res!933367 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46646 0))(
  ( (Unit!46647) )
))
(declare-fun lt!612115 () Unit!46646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95306 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46646)

(assert (=> b!1393846 (= lt!612115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95306 (_ BitVec 32)) SeekEntryResult!10346)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393846 (= lt!612113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46007 a!2901) j!112) mask!2840) (select (arr!46007 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393847 () Bool)

(assert (=> b!1393847 (= e!789247 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!612114 () SeekEntryResult!10346)

(assert (=> b!1393847 (= lt!612114 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46007 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46007 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95307 (store (arr!46007 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46558 a!2901)) mask!2840))))

(declare-fun b!1393848 () Bool)

(declare-fun res!933365 () Bool)

(assert (=> b!1393848 (=> (not res!933365) (not e!789246))))

(declare-datatypes ((List!32706 0))(
  ( (Nil!32703) (Cons!32702 (h!33935 (_ BitVec 64)) (t!47407 List!32706)) )
))
(declare-fun arrayNoDuplicates!0 (array!95306 (_ BitVec 32) List!32706) Bool)

(assert (=> b!1393848 (= res!933365 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32703))))

(declare-fun b!1393849 () Bool)

(declare-fun res!933364 () Bool)

(assert (=> b!1393849 (=> (not res!933364) (not e!789246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393849 (= res!933364 (validKeyInArray!0 (select (arr!46007 a!2901) j!112)))))

(declare-fun b!1393850 () Bool)

(declare-fun res!933368 () Bool)

(assert (=> b!1393850 (=> (not res!933368) (not e!789246))))

(assert (=> b!1393850 (= res!933368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393851 () Bool)

(declare-fun res!933366 () Bool)

(assert (=> b!1393851 (=> (not res!933366) (not e!789246))))

(assert (=> b!1393851 (= res!933366 (validKeyInArray!0 (select (arr!46007 a!2901) i!1037)))))

(declare-fun b!1393852 () Bool)

(declare-fun res!933363 () Bool)

(assert (=> b!1393852 (=> (not res!933363) (not e!789246))))

(assert (=> b!1393852 (= res!933363 (and (= (size!46558 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46558 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46558 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119706 res!933369) b!1393852))

(assert (= (and b!1393852 res!933363) b!1393851))

(assert (= (and b!1393851 res!933366) b!1393849))

(assert (= (and b!1393849 res!933364) b!1393850))

(assert (= (and b!1393850 res!933368) b!1393848))

(assert (= (and b!1393848 res!933365) b!1393846))

(assert (= (and b!1393846 res!933367) b!1393845))

(assert (= (and b!1393846 (not res!933362)) b!1393847))

(declare-fun m!1280019 () Bool)

(assert (=> b!1393849 m!1280019))

(assert (=> b!1393849 m!1280019))

(declare-fun m!1280021 () Bool)

(assert (=> b!1393849 m!1280021))

(declare-fun m!1280023 () Bool)

(assert (=> b!1393851 m!1280023))

(assert (=> b!1393851 m!1280023))

(declare-fun m!1280025 () Bool)

(assert (=> b!1393851 m!1280025))

(declare-fun m!1280027 () Bool)

(assert (=> b!1393848 m!1280027))

(declare-fun m!1280029 () Bool)

(assert (=> b!1393847 m!1280029))

(declare-fun m!1280031 () Bool)

(assert (=> b!1393847 m!1280031))

(assert (=> b!1393847 m!1280031))

(declare-fun m!1280033 () Bool)

(assert (=> b!1393847 m!1280033))

(assert (=> b!1393847 m!1280033))

(assert (=> b!1393847 m!1280031))

(declare-fun m!1280035 () Bool)

(assert (=> b!1393847 m!1280035))

(assert (=> b!1393845 m!1280019))

(assert (=> b!1393845 m!1280019))

(declare-fun m!1280037 () Bool)

(assert (=> b!1393845 m!1280037))

(declare-fun m!1280039 () Bool)

(assert (=> b!1393850 m!1280039))

(assert (=> b!1393846 m!1280019))

(declare-fun m!1280041 () Bool)

(assert (=> b!1393846 m!1280041))

(assert (=> b!1393846 m!1280019))

(declare-fun m!1280043 () Bool)

(assert (=> b!1393846 m!1280043))

(assert (=> b!1393846 m!1280041))

(assert (=> b!1393846 m!1280019))

(declare-fun m!1280045 () Bool)

(assert (=> b!1393846 m!1280045))

(declare-fun m!1280047 () Bool)

(assert (=> b!1393846 m!1280047))

(declare-fun m!1280049 () Bool)

(assert (=> start!119706 m!1280049))

(declare-fun m!1280051 () Bool)

(assert (=> start!119706 m!1280051))

(check-sat (not b!1393849) (not b!1393846) (not b!1393850) (not b!1393851) (not start!119706) (not b!1393848) (not b!1393845) (not b!1393847))
