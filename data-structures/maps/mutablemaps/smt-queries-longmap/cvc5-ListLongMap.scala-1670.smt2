; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30912 () Bool)

(assert start!30912)

(declare-fun b!309954 () Bool)

(declare-fun res!166566 () Bool)

(declare-fun e!193569 () Bool)

(assert (=> b!309954 (=> (not res!166566) (not e!193569))))

(declare-datatypes ((array!15812 0))(
  ( (array!15813 (arr!7486 (Array (_ BitVec 32) (_ BitVec 64))) (size!7838 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15812)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309954 (= res!166566 (and (= (select (arr!7486 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7838 a!3293))))))

(declare-fun b!309955 () Bool)

(declare-fun e!193566 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!309955 (= e!193566 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun e!193570 () Bool)

(assert (=> b!309955 e!193570))

(declare-fun res!166574 () Bool)

(assert (=> b!309955 (=> (not res!166574) (not e!193570))))

(declare-fun lt!151803 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2637 0))(
  ( (MissingZero!2637 (index!12724 (_ BitVec 32))) (Found!2637 (index!12725 (_ BitVec 32))) (Intermediate!2637 (undefined!3449 Bool) (index!12726 (_ BitVec 32)) (x!30925 (_ BitVec 32))) (Undefined!2637) (MissingVacant!2637 (index!12727 (_ BitVec 32))) )
))
(declare-fun lt!151804 () SeekEntryResult!2637)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15812 (_ BitVec 32)) SeekEntryResult!2637)

(assert (=> b!309955 (= res!166574 (= lt!151804 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151803 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309955 (= lt!151803 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!309956 () Bool)

(declare-fun lt!151805 () array!15812)

(assert (=> b!309956 (= e!193570 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151805 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151803 k!2441 lt!151805 mask!3709)))))

(assert (=> b!309956 (= lt!151805 (array!15813 (store (arr!7486 a!3293) i!1240 k!2441) (size!7838 a!3293)))))

(declare-fun res!166567 () Bool)

(declare-fun e!193568 () Bool)

(assert (=> start!30912 (=> (not res!166567) (not e!193568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30912 (= res!166567 (validMask!0 mask!3709))))

(assert (=> start!30912 e!193568))

(declare-fun array_inv!5440 (array!15812) Bool)

(assert (=> start!30912 (array_inv!5440 a!3293)))

(assert (=> start!30912 true))

(declare-fun b!309957 () Bool)

(declare-fun res!166572 () Bool)

(assert (=> b!309957 (=> (not res!166572) (not e!193568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15812 (_ BitVec 32)) Bool)

(assert (=> b!309957 (= res!166572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309958 () Bool)

(declare-fun res!166575 () Bool)

(assert (=> b!309958 (=> (not res!166575) (not e!193568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309958 (= res!166575 (validKeyInArray!0 k!2441))))

(declare-fun b!309959 () Bool)

(declare-fun res!166571 () Bool)

(assert (=> b!309959 (=> (not res!166571) (not e!193568))))

(declare-fun arrayContainsKey!0 (array!15812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309959 (= res!166571 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309960 () Bool)

(assert (=> b!309960 (= e!193569 e!193566)))

(declare-fun res!166568 () Bool)

(assert (=> b!309960 (=> (not res!166568) (not e!193566))))

(declare-fun lt!151802 () SeekEntryResult!2637)

(assert (=> b!309960 (= res!166568 (and (= lt!151804 lt!151802) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7486 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309960 (= lt!151804 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309961 () Bool)

(declare-fun res!166570 () Bool)

(assert (=> b!309961 (=> (not res!166570) (not e!193568))))

(assert (=> b!309961 (= res!166570 (and (= (size!7838 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7838 a!3293))))))

(declare-fun b!309962 () Bool)

(declare-fun res!166569 () Bool)

(assert (=> b!309962 (=> (not res!166569) (not e!193568))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15812 (_ BitVec 32)) SeekEntryResult!2637)

(assert (=> b!309962 (= res!166569 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2637 i!1240)))))

(declare-fun b!309963 () Bool)

(assert (=> b!309963 (= e!193568 e!193569)))

(declare-fun res!166573 () Bool)

(assert (=> b!309963 (=> (not res!166573) (not e!193569))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309963 (= res!166573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151802))))

(assert (=> b!309963 (= lt!151802 (Intermediate!2637 false resIndex!52 resX!52))))

(assert (= (and start!30912 res!166567) b!309961))

(assert (= (and b!309961 res!166570) b!309958))

(assert (= (and b!309958 res!166575) b!309959))

(assert (= (and b!309959 res!166571) b!309962))

(assert (= (and b!309962 res!166569) b!309957))

(assert (= (and b!309957 res!166572) b!309963))

(assert (= (and b!309963 res!166573) b!309954))

(assert (= (and b!309954 res!166566) b!309960))

(assert (= (and b!309960 res!166568) b!309955))

(assert (= (and b!309955 res!166574) b!309956))

(declare-fun m!319885 () Bool)

(assert (=> b!309955 m!319885))

(declare-fun m!319887 () Bool)

(assert (=> b!309955 m!319887))

(declare-fun m!319889 () Bool)

(assert (=> b!309960 m!319889))

(declare-fun m!319891 () Bool)

(assert (=> b!309960 m!319891))

(declare-fun m!319893 () Bool)

(assert (=> b!309954 m!319893))

(declare-fun m!319895 () Bool)

(assert (=> b!309957 m!319895))

(declare-fun m!319897 () Bool)

(assert (=> b!309963 m!319897))

(assert (=> b!309963 m!319897))

(declare-fun m!319899 () Bool)

(assert (=> b!309963 m!319899))

(declare-fun m!319901 () Bool)

(assert (=> b!309959 m!319901))

(declare-fun m!319903 () Bool)

(assert (=> start!30912 m!319903))

(declare-fun m!319905 () Bool)

(assert (=> start!30912 m!319905))

(declare-fun m!319907 () Bool)

(assert (=> b!309956 m!319907))

(declare-fun m!319909 () Bool)

(assert (=> b!309956 m!319909))

(declare-fun m!319911 () Bool)

(assert (=> b!309956 m!319911))

(declare-fun m!319913 () Bool)

(assert (=> b!309962 m!319913))

(declare-fun m!319915 () Bool)

(assert (=> b!309958 m!319915))

(push 1)

