; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30900 () Bool)

(assert start!30900)

(declare-fun b!309781 () Bool)

(declare-fun e!193483 () Bool)

(declare-fun e!193486 () Bool)

(assert (=> b!309781 (= e!193483 e!193486)))

(declare-fun res!166396 () Bool)

(assert (=> b!309781 (=> (not res!166396) (not e!193486))))

(declare-datatypes ((array!15800 0))(
  ( (array!15801 (arr!7480 (Array (_ BitVec 32) (_ BitVec 64))) (size!7832 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15800)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2631 0))(
  ( (MissingZero!2631 (index!12700 (_ BitVec 32))) (Found!2631 (index!12701 (_ BitVec 32))) (Intermediate!2631 (undefined!3443 Bool) (index!12702 (_ BitVec 32)) (x!30903 (_ BitVec 32))) (Undefined!2631) (MissingVacant!2631 (index!12703 (_ BitVec 32))) )
))
(declare-fun lt!151745 () SeekEntryResult!2631)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15800 (_ BitVec 32)) SeekEntryResult!2631)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309781 (= res!166396 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151745))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309781 (= lt!151745 (Intermediate!2631 false resIndex!52 resX!52))))

(declare-fun b!309782 () Bool)

(declare-fun e!193484 () Bool)

(assert (=> b!309782 (= e!193486 e!193484)))

(declare-fun res!166395 () Bool)

(assert (=> b!309782 (=> (not res!166395) (not e!193484))))

(declare-fun lt!151744 () SeekEntryResult!2631)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309782 (= res!166395 (and (= lt!151744 lt!151745) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7480 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309782 (= lt!151744 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309783 () Bool)

(declare-fun res!166393 () Bool)

(assert (=> b!309783 (=> (not res!166393) (not e!193483))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15800 (_ BitVec 32)) SeekEntryResult!2631)

(assert (=> b!309783 (= res!166393 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2631 i!1240)))))

(declare-fun b!309784 () Bool)

(declare-fun res!166397 () Bool)

(assert (=> b!309784 (=> (not res!166397) (not e!193483))))

(assert (=> b!309784 (= res!166397 (and (= (size!7832 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7832 a!3293))))))

(declare-fun b!309785 () Bool)

(declare-fun res!166399 () Bool)

(assert (=> b!309785 (=> (not res!166399) (not e!193486))))

(assert (=> b!309785 (= res!166399 (and (= (select (arr!7480 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7832 a!3293))))))

(declare-fun b!309786 () Bool)

(assert (=> b!309786 (= e!193484 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309786 (= lt!151744 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun res!166398 () Bool)

(assert (=> start!30900 (=> (not res!166398) (not e!193483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30900 (= res!166398 (validMask!0 mask!3709))))

(assert (=> start!30900 e!193483))

(declare-fun array_inv!5434 (array!15800) Bool)

(assert (=> start!30900 (array_inv!5434 a!3293)))

(assert (=> start!30900 true))

(declare-fun b!309787 () Bool)

(declare-fun res!166394 () Bool)

(assert (=> b!309787 (=> (not res!166394) (not e!193483))))

(declare-fun arrayContainsKey!0 (array!15800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309787 (= res!166394 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309788 () Bool)

(declare-fun res!166400 () Bool)

(assert (=> b!309788 (=> (not res!166400) (not e!193483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309788 (= res!166400 (validKeyInArray!0 k!2441))))

(declare-fun b!309789 () Bool)

(declare-fun res!166401 () Bool)

(assert (=> b!309789 (=> (not res!166401) (not e!193483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15800 (_ BitVec 32)) Bool)

(assert (=> b!309789 (= res!166401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30900 res!166398) b!309784))

(assert (= (and b!309784 res!166397) b!309788))

(assert (= (and b!309788 res!166400) b!309787))

(assert (= (and b!309787 res!166394) b!309783))

(assert (= (and b!309783 res!166393) b!309789))

(assert (= (and b!309789 res!166401) b!309781))

(assert (= (and b!309781 res!166396) b!309785))

(assert (= (and b!309785 res!166399) b!309782))

(assert (= (and b!309782 res!166395) b!309786))

(declare-fun m!319711 () Bool)

(assert (=> b!309786 m!319711))

(assert (=> b!309786 m!319711))

(declare-fun m!319713 () Bool)

(assert (=> b!309786 m!319713))

(declare-fun m!319715 () Bool)

(assert (=> b!309788 m!319715))

(declare-fun m!319717 () Bool)

(assert (=> b!309789 m!319717))

(declare-fun m!319719 () Bool)

(assert (=> b!309787 m!319719))

(declare-fun m!319721 () Bool)

(assert (=> b!309783 m!319721))

(declare-fun m!319723 () Bool)

(assert (=> start!30900 m!319723))

(declare-fun m!319725 () Bool)

(assert (=> start!30900 m!319725))

(declare-fun m!319727 () Bool)

(assert (=> b!309785 m!319727))

(declare-fun m!319729 () Bool)

(assert (=> b!309782 m!319729))

(declare-fun m!319731 () Bool)

(assert (=> b!309782 m!319731))

(declare-fun m!319733 () Bool)

(assert (=> b!309781 m!319733))

(assert (=> b!309781 m!319733))

(declare-fun m!319735 () Bool)

(assert (=> b!309781 m!319735))

(push 1)

