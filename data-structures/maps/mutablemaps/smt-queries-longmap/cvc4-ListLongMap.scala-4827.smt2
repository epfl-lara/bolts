; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66324 () Bool)

(assert start!66324)

(declare-fun b!764193 () Bool)

(declare-fun res!517207 () Bool)

(declare-fun e!425651 () Bool)

(assert (=> b!764193 (=> (not res!517207) (not e!425651))))

(declare-datatypes ((array!42182 0))(
  ( (array!42183 (arr!20195 (Array (_ BitVec 32) (_ BitVec 64))) (size!20616 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42182)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!764193 (= res!517207 (and (= (size!20616 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20616 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20616 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!764194 () Bool)

(declare-fun e!425650 () Bool)

(assert (=> b!764194 (= e!425650 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42182 (_ BitVec 32)) Bool)

(assert (=> b!764194 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26330 0))(
  ( (Unit!26331) )
))
(declare-fun lt!340081 () Unit!26330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42182 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26330)

(assert (=> b!764194 (= lt!340081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764195 () Bool)

(declare-fun res!517210 () Bool)

(declare-fun e!425649 () Bool)

(assert (=> b!764195 (=> (not res!517210) (not e!425649))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764195 (= res!517210 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20616 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20616 a!3186))))))

(declare-fun b!764196 () Bool)

(declare-fun res!517218 () Bool)

(assert (=> b!764196 (=> (not res!517218) (not e!425651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764196 (= res!517218 (validKeyInArray!0 (select (arr!20195 a!3186) j!159)))))

(declare-fun b!764197 () Bool)

(declare-fun e!425647 () Bool)

(assert (=> b!764197 (= e!425649 e!425647)))

(declare-fun res!517216 () Bool)

(assert (=> b!764197 (=> (not res!517216) (not e!425647))))

(declare-datatypes ((SeekEntryResult!7802 0))(
  ( (MissingZero!7802 (index!33575 (_ BitVec 32))) (Found!7802 (index!33576 (_ BitVec 32))) (Intermediate!7802 (undefined!8614 Bool) (index!33577 (_ BitVec 32)) (x!64495 (_ BitVec 32))) (Undefined!7802) (MissingVacant!7802 (index!33578 (_ BitVec 32))) )
))
(declare-fun lt!340078 () SeekEntryResult!7802)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42182 (_ BitVec 32)) SeekEntryResult!7802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764197 (= res!517216 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20195 a!3186) j!159) mask!3328) (select (arr!20195 a!3186) j!159) a!3186 mask!3328) lt!340078))))

(assert (=> b!764197 (= lt!340078 (Intermediate!7802 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764198 () Bool)

(declare-fun res!517215 () Bool)

(assert (=> b!764198 (=> (not res!517215) (not e!425651))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!764198 (= res!517215 (validKeyInArray!0 k!2102))))

(declare-fun b!764199 () Bool)

(declare-fun e!425648 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42182 (_ BitVec 32)) SeekEntryResult!7802)

(assert (=> b!764199 (= e!425648 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20195 a!3186) j!159) a!3186 mask!3328) (Found!7802 j!159)))))

(declare-fun b!764200 () Bool)

(assert (=> b!764200 (= e!425647 e!425650)))

(declare-fun res!517206 () Bool)

(assert (=> b!764200 (=> (not res!517206) (not e!425650))))

(declare-fun lt!340080 () array!42182)

(declare-fun lt!340077 () (_ BitVec 64))

(assert (=> b!764200 (= res!517206 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340077 mask!3328) lt!340077 lt!340080 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340077 lt!340080 mask!3328)))))

(assert (=> b!764200 (= lt!340077 (select (store (arr!20195 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764200 (= lt!340080 (array!42183 (store (arr!20195 a!3186) i!1173 k!2102) (size!20616 a!3186)))))

(declare-fun b!764201 () Bool)

(assert (=> b!764201 (= e!425651 e!425649)))

(declare-fun res!517208 () Bool)

(assert (=> b!764201 (=> (not res!517208) (not e!425649))))

(declare-fun lt!340079 () SeekEntryResult!7802)

(assert (=> b!764201 (= res!517208 (or (= lt!340079 (MissingZero!7802 i!1173)) (= lt!340079 (MissingVacant!7802 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42182 (_ BitVec 32)) SeekEntryResult!7802)

(assert (=> b!764201 (= lt!340079 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!764202 () Bool)

(declare-fun res!517211 () Bool)

(assert (=> b!764202 (=> (not res!517211) (not e!425649))))

(assert (=> b!764202 (= res!517211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764203 () Bool)

(declare-fun res!517217 () Bool)

(assert (=> b!764203 (=> (not res!517217) (not e!425651))))

(declare-fun arrayContainsKey!0 (array!42182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764203 (= res!517217 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764204 () Bool)

(declare-fun res!517209 () Bool)

(assert (=> b!764204 (=> (not res!517209) (not e!425647))))

(assert (=> b!764204 (= res!517209 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20195 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764206 () Bool)

(assert (=> b!764206 (= e!425648 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20195 a!3186) j!159) a!3186 mask!3328) lt!340078))))

(declare-fun b!764207 () Bool)

(declare-fun res!517214 () Bool)

(assert (=> b!764207 (=> (not res!517214) (not e!425649))))

(declare-datatypes ((List!14250 0))(
  ( (Nil!14247) (Cons!14246 (h!15330 (_ BitVec 64)) (t!20573 List!14250)) )
))
(declare-fun arrayNoDuplicates!0 (array!42182 (_ BitVec 32) List!14250) Bool)

(assert (=> b!764207 (= res!517214 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14247))))

(declare-fun b!764205 () Bool)

(declare-fun res!517213 () Bool)

(assert (=> b!764205 (=> (not res!517213) (not e!425647))))

(assert (=> b!764205 (= res!517213 e!425648)))

(declare-fun c!83880 () Bool)

(assert (=> b!764205 (= c!83880 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!517212 () Bool)

(assert (=> start!66324 (=> (not res!517212) (not e!425651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66324 (= res!517212 (validMask!0 mask!3328))))

(assert (=> start!66324 e!425651))

(assert (=> start!66324 true))

(declare-fun array_inv!15969 (array!42182) Bool)

(assert (=> start!66324 (array_inv!15969 a!3186)))

(assert (= (and start!66324 res!517212) b!764193))

(assert (= (and b!764193 res!517207) b!764196))

(assert (= (and b!764196 res!517218) b!764198))

(assert (= (and b!764198 res!517215) b!764203))

(assert (= (and b!764203 res!517217) b!764201))

(assert (= (and b!764201 res!517208) b!764202))

(assert (= (and b!764202 res!517211) b!764207))

(assert (= (and b!764207 res!517214) b!764195))

(assert (= (and b!764195 res!517210) b!764197))

(assert (= (and b!764197 res!517216) b!764204))

(assert (= (and b!764204 res!517209) b!764205))

(assert (= (and b!764205 c!83880) b!764206))

(assert (= (and b!764205 (not c!83880)) b!764199))

(assert (= (and b!764205 res!517213) b!764200))

(assert (= (and b!764200 res!517206) b!764194))

(declare-fun m!710651 () Bool)

(assert (=> b!764194 m!710651))

(declare-fun m!710653 () Bool)

(assert (=> b!764194 m!710653))

(declare-fun m!710655 () Bool)

(assert (=> b!764204 m!710655))

(declare-fun m!710657 () Bool)

(assert (=> b!764196 m!710657))

(assert (=> b!764196 m!710657))

(declare-fun m!710659 () Bool)

(assert (=> b!764196 m!710659))

(declare-fun m!710661 () Bool)

(assert (=> b!764203 m!710661))

(declare-fun m!710663 () Bool)

(assert (=> b!764200 m!710663))

(declare-fun m!710665 () Bool)

(assert (=> b!764200 m!710665))

(declare-fun m!710667 () Bool)

(assert (=> b!764200 m!710667))

(declare-fun m!710669 () Bool)

(assert (=> b!764200 m!710669))

(declare-fun m!710671 () Bool)

(assert (=> b!764200 m!710671))

(assert (=> b!764200 m!710663))

(declare-fun m!710673 () Bool)

(assert (=> b!764198 m!710673))

(assert (=> b!764197 m!710657))

(assert (=> b!764197 m!710657))

(declare-fun m!710675 () Bool)

(assert (=> b!764197 m!710675))

(assert (=> b!764197 m!710675))

(assert (=> b!764197 m!710657))

(declare-fun m!710677 () Bool)

(assert (=> b!764197 m!710677))

(declare-fun m!710679 () Bool)

(assert (=> b!764201 m!710679))

(declare-fun m!710681 () Bool)

(assert (=> b!764202 m!710681))

(assert (=> b!764199 m!710657))

(assert (=> b!764199 m!710657))

(declare-fun m!710683 () Bool)

(assert (=> b!764199 m!710683))

(declare-fun m!710685 () Bool)

(assert (=> start!66324 m!710685))

(declare-fun m!710687 () Bool)

(assert (=> start!66324 m!710687))

(declare-fun m!710689 () Bool)

(assert (=> b!764207 m!710689))

(assert (=> b!764206 m!710657))

(assert (=> b!764206 m!710657))

(declare-fun m!710691 () Bool)

(assert (=> b!764206 m!710691))

(push 1)

