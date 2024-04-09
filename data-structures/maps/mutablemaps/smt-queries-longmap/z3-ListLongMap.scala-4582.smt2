; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64026 () Bool)

(assert start!64026)

(declare-fun b!718596 () Bool)

(declare-fun res!481131 () Bool)

(declare-fun e!403425 () Bool)

(assert (=> b!718596 (=> (not res!481131) (not e!403425))))

(declare-datatypes ((array!40674 0))(
  ( (array!40675 (arr!19459 (Array (_ BitVec 32) (_ BitVec 64))) (size!19880 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40674)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!718596 (= res!481131 (and (= (size!19880 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19880 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19880 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718597 () Bool)

(declare-fun res!481129 () Bool)

(declare-fun e!403423 () Bool)

(assert (=> b!718597 (=> (not res!481129) (not e!403423))))

(declare-datatypes ((List!13514 0))(
  ( (Nil!13511) (Cons!13510 (h!14558 (_ BitVec 64)) (t!19837 List!13514)) )
))
(declare-fun arrayNoDuplicates!0 (array!40674 (_ BitVec 32) List!13514) Bool)

(assert (=> b!718597 (= res!481129 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13511))))

(declare-fun b!718598 () Bool)

(declare-fun res!481133 () Bool)

(assert (=> b!718598 (=> (not res!481133) (not e!403425))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718598 (= res!481133 (validKeyInArray!0 k0!2102))))

(declare-fun b!718599 () Bool)

(declare-fun res!481132 () Bool)

(assert (=> b!718599 (=> (not res!481132) (not e!403425))))

(assert (=> b!718599 (= res!481132 (validKeyInArray!0 (select (arr!19459 a!3186) j!159)))))

(declare-fun res!481130 () Bool)

(assert (=> start!64026 (=> (not res!481130) (not e!403425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64026 (= res!481130 (validMask!0 mask!3328))))

(assert (=> start!64026 e!403425))

(assert (=> start!64026 true))

(declare-fun array_inv!15233 (array!40674) Bool)

(assert (=> start!64026 (array_inv!15233 a!3186)))

(declare-fun b!718600 () Bool)

(declare-fun res!481135 () Bool)

(assert (=> b!718600 (=> (not res!481135) (not e!403423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40674 (_ BitVec 32)) Bool)

(assert (=> b!718600 (= res!481135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718601 () Bool)

(assert (=> b!718601 (= e!403425 e!403423)))

(declare-fun res!481136 () Bool)

(assert (=> b!718601 (=> (not res!481136) (not e!403423))))

(declare-datatypes ((SeekEntryResult!7066 0))(
  ( (MissingZero!7066 (index!30631 (_ BitVec 32))) (Found!7066 (index!30632 (_ BitVec 32))) (Intermediate!7066 (undefined!7878 Bool) (index!30633 (_ BitVec 32)) (x!61674 (_ BitVec 32))) (Undefined!7066) (MissingVacant!7066 (index!30634 (_ BitVec 32))) )
))
(declare-fun lt!319426 () SeekEntryResult!7066)

(assert (=> b!718601 (= res!481136 (or (= lt!319426 (MissingZero!7066 i!1173)) (= lt!319426 (MissingVacant!7066 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40674 (_ BitVec 32)) SeekEntryResult!7066)

(assert (=> b!718601 (= lt!319426 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!718602 () Bool)

(declare-fun res!481134 () Bool)

(assert (=> b!718602 (=> (not res!481134) (not e!403423))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718602 (= res!481134 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19880 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19880 a!3186))))))

(declare-fun b!718603 () Bool)

(assert (=> b!718603 (= e!403423 false)))

(declare-fun lt!319427 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718603 (= lt!319427 (toIndex!0 (select (arr!19459 a!3186) j!159) mask!3328))))

(declare-fun b!718604 () Bool)

(declare-fun res!481137 () Bool)

(assert (=> b!718604 (=> (not res!481137) (not e!403425))))

(declare-fun arrayContainsKey!0 (array!40674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718604 (= res!481137 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64026 res!481130) b!718596))

(assert (= (and b!718596 res!481131) b!718599))

(assert (= (and b!718599 res!481132) b!718598))

(assert (= (and b!718598 res!481133) b!718604))

(assert (= (and b!718604 res!481137) b!718601))

(assert (= (and b!718601 res!481136) b!718600))

(assert (= (and b!718600 res!481135) b!718597))

(assert (= (and b!718597 res!481129) b!718602))

(assert (= (and b!718602 res!481134) b!718603))

(declare-fun m!674247 () Bool)

(assert (=> b!718598 m!674247))

(declare-fun m!674249 () Bool)

(assert (=> start!64026 m!674249))

(declare-fun m!674251 () Bool)

(assert (=> start!64026 m!674251))

(declare-fun m!674253 () Bool)

(assert (=> b!718600 m!674253))

(declare-fun m!674255 () Bool)

(assert (=> b!718603 m!674255))

(assert (=> b!718603 m!674255))

(declare-fun m!674257 () Bool)

(assert (=> b!718603 m!674257))

(assert (=> b!718599 m!674255))

(assert (=> b!718599 m!674255))

(declare-fun m!674259 () Bool)

(assert (=> b!718599 m!674259))

(declare-fun m!674261 () Bool)

(assert (=> b!718604 m!674261))

(declare-fun m!674263 () Bool)

(assert (=> b!718601 m!674263))

(declare-fun m!674265 () Bool)

(assert (=> b!718597 m!674265))

(check-sat (not start!64026) (not b!718604) (not b!718600) (not b!718601) (not b!718597) (not b!718598) (not b!718603) (not b!718599))
(check-sat)
