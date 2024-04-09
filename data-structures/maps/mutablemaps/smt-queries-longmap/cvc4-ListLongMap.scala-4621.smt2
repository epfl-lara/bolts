; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64382 () Bool)

(assert start!64382)

(declare-datatypes ((array!40916 0))(
  ( (array!40917 (arr!19577 (Array (_ BitVec 32) (_ BitVec 64))) (size!19998 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40916)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!405371 () Bool)

(declare-fun b!723575 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7184 0))(
  ( (MissingZero!7184 (index!31103 (_ BitVec 32))) (Found!7184 (index!31104 (_ BitVec 32))) (Intermediate!7184 (undefined!7996 Bool) (index!31105 (_ BitVec 32)) (x!62122 (_ BitVec 32))) (Undefined!7184) (MissingVacant!7184 (index!31106 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40916 (_ BitVec 32)) SeekEntryResult!7184)

(assert (=> b!723575 (= e!405371 (= (seekEntryOrOpen!0 (select (arr!19577 a!3186) j!159) a!3186 mask!3328) (Found!7184 j!159)))))

(declare-fun b!723576 () Bool)

(declare-fun res!485264 () Bool)

(declare-fun e!405369 () Bool)

(assert (=> b!723576 (=> (not res!485264) (not e!405369))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723576 (= res!485264 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19998 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19998 a!3186))))))

(declare-fun b!723577 () Bool)

(declare-fun e!405367 () Bool)

(assert (=> b!723577 (= e!405369 e!405367)))

(declare-fun res!485252 () Bool)

(assert (=> b!723577 (=> (not res!485252) (not e!405367))))

(declare-fun lt!320717 () SeekEntryResult!7184)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40916 (_ BitVec 32)) SeekEntryResult!7184)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723577 (= res!485252 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19577 a!3186) j!159) mask!3328) (select (arr!19577 a!3186) j!159) a!3186 mask!3328) lt!320717))))

(assert (=> b!723577 (= lt!320717 (Intermediate!7184 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723578 () Bool)

(declare-fun res!485257 () Bool)

(assert (=> b!723578 (=> (not res!485257) (not e!405367))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723578 (= res!485257 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19577 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723579 () Bool)

(declare-fun res!485258 () Bool)

(declare-fun e!405368 () Bool)

(assert (=> b!723579 (=> (not res!485258) (not e!405368))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723579 (= res!485258 (validKeyInArray!0 k!2102))))

(declare-fun b!723580 () Bool)

(declare-fun res!485254 () Bool)

(assert (=> b!723580 (=> (not res!485254) (not e!405369))))

(declare-datatypes ((List!13632 0))(
  ( (Nil!13629) (Cons!13628 (h!14682 (_ BitVec 64)) (t!19955 List!13632)) )
))
(declare-fun arrayNoDuplicates!0 (array!40916 (_ BitVec 32) List!13632) Bool)

(assert (=> b!723580 (= res!485254 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13629))))

(declare-fun b!723581 () Bool)

(declare-fun res!485253 () Bool)

(assert (=> b!723581 (=> (not res!485253) (not e!405368))))

(assert (=> b!723581 (= res!485253 (validKeyInArray!0 (select (arr!19577 a!3186) j!159)))))

(declare-fun b!723582 () Bool)

(declare-fun e!405370 () Bool)

(assert (=> b!723582 (= e!405367 e!405370)))

(declare-fun res!485256 () Bool)

(assert (=> b!723582 (=> (not res!485256) (not e!405370))))

(declare-fun lt!320718 () array!40916)

(declare-fun lt!320719 () (_ BitVec 64))

(assert (=> b!723582 (= res!485256 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320719 mask!3328) lt!320719 lt!320718 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320719 lt!320718 mask!3328)))))

(assert (=> b!723582 (= lt!320719 (select (store (arr!19577 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723582 (= lt!320718 (array!40917 (store (arr!19577 a!3186) i!1173 k!2102) (size!19998 a!3186)))))

(declare-fun b!723583 () Bool)

(declare-fun res!485260 () Bool)

(assert (=> b!723583 (=> (not res!485260) (not e!405368))))

(assert (=> b!723583 (= res!485260 (and (= (size!19998 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19998 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19998 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!485255 () Bool)

(assert (=> start!64382 (=> (not res!485255) (not e!405368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64382 (= res!485255 (validMask!0 mask!3328))))

(assert (=> start!64382 e!405368))

(assert (=> start!64382 true))

(declare-fun array_inv!15351 (array!40916) Bool)

(assert (=> start!64382 (array_inv!15351 a!3186)))

(declare-fun b!723584 () Bool)

(declare-fun e!405372 () Bool)

(assert (=> b!723584 (= e!405372 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19577 a!3186) j!159) a!3186 mask!3328) lt!320717))))

(declare-fun b!723585 () Bool)

(assert (=> b!723585 (= e!405368 e!405369)))

(declare-fun res!485262 () Bool)

(assert (=> b!723585 (=> (not res!485262) (not e!405369))))

(declare-fun lt!320720 () SeekEntryResult!7184)

(assert (=> b!723585 (= res!485262 (or (= lt!320720 (MissingZero!7184 i!1173)) (= lt!320720 (MissingVacant!7184 i!1173))))))

(assert (=> b!723585 (= lt!320720 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723586 () Bool)

(declare-fun res!485265 () Bool)

(assert (=> b!723586 (=> (not res!485265) (not e!405367))))

(assert (=> b!723586 (= res!485265 e!405372)))

(declare-fun c!79533 () Bool)

(assert (=> b!723586 (= c!79533 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723587 () Bool)

(declare-fun res!485259 () Bool)

(assert (=> b!723587 (=> (not res!485259) (not e!405369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40916 (_ BitVec 32)) Bool)

(assert (=> b!723587 (= res!485259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723588 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40916 (_ BitVec 32)) SeekEntryResult!7184)

(assert (=> b!723588 (= e!405372 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19577 a!3186) j!159) a!3186 mask!3328) (Found!7184 j!159)))))

(declare-fun b!723589 () Bool)

(declare-fun res!485261 () Bool)

(assert (=> b!723589 (=> (not res!485261) (not e!405368))))

(declare-fun arrayContainsKey!0 (array!40916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723589 (= res!485261 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723590 () Bool)

(assert (=> b!723590 (= e!405370 (not true))))

(assert (=> b!723590 e!405371))

(declare-fun res!485263 () Bool)

(assert (=> b!723590 (=> (not res!485263) (not e!405371))))

(assert (=> b!723590 (= res!485263 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24686 0))(
  ( (Unit!24687) )
))
(declare-fun lt!320716 () Unit!24686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40916 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24686)

(assert (=> b!723590 (= lt!320716 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64382 res!485255) b!723583))

(assert (= (and b!723583 res!485260) b!723581))

(assert (= (and b!723581 res!485253) b!723579))

(assert (= (and b!723579 res!485258) b!723589))

(assert (= (and b!723589 res!485261) b!723585))

(assert (= (and b!723585 res!485262) b!723587))

(assert (= (and b!723587 res!485259) b!723580))

(assert (= (and b!723580 res!485254) b!723576))

(assert (= (and b!723576 res!485264) b!723577))

(assert (= (and b!723577 res!485252) b!723578))

(assert (= (and b!723578 res!485257) b!723586))

(assert (= (and b!723586 c!79533) b!723584))

(assert (= (and b!723586 (not c!79533)) b!723588))

(assert (= (and b!723586 res!485265) b!723582))

(assert (= (and b!723582 res!485256) b!723590))

(assert (= (and b!723590 res!485263) b!723575))

(declare-fun m!678095 () Bool)

(assert (=> start!64382 m!678095))

(declare-fun m!678097 () Bool)

(assert (=> start!64382 m!678097))

(declare-fun m!678099 () Bool)

(assert (=> b!723587 m!678099))

(declare-fun m!678101 () Bool)

(assert (=> b!723575 m!678101))

(assert (=> b!723575 m!678101))

(declare-fun m!678103 () Bool)

(assert (=> b!723575 m!678103))

(assert (=> b!723577 m!678101))

(assert (=> b!723577 m!678101))

(declare-fun m!678105 () Bool)

(assert (=> b!723577 m!678105))

(assert (=> b!723577 m!678105))

(assert (=> b!723577 m!678101))

(declare-fun m!678107 () Bool)

(assert (=> b!723577 m!678107))

(declare-fun m!678109 () Bool)

(assert (=> b!723589 m!678109))

(assert (=> b!723581 m!678101))

(assert (=> b!723581 m!678101))

(declare-fun m!678111 () Bool)

(assert (=> b!723581 m!678111))

(declare-fun m!678113 () Bool)

(assert (=> b!723585 m!678113))

(declare-fun m!678115 () Bool)

(assert (=> b!723578 m!678115))

(assert (=> b!723588 m!678101))

(assert (=> b!723588 m!678101))

(declare-fun m!678117 () Bool)

(assert (=> b!723588 m!678117))

(assert (=> b!723584 m!678101))

(assert (=> b!723584 m!678101))

(declare-fun m!678119 () Bool)

(assert (=> b!723584 m!678119))

(declare-fun m!678121 () Bool)

(assert (=> b!723590 m!678121))

(declare-fun m!678123 () Bool)

(assert (=> b!723590 m!678123))

(declare-fun m!678125 () Bool)

(assert (=> b!723582 m!678125))

(declare-fun m!678127 () Bool)

(assert (=> b!723582 m!678127))

(declare-fun m!678129 () Bool)

(assert (=> b!723582 m!678129))

(declare-fun m!678131 () Bool)

(assert (=> b!723582 m!678131))

(declare-fun m!678133 () Bool)

(assert (=> b!723582 m!678133))

(assert (=> b!723582 m!678129))

(declare-fun m!678135 () Bool)

(assert (=> b!723580 m!678135))

(declare-fun m!678137 () Bool)

(assert (=> b!723579 m!678137))

(push 1)

