; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120374 () Bool)

(assert start!120374)

(declare-fun b!1400433 () Bool)

(declare-fun e!792932 () Bool)

(declare-fun e!792933 () Bool)

(assert (=> b!1400433 (= e!792932 (not e!792933))))

(declare-fun res!939056 () Bool)

(assert (=> b!1400433 (=> res!939056 e!792933)))

(declare-datatypes ((SeekEntryResult!10536 0))(
  ( (MissingZero!10536 (index!44520 (_ BitVec 32))) (Found!10536 (index!44521 (_ BitVec 32))) (Intermediate!10536 (undefined!11348 Bool) (index!44522 (_ BitVec 32)) (x!126166 (_ BitVec 32))) (Undefined!10536) (MissingVacant!10536 (index!44523 (_ BitVec 32))) )
))
(declare-fun lt!616202 () SeekEntryResult!10536)

(assert (=> b!1400433 (= res!939056 (or (not (is-Intermediate!10536 lt!616202)) (undefined!11348 lt!616202)))))

(declare-fun e!792929 () Bool)

(assert (=> b!1400433 e!792929))

(declare-fun res!939059 () Bool)

(assert (=> b!1400433 (=> (not res!939059) (not e!792929))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95701 0))(
  ( (array!95702 (arr!46197 (Array (_ BitVec 32) (_ BitVec 64))) (size!46748 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95701)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95701 (_ BitVec 32)) Bool)

(assert (=> b!1400433 (= res!939059 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47026 0))(
  ( (Unit!47027) )
))
(declare-fun lt!616206 () Unit!47026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47026)

(assert (=> b!1400433 (= lt!616206 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616205 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95701 (_ BitVec 32)) SeekEntryResult!10536)

(assert (=> b!1400433 (= lt!616202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616205 (select (arr!46197 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400433 (= lt!616205 (toIndex!0 (select (arr!46197 a!2901) j!112) mask!2840))))

(declare-fun b!1400434 () Bool)

(declare-fun lt!616204 () (_ BitVec 64))

(declare-fun lt!616207 () array!95701)

(declare-fun lt!616203 () SeekEntryResult!10536)

(declare-fun e!792935 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95701 (_ BitVec 32)) SeekEntryResult!10536)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95701 (_ BitVec 32)) SeekEntryResult!10536)

(assert (=> b!1400434 (= e!792935 (= (seekEntryOrOpen!0 lt!616204 lt!616207 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126166 lt!616203) (index!44522 lt!616203) (index!44522 lt!616203) (select (arr!46197 a!2901) j!112) lt!616207 mask!2840)))))

(declare-fun b!1400435 () Bool)

(declare-fun res!939060 () Bool)

(assert (=> b!1400435 (=> (not res!939060) (not e!792932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400435 (= res!939060 (validKeyInArray!0 (select (arr!46197 a!2901) j!112)))))

(declare-fun b!1400436 () Bool)

(assert (=> b!1400436 (= e!792929 (= (seekEntryOrOpen!0 (select (arr!46197 a!2901) j!112) a!2901 mask!2840) (Found!10536 j!112)))))

(declare-fun res!939063 () Bool)

(assert (=> start!120374 (=> (not res!939063) (not e!792932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120374 (= res!939063 (validMask!0 mask!2840))))

(assert (=> start!120374 e!792932))

(assert (=> start!120374 true))

(declare-fun array_inv!35142 (array!95701) Bool)

(assert (=> start!120374 (array_inv!35142 a!2901)))

(declare-fun b!1400437 () Bool)

(declare-fun e!792934 () Bool)

(assert (=> b!1400437 (= e!792934 true)))

(declare-fun lt!616201 () SeekEntryResult!10536)

(assert (=> b!1400437 (= lt!616201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616205 lt!616204 lt!616207 mask!2840))))

(declare-fun b!1400438 () Bool)

(declare-fun e!792930 () Bool)

(assert (=> b!1400438 (= e!792933 e!792930)))

(declare-fun res!939057 () Bool)

(assert (=> b!1400438 (=> res!939057 e!792930)))

(assert (=> b!1400438 (= res!939057 (or (= lt!616202 lt!616203) (not (is-Intermediate!10536 lt!616203))))))

(assert (=> b!1400438 (= lt!616203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616204 mask!2840) lt!616204 lt!616207 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400438 (= lt!616204 (select (store (arr!46197 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400438 (= lt!616207 (array!95702 (store (arr!46197 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46748 a!2901)))))

(declare-fun b!1400439 () Bool)

(declare-fun res!939061 () Bool)

(assert (=> b!1400439 (=> (not res!939061) (not e!792932))))

(assert (=> b!1400439 (= res!939061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400440 () Bool)

(assert (=> b!1400440 (= e!792930 e!792934)))

(declare-fun res!939058 () Bool)

(assert (=> b!1400440 (=> res!939058 e!792934)))

(assert (=> b!1400440 (= res!939058 (or (bvslt (x!126166 lt!616202) #b00000000000000000000000000000000) (bvsgt (x!126166 lt!616202) #b01111111111111111111111111111110) (bvslt (x!126166 lt!616203) #b00000000000000000000000000000000) (bvsgt (x!126166 lt!616203) #b01111111111111111111111111111110) (bvslt lt!616205 #b00000000000000000000000000000000) (bvsge lt!616205 (size!46748 a!2901)) (bvslt (index!44522 lt!616202) #b00000000000000000000000000000000) (bvsge (index!44522 lt!616202) (size!46748 a!2901)) (bvslt (index!44522 lt!616203) #b00000000000000000000000000000000) (bvsge (index!44522 lt!616203) (size!46748 a!2901)) (not (= lt!616202 (Intermediate!10536 false (index!44522 lt!616202) (x!126166 lt!616202)))) (not (= lt!616203 (Intermediate!10536 false (index!44522 lt!616203) (x!126166 lt!616203))))))))

(assert (=> b!1400440 e!792935))

(declare-fun res!939062 () Bool)

(assert (=> b!1400440 (=> (not res!939062) (not e!792935))))

(assert (=> b!1400440 (= res!939062 (and (not (undefined!11348 lt!616203)) (= (index!44522 lt!616203) i!1037) (bvslt (x!126166 lt!616203) (x!126166 lt!616202)) (= (select (store (arr!46197 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44522 lt!616203)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616200 () Unit!47026)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47026)

(assert (=> b!1400440 (= lt!616200 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616205 (x!126166 lt!616202) (index!44522 lt!616202) (x!126166 lt!616203) (index!44522 lt!616203) (undefined!11348 lt!616203) mask!2840))))

(declare-fun b!1400441 () Bool)

(declare-fun res!939055 () Bool)

(assert (=> b!1400441 (=> (not res!939055) (not e!792932))))

(declare-datatypes ((List!32896 0))(
  ( (Nil!32893) (Cons!32892 (h!34140 (_ BitVec 64)) (t!47597 List!32896)) )
))
(declare-fun arrayNoDuplicates!0 (array!95701 (_ BitVec 32) List!32896) Bool)

(assert (=> b!1400441 (= res!939055 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32893))))

(declare-fun b!1400442 () Bool)

(declare-fun res!939054 () Bool)

(assert (=> b!1400442 (=> (not res!939054) (not e!792932))))

(assert (=> b!1400442 (= res!939054 (validKeyInArray!0 (select (arr!46197 a!2901) i!1037)))))

(declare-fun b!1400443 () Bool)

(declare-fun res!939053 () Bool)

(assert (=> b!1400443 (=> (not res!939053) (not e!792932))))

(assert (=> b!1400443 (= res!939053 (and (= (size!46748 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46748 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46748 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120374 res!939063) b!1400443))

(assert (= (and b!1400443 res!939053) b!1400442))

(assert (= (and b!1400442 res!939054) b!1400435))

(assert (= (and b!1400435 res!939060) b!1400439))

(assert (= (and b!1400439 res!939061) b!1400441))

(assert (= (and b!1400441 res!939055) b!1400433))

(assert (= (and b!1400433 res!939059) b!1400436))

(assert (= (and b!1400433 (not res!939056)) b!1400438))

(assert (= (and b!1400438 (not res!939057)) b!1400440))

(assert (= (and b!1400440 res!939062) b!1400434))

(assert (= (and b!1400440 (not res!939058)) b!1400437))

(declare-fun m!1287969 () Bool)

(assert (=> b!1400441 m!1287969))

(declare-fun m!1287971 () Bool)

(assert (=> b!1400435 m!1287971))

(assert (=> b!1400435 m!1287971))

(declare-fun m!1287973 () Bool)

(assert (=> b!1400435 m!1287973))

(declare-fun m!1287975 () Bool)

(assert (=> b!1400439 m!1287975))

(assert (=> b!1400433 m!1287971))

(declare-fun m!1287977 () Bool)

(assert (=> b!1400433 m!1287977))

(assert (=> b!1400433 m!1287971))

(declare-fun m!1287979 () Bool)

(assert (=> b!1400433 m!1287979))

(declare-fun m!1287981 () Bool)

(assert (=> b!1400433 m!1287981))

(assert (=> b!1400433 m!1287971))

(declare-fun m!1287983 () Bool)

(assert (=> b!1400433 m!1287983))

(declare-fun m!1287985 () Bool)

(assert (=> b!1400442 m!1287985))

(assert (=> b!1400442 m!1287985))

(declare-fun m!1287987 () Bool)

(assert (=> b!1400442 m!1287987))

(declare-fun m!1287989 () Bool)

(assert (=> b!1400440 m!1287989))

(declare-fun m!1287991 () Bool)

(assert (=> b!1400440 m!1287991))

(declare-fun m!1287993 () Bool)

(assert (=> b!1400440 m!1287993))

(assert (=> b!1400436 m!1287971))

(assert (=> b!1400436 m!1287971))

(declare-fun m!1287995 () Bool)

(assert (=> b!1400436 m!1287995))

(declare-fun m!1287997 () Bool)

(assert (=> start!120374 m!1287997))

(declare-fun m!1287999 () Bool)

(assert (=> start!120374 m!1287999))

(declare-fun m!1288001 () Bool)

(assert (=> b!1400437 m!1288001))

(declare-fun m!1288003 () Bool)

(assert (=> b!1400434 m!1288003))

(assert (=> b!1400434 m!1287971))

(assert (=> b!1400434 m!1287971))

(declare-fun m!1288005 () Bool)

(assert (=> b!1400434 m!1288005))

(declare-fun m!1288007 () Bool)

(assert (=> b!1400438 m!1288007))

(assert (=> b!1400438 m!1288007))

(declare-fun m!1288009 () Bool)

(assert (=> b!1400438 m!1288009))

(assert (=> b!1400438 m!1287989))

(declare-fun m!1288011 () Bool)

(assert (=> b!1400438 m!1288011))

(push 1)

