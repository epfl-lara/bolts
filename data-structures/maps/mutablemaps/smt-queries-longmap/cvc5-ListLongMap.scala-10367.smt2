; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122056 () Bool)

(assert start!122056)

(declare-fun res!952301 () Bool)

(declare-fun e!801536 () Bool)

(assert (=> start!122056 (=> (not res!952301) (not e!801536))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122056 (= res!952301 (validMask!0 mask!2840))))

(assert (=> start!122056 e!801536))

(assert (=> start!122056 true))

(declare-datatypes ((array!96660 0))(
  ( (array!96661 (arr!46657 (Array (_ BitVec 32) (_ BitVec 64))) (size!47208 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96660)

(declare-fun array_inv!35602 (array!96660) Bool)

(assert (=> start!122056 (array_inv!35602 a!2901)))

(declare-fun b!1416145 () Bool)

(declare-fun res!952300 () Bool)

(assert (=> b!1416145 (=> (not res!952300) (not e!801536))))

(declare-datatypes ((List!33356 0))(
  ( (Nil!33353) (Cons!33352 (h!34639 (_ BitVec 64)) (t!48057 List!33356)) )
))
(declare-fun arrayNoDuplicates!0 (array!96660 (_ BitVec 32) List!33356) Bool)

(assert (=> b!1416145 (= res!952300 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33353))))

(declare-fun b!1416146 () Bool)

(declare-fun res!952297 () Bool)

(declare-fun e!801538 () Bool)

(assert (=> b!1416146 (=> res!952297 e!801538)))

(declare-datatypes ((SeekEntryResult!10990 0))(
  ( (MissingZero!10990 (index!46351 (_ BitVec 32))) (Found!10990 (index!46352 (_ BitVec 32))) (Intermediate!10990 (undefined!11802 Bool) (index!46353 (_ BitVec 32)) (x!127960 (_ BitVec 32))) (Undefined!10990) (MissingVacant!10990 (index!46354 (_ BitVec 32))) )
))
(declare-fun lt!624723 () SeekEntryResult!10990)

(declare-fun lt!624725 () (_ BitVec 32))

(declare-fun lt!624729 () (_ BitVec 64))

(declare-fun lt!624728 () array!96660)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96660 (_ BitVec 32)) SeekEntryResult!10990)

(assert (=> b!1416146 (= res!952297 (not (= lt!624723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624725 lt!624729 lt!624728 mask!2840))))))

(declare-fun b!1416147 () Bool)

(declare-fun res!952296 () Bool)

(assert (=> b!1416147 (=> (not res!952296) (not e!801536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96660 (_ BitVec 32)) Bool)

(assert (=> b!1416147 (= res!952296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416148 () Bool)

(declare-fun res!952298 () Bool)

(assert (=> b!1416148 (=> (not res!952298) (not e!801536))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416148 (= res!952298 (validKeyInArray!0 (select (arr!46657 a!2901) j!112)))))

(declare-fun b!1416149 () Bool)

(declare-fun e!801535 () Bool)

(assert (=> b!1416149 (= e!801535 e!801538)))

(declare-fun res!952303 () Bool)

(assert (=> b!1416149 (=> res!952303 e!801538)))

(declare-fun lt!624726 () SeekEntryResult!10990)

(assert (=> b!1416149 (= res!952303 (or (bvslt (x!127960 lt!624726) #b00000000000000000000000000000000) (bvsgt (x!127960 lt!624726) #b01111111111111111111111111111110) (bvslt (x!127960 lt!624723) #b00000000000000000000000000000000) (bvsgt (x!127960 lt!624723) #b01111111111111111111111111111110) (bvslt lt!624725 #b00000000000000000000000000000000) (bvsge lt!624725 (size!47208 a!2901)) (bvslt (index!46353 lt!624726) #b00000000000000000000000000000000) (bvsge (index!46353 lt!624726) (size!47208 a!2901)) (bvslt (index!46353 lt!624723) #b00000000000000000000000000000000) (bvsge (index!46353 lt!624723) (size!47208 a!2901)) (not (= lt!624726 (Intermediate!10990 false (index!46353 lt!624726) (x!127960 lt!624726)))) (not (= lt!624723 (Intermediate!10990 false (index!46353 lt!624723) (x!127960 lt!624723))))))))

(declare-fun lt!624727 () SeekEntryResult!10990)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96660 (_ BitVec 32)) SeekEntryResult!10990)

(assert (=> b!1416149 (= lt!624727 (seekKeyOrZeroReturnVacant!0 (x!127960 lt!624723) (index!46353 lt!624723) (index!46353 lt!624723) (select (arr!46657 a!2901) j!112) lt!624728 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96660 (_ BitVec 32)) SeekEntryResult!10990)

(assert (=> b!1416149 (= lt!624727 (seekEntryOrOpen!0 lt!624729 lt!624728 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416149 (and (not (undefined!11802 lt!624723)) (= (index!46353 lt!624723) i!1037) (bvslt (x!127960 lt!624723) (x!127960 lt!624726)) (= (select (store (arr!46657 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46353 lt!624723)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47904 0))(
  ( (Unit!47905) )
))
(declare-fun lt!624730 () Unit!47904)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47904)

(assert (=> b!1416149 (= lt!624730 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624725 (x!127960 lt!624726) (index!46353 lt!624726) (x!127960 lt!624723) (index!46353 lt!624723) (undefined!11802 lt!624723) mask!2840))))

(declare-fun b!1416150 () Bool)

(declare-fun e!801537 () Bool)

(assert (=> b!1416150 (= e!801537 e!801535)))

(declare-fun res!952304 () Bool)

(assert (=> b!1416150 (=> res!952304 e!801535)))

(assert (=> b!1416150 (= res!952304 (or (= lt!624726 lt!624723) (not (is-Intermediate!10990 lt!624723))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416150 (= lt!624723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624729 mask!2840) lt!624729 lt!624728 mask!2840))))

(assert (=> b!1416150 (= lt!624729 (select (store (arr!46657 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416150 (= lt!624728 (array!96661 (store (arr!46657 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47208 a!2901)))))

(declare-fun b!1416151 () Bool)

(assert (=> b!1416151 (= e!801538 true)))

(declare-fun lt!624724 () SeekEntryResult!10990)

(assert (=> b!1416151 (= lt!624724 lt!624727)))

(declare-fun lt!624721 () Unit!47904)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47904)

(assert (=> b!1416151 (= lt!624721 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624725 (x!127960 lt!624726) (index!46353 lt!624726) (x!127960 lt!624723) (index!46353 lt!624723) mask!2840))))

(declare-fun b!1416152 () Bool)

(assert (=> b!1416152 (= e!801536 (not e!801537))))

(declare-fun res!952299 () Bool)

(assert (=> b!1416152 (=> res!952299 e!801537)))

(assert (=> b!1416152 (= res!952299 (or (not (is-Intermediate!10990 lt!624726)) (undefined!11802 lt!624726)))))

(assert (=> b!1416152 (= lt!624724 (Found!10990 j!112))))

(assert (=> b!1416152 (= lt!624724 (seekEntryOrOpen!0 (select (arr!46657 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416152 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624722 () Unit!47904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47904)

(assert (=> b!1416152 (= lt!624722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416152 (= lt!624726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624725 (select (arr!46657 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416152 (= lt!624725 (toIndex!0 (select (arr!46657 a!2901) j!112) mask!2840))))

(declare-fun b!1416153 () Bool)

(declare-fun res!952305 () Bool)

(assert (=> b!1416153 (=> (not res!952305) (not e!801536))))

(assert (=> b!1416153 (= res!952305 (validKeyInArray!0 (select (arr!46657 a!2901) i!1037)))))

(declare-fun b!1416154 () Bool)

(declare-fun res!952302 () Bool)

(assert (=> b!1416154 (=> (not res!952302) (not e!801536))))

(assert (=> b!1416154 (= res!952302 (and (= (size!47208 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47208 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47208 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122056 res!952301) b!1416154))

(assert (= (and b!1416154 res!952302) b!1416153))

(assert (= (and b!1416153 res!952305) b!1416148))

(assert (= (and b!1416148 res!952298) b!1416147))

(assert (= (and b!1416147 res!952296) b!1416145))

(assert (= (and b!1416145 res!952300) b!1416152))

(assert (= (and b!1416152 (not res!952299)) b!1416150))

(assert (= (and b!1416150 (not res!952304)) b!1416149))

(assert (= (and b!1416149 (not res!952303)) b!1416146))

(assert (= (and b!1416146 (not res!952297)) b!1416151))

(declare-fun m!1306817 () Bool)

(assert (=> b!1416147 m!1306817))

(declare-fun m!1306819 () Bool)

(assert (=> b!1416151 m!1306819))

(declare-fun m!1306821 () Bool)

(assert (=> b!1416148 m!1306821))

(assert (=> b!1416148 m!1306821))

(declare-fun m!1306823 () Bool)

(assert (=> b!1416148 m!1306823))

(declare-fun m!1306825 () Bool)

(assert (=> b!1416146 m!1306825))

(declare-fun m!1306827 () Bool)

(assert (=> b!1416149 m!1306827))

(assert (=> b!1416149 m!1306821))

(declare-fun m!1306829 () Bool)

(assert (=> b!1416149 m!1306829))

(assert (=> b!1416149 m!1306821))

(declare-fun m!1306831 () Bool)

(assert (=> b!1416149 m!1306831))

(declare-fun m!1306833 () Bool)

(assert (=> b!1416149 m!1306833))

(declare-fun m!1306835 () Bool)

(assert (=> b!1416149 m!1306835))

(declare-fun m!1306837 () Bool)

(assert (=> b!1416145 m!1306837))

(declare-fun m!1306839 () Bool)

(assert (=> start!122056 m!1306839))

(declare-fun m!1306841 () Bool)

(assert (=> start!122056 m!1306841))

(assert (=> b!1416152 m!1306821))

(declare-fun m!1306843 () Bool)

(assert (=> b!1416152 m!1306843))

(assert (=> b!1416152 m!1306821))

(declare-fun m!1306845 () Bool)

(assert (=> b!1416152 m!1306845))

(assert (=> b!1416152 m!1306821))

(declare-fun m!1306847 () Bool)

(assert (=> b!1416152 m!1306847))

(assert (=> b!1416152 m!1306821))

(declare-fun m!1306849 () Bool)

(assert (=> b!1416152 m!1306849))

(declare-fun m!1306851 () Bool)

(assert (=> b!1416152 m!1306851))

(declare-fun m!1306853 () Bool)

(assert (=> b!1416150 m!1306853))

(assert (=> b!1416150 m!1306853))

(declare-fun m!1306855 () Bool)

(assert (=> b!1416150 m!1306855))

(assert (=> b!1416150 m!1306833))

(declare-fun m!1306857 () Bool)

(assert (=> b!1416150 m!1306857))

(declare-fun m!1306859 () Bool)

(assert (=> b!1416153 m!1306859))

(assert (=> b!1416153 m!1306859))

(declare-fun m!1306861 () Bool)

(assert (=> b!1416153 m!1306861))

(push 1)

