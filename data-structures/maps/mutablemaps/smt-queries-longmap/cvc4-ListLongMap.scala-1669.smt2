; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30910 () Bool)

(assert start!30910)

(declare-fun b!309924 () Bool)

(declare-fun res!166536 () Bool)

(declare-fun e!193553 () Bool)

(assert (=> b!309924 (=> (not res!166536) (not e!193553))))

(declare-datatypes ((array!15810 0))(
  ( (array!15811 (arr!7485 (Array (_ BitVec 32) (_ BitVec 64))) (size!7837 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15810)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15810 (_ BitVec 32)) Bool)

(assert (=> b!309924 (= res!166536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309925 () Bool)

(declare-fun res!166537 () Bool)

(assert (=> b!309925 (=> (not res!166537) (not e!193553))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309925 (= res!166537 (and (= (size!7837 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7837 a!3293))))))

(declare-fun b!309926 () Bool)

(declare-fun res!166542 () Bool)

(assert (=> b!309926 (=> (not res!166542) (not e!193553))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309926 (= res!166542 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!166545 () Bool)

(assert (=> start!30910 (=> (not res!166545) (not e!193553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30910 (= res!166545 (validMask!0 mask!3709))))

(assert (=> start!30910 e!193553))

(declare-fun array_inv!5439 (array!15810) Bool)

(assert (=> start!30910 (array_inv!5439 a!3293)))

(assert (=> start!30910 true))

(declare-fun b!309927 () Bool)

(declare-fun e!193552 () Bool)

(declare-fun e!193555 () Bool)

(assert (=> b!309927 (= e!193552 e!193555)))

(declare-fun res!166539 () Bool)

(assert (=> b!309927 (=> (not res!166539) (not e!193555))))

(declare-datatypes ((SeekEntryResult!2636 0))(
  ( (MissingZero!2636 (index!12720 (_ BitVec 32))) (Found!2636 (index!12721 (_ BitVec 32))) (Intermediate!2636 (undefined!3448 Bool) (index!12722 (_ BitVec 32)) (x!30916 (_ BitVec 32))) (Undefined!2636) (MissingVacant!2636 (index!12723 (_ BitVec 32))) )
))
(declare-fun lt!151791 () SeekEntryResult!2636)

(declare-fun lt!151792 () SeekEntryResult!2636)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309927 (= res!166539 (and (= lt!151791 lt!151792) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7485 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15810 (_ BitVec 32)) SeekEntryResult!2636)

(assert (=> b!309927 (= lt!151791 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309928 () Bool)

(assert (=> b!309928 (= e!193553 e!193552)))

(declare-fun res!166540 () Bool)

(assert (=> b!309928 (=> (not res!166540) (not e!193552))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309928 (= res!166540 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151792))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!309928 (= lt!151792 (Intermediate!2636 false resIndex!52 resX!52))))

(declare-fun b!309929 () Bool)

(declare-fun res!166544 () Bool)

(assert (=> b!309929 (=> (not res!166544) (not e!193552))))

(assert (=> b!309929 (= res!166544 (and (= (select (arr!7485 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7837 a!3293))))))

(declare-fun lt!151793 () (_ BitVec 32))

(declare-fun b!309930 () Bool)

(declare-fun lt!151790 () array!15810)

(declare-fun e!193551 () Bool)

(assert (=> b!309930 (= e!193551 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151790 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151793 k!2441 lt!151790 mask!3709)))))

(assert (=> b!309930 (= lt!151790 (array!15811 (store (arr!7485 a!3293) i!1240 k!2441) (size!7837 a!3293)))))

(declare-fun b!309931 () Bool)

(declare-fun res!166541 () Bool)

(assert (=> b!309931 (=> (not res!166541) (not e!193553))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15810 (_ BitVec 32)) SeekEntryResult!2636)

(assert (=> b!309931 (= res!166541 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2636 i!1240)))))

(declare-fun b!309932 () Bool)

(declare-fun res!166538 () Bool)

(assert (=> b!309932 (=> (not res!166538) (not e!193553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309932 (= res!166538 (validKeyInArray!0 k!2441))))

(declare-fun b!309933 () Bool)

(assert (=> b!309933 (= e!193555 (not true))))

(assert (=> b!309933 e!193551))

(declare-fun res!166543 () Bool)

(assert (=> b!309933 (=> (not res!166543) (not e!193551))))

(assert (=> b!309933 (= res!166543 (= lt!151791 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151793 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309933 (= lt!151793 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30910 res!166545) b!309925))

(assert (= (and b!309925 res!166537) b!309932))

(assert (= (and b!309932 res!166538) b!309926))

(assert (= (and b!309926 res!166542) b!309931))

(assert (= (and b!309931 res!166541) b!309924))

(assert (= (and b!309924 res!166536) b!309928))

(assert (= (and b!309928 res!166540) b!309929))

(assert (= (and b!309929 res!166544) b!309927))

(assert (= (and b!309927 res!166539) b!309933))

(assert (= (and b!309933 res!166543) b!309930))

(declare-fun m!319853 () Bool)

(assert (=> b!309931 m!319853))

(declare-fun m!319855 () Bool)

(assert (=> b!309930 m!319855))

(declare-fun m!319857 () Bool)

(assert (=> b!309930 m!319857))

(declare-fun m!319859 () Bool)

(assert (=> b!309930 m!319859))

(declare-fun m!319861 () Bool)

(assert (=> b!309933 m!319861))

(declare-fun m!319863 () Bool)

(assert (=> b!309933 m!319863))

(declare-fun m!319865 () Bool)

(assert (=> b!309927 m!319865))

(declare-fun m!319867 () Bool)

(assert (=> b!309927 m!319867))

(declare-fun m!319869 () Bool)

(assert (=> b!309932 m!319869))

(declare-fun m!319871 () Bool)

(assert (=> start!30910 m!319871))

(declare-fun m!319873 () Bool)

(assert (=> start!30910 m!319873))

(declare-fun m!319875 () Bool)

(assert (=> b!309924 m!319875))

(declare-fun m!319877 () Bool)

(assert (=> b!309929 m!319877))

(declare-fun m!319879 () Bool)

(assert (=> b!309926 m!319879))

(declare-fun m!319881 () Bool)

(assert (=> b!309928 m!319881))

(assert (=> b!309928 m!319881))

(declare-fun m!319883 () Bool)

(assert (=> b!309928 m!319883))

(push 1)

(assert (not b!309928))

(assert (not b!309932))

(assert (not b!309924))

(assert (not b!309931))

(assert (not b!309927))

(assert (not b!309926))

(assert (not start!30910))

(assert (not b!309933))

(assert (not b!309930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

