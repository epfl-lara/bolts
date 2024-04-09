; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32500 () Bool)

(assert start!32500)

(declare-fun res!178126 () Bool)

(declare-fun e!200286 () Bool)

(assert (=> start!32500 (=> (not res!178126) (not e!200286))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32500 (= res!178126 (validMask!0 mask!3777))))

(assert (=> start!32500 e!200286))

(declare-datatypes ((array!16635 0))(
  ( (array!16636 (arr!7872 (Array (_ BitVec 32) (_ BitVec 64))) (size!8224 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16635)

(declare-fun array_inv!5826 (array!16635) Bool)

(assert (=> start!32500 (array_inv!5826 a!3305)))

(assert (=> start!32500 true))

(declare-fun b!324630 () Bool)

(declare-fun e!200285 () Bool)

(assert (=> b!324630 (= e!200285 false)))

(declare-fun lt!156842 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324630 (= lt!156842 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324631 () Bool)

(declare-fun res!178119 () Bool)

(assert (=> b!324631 (=> (not res!178119) (not e!200286))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324631 (= res!178119 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324632 () Bool)

(declare-fun res!178124 () Bool)

(assert (=> b!324632 (=> (not res!178124) (not e!200285))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324632 (= res!178124 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7872 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324633 () Bool)

(declare-fun res!178123 () Bool)

(assert (=> b!324633 (=> (not res!178123) (not e!200286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324633 (= res!178123 (validKeyInArray!0 k!2497))))

(declare-fun b!324634 () Bool)

(assert (=> b!324634 (= e!200286 e!200285)))

(declare-fun res!178128 () Bool)

(assert (=> b!324634 (=> (not res!178128) (not e!200285))))

(declare-datatypes ((SeekEntryResult!3014 0))(
  ( (MissingZero!3014 (index!14232 (_ BitVec 32))) (Found!3014 (index!14233 (_ BitVec 32))) (Intermediate!3014 (undefined!3826 Bool) (index!14234 (_ BitVec 32)) (x!32437 (_ BitVec 32))) (Undefined!3014) (MissingVacant!3014 (index!14235 (_ BitVec 32))) )
))
(declare-fun lt!156841 () SeekEntryResult!3014)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16635 (_ BitVec 32)) SeekEntryResult!3014)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324634 (= res!178128 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156841))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324634 (= lt!156841 (Intermediate!3014 false resIndex!58 resX!58))))

(declare-fun b!324635 () Bool)

(declare-fun res!178125 () Bool)

(assert (=> b!324635 (=> (not res!178125) (not e!200285))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324635 (= res!178125 (and (= (select (arr!7872 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8224 a!3305))))))

(declare-fun b!324636 () Bool)

(declare-fun res!178120 () Bool)

(assert (=> b!324636 (=> (not res!178120) (not e!200286))))

(assert (=> b!324636 (= res!178120 (and (= (size!8224 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8224 a!3305))))))

(declare-fun b!324637 () Bool)

(declare-fun res!178121 () Bool)

(assert (=> b!324637 (=> (not res!178121) (not e!200286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16635 (_ BitVec 32)) Bool)

(assert (=> b!324637 (= res!178121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324638 () Bool)

(declare-fun res!178122 () Bool)

(assert (=> b!324638 (=> (not res!178122) (not e!200286))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16635 (_ BitVec 32)) SeekEntryResult!3014)

(assert (=> b!324638 (= res!178122 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3014 i!1250)))))

(declare-fun b!324639 () Bool)

(declare-fun res!178127 () Bool)

(assert (=> b!324639 (=> (not res!178127) (not e!200285))))

(assert (=> b!324639 (= res!178127 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156841))))

(assert (= (and start!32500 res!178126) b!324636))

(assert (= (and b!324636 res!178120) b!324633))

(assert (= (and b!324633 res!178123) b!324631))

(assert (= (and b!324631 res!178119) b!324638))

(assert (= (and b!324638 res!178122) b!324637))

(assert (= (and b!324637 res!178121) b!324634))

(assert (= (and b!324634 res!178128) b!324635))

(assert (= (and b!324635 res!178125) b!324639))

(assert (= (and b!324639 res!178127) b!324632))

(assert (= (and b!324632 res!178124) b!324630))

(declare-fun m!331639 () Bool)

(assert (=> b!324639 m!331639))

(declare-fun m!331641 () Bool)

(assert (=> b!324632 m!331641))

(declare-fun m!331643 () Bool)

(assert (=> b!324631 m!331643))

(declare-fun m!331645 () Bool)

(assert (=> b!324638 m!331645))

(declare-fun m!331647 () Bool)

(assert (=> b!324635 m!331647))

(declare-fun m!331649 () Bool)

(assert (=> start!32500 m!331649))

(declare-fun m!331651 () Bool)

(assert (=> start!32500 m!331651))

(declare-fun m!331653 () Bool)

(assert (=> b!324633 m!331653))

(declare-fun m!331655 () Bool)

(assert (=> b!324634 m!331655))

(assert (=> b!324634 m!331655))

(declare-fun m!331657 () Bool)

(assert (=> b!324634 m!331657))

(declare-fun m!331659 () Bool)

(assert (=> b!324637 m!331659))

(declare-fun m!331661 () Bool)

(assert (=> b!324630 m!331661))

(push 1)

(assert (not b!324634))

(assert (not b!324639))

(assert (not b!324637))

(assert (not b!324630))

(assert (not b!324633))

(assert (not b!324631))

(assert (not b!324638))

