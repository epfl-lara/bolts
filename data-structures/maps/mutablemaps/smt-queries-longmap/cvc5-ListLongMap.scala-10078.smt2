; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118642 () Bool)

(assert start!118642)

(declare-fun b!1386467 () Bool)

(declare-fun res!927756 () Bool)

(declare-fun e!785429 () Bool)

(assert (=> b!1386467 (=> (not res!927756) (not e!785429))))

(declare-datatypes ((array!94836 0))(
  ( (array!94837 (arr!45790 (Array (_ BitVec 32) (_ BitVec 64))) (size!46341 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94836)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94836 (_ BitVec 32)) Bool)

(assert (=> b!1386467 (= res!927756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386468 () Bool)

(declare-fun res!927753 () Bool)

(assert (=> b!1386468 (=> (not res!927753) (not e!785429))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386468 (= res!927753 (validKeyInArray!0 (select (arr!45790 a!2938) i!1065)))))

(declare-fun res!927755 () Bool)

(assert (=> start!118642 (=> (not res!927755) (not e!785429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118642 (= res!927755 (validMask!0 mask!2987))))

(assert (=> start!118642 e!785429))

(assert (=> start!118642 true))

(declare-fun array_inv!34735 (array!94836) Bool)

(assert (=> start!118642 (array_inv!34735 a!2938)))

(declare-fun b!1386469 () Bool)

(declare-fun res!927752 () Bool)

(assert (=> b!1386469 (=> (not res!927752) (not e!785429))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386469 (= res!927752 (and (= (size!46341 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46341 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46341 a!2938))))))

(declare-fun b!1386470 () Bool)

(declare-datatypes ((Unit!46264 0))(
  ( (Unit!46265) )
))
(declare-fun e!785430 () Unit!46264)

(declare-fun Unit!46266 () Unit!46264)

(assert (=> b!1386470 (= e!785430 Unit!46266)))

(declare-fun b!1386471 () Bool)

(declare-fun res!927754 () Bool)

(assert (=> b!1386471 (=> (not res!927754) (not e!785429))))

(declare-datatypes ((List!32498 0))(
  ( (Nil!32495) (Cons!32494 (h!33703 (_ BitVec 64)) (t!47199 List!32498)) )
))
(declare-fun arrayNoDuplicates!0 (array!94836 (_ BitVec 32) List!32498) Bool)

(assert (=> b!1386471 (= res!927754 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32495))))

(declare-fun b!1386472 () Bool)

(declare-fun res!927751 () Bool)

(assert (=> b!1386472 (=> (not res!927751) (not e!785429))))

(assert (=> b!1386472 (= res!927751 (and (not (= (select (arr!45790 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45790 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386473 () Bool)

(declare-fun e!785431 () Bool)

(assert (=> b!1386473 (= e!785431 (validKeyInArray!0 (select (arr!45790 a!2938) startIndex!16)))))

(declare-fun b!1386474 () Bool)

(assert (=> b!1386474 (= e!785429 (and (bvslt startIndex!16 (bvsub (size!46341 a!2938) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609440 () Unit!46264)

(assert (=> b!1386474 (= lt!609440 e!785430)))

(declare-fun c!128801 () Bool)

(assert (=> b!1386474 (= c!128801 e!785431)))

(declare-fun res!927750 () Bool)

(assert (=> b!1386474 (=> (not res!927750) (not e!785431))))

(assert (=> b!1386474 (= res!927750 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386475 () Bool)

(declare-fun lt!609442 () Unit!46264)

(assert (=> b!1386475 (= e!785430 lt!609442)))

(declare-fun lt!609441 () Unit!46264)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46264)

(assert (=> b!1386475 (= lt!609441 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10155 0))(
  ( (MissingZero!10155 (index!42990 (_ BitVec 32))) (Found!10155 (index!42991 (_ BitVec 32))) (Intermediate!10155 (undefined!10967 Bool) (index!42992 (_ BitVec 32)) (x!124615 (_ BitVec 32))) (Undefined!10155) (MissingVacant!10155 (index!42993 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94836 (_ BitVec 32)) SeekEntryResult!10155)

(assert (=> b!1386475 (= (seekEntryOrOpen!0 (select (arr!45790 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45790 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94837 (store (arr!45790 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46341 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46264)

(assert (=> b!1386475 (= lt!609442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386475 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118642 res!927755) b!1386469))

(assert (= (and b!1386469 res!927752) b!1386468))

(assert (= (and b!1386468 res!927753) b!1386471))

(assert (= (and b!1386471 res!927754) b!1386467))

(assert (= (and b!1386467 res!927756) b!1386472))

(assert (= (and b!1386472 res!927751) b!1386474))

(assert (= (and b!1386474 res!927750) b!1386473))

(assert (= (and b!1386474 c!128801) b!1386475))

(assert (= (and b!1386474 (not c!128801)) b!1386470))

(declare-fun m!1271903 () Bool)

(assert (=> b!1386473 m!1271903))

(assert (=> b!1386473 m!1271903))

(declare-fun m!1271905 () Bool)

(assert (=> b!1386473 m!1271905))

(declare-fun m!1271907 () Bool)

(assert (=> b!1386471 m!1271907))

(declare-fun m!1271909 () Bool)

(assert (=> b!1386467 m!1271909))

(declare-fun m!1271911 () Bool)

(assert (=> b!1386468 m!1271911))

(assert (=> b!1386468 m!1271911))

(declare-fun m!1271913 () Bool)

(assert (=> b!1386468 m!1271913))

(declare-fun m!1271915 () Bool)

(assert (=> b!1386475 m!1271915))

(declare-fun m!1271917 () Bool)

(assert (=> b!1386475 m!1271917))

(assert (=> b!1386475 m!1271917))

(declare-fun m!1271919 () Bool)

(assert (=> b!1386475 m!1271919))

(declare-fun m!1271921 () Bool)

(assert (=> b!1386475 m!1271921))

(declare-fun m!1271923 () Bool)

(assert (=> b!1386475 m!1271923))

(assert (=> b!1386475 m!1271903))

(declare-fun m!1271925 () Bool)

(assert (=> b!1386475 m!1271925))

(assert (=> b!1386475 m!1271903))

(declare-fun m!1271927 () Bool)

(assert (=> b!1386475 m!1271927))

(assert (=> b!1386472 m!1271911))

(declare-fun m!1271929 () Bool)

(assert (=> start!118642 m!1271929))

(declare-fun m!1271931 () Bool)

(assert (=> start!118642 m!1271931))

(push 1)

