; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48150 () Bool)

(assert start!48150)

(declare-fun res!325931 () Bool)

(declare-fun e!308864 () Bool)

(assert (=> start!48150 (=> (not res!325931) (not e!308864))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48150 (= res!325931 (validMask!0 mask!3524))))

(assert (=> start!48150 e!308864))

(assert (=> start!48150 true))

(declare-datatypes ((array!33546 0))(
  ( (array!33547 (arr!16117 (Array (_ BitVec 32) (_ BitVec 64))) (size!16481 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33546)

(declare-fun array_inv!11891 (array!33546) Bool)

(assert (=> start!48150 (array_inv!11891 a!3235)))

(declare-fun b!530074 () Bool)

(declare-fun e!308865 () Bool)

(assert (=> b!530074 (= e!308864 e!308865)))

(declare-fun res!325930 () Bool)

(assert (=> b!530074 (=> (not res!325930) (not e!308865))))

(declare-datatypes ((SeekEntryResult!4591 0))(
  ( (MissingZero!4591 (index!20588 (_ BitVec 32))) (Found!4591 (index!20589 (_ BitVec 32))) (Intermediate!4591 (undefined!5403 Bool) (index!20590 (_ BitVec 32)) (x!49584 (_ BitVec 32))) (Undefined!4591) (MissingVacant!4591 (index!20591 (_ BitVec 32))) )
))
(declare-fun lt!244607 () SeekEntryResult!4591)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!530074 (= res!325930 (or (= lt!244607 (MissingZero!4591 i!1204)) (= lt!244607 (MissingVacant!4591 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33546 (_ BitVec 32)) SeekEntryResult!4591)

(assert (=> b!530074 (= lt!244607 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!530075 () Bool)

(declare-fun res!325933 () Bool)

(assert (=> b!530075 (=> (not res!325933) (not e!308864))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530075 (= res!325933 (validKeyInArray!0 (select (arr!16117 a!3235) j!176)))))

(declare-fun b!530076 () Bool)

(declare-fun res!325940 () Bool)

(assert (=> b!530076 (=> (not res!325940) (not e!308864))))

(declare-fun arrayContainsKey!0 (array!33546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530076 (= res!325940 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!530077 () Bool)

(declare-fun res!325938 () Bool)

(assert (=> b!530077 (=> (not res!325938) (not e!308864))))

(assert (=> b!530077 (= res!325938 (and (= (size!16481 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16481 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16481 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!530078 () Bool)

(declare-fun res!325934 () Bool)

(assert (=> b!530078 (=> (not res!325934) (not e!308865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33546 (_ BitVec 32)) Bool)

(assert (=> b!530078 (= res!325934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!530079 () Bool)

(declare-fun res!325932 () Bool)

(assert (=> b!530079 (=> (not res!325932) (not e!308864))))

(assert (=> b!530079 (= res!325932 (validKeyInArray!0 k0!2280))))

(declare-fun e!308862 () Bool)

(declare-fun b!530080 () Bool)

(assert (=> b!530080 (= e!308862 (= (seekEntryOrOpen!0 (select (arr!16117 a!3235) j!176) a!3235 mask!3524) (Found!4591 j!176)))))

(declare-fun b!530081 () Bool)

(declare-fun e!308863 () Bool)

(assert (=> b!530081 (= e!308863 true)))

(declare-fun lt!244602 () array!33546)

(declare-fun lt!244604 () (_ BitVec 64))

(declare-fun lt!244608 () SeekEntryResult!4591)

(assert (=> b!530081 (= lt!244608 (seekEntryOrOpen!0 lt!244604 lt!244602 mask!3524))))

(assert (=> b!530081 false))

(declare-fun b!530082 () Bool)

(declare-fun e!308866 () Bool)

(assert (=> b!530082 (= e!308866 e!308863)))

(declare-fun res!325939 () Bool)

(assert (=> b!530082 (=> res!325939 e!308863)))

(declare-fun lt!244603 () Bool)

(declare-fun lt!244609 () SeekEntryResult!4591)

(assert (=> b!530082 (= res!325939 (or (and (not lt!244603) (undefined!5403 lt!244609)) (and (not lt!244603) (not (undefined!5403 lt!244609)))))))

(get-info :version)

(assert (=> b!530082 (= lt!244603 (not ((_ is Intermediate!4591) lt!244609)))))

(declare-fun b!530083 () Bool)

(declare-fun res!325937 () Bool)

(assert (=> b!530083 (=> (not res!325937) (not e!308865))))

(declare-datatypes ((List!10328 0))(
  ( (Nil!10325) (Cons!10324 (h!11264 (_ BitVec 64)) (t!16564 List!10328)) )
))
(declare-fun arrayNoDuplicates!0 (array!33546 (_ BitVec 32) List!10328) Bool)

(assert (=> b!530083 (= res!325937 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10325))))

(declare-fun b!530084 () Bool)

(assert (=> b!530084 (= e!308865 (not e!308866))))

(declare-fun res!325936 () Bool)

(assert (=> b!530084 (=> res!325936 e!308866)))

(declare-fun lt!244606 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33546 (_ BitVec 32)) SeekEntryResult!4591)

(assert (=> b!530084 (= res!325936 (= lt!244609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244606 lt!244604 lt!244602 mask!3524)))))

(declare-fun lt!244610 () (_ BitVec 32))

(assert (=> b!530084 (= lt!244609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244610 (select (arr!16117 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!530084 (= lt!244606 (toIndex!0 lt!244604 mask!3524))))

(assert (=> b!530084 (= lt!244604 (select (store (arr!16117 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!530084 (= lt!244610 (toIndex!0 (select (arr!16117 a!3235) j!176) mask!3524))))

(assert (=> b!530084 (= lt!244602 (array!33547 (store (arr!16117 a!3235) i!1204 k0!2280) (size!16481 a!3235)))))

(assert (=> b!530084 e!308862))

(declare-fun res!325935 () Bool)

(assert (=> b!530084 (=> (not res!325935) (not e!308862))))

(assert (=> b!530084 (= res!325935 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16786 0))(
  ( (Unit!16787) )
))
(declare-fun lt!244605 () Unit!16786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16786)

(assert (=> b!530084 (= lt!244605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!48150 res!325931) b!530077))

(assert (= (and b!530077 res!325938) b!530075))

(assert (= (and b!530075 res!325933) b!530079))

(assert (= (and b!530079 res!325932) b!530076))

(assert (= (and b!530076 res!325940) b!530074))

(assert (= (and b!530074 res!325930) b!530078))

(assert (= (and b!530078 res!325934) b!530083))

(assert (= (and b!530083 res!325937) b!530084))

(assert (= (and b!530084 res!325935) b!530080))

(assert (= (and b!530084 (not res!325936)) b!530082))

(assert (= (and b!530082 (not res!325939)) b!530081))

(declare-fun m!510669 () Bool)

(assert (=> b!530078 m!510669))

(declare-fun m!510671 () Bool)

(assert (=> start!48150 m!510671))

(declare-fun m!510673 () Bool)

(assert (=> start!48150 m!510673))

(declare-fun m!510675 () Bool)

(assert (=> b!530081 m!510675))

(declare-fun m!510677 () Bool)

(assert (=> b!530074 m!510677))

(declare-fun m!510679 () Bool)

(assert (=> b!530079 m!510679))

(declare-fun m!510681 () Bool)

(assert (=> b!530076 m!510681))

(declare-fun m!510683 () Bool)

(assert (=> b!530075 m!510683))

(assert (=> b!530075 m!510683))

(declare-fun m!510685 () Bool)

(assert (=> b!530075 m!510685))

(declare-fun m!510687 () Bool)

(assert (=> b!530084 m!510687))

(declare-fun m!510689 () Bool)

(assert (=> b!530084 m!510689))

(declare-fun m!510691 () Bool)

(assert (=> b!530084 m!510691))

(declare-fun m!510693 () Bool)

(assert (=> b!530084 m!510693))

(assert (=> b!530084 m!510683))

(declare-fun m!510695 () Bool)

(assert (=> b!530084 m!510695))

(declare-fun m!510697 () Bool)

(assert (=> b!530084 m!510697))

(declare-fun m!510699 () Bool)

(assert (=> b!530084 m!510699))

(assert (=> b!530084 m!510683))

(declare-fun m!510701 () Bool)

(assert (=> b!530084 m!510701))

(assert (=> b!530084 m!510683))

(declare-fun m!510703 () Bool)

(assert (=> b!530083 m!510703))

(assert (=> b!530080 m!510683))

(assert (=> b!530080 m!510683))

(declare-fun m!510705 () Bool)

(assert (=> b!530080 m!510705))

(check-sat (not b!530081) (not b!530080) (not b!530074) (not b!530083) (not b!530079) (not b!530078) (not b!530076) (not start!48150) (not b!530075) (not b!530084))
(check-sat)
