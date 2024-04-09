; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64066 () Bool)

(assert start!64066)

(declare-fun b!719154 () Bool)

(declare-fun res!481689 () Bool)

(declare-fun e!403603 () Bool)

(assert (=> b!719154 (=> (not res!481689) (not e!403603))))

(declare-datatypes ((array!40714 0))(
  ( (array!40715 (arr!19479 (Array (_ BitVec 32) (_ BitVec 64))) (size!19900 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40714)

(declare-datatypes ((List!13534 0))(
  ( (Nil!13531) (Cons!13530 (h!14578 (_ BitVec 64)) (t!19857 List!13534)) )
))
(declare-fun arrayNoDuplicates!0 (array!40714 (_ BitVec 32) List!13534) Bool)

(assert (=> b!719154 (= res!481689 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13531))))

(declare-fun b!719155 () Bool)

(declare-fun res!481688 () Bool)

(declare-fun e!403605 () Bool)

(assert (=> b!719155 (=> (not res!481688) (not e!403605))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719155 (= res!481688 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719156 () Bool)

(declare-fun res!481687 () Bool)

(assert (=> b!719156 (=> (not res!481687) (not e!403605))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!719156 (= res!481687 (and (= (size!19900 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19900 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19900 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719157 () Bool)

(declare-fun res!481690 () Bool)

(assert (=> b!719157 (=> (not res!481690) (not e!403603))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719157 (= res!481690 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19900 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19900 a!3186))))))

(declare-fun b!719158 () Bool)

(assert (=> b!719158 (= e!403605 e!403603)))

(declare-fun res!481691 () Bool)

(assert (=> b!719158 (=> (not res!481691) (not e!403603))))

(declare-datatypes ((SeekEntryResult!7086 0))(
  ( (MissingZero!7086 (index!30711 (_ BitVec 32))) (Found!7086 (index!30712 (_ BitVec 32))) (Intermediate!7086 (undefined!7898 Bool) (index!30713 (_ BitVec 32)) (x!61750 (_ BitVec 32))) (Undefined!7086) (MissingVacant!7086 (index!30714 (_ BitVec 32))) )
))
(declare-fun lt!319529 () SeekEntryResult!7086)

(assert (=> b!719158 (= res!481691 (or (= lt!319529 (MissingZero!7086 i!1173)) (= lt!319529 (MissingVacant!7086 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40714 (_ BitVec 32)) SeekEntryResult!7086)

(assert (=> b!719158 (= lt!319529 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719159 () Bool)

(declare-fun res!481692 () Bool)

(assert (=> b!719159 (=> (not res!481692) (not e!403603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40714 (_ BitVec 32)) Bool)

(assert (=> b!719159 (= res!481692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!481695 () Bool)

(assert (=> start!64066 (=> (not res!481695) (not e!403605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64066 (= res!481695 (validMask!0 mask!3328))))

(assert (=> start!64066 e!403605))

(assert (=> start!64066 true))

(declare-fun array_inv!15253 (array!40714) Bool)

(assert (=> start!64066 (array_inv!15253 a!3186)))

(declare-fun b!719160 () Bool)

(declare-fun res!481694 () Bool)

(assert (=> b!719160 (=> (not res!481694) (not e!403605))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719160 (= res!481694 (validKeyInArray!0 (select (arr!19479 a!3186) j!159)))))

(declare-fun b!719161 () Bool)

(assert (=> b!719161 (= e!403603 false)))

(declare-fun lt!319528 () SeekEntryResult!7086)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40714 (_ BitVec 32)) SeekEntryResult!7086)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719161 (= lt!319528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19479 a!3186) j!159) mask!3328) (select (arr!19479 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719162 () Bool)

(declare-fun res!481693 () Bool)

(assert (=> b!719162 (=> (not res!481693) (not e!403605))))

(assert (=> b!719162 (= res!481693 (validKeyInArray!0 k!2102))))

(assert (= (and start!64066 res!481695) b!719156))

(assert (= (and b!719156 res!481687) b!719160))

(assert (= (and b!719160 res!481694) b!719162))

(assert (= (and b!719162 res!481693) b!719155))

(assert (= (and b!719155 res!481688) b!719158))

(assert (= (and b!719158 res!481691) b!719159))

(assert (= (and b!719159 res!481692) b!719154))

(assert (= (and b!719154 res!481689) b!719157))

(assert (= (and b!719157 res!481690) b!719161))

(declare-fun m!674689 () Bool)

(assert (=> b!719158 m!674689))

(declare-fun m!674691 () Bool)

(assert (=> b!719162 m!674691))

(declare-fun m!674693 () Bool)

(assert (=> start!64066 m!674693))

(declare-fun m!674695 () Bool)

(assert (=> start!64066 m!674695))

(declare-fun m!674697 () Bool)

(assert (=> b!719161 m!674697))

(assert (=> b!719161 m!674697))

(declare-fun m!674699 () Bool)

(assert (=> b!719161 m!674699))

(assert (=> b!719161 m!674699))

(assert (=> b!719161 m!674697))

(declare-fun m!674701 () Bool)

(assert (=> b!719161 m!674701))

(declare-fun m!674703 () Bool)

(assert (=> b!719159 m!674703))

(assert (=> b!719160 m!674697))

(assert (=> b!719160 m!674697))

(declare-fun m!674705 () Bool)

(assert (=> b!719160 m!674705))

(declare-fun m!674707 () Bool)

(assert (=> b!719154 m!674707))

(declare-fun m!674709 () Bool)

(assert (=> b!719155 m!674709))

(push 1)

