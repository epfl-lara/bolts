; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121150 () Bool)

(assert start!121150)

(declare-fun b!1408055 () Bool)

(declare-fun res!945887 () Bool)

(declare-fun e!796942 () Bool)

(assert (=> b!1408055 (=> (not res!945887) (not e!796942))))

(declare-datatypes ((array!96222 0))(
  ( (array!96223 (arr!46450 (Array (_ BitVec 32) (_ BitVec 64))) (size!47001 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96222)

(declare-datatypes ((List!33149 0))(
  ( (Nil!33146) (Cons!33145 (h!34408 (_ BitVec 64)) (t!47850 List!33149)) )
))
(declare-fun arrayNoDuplicates!0 (array!96222 (_ BitVec 32) List!33149) Bool)

(assert (=> b!1408055 (= res!945887 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33146))))

(declare-fun b!1408056 () Bool)

(declare-fun res!945891 () Bool)

(assert (=> b!1408056 (=> (not res!945891) (not e!796942))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408056 (= res!945891 (and (= (size!47001 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47001 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47001 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!945890 () Bool)

(assert (=> start!121150 (=> (not res!945890) (not e!796942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121150 (= res!945890 (validMask!0 mask!2840))))

(assert (=> start!121150 e!796942))

(assert (=> start!121150 true))

(declare-fun array_inv!35395 (array!96222) Bool)

(assert (=> start!121150 (array_inv!35395 a!2901)))

(declare-fun b!1408057 () Bool)

(declare-fun res!945892 () Bool)

(assert (=> b!1408057 (=> (not res!945892) (not e!796942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96222 (_ BitVec 32)) Bool)

(assert (=> b!1408057 (= res!945892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408058 () Bool)

(declare-fun res!945888 () Bool)

(assert (=> b!1408058 (=> (not res!945888) (not e!796942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408058 (= res!945888 (validKeyInArray!0 (select (arr!46450 a!2901) i!1037)))))

(declare-fun b!1408059 () Bool)

(declare-fun res!945886 () Bool)

(declare-fun e!796940 () Bool)

(assert (=> b!1408059 (=> res!945886 e!796940)))

(declare-fun lt!620088 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10783 0))(
  ( (MissingZero!10783 (index!45508 (_ BitVec 32))) (Found!10783 (index!45509 (_ BitVec 32))) (Intermediate!10783 (undefined!11595 Bool) (index!45510 (_ BitVec 32)) (x!127123 (_ BitVec 32))) (Undefined!10783) (MissingVacant!10783 (index!45511 (_ BitVec 32))) )
))
(declare-fun lt!620087 () SeekEntryResult!10783)

(assert (=> b!1408059 (= res!945886 (or (bvslt (x!127123 lt!620087) #b00000000000000000000000000000000) (bvsgt (x!127123 lt!620087) #b01111111111111111111111111111110) (bvslt lt!620088 #b00000000000000000000000000000000) (bvsge lt!620088 (size!47001 a!2901)) (bvslt (index!45510 lt!620087) #b00000000000000000000000000000000) (bvsge (index!45510 lt!620087) (size!47001 a!2901)) (not (= lt!620087 (Intermediate!10783 false (index!45510 lt!620087) (x!127123 lt!620087))))))))

(declare-fun b!1408060 () Bool)

(declare-fun res!945889 () Bool)

(assert (=> b!1408060 (=> (not res!945889) (not e!796942))))

(assert (=> b!1408060 (= res!945889 (validKeyInArray!0 (select (arr!46450 a!2901) j!112)))))

(declare-fun b!1408061 () Bool)

(declare-fun e!796941 () Bool)

(assert (=> b!1408061 (= e!796942 (not e!796941))))

(declare-fun res!945894 () Bool)

(assert (=> b!1408061 (=> res!945894 e!796941)))

(assert (=> b!1408061 (= res!945894 (or (not (is-Intermediate!10783 lt!620087)) (undefined!11595 lt!620087)))))

(declare-fun lt!620083 () SeekEntryResult!10783)

(assert (=> b!1408061 (= lt!620083 (Found!10783 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96222 (_ BitVec 32)) SeekEntryResult!10783)

(assert (=> b!1408061 (= lt!620083 (seekEntryOrOpen!0 (select (arr!46450 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408061 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47490 0))(
  ( (Unit!47491) )
))
(declare-fun lt!620089 () Unit!47490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96222 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47490)

(assert (=> b!1408061 (= lt!620089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96222 (_ BitVec 32)) SeekEntryResult!10783)

(assert (=> b!1408061 (= lt!620087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620088 (select (arr!46450 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408061 (= lt!620088 (toIndex!0 (select (arr!46450 a!2901) j!112) mask!2840))))

(declare-fun b!1408062 () Bool)

(assert (=> b!1408062 (= e!796941 e!796940)))

(declare-fun res!945893 () Bool)

(assert (=> b!1408062 (=> res!945893 e!796940)))

(declare-fun lt!620085 () (_ BitVec 64))

(declare-fun lt!620084 () array!96222)

(assert (=> b!1408062 (= res!945893 (not (= lt!620087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620085 mask!2840) lt!620085 lt!620084 mask!2840))))))

(assert (=> b!1408062 (= lt!620085 (select (store (arr!46450 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408062 (= lt!620084 (array!96223 (store (arr!46450 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47001 a!2901)))))

(declare-fun b!1408063 () Bool)

(assert (=> b!1408063 (= e!796940 true)))

(assert (=> b!1408063 (= lt!620083 (seekEntryOrOpen!0 lt!620085 lt!620084 mask!2840))))

(declare-fun lt!620086 () Unit!47490)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96222 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47490)

(assert (=> b!1408063 (= lt!620086 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620088 (x!127123 lt!620087) (index!45510 lt!620087) mask!2840))))

(assert (= (and start!121150 res!945890) b!1408056))

(assert (= (and b!1408056 res!945891) b!1408058))

(assert (= (and b!1408058 res!945888) b!1408060))

(assert (= (and b!1408060 res!945889) b!1408057))

(assert (= (and b!1408057 res!945892) b!1408055))

(assert (= (and b!1408055 res!945887) b!1408061))

(assert (= (and b!1408061 (not res!945894)) b!1408062))

(assert (= (and b!1408062 (not res!945893)) b!1408059))

(assert (= (and b!1408059 (not res!945886)) b!1408063))

(declare-fun m!1297289 () Bool)

(assert (=> b!1408063 m!1297289))

(declare-fun m!1297291 () Bool)

(assert (=> b!1408063 m!1297291))

(declare-fun m!1297293 () Bool)

(assert (=> b!1408055 m!1297293))

(declare-fun m!1297295 () Bool)

(assert (=> b!1408062 m!1297295))

(assert (=> b!1408062 m!1297295))

(declare-fun m!1297297 () Bool)

(assert (=> b!1408062 m!1297297))

(declare-fun m!1297299 () Bool)

(assert (=> b!1408062 m!1297299))

(declare-fun m!1297301 () Bool)

(assert (=> b!1408062 m!1297301))

(declare-fun m!1297303 () Bool)

(assert (=> b!1408057 m!1297303))

(declare-fun m!1297305 () Bool)

(assert (=> b!1408061 m!1297305))

(declare-fun m!1297307 () Bool)

(assert (=> b!1408061 m!1297307))

(assert (=> b!1408061 m!1297305))

(declare-fun m!1297309 () Bool)

(assert (=> b!1408061 m!1297309))

(assert (=> b!1408061 m!1297305))

(declare-fun m!1297311 () Bool)

(assert (=> b!1408061 m!1297311))

(declare-fun m!1297313 () Bool)

(assert (=> b!1408061 m!1297313))

(assert (=> b!1408061 m!1297305))

(declare-fun m!1297315 () Bool)

(assert (=> b!1408061 m!1297315))

(assert (=> b!1408060 m!1297305))

(assert (=> b!1408060 m!1297305))

(declare-fun m!1297317 () Bool)

(assert (=> b!1408060 m!1297317))

(declare-fun m!1297319 () Bool)

(assert (=> start!121150 m!1297319))

(declare-fun m!1297321 () Bool)

(assert (=> start!121150 m!1297321))

(declare-fun m!1297323 () Bool)

(assert (=> b!1408058 m!1297323))

(assert (=> b!1408058 m!1297323))

(declare-fun m!1297325 () Bool)

(assert (=> b!1408058 m!1297325))

(push 1)

