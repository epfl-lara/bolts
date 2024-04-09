; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124980 () Bool)

(assert start!124980)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1451865 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98345 0))(
  ( (array!98346 (arr!47456 (Array (_ BitVec 32) (_ BitVec 64))) (size!48007 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98345)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun e!817418 () Bool)

(assert (=> b!1451865 (= e!817418 (and (or (= (select (arr!47456 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47456 a!2862) intermediateBeforeIndex!19) (select (arr!47456 a!2862) j!93))) (or (and (= (select (arr!47456 a!2862) index!646) (select (store (arr!47456 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47456 a!2862) index!646) (select (arr!47456 a!2862) j!93))) (= (select (arr!47456 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47456 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451866 () Bool)

(declare-fun res!983159 () Bool)

(declare-fun e!817415 () Bool)

(assert (=> b!1451866 (=> (not res!983159) (not e!817415))))

(declare-fun e!817420 () Bool)

(assert (=> b!1451866 (= res!983159 e!817420)))

(declare-fun c!133871 () Bool)

(assert (=> b!1451866 (= c!133871 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451867 () Bool)

(declare-fun res!983154 () Bool)

(declare-fun e!817416 () Bool)

(assert (=> b!1451867 (=> (not res!983154) (not e!817416))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1451867 (= res!983154 (and (= (size!48007 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48007 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48007 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451868 () Bool)

(declare-fun res!983150 () Bool)

(assert (=> b!1451868 (=> (not res!983150) (not e!817416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451868 (= res!983150 (validKeyInArray!0 (select (arr!47456 a!2862) i!1006)))))

(declare-fun res!983156 () Bool)

(assert (=> start!124980 (=> (not res!983156) (not e!817416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124980 (= res!983156 (validMask!0 mask!2687))))

(assert (=> start!124980 e!817416))

(assert (=> start!124980 true))

(declare-fun array_inv!36401 (array!98345) Bool)

(assert (=> start!124980 (array_inv!36401 a!2862)))

(declare-fun b!1451869 () Bool)

(declare-fun e!817419 () Bool)

(declare-fun e!817417 () Bool)

(assert (=> b!1451869 (= e!817419 e!817417)))

(declare-fun res!983149 () Bool)

(assert (=> b!1451869 (=> (not res!983149) (not e!817417))))

(declare-datatypes ((SeekEntryResult!11731 0))(
  ( (MissingZero!11731 (index!49315 (_ BitVec 32))) (Found!11731 (index!49316 (_ BitVec 32))) (Intermediate!11731 (undefined!12543 Bool) (index!49317 (_ BitVec 32)) (x!130967 (_ BitVec 32))) (Undefined!11731) (MissingVacant!11731 (index!49318 (_ BitVec 32))) )
))
(declare-fun lt!636738 () SeekEntryResult!11731)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98345 (_ BitVec 32)) SeekEntryResult!11731)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451869 (= res!983149 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47456 a!2862) j!93) mask!2687) (select (arr!47456 a!2862) j!93) a!2862 mask!2687) lt!636738))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451869 (= lt!636738 (Intermediate!11731 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451870 () Bool)

(assert (=> b!1451870 (= e!817416 e!817419)))

(declare-fun res!983153 () Bool)

(assert (=> b!1451870 (=> (not res!983153) (not e!817419))))

(assert (=> b!1451870 (= res!983153 (= (select (store (arr!47456 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636739 () array!98345)

(assert (=> b!1451870 (= lt!636739 (array!98346 (store (arr!47456 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48007 a!2862)))))

(declare-fun b!1451871 () Bool)

(declare-fun res!983158 () Bool)

(assert (=> b!1451871 (=> (not res!983158) (not e!817415))))

(assert (=> b!1451871 (= res!983158 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451872 () Bool)

(declare-fun res!983160 () Bool)

(assert (=> b!1451872 (=> (not res!983160) (not e!817417))))

(assert (=> b!1451872 (= res!983160 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47456 a!2862) j!93) a!2862 mask!2687) lt!636738))))

(declare-fun b!1451873 () Bool)

(declare-fun res!983161 () Bool)

(assert (=> b!1451873 (=> (not res!983161) (not e!817416))))

(assert (=> b!1451873 (= res!983161 (validKeyInArray!0 (select (arr!47456 a!2862) j!93)))))

(declare-fun b!1451874 () Bool)

(declare-fun lt!636740 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98345 (_ BitVec 32)) SeekEntryResult!11731)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98345 (_ BitVec 32)) SeekEntryResult!11731)

(assert (=> b!1451874 (= e!817420 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636740 lt!636739 mask!2687) (seekEntryOrOpen!0 lt!636740 lt!636739 mask!2687)))))

(declare-fun lt!636741 () SeekEntryResult!11731)

(declare-fun b!1451875 () Bool)

(assert (=> b!1451875 (= e!817420 (= lt!636741 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636740 lt!636739 mask!2687)))))

(declare-fun b!1451876 () Bool)

(declare-fun res!983152 () Bool)

(assert (=> b!1451876 (=> (not res!983152) (not e!817416))))

(assert (=> b!1451876 (= res!983152 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48007 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48007 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48007 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451877 () Bool)

(declare-fun res!983151 () Bool)

(assert (=> b!1451877 (=> (not res!983151) (not e!817418))))

(assert (=> b!1451877 (= res!983151 (= (seekEntryOrOpen!0 (select (arr!47456 a!2862) j!93) a!2862 mask!2687) (Found!11731 j!93)))))

(declare-fun b!1451878 () Bool)

(assert (=> b!1451878 (= e!817415 (not (or (and (= (select (arr!47456 a!2862) index!646) (select (store (arr!47456 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47456 a!2862) index!646) (select (arr!47456 a!2862) j!93))) (= (select (arr!47456 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1451878 e!817418))

(declare-fun res!983155 () Bool)

(assert (=> b!1451878 (=> (not res!983155) (not e!817418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98345 (_ BitVec 32)) Bool)

(assert (=> b!1451878 (= res!983155 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48906 0))(
  ( (Unit!48907) )
))
(declare-fun lt!636742 () Unit!48906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48906)

(assert (=> b!1451878 (= lt!636742 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451879 () Bool)

(declare-fun res!983162 () Bool)

(assert (=> b!1451879 (=> (not res!983162) (not e!817416))))

(assert (=> b!1451879 (= res!983162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451880 () Bool)

(declare-fun res!983157 () Bool)

(assert (=> b!1451880 (=> (not res!983157) (not e!817416))))

(declare-datatypes ((List!34137 0))(
  ( (Nil!34134) (Cons!34133 (h!35483 (_ BitVec 64)) (t!48838 List!34137)) )
))
(declare-fun arrayNoDuplicates!0 (array!98345 (_ BitVec 32) List!34137) Bool)

(assert (=> b!1451880 (= res!983157 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34134))))

(declare-fun b!1451881 () Bool)

(assert (=> b!1451881 (= e!817417 e!817415)))

(declare-fun res!983163 () Bool)

(assert (=> b!1451881 (=> (not res!983163) (not e!817415))))

(assert (=> b!1451881 (= res!983163 (= lt!636741 (Intermediate!11731 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1451881 (= lt!636741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636740 mask!2687) lt!636740 lt!636739 mask!2687))))

(assert (=> b!1451881 (= lt!636740 (select (store (arr!47456 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124980 res!983156) b!1451867))

(assert (= (and b!1451867 res!983154) b!1451868))

(assert (= (and b!1451868 res!983150) b!1451873))

(assert (= (and b!1451873 res!983161) b!1451879))

(assert (= (and b!1451879 res!983162) b!1451880))

(assert (= (and b!1451880 res!983157) b!1451876))

(assert (= (and b!1451876 res!983152) b!1451870))

(assert (= (and b!1451870 res!983153) b!1451869))

(assert (= (and b!1451869 res!983149) b!1451872))

(assert (= (and b!1451872 res!983160) b!1451881))

(assert (= (and b!1451881 res!983163) b!1451866))

(assert (= (and b!1451866 c!133871) b!1451875))

(assert (= (and b!1451866 (not c!133871)) b!1451874))

(assert (= (and b!1451866 res!983159) b!1451871))

(assert (= (and b!1451871 res!983158) b!1451878))

(assert (= (and b!1451878 res!983155) b!1451877))

(assert (= (and b!1451877 res!983151) b!1451865))

(declare-fun m!1340507 () Bool)

(assert (=> b!1451874 m!1340507))

(declare-fun m!1340509 () Bool)

(assert (=> b!1451874 m!1340509))

(declare-fun m!1340511 () Bool)

(assert (=> b!1451865 m!1340511))

(declare-fun m!1340513 () Bool)

(assert (=> b!1451865 m!1340513))

(declare-fun m!1340515 () Bool)

(assert (=> b!1451865 m!1340515))

(declare-fun m!1340517 () Bool)

(assert (=> b!1451865 m!1340517))

(declare-fun m!1340519 () Bool)

(assert (=> b!1451865 m!1340519))

(assert (=> b!1451870 m!1340511))

(declare-fun m!1340521 () Bool)

(assert (=> b!1451870 m!1340521))

(declare-fun m!1340523 () Bool)

(assert (=> b!1451875 m!1340523))

(declare-fun m!1340525 () Bool)

(assert (=> start!124980 m!1340525))

(declare-fun m!1340527 () Bool)

(assert (=> start!124980 m!1340527))

(assert (=> b!1451873 m!1340519))

(assert (=> b!1451873 m!1340519))

(declare-fun m!1340529 () Bool)

(assert (=> b!1451873 m!1340529))

(declare-fun m!1340531 () Bool)

(assert (=> b!1451880 m!1340531))

(assert (=> b!1451872 m!1340519))

(assert (=> b!1451872 m!1340519))

(declare-fun m!1340533 () Bool)

(assert (=> b!1451872 m!1340533))

(declare-fun m!1340535 () Bool)

(assert (=> b!1451879 m!1340535))

(assert (=> b!1451877 m!1340519))

(assert (=> b!1451877 m!1340519))

(declare-fun m!1340537 () Bool)

(assert (=> b!1451877 m!1340537))

(declare-fun m!1340539 () Bool)

(assert (=> b!1451868 m!1340539))

(assert (=> b!1451868 m!1340539))

(declare-fun m!1340541 () Bool)

(assert (=> b!1451868 m!1340541))

(declare-fun m!1340543 () Bool)

(assert (=> b!1451878 m!1340543))

(assert (=> b!1451878 m!1340511))

(assert (=> b!1451878 m!1340515))

(assert (=> b!1451878 m!1340517))

(declare-fun m!1340545 () Bool)

(assert (=> b!1451878 m!1340545))

(assert (=> b!1451878 m!1340519))

(assert (=> b!1451869 m!1340519))

(assert (=> b!1451869 m!1340519))

(declare-fun m!1340547 () Bool)

(assert (=> b!1451869 m!1340547))

(assert (=> b!1451869 m!1340547))

(assert (=> b!1451869 m!1340519))

(declare-fun m!1340549 () Bool)

(assert (=> b!1451869 m!1340549))

(declare-fun m!1340551 () Bool)

(assert (=> b!1451881 m!1340551))

(assert (=> b!1451881 m!1340551))

(declare-fun m!1340553 () Bool)

(assert (=> b!1451881 m!1340553))

(assert (=> b!1451881 m!1340511))

(declare-fun m!1340555 () Bool)

(assert (=> b!1451881 m!1340555))

(check-sat (not b!1451881) (not b!1451874) (not b!1451875) (not b!1451877) (not b!1451872) (not b!1451879) (not b!1451880) (not b!1451869) (not b!1451873) (not b!1451868) (not start!124980) (not b!1451878))
(check-sat)
