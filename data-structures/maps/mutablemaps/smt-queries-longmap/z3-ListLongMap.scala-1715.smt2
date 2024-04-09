; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31586 () Bool)

(assert start!31586)

(declare-fun b!315738 () Bool)

(declare-fun res!171102 () Bool)

(declare-fun e!196470 () Bool)

(assert (=> b!315738 (=> (not res!171102) (not e!196470))))

(declare-datatypes ((array!16108 0))(
  ( (array!16109 (arr!7622 (Array (_ BitVec 32) (_ BitVec 64))) (size!7974 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16108)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315738 (= res!171102 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315739 () Bool)

(declare-fun res!171100 () Bool)

(assert (=> b!315739 (=> (not res!171100) (not e!196470))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2773 0))(
  ( (MissingZero!2773 (index!13268 (_ BitVec 32))) (Found!2773 (index!13269 (_ BitVec 32))) (Intermediate!2773 (undefined!3585 Bool) (index!13270 (_ BitVec 32)) (x!31478 (_ BitVec 32))) (Undefined!2773) (MissingVacant!2773 (index!13271 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16108 (_ BitVec 32)) SeekEntryResult!2773)

(assert (=> b!315739 (= res!171100 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2773 i!1240)))))

(declare-fun b!315740 () Bool)

(declare-fun e!196471 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315740 (= e!196471 (not (= (select (arr!7622 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!315740 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9735 0))(
  ( (Unit!9736) )
))
(declare-fun lt!154372 () Unit!9735)

(declare-fun e!196468 () Unit!9735)

(assert (=> b!315740 (= lt!154372 e!196468)))

(declare-fun c!49939 () Bool)

(assert (=> b!315740 (= c!49939 (not (= resIndex!52 index!1781)))))

(declare-fun b!315741 () Bool)

(declare-fun res!171093 () Bool)

(assert (=> b!315741 (=> (not res!171093) (not e!196471))))

(declare-fun lt!154373 () SeekEntryResult!2773)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16108 (_ BitVec 32)) SeekEntryResult!2773)

(assert (=> b!315741 (= res!171093 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154373))))

(declare-fun b!315742 () Bool)

(declare-fun Unit!9737 () Unit!9735)

(assert (=> b!315742 (= e!196468 Unit!9737)))

(declare-fun b!315743 () Bool)

(declare-fun e!196467 () Unit!9735)

(assert (=> b!315743 (= e!196468 e!196467)))

(declare-fun c!49940 () Bool)

(assert (=> b!315743 (= c!49940 (or (= (select (arr!7622 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7622 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!171099 () Bool)

(assert (=> start!31586 (=> (not res!171099) (not e!196470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31586 (= res!171099 (validMask!0 mask!3709))))

(assert (=> start!31586 e!196470))

(declare-fun array_inv!5576 (array!16108) Bool)

(assert (=> start!31586 (array_inv!5576 a!3293)))

(assert (=> start!31586 true))

(declare-fun b!315737 () Bool)

(assert (=> b!315737 false))

(declare-fun Unit!9738 () Unit!9735)

(assert (=> b!315737 (= e!196467 Unit!9738)))

(declare-fun b!315744 () Bool)

(declare-fun res!171094 () Bool)

(assert (=> b!315744 (=> (not res!171094) (not e!196470))))

(assert (=> b!315744 (= res!171094 (and (= (size!7974 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7974 a!3293))))))

(declare-fun b!315745 () Bool)

(declare-fun res!171097 () Bool)

(assert (=> b!315745 (=> (not res!171097) (not e!196470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16108 (_ BitVec 32)) Bool)

(assert (=> b!315745 (= res!171097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315746 () Bool)

(declare-fun res!171101 () Bool)

(assert (=> b!315746 (=> (not res!171101) (not e!196470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315746 (= res!171101 (validKeyInArray!0 k0!2441))))

(declare-fun b!315747 () Bool)

(declare-fun res!171095 () Bool)

(assert (=> b!315747 (=> (not res!171095) (not e!196471))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315747 (= res!171095 (and (= (select (arr!7622 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7974 a!3293))))))

(declare-fun b!315748 () Bool)

(assert (=> b!315748 false))

(declare-fun lt!154371 () SeekEntryResult!2773)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315748 (= lt!154371 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9739 () Unit!9735)

(assert (=> b!315748 (= e!196467 Unit!9739)))

(declare-fun b!315749 () Bool)

(assert (=> b!315749 (= e!196470 e!196471)))

(declare-fun res!171096 () Bool)

(assert (=> b!315749 (=> (not res!171096) (not e!196471))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315749 (= res!171096 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154373))))

(assert (=> b!315749 (= lt!154373 (Intermediate!2773 false resIndex!52 resX!52))))

(declare-fun b!315750 () Bool)

(declare-fun res!171098 () Bool)

(assert (=> b!315750 (=> (not res!171098) (not e!196471))))

(assert (=> b!315750 (= res!171098 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7622 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(assert (= (and start!31586 res!171099) b!315744))

(assert (= (and b!315744 res!171094) b!315746))

(assert (= (and b!315746 res!171101) b!315738))

(assert (= (and b!315738 res!171102) b!315739))

(assert (= (and b!315739 res!171100) b!315745))

(assert (= (and b!315745 res!171097) b!315749))

(assert (= (and b!315749 res!171096) b!315747))

(assert (= (and b!315747 res!171095) b!315741))

(assert (= (and b!315741 res!171093) b!315750))

(assert (= (and b!315750 res!171098) b!315740))

(assert (= (and b!315740 c!49939) b!315743))

(assert (= (and b!315740 (not c!49939)) b!315742))

(assert (= (and b!315743 c!49940) b!315737))

(assert (= (and b!315743 (not c!49940)) b!315748))

(declare-fun m!324855 () Bool)

(assert (=> b!315747 m!324855))

(declare-fun m!324857 () Bool)

(assert (=> b!315741 m!324857))

(declare-fun m!324859 () Bool)

(assert (=> b!315749 m!324859))

(assert (=> b!315749 m!324859))

(declare-fun m!324861 () Bool)

(assert (=> b!315749 m!324861))

(declare-fun m!324863 () Bool)

(assert (=> b!315739 m!324863))

(declare-fun m!324865 () Bool)

(assert (=> start!31586 m!324865))

(declare-fun m!324867 () Bool)

(assert (=> start!31586 m!324867))

(declare-fun m!324869 () Bool)

(assert (=> b!315743 m!324869))

(declare-fun m!324871 () Bool)

(assert (=> b!315746 m!324871))

(declare-fun m!324873 () Bool)

(assert (=> b!315748 m!324873))

(assert (=> b!315748 m!324873))

(declare-fun m!324875 () Bool)

(assert (=> b!315748 m!324875))

(assert (=> b!315750 m!324869))

(assert (=> b!315740 m!324869))

(declare-fun m!324877 () Bool)

(assert (=> b!315745 m!324877))

(declare-fun m!324879 () Bool)

(assert (=> b!315738 m!324879))

(check-sat (not b!315745) (not start!31586) (not b!315748) (not b!315739) (not b!315746) (not b!315741) (not b!315749) (not b!315738))
(check-sat)
