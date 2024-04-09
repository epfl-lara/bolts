; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64072 () Bool)

(assert start!64072)

(declare-fun b!719235 () Bool)

(declare-fun res!481774 () Bool)

(declare-fun e!403630 () Bool)

(assert (=> b!719235 (=> (not res!481774) (not e!403630))))

(declare-datatypes ((array!40720 0))(
  ( (array!40721 (arr!19482 (Array (_ BitVec 32) (_ BitVec 64))) (size!19903 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40720)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!719235 (= res!481774 (and (= (size!19903 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19903 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19903 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719236 () Bool)

(declare-fun res!481769 () Bool)

(declare-fun e!403632 () Bool)

(assert (=> b!719236 (=> (not res!481769) (not e!403632))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719236 (= res!481769 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19903 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19903 a!3186))))))

(declare-fun res!481776 () Bool)

(assert (=> start!64072 (=> (not res!481776) (not e!403630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64072 (= res!481776 (validMask!0 mask!3328))))

(assert (=> start!64072 e!403630))

(assert (=> start!64072 true))

(declare-fun array_inv!15256 (array!40720) Bool)

(assert (=> start!64072 (array_inv!15256 a!3186)))

(declare-fun b!719237 () Bool)

(assert (=> b!719237 (= e!403630 e!403632)))

(declare-fun res!481771 () Bool)

(assert (=> b!719237 (=> (not res!481771) (not e!403632))))

(declare-datatypes ((SeekEntryResult!7089 0))(
  ( (MissingZero!7089 (index!30723 (_ BitVec 32))) (Found!7089 (index!30724 (_ BitVec 32))) (Intermediate!7089 (undefined!7901 Bool) (index!30725 (_ BitVec 32)) (x!61761 (_ BitVec 32))) (Undefined!7089) (MissingVacant!7089 (index!30726 (_ BitVec 32))) )
))
(declare-fun lt!319546 () SeekEntryResult!7089)

(assert (=> b!719237 (= res!481771 (or (= lt!319546 (MissingZero!7089 i!1173)) (= lt!319546 (MissingVacant!7089 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40720 (_ BitVec 32)) SeekEntryResult!7089)

(assert (=> b!719237 (= lt!319546 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719238 () Bool)

(declare-fun res!481772 () Bool)

(assert (=> b!719238 (=> (not res!481772) (not e!403632))))

(declare-datatypes ((List!13537 0))(
  ( (Nil!13534) (Cons!13533 (h!14581 (_ BitVec 64)) (t!19860 List!13537)) )
))
(declare-fun arrayNoDuplicates!0 (array!40720 (_ BitVec 32) List!13537) Bool)

(assert (=> b!719238 (= res!481772 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13534))))

(declare-fun b!719239 () Bool)

(declare-fun res!481775 () Bool)

(assert (=> b!719239 (=> (not res!481775) (not e!403630))))

(declare-fun arrayContainsKey!0 (array!40720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719239 (= res!481775 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719240 () Bool)

(assert (=> b!719240 (= e!403632 false)))

(declare-fun lt!319547 () SeekEntryResult!7089)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40720 (_ BitVec 32)) SeekEntryResult!7089)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719240 (= lt!319547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19482 a!3186) j!159) mask!3328) (select (arr!19482 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719241 () Bool)

(declare-fun res!481770 () Bool)

(assert (=> b!719241 (=> (not res!481770) (not e!403630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719241 (= res!481770 (validKeyInArray!0 (select (arr!19482 a!3186) j!159)))))

(declare-fun b!719242 () Bool)

(declare-fun res!481773 () Bool)

(assert (=> b!719242 (=> (not res!481773) (not e!403630))))

(assert (=> b!719242 (= res!481773 (validKeyInArray!0 k!2102))))

(declare-fun b!719243 () Bool)

(declare-fun res!481768 () Bool)

(assert (=> b!719243 (=> (not res!481768) (not e!403632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40720 (_ BitVec 32)) Bool)

(assert (=> b!719243 (= res!481768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64072 res!481776) b!719235))

(assert (= (and b!719235 res!481774) b!719241))

(assert (= (and b!719241 res!481770) b!719242))

(assert (= (and b!719242 res!481773) b!719239))

(assert (= (and b!719239 res!481775) b!719237))

(assert (= (and b!719237 res!481771) b!719243))

(assert (= (and b!719243 res!481768) b!719238))

(assert (= (and b!719238 res!481772) b!719236))

(assert (= (and b!719236 res!481769) b!719240))

(declare-fun m!674755 () Bool)

(assert (=> start!64072 m!674755))

(declare-fun m!674757 () Bool)

(assert (=> start!64072 m!674757))

(declare-fun m!674759 () Bool)

(assert (=> b!719243 m!674759))

(declare-fun m!674761 () Bool)

(assert (=> b!719239 m!674761))

(declare-fun m!674763 () Bool)

(assert (=> b!719242 m!674763))

(declare-fun m!674765 () Bool)

(assert (=> b!719238 m!674765))

(declare-fun m!674767 () Bool)

(assert (=> b!719237 m!674767))

(declare-fun m!674769 () Bool)

(assert (=> b!719241 m!674769))

(assert (=> b!719241 m!674769))

(declare-fun m!674771 () Bool)

(assert (=> b!719241 m!674771))

(assert (=> b!719240 m!674769))

(assert (=> b!719240 m!674769))

(declare-fun m!674773 () Bool)

(assert (=> b!719240 m!674773))

(assert (=> b!719240 m!674773))

(assert (=> b!719240 m!674769))

(declare-fun m!674775 () Bool)

(assert (=> b!719240 m!674775))

(push 1)

