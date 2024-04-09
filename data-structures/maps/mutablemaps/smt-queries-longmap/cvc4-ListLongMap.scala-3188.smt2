; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44768 () Bool)

(assert start!44768)

(declare-fun b!491139 () Bool)

(declare-fun res!294230 () Bool)

(declare-fun e!288601 () Bool)

(assert (=> b!491139 (=> (not res!294230) (not e!288601))))

(declare-datatypes ((array!31787 0))(
  ( (array!31788 (arr!15278 (Array (_ BitVec 32) (_ BitVec 64))) (size!15642 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31787)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491139 (= res!294230 (validKeyInArray!0 (select (arr!15278 a!3235) j!176)))))

(declare-fun b!491140 () Bool)

(declare-fun res!294233 () Bool)

(declare-fun e!288604 () Bool)

(assert (=> b!491140 (=> (not res!294233) (not e!288604))))

(declare-datatypes ((List!9489 0))(
  ( (Nil!9486) (Cons!9485 (h!10347 (_ BitVec 64)) (t!15725 List!9489)) )
))
(declare-fun arrayNoDuplicates!0 (array!31787 (_ BitVec 32) List!9489) Bool)

(assert (=> b!491140 (= res!294233 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9486))))

(declare-fun b!491141 () Bool)

(declare-fun e!288602 () Bool)

(assert (=> b!491141 (= e!288604 (not e!288602))))

(declare-fun res!294229 () Bool)

(assert (=> b!491141 (=> res!294229 e!288602)))

(declare-fun lt!222045 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!222046 () array!31787)

(declare-datatypes ((SeekEntryResult!3752 0))(
  ( (MissingZero!3752 (index!17187 (_ BitVec 32))) (Found!3752 (index!17188 (_ BitVec 32))) (Intermediate!3752 (undefined!4564 Bool) (index!17189 (_ BitVec 32)) (x!46301 (_ BitVec 32))) (Undefined!3752) (MissingVacant!3752 (index!17190 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31787 (_ BitVec 32)) SeekEntryResult!3752)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491141 (= res!294229 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15278 a!3235) j!176) mask!3524) (select (arr!15278 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222045 mask!3524) lt!222045 lt!222046 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491141 (= lt!222045 (select (store (arr!15278 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491141 (= lt!222046 (array!31788 (store (arr!15278 a!3235) i!1204 k!2280) (size!15642 a!3235)))))

(declare-fun lt!222049 () SeekEntryResult!3752)

(assert (=> b!491141 (= lt!222049 (Found!3752 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31787 (_ BitVec 32)) SeekEntryResult!3752)

(assert (=> b!491141 (= lt!222049 (seekEntryOrOpen!0 (select (arr!15278 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31787 (_ BitVec 32)) Bool)

(assert (=> b!491141 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14442 0))(
  ( (Unit!14443) )
))
(declare-fun lt!222050 () Unit!14442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14442)

(assert (=> b!491141 (= lt!222050 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491142 () Bool)

(declare-fun res!294226 () Bool)

(assert (=> b!491142 (=> (not res!294226) (not e!288601))))

(assert (=> b!491142 (= res!294226 (validKeyInArray!0 k!2280))))

(declare-fun b!491143 () Bool)

(assert (=> b!491143 (= e!288601 e!288604)))

(declare-fun res!294228 () Bool)

(assert (=> b!491143 (=> (not res!294228) (not e!288604))))

(declare-fun lt!222048 () SeekEntryResult!3752)

(assert (=> b!491143 (= res!294228 (or (= lt!222048 (MissingZero!3752 i!1204)) (= lt!222048 (MissingVacant!3752 i!1204))))))

(assert (=> b!491143 (= lt!222048 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491144 () Bool)

(declare-fun res!294227 () Bool)

(assert (=> b!491144 (=> (not res!294227) (not e!288601))))

(declare-fun arrayContainsKey!0 (array!31787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491144 (= res!294227 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491145 () Bool)

(declare-fun res!294231 () Bool)

(assert (=> b!491145 (=> (not res!294231) (not e!288604))))

(assert (=> b!491145 (= res!294231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!294232 () Bool)

(assert (=> start!44768 (=> (not res!294232) (not e!288601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44768 (= res!294232 (validMask!0 mask!3524))))

(assert (=> start!44768 e!288601))

(assert (=> start!44768 true))

(declare-fun array_inv!11052 (array!31787) Bool)

(assert (=> start!44768 (array_inv!11052 a!3235)))

(declare-fun b!491146 () Bool)

(assert (=> b!491146 (= e!288602 true)))

(assert (=> b!491146 (= lt!222049 (seekEntryOrOpen!0 lt!222045 lt!222046 mask!3524))))

(declare-fun lt!222047 () Unit!14442)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31787 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14442)

(assert (=> b!491146 (= lt!222047 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491147 () Bool)

(declare-fun res!294225 () Bool)

(assert (=> b!491147 (=> (not res!294225) (not e!288601))))

(assert (=> b!491147 (= res!294225 (and (= (size!15642 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15642 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15642 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44768 res!294232) b!491147))

(assert (= (and b!491147 res!294225) b!491139))

(assert (= (and b!491139 res!294230) b!491142))

(assert (= (and b!491142 res!294226) b!491144))

(assert (= (and b!491144 res!294227) b!491143))

(assert (= (and b!491143 res!294228) b!491145))

(assert (= (and b!491145 res!294231) b!491140))

(assert (= (and b!491140 res!294233) b!491141))

(assert (= (and b!491141 (not res!294229)) b!491146))

(declare-fun m!471705 () Bool)

(assert (=> b!491144 m!471705))

(declare-fun m!471707 () Bool)

(assert (=> b!491139 m!471707))

(assert (=> b!491139 m!471707))

(declare-fun m!471709 () Bool)

(assert (=> b!491139 m!471709))

(declare-fun m!471711 () Bool)

(assert (=> b!491143 m!471711))

(declare-fun m!471713 () Bool)

(assert (=> b!491146 m!471713))

(declare-fun m!471715 () Bool)

(assert (=> b!491146 m!471715))

(declare-fun m!471717 () Bool)

(assert (=> b!491145 m!471717))

(declare-fun m!471719 () Bool)

(assert (=> b!491140 m!471719))

(declare-fun m!471721 () Bool)

(assert (=> b!491141 m!471721))

(declare-fun m!471723 () Bool)

(assert (=> b!491141 m!471723))

(declare-fun m!471725 () Bool)

(assert (=> b!491141 m!471725))

(declare-fun m!471727 () Bool)

(assert (=> b!491141 m!471727))

(assert (=> b!491141 m!471707))

(declare-fun m!471729 () Bool)

(assert (=> b!491141 m!471729))

(assert (=> b!491141 m!471707))

(declare-fun m!471731 () Bool)

(assert (=> b!491141 m!471731))

(assert (=> b!491141 m!471707))

(declare-fun m!471733 () Bool)

(assert (=> b!491141 m!471733))

(declare-fun m!471735 () Bool)

(assert (=> b!491141 m!471735))

(declare-fun m!471737 () Bool)

(assert (=> b!491141 m!471737))

(assert (=> b!491141 m!471735))

(assert (=> b!491141 m!471707))

(assert (=> b!491141 m!471727))

(declare-fun m!471739 () Bool)

(assert (=> b!491142 m!471739))

(declare-fun m!471741 () Bool)

(assert (=> start!44768 m!471741))

(declare-fun m!471743 () Bool)

(assert (=> start!44768 m!471743))

(push 1)

