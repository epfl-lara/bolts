; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30936 () Bool)

(assert start!30936)

(declare-fun b!310314 () Bool)

(declare-fun res!166929 () Bool)

(declare-fun e!193750 () Bool)

(assert (=> b!310314 (=> (not res!166929) (not e!193750))))

(declare-datatypes ((array!15836 0))(
  ( (array!15837 (arr!7498 (Array (_ BitVec 32) (_ BitVec 64))) (size!7850 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15836)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310314 (= res!166929 (and (= (size!7850 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7850 a!3293))))))

(declare-fun b!310315 () Bool)

(declare-fun res!166934 () Bool)

(assert (=> b!310315 (=> (not res!166934) (not e!193750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15836 (_ BitVec 32)) Bool)

(assert (=> b!310315 (= res!166934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310316 () Bool)

(declare-fun res!166935 () Bool)

(assert (=> b!310316 (=> (not res!166935) (not e!193750))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310316 (= res!166935 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310317 () Bool)

(declare-fun e!193747 () Bool)

(assert (=> b!310317 (= e!193747 (not true))))

(declare-fun e!193748 () Bool)

(assert (=> b!310317 e!193748))

(declare-fun res!166930 () Bool)

(assert (=> b!310317 (=> (not res!166930) (not e!193748))))

(declare-fun lt!151948 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2649 0))(
  ( (MissingZero!2649 (index!12772 (_ BitVec 32))) (Found!2649 (index!12773 (_ BitVec 32))) (Intermediate!2649 (undefined!3461 Bool) (index!12774 (_ BitVec 32)) (x!30969 (_ BitVec 32))) (Undefined!2649) (MissingVacant!2649 (index!12775 (_ BitVec 32))) )
))
(declare-fun lt!151947 () SeekEntryResult!2649)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15836 (_ BitVec 32)) SeekEntryResult!2649)

(assert (=> b!310317 (= res!166930 (= lt!151947 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151948 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310317 (= lt!151948 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310318 () Bool)

(declare-fun res!166928 () Bool)

(declare-fun e!193749 () Bool)

(assert (=> b!310318 (=> (not res!166928) (not e!193749))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310318 (= res!166928 (and (= (select (arr!7498 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7850 a!3293))))))

(declare-fun b!310319 () Bool)

(assert (=> b!310319 (= e!193750 e!193749)))

(declare-fun res!166926 () Bool)

(assert (=> b!310319 (=> (not res!166926) (not e!193749))))

(declare-fun lt!151949 () SeekEntryResult!2649)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310319 (= res!166926 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151949))))

(assert (=> b!310319 (= lt!151949 (Intermediate!2649 false resIndex!52 resX!52))))

(declare-fun res!166933 () Bool)

(assert (=> start!30936 (=> (not res!166933) (not e!193750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30936 (= res!166933 (validMask!0 mask!3709))))

(assert (=> start!30936 e!193750))

(declare-fun array_inv!5452 (array!15836) Bool)

(assert (=> start!30936 (array_inv!5452 a!3293)))

(assert (=> start!30936 true))

(declare-fun b!310320 () Bool)

(assert (=> b!310320 (= e!193749 e!193747)))

(declare-fun res!166931 () Bool)

(assert (=> b!310320 (=> (not res!166931) (not e!193747))))

(assert (=> b!310320 (= res!166931 (and (= lt!151947 lt!151949) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7498 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310320 (= lt!151947 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310321 () Bool)

(declare-fun res!166932 () Bool)

(assert (=> b!310321 (=> (not res!166932) (not e!193750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310321 (= res!166932 (validKeyInArray!0 k!2441))))

(declare-fun lt!151946 () array!15836)

(declare-fun b!310322 () Bool)

(assert (=> b!310322 (= e!193748 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151946 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151948 k!2441 lt!151946 mask!3709)))))

(assert (=> b!310322 (= lt!151946 (array!15837 (store (arr!7498 a!3293) i!1240 k!2441) (size!7850 a!3293)))))

(declare-fun b!310323 () Bool)

(declare-fun res!166927 () Bool)

(assert (=> b!310323 (=> (not res!166927) (not e!193750))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15836 (_ BitVec 32)) SeekEntryResult!2649)

(assert (=> b!310323 (= res!166927 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2649 i!1240)))))

(assert (= (and start!30936 res!166933) b!310314))

(assert (= (and b!310314 res!166929) b!310321))

(assert (= (and b!310321 res!166932) b!310316))

(assert (= (and b!310316 res!166935) b!310323))

(assert (= (and b!310323 res!166927) b!310315))

(assert (= (and b!310315 res!166934) b!310319))

(assert (= (and b!310319 res!166926) b!310318))

(assert (= (and b!310318 res!166928) b!310320))

(assert (= (and b!310320 res!166931) b!310317))

(assert (= (and b!310317 res!166930) b!310322))

(declare-fun m!320269 () Bool)

(assert (=> b!310315 m!320269))

(declare-fun m!320271 () Bool)

(assert (=> b!310323 m!320271))

(declare-fun m!320273 () Bool)

(assert (=> b!310316 m!320273))

(declare-fun m!320275 () Bool)

(assert (=> start!30936 m!320275))

(declare-fun m!320277 () Bool)

(assert (=> start!30936 m!320277))

(declare-fun m!320279 () Bool)

(assert (=> b!310322 m!320279))

(declare-fun m!320281 () Bool)

(assert (=> b!310322 m!320281))

(declare-fun m!320283 () Bool)

(assert (=> b!310322 m!320283))

(declare-fun m!320285 () Bool)

(assert (=> b!310319 m!320285))

(assert (=> b!310319 m!320285))

(declare-fun m!320287 () Bool)

(assert (=> b!310319 m!320287))

(declare-fun m!320289 () Bool)

(assert (=> b!310321 m!320289))

(declare-fun m!320291 () Bool)

(assert (=> b!310320 m!320291))

(declare-fun m!320293 () Bool)

(assert (=> b!310320 m!320293))

(declare-fun m!320295 () Bool)

(assert (=> b!310318 m!320295))

(declare-fun m!320297 () Bool)

(assert (=> b!310317 m!320297))

(declare-fun m!320299 () Bool)

(assert (=> b!310317 m!320299))

(push 1)

