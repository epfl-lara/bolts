; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47760 () Bool)

(assert start!47760)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33357 0))(
  ( (array!33358 (arr!16027 (Array (_ BitVec 32) (_ BitVec 64))) (size!16391 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33357)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!306313 () Bool)

(declare-fun b!525355 () Bool)

(declare-datatypes ((SeekEntryResult!4501 0))(
  ( (MissingZero!4501 (index!20216 (_ BitVec 32))) (Found!4501 (index!20217 (_ BitVec 32))) (Intermediate!4501 (undefined!5313 Bool) (index!20218 (_ BitVec 32)) (x!49221 (_ BitVec 32))) (Undefined!4501) (MissingVacant!4501 (index!20219 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33357 (_ BitVec 32)) SeekEntryResult!4501)

(assert (=> b!525355 (= e!306313 (= (seekEntryOrOpen!0 (select (arr!16027 a!3235) j!176) a!3235 mask!3524) (Found!4501 j!176)))))

(declare-fun b!525356 () Bool)

(declare-fun res!322256 () Bool)

(declare-fun e!306312 () Bool)

(assert (=> b!525356 (=> (not res!322256) (not e!306312))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525356 (= res!322256 (and (= (size!16391 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16391 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16391 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525357 () Bool)

(declare-fun e!306309 () Bool)

(assert (=> b!525357 (= e!306309 false)))

(declare-fun b!525358 () Bool)

(declare-fun res!322260 () Bool)

(declare-fun e!306311 () Bool)

(assert (=> b!525358 (=> (not res!322260) (not e!306311))))

(declare-datatypes ((List!10238 0))(
  ( (Nil!10235) (Cons!10234 (h!11165 (_ BitVec 64)) (t!16474 List!10238)) )
))
(declare-fun arrayNoDuplicates!0 (array!33357 (_ BitVec 32) List!10238) Bool)

(assert (=> b!525358 (= res!322260 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10235))))

(declare-fun b!525359 () Bool)

(declare-fun res!322255 () Bool)

(assert (=> b!525359 (=> (not res!322255) (not e!306312))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525359 (= res!322255 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525360 () Bool)

(declare-fun res!322258 () Bool)

(assert (=> b!525360 (=> (not res!322258) (not e!306312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525360 (= res!322258 (validKeyInArray!0 k0!2280))))

(declare-fun b!525361 () Bool)

(declare-datatypes ((Unit!16470 0))(
  ( (Unit!16471) )
))
(declare-fun e!306308 () Unit!16470)

(declare-fun Unit!16472 () Unit!16470)

(assert (=> b!525361 (= e!306308 Unit!16472)))

(declare-fun b!525362 () Bool)

(declare-fun res!322257 () Bool)

(assert (=> b!525362 (=> (not res!322257) (not e!306311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33357 (_ BitVec 32)) Bool)

(assert (=> b!525362 (= res!322257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525363 () Bool)

(assert (=> b!525363 (= e!306312 e!306311)))

(declare-fun res!322254 () Bool)

(assert (=> b!525363 (=> (not res!322254) (not e!306311))))

(declare-fun lt!241442 () SeekEntryResult!4501)

(assert (=> b!525363 (= res!322254 (or (= lt!241442 (MissingZero!4501 i!1204)) (= lt!241442 (MissingVacant!4501 i!1204))))))

(assert (=> b!525363 (= lt!241442 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525364 () Bool)

(declare-fun res!322261 () Bool)

(declare-fun e!306307 () Bool)

(assert (=> b!525364 (=> res!322261 e!306307)))

(declare-fun lt!241437 () SeekEntryResult!4501)

(get-info :version)

(assert (=> b!525364 (= res!322261 (or (undefined!5313 lt!241437) (not ((_ is Intermediate!4501) lt!241437))))))

(declare-fun b!525365 () Bool)

(assert (=> b!525365 (= e!306311 (not e!306307))))

(declare-fun res!322263 () Bool)

(assert (=> b!525365 (=> res!322263 e!306307)))

(declare-fun lt!241436 () array!33357)

(declare-fun lt!241444 () (_ BitVec 64))

(declare-fun lt!241440 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33357 (_ BitVec 32)) SeekEntryResult!4501)

(assert (=> b!525365 (= res!322263 (= lt!241437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241440 lt!241444 lt!241436 mask!3524)))))

(declare-fun lt!241445 () (_ BitVec 32))

(assert (=> b!525365 (= lt!241437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241445 (select (arr!16027 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525365 (= lt!241440 (toIndex!0 lt!241444 mask!3524))))

(assert (=> b!525365 (= lt!241444 (select (store (arr!16027 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525365 (= lt!241445 (toIndex!0 (select (arr!16027 a!3235) j!176) mask!3524))))

(assert (=> b!525365 (= lt!241436 (array!33358 (store (arr!16027 a!3235) i!1204 k0!2280) (size!16391 a!3235)))))

(assert (=> b!525365 e!306313))

(declare-fun res!322262 () Bool)

(assert (=> b!525365 (=> (not res!322262) (not e!306313))))

(assert (=> b!525365 (= res!322262 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241443 () Unit!16470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16470)

(assert (=> b!525365 (= lt!241443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525366 () Bool)

(declare-fun res!322265 () Bool)

(assert (=> b!525366 (=> (not res!322265) (not e!306312))))

(assert (=> b!525366 (= res!322265 (validKeyInArray!0 (select (arr!16027 a!3235) j!176)))))

(declare-fun b!525367 () Bool)

(declare-fun Unit!16473 () Unit!16470)

(assert (=> b!525367 (= e!306308 Unit!16473)))

(declare-fun lt!241438 () Unit!16470)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33357 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16470)

(assert (=> b!525367 (= lt!241438 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241445 #b00000000000000000000000000000000 (index!20218 lt!241437) (x!49221 lt!241437) mask!3524))))

(declare-fun res!322264 () Bool)

(assert (=> b!525367 (= res!322264 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241445 lt!241444 lt!241436 mask!3524) (Intermediate!4501 false (index!20218 lt!241437) (x!49221 lt!241437))))))

(assert (=> b!525367 (=> (not res!322264) (not e!306309))))

(assert (=> b!525367 e!306309))

(declare-fun b!525368 () Bool)

(assert (=> b!525368 (= e!306307 true)))

(assert (=> b!525368 (= (index!20218 lt!241437) i!1204)))

(declare-fun lt!241441 () Unit!16470)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33357 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16470)

(assert (=> b!525368 (= lt!241441 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241445 #b00000000000000000000000000000000 (index!20218 lt!241437) (x!49221 lt!241437) mask!3524))))

(assert (=> b!525368 (and (or (= (select (arr!16027 a!3235) (index!20218 lt!241437)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16027 a!3235) (index!20218 lt!241437)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16027 a!3235) (index!20218 lt!241437)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16027 a!3235) (index!20218 lt!241437)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241439 () Unit!16470)

(assert (=> b!525368 (= lt!241439 e!306308)))

(declare-fun c!61856 () Bool)

(assert (=> b!525368 (= c!61856 (= (select (arr!16027 a!3235) (index!20218 lt!241437)) (select (arr!16027 a!3235) j!176)))))

(assert (=> b!525368 (and (bvslt (x!49221 lt!241437) #b01111111111111111111111111111110) (or (= (select (arr!16027 a!3235) (index!20218 lt!241437)) (select (arr!16027 a!3235) j!176)) (= (select (arr!16027 a!3235) (index!20218 lt!241437)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16027 a!3235) (index!20218 lt!241437)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!322259 () Bool)

(assert (=> start!47760 (=> (not res!322259) (not e!306312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47760 (= res!322259 (validMask!0 mask!3524))))

(assert (=> start!47760 e!306312))

(assert (=> start!47760 true))

(declare-fun array_inv!11801 (array!33357) Bool)

(assert (=> start!47760 (array_inv!11801 a!3235)))

(assert (= (and start!47760 res!322259) b!525356))

(assert (= (and b!525356 res!322256) b!525366))

(assert (= (and b!525366 res!322265) b!525360))

(assert (= (and b!525360 res!322258) b!525359))

(assert (= (and b!525359 res!322255) b!525363))

(assert (= (and b!525363 res!322254) b!525362))

(assert (= (and b!525362 res!322257) b!525358))

(assert (= (and b!525358 res!322260) b!525365))

(assert (= (and b!525365 res!322262) b!525355))

(assert (= (and b!525365 (not res!322263)) b!525364))

(assert (= (and b!525364 (not res!322261)) b!525368))

(assert (= (and b!525368 c!61856) b!525367))

(assert (= (and b!525368 (not c!61856)) b!525361))

(assert (= (and b!525367 res!322264) b!525357))

(declare-fun m!506055 () Bool)

(assert (=> b!525362 m!506055))

(declare-fun m!506057 () Bool)

(assert (=> b!525368 m!506057))

(declare-fun m!506059 () Bool)

(assert (=> b!525368 m!506059))

(declare-fun m!506061 () Bool)

(assert (=> b!525368 m!506061))

(declare-fun m!506063 () Bool)

(assert (=> start!47760 m!506063))

(declare-fun m!506065 () Bool)

(assert (=> start!47760 m!506065))

(assert (=> b!525366 m!506061))

(assert (=> b!525366 m!506061))

(declare-fun m!506067 () Bool)

(assert (=> b!525366 m!506067))

(declare-fun m!506069 () Bool)

(assert (=> b!525363 m!506069))

(declare-fun m!506071 () Bool)

(assert (=> b!525360 m!506071))

(declare-fun m!506073 () Bool)

(assert (=> b!525367 m!506073))

(declare-fun m!506075 () Bool)

(assert (=> b!525367 m!506075))

(declare-fun m!506077 () Bool)

(assert (=> b!525358 m!506077))

(declare-fun m!506079 () Bool)

(assert (=> b!525359 m!506079))

(declare-fun m!506081 () Bool)

(assert (=> b!525365 m!506081))

(declare-fun m!506083 () Bool)

(assert (=> b!525365 m!506083))

(declare-fun m!506085 () Bool)

(assert (=> b!525365 m!506085))

(declare-fun m!506087 () Bool)

(assert (=> b!525365 m!506087))

(assert (=> b!525365 m!506061))

(declare-fun m!506089 () Bool)

(assert (=> b!525365 m!506089))

(declare-fun m!506091 () Bool)

(assert (=> b!525365 m!506091))

(declare-fun m!506093 () Bool)

(assert (=> b!525365 m!506093))

(assert (=> b!525365 m!506061))

(declare-fun m!506095 () Bool)

(assert (=> b!525365 m!506095))

(assert (=> b!525365 m!506061))

(assert (=> b!525355 m!506061))

(assert (=> b!525355 m!506061))

(declare-fun m!506097 () Bool)

(assert (=> b!525355 m!506097))

(check-sat (not start!47760) (not b!525359) (not b!525358) (not b!525366) (not b!525368) (not b!525360) (not b!525367) (not b!525363) (not b!525362) (not b!525365) (not b!525355))
(check-sat)
