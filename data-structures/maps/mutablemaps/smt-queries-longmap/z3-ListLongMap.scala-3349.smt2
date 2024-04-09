; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46098 () Bool)

(assert start!46098)

(declare-fun b!510291 () Bool)

(declare-fun res!311286 () Bool)

(declare-fun e!298279 () Bool)

(assert (=> b!510291 (=> (not res!311286) (not e!298279))))

(declare-datatypes ((array!32769 0))(
  ( (array!32770 (arr!15760 (Array (_ BitVec 32) (_ BitVec 64))) (size!16124 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32769)

(declare-datatypes ((List!9971 0))(
  ( (Nil!9968) (Cons!9967 (h!10844 (_ BitVec 64)) (t!16207 List!9971)) )
))
(declare-fun arrayNoDuplicates!0 (array!32769 (_ BitVec 32) List!9971) Bool)

(assert (=> b!510291 (= res!311286 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9968))))

(declare-fun b!510292 () Bool)

(declare-fun e!298281 () Bool)

(assert (=> b!510292 (= e!298281 e!298279)))

(declare-fun res!311289 () Bool)

(assert (=> b!510292 (=> (not res!311289) (not e!298279))))

(declare-datatypes ((SeekEntryResult!4234 0))(
  ( (MissingZero!4234 (index!19124 (_ BitVec 32))) (Found!4234 (index!19125 (_ BitVec 32))) (Intermediate!4234 (undefined!5046 Bool) (index!19126 (_ BitVec 32)) (x!48110 (_ BitVec 32))) (Undefined!4234) (MissingVacant!4234 (index!19127 (_ BitVec 32))) )
))
(declare-fun lt!233376 () SeekEntryResult!4234)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510292 (= res!311289 (or (= lt!233376 (MissingZero!4234 i!1204)) (= lt!233376 (MissingVacant!4234 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32769 (_ BitVec 32)) SeekEntryResult!4234)

(assert (=> b!510292 (= lt!233376 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!311292 () Bool)

(assert (=> start!46098 (=> (not res!311292) (not e!298281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46098 (= res!311292 (validMask!0 mask!3524))))

(assert (=> start!46098 e!298281))

(assert (=> start!46098 true))

(declare-fun array_inv!11534 (array!32769) Bool)

(assert (=> start!46098 (array_inv!11534 a!3235)))

(declare-fun b!510293 () Bool)

(declare-fun res!311294 () Bool)

(assert (=> b!510293 (=> (not res!311294) (not e!298281))))

(declare-fun arrayContainsKey!0 (array!32769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510293 (= res!311294 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510294 () Bool)

(declare-fun e!298282 () Bool)

(assert (=> b!510294 (= e!298282 true)))

(declare-fun lt!233380 () array!32769)

(declare-fun lt!233378 () SeekEntryResult!4234)

(declare-fun lt!233377 () (_ BitVec 64))

(assert (=> b!510294 (= lt!233378 (seekEntryOrOpen!0 lt!233377 lt!233380 mask!3524))))

(declare-datatypes ((Unit!15718 0))(
  ( (Unit!15719) )
))
(declare-fun lt!233379 () Unit!15718)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32769 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15718)

(assert (=> b!510294 (= lt!233379 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!510295 () Bool)

(declare-fun res!311291 () Bool)

(assert (=> b!510295 (=> (not res!311291) (not e!298281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510295 (= res!311291 (validKeyInArray!0 (select (arr!15760 a!3235) j!176)))))

(declare-fun b!510296 () Bool)

(declare-fun res!311287 () Bool)

(assert (=> b!510296 (=> (not res!311287) (not e!298281))))

(assert (=> b!510296 (= res!311287 (and (= (size!16124 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16124 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16124 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510297 () Bool)

(declare-fun res!311288 () Bool)

(assert (=> b!510297 (=> (not res!311288) (not e!298279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32769 (_ BitVec 32)) Bool)

(assert (=> b!510297 (= res!311288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510298 () Bool)

(declare-fun res!311290 () Bool)

(assert (=> b!510298 (=> (not res!311290) (not e!298281))))

(assert (=> b!510298 (= res!311290 (validKeyInArray!0 k0!2280))))

(declare-fun b!510299 () Bool)

(assert (=> b!510299 (= e!298279 (not e!298282))))

(declare-fun res!311293 () Bool)

(assert (=> b!510299 (=> res!311293 e!298282)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32769 (_ BitVec 32)) SeekEntryResult!4234)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510299 (= res!311293 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15760 a!3235) j!176) mask!3524) (select (arr!15760 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233377 mask!3524) lt!233377 lt!233380 mask!3524))))))

(assert (=> b!510299 (= lt!233377 (select (store (arr!15760 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!510299 (= lt!233380 (array!32770 (store (arr!15760 a!3235) i!1204 k0!2280) (size!16124 a!3235)))))

(assert (=> b!510299 (= lt!233378 (Found!4234 j!176))))

(assert (=> b!510299 (= lt!233378 (seekEntryOrOpen!0 (select (arr!15760 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510299 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233381 () Unit!15718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15718)

(assert (=> b!510299 (= lt!233381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46098 res!311292) b!510296))

(assert (= (and b!510296 res!311287) b!510295))

(assert (= (and b!510295 res!311291) b!510298))

(assert (= (and b!510298 res!311290) b!510293))

(assert (= (and b!510293 res!311294) b!510292))

(assert (= (and b!510292 res!311289) b!510297))

(assert (= (and b!510297 res!311288) b!510291))

(assert (= (and b!510291 res!311286) b!510299))

(assert (= (and b!510299 (not res!311293)) b!510294))

(declare-fun m!491615 () Bool)

(assert (=> b!510298 m!491615))

(declare-fun m!491617 () Bool)

(assert (=> b!510293 m!491617))

(declare-fun m!491619 () Bool)

(assert (=> b!510291 m!491619))

(declare-fun m!491621 () Bool)

(assert (=> b!510297 m!491621))

(declare-fun m!491623 () Bool)

(assert (=> b!510292 m!491623))

(declare-fun m!491625 () Bool)

(assert (=> b!510299 m!491625))

(declare-fun m!491627 () Bool)

(assert (=> b!510299 m!491627))

(declare-fun m!491629 () Bool)

(assert (=> b!510299 m!491629))

(declare-fun m!491631 () Bool)

(assert (=> b!510299 m!491631))

(assert (=> b!510299 m!491629))

(declare-fun m!491633 () Bool)

(assert (=> b!510299 m!491633))

(assert (=> b!510299 m!491629))

(declare-fun m!491635 () Bool)

(assert (=> b!510299 m!491635))

(declare-fun m!491637 () Bool)

(assert (=> b!510299 m!491637))

(declare-fun m!491639 () Bool)

(assert (=> b!510299 m!491639))

(declare-fun m!491641 () Bool)

(assert (=> b!510299 m!491641))

(assert (=> b!510299 m!491631))

(assert (=> b!510299 m!491629))

(declare-fun m!491643 () Bool)

(assert (=> b!510299 m!491643))

(assert (=> b!510299 m!491639))

(assert (=> b!510295 m!491629))

(assert (=> b!510295 m!491629))

(declare-fun m!491645 () Bool)

(assert (=> b!510295 m!491645))

(declare-fun m!491647 () Bool)

(assert (=> start!46098 m!491647))

(declare-fun m!491649 () Bool)

(assert (=> start!46098 m!491649))

(declare-fun m!491651 () Bool)

(assert (=> b!510294 m!491651))

(declare-fun m!491653 () Bool)

(assert (=> b!510294 m!491653))

(check-sat (not b!510299) (not b!510292) (not b!510293) (not b!510294) (not start!46098) (not b!510298) (not b!510291) (not b!510295) (not b!510297))
(check-sat)
