; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46746 () Bool)

(assert start!46746)

(declare-fun b!515812 () Bool)

(declare-fun res!315533 () Bool)

(declare-fun e!301101 () Bool)

(assert (=> b!515812 (=> (not res!315533) (not e!301101))))

(declare-datatypes ((array!33018 0))(
  ( (array!33019 (arr!15874 (Array (_ BitVec 32) (_ BitVec 64))) (size!16238 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33018)

(declare-datatypes ((List!10085 0))(
  ( (Nil!10082) (Cons!10081 (h!10979 (_ BitVec 64)) (t!16321 List!10085)) )
))
(declare-fun arrayNoDuplicates!0 (array!33018 (_ BitVec 32) List!10085) Bool)

(assert (=> b!515812 (= res!315533 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10082))))

(declare-fun b!515813 () Bool)

(declare-fun res!315528 () Bool)

(declare-fun e!301098 () Bool)

(assert (=> b!515813 (=> (not res!315528) (not e!301098))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515813 (= res!315528 (validKeyInArray!0 k0!2280))))

(declare-fun res!315531 () Bool)

(assert (=> start!46746 (=> (not res!315531) (not e!301098))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46746 (= res!315531 (validMask!0 mask!3524))))

(assert (=> start!46746 e!301098))

(assert (=> start!46746 true))

(declare-fun array_inv!11648 (array!33018) Bool)

(assert (=> start!46746 (array_inv!11648 a!3235)))

(declare-fun b!515814 () Bool)

(assert (=> b!515814 (= e!301098 e!301101)))

(declare-fun res!315527 () Bool)

(assert (=> b!515814 (=> (not res!315527) (not e!301101))))

(declare-datatypes ((SeekEntryResult!4348 0))(
  ( (MissingZero!4348 (index!19580 (_ BitVec 32))) (Found!4348 (index!19581 (_ BitVec 32))) (Intermediate!4348 (undefined!5160 Bool) (index!19582 (_ BitVec 32)) (x!48570 (_ BitVec 32))) (Undefined!4348) (MissingVacant!4348 (index!19583 (_ BitVec 32))) )
))
(declare-fun lt!236183 () SeekEntryResult!4348)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515814 (= res!315527 (or (= lt!236183 (MissingZero!4348 i!1204)) (= lt!236183 (MissingVacant!4348 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33018 (_ BitVec 32)) SeekEntryResult!4348)

(assert (=> b!515814 (= lt!236183 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!515815 () Bool)

(declare-fun res!315534 () Bool)

(assert (=> b!515815 (=> (not res!315534) (not e!301098))))

(declare-fun arrayContainsKey!0 (array!33018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515815 (= res!315534 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515816 () Bool)

(declare-fun e!301102 () Bool)

(assert (=> b!515816 (= e!301102 true)))

(declare-fun lt!236186 () SeekEntryResult!4348)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515816 (and (bvslt (x!48570 lt!236186) #b01111111111111111111111111111110) (or (= (select (arr!15874 a!3235) (index!19582 lt!236186)) (select (arr!15874 a!3235) j!176)) (= (select (arr!15874 a!3235) (index!19582 lt!236186)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15874 a!3235) (index!19582 lt!236186)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515817 () Bool)

(declare-fun res!315536 () Bool)

(assert (=> b!515817 (=> (not res!315536) (not e!301098))))

(assert (=> b!515817 (= res!315536 (and (= (size!16238 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16238 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16238 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515818 () Bool)

(assert (=> b!515818 (= e!301101 (not e!301102))))

(declare-fun res!315529 () Bool)

(assert (=> b!515818 (=> res!315529 e!301102)))

(declare-fun lt!236185 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33018 (_ BitVec 32)) SeekEntryResult!4348)

(assert (=> b!515818 (= res!315529 (= lt!236186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236185 (select (store (arr!15874 a!3235) i!1204 k0!2280) j!176) (array!33019 (store (arr!15874 a!3235) i!1204 k0!2280) (size!16238 a!3235)) mask!3524)))))

(declare-fun lt!236184 () (_ BitVec 32))

(assert (=> b!515818 (= lt!236186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236184 (select (arr!15874 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515818 (= lt!236185 (toIndex!0 (select (store (arr!15874 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515818 (= lt!236184 (toIndex!0 (select (arr!15874 a!3235) j!176) mask!3524))))

(declare-fun e!301100 () Bool)

(assert (=> b!515818 e!301100))

(declare-fun res!315532 () Bool)

(assert (=> b!515818 (=> (not res!315532) (not e!301100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33018 (_ BitVec 32)) Bool)

(assert (=> b!515818 (= res!315532 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15946 0))(
  ( (Unit!15947) )
))
(declare-fun lt!236182 () Unit!15946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33018 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15946)

(assert (=> b!515818 (= lt!236182 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515819 () Bool)

(declare-fun res!315526 () Bool)

(assert (=> b!515819 (=> res!315526 e!301102)))

(get-info :version)

(assert (=> b!515819 (= res!315526 (or (undefined!5160 lt!236186) (not ((_ is Intermediate!4348) lt!236186))))))

(declare-fun b!515820 () Bool)

(declare-fun res!315535 () Bool)

(assert (=> b!515820 (=> (not res!315535) (not e!301101))))

(assert (=> b!515820 (= res!315535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515821 () Bool)

(declare-fun res!315530 () Bool)

(assert (=> b!515821 (=> (not res!315530) (not e!301098))))

(assert (=> b!515821 (= res!315530 (validKeyInArray!0 (select (arr!15874 a!3235) j!176)))))

(declare-fun b!515822 () Bool)

(assert (=> b!515822 (= e!301100 (= (seekEntryOrOpen!0 (select (arr!15874 a!3235) j!176) a!3235 mask!3524) (Found!4348 j!176)))))

(assert (= (and start!46746 res!315531) b!515817))

(assert (= (and b!515817 res!315536) b!515821))

(assert (= (and b!515821 res!315530) b!515813))

(assert (= (and b!515813 res!315528) b!515815))

(assert (= (and b!515815 res!315534) b!515814))

(assert (= (and b!515814 res!315527) b!515820))

(assert (= (and b!515820 res!315535) b!515812))

(assert (= (and b!515812 res!315533) b!515818))

(assert (= (and b!515818 res!315532) b!515822))

(assert (= (and b!515818 (not res!315529)) b!515819))

(assert (= (and b!515819 (not res!315526)) b!515816))

(declare-fun m!497271 () Bool)

(assert (=> b!515815 m!497271))

(declare-fun m!497273 () Bool)

(assert (=> start!46746 m!497273))

(declare-fun m!497275 () Bool)

(assert (=> start!46746 m!497275))

(declare-fun m!497277 () Bool)

(assert (=> b!515813 m!497277))

(declare-fun m!497279 () Bool)

(assert (=> b!515818 m!497279))

(declare-fun m!497281 () Bool)

(assert (=> b!515818 m!497281))

(declare-fun m!497283 () Bool)

(assert (=> b!515818 m!497283))

(declare-fun m!497285 () Bool)

(assert (=> b!515818 m!497285))

(declare-fun m!497287 () Bool)

(assert (=> b!515818 m!497287))

(assert (=> b!515818 m!497283))

(declare-fun m!497289 () Bool)

(assert (=> b!515818 m!497289))

(assert (=> b!515818 m!497285))

(declare-fun m!497291 () Bool)

(assert (=> b!515818 m!497291))

(assert (=> b!515818 m!497283))

(declare-fun m!497293 () Bool)

(assert (=> b!515818 m!497293))

(assert (=> b!515818 m!497285))

(declare-fun m!497295 () Bool)

(assert (=> b!515818 m!497295))

(declare-fun m!497297 () Bool)

(assert (=> b!515816 m!497297))

(assert (=> b!515816 m!497285))

(assert (=> b!515821 m!497285))

(assert (=> b!515821 m!497285))

(declare-fun m!497299 () Bool)

(assert (=> b!515821 m!497299))

(declare-fun m!497301 () Bool)

(assert (=> b!515814 m!497301))

(declare-fun m!497303 () Bool)

(assert (=> b!515820 m!497303))

(assert (=> b!515822 m!497285))

(assert (=> b!515822 m!497285))

(declare-fun m!497305 () Bool)

(assert (=> b!515822 m!497305))

(declare-fun m!497307 () Bool)

(assert (=> b!515812 m!497307))

(check-sat (not b!515814) (not b!515812) (not b!515821) (not b!515818) (not b!515813) (not b!515815) (not start!46746) (not b!515822) (not b!515820))
(check-sat)
