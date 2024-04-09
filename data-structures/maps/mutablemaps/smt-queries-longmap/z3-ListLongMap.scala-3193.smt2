; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44796 () Bool)

(assert start!44796)

(declare-fun b!491522 () Bool)

(declare-fun res!294616 () Bool)

(declare-fun e!288777 () Bool)

(assert (=> b!491522 (=> (not res!294616) (not e!288777))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491522 (= res!294616 (validKeyInArray!0 k0!2280))))

(declare-fun b!491523 () Bool)

(declare-fun res!294613 () Bool)

(declare-fun e!288774 () Bool)

(assert (=> b!491523 (=> (not res!294613) (not e!288774))))

(declare-datatypes ((array!31815 0))(
  ( (array!31816 (arr!15292 (Array (_ BitVec 32) (_ BitVec 64))) (size!15656 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31815)

(declare-datatypes ((List!9503 0))(
  ( (Nil!9500) (Cons!9499 (h!10361 (_ BitVec 64)) (t!15739 List!9503)) )
))
(declare-fun arrayNoDuplicates!0 (array!31815 (_ BitVec 32) List!9503) Bool)

(assert (=> b!491523 (= res!294613 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9500))))

(declare-fun res!294615 () Bool)

(assert (=> start!44796 (=> (not res!294615) (not e!288777))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44796 (= res!294615 (validMask!0 mask!3524))))

(assert (=> start!44796 e!288777))

(assert (=> start!44796 true))

(declare-fun array_inv!11066 (array!31815) Bool)

(assert (=> start!44796 (array_inv!11066 a!3235)))

(declare-fun b!491524 () Bool)

(declare-fun e!288776 () Bool)

(assert (=> b!491524 (= e!288774 (not e!288776))))

(declare-fun res!294612 () Bool)

(assert (=> b!491524 (=> res!294612 e!288776)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!222297 () (_ BitVec 64))

(declare-fun lt!222301 () array!31815)

(declare-datatypes ((SeekEntryResult!3766 0))(
  ( (MissingZero!3766 (index!17243 (_ BitVec 32))) (Found!3766 (index!17244 (_ BitVec 32))) (Intermediate!3766 (undefined!4578 Bool) (index!17245 (_ BitVec 32)) (x!46355 (_ BitVec 32))) (Undefined!3766) (MissingVacant!3766 (index!17246 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31815 (_ BitVec 32)) SeekEntryResult!3766)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491524 (= res!294612 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15292 a!3235) j!176) mask!3524) (select (arr!15292 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222297 mask!3524) lt!222297 lt!222301 mask!3524))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491524 (= lt!222297 (select (store (arr!15292 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!491524 (= lt!222301 (array!31816 (store (arr!15292 a!3235) i!1204 k0!2280) (size!15656 a!3235)))))

(declare-fun lt!222302 () SeekEntryResult!3766)

(assert (=> b!491524 (= lt!222302 (Found!3766 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31815 (_ BitVec 32)) SeekEntryResult!3766)

(assert (=> b!491524 (= lt!222302 (seekEntryOrOpen!0 (select (arr!15292 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31815 (_ BitVec 32)) Bool)

(assert (=> b!491524 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14470 0))(
  ( (Unit!14471) )
))
(declare-fun lt!222299 () Unit!14470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14470)

(assert (=> b!491524 (= lt!222299 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491525 () Bool)

(assert (=> b!491525 (= e!288777 e!288774)))

(declare-fun res!294608 () Bool)

(assert (=> b!491525 (=> (not res!294608) (not e!288774))))

(declare-fun lt!222298 () SeekEntryResult!3766)

(assert (=> b!491525 (= res!294608 (or (= lt!222298 (MissingZero!3766 i!1204)) (= lt!222298 (MissingVacant!3766 i!1204))))))

(assert (=> b!491525 (= lt!222298 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!491526 () Bool)

(declare-fun res!294609 () Bool)

(assert (=> b!491526 (=> (not res!294609) (not e!288777))))

(declare-fun arrayContainsKey!0 (array!31815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491526 (= res!294609 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491527 () Bool)

(declare-fun res!294611 () Bool)

(assert (=> b!491527 (=> (not res!294611) (not e!288774))))

(assert (=> b!491527 (= res!294611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491528 () Bool)

(declare-fun e!288778 () Bool)

(assert (=> b!491528 (= e!288776 e!288778)))

(declare-fun res!294617 () Bool)

(assert (=> b!491528 (=> res!294617 e!288778)))

(assert (=> b!491528 (= res!294617 (bvslt mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!491528 (= lt!222302 (seekEntryOrOpen!0 lt!222297 lt!222301 mask!3524))))

(declare-fun lt!222300 () Unit!14470)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31815 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14470)

(assert (=> b!491528 (= lt!222300 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!491529 () Bool)

(assert (=> b!491529 (= e!288778 (validKeyInArray!0 lt!222297))))

(declare-fun b!491530 () Bool)

(declare-fun res!294614 () Bool)

(assert (=> b!491530 (=> (not res!294614) (not e!288777))))

(assert (=> b!491530 (= res!294614 (validKeyInArray!0 (select (arr!15292 a!3235) j!176)))))

(declare-fun b!491531 () Bool)

(declare-fun res!294610 () Bool)

(assert (=> b!491531 (=> (not res!294610) (not e!288777))))

(assert (=> b!491531 (= res!294610 (and (= (size!15656 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15656 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15656 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44796 res!294615) b!491531))

(assert (= (and b!491531 res!294610) b!491530))

(assert (= (and b!491530 res!294614) b!491522))

(assert (= (and b!491522 res!294616) b!491526))

(assert (= (and b!491526 res!294609) b!491525))

(assert (= (and b!491525 res!294608) b!491527))

(assert (= (and b!491527 res!294611) b!491523))

(assert (= (and b!491523 res!294613) b!491524))

(assert (= (and b!491524 (not res!294612)) b!491528))

(assert (= (and b!491528 (not res!294617)) b!491529))

(declare-fun m!472267 () Bool)

(assert (=> b!491529 m!472267))

(declare-fun m!472269 () Bool)

(assert (=> b!491526 m!472269))

(declare-fun m!472271 () Bool)

(assert (=> b!491523 m!472271))

(declare-fun m!472273 () Bool)

(assert (=> b!491522 m!472273))

(declare-fun m!472275 () Bool)

(assert (=> b!491527 m!472275))

(declare-fun m!472277 () Bool)

(assert (=> b!491530 m!472277))

(assert (=> b!491530 m!472277))

(declare-fun m!472279 () Bool)

(assert (=> b!491530 m!472279))

(declare-fun m!472281 () Bool)

(assert (=> b!491528 m!472281))

(declare-fun m!472283 () Bool)

(assert (=> b!491528 m!472283))

(declare-fun m!472285 () Bool)

(assert (=> b!491524 m!472285))

(declare-fun m!472287 () Bool)

(assert (=> b!491524 m!472287))

(declare-fun m!472289 () Bool)

(assert (=> b!491524 m!472289))

(declare-fun m!472291 () Bool)

(assert (=> b!491524 m!472291))

(assert (=> b!491524 m!472277))

(declare-fun m!472293 () Bool)

(assert (=> b!491524 m!472293))

(assert (=> b!491524 m!472277))

(assert (=> b!491524 m!472291))

(assert (=> b!491524 m!472277))

(declare-fun m!472295 () Bool)

(assert (=> b!491524 m!472295))

(assert (=> b!491524 m!472277))

(declare-fun m!472297 () Bool)

(assert (=> b!491524 m!472297))

(declare-fun m!472299 () Bool)

(assert (=> b!491524 m!472299))

(assert (=> b!491524 m!472299))

(declare-fun m!472301 () Bool)

(assert (=> b!491524 m!472301))

(declare-fun m!472303 () Bool)

(assert (=> b!491525 m!472303))

(declare-fun m!472305 () Bool)

(assert (=> start!44796 m!472305))

(declare-fun m!472307 () Bool)

(assert (=> start!44796 m!472307))

(check-sat (not b!491527) (not b!491525) (not b!491522) (not b!491523) (not b!491526) (not start!44796) (not b!491530) (not b!491524) (not b!491529) (not b!491528))
(check-sat)
