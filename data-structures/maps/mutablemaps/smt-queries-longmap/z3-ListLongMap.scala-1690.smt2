; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31034 () Bool)

(assert start!31034)

(declare-fun b!311784 () Bool)

(declare-fun e!194484 () Bool)

(declare-fun e!194483 () Bool)

(assert (=> b!311784 (= e!194484 e!194483)))

(declare-fun res!168405 () Bool)

(assert (=> b!311784 (=> (not res!168405) (not e!194483))))

(declare-datatypes ((array!15934 0))(
  ( (array!15935 (arr!7547 (Array (_ BitVec 32) (_ BitVec 64))) (size!7899 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15934)

(declare-datatypes ((SeekEntryResult!2698 0))(
  ( (MissingZero!2698 (index!12968 (_ BitVec 32))) (Found!2698 (index!12969 (_ BitVec 32))) (Intermediate!2698 (undefined!3510 Bool) (index!12970 (_ BitVec 32)) (x!31146 (_ BitVec 32))) (Undefined!2698) (MissingVacant!2698 (index!12971 (_ BitVec 32))) )
))
(declare-fun lt!152630 () SeekEntryResult!2698)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15934 (_ BitVec 32)) SeekEntryResult!2698)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311784 (= res!168405 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152630))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311784 (= lt!152630 (Intermediate!2698 false resIndex!52 resX!52))))

(declare-fun res!168401 () Bool)

(assert (=> start!31034 (=> (not res!168401) (not e!194484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31034 (= res!168401 (validMask!0 mask!3709))))

(assert (=> start!31034 e!194484))

(declare-fun array_inv!5501 (array!15934) Bool)

(assert (=> start!31034 (array_inv!5501 a!3293)))

(assert (=> start!31034 true))

(declare-fun b!311785 () Bool)

(declare-fun e!194481 () Bool)

(assert (=> b!311785 (= e!194481 true)))

(declare-fun lt!152631 () SeekEntryResult!2698)

(declare-fun lt!152626 () SeekEntryResult!2698)

(assert (=> b!311785 (= lt!152631 lt!152626)))

(declare-datatypes ((Unit!9594 0))(
  ( (Unit!9595) )
))
(declare-fun lt!152628 () Unit!9594)

(declare-fun lt!152632 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15934 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9594)

(assert (=> b!311785 (= lt!152628 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152632 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311786 () Bool)

(declare-fun res!168400 () Bool)

(assert (=> b!311786 (=> (not res!168400) (not e!194484))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15934 (_ BitVec 32)) SeekEntryResult!2698)

(assert (=> b!311786 (= res!168400 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2698 i!1240)))))

(declare-fun b!311787 () Bool)

(declare-fun res!168403 () Bool)

(assert (=> b!311787 (=> (not res!168403) (not e!194484))))

(declare-fun arrayContainsKey!0 (array!15934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311787 (= res!168403 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311788 () Bool)

(declare-fun res!168397 () Bool)

(assert (=> b!311788 (=> (not res!168397) (not e!194483))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311788 (= res!168397 (and (= (select (arr!7547 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7899 a!3293))))))

(declare-fun b!311789 () Bool)

(declare-fun res!168404 () Bool)

(assert (=> b!311789 (=> (not res!168404) (not e!194484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15934 (_ BitVec 32)) Bool)

(assert (=> b!311789 (= res!168404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311790 () Bool)

(declare-fun e!194482 () Bool)

(assert (=> b!311790 (= e!194482 (not e!194481))))

(declare-fun res!168402 () Bool)

(assert (=> b!311790 (=> res!168402 e!194481)))

(assert (=> b!311790 (= res!168402 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152632 #b00000000000000000000000000000000) (bvsge lt!152632 (size!7899 a!3293)) (not (= lt!152626 lt!152630))))))

(declare-fun lt!152629 () SeekEntryResult!2698)

(assert (=> b!311790 (= lt!152629 lt!152631)))

(declare-fun lt!152627 () array!15934)

(assert (=> b!311790 (= lt!152631 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152632 k0!2441 lt!152627 mask!3709))))

(assert (=> b!311790 (= lt!152629 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152627 mask!3709))))

(assert (=> b!311790 (= lt!152627 (array!15935 (store (arr!7547 a!3293) i!1240 k0!2441) (size!7899 a!3293)))))

(declare-fun lt!152633 () SeekEntryResult!2698)

(assert (=> b!311790 (= lt!152633 lt!152626)))

(assert (=> b!311790 (= lt!152626 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152632 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311790 (= lt!152632 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311791 () Bool)

(declare-fun res!168398 () Bool)

(assert (=> b!311791 (=> (not res!168398) (not e!194484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311791 (= res!168398 (validKeyInArray!0 k0!2441))))

(declare-fun b!311792 () Bool)

(declare-fun res!168399 () Bool)

(assert (=> b!311792 (=> (not res!168399) (not e!194484))))

(assert (=> b!311792 (= res!168399 (and (= (size!7899 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7899 a!3293))))))

(declare-fun b!311793 () Bool)

(assert (=> b!311793 (= e!194483 e!194482)))

(declare-fun res!168396 () Bool)

(assert (=> b!311793 (=> (not res!168396) (not e!194482))))

(assert (=> b!311793 (= res!168396 (and (= lt!152633 lt!152630) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7547 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311793 (= lt!152633 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(assert (= (and start!31034 res!168401) b!311792))

(assert (= (and b!311792 res!168399) b!311791))

(assert (= (and b!311791 res!168398) b!311787))

(assert (= (and b!311787 res!168403) b!311786))

(assert (= (and b!311786 res!168400) b!311789))

(assert (= (and b!311789 res!168404) b!311784))

(assert (= (and b!311784 res!168405) b!311788))

(assert (= (and b!311788 res!168397) b!311793))

(assert (= (and b!311793 res!168396) b!311790))

(assert (= (and b!311790 (not res!168402)) b!311785))

(declare-fun m!321851 () Bool)

(assert (=> b!311785 m!321851))

(declare-fun m!321853 () Bool)

(assert (=> b!311788 m!321853))

(declare-fun m!321855 () Bool)

(assert (=> b!311790 m!321855))

(declare-fun m!321857 () Bool)

(assert (=> b!311790 m!321857))

(declare-fun m!321859 () Bool)

(assert (=> b!311790 m!321859))

(declare-fun m!321861 () Bool)

(assert (=> b!311790 m!321861))

(declare-fun m!321863 () Bool)

(assert (=> b!311790 m!321863))

(declare-fun m!321865 () Bool)

(assert (=> b!311789 m!321865))

(declare-fun m!321867 () Bool)

(assert (=> b!311786 m!321867))

(declare-fun m!321869 () Bool)

(assert (=> b!311791 m!321869))

(declare-fun m!321871 () Bool)

(assert (=> start!31034 m!321871))

(declare-fun m!321873 () Bool)

(assert (=> start!31034 m!321873))

(declare-fun m!321875 () Bool)

(assert (=> b!311787 m!321875))

(declare-fun m!321877 () Bool)

(assert (=> b!311793 m!321877))

(declare-fun m!321879 () Bool)

(assert (=> b!311793 m!321879))

(declare-fun m!321881 () Bool)

(assert (=> b!311784 m!321881))

(assert (=> b!311784 m!321881))

(declare-fun m!321883 () Bool)

(assert (=> b!311784 m!321883))

(check-sat (not b!311789) (not b!311791) (not b!311793) (not b!311787) (not b!311786) (not b!311785) (not b!311790) (not start!31034) (not b!311784))
(check-sat)
