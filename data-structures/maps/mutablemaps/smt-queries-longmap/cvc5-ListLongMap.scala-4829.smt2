; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66398 () Bool)

(assert start!66398)

(declare-fun b!764774 () Bool)

(declare-fun res!517501 () Bool)

(declare-fun e!425967 () Bool)

(assert (=> b!764774 (=> (not res!517501) (not e!425967))))

(declare-datatypes ((array!42193 0))(
  ( (array!42194 (arr!20199 (Array (_ BitVec 32) (_ BitVec 64))) (size!20620 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42193)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!764774 (= res!517501 (and (= (size!20620 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20620 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20620 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!764775 () Bool)

(declare-fun res!517503 () Bool)

(declare-fun e!425968 () Bool)

(assert (=> b!764775 (=> (not res!517503) (not e!425968))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764775 (= res!517503 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20620 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20620 a!3186))))))

(declare-fun b!764776 () Bool)

(declare-fun res!517497 () Bool)

(assert (=> b!764776 (=> (not res!517497) (not e!425968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42193 (_ BitVec 32)) Bool)

(assert (=> b!764776 (= res!517497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764777 () Bool)

(declare-fun e!425966 () Bool)

(declare-datatypes ((SeekEntryResult!7806 0))(
  ( (MissingZero!7806 (index!33591 (_ BitVec 32))) (Found!7806 (index!33592 (_ BitVec 32))) (Intermediate!7806 (undefined!8618 Bool) (index!33593 (_ BitVec 32)) (x!64524 (_ BitVec 32))) (Undefined!7806) (MissingVacant!7806 (index!33594 (_ BitVec 32))) )
))
(declare-fun lt!340298 () SeekEntryResult!7806)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42193 (_ BitVec 32)) SeekEntryResult!7806)

(assert (=> b!764777 (= e!425966 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20199 a!3186) j!159) a!3186 mask!3328) lt!340298))))

(declare-fun b!764778 () Bool)

(assert (=> b!764778 (= e!425967 e!425968)))

(declare-fun res!517499 () Bool)

(assert (=> b!764778 (=> (not res!517499) (not e!425968))))

(declare-fun lt!340300 () SeekEntryResult!7806)

(assert (=> b!764778 (= res!517499 (or (= lt!340300 (MissingZero!7806 i!1173)) (= lt!340300 (MissingVacant!7806 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42193 (_ BitVec 32)) SeekEntryResult!7806)

(assert (=> b!764778 (= lt!340300 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!764779 () Bool)

(declare-fun res!517494 () Bool)

(declare-fun e!425964 () Bool)

(assert (=> b!764779 (=> (not res!517494) (not e!425964))))

(assert (=> b!764779 (= res!517494 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20199 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764780 () Bool)

(declare-fun res!517498 () Bool)

(assert (=> b!764780 (=> (not res!517498) (not e!425967))))

(declare-fun arrayContainsKey!0 (array!42193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764780 (= res!517498 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764781 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42193 (_ BitVec 32)) SeekEntryResult!7806)

(assert (=> b!764781 (= e!425966 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20199 a!3186) j!159) a!3186 mask!3328) (Found!7806 j!159)))))

(declare-fun b!764782 () Bool)

(declare-fun e!425969 () Bool)

(assert (=> b!764782 (= e!425969 (not true))))

(declare-fun e!425963 () Bool)

(assert (=> b!764782 e!425963))

(declare-fun res!517492 () Bool)

(assert (=> b!764782 (=> (not res!517492) (not e!425963))))

(assert (=> b!764782 (= res!517492 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26338 0))(
  ( (Unit!26339) )
))
(declare-fun lt!340296 () Unit!26338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26338)

(assert (=> b!764782 (= lt!340296 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!517502 () Bool)

(assert (=> start!66398 (=> (not res!517502) (not e!425967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66398 (= res!517502 (validMask!0 mask!3328))))

(assert (=> start!66398 e!425967))

(assert (=> start!66398 true))

(declare-fun array_inv!15973 (array!42193) Bool)

(assert (=> start!66398 (array_inv!15973 a!3186)))

(declare-fun b!764783 () Bool)

(declare-fun res!517490 () Bool)

(assert (=> b!764783 (=> (not res!517490) (not e!425964))))

(assert (=> b!764783 (= res!517490 e!425966)))

(declare-fun c!84030 () Bool)

(assert (=> b!764783 (= c!84030 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764784 () Bool)

(assert (=> b!764784 (= e!425968 e!425964)))

(declare-fun res!517491 () Bool)

(assert (=> b!764784 (=> (not res!517491) (not e!425964))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764784 (= res!517491 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20199 a!3186) j!159) mask!3328) (select (arr!20199 a!3186) j!159) a!3186 mask!3328) lt!340298))))

(assert (=> b!764784 (= lt!340298 (Intermediate!7806 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764785 () Bool)

(declare-fun res!517500 () Bool)

(assert (=> b!764785 (=> (not res!517500) (not e!425967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764785 (= res!517500 (validKeyInArray!0 k!2102))))

(declare-fun b!764786 () Bool)

(declare-fun res!517495 () Bool)

(assert (=> b!764786 (=> (not res!517495) (not e!425967))))

(assert (=> b!764786 (= res!517495 (validKeyInArray!0 (select (arr!20199 a!3186) j!159)))))

(declare-fun b!764787 () Bool)

(declare-fun res!517496 () Bool)

(assert (=> b!764787 (=> (not res!517496) (not e!425968))))

(declare-datatypes ((List!14254 0))(
  ( (Nil!14251) (Cons!14250 (h!15337 (_ BitVec 64)) (t!20577 List!14254)) )
))
(declare-fun arrayNoDuplicates!0 (array!42193 (_ BitVec 32) List!14254) Bool)

(assert (=> b!764787 (= res!517496 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14251))))

(declare-fun b!764788 () Bool)

(assert (=> b!764788 (= e!425963 (= (seekEntryOrOpen!0 (select (arr!20199 a!3186) j!159) a!3186 mask!3328) (Found!7806 j!159)))))

(declare-fun b!764789 () Bool)

(assert (=> b!764789 (= e!425964 e!425969)))

(declare-fun res!517493 () Bool)

(assert (=> b!764789 (=> (not res!517493) (not e!425969))))

(declare-fun lt!340297 () (_ BitVec 64))

(declare-fun lt!340299 () array!42193)

(assert (=> b!764789 (= res!517493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340297 mask!3328) lt!340297 lt!340299 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340297 lt!340299 mask!3328)))))

(assert (=> b!764789 (= lt!340297 (select (store (arr!20199 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764789 (= lt!340299 (array!42194 (store (arr!20199 a!3186) i!1173 k!2102) (size!20620 a!3186)))))

(assert (= (and start!66398 res!517502) b!764774))

(assert (= (and b!764774 res!517501) b!764786))

(assert (= (and b!764786 res!517495) b!764785))

(assert (= (and b!764785 res!517500) b!764780))

(assert (= (and b!764780 res!517498) b!764778))

(assert (= (and b!764778 res!517499) b!764776))

(assert (= (and b!764776 res!517497) b!764787))

(assert (= (and b!764787 res!517496) b!764775))

(assert (= (and b!764775 res!517503) b!764784))

(assert (= (and b!764784 res!517491) b!764779))

(assert (= (and b!764779 res!517494) b!764783))

(assert (= (and b!764783 c!84030) b!764777))

(assert (= (and b!764783 (not c!84030)) b!764781))

(assert (= (and b!764783 res!517490) b!764789))

(assert (= (and b!764789 res!517493) b!764782))

(assert (= (and b!764782 res!517492) b!764788))

(declare-fun m!711083 () Bool)

(assert (=> b!764786 m!711083))

(assert (=> b!764786 m!711083))

(declare-fun m!711085 () Bool)

(assert (=> b!764786 m!711085))

(declare-fun m!711087 () Bool)

(assert (=> b!764782 m!711087))

(declare-fun m!711089 () Bool)

(assert (=> b!764782 m!711089))

(assert (=> b!764777 m!711083))

(assert (=> b!764777 m!711083))

(declare-fun m!711091 () Bool)

(assert (=> b!764777 m!711091))

(assert (=> b!764788 m!711083))

(assert (=> b!764788 m!711083))

(declare-fun m!711093 () Bool)

(assert (=> b!764788 m!711093))

(declare-fun m!711095 () Bool)

(assert (=> b!764780 m!711095))

(declare-fun m!711097 () Bool)

(assert (=> b!764789 m!711097))

(declare-fun m!711099 () Bool)

(assert (=> b!764789 m!711099))

(declare-fun m!711101 () Bool)

(assert (=> b!764789 m!711101))

(declare-fun m!711103 () Bool)

(assert (=> b!764789 m!711103))

(assert (=> b!764789 m!711099))

(declare-fun m!711105 () Bool)

(assert (=> b!764789 m!711105))

(declare-fun m!711107 () Bool)

(assert (=> b!764776 m!711107))

(declare-fun m!711109 () Bool)

(assert (=> b!764787 m!711109))

(declare-fun m!711111 () Bool)

(assert (=> b!764778 m!711111))

(declare-fun m!711113 () Bool)

(assert (=> start!66398 m!711113))

(declare-fun m!711115 () Bool)

(assert (=> start!66398 m!711115))

(assert (=> b!764781 m!711083))

(assert (=> b!764781 m!711083))

(declare-fun m!711117 () Bool)

(assert (=> b!764781 m!711117))

(declare-fun m!711119 () Bool)

(assert (=> b!764779 m!711119))

(assert (=> b!764784 m!711083))

(assert (=> b!764784 m!711083))

(declare-fun m!711121 () Bool)

(assert (=> b!764784 m!711121))

(assert (=> b!764784 m!711121))

(assert (=> b!764784 m!711083))

(declare-fun m!711123 () Bool)

(assert (=> b!764784 m!711123))

(declare-fun m!711125 () Bool)

(assert (=> b!764785 m!711125))

(push 1)

