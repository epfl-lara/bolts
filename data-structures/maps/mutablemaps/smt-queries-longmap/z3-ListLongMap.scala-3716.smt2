; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51112 () Bool)

(assert start!51112)

(declare-fun b!558226 () Bool)

(declare-fun res!350242 () Bool)

(declare-fun e!321585 () Bool)

(assert (=> b!558226 (=> (not res!350242) (not e!321585))))

(declare-datatypes ((array!35120 0))(
  ( (array!35121 (arr!16861 (Array (_ BitVec 32) (_ BitVec 64))) (size!17225 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35120)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35120 (_ BitVec 32)) Bool)

(assert (=> b!558226 (= res!350242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558227 () Bool)

(declare-fun res!350246 () Bool)

(declare-fun e!321582 () Bool)

(assert (=> b!558227 (=> (not res!350246) (not e!321582))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558227 (= res!350246 (validKeyInArray!0 (select (arr!16861 a!3118) j!142)))))

(declare-fun res!350243 () Bool)

(assert (=> start!51112 (=> (not res!350243) (not e!321582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51112 (= res!350243 (validMask!0 mask!3119))))

(assert (=> start!51112 e!321582))

(assert (=> start!51112 true))

(declare-fun array_inv!12635 (array!35120) Bool)

(assert (=> start!51112 (array_inv!12635 a!3118)))

(declare-datatypes ((SeekEntryResult!5317 0))(
  ( (MissingZero!5317 (index!23495 (_ BitVec 32))) (Found!5317 (index!23496 (_ BitVec 32))) (Intermediate!5317 (undefined!6129 Bool) (index!23497 (_ BitVec 32)) (x!52420 (_ BitVec 32))) (Undefined!5317) (MissingVacant!5317 (index!23498 (_ BitVec 32))) )
))
(declare-fun lt!253733 () SeekEntryResult!5317)

(declare-fun e!321583 () Bool)

(declare-fun b!558228 () Bool)

(get-info :version)

(assert (=> b!558228 (= e!321583 (not (or (undefined!6129 lt!253733) (not ((_ is Intermediate!5317) lt!253733)) (= (select (arr!16861 a!3118) (index!23497 lt!253733)) (select (arr!16861 a!3118) j!142)) (= (select (arr!16861 a!3118) (index!23497 lt!253733)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!321586 () Bool)

(assert (=> b!558228 e!321586))

(declare-fun res!350244 () Bool)

(assert (=> b!558228 (=> (not res!350244) (not e!321586))))

(declare-fun lt!253728 () SeekEntryResult!5317)

(assert (=> b!558228 (= res!350244 (= lt!253728 (Found!5317 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35120 (_ BitVec 32)) SeekEntryResult!5317)

(assert (=> b!558228 (= lt!253728 (seekEntryOrOpen!0 (select (arr!16861 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558228 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17408 0))(
  ( (Unit!17409) )
))
(declare-fun lt!253731 () Unit!17408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17408)

(assert (=> b!558228 (= lt!253731 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun e!321584 () Bool)

(declare-fun b!558229 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35120 (_ BitVec 32)) SeekEntryResult!5317)

(assert (=> b!558229 (= e!321584 (= lt!253728 (seekKeyOrZeroReturnVacant!0 (x!52420 lt!253733) (index!23497 lt!253733) (index!23497 lt!253733) (select (arr!16861 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558230 () Bool)

(assert (=> b!558230 (= e!321582 e!321585)))

(declare-fun res!350247 () Bool)

(assert (=> b!558230 (=> (not res!350247) (not e!321585))))

(declare-fun lt!253729 () SeekEntryResult!5317)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558230 (= res!350247 (or (= lt!253729 (MissingZero!5317 i!1132)) (= lt!253729 (MissingVacant!5317 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!558230 (= lt!253729 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!558231 () Bool)

(declare-fun res!350239 () Bool)

(assert (=> b!558231 (=> (not res!350239) (not e!321582))))

(assert (=> b!558231 (= res!350239 (and (= (size!17225 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17225 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17225 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558232 () Bool)

(assert (=> b!558232 (= e!321585 e!321583)))

(declare-fun res!350245 () Bool)

(assert (=> b!558232 (=> (not res!350245) (not e!321583))))

(declare-fun lt!253732 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35120 (_ BitVec 32)) SeekEntryResult!5317)

(assert (=> b!558232 (= res!350245 (= lt!253733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253732 (select (store (arr!16861 a!3118) i!1132 k0!1914) j!142) (array!35121 (store (arr!16861 a!3118) i!1132 k0!1914) (size!17225 a!3118)) mask!3119)))))

(declare-fun lt!253730 () (_ BitVec 32))

(assert (=> b!558232 (= lt!253733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253730 (select (arr!16861 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558232 (= lt!253732 (toIndex!0 (select (store (arr!16861 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!558232 (= lt!253730 (toIndex!0 (select (arr!16861 a!3118) j!142) mask!3119))))

(declare-fun b!558233 () Bool)

(declare-fun res!350241 () Bool)

(assert (=> b!558233 (=> (not res!350241) (not e!321582))))

(assert (=> b!558233 (= res!350241 (validKeyInArray!0 k0!1914))))

(declare-fun b!558234 () Bool)

(declare-fun res!350240 () Bool)

(assert (=> b!558234 (=> (not res!350240) (not e!321582))))

(declare-fun arrayContainsKey!0 (array!35120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558234 (= res!350240 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558235 () Bool)

(assert (=> b!558235 (= e!321586 e!321584)))

(declare-fun res!350249 () Bool)

(assert (=> b!558235 (=> res!350249 e!321584)))

(assert (=> b!558235 (= res!350249 (or (undefined!6129 lt!253733) (not ((_ is Intermediate!5317) lt!253733)) (= (select (arr!16861 a!3118) (index!23497 lt!253733)) (select (arr!16861 a!3118) j!142)) (= (select (arr!16861 a!3118) (index!23497 lt!253733)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558236 () Bool)

(declare-fun res!350248 () Bool)

(assert (=> b!558236 (=> (not res!350248) (not e!321585))))

(declare-datatypes ((List!10994 0))(
  ( (Nil!10991) (Cons!10990 (h!11984 (_ BitVec 64)) (t!17230 List!10994)) )
))
(declare-fun arrayNoDuplicates!0 (array!35120 (_ BitVec 32) List!10994) Bool)

(assert (=> b!558236 (= res!350248 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10991))))

(assert (= (and start!51112 res!350243) b!558231))

(assert (= (and b!558231 res!350239) b!558227))

(assert (= (and b!558227 res!350246) b!558233))

(assert (= (and b!558233 res!350241) b!558234))

(assert (= (and b!558234 res!350240) b!558230))

(assert (= (and b!558230 res!350247) b!558226))

(assert (= (and b!558226 res!350242) b!558236))

(assert (= (and b!558236 res!350248) b!558232))

(assert (= (and b!558232 res!350245) b!558228))

(assert (= (and b!558228 res!350244) b!558235))

(assert (= (and b!558235 (not res!350249)) b!558229))

(declare-fun m!536237 () Bool)

(assert (=> b!558227 m!536237))

(assert (=> b!558227 m!536237))

(declare-fun m!536239 () Bool)

(assert (=> b!558227 m!536239))

(declare-fun m!536241 () Bool)

(assert (=> b!558226 m!536241))

(declare-fun m!536243 () Bool)

(assert (=> b!558235 m!536243))

(assert (=> b!558235 m!536237))

(declare-fun m!536245 () Bool)

(assert (=> b!558236 m!536245))

(assert (=> b!558228 m!536237))

(assert (=> b!558228 m!536243))

(declare-fun m!536247 () Bool)

(assert (=> b!558228 m!536247))

(declare-fun m!536249 () Bool)

(assert (=> b!558228 m!536249))

(assert (=> b!558228 m!536237))

(declare-fun m!536251 () Bool)

(assert (=> b!558228 m!536251))

(assert (=> b!558232 m!536237))

(declare-fun m!536253 () Bool)

(assert (=> b!558232 m!536253))

(assert (=> b!558232 m!536237))

(declare-fun m!536255 () Bool)

(assert (=> b!558232 m!536255))

(declare-fun m!536257 () Bool)

(assert (=> b!558232 m!536257))

(assert (=> b!558232 m!536255))

(declare-fun m!536259 () Bool)

(assert (=> b!558232 m!536259))

(assert (=> b!558232 m!536237))

(declare-fun m!536261 () Bool)

(assert (=> b!558232 m!536261))

(assert (=> b!558232 m!536255))

(declare-fun m!536263 () Bool)

(assert (=> b!558232 m!536263))

(declare-fun m!536265 () Bool)

(assert (=> b!558233 m!536265))

(assert (=> b!558229 m!536237))

(assert (=> b!558229 m!536237))

(declare-fun m!536267 () Bool)

(assert (=> b!558229 m!536267))

(declare-fun m!536269 () Bool)

(assert (=> b!558234 m!536269))

(declare-fun m!536271 () Bool)

(assert (=> b!558230 m!536271))

(declare-fun m!536273 () Bool)

(assert (=> start!51112 m!536273))

(declare-fun m!536275 () Bool)

(assert (=> start!51112 m!536275))

(check-sat (not b!558226) (not b!558233) (not b!558228) (not b!558230) (not b!558236) (not b!558227) (not b!558229) (not b!558234) (not start!51112) (not b!558232))
(check-sat)
