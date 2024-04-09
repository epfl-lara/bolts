; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45376 () Bool)

(assert start!45376)

(declare-fun b!498003 () Bool)

(declare-datatypes ((Unit!14822 0))(
  ( (Unit!14823) )
))
(declare-fun e!291902 () Unit!14822)

(declare-fun Unit!14824 () Unit!14822)

(assert (=> b!498003 (= e!291902 Unit!14824)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32161 0))(
  ( (array!32162 (arr!15459 (Array (_ BitVec 32) (_ BitVec 64))) (size!15823 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32161)

(declare-datatypes ((SeekEntryResult!3933 0))(
  ( (MissingZero!3933 (index!17914 (_ BitVec 32))) (Found!3933 (index!17915 (_ BitVec 32))) (Intermediate!3933 (undefined!4745 Bool) (index!17916 (_ BitVec 32)) (x!46997 (_ BitVec 32))) (Undefined!3933) (MissingVacant!3933 (index!17917 (_ BitVec 32))) )
))
(declare-fun lt!225589 () SeekEntryResult!3933)

(declare-fun lt!225583 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!225586 () Unit!14822)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32161 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14822)

(assert (=> b!498003 (= lt!225586 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225583 #b00000000000000000000000000000000 (index!17916 lt!225589) (x!46997 lt!225589) mask!3524))))

(declare-fun lt!225581 () array!32161)

(declare-fun res!300291 () Bool)

(declare-fun lt!225588 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32161 (_ BitVec 32)) SeekEntryResult!3933)

(assert (=> b!498003 (= res!300291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225583 lt!225588 lt!225581 mask!3524) (Intermediate!3933 false (index!17916 lt!225589) (x!46997 lt!225589))))))

(declare-fun e!291901 () Bool)

(assert (=> b!498003 (=> (not res!300291) (not e!291901))))

(assert (=> b!498003 e!291901))

(declare-fun b!498004 () Bool)

(declare-fun e!291905 () Bool)

(declare-fun e!291900 () Bool)

(assert (=> b!498004 (= e!291905 e!291900)))

(declare-fun res!300288 () Bool)

(assert (=> b!498004 (=> (not res!300288) (not e!291900))))

(declare-fun lt!225590 () SeekEntryResult!3933)

(assert (=> b!498004 (= res!300288 (or (= lt!225590 (MissingZero!3933 i!1204)) (= lt!225590 (MissingVacant!3933 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32161 (_ BitVec 32)) SeekEntryResult!3933)

(assert (=> b!498004 (= lt!225590 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498005 () Bool)

(declare-fun res!300284 () Bool)

(assert (=> b!498005 (=> (not res!300284) (not e!291905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498005 (= res!300284 (validKeyInArray!0 (select (arr!15459 a!3235) j!176)))))

(declare-fun b!498006 () Bool)

(declare-fun e!291904 () Bool)

(assert (=> b!498006 (= e!291904 (= (seekEntryOrOpen!0 (select (arr!15459 a!3235) j!176) a!3235 mask!3524) (Found!3933 j!176)))))

(declare-fun b!498007 () Bool)

(declare-fun res!300286 () Bool)

(assert (=> b!498007 (=> (not res!300286) (not e!291905))))

(assert (=> b!498007 (= res!300286 (and (= (size!15823 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15823 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15823 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498008 () Bool)

(declare-fun e!291903 () Bool)

(declare-fun e!291907 () Bool)

(assert (=> b!498008 (= e!291903 e!291907)))

(declare-fun res!300292 () Bool)

(assert (=> b!498008 (=> res!300292 e!291907)))

(assert (=> b!498008 (= res!300292 (or (bvsgt #b00000000000000000000000000000000 (x!46997 lt!225589)) (bvsgt (x!46997 lt!225589) #b01111111111111111111111111111110) (bvslt lt!225583 #b00000000000000000000000000000000) (bvsge lt!225583 (size!15823 a!3235)) (bvslt (index!17916 lt!225589) #b00000000000000000000000000000000) (bvsge (index!17916 lt!225589) (size!15823 a!3235)) (not (= lt!225589 (Intermediate!3933 false (index!17916 lt!225589) (x!46997 lt!225589))))))))

(assert (=> b!498008 (and (or (= (select (arr!15459 a!3235) (index!17916 lt!225589)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15459 a!3235) (index!17916 lt!225589)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15459 a!3235) (index!17916 lt!225589)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15459 a!3235) (index!17916 lt!225589)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225587 () Unit!14822)

(assert (=> b!498008 (= lt!225587 e!291902)))

(declare-fun c!59138 () Bool)

(assert (=> b!498008 (= c!59138 (= (select (arr!15459 a!3235) (index!17916 lt!225589)) (select (arr!15459 a!3235) j!176)))))

(assert (=> b!498008 (and (bvslt (x!46997 lt!225589) #b01111111111111111111111111111110) (or (= (select (arr!15459 a!3235) (index!17916 lt!225589)) (select (arr!15459 a!3235) j!176)) (= (select (arr!15459 a!3235) (index!17916 lt!225589)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15459 a!3235) (index!17916 lt!225589)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!300287 () Bool)

(assert (=> start!45376 (=> (not res!300287) (not e!291905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45376 (= res!300287 (validMask!0 mask!3524))))

(assert (=> start!45376 e!291905))

(assert (=> start!45376 true))

(declare-fun array_inv!11233 (array!32161) Bool)

(assert (=> start!45376 (array_inv!11233 a!3235)))

(declare-fun b!498009 () Bool)

(declare-fun res!300281 () Bool)

(assert (=> b!498009 (=> (not res!300281) (not e!291905))))

(declare-fun arrayContainsKey!0 (array!32161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498009 (= res!300281 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498010 () Bool)

(assert (=> b!498010 (= e!291900 (not e!291903))))

(declare-fun res!300293 () Bool)

(assert (=> b!498010 (=> res!300293 e!291903)))

(declare-fun lt!225584 () (_ BitVec 32))

(assert (=> b!498010 (= res!300293 (= lt!225589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225584 lt!225588 lt!225581 mask!3524)))))

(assert (=> b!498010 (= lt!225589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225583 (select (arr!15459 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498010 (= lt!225584 (toIndex!0 lt!225588 mask!3524))))

(assert (=> b!498010 (= lt!225588 (select (store (arr!15459 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498010 (= lt!225583 (toIndex!0 (select (arr!15459 a!3235) j!176) mask!3524))))

(assert (=> b!498010 (= lt!225581 (array!32162 (store (arr!15459 a!3235) i!1204 k!2280) (size!15823 a!3235)))))

(assert (=> b!498010 e!291904))

(declare-fun res!300290 () Bool)

(assert (=> b!498010 (=> (not res!300290) (not e!291904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32161 (_ BitVec 32)) Bool)

(assert (=> b!498010 (= res!300290 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225582 () Unit!14822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14822)

(assert (=> b!498010 (= lt!225582 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498011 () Bool)

(declare-fun res!300283 () Bool)

(assert (=> b!498011 (=> res!300283 e!291903)))

(assert (=> b!498011 (= res!300283 (or (undefined!4745 lt!225589) (not (is-Intermediate!3933 lt!225589))))))

(declare-fun b!498012 () Bool)

(declare-fun Unit!14825 () Unit!14822)

(assert (=> b!498012 (= e!291902 Unit!14825)))

(declare-fun b!498013 () Bool)

(assert (=> b!498013 (= e!291901 false)))

(declare-fun b!498014 () Bool)

(declare-fun res!300289 () Bool)

(assert (=> b!498014 (=> (not res!300289) (not e!291900))))

(declare-datatypes ((List!9670 0))(
  ( (Nil!9667) (Cons!9666 (h!10540 (_ BitVec 64)) (t!15906 List!9670)) )
))
(declare-fun arrayNoDuplicates!0 (array!32161 (_ BitVec 32) List!9670) Bool)

(assert (=> b!498014 (= res!300289 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9667))))

(declare-fun b!498015 () Bool)

(declare-fun res!300282 () Bool)

(assert (=> b!498015 (=> (not res!300282) (not e!291905))))

(assert (=> b!498015 (= res!300282 (validKeyInArray!0 k!2280))))

(declare-fun b!498016 () Bool)

(declare-fun res!300285 () Bool)

(assert (=> b!498016 (=> (not res!300285) (not e!291900))))

(assert (=> b!498016 (= res!300285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498017 () Bool)

(assert (=> b!498017 (= e!291907 true)))

(declare-fun lt!225585 () SeekEntryResult!3933)

(assert (=> b!498017 (= lt!225585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225583 lt!225588 lt!225581 mask!3524))))

(assert (= (and start!45376 res!300287) b!498007))

(assert (= (and b!498007 res!300286) b!498005))

(assert (= (and b!498005 res!300284) b!498015))

(assert (= (and b!498015 res!300282) b!498009))

(assert (= (and b!498009 res!300281) b!498004))

(assert (= (and b!498004 res!300288) b!498016))

(assert (= (and b!498016 res!300285) b!498014))

(assert (= (and b!498014 res!300289) b!498010))

(assert (= (and b!498010 res!300290) b!498006))

(assert (= (and b!498010 (not res!300293)) b!498011))

(assert (= (and b!498011 (not res!300283)) b!498008))

(assert (= (and b!498008 c!59138) b!498003))

(assert (= (and b!498008 (not c!59138)) b!498012))

(assert (= (and b!498003 res!300291) b!498013))

(assert (= (and b!498008 (not res!300292)) b!498017))

(declare-fun m!479323 () Bool)

(assert (=> b!498015 m!479323))

(declare-fun m!479325 () Bool)

(assert (=> b!498017 m!479325))

(declare-fun m!479327 () Bool)

(assert (=> start!45376 m!479327))

(declare-fun m!479329 () Bool)

(assert (=> start!45376 m!479329))

(declare-fun m!479331 () Bool)

(assert (=> b!498004 m!479331))

(declare-fun m!479333 () Bool)

(assert (=> b!498008 m!479333))

(declare-fun m!479335 () Bool)

(assert (=> b!498008 m!479335))

(declare-fun m!479337 () Bool)

(assert (=> b!498016 m!479337))

(assert (=> b!498006 m!479335))

(assert (=> b!498006 m!479335))

(declare-fun m!479339 () Bool)

(assert (=> b!498006 m!479339))

(declare-fun m!479341 () Bool)

(assert (=> b!498003 m!479341))

(assert (=> b!498003 m!479325))

(declare-fun m!479343 () Bool)

(assert (=> b!498009 m!479343))

(declare-fun m!479345 () Bool)

(assert (=> b!498010 m!479345))

(declare-fun m!479347 () Bool)

(assert (=> b!498010 m!479347))

(declare-fun m!479349 () Bool)

(assert (=> b!498010 m!479349))

(declare-fun m!479351 () Bool)

(assert (=> b!498010 m!479351))

(declare-fun m!479353 () Bool)

(assert (=> b!498010 m!479353))

(assert (=> b!498010 m!479335))

(declare-fun m!479355 () Bool)

(assert (=> b!498010 m!479355))

(assert (=> b!498010 m!479335))

(declare-fun m!479357 () Bool)

(assert (=> b!498010 m!479357))

(assert (=> b!498010 m!479335))

(declare-fun m!479359 () Bool)

(assert (=> b!498010 m!479359))

(declare-fun m!479361 () Bool)

(assert (=> b!498014 m!479361))

(assert (=> b!498005 m!479335))

(assert (=> b!498005 m!479335))

(declare-fun m!479363 () Bool)

(assert (=> b!498005 m!479363))

(push 1)

