; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44384 () Bool)

(assert start!44384)

(declare-fun res!290918 () Bool)

(declare-fun e!286840 () Bool)

(assert (=> start!44384 (=> (not res!290918) (not e!286840))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44384 (= res!290918 (validMask!0 mask!3524))))

(assert (=> start!44384 e!286840))

(assert (=> start!44384 true))

(declare-datatypes ((array!31550 0))(
  ( (array!31551 (arr!15164 (Array (_ BitVec 32) (_ BitVec 64))) (size!15528 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31550)

(declare-fun array_inv!10938 (array!31550) Bool)

(assert (=> start!44384 (array_inv!10938 a!3235)))

(declare-fun b!487494 () Bool)

(declare-fun res!290923 () Bool)

(assert (=> b!487494 (=> (not res!290923) (not e!286840))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!487494 (= res!290923 (and (= (size!15528 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15528 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15528 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487495 () Bool)

(declare-fun res!290922 () Bool)

(assert (=> b!487495 (=> (not res!290922) (not e!286840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487495 (= res!290922 (validKeyInArray!0 (select (arr!15164 a!3235) j!176)))))

(declare-fun b!487496 () Bool)

(declare-fun e!286837 () Bool)

(assert (=> b!487496 (= e!286840 e!286837)))

(declare-fun res!290924 () Bool)

(assert (=> b!487496 (=> (not res!290924) (not e!286837))))

(declare-datatypes ((SeekEntryResult!3638 0))(
  ( (MissingZero!3638 (index!16731 (_ BitVec 32))) (Found!3638 (index!16732 (_ BitVec 32))) (Intermediate!3638 (undefined!4450 Bool) (index!16733 (_ BitVec 32)) (x!45877 (_ BitVec 32))) (Undefined!3638) (MissingVacant!3638 (index!16734 (_ BitVec 32))) )
))
(declare-fun lt!220086 () SeekEntryResult!3638)

(assert (=> b!487496 (= res!290924 (or (= lt!220086 (MissingZero!3638 i!1204)) (= lt!220086 (MissingVacant!3638 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31550 (_ BitVec 32)) SeekEntryResult!3638)

(assert (=> b!487496 (= lt!220086 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487497 () Bool)

(declare-fun res!290916 () Bool)

(assert (=> b!487497 (=> (not res!290916) (not e!286837))))

(declare-datatypes ((List!9375 0))(
  ( (Nil!9372) (Cons!9371 (h!10227 (_ BitVec 64)) (t!15611 List!9375)) )
))
(declare-fun arrayNoDuplicates!0 (array!31550 (_ BitVec 32) List!9375) Bool)

(assert (=> b!487497 (= res!290916 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9372))))

(declare-fun b!487498 () Bool)

(assert (=> b!487498 (= e!286837 (not true))))

(declare-fun lt!220088 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487498 (= lt!220088 (toIndex!0 (select (arr!15164 a!3235) j!176) mask!3524))))

(declare-fun e!286839 () Bool)

(assert (=> b!487498 e!286839))

(declare-fun res!290919 () Bool)

(assert (=> b!487498 (=> (not res!290919) (not e!286839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31550 (_ BitVec 32)) Bool)

(assert (=> b!487498 (= res!290919 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14214 0))(
  ( (Unit!14215) )
))
(declare-fun lt!220087 () Unit!14214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14214)

(assert (=> b!487498 (= lt!220087 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487499 () Bool)

(assert (=> b!487499 (= e!286839 (= (seekEntryOrOpen!0 (select (arr!15164 a!3235) j!176) a!3235 mask!3524) (Found!3638 j!176)))))

(declare-fun b!487500 () Bool)

(declare-fun res!290917 () Bool)

(assert (=> b!487500 (=> (not res!290917) (not e!286840))))

(declare-fun arrayContainsKey!0 (array!31550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487500 (= res!290917 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487501 () Bool)

(declare-fun res!290921 () Bool)

(assert (=> b!487501 (=> (not res!290921) (not e!286840))))

(assert (=> b!487501 (= res!290921 (validKeyInArray!0 k!2280))))

(declare-fun b!487502 () Bool)

(declare-fun res!290920 () Bool)

(assert (=> b!487502 (=> (not res!290920) (not e!286837))))

(assert (=> b!487502 (= res!290920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44384 res!290918) b!487494))

(assert (= (and b!487494 res!290923) b!487495))

(assert (= (and b!487495 res!290922) b!487501))

(assert (= (and b!487501 res!290921) b!487500))

(assert (= (and b!487500 res!290917) b!487496))

(assert (= (and b!487496 res!290924) b!487502))

(assert (= (and b!487502 res!290920) b!487497))

(assert (= (and b!487497 res!290916) b!487498))

(assert (= (and b!487498 res!290919) b!487499))

(declare-fun m!467321 () Bool)

(assert (=> b!487502 m!467321))

(declare-fun m!467323 () Bool)

(assert (=> b!487501 m!467323))

(declare-fun m!467325 () Bool)

(assert (=> b!487498 m!467325))

(assert (=> b!487498 m!467325))

(declare-fun m!467327 () Bool)

(assert (=> b!487498 m!467327))

(declare-fun m!467329 () Bool)

(assert (=> b!487498 m!467329))

(declare-fun m!467331 () Bool)

(assert (=> b!487498 m!467331))

(declare-fun m!467333 () Bool)

(assert (=> b!487497 m!467333))

(declare-fun m!467335 () Bool)

(assert (=> start!44384 m!467335))

(declare-fun m!467337 () Bool)

(assert (=> start!44384 m!467337))

(assert (=> b!487499 m!467325))

(assert (=> b!487499 m!467325))

(declare-fun m!467339 () Bool)

(assert (=> b!487499 m!467339))

(declare-fun m!467341 () Bool)

(assert (=> b!487496 m!467341))

(assert (=> b!487495 m!467325))

(assert (=> b!487495 m!467325))

(declare-fun m!467343 () Bool)

(assert (=> b!487495 m!467343))

(declare-fun m!467345 () Bool)

(assert (=> b!487500 m!467345))

(push 1)

(assert (not b!487501))

(assert (not b!487499))

