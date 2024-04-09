; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30798 () Bool)

(assert start!30798)

(declare-fun b!308890 () Bool)

(declare-fun res!165667 () Bool)

(declare-fun e!193049 () Bool)

(assert (=> b!308890 (=> (not res!165667) (not e!193049))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308890 (= res!165667 (validKeyInArray!0 k!2441))))

(declare-fun b!308891 () Bool)

(declare-fun res!165664 () Bool)

(assert (=> b!308891 (=> (not res!165664) (not e!193049))))

(declare-datatypes ((array!15749 0))(
  ( (array!15750 (arr!7456 (Array (_ BitVec 32) (_ BitVec 64))) (size!7808 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15749)

(declare-fun arrayContainsKey!0 (array!15749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308891 (= res!165664 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!165661 () Bool)

(assert (=> start!30798 (=> (not res!165661) (not e!193049))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30798 (= res!165661 (validMask!0 mask!3709))))

(assert (=> start!30798 e!193049))

(declare-fun array_inv!5410 (array!15749) Bool)

(assert (=> start!30798 (array_inv!5410 a!3293)))

(assert (=> start!30798 true))

(declare-fun b!308892 () Bool)

(declare-fun e!193051 () Bool)

(assert (=> b!308892 (= e!193049 e!193051)))

(declare-fun res!165662 () Bool)

(assert (=> b!308892 (=> (not res!165662) (not e!193051))))

(declare-datatypes ((SeekEntryResult!2607 0))(
  ( (MissingZero!2607 (index!12604 (_ BitVec 32))) (Found!2607 (index!12605 (_ BitVec 32))) (Intermediate!2607 (undefined!3419 Bool) (index!12606 (_ BitVec 32)) (x!30806 (_ BitVec 32))) (Undefined!2607) (MissingVacant!2607 (index!12607 (_ BitVec 32))) )
))
(declare-fun lt!151472 () SeekEntryResult!2607)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15749 (_ BitVec 32)) SeekEntryResult!2607)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308892 (= res!165662 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151472))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308892 (= lt!151472 (Intermediate!2607 false resIndex!52 resX!52))))

(declare-fun b!308893 () Bool)

(declare-fun e!193050 () Bool)

(assert (=> b!308893 (= e!193051 e!193050)))

(declare-fun res!165668 () Bool)

(assert (=> b!308893 (=> (not res!165668) (not e!193050))))

(declare-fun lt!151471 () SeekEntryResult!2607)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!308893 (= res!165668 (and (= lt!151471 lt!151472) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7456 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308893 (= lt!151471 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308894 () Bool)

(declare-fun res!165665 () Bool)

(assert (=> b!308894 (=> (not res!165665) (not e!193049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15749 (_ BitVec 32)) Bool)

(assert (=> b!308894 (= res!165665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308895 () Bool)

(assert (=> b!308895 (= e!193050 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308895 (= lt!151471 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308896 () Bool)

(declare-fun res!165663 () Bool)

(assert (=> b!308896 (=> (not res!165663) (not e!193049))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308896 (= res!165663 (and (= (size!7808 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7808 a!3293))))))

(declare-fun b!308897 () Bool)

(declare-fun res!165666 () Bool)

(assert (=> b!308897 (=> (not res!165666) (not e!193049))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15749 (_ BitVec 32)) SeekEntryResult!2607)

(assert (=> b!308897 (= res!165666 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2607 i!1240)))))

(declare-fun b!308898 () Bool)

(declare-fun res!165669 () Bool)

(assert (=> b!308898 (=> (not res!165669) (not e!193051))))

(assert (=> b!308898 (= res!165669 (and (= (select (arr!7456 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7808 a!3293))))))

(assert (= (and start!30798 res!165661) b!308896))

(assert (= (and b!308896 res!165663) b!308890))

(assert (= (and b!308890 res!165667) b!308891))

(assert (= (and b!308891 res!165664) b!308897))

(assert (= (and b!308897 res!165666) b!308894))

(assert (= (and b!308894 res!165665) b!308892))

(assert (= (and b!308892 res!165662) b!308898))

(assert (= (and b!308898 res!165669) b!308893))

(assert (= (and b!308893 res!165668) b!308895))

(declare-fun m!318949 () Bool)

(assert (=> b!308895 m!318949))

(assert (=> b!308895 m!318949))

(declare-fun m!318951 () Bool)

(assert (=> b!308895 m!318951))

(declare-fun m!318953 () Bool)

(assert (=> b!308893 m!318953))

(declare-fun m!318955 () Bool)

(assert (=> b!308893 m!318955))

(declare-fun m!318957 () Bool)

(assert (=> b!308897 m!318957))

(declare-fun m!318959 () Bool)

(assert (=> start!30798 m!318959))

(declare-fun m!318961 () Bool)

(assert (=> start!30798 m!318961))

(declare-fun m!318963 () Bool)

(assert (=> b!308898 m!318963))

(declare-fun m!318965 () Bool)

(assert (=> b!308891 m!318965))

(declare-fun m!318967 () Bool)

(assert (=> b!308892 m!318967))

(assert (=> b!308892 m!318967))

(declare-fun m!318969 () Bool)

(assert (=> b!308892 m!318969))

(declare-fun m!318971 () Bool)

(assert (=> b!308890 m!318971))

(declare-fun m!318973 () Bool)

(assert (=> b!308894 m!318973))

(push 1)

(assert (not b!308893))

(assert (not b!308894))

(assert (not b!308890))

