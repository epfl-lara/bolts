; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45216 () Bool)

(assert start!45216)

(declare-fun b!496027 () Bool)

(declare-fun e!290917 () Bool)

(declare-fun e!290916 () Bool)

(assert (=> b!496027 (= e!290917 (not e!290916))))

(declare-fun res!298564 () Bool)

(assert (=> b!496027 (=> res!298564 e!290916)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32064 0))(
  ( (array!32065 (arr!15412 (Array (_ BitVec 32) (_ BitVec 64))) (size!15776 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32064)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3886 0))(
  ( (MissingZero!3886 (index!17723 (_ BitVec 32))) (Found!3886 (index!17724 (_ BitVec 32))) (Intermediate!3886 (undefined!4698 Bool) (index!17725 (_ BitVec 32)) (x!46813 (_ BitVec 32))) (Undefined!3886) (MissingVacant!3886 (index!17726 (_ BitVec 32))) )
))
(declare-fun lt!224607 () SeekEntryResult!3886)

(declare-fun lt!224605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32064 (_ BitVec 32)) SeekEntryResult!3886)

(assert (=> b!496027 (= res!298564 (= lt!224607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224605 (select (store (arr!15412 a!3235) i!1204 k0!2280) j!176) (array!32065 (store (arr!15412 a!3235) i!1204 k0!2280) (size!15776 a!3235)) mask!3524)))))

(declare-fun lt!224606 () (_ BitVec 32))

(assert (=> b!496027 (= lt!224607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224606 (select (arr!15412 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496027 (= lt!224605 (toIndex!0 (select (store (arr!15412 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496027 (= lt!224606 (toIndex!0 (select (arr!15412 a!3235) j!176) mask!3524))))

(declare-fun e!290919 () Bool)

(assert (=> b!496027 e!290919))

(declare-fun res!298568 () Bool)

(assert (=> b!496027 (=> (not res!298568) (not e!290919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32064 (_ BitVec 32)) Bool)

(assert (=> b!496027 (= res!298568 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14710 0))(
  ( (Unit!14711) )
))
(declare-fun lt!224609 () Unit!14710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32064 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14710)

(assert (=> b!496027 (= lt!224609 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496028 () Bool)

(declare-fun res!298570 () Bool)

(declare-fun e!290920 () Bool)

(assert (=> b!496028 (=> (not res!298570) (not e!290920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496028 (= res!298570 (validKeyInArray!0 k0!2280))))

(declare-fun b!496029 () Bool)

(assert (=> b!496029 (= e!290920 e!290917)))

(declare-fun res!298571 () Bool)

(assert (=> b!496029 (=> (not res!298571) (not e!290917))))

(declare-fun lt!224608 () SeekEntryResult!3886)

(assert (=> b!496029 (= res!298571 (or (= lt!224608 (MissingZero!3886 i!1204)) (= lt!224608 (MissingVacant!3886 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32064 (_ BitVec 32)) SeekEntryResult!3886)

(assert (=> b!496029 (= lt!224608 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496030 () Bool)

(assert (=> b!496030 (= e!290919 (= (seekEntryOrOpen!0 (select (arr!15412 a!3235) j!176) a!3235 mask!3524) (Found!3886 j!176)))))

(declare-fun res!298569 () Bool)

(assert (=> start!45216 (=> (not res!298569) (not e!290920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45216 (= res!298569 (validMask!0 mask!3524))))

(assert (=> start!45216 e!290920))

(assert (=> start!45216 true))

(declare-fun array_inv!11186 (array!32064) Bool)

(assert (=> start!45216 (array_inv!11186 a!3235)))

(declare-fun b!496031 () Bool)

(declare-fun res!298573 () Bool)

(assert (=> b!496031 (=> (not res!298573) (not e!290920))))

(declare-fun arrayContainsKey!0 (array!32064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496031 (= res!298573 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496032 () Bool)

(declare-fun res!298566 () Bool)

(assert (=> b!496032 (=> (not res!298566) (not e!290917))))

(declare-datatypes ((List!9623 0))(
  ( (Nil!9620) (Cons!9619 (h!10490 (_ BitVec 64)) (t!15859 List!9623)) )
))
(declare-fun arrayNoDuplicates!0 (array!32064 (_ BitVec 32) List!9623) Bool)

(assert (=> b!496032 (= res!298566 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9620))))

(declare-fun b!496033 () Bool)

(declare-fun res!298567 () Bool)

(assert (=> b!496033 (=> res!298567 e!290916)))

(get-info :version)

(assert (=> b!496033 (= res!298567 (or (undefined!4698 lt!224607) (not ((_ is Intermediate!3886) lt!224607))))))

(declare-fun b!496034 () Bool)

(declare-fun res!298574 () Bool)

(assert (=> b!496034 (=> (not res!298574) (not e!290917))))

(assert (=> b!496034 (= res!298574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496035 () Bool)

(declare-fun res!298565 () Bool)

(assert (=> b!496035 (=> (not res!298565) (not e!290920))))

(assert (=> b!496035 (= res!298565 (validKeyInArray!0 (select (arr!15412 a!3235) j!176)))))

(declare-fun b!496036 () Bool)

(assert (=> b!496036 (= e!290916 true)))

(assert (=> b!496036 (and (bvslt (x!46813 lt!224607) #b01111111111111111111111111111110) (or (= (select (arr!15412 a!3235) (index!17725 lt!224607)) (select (arr!15412 a!3235) j!176)) (= (select (arr!15412 a!3235) (index!17725 lt!224607)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15412 a!3235) (index!17725 lt!224607)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496037 () Bool)

(declare-fun res!298572 () Bool)

(assert (=> b!496037 (=> (not res!298572) (not e!290920))))

(assert (=> b!496037 (= res!298572 (and (= (size!15776 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15776 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15776 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45216 res!298569) b!496037))

(assert (= (and b!496037 res!298572) b!496035))

(assert (= (and b!496035 res!298565) b!496028))

(assert (= (and b!496028 res!298570) b!496031))

(assert (= (and b!496031 res!298573) b!496029))

(assert (= (and b!496029 res!298571) b!496034))

(assert (= (and b!496034 res!298574) b!496032))

(assert (= (and b!496032 res!298566) b!496027))

(assert (= (and b!496027 res!298568) b!496030))

(assert (= (and b!496027 (not res!298564)) b!496033))

(assert (= (and b!496033 (not res!298567)) b!496036))

(declare-fun m!477267 () Bool)

(assert (=> start!45216 m!477267))

(declare-fun m!477269 () Bool)

(assert (=> start!45216 m!477269))

(declare-fun m!477271 () Bool)

(assert (=> b!496030 m!477271))

(assert (=> b!496030 m!477271))

(declare-fun m!477273 () Bool)

(assert (=> b!496030 m!477273))

(declare-fun m!477275 () Bool)

(assert (=> b!496032 m!477275))

(declare-fun m!477277 () Bool)

(assert (=> b!496028 m!477277))

(declare-fun m!477279 () Bool)

(assert (=> b!496029 m!477279))

(declare-fun m!477281 () Bool)

(assert (=> b!496034 m!477281))

(assert (=> b!496035 m!477271))

(assert (=> b!496035 m!477271))

(declare-fun m!477283 () Bool)

(assert (=> b!496035 m!477283))

(declare-fun m!477285 () Bool)

(assert (=> b!496036 m!477285))

(assert (=> b!496036 m!477271))

(declare-fun m!477287 () Bool)

(assert (=> b!496031 m!477287))

(declare-fun m!477289 () Bool)

(assert (=> b!496027 m!477289))

(declare-fun m!477291 () Bool)

(assert (=> b!496027 m!477291))

(assert (=> b!496027 m!477271))

(declare-fun m!477293 () Bool)

(assert (=> b!496027 m!477293))

(assert (=> b!496027 m!477271))

(declare-fun m!477295 () Bool)

(assert (=> b!496027 m!477295))

(assert (=> b!496027 m!477271))

(declare-fun m!477297 () Bool)

(assert (=> b!496027 m!477297))

(declare-fun m!477299 () Bool)

(assert (=> b!496027 m!477299))

(declare-fun m!477301 () Bool)

(assert (=> b!496027 m!477301))

(assert (=> b!496027 m!477299))

(declare-fun m!477303 () Bool)

(assert (=> b!496027 m!477303))

(assert (=> b!496027 m!477299))

(check-sat (not start!45216) (not b!496032) (not b!496035) (not b!496034) (not b!496028) (not b!496030) (not b!496029) (not b!496027) (not b!496031))
(check-sat)
