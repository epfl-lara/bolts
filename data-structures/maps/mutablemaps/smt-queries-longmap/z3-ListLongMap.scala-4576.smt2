; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63900 () Bool)

(assert start!63900)

(declare-fun b!717817 () Bool)

(declare-fun res!480527 () Bool)

(declare-fun e!403046 () Bool)

(assert (=> b!717817 (=> (not res!480527) (not e!403046))))

(declare-datatypes ((array!40632 0))(
  ( (array!40633 (arr!19441 (Array (_ BitVec 32) (_ BitVec 64))) (size!19862 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40632)

(declare-datatypes ((List!13496 0))(
  ( (Nil!13493) (Cons!13492 (h!14537 (_ BitVec 64)) (t!19819 List!13496)) )
))
(declare-fun arrayNoDuplicates!0 (array!40632 (_ BitVec 32) List!13496) Bool)

(assert (=> b!717817 (= res!480527 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13493))))

(declare-fun b!717818 () Bool)

(declare-fun e!403047 () Bool)

(assert (=> b!717818 (= e!403047 e!403046)))

(declare-fun res!480529 () Bool)

(assert (=> b!717818 (=> (not res!480529) (not e!403046))))

(declare-datatypes ((SeekEntryResult!7048 0))(
  ( (MissingZero!7048 (index!30559 (_ BitVec 32))) (Found!7048 (index!30560 (_ BitVec 32))) (Intermediate!7048 (undefined!7860 Bool) (index!30561 (_ BitVec 32)) (x!61605 (_ BitVec 32))) (Undefined!7048) (MissingVacant!7048 (index!30562 (_ BitVec 32))) )
))
(declare-fun lt!319205 () SeekEntryResult!7048)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717818 (= res!480529 (or (= lt!319205 (MissingZero!7048 i!1173)) (= lt!319205 (MissingVacant!7048 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40632 (_ BitVec 32)) SeekEntryResult!7048)

(assert (=> b!717818 (= lt!319205 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!480532 () Bool)

(assert (=> start!63900 (=> (not res!480532) (not e!403047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63900 (= res!480532 (validMask!0 mask!3328))))

(assert (=> start!63900 e!403047))

(assert (=> start!63900 true))

(declare-fun array_inv!15215 (array!40632) Bool)

(assert (=> start!63900 (array_inv!15215 a!3186)))

(declare-fun b!717819 () Bool)

(declare-fun res!480531 () Bool)

(assert (=> b!717819 (=> (not res!480531) (not e!403047))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717819 (= res!480531 (and (= (size!19862 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19862 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19862 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717820 () Bool)

(declare-fun res!480528 () Bool)

(assert (=> b!717820 (=> (not res!480528) (not e!403047))))

(declare-fun arrayContainsKey!0 (array!40632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717820 (= res!480528 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717821 () Bool)

(declare-fun res!480534 () Bool)

(assert (=> b!717821 (=> (not res!480534) (not e!403047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717821 (= res!480534 (validKeyInArray!0 k0!2102))))

(declare-fun b!717822 () Bool)

(declare-fun res!480533 () Bool)

(assert (=> b!717822 (=> (not res!480533) (not e!403047))))

(assert (=> b!717822 (= res!480533 (validKeyInArray!0 (select (arr!19441 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!717823 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!717823 (= e!403046 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19862 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19862 a!3186)) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!717824 () Bool)

(declare-fun res!480530 () Bool)

(assert (=> b!717824 (=> (not res!480530) (not e!403046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40632 (_ BitVec 32)) Bool)

(assert (=> b!717824 (= res!480530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!63900 res!480532) b!717819))

(assert (= (and b!717819 res!480531) b!717822))

(assert (= (and b!717822 res!480533) b!717821))

(assert (= (and b!717821 res!480534) b!717820))

(assert (= (and b!717820 res!480528) b!717818))

(assert (= (and b!717818 res!480529) b!717824))

(assert (= (and b!717824 res!480530) b!717817))

(assert (= (and b!717817 res!480527) b!717823))

(declare-fun m!673705 () Bool)

(assert (=> b!717821 m!673705))

(declare-fun m!673707 () Bool)

(assert (=> start!63900 m!673707))

(declare-fun m!673709 () Bool)

(assert (=> start!63900 m!673709))

(declare-fun m!673711 () Bool)

(assert (=> b!717822 m!673711))

(assert (=> b!717822 m!673711))

(declare-fun m!673713 () Bool)

(assert (=> b!717822 m!673713))

(declare-fun m!673715 () Bool)

(assert (=> b!717818 m!673715))

(declare-fun m!673717 () Bool)

(assert (=> b!717824 m!673717))

(declare-fun m!673719 () Bool)

(assert (=> b!717820 m!673719))

(declare-fun m!673721 () Bool)

(assert (=> b!717817 m!673721))

(check-sat (not b!717817) (not start!63900) (not b!717821) (not b!717822) (not b!717820) (not b!717824) (not b!717818))
(check-sat)
