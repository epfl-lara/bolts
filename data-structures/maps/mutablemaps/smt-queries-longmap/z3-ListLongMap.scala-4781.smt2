; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65766 () Bool)

(assert start!65766)

(declare-fun b!755089 () Bool)

(declare-fun res!510455 () Bool)

(declare-fun e!421113 () Bool)

(assert (=> b!755089 (=> (not res!510455) (not e!421113))))

(declare-datatypes ((array!41892 0))(
  ( (array!41893 (arr!20056 (Array (_ BitVec 32) (_ BitVec 64))) (size!20477 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41892)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755089 (= res!510455 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755090 () Bool)

(declare-fun e!421116 () Bool)

(declare-fun e!421112 () Bool)

(assert (=> b!755090 (= e!421116 e!421112)))

(declare-fun res!510454 () Bool)

(assert (=> b!755090 (=> (not res!510454) (not e!421112))))

(declare-datatypes ((SeekEntryResult!7663 0))(
  ( (MissingZero!7663 (index!33019 (_ BitVec 32))) (Found!7663 (index!33020 (_ BitVec 32))) (Intermediate!7663 (undefined!8475 Bool) (index!33021 (_ BitVec 32)) (x!63950 (_ BitVec 32))) (Undefined!7663) (MissingVacant!7663 (index!33022 (_ BitVec 32))) )
))
(declare-fun lt!336112 () SeekEntryResult!7663)

(declare-fun lt!336116 () SeekEntryResult!7663)

(assert (=> b!755090 (= res!510454 (= lt!336112 lt!336116))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!336120 () array!41892)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!336118 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41892 (_ BitVec 32)) SeekEntryResult!7663)

(assert (=> b!755090 (= lt!336116 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336118 lt!336120 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755090 (= lt!336112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336118 mask!3328) lt!336118 lt!336120 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755090 (= lt!336118 (select (store (arr!20056 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!755090 (= lt!336120 (array!41893 (store (arr!20056 a!3186) i!1173 k0!2102) (size!20477 a!3186)))))

(declare-fun b!755091 () Bool)

(declare-fun res!510446 () Bool)

(assert (=> b!755091 (=> (not res!510446) (not e!421116))))

(declare-fun e!421122 () Bool)

(assert (=> b!755091 (= res!510446 e!421122)))

(declare-fun c!82704 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755091 (= c!82704 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755092 () Bool)

(declare-fun res!510445 () Bool)

(assert (=> b!755092 (=> (not res!510445) (not e!421113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755092 (= res!510445 (validKeyInArray!0 k0!2102))))

(declare-fun b!755093 () Bool)

(declare-fun e!421117 () Bool)

(assert (=> b!755093 (= e!421112 (not e!421117))))

(declare-fun res!510450 () Bool)

(assert (=> b!755093 (=> res!510450 e!421117)))

(get-info :version)

(assert (=> b!755093 (= res!510450 (or (not ((_ is Intermediate!7663) lt!336116)) (bvslt x!1131 (x!63950 lt!336116)) (not (= x!1131 (x!63950 lt!336116))) (not (= index!1321 (index!33021 lt!336116)))))))

(declare-fun e!421114 () Bool)

(assert (=> b!755093 e!421114))

(declare-fun res!510444 () Bool)

(assert (=> b!755093 (=> (not res!510444) (not e!421114))))

(declare-fun lt!336119 () SeekEntryResult!7663)

(declare-fun lt!336121 () SeekEntryResult!7663)

(assert (=> b!755093 (= res!510444 (= lt!336119 lt!336121))))

(assert (=> b!755093 (= lt!336121 (Found!7663 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41892 (_ BitVec 32)) SeekEntryResult!7663)

(assert (=> b!755093 (= lt!336119 (seekEntryOrOpen!0 (select (arr!20056 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41892 (_ BitVec 32)) Bool)

(assert (=> b!755093 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26054 0))(
  ( (Unit!26055) )
))
(declare-fun lt!336115 () Unit!26054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41892 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26054)

(assert (=> b!755093 (= lt!336115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755094 () Bool)

(declare-fun res!510459 () Bool)

(declare-fun e!421120 () Bool)

(assert (=> b!755094 (=> (not res!510459) (not e!421120))))

(declare-datatypes ((List!14111 0))(
  ( (Nil!14108) (Cons!14107 (h!15179 (_ BitVec 64)) (t!20434 List!14111)) )
))
(declare-fun arrayNoDuplicates!0 (array!41892 (_ BitVec 32) List!14111) Bool)

(assert (=> b!755094 (= res!510459 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14108))))

(declare-fun b!755095 () Bool)

(declare-fun res!510449 () Bool)

(assert (=> b!755095 (=> (not res!510449) (not e!421120))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!755095 (= res!510449 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20477 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20477 a!3186))))))

(declare-fun lt!336113 () SeekEntryResult!7663)

(declare-fun b!755096 () Bool)

(assert (=> b!755096 (= e!421122 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20056 a!3186) j!159) a!3186 mask!3328) lt!336113))))

(declare-fun b!755097 () Bool)

(declare-fun e!421121 () Bool)

(declare-fun e!421118 () Bool)

(assert (=> b!755097 (= e!421121 e!421118)))

(declare-fun res!510458 () Bool)

(assert (=> b!755097 (=> res!510458 e!421118)))

(declare-fun lt!336114 () (_ BitVec 64))

(assert (=> b!755097 (= res!510458 (= lt!336114 lt!336118))))

(assert (=> b!755097 (= lt!336114 (select (store (arr!20056 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!755098 () Bool)

(declare-fun e!421115 () Bool)

(declare-fun lt!336122 () SeekEntryResult!7663)

(assert (=> b!755098 (= e!421115 (= lt!336119 lt!336122))))

(declare-fun b!755099 () Bool)

(declare-fun e!421111 () Unit!26054)

(declare-fun Unit!26056 () Unit!26054)

(assert (=> b!755099 (= e!421111 Unit!26056)))

(declare-fun b!755100 () Bool)

(assert (=> b!755100 (= e!421117 e!421121)))

(declare-fun res!510462 () Bool)

(assert (=> b!755100 (=> res!510462 e!421121)))

(assert (=> b!755100 (= res!510462 (not (= lt!336122 lt!336121)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41892 (_ BitVec 32)) SeekEntryResult!7663)

(assert (=> b!755100 (= lt!336122 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20056 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755101 () Bool)

(declare-fun res!510457 () Bool)

(assert (=> b!755101 (=> (not res!510457) (not e!421120))))

(assert (=> b!755101 (= res!510457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755102 () Bool)

(declare-fun res!510460 () Bool)

(assert (=> b!755102 (=> (not res!510460) (not e!421113))))

(assert (=> b!755102 (= res!510460 (validKeyInArray!0 (select (arr!20056 a!3186) j!159)))))

(declare-fun b!755103 () Bool)

(assert (=> b!755103 (= e!421122 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20056 a!3186) j!159) a!3186 mask!3328) (Found!7663 j!159)))))

(declare-fun b!755104 () Bool)

(declare-fun res!510453 () Bool)

(assert (=> b!755104 (=> (not res!510453) (not e!421115))))

(assert (=> b!755104 (= res!510453 (= (seekEntryOrOpen!0 lt!336118 lt!336120 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336118 lt!336120 mask!3328)))))

(declare-fun b!755105 () Bool)

(declare-fun res!510452 () Bool)

(assert (=> b!755105 (=> (not res!510452) (not e!421116))))

(assert (=> b!755105 (= res!510452 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20056 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755106 () Bool)

(assert (=> b!755106 (= e!421118 true)))

(assert (=> b!755106 e!421115))

(declare-fun res!510447 () Bool)

(assert (=> b!755106 (=> (not res!510447) (not e!421115))))

(assert (=> b!755106 (= res!510447 (= lt!336114 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336117 () Unit!26054)

(assert (=> b!755106 (= lt!336117 e!421111)))

(declare-fun c!82703 () Bool)

(assert (=> b!755106 (= c!82703 (= lt!336114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755107 () Bool)

(assert (=> b!755107 (= e!421113 e!421120)))

(declare-fun res!510448 () Bool)

(assert (=> b!755107 (=> (not res!510448) (not e!421120))))

(declare-fun lt!336111 () SeekEntryResult!7663)

(assert (=> b!755107 (= res!510448 (or (= lt!336111 (MissingZero!7663 i!1173)) (= lt!336111 (MissingVacant!7663 i!1173))))))

(assert (=> b!755107 (= lt!336111 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!755108 () Bool)

(assert (=> b!755108 (= e!421114 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20056 a!3186) j!159) a!3186 mask!3328) lt!336121))))

(declare-fun res!510461 () Bool)

(assert (=> start!65766 (=> (not res!510461) (not e!421113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65766 (= res!510461 (validMask!0 mask!3328))))

(assert (=> start!65766 e!421113))

(assert (=> start!65766 true))

(declare-fun array_inv!15830 (array!41892) Bool)

(assert (=> start!65766 (array_inv!15830 a!3186)))

(declare-fun b!755109 () Bool)

(assert (=> b!755109 (= e!421120 e!421116)))

(declare-fun res!510456 () Bool)

(assert (=> b!755109 (=> (not res!510456) (not e!421116))))

(assert (=> b!755109 (= res!510456 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20056 a!3186) j!159) mask!3328) (select (arr!20056 a!3186) j!159) a!3186 mask!3328) lt!336113))))

(assert (=> b!755109 (= lt!336113 (Intermediate!7663 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755110 () Bool)

(declare-fun Unit!26057 () Unit!26054)

(assert (=> b!755110 (= e!421111 Unit!26057)))

(assert (=> b!755110 false))

(declare-fun b!755111 () Bool)

(declare-fun res!510451 () Bool)

(assert (=> b!755111 (=> (not res!510451) (not e!421113))))

(assert (=> b!755111 (= res!510451 (and (= (size!20477 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20477 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20477 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65766 res!510461) b!755111))

(assert (= (and b!755111 res!510451) b!755102))

(assert (= (and b!755102 res!510460) b!755092))

(assert (= (and b!755092 res!510445) b!755089))

(assert (= (and b!755089 res!510455) b!755107))

(assert (= (and b!755107 res!510448) b!755101))

(assert (= (and b!755101 res!510457) b!755094))

(assert (= (and b!755094 res!510459) b!755095))

(assert (= (and b!755095 res!510449) b!755109))

(assert (= (and b!755109 res!510456) b!755105))

(assert (= (and b!755105 res!510452) b!755091))

(assert (= (and b!755091 c!82704) b!755096))

(assert (= (and b!755091 (not c!82704)) b!755103))

(assert (= (and b!755091 res!510446) b!755090))

(assert (= (and b!755090 res!510454) b!755093))

(assert (= (and b!755093 res!510444) b!755108))

(assert (= (and b!755093 (not res!510450)) b!755100))

(assert (= (and b!755100 (not res!510462)) b!755097))

(assert (= (and b!755097 (not res!510458)) b!755106))

(assert (= (and b!755106 c!82703) b!755110))

(assert (= (and b!755106 (not c!82703)) b!755099))

(assert (= (and b!755106 res!510447) b!755104))

(assert (= (and b!755104 res!510453) b!755098))

(declare-fun m!703445 () Bool)

(assert (=> b!755090 m!703445))

(declare-fun m!703447 () Bool)

(assert (=> b!755090 m!703447))

(assert (=> b!755090 m!703445))

(declare-fun m!703449 () Bool)

(assert (=> b!755090 m!703449))

(declare-fun m!703451 () Bool)

(assert (=> b!755090 m!703451))

(declare-fun m!703453 () Bool)

(assert (=> b!755090 m!703453))

(declare-fun m!703455 () Bool)

(assert (=> b!755107 m!703455))

(declare-fun m!703457 () Bool)

(assert (=> b!755102 m!703457))

(assert (=> b!755102 m!703457))

(declare-fun m!703459 () Bool)

(assert (=> b!755102 m!703459))

(declare-fun m!703461 () Bool)

(assert (=> b!755105 m!703461))

(assert (=> b!755103 m!703457))

(assert (=> b!755103 m!703457))

(declare-fun m!703463 () Bool)

(assert (=> b!755103 m!703463))

(assert (=> b!755096 m!703457))

(assert (=> b!755096 m!703457))

(declare-fun m!703465 () Bool)

(assert (=> b!755096 m!703465))

(declare-fun m!703467 () Bool)

(assert (=> b!755101 m!703467))

(declare-fun m!703469 () Bool)

(assert (=> b!755092 m!703469))

(assert (=> b!755108 m!703457))

(assert (=> b!755108 m!703457))

(declare-fun m!703471 () Bool)

(assert (=> b!755108 m!703471))

(assert (=> b!755097 m!703449))

(declare-fun m!703473 () Bool)

(assert (=> b!755097 m!703473))

(declare-fun m!703475 () Bool)

(assert (=> b!755094 m!703475))

(declare-fun m!703477 () Bool)

(assert (=> b!755089 m!703477))

(declare-fun m!703479 () Bool)

(assert (=> start!65766 m!703479))

(declare-fun m!703481 () Bool)

(assert (=> start!65766 m!703481))

(assert (=> b!755093 m!703457))

(assert (=> b!755093 m!703457))

(declare-fun m!703483 () Bool)

(assert (=> b!755093 m!703483))

(declare-fun m!703485 () Bool)

(assert (=> b!755093 m!703485))

(declare-fun m!703487 () Bool)

(assert (=> b!755093 m!703487))

(assert (=> b!755109 m!703457))

(assert (=> b!755109 m!703457))

(declare-fun m!703489 () Bool)

(assert (=> b!755109 m!703489))

(assert (=> b!755109 m!703489))

(assert (=> b!755109 m!703457))

(declare-fun m!703491 () Bool)

(assert (=> b!755109 m!703491))

(declare-fun m!703493 () Bool)

(assert (=> b!755104 m!703493))

(declare-fun m!703495 () Bool)

(assert (=> b!755104 m!703495))

(assert (=> b!755100 m!703457))

(assert (=> b!755100 m!703457))

(assert (=> b!755100 m!703463))

(check-sat (not start!65766) (not b!755107) (not b!755093) (not b!755092) (not b!755103) (not b!755101) (not b!755100) (not b!755104) (not b!755094) (not b!755096) (not b!755109) (not b!755090) (not b!755102) (not b!755089) (not b!755108))
(check-sat)
