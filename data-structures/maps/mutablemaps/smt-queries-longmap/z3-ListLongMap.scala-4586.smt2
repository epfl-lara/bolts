; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64050 () Bool)

(assert start!64050)

(declare-fun b!718929 () Bool)

(declare-fun res!481469 () Bool)

(declare-fun e!403532 () Bool)

(assert (=> b!718929 (=> (not res!481469) (not e!403532))))

(declare-datatypes ((array!40698 0))(
  ( (array!40699 (arr!19471 (Array (_ BitVec 32) (_ BitVec 64))) (size!19892 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40698)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40698 (_ BitVec 32)) Bool)

(assert (=> b!718929 (= res!481469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718930 () Bool)

(declare-fun res!481463 () Bool)

(assert (=> b!718930 (=> (not res!481463) (not e!403532))))

(declare-datatypes ((List!13526 0))(
  ( (Nil!13523) (Cons!13522 (h!14570 (_ BitVec 64)) (t!19849 List!13526)) )
))
(declare-fun arrayNoDuplicates!0 (array!40698 (_ BitVec 32) List!13526) Bool)

(assert (=> b!718930 (= res!481463 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13523))))

(declare-fun b!718931 () Bool)

(declare-fun res!481470 () Bool)

(declare-fun e!403533 () Bool)

(assert (=> b!718931 (=> (not res!481470) (not e!403533))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718931 (= res!481470 (validKeyInArray!0 k0!2102))))

(declare-fun b!718932 () Bool)

(declare-fun res!481464 () Bool)

(assert (=> b!718932 (=> (not res!481464) (not e!403533))))

(declare-fun arrayContainsKey!0 (array!40698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718932 (= res!481464 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718933 () Bool)

(assert (=> b!718933 (= e!403533 e!403532)))

(declare-fun res!481468 () Bool)

(assert (=> b!718933 (=> (not res!481468) (not e!403532))))

(declare-datatypes ((SeekEntryResult!7078 0))(
  ( (MissingZero!7078 (index!30679 (_ BitVec 32))) (Found!7078 (index!30680 (_ BitVec 32))) (Intermediate!7078 (undefined!7890 Bool) (index!30681 (_ BitVec 32)) (x!61718 (_ BitVec 32))) (Undefined!7078) (MissingVacant!7078 (index!30682 (_ BitVec 32))) )
))
(declare-fun lt!319489 () SeekEntryResult!7078)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718933 (= res!481468 (or (= lt!319489 (MissingZero!7078 i!1173)) (= lt!319489 (MissingVacant!7078 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40698 (_ BitVec 32)) SeekEntryResult!7078)

(assert (=> b!718933 (= lt!319489 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!481462 () Bool)

(assert (=> start!64050 (=> (not res!481462) (not e!403533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64050 (= res!481462 (validMask!0 mask!3328))))

(assert (=> start!64050 e!403533))

(assert (=> start!64050 true))

(declare-fun array_inv!15245 (array!40698) Bool)

(assert (=> start!64050 (array_inv!15245 a!3186)))

(declare-fun b!718934 () Bool)

(assert (=> b!718934 (= e!403532 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!319490 () SeekEntryResult!7078)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40698 (_ BitVec 32)) SeekEntryResult!7078)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718934 (= lt!319490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19471 a!3186) j!159) mask!3328) (select (arr!19471 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!718935 () Bool)

(declare-fun res!481466 () Bool)

(assert (=> b!718935 (=> (not res!481466) (not e!403533))))

(assert (=> b!718935 (= res!481466 (and (= (size!19892 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19892 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19892 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718936 () Bool)

(declare-fun res!481467 () Bool)

(assert (=> b!718936 (=> (not res!481467) (not e!403532))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718936 (= res!481467 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19892 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19892 a!3186))))))

(declare-fun b!718937 () Bool)

(declare-fun res!481465 () Bool)

(assert (=> b!718937 (=> (not res!481465) (not e!403533))))

(assert (=> b!718937 (= res!481465 (validKeyInArray!0 (select (arr!19471 a!3186) j!159)))))

(assert (= (and start!64050 res!481462) b!718935))

(assert (= (and b!718935 res!481466) b!718937))

(assert (= (and b!718937 res!481465) b!718931))

(assert (= (and b!718931 res!481470) b!718932))

(assert (= (and b!718932 res!481464) b!718933))

(assert (= (and b!718933 res!481468) b!718929))

(assert (= (and b!718929 res!481469) b!718930))

(assert (= (and b!718930 res!481463) b!718936))

(assert (= (and b!718936 res!481467) b!718934))

(declare-fun m!674507 () Bool)

(assert (=> b!718933 m!674507))

(declare-fun m!674509 () Bool)

(assert (=> b!718930 m!674509))

(declare-fun m!674511 () Bool)

(assert (=> b!718932 m!674511))

(declare-fun m!674513 () Bool)

(assert (=> b!718937 m!674513))

(assert (=> b!718937 m!674513))

(declare-fun m!674515 () Bool)

(assert (=> b!718937 m!674515))

(declare-fun m!674517 () Bool)

(assert (=> b!718931 m!674517))

(assert (=> b!718934 m!674513))

(assert (=> b!718934 m!674513))

(declare-fun m!674519 () Bool)

(assert (=> b!718934 m!674519))

(assert (=> b!718934 m!674519))

(assert (=> b!718934 m!674513))

(declare-fun m!674521 () Bool)

(assert (=> b!718934 m!674521))

(declare-fun m!674523 () Bool)

(assert (=> b!718929 m!674523))

(declare-fun m!674525 () Bool)

(assert (=> start!64050 m!674525))

(declare-fun m!674527 () Bool)

(assert (=> start!64050 m!674527))

(check-sat (not b!718929) (not b!718932) (not b!718931) (not b!718937) (not b!718933) (not b!718934) (not b!718930) (not start!64050))
(check-sat)
