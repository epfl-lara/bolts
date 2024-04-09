; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30558 () Bool)

(assert start!30558)

(declare-fun b!305795 () Bool)

(declare-fun res!162988 () Bool)

(declare-fun e!191914 () Bool)

(assert (=> b!305795 (=> (not res!162988) (not e!191914))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305795 (= res!162988 (validKeyInArray!0 k!2441))))

(declare-fun b!305796 () Bool)

(declare-fun res!162994 () Bool)

(assert (=> b!305796 (=> (not res!162994) (not e!191914))))

(declare-datatypes ((array!15560 0))(
  ( (array!15561 (arr!7363 (Array (_ BitVec 32) (_ BitVec 64))) (size!7715 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15560)

(declare-fun arrayContainsKey!0 (array!15560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305796 (= res!162994 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305797 () Bool)

(assert (=> b!305797 false))

(declare-datatypes ((Unit!9448 0))(
  ( (Unit!9449) )
))
(declare-fun e!191912 () Unit!9448)

(declare-fun Unit!9450 () Unit!9448)

(assert (=> b!305797 (= e!191912 Unit!9450)))

(declare-fun b!305798 () Bool)

(declare-fun e!191913 () Bool)

(assert (=> b!305798 (= e!191914 e!191913)))

(declare-fun res!162991 () Bool)

(assert (=> b!305798 (=> (not res!162991) (not e!191913))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2514 0))(
  ( (MissingZero!2514 (index!12232 (_ BitVec 32))) (Found!2514 (index!12233 (_ BitVec 32))) (Intermediate!2514 (undefined!3326 Bool) (index!12234 (_ BitVec 32)) (x!30456 (_ BitVec 32))) (Undefined!2514) (MissingVacant!2514 (index!12235 (_ BitVec 32))) )
))
(declare-fun lt!150828 () SeekEntryResult!2514)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15560 (_ BitVec 32)) SeekEntryResult!2514)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305798 (= res!162991 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150828))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305798 (= lt!150828 (Intermediate!2514 false resIndex!52 resX!52))))

(declare-fun b!305799 () Bool)

(declare-fun res!162993 () Bool)

(assert (=> b!305799 (=> (not res!162993) (not e!191914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15560 (_ BitVec 32)) Bool)

(assert (=> b!305799 (= res!162993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!162989 () Bool)

(assert (=> start!30558 (=> (not res!162989) (not e!191914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30558 (= res!162989 (validMask!0 mask!3709))))

(assert (=> start!30558 e!191914))

(declare-fun array_inv!5317 (array!15560) Bool)

(assert (=> start!30558 (array_inv!5317 a!3293)))

(assert (=> start!30558 true))

(declare-fun b!305800 () Bool)

(declare-fun res!162992 () Bool)

(assert (=> b!305800 (=> (not res!162992) (not e!191913))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305800 (= res!162992 (and (= (select (arr!7363 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7715 a!3293))))))

(declare-fun b!305801 () Bool)

(declare-fun res!162990 () Bool)

(assert (=> b!305801 (=> (not res!162990) (not e!191914))))

(assert (=> b!305801 (= res!162990 (and (= (size!7715 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7715 a!3293))))))

(declare-fun b!305802 () Bool)

(declare-fun res!162996 () Bool)

(assert (=> b!305802 (=> (not res!162996) (not e!191913))))

(assert (=> b!305802 (= res!162996 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150828))))

(declare-fun b!305803 () Bool)

(declare-fun e!191910 () Unit!9448)

(declare-fun Unit!9451 () Unit!9448)

(assert (=> b!305803 (= e!191910 Unit!9451)))

(declare-fun b!305804 () Bool)

(assert (=> b!305804 (= e!191910 e!191912)))

(declare-fun c!49006 () Bool)

(assert (=> b!305804 (= c!49006 (or (= (select (arr!7363 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7363 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305805 () Bool)

(declare-fun res!162987 () Bool)

(assert (=> b!305805 (=> (not res!162987) (not e!191914))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15560 (_ BitVec 32)) SeekEntryResult!2514)

(assert (=> b!305805 (= res!162987 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2514 i!1240)))))

(declare-fun b!305806 () Bool)

(assert (=> b!305806 (= e!191913 (not (or (not (= (select (arr!7363 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(assert (=> b!305806 (= index!1781 resIndex!52)))

(declare-fun lt!150830 () Unit!9448)

(assert (=> b!305806 (= lt!150830 e!191910)))

(declare-fun c!49007 () Bool)

(assert (=> b!305806 (= c!49007 (not (= resIndex!52 index!1781)))))

(declare-fun b!305807 () Bool)

(assert (=> b!305807 false))

(declare-fun lt!150829 () SeekEntryResult!2514)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305807 (= lt!150829 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9452 () Unit!9448)

(assert (=> b!305807 (= e!191912 Unit!9452)))

(declare-fun b!305808 () Bool)

(declare-fun res!162995 () Bool)

(assert (=> b!305808 (=> (not res!162995) (not e!191913))))

(assert (=> b!305808 (= res!162995 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7363 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(assert (= (and start!30558 res!162989) b!305801))

(assert (= (and b!305801 res!162990) b!305795))

(assert (= (and b!305795 res!162988) b!305796))

(assert (= (and b!305796 res!162994) b!305805))

(assert (= (and b!305805 res!162987) b!305799))

(assert (= (and b!305799 res!162993) b!305798))

(assert (= (and b!305798 res!162991) b!305800))

(assert (= (and b!305800 res!162992) b!305802))

(assert (= (and b!305802 res!162996) b!305808))

(assert (= (and b!305808 res!162995) b!305806))

(assert (= (and b!305806 c!49007) b!305804))

(assert (= (and b!305806 (not c!49007)) b!305803))

(assert (= (and b!305804 c!49006) b!305797))

(assert (= (and b!305804 (not c!49006)) b!305807))

(declare-fun m!316597 () Bool)

(assert (=> b!305808 m!316597))

(declare-fun m!316599 () Bool)

(assert (=> b!305796 m!316599))

(declare-fun m!316601 () Bool)

(assert (=> b!305805 m!316601))

(declare-fun m!316603 () Bool)

(assert (=> start!30558 m!316603))

(declare-fun m!316605 () Bool)

(assert (=> start!30558 m!316605))

(declare-fun m!316607 () Bool)

(assert (=> b!305802 m!316607))

(declare-fun m!316609 () Bool)

(assert (=> b!305798 m!316609))

(assert (=> b!305798 m!316609))

(declare-fun m!316611 () Bool)

(assert (=> b!305798 m!316611))

(declare-fun m!316613 () Bool)

(assert (=> b!305795 m!316613))

(assert (=> b!305804 m!316597))

(declare-fun m!316615 () Bool)

(assert (=> b!305807 m!316615))

(assert (=> b!305807 m!316615))

(declare-fun m!316617 () Bool)

(assert (=> b!305807 m!316617))

(declare-fun m!316619 () Bool)

(assert (=> b!305800 m!316619))

(declare-fun m!316621 () Bool)

(assert (=> b!305799 m!316621))

(assert (=> b!305806 m!316597))

(push 1)

