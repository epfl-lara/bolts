; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65876 () Bool)

(assert start!65876)

(declare-fun b!758857 () Bool)

(declare-datatypes ((Unit!26274 0))(
  ( (Unit!26275) )
))
(declare-fun e!423111 () Unit!26274)

(declare-fun Unit!26276 () Unit!26274)

(assert (=> b!758857 (= e!423111 Unit!26276)))

(assert (=> b!758857 false))

(declare-fun b!758858 () Bool)

(declare-fun res!513569 () Bool)

(declare-fun e!423103 () Bool)

(assert (=> b!758858 (=> (not res!513569) (not e!423103))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758858 (= res!513569 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42002 0))(
  ( (array!42003 (arr!20111 (Array (_ BitVec 32) (_ BitVec 64))) (size!20532 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42002)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7718 0))(
  ( (MissingZero!7718 (index!33239 (_ BitVec 32))) (Found!7718 (index!33240 (_ BitVec 32))) (Intermediate!7718 (undefined!8530 Bool) (index!33241 (_ BitVec 32)) (x!64149 (_ BitVec 32))) (Undefined!7718) (MissingVacant!7718 (index!33242 (_ BitVec 32))) )
))
(declare-fun lt!338198 () SeekEntryResult!7718)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!758859 () Bool)

(declare-fun e!423109 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42002 (_ BitVec 32)) SeekEntryResult!7718)

(assert (=> b!758859 (= e!423109 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20111 a!3186) j!159) a!3186 mask!3328) lt!338198))))

(declare-fun res!513565 () Bool)

(assert (=> start!65876 (=> (not res!513565) (not e!423103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65876 (= res!513565 (validMask!0 mask!3328))))

(assert (=> start!65876 e!423103))

(assert (=> start!65876 true))

(declare-fun array_inv!15885 (array!42002) Bool)

(assert (=> start!65876 (array_inv!15885 a!3186)))

(declare-fun b!758860 () Bool)

(declare-fun res!513556 () Bool)

(declare-fun e!423099 () Bool)

(assert (=> b!758860 (=> (not res!513556) (not e!423099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42002 (_ BitVec 32)) Bool)

(assert (=> b!758860 (= res!513556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758861 () Bool)

(declare-fun e!423106 () Bool)

(declare-fun e!423105 () Bool)

(assert (=> b!758861 (= e!423106 e!423105)))

(declare-fun res!513566 () Bool)

(assert (=> b!758861 (=> res!513566 e!423105)))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!758861 (= res!513566 (or (not (= (select (arr!20111 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!338207 () SeekEntryResult!7718)

(declare-fun lt!338202 () SeekEntryResult!7718)

(declare-fun lt!338196 () SeekEntryResult!7718)

(declare-fun lt!338201 () SeekEntryResult!7718)

(assert (=> b!758861 (and (= lt!338207 lt!338196) (= lt!338202 lt!338201))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!338204 () (_ BitVec 64))

(declare-fun lt!338200 () array!42002)

(assert (=> b!758861 (= lt!338196 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!338204 lt!338200 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42002 (_ BitVec 32)) SeekEntryResult!7718)

(assert (=> b!758861 (= lt!338207 (seekEntryOrOpen!0 lt!338204 lt!338200 mask!3328))))

(declare-fun lt!338206 () (_ BitVec 64))

(assert (=> b!758861 (= lt!338206 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!338205 () Unit!26274)

(assert (=> b!758861 (= lt!338205 e!423111)))

(declare-fun c!83033 () Bool)

(assert (=> b!758861 (= c!83033 (= lt!338206 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758862 () Bool)

(declare-fun res!513559 () Bool)

(assert (=> b!758862 (=> (not res!513559) (not e!423103))))

(declare-fun arrayContainsKey!0 (array!42002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758862 (= res!513559 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758863 () Bool)

(declare-fun e!423100 () Bool)

(declare-fun lt!338208 () SeekEntryResult!7718)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42002 (_ BitVec 32)) SeekEntryResult!7718)

(assert (=> b!758863 (= e!423100 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20111 a!3186) j!159) a!3186 mask!3328) lt!338208))))

(declare-fun b!758864 () Bool)

(declare-fun res!513564 () Bool)

(assert (=> b!758864 (=> (not res!513564) (not e!423103))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758864 (= res!513564 (and (= (size!20532 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20532 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20532 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758865 () Bool)

(declare-fun e!423110 () Bool)

(declare-fun e!423108 () Bool)

(assert (=> b!758865 (= e!423110 (not e!423108))))

(declare-fun res!513553 () Bool)

(assert (=> b!758865 (=> res!513553 e!423108)))

(declare-fun lt!338203 () SeekEntryResult!7718)

(assert (=> b!758865 (= res!513553 (or (not (is-Intermediate!7718 lt!338203)) (bvslt x!1131 (x!64149 lt!338203)) (not (= x!1131 (x!64149 lt!338203))) (not (= index!1321 (index!33241 lt!338203)))))))

(assert (=> b!758865 e!423109))

(declare-fun res!513554 () Bool)

(assert (=> b!758865 (=> (not res!513554) (not e!423109))))

(assert (=> b!758865 (= res!513554 (= lt!338202 lt!338198))))

(assert (=> b!758865 (= lt!338198 (Found!7718 j!159))))

(assert (=> b!758865 (= lt!338202 (seekEntryOrOpen!0 (select (arr!20111 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!758865 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338210 () Unit!26274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42002 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26274)

(assert (=> b!758865 (= lt!338210 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758866 () Bool)

(declare-fun e!423102 () Bool)

(assert (=> b!758866 (= e!423108 e!423102)))

(declare-fun res!513568 () Bool)

(assert (=> b!758866 (=> res!513568 e!423102)))

(assert (=> b!758866 (= res!513568 (not (= lt!338201 lt!338198)))))

(assert (=> b!758866 (= lt!338201 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20111 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758867 () Bool)

(declare-fun res!513555 () Bool)

(assert (=> b!758867 (=> (not res!513555) (not e!423103))))

(assert (=> b!758867 (= res!513555 (validKeyInArray!0 (select (arr!20111 a!3186) j!159)))))

(declare-fun b!758868 () Bool)

(declare-fun e!423101 () Bool)

(assert (=> b!758868 (= e!423105 e!423101)))

(declare-fun res!513561 () Bool)

(assert (=> b!758868 (=> res!513561 e!423101)))

(assert (=> b!758868 (= res!513561 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!758868 (= lt!338196 lt!338201)))

(declare-fun lt!338209 () Unit!26274)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42002 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26274)

(assert (=> b!758868 (= lt!338209 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758869 () Bool)

(declare-fun e!423107 () Bool)

(assert (=> b!758869 (= e!423107 e!423110)))

(declare-fun res!513557 () Bool)

(assert (=> b!758869 (=> (not res!513557) (not e!423110))))

(declare-fun lt!338197 () SeekEntryResult!7718)

(assert (=> b!758869 (= res!513557 (= lt!338197 lt!338203))))

(assert (=> b!758869 (= lt!338203 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338204 lt!338200 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758869 (= lt!338197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338204 mask!3328) lt!338204 lt!338200 mask!3328))))

(assert (=> b!758869 (= lt!338204 (select (store (arr!20111 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758869 (= lt!338200 (array!42003 (store (arr!20111 a!3186) i!1173 k!2102) (size!20532 a!3186)))))

(declare-fun b!758870 () Bool)

(declare-fun res!513558 () Bool)

(assert (=> b!758870 (=> (not res!513558) (not e!423107))))

(assert (=> b!758870 (= res!513558 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20111 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758871 () Bool)

(assert (=> b!758871 (= e!423102 e!423106)))

(declare-fun res!513562 () Bool)

(assert (=> b!758871 (=> res!513562 e!423106)))

(assert (=> b!758871 (= res!513562 (= lt!338206 lt!338204))))

(assert (=> b!758871 (= lt!338206 (select (store (arr!20111 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758872 () Bool)

(declare-fun res!513563 () Bool)

(assert (=> b!758872 (=> (not res!513563) (not e!423099))))

(assert (=> b!758872 (= res!513563 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20532 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20532 a!3186))))))

(declare-fun b!758873 () Bool)

(assert (=> b!758873 (= e!423101 (validKeyInArray!0 lt!338204))))

(declare-fun b!758874 () Bool)

(assert (=> b!758874 (= e!423099 e!423107)))

(declare-fun res!513560 () Bool)

(assert (=> b!758874 (=> (not res!513560) (not e!423107))))

(assert (=> b!758874 (= res!513560 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20111 a!3186) j!159) mask!3328) (select (arr!20111 a!3186) j!159) a!3186 mask!3328) lt!338208))))

(assert (=> b!758874 (= lt!338208 (Intermediate!7718 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758875 () Bool)

(assert (=> b!758875 (= e!423100 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20111 a!3186) j!159) a!3186 mask!3328) (Found!7718 j!159)))))

(declare-fun b!758876 () Bool)

(declare-fun Unit!26277 () Unit!26274)

(assert (=> b!758876 (= e!423111 Unit!26277)))

(declare-fun b!758877 () Bool)

(assert (=> b!758877 (= e!423103 e!423099)))

(declare-fun res!513567 () Bool)

(assert (=> b!758877 (=> (not res!513567) (not e!423099))))

(declare-fun lt!338199 () SeekEntryResult!7718)

(assert (=> b!758877 (= res!513567 (or (= lt!338199 (MissingZero!7718 i!1173)) (= lt!338199 (MissingVacant!7718 i!1173))))))

(assert (=> b!758877 (= lt!338199 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758878 () Bool)

(declare-fun res!513570 () Bool)

(assert (=> b!758878 (=> (not res!513570) (not e!423107))))

(assert (=> b!758878 (= res!513570 e!423100)))

(declare-fun c!83034 () Bool)

(assert (=> b!758878 (= c!83034 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758879 () Bool)

(declare-fun res!513552 () Bool)

(assert (=> b!758879 (=> (not res!513552) (not e!423099))))

(declare-datatypes ((List!14166 0))(
  ( (Nil!14163) (Cons!14162 (h!15234 (_ BitVec 64)) (t!20489 List!14166)) )
))
(declare-fun arrayNoDuplicates!0 (array!42002 (_ BitVec 32) List!14166) Bool)

(assert (=> b!758879 (= res!513552 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14163))))

(assert (= (and start!65876 res!513565) b!758864))

(assert (= (and b!758864 res!513564) b!758867))

(assert (= (and b!758867 res!513555) b!758858))

(assert (= (and b!758858 res!513569) b!758862))

(assert (= (and b!758862 res!513559) b!758877))

(assert (= (and b!758877 res!513567) b!758860))

(assert (= (and b!758860 res!513556) b!758879))

(assert (= (and b!758879 res!513552) b!758872))

(assert (= (and b!758872 res!513563) b!758874))

(assert (= (and b!758874 res!513560) b!758870))

(assert (= (and b!758870 res!513558) b!758878))

(assert (= (and b!758878 c!83034) b!758863))

(assert (= (and b!758878 (not c!83034)) b!758875))

(assert (= (and b!758878 res!513570) b!758869))

(assert (= (and b!758869 res!513557) b!758865))

(assert (= (and b!758865 res!513554) b!758859))

(assert (= (and b!758865 (not res!513553)) b!758866))

(assert (= (and b!758866 (not res!513568)) b!758871))

(assert (= (and b!758871 (not res!513562)) b!758861))

(assert (= (and b!758861 c!83033) b!758857))

(assert (= (and b!758861 (not c!83033)) b!758876))

(assert (= (and b!758861 (not res!513566)) b!758868))

(assert (= (and b!758868 (not res!513561)) b!758873))

(declare-fun m!706353 () Bool)

(assert (=> start!65876 m!706353))

(declare-fun m!706355 () Bool)

(assert (=> start!65876 m!706355))

(declare-fun m!706357 () Bool)

(assert (=> b!758860 m!706357))

(declare-fun m!706359 () Bool)

(assert (=> b!758866 m!706359))

(assert (=> b!758866 m!706359))

(declare-fun m!706361 () Bool)

(assert (=> b!758866 m!706361))

(declare-fun m!706363 () Bool)

(assert (=> b!758870 m!706363))

(declare-fun m!706365 () Bool)

(assert (=> b!758873 m!706365))

(assert (=> b!758875 m!706359))

(assert (=> b!758875 m!706359))

(assert (=> b!758875 m!706361))

(declare-fun m!706367 () Bool)

(assert (=> b!758862 m!706367))

(assert (=> b!758865 m!706359))

(assert (=> b!758865 m!706359))

(declare-fun m!706369 () Bool)

(assert (=> b!758865 m!706369))

(declare-fun m!706371 () Bool)

(assert (=> b!758865 m!706371))

(declare-fun m!706373 () Bool)

(assert (=> b!758865 m!706373))

(declare-fun m!706375 () Bool)

(assert (=> b!758868 m!706375))

(declare-fun m!706377 () Bool)

(assert (=> b!758879 m!706377))

(assert (=> b!758874 m!706359))

(assert (=> b!758874 m!706359))

(declare-fun m!706379 () Bool)

(assert (=> b!758874 m!706379))

(assert (=> b!758874 m!706379))

(assert (=> b!758874 m!706359))

(declare-fun m!706381 () Bool)

(assert (=> b!758874 m!706381))

(assert (=> b!758863 m!706359))

(assert (=> b!758863 m!706359))

(declare-fun m!706383 () Bool)

(assert (=> b!758863 m!706383))

(assert (=> b!758859 m!706359))

(assert (=> b!758859 m!706359))

(declare-fun m!706385 () Bool)

(assert (=> b!758859 m!706385))

(declare-fun m!706387 () Bool)

(assert (=> b!758869 m!706387))

(declare-fun m!706389 () Bool)

(assert (=> b!758869 m!706389))

(assert (=> b!758869 m!706389))

(declare-fun m!706391 () Bool)

(assert (=> b!758869 m!706391))

(declare-fun m!706393 () Bool)

(assert (=> b!758869 m!706393))

(declare-fun m!706395 () Bool)

(assert (=> b!758869 m!706395))

(assert (=> b!758867 m!706359))

(assert (=> b!758867 m!706359))

(declare-fun m!706397 () Bool)

(assert (=> b!758867 m!706397))

(declare-fun m!706399 () Bool)

(assert (=> b!758858 m!706399))

(declare-fun m!706401 () Bool)

(assert (=> b!758877 m!706401))

(declare-fun m!706403 () Bool)

(assert (=> b!758861 m!706403))

(declare-fun m!706405 () Bool)

(assert (=> b!758861 m!706405))

(declare-fun m!706407 () Bool)

(assert (=> b!758861 m!706407))

(assert (=> b!758871 m!706393))

(declare-fun m!706409 () Bool)

(assert (=> b!758871 m!706409))

(push 1)

