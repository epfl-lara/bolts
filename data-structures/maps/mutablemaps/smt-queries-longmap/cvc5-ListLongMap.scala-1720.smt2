; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31722 () Bool)

(assert start!31722)

(declare-fun b!316738 () Bool)

(declare-fun e!196984 () Bool)

(declare-fun e!196986 () Bool)

(assert (=> b!316738 (= e!196984 e!196986)))

(declare-fun res!171673 () Bool)

(assert (=> b!316738 (=> (not res!171673) (not e!196986))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2787 0))(
  ( (MissingZero!2787 (index!13324 (_ BitVec 32))) (Found!2787 (index!13325 (_ BitVec 32))) (Intermediate!2787 (undefined!3599 Bool) (index!13326 (_ BitVec 32)) (x!31550 (_ BitVec 32))) (Undefined!2787) (MissingVacant!2787 (index!13327 (_ BitVec 32))) )
))
(declare-fun lt!154715 () SeekEntryResult!2787)

(declare-datatypes ((array!16142 0))(
  ( (array!16143 (arr!7636 (Array (_ BitVec 32) (_ BitVec 64))) (size!7988 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16142)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16142 (_ BitVec 32)) SeekEntryResult!2787)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316738 (= res!171673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154715))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!316738 (= lt!154715 (Intermediate!2787 false resIndex!52 resX!52))))

(declare-fun b!316739 () Bool)

(declare-fun e!196985 () Bool)

(assert (=> b!316739 (= e!196986 e!196985)))

(declare-fun res!171674 () Bool)

(assert (=> b!316739 (=> (not res!171674) (not e!196985))))

(declare-fun lt!154714 () SeekEntryResult!2787)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!316739 (= res!171674 (and (= lt!154714 lt!154715) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7636 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316739 (= lt!154714 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!316740 () Bool)

(declare-fun res!171672 () Bool)

(assert (=> b!316740 (=> (not res!171672) (not e!196984))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316740 (= res!171672 (and (= (size!7988 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7988 a!3293))))))

(declare-fun b!316741 () Bool)

(assert (=> b!316741 (= e!196985 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316741 (= lt!154714 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun res!171678 () Bool)

(assert (=> start!31722 (=> (not res!171678) (not e!196984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31722 (= res!171678 (validMask!0 mask!3709))))

(assert (=> start!31722 e!196984))

(declare-fun array_inv!5590 (array!16142) Bool)

(assert (=> start!31722 (array_inv!5590 a!3293)))

(assert (=> start!31722 true))

(declare-fun b!316742 () Bool)

(declare-fun res!171677 () Bool)

(assert (=> b!316742 (=> (not res!171677) (not e!196984))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16142 (_ BitVec 32)) SeekEntryResult!2787)

(assert (=> b!316742 (= res!171677 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2787 i!1240)))))

(declare-fun b!316743 () Bool)

(declare-fun res!171675 () Bool)

(assert (=> b!316743 (=> (not res!171675) (not e!196986))))

(assert (=> b!316743 (= res!171675 (and (= (select (arr!7636 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7988 a!3293))))))

(declare-fun b!316744 () Bool)

(declare-fun res!171670 () Bool)

(assert (=> b!316744 (=> (not res!171670) (not e!196984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16142 (_ BitVec 32)) Bool)

(assert (=> b!316744 (= res!171670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316745 () Bool)

(declare-fun res!171676 () Bool)

(assert (=> b!316745 (=> (not res!171676) (not e!196984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316745 (= res!171676 (validKeyInArray!0 k!2441))))

(declare-fun b!316746 () Bool)

(declare-fun res!171671 () Bool)

(assert (=> b!316746 (=> (not res!171671) (not e!196984))))

(declare-fun arrayContainsKey!0 (array!16142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316746 (= res!171671 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31722 res!171678) b!316740))

(assert (= (and b!316740 res!171672) b!316745))

(assert (= (and b!316745 res!171676) b!316746))

(assert (= (and b!316746 res!171671) b!316742))

(assert (= (and b!316742 res!171677) b!316744))

(assert (= (and b!316744 res!171670) b!316738))

(assert (= (and b!316738 res!171673) b!316743))

(assert (= (and b!316743 res!171675) b!316739))

(assert (= (and b!316739 res!171674) b!316741))

(declare-fun m!325525 () Bool)

(assert (=> b!316746 m!325525))

(declare-fun m!325527 () Bool)

(assert (=> b!316745 m!325527))

(declare-fun m!325529 () Bool)

(assert (=> start!31722 m!325529))

(declare-fun m!325531 () Bool)

(assert (=> start!31722 m!325531))

(declare-fun m!325533 () Bool)

(assert (=> b!316738 m!325533))

(assert (=> b!316738 m!325533))

(declare-fun m!325535 () Bool)

(assert (=> b!316738 m!325535))

(declare-fun m!325537 () Bool)

(assert (=> b!316739 m!325537))

(declare-fun m!325539 () Bool)

(assert (=> b!316739 m!325539))

(declare-fun m!325541 () Bool)

(assert (=> b!316741 m!325541))

(assert (=> b!316741 m!325541))

(declare-fun m!325543 () Bool)

(assert (=> b!316741 m!325543))

(declare-fun m!325545 () Bool)

(assert (=> b!316743 m!325545))

(declare-fun m!325547 () Bool)

(assert (=> b!316742 m!325547))

(declare-fun m!325549 () Bool)

(assert (=> b!316744 m!325549))

(push 1)

