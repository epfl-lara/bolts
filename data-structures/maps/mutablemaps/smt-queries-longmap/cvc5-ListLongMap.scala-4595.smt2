; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64102 () Bool)

(assert start!64102)

(declare-fun b!719660 () Bool)

(declare-fun e!403766 () Bool)

(declare-fun e!403767 () Bool)

(assert (=> b!719660 (= e!403766 e!403767)))

(declare-fun res!482201 () Bool)

(assert (=> b!719660 (=> (not res!482201) (not e!403767))))

(declare-datatypes ((SeekEntryResult!7104 0))(
  ( (MissingZero!7104 (index!30783 (_ BitVec 32))) (Found!7104 (index!30784 (_ BitVec 32))) (Intermediate!7104 (undefined!7916 Bool) (index!30785 (_ BitVec 32)) (x!61816 (_ BitVec 32))) (Undefined!7104) (MissingVacant!7104 (index!30786 (_ BitVec 32))) )
))
(declare-fun lt!319616 () SeekEntryResult!7104)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719660 (= res!482201 (or (= lt!319616 (MissingZero!7104 i!1173)) (= lt!319616 (MissingVacant!7104 i!1173))))))

(declare-datatypes ((array!40750 0))(
  ( (array!40751 (arr!19497 (Array (_ BitVec 32) (_ BitVec 64))) (size!19918 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40750)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40750 (_ BitVec 32)) SeekEntryResult!7104)

(assert (=> b!719660 (= lt!319616 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719662 () Bool)

(declare-fun res!482199 () Bool)

(assert (=> b!719662 (=> (not res!482199) (not e!403767))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719662 (= res!482199 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19918 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19918 a!3186))))))

(declare-fun b!719663 () Bool)

(declare-fun res!482194 () Bool)

(assert (=> b!719663 (=> (not res!482194) (not e!403766))))

(declare-fun arrayContainsKey!0 (array!40750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719663 (= res!482194 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719664 () Bool)

(declare-fun res!482198 () Bool)

(assert (=> b!719664 (=> (not res!482198) (not e!403767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40750 (_ BitVec 32)) Bool)

(assert (=> b!719664 (= res!482198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719665 () Bool)

(declare-fun res!482196 () Bool)

(assert (=> b!719665 (=> (not res!482196) (not e!403766))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719665 (= res!482196 (validKeyInArray!0 (select (arr!19497 a!3186) j!159)))))

(declare-fun res!482193 () Bool)

(assert (=> start!64102 (=> (not res!482193) (not e!403766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64102 (= res!482193 (validMask!0 mask!3328))))

(assert (=> start!64102 e!403766))

(assert (=> start!64102 true))

(declare-fun array_inv!15271 (array!40750) Bool)

(assert (=> start!64102 (array_inv!15271 a!3186)))

(declare-fun b!719661 () Bool)

(assert (=> b!719661 (= e!403767 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19497 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!719666 () Bool)

(declare-fun res!482195 () Bool)

(assert (=> b!719666 (=> (not res!482195) (not e!403766))))

(assert (=> b!719666 (= res!482195 (and (= (size!19918 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19918 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19918 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719667 () Bool)

(declare-fun res!482197 () Bool)

(assert (=> b!719667 (=> (not res!482197) (not e!403767))))

(declare-datatypes ((List!13552 0))(
  ( (Nil!13549) (Cons!13548 (h!14596 (_ BitVec 64)) (t!19875 List!13552)) )
))
(declare-fun arrayNoDuplicates!0 (array!40750 (_ BitVec 32) List!13552) Bool)

(assert (=> b!719667 (= res!482197 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13549))))

(declare-fun b!719668 () Bool)

(declare-fun res!482200 () Bool)

(assert (=> b!719668 (=> (not res!482200) (not e!403767))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40750 (_ BitVec 32)) SeekEntryResult!7104)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719668 (= res!482200 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19497 a!3186) j!159) mask!3328) (select (arr!19497 a!3186) j!159) a!3186 mask!3328) (Intermediate!7104 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719669 () Bool)

(declare-fun res!482202 () Bool)

(assert (=> b!719669 (=> (not res!482202) (not e!403766))))

(assert (=> b!719669 (= res!482202 (validKeyInArray!0 k!2102))))

(assert (= (and start!64102 res!482193) b!719666))

(assert (= (and b!719666 res!482195) b!719665))

(assert (= (and b!719665 res!482196) b!719669))

(assert (= (and b!719669 res!482202) b!719663))

(assert (= (and b!719663 res!482194) b!719660))

(assert (= (and b!719660 res!482201) b!719664))

(assert (= (and b!719664 res!482198) b!719667))

(assert (= (and b!719667 res!482197) b!719662))

(assert (= (and b!719662 res!482199) b!719668))

(assert (= (and b!719668 res!482200) b!719661))

(declare-fun m!675097 () Bool)

(assert (=> start!64102 m!675097))

(declare-fun m!675099 () Bool)

(assert (=> start!64102 m!675099))

(declare-fun m!675101 () Bool)

(assert (=> b!719667 m!675101))

(declare-fun m!675103 () Bool)

(assert (=> b!719661 m!675103))

(declare-fun m!675105 () Bool)

(assert (=> b!719660 m!675105))

(declare-fun m!675107 () Bool)

(assert (=> b!719665 m!675107))

(assert (=> b!719665 m!675107))

(declare-fun m!675109 () Bool)

(assert (=> b!719665 m!675109))

(declare-fun m!675111 () Bool)

(assert (=> b!719663 m!675111))

(declare-fun m!675113 () Bool)

(assert (=> b!719669 m!675113))

(assert (=> b!719668 m!675107))

(assert (=> b!719668 m!675107))

(declare-fun m!675115 () Bool)

(assert (=> b!719668 m!675115))

(assert (=> b!719668 m!675115))

(assert (=> b!719668 m!675107))

(declare-fun m!675117 () Bool)

(assert (=> b!719668 m!675117))

(declare-fun m!675119 () Bool)

(assert (=> b!719664 m!675119))

(push 1)

(assert (not b!719665))

(assert (not b!719669))

(assert (not start!64102))

(assert (not b!719667))

(assert (not b!719660))

(assert (not b!719664))

(assert (not b!719663))

(assert (not b!719668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

