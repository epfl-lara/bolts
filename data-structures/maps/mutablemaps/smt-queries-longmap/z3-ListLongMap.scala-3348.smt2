; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46092 () Bool)

(assert start!46092)

(declare-fun b!510210 () Bool)

(declare-fun res!311209 () Bool)

(declare-fun e!298244 () Bool)

(assert (=> b!510210 (=> (not res!311209) (not e!298244))))

(declare-datatypes ((array!32763 0))(
  ( (array!32764 (arr!15757 (Array (_ BitVec 32) (_ BitVec 64))) (size!16121 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32763)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510210 (= res!311209 (validKeyInArray!0 (select (arr!15757 a!3235) j!176)))))

(declare-fun b!510211 () Bool)

(declare-fun e!298243 () Bool)

(declare-fun e!298245 () Bool)

(assert (=> b!510211 (= e!298243 (not e!298245))))

(declare-fun res!311212 () Bool)

(assert (=> b!510211 (=> res!311212 e!298245)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!233323 () (_ BitVec 64))

(declare-fun lt!233322 () array!32763)

(declare-datatypes ((SeekEntryResult!4231 0))(
  ( (MissingZero!4231 (index!19112 (_ BitVec 32))) (Found!4231 (index!19113 (_ BitVec 32))) (Intermediate!4231 (undefined!5043 Bool) (index!19114 (_ BitVec 32)) (x!48099 (_ BitVec 32))) (Undefined!4231) (MissingVacant!4231 (index!19115 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32763 (_ BitVec 32)) SeekEntryResult!4231)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510211 (= res!311212 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15757 a!3235) j!176) mask!3524) (select (arr!15757 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233323 mask!3524) lt!233323 lt!233322 mask!3524))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510211 (= lt!233323 (select (store (arr!15757 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!510211 (= lt!233322 (array!32764 (store (arr!15757 a!3235) i!1204 k0!2280) (size!16121 a!3235)))))

(declare-fun lt!233326 () SeekEntryResult!4231)

(assert (=> b!510211 (= lt!233326 (Found!4231 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32763 (_ BitVec 32)) SeekEntryResult!4231)

(assert (=> b!510211 (= lt!233326 (seekEntryOrOpen!0 (select (arr!15757 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32763 (_ BitVec 32)) Bool)

(assert (=> b!510211 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15712 0))(
  ( (Unit!15713) )
))
(declare-fun lt!233327 () Unit!15712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15712)

(assert (=> b!510211 (= lt!233327 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510212 () Bool)

(assert (=> b!510212 (= e!298244 e!298243)))

(declare-fun res!311205 () Bool)

(assert (=> b!510212 (=> (not res!311205) (not e!298243))))

(declare-fun lt!233324 () SeekEntryResult!4231)

(assert (=> b!510212 (= res!311205 (or (= lt!233324 (MissingZero!4231 i!1204)) (= lt!233324 (MissingVacant!4231 i!1204))))))

(assert (=> b!510212 (= lt!233324 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510213 () Bool)

(declare-fun res!311211 () Bool)

(assert (=> b!510213 (=> (not res!311211) (not e!298244))))

(assert (=> b!510213 (= res!311211 (and (= (size!16121 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16121 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16121 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510214 () Bool)

(declare-fun res!311206 () Bool)

(assert (=> b!510214 (=> (not res!311206) (not e!298243))))

(declare-datatypes ((List!9968 0))(
  ( (Nil!9965) (Cons!9964 (h!10841 (_ BitVec 64)) (t!16204 List!9968)) )
))
(declare-fun arrayNoDuplicates!0 (array!32763 (_ BitVec 32) List!9968) Bool)

(assert (=> b!510214 (= res!311206 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9965))))

(declare-fun b!510215 () Bool)

(declare-fun res!311208 () Bool)

(assert (=> b!510215 (=> (not res!311208) (not e!298244))))

(assert (=> b!510215 (= res!311208 (validKeyInArray!0 k0!2280))))

(declare-fun b!510216 () Bool)

(declare-fun res!311207 () Bool)

(assert (=> b!510216 (=> (not res!311207) (not e!298243))))

(assert (=> b!510216 (= res!311207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510217 () Bool)

(declare-fun res!311210 () Bool)

(assert (=> b!510217 (=> (not res!311210) (not e!298244))))

(declare-fun arrayContainsKey!0 (array!32763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510217 (= res!311210 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!311213 () Bool)

(assert (=> start!46092 (=> (not res!311213) (not e!298244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46092 (= res!311213 (validMask!0 mask!3524))))

(assert (=> start!46092 e!298244))

(assert (=> start!46092 true))

(declare-fun array_inv!11531 (array!32763) Bool)

(assert (=> start!46092 (array_inv!11531 a!3235)))

(declare-fun b!510218 () Bool)

(assert (=> b!510218 (= e!298245 true)))

(assert (=> b!510218 (= lt!233326 (seekEntryOrOpen!0 lt!233323 lt!233322 mask!3524))))

(declare-fun lt!233325 () Unit!15712)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32763 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15712)

(assert (=> b!510218 (= lt!233325 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(assert (= (and start!46092 res!311213) b!510213))

(assert (= (and b!510213 res!311211) b!510210))

(assert (= (and b!510210 res!311209) b!510215))

(assert (= (and b!510215 res!311208) b!510217))

(assert (= (and b!510217 res!311210) b!510212))

(assert (= (and b!510212 res!311205) b!510216))

(assert (= (and b!510216 res!311207) b!510214))

(assert (= (and b!510214 res!311206) b!510211))

(assert (= (and b!510211 (not res!311212)) b!510218))

(declare-fun m!491495 () Bool)

(assert (=> b!510212 m!491495))

(declare-fun m!491497 () Bool)

(assert (=> start!46092 m!491497))

(declare-fun m!491499 () Bool)

(assert (=> start!46092 m!491499))

(declare-fun m!491501 () Bool)

(assert (=> b!510215 m!491501))

(declare-fun m!491503 () Bool)

(assert (=> b!510217 m!491503))

(declare-fun m!491505 () Bool)

(assert (=> b!510218 m!491505))

(declare-fun m!491507 () Bool)

(assert (=> b!510218 m!491507))

(declare-fun m!491509 () Bool)

(assert (=> b!510210 m!491509))

(assert (=> b!510210 m!491509))

(declare-fun m!491511 () Bool)

(assert (=> b!510210 m!491511))

(declare-fun m!491513 () Bool)

(assert (=> b!510211 m!491513))

(declare-fun m!491515 () Bool)

(assert (=> b!510211 m!491515))

(declare-fun m!491517 () Bool)

(assert (=> b!510211 m!491517))

(declare-fun m!491519 () Bool)

(assert (=> b!510211 m!491519))

(assert (=> b!510211 m!491509))

(declare-fun m!491521 () Bool)

(assert (=> b!510211 m!491521))

(declare-fun m!491523 () Bool)

(assert (=> b!510211 m!491523))

(declare-fun m!491525 () Bool)

(assert (=> b!510211 m!491525))

(assert (=> b!510211 m!491509))

(assert (=> b!510211 m!491519))

(assert (=> b!510211 m!491509))

(declare-fun m!491527 () Bool)

(assert (=> b!510211 m!491527))

(assert (=> b!510211 m!491509))

(declare-fun m!491529 () Bool)

(assert (=> b!510211 m!491529))

(assert (=> b!510211 m!491523))

(declare-fun m!491531 () Bool)

(assert (=> b!510214 m!491531))

(declare-fun m!491533 () Bool)

(assert (=> b!510216 m!491533))

(check-sat (not b!510210) (not b!510217) (not b!510211) (not b!510216) (not b!510215) (not b!510218) (not b!510214) (not start!46092) (not b!510212))
(check-sat)
