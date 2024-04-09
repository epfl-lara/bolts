; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31834 () Bool)

(assert start!31834)

(declare-fun b!317889 () Bool)

(declare-fun e!197581 () Bool)

(declare-fun e!197582 () Bool)

(assert (=> b!317889 (= e!197581 e!197582)))

(declare-fun res!172635 () Bool)

(assert (=> b!317889 (=> (not res!172635) (not e!197582))))

(declare-datatypes ((array!16203 0))(
  ( (array!16204 (arr!7665 (Array (_ BitVec 32) (_ BitVec 64))) (size!8017 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16203)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2816 0))(
  ( (MissingZero!2816 (index!13440 (_ BitVec 32))) (Found!2816 (index!13441 (_ BitVec 32))) (Intermediate!2816 (undefined!3628 Bool) (index!13442 (_ BitVec 32)) (x!31660 (_ BitVec 32))) (Undefined!2816) (MissingVacant!2816 (index!13443 (_ BitVec 32))) )
))
(declare-fun lt!155171 () SeekEntryResult!2816)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16203 (_ BitVec 32)) SeekEntryResult!2816)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317889 (= res!172635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155171))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317889 (= lt!155171 (Intermediate!2816 false resIndex!52 resX!52))))

(declare-fun lt!155172 () (_ BitVec 32))

(declare-fun b!317890 () Bool)

(declare-fun lt!155173 () array!16203)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun e!197580 () Bool)

(assert (=> b!317890 (= e!197580 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155173 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155172 k!2441 lt!155173 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317890 (= lt!155173 (array!16204 (store (arr!7665 a!3293) i!1240 k!2441) (size!8017 a!3293)))))

(declare-fun b!317891 () Bool)

(declare-fun e!197584 () Bool)

(assert (=> b!317891 (= e!197582 e!197584)))

(declare-fun res!172629 () Bool)

(assert (=> b!317891 (=> (not res!172629) (not e!197584))))

(declare-fun lt!155174 () SeekEntryResult!2816)

(assert (=> b!317891 (= res!172629 (and (= lt!155174 lt!155171) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7665 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317891 (= lt!155174 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317892 () Bool)

(assert (=> b!317892 (= e!197584 (not true))))

(assert (=> b!317892 e!197580))

(declare-fun res!172628 () Bool)

(assert (=> b!317892 (=> (not res!172628) (not e!197580))))

(assert (=> b!317892 (= res!172628 (= lt!155174 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155172 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317892 (= lt!155172 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317893 () Bool)

(declare-fun res!172630 () Bool)

(assert (=> b!317893 (=> (not res!172630) (not e!197581))))

(declare-fun arrayContainsKey!0 (array!16203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317893 (= res!172630 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317895 () Bool)

(declare-fun res!172626 () Bool)

(assert (=> b!317895 (=> (not res!172626) (not e!197581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16203 (_ BitVec 32)) Bool)

(assert (=> b!317895 (= res!172626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317896 () Bool)

(declare-fun res!172631 () Bool)

(assert (=> b!317896 (=> (not res!172631) (not e!197582))))

(assert (=> b!317896 (= res!172631 (and (= (select (arr!7665 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8017 a!3293))))))

(declare-fun b!317897 () Bool)

(declare-fun res!172632 () Bool)

(assert (=> b!317897 (=> (not res!172632) (not e!197581))))

(assert (=> b!317897 (= res!172632 (and (= (size!8017 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8017 a!3293))))))

(declare-fun b!317898 () Bool)

(declare-fun res!172633 () Bool)

(assert (=> b!317898 (=> (not res!172633) (not e!197581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317898 (= res!172633 (validKeyInArray!0 k!2441))))

(declare-fun res!172634 () Bool)

(assert (=> start!31834 (=> (not res!172634) (not e!197581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31834 (= res!172634 (validMask!0 mask!3709))))

(assert (=> start!31834 e!197581))

(declare-fun array_inv!5619 (array!16203) Bool)

(assert (=> start!31834 (array_inv!5619 a!3293)))

(assert (=> start!31834 true))

(declare-fun b!317894 () Bool)

(declare-fun res!172627 () Bool)

(assert (=> b!317894 (=> (not res!172627) (not e!197581))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16203 (_ BitVec 32)) SeekEntryResult!2816)

(assert (=> b!317894 (= res!172627 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2816 i!1240)))))

(assert (= (and start!31834 res!172634) b!317897))

(assert (= (and b!317897 res!172632) b!317898))

(assert (= (and b!317898 res!172633) b!317893))

(assert (= (and b!317893 res!172630) b!317894))

(assert (= (and b!317894 res!172627) b!317895))

(assert (= (and b!317895 res!172626) b!317889))

(assert (= (and b!317889 res!172635) b!317896))

(assert (= (and b!317896 res!172631) b!317891))

(assert (= (and b!317891 res!172629) b!317892))

(assert (= (and b!317892 res!172628) b!317890))

(declare-fun m!326609 () Bool)

(assert (=> b!317890 m!326609))

(declare-fun m!326611 () Bool)

(assert (=> b!317890 m!326611))

(declare-fun m!326613 () Bool)

(assert (=> b!317890 m!326613))

(declare-fun m!326615 () Bool)

(assert (=> b!317895 m!326615))

(declare-fun m!326617 () Bool)

(assert (=> b!317892 m!326617))

(declare-fun m!326619 () Bool)

(assert (=> b!317892 m!326619))

(declare-fun m!326621 () Bool)

(assert (=> b!317896 m!326621))

(declare-fun m!326623 () Bool)

(assert (=> b!317898 m!326623))

(declare-fun m!326625 () Bool)

(assert (=> start!31834 m!326625))

(declare-fun m!326627 () Bool)

(assert (=> start!31834 m!326627))

(declare-fun m!326629 () Bool)

(assert (=> b!317891 m!326629))

(declare-fun m!326631 () Bool)

(assert (=> b!317891 m!326631))

(declare-fun m!326633 () Bool)

(assert (=> b!317894 m!326633))

(declare-fun m!326635 () Bool)

(assert (=> b!317889 m!326635))

(assert (=> b!317889 m!326635))

(declare-fun m!326637 () Bool)

(assert (=> b!317889 m!326637))

(declare-fun m!326639 () Bool)

(assert (=> b!317893 m!326639))

(push 1)

(assert (not b!317893))

(assert (not b!317895))

(assert (not start!31834))

(assert (not b!317898))

(assert (not b!317894))

(assert (not b!317889))

(assert (not b!317890))

(assert (not b!317891))

(assert (not b!317892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

