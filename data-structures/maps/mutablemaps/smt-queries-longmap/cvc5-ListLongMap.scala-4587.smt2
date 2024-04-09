; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64054 () Bool)

(assert start!64054)

(declare-fun b!718986 () Bool)

(declare-fun res!481521 () Bool)

(declare-fun e!403550 () Bool)

(assert (=> b!718986 (=> (not res!481521) (not e!403550))))

(declare-datatypes ((array!40702 0))(
  ( (array!40703 (arr!19473 (Array (_ BitVec 32) (_ BitVec 64))) (size!19894 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40702)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718986 (= res!481521 (validKeyInArray!0 (select (arr!19473 a!3186) j!159)))))

(declare-fun b!718987 () Bool)

(declare-fun res!481524 () Bool)

(declare-fun e!403551 () Bool)

(assert (=> b!718987 (=> (not res!481524) (not e!403551))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7080 0))(
  ( (MissingZero!7080 (index!30687 (_ BitVec 32))) (Found!7080 (index!30688 (_ BitVec 32))) (Intermediate!7080 (undefined!7892 Bool) (index!30689 (_ BitVec 32)) (x!61728 (_ BitVec 32))) (Undefined!7080) (MissingVacant!7080 (index!30690 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40702 (_ BitVec 32)) SeekEntryResult!7080)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718987 (= res!481524 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19473 a!3186) j!159) mask!3328) (select (arr!19473 a!3186) j!159) a!3186 mask!3328) (Intermediate!7080 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!718988 () Bool)

(declare-fun res!481520 () Bool)

(assert (=> b!718988 (=> (not res!481520) (not e!403551))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!718988 (= res!481520 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19894 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19894 a!3186))))))

(declare-fun b!718989 () Bool)

(declare-fun res!481525 () Bool)

(assert (=> b!718989 (=> (not res!481525) (not e!403550))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!718989 (= res!481525 (validKeyInArray!0 k!2102))))

(declare-fun b!718990 () Bool)

(declare-fun res!481527 () Bool)

(assert (=> b!718990 (=> (not res!481527) (not e!403550))))

(declare-fun arrayContainsKey!0 (array!40702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718990 (= res!481527 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718991 () Bool)

(declare-fun res!481519 () Bool)

(assert (=> b!718991 (=> (not res!481519) (not e!403551))))

(declare-datatypes ((List!13528 0))(
  ( (Nil!13525) (Cons!13524 (h!14572 (_ BitVec 64)) (t!19851 List!13528)) )
))
(declare-fun arrayNoDuplicates!0 (array!40702 (_ BitVec 32) List!13528) Bool)

(assert (=> b!718991 (= res!481519 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13525))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun b!718992 () Bool)

(assert (=> b!718992 (= e!403551 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19473 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsle x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!718993 () Bool)

(declare-fun res!481526 () Bool)

(assert (=> b!718993 (=> (not res!481526) (not e!403551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40702 (_ BitVec 32)) Bool)

(assert (=> b!718993 (= res!481526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718994 () Bool)

(assert (=> b!718994 (= e!403550 e!403551)))

(declare-fun res!481523 () Bool)

(assert (=> b!718994 (=> (not res!481523) (not e!403551))))

(declare-fun lt!319499 () SeekEntryResult!7080)

(assert (=> b!718994 (= res!481523 (or (= lt!319499 (MissingZero!7080 i!1173)) (= lt!319499 (MissingVacant!7080 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40702 (_ BitVec 32)) SeekEntryResult!7080)

(assert (=> b!718994 (= lt!319499 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718985 () Bool)

(declare-fun res!481518 () Bool)

(assert (=> b!718985 (=> (not res!481518) (not e!403550))))

(assert (=> b!718985 (= res!481518 (and (= (size!19894 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19894 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19894 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481522 () Bool)

(assert (=> start!64054 (=> (not res!481522) (not e!403550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64054 (= res!481522 (validMask!0 mask!3328))))

(assert (=> start!64054 e!403550))

(assert (=> start!64054 true))

(declare-fun array_inv!15247 (array!40702) Bool)

(assert (=> start!64054 (array_inv!15247 a!3186)))

(assert (= (and start!64054 res!481522) b!718985))

(assert (= (and b!718985 res!481518) b!718986))

(assert (= (and b!718986 res!481521) b!718989))

(assert (= (and b!718989 res!481525) b!718990))

(assert (= (and b!718990 res!481527) b!718994))

(assert (= (and b!718994 res!481523) b!718993))

(assert (= (and b!718993 res!481526) b!718991))

(assert (= (and b!718991 res!481519) b!718988))

(assert (= (and b!718988 res!481520) b!718987))

(assert (= (and b!718987 res!481524) b!718992))

(declare-fun m!674551 () Bool)

(assert (=> b!718993 m!674551))

(declare-fun m!674553 () Bool)

(assert (=> b!718990 m!674553))

(declare-fun m!674555 () Bool)

(assert (=> b!718986 m!674555))

(assert (=> b!718986 m!674555))

(declare-fun m!674557 () Bool)

(assert (=> b!718986 m!674557))

(declare-fun m!674559 () Bool)

(assert (=> b!718994 m!674559))

(assert (=> b!718987 m!674555))

(assert (=> b!718987 m!674555))

(declare-fun m!674561 () Bool)

(assert (=> b!718987 m!674561))

(assert (=> b!718987 m!674561))

(assert (=> b!718987 m!674555))

(declare-fun m!674563 () Bool)

(assert (=> b!718987 m!674563))

(declare-fun m!674565 () Bool)

(assert (=> b!718991 m!674565))

(declare-fun m!674567 () Bool)

(assert (=> b!718992 m!674567))

(declare-fun m!674569 () Bool)

(assert (=> b!718989 m!674569))

(declare-fun m!674571 () Bool)

(assert (=> start!64054 m!674571))

(declare-fun m!674573 () Bool)

(assert (=> start!64054 m!674573))

(push 1)

(assert (not b!718987))

(assert (not b!718989))

(assert (not b!718986))

(assert (not b!718991))

(assert (not start!64054))

(assert (not b!718993))

(assert (not b!718990))

(assert (not b!718994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

