; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44976 () Bool)

(assert start!44976)

(declare-fun res!295687 () Bool)

(declare-fun e!289554 () Bool)

(assert (=> start!44976 (=> (not res!295687) (not e!289554))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44976 (= res!295687 (validMask!0 mask!3524))))

(assert (=> start!44976 e!289554))

(assert (=> start!44976 true))

(declare-datatypes ((array!31881 0))(
  ( (array!31882 (arr!15322 (Array (_ BitVec 32) (_ BitVec 64))) (size!15686 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31881)

(declare-fun array_inv!11096 (array!31881) Bool)

(assert (=> start!44976 (array_inv!11096 a!3235)))

(declare-fun b!492959 () Bool)

(declare-fun e!289551 () Bool)

(declare-fun e!289553 () Bool)

(assert (=> b!492959 (= e!289551 (not e!289553))))

(declare-fun res!295679 () Bool)

(assert (=> b!492959 (=> res!295679 e!289553)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!222957 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3796 0))(
  ( (MissingZero!3796 (index!17363 (_ BitVec 32))) (Found!3796 (index!17364 (_ BitVec 32))) (Intermediate!3796 (undefined!4608 Bool) (index!17365 (_ BitVec 32)) (x!46477 (_ BitVec 32))) (Undefined!3796) (MissingVacant!3796 (index!17366 (_ BitVec 32))) )
))
(declare-fun lt!222958 () SeekEntryResult!3796)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31881 (_ BitVec 32)) SeekEntryResult!3796)

(assert (=> b!492959 (= res!295679 (= lt!222958 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222957 (select (store (arr!15322 a!3235) i!1204 k0!2280) j!176) (array!31882 (store (arr!15322 a!3235) i!1204 k0!2280) (size!15686 a!3235)) mask!3524)))))

(declare-fun lt!222955 () (_ BitVec 32))

(assert (=> b!492959 (= lt!222958 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222955 (select (arr!15322 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492959 (= lt!222957 (toIndex!0 (select (store (arr!15322 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!492959 (= lt!222955 (toIndex!0 (select (arr!15322 a!3235) j!176) mask!3524))))

(declare-fun e!289552 () Bool)

(assert (=> b!492959 e!289552))

(declare-fun res!295683 () Bool)

(assert (=> b!492959 (=> (not res!295683) (not e!289552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31881 (_ BitVec 32)) Bool)

(assert (=> b!492959 (= res!295683 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14530 0))(
  ( (Unit!14531) )
))
(declare-fun lt!222956 () Unit!14530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31881 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14530)

(assert (=> b!492959 (= lt!222956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492960 () Bool)

(declare-fun res!295686 () Bool)

(assert (=> b!492960 (=> (not res!295686) (not e!289554))))

(assert (=> b!492960 (= res!295686 (and (= (size!15686 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15686 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15686 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492961 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31881 (_ BitVec 32)) SeekEntryResult!3796)

(assert (=> b!492961 (= e!289552 (= (seekEntryOrOpen!0 (select (arr!15322 a!3235) j!176) a!3235 mask!3524) (Found!3796 j!176)))))

(declare-fun b!492962 () Bool)

(assert (=> b!492962 (= e!289554 e!289551)))

(declare-fun res!295684 () Bool)

(assert (=> b!492962 (=> (not res!295684) (not e!289551))))

(declare-fun lt!222959 () SeekEntryResult!3796)

(assert (=> b!492962 (= res!295684 (or (= lt!222959 (MissingZero!3796 i!1204)) (= lt!222959 (MissingVacant!3796 i!1204))))))

(assert (=> b!492962 (= lt!222959 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!492963 () Bool)

(declare-fun res!295680 () Bool)

(assert (=> b!492963 (=> (not res!295680) (not e!289551))))

(declare-datatypes ((List!9533 0))(
  ( (Nil!9530) (Cons!9529 (h!10397 (_ BitVec 64)) (t!15769 List!9533)) )
))
(declare-fun arrayNoDuplicates!0 (array!31881 (_ BitVec 32) List!9533) Bool)

(assert (=> b!492963 (= res!295680 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9530))))

(declare-fun b!492964 () Bool)

(declare-fun res!295688 () Bool)

(assert (=> b!492964 (=> (not res!295688) (not e!289554))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492964 (= res!295688 (validKeyInArray!0 k0!2280))))

(declare-fun b!492965 () Bool)

(declare-fun res!295681 () Bool)

(assert (=> b!492965 (=> (not res!295681) (not e!289554))))

(declare-fun arrayContainsKey!0 (array!31881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492965 (= res!295681 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492966 () Bool)

(declare-fun res!295682 () Bool)

(assert (=> b!492966 (=> (not res!295682) (not e!289554))))

(assert (=> b!492966 (= res!295682 (validKeyInArray!0 (select (arr!15322 a!3235) j!176)))))

(declare-fun b!492967 () Bool)

(declare-fun res!295685 () Bool)

(assert (=> b!492967 (=> (not res!295685) (not e!289551))))

(assert (=> b!492967 (= res!295685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492968 () Bool)

(get-info :version)

(assert (=> b!492968 (= e!289553 (or (not ((_ is Intermediate!3796) lt!222958)) (not (undefined!4608 lt!222958)) (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (= (and start!44976 res!295687) b!492960))

(assert (= (and b!492960 res!295686) b!492966))

(assert (= (and b!492966 res!295682) b!492964))

(assert (= (and b!492964 res!295688) b!492965))

(assert (= (and b!492965 res!295681) b!492962))

(assert (= (and b!492962 res!295684) b!492967))

(assert (= (and b!492967 res!295685) b!492963))

(assert (= (and b!492963 res!295680) b!492959))

(assert (= (and b!492959 res!295683) b!492961))

(assert (= (and b!492959 (not res!295679)) b!492968))

(declare-fun m!473761 () Bool)

(assert (=> b!492959 m!473761))

(declare-fun m!473763 () Bool)

(assert (=> b!492959 m!473763))

(declare-fun m!473765 () Bool)

(assert (=> b!492959 m!473765))

(declare-fun m!473767 () Bool)

(assert (=> b!492959 m!473767))

(declare-fun m!473769 () Bool)

(assert (=> b!492959 m!473769))

(assert (=> b!492959 m!473769))

(declare-fun m!473771 () Bool)

(assert (=> b!492959 m!473771))

(assert (=> b!492959 m!473761))

(declare-fun m!473773 () Bool)

(assert (=> b!492959 m!473773))

(assert (=> b!492959 m!473761))

(declare-fun m!473775 () Bool)

(assert (=> b!492959 m!473775))

(assert (=> b!492959 m!473769))

(declare-fun m!473777 () Bool)

(assert (=> b!492959 m!473777))

(declare-fun m!473779 () Bool)

(assert (=> b!492964 m!473779))

(declare-fun m!473781 () Bool)

(assert (=> b!492967 m!473781))

(assert (=> b!492961 m!473761))

(assert (=> b!492961 m!473761))

(declare-fun m!473783 () Bool)

(assert (=> b!492961 m!473783))

(declare-fun m!473785 () Bool)

(assert (=> b!492963 m!473785))

(declare-fun m!473787 () Bool)

(assert (=> b!492962 m!473787))

(declare-fun m!473789 () Bool)

(assert (=> start!44976 m!473789))

(declare-fun m!473791 () Bool)

(assert (=> start!44976 m!473791))

(declare-fun m!473793 () Bool)

(assert (=> b!492965 m!473793))

(assert (=> b!492966 m!473761))

(assert (=> b!492966 m!473761))

(declare-fun m!473795 () Bool)

(assert (=> b!492966 m!473795))

(check-sat (not b!492964) (not b!492963) (not b!492962) (not b!492967) (not b!492959) (not b!492961) (not b!492965) (not b!492966) (not start!44976))
(check-sat)
