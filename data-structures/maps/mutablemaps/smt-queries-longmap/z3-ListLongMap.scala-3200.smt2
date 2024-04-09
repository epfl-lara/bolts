; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44958 () Bool)

(assert start!44958)

(declare-fun b!492711 () Bool)

(declare-fun res!295438 () Bool)

(declare-fun e!289439 () Bool)

(assert (=> b!492711 (=> (not res!295438) (not e!289439))))

(declare-datatypes ((array!31863 0))(
  ( (array!31864 (arr!15313 (Array (_ BitVec 32) (_ BitVec 64))) (size!15677 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31863)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31863 (_ BitVec 32)) Bool)

(assert (=> b!492711 (= res!295438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492712 () Bool)

(declare-fun res!295433 () Bool)

(declare-fun e!289441 () Bool)

(assert (=> b!492712 (=> (not res!295433) (not e!289441))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492712 (= res!295433 (validKeyInArray!0 (select (arr!15313 a!3235) j!176)))))

(declare-fun b!492713 () Bool)

(assert (=> b!492713 (= e!289439 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3787 0))(
  ( (MissingZero!3787 (index!17327 (_ BitVec 32))) (Found!3787 (index!17328 (_ BitVec 32))) (Intermediate!3787 (undefined!4599 Bool) (index!17329 (_ BitVec 32)) (x!46444 (_ BitVec 32))) (Undefined!3787) (MissingVacant!3787 (index!17330 (_ BitVec 32))) )
))
(declare-fun lt!222803 () SeekEntryResult!3787)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!222802 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31863 (_ BitVec 32)) SeekEntryResult!3787)

(assert (=> b!492713 (= lt!222803 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222802 (select (store (arr!15313 a!3235) i!1204 k0!2280) j!176) (array!31864 (store (arr!15313 a!3235) i!1204 k0!2280) (size!15677 a!3235)) mask!3524))))

(declare-fun lt!222799 () SeekEntryResult!3787)

(declare-fun lt!222801 () (_ BitVec 32))

(assert (=> b!492713 (= lt!222799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222801 (select (arr!15313 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492713 (= lt!222802 (toIndex!0 (select (store (arr!15313 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!492713 (= lt!222801 (toIndex!0 (select (arr!15313 a!3235) j!176) mask!3524))))

(declare-fun e!289438 () Bool)

(assert (=> b!492713 e!289438))

(declare-fun res!295431 () Bool)

(assert (=> b!492713 (=> (not res!295431) (not e!289438))))

(assert (=> b!492713 (= res!295431 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14512 0))(
  ( (Unit!14513) )
))
(declare-fun lt!222800 () Unit!14512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31863 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14512)

(assert (=> b!492713 (= lt!222800 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492714 () Bool)

(declare-fun res!295435 () Bool)

(assert (=> b!492714 (=> (not res!295435) (not e!289441))))

(declare-fun arrayContainsKey!0 (array!31863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492714 (= res!295435 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!295434 () Bool)

(assert (=> start!44958 (=> (not res!295434) (not e!289441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44958 (= res!295434 (validMask!0 mask!3524))))

(assert (=> start!44958 e!289441))

(assert (=> start!44958 true))

(declare-fun array_inv!11087 (array!31863) Bool)

(assert (=> start!44958 (array_inv!11087 a!3235)))

(declare-fun b!492715 () Bool)

(declare-fun res!295436 () Bool)

(assert (=> b!492715 (=> (not res!295436) (not e!289441))))

(assert (=> b!492715 (= res!295436 (validKeyInArray!0 k0!2280))))

(declare-fun b!492716 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31863 (_ BitVec 32)) SeekEntryResult!3787)

(assert (=> b!492716 (= e!289438 (= (seekEntryOrOpen!0 (select (arr!15313 a!3235) j!176) a!3235 mask!3524) (Found!3787 j!176)))))

(declare-fun b!492717 () Bool)

(declare-fun res!295437 () Bool)

(assert (=> b!492717 (=> (not res!295437) (not e!289441))))

(assert (=> b!492717 (= res!295437 (and (= (size!15677 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15677 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15677 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492718 () Bool)

(assert (=> b!492718 (= e!289441 e!289439)))

(declare-fun res!295432 () Bool)

(assert (=> b!492718 (=> (not res!295432) (not e!289439))))

(declare-fun lt!222798 () SeekEntryResult!3787)

(assert (=> b!492718 (= res!295432 (or (= lt!222798 (MissingZero!3787 i!1204)) (= lt!222798 (MissingVacant!3787 i!1204))))))

(assert (=> b!492718 (= lt!222798 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!492719 () Bool)

(declare-fun res!295439 () Bool)

(assert (=> b!492719 (=> (not res!295439) (not e!289439))))

(declare-datatypes ((List!9524 0))(
  ( (Nil!9521) (Cons!9520 (h!10388 (_ BitVec 64)) (t!15760 List!9524)) )
))
(declare-fun arrayNoDuplicates!0 (array!31863 (_ BitVec 32) List!9524) Bool)

(assert (=> b!492719 (= res!295439 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9521))))

(assert (= (and start!44958 res!295434) b!492717))

(assert (= (and b!492717 res!295437) b!492712))

(assert (= (and b!492712 res!295433) b!492715))

(assert (= (and b!492715 res!295436) b!492714))

(assert (= (and b!492714 res!295435) b!492718))

(assert (= (and b!492718 res!295432) b!492711))

(assert (= (and b!492711 res!295438) b!492719))

(assert (= (and b!492719 res!295439) b!492713))

(assert (= (and b!492713 res!295431) b!492716))

(declare-fun m!473437 () Bool)

(assert (=> b!492712 m!473437))

(assert (=> b!492712 m!473437))

(declare-fun m!473439 () Bool)

(assert (=> b!492712 m!473439))

(declare-fun m!473441 () Bool)

(assert (=> b!492713 m!473441))

(declare-fun m!473443 () Bool)

(assert (=> b!492713 m!473443))

(declare-fun m!473445 () Bool)

(assert (=> b!492713 m!473445))

(declare-fun m!473447 () Bool)

(assert (=> b!492713 m!473447))

(assert (=> b!492713 m!473445))

(declare-fun m!473449 () Bool)

(assert (=> b!492713 m!473449))

(assert (=> b!492713 m!473437))

(declare-fun m!473451 () Bool)

(assert (=> b!492713 m!473451))

(assert (=> b!492713 m!473437))

(declare-fun m!473453 () Bool)

(assert (=> b!492713 m!473453))

(assert (=> b!492713 m!473445))

(declare-fun m!473455 () Bool)

(assert (=> b!492713 m!473455))

(assert (=> b!492713 m!473437))

(declare-fun m!473457 () Bool)

(assert (=> b!492719 m!473457))

(declare-fun m!473459 () Bool)

(assert (=> b!492715 m!473459))

(declare-fun m!473461 () Bool)

(assert (=> b!492718 m!473461))

(assert (=> b!492716 m!473437))

(assert (=> b!492716 m!473437))

(declare-fun m!473463 () Bool)

(assert (=> b!492716 m!473463))

(declare-fun m!473465 () Bool)

(assert (=> b!492711 m!473465))

(declare-fun m!473467 () Bool)

(assert (=> b!492714 m!473467))

(declare-fun m!473469 () Bool)

(assert (=> start!44958 m!473469))

(declare-fun m!473471 () Bool)

(assert (=> start!44958 m!473471))

(check-sat (not b!492711) (not b!492715) (not b!492719) (not b!492716) (not b!492712) (not b!492713) (not b!492714) (not start!44958) (not b!492718))
(check-sat)
