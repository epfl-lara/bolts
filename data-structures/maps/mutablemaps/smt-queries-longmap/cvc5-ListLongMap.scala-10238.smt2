; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120520 () Bool)

(assert start!120520)

(declare-fun b!1402779 () Bool)

(declare-fun e!794336 () Bool)

(declare-fun e!794334 () Bool)

(assert (=> b!1402779 (= e!794336 e!794334)))

(declare-fun res!941399 () Bool)

(assert (=> b!1402779 (=> res!941399 e!794334)))

(declare-datatypes ((SeekEntryResult!10609 0))(
  ( (MissingZero!10609 (index!44812 (_ BitVec 32))) (Found!10609 (index!44813 (_ BitVec 32))) (Intermediate!10609 (undefined!11421 Bool) (index!44814 (_ BitVec 32)) (x!126439 (_ BitVec 32))) (Undefined!10609) (MissingVacant!10609 (index!44815 (_ BitVec 32))) )
))
(declare-fun lt!618089 () SeekEntryResult!10609)

(declare-fun lt!618084 () SeekEntryResult!10609)

(assert (=> b!1402779 (= res!941399 (or (= lt!618089 lt!618084) (not (is-Intermediate!10609 lt!618084))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95847 0))(
  ( (array!95848 (arr!46270 (Array (_ BitVec 32) (_ BitVec 64))) (size!46821 (_ BitVec 32))) )
))
(declare-fun lt!618090 () array!95847)

(declare-fun lt!618088 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95847 (_ BitVec 32)) SeekEntryResult!10609)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402779 (= lt!618084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!618088 mask!2840) lt!618088 lt!618090 mask!2840))))

(declare-fun a!2901 () array!95847)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402779 (= lt!618088 (select (store (arr!46270 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402779 (= lt!618090 (array!95848 (store (arr!46270 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46821 a!2901)))))

(declare-fun b!1402780 () Bool)

(declare-fun e!794337 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402780 (= e!794337 (validKeyInArray!0 lt!618088))))

(declare-fun b!1402781 () Bool)

(declare-fun res!941403 () Bool)

(declare-fun e!794339 () Bool)

(assert (=> b!1402781 (=> (not res!941403) (not e!794339))))

(assert (=> b!1402781 (= res!941403 (validKeyInArray!0 (select (arr!46270 a!2901) i!1037)))))

(declare-fun b!1402782 () Bool)

(declare-fun res!941402 () Bool)

(declare-fun e!794338 () Bool)

(assert (=> b!1402782 (=> res!941402 e!794338)))

(declare-fun lt!618085 () (_ BitVec 32))

(assert (=> b!1402782 (= res!941402 (not (= lt!618084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618085 lt!618088 lt!618090 mask!2840))))))

(declare-fun b!1402783 () Bool)

(declare-fun res!941404 () Bool)

(assert (=> b!1402783 (=> (not res!941404) (not e!794339))))

(assert (=> b!1402783 (= res!941404 (and (= (size!46821 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46821 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46821 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!941408 () Bool)

(assert (=> start!120520 (=> (not res!941408) (not e!794339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120520 (= res!941408 (validMask!0 mask!2840))))

(assert (=> start!120520 e!794339))

(assert (=> start!120520 true))

(declare-fun array_inv!35215 (array!95847) Bool)

(assert (=> start!120520 (array_inv!35215 a!2901)))

(declare-fun b!1402784 () Bool)

(assert (=> b!1402784 (= e!794339 (not e!794336))))

(declare-fun res!941406 () Bool)

(assert (=> b!1402784 (=> res!941406 e!794336)))

(assert (=> b!1402784 (= res!941406 (or (not (is-Intermediate!10609 lt!618089)) (undefined!11421 lt!618089)))))

(declare-fun lt!618086 () SeekEntryResult!10609)

(assert (=> b!1402784 (= lt!618086 (Found!10609 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95847 (_ BitVec 32)) SeekEntryResult!10609)

(assert (=> b!1402784 (= lt!618086 (seekEntryOrOpen!0 (select (arr!46270 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95847 (_ BitVec 32)) Bool)

(assert (=> b!1402784 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47172 0))(
  ( (Unit!47173) )
))
(declare-fun lt!618083 () Unit!47172)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47172)

(assert (=> b!1402784 (= lt!618083 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402784 (= lt!618089 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618085 (select (arr!46270 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402784 (= lt!618085 (toIndex!0 (select (arr!46270 a!2901) j!112) mask!2840))))

(declare-fun b!1402785 () Bool)

(declare-fun res!941407 () Bool)

(assert (=> b!1402785 (=> (not res!941407) (not e!794339))))

(assert (=> b!1402785 (= res!941407 (validKeyInArray!0 (select (arr!46270 a!2901) j!112)))))

(declare-fun b!1402786 () Bool)

(declare-fun res!941401 () Bool)

(assert (=> b!1402786 (=> (not res!941401) (not e!794339))))

(assert (=> b!1402786 (= res!941401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402787 () Bool)

(assert (=> b!1402787 (= e!794334 e!794338)))

(declare-fun res!941409 () Bool)

(assert (=> b!1402787 (=> res!941409 e!794338)))

(assert (=> b!1402787 (= res!941409 (or (bvslt (x!126439 lt!618089) #b00000000000000000000000000000000) (bvsgt (x!126439 lt!618089) #b01111111111111111111111111111110) (bvslt (x!126439 lt!618084) #b00000000000000000000000000000000) (bvsgt (x!126439 lt!618084) #b01111111111111111111111111111110) (bvslt lt!618085 #b00000000000000000000000000000000) (bvsge lt!618085 (size!46821 a!2901)) (bvslt (index!44814 lt!618089) #b00000000000000000000000000000000) (bvsge (index!44814 lt!618089) (size!46821 a!2901)) (bvslt (index!44814 lt!618084) #b00000000000000000000000000000000) (bvsge (index!44814 lt!618084) (size!46821 a!2901)) (not (= lt!618089 (Intermediate!10609 false (index!44814 lt!618089) (x!126439 lt!618089)))) (not (= lt!618084 (Intermediate!10609 false (index!44814 lt!618084) (x!126439 lt!618084))))))))

(declare-fun lt!618087 () SeekEntryResult!10609)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95847 (_ BitVec 32)) SeekEntryResult!10609)

(assert (=> b!1402787 (= lt!618087 (seekKeyOrZeroReturnVacant!0 (x!126439 lt!618084) (index!44814 lt!618084) (index!44814 lt!618084) (select (arr!46270 a!2901) j!112) lt!618090 mask!2840))))

(assert (=> b!1402787 (= lt!618087 (seekEntryOrOpen!0 lt!618088 lt!618090 mask!2840))))

(assert (=> b!1402787 (and (not (undefined!11421 lt!618084)) (= (index!44814 lt!618084) i!1037) (bvslt (x!126439 lt!618084) (x!126439 lt!618089)) (= (select (store (arr!46270 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44814 lt!618084)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!618091 () Unit!47172)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47172)

(assert (=> b!1402787 (= lt!618091 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618085 (x!126439 lt!618089) (index!44814 lt!618089) (x!126439 lt!618084) (index!44814 lt!618084) (undefined!11421 lt!618084) mask!2840))))

(declare-fun b!1402788 () Bool)

(declare-fun res!941400 () Bool)

(assert (=> b!1402788 (=> (not res!941400) (not e!794339))))

(declare-datatypes ((List!32969 0))(
  ( (Nil!32966) (Cons!32965 (h!34213 (_ BitVec 64)) (t!47670 List!32969)) )
))
(declare-fun arrayNoDuplicates!0 (array!95847 (_ BitVec 32) List!32969) Bool)

(assert (=> b!1402788 (= res!941400 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32966))))

(declare-fun b!1402789 () Bool)

(assert (=> b!1402789 (= e!794338 e!794337)))

(declare-fun res!941405 () Bool)

(assert (=> b!1402789 (=> res!941405 e!794337)))

(assert (=> b!1402789 (= res!941405 (bvslt mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1402789 (= lt!618086 lt!618087)))

(declare-fun lt!618082 () Unit!47172)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47172)

(assert (=> b!1402789 (= lt!618082 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618085 (x!126439 lt!618089) (index!44814 lt!618089) (x!126439 lt!618084) (index!44814 lt!618084) mask!2840))))

(assert (= (and start!120520 res!941408) b!1402783))

(assert (= (and b!1402783 res!941404) b!1402781))

(assert (= (and b!1402781 res!941403) b!1402785))

(assert (= (and b!1402785 res!941407) b!1402786))

(assert (= (and b!1402786 res!941401) b!1402788))

(assert (= (and b!1402788 res!941400) b!1402784))

(assert (= (and b!1402784 (not res!941406)) b!1402779))

(assert (= (and b!1402779 (not res!941399)) b!1402787))

(assert (= (and b!1402787 (not res!941409)) b!1402782))

(assert (= (and b!1402782 (not res!941402)) b!1402789))

(assert (= (and b!1402789 (not res!941405)) b!1402780))

(declare-fun m!1291223 () Bool)

(assert (=> b!1402780 m!1291223))

(declare-fun m!1291225 () Bool)

(assert (=> b!1402781 m!1291225))

(assert (=> b!1402781 m!1291225))

(declare-fun m!1291227 () Bool)

(assert (=> b!1402781 m!1291227))

(declare-fun m!1291229 () Bool)

(assert (=> b!1402787 m!1291229))

(declare-fun m!1291231 () Bool)

(assert (=> b!1402787 m!1291231))

(assert (=> b!1402787 m!1291229))

(declare-fun m!1291233 () Bool)

(assert (=> b!1402787 m!1291233))

(declare-fun m!1291235 () Bool)

(assert (=> b!1402787 m!1291235))

(declare-fun m!1291237 () Bool)

(assert (=> b!1402787 m!1291237))

(declare-fun m!1291239 () Bool)

(assert (=> b!1402787 m!1291239))

(assert (=> b!1402785 m!1291229))

(assert (=> b!1402785 m!1291229))

(declare-fun m!1291241 () Bool)

(assert (=> b!1402785 m!1291241))

(declare-fun m!1291243 () Bool)

(assert (=> b!1402789 m!1291243))

(assert (=> b!1402784 m!1291229))

(declare-fun m!1291245 () Bool)

(assert (=> b!1402784 m!1291245))

(assert (=> b!1402784 m!1291229))

(declare-fun m!1291247 () Bool)

(assert (=> b!1402784 m!1291247))

(assert (=> b!1402784 m!1291229))

(declare-fun m!1291249 () Bool)

(assert (=> b!1402784 m!1291249))

(declare-fun m!1291251 () Bool)

(assert (=> b!1402784 m!1291251))

(assert (=> b!1402784 m!1291229))

(declare-fun m!1291253 () Bool)

(assert (=> b!1402784 m!1291253))

(declare-fun m!1291255 () Bool)

(assert (=> b!1402786 m!1291255))

(declare-fun m!1291257 () Bool)

(assert (=> b!1402788 m!1291257))

(declare-fun m!1291259 () Bool)

(assert (=> b!1402782 m!1291259))

(declare-fun m!1291261 () Bool)

(assert (=> b!1402779 m!1291261))

(assert (=> b!1402779 m!1291261))

(declare-fun m!1291263 () Bool)

(assert (=> b!1402779 m!1291263))

(assert (=> b!1402779 m!1291239))

(declare-fun m!1291265 () Bool)

(assert (=> b!1402779 m!1291265))

(declare-fun m!1291267 () Bool)

(assert (=> start!120520 m!1291267))

(declare-fun m!1291269 () Bool)

(assert (=> start!120520 m!1291269))

(push 1)

