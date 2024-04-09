; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120362 () Bool)

(assert start!120362)

(declare-datatypes ((array!95689 0))(
  ( (array!95690 (arr!46191 (Array (_ BitVec 32) (_ BitVec 64))) (size!46742 (_ BitVec 32))) )
))
(declare-fun lt!616062 () array!95689)

(declare-datatypes ((SeekEntryResult!10530 0))(
  ( (MissingZero!10530 (index!44496 (_ BitVec 32))) (Found!10530 (index!44497 (_ BitVec 32))) (Intermediate!10530 (undefined!11342 Bool) (index!44498 (_ BitVec 32)) (x!126144 (_ BitVec 32))) (Undefined!10530) (MissingVacant!10530 (index!44499 (_ BitVec 32))) )
))
(declare-fun lt!616057 () SeekEntryResult!10530)

(declare-fun e!792808 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1400235 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun a!2901 () array!95689)

(declare-fun lt!616060 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95689 (_ BitVec 32)) SeekEntryResult!10530)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95689 (_ BitVec 32)) SeekEntryResult!10530)

(assert (=> b!1400235 (= e!792808 (= (seekEntryOrOpen!0 lt!616060 lt!616062 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126144 lt!616057) (index!44498 lt!616057) (index!44498 lt!616057) (select (arr!46191 a!2901) j!112) lt!616062 mask!2840)))))

(declare-fun b!1400236 () Bool)

(declare-fun e!792806 () Bool)

(assert (=> b!1400236 (= e!792806 (= (seekEntryOrOpen!0 (select (arr!46191 a!2901) j!112) a!2901 mask!2840) (Found!10530 j!112)))))

(declare-fun b!1400237 () Bool)

(declare-fun e!792809 () Bool)

(declare-fun e!792805 () Bool)

(assert (=> b!1400237 (= e!792809 (not e!792805))))

(declare-fun res!938856 () Bool)

(assert (=> b!1400237 (=> res!938856 e!792805)))

(declare-fun lt!616063 () SeekEntryResult!10530)

(assert (=> b!1400237 (= res!938856 (or (not (is-Intermediate!10530 lt!616063)) (undefined!11342 lt!616063)))))

(assert (=> b!1400237 e!792806))

(declare-fun res!938860 () Bool)

(assert (=> b!1400237 (=> (not res!938860) (not e!792806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95689 (_ BitVec 32)) Bool)

(assert (=> b!1400237 (= res!938860 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47014 0))(
  ( (Unit!47015) )
))
(declare-fun lt!616061 () Unit!47014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47014)

(assert (=> b!1400237 (= lt!616061 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616056 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95689 (_ BitVec 32)) SeekEntryResult!10530)

(assert (=> b!1400237 (= lt!616063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616056 (select (arr!46191 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400237 (= lt!616056 (toIndex!0 (select (arr!46191 a!2901) j!112) mask!2840))))

(declare-fun res!938857 () Bool)

(assert (=> start!120362 (=> (not res!938857) (not e!792809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120362 (= res!938857 (validMask!0 mask!2840))))

(assert (=> start!120362 e!792809))

(assert (=> start!120362 true))

(declare-fun array_inv!35136 (array!95689) Bool)

(assert (=> start!120362 (array_inv!35136 a!2901)))

(declare-fun b!1400238 () Bool)

(declare-fun e!792807 () Bool)

(assert (=> b!1400238 (= e!792807 true)))

(declare-fun lt!616058 () SeekEntryResult!10530)

(assert (=> b!1400238 (= lt!616058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616056 lt!616060 lt!616062 mask!2840))))

(declare-fun b!1400239 () Bool)

(declare-fun res!938862 () Bool)

(assert (=> b!1400239 (=> (not res!938862) (not e!792809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400239 (= res!938862 (validKeyInArray!0 (select (arr!46191 a!2901) j!112)))))

(declare-fun b!1400240 () Bool)

(declare-fun e!792803 () Bool)

(assert (=> b!1400240 (= e!792805 e!792803)))

(declare-fun res!938865 () Bool)

(assert (=> b!1400240 (=> res!938865 e!792803)))

(assert (=> b!1400240 (= res!938865 (or (= lt!616063 lt!616057) (not (is-Intermediate!10530 lt!616057))))))

(assert (=> b!1400240 (= lt!616057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616060 mask!2840) lt!616060 lt!616062 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400240 (= lt!616060 (select (store (arr!46191 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400240 (= lt!616062 (array!95690 (store (arr!46191 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46742 a!2901)))))

(declare-fun b!1400241 () Bool)

(declare-fun res!938855 () Bool)

(assert (=> b!1400241 (=> (not res!938855) (not e!792809))))

(assert (=> b!1400241 (= res!938855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400242 () Bool)

(declare-fun res!938861 () Bool)

(assert (=> b!1400242 (=> (not res!938861) (not e!792809))))

(assert (=> b!1400242 (= res!938861 (validKeyInArray!0 (select (arr!46191 a!2901) i!1037)))))

(declare-fun b!1400243 () Bool)

(declare-fun res!938858 () Bool)

(assert (=> b!1400243 (=> (not res!938858) (not e!792809))))

(declare-datatypes ((List!32890 0))(
  ( (Nil!32887) (Cons!32886 (h!34134 (_ BitVec 64)) (t!47591 List!32890)) )
))
(declare-fun arrayNoDuplicates!0 (array!95689 (_ BitVec 32) List!32890) Bool)

(assert (=> b!1400243 (= res!938858 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32887))))

(declare-fun b!1400244 () Bool)

(assert (=> b!1400244 (= e!792803 e!792807)))

(declare-fun res!938859 () Bool)

(assert (=> b!1400244 (=> res!938859 e!792807)))

(assert (=> b!1400244 (= res!938859 (or (bvslt (x!126144 lt!616063) #b00000000000000000000000000000000) (bvsgt (x!126144 lt!616063) #b01111111111111111111111111111110) (bvslt (x!126144 lt!616057) #b00000000000000000000000000000000) (bvsgt (x!126144 lt!616057) #b01111111111111111111111111111110) (bvslt lt!616056 #b00000000000000000000000000000000) (bvsge lt!616056 (size!46742 a!2901)) (bvslt (index!44498 lt!616063) #b00000000000000000000000000000000) (bvsge (index!44498 lt!616063) (size!46742 a!2901)) (bvslt (index!44498 lt!616057) #b00000000000000000000000000000000) (bvsge (index!44498 lt!616057) (size!46742 a!2901)) (not (= lt!616063 (Intermediate!10530 false (index!44498 lt!616063) (x!126144 lt!616063)))) (not (= lt!616057 (Intermediate!10530 false (index!44498 lt!616057) (x!126144 lt!616057))))))))

(assert (=> b!1400244 e!792808))

(declare-fun res!938864 () Bool)

(assert (=> b!1400244 (=> (not res!938864) (not e!792808))))

(assert (=> b!1400244 (= res!938864 (and (not (undefined!11342 lt!616057)) (= (index!44498 lt!616057) i!1037) (bvslt (x!126144 lt!616057) (x!126144 lt!616063)) (= (select (store (arr!46191 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44498 lt!616057)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616059 () Unit!47014)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47014)

(assert (=> b!1400244 (= lt!616059 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616056 (x!126144 lt!616063) (index!44498 lt!616063) (x!126144 lt!616057) (index!44498 lt!616057) (undefined!11342 lt!616057) mask!2840))))

(declare-fun b!1400245 () Bool)

(declare-fun res!938863 () Bool)

(assert (=> b!1400245 (=> (not res!938863) (not e!792809))))

(assert (=> b!1400245 (= res!938863 (and (= (size!46742 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46742 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46742 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120362 res!938857) b!1400245))

(assert (= (and b!1400245 res!938863) b!1400242))

(assert (= (and b!1400242 res!938861) b!1400239))

(assert (= (and b!1400239 res!938862) b!1400241))

(assert (= (and b!1400241 res!938855) b!1400243))

(assert (= (and b!1400243 res!938858) b!1400237))

(assert (= (and b!1400237 res!938860) b!1400236))

(assert (= (and b!1400237 (not res!938856)) b!1400240))

(assert (= (and b!1400240 (not res!938865)) b!1400244))

(assert (= (and b!1400244 res!938864) b!1400235))

(assert (= (and b!1400244 (not res!938859)) b!1400238))

(declare-fun m!1287705 () Bool)

(assert (=> b!1400244 m!1287705))

(declare-fun m!1287707 () Bool)

(assert (=> b!1400244 m!1287707))

(declare-fun m!1287709 () Bool)

(assert (=> b!1400244 m!1287709))

(declare-fun m!1287711 () Bool)

(assert (=> b!1400236 m!1287711))

(assert (=> b!1400236 m!1287711))

(declare-fun m!1287713 () Bool)

(assert (=> b!1400236 m!1287713))

(declare-fun m!1287715 () Bool)

(assert (=> b!1400243 m!1287715))

(declare-fun m!1287717 () Bool)

(assert (=> b!1400241 m!1287717))

(declare-fun m!1287719 () Bool)

(assert (=> b!1400240 m!1287719))

(assert (=> b!1400240 m!1287719))

(declare-fun m!1287721 () Bool)

(assert (=> b!1400240 m!1287721))

(assert (=> b!1400240 m!1287705))

(declare-fun m!1287723 () Bool)

(assert (=> b!1400240 m!1287723))

(declare-fun m!1287725 () Bool)

(assert (=> start!120362 m!1287725))

(declare-fun m!1287727 () Bool)

(assert (=> start!120362 m!1287727))

(declare-fun m!1287729 () Bool)

(assert (=> b!1400242 m!1287729))

(assert (=> b!1400242 m!1287729))

(declare-fun m!1287731 () Bool)

(assert (=> b!1400242 m!1287731))

(assert (=> b!1400237 m!1287711))

(declare-fun m!1287733 () Bool)

(assert (=> b!1400237 m!1287733))

(assert (=> b!1400237 m!1287711))

(declare-fun m!1287735 () Bool)

(assert (=> b!1400237 m!1287735))

(declare-fun m!1287737 () Bool)

(assert (=> b!1400237 m!1287737))

(assert (=> b!1400237 m!1287711))

(declare-fun m!1287739 () Bool)

(assert (=> b!1400237 m!1287739))

(assert (=> b!1400239 m!1287711))

(assert (=> b!1400239 m!1287711))

(declare-fun m!1287741 () Bool)

(assert (=> b!1400239 m!1287741))

(declare-fun m!1287743 () Bool)

(assert (=> b!1400235 m!1287743))

(assert (=> b!1400235 m!1287711))

(assert (=> b!1400235 m!1287711))

(declare-fun m!1287745 () Bool)

(assert (=> b!1400235 m!1287745))

(declare-fun m!1287747 () Bool)

(assert (=> b!1400238 m!1287747))

(push 1)

