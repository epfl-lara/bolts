; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30614 () Bool)

(assert start!30614)

(declare-fun b!306892 () Bool)

(declare-fun res!163811 () Bool)

(declare-fun e!192295 () Bool)

(assert (=> b!306892 (=> (not res!163811) (not e!192295))))

(declare-datatypes ((array!15616 0))(
  ( (array!15617 (arr!7391 (Array (_ BitVec 32) (_ BitVec 64))) (size!7743 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15616)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15616 (_ BitVec 32)) Bool)

(assert (=> b!306892 (= res!163811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306893 () Bool)

(declare-fun res!163806 () Bool)

(assert (=> b!306893 (=> (not res!163806) (not e!192295))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306893 (= res!163806 (validKeyInArray!0 k0!2441))))

(declare-fun b!306894 () Bool)

(declare-fun res!163812 () Bool)

(assert (=> b!306894 (=> (not res!163812) (not e!192295))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2542 0))(
  ( (MissingZero!2542 (index!12344 (_ BitVec 32))) (Found!2542 (index!12345 (_ BitVec 32))) (Intermediate!2542 (undefined!3354 Bool) (index!12346 (_ BitVec 32)) (x!30556 (_ BitVec 32))) (Undefined!2542) (MissingVacant!2542 (index!12347 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15616 (_ BitVec 32)) SeekEntryResult!2542)

(assert (=> b!306894 (= res!163812 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2542 i!1240)))))

(declare-fun b!306895 () Bool)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun e!192294 () Bool)

(assert (=> b!306895 (= e!192294 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7391 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!306896 () Bool)

(declare-fun res!163805 () Bool)

(assert (=> b!306896 (=> (not res!163805) (not e!192294))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306896 (= res!163805 (and (= (select (arr!7391 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7743 a!3293))))))

(declare-fun res!163810 () Bool)

(assert (=> start!30614 (=> (not res!163810) (not e!192295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30614 (= res!163810 (validMask!0 mask!3709))))

(assert (=> start!30614 e!192295))

(declare-fun array_inv!5345 (array!15616) Bool)

(assert (=> start!30614 (array_inv!5345 a!3293)))

(assert (=> start!30614 true))

(declare-fun b!306897 () Bool)

(assert (=> b!306897 (= e!192295 e!192294)))

(declare-fun res!163807 () Bool)

(assert (=> b!306897 (=> (not res!163807) (not e!192294))))

(declare-fun lt!151052 () SeekEntryResult!2542)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15616 (_ BitVec 32)) SeekEntryResult!2542)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306897 (= res!163807 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151052))))

(assert (=> b!306897 (= lt!151052 (Intermediate!2542 false resIndex!52 resX!52))))

(declare-fun b!306898 () Bool)

(declare-fun res!163809 () Bool)

(assert (=> b!306898 (=> (not res!163809) (not e!192295))))

(assert (=> b!306898 (= res!163809 (and (= (size!7743 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7743 a!3293))))))

(declare-fun b!306899 () Bool)

(declare-fun res!163804 () Bool)

(assert (=> b!306899 (=> (not res!163804) (not e!192294))))

(assert (=> b!306899 (= res!163804 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151052))))

(declare-fun b!306900 () Bool)

(declare-fun res!163808 () Bool)

(assert (=> b!306900 (=> (not res!163808) (not e!192295))))

(declare-fun arrayContainsKey!0 (array!15616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306900 (= res!163808 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30614 res!163810) b!306898))

(assert (= (and b!306898 res!163809) b!306893))

(assert (= (and b!306893 res!163806) b!306900))

(assert (= (and b!306900 res!163808) b!306894))

(assert (= (and b!306894 res!163812) b!306892))

(assert (= (and b!306892 res!163811) b!306897))

(assert (= (and b!306897 res!163807) b!306896))

(assert (= (and b!306896 res!163805) b!306899))

(assert (= (and b!306899 res!163804) b!306895))

(declare-fun m!317303 () Bool)

(assert (=> b!306899 m!317303))

(declare-fun m!317305 () Bool)

(assert (=> b!306893 m!317305))

(declare-fun m!317307 () Bool)

(assert (=> b!306896 m!317307))

(declare-fun m!317309 () Bool)

(assert (=> b!306897 m!317309))

(assert (=> b!306897 m!317309))

(declare-fun m!317311 () Bool)

(assert (=> b!306897 m!317311))

(declare-fun m!317313 () Bool)

(assert (=> b!306900 m!317313))

(declare-fun m!317315 () Bool)

(assert (=> b!306895 m!317315))

(declare-fun m!317317 () Bool)

(assert (=> b!306892 m!317317))

(declare-fun m!317319 () Bool)

(assert (=> b!306894 m!317319))

(declare-fun m!317321 () Bool)

(assert (=> start!30614 m!317321))

(declare-fun m!317323 () Bool)

(assert (=> start!30614 m!317323))

(check-sat (not start!30614) (not b!306892) (not b!306899) (not b!306894) (not b!306893) (not b!306897) (not b!306900))
(check-sat)
