; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65856 () Bool)

(assert start!65856)

(declare-fun b!758189 () Bool)

(declare-fun e!422740 () Bool)

(declare-fun e!422738 () Bool)

(assert (=> b!758189 (= e!422740 e!422738)))

(declare-fun res!513006 () Bool)

(assert (=> b!758189 (=> (not res!513006) (not e!422738))))

(declare-datatypes ((SeekEntryResult!7708 0))(
  ( (MissingZero!7708 (index!33199 (_ BitVec 32))) (Found!7708 (index!33200 (_ BitVec 32))) (Intermediate!7708 (undefined!8520 Bool) (index!33201 (_ BitVec 32)) (x!64115 (_ BitVec 32))) (Undefined!7708) (MissingVacant!7708 (index!33202 (_ BitVec 32))) )
))
(declare-fun lt!337746 () SeekEntryResult!7708)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758189 (= res!513006 (or (= lt!337746 (MissingZero!7708 i!1173)) (= lt!337746 (MissingVacant!7708 i!1173))))))

(declare-datatypes ((array!41982 0))(
  ( (array!41983 (arr!20101 (Array (_ BitVec 32) (_ BitVec 64))) (size!20522 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41982)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41982 (_ BitVec 32)) SeekEntryResult!7708)

(assert (=> b!758189 (= lt!337746 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!513018 () Bool)

(assert (=> start!65856 (=> (not res!513018) (not e!422740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65856 (= res!513018 (validMask!0 mask!3328))))

(assert (=> start!65856 e!422740))

(assert (=> start!65856 true))

(declare-fun array_inv!15875 (array!41982) Bool)

(assert (=> start!65856 (array_inv!15875 a!3186)))

(declare-fun b!758190 () Bool)

(declare-datatypes ((Unit!26234 0))(
  ( (Unit!26235) )
))
(declare-fun e!422741 () Unit!26234)

(declare-fun Unit!26236 () Unit!26234)

(assert (=> b!758190 (= e!422741 Unit!26236)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!758191 () Bool)

(declare-fun lt!337755 () SeekEntryResult!7708)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!422731 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41982 (_ BitVec 32)) SeekEntryResult!7708)

(assert (=> b!758191 (= e!422731 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20101 a!3186) j!159) a!3186 mask!3328) lt!337755))))

(declare-fun b!758192 () Bool)

(declare-fun e!422737 () Bool)

(declare-fun e!422736 () Bool)

(assert (=> b!758192 (= e!422737 (not e!422736))))

(declare-fun res!513014 () Bool)

(assert (=> b!758192 (=> res!513014 e!422736)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!337752 () SeekEntryResult!7708)

(get-info :version)

(assert (=> b!758192 (= res!513014 (or (not ((_ is Intermediate!7708) lt!337752)) (bvslt x!1131 (x!64115 lt!337752)) (not (= x!1131 (x!64115 lt!337752))) (not (= index!1321 (index!33201 lt!337752)))))))

(assert (=> b!758192 e!422731))

(declare-fun res!513016 () Bool)

(assert (=> b!758192 (=> (not res!513016) (not e!422731))))

(declare-fun lt!337749 () SeekEntryResult!7708)

(assert (=> b!758192 (= res!513016 (= lt!337749 lt!337755))))

(assert (=> b!758192 (= lt!337755 (Found!7708 j!159))))

(assert (=> b!758192 (= lt!337749 (seekEntryOrOpen!0 (select (arr!20101 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41982 (_ BitVec 32)) Bool)

(assert (=> b!758192 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337747 () Unit!26234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41982 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26234)

(assert (=> b!758192 (= lt!337747 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758193 () Bool)

(declare-fun e!422735 () Bool)

(declare-fun e!422734 () Bool)

(assert (=> b!758193 (= e!422735 e!422734)))

(declare-fun res!513021 () Bool)

(assert (=> b!758193 (=> res!513021 e!422734)))

(assert (=> b!758193 (= res!513021 (or (not (= (select (arr!20101 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!337754 () SeekEntryResult!7708)

(declare-fun lt!337751 () SeekEntryResult!7708)

(declare-fun lt!337760 () SeekEntryResult!7708)

(assert (=> b!758193 (and (= lt!337760 lt!337754) (= lt!337749 lt!337751))))

(declare-fun lt!337756 () (_ BitVec 64))

(declare-fun lt!337757 () array!41982)

(assert (=> b!758193 (= lt!337754 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337756 lt!337757 mask!3328))))

(assert (=> b!758193 (= lt!337760 (seekEntryOrOpen!0 lt!337756 lt!337757 mask!3328))))

(declare-fun lt!337748 () (_ BitVec 64))

(assert (=> b!758193 (= lt!337748 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!337753 () Unit!26234)

(assert (=> b!758193 (= lt!337753 e!422741)))

(declare-fun c!82974 () Bool)

(assert (=> b!758193 (= c!82974 (= lt!337748 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758194 () Bool)

(declare-fun res!513017 () Bool)

(assert (=> b!758194 (=> (not res!513017) (not e!422740))))

(declare-fun arrayContainsKey!0 (array!41982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758194 (= res!513017 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758195 () Bool)

(declare-fun res!513008 () Bool)

(declare-fun e!422733 () Bool)

(assert (=> b!758195 (=> (not res!513008) (not e!422733))))

(assert (=> b!758195 (= res!513008 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20101 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758196 () Bool)

(declare-fun res!513004 () Bool)

(assert (=> b!758196 (=> (not res!513004) (not e!422738))))

(assert (=> b!758196 (= res!513004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758197 () Bool)

(declare-fun res!513019 () Bool)

(assert (=> b!758197 (=> (not res!513019) (not e!422738))))

(declare-datatypes ((List!14156 0))(
  ( (Nil!14153) (Cons!14152 (h!15224 (_ BitVec 64)) (t!20479 List!14156)) )
))
(declare-fun arrayNoDuplicates!0 (array!41982 (_ BitVec 32) List!14156) Bool)

(assert (=> b!758197 (= res!513019 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14153))))

(declare-fun e!422739 () Bool)

(declare-fun b!758198 () Bool)

(declare-fun lt!337758 () SeekEntryResult!7708)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41982 (_ BitVec 32)) SeekEntryResult!7708)

(assert (=> b!758198 (= e!422739 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20101 a!3186) j!159) a!3186 mask!3328) lt!337758))))

(declare-fun b!758199 () Bool)

(declare-fun res!513005 () Bool)

(assert (=> b!758199 (=> (not res!513005) (not e!422733))))

(assert (=> b!758199 (= res!513005 e!422739)))

(declare-fun c!82973 () Bool)

(assert (=> b!758199 (= c!82973 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758200 () Bool)

(declare-fun e!422732 () Bool)

(assert (=> b!758200 (= e!422732 e!422735)))

(declare-fun res!513009 () Bool)

(assert (=> b!758200 (=> res!513009 e!422735)))

(assert (=> b!758200 (= res!513009 (= lt!337748 lt!337756))))

(assert (=> b!758200 (= lt!337748 (select (store (arr!20101 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!758201 () Bool)

(declare-fun res!513015 () Bool)

(assert (=> b!758201 (=> (not res!513015) (not e!422738))))

(assert (=> b!758201 (= res!513015 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20522 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20522 a!3186))))))

(declare-fun b!758202 () Bool)

(assert (=> b!758202 (= e!422739 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20101 a!3186) j!159) a!3186 mask!3328) (Found!7708 j!159)))))

(declare-fun b!758203 () Bool)

(assert (=> b!758203 (= e!422734 true)))

(assert (=> b!758203 (= lt!337754 lt!337751)))

(declare-fun lt!337750 () Unit!26234)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41982 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26234)

(assert (=> b!758203 (= lt!337750 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758204 () Bool)

(declare-fun res!513010 () Bool)

(assert (=> b!758204 (=> (not res!513010) (not e!422740))))

(assert (=> b!758204 (= res!513010 (and (= (size!20522 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20522 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20522 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758205 () Bool)

(assert (=> b!758205 (= e!422738 e!422733)))

(declare-fun res!513013 () Bool)

(assert (=> b!758205 (=> (not res!513013) (not e!422733))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758205 (= res!513013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20101 a!3186) j!159) mask!3328) (select (arr!20101 a!3186) j!159) a!3186 mask!3328) lt!337758))))

(assert (=> b!758205 (= lt!337758 (Intermediate!7708 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758206 () Bool)

(declare-fun Unit!26237 () Unit!26234)

(assert (=> b!758206 (= e!422741 Unit!26237)))

(assert (=> b!758206 false))

(declare-fun b!758207 () Bool)

(declare-fun res!513020 () Bool)

(assert (=> b!758207 (=> (not res!513020) (not e!422740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758207 (= res!513020 (validKeyInArray!0 k0!2102))))

(declare-fun b!758208 () Bool)

(assert (=> b!758208 (= e!422733 e!422737)))

(declare-fun res!513012 () Bool)

(assert (=> b!758208 (=> (not res!513012) (not e!422737))))

(declare-fun lt!337759 () SeekEntryResult!7708)

(assert (=> b!758208 (= res!513012 (= lt!337759 lt!337752))))

(assert (=> b!758208 (= lt!337752 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337756 lt!337757 mask!3328))))

(assert (=> b!758208 (= lt!337759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337756 mask!3328) lt!337756 lt!337757 mask!3328))))

(assert (=> b!758208 (= lt!337756 (select (store (arr!20101 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!758208 (= lt!337757 (array!41983 (store (arr!20101 a!3186) i!1173 k0!2102) (size!20522 a!3186)))))

(declare-fun b!758209 () Bool)

(declare-fun res!513007 () Bool)

(assert (=> b!758209 (=> (not res!513007) (not e!422740))))

(assert (=> b!758209 (= res!513007 (validKeyInArray!0 (select (arr!20101 a!3186) j!159)))))

(declare-fun b!758210 () Bool)

(assert (=> b!758210 (= e!422736 e!422732)))

(declare-fun res!513011 () Bool)

(assert (=> b!758210 (=> res!513011 e!422732)))

(assert (=> b!758210 (= res!513011 (not (= lt!337751 lt!337755)))))

(assert (=> b!758210 (= lt!337751 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20101 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!65856 res!513018) b!758204))

(assert (= (and b!758204 res!513010) b!758209))

(assert (= (and b!758209 res!513007) b!758207))

(assert (= (and b!758207 res!513020) b!758194))

(assert (= (and b!758194 res!513017) b!758189))

(assert (= (and b!758189 res!513006) b!758196))

(assert (= (and b!758196 res!513004) b!758197))

(assert (= (and b!758197 res!513019) b!758201))

(assert (= (and b!758201 res!513015) b!758205))

(assert (= (and b!758205 res!513013) b!758195))

(assert (= (and b!758195 res!513008) b!758199))

(assert (= (and b!758199 c!82973) b!758198))

(assert (= (and b!758199 (not c!82973)) b!758202))

(assert (= (and b!758199 res!513005) b!758208))

(assert (= (and b!758208 res!513012) b!758192))

(assert (= (and b!758192 res!513016) b!758191))

(assert (= (and b!758192 (not res!513014)) b!758210))

(assert (= (and b!758210 (not res!513011)) b!758200))

(assert (= (and b!758200 (not res!513009)) b!758193))

(assert (= (and b!758193 c!82974) b!758206))

(assert (= (and b!758193 (not c!82974)) b!758190))

(assert (= (and b!758193 (not res!513021)) b!758203))

(declare-fun m!705789 () Bool)

(assert (=> b!758205 m!705789))

(assert (=> b!758205 m!705789))

(declare-fun m!705791 () Bool)

(assert (=> b!758205 m!705791))

(assert (=> b!758205 m!705791))

(assert (=> b!758205 m!705789))

(declare-fun m!705793 () Bool)

(assert (=> b!758205 m!705793))

(declare-fun m!705795 () Bool)

(assert (=> b!758195 m!705795))

(declare-fun m!705797 () Bool)

(assert (=> b!758193 m!705797))

(declare-fun m!705799 () Bool)

(assert (=> b!758193 m!705799))

(declare-fun m!705801 () Bool)

(assert (=> b!758193 m!705801))

(assert (=> b!758191 m!705789))

(assert (=> b!758191 m!705789))

(declare-fun m!705803 () Bool)

(assert (=> b!758191 m!705803))

(declare-fun m!705805 () Bool)

(assert (=> b!758196 m!705805))

(assert (=> b!758210 m!705789))

(assert (=> b!758210 m!705789))

(declare-fun m!705807 () Bool)

(assert (=> b!758210 m!705807))

(assert (=> b!758202 m!705789))

(assert (=> b!758202 m!705789))

(assert (=> b!758202 m!705807))

(assert (=> b!758192 m!705789))

(assert (=> b!758192 m!705789))

(declare-fun m!705809 () Bool)

(assert (=> b!758192 m!705809))

(declare-fun m!705811 () Bool)

(assert (=> b!758192 m!705811))

(declare-fun m!705813 () Bool)

(assert (=> b!758192 m!705813))

(declare-fun m!705815 () Bool)

(assert (=> b!758189 m!705815))

(declare-fun m!705817 () Bool)

(assert (=> b!758208 m!705817))

(declare-fun m!705819 () Bool)

(assert (=> b!758208 m!705819))

(declare-fun m!705821 () Bool)

(assert (=> b!758208 m!705821))

(assert (=> b!758208 m!705817))

(declare-fun m!705823 () Bool)

(assert (=> b!758208 m!705823))

(declare-fun m!705825 () Bool)

(assert (=> b!758208 m!705825))

(declare-fun m!705827 () Bool)

(assert (=> b!758207 m!705827))

(declare-fun m!705829 () Bool)

(assert (=> b!758194 m!705829))

(declare-fun m!705831 () Bool)

(assert (=> start!65856 m!705831))

(declare-fun m!705833 () Bool)

(assert (=> start!65856 m!705833))

(declare-fun m!705835 () Bool)

(assert (=> b!758203 m!705835))

(assert (=> b!758209 m!705789))

(assert (=> b!758209 m!705789))

(declare-fun m!705837 () Bool)

(assert (=> b!758209 m!705837))

(assert (=> b!758198 m!705789))

(assert (=> b!758198 m!705789))

(declare-fun m!705839 () Bool)

(assert (=> b!758198 m!705839))

(declare-fun m!705841 () Bool)

(assert (=> b!758197 m!705841))

(assert (=> b!758200 m!705819))

(declare-fun m!705843 () Bool)

(assert (=> b!758200 m!705843))

(check-sat (not b!758189) (not b!758197) (not b!758198) (not b!758208) (not b!758194) (not b!758191) (not b!758196) (not b!758207) (not b!758202) (not b!758192) (not b!758205) (not b!758210) (not start!65856) (not b!758203) (not b!758209) (not b!758193))
(check-sat)
