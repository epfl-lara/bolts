; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44700 () Bool)

(assert start!44700)

(declare-fun e!288185 () Bool)

(declare-fun b!490212 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31719 0))(
  ( (array!31720 (arr!15244 (Array (_ BitVec 32) (_ BitVec 64))) (size!15608 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31719)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3718 0))(
  ( (MissingZero!3718 (index!17051 (_ BitVec 32))) (Found!3718 (index!17052 (_ BitVec 32))) (Intermediate!3718 (undefined!4530 Bool) (index!17053 (_ BitVec 32)) (x!46179 (_ BitVec 32))) (Undefined!3718) (MissingVacant!3718 (index!17054 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31719 (_ BitVec 32)) SeekEntryResult!3718)

(assert (=> b!490212 (= e!288185 (= (seekEntryOrOpen!0 (select (arr!15244 a!3235) j!176) a!3235 mask!3524) (Found!3718 j!176)))))

(declare-fun b!490213 () Bool)

(declare-fun res!293304 () Bool)

(declare-fun e!288187 () Bool)

(assert (=> b!490213 (=> (not res!293304) (not e!288187))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490213 (= res!293304 (validKeyInArray!0 k0!2280))))

(declare-fun res!293300 () Bool)

(assert (=> start!44700 (=> (not res!293300) (not e!288187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44700 (= res!293300 (validMask!0 mask!3524))))

(assert (=> start!44700 e!288187))

(assert (=> start!44700 true))

(declare-fun array_inv!11018 (array!31719) Bool)

(assert (=> start!44700 (array_inv!11018 a!3235)))

(declare-fun b!490214 () Bool)

(declare-fun res!293301 () Bool)

(declare-fun e!288184 () Bool)

(assert (=> b!490214 (=> (not res!293301) (not e!288184))))

(declare-datatypes ((List!9455 0))(
  ( (Nil!9452) (Cons!9451 (h!10313 (_ BitVec 64)) (t!15691 List!9455)) )
))
(declare-fun arrayNoDuplicates!0 (array!31719 (_ BitVec 32) List!9455) Bool)

(assert (=> b!490214 (= res!293301 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9452))))

(declare-fun b!490215 () Bool)

(declare-fun res!293305 () Bool)

(assert (=> b!490215 (=> (not res!293305) (not e!288184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31719 (_ BitVec 32)) Bool)

(assert (=> b!490215 (= res!293305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490216 () Bool)

(declare-fun res!293298 () Bool)

(assert (=> b!490216 (=> (not res!293298) (not e!288187))))

(declare-fun arrayContainsKey!0 (array!31719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490216 (= res!293298 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490217 () Bool)

(declare-fun res!293303 () Bool)

(assert (=> b!490217 (=> (not res!293303) (not e!288187))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490217 (= res!293303 (and (= (size!15608 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15608 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15608 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490218 () Bool)

(assert (=> b!490218 (= e!288184 (not true))))

(declare-fun lt!221434 () (_ BitVec 32))

(declare-fun lt!221435 () SeekEntryResult!3718)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31719 (_ BitVec 32)) SeekEntryResult!3718)

(assert (=> b!490218 (= lt!221435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221434 (select (store (arr!15244 a!3235) i!1204 k0!2280) j!176) (array!31720 (store (arr!15244 a!3235) i!1204 k0!2280) (size!15608 a!3235)) mask!3524))))

(declare-fun lt!221436 () (_ BitVec 32))

(declare-fun lt!221438 () SeekEntryResult!3718)

(assert (=> b!490218 (= lt!221438 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221436 (select (arr!15244 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490218 (= lt!221434 (toIndex!0 (select (store (arr!15244 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!490218 (= lt!221436 (toIndex!0 (select (arr!15244 a!3235) j!176) mask!3524))))

(assert (=> b!490218 e!288185))

(declare-fun res!293302 () Bool)

(assert (=> b!490218 (=> (not res!293302) (not e!288185))))

(assert (=> b!490218 (= res!293302 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14374 0))(
  ( (Unit!14375) )
))
(declare-fun lt!221433 () Unit!14374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14374)

(assert (=> b!490218 (= lt!221433 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490219 () Bool)

(declare-fun res!293299 () Bool)

(assert (=> b!490219 (=> (not res!293299) (not e!288187))))

(assert (=> b!490219 (= res!293299 (validKeyInArray!0 (select (arr!15244 a!3235) j!176)))))

(declare-fun b!490220 () Bool)

(assert (=> b!490220 (= e!288187 e!288184)))

(declare-fun res!293306 () Bool)

(assert (=> b!490220 (=> (not res!293306) (not e!288184))))

(declare-fun lt!221437 () SeekEntryResult!3718)

(assert (=> b!490220 (= res!293306 (or (= lt!221437 (MissingZero!3718 i!1204)) (= lt!221437 (MissingVacant!3718 i!1204))))))

(assert (=> b!490220 (= lt!221437 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!44700 res!293300) b!490217))

(assert (= (and b!490217 res!293303) b!490219))

(assert (= (and b!490219 res!293299) b!490213))

(assert (= (and b!490213 res!293304) b!490216))

(assert (= (and b!490216 res!293298) b!490220))

(assert (= (and b!490220 res!293306) b!490215))

(assert (= (and b!490215 res!293305) b!490214))

(assert (= (and b!490214 res!293301) b!490218))

(assert (= (and b!490218 res!293302) b!490212))

(declare-fun m!470347 () Bool)

(assert (=> b!490215 m!470347))

(declare-fun m!470349 () Bool)

(assert (=> b!490218 m!470349))

(declare-fun m!470351 () Bool)

(assert (=> b!490218 m!470351))

(declare-fun m!470353 () Bool)

(assert (=> b!490218 m!470353))

(declare-fun m!470355 () Bool)

(assert (=> b!490218 m!470355))

(declare-fun m!470357 () Bool)

(assert (=> b!490218 m!470357))

(assert (=> b!490218 m!470353))

(declare-fun m!470359 () Bool)

(assert (=> b!490218 m!470359))

(assert (=> b!490218 m!470353))

(declare-fun m!470361 () Bool)

(assert (=> b!490218 m!470361))

(assert (=> b!490218 m!470355))

(declare-fun m!470363 () Bool)

(assert (=> b!490218 m!470363))

(assert (=> b!490218 m!470355))

(declare-fun m!470365 () Bool)

(assert (=> b!490218 m!470365))

(declare-fun m!470367 () Bool)

(assert (=> b!490213 m!470367))

(declare-fun m!470369 () Bool)

(assert (=> start!44700 m!470369))

(declare-fun m!470371 () Bool)

(assert (=> start!44700 m!470371))

(assert (=> b!490219 m!470355))

(assert (=> b!490219 m!470355))

(declare-fun m!470373 () Bool)

(assert (=> b!490219 m!470373))

(declare-fun m!470375 () Bool)

(assert (=> b!490220 m!470375))

(declare-fun m!470377 () Bool)

(assert (=> b!490216 m!470377))

(assert (=> b!490212 m!470355))

(assert (=> b!490212 m!470355))

(declare-fun m!470379 () Bool)

(assert (=> b!490212 m!470379))

(declare-fun m!470381 () Bool)

(assert (=> b!490214 m!470381))

(check-sat (not start!44700) (not b!490214) (not b!490218) (not b!490213) (not b!490216) (not b!490219) (not b!490212) (not b!490215) (not b!490220))
(check-sat)
