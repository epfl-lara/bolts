; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65558 () Bool)

(assert start!65558)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41684 0))(
  ( (array!41685 (arr!19952 (Array (_ BitVec 32) (_ BitVec 64))) (size!20373 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41684)

(declare-fun e!417606 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!748104 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7559 0))(
  ( (MissingZero!7559 (index!32603 (_ BitVec 32))) (Found!7559 (index!32604 (_ BitVec 32))) (Intermediate!7559 (undefined!8371 Bool) (index!32605 (_ BitVec 32)) (x!63566 (_ BitVec 32))) (Undefined!7559) (MissingVacant!7559 (index!32606 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41684 (_ BitVec 32)) SeekEntryResult!7559)

(assert (=> b!748104 (= e!417606 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19952 a!3186) j!159) a!3186 mask!3328) (Found!7559 j!159)))))

(declare-fun b!748105 () Bool)

(declare-fun lt!332575 () SeekEntryResult!7559)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41684 (_ BitVec 32)) SeekEntryResult!7559)

(assert (=> b!748105 (= e!417606 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19952 a!3186) j!159) a!3186 mask!3328) lt!332575))))

(declare-fun b!748106 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!332574 () SeekEntryResult!7559)

(declare-fun e!417612 () Bool)

(assert (=> b!748106 (= e!417612 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19952 a!3186) j!159) a!3186 mask!3328) lt!332574))))

(declare-fun b!748107 () Bool)

(declare-fun e!417611 () Bool)

(declare-fun e!417609 () Bool)

(assert (=> b!748107 (= e!417611 e!417609)))

(declare-fun res!504721 () Bool)

(assert (=> b!748107 (=> (not res!504721) (not e!417609))))

(declare-fun lt!332570 () SeekEntryResult!7559)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748107 (= res!504721 (or (= lt!332570 (MissingZero!7559 i!1173)) (= lt!332570 (MissingVacant!7559 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41684 (_ BitVec 32)) SeekEntryResult!7559)

(assert (=> b!748107 (= lt!332570 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748108 () Bool)

(declare-fun res!504722 () Bool)

(declare-fun e!417607 () Bool)

(assert (=> b!748108 (=> (not res!504722) (not e!417607))))

(assert (=> b!748108 (= res!504722 e!417606)))

(declare-fun c!82079 () Bool)

(assert (=> b!748108 (= c!82079 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748109 () Bool)

(declare-fun res!504710 () Bool)

(declare-fun e!417604 () Bool)

(assert (=> b!748109 (=> res!504710 e!417604)))

(declare-fun lt!332568 () (_ BitVec 64))

(assert (=> b!748109 (= res!504710 (= (select (store (arr!19952 a!3186) i!1173 k!2102) index!1321) lt!332568))))

(declare-fun b!748110 () Bool)

(declare-fun res!504708 () Bool)

(assert (=> b!748110 (=> res!504708 e!417604)))

(assert (=> b!748110 (= res!504708 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19952 a!3186) j!159) a!3186 mask!3328) lt!332574)))))

(declare-fun b!748111 () Bool)

(declare-datatypes ((Unit!25638 0))(
  ( (Unit!25639) )
))
(declare-fun e!417610 () Unit!25638)

(declare-fun Unit!25640 () Unit!25638)

(assert (=> b!748111 (= e!417610 Unit!25640)))

(assert (=> b!748111 false))

(declare-fun b!748112 () Bool)

(declare-fun e!417608 () Bool)

(assert (=> b!748112 (= e!417608 (not e!417604))))

(declare-fun res!504717 () Bool)

(assert (=> b!748112 (=> res!504717 e!417604)))

(declare-fun lt!332573 () SeekEntryResult!7559)

(assert (=> b!748112 (= res!504717 (or (not (is-Intermediate!7559 lt!332573)) (bvslt x!1131 (x!63566 lt!332573)) (not (= x!1131 (x!63566 lt!332573))) (not (= index!1321 (index!32605 lt!332573)))))))

(assert (=> b!748112 e!417612))

(declare-fun res!504716 () Bool)

(assert (=> b!748112 (=> (not res!504716) (not e!417612))))

(declare-fun lt!332576 () SeekEntryResult!7559)

(assert (=> b!748112 (= res!504716 (= lt!332576 lt!332574))))

(assert (=> b!748112 (= lt!332574 (Found!7559 j!159))))

(assert (=> b!748112 (= lt!332576 (seekEntryOrOpen!0 (select (arr!19952 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41684 (_ BitVec 32)) Bool)

(assert (=> b!748112 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332569 () Unit!25638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41684 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25638)

(assert (=> b!748112 (= lt!332569 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748113 () Bool)

(declare-fun res!504715 () Bool)

(assert (=> b!748113 (=> (not res!504715) (not e!417609))))

(declare-datatypes ((List!14007 0))(
  ( (Nil!14004) (Cons!14003 (h!15075 (_ BitVec 64)) (t!20330 List!14007)) )
))
(declare-fun arrayNoDuplicates!0 (array!41684 (_ BitVec 32) List!14007) Bool)

(assert (=> b!748113 (= res!504715 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14004))))

(declare-fun b!748114 () Bool)

(assert (=> b!748114 (= e!417607 e!417608)))

(declare-fun res!504707 () Bool)

(assert (=> b!748114 (=> (not res!504707) (not e!417608))))

(declare-fun lt!332571 () SeekEntryResult!7559)

(assert (=> b!748114 (= res!504707 (= lt!332571 lt!332573))))

(declare-fun lt!332567 () array!41684)

(assert (=> b!748114 (= lt!332573 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332568 lt!332567 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748114 (= lt!332571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332568 mask!3328) lt!332568 lt!332567 mask!3328))))

(assert (=> b!748114 (= lt!332568 (select (store (arr!19952 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748114 (= lt!332567 (array!41685 (store (arr!19952 a!3186) i!1173 k!2102) (size!20373 a!3186)))))

(declare-fun b!748115 () Bool)

(assert (=> b!748115 (= e!417609 e!417607)))

(declare-fun res!504720 () Bool)

(assert (=> b!748115 (=> (not res!504720) (not e!417607))))

(assert (=> b!748115 (= res!504720 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19952 a!3186) j!159) mask!3328) (select (arr!19952 a!3186) j!159) a!3186 mask!3328) lt!332575))))

(assert (=> b!748115 (= lt!332575 (Intermediate!7559 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748116 () Bool)

(assert (=> b!748116 (= e!417604 true)))

(assert (=> b!748116 (= (select (store (arr!19952 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332572 () Unit!25638)

(assert (=> b!748116 (= lt!332572 e!417610)))

(declare-fun c!82080 () Bool)

(assert (=> b!748116 (= c!82080 (= (select (store (arr!19952 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!504713 () Bool)

(assert (=> start!65558 (=> (not res!504713) (not e!417611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65558 (= res!504713 (validMask!0 mask!3328))))

(assert (=> start!65558 e!417611))

(assert (=> start!65558 true))

(declare-fun array_inv!15726 (array!41684) Bool)

(assert (=> start!65558 (array_inv!15726 a!3186)))

(declare-fun b!748117 () Bool)

(declare-fun res!504718 () Bool)

(assert (=> b!748117 (=> (not res!504718) (not e!417611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748117 (= res!504718 (validKeyInArray!0 (select (arr!19952 a!3186) j!159)))))

(declare-fun b!748118 () Bool)

(declare-fun res!504714 () Bool)

(assert (=> b!748118 (=> (not res!504714) (not e!417607))))

(assert (=> b!748118 (= res!504714 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19952 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748119 () Bool)

(declare-fun res!504709 () Bool)

(assert (=> b!748119 (=> (not res!504709) (not e!417611))))

(assert (=> b!748119 (= res!504709 (and (= (size!20373 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20373 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20373 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748120 () Bool)

(declare-fun Unit!25641 () Unit!25638)

(assert (=> b!748120 (= e!417610 Unit!25641)))

(declare-fun b!748121 () Bool)

(declare-fun res!504723 () Bool)

(assert (=> b!748121 (=> (not res!504723) (not e!417611))))

(declare-fun arrayContainsKey!0 (array!41684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748121 (= res!504723 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748122 () Bool)

(declare-fun res!504712 () Bool)

(assert (=> b!748122 (=> (not res!504712) (not e!417609))))

(assert (=> b!748122 (= res!504712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748123 () Bool)

(declare-fun res!504719 () Bool)

(assert (=> b!748123 (=> (not res!504719) (not e!417609))))

(assert (=> b!748123 (= res!504719 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20373 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20373 a!3186))))))

(declare-fun b!748124 () Bool)

(declare-fun res!504711 () Bool)

(assert (=> b!748124 (=> (not res!504711) (not e!417611))))

(assert (=> b!748124 (= res!504711 (validKeyInArray!0 k!2102))))

(assert (= (and start!65558 res!504713) b!748119))

(assert (= (and b!748119 res!504709) b!748117))

(assert (= (and b!748117 res!504718) b!748124))

(assert (= (and b!748124 res!504711) b!748121))

(assert (= (and b!748121 res!504723) b!748107))

(assert (= (and b!748107 res!504721) b!748122))

(assert (= (and b!748122 res!504712) b!748113))

(assert (= (and b!748113 res!504715) b!748123))

(assert (= (and b!748123 res!504719) b!748115))

(assert (= (and b!748115 res!504720) b!748118))

(assert (= (and b!748118 res!504714) b!748108))

(assert (= (and b!748108 c!82079) b!748105))

(assert (= (and b!748108 (not c!82079)) b!748104))

(assert (= (and b!748108 res!504722) b!748114))

(assert (= (and b!748114 res!504707) b!748112))

(assert (= (and b!748112 res!504716) b!748106))

(assert (= (and b!748112 (not res!504717)) b!748110))

(assert (= (and b!748110 (not res!504708)) b!748109))

(assert (= (and b!748109 (not res!504710)) b!748116))

(assert (= (and b!748116 c!82080) b!748111))

(assert (= (and b!748116 (not c!82080)) b!748120))

(declare-fun m!698095 () Bool)

(assert (=> b!748107 m!698095))

(declare-fun m!698097 () Bool)

(assert (=> start!65558 m!698097))

(declare-fun m!698099 () Bool)

(assert (=> start!65558 m!698099))

(declare-fun m!698101 () Bool)

(assert (=> b!748115 m!698101))

(assert (=> b!748115 m!698101))

(declare-fun m!698103 () Bool)

(assert (=> b!748115 m!698103))

(assert (=> b!748115 m!698103))

(assert (=> b!748115 m!698101))

(declare-fun m!698105 () Bool)

(assert (=> b!748115 m!698105))

(declare-fun m!698107 () Bool)

(assert (=> b!748116 m!698107))

(declare-fun m!698109 () Bool)

(assert (=> b!748116 m!698109))

(assert (=> b!748117 m!698101))

(assert (=> b!748117 m!698101))

(declare-fun m!698111 () Bool)

(assert (=> b!748117 m!698111))

(assert (=> b!748109 m!698107))

(assert (=> b!748109 m!698109))

(declare-fun m!698113 () Bool)

(assert (=> b!748121 m!698113))

(assert (=> b!748112 m!698101))

(assert (=> b!748112 m!698101))

(declare-fun m!698115 () Bool)

(assert (=> b!748112 m!698115))

(declare-fun m!698117 () Bool)

(assert (=> b!748112 m!698117))

(declare-fun m!698119 () Bool)

(assert (=> b!748112 m!698119))

(declare-fun m!698121 () Bool)

(assert (=> b!748124 m!698121))

(assert (=> b!748106 m!698101))

(assert (=> b!748106 m!698101))

(declare-fun m!698123 () Bool)

(assert (=> b!748106 m!698123))

(declare-fun m!698125 () Bool)

(assert (=> b!748118 m!698125))

(declare-fun m!698127 () Bool)

(assert (=> b!748113 m!698127))

(assert (=> b!748104 m!698101))

(assert (=> b!748104 m!698101))

(declare-fun m!698129 () Bool)

(assert (=> b!748104 m!698129))

(declare-fun m!698131 () Bool)

(assert (=> b!748114 m!698131))

(declare-fun m!698133 () Bool)

(assert (=> b!748114 m!698133))

(assert (=> b!748114 m!698107))

(declare-fun m!698135 () Bool)

(assert (=> b!748114 m!698135))

(declare-fun m!698137 () Bool)

(assert (=> b!748114 m!698137))

(assert (=> b!748114 m!698135))

(assert (=> b!748110 m!698101))

(assert (=> b!748110 m!698101))

(assert (=> b!748110 m!698129))

(declare-fun m!698139 () Bool)

(assert (=> b!748122 m!698139))

(assert (=> b!748105 m!698101))

(assert (=> b!748105 m!698101))

(declare-fun m!698141 () Bool)

(assert (=> b!748105 m!698141))

(push 1)

