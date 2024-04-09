; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66320 () Bool)

(assert start!66320)

(declare-fun b!764103 () Bool)

(declare-fun res!517132 () Bool)

(declare-fun e!425614 () Bool)

(assert (=> b!764103 (=> (not res!517132) (not e!425614))))

(declare-datatypes ((array!42178 0))(
  ( (array!42179 (arr!20193 (Array (_ BitVec 32) (_ BitVec 64))) (size!20614 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42178)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764103 (= res!517132 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764104 () Bool)

(declare-fun res!517131 () Bool)

(assert (=> b!764104 (=> (not res!517131) (not e!425614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764104 (= res!517131 (validKeyInArray!0 k!2102))))

(declare-fun b!764105 () Bool)

(declare-fun res!517135 () Bool)

(assert (=> b!764105 (=> (not res!517135) (not e!425614))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!764105 (= res!517135 (validKeyInArray!0 (select (arr!20193 a!3186) j!159)))))

(declare-fun b!764106 () Bool)

(declare-fun res!517137 () Bool)

(declare-fun e!425610 () Bool)

(assert (=> b!764106 (=> (not res!517137) (not e!425610))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42178 (_ BitVec 32)) Bool)

(assert (=> b!764106 (= res!517137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764107 () Bool)

(declare-fun res!517140 () Bool)

(assert (=> b!764107 (=> (not res!517140) (not e!425614))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764107 (= res!517140 (and (= (size!20614 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20614 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20614 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!764108 () Bool)

(assert (=> b!764108 (= e!425614 e!425610)))

(declare-fun res!517138 () Bool)

(assert (=> b!764108 (=> (not res!517138) (not e!425610))))

(declare-datatypes ((SeekEntryResult!7800 0))(
  ( (MissingZero!7800 (index!33567 (_ BitVec 32))) (Found!7800 (index!33568 (_ BitVec 32))) (Intermediate!7800 (undefined!8612 Bool) (index!33569 (_ BitVec 32)) (x!64493 (_ BitVec 32))) (Undefined!7800) (MissingVacant!7800 (index!33570 (_ BitVec 32))) )
))
(declare-fun lt!340048 () SeekEntryResult!7800)

(assert (=> b!764108 (= res!517138 (or (= lt!340048 (MissingZero!7800 i!1173)) (= lt!340048 (MissingVacant!7800 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42178 (_ BitVec 32)) SeekEntryResult!7800)

(assert (=> b!764108 (= lt!340048 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!764109 () Bool)

(declare-fun e!425611 () Bool)

(assert (=> b!764109 (= e!425611 (not true))))

(assert (=> b!764109 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26326 0))(
  ( (Unit!26327) )
))
(declare-fun lt!340049 () Unit!26326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26326)

(assert (=> b!764109 (= lt!340049 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764110 () Bool)

(declare-fun e!425612 () Bool)

(assert (=> b!764110 (= e!425610 e!425612)))

(declare-fun res!517139 () Bool)

(assert (=> b!764110 (=> (not res!517139) (not e!425612))))

(declare-fun lt!340051 () SeekEntryResult!7800)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42178 (_ BitVec 32)) SeekEntryResult!7800)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764110 (= res!517139 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20193 a!3186) j!159) mask!3328) (select (arr!20193 a!3186) j!159) a!3186 mask!3328) lt!340051))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764110 (= lt!340051 (Intermediate!7800 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764111 () Bool)

(declare-fun res!517129 () Bool)

(assert (=> b!764111 (=> (not res!517129) (not e!425612))))

(assert (=> b!764111 (= res!517129 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20193 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!517136 () Bool)

(assert (=> start!66320 (=> (not res!517136) (not e!425614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66320 (= res!517136 (validMask!0 mask!3328))))

(assert (=> start!66320 e!425614))

(assert (=> start!66320 true))

(declare-fun array_inv!15967 (array!42178) Bool)

(assert (=> start!66320 (array_inv!15967 a!3186)))

(declare-fun b!764112 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425615 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42178 (_ BitVec 32)) SeekEntryResult!7800)

(assert (=> b!764112 (= e!425615 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20193 a!3186) j!159) a!3186 mask!3328) (Found!7800 j!159)))))

(declare-fun b!764113 () Bool)

(declare-fun res!517134 () Bool)

(assert (=> b!764113 (=> (not res!517134) (not e!425610))))

(declare-datatypes ((List!14248 0))(
  ( (Nil!14245) (Cons!14244 (h!15328 (_ BitVec 64)) (t!20571 List!14248)) )
))
(declare-fun arrayNoDuplicates!0 (array!42178 (_ BitVec 32) List!14248) Bool)

(assert (=> b!764113 (= res!517134 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14245))))

(declare-fun b!764114 () Bool)

(declare-fun res!517128 () Bool)

(assert (=> b!764114 (=> (not res!517128) (not e!425610))))

(assert (=> b!764114 (= res!517128 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20614 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20614 a!3186))))))

(declare-fun b!764115 () Bool)

(assert (=> b!764115 (= e!425612 e!425611)))

(declare-fun res!517133 () Bool)

(assert (=> b!764115 (=> (not res!517133) (not e!425611))))

(declare-fun lt!340050 () (_ BitVec 64))

(declare-fun lt!340047 () array!42178)

(assert (=> b!764115 (= res!517133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340050 mask!3328) lt!340050 lt!340047 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340050 lt!340047 mask!3328)))))

(assert (=> b!764115 (= lt!340050 (select (store (arr!20193 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764115 (= lt!340047 (array!42179 (store (arr!20193 a!3186) i!1173 k!2102) (size!20614 a!3186)))))

(declare-fun b!764116 () Bool)

(assert (=> b!764116 (= e!425615 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20193 a!3186) j!159) a!3186 mask!3328) lt!340051))))

(declare-fun b!764117 () Bool)

(declare-fun res!517130 () Bool)

(assert (=> b!764117 (=> (not res!517130) (not e!425612))))

(assert (=> b!764117 (= res!517130 e!425615)))

(declare-fun c!83874 () Bool)

(assert (=> b!764117 (= c!83874 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66320 res!517136) b!764107))

(assert (= (and b!764107 res!517140) b!764105))

(assert (= (and b!764105 res!517135) b!764104))

(assert (= (and b!764104 res!517131) b!764103))

(assert (= (and b!764103 res!517132) b!764108))

(assert (= (and b!764108 res!517138) b!764106))

(assert (= (and b!764106 res!517137) b!764113))

(assert (= (and b!764113 res!517134) b!764114))

(assert (= (and b!764114 res!517128) b!764110))

(assert (= (and b!764110 res!517139) b!764111))

(assert (= (and b!764111 res!517129) b!764117))

(assert (= (and b!764117 c!83874) b!764116))

(assert (= (and b!764117 (not c!83874)) b!764112))

(assert (= (and b!764117 res!517130) b!764115))

(assert (= (and b!764115 res!517133) b!764109))

(declare-fun m!710567 () Bool)

(assert (=> b!764108 m!710567))

(declare-fun m!710569 () Bool)

(assert (=> b!764111 m!710569))

(declare-fun m!710571 () Bool)

(assert (=> b!764104 m!710571))

(declare-fun m!710573 () Bool)

(assert (=> b!764115 m!710573))

(declare-fun m!710575 () Bool)

(assert (=> b!764115 m!710575))

(assert (=> b!764115 m!710573))

(declare-fun m!710577 () Bool)

(assert (=> b!764115 m!710577))

(declare-fun m!710579 () Bool)

(assert (=> b!764115 m!710579))

(declare-fun m!710581 () Bool)

(assert (=> b!764115 m!710581))

(declare-fun m!710583 () Bool)

(assert (=> b!764110 m!710583))

(assert (=> b!764110 m!710583))

(declare-fun m!710585 () Bool)

(assert (=> b!764110 m!710585))

(assert (=> b!764110 m!710585))

(assert (=> b!764110 m!710583))

(declare-fun m!710587 () Bool)

(assert (=> b!764110 m!710587))

(declare-fun m!710589 () Bool)

(assert (=> b!764106 m!710589))

(assert (=> b!764105 m!710583))

(assert (=> b!764105 m!710583))

(declare-fun m!710591 () Bool)

(assert (=> b!764105 m!710591))

(assert (=> b!764116 m!710583))

(assert (=> b!764116 m!710583))

(declare-fun m!710593 () Bool)

(assert (=> b!764116 m!710593))

(declare-fun m!710595 () Bool)

(assert (=> start!66320 m!710595))

(declare-fun m!710597 () Bool)

(assert (=> start!66320 m!710597))

(declare-fun m!710599 () Bool)

(assert (=> b!764103 m!710599))

(declare-fun m!710601 () Bool)

(assert (=> b!764113 m!710601))

(declare-fun m!710603 () Bool)

(assert (=> b!764109 m!710603))

(declare-fun m!710605 () Bool)

(assert (=> b!764109 m!710605))

(assert (=> b!764112 m!710583))

(assert (=> b!764112 m!710583))

(declare-fun m!710607 () Bool)

(assert (=> b!764112 m!710607))

(push 1)

