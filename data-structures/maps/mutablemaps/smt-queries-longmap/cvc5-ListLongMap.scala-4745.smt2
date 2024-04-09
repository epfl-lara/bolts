; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65548 () Bool)

(assert start!65548)

(declare-fun b!747789 () Bool)

(declare-fun res!504452 () Bool)

(declare-fun e!417470 () Bool)

(assert (=> b!747789 (=> (not res!504452) (not e!417470))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747789 (= res!504452 (validKeyInArray!0 k!2102))))

(declare-datatypes ((array!41674 0))(
  ( (array!41675 (arr!19947 (Array (_ BitVec 32) (_ BitVec 64))) (size!20368 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41674)

(declare-fun b!747790 () Bool)

(declare-fun e!417472 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7554 0))(
  ( (MissingZero!7554 (index!32583 (_ BitVec 32))) (Found!7554 (index!32584 (_ BitVec 32))) (Intermediate!7554 (undefined!8366 Bool) (index!32585 (_ BitVec 32)) (x!63553 (_ BitVec 32))) (Undefined!7554) (MissingVacant!7554 (index!32586 (_ BitVec 32))) )
))
(declare-fun lt!332423 () SeekEntryResult!7554)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41674 (_ BitVec 32)) SeekEntryResult!7554)

(assert (=> b!747790 (= e!417472 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19947 a!3186) j!159) a!3186 mask!3328) lt!332423))))

(declare-fun b!747791 () Bool)

(declare-fun res!504465 () Bool)

(declare-fun e!417476 () Bool)

(assert (=> b!747791 (=> res!504465 e!417476)))

(declare-fun lt!332421 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!747791 (= res!504465 (= (select (store (arr!19947 a!3186) i!1173 k!2102) index!1321) lt!332421))))

(declare-fun b!747792 () Bool)

(declare-fun e!417473 () Bool)

(assert (=> b!747792 (= e!417470 e!417473)))

(declare-fun res!504467 () Bool)

(assert (=> b!747792 (=> (not res!504467) (not e!417473))))

(declare-fun lt!332417 () SeekEntryResult!7554)

(assert (=> b!747792 (= res!504467 (or (= lt!332417 (MissingZero!7554 i!1173)) (= lt!332417 (MissingVacant!7554 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41674 (_ BitVec 32)) SeekEntryResult!7554)

(assert (=> b!747792 (= lt!332417 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747793 () Bool)

(declare-fun res!504458 () Bool)

(assert (=> b!747793 (=> (not res!504458) (not e!417473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41674 (_ BitVec 32)) Bool)

(assert (=> b!747793 (= res!504458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747794 () Bool)

(declare-fun res!504459 () Bool)

(assert (=> b!747794 (=> (not res!504459) (not e!417470))))

(assert (=> b!747794 (= res!504459 (validKeyInArray!0 (select (arr!19947 a!3186) j!159)))))

(declare-fun b!747795 () Bool)

(declare-fun res!504457 () Bool)

(assert (=> b!747795 (=> res!504457 e!417476)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!332420 () SeekEntryResult!7554)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41674 (_ BitVec 32)) SeekEntryResult!7554)

(assert (=> b!747795 (= res!504457 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19947 a!3186) j!159) a!3186 mask!3328) lt!332420)))))

(declare-fun b!747796 () Bool)

(assert (=> b!747796 (= e!417472 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19947 a!3186) j!159) a!3186 mask!3328) (Found!7554 j!159)))))

(declare-fun res!504460 () Bool)

(assert (=> start!65548 (=> (not res!504460) (not e!417470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65548 (= res!504460 (validMask!0 mask!3328))))

(assert (=> start!65548 e!417470))

(assert (=> start!65548 true))

(declare-fun array_inv!15721 (array!41674) Bool)

(assert (=> start!65548 (array_inv!15721 a!3186)))

(declare-fun b!747797 () Bool)

(declare-datatypes ((Unit!25618 0))(
  ( (Unit!25619) )
))
(declare-fun e!417475 () Unit!25618)

(declare-fun Unit!25620 () Unit!25618)

(assert (=> b!747797 (= e!417475 Unit!25620)))

(assert (=> b!747797 false))

(declare-fun b!747798 () Bool)

(declare-fun res!504454 () Bool)

(assert (=> b!747798 (=> (not res!504454) (not e!417470))))

(declare-fun arrayContainsKey!0 (array!41674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747798 (= res!504454 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747799 () Bool)

(declare-fun res!504455 () Bool)

(assert (=> b!747799 (=> (not res!504455) (not e!417473))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747799 (= res!504455 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20368 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20368 a!3186))))))

(declare-fun b!747800 () Bool)

(declare-fun e!417469 () Bool)

(assert (=> b!747800 (= e!417469 (not e!417476))))

(declare-fun res!504462 () Bool)

(assert (=> b!747800 (=> res!504462 e!417476)))

(declare-fun lt!332425 () SeekEntryResult!7554)

(assert (=> b!747800 (= res!504462 (or (not (is-Intermediate!7554 lt!332425)) (bvslt x!1131 (x!63553 lt!332425)) (not (= x!1131 (x!63553 lt!332425))) (not (= index!1321 (index!32585 lt!332425)))))))

(declare-fun e!417477 () Bool)

(assert (=> b!747800 e!417477))

(declare-fun res!504456 () Bool)

(assert (=> b!747800 (=> (not res!504456) (not e!417477))))

(declare-fun lt!332426 () SeekEntryResult!7554)

(assert (=> b!747800 (= res!504456 (= lt!332426 lt!332420))))

(assert (=> b!747800 (= lt!332420 (Found!7554 j!159))))

(assert (=> b!747800 (= lt!332426 (seekEntryOrOpen!0 (select (arr!19947 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747800 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332422 () Unit!25618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25618)

(assert (=> b!747800 (= lt!332422 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747801 () Bool)

(declare-fun res!504453 () Bool)

(assert (=> b!747801 (=> (not res!504453) (not e!417473))))

(declare-datatypes ((List!14002 0))(
  ( (Nil!13999) (Cons!13998 (h!15070 (_ BitVec 64)) (t!20325 List!14002)) )
))
(declare-fun arrayNoDuplicates!0 (array!41674 (_ BitVec 32) List!14002) Bool)

(assert (=> b!747801 (= res!504453 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13999))))

(declare-fun b!747802 () Bool)

(declare-fun e!417471 () Bool)

(assert (=> b!747802 (= e!417473 e!417471)))

(declare-fun res!504463 () Bool)

(assert (=> b!747802 (=> (not res!504463) (not e!417471))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747802 (= res!504463 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19947 a!3186) j!159) mask!3328) (select (arr!19947 a!3186) j!159) a!3186 mask!3328) lt!332423))))

(assert (=> b!747802 (= lt!332423 (Intermediate!7554 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747803 () Bool)

(declare-fun res!504466 () Bool)

(assert (=> b!747803 (=> (not res!504466) (not e!417471))))

(assert (=> b!747803 (= res!504466 e!417472)))

(declare-fun c!82049 () Bool)

(assert (=> b!747803 (= c!82049 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747804 () Bool)

(declare-fun Unit!25621 () Unit!25618)

(assert (=> b!747804 (= e!417475 Unit!25621)))

(declare-fun b!747805 () Bool)

(assert (=> b!747805 (= e!417477 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19947 a!3186) j!159) a!3186 mask!3328) lt!332420))))

(declare-fun b!747806 () Bool)

(declare-fun res!504464 () Bool)

(assert (=> b!747806 (=> (not res!504464) (not e!417470))))

(assert (=> b!747806 (= res!504464 (and (= (size!20368 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20368 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20368 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747807 () Bool)

(assert (=> b!747807 (= e!417476 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!747807 (= (select (store (arr!19947 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332424 () Unit!25618)

(assert (=> b!747807 (= lt!332424 e!417475)))

(declare-fun c!82050 () Bool)

(assert (=> b!747807 (= c!82050 (= (select (store (arr!19947 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747808 () Bool)

(declare-fun res!504468 () Bool)

(assert (=> b!747808 (=> (not res!504468) (not e!417471))))

(assert (=> b!747808 (= res!504468 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19947 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747809 () Bool)

(assert (=> b!747809 (= e!417471 e!417469)))

(declare-fun res!504461 () Bool)

(assert (=> b!747809 (=> (not res!504461) (not e!417469))))

(declare-fun lt!332419 () SeekEntryResult!7554)

(assert (=> b!747809 (= res!504461 (= lt!332419 lt!332425))))

(declare-fun lt!332418 () array!41674)

(assert (=> b!747809 (= lt!332425 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332421 lt!332418 mask!3328))))

(assert (=> b!747809 (= lt!332419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332421 mask!3328) lt!332421 lt!332418 mask!3328))))

(assert (=> b!747809 (= lt!332421 (select (store (arr!19947 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747809 (= lt!332418 (array!41675 (store (arr!19947 a!3186) i!1173 k!2102) (size!20368 a!3186)))))

(assert (= (and start!65548 res!504460) b!747806))

(assert (= (and b!747806 res!504464) b!747794))

(assert (= (and b!747794 res!504459) b!747789))

(assert (= (and b!747789 res!504452) b!747798))

(assert (= (and b!747798 res!504454) b!747792))

(assert (= (and b!747792 res!504467) b!747793))

(assert (= (and b!747793 res!504458) b!747801))

(assert (= (and b!747801 res!504453) b!747799))

(assert (= (and b!747799 res!504455) b!747802))

(assert (= (and b!747802 res!504463) b!747808))

(assert (= (and b!747808 res!504468) b!747803))

(assert (= (and b!747803 c!82049) b!747790))

(assert (= (and b!747803 (not c!82049)) b!747796))

(assert (= (and b!747803 res!504466) b!747809))

(assert (= (and b!747809 res!504461) b!747800))

(assert (= (and b!747800 res!504456) b!747805))

(assert (= (and b!747800 (not res!504462)) b!747795))

(assert (= (and b!747795 (not res!504457)) b!747791))

(assert (= (and b!747791 (not res!504465)) b!747807))

(assert (= (and b!747807 c!82050) b!747797))

(assert (= (and b!747807 (not c!82050)) b!747804))

(declare-fun m!697855 () Bool)

(assert (=> b!747801 m!697855))

(declare-fun m!697857 () Bool)

(assert (=> b!747793 m!697857))

(declare-fun m!697859 () Bool)

(assert (=> b!747790 m!697859))

(assert (=> b!747790 m!697859))

(declare-fun m!697861 () Bool)

(assert (=> b!747790 m!697861))

(declare-fun m!697863 () Bool)

(assert (=> start!65548 m!697863))

(declare-fun m!697865 () Bool)

(assert (=> start!65548 m!697865))

(declare-fun m!697867 () Bool)

(assert (=> b!747798 m!697867))

(assert (=> b!747800 m!697859))

(assert (=> b!747800 m!697859))

(declare-fun m!697869 () Bool)

(assert (=> b!747800 m!697869))

(declare-fun m!697871 () Bool)

(assert (=> b!747800 m!697871))

(declare-fun m!697873 () Bool)

(assert (=> b!747800 m!697873))

(assert (=> b!747795 m!697859))

(assert (=> b!747795 m!697859))

(declare-fun m!697875 () Bool)

(assert (=> b!747795 m!697875))

(declare-fun m!697877 () Bool)

(assert (=> b!747792 m!697877))

(declare-fun m!697879 () Bool)

(assert (=> b!747809 m!697879))

(declare-fun m!697881 () Bool)

(assert (=> b!747809 m!697881))

(declare-fun m!697883 () Bool)

(assert (=> b!747809 m!697883))

(declare-fun m!697885 () Bool)

(assert (=> b!747809 m!697885))

(assert (=> b!747809 m!697881))

(declare-fun m!697887 () Bool)

(assert (=> b!747809 m!697887))

(assert (=> b!747807 m!697883))

(declare-fun m!697889 () Bool)

(assert (=> b!747807 m!697889))

(assert (=> b!747794 m!697859))

(assert (=> b!747794 m!697859))

(declare-fun m!697891 () Bool)

(assert (=> b!747794 m!697891))

(assert (=> b!747805 m!697859))

(assert (=> b!747805 m!697859))

(declare-fun m!697893 () Bool)

(assert (=> b!747805 m!697893))

(assert (=> b!747796 m!697859))

(assert (=> b!747796 m!697859))

(assert (=> b!747796 m!697875))

(assert (=> b!747802 m!697859))

(assert (=> b!747802 m!697859))

(declare-fun m!697895 () Bool)

(assert (=> b!747802 m!697895))

(assert (=> b!747802 m!697895))

(assert (=> b!747802 m!697859))

(declare-fun m!697897 () Bool)

(assert (=> b!747802 m!697897))

(declare-fun m!697899 () Bool)

(assert (=> b!747789 m!697899))

(assert (=> b!747791 m!697883))

(assert (=> b!747791 m!697889))

(declare-fun m!697901 () Bool)

(assert (=> b!747808 m!697901))

(push 1)

