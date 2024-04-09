; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64482 () Bool)

(assert start!64482)

(declare-fun b!724790 () Bool)

(declare-fun res!486097 () Bool)

(declare-fun e!405966 () Bool)

(assert (=> b!724790 (=> (not res!486097) (not e!405966))))

(declare-datatypes ((array!40953 0))(
  ( (array!40954 (arr!19594 (Array (_ BitVec 32) (_ BitVec 64))) (size!20015 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40953)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!724790 (= res!486097 (and (= (size!20015 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20015 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20015 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724791 () Bool)

(declare-fun res!486095 () Bool)

(assert (=> b!724791 (=> (not res!486095) (not e!405966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724791 (= res!486095 (validKeyInArray!0 (select (arr!19594 a!3186) j!159)))))

(declare-fun b!724792 () Bool)

(declare-fun e!405970 () Bool)

(assert (=> b!724792 (= e!405970 (not true))))

(declare-fun e!405969 () Bool)

(assert (=> b!724792 e!405969))

(declare-fun res!486102 () Bool)

(assert (=> b!724792 (=> (not res!486102) (not e!405969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40953 (_ BitVec 32)) Bool)

(assert (=> b!724792 (= res!486102 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24720 0))(
  ( (Unit!24721) )
))
(declare-fun lt!321130 () Unit!24720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24720)

(assert (=> b!724792 (= lt!321130 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724793 () Bool)

(declare-fun e!405971 () Bool)

(declare-fun e!405967 () Bool)

(assert (=> b!724793 (= e!405971 e!405967)))

(declare-fun res!486100 () Bool)

(assert (=> b!724793 (=> (not res!486100) (not e!405967))))

(declare-datatypes ((SeekEntryResult!7201 0))(
  ( (MissingZero!7201 (index!31171 (_ BitVec 32))) (Found!7201 (index!31172 (_ BitVec 32))) (Intermediate!7201 (undefined!8013 Bool) (index!31173 (_ BitVec 32)) (x!62196 (_ BitVec 32))) (Undefined!7201) (MissingVacant!7201 (index!31174 (_ BitVec 32))) )
))
(declare-fun lt!321134 () SeekEntryResult!7201)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40953 (_ BitVec 32)) SeekEntryResult!7201)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724793 (= res!486100 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19594 a!3186) j!159) mask!3328) (select (arr!19594 a!3186) j!159) a!3186 mask!3328) lt!321134))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724793 (= lt!321134 (Intermediate!7201 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724794 () Bool)

(declare-fun res!486094 () Bool)

(assert (=> b!724794 (=> (not res!486094) (not e!405967))))

(assert (=> b!724794 (= res!486094 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19594 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405968 () Bool)

(declare-fun b!724795 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40953 (_ BitVec 32)) SeekEntryResult!7201)

(assert (=> b!724795 (= e!405968 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19594 a!3186) j!159) a!3186 mask!3328) (Found!7201 j!159)))))

(declare-fun b!724796 () Bool)

(declare-fun res!486093 () Bool)

(assert (=> b!724796 (=> (not res!486093) (not e!405966))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724796 (= res!486093 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!486103 () Bool)

(assert (=> start!64482 (=> (not res!486103) (not e!405966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64482 (= res!486103 (validMask!0 mask!3328))))

(assert (=> start!64482 e!405966))

(assert (=> start!64482 true))

(declare-fun array_inv!15368 (array!40953) Bool)

(assert (=> start!64482 (array_inv!15368 a!3186)))

(declare-fun b!724797 () Bool)

(declare-fun res!486099 () Bool)

(assert (=> b!724797 (=> (not res!486099) (not e!405971))))

(assert (=> b!724797 (= res!486099 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20015 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20015 a!3186))))))

(declare-fun b!724798 () Bool)

(assert (=> b!724798 (= e!405967 e!405970)))

(declare-fun res!486105 () Bool)

(assert (=> b!724798 (=> (not res!486105) (not e!405970))))

(declare-fun lt!321133 () (_ BitVec 64))

(declare-fun lt!321132 () array!40953)

(assert (=> b!724798 (= res!486105 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321133 mask!3328) lt!321133 lt!321132 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321133 lt!321132 mask!3328)))))

(assert (=> b!724798 (= lt!321133 (select (store (arr!19594 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!724798 (= lt!321132 (array!40954 (store (arr!19594 a!3186) i!1173 k0!2102) (size!20015 a!3186)))))

(declare-fun b!724799 () Bool)

(declare-fun res!486092 () Bool)

(assert (=> b!724799 (=> (not res!486092) (not e!405967))))

(assert (=> b!724799 (= res!486092 e!405968)))

(declare-fun c!79722 () Bool)

(assert (=> b!724799 (= c!79722 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724800 () Bool)

(declare-fun res!486101 () Bool)

(assert (=> b!724800 (=> (not res!486101) (not e!405971))))

(declare-datatypes ((List!13649 0))(
  ( (Nil!13646) (Cons!13645 (h!14702 (_ BitVec 64)) (t!19972 List!13649)) )
))
(declare-fun arrayNoDuplicates!0 (array!40953 (_ BitVec 32) List!13649) Bool)

(assert (=> b!724800 (= res!486101 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13646))))

(declare-fun b!724801 () Bool)

(declare-fun res!486098 () Bool)

(assert (=> b!724801 (=> (not res!486098) (not e!405971))))

(assert (=> b!724801 (= res!486098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724802 () Bool)

(declare-fun res!486096 () Bool)

(assert (=> b!724802 (=> (not res!486096) (not e!405966))))

(assert (=> b!724802 (= res!486096 (validKeyInArray!0 k0!2102))))

(declare-fun b!724803 () Bool)

(assert (=> b!724803 (= e!405968 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19594 a!3186) j!159) a!3186 mask!3328) lt!321134))))

(declare-fun b!724804 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40953 (_ BitVec 32)) SeekEntryResult!7201)

(assert (=> b!724804 (= e!405969 (= (seekEntryOrOpen!0 (select (arr!19594 a!3186) j!159) a!3186 mask!3328) (Found!7201 j!159)))))

(declare-fun b!724805 () Bool)

(assert (=> b!724805 (= e!405966 e!405971)))

(declare-fun res!486104 () Bool)

(assert (=> b!724805 (=> (not res!486104) (not e!405971))))

(declare-fun lt!321131 () SeekEntryResult!7201)

(assert (=> b!724805 (= res!486104 (or (= lt!321131 (MissingZero!7201 i!1173)) (= lt!321131 (MissingVacant!7201 i!1173))))))

(assert (=> b!724805 (= lt!321131 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!64482 res!486103) b!724790))

(assert (= (and b!724790 res!486097) b!724791))

(assert (= (and b!724791 res!486095) b!724802))

(assert (= (and b!724802 res!486096) b!724796))

(assert (= (and b!724796 res!486093) b!724805))

(assert (= (and b!724805 res!486104) b!724801))

(assert (= (and b!724801 res!486098) b!724800))

(assert (= (and b!724800 res!486101) b!724797))

(assert (= (and b!724797 res!486099) b!724793))

(assert (= (and b!724793 res!486100) b!724794))

(assert (= (and b!724794 res!486094) b!724799))

(assert (= (and b!724799 c!79722) b!724803))

(assert (= (and b!724799 (not c!79722)) b!724795))

(assert (= (and b!724799 res!486092) b!724798))

(assert (= (and b!724798 res!486105) b!724792))

(assert (= (and b!724792 res!486102) b!724804))

(declare-fun m!679101 () Bool)

(assert (=> b!724791 m!679101))

(assert (=> b!724791 m!679101))

(declare-fun m!679103 () Bool)

(assert (=> b!724791 m!679103))

(declare-fun m!679105 () Bool)

(assert (=> b!724801 m!679105))

(assert (=> b!724793 m!679101))

(assert (=> b!724793 m!679101))

(declare-fun m!679107 () Bool)

(assert (=> b!724793 m!679107))

(assert (=> b!724793 m!679107))

(assert (=> b!724793 m!679101))

(declare-fun m!679109 () Bool)

(assert (=> b!724793 m!679109))

(declare-fun m!679111 () Bool)

(assert (=> b!724796 m!679111))

(declare-fun m!679113 () Bool)

(assert (=> b!724805 m!679113))

(declare-fun m!679115 () Bool)

(assert (=> b!724792 m!679115))

(declare-fun m!679117 () Bool)

(assert (=> b!724792 m!679117))

(assert (=> b!724795 m!679101))

(assert (=> b!724795 m!679101))

(declare-fun m!679119 () Bool)

(assert (=> b!724795 m!679119))

(assert (=> b!724803 m!679101))

(assert (=> b!724803 m!679101))

(declare-fun m!679121 () Bool)

(assert (=> b!724803 m!679121))

(declare-fun m!679123 () Bool)

(assert (=> b!724794 m!679123))

(declare-fun m!679125 () Bool)

(assert (=> b!724802 m!679125))

(declare-fun m!679127 () Bool)

(assert (=> b!724798 m!679127))

(declare-fun m!679129 () Bool)

(assert (=> b!724798 m!679129))

(declare-fun m!679131 () Bool)

(assert (=> b!724798 m!679131))

(declare-fun m!679133 () Bool)

(assert (=> b!724798 m!679133))

(declare-fun m!679135 () Bool)

(assert (=> b!724798 m!679135))

(assert (=> b!724798 m!679129))

(declare-fun m!679137 () Bool)

(assert (=> b!724800 m!679137))

(declare-fun m!679139 () Bool)

(assert (=> start!64482 m!679139))

(declare-fun m!679141 () Bool)

(assert (=> start!64482 m!679141))

(assert (=> b!724804 m!679101))

(assert (=> b!724804 m!679101))

(declare-fun m!679143 () Bool)

(assert (=> b!724804 m!679143))

(check-sat (not b!724798) (not b!724801) (not start!64482) (not b!724803) (not b!724793) (not b!724792) (not b!724800) (not b!724802) (not b!724796) (not b!724805) (not b!724791) (not b!724804) (not b!724795))
(check-sat)
