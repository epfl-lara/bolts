; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65750 () Bool)

(assert start!65750)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41876 0))(
  ( (array!41877 (arr!20048 (Array (_ BitVec 32) (_ BitVec 64))) (size!20469 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41876)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7655 0))(
  ( (MissingZero!7655 (index!32987 (_ BitVec 32))) (Found!7655 (index!32988 (_ BitVec 32))) (Intermediate!7655 (undefined!8467 Bool) (index!32989 (_ BitVec 32)) (x!63918 (_ BitVec 32))) (Undefined!7655) (MissingVacant!7655 (index!32990 (_ BitVec 32))) )
))
(declare-fun lt!335834 () SeekEntryResult!7655)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!754537 () Bool)

(declare-fun e!420831 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41876 (_ BitVec 32)) SeekEntryResult!7655)

(assert (=> b!754537 (= e!420831 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20048 a!3186) j!159) a!3186 mask!3328) lt!335834))))

(declare-fun b!754538 () Bool)

(declare-fun e!420829 () Bool)

(declare-fun e!420833 () Bool)

(assert (=> b!754538 (= e!420829 (not e!420833))))

(declare-fun res!509999 () Bool)

(assert (=> b!754538 (=> res!509999 e!420833)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!335831 () SeekEntryResult!7655)

(assert (=> b!754538 (= res!509999 (or (not (is-Intermediate!7655 lt!335831)) (bvslt x!1131 (x!63918 lt!335831)) (not (= x!1131 (x!63918 lt!335831))) (not (= index!1321 (index!32989 lt!335831)))))))

(assert (=> b!754538 e!420831))

(declare-fun res!510004 () Bool)

(assert (=> b!754538 (=> (not res!510004) (not e!420831))))

(declare-fun lt!335830 () SeekEntryResult!7655)

(assert (=> b!754538 (= res!510004 (= lt!335830 lt!335834))))

(assert (=> b!754538 (= lt!335834 (Found!7655 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41876 (_ BitVec 32)) SeekEntryResult!7655)

(assert (=> b!754538 (= lt!335830 (seekEntryOrOpen!0 (select (arr!20048 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41876 (_ BitVec 32)) Bool)

(assert (=> b!754538 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26022 0))(
  ( (Unit!26023) )
))
(declare-fun lt!335828 () Unit!26022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41876 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26022)

(assert (=> b!754538 (= lt!335828 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754539 () Bool)

(declare-fun res!509989 () Bool)

(declare-fun e!420834 () Bool)

(assert (=> b!754539 (=> (not res!509989) (not e!420834))))

(assert (=> b!754539 (= res!509989 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20469 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20469 a!3186))))))

(declare-fun b!754540 () Bool)

(declare-fun e!420828 () Bool)

(assert (=> b!754540 (= e!420833 e!420828)))

(declare-fun res!510000 () Bool)

(assert (=> b!754540 (=> res!510000 e!420828)))

(declare-fun lt!335833 () SeekEntryResult!7655)

(assert (=> b!754540 (= res!510000 (not (= lt!335833 lt!335834)))))

(assert (=> b!754540 (= lt!335833 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20048 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!509992 () Bool)

(declare-fun e!420832 () Bool)

(assert (=> start!65750 (=> (not res!509992) (not e!420832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65750 (= res!509992 (validMask!0 mask!3328))))

(assert (=> start!65750 e!420832))

(assert (=> start!65750 true))

(declare-fun array_inv!15822 (array!41876) Bool)

(assert (=> start!65750 (array_inv!15822 a!3186)))

(declare-fun b!754541 () Bool)

(declare-fun res!510005 () Bool)

(assert (=> b!754541 (=> (not res!510005) (not e!420832))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754541 (= res!510005 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754542 () Bool)

(declare-fun res!509997 () Bool)

(assert (=> b!754542 (=> (not res!509997) (not e!420832))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754542 (= res!509997 (and (= (size!20469 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20469 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20469 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754543 () Bool)

(declare-fun res!510003 () Bool)

(declare-fun e!420826 () Bool)

(assert (=> b!754543 (=> (not res!510003) (not e!420826))))

(declare-fun e!420825 () Bool)

(assert (=> b!754543 (= res!510003 e!420825)))

(declare-fun c!82655 () Bool)

(assert (=> b!754543 (= c!82655 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754544 () Bool)

(assert (=> b!754544 (= e!420826 e!420829)))

(declare-fun res!509990 () Bool)

(assert (=> b!754544 (=> (not res!509990) (not e!420829))))

(declare-fun lt!335832 () SeekEntryResult!7655)

(assert (=> b!754544 (= res!509990 (= lt!335832 lt!335831))))

(declare-fun lt!335823 () (_ BitVec 64))

(declare-fun lt!335827 () array!41876)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41876 (_ BitVec 32)) SeekEntryResult!7655)

(assert (=> b!754544 (= lt!335831 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335823 lt!335827 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754544 (= lt!335832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335823 mask!3328) lt!335823 lt!335827 mask!3328))))

(assert (=> b!754544 (= lt!335823 (select (store (arr!20048 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754544 (= lt!335827 (array!41877 (store (arr!20048 a!3186) i!1173 k!2102) (size!20469 a!3186)))))

(declare-fun b!754545 () Bool)

(declare-fun res!510002 () Bool)

(declare-fun e!420827 () Bool)

(assert (=> b!754545 (=> (not res!510002) (not e!420827))))

(assert (=> b!754545 (= res!510002 (= (seekEntryOrOpen!0 lt!335823 lt!335827 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335823 lt!335827 mask!3328)))))

(declare-fun b!754546 () Bool)

(assert (=> b!754546 (= e!420825 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20048 a!3186) j!159) a!3186 mask!3328) (Found!7655 j!159)))))

(declare-fun b!754547 () Bool)

(declare-fun e!420823 () Bool)

(assert (=> b!754547 (= e!420823 true)))

(assert (=> b!754547 e!420827))

(declare-fun res!509995 () Bool)

(assert (=> b!754547 (=> (not res!509995) (not e!420827))))

(declare-fun lt!335829 () (_ BitVec 64))

(assert (=> b!754547 (= res!509995 (= lt!335829 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335824 () Unit!26022)

(declare-fun e!420830 () Unit!26022)

(assert (=> b!754547 (= lt!335824 e!420830)))

(declare-fun c!82656 () Bool)

(assert (=> b!754547 (= c!82656 (= lt!335829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754548 () Bool)

(declare-fun res!509996 () Bool)

(assert (=> b!754548 (=> (not res!509996) (not e!420834))))

(declare-datatypes ((List!14103 0))(
  ( (Nil!14100) (Cons!14099 (h!15171 (_ BitVec 64)) (t!20426 List!14103)) )
))
(declare-fun arrayNoDuplicates!0 (array!41876 (_ BitVec 32) List!14103) Bool)

(assert (=> b!754548 (= res!509996 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14100))))

(declare-fun b!754549 () Bool)

(declare-fun res!509993 () Bool)

(assert (=> b!754549 (=> (not res!509993) (not e!420832))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754549 (= res!509993 (validKeyInArray!0 k!2102))))

(declare-fun b!754550 () Bool)

(declare-fun res!509991 () Bool)

(assert (=> b!754550 (=> (not res!509991) (not e!420832))))

(assert (=> b!754550 (= res!509991 (validKeyInArray!0 (select (arr!20048 a!3186) j!159)))))

(declare-fun b!754551 () Bool)

(assert (=> b!754551 (= e!420827 (= lt!335830 lt!335833))))

(declare-fun b!754552 () Bool)

(assert (=> b!754552 (= e!420834 e!420826)))

(declare-fun res!510001 () Bool)

(assert (=> b!754552 (=> (not res!510001) (not e!420826))))

(declare-fun lt!335825 () SeekEntryResult!7655)

(assert (=> b!754552 (= res!510001 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20048 a!3186) j!159) mask!3328) (select (arr!20048 a!3186) j!159) a!3186 mask!3328) lt!335825))))

(assert (=> b!754552 (= lt!335825 (Intermediate!7655 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754553 () Bool)

(declare-fun Unit!26024 () Unit!26022)

(assert (=> b!754553 (= e!420830 Unit!26024)))

(declare-fun b!754554 () Bool)

(declare-fun res!510006 () Bool)

(assert (=> b!754554 (=> (not res!510006) (not e!420826))))

(assert (=> b!754554 (= res!510006 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20048 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754555 () Bool)

(assert (=> b!754555 (= e!420832 e!420834)))

(declare-fun res!509988 () Bool)

(assert (=> b!754555 (=> (not res!509988) (not e!420834))))

(declare-fun lt!335826 () SeekEntryResult!7655)

(assert (=> b!754555 (= res!509988 (or (= lt!335826 (MissingZero!7655 i!1173)) (= lt!335826 (MissingVacant!7655 i!1173))))))

(assert (=> b!754555 (= lt!335826 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754556 () Bool)

(declare-fun Unit!26025 () Unit!26022)

(assert (=> b!754556 (= e!420830 Unit!26025)))

(assert (=> b!754556 false))

(declare-fun b!754557 () Bool)

(assert (=> b!754557 (= e!420825 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20048 a!3186) j!159) a!3186 mask!3328) lt!335825))))

(declare-fun b!754558 () Bool)

(assert (=> b!754558 (= e!420828 e!420823)))

(declare-fun res!509994 () Bool)

(assert (=> b!754558 (=> res!509994 e!420823)))

(assert (=> b!754558 (= res!509994 (= lt!335829 lt!335823))))

(assert (=> b!754558 (= lt!335829 (select (store (arr!20048 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754559 () Bool)

(declare-fun res!509998 () Bool)

(assert (=> b!754559 (=> (not res!509998) (not e!420834))))

(assert (=> b!754559 (= res!509998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65750 res!509992) b!754542))

(assert (= (and b!754542 res!509997) b!754550))

(assert (= (and b!754550 res!509991) b!754549))

(assert (= (and b!754549 res!509993) b!754541))

(assert (= (and b!754541 res!510005) b!754555))

(assert (= (and b!754555 res!509988) b!754559))

(assert (= (and b!754559 res!509998) b!754548))

(assert (= (and b!754548 res!509996) b!754539))

(assert (= (and b!754539 res!509989) b!754552))

(assert (= (and b!754552 res!510001) b!754554))

(assert (= (and b!754554 res!510006) b!754543))

(assert (= (and b!754543 c!82655) b!754557))

(assert (= (and b!754543 (not c!82655)) b!754546))

(assert (= (and b!754543 res!510003) b!754544))

(assert (= (and b!754544 res!509990) b!754538))

(assert (= (and b!754538 res!510004) b!754537))

(assert (= (and b!754538 (not res!509999)) b!754540))

(assert (= (and b!754540 (not res!510000)) b!754558))

(assert (= (and b!754558 (not res!509994)) b!754547))

(assert (= (and b!754547 c!82656) b!754556))

(assert (= (and b!754547 (not c!82656)) b!754553))

(assert (= (and b!754547 res!509995) b!754545))

(assert (= (and b!754545 res!510002) b!754551))

(declare-fun m!703029 () Bool)

(assert (=> b!754552 m!703029))

(assert (=> b!754552 m!703029))

(declare-fun m!703031 () Bool)

(assert (=> b!754552 m!703031))

(assert (=> b!754552 m!703031))

(assert (=> b!754552 m!703029))

(declare-fun m!703033 () Bool)

(assert (=> b!754552 m!703033))

(declare-fun m!703035 () Bool)

(assert (=> b!754555 m!703035))

(assert (=> b!754540 m!703029))

(assert (=> b!754540 m!703029))

(declare-fun m!703037 () Bool)

(assert (=> b!754540 m!703037))

(assert (=> b!754546 m!703029))

(assert (=> b!754546 m!703029))

(assert (=> b!754546 m!703037))

(declare-fun m!703039 () Bool)

(assert (=> start!65750 m!703039))

(declare-fun m!703041 () Bool)

(assert (=> start!65750 m!703041))

(declare-fun m!703043 () Bool)

(assert (=> b!754554 m!703043))

(declare-fun m!703045 () Bool)

(assert (=> b!754549 m!703045))

(assert (=> b!754557 m!703029))

(assert (=> b!754557 m!703029))

(declare-fun m!703047 () Bool)

(assert (=> b!754557 m!703047))

(declare-fun m!703049 () Bool)

(assert (=> b!754559 m!703049))

(declare-fun m!703051 () Bool)

(assert (=> b!754548 m!703051))

(declare-fun m!703053 () Bool)

(assert (=> b!754544 m!703053))

(declare-fun m!703055 () Bool)

(assert (=> b!754544 m!703055))

(declare-fun m!703057 () Bool)

(assert (=> b!754544 m!703057))

(declare-fun m!703059 () Bool)

(assert (=> b!754544 m!703059))

(assert (=> b!754544 m!703053))

(declare-fun m!703061 () Bool)

(assert (=> b!754544 m!703061))

(assert (=> b!754538 m!703029))

(assert (=> b!754538 m!703029))

(declare-fun m!703063 () Bool)

(assert (=> b!754538 m!703063))

(declare-fun m!703065 () Bool)

(assert (=> b!754538 m!703065))

(declare-fun m!703067 () Bool)

(assert (=> b!754538 m!703067))

(assert (=> b!754537 m!703029))

(assert (=> b!754537 m!703029))

(declare-fun m!703069 () Bool)

(assert (=> b!754537 m!703069))

(assert (=> b!754558 m!703057))

(declare-fun m!703071 () Bool)

(assert (=> b!754558 m!703071))

(declare-fun m!703073 () Bool)

(assert (=> b!754541 m!703073))

(declare-fun m!703075 () Bool)

(assert (=> b!754545 m!703075))

(declare-fun m!703077 () Bool)

(assert (=> b!754545 m!703077))

(assert (=> b!754550 m!703029))

(assert (=> b!754550 m!703029))

(declare-fun m!703079 () Bool)

(assert (=> b!754550 m!703079))

(push 1)

