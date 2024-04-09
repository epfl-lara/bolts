; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31588 () Bool)

(assert start!31588)

(declare-fun b!315779 () Bool)

(assert (=> b!315779 false))

(declare-datatypes ((SeekEntryResult!2774 0))(
  ( (MissingZero!2774 (index!13272 (_ BitVec 32))) (Found!2774 (index!13273 (_ BitVec 32))) (Intermediate!2774 (undefined!3586 Bool) (index!13274 (_ BitVec 32)) (x!31479 (_ BitVec 32))) (Undefined!2774) (MissingVacant!2774 (index!13275 (_ BitVec 32))) )
))
(declare-fun lt!154381 () SeekEntryResult!2774)

(declare-datatypes ((array!16110 0))(
  ( (array!16111 (arr!7623 (Array (_ BitVec 32) (_ BitVec 64))) (size!7975 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16110)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16110 (_ BitVec 32)) SeekEntryResult!2774)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315779 (= lt!154381 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9740 0))(
  ( (Unit!9741) )
))
(declare-fun e!196483 () Unit!9740)

(declare-fun Unit!9742 () Unit!9740)

(assert (=> b!315779 (= e!196483 Unit!9742)))

(declare-fun b!315780 () Bool)

(declare-fun e!196485 () Bool)

(assert (=> b!315780 (= e!196485 (not (= (select (arr!7623 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!315780 (= index!1781 resIndex!52)))

(declare-fun lt!154382 () Unit!9740)

(declare-fun e!196482 () Unit!9740)

(assert (=> b!315780 (= lt!154382 e!196482)))

(declare-fun c!49946 () Bool)

(assert (=> b!315780 (= c!49946 (not (= resIndex!52 index!1781)))))

(declare-fun b!315781 () Bool)

(assert (=> b!315781 (= e!196482 e!196483)))

(declare-fun c!49945 () Bool)

(assert (=> b!315781 (= c!49945 (or (= (select (arr!7623 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7623 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315782 () Bool)

(declare-fun res!171123 () Bool)

(declare-fun e!196486 () Bool)

(assert (=> b!315782 (=> (not res!171123) (not e!196486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315782 (= res!171123 (validKeyInArray!0 k!2441))))

(declare-fun b!315783 () Bool)

(declare-fun res!171130 () Bool)

(assert (=> b!315783 (=> (not res!171130) (not e!196485))))

(declare-fun lt!154380 () SeekEntryResult!2774)

(assert (=> b!315783 (= res!171130 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154380))))

(declare-fun res!171125 () Bool)

(assert (=> start!31588 (=> (not res!171125) (not e!196486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31588 (= res!171125 (validMask!0 mask!3709))))

(assert (=> start!31588 e!196486))

(declare-fun array_inv!5577 (array!16110) Bool)

(assert (=> start!31588 (array_inv!5577 a!3293)))

(assert (=> start!31588 true))

(declare-fun b!315784 () Bool)

(declare-fun res!171128 () Bool)

(assert (=> b!315784 (=> (not res!171128) (not e!196486))))

(declare-fun arrayContainsKey!0 (array!16110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315784 (= res!171128 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315785 () Bool)

(assert (=> b!315785 false))

(declare-fun Unit!9743 () Unit!9740)

(assert (=> b!315785 (= e!196483 Unit!9743)))

(declare-fun b!315786 () Bool)

(declare-fun res!171126 () Bool)

(assert (=> b!315786 (=> (not res!171126) (not e!196486))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315786 (= res!171126 (and (= (size!7975 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7975 a!3293))))))

(declare-fun b!315787 () Bool)

(declare-fun res!171129 () Bool)

(assert (=> b!315787 (=> (not res!171129) (not e!196486))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16110 (_ BitVec 32)) SeekEntryResult!2774)

(assert (=> b!315787 (= res!171129 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2774 i!1240)))))

(declare-fun b!315788 () Bool)

(assert (=> b!315788 (= e!196486 e!196485)))

(declare-fun res!171131 () Bool)

(assert (=> b!315788 (=> (not res!171131) (not e!196485))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315788 (= res!171131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154380))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315788 (= lt!154380 (Intermediate!2774 false resIndex!52 resX!52))))

(declare-fun b!315789 () Bool)

(declare-fun res!171127 () Bool)

(assert (=> b!315789 (=> (not res!171127) (not e!196486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16110 (_ BitVec 32)) Bool)

(assert (=> b!315789 (= res!171127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315790 () Bool)

(declare-fun res!171132 () Bool)

(assert (=> b!315790 (=> (not res!171132) (not e!196485))))

(assert (=> b!315790 (= res!171132 (and (= (select (arr!7623 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7975 a!3293))))))

(declare-fun b!315791 () Bool)

(declare-fun Unit!9744 () Unit!9740)

(assert (=> b!315791 (= e!196482 Unit!9744)))

(declare-fun b!315792 () Bool)

(declare-fun res!171124 () Bool)

(assert (=> b!315792 (=> (not res!171124) (not e!196485))))

(assert (=> b!315792 (= res!171124 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7623 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(assert (= (and start!31588 res!171125) b!315786))

(assert (= (and b!315786 res!171126) b!315782))

(assert (= (and b!315782 res!171123) b!315784))

(assert (= (and b!315784 res!171128) b!315787))

(assert (= (and b!315787 res!171129) b!315789))

(assert (= (and b!315789 res!171127) b!315788))

(assert (= (and b!315788 res!171131) b!315790))

(assert (= (and b!315790 res!171132) b!315783))

(assert (= (and b!315783 res!171130) b!315792))

(assert (= (and b!315792 res!171124) b!315780))

(assert (= (and b!315780 c!49946) b!315781))

(assert (= (and b!315780 (not c!49946)) b!315791))

(assert (= (and b!315781 c!49945) b!315785))

(assert (= (and b!315781 (not c!49945)) b!315779))

(declare-fun m!324881 () Bool)

(assert (=> b!315790 m!324881))

(declare-fun m!324883 () Bool)

(assert (=> b!315782 m!324883))

(declare-fun m!324885 () Bool)

(assert (=> b!315787 m!324885))

(declare-fun m!324887 () Bool)

(assert (=> b!315781 m!324887))

(declare-fun m!324889 () Bool)

(assert (=> b!315788 m!324889))

(assert (=> b!315788 m!324889))

(declare-fun m!324891 () Bool)

(assert (=> b!315788 m!324891))

(assert (=> b!315792 m!324887))

(declare-fun m!324893 () Bool)

(assert (=> b!315779 m!324893))

(assert (=> b!315779 m!324893))

(declare-fun m!324895 () Bool)

(assert (=> b!315779 m!324895))

(declare-fun m!324897 () Bool)

(assert (=> start!31588 m!324897))

(declare-fun m!324899 () Bool)

(assert (=> start!31588 m!324899))

(declare-fun m!324901 () Bool)

(assert (=> b!315784 m!324901))

(assert (=> b!315780 m!324887))

(declare-fun m!324903 () Bool)

(assert (=> b!315789 m!324903))

(declare-fun m!324905 () Bool)

(assert (=> b!315783 m!324905))

(push 1)

(assert (not b!315789))

(assert (not b!315782))

(assert (not b!315779))

(assert (not b!315787))

(assert (not b!315783))

(assert (not b!315784))

(assert (not b!315788))

(assert (not start!31588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

