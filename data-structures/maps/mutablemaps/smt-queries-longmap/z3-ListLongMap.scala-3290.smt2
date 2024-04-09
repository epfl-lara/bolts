; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45696 () Bool)

(assert start!45696)

(declare-fun b!504226 () Bool)

(declare-fun e!295242 () Bool)

(declare-fun e!295239 () Bool)

(assert (=> b!504226 (= e!295242 e!295239)))

(declare-fun res!305570 () Bool)

(assert (=> b!504226 (=> res!305570 e!295239)))

(declare-datatypes ((array!32412 0))(
  ( (array!32413 (arr!15583 (Array (_ BitVec 32) (_ BitVec 64))) (size!15947 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32412)

(declare-datatypes ((SeekEntryResult!4057 0))(
  ( (MissingZero!4057 (index!18416 (_ BitVec 32))) (Found!4057 (index!18417 (_ BitVec 32))) (Intermediate!4057 (undefined!4869 Bool) (index!18418 (_ BitVec 32)) (x!47461 (_ BitVec 32))) (Undefined!4057) (MissingVacant!4057 (index!18419 (_ BitVec 32))) )
))
(declare-fun lt!229630 () SeekEntryResult!4057)

(declare-fun lt!229626 () (_ BitVec 32))

(assert (=> b!504226 (= res!305570 (or (bvsgt (x!47461 lt!229630) #b01111111111111111111111111111110) (bvslt lt!229626 #b00000000000000000000000000000000) (bvsge lt!229626 (size!15947 a!3235)) (bvslt (index!18418 lt!229630) #b00000000000000000000000000000000) (bvsge (index!18418 lt!229630) (size!15947 a!3235)) (not (= lt!229630 (Intermediate!4057 false (index!18418 lt!229630) (x!47461 lt!229630))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504226 (= (index!18418 lt!229630) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!15318 0))(
  ( (Unit!15319) )
))
(declare-fun lt!229624 () Unit!15318)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32412 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15318)

(assert (=> b!504226 (= lt!229624 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229626 #b00000000000000000000000000000000 (index!18418 lt!229630) (x!47461 lt!229630) mask!3524))))

(assert (=> b!504226 (and (or (= (select (arr!15583 a!3235) (index!18418 lt!229630)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15583 a!3235) (index!18418 lt!229630)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15583 a!3235) (index!18418 lt!229630)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15583 a!3235) (index!18418 lt!229630)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229625 () Unit!15318)

(declare-fun e!295240 () Unit!15318)

(assert (=> b!504226 (= lt!229625 e!295240)))

(declare-fun c!59612 () Bool)

(assert (=> b!504226 (= c!59612 (= (select (arr!15583 a!3235) (index!18418 lt!229630)) (select (arr!15583 a!3235) j!176)))))

(assert (=> b!504226 (and (bvslt (x!47461 lt!229630) #b01111111111111111111111111111110) (or (= (select (arr!15583 a!3235) (index!18418 lt!229630)) (select (arr!15583 a!3235) j!176)) (= (select (arr!15583 a!3235) (index!18418 lt!229630)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15583 a!3235) (index!18418 lt!229630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504227 () Bool)

(declare-fun res!305573 () Bool)

(declare-fun e!295236 () Bool)

(assert (=> b!504227 (=> (not res!305573) (not e!295236))))

(declare-fun arrayContainsKey!0 (array!32412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504227 (= res!305573 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504228 () Bool)

(declare-fun e!295243 () Bool)

(assert (=> b!504228 (= e!295236 e!295243)))

(declare-fun res!305561 () Bool)

(assert (=> b!504228 (=> (not res!305561) (not e!295243))))

(declare-fun lt!229629 () SeekEntryResult!4057)

(assert (=> b!504228 (= res!305561 (or (= lt!229629 (MissingZero!4057 i!1204)) (= lt!229629 (MissingVacant!4057 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32412 (_ BitVec 32)) SeekEntryResult!4057)

(assert (=> b!504228 (= lt!229629 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!504229 () Bool)

(assert (=> b!504229 (= e!295239 true)))

(declare-fun lt!229623 () (_ BitVec 64))

(declare-fun lt!229628 () array!32412)

(declare-fun lt!229631 () SeekEntryResult!4057)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32412 (_ BitVec 32)) SeekEntryResult!4057)

(assert (=> b!504229 (= lt!229631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229626 lt!229623 lt!229628 mask!3524))))

(declare-fun e!295241 () Bool)

(declare-fun b!504230 () Bool)

(assert (=> b!504230 (= e!295241 (= (seekEntryOrOpen!0 (select (arr!15583 a!3235) j!176) a!3235 mask!3524) (Found!4057 j!176)))))

(declare-fun b!504231 () Bool)

(declare-fun Unit!15320 () Unit!15318)

(assert (=> b!504231 (= e!295240 Unit!15320)))

(declare-fun lt!229621 () Unit!15318)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32412 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15318)

(assert (=> b!504231 (= lt!229621 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229626 #b00000000000000000000000000000000 (index!18418 lt!229630) (x!47461 lt!229630) mask!3524))))

(declare-fun res!305565 () Bool)

(assert (=> b!504231 (= res!305565 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229626 lt!229623 lt!229628 mask!3524) (Intermediate!4057 false (index!18418 lt!229630) (x!47461 lt!229630))))))

(declare-fun e!295235 () Bool)

(assert (=> b!504231 (=> (not res!305565) (not e!295235))))

(assert (=> b!504231 e!295235))

(declare-fun b!504232 () Bool)

(declare-fun res!305559 () Bool)

(assert (=> b!504232 (=> (not res!305559) (not e!295243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32412 (_ BitVec 32)) Bool)

(assert (=> b!504232 (= res!305559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504233 () Bool)

(declare-fun Unit!15321 () Unit!15318)

(assert (=> b!504233 (= e!295240 Unit!15321)))

(declare-fun res!305563 () Bool)

(assert (=> start!45696 (=> (not res!305563) (not e!295236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45696 (= res!305563 (validMask!0 mask!3524))))

(assert (=> start!45696 e!295236))

(assert (=> start!45696 true))

(declare-fun array_inv!11357 (array!32412) Bool)

(assert (=> start!45696 (array_inv!11357 a!3235)))

(declare-fun b!504234 () Bool)

(assert (=> b!504234 (= e!295235 false)))

(declare-fun b!504235 () Bool)

(declare-fun res!305562 () Bool)

(assert (=> b!504235 (=> (not res!305562) (not e!295243))))

(declare-datatypes ((List!9794 0))(
  ( (Nil!9791) (Cons!9790 (h!10667 (_ BitVec 64)) (t!16030 List!9794)) )
))
(declare-fun arrayNoDuplicates!0 (array!32412 (_ BitVec 32) List!9794) Bool)

(assert (=> b!504235 (= res!305562 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9791))))

(declare-fun b!504236 () Bool)

(declare-fun res!305569 () Bool)

(assert (=> b!504236 (=> (not res!305569) (not e!295236))))

(assert (=> b!504236 (= res!305569 (and (= (size!15947 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15947 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15947 a!3235)) (not (= i!1204 j!176))))))

(declare-fun e!295238 () Bool)

(declare-fun b!504237 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32412 (_ BitVec 32)) SeekEntryResult!4057)

(assert (=> b!504237 (= e!295238 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229626 (index!18418 lt!229630) (select (arr!15583 a!3235) j!176) a!3235 mask!3524) (Found!4057 j!176))))))

(declare-fun b!504238 () Bool)

(declare-fun res!305568 () Bool)

(assert (=> b!504238 (=> res!305568 e!295239)))

(assert (=> b!504238 (= res!305568 e!295238)))

(declare-fun res!305572 () Bool)

(assert (=> b!504238 (=> (not res!305572) (not e!295238))))

(assert (=> b!504238 (= res!305572 (bvsgt #b00000000000000000000000000000000 (x!47461 lt!229630)))))

(declare-fun b!504239 () Bool)

(declare-fun res!305566 () Bool)

(assert (=> b!504239 (=> (not res!305566) (not e!295236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504239 (= res!305566 (validKeyInArray!0 (select (arr!15583 a!3235) j!176)))))

(declare-fun b!504240 () Bool)

(declare-fun res!305571 () Bool)

(assert (=> b!504240 (=> res!305571 e!295242)))

(get-info :version)

(assert (=> b!504240 (= res!305571 (or (undefined!4869 lt!229630) (not ((_ is Intermediate!4057) lt!229630))))))

(declare-fun b!504241 () Bool)

(declare-fun res!305567 () Bool)

(assert (=> b!504241 (=> (not res!305567) (not e!295236))))

(assert (=> b!504241 (= res!305567 (validKeyInArray!0 k0!2280))))

(declare-fun b!504242 () Bool)

(assert (=> b!504242 (= e!295243 (not e!295242))))

(declare-fun res!305564 () Bool)

(assert (=> b!504242 (=> res!305564 e!295242)))

(declare-fun lt!229622 () (_ BitVec 32))

(assert (=> b!504242 (= res!305564 (= lt!229630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229622 lt!229623 lt!229628 mask!3524)))))

(assert (=> b!504242 (= lt!229630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229626 (select (arr!15583 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504242 (= lt!229622 (toIndex!0 lt!229623 mask!3524))))

(assert (=> b!504242 (= lt!229623 (select (store (arr!15583 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!504242 (= lt!229626 (toIndex!0 (select (arr!15583 a!3235) j!176) mask!3524))))

(assert (=> b!504242 (= lt!229628 (array!32413 (store (arr!15583 a!3235) i!1204 k0!2280) (size!15947 a!3235)))))

(assert (=> b!504242 e!295241))

(declare-fun res!305560 () Bool)

(assert (=> b!504242 (=> (not res!305560) (not e!295241))))

(assert (=> b!504242 (= res!305560 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229627 () Unit!15318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32412 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15318)

(assert (=> b!504242 (= lt!229627 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45696 res!305563) b!504236))

(assert (= (and b!504236 res!305569) b!504239))

(assert (= (and b!504239 res!305566) b!504241))

(assert (= (and b!504241 res!305567) b!504227))

(assert (= (and b!504227 res!305573) b!504228))

(assert (= (and b!504228 res!305561) b!504232))

(assert (= (and b!504232 res!305559) b!504235))

(assert (= (and b!504235 res!305562) b!504242))

(assert (= (and b!504242 res!305560) b!504230))

(assert (= (and b!504242 (not res!305564)) b!504240))

(assert (= (and b!504240 (not res!305571)) b!504226))

(assert (= (and b!504226 c!59612) b!504231))

(assert (= (and b!504226 (not c!59612)) b!504233))

(assert (= (and b!504231 res!305565) b!504234))

(assert (= (and b!504226 (not res!305570)) b!504238))

(assert (= (and b!504238 res!305572) b!504237))

(assert (= (and b!504238 (not res!305568)) b!504229))

(declare-fun m!485003 () Bool)

(assert (=> b!504232 m!485003))

(declare-fun m!485005 () Bool)

(assert (=> b!504229 m!485005))

(declare-fun m!485007 () Bool)

(assert (=> b!504230 m!485007))

(assert (=> b!504230 m!485007))

(declare-fun m!485009 () Bool)

(assert (=> b!504230 m!485009))

(assert (=> b!504237 m!485007))

(assert (=> b!504237 m!485007))

(declare-fun m!485011 () Bool)

(assert (=> b!504237 m!485011))

(assert (=> b!504239 m!485007))

(assert (=> b!504239 m!485007))

(declare-fun m!485013 () Bool)

(assert (=> b!504239 m!485013))

(declare-fun m!485015 () Bool)

(assert (=> b!504235 m!485015))

(declare-fun m!485017 () Bool)

(assert (=> b!504231 m!485017))

(assert (=> b!504231 m!485005))

(declare-fun m!485019 () Bool)

(assert (=> b!504242 m!485019))

(declare-fun m!485021 () Bool)

(assert (=> b!504242 m!485021))

(declare-fun m!485023 () Bool)

(assert (=> b!504242 m!485023))

(declare-fun m!485025 () Bool)

(assert (=> b!504242 m!485025))

(assert (=> b!504242 m!485007))

(declare-fun m!485027 () Bool)

(assert (=> b!504242 m!485027))

(declare-fun m!485029 () Bool)

(assert (=> b!504242 m!485029))

(assert (=> b!504242 m!485007))

(declare-fun m!485031 () Bool)

(assert (=> b!504242 m!485031))

(assert (=> b!504242 m!485007))

(declare-fun m!485033 () Bool)

(assert (=> b!504242 m!485033))

(declare-fun m!485035 () Bool)

(assert (=> b!504228 m!485035))

(declare-fun m!485037 () Bool)

(assert (=> b!504227 m!485037))

(declare-fun m!485039 () Bool)

(assert (=> start!45696 m!485039))

(declare-fun m!485041 () Bool)

(assert (=> start!45696 m!485041))

(declare-fun m!485043 () Bool)

(assert (=> b!504226 m!485043))

(declare-fun m!485045 () Bool)

(assert (=> b!504226 m!485045))

(assert (=> b!504226 m!485007))

(declare-fun m!485047 () Bool)

(assert (=> b!504241 m!485047))

(check-sat (not b!504227) (not b!504231) (not b!504229) (not b!504241) (not b!504235) (not b!504232) (not b!504230) (not b!504237) (not b!504242) (not b!504226) (not start!45696) (not b!504228) (not b!504239))
(check-sat)
