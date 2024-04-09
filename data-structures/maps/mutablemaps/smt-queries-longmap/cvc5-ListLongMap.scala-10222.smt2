; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120424 () Bool)

(assert start!120424)

(declare-fun res!939886 () Bool)

(declare-fun e!793460 () Bool)

(assert (=> start!120424 (=> (not res!939886) (not e!793460))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120424 (= res!939886 (validMask!0 mask!2840))))

(assert (=> start!120424 e!793460))

(assert (=> start!120424 true))

(declare-datatypes ((array!95751 0))(
  ( (array!95752 (arr!46222 (Array (_ BitVec 32) (_ BitVec 64))) (size!46773 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95751)

(declare-fun array_inv!35167 (array!95751) Bool)

(assert (=> start!120424 (array_inv!35167 a!2901)))

(declare-datatypes ((SeekEntryResult!10561 0))(
  ( (MissingZero!10561 (index!44620 (_ BitVec 32))) (Found!10561 (index!44621 (_ BitVec 32))) (Intermediate!10561 (undefined!11373 Bool) (index!44622 (_ BitVec 32)) (x!126263 (_ BitVec 32))) (Undefined!10561) (MissingVacant!10561 (index!44623 (_ BitVec 32))) )
))
(declare-fun lt!616804 () SeekEntryResult!10561)

(declare-fun b!1401258 () Bool)

(declare-fun lt!616800 () array!95751)

(declare-fun e!793455 () Bool)

(declare-fun lt!616803 () (_ BitVec 64))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95751 (_ BitVec 32)) SeekEntryResult!10561)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95751 (_ BitVec 32)) SeekEntryResult!10561)

(assert (=> b!1401258 (= e!793455 (= (seekEntryOrOpen!0 lt!616803 lt!616800 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126263 lt!616804) (index!44622 lt!616804) (index!44622 lt!616804) (select (arr!46222 a!2901) j!112) lt!616800 mask!2840)))))

(declare-fun b!1401259 () Bool)

(declare-fun e!793456 () Bool)

(declare-fun e!793457 () Bool)

(assert (=> b!1401259 (= e!793456 e!793457)))

(declare-fun res!939885 () Bool)

(assert (=> b!1401259 (=> res!939885 e!793457)))

(declare-fun lt!616805 () SeekEntryResult!10561)

(assert (=> b!1401259 (= res!939885 (or (= lt!616805 lt!616804) (not (is-Intermediate!10561 lt!616804))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95751 (_ BitVec 32)) SeekEntryResult!10561)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401259 (= lt!616804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616803 mask!2840) lt!616803 lt!616800 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401259 (= lt!616803 (select (store (arr!46222 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401259 (= lt!616800 (array!95752 (store (arr!46222 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46773 a!2901)))))

(declare-fun b!1401260 () Bool)

(declare-fun e!793454 () Bool)

(assert (=> b!1401260 (= e!793454 (= (seekEntryOrOpen!0 (select (arr!46222 a!2901) j!112) a!2901 mask!2840) (Found!10561 j!112)))))

(declare-fun b!1401261 () Bool)

(declare-fun res!939879 () Bool)

(assert (=> b!1401261 (=> (not res!939879) (not e!793460))))

(declare-datatypes ((List!32921 0))(
  ( (Nil!32918) (Cons!32917 (h!34165 (_ BitVec 64)) (t!47622 List!32921)) )
))
(declare-fun arrayNoDuplicates!0 (array!95751 (_ BitVec 32) List!32921) Bool)

(assert (=> b!1401261 (= res!939879 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32918))))

(declare-fun b!1401262 () Bool)

(declare-fun res!939887 () Bool)

(assert (=> b!1401262 (=> (not res!939887) (not e!793460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95751 (_ BitVec 32)) Bool)

(assert (=> b!1401262 (= res!939887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401263 () Bool)

(declare-fun res!939888 () Bool)

(assert (=> b!1401263 (=> (not res!939888) (not e!793460))))

(assert (=> b!1401263 (= res!939888 (and (= (size!46773 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46773 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46773 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401264 () Bool)

(declare-fun res!939882 () Bool)

(assert (=> b!1401264 (=> (not res!939882) (not e!793460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401264 (= res!939882 (validKeyInArray!0 (select (arr!46222 a!2901) i!1037)))))

(declare-fun b!1401265 () Bool)

(declare-fun res!939880 () Bool)

(assert (=> b!1401265 (=> (not res!939880) (not e!793460))))

(assert (=> b!1401265 (= res!939880 (validKeyInArray!0 (select (arr!46222 a!2901) j!112)))))

(declare-fun b!1401266 () Bool)

(declare-fun e!793459 () Bool)

(assert (=> b!1401266 (= e!793457 e!793459)))

(declare-fun res!939883 () Bool)

(assert (=> b!1401266 (=> res!939883 e!793459)))

(declare-fun lt!616806 () (_ BitVec 32))

(assert (=> b!1401266 (= res!939883 (or (bvslt (x!126263 lt!616805) #b00000000000000000000000000000000) (bvsgt (x!126263 lt!616805) #b01111111111111111111111111111110) (bvslt (x!126263 lt!616804) #b00000000000000000000000000000000) (bvsgt (x!126263 lt!616804) #b01111111111111111111111111111110) (bvslt lt!616806 #b00000000000000000000000000000000) (bvsge lt!616806 (size!46773 a!2901)) (bvslt (index!44622 lt!616805) #b00000000000000000000000000000000) (bvsge (index!44622 lt!616805) (size!46773 a!2901)) (bvslt (index!44622 lt!616804) #b00000000000000000000000000000000) (bvsge (index!44622 lt!616804) (size!46773 a!2901)) (not (= lt!616805 (Intermediate!10561 false (index!44622 lt!616805) (x!126263 lt!616805)))) (not (= lt!616804 (Intermediate!10561 false (index!44622 lt!616804) (x!126263 lt!616804))))))))

(assert (=> b!1401266 e!793455))

(declare-fun res!939881 () Bool)

(assert (=> b!1401266 (=> (not res!939881) (not e!793455))))

(assert (=> b!1401266 (= res!939881 (and (not (undefined!11373 lt!616804)) (= (index!44622 lt!616804) i!1037) (bvslt (x!126263 lt!616804) (x!126263 lt!616805)) (= (select (store (arr!46222 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44622 lt!616804)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47076 0))(
  ( (Unit!47077) )
))
(declare-fun lt!616802 () Unit!47076)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47076)

(assert (=> b!1401266 (= lt!616802 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616806 (x!126263 lt!616805) (index!44622 lt!616805) (x!126263 lt!616804) (index!44622 lt!616804) (undefined!11373 lt!616804) mask!2840))))

(declare-fun b!1401267 () Bool)

(assert (=> b!1401267 (= e!793460 (not e!793456))))

(declare-fun res!939878 () Bool)

(assert (=> b!1401267 (=> res!939878 e!793456)))

(assert (=> b!1401267 (= res!939878 (or (not (is-Intermediate!10561 lt!616805)) (undefined!11373 lt!616805)))))

(assert (=> b!1401267 e!793454))

(declare-fun res!939884 () Bool)

(assert (=> b!1401267 (=> (not res!939884) (not e!793454))))

(assert (=> b!1401267 (= res!939884 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616807 () Unit!47076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47076)

(assert (=> b!1401267 (= lt!616807 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401267 (= lt!616805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616806 (select (arr!46222 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401267 (= lt!616806 (toIndex!0 (select (arr!46222 a!2901) j!112) mask!2840))))

(declare-fun b!1401268 () Bool)

(assert (=> b!1401268 (= e!793459 true)))

(declare-fun lt!616801 () SeekEntryResult!10561)

(assert (=> b!1401268 (= lt!616801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616806 lt!616803 lt!616800 mask!2840))))

(assert (= (and start!120424 res!939886) b!1401263))

(assert (= (and b!1401263 res!939888) b!1401264))

(assert (= (and b!1401264 res!939882) b!1401265))

(assert (= (and b!1401265 res!939880) b!1401262))

(assert (= (and b!1401262 res!939887) b!1401261))

(assert (= (and b!1401261 res!939879) b!1401267))

(assert (= (and b!1401267 res!939884) b!1401260))

(assert (= (and b!1401267 (not res!939878)) b!1401259))

(assert (= (and b!1401259 (not res!939885)) b!1401266))

(assert (= (and b!1401266 res!939881) b!1401258))

(assert (= (and b!1401266 (not res!939883)) b!1401268))

(declare-fun m!1289069 () Bool)

(assert (=> b!1401265 m!1289069))

(assert (=> b!1401265 m!1289069))

(declare-fun m!1289071 () Bool)

(assert (=> b!1401265 m!1289071))

(declare-fun m!1289073 () Bool)

(assert (=> b!1401268 m!1289073))

(declare-fun m!1289075 () Bool)

(assert (=> b!1401259 m!1289075))

(assert (=> b!1401259 m!1289075))

(declare-fun m!1289077 () Bool)

(assert (=> b!1401259 m!1289077))

(declare-fun m!1289079 () Bool)

(assert (=> b!1401259 m!1289079))

(declare-fun m!1289081 () Bool)

(assert (=> b!1401259 m!1289081))

(declare-fun m!1289083 () Bool)

(assert (=> b!1401258 m!1289083))

(assert (=> b!1401258 m!1289069))

(assert (=> b!1401258 m!1289069))

(declare-fun m!1289085 () Bool)

(assert (=> b!1401258 m!1289085))

(declare-fun m!1289087 () Bool)

(assert (=> start!120424 m!1289087))

(declare-fun m!1289089 () Bool)

(assert (=> start!120424 m!1289089))

(declare-fun m!1289091 () Bool)

(assert (=> b!1401262 m!1289091))

(assert (=> b!1401266 m!1289079))

(declare-fun m!1289093 () Bool)

(assert (=> b!1401266 m!1289093))

(declare-fun m!1289095 () Bool)

(assert (=> b!1401266 m!1289095))

(assert (=> b!1401267 m!1289069))

(declare-fun m!1289097 () Bool)

(assert (=> b!1401267 m!1289097))

(assert (=> b!1401267 m!1289069))

(declare-fun m!1289099 () Bool)

(assert (=> b!1401267 m!1289099))

(assert (=> b!1401267 m!1289069))

(declare-fun m!1289101 () Bool)

(assert (=> b!1401267 m!1289101))

(declare-fun m!1289103 () Bool)

(assert (=> b!1401267 m!1289103))

(declare-fun m!1289105 () Bool)

(assert (=> b!1401261 m!1289105))

(assert (=> b!1401260 m!1289069))

(assert (=> b!1401260 m!1289069))

(declare-fun m!1289107 () Bool)

(assert (=> b!1401260 m!1289107))

(declare-fun m!1289109 () Bool)

(assert (=> b!1401264 m!1289109))

(assert (=> b!1401264 m!1289109))

(declare-fun m!1289111 () Bool)

(assert (=> b!1401264 m!1289111))

(push 1)

