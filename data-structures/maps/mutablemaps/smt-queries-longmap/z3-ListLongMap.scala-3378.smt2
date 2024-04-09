; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46692 () Bool)

(assert start!46692)

(declare-fun b!514921 () Bool)

(declare-fun res!314638 () Bool)

(declare-fun e!300697 () Bool)

(assert (=> b!514921 (=> (not res!314638) (not e!300697))))

(declare-datatypes ((array!32964 0))(
  ( (array!32965 (arr!15847 (Array (_ BitVec 32) (_ BitVec 64))) (size!16211 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32964)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514921 (= res!314638 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!514922 () Bool)

(declare-fun res!314644 () Bool)

(declare-fun e!300694 () Bool)

(assert (=> b!514922 (=> res!314644 e!300694)))

(declare-datatypes ((SeekEntryResult!4321 0))(
  ( (MissingZero!4321 (index!19472 (_ BitVec 32))) (Found!4321 (index!19473 (_ BitVec 32))) (Intermediate!4321 (undefined!5133 Bool) (index!19474 (_ BitVec 32)) (x!48471 (_ BitVec 32))) (Undefined!4321) (MissingVacant!4321 (index!19475 (_ BitVec 32))) )
))
(declare-fun lt!235778 () SeekEntryResult!4321)

(get-info :version)

(assert (=> b!514922 (= res!314644 (or (undefined!5133 lt!235778) (not ((_ is Intermediate!4321) lt!235778))))))

(declare-fun res!314636 () Bool)

(assert (=> start!46692 (=> (not res!314636) (not e!300697))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46692 (= res!314636 (validMask!0 mask!3524))))

(assert (=> start!46692 e!300697))

(assert (=> start!46692 true))

(declare-fun array_inv!11621 (array!32964) Bool)

(assert (=> start!46692 (array_inv!11621 a!3235)))

(declare-fun b!514923 () Bool)

(declare-fun res!314635 () Bool)

(assert (=> b!514923 (=> (not res!314635) (not e!300697))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!514923 (= res!314635 (and (= (size!16211 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16211 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16211 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514924 () Bool)

(declare-fun e!300693 () Bool)

(assert (=> b!514924 (= e!300697 e!300693)))

(declare-fun res!314639 () Bool)

(assert (=> b!514924 (=> (not res!314639) (not e!300693))))

(declare-fun lt!235781 () SeekEntryResult!4321)

(assert (=> b!514924 (= res!314639 (or (= lt!235781 (MissingZero!4321 i!1204)) (= lt!235781 (MissingVacant!4321 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32964 (_ BitVec 32)) SeekEntryResult!4321)

(assert (=> b!514924 (= lt!235781 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!514925 () Bool)

(declare-fun res!314643 () Bool)

(assert (=> b!514925 (=> (not res!314643) (not e!300697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514925 (= res!314643 (validKeyInArray!0 (select (arr!15847 a!3235) j!176)))))

(declare-fun b!514926 () Bool)

(declare-fun res!314641 () Bool)

(assert (=> b!514926 (=> (not res!314641) (not e!300693))))

(declare-datatypes ((List!10058 0))(
  ( (Nil!10055) (Cons!10054 (h!10952 (_ BitVec 64)) (t!16294 List!10058)) )
))
(declare-fun arrayNoDuplicates!0 (array!32964 (_ BitVec 32) List!10058) Bool)

(assert (=> b!514926 (= res!314641 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10055))))

(declare-fun b!514927 () Bool)

(declare-fun res!314642 () Bool)

(assert (=> b!514927 (=> (not res!314642) (not e!300697))))

(assert (=> b!514927 (= res!314642 (validKeyInArray!0 k0!2280))))

(declare-fun b!514928 () Bool)

(assert (=> b!514928 (= e!300694 true)))

(assert (=> b!514928 (and (bvslt (x!48471 lt!235778) #b01111111111111111111111111111110) (or (= (select (arr!15847 a!3235) (index!19474 lt!235778)) (select (arr!15847 a!3235) j!176)) (= (select (arr!15847 a!3235) (index!19474 lt!235778)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15847 a!3235) (index!19474 lt!235778)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!300696 () Bool)

(declare-fun b!514929 () Bool)

(assert (=> b!514929 (= e!300696 (= (seekEntryOrOpen!0 (select (arr!15847 a!3235) j!176) a!3235 mask!3524) (Found!4321 j!176)))))

(declare-fun b!514930 () Bool)

(declare-fun res!314637 () Bool)

(assert (=> b!514930 (=> (not res!314637) (not e!300693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32964 (_ BitVec 32)) Bool)

(assert (=> b!514930 (= res!314637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514931 () Bool)

(assert (=> b!514931 (= e!300693 (not e!300694))))

(declare-fun res!314645 () Bool)

(assert (=> b!514931 (=> res!314645 e!300694)))

(declare-fun lt!235780 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32964 (_ BitVec 32)) SeekEntryResult!4321)

(assert (=> b!514931 (= res!314645 (= lt!235778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235780 (select (store (arr!15847 a!3235) i!1204 k0!2280) j!176) (array!32965 (store (arr!15847 a!3235) i!1204 k0!2280) (size!16211 a!3235)) mask!3524)))))

(declare-fun lt!235777 () (_ BitVec 32))

(assert (=> b!514931 (= lt!235778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235777 (select (arr!15847 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514931 (= lt!235780 (toIndex!0 (select (store (arr!15847 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!514931 (= lt!235777 (toIndex!0 (select (arr!15847 a!3235) j!176) mask!3524))))

(assert (=> b!514931 e!300696))

(declare-fun res!314640 () Bool)

(assert (=> b!514931 (=> (not res!314640) (not e!300696))))

(assert (=> b!514931 (= res!314640 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15892 0))(
  ( (Unit!15893) )
))
(declare-fun lt!235779 () Unit!15892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32964 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15892)

(assert (=> b!514931 (= lt!235779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46692 res!314636) b!514923))

(assert (= (and b!514923 res!314635) b!514925))

(assert (= (and b!514925 res!314643) b!514927))

(assert (= (and b!514927 res!314642) b!514921))

(assert (= (and b!514921 res!314638) b!514924))

(assert (= (and b!514924 res!314639) b!514930))

(assert (= (and b!514930 res!314637) b!514926))

(assert (= (and b!514926 res!314641) b!514931))

(assert (= (and b!514931 res!314640) b!514929))

(assert (= (and b!514931 (not res!314645)) b!514922))

(assert (= (and b!514922 (not res!314644)) b!514928))

(declare-fun m!496245 () Bool)

(assert (=> start!46692 m!496245))

(declare-fun m!496247 () Bool)

(assert (=> start!46692 m!496247))

(declare-fun m!496249 () Bool)

(assert (=> b!514929 m!496249))

(assert (=> b!514929 m!496249))

(declare-fun m!496251 () Bool)

(assert (=> b!514929 m!496251))

(declare-fun m!496253 () Bool)

(assert (=> b!514927 m!496253))

(assert (=> b!514925 m!496249))

(assert (=> b!514925 m!496249))

(declare-fun m!496255 () Bool)

(assert (=> b!514925 m!496255))

(declare-fun m!496257 () Bool)

(assert (=> b!514921 m!496257))

(declare-fun m!496259 () Bool)

(assert (=> b!514931 m!496259))

(declare-fun m!496261 () Bool)

(assert (=> b!514931 m!496261))

(declare-fun m!496263 () Bool)

(assert (=> b!514931 m!496263))

(assert (=> b!514931 m!496263))

(declare-fun m!496265 () Bool)

(assert (=> b!514931 m!496265))

(assert (=> b!514931 m!496249))

(declare-fun m!496267 () Bool)

(assert (=> b!514931 m!496267))

(assert (=> b!514931 m!496249))

(declare-fun m!496269 () Bool)

(assert (=> b!514931 m!496269))

(assert (=> b!514931 m!496249))

(declare-fun m!496271 () Bool)

(assert (=> b!514931 m!496271))

(assert (=> b!514931 m!496263))

(declare-fun m!496273 () Bool)

(assert (=> b!514931 m!496273))

(declare-fun m!496275 () Bool)

(assert (=> b!514926 m!496275))

(declare-fun m!496277 () Bool)

(assert (=> b!514930 m!496277))

(declare-fun m!496279 () Bool)

(assert (=> b!514924 m!496279))

(declare-fun m!496281 () Bool)

(assert (=> b!514928 m!496281))

(assert (=> b!514928 m!496249))

(check-sat (not b!514921) (not start!46692) (not b!514931) (not b!514929) (not b!514925) (not b!514927) (not b!514926) (not b!514930) (not b!514924))
(check-sat)
