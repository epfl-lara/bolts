; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32144 () Bool)

(assert start!32144)

(declare-fun b!320076 () Bool)

(declare-fun res!174480 () Bool)

(declare-fun e!198654 () Bool)

(assert (=> b!320076 (=> (not res!174480) (not e!198654))))

(declare-datatypes ((array!16375 0))(
  ( (array!16376 (arr!7745 (Array (_ BitVec 32) (_ BitVec 64))) (size!8097 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16375)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320076 (= res!174480 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320077 () Bool)

(declare-fun res!174477 () Bool)

(assert (=> b!320077 (=> (not res!174477) (not e!198654))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2887 0))(
  ( (MissingZero!2887 (index!13724 (_ BitVec 32))) (Found!2887 (index!13725 (_ BitVec 32))) (Intermediate!2887 (undefined!3699 Bool) (index!13726 (_ BitVec 32)) (x!31959 (_ BitVec 32))) (Undefined!2887) (MissingVacant!2887 (index!13727 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16375 (_ BitVec 32)) SeekEntryResult!2887)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320077 (= res!174477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2887 false resIndex!58 resX!58)))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320078 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320078 (= e!198654 (and (= (select (arr!7745 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8097 a!3305)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!320079 () Bool)

(declare-fun res!174478 () Bool)

(assert (=> b!320079 (=> (not res!174478) (not e!198654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320079 (= res!174478 (validKeyInArray!0 k0!2497))))

(declare-fun b!320080 () Bool)

(declare-fun res!174483 () Bool)

(assert (=> b!320080 (=> (not res!174483) (not e!198654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16375 (_ BitVec 32)) Bool)

(assert (=> b!320080 (= res!174483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!174481 () Bool)

(assert (=> start!32144 (=> (not res!174481) (not e!198654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32144 (= res!174481 (validMask!0 mask!3777))))

(assert (=> start!32144 e!198654))

(declare-fun array_inv!5699 (array!16375) Bool)

(assert (=> start!32144 (array_inv!5699 a!3305)))

(assert (=> start!32144 true))

(declare-fun b!320081 () Bool)

(declare-fun res!174482 () Bool)

(assert (=> b!320081 (=> (not res!174482) (not e!198654))))

(assert (=> b!320081 (= res!174482 (and (= (size!8097 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8097 a!3305))))))

(declare-fun b!320082 () Bool)

(declare-fun res!174479 () Bool)

(assert (=> b!320082 (=> (not res!174479) (not e!198654))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16375 (_ BitVec 32)) SeekEntryResult!2887)

(assert (=> b!320082 (= res!174479 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2887 i!1250)))))

(assert (= (and start!32144 res!174481) b!320081))

(assert (= (and b!320081 res!174482) b!320079))

(assert (= (and b!320079 res!174478) b!320076))

(assert (= (and b!320076 res!174480) b!320082))

(assert (= (and b!320082 res!174479) b!320080))

(assert (= (and b!320080 res!174483) b!320077))

(assert (= (and b!320077 res!174477) b!320078))

(declare-fun m!328519 () Bool)

(assert (=> b!320078 m!328519))

(declare-fun m!328521 () Bool)

(assert (=> start!32144 m!328521))

(declare-fun m!328523 () Bool)

(assert (=> start!32144 m!328523))

(declare-fun m!328525 () Bool)

(assert (=> b!320079 m!328525))

(declare-fun m!328527 () Bool)

(assert (=> b!320077 m!328527))

(assert (=> b!320077 m!328527))

(declare-fun m!328529 () Bool)

(assert (=> b!320077 m!328529))

(declare-fun m!328531 () Bool)

(assert (=> b!320080 m!328531))

(declare-fun m!328533 () Bool)

(assert (=> b!320082 m!328533))

(declare-fun m!328535 () Bool)

(assert (=> b!320076 m!328535))

(check-sat (not b!320080) (not b!320077) (not b!320082) (not b!320076) (not start!32144) (not b!320079))
(check-sat)
