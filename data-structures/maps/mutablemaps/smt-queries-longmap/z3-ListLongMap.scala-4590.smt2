; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64074 () Bool)

(assert start!64074)

(declare-fun b!719262 () Bool)

(declare-fun res!481799 () Bool)

(declare-fun e!403641 () Bool)

(assert (=> b!719262 (=> (not res!481799) (not e!403641))))

(declare-datatypes ((array!40722 0))(
  ( (array!40723 (arr!19483 (Array (_ BitVec 32) (_ BitVec 64))) (size!19904 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40722)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719262 (= res!481799 (validKeyInArray!0 (select (arr!19483 a!3186) j!159)))))

(declare-fun b!719263 () Bool)

(declare-fun res!481802 () Bool)

(assert (=> b!719263 (=> (not res!481802) (not e!403641))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!719263 (= res!481802 (validKeyInArray!0 k0!2102))))

(declare-fun b!719264 () Bool)

(declare-fun res!481801 () Bool)

(declare-fun e!403640 () Bool)

(assert (=> b!719264 (=> (not res!481801) (not e!403640))))

(declare-datatypes ((List!13538 0))(
  ( (Nil!13535) (Cons!13534 (h!14582 (_ BitVec 64)) (t!19861 List!13538)) )
))
(declare-fun arrayNoDuplicates!0 (array!40722 (_ BitVec 32) List!13538) Bool)

(assert (=> b!719264 (= res!481801 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13535))))

(declare-fun b!719265 () Bool)

(declare-fun res!481795 () Bool)

(assert (=> b!719265 (=> (not res!481795) (not e!403641))))

(declare-fun arrayContainsKey!0 (array!40722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719265 (= res!481795 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719266 () Bool)

(declare-fun res!481800 () Bool)

(assert (=> b!719266 (=> (not res!481800) (not e!403641))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!719266 (= res!481800 (and (= (size!19904 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19904 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19904 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481797 () Bool)

(assert (=> start!64074 (=> (not res!481797) (not e!403641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64074 (= res!481797 (validMask!0 mask!3328))))

(assert (=> start!64074 e!403641))

(assert (=> start!64074 true))

(declare-fun array_inv!15257 (array!40722) Bool)

(assert (=> start!64074 (array_inv!15257 a!3186)))

(declare-fun b!719267 () Bool)

(declare-fun res!481798 () Bool)

(assert (=> b!719267 (=> (not res!481798) (not e!403640))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!719267 (= res!481798 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19904 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19904 a!3186))))))

(declare-fun b!719268 () Bool)

(assert (=> b!719268 (= e!403641 e!403640)))

(declare-fun res!481803 () Bool)

(assert (=> b!719268 (=> (not res!481803) (not e!403640))))

(declare-datatypes ((SeekEntryResult!7090 0))(
  ( (MissingZero!7090 (index!30727 (_ BitVec 32))) (Found!7090 (index!30728 (_ BitVec 32))) (Intermediate!7090 (undefined!7902 Bool) (index!30729 (_ BitVec 32)) (x!61762 (_ BitVec 32))) (Undefined!7090) (MissingVacant!7090 (index!30730 (_ BitVec 32))) )
))
(declare-fun lt!319552 () SeekEntryResult!7090)

(assert (=> b!719268 (= res!481803 (or (= lt!319552 (MissingZero!7090 i!1173)) (= lt!319552 (MissingVacant!7090 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40722 (_ BitVec 32)) SeekEntryResult!7090)

(assert (=> b!719268 (= lt!319552 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719269 () Bool)

(assert (=> b!719269 (= e!403640 false)))

(declare-fun lt!319553 () SeekEntryResult!7090)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40722 (_ BitVec 32)) SeekEntryResult!7090)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719269 (= lt!319553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19483 a!3186) j!159) mask!3328) (select (arr!19483 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719270 () Bool)

(declare-fun res!481796 () Bool)

(assert (=> b!719270 (=> (not res!481796) (not e!403640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40722 (_ BitVec 32)) Bool)

(assert (=> b!719270 (= res!481796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64074 res!481797) b!719266))

(assert (= (and b!719266 res!481800) b!719262))

(assert (= (and b!719262 res!481799) b!719263))

(assert (= (and b!719263 res!481802) b!719265))

(assert (= (and b!719265 res!481795) b!719268))

(assert (= (and b!719268 res!481803) b!719270))

(assert (= (and b!719270 res!481796) b!719264))

(assert (= (and b!719264 res!481801) b!719267))

(assert (= (and b!719267 res!481798) b!719269))

(declare-fun m!674777 () Bool)

(assert (=> b!719262 m!674777))

(assert (=> b!719262 m!674777))

(declare-fun m!674779 () Bool)

(assert (=> b!719262 m!674779))

(declare-fun m!674781 () Bool)

(assert (=> b!719263 m!674781))

(declare-fun m!674783 () Bool)

(assert (=> b!719270 m!674783))

(declare-fun m!674785 () Bool)

(assert (=> b!719268 m!674785))

(declare-fun m!674787 () Bool)

(assert (=> start!64074 m!674787))

(declare-fun m!674789 () Bool)

(assert (=> start!64074 m!674789))

(declare-fun m!674791 () Bool)

(assert (=> b!719265 m!674791))

(declare-fun m!674793 () Bool)

(assert (=> b!719264 m!674793))

(assert (=> b!719269 m!674777))

(assert (=> b!719269 m!674777))

(declare-fun m!674795 () Bool)

(assert (=> b!719269 m!674795))

(assert (=> b!719269 m!674795))

(assert (=> b!719269 m!674777))

(declare-fun m!674797 () Bool)

(assert (=> b!719269 m!674797))

(check-sat (not b!719264) (not b!719263) (not b!719265) (not b!719269) (not b!719262) (not start!64074) (not b!719270) (not b!719268))
(check-sat)
