; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65748 () Bool)

(assert start!65748)

(declare-fun b!754468 () Bool)

(declare-fun res!509935 () Bool)

(declare-fun e!420788 () Bool)

(assert (=> b!754468 (=> (not res!509935) (not e!420788))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754468 (= res!509935 (validKeyInArray!0 k0!2102))))

(declare-fun b!754469 () Bool)

(declare-datatypes ((Unit!26018 0))(
  ( (Unit!26019) )
))
(declare-fun e!420793 () Unit!26018)

(declare-fun Unit!26020 () Unit!26018)

(assert (=> b!754469 (= e!420793 Unit!26020)))

(assert (=> b!754469 false))

(declare-fun b!754470 () Bool)

(declare-fun res!509947 () Bool)

(declare-fun e!420787 () Bool)

(assert (=> b!754470 (=> (not res!509947) (not e!420787))))

(declare-fun e!420791 () Bool)

(assert (=> b!754470 (= res!509947 e!420791)))

(declare-fun c!82650 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754470 (= c!82650 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754471 () Bool)

(declare-fun e!420797 () Bool)

(assert (=> b!754471 (= e!420788 e!420797)))

(declare-fun res!509945 () Bool)

(assert (=> b!754471 (=> (not res!509945) (not e!420797))))

(declare-datatypes ((SeekEntryResult!7654 0))(
  ( (MissingZero!7654 (index!32983 (_ BitVec 32))) (Found!7654 (index!32984 (_ BitVec 32))) (Intermediate!7654 (undefined!8466 Bool) (index!32985 (_ BitVec 32)) (x!63917 (_ BitVec 32))) (Undefined!7654) (MissingVacant!7654 (index!32986 (_ BitVec 32))) )
))
(declare-fun lt!335790 () SeekEntryResult!7654)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754471 (= res!509945 (or (= lt!335790 (MissingZero!7654 i!1173)) (= lt!335790 (MissingVacant!7654 i!1173))))))

(declare-datatypes ((array!41874 0))(
  ( (array!41875 (arr!20047 (Array (_ BitVec 32) (_ BitVec 64))) (size!20468 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41874)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41874 (_ BitVec 32)) SeekEntryResult!7654)

(assert (=> b!754471 (= lt!335790 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!754472 () Bool)

(declare-fun res!509946 () Bool)

(assert (=> b!754472 (=> (not res!509946) (not e!420797))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!754472 (= res!509946 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20468 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20468 a!3186))))))

(declare-fun b!754473 () Bool)

(declare-fun e!420789 () Bool)

(declare-fun e!420795 () Bool)

(assert (=> b!754473 (= e!420789 (not e!420795))))

(declare-fun res!509934 () Bool)

(assert (=> b!754473 (=> res!509934 e!420795)))

(declare-fun lt!335789 () SeekEntryResult!7654)

(get-info :version)

(assert (=> b!754473 (= res!509934 (or (not ((_ is Intermediate!7654) lt!335789)) (bvslt x!1131 (x!63917 lt!335789)) (not (= x!1131 (x!63917 lt!335789))) (not (= index!1321 (index!32985 lt!335789)))))))

(declare-fun e!420790 () Bool)

(assert (=> b!754473 e!420790))

(declare-fun res!509937 () Bool)

(assert (=> b!754473 (=> (not res!509937) (not e!420790))))

(declare-fun lt!335791 () SeekEntryResult!7654)

(declare-fun lt!335794 () SeekEntryResult!7654)

(assert (=> b!754473 (= res!509937 (= lt!335791 lt!335794))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!754473 (= lt!335794 (Found!7654 j!159))))

(assert (=> b!754473 (= lt!335791 (seekEntryOrOpen!0 (select (arr!20047 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41874 (_ BitVec 32)) Bool)

(assert (=> b!754473 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335795 () Unit!26018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41874 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26018)

(assert (=> b!754473 (= lt!335795 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754474 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41874 (_ BitVec 32)) SeekEntryResult!7654)

(assert (=> b!754474 (= e!420790 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20047 a!3186) j!159) a!3186 mask!3328) lt!335794))))

(declare-fun b!754475 () Bool)

(assert (=> b!754475 (= e!420791 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20047 a!3186) j!159) a!3186 mask!3328) (Found!7654 j!159)))))

(declare-fun b!754476 () Bool)

(declare-fun res!509949 () Bool)

(declare-fun e!420792 () Bool)

(assert (=> b!754476 (=> (not res!509949) (not e!420792))))

(declare-fun lt!335788 () array!41874)

(declare-fun lt!335797 () (_ BitVec 64))

(assert (=> b!754476 (= res!509949 (= (seekEntryOrOpen!0 lt!335797 lt!335788 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335797 lt!335788 mask!3328)))))

(declare-fun b!754477 () Bool)

(declare-fun res!509948 () Bool)

(assert (=> b!754477 (=> (not res!509948) (not e!420797))))

(assert (=> b!754477 (= res!509948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!509943 () Bool)

(assert (=> start!65748 (=> (not res!509943) (not e!420788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65748 (= res!509943 (validMask!0 mask!3328))))

(assert (=> start!65748 e!420788))

(assert (=> start!65748 true))

(declare-fun array_inv!15821 (array!41874) Bool)

(assert (=> start!65748 (array_inv!15821 a!3186)))

(declare-fun b!754478 () Bool)

(declare-fun res!509942 () Bool)

(assert (=> b!754478 (=> (not res!509942) (not e!420788))))

(assert (=> b!754478 (= res!509942 (validKeyInArray!0 (select (arr!20047 a!3186) j!159)))))

(declare-fun b!754479 () Bool)

(declare-fun lt!335798 () SeekEntryResult!7654)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41874 (_ BitVec 32)) SeekEntryResult!7654)

(assert (=> b!754479 (= e!420791 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20047 a!3186) j!159) a!3186 mask!3328) lt!335798))))

(declare-fun b!754480 () Bool)

(assert (=> b!754480 (= e!420787 e!420789)))

(declare-fun res!509933 () Bool)

(assert (=> b!754480 (=> (not res!509933) (not e!420789))))

(declare-fun lt!335787 () SeekEntryResult!7654)

(assert (=> b!754480 (= res!509933 (= lt!335787 lt!335789))))

(assert (=> b!754480 (= lt!335789 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335797 lt!335788 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754480 (= lt!335787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335797 mask!3328) lt!335797 lt!335788 mask!3328))))

(assert (=> b!754480 (= lt!335797 (select (store (arr!20047 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!754480 (= lt!335788 (array!41875 (store (arr!20047 a!3186) i!1173 k0!2102) (size!20468 a!3186)))))

(declare-fun b!754481 () Bool)

(declare-fun res!509939 () Bool)

(assert (=> b!754481 (=> (not res!509939) (not e!420788))))

(assert (=> b!754481 (= res!509939 (and (= (size!20468 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20468 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20468 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754482 () Bool)

(declare-fun e!420798 () Bool)

(declare-fun e!420796 () Bool)

(assert (=> b!754482 (= e!420798 e!420796)))

(declare-fun res!509931 () Bool)

(assert (=> b!754482 (=> res!509931 e!420796)))

(declare-fun lt!335792 () (_ BitVec 64))

(assert (=> b!754482 (= res!509931 (= lt!335792 lt!335797))))

(assert (=> b!754482 (= lt!335792 (select (store (arr!20047 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!754483 () Bool)

(assert (=> b!754483 (= e!420796 true)))

(assert (=> b!754483 e!420792))

(declare-fun res!509936 () Bool)

(assert (=> b!754483 (=> (not res!509936) (not e!420792))))

(assert (=> b!754483 (= res!509936 (= lt!335792 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335796 () Unit!26018)

(assert (=> b!754483 (= lt!335796 e!420793)))

(declare-fun c!82649 () Bool)

(assert (=> b!754483 (= c!82649 (= lt!335792 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754484 () Bool)

(declare-fun Unit!26021 () Unit!26018)

(assert (=> b!754484 (= e!420793 Unit!26021)))

(declare-fun b!754485 () Bool)

(declare-fun res!509932 () Bool)

(assert (=> b!754485 (=> (not res!509932) (not e!420797))))

(declare-datatypes ((List!14102 0))(
  ( (Nil!14099) (Cons!14098 (h!15170 (_ BitVec 64)) (t!20425 List!14102)) )
))
(declare-fun arrayNoDuplicates!0 (array!41874 (_ BitVec 32) List!14102) Bool)

(assert (=> b!754485 (= res!509932 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14099))))

(declare-fun b!754486 () Bool)

(assert (=> b!754486 (= e!420797 e!420787)))

(declare-fun res!509941 () Bool)

(assert (=> b!754486 (=> (not res!509941) (not e!420787))))

(assert (=> b!754486 (= res!509941 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20047 a!3186) j!159) mask!3328) (select (arr!20047 a!3186) j!159) a!3186 mask!3328) lt!335798))))

(assert (=> b!754486 (= lt!335798 (Intermediate!7654 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754487 () Bool)

(declare-fun res!509938 () Bool)

(assert (=> b!754487 (=> (not res!509938) (not e!420787))))

(assert (=> b!754487 (= res!509938 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20047 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754488 () Bool)

(assert (=> b!754488 (= e!420795 e!420798)))

(declare-fun res!509944 () Bool)

(assert (=> b!754488 (=> res!509944 e!420798)))

(declare-fun lt!335793 () SeekEntryResult!7654)

(assert (=> b!754488 (= res!509944 (not (= lt!335793 lt!335794)))))

(assert (=> b!754488 (= lt!335793 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20047 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754489 () Bool)

(declare-fun res!509940 () Bool)

(assert (=> b!754489 (=> (not res!509940) (not e!420788))))

(declare-fun arrayContainsKey!0 (array!41874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754489 (= res!509940 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754490 () Bool)

(assert (=> b!754490 (= e!420792 (= lt!335791 lt!335793))))

(assert (= (and start!65748 res!509943) b!754481))

(assert (= (and b!754481 res!509939) b!754478))

(assert (= (and b!754478 res!509942) b!754468))

(assert (= (and b!754468 res!509935) b!754489))

(assert (= (and b!754489 res!509940) b!754471))

(assert (= (and b!754471 res!509945) b!754477))

(assert (= (and b!754477 res!509948) b!754485))

(assert (= (and b!754485 res!509932) b!754472))

(assert (= (and b!754472 res!509946) b!754486))

(assert (= (and b!754486 res!509941) b!754487))

(assert (= (and b!754487 res!509938) b!754470))

(assert (= (and b!754470 c!82650) b!754479))

(assert (= (and b!754470 (not c!82650)) b!754475))

(assert (= (and b!754470 res!509947) b!754480))

(assert (= (and b!754480 res!509933) b!754473))

(assert (= (and b!754473 res!509937) b!754474))

(assert (= (and b!754473 (not res!509934)) b!754488))

(assert (= (and b!754488 (not res!509944)) b!754482))

(assert (= (and b!754482 (not res!509931)) b!754483))

(assert (= (and b!754483 c!82649) b!754469))

(assert (= (and b!754483 (not c!82649)) b!754484))

(assert (= (and b!754483 res!509936) b!754476))

(assert (= (and b!754476 res!509949) b!754490))

(declare-fun m!702977 () Bool)

(assert (=> b!754474 m!702977))

(assert (=> b!754474 m!702977))

(declare-fun m!702979 () Bool)

(assert (=> b!754474 m!702979))

(declare-fun m!702981 () Bool)

(assert (=> b!754476 m!702981))

(declare-fun m!702983 () Bool)

(assert (=> b!754476 m!702983))

(assert (=> b!754488 m!702977))

(assert (=> b!754488 m!702977))

(declare-fun m!702985 () Bool)

(assert (=> b!754488 m!702985))

(declare-fun m!702987 () Bool)

(assert (=> b!754489 m!702987))

(declare-fun m!702989 () Bool)

(assert (=> b!754487 m!702989))

(declare-fun m!702991 () Bool)

(assert (=> b!754485 m!702991))

(declare-fun m!702993 () Bool)

(assert (=> start!65748 m!702993))

(declare-fun m!702995 () Bool)

(assert (=> start!65748 m!702995))

(assert (=> b!754473 m!702977))

(assert (=> b!754473 m!702977))

(declare-fun m!702997 () Bool)

(assert (=> b!754473 m!702997))

(declare-fun m!702999 () Bool)

(assert (=> b!754473 m!702999))

(declare-fun m!703001 () Bool)

(assert (=> b!754473 m!703001))

(assert (=> b!754479 m!702977))

(assert (=> b!754479 m!702977))

(declare-fun m!703003 () Bool)

(assert (=> b!754479 m!703003))

(declare-fun m!703005 () Bool)

(assert (=> b!754477 m!703005))

(declare-fun m!703007 () Bool)

(assert (=> b!754480 m!703007))

(declare-fun m!703009 () Bool)

(assert (=> b!754480 m!703009))

(declare-fun m!703011 () Bool)

(assert (=> b!754480 m!703011))

(assert (=> b!754480 m!703007))

(declare-fun m!703013 () Bool)

(assert (=> b!754480 m!703013))

(declare-fun m!703015 () Bool)

(assert (=> b!754480 m!703015))

(declare-fun m!703017 () Bool)

(assert (=> b!754471 m!703017))

(assert (=> b!754486 m!702977))

(assert (=> b!754486 m!702977))

(declare-fun m!703019 () Bool)

(assert (=> b!754486 m!703019))

(assert (=> b!754486 m!703019))

(assert (=> b!754486 m!702977))

(declare-fun m!703021 () Bool)

(assert (=> b!754486 m!703021))

(assert (=> b!754482 m!703015))

(declare-fun m!703023 () Bool)

(assert (=> b!754482 m!703023))

(declare-fun m!703025 () Bool)

(assert (=> b!754468 m!703025))

(assert (=> b!754475 m!702977))

(assert (=> b!754475 m!702977))

(assert (=> b!754475 m!702985))

(assert (=> b!754478 m!702977))

(assert (=> b!754478 m!702977))

(declare-fun m!703027 () Bool)

(assert (=> b!754478 m!703027))

(check-sat (not b!754488) (not b!754474) (not b!754489) (not b!754471) (not b!754479) (not b!754480) (not b!754476) (not b!754485) (not b!754475) (not b!754486) (not b!754477) (not start!65748) (not b!754468) (not b!754473) (not b!754478))
(check-sat)
