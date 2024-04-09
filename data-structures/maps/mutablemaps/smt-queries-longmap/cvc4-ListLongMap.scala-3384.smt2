; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46730 () Bool)

(assert start!46730)

(declare-fun b!515548 () Bool)

(declare-fun res!315266 () Bool)

(declare-fun e!300982 () Bool)

(assert (=> b!515548 (=> (not res!315266) (not e!300982))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33002 0))(
  ( (array!33003 (arr!15866 (Array (_ BitVec 32) (_ BitVec 64))) (size!16230 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33002)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515548 (= res!315266 (and (= (size!16230 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16230 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16230 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!315267 () Bool)

(assert (=> start!46730 (=> (not res!315267) (not e!300982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46730 (= res!315267 (validMask!0 mask!3524))))

(assert (=> start!46730 e!300982))

(assert (=> start!46730 true))

(declare-fun array_inv!11640 (array!33002) Bool)

(assert (=> start!46730 (array_inv!11640 a!3235)))

(declare-fun b!515549 () Bool)

(declare-fun res!315272 () Bool)

(assert (=> b!515549 (=> (not res!315272) (not e!300982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515549 (= res!315272 (validKeyInArray!0 (select (arr!15866 a!3235) j!176)))))

(declare-fun b!515550 () Bool)

(declare-fun res!315264 () Bool)

(assert (=> b!515550 (=> (not res!315264) (not e!300982))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515550 (= res!315264 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515551 () Bool)

(declare-fun res!315270 () Bool)

(declare-fun e!300980 () Bool)

(assert (=> b!515551 (=> res!315270 e!300980)))

(declare-datatypes ((SeekEntryResult!4340 0))(
  ( (MissingZero!4340 (index!19548 (_ BitVec 32))) (Found!4340 (index!19549 (_ BitVec 32))) (Intermediate!4340 (undefined!5152 Bool) (index!19550 (_ BitVec 32)) (x!48538 (_ BitVec 32))) (Undefined!4340) (MissingVacant!4340 (index!19551 (_ BitVec 32))) )
))
(declare-fun lt!236066 () SeekEntryResult!4340)

(assert (=> b!515551 (= res!315270 (or (undefined!5152 lt!236066) (not (is-Intermediate!4340 lt!236066))))))

(declare-fun b!515552 () Bool)

(declare-fun res!315262 () Bool)

(declare-fun e!300981 () Bool)

(assert (=> b!515552 (=> (not res!315262) (not e!300981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33002 (_ BitVec 32)) Bool)

(assert (=> b!515552 (= res!315262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515553 () Bool)

(assert (=> b!515553 (= e!300982 e!300981)))

(declare-fun res!315263 () Bool)

(assert (=> b!515553 (=> (not res!315263) (not e!300981))))

(declare-fun lt!236062 () SeekEntryResult!4340)

(assert (=> b!515553 (= res!315263 (or (= lt!236062 (MissingZero!4340 i!1204)) (= lt!236062 (MissingVacant!4340 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33002 (_ BitVec 32)) SeekEntryResult!4340)

(assert (=> b!515553 (= lt!236062 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515554 () Bool)

(declare-fun res!315268 () Bool)

(assert (=> b!515554 (=> (not res!315268) (not e!300982))))

(assert (=> b!515554 (= res!315268 (validKeyInArray!0 k!2280))))

(declare-fun b!515555 () Bool)

(declare-fun res!315269 () Bool)

(assert (=> b!515555 (=> (not res!315269) (not e!300981))))

(declare-datatypes ((List!10077 0))(
  ( (Nil!10074) (Cons!10073 (h!10971 (_ BitVec 64)) (t!16313 List!10077)) )
))
(declare-fun arrayNoDuplicates!0 (array!33002 (_ BitVec 32) List!10077) Bool)

(assert (=> b!515555 (= res!315269 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10074))))

(declare-fun b!515556 () Bool)

(assert (=> b!515556 (= e!300980 true)))

(assert (=> b!515556 (and (bvslt (x!48538 lt!236066) #b01111111111111111111111111111110) (or (= (select (arr!15866 a!3235) (index!19550 lt!236066)) (select (arr!15866 a!3235) j!176)) (= (select (arr!15866 a!3235) (index!19550 lt!236066)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15866 a!3235) (index!19550 lt!236066)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515557 () Bool)

(declare-fun e!300979 () Bool)

(assert (=> b!515557 (= e!300979 (= (seekEntryOrOpen!0 (select (arr!15866 a!3235) j!176) a!3235 mask!3524) (Found!4340 j!176)))))

(declare-fun b!515558 () Bool)

(assert (=> b!515558 (= e!300981 (not e!300980))))

(declare-fun res!315265 () Bool)

(assert (=> b!515558 (=> res!315265 e!300980)))

(declare-fun lt!236064 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33002 (_ BitVec 32)) SeekEntryResult!4340)

(assert (=> b!515558 (= res!315265 (= lt!236066 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236064 (select (store (arr!15866 a!3235) i!1204 k!2280) j!176) (array!33003 (store (arr!15866 a!3235) i!1204 k!2280) (size!16230 a!3235)) mask!3524)))))

(declare-fun lt!236063 () (_ BitVec 32))

(assert (=> b!515558 (= lt!236066 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236063 (select (arr!15866 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515558 (= lt!236064 (toIndex!0 (select (store (arr!15866 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515558 (= lt!236063 (toIndex!0 (select (arr!15866 a!3235) j!176) mask!3524))))

(assert (=> b!515558 e!300979))

(declare-fun res!315271 () Bool)

(assert (=> b!515558 (=> (not res!315271) (not e!300979))))

(assert (=> b!515558 (= res!315271 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15930 0))(
  ( (Unit!15931) )
))
(declare-fun lt!236065 () Unit!15930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33002 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15930)

(assert (=> b!515558 (= lt!236065 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46730 res!315267) b!515548))

(assert (= (and b!515548 res!315266) b!515549))

(assert (= (and b!515549 res!315272) b!515554))

(assert (= (and b!515554 res!315268) b!515550))

(assert (= (and b!515550 res!315264) b!515553))

(assert (= (and b!515553 res!315263) b!515552))

(assert (= (and b!515552 res!315262) b!515555))

(assert (= (and b!515555 res!315269) b!515558))

(assert (= (and b!515558 res!315271) b!515557))

(assert (= (and b!515558 (not res!315265)) b!515551))

(assert (= (and b!515551 (not res!315270)) b!515556))

(declare-fun m!496967 () Bool)

(assert (=> b!515555 m!496967))

(declare-fun m!496969 () Bool)

(assert (=> b!515556 m!496969))

(declare-fun m!496971 () Bool)

(assert (=> b!515556 m!496971))

(declare-fun m!496973 () Bool)

(assert (=> b!515558 m!496973))

(declare-fun m!496975 () Bool)

(assert (=> b!515558 m!496975))

(declare-fun m!496977 () Bool)

(assert (=> b!515558 m!496977))

(assert (=> b!515558 m!496971))

(declare-fun m!496979 () Bool)

(assert (=> b!515558 m!496979))

(assert (=> b!515558 m!496977))

(declare-fun m!496981 () Bool)

(assert (=> b!515558 m!496981))

(assert (=> b!515558 m!496971))

(declare-fun m!496983 () Bool)

(assert (=> b!515558 m!496983))

(assert (=> b!515558 m!496971))

(declare-fun m!496985 () Bool)

(assert (=> b!515558 m!496985))

(assert (=> b!515558 m!496977))

(declare-fun m!496987 () Bool)

(assert (=> b!515558 m!496987))

(assert (=> b!515549 m!496971))

(assert (=> b!515549 m!496971))

(declare-fun m!496989 () Bool)

(assert (=> b!515549 m!496989))

(declare-fun m!496991 () Bool)

(assert (=> b!515553 m!496991))

(assert (=> b!515557 m!496971))

(assert (=> b!515557 m!496971))

(declare-fun m!496993 () Bool)

(assert (=> b!515557 m!496993))

(declare-fun m!496995 () Bool)

(assert (=> b!515550 m!496995))

(declare-fun m!496997 () Bool)

(assert (=> b!515552 m!496997))

(declare-fun m!496999 () Bool)

(assert (=> b!515554 m!496999))

(declare-fun m!497001 () Bool)

(assert (=> start!46730 m!497001))

(declare-fun m!497003 () Bool)

(assert (=> start!46730 m!497003))

(push 1)

