; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120462 () Bool)

(assert start!120462)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!793859 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1401885 () Bool)

(declare-datatypes ((array!95789 0))(
  ( (array!95790 (arr!46241 (Array (_ BitVec 32) (_ BitVec 64))) (size!46792 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95789)

(declare-datatypes ((SeekEntryResult!10580 0))(
  ( (MissingZero!10580 (index!44696 (_ BitVec 32))) (Found!10580 (index!44697 (_ BitVec 32))) (Intermediate!10580 (undefined!11392 Bool) (index!44698 (_ BitVec 32)) (x!126330 (_ BitVec 32))) (Undefined!10580) (MissingVacant!10580 (index!44699 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95789 (_ BitVec 32)) SeekEntryResult!10580)

(assert (=> b!1401885 (= e!793859 (= (seekEntryOrOpen!0 (select (arr!46241 a!2901) j!112) a!2901 mask!2840) (Found!10580 j!112)))))

(declare-fun b!1401886 () Bool)

(declare-fun e!793857 () Bool)

(declare-fun e!793856 () Bool)

(assert (=> b!1401886 (= e!793857 e!793856)))

(declare-fun res!940512 () Bool)

(assert (=> b!1401886 (=> res!940512 e!793856)))

(declare-fun lt!617263 () SeekEntryResult!10580)

(declare-fun lt!617259 () SeekEntryResult!10580)

(get-info :version)

(assert (=> b!1401886 (= res!940512 (or (= lt!617263 lt!617259) (not ((_ is Intermediate!10580) lt!617259))))))

(declare-fun lt!617258 () array!95789)

(declare-fun lt!617257 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95789 (_ BitVec 32)) SeekEntryResult!10580)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401886 (= lt!617259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617257 mask!2840) lt!617257 lt!617258 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401886 (= lt!617257 (select (store (arr!46241 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401886 (= lt!617258 (array!95790 (store (arr!46241 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46792 a!2901)))))

(declare-fun b!1401887 () Bool)

(declare-fun res!940510 () Bool)

(declare-fun e!793854 () Bool)

(assert (=> b!1401887 (=> (not res!940510) (not e!793854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401887 (= res!940510 (validKeyInArray!0 (select (arr!46241 a!2901) i!1037)))))

(declare-fun b!1401888 () Bool)

(declare-fun e!793855 () Bool)

(assert (=> b!1401888 (= e!793855 true)))

(declare-fun lt!617262 () (_ BitVec 32))

(declare-fun lt!617260 () SeekEntryResult!10580)

(assert (=> b!1401888 (= lt!617260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617262 lt!617257 lt!617258 mask!2840))))

(declare-fun b!1401890 () Bool)

(declare-fun res!940507 () Bool)

(assert (=> b!1401890 (=> (not res!940507) (not e!793854))))

(declare-datatypes ((List!32940 0))(
  ( (Nil!32937) (Cons!32936 (h!34184 (_ BitVec 64)) (t!47641 List!32940)) )
))
(declare-fun arrayNoDuplicates!0 (array!95789 (_ BitVec 32) List!32940) Bool)

(assert (=> b!1401890 (= res!940507 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32937))))

(declare-fun b!1401891 () Bool)

(declare-fun res!940511 () Bool)

(assert (=> b!1401891 (=> (not res!940511) (not e!793854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95789 (_ BitVec 32)) Bool)

(assert (=> b!1401891 (= res!940511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401892 () Bool)

(declare-fun res!940505 () Bool)

(assert (=> b!1401892 (=> (not res!940505) (not e!793854))))

(assert (=> b!1401892 (= res!940505 (validKeyInArray!0 (select (arr!46241 a!2901) j!112)))))

(declare-fun res!940506 () Bool)

(assert (=> start!120462 (=> (not res!940506) (not e!793854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120462 (= res!940506 (validMask!0 mask!2840))))

(assert (=> start!120462 e!793854))

(assert (=> start!120462 true))

(declare-fun array_inv!35186 (array!95789) Bool)

(assert (=> start!120462 (array_inv!35186 a!2901)))

(declare-fun b!1401889 () Bool)

(assert (=> b!1401889 (= e!793854 (not e!793857))))

(declare-fun res!940515 () Bool)

(assert (=> b!1401889 (=> res!940515 e!793857)))

(assert (=> b!1401889 (= res!940515 (or (not ((_ is Intermediate!10580) lt!617263)) (undefined!11392 lt!617263)))))

(assert (=> b!1401889 e!793859))

(declare-fun res!940509 () Bool)

(assert (=> b!1401889 (=> (not res!940509) (not e!793859))))

(assert (=> b!1401889 (= res!940509 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47114 0))(
  ( (Unit!47115) )
))
(declare-fun lt!617256 () Unit!47114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47114)

(assert (=> b!1401889 (= lt!617256 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401889 (= lt!617263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617262 (select (arr!46241 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401889 (= lt!617262 (toIndex!0 (select (arr!46241 a!2901) j!112) mask!2840))))

(declare-fun b!1401893 () Bool)

(declare-fun e!793858 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95789 (_ BitVec 32)) SeekEntryResult!10580)

(assert (=> b!1401893 (= e!793858 (= (seekEntryOrOpen!0 lt!617257 lt!617258 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126330 lt!617259) (index!44698 lt!617259) (index!44698 lt!617259) (select (arr!46241 a!2901) j!112) lt!617258 mask!2840)))))

(declare-fun b!1401894 () Bool)

(assert (=> b!1401894 (= e!793856 e!793855)))

(declare-fun res!940513 () Bool)

(assert (=> b!1401894 (=> res!940513 e!793855)))

(assert (=> b!1401894 (= res!940513 (or (bvslt (x!126330 lt!617263) #b00000000000000000000000000000000) (bvsgt (x!126330 lt!617263) #b01111111111111111111111111111110) (bvslt (x!126330 lt!617259) #b00000000000000000000000000000000) (bvsgt (x!126330 lt!617259) #b01111111111111111111111111111110) (bvslt lt!617262 #b00000000000000000000000000000000) (bvsge lt!617262 (size!46792 a!2901)) (bvslt (index!44698 lt!617263) #b00000000000000000000000000000000) (bvsge (index!44698 lt!617263) (size!46792 a!2901)) (bvslt (index!44698 lt!617259) #b00000000000000000000000000000000) (bvsge (index!44698 lt!617259) (size!46792 a!2901)) (not (= lt!617263 (Intermediate!10580 false (index!44698 lt!617263) (x!126330 lt!617263)))) (not (= lt!617259 (Intermediate!10580 false (index!44698 lt!617259) (x!126330 lt!617259))))))))

(assert (=> b!1401894 e!793858))

(declare-fun res!940508 () Bool)

(assert (=> b!1401894 (=> (not res!940508) (not e!793858))))

(assert (=> b!1401894 (= res!940508 (and (not (undefined!11392 lt!617259)) (= (index!44698 lt!617259) i!1037) (bvslt (x!126330 lt!617259) (x!126330 lt!617263)) (= (select (store (arr!46241 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44698 lt!617259)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617261 () Unit!47114)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47114)

(assert (=> b!1401894 (= lt!617261 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617262 (x!126330 lt!617263) (index!44698 lt!617263) (x!126330 lt!617259) (index!44698 lt!617259) (undefined!11392 lt!617259) mask!2840))))

(declare-fun b!1401895 () Bool)

(declare-fun res!940514 () Bool)

(assert (=> b!1401895 (=> (not res!940514) (not e!793854))))

(assert (=> b!1401895 (= res!940514 (and (= (size!46792 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46792 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46792 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120462 res!940506) b!1401895))

(assert (= (and b!1401895 res!940514) b!1401887))

(assert (= (and b!1401887 res!940510) b!1401892))

(assert (= (and b!1401892 res!940505) b!1401891))

(assert (= (and b!1401891 res!940511) b!1401890))

(assert (= (and b!1401890 res!940507) b!1401889))

(assert (= (and b!1401889 res!940509) b!1401885))

(assert (= (and b!1401889 (not res!940515)) b!1401886))

(assert (= (and b!1401886 (not res!940512)) b!1401894))

(assert (= (and b!1401894 res!940508) b!1401893))

(assert (= (and b!1401894 (not res!940513)) b!1401888))

(declare-fun m!1289905 () Bool)

(assert (=> start!120462 m!1289905))

(declare-fun m!1289907 () Bool)

(assert (=> start!120462 m!1289907))

(declare-fun m!1289909 () Bool)

(assert (=> b!1401885 m!1289909))

(assert (=> b!1401885 m!1289909))

(declare-fun m!1289911 () Bool)

(assert (=> b!1401885 m!1289911))

(declare-fun m!1289913 () Bool)

(assert (=> b!1401893 m!1289913))

(assert (=> b!1401893 m!1289909))

(assert (=> b!1401893 m!1289909))

(declare-fun m!1289915 () Bool)

(assert (=> b!1401893 m!1289915))

(declare-fun m!1289917 () Bool)

(assert (=> b!1401894 m!1289917))

(declare-fun m!1289919 () Bool)

(assert (=> b!1401894 m!1289919))

(declare-fun m!1289921 () Bool)

(assert (=> b!1401894 m!1289921))

(declare-fun m!1289923 () Bool)

(assert (=> b!1401891 m!1289923))

(assert (=> b!1401889 m!1289909))

(declare-fun m!1289925 () Bool)

(assert (=> b!1401889 m!1289925))

(assert (=> b!1401889 m!1289909))

(declare-fun m!1289927 () Bool)

(assert (=> b!1401889 m!1289927))

(declare-fun m!1289929 () Bool)

(assert (=> b!1401889 m!1289929))

(assert (=> b!1401889 m!1289909))

(declare-fun m!1289931 () Bool)

(assert (=> b!1401889 m!1289931))

(declare-fun m!1289933 () Bool)

(assert (=> b!1401887 m!1289933))

(assert (=> b!1401887 m!1289933))

(declare-fun m!1289935 () Bool)

(assert (=> b!1401887 m!1289935))

(declare-fun m!1289937 () Bool)

(assert (=> b!1401890 m!1289937))

(declare-fun m!1289939 () Bool)

(assert (=> b!1401888 m!1289939))

(assert (=> b!1401892 m!1289909))

(assert (=> b!1401892 m!1289909))

(declare-fun m!1289941 () Bool)

(assert (=> b!1401892 m!1289941))

(declare-fun m!1289943 () Bool)

(assert (=> b!1401886 m!1289943))

(assert (=> b!1401886 m!1289943))

(declare-fun m!1289945 () Bool)

(assert (=> b!1401886 m!1289945))

(assert (=> b!1401886 m!1289917))

(declare-fun m!1289947 () Bool)

(assert (=> b!1401886 m!1289947))

(check-sat (not b!1401890) (not b!1401889) (not b!1401894) (not b!1401886) (not b!1401892) (not b!1401891) (not start!120462) (not b!1401893) (not b!1401887) (not b!1401888) (not b!1401885))
(check-sat)
