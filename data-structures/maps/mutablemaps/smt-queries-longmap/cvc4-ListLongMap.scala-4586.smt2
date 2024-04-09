; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64052 () Bool)

(assert start!64052)

(declare-fun b!718956 () Bool)

(declare-fun res!481490 () Bool)

(declare-fun e!403542 () Bool)

(assert (=> b!718956 (=> (not res!481490) (not e!403542))))

(declare-datatypes ((array!40700 0))(
  ( (array!40701 (arr!19472 (Array (_ BitVec 32) (_ BitVec 64))) (size!19893 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40700)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40700 (_ BitVec 32)) Bool)

(assert (=> b!718956 (= res!481490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718957 () Bool)

(declare-fun res!481489 () Bool)

(declare-fun e!403541 () Bool)

(assert (=> b!718957 (=> (not res!481489) (not e!403541))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718957 (= res!481489 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718958 () Bool)

(declare-fun res!481494 () Bool)

(assert (=> b!718958 (=> (not res!481494) (not e!403541))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718958 (= res!481494 (validKeyInArray!0 (select (arr!19472 a!3186) j!159)))))

(declare-fun b!718959 () Bool)

(declare-fun res!481497 () Bool)

(assert (=> b!718959 (=> (not res!481497) (not e!403541))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718959 (= res!481497 (and (= (size!19893 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19893 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19893 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718960 () Bool)

(assert (=> b!718960 (= e!403542 false)))

(declare-datatypes ((SeekEntryResult!7079 0))(
  ( (MissingZero!7079 (index!30683 (_ BitVec 32))) (Found!7079 (index!30684 (_ BitVec 32))) (Intermediate!7079 (undefined!7891 Bool) (index!30685 (_ BitVec 32)) (x!61719 (_ BitVec 32))) (Undefined!7079) (MissingVacant!7079 (index!30686 (_ BitVec 32))) )
))
(declare-fun lt!319495 () SeekEntryResult!7079)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40700 (_ BitVec 32)) SeekEntryResult!7079)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718960 (= lt!319495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19472 a!3186) j!159) mask!3328) (select (arr!19472 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!718961 () Bool)

(assert (=> b!718961 (= e!403541 e!403542)))

(declare-fun res!481495 () Bool)

(assert (=> b!718961 (=> (not res!481495) (not e!403542))))

(declare-fun lt!319496 () SeekEntryResult!7079)

(assert (=> b!718961 (= res!481495 (or (= lt!319496 (MissingZero!7079 i!1173)) (= lt!319496 (MissingVacant!7079 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40700 (_ BitVec 32)) SeekEntryResult!7079)

(assert (=> b!718961 (= lt!319496 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718962 () Bool)

(declare-fun res!481491 () Bool)

(assert (=> b!718962 (=> (not res!481491) (not e!403542))))

(declare-datatypes ((List!13527 0))(
  ( (Nil!13524) (Cons!13523 (h!14571 (_ BitVec 64)) (t!19850 List!13527)) )
))
(declare-fun arrayNoDuplicates!0 (array!40700 (_ BitVec 32) List!13527) Bool)

(assert (=> b!718962 (= res!481491 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13524))))

(declare-fun res!481492 () Bool)

(assert (=> start!64052 (=> (not res!481492) (not e!403541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64052 (= res!481492 (validMask!0 mask!3328))))

(assert (=> start!64052 e!403541))

(assert (=> start!64052 true))

(declare-fun array_inv!15246 (array!40700) Bool)

(assert (=> start!64052 (array_inv!15246 a!3186)))

(declare-fun b!718963 () Bool)

(declare-fun res!481493 () Bool)

(assert (=> b!718963 (=> (not res!481493) (not e!403541))))

(assert (=> b!718963 (= res!481493 (validKeyInArray!0 k!2102))))

(declare-fun b!718964 () Bool)

(declare-fun res!481496 () Bool)

(assert (=> b!718964 (=> (not res!481496) (not e!403542))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!718964 (= res!481496 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19893 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19893 a!3186))))))

(assert (= (and start!64052 res!481492) b!718959))

(assert (= (and b!718959 res!481497) b!718958))

(assert (= (and b!718958 res!481494) b!718963))

(assert (= (and b!718963 res!481493) b!718957))

(assert (= (and b!718957 res!481489) b!718961))

(assert (= (and b!718961 res!481495) b!718956))

(assert (= (and b!718956 res!481490) b!718962))

(assert (= (and b!718962 res!481491) b!718964))

(assert (= (and b!718964 res!481496) b!718960))

(declare-fun m!674529 () Bool)

(assert (=> b!718958 m!674529))

(assert (=> b!718958 m!674529))

(declare-fun m!674531 () Bool)

(assert (=> b!718958 m!674531))

(declare-fun m!674533 () Bool)

(assert (=> b!718956 m!674533))

(declare-fun m!674535 () Bool)

(assert (=> b!718962 m!674535))

(declare-fun m!674537 () Bool)

(assert (=> b!718957 m!674537))

(assert (=> b!718960 m!674529))

(assert (=> b!718960 m!674529))

(declare-fun m!674539 () Bool)

(assert (=> b!718960 m!674539))

(assert (=> b!718960 m!674539))

(assert (=> b!718960 m!674529))

(declare-fun m!674541 () Bool)

(assert (=> b!718960 m!674541))

(declare-fun m!674543 () Bool)

(assert (=> b!718963 m!674543))

(declare-fun m!674545 () Bool)

(assert (=> start!64052 m!674545))

(declare-fun m!674547 () Bool)

(assert (=> start!64052 m!674547))

(declare-fun m!674549 () Bool)

(assert (=> b!718961 m!674549))

(push 1)

(assert (not b!718957))

(assert (not b!718961))

(assert (not b!718963))

(assert (not start!64052))

(assert (not b!718962))

(assert (not b!718958))

(assert (not b!718960))

(assert (not b!718956))

(check-sat)

