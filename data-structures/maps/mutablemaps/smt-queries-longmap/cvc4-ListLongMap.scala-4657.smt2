; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64736 () Bool)

(assert start!64736)

(declare-fun b!730014 () Bool)

(declare-fun e!408569 () Bool)

(declare-fun e!408574 () Bool)

(assert (=> b!730014 (= e!408569 (not e!408574))))

(declare-fun res!490491 () Bool)

(assert (=> b!730014 (=> res!490491 e!408574)))

(declare-datatypes ((SeekEntryResult!7292 0))(
  ( (MissingZero!7292 (index!31535 (_ BitVec 32))) (Found!7292 (index!31536 (_ BitVec 32))) (Intermediate!7292 (undefined!8104 Bool) (index!31537 (_ BitVec 32)) (x!62539 (_ BitVec 32))) (Undefined!7292) (MissingVacant!7292 (index!31538 (_ BitVec 32))) )
))
(declare-fun lt!323482 () SeekEntryResult!7292)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!730014 (= res!490491 (or (not (is-Intermediate!7292 lt!323482)) (bvsge x!1131 (x!62539 lt!323482))))))

(declare-fun e!408575 () Bool)

(assert (=> b!730014 e!408575))

(declare-fun res!490490 () Bool)

(assert (=> b!730014 (=> (not res!490490) (not e!408575))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41138 0))(
  ( (array!41139 (arr!19685 (Array (_ BitVec 32) (_ BitVec 64))) (size!20106 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41138)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41138 (_ BitVec 32)) Bool)

(assert (=> b!730014 (= res!490490 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24902 0))(
  ( (Unit!24903) )
))
(declare-fun lt!323477 () Unit!24902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24902)

(assert (=> b!730014 (= lt!323477 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730015 () Bool)

(declare-fun res!490483 () Bool)

(declare-fun e!408568 () Bool)

(assert (=> b!730015 (=> (not res!490483) (not e!408568))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730015 (= res!490483 (validKeyInArray!0 k!2102))))

(declare-fun b!730016 () Bool)

(declare-fun res!490482 () Bool)

(assert (=> b!730016 (=> (not res!490482) (not e!408568))))

(declare-fun arrayContainsKey!0 (array!41138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730016 (= res!490482 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!730017 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!323479 () SeekEntryResult!7292)

(declare-fun e!408571 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41138 (_ BitVec 32)) SeekEntryResult!7292)

(assert (=> b!730017 (= e!408571 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19685 a!3186) j!159) a!3186 mask!3328) lt!323479))))

(declare-fun b!730018 () Bool)

(declare-fun res!490485 () Bool)

(declare-fun e!408572 () Bool)

(assert (=> b!730018 (=> (not res!490485) (not e!408572))))

(declare-datatypes ((List!13740 0))(
  ( (Nil!13737) (Cons!13736 (h!14796 (_ BitVec 64)) (t!20063 List!13740)) )
))
(declare-fun arrayNoDuplicates!0 (array!41138 (_ BitVec 32) List!13740) Bool)

(assert (=> b!730018 (= res!490485 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13737))))

(declare-fun b!730019 () Bool)

(declare-fun res!490484 () Bool)

(declare-fun e!408576 () Bool)

(assert (=> b!730019 (=> (not res!490484) (not e!408576))))

(declare-fun e!408573 () Bool)

(assert (=> b!730019 (= res!490484 e!408573)))

(declare-fun c!80142 () Bool)

(assert (=> b!730019 (= c!80142 (bvsle x!1131 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!730020 () Bool)

(declare-fun lt!323478 () SeekEntryResult!7292)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41138 (_ BitVec 32)) SeekEntryResult!7292)

(assert (=> b!730020 (= e!408573 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19685 a!3186) j!159) a!3186 mask!3328) lt!323478))))

(declare-fun b!730021 () Bool)

(assert (=> b!730021 (= e!408576 e!408569)))

(declare-fun res!490494 () Bool)

(assert (=> b!730021 (=> (not res!490494) (not e!408569))))

(declare-fun lt!323475 () SeekEntryResult!7292)

(assert (=> b!730021 (= res!490494 (= lt!323475 lt!323482))))

(declare-fun lt!323483 () (_ BitVec 64))

(declare-fun lt!323480 () array!41138)

(assert (=> b!730021 (= lt!323482 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323483 lt!323480 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730021 (= lt!323475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323483 mask!3328) lt!323483 lt!323480 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730021 (= lt!323483 (select (store (arr!19685 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730021 (= lt!323480 (array!41139 (store (arr!19685 a!3186) i!1173 k!2102) (size!20106 a!3186)))))

(declare-fun b!730022 () Bool)

(assert (=> b!730022 (= e!408575 e!408571)))

(declare-fun res!490488 () Bool)

(assert (=> b!730022 (=> (not res!490488) (not e!408571))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41138 (_ BitVec 32)) SeekEntryResult!7292)

(assert (=> b!730022 (= res!490488 (= (seekEntryOrOpen!0 (select (arr!19685 a!3186) j!159) a!3186 mask!3328) lt!323479))))

(assert (=> b!730022 (= lt!323479 (Found!7292 j!159))))

(declare-fun b!730023 () Bool)

(assert (=> b!730023 (= e!408568 e!408572)))

(declare-fun res!490481 () Bool)

(assert (=> b!730023 (=> (not res!490481) (not e!408572))))

(declare-fun lt!323476 () SeekEntryResult!7292)

(assert (=> b!730023 (= res!490481 (or (= lt!323476 (MissingZero!7292 i!1173)) (= lt!323476 (MissingVacant!7292 i!1173))))))

(assert (=> b!730023 (= lt!323476 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730025 () Bool)

(declare-fun res!490486 () Bool)

(assert (=> b!730025 (=> (not res!490486) (not e!408568))))

(assert (=> b!730025 (= res!490486 (validKeyInArray!0 (select (arr!19685 a!3186) j!159)))))

(declare-fun b!730026 () Bool)

(declare-fun res!490493 () Bool)

(assert (=> b!730026 (=> (not res!490493) (not e!408576))))

(assert (=> b!730026 (= res!490493 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19685 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730027 () Bool)

(declare-fun res!490487 () Bool)

(assert (=> b!730027 (=> (not res!490487) (not e!408568))))

(assert (=> b!730027 (= res!490487 (and (= (size!20106 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20106 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20106 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730028 () Bool)

(declare-fun res!490479 () Bool)

(assert (=> b!730028 (=> (not res!490479) (not e!408572))))

(assert (=> b!730028 (= res!490479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730029 () Bool)

(declare-fun res!490489 () Bool)

(assert (=> b!730029 (=> (not res!490489) (not e!408572))))

(assert (=> b!730029 (= res!490489 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20106 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20106 a!3186))))))

(declare-fun b!730030 () Bool)

(assert (=> b!730030 (= e!408574 true)))

(declare-fun lt!323481 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730030 (= lt!323481 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730031 () Bool)

(assert (=> b!730031 (= e!408572 e!408576)))

(declare-fun res!490480 () Bool)

(assert (=> b!730031 (=> (not res!490480) (not e!408576))))

(assert (=> b!730031 (= res!490480 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19685 a!3186) j!159) mask!3328) (select (arr!19685 a!3186) j!159) a!3186 mask!3328) lt!323478))))

(assert (=> b!730031 (= lt!323478 (Intermediate!7292 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730024 () Bool)

(assert (=> b!730024 (= e!408573 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19685 a!3186) j!159) a!3186 mask!3328) (Found!7292 j!159)))))

(declare-fun res!490492 () Bool)

(assert (=> start!64736 (=> (not res!490492) (not e!408568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64736 (= res!490492 (validMask!0 mask!3328))))

(assert (=> start!64736 e!408568))

(assert (=> start!64736 true))

(declare-fun array_inv!15459 (array!41138) Bool)

(assert (=> start!64736 (array_inv!15459 a!3186)))

(assert (= (and start!64736 res!490492) b!730027))

(assert (= (and b!730027 res!490487) b!730025))

(assert (= (and b!730025 res!490486) b!730015))

(assert (= (and b!730015 res!490483) b!730016))

(assert (= (and b!730016 res!490482) b!730023))

(assert (= (and b!730023 res!490481) b!730028))

(assert (= (and b!730028 res!490479) b!730018))

(assert (= (and b!730018 res!490485) b!730029))

(assert (= (and b!730029 res!490489) b!730031))

(assert (= (and b!730031 res!490480) b!730026))

(assert (= (and b!730026 res!490493) b!730019))

(assert (= (and b!730019 c!80142) b!730020))

(assert (= (and b!730019 (not c!80142)) b!730024))

(assert (= (and b!730019 res!490484) b!730021))

(assert (= (and b!730021 res!490494) b!730014))

(assert (= (and b!730014 res!490490) b!730022))

(assert (= (and b!730022 res!490488) b!730017))

(assert (= (and b!730014 (not res!490491)) b!730030))

(declare-fun m!683677 () Bool)

(assert (=> b!730025 m!683677))

(assert (=> b!730025 m!683677))

(declare-fun m!683679 () Bool)

(assert (=> b!730025 m!683679))

(declare-fun m!683681 () Bool)

(assert (=> start!64736 m!683681))

(declare-fun m!683683 () Bool)

(assert (=> start!64736 m!683683))

(assert (=> b!730017 m!683677))

(assert (=> b!730017 m!683677))

(declare-fun m!683685 () Bool)

(assert (=> b!730017 m!683685))

(declare-fun m!683687 () Bool)

(assert (=> b!730026 m!683687))

(declare-fun m!683689 () Bool)

(assert (=> b!730014 m!683689))

(declare-fun m!683691 () Bool)

(assert (=> b!730014 m!683691))

(declare-fun m!683693 () Bool)

(assert (=> b!730030 m!683693))

(declare-fun m!683695 () Bool)

(assert (=> b!730015 m!683695))

(declare-fun m!683697 () Bool)

(assert (=> b!730021 m!683697))

(declare-fun m!683699 () Bool)

(assert (=> b!730021 m!683699))

(declare-fun m!683701 () Bool)

(assert (=> b!730021 m!683701))

(assert (=> b!730021 m!683697))

(declare-fun m!683703 () Bool)

(assert (=> b!730021 m!683703))

(declare-fun m!683705 () Bool)

(assert (=> b!730021 m!683705))

(assert (=> b!730022 m!683677))

(assert (=> b!730022 m!683677))

(declare-fun m!683707 () Bool)

(assert (=> b!730022 m!683707))

(declare-fun m!683709 () Bool)

(assert (=> b!730028 m!683709))

(declare-fun m!683711 () Bool)

(assert (=> b!730016 m!683711))

(declare-fun m!683713 () Bool)

(assert (=> b!730018 m!683713))

(declare-fun m!683715 () Bool)

(assert (=> b!730023 m!683715))

(assert (=> b!730024 m!683677))

(assert (=> b!730024 m!683677))

(declare-fun m!683717 () Bool)

(assert (=> b!730024 m!683717))

(assert (=> b!730020 m!683677))

(assert (=> b!730020 m!683677))

(declare-fun m!683719 () Bool)

(assert (=> b!730020 m!683719))

(assert (=> b!730031 m!683677))

(assert (=> b!730031 m!683677))

(declare-fun m!683721 () Bool)

(assert (=> b!730031 m!683721))

(assert (=> b!730031 m!683721))

(assert (=> b!730031 m!683677))

(declare-fun m!683723 () Bool)

(assert (=> b!730031 m!683723))

(push 1)

