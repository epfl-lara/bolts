; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45726 () Bool)

(assert start!45726)

(declare-fun b!504991 () Bool)

(declare-fun e!295646 () Bool)

(assert (=> b!504991 (= e!295646 false)))

(declare-fun e!295645 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32442 0))(
  ( (array!32443 (arr!15598 (Array (_ BitVec 32) (_ BitVec 64))) (size!15962 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32442)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!504992 () Bool)

(declare-datatypes ((SeekEntryResult!4072 0))(
  ( (MissingZero!4072 (index!18476 (_ BitVec 32))) (Found!4072 (index!18477 (_ BitVec 32))) (Intermediate!4072 (undefined!4884 Bool) (index!18478 (_ BitVec 32)) (x!47516 (_ BitVec 32))) (Undefined!4072) (MissingVacant!4072 (index!18479 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32442 (_ BitVec 32)) SeekEntryResult!4072)

(assert (=> b!504992 (= e!295645 (= (seekEntryOrOpen!0 (select (arr!15598 a!3235) j!176) a!3235 mask!3524) (Found!4072 j!176)))))

(declare-fun b!504993 () Bool)

(declare-fun res!306246 () Bool)

(declare-fun e!295648 () Bool)

(assert (=> b!504993 (=> (not res!306246) (not e!295648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32442 (_ BitVec 32)) Bool)

(assert (=> b!504993 (= res!306246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!306234 () Bool)

(declare-fun e!295641 () Bool)

(assert (=> start!45726 (=> (not res!306234) (not e!295641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45726 (= res!306234 (validMask!0 mask!3524))))

(assert (=> start!45726 e!295641))

(assert (=> start!45726 true))

(declare-fun array_inv!11372 (array!32442) Bool)

(assert (=> start!45726 (array_inv!11372 a!3235)))

(declare-fun b!504994 () Bool)

(declare-fun res!306240 () Bool)

(assert (=> b!504994 (=> (not res!306240) (not e!295648))))

(declare-datatypes ((List!9809 0))(
  ( (Nil!9806) (Cons!9805 (h!10682 (_ BitVec 64)) (t!16045 List!9809)) )
))
(declare-fun arrayNoDuplicates!0 (array!32442 (_ BitVec 32) List!9809) Bool)

(assert (=> b!504994 (= res!306240 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9806))))

(declare-fun b!504995 () Bool)

(declare-fun res!306235 () Bool)

(declare-fun e!295647 () Bool)

(assert (=> b!504995 (=> res!306235 e!295647)))

(declare-fun e!295643 () Bool)

(assert (=> b!504995 (= res!306235 e!295643)))

(declare-fun res!306239 () Bool)

(assert (=> b!504995 (=> (not res!306239) (not e!295643))))

(declare-fun lt!230133 () SeekEntryResult!4072)

(assert (=> b!504995 (= res!306239 (bvsgt #b00000000000000000000000000000000 (x!47516 lt!230133)))))

(declare-fun b!504996 () Bool)

(declare-fun e!295642 () Bool)

(assert (=> b!504996 (= e!295642 e!295647)))

(declare-fun res!306242 () Bool)

(assert (=> b!504996 (=> res!306242 e!295647)))

(declare-fun lt!230131 () (_ BitVec 32))

(assert (=> b!504996 (= res!306242 (or (bvsgt (x!47516 lt!230133) #b01111111111111111111111111111110) (bvslt lt!230131 #b00000000000000000000000000000000) (bvsge lt!230131 (size!15962 a!3235)) (bvslt (index!18478 lt!230133) #b00000000000000000000000000000000) (bvsge (index!18478 lt!230133) (size!15962 a!3235)) (not (= lt!230133 (Intermediate!4072 false (index!18478 lt!230133) (x!47516 lt!230133))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504996 (= (index!18478 lt!230133) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!15378 0))(
  ( (Unit!15379) )
))
(declare-fun lt!230134 () Unit!15378)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15378)

(assert (=> b!504996 (= lt!230134 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230131 #b00000000000000000000000000000000 (index!18478 lt!230133) (x!47516 lt!230133) mask!3524))))

(assert (=> b!504996 (and (or (= (select (arr!15598 a!3235) (index!18478 lt!230133)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15598 a!3235) (index!18478 lt!230133)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15598 a!3235) (index!18478 lt!230133)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15598 a!3235) (index!18478 lt!230133)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230132 () Unit!15378)

(declare-fun e!295644 () Unit!15378)

(assert (=> b!504996 (= lt!230132 e!295644)))

(declare-fun c!59657 () Bool)

(assert (=> b!504996 (= c!59657 (= (select (arr!15598 a!3235) (index!18478 lt!230133)) (select (arr!15598 a!3235) j!176)))))

(assert (=> b!504996 (and (bvslt (x!47516 lt!230133) #b01111111111111111111111111111110) (or (= (select (arr!15598 a!3235) (index!18478 lt!230133)) (select (arr!15598 a!3235) j!176)) (= (select (arr!15598 a!3235) (index!18478 lt!230133)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15598 a!3235) (index!18478 lt!230133)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504997 () Bool)

(declare-fun res!306238 () Bool)

(assert (=> b!504997 (=> (not res!306238) (not e!295641))))

(declare-fun arrayContainsKey!0 (array!32442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504997 (= res!306238 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504998 () Bool)

(assert (=> b!504998 (= e!295641 e!295648)))

(declare-fun res!306244 () Bool)

(assert (=> b!504998 (=> (not res!306244) (not e!295648))))

(declare-fun lt!230138 () SeekEntryResult!4072)

(assert (=> b!504998 (= res!306244 (or (= lt!230138 (MissingZero!4072 i!1204)) (= lt!230138 (MissingVacant!4072 i!1204))))))

(assert (=> b!504998 (= lt!230138 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!504999 () Bool)

(declare-fun res!306243 () Bool)

(assert (=> b!504999 (=> (not res!306243) (not e!295641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504999 (= res!306243 (validKeyInArray!0 (select (arr!15598 a!3235) j!176)))))

(declare-fun b!505000 () Bool)

(assert (=> b!505000 (= e!295648 (not e!295642))))

(declare-fun res!306237 () Bool)

(assert (=> b!505000 (=> res!306237 e!295642)))

(declare-fun lt!230136 () SeekEntryResult!4072)

(get-info :version)

(assert (=> b!505000 (= res!306237 (or (= lt!230133 lt!230136) (undefined!4884 lt!230133) (not ((_ is Intermediate!4072) lt!230133))))))

(declare-fun lt!230128 () (_ BitVec 32))

(declare-fun lt!230129 () array!32442)

(declare-fun lt!230127 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32442 (_ BitVec 32)) SeekEntryResult!4072)

(assert (=> b!505000 (= lt!230136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230128 lt!230127 lt!230129 mask!3524))))

(assert (=> b!505000 (= lt!230133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230131 (select (arr!15598 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505000 (= lt!230128 (toIndex!0 lt!230127 mask!3524))))

(assert (=> b!505000 (= lt!230127 (select (store (arr!15598 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!505000 (= lt!230131 (toIndex!0 (select (arr!15598 a!3235) j!176) mask!3524))))

(assert (=> b!505000 (= lt!230129 (array!32443 (store (arr!15598 a!3235) i!1204 k0!2280) (size!15962 a!3235)))))

(declare-fun lt!230126 () SeekEntryResult!4072)

(assert (=> b!505000 (= lt!230126 (Found!4072 j!176))))

(assert (=> b!505000 e!295645))

(declare-fun res!306236 () Bool)

(assert (=> b!505000 (=> (not res!306236) (not e!295645))))

(assert (=> b!505000 (= res!306236 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230137 () Unit!15378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15378)

(assert (=> b!505000 (= lt!230137 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505001 () Bool)

(declare-fun Unit!15380 () Unit!15378)

(assert (=> b!505001 (= e!295644 Unit!15380)))

(declare-fun b!505002 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32442 (_ BitVec 32)) SeekEntryResult!4072)

(assert (=> b!505002 (= e!295643 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230131 (index!18478 lt!230133) (select (arr!15598 a!3235) j!176) a!3235 mask!3524) lt!230126)))))

(declare-fun b!505003 () Bool)

(declare-fun res!306241 () Bool)

(assert (=> b!505003 (=> (not res!306241) (not e!295641))))

(assert (=> b!505003 (= res!306241 (and (= (size!15962 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15962 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15962 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505004 () Bool)

(declare-fun res!306248 () Bool)

(assert (=> b!505004 (=> (not res!306248) (not e!295641))))

(assert (=> b!505004 (= res!306248 (validKeyInArray!0 k0!2280))))

(declare-fun b!505005 () Bool)

(assert (=> b!505005 (= e!295647 true)))

(assert (=> b!505005 (= (seekEntryOrOpen!0 lt!230127 lt!230129 mask!3524) lt!230126)))

(declare-fun lt!230130 () Unit!15378)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15378)

(assert (=> b!505005 (= lt!230130 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230131 #b00000000000000000000000000000000 (index!18478 lt!230133) (x!47516 lt!230133) mask!3524))))

(declare-fun b!505006 () Bool)

(declare-fun Unit!15381 () Unit!15378)

(assert (=> b!505006 (= e!295644 Unit!15381)))

(declare-fun lt!230135 () Unit!15378)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32442 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15378)

(assert (=> b!505006 (= lt!230135 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230131 #b00000000000000000000000000000000 (index!18478 lt!230133) (x!47516 lt!230133) mask!3524))))

(declare-fun res!306247 () Bool)

(assert (=> b!505006 (= res!306247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230131 lt!230127 lt!230129 mask!3524) (Intermediate!4072 false (index!18478 lt!230133) (x!47516 lt!230133))))))

(assert (=> b!505006 (=> (not res!306247) (not e!295646))))

(assert (=> b!505006 e!295646))

(declare-fun b!505007 () Bool)

(declare-fun res!306245 () Bool)

(assert (=> b!505007 (=> res!306245 e!295647)))

(assert (=> b!505007 (= res!306245 (not (= lt!230136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230131 lt!230127 lt!230129 mask!3524))))))

(assert (= (and start!45726 res!306234) b!505003))

(assert (= (and b!505003 res!306241) b!504999))

(assert (= (and b!504999 res!306243) b!505004))

(assert (= (and b!505004 res!306248) b!504997))

(assert (= (and b!504997 res!306238) b!504998))

(assert (= (and b!504998 res!306244) b!504993))

(assert (= (and b!504993 res!306246) b!504994))

(assert (= (and b!504994 res!306240) b!505000))

(assert (= (and b!505000 res!306236) b!504992))

(assert (= (and b!505000 (not res!306237)) b!504996))

(assert (= (and b!504996 c!59657) b!505006))

(assert (= (and b!504996 (not c!59657)) b!505001))

(assert (= (and b!505006 res!306247) b!504991))

(assert (= (and b!504996 (not res!306242)) b!504995))

(assert (= (and b!504995 res!306239) b!505002))

(assert (= (and b!504995 (not res!306235)) b!505007))

(assert (= (and b!505007 (not res!306245)) b!505005))

(declare-fun m!485697 () Bool)

(assert (=> b!504993 m!485697))

(declare-fun m!485699 () Bool)

(assert (=> b!504997 m!485699))

(declare-fun m!485701 () Bool)

(assert (=> b!505004 m!485701))

(declare-fun m!485703 () Bool)

(assert (=> b!504998 m!485703))

(declare-fun m!485705 () Bool)

(assert (=> b!505005 m!485705))

(declare-fun m!485707 () Bool)

(assert (=> b!505005 m!485707))

(declare-fun m!485709 () Bool)

(assert (=> b!505000 m!485709))

(declare-fun m!485711 () Bool)

(assert (=> b!505000 m!485711))

(declare-fun m!485713 () Bool)

(assert (=> b!505000 m!485713))

(declare-fun m!485715 () Bool)

(assert (=> b!505000 m!485715))

(declare-fun m!485717 () Bool)

(assert (=> b!505000 m!485717))

(declare-fun m!485719 () Bool)

(assert (=> b!505000 m!485719))

(assert (=> b!505000 m!485717))

(declare-fun m!485721 () Bool)

(assert (=> b!505000 m!485721))

(assert (=> b!505000 m!485717))

(declare-fun m!485723 () Bool)

(assert (=> b!505000 m!485723))

(declare-fun m!485725 () Bool)

(assert (=> b!505000 m!485725))

(declare-fun m!485727 () Bool)

(assert (=> b!505007 m!485727))

(assert (=> b!504999 m!485717))

(assert (=> b!504999 m!485717))

(declare-fun m!485729 () Bool)

(assert (=> b!504999 m!485729))

(assert (=> b!504992 m!485717))

(assert (=> b!504992 m!485717))

(declare-fun m!485731 () Bool)

(assert (=> b!504992 m!485731))

(declare-fun m!485733 () Bool)

(assert (=> b!504996 m!485733))

(declare-fun m!485735 () Bool)

(assert (=> b!504996 m!485735))

(assert (=> b!504996 m!485717))

(assert (=> b!505002 m!485717))

(assert (=> b!505002 m!485717))

(declare-fun m!485737 () Bool)

(assert (=> b!505002 m!485737))

(declare-fun m!485739 () Bool)

(assert (=> b!504994 m!485739))

(declare-fun m!485741 () Bool)

(assert (=> b!505006 m!485741))

(assert (=> b!505006 m!485727))

(declare-fun m!485743 () Bool)

(assert (=> start!45726 m!485743))

(declare-fun m!485745 () Bool)

(assert (=> start!45726 m!485745))

(check-sat (not start!45726) (not b!504999) (not b!504998) (not b!505004) (not b!504996) (not b!505000) (not b!504994) (not b!504997) (not b!505007) (not b!504993) (not b!505002) (not b!504992) (not b!505006) (not b!505005))
(check-sat)
