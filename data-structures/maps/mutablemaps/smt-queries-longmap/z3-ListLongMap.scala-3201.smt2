; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44964 () Bool)

(assert start!44964)

(declare-fun b!492792 () Bool)

(declare-fun res!295518 () Bool)

(declare-fun e!289477 () Bool)

(assert (=> b!492792 (=> (not res!295518) (not e!289477))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31869 0))(
  ( (array!31870 (arr!15316 (Array (_ BitVec 32) (_ BitVec 64))) (size!15680 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31869)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!492792 (= res!295518 (and (= (size!15680 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15680 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15680 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492793 () Bool)

(declare-fun res!295519 () Bool)

(declare-fun e!289475 () Bool)

(assert (=> b!492793 (=> (not res!295519) (not e!289475))))

(declare-datatypes ((List!9527 0))(
  ( (Nil!9524) (Cons!9523 (h!10391 (_ BitVec 64)) (t!15763 List!9527)) )
))
(declare-fun arrayNoDuplicates!0 (array!31869 (_ BitVec 32) List!9527) Bool)

(assert (=> b!492793 (= res!295519 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9524))))

(declare-fun b!492795 () Bool)

(declare-fun e!289474 () Bool)

(declare-datatypes ((SeekEntryResult!3790 0))(
  ( (MissingZero!3790 (index!17339 (_ BitVec 32))) (Found!3790 (index!17340 (_ BitVec 32))) (Intermediate!3790 (undefined!4602 Bool) (index!17341 (_ BitVec 32)) (x!46455 (_ BitVec 32))) (Undefined!3790) (MissingVacant!3790 (index!17342 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31869 (_ BitVec 32)) SeekEntryResult!3790)

(assert (=> b!492795 (= e!289474 (= (seekEntryOrOpen!0 (select (arr!15316 a!3235) j!176) a!3235 mask!3524) (Found!3790 j!176)))))

(declare-fun b!492796 () Bool)

(declare-fun res!295515 () Bool)

(assert (=> b!492796 (=> (not res!295515) (not e!289477))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492796 (= res!295515 (validKeyInArray!0 k0!2280))))

(declare-fun b!492797 () Bool)

(declare-fun res!295512 () Bool)

(assert (=> b!492797 (=> (not res!295512) (not e!289477))))

(declare-fun arrayContainsKey!0 (array!31869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492797 (= res!295512 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492798 () Bool)

(declare-fun res!295520 () Bool)

(assert (=> b!492798 (=> (not res!295520) (not e!289475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31869 (_ BitVec 32)) Bool)

(assert (=> b!492798 (= res!295520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492799 () Bool)

(declare-fun res!295514 () Bool)

(assert (=> b!492799 (=> (not res!295514) (not e!289477))))

(assert (=> b!492799 (= res!295514 (validKeyInArray!0 (select (arr!15316 a!3235) j!176)))))

(declare-fun b!492800 () Bool)

(assert (=> b!492800 (= e!289477 e!289475)))

(declare-fun res!295517 () Bool)

(assert (=> b!492800 (=> (not res!295517) (not e!289475))))

(declare-fun lt!222853 () SeekEntryResult!3790)

(assert (=> b!492800 (= res!295517 (or (= lt!222853 (MissingZero!3790 i!1204)) (= lt!222853 (MissingVacant!3790 i!1204))))))

(assert (=> b!492800 (= lt!222853 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!295513 () Bool)

(assert (=> start!44964 (=> (not res!295513) (not e!289477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44964 (= res!295513 (validMask!0 mask!3524))))

(assert (=> start!44964 e!289477))

(assert (=> start!44964 true))

(declare-fun array_inv!11090 (array!31869) Bool)

(assert (=> start!44964 (array_inv!11090 a!3235)))

(declare-fun b!492794 () Bool)

(assert (=> b!492794 (= e!289475 (not true))))

(declare-fun lt!222856 () SeekEntryResult!3790)

(declare-fun lt!222852 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31869 (_ BitVec 32)) SeekEntryResult!3790)

(assert (=> b!492794 (= lt!222856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222852 (select (store (arr!15316 a!3235) i!1204 k0!2280) j!176) (array!31870 (store (arr!15316 a!3235) i!1204 k0!2280) (size!15680 a!3235)) mask!3524))))

(declare-fun lt!222855 () (_ BitVec 32))

(declare-fun lt!222857 () SeekEntryResult!3790)

(assert (=> b!492794 (= lt!222857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222855 (select (arr!15316 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492794 (= lt!222852 (toIndex!0 (select (store (arr!15316 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!492794 (= lt!222855 (toIndex!0 (select (arr!15316 a!3235) j!176) mask!3524))))

(assert (=> b!492794 e!289474))

(declare-fun res!295516 () Bool)

(assert (=> b!492794 (=> (not res!295516) (not e!289474))))

(assert (=> b!492794 (= res!295516 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14518 0))(
  ( (Unit!14519) )
))
(declare-fun lt!222854 () Unit!14518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31869 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14518)

(assert (=> b!492794 (= lt!222854 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44964 res!295513) b!492792))

(assert (= (and b!492792 res!295518) b!492799))

(assert (= (and b!492799 res!295514) b!492796))

(assert (= (and b!492796 res!295515) b!492797))

(assert (= (and b!492797 res!295512) b!492800))

(assert (= (and b!492800 res!295517) b!492798))

(assert (= (and b!492798 res!295520) b!492793))

(assert (= (and b!492793 res!295519) b!492794))

(assert (= (and b!492794 res!295516) b!492795))

(declare-fun m!473545 () Bool)

(assert (=> b!492800 m!473545))

(declare-fun m!473547 () Bool)

(assert (=> b!492794 m!473547))

(declare-fun m!473549 () Bool)

(assert (=> b!492794 m!473549))

(declare-fun m!473551 () Bool)

(assert (=> b!492794 m!473551))

(declare-fun m!473553 () Bool)

(assert (=> b!492794 m!473553))

(assert (=> b!492794 m!473547))

(declare-fun m!473555 () Bool)

(assert (=> b!492794 m!473555))

(declare-fun m!473557 () Bool)

(assert (=> b!492794 m!473557))

(assert (=> b!492794 m!473555))

(assert (=> b!492794 m!473555))

(declare-fun m!473559 () Bool)

(assert (=> b!492794 m!473559))

(declare-fun m!473561 () Bool)

(assert (=> b!492794 m!473561))

(assert (=> b!492794 m!473547))

(declare-fun m!473563 () Bool)

(assert (=> b!492794 m!473563))

(declare-fun m!473565 () Bool)

(assert (=> start!44964 m!473565))

(declare-fun m!473567 () Bool)

(assert (=> start!44964 m!473567))

(declare-fun m!473569 () Bool)

(assert (=> b!492793 m!473569))

(declare-fun m!473571 () Bool)

(assert (=> b!492796 m!473571))

(declare-fun m!473573 () Bool)

(assert (=> b!492798 m!473573))

(declare-fun m!473575 () Bool)

(assert (=> b!492797 m!473575))

(assert (=> b!492795 m!473555))

(assert (=> b!492795 m!473555))

(declare-fun m!473577 () Bool)

(assert (=> b!492795 m!473577))

(assert (=> b!492799 m!473555))

(assert (=> b!492799 m!473555))

(declare-fun m!473579 () Bool)

(assert (=> b!492799 m!473579))

(check-sat (not b!492793) (not b!492798) (not b!492796) (not b!492799) (not b!492794) (not b!492800) (not b!492795) (not b!492797) (not start!44964))
(check-sat)
