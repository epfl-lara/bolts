; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64038 () Bool)

(assert start!64038)

(declare-fun b!718758 () Bool)

(declare-fun res!481299 () Bool)

(declare-fun e!403479 () Bool)

(assert (=> b!718758 (=> (not res!481299) (not e!403479))))

(declare-datatypes ((array!40686 0))(
  ( (array!40687 (arr!19465 (Array (_ BitVec 32) (_ BitVec 64))) (size!19886 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40686)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40686 (_ BitVec 32)) Bool)

(assert (=> b!718758 (= res!481299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718759 () Bool)

(declare-fun res!481291 () Bool)

(declare-fun e!403477 () Bool)

(assert (=> b!718759 (=> (not res!481291) (not e!403477))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718759 (= res!481291 (validKeyInArray!0 (select (arr!19465 a!3186) j!159)))))

(declare-fun b!718760 () Bool)

(declare-fun res!481295 () Bool)

(assert (=> b!718760 (=> (not res!481295) (not e!403477))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718760 (= res!481295 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718761 () Bool)

(assert (=> b!718761 (= e!403479 false)))

(declare-datatypes ((SeekEntryResult!7072 0))(
  ( (MissingZero!7072 (index!30655 (_ BitVec 32))) (Found!7072 (index!30656 (_ BitVec 32))) (Intermediate!7072 (undefined!7884 Bool) (index!30657 (_ BitVec 32)) (x!61696 (_ BitVec 32))) (Undefined!7072) (MissingVacant!7072 (index!30658 (_ BitVec 32))) )
))
(declare-fun lt!319462 () SeekEntryResult!7072)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40686 (_ BitVec 32)) SeekEntryResult!7072)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718761 (= lt!319462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19465 a!3186) j!159) mask!3328) (select (arr!19465 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!481292 () Bool)

(assert (=> start!64038 (=> (not res!481292) (not e!403477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64038 (= res!481292 (validMask!0 mask!3328))))

(assert (=> start!64038 e!403477))

(assert (=> start!64038 true))

(declare-fun array_inv!15239 (array!40686) Bool)

(assert (=> start!64038 (array_inv!15239 a!3186)))

(declare-fun b!718762 () Bool)

(declare-fun res!481296 () Bool)

(assert (=> b!718762 (=> (not res!481296) (not e!403479))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718762 (= res!481296 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19886 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19886 a!3186))))))

(declare-fun b!718763 () Bool)

(declare-fun res!481298 () Bool)

(assert (=> b!718763 (=> (not res!481298) (not e!403477))))

(assert (=> b!718763 (= res!481298 (validKeyInArray!0 k0!2102))))

(declare-fun b!718764 () Bool)

(declare-fun res!481293 () Bool)

(assert (=> b!718764 (=> (not res!481293) (not e!403479))))

(declare-datatypes ((List!13520 0))(
  ( (Nil!13517) (Cons!13516 (h!14564 (_ BitVec 64)) (t!19843 List!13520)) )
))
(declare-fun arrayNoDuplicates!0 (array!40686 (_ BitVec 32) List!13520) Bool)

(assert (=> b!718764 (= res!481293 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13517))))

(declare-fun b!718765 () Bool)

(assert (=> b!718765 (= e!403477 e!403479)))

(declare-fun res!481297 () Bool)

(assert (=> b!718765 (=> (not res!481297) (not e!403479))))

(declare-fun lt!319463 () SeekEntryResult!7072)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718765 (= res!481297 (or (= lt!319463 (MissingZero!7072 i!1173)) (= lt!319463 (MissingVacant!7072 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40686 (_ BitVec 32)) SeekEntryResult!7072)

(assert (=> b!718765 (= lt!319463 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!718766 () Bool)

(declare-fun res!481294 () Bool)

(assert (=> b!718766 (=> (not res!481294) (not e!403477))))

(assert (=> b!718766 (= res!481294 (and (= (size!19886 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19886 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19886 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64038 res!481292) b!718766))

(assert (= (and b!718766 res!481294) b!718759))

(assert (= (and b!718759 res!481291) b!718763))

(assert (= (and b!718763 res!481298) b!718760))

(assert (= (and b!718760 res!481295) b!718765))

(assert (= (and b!718765 res!481297) b!718758))

(assert (= (and b!718758 res!481299) b!718764))

(assert (= (and b!718764 res!481293) b!718762))

(assert (= (and b!718762 res!481296) b!718761))

(declare-fun m!674369 () Bool)

(assert (=> b!718758 m!674369))

(declare-fun m!674371 () Bool)

(assert (=> b!718763 m!674371))

(declare-fun m!674373 () Bool)

(assert (=> b!718759 m!674373))

(assert (=> b!718759 m!674373))

(declare-fun m!674375 () Bool)

(assert (=> b!718759 m!674375))

(declare-fun m!674377 () Bool)

(assert (=> b!718764 m!674377))

(declare-fun m!674379 () Bool)

(assert (=> start!64038 m!674379))

(declare-fun m!674381 () Bool)

(assert (=> start!64038 m!674381))

(assert (=> b!718761 m!674373))

(assert (=> b!718761 m!674373))

(declare-fun m!674383 () Bool)

(assert (=> b!718761 m!674383))

(assert (=> b!718761 m!674383))

(assert (=> b!718761 m!674373))

(declare-fun m!674385 () Bool)

(assert (=> b!718761 m!674385))

(declare-fun m!674387 () Bool)

(assert (=> b!718765 m!674387))

(declare-fun m!674389 () Bool)

(assert (=> b!718760 m!674389))

(check-sat (not b!718763) (not b!718761) (not start!64038) (not b!718760) (not b!718759) (not b!718764) (not b!718765) (not b!718758))
(check-sat)
