; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31036 () Bool)

(assert start!31036)

(declare-fun b!311814 () Bool)

(declare-fun e!194496 () Bool)

(declare-fun e!194497 () Bool)

(assert (=> b!311814 (= e!194496 (not e!194497))))

(declare-fun res!168435 () Bool)

(assert (=> b!311814 (=> res!168435 e!194497)))

(declare-datatypes ((SeekEntryResult!2699 0))(
  ( (MissingZero!2699 (index!12972 (_ BitVec 32))) (Found!2699 (index!12973 (_ BitVec 32))) (Intermediate!2699 (undefined!3511 Bool) (index!12974 (_ BitVec 32)) (x!31147 (_ BitVec 32))) (Undefined!2699) (MissingVacant!2699 (index!12975 (_ BitVec 32))) )
))
(declare-fun lt!152657 () SeekEntryResult!2699)

(declare-datatypes ((array!15936 0))(
  ( (array!15937 (arr!7548 (Array (_ BitVec 32) (_ BitVec 64))) (size!7900 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15936)

(declare-fun lt!152653 () (_ BitVec 32))

(declare-fun lt!152655 () SeekEntryResult!2699)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!311814 (= res!168435 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152653 #b00000000000000000000000000000000) (bvsge lt!152653 (size!7900 a!3293)) (not (= lt!152655 lt!152657))))))

(declare-fun lt!152654 () SeekEntryResult!2699)

(declare-fun lt!152652 () SeekEntryResult!2699)

(assert (=> b!311814 (= lt!152654 lt!152652)))

(declare-fun lt!152650 () array!15936)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15936 (_ BitVec 32)) SeekEntryResult!2699)

(assert (=> b!311814 (= lt!152652 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152653 k!2441 lt!152650 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311814 (= lt!152654 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152650 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311814 (= lt!152650 (array!15937 (store (arr!7548 a!3293) i!1240 k!2441) (size!7900 a!3293)))))

(declare-fun lt!152651 () SeekEntryResult!2699)

(assert (=> b!311814 (= lt!152651 lt!152655)))

(assert (=> b!311814 (= lt!152655 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152653 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311814 (= lt!152653 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311815 () Bool)

(declare-fun e!194500 () Bool)

(assert (=> b!311815 (= e!194500 e!194496)))

(declare-fun res!168427 () Bool)

(assert (=> b!311815 (=> (not res!168427) (not e!194496))))

(assert (=> b!311815 (= res!168427 (and (= lt!152651 lt!152657) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7548 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311815 (= lt!152651 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!168434 () Bool)

(declare-fun e!194498 () Bool)

(assert (=> start!31036 (=> (not res!168434) (not e!194498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31036 (= res!168434 (validMask!0 mask!3709))))

(assert (=> start!31036 e!194498))

(declare-fun array_inv!5502 (array!15936) Bool)

(assert (=> start!31036 (array_inv!5502 a!3293)))

(assert (=> start!31036 true))

(declare-fun b!311816 () Bool)

(declare-fun res!168432 () Bool)

(assert (=> b!311816 (=> (not res!168432) (not e!194498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15936 (_ BitVec 32)) Bool)

(assert (=> b!311816 (= res!168432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311817 () Bool)

(declare-fun res!168429 () Bool)

(assert (=> b!311817 (=> (not res!168429) (not e!194498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311817 (= res!168429 (validKeyInArray!0 k!2441))))

(declare-fun b!311818 () Bool)

(declare-fun res!168431 () Bool)

(assert (=> b!311818 (=> (not res!168431) (not e!194498))))

(declare-fun arrayContainsKey!0 (array!15936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311818 (= res!168431 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311819 () Bool)

(assert (=> b!311819 (= e!194498 e!194500)))

(declare-fun res!168428 () Bool)

(assert (=> b!311819 (=> (not res!168428) (not e!194500))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311819 (= res!168428 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152657))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311819 (= lt!152657 (Intermediate!2699 false resIndex!52 resX!52))))

(declare-fun b!311820 () Bool)

(declare-fun res!168426 () Bool)

(assert (=> b!311820 (=> (not res!168426) (not e!194498))))

(assert (=> b!311820 (= res!168426 (and (= (size!7900 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7900 a!3293))))))

(declare-fun b!311821 () Bool)

(assert (=> b!311821 (= e!194497 true)))

(assert (=> b!311821 (= lt!152652 lt!152655)))

(declare-datatypes ((Unit!9596 0))(
  ( (Unit!9597) )
))
(declare-fun lt!152656 () Unit!9596)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15936 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9596)

(assert (=> b!311821 (= lt!152656 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152653 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311822 () Bool)

(declare-fun res!168433 () Bool)

(assert (=> b!311822 (=> (not res!168433) (not e!194500))))

(assert (=> b!311822 (= res!168433 (and (= (select (arr!7548 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7900 a!3293))))))

(declare-fun b!311823 () Bool)

(declare-fun res!168430 () Bool)

(assert (=> b!311823 (=> (not res!168430) (not e!194498))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15936 (_ BitVec 32)) SeekEntryResult!2699)

(assert (=> b!311823 (= res!168430 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2699 i!1240)))))

(assert (= (and start!31036 res!168434) b!311820))

(assert (= (and b!311820 res!168426) b!311817))

(assert (= (and b!311817 res!168429) b!311818))

(assert (= (and b!311818 res!168431) b!311823))

(assert (= (and b!311823 res!168430) b!311816))

(assert (= (and b!311816 res!168432) b!311819))

(assert (= (and b!311819 res!168428) b!311822))

(assert (= (and b!311822 res!168433) b!311815))

(assert (= (and b!311815 res!168427) b!311814))

(assert (= (and b!311814 (not res!168435)) b!311821))

(declare-fun m!321885 () Bool)

(assert (=> b!311822 m!321885))

(declare-fun m!321887 () Bool)

(assert (=> b!311818 m!321887))

(declare-fun m!321889 () Bool)

(assert (=> b!311823 m!321889))

(declare-fun m!321891 () Bool)

(assert (=> b!311819 m!321891))

(assert (=> b!311819 m!321891))

(declare-fun m!321893 () Bool)

(assert (=> b!311819 m!321893))

(declare-fun m!321895 () Bool)

(assert (=> b!311814 m!321895))

(declare-fun m!321897 () Bool)

(assert (=> b!311814 m!321897))

(declare-fun m!321899 () Bool)

(assert (=> b!311814 m!321899))

(declare-fun m!321901 () Bool)

(assert (=> b!311814 m!321901))

(declare-fun m!321903 () Bool)

(assert (=> b!311814 m!321903))

(declare-fun m!321905 () Bool)

(assert (=> b!311821 m!321905))

(declare-fun m!321907 () Bool)

(assert (=> b!311816 m!321907))

(declare-fun m!321909 () Bool)

(assert (=> b!311817 m!321909))

(declare-fun m!321911 () Bool)

(assert (=> b!311815 m!321911))

(declare-fun m!321913 () Bool)

(assert (=> b!311815 m!321913))

(declare-fun m!321915 () Bool)

(assert (=> start!31036 m!321915))

(declare-fun m!321917 () Bool)

(assert (=> start!31036 m!321917))

(push 1)

(assert (not b!311821))

(assert (not b!311819))

