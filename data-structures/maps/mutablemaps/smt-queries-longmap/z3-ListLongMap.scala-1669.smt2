; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30908 () Bool)

(assert start!30908)

(declare-fun b!309894 () Bool)

(declare-fun e!193536 () Bool)

(declare-fun e!193540 () Bool)

(assert (=> b!309894 (= e!193536 e!193540)))

(declare-fun res!166514 () Bool)

(assert (=> b!309894 (=> (not res!166514) (not e!193540))))

(declare-datatypes ((array!15808 0))(
  ( (array!15809 (arr!7484 (Array (_ BitVec 32) (_ BitVec 64))) (size!7836 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15808)

(declare-datatypes ((SeekEntryResult!2635 0))(
  ( (MissingZero!2635 (index!12716 (_ BitVec 32))) (Found!2635 (index!12717 (_ BitVec 32))) (Intermediate!2635 (undefined!3447 Bool) (index!12718 (_ BitVec 32)) (x!30915 (_ BitVec 32))) (Undefined!2635) (MissingVacant!2635 (index!12719 (_ BitVec 32))) )
))
(declare-fun lt!151779 () SeekEntryResult!2635)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!151781 () SeekEntryResult!2635)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309894 (= res!166514 (and (= lt!151779 lt!151781) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7484 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15808 (_ BitVec 32)) SeekEntryResult!2635)

(assert (=> b!309894 (= lt!151779 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!166513 () Bool)

(declare-fun e!193537 () Bool)

(assert (=> start!30908 (=> (not res!166513) (not e!193537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30908 (= res!166513 (validMask!0 mask!3709))))

(assert (=> start!30908 e!193537))

(declare-fun array_inv!5438 (array!15808) Bool)

(assert (=> start!30908 (array_inv!5438 a!3293)))

(assert (=> start!30908 true))

(declare-fun b!309895 () Bool)

(assert (=> b!309895 (= e!193537 e!193536)))

(declare-fun res!166507 () Bool)

(assert (=> b!309895 (=> (not res!166507) (not e!193536))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309895 (= res!166507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151781))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!309895 (= lt!151781 (Intermediate!2635 false resIndex!52 resX!52))))

(declare-fun b!309896 () Bool)

(declare-fun res!166512 () Bool)

(assert (=> b!309896 (=> (not res!166512) (not e!193537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15808 (_ BitVec 32)) Bool)

(assert (=> b!309896 (= res!166512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309897 () Bool)

(declare-fun res!166510 () Bool)

(assert (=> b!309897 (=> (not res!166510) (not e!193537))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309897 (= res!166510 (and (= (size!7836 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7836 a!3293))))))

(declare-fun b!309898 () Bool)

(declare-fun res!166508 () Bool)

(assert (=> b!309898 (=> (not res!166508) (not e!193537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309898 (= res!166508 (validKeyInArray!0 k0!2441))))

(declare-fun lt!151778 () array!15808)

(declare-fun lt!151780 () (_ BitVec 32))

(declare-fun e!193538 () Bool)

(declare-fun b!309899 () Bool)

(assert (=> b!309899 (= e!193538 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!151778 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151780 k0!2441 lt!151778 mask!3709)))))

(assert (=> b!309899 (= lt!151778 (array!15809 (store (arr!7484 a!3293) i!1240 k0!2441) (size!7836 a!3293)))))

(declare-fun b!309900 () Bool)

(assert (=> b!309900 (= e!193540 (not true))))

(assert (=> b!309900 e!193538))

(declare-fun res!166515 () Bool)

(assert (=> b!309900 (=> (not res!166515) (not e!193538))))

(assert (=> b!309900 (= res!166515 (= lt!151779 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151780 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309900 (= lt!151780 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!309901 () Bool)

(declare-fun res!166506 () Bool)

(assert (=> b!309901 (=> (not res!166506) (not e!193536))))

(assert (=> b!309901 (= res!166506 (and (= (select (arr!7484 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7836 a!3293))))))

(declare-fun b!309902 () Bool)

(declare-fun res!166509 () Bool)

(assert (=> b!309902 (=> (not res!166509) (not e!193537))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15808 (_ BitVec 32)) SeekEntryResult!2635)

(assert (=> b!309902 (= res!166509 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2635 i!1240)))))

(declare-fun b!309903 () Bool)

(declare-fun res!166511 () Bool)

(assert (=> b!309903 (=> (not res!166511) (not e!193537))))

(declare-fun arrayContainsKey!0 (array!15808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309903 (= res!166511 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30908 res!166513) b!309897))

(assert (= (and b!309897 res!166510) b!309898))

(assert (= (and b!309898 res!166508) b!309903))

(assert (= (and b!309903 res!166511) b!309902))

(assert (= (and b!309902 res!166509) b!309896))

(assert (= (and b!309896 res!166512) b!309895))

(assert (= (and b!309895 res!166507) b!309901))

(assert (= (and b!309901 res!166506) b!309894))

(assert (= (and b!309894 res!166514) b!309900))

(assert (= (and b!309900 res!166515) b!309899))

(declare-fun m!319821 () Bool)

(assert (=> start!30908 m!319821))

(declare-fun m!319823 () Bool)

(assert (=> start!30908 m!319823))

(declare-fun m!319825 () Bool)

(assert (=> b!309895 m!319825))

(assert (=> b!309895 m!319825))

(declare-fun m!319827 () Bool)

(assert (=> b!309895 m!319827))

(declare-fun m!319829 () Bool)

(assert (=> b!309902 m!319829))

(declare-fun m!319831 () Bool)

(assert (=> b!309899 m!319831))

(declare-fun m!319833 () Bool)

(assert (=> b!309899 m!319833))

(declare-fun m!319835 () Bool)

(assert (=> b!309899 m!319835))

(declare-fun m!319837 () Bool)

(assert (=> b!309901 m!319837))

(declare-fun m!319839 () Bool)

(assert (=> b!309896 m!319839))

(declare-fun m!319841 () Bool)

(assert (=> b!309898 m!319841))

(declare-fun m!319843 () Bool)

(assert (=> b!309900 m!319843))

(declare-fun m!319845 () Bool)

(assert (=> b!309900 m!319845))

(declare-fun m!319847 () Bool)

(assert (=> b!309894 m!319847))

(declare-fun m!319849 () Bool)

(assert (=> b!309894 m!319849))

(declare-fun m!319851 () Bool)

(assert (=> b!309903 m!319851))

(check-sat (not b!309894) (not b!309896) (not start!30908) (not b!309900) (not b!309898) (not b!309895) (not b!309902) (not b!309899) (not b!309903))
(check-sat)
