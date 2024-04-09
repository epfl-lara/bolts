; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44270 () Bool)

(assert start!44270)

(declare-fun b!486530 () Bool)

(declare-fun res!290066 () Bool)

(declare-fun e!286388 () Bool)

(assert (=> b!486530 (=> (not res!290066) (not e!286388))))

(declare-datatypes ((array!31481 0))(
  ( (array!31482 (arr!15131 (Array (_ BitVec 32) (_ BitVec 64))) (size!15495 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31481)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31481 (_ BitVec 32)) Bool)

(assert (=> b!486530 (= res!290066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486531 () Bool)

(declare-fun e!286390 () Bool)

(assert (=> b!486531 (= e!286390 e!286388)))

(declare-fun res!290067 () Bool)

(assert (=> b!486531 (=> (not res!290067) (not e!286388))))

(declare-datatypes ((SeekEntryResult!3605 0))(
  ( (MissingZero!3605 (index!16599 (_ BitVec 32))) (Found!3605 (index!16600 (_ BitVec 32))) (Intermediate!3605 (undefined!4417 Bool) (index!16601 (_ BitVec 32)) (x!45756 (_ BitVec 32))) (Undefined!3605) (MissingVacant!3605 (index!16602 (_ BitVec 32))) )
))
(declare-fun lt!219799 () SeekEntryResult!3605)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486531 (= res!290067 (or (= lt!219799 (MissingZero!3605 i!1204)) (= lt!219799 (MissingVacant!3605 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31481 (_ BitVec 32)) SeekEntryResult!3605)

(assert (=> b!486531 (= lt!219799 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486533 () Bool)

(declare-fun res!290072 () Bool)

(assert (=> b!486533 (=> (not res!290072) (not e!286390))))

(declare-fun arrayContainsKey!0 (array!31481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486533 (= res!290072 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486534 () Bool)

(declare-fun res!290070 () Bool)

(assert (=> b!486534 (=> (not res!290070) (not e!286390))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486534 (= res!290070 (validKeyInArray!0 (select (arr!15131 a!3235) j!176)))))

(declare-fun res!290068 () Bool)

(assert (=> start!44270 (=> (not res!290068) (not e!286390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44270 (= res!290068 (validMask!0 mask!3524))))

(assert (=> start!44270 e!286390))

(assert (=> start!44270 true))

(declare-fun array_inv!10905 (array!31481) Bool)

(assert (=> start!44270 (array_inv!10905 a!3235)))

(declare-fun b!486532 () Bool)

(declare-fun res!290069 () Bool)

(assert (=> b!486532 (=> (not res!290069) (not e!286390))))

(assert (=> b!486532 (= res!290069 (validKeyInArray!0 k!2280))))

(declare-fun b!486535 () Bool)

(declare-fun res!290071 () Bool)

(assert (=> b!486535 (=> (not res!290071) (not e!286390))))

(assert (=> b!486535 (= res!290071 (and (= (size!15495 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15495 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15495 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486536 () Bool)

(assert (=> b!486536 (= e!286388 false)))

(declare-fun lt!219800 () Bool)

(declare-datatypes ((List!9342 0))(
  ( (Nil!9339) (Cons!9338 (h!10194 (_ BitVec 64)) (t!15578 List!9342)) )
))
(declare-fun arrayNoDuplicates!0 (array!31481 (_ BitVec 32) List!9342) Bool)

(assert (=> b!486536 (= lt!219800 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9339))))

(assert (= (and start!44270 res!290068) b!486535))

(assert (= (and b!486535 res!290071) b!486534))

(assert (= (and b!486534 res!290070) b!486532))

(assert (= (and b!486532 res!290069) b!486533))

(assert (= (and b!486533 res!290072) b!486531))

(assert (= (and b!486531 res!290067) b!486530))

(assert (= (and b!486530 res!290066) b!486536))

(declare-fun m!466465 () Bool)

(assert (=> b!486533 m!466465))

(declare-fun m!466467 () Bool)

(assert (=> b!486534 m!466467))

(assert (=> b!486534 m!466467))

(declare-fun m!466469 () Bool)

(assert (=> b!486534 m!466469))

(declare-fun m!466471 () Bool)

(assert (=> b!486530 m!466471))

(declare-fun m!466473 () Bool)

(assert (=> b!486536 m!466473))

(declare-fun m!466475 () Bool)

(assert (=> b!486532 m!466475))

(declare-fun m!466477 () Bool)

(assert (=> b!486531 m!466477))

(declare-fun m!466479 () Bool)

(assert (=> start!44270 m!466479))

(declare-fun m!466481 () Bool)

(assert (=> start!44270 m!466481))

(push 1)

(assert (not b!486534))

(assert (not b!486532))

(assert (not b!486530))

(assert (not b!486531))

