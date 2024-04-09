; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45062 () Bool)

(assert start!45062)

(declare-fun b!494231 () Bool)

(declare-fun e!290074 () Bool)

(declare-fun e!290073 () Bool)

(assert (=> b!494231 (= e!290074 e!290073)))

(declare-fun res!296958 () Bool)

(assert (=> b!494231 (=> (not res!296958) (not e!290073))))

(declare-datatypes ((SeekEntryResult!3839 0))(
  ( (MissingZero!3839 (index!17535 (_ BitVec 32))) (Found!3839 (index!17536 (_ BitVec 32))) (Intermediate!3839 (undefined!4651 Bool) (index!17537 (_ BitVec 32)) (x!46632 (_ BitVec 32))) (Undefined!3839) (MissingVacant!3839 (index!17538 (_ BitVec 32))) )
))
(declare-fun lt!223727 () SeekEntryResult!3839)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494231 (= res!296958 (or (= lt!223727 (MissingZero!3839 i!1204)) (= lt!223727 (MissingVacant!3839 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31967 0))(
  ( (array!31968 (arr!15365 (Array (_ BitVec 32) (_ BitVec 64))) (size!15729 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31967)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31967 (_ BitVec 32)) SeekEntryResult!3839)

(assert (=> b!494231 (= lt!223727 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494232 () Bool)

(declare-fun res!296951 () Bool)

(assert (=> b!494232 (=> (not res!296951) (not e!290073))))

(declare-datatypes ((List!9576 0))(
  ( (Nil!9573) (Cons!9572 (h!10440 (_ BitVec 64)) (t!15812 List!9576)) )
))
(declare-fun arrayNoDuplicates!0 (array!31967 (_ BitVec 32) List!9576) Bool)

(assert (=> b!494232 (= res!296951 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9573))))

(declare-fun b!494233 () Bool)

(declare-fun res!296957 () Bool)

(declare-fun e!290072 () Bool)

(assert (=> b!494233 (=> res!296957 e!290072)))

(declare-fun lt!223725 () SeekEntryResult!3839)

(assert (=> b!494233 (= res!296957 (or (not (is-Intermediate!3839 lt!223725)) (not (undefined!4651 lt!223725))))))

(declare-fun b!494234 () Bool)

(declare-fun res!296955 () Bool)

(assert (=> b!494234 (=> (not res!296955) (not e!290074))))

(declare-fun arrayContainsKey!0 (array!31967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494234 (= res!296955 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494235 () Bool)

(declare-fun res!296960 () Bool)

(assert (=> b!494235 (=> (not res!296960) (not e!290074))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494235 (= res!296960 (and (= (size!15729 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15729 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15729 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494236 () Bool)

(assert (=> b!494236 (= e!290072 true)))

(declare-fun lt!223726 () SeekEntryResult!3839)

(assert (=> b!494236 (= lt!223726 Undefined!3839)))

(declare-fun res!296959 () Bool)

(assert (=> start!45062 (=> (not res!296959) (not e!290074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45062 (= res!296959 (validMask!0 mask!3524))))

(assert (=> start!45062 e!290074))

(assert (=> start!45062 true))

(declare-fun array_inv!11139 (array!31967) Bool)

(assert (=> start!45062 (array_inv!11139 a!3235)))

(declare-fun b!494237 () Bool)

(assert (=> b!494237 (= e!290073 (not e!290072))))

(declare-fun res!296956 () Bool)

(assert (=> b!494237 (=> res!296956 e!290072)))

(declare-fun lt!223730 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31967 (_ BitVec 32)) SeekEntryResult!3839)

(assert (=> b!494237 (= res!296956 (= lt!223725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223730 (select (store (arr!15365 a!3235) i!1204 k!2280) j!176) (array!31968 (store (arr!15365 a!3235) i!1204 k!2280) (size!15729 a!3235)) mask!3524)))))

(declare-fun lt!223728 () (_ BitVec 32))

(assert (=> b!494237 (= lt!223725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223728 (select (arr!15365 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494237 (= lt!223730 (toIndex!0 (select (store (arr!15365 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494237 (= lt!223728 (toIndex!0 (select (arr!15365 a!3235) j!176) mask!3524))))

(assert (=> b!494237 (= lt!223726 (Found!3839 j!176))))

(assert (=> b!494237 (= lt!223726 (seekEntryOrOpen!0 (select (arr!15365 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31967 (_ BitVec 32)) Bool)

(assert (=> b!494237 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14616 0))(
  ( (Unit!14617) )
))
(declare-fun lt!223729 () Unit!14616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14616)

(assert (=> b!494237 (= lt!223729 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494238 () Bool)

(declare-fun res!296953 () Bool)

(assert (=> b!494238 (=> (not res!296953) (not e!290074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494238 (= res!296953 (validKeyInArray!0 k!2280))))

(declare-fun b!494239 () Bool)

(declare-fun res!296954 () Bool)

(assert (=> b!494239 (=> (not res!296954) (not e!290073))))

(assert (=> b!494239 (= res!296954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494240 () Bool)

(declare-fun res!296952 () Bool)

(assert (=> b!494240 (=> (not res!296952) (not e!290074))))

(assert (=> b!494240 (= res!296952 (validKeyInArray!0 (select (arr!15365 a!3235) j!176)))))

(assert (= (and start!45062 res!296959) b!494235))

(assert (= (and b!494235 res!296960) b!494240))

(assert (= (and b!494240 res!296952) b!494238))

(assert (= (and b!494238 res!296953) b!494234))

(assert (= (and b!494234 res!296955) b!494231))

(assert (= (and b!494231 res!296958) b!494239))

(assert (= (and b!494239 res!296954) b!494232))

(assert (= (and b!494232 res!296951) b!494237))

(assert (= (and b!494237 (not res!296956)) b!494233))

(assert (= (and b!494233 (not res!296957)) b!494236))

(declare-fun m!475309 () Bool)

(assert (=> start!45062 m!475309))

(declare-fun m!475311 () Bool)

(assert (=> start!45062 m!475311))

(declare-fun m!475313 () Bool)

(assert (=> b!494240 m!475313))

(assert (=> b!494240 m!475313))

(declare-fun m!475315 () Bool)

(assert (=> b!494240 m!475315))

(declare-fun m!475317 () Bool)

(assert (=> b!494238 m!475317))

(declare-fun m!475319 () Bool)

(assert (=> b!494239 m!475319))

(declare-fun m!475321 () Bool)

(assert (=> b!494231 m!475321))

(declare-fun m!475323 () Bool)

(assert (=> b!494232 m!475323))

(declare-fun m!475325 () Bool)

(assert (=> b!494234 m!475325))

(declare-fun m!475327 () Bool)

(assert (=> b!494237 m!475327))

(declare-fun m!475329 () Bool)

(assert (=> b!494237 m!475329))

(declare-fun m!475331 () Bool)

(assert (=> b!494237 m!475331))

(assert (=> b!494237 m!475313))

(declare-fun m!475333 () Bool)

(assert (=> b!494237 m!475333))

(assert (=> b!494237 m!475313))

(declare-fun m!475335 () Bool)

(assert (=> b!494237 m!475335))

(assert (=> b!494237 m!475313))

(declare-fun m!475337 () Bool)

(assert (=> b!494237 m!475337))

(assert (=> b!494237 m!475331))

(declare-fun m!475339 () Bool)

(assert (=> b!494237 m!475339))

(assert (=> b!494237 m!475331))

(declare-fun m!475341 () Bool)

(assert (=> b!494237 m!475341))

(assert (=> b!494237 m!475313))

(declare-fun m!475343 () Bool)

(assert (=> b!494237 m!475343))

(push 1)

