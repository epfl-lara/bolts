; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30956 () Bool)

(assert start!30956)

(declare-fun res!167229 () Bool)

(declare-fun e!193897 () Bool)

(assert (=> start!30956 (=> (not res!167229) (not e!193897))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30956 (= res!167229 (validMask!0 mask!3709))))

(assert (=> start!30956 e!193897))

(declare-datatypes ((array!15856 0))(
  ( (array!15857 (arr!7508 (Array (_ BitVec 32) (_ BitVec 64))) (size!7860 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15856)

(declare-fun array_inv!5462 (array!15856) Bool)

(assert (=> start!30956 (array_inv!5462 a!3293)))

(assert (=> start!30956 true))

(declare-fun b!310614 () Bool)

(declare-fun res!167231 () Bool)

(assert (=> b!310614 (=> (not res!167231) (not e!193897))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310614 (= res!167231 (and (= (size!7860 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7860 a!3293))))))

(declare-fun e!193900 () Bool)

(declare-fun lt!152067 () array!15856)

(declare-fun lt!152066 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun b!310615 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2659 0))(
  ( (MissingZero!2659 (index!12812 (_ BitVec 32))) (Found!2659 (index!12813 (_ BitVec 32))) (Intermediate!2659 (undefined!3471 Bool) (index!12814 (_ BitVec 32)) (x!31003 (_ BitVec 32))) (Undefined!2659) (MissingVacant!2659 (index!12815 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15856 (_ BitVec 32)) SeekEntryResult!2659)

(assert (=> b!310615 (= e!193900 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152067 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152066 k0!2441 lt!152067 mask!3709)))))

(assert (=> b!310615 (= lt!152067 (array!15857 (store (arr!7508 a!3293) i!1240 k0!2441) (size!7860 a!3293)))))

(declare-fun b!310616 () Bool)

(declare-fun res!167232 () Bool)

(assert (=> b!310616 (=> (not res!167232) (not e!193897))))

(declare-fun arrayContainsKey!0 (array!15856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310616 (= res!167232 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310617 () Bool)

(declare-fun res!167227 () Bool)

(declare-fun e!193898 () Bool)

(assert (=> b!310617 (=> (not res!167227) (not e!193898))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310617 (= res!167227 (and (= (select (arr!7508 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7860 a!3293))))))

(declare-fun b!310618 () Bool)

(declare-fun res!167234 () Bool)

(assert (=> b!310618 (=> (not res!167234) (not e!193897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310618 (= res!167234 (validKeyInArray!0 k0!2441))))

(declare-fun b!310619 () Bool)

(declare-fun e!193899 () Bool)

(assert (=> b!310619 (= e!193899 (not true))))

(assert (=> b!310619 e!193900))

(declare-fun res!167226 () Bool)

(assert (=> b!310619 (=> (not res!167226) (not e!193900))))

(declare-fun lt!152069 () SeekEntryResult!2659)

(assert (=> b!310619 (= res!167226 (= lt!152069 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152066 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310619 (= lt!152066 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310620 () Bool)

(declare-fun res!167228 () Bool)

(assert (=> b!310620 (=> (not res!167228) (not e!193897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15856 (_ BitVec 32)) Bool)

(assert (=> b!310620 (= res!167228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310621 () Bool)

(assert (=> b!310621 (= e!193898 e!193899)))

(declare-fun res!167235 () Bool)

(assert (=> b!310621 (=> (not res!167235) (not e!193899))))

(declare-fun lt!152068 () SeekEntryResult!2659)

(assert (=> b!310621 (= res!167235 (and (= lt!152069 lt!152068) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7508 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310621 (= lt!152069 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310622 () Bool)

(declare-fun res!167233 () Bool)

(assert (=> b!310622 (=> (not res!167233) (not e!193897))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15856 (_ BitVec 32)) SeekEntryResult!2659)

(assert (=> b!310622 (= res!167233 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2659 i!1240)))))

(declare-fun b!310623 () Bool)

(assert (=> b!310623 (= e!193897 e!193898)))

(declare-fun res!167230 () Bool)

(assert (=> b!310623 (=> (not res!167230) (not e!193898))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310623 (= res!167230 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152068))))

(assert (=> b!310623 (= lt!152068 (Intermediate!2659 false resIndex!52 resX!52))))

(assert (= (and start!30956 res!167229) b!310614))

(assert (= (and b!310614 res!167231) b!310618))

(assert (= (and b!310618 res!167234) b!310616))

(assert (= (and b!310616 res!167232) b!310622))

(assert (= (and b!310622 res!167233) b!310620))

(assert (= (and b!310620 res!167228) b!310623))

(assert (= (and b!310623 res!167230) b!310617))

(assert (= (and b!310617 res!167227) b!310621))

(assert (= (and b!310621 res!167235) b!310619))

(assert (= (and b!310619 res!167226) b!310615))

(declare-fun m!320589 () Bool)

(assert (=> b!310621 m!320589))

(declare-fun m!320591 () Bool)

(assert (=> b!310621 m!320591))

(declare-fun m!320593 () Bool)

(assert (=> b!310619 m!320593))

(declare-fun m!320595 () Bool)

(assert (=> b!310619 m!320595))

(declare-fun m!320597 () Bool)

(assert (=> b!310620 m!320597))

(declare-fun m!320599 () Bool)

(assert (=> start!30956 m!320599))

(declare-fun m!320601 () Bool)

(assert (=> start!30956 m!320601))

(declare-fun m!320603 () Bool)

(assert (=> b!310615 m!320603))

(declare-fun m!320605 () Bool)

(assert (=> b!310615 m!320605))

(declare-fun m!320607 () Bool)

(assert (=> b!310615 m!320607))

(declare-fun m!320609 () Bool)

(assert (=> b!310618 m!320609))

(declare-fun m!320611 () Bool)

(assert (=> b!310623 m!320611))

(assert (=> b!310623 m!320611))

(declare-fun m!320613 () Bool)

(assert (=> b!310623 m!320613))

(declare-fun m!320615 () Bool)

(assert (=> b!310617 m!320615))

(declare-fun m!320617 () Bool)

(assert (=> b!310616 m!320617))

(declare-fun m!320619 () Bool)

(assert (=> b!310622 m!320619))

(check-sat (not b!310619) (not start!30956) (not b!310622) (not b!310616) (not b!310615) (not b!310623) (not b!310621) (not b!310618) (not b!310620))
(check-sat)
