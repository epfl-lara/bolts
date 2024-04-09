; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64030 () Bool)

(assert start!64030)

(declare-fun b!718650 () Bool)

(declare-fun res!481186 () Bool)

(declare-fun e!403441 () Bool)

(assert (=> b!718650 (=> (not res!481186) (not e!403441))))

(declare-datatypes ((array!40678 0))(
  ( (array!40679 (arr!19461 (Array (_ BitVec 32) (_ BitVec 64))) (size!19882 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40678)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40678 (_ BitVec 32)) Bool)

(assert (=> b!718650 (= res!481186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718652 () Bool)

(declare-fun res!481187 () Bool)

(declare-fun e!403443 () Bool)

(assert (=> b!718652 (=> (not res!481187) (not e!403443))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718652 (= res!481187 (and (= (size!19882 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19882 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19882 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718653 () Bool)

(assert (=> b!718653 (= e!403443 e!403441)))

(declare-fun res!481190 () Bool)

(assert (=> b!718653 (=> (not res!481190) (not e!403441))))

(declare-datatypes ((SeekEntryResult!7068 0))(
  ( (MissingZero!7068 (index!30639 (_ BitVec 32))) (Found!7068 (index!30640 (_ BitVec 32))) (Intermediate!7068 (undefined!7880 Bool) (index!30641 (_ BitVec 32)) (x!61684 (_ BitVec 32))) (Undefined!7068) (MissingVacant!7068 (index!30642 (_ BitVec 32))) )
))
(declare-fun lt!319439 () SeekEntryResult!7068)

(assert (=> b!718653 (= res!481190 (or (= lt!319439 (MissingZero!7068 i!1173)) (= lt!319439 (MissingVacant!7068 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40678 (_ BitVec 32)) SeekEntryResult!7068)

(assert (=> b!718653 (= lt!319439 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718654 () Bool)

(declare-fun res!481185 () Bool)

(assert (=> b!718654 (=> (not res!481185) (not e!403441))))

(declare-datatypes ((List!13516 0))(
  ( (Nil!13513) (Cons!13512 (h!14560 (_ BitVec 64)) (t!19839 List!13516)) )
))
(declare-fun arrayNoDuplicates!0 (array!40678 (_ BitVec 32) List!13516) Bool)

(assert (=> b!718654 (= res!481185 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13513))))

(declare-fun b!718655 () Bool)

(declare-fun res!481188 () Bool)

(assert (=> b!718655 (=> (not res!481188) (not e!403443))))

(declare-fun arrayContainsKey!0 (array!40678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718655 (= res!481188 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718656 () Bool)

(declare-fun res!481183 () Bool)

(assert (=> b!718656 (=> (not res!481183) (not e!403441))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718656 (= res!481183 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19882 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19882 a!3186))))))

(declare-fun b!718657 () Bool)

(declare-fun res!481184 () Bool)

(assert (=> b!718657 (=> (not res!481184) (not e!403443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718657 (= res!481184 (validKeyInArray!0 (select (arr!19461 a!3186) j!159)))))

(declare-fun b!718658 () Bool)

(assert (=> b!718658 (= e!403441 false)))

(declare-fun lt!319438 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718658 (= lt!319438 (toIndex!0 (select (arr!19461 a!3186) j!159) mask!3328))))

(declare-fun res!481191 () Bool)

(assert (=> start!64030 (=> (not res!481191) (not e!403443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64030 (= res!481191 (validMask!0 mask!3328))))

(assert (=> start!64030 e!403443))

(assert (=> start!64030 true))

(declare-fun array_inv!15235 (array!40678) Bool)

(assert (=> start!64030 (array_inv!15235 a!3186)))

(declare-fun b!718651 () Bool)

(declare-fun res!481189 () Bool)

(assert (=> b!718651 (=> (not res!481189) (not e!403443))))

(assert (=> b!718651 (= res!481189 (validKeyInArray!0 k!2102))))

(assert (= (and start!64030 res!481191) b!718652))

(assert (= (and b!718652 res!481187) b!718657))

(assert (= (and b!718657 res!481184) b!718651))

(assert (= (and b!718651 res!481189) b!718655))

(assert (= (and b!718655 res!481188) b!718653))

(assert (= (and b!718653 res!481190) b!718650))

(assert (= (and b!718650 res!481186) b!718654))

(assert (= (and b!718654 res!481185) b!718656))

(assert (= (and b!718656 res!481183) b!718658))

(declare-fun m!674287 () Bool)

(assert (=> b!718650 m!674287))

(declare-fun m!674289 () Bool)

(assert (=> b!718655 m!674289))

(declare-fun m!674291 () Bool)

(assert (=> b!718657 m!674291))

(assert (=> b!718657 m!674291))

(declare-fun m!674293 () Bool)

(assert (=> b!718657 m!674293))

(declare-fun m!674295 () Bool)

(assert (=> b!718653 m!674295))

(assert (=> b!718658 m!674291))

(assert (=> b!718658 m!674291))

(declare-fun m!674297 () Bool)

(assert (=> b!718658 m!674297))

(declare-fun m!674299 () Bool)

(assert (=> b!718654 m!674299))

(declare-fun m!674301 () Bool)

(assert (=> b!718651 m!674301))

(declare-fun m!674303 () Bool)

(assert (=> start!64030 m!674303))

(declare-fun m!674305 () Bool)

(assert (=> start!64030 m!674305))

(push 1)

