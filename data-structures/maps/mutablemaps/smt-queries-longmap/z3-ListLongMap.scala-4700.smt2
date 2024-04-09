; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65280 () Bool)

(assert start!65280)

(declare-datatypes ((array!41406 0))(
  ( (array!41407 (arr!19813 (Array (_ BitVec 32) (_ BitVec 64))) (size!20234 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41406)

(declare-fun b!740087 () Bool)

(declare-datatypes ((SeekEntryResult!7420 0))(
  ( (MissingZero!7420 (index!32047 (_ BitVec 32))) (Found!7420 (index!32048 (_ BitVec 32))) (Intermediate!7420 (undefined!8232 Bool) (index!32049 (_ BitVec 32)) (x!63059 (_ BitVec 32))) (Undefined!7420) (MissingVacant!7420 (index!32050 (_ BitVec 32))) )
))
(declare-fun lt!328766 () SeekEntryResult!7420)

(declare-fun e!413818 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!328759 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41406 (_ BitVec 32)) SeekEntryResult!7420)

(assert (=> b!740087 (= e!413818 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328759 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328766)))))

(declare-fun b!740088 () Bool)

(declare-fun res!497784 () Bool)

(declare-fun e!413821 () Bool)

(assert (=> b!740088 (=> (not res!497784) (not e!413821))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!740088 (= res!497784 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20234 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20234 a!3186))))))

(declare-fun res!497777 () Bool)

(declare-fun e!413817 () Bool)

(assert (=> start!65280 (=> (not res!497777) (not e!413817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65280 (= res!497777 (validMask!0 mask!3328))))

(assert (=> start!65280 e!413817))

(assert (=> start!65280 true))

(declare-fun array_inv!15587 (array!41406) Bool)

(assert (=> start!65280 (array_inv!15587 a!3186)))

(declare-fun b!740089 () Bool)

(declare-fun res!497785 () Bool)

(declare-fun e!413820 () Bool)

(assert (=> b!740089 (=> (not res!497785) (not e!413820))))

(declare-fun e!413822 () Bool)

(assert (=> b!740089 (= res!497785 e!413822)))

(declare-fun c!81539 () Bool)

(assert (=> b!740089 (= c!81539 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740090 () Bool)

(declare-fun e!413814 () Bool)

(declare-fun e!413812 () Bool)

(assert (=> b!740090 (= e!413814 e!413812)))

(declare-fun res!497775 () Bool)

(assert (=> b!740090 (=> res!497775 e!413812)))

(assert (=> b!740090 (= res!497775 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328759 #b00000000000000000000000000000000) (bvsge lt!328759 (size!20234 a!3186))))))

(declare-datatypes ((Unit!25298 0))(
  ( (Unit!25299) )
))
(declare-fun lt!328762 () Unit!25298)

(declare-fun e!413823 () Unit!25298)

(assert (=> b!740090 (= lt!328762 e!413823)))

(declare-fun c!81540 () Bool)

(declare-fun lt!328769 () Bool)

(assert (=> b!740090 (= c!81540 lt!328769)))

(assert (=> b!740090 (= lt!328769 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740090 (= lt!328759 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740091 () Bool)

(declare-fun res!497788 () Bool)

(assert (=> b!740091 (=> (not res!497788) (not e!413817))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740091 (= res!497788 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740092 () Bool)

(declare-fun lt!328768 () SeekEntryResult!7420)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41406 (_ BitVec 32)) SeekEntryResult!7420)

(assert (=> b!740092 (= e!413818 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328759 resIntermediateIndex!5 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328768)))))

(declare-fun b!740093 () Bool)

(assert (=> b!740093 (= e!413822 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328766))))

(declare-fun b!740094 () Bool)

(declare-fun e!413816 () Bool)

(assert (=> b!740094 (= e!413816 (not e!413814))))

(declare-fun res!497776 () Bool)

(assert (=> b!740094 (=> res!497776 e!413814)))

(declare-fun lt!328771 () SeekEntryResult!7420)

(get-info :version)

(assert (=> b!740094 (= res!497776 (or (not ((_ is Intermediate!7420) lt!328771)) (bvsge x!1131 (x!63059 lt!328771))))))

(assert (=> b!740094 (= lt!328768 (Found!7420 j!159))))

(declare-fun e!413819 () Bool)

(assert (=> b!740094 e!413819))

(declare-fun res!497779 () Bool)

(assert (=> b!740094 (=> (not res!497779) (not e!413819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41406 (_ BitVec 32)) Bool)

(assert (=> b!740094 (= res!497779 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328770 () Unit!25298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41406 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25298)

(assert (=> b!740094 (= lt!328770 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740095 () Bool)

(declare-fun Unit!25300 () Unit!25298)

(assert (=> b!740095 (= e!413823 Unit!25300)))

(declare-fun lt!328765 () SeekEntryResult!7420)

(assert (=> b!740095 (= lt!328765 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19813 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740095 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328759 resIntermediateIndex!5 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328768)))

(declare-fun b!740096 () Bool)

(assert (=> b!740096 (= e!413820 e!413816)))

(declare-fun res!497773 () Bool)

(assert (=> b!740096 (=> (not res!497773) (not e!413816))))

(declare-fun lt!328767 () SeekEntryResult!7420)

(assert (=> b!740096 (= res!497773 (= lt!328767 lt!328771))))

(declare-fun lt!328761 () array!41406)

(declare-fun lt!328760 () (_ BitVec 64))

(assert (=> b!740096 (= lt!328771 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328760 lt!328761 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740096 (= lt!328767 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328760 mask!3328) lt!328760 lt!328761 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740096 (= lt!328760 (select (store (arr!19813 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!740096 (= lt!328761 (array!41407 (store (arr!19813 a!3186) i!1173 k0!2102) (size!20234 a!3186)))))

(declare-fun b!740097 () Bool)

(declare-fun Unit!25301 () Unit!25298)

(assert (=> b!740097 (= e!413823 Unit!25301)))

(assert (=> b!740097 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328759 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328766)))

(declare-fun lt!328764 () SeekEntryResult!7420)

(declare-fun e!413815 () Bool)

(declare-fun b!740098 () Bool)

(assert (=> b!740098 (= e!413815 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328764))))

(declare-fun b!740099 () Bool)

(assert (=> b!740099 (= e!413819 e!413815)))

(declare-fun res!497790 () Bool)

(assert (=> b!740099 (=> (not res!497790) (not e!413815))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41406 (_ BitVec 32)) SeekEntryResult!7420)

(assert (=> b!740099 (= res!497790 (= (seekEntryOrOpen!0 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328764))))

(assert (=> b!740099 (= lt!328764 (Found!7420 j!159))))

(declare-fun b!740100 () Bool)

(assert (=> b!740100 (= e!413817 e!413821)))

(declare-fun res!497781 () Bool)

(assert (=> b!740100 (=> (not res!497781) (not e!413821))))

(declare-fun lt!328763 () SeekEntryResult!7420)

(assert (=> b!740100 (= res!497781 (or (= lt!328763 (MissingZero!7420 i!1173)) (= lt!328763 (MissingVacant!7420 i!1173))))))

(assert (=> b!740100 (= lt!328763 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!740101 () Bool)

(declare-fun res!497774 () Bool)

(assert (=> b!740101 (=> (not res!497774) (not e!413817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740101 (= res!497774 (validKeyInArray!0 (select (arr!19813 a!3186) j!159)))))

(declare-fun b!740102 () Bool)

(declare-fun res!497780 () Bool)

(assert (=> b!740102 (=> (not res!497780) (not e!413817))))

(assert (=> b!740102 (= res!497780 (and (= (size!20234 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20234 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20234 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740103 () Bool)

(declare-fun res!497778 () Bool)

(assert (=> b!740103 (=> (not res!497778) (not e!413817))))

(assert (=> b!740103 (= res!497778 (validKeyInArray!0 k0!2102))))

(declare-fun b!740104 () Bool)

(declare-fun res!497783 () Bool)

(assert (=> b!740104 (=> res!497783 e!413812)))

(assert (=> b!740104 (= res!497783 e!413818)))

(declare-fun c!81538 () Bool)

(assert (=> b!740104 (= c!81538 lt!328769)))

(declare-fun b!740105 () Bool)

(assert (=> b!740105 (= e!413812 true)))

(assert (=> b!740105 (= (seekEntryOrOpen!0 lt!328760 lt!328761 mask!3328) lt!328768)))

(declare-fun lt!328772 () Unit!25298)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41406 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25298)

(assert (=> b!740105 (= lt!328772 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!328759 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740106 () Bool)

(declare-fun res!497789 () Bool)

(assert (=> b!740106 (=> (not res!497789) (not e!413820))))

(assert (=> b!740106 (= res!497789 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19813 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740107 () Bool)

(declare-fun res!497786 () Bool)

(assert (=> b!740107 (=> (not res!497786) (not e!413821))))

(assert (=> b!740107 (= res!497786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740108 () Bool)

(assert (=> b!740108 (= e!413822 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19813 a!3186) j!159) a!3186 mask!3328) (Found!7420 j!159)))))

(declare-fun b!740109 () Bool)

(assert (=> b!740109 (= e!413821 e!413820)))

(declare-fun res!497772 () Bool)

(assert (=> b!740109 (=> (not res!497772) (not e!413820))))

(assert (=> b!740109 (= res!497772 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19813 a!3186) j!159) mask!3328) (select (arr!19813 a!3186) j!159) a!3186 mask!3328) lt!328766))))

(assert (=> b!740109 (= lt!328766 (Intermediate!7420 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740110 () Bool)

(declare-fun res!497782 () Bool)

(assert (=> b!740110 (=> (not res!497782) (not e!413821))))

(declare-datatypes ((List!13868 0))(
  ( (Nil!13865) (Cons!13864 (h!14936 (_ BitVec 64)) (t!20191 List!13868)) )
))
(declare-fun arrayNoDuplicates!0 (array!41406 (_ BitVec 32) List!13868) Bool)

(assert (=> b!740110 (= res!497782 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13865))))

(declare-fun b!740111 () Bool)

(declare-fun res!497787 () Bool)

(assert (=> b!740111 (=> res!497787 e!413812)))

(assert (=> b!740111 (= res!497787 (not (= lt!328767 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328759 lt!328760 lt!328761 mask!3328))))))

(assert (= (and start!65280 res!497777) b!740102))

(assert (= (and b!740102 res!497780) b!740101))

(assert (= (and b!740101 res!497774) b!740103))

(assert (= (and b!740103 res!497778) b!740091))

(assert (= (and b!740091 res!497788) b!740100))

(assert (= (and b!740100 res!497781) b!740107))

(assert (= (and b!740107 res!497786) b!740110))

(assert (= (and b!740110 res!497782) b!740088))

(assert (= (and b!740088 res!497784) b!740109))

(assert (= (and b!740109 res!497772) b!740106))

(assert (= (and b!740106 res!497789) b!740089))

(assert (= (and b!740089 c!81539) b!740093))

(assert (= (and b!740089 (not c!81539)) b!740108))

(assert (= (and b!740089 res!497785) b!740096))

(assert (= (and b!740096 res!497773) b!740094))

(assert (= (and b!740094 res!497779) b!740099))

(assert (= (and b!740099 res!497790) b!740098))

(assert (= (and b!740094 (not res!497776)) b!740090))

(assert (= (and b!740090 c!81540) b!740097))

(assert (= (and b!740090 (not c!81540)) b!740095))

(assert (= (and b!740090 (not res!497775)) b!740104))

(assert (= (and b!740104 c!81538) b!740087))

(assert (= (and b!740104 (not c!81538)) b!740092))

(assert (= (and b!740104 (not res!497783)) b!740111))

(assert (= (and b!740111 (not res!497787)) b!740105))

(declare-fun m!691373 () Bool)

(assert (=> b!740110 m!691373))

(declare-fun m!691375 () Bool)

(assert (=> b!740094 m!691375))

(declare-fun m!691377 () Bool)

(assert (=> b!740094 m!691377))

(declare-fun m!691379 () Bool)

(assert (=> b!740099 m!691379))

(assert (=> b!740099 m!691379))

(declare-fun m!691381 () Bool)

(assert (=> b!740099 m!691381))

(declare-fun m!691383 () Bool)

(assert (=> b!740111 m!691383))

(assert (=> b!740101 m!691379))

(assert (=> b!740101 m!691379))

(declare-fun m!691385 () Bool)

(assert (=> b!740101 m!691385))

(declare-fun m!691387 () Bool)

(assert (=> b!740091 m!691387))

(assert (=> b!740095 m!691379))

(assert (=> b!740095 m!691379))

(declare-fun m!691389 () Bool)

(assert (=> b!740095 m!691389))

(assert (=> b!740095 m!691379))

(declare-fun m!691391 () Bool)

(assert (=> b!740095 m!691391))

(assert (=> b!740093 m!691379))

(assert (=> b!740093 m!691379))

(declare-fun m!691393 () Bool)

(assert (=> b!740093 m!691393))

(declare-fun m!691395 () Bool)

(assert (=> b!740106 m!691395))

(declare-fun m!691397 () Bool)

(assert (=> start!65280 m!691397))

(declare-fun m!691399 () Bool)

(assert (=> start!65280 m!691399))

(declare-fun m!691401 () Bool)

(assert (=> b!740100 m!691401))

(assert (=> b!740098 m!691379))

(assert (=> b!740098 m!691379))

(declare-fun m!691403 () Bool)

(assert (=> b!740098 m!691403))

(declare-fun m!691405 () Bool)

(assert (=> b!740103 m!691405))

(declare-fun m!691407 () Bool)

(assert (=> b!740105 m!691407))

(declare-fun m!691409 () Bool)

(assert (=> b!740105 m!691409))

(declare-fun m!691411 () Bool)

(assert (=> b!740107 m!691411))

(declare-fun m!691413 () Bool)

(assert (=> b!740090 m!691413))

(assert (=> b!740097 m!691379))

(assert (=> b!740097 m!691379))

(declare-fun m!691415 () Bool)

(assert (=> b!740097 m!691415))

(assert (=> b!740109 m!691379))

(assert (=> b!740109 m!691379))

(declare-fun m!691417 () Bool)

(assert (=> b!740109 m!691417))

(assert (=> b!740109 m!691417))

(assert (=> b!740109 m!691379))

(declare-fun m!691419 () Bool)

(assert (=> b!740109 m!691419))

(assert (=> b!740092 m!691379))

(assert (=> b!740092 m!691379))

(assert (=> b!740092 m!691391))

(assert (=> b!740108 m!691379))

(assert (=> b!740108 m!691379))

(assert (=> b!740108 m!691389))

(assert (=> b!740087 m!691379))

(assert (=> b!740087 m!691379))

(assert (=> b!740087 m!691415))

(declare-fun m!691421 () Bool)

(assert (=> b!740096 m!691421))

(declare-fun m!691423 () Bool)

(assert (=> b!740096 m!691423))

(assert (=> b!740096 m!691421))

(declare-fun m!691425 () Bool)

(assert (=> b!740096 m!691425))

(declare-fun m!691427 () Bool)

(assert (=> b!740096 m!691427))

(declare-fun m!691429 () Bool)

(assert (=> b!740096 m!691429))

(check-sat (not start!65280) (not b!740100) (not b!740095) (not b!740099) (not b!740097) (not b!740093) (not b!740092) (not b!740096) (not b!740110) (not b!740101) (not b!740094) (not b!740087) (not b!740107) (not b!740103) (not b!740108) (not b!740105) (not b!740109) (not b!740091) (not b!740090) (not b!740111) (not b!740098))
(check-sat)
