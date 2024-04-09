; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64036 () Bool)

(assert start!64036)

(declare-fun b!718731 () Bool)

(declare-fun res!481267 () Bool)

(declare-fun e!403470 () Bool)

(assert (=> b!718731 (=> (not res!481267) (not e!403470))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718731 (= res!481267 (validKeyInArray!0 k!2102))))

(declare-fun b!718732 () Bool)

(declare-fun res!481269 () Bool)

(assert (=> b!718732 (=> (not res!481269) (not e!403470))))

(declare-datatypes ((array!40684 0))(
  ( (array!40685 (arr!19464 (Array (_ BitVec 32) (_ BitVec 64))) (size!19885 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40684)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!718732 (= res!481269 (and (= (size!19885 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19885 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19885 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481271 () Bool)

(assert (=> start!64036 (=> (not res!481271) (not e!403470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64036 (= res!481271 (validMask!0 mask!3328))))

(assert (=> start!64036 e!403470))

(assert (=> start!64036 true))

(declare-fun array_inv!15238 (array!40684) Bool)

(assert (=> start!64036 (array_inv!15238 a!3186)))

(declare-fun b!718733 () Bool)

(declare-fun res!481264 () Bool)

(assert (=> b!718733 (=> (not res!481264) (not e!403470))))

(declare-fun arrayContainsKey!0 (array!40684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718733 (= res!481264 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718734 () Bool)

(declare-fun e!403469 () Bool)

(assert (=> b!718734 (= e!403470 e!403469)))

(declare-fun res!481266 () Bool)

(assert (=> b!718734 (=> (not res!481266) (not e!403469))))

(declare-datatypes ((SeekEntryResult!7071 0))(
  ( (MissingZero!7071 (index!30651 (_ BitVec 32))) (Found!7071 (index!30652 (_ BitVec 32))) (Intermediate!7071 (undefined!7883 Bool) (index!30653 (_ BitVec 32)) (x!61695 (_ BitVec 32))) (Undefined!7071) (MissingVacant!7071 (index!30654 (_ BitVec 32))) )
))
(declare-fun lt!319456 () SeekEntryResult!7071)

(assert (=> b!718734 (= res!481266 (or (= lt!319456 (MissingZero!7071 i!1173)) (= lt!319456 (MissingVacant!7071 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40684 (_ BitVec 32)) SeekEntryResult!7071)

(assert (=> b!718734 (= lt!319456 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718735 () Bool)

(declare-fun res!481272 () Bool)

(assert (=> b!718735 (=> (not res!481272) (not e!403469))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718735 (= res!481272 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19885 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19885 a!3186))))))

(declare-fun b!718736 () Bool)

(assert (=> b!718736 (= e!403469 false)))

(declare-fun lt!319457 () SeekEntryResult!7071)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40684 (_ BitVec 32)) SeekEntryResult!7071)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718736 (= lt!319457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19464 a!3186) j!159) mask!3328) (select (arr!19464 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!718737 () Bool)

(declare-fun res!481268 () Bool)

(assert (=> b!718737 (=> (not res!481268) (not e!403469))))

(declare-datatypes ((List!13519 0))(
  ( (Nil!13516) (Cons!13515 (h!14563 (_ BitVec 64)) (t!19842 List!13519)) )
))
(declare-fun arrayNoDuplicates!0 (array!40684 (_ BitVec 32) List!13519) Bool)

(assert (=> b!718737 (= res!481268 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13516))))

(declare-fun b!718738 () Bool)

(declare-fun res!481270 () Bool)

(assert (=> b!718738 (=> (not res!481270) (not e!403469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40684 (_ BitVec 32)) Bool)

(assert (=> b!718738 (= res!481270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718739 () Bool)

(declare-fun res!481265 () Bool)

(assert (=> b!718739 (=> (not res!481265) (not e!403470))))

(assert (=> b!718739 (= res!481265 (validKeyInArray!0 (select (arr!19464 a!3186) j!159)))))

(assert (= (and start!64036 res!481271) b!718732))

(assert (= (and b!718732 res!481269) b!718739))

(assert (= (and b!718739 res!481265) b!718731))

(assert (= (and b!718731 res!481267) b!718733))

(assert (= (and b!718733 res!481264) b!718734))

(assert (= (and b!718734 res!481266) b!718738))

(assert (= (and b!718738 res!481270) b!718737))

(assert (= (and b!718737 res!481268) b!718735))

(assert (= (and b!718735 res!481272) b!718736))

(declare-fun m!674347 () Bool)

(assert (=> b!718733 m!674347))

(declare-fun m!674349 () Bool)

(assert (=> b!718739 m!674349))

(assert (=> b!718739 m!674349))

(declare-fun m!674351 () Bool)

(assert (=> b!718739 m!674351))

(declare-fun m!674353 () Bool)

(assert (=> b!718738 m!674353))

(assert (=> b!718736 m!674349))

(assert (=> b!718736 m!674349))

(declare-fun m!674355 () Bool)

(assert (=> b!718736 m!674355))

(assert (=> b!718736 m!674355))

(assert (=> b!718736 m!674349))

(declare-fun m!674357 () Bool)

(assert (=> b!718736 m!674357))

(declare-fun m!674359 () Bool)

(assert (=> b!718737 m!674359))

(declare-fun m!674361 () Bool)

(assert (=> start!64036 m!674361))

(declare-fun m!674363 () Bool)

(assert (=> start!64036 m!674363))

(declare-fun m!674365 () Bool)

(assert (=> b!718731 m!674365))

(declare-fun m!674367 () Bool)

(assert (=> b!718734 m!674367))

(push 1)

