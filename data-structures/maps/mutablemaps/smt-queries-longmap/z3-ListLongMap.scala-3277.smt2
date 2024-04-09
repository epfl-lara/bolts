; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45618 () Bool)

(assert start!45618)

(declare-fun b!502237 () Bool)

(declare-fun res!303817 () Bool)

(declare-fun e!294185 () Bool)

(assert (=> b!502237 (=> res!303817 e!294185)))

(declare-fun e!294190 () Bool)

(assert (=> b!502237 (= res!303817 e!294190)))

(declare-fun res!303804 () Bool)

(assert (=> b!502237 (=> (not res!303804) (not e!294190))))

(declare-datatypes ((SeekEntryResult!4018 0))(
  ( (MissingZero!4018 (index!18260 (_ BitVec 32))) (Found!4018 (index!18261 (_ BitVec 32))) (Intermediate!4018 (undefined!4830 Bool) (index!18262 (_ BitVec 32)) (x!47318 (_ BitVec 32))) (Undefined!4018) (MissingVacant!4018 (index!18263 (_ BitVec 32))) )
))
(declare-fun lt!228344 () SeekEntryResult!4018)

(assert (=> b!502237 (= res!303804 (bvsgt #b00000000000000000000000000000000 (x!47318 lt!228344)))))

(declare-fun lt!228334 () (_ BitVec 32))

(declare-fun b!502239 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32334 0))(
  ( (array!32335 (arr!15544 (Array (_ BitVec 32) (_ BitVec 64))) (size!15908 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32334)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32334 (_ BitVec 32)) SeekEntryResult!4018)

(assert (=> b!502239 (= e!294190 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228334 (index!18262 lt!228344) (select (arr!15544 a!3235) j!176) a!3235 mask!3524) (Found!4018 j!176))))))

(declare-fun b!502240 () Bool)

(declare-fun res!303816 () Bool)

(declare-fun e!294186 () Bool)

(assert (=> b!502240 (=> (not res!303816) (not e!294186))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502240 (= res!303816 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502241 () Bool)

(declare-datatypes ((Unit!15162 0))(
  ( (Unit!15163) )
))
(declare-fun e!294184 () Unit!15162)

(declare-fun Unit!15164 () Unit!15162)

(assert (=> b!502241 (= e!294184 Unit!15164)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!228341 () Unit!15162)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32334 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15162)

(assert (=> b!502241 (= lt!228341 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228334 #b00000000000000000000000000000000 (index!18262 lt!228344) (x!47318 lt!228344) mask!3524))))

(declare-fun res!303806 () Bool)

(declare-fun lt!228336 () (_ BitVec 64))

(declare-fun lt!228338 () array!32334)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32334 (_ BitVec 32)) SeekEntryResult!4018)

(assert (=> b!502241 (= res!303806 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228334 lt!228336 lt!228338 mask!3524) (Intermediate!4018 false (index!18262 lt!228344) (x!47318 lt!228344))))))

(declare-fun e!294187 () Bool)

(assert (=> b!502241 (=> (not res!303806) (not e!294187))))

(assert (=> b!502241 e!294187))

(declare-fun b!502242 () Bool)

(declare-fun e!294189 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32334 (_ BitVec 32)) SeekEntryResult!4018)

(assert (=> b!502242 (= e!294189 (= (seekEntryOrOpen!0 (select (arr!15544 a!3235) j!176) a!3235 mask!3524) (Found!4018 j!176)))))

(declare-fun b!502243 () Bool)

(declare-fun e!294182 () Bool)

(assert (=> b!502243 (= e!294186 e!294182)))

(declare-fun res!303807 () Bool)

(assert (=> b!502243 (=> (not res!303807) (not e!294182))))

(declare-fun lt!228335 () SeekEntryResult!4018)

(assert (=> b!502243 (= res!303807 (or (= lt!228335 (MissingZero!4018 i!1204)) (= lt!228335 (MissingVacant!4018 i!1204))))))

(assert (=> b!502243 (= lt!228335 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!502244 () Bool)

(assert (=> b!502244 (= e!294185 true)))

(declare-fun lt!228342 () SeekEntryResult!4018)

(assert (=> b!502244 (= lt!228342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228334 lt!228336 lt!228338 mask!3524))))

(declare-fun b!502245 () Bool)

(declare-fun res!303815 () Bool)

(assert (=> b!502245 (=> (not res!303815) (not e!294182))))

(declare-datatypes ((List!9755 0))(
  ( (Nil!9752) (Cons!9751 (h!10628 (_ BitVec 64)) (t!15991 List!9755)) )
))
(declare-fun arrayNoDuplicates!0 (array!32334 (_ BitVec 32) List!9755) Bool)

(assert (=> b!502245 (= res!303815 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9752))))

(declare-fun res!303818 () Bool)

(assert (=> start!45618 (=> (not res!303818) (not e!294186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45618 (= res!303818 (validMask!0 mask!3524))))

(assert (=> start!45618 e!294186))

(assert (=> start!45618 true))

(declare-fun array_inv!11318 (array!32334) Bool)

(assert (=> start!45618 (array_inv!11318 a!3235)))

(declare-fun b!502238 () Bool)

(declare-fun res!303813 () Bool)

(assert (=> b!502238 (=> (not res!303813) (not e!294186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502238 (= res!303813 (validKeyInArray!0 (select (arr!15544 a!3235) j!176)))))

(declare-fun b!502246 () Bool)

(assert (=> b!502246 (= e!294187 false)))

(declare-fun b!502247 () Bool)

(declare-fun res!303809 () Bool)

(assert (=> b!502247 (=> (not res!303809) (not e!294186))))

(assert (=> b!502247 (= res!303809 (and (= (size!15908 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15908 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15908 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502248 () Bool)

(declare-fun res!303805 () Bool)

(declare-fun e!294183 () Bool)

(assert (=> b!502248 (=> res!303805 e!294183)))

(get-info :version)

(assert (=> b!502248 (= res!303805 (or (undefined!4830 lt!228344) (not ((_ is Intermediate!4018) lt!228344))))))

(declare-fun b!502249 () Bool)

(assert (=> b!502249 (= e!294183 e!294185)))

(declare-fun res!303810 () Bool)

(assert (=> b!502249 (=> res!303810 e!294185)))

(assert (=> b!502249 (= res!303810 (or (bvsgt (x!47318 lt!228344) #b01111111111111111111111111111110) (bvslt lt!228334 #b00000000000000000000000000000000) (bvsge lt!228334 (size!15908 a!3235)) (bvslt (index!18262 lt!228344) #b00000000000000000000000000000000) (bvsge (index!18262 lt!228344) (size!15908 a!3235)) (not (= lt!228344 (Intermediate!4018 false (index!18262 lt!228344) (x!47318 lt!228344))))))))

(assert (=> b!502249 (= (index!18262 lt!228344) i!1204)))

(declare-fun lt!228337 () Unit!15162)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32334 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15162)

(assert (=> b!502249 (= lt!228337 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228334 #b00000000000000000000000000000000 (index!18262 lt!228344) (x!47318 lt!228344) mask!3524))))

(assert (=> b!502249 (and (or (= (select (arr!15544 a!3235) (index!18262 lt!228344)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15544 a!3235) (index!18262 lt!228344)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15544 a!3235) (index!18262 lt!228344)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15544 a!3235) (index!18262 lt!228344)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228339 () Unit!15162)

(assert (=> b!502249 (= lt!228339 e!294184)))

(declare-fun c!59495 () Bool)

(assert (=> b!502249 (= c!59495 (= (select (arr!15544 a!3235) (index!18262 lt!228344)) (select (arr!15544 a!3235) j!176)))))

(assert (=> b!502249 (and (bvslt (x!47318 lt!228344) #b01111111111111111111111111111110) (or (= (select (arr!15544 a!3235) (index!18262 lt!228344)) (select (arr!15544 a!3235) j!176)) (= (select (arr!15544 a!3235) (index!18262 lt!228344)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15544 a!3235) (index!18262 lt!228344)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502250 () Bool)

(declare-fun res!303812 () Bool)

(assert (=> b!502250 (=> (not res!303812) (not e!294182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32334 (_ BitVec 32)) Bool)

(assert (=> b!502250 (= res!303812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502251 () Bool)

(assert (=> b!502251 (= e!294182 (not e!294183))))

(declare-fun res!303811 () Bool)

(assert (=> b!502251 (=> res!303811 e!294183)))

(declare-fun lt!228340 () (_ BitVec 32))

(assert (=> b!502251 (= res!303811 (= lt!228344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228340 lt!228336 lt!228338 mask!3524)))))

(assert (=> b!502251 (= lt!228344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228334 (select (arr!15544 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502251 (= lt!228340 (toIndex!0 lt!228336 mask!3524))))

(assert (=> b!502251 (= lt!228336 (select (store (arr!15544 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!502251 (= lt!228334 (toIndex!0 (select (arr!15544 a!3235) j!176) mask!3524))))

(assert (=> b!502251 (= lt!228338 (array!32335 (store (arr!15544 a!3235) i!1204 k0!2280) (size!15908 a!3235)))))

(assert (=> b!502251 e!294189))

(declare-fun res!303814 () Bool)

(assert (=> b!502251 (=> (not res!303814) (not e!294189))))

(assert (=> b!502251 (= res!303814 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228343 () Unit!15162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15162)

(assert (=> b!502251 (= lt!228343 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502252 () Bool)

(declare-fun Unit!15165 () Unit!15162)

(assert (=> b!502252 (= e!294184 Unit!15165)))

(declare-fun b!502253 () Bool)

(declare-fun res!303808 () Bool)

(assert (=> b!502253 (=> (not res!303808) (not e!294186))))

(assert (=> b!502253 (= res!303808 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45618 res!303818) b!502247))

(assert (= (and b!502247 res!303809) b!502238))

(assert (= (and b!502238 res!303813) b!502253))

(assert (= (and b!502253 res!303808) b!502240))

(assert (= (and b!502240 res!303816) b!502243))

(assert (= (and b!502243 res!303807) b!502250))

(assert (= (and b!502250 res!303812) b!502245))

(assert (= (and b!502245 res!303815) b!502251))

(assert (= (and b!502251 res!303814) b!502242))

(assert (= (and b!502251 (not res!303811)) b!502248))

(assert (= (and b!502248 (not res!303805)) b!502249))

(assert (= (and b!502249 c!59495) b!502241))

(assert (= (and b!502249 (not c!59495)) b!502252))

(assert (= (and b!502241 res!303806) b!502246))

(assert (= (and b!502249 (not res!303810)) b!502237))

(assert (= (and b!502237 res!303804) b!502239))

(assert (= (and b!502237 (not res!303817)) b!502244))

(declare-fun m!483209 () Bool)

(assert (=> b!502245 m!483209))

(declare-fun m!483211 () Bool)

(assert (=> b!502250 m!483211))

(declare-fun m!483213 () Bool)

(assert (=> b!502240 m!483213))

(declare-fun m!483215 () Bool)

(assert (=> b!502253 m!483215))

(declare-fun m!483217 () Bool)

(assert (=> b!502238 m!483217))

(assert (=> b!502238 m!483217))

(declare-fun m!483219 () Bool)

(assert (=> b!502238 m!483219))

(declare-fun m!483221 () Bool)

(assert (=> start!45618 m!483221))

(declare-fun m!483223 () Bool)

(assert (=> start!45618 m!483223))

(declare-fun m!483225 () Bool)

(assert (=> b!502241 m!483225))

(declare-fun m!483227 () Bool)

(assert (=> b!502241 m!483227))

(declare-fun m!483229 () Bool)

(assert (=> b!502249 m!483229))

(declare-fun m!483231 () Bool)

(assert (=> b!502249 m!483231))

(assert (=> b!502249 m!483217))

(assert (=> b!502239 m!483217))

(assert (=> b!502239 m!483217))

(declare-fun m!483233 () Bool)

(assert (=> b!502239 m!483233))

(declare-fun m!483235 () Bool)

(assert (=> b!502251 m!483235))

(declare-fun m!483237 () Bool)

(assert (=> b!502251 m!483237))

(declare-fun m!483239 () Bool)

(assert (=> b!502251 m!483239))

(declare-fun m!483241 () Bool)

(assert (=> b!502251 m!483241))

(assert (=> b!502251 m!483217))

(declare-fun m!483243 () Bool)

(assert (=> b!502251 m!483243))

(assert (=> b!502251 m!483217))

(assert (=> b!502251 m!483217))

(declare-fun m!483245 () Bool)

(assert (=> b!502251 m!483245))

(declare-fun m!483247 () Bool)

(assert (=> b!502251 m!483247))

(declare-fun m!483249 () Bool)

(assert (=> b!502251 m!483249))

(assert (=> b!502242 m!483217))

(assert (=> b!502242 m!483217))

(declare-fun m!483251 () Bool)

(assert (=> b!502242 m!483251))

(declare-fun m!483253 () Bool)

(assert (=> b!502243 m!483253))

(assert (=> b!502244 m!483227))

(check-sat (not b!502242) (not b!502240) (not b!502244) (not b!502239) (not b!502251) (not b!502245) (not b!502253) (not b!502250) (not b!502241) (not b!502249) (not b!502238) (not start!45618) (not b!502243))
(check-sat)
