; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64062 () Bool)

(assert start!64062)

(declare-fun b!719100 () Bool)

(declare-fun e!403586 () Bool)

(declare-fun e!403585 () Bool)

(assert (=> b!719100 (= e!403586 e!403585)))

(declare-fun res!481639 () Bool)

(assert (=> b!719100 (=> (not res!481639) (not e!403585))))

(declare-datatypes ((SeekEntryResult!7084 0))(
  ( (MissingZero!7084 (index!30703 (_ BitVec 32))) (Found!7084 (index!30704 (_ BitVec 32))) (Intermediate!7084 (undefined!7896 Bool) (index!30705 (_ BitVec 32)) (x!61740 (_ BitVec 32))) (Undefined!7084) (MissingVacant!7084 (index!30706 (_ BitVec 32))) )
))
(declare-fun lt!319517 () SeekEntryResult!7084)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719100 (= res!481639 (or (= lt!319517 (MissingZero!7084 i!1173)) (= lt!319517 (MissingVacant!7084 i!1173))))))

(declare-datatypes ((array!40710 0))(
  ( (array!40711 (arr!19477 (Array (_ BitVec 32) (_ BitVec 64))) (size!19898 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40710)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40710 (_ BitVec 32)) SeekEntryResult!7084)

(assert (=> b!719100 (= lt!319517 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719101 () Bool)

(declare-fun res!481636 () Bool)

(assert (=> b!719101 (=> (not res!481636) (not e!403585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40710 (_ BitVec 32)) Bool)

(assert (=> b!719101 (= res!481636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719102 () Bool)

(declare-fun res!481641 () Bool)

(assert (=> b!719102 (=> (not res!481641) (not e!403586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719102 (= res!481641 (validKeyInArray!0 k0!2102))))

(declare-fun b!719103 () Bool)

(declare-fun res!481635 () Bool)

(assert (=> b!719103 (=> (not res!481635) (not e!403586))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719103 (= res!481635 (validKeyInArray!0 (select (arr!19477 a!3186) j!159)))))

(declare-fun b!719104 () Bool)

(declare-fun res!481638 () Bool)

(assert (=> b!719104 (=> (not res!481638) (not e!403585))))

(declare-datatypes ((List!13532 0))(
  ( (Nil!13529) (Cons!13528 (h!14576 (_ BitVec 64)) (t!19855 List!13532)) )
))
(declare-fun arrayNoDuplicates!0 (array!40710 (_ BitVec 32) List!13532) Bool)

(assert (=> b!719104 (= res!481638 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13529))))

(declare-fun res!481634 () Bool)

(assert (=> start!64062 (=> (not res!481634) (not e!403586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64062 (= res!481634 (validMask!0 mask!3328))))

(assert (=> start!64062 e!403586))

(assert (=> start!64062 true))

(declare-fun array_inv!15251 (array!40710) Bool)

(assert (=> start!64062 (array_inv!15251 a!3186)))

(declare-fun b!719105 () Bool)

(assert (=> b!719105 (= e!403585 false)))

(declare-fun lt!319516 () SeekEntryResult!7084)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40710 (_ BitVec 32)) SeekEntryResult!7084)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719105 (= lt!319516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19477 a!3186) j!159) mask!3328) (select (arr!19477 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719106 () Bool)

(declare-fun res!481633 () Bool)

(assert (=> b!719106 (=> (not res!481633) (not e!403586))))

(declare-fun arrayContainsKey!0 (array!40710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719106 (= res!481633 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719107 () Bool)

(declare-fun res!481640 () Bool)

(assert (=> b!719107 (=> (not res!481640) (not e!403585))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719107 (= res!481640 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19898 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19898 a!3186))))))

(declare-fun b!719108 () Bool)

(declare-fun res!481637 () Bool)

(assert (=> b!719108 (=> (not res!481637) (not e!403586))))

(assert (=> b!719108 (= res!481637 (and (= (size!19898 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19898 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19898 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64062 res!481634) b!719108))

(assert (= (and b!719108 res!481637) b!719103))

(assert (= (and b!719103 res!481635) b!719102))

(assert (= (and b!719102 res!481641) b!719106))

(assert (= (and b!719106 res!481633) b!719100))

(assert (= (and b!719100 res!481639) b!719101))

(assert (= (and b!719101 res!481636) b!719104))

(assert (= (and b!719104 res!481638) b!719107))

(assert (= (and b!719107 res!481640) b!719105))

(declare-fun m!674645 () Bool)

(assert (=> b!719106 m!674645))

(declare-fun m!674647 () Bool)

(assert (=> b!719102 m!674647))

(declare-fun m!674649 () Bool)

(assert (=> b!719104 m!674649))

(declare-fun m!674651 () Bool)

(assert (=> start!64062 m!674651))

(declare-fun m!674653 () Bool)

(assert (=> start!64062 m!674653))

(declare-fun m!674655 () Bool)

(assert (=> b!719103 m!674655))

(assert (=> b!719103 m!674655))

(declare-fun m!674657 () Bool)

(assert (=> b!719103 m!674657))

(declare-fun m!674659 () Bool)

(assert (=> b!719101 m!674659))

(declare-fun m!674661 () Bool)

(assert (=> b!719100 m!674661))

(assert (=> b!719105 m!674655))

(assert (=> b!719105 m!674655))

(declare-fun m!674663 () Bool)

(assert (=> b!719105 m!674663))

(assert (=> b!719105 m!674663))

(assert (=> b!719105 m!674655))

(declare-fun m!674665 () Bool)

(assert (=> b!719105 m!674665))

(check-sat (not b!719101) (not b!719102) (not b!719105) (not b!719106) (not b!719104) (not start!64062) (not b!719100) (not b!719103))
(check-sat)
