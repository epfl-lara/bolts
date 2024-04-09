; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64116 () Bool)

(assert start!64116)

(declare-fun b!719856 () Bool)

(declare-fun e!403828 () Bool)

(assert (=> b!719856 (= e!403828 false)))

(declare-datatypes ((array!40764 0))(
  ( (array!40765 (arr!19504 (Array (_ BitVec 32) (_ BitVec 64))) (size!19925 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40764)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7111 0))(
  ( (MissingZero!7111 (index!30811 (_ BitVec 32))) (Found!7111 (index!30812 (_ BitVec 32))) (Intermediate!7111 (undefined!7923 Bool) (index!30813 (_ BitVec 32)) (x!61839 (_ BitVec 32))) (Undefined!7111) (MissingVacant!7111 (index!30814 (_ BitVec 32))) )
))
(declare-fun lt!319651 () SeekEntryResult!7111)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40764 (_ BitVec 32)) SeekEntryResult!7111)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719856 (= lt!319651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19504 a!3186) j!159) mask!3328) (select (arr!19504 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719857 () Bool)

(declare-fun res!482397 () Bool)

(declare-fun e!403830 () Bool)

(assert (=> b!719857 (=> (not res!482397) (not e!403830))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719857 (= res!482397 (and (= (size!19925 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19925 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19925 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719858 () Bool)

(declare-fun res!482389 () Bool)

(assert (=> b!719858 (=> (not res!482389) (not e!403830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719858 (= res!482389 (validKeyInArray!0 (select (arr!19504 a!3186) j!159)))))

(declare-fun res!482390 () Bool)

(assert (=> start!64116 (=> (not res!482390) (not e!403830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64116 (= res!482390 (validMask!0 mask!3328))))

(assert (=> start!64116 e!403830))

(assert (=> start!64116 true))

(declare-fun array_inv!15278 (array!40764) Bool)

(assert (=> start!64116 (array_inv!15278 a!3186)))

(declare-fun b!719859 () Bool)

(declare-fun res!482391 () Bool)

(assert (=> b!719859 (=> (not res!482391) (not e!403828))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!719859 (= res!482391 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19925 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19925 a!3186))))))

(declare-fun b!719860 () Bool)

(declare-fun res!482396 () Bool)

(assert (=> b!719860 (=> (not res!482396) (not e!403830))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!719860 (= res!482396 (validKeyInArray!0 k0!2102))))

(declare-fun b!719861 () Bool)

(assert (=> b!719861 (= e!403830 e!403828)))

(declare-fun res!482392 () Bool)

(assert (=> b!719861 (=> (not res!482392) (not e!403828))))

(declare-fun lt!319652 () SeekEntryResult!7111)

(assert (=> b!719861 (= res!482392 (or (= lt!319652 (MissingZero!7111 i!1173)) (= lt!319652 (MissingVacant!7111 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40764 (_ BitVec 32)) SeekEntryResult!7111)

(assert (=> b!719861 (= lt!319652 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719862 () Bool)

(declare-fun res!482395 () Bool)

(assert (=> b!719862 (=> (not res!482395) (not e!403830))))

(declare-fun arrayContainsKey!0 (array!40764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719862 (= res!482395 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719863 () Bool)

(declare-fun res!482393 () Bool)

(assert (=> b!719863 (=> (not res!482393) (not e!403828))))

(declare-datatypes ((List!13559 0))(
  ( (Nil!13556) (Cons!13555 (h!14603 (_ BitVec 64)) (t!19882 List!13559)) )
))
(declare-fun arrayNoDuplicates!0 (array!40764 (_ BitVec 32) List!13559) Bool)

(assert (=> b!719863 (= res!482393 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13556))))

(declare-fun b!719864 () Bool)

(declare-fun res!482394 () Bool)

(assert (=> b!719864 (=> (not res!482394) (not e!403828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40764 (_ BitVec 32)) Bool)

(assert (=> b!719864 (= res!482394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64116 res!482390) b!719857))

(assert (= (and b!719857 res!482397) b!719858))

(assert (= (and b!719858 res!482389) b!719860))

(assert (= (and b!719860 res!482396) b!719862))

(assert (= (and b!719862 res!482395) b!719861))

(assert (= (and b!719861 res!482392) b!719864))

(assert (= (and b!719864 res!482394) b!719863))

(assert (= (and b!719863 res!482393) b!719859))

(assert (= (and b!719859 res!482391) b!719856))

(declare-fun m!675257 () Bool)

(assert (=> b!719862 m!675257))

(declare-fun m!675259 () Bool)

(assert (=> b!719858 m!675259))

(assert (=> b!719858 m!675259))

(declare-fun m!675261 () Bool)

(assert (=> b!719858 m!675261))

(assert (=> b!719856 m!675259))

(assert (=> b!719856 m!675259))

(declare-fun m!675263 () Bool)

(assert (=> b!719856 m!675263))

(assert (=> b!719856 m!675263))

(assert (=> b!719856 m!675259))

(declare-fun m!675265 () Bool)

(assert (=> b!719856 m!675265))

(declare-fun m!675267 () Bool)

(assert (=> start!64116 m!675267))

(declare-fun m!675269 () Bool)

(assert (=> start!64116 m!675269))

(declare-fun m!675271 () Bool)

(assert (=> b!719863 m!675271))

(declare-fun m!675273 () Bool)

(assert (=> b!719864 m!675273))

(declare-fun m!675275 () Bool)

(assert (=> b!719860 m!675275))

(declare-fun m!675277 () Bool)

(assert (=> b!719861 m!675277))

(check-sat (not b!719858) (not b!719864) (not b!719860) (not b!719856) (not start!64116) (not b!719861) (not b!719862) (not b!719863))
(check-sat)
