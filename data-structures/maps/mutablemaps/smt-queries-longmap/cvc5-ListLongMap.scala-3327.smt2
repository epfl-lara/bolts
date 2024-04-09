; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45964 () Bool)

(assert start!45964)

(declare-fun b!508482 () Bool)

(declare-fun res!309478 () Bool)

(declare-fun e!297475 () Bool)

(assert (=> b!508482 (=> (not res!309478) (not e!297475))))

(declare-datatypes ((array!32635 0))(
  ( (array!32636 (arr!15693 (Array (_ BitVec 32) (_ BitVec 64))) (size!16057 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32635)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32635 (_ BitVec 32)) Bool)

(assert (=> b!508482 (= res!309478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508483 () Bool)

(declare-fun res!309477 () Bool)

(declare-fun e!297477 () Bool)

(assert (=> b!508483 (=> (not res!309477) (not e!297477))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508483 (= res!309477 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508484 () Bool)

(declare-fun res!309479 () Bool)

(assert (=> b!508484 (=> (not res!309479) (not e!297477))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508484 (= res!309479 (validKeyInArray!0 (select (arr!15693 a!3235) j!176)))))

(declare-fun b!508485 () Bool)

(assert (=> b!508485 (= e!297477 e!297475)))

(declare-fun res!309481 () Bool)

(assert (=> b!508485 (=> (not res!309481) (not e!297475))))

(declare-datatypes ((SeekEntryResult!4167 0))(
  ( (MissingZero!4167 (index!18856 (_ BitVec 32))) (Found!4167 (index!18857 (_ BitVec 32))) (Intermediate!4167 (undefined!4979 Bool) (index!18858 (_ BitVec 32)) (x!47867 (_ BitVec 32))) (Undefined!4167) (MissingVacant!4167 (index!18859 (_ BitVec 32))) )
))
(declare-fun lt!232288 () SeekEntryResult!4167)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508485 (= res!309481 (or (= lt!232288 (MissingZero!4167 i!1204)) (= lt!232288 (MissingVacant!4167 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32635 (_ BitVec 32)) SeekEntryResult!4167)

(assert (=> b!508485 (= lt!232288 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!309484 () Bool)

(assert (=> start!45964 (=> (not res!309484) (not e!297477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45964 (= res!309484 (validMask!0 mask!3524))))

(assert (=> start!45964 e!297477))

(assert (=> start!45964 true))

(declare-fun array_inv!11467 (array!32635) Bool)

(assert (=> start!45964 (array_inv!11467 a!3235)))

(declare-fun b!508486 () Bool)

(declare-fun res!309482 () Bool)

(assert (=> b!508486 (=> (not res!309482) (not e!297477))))

(assert (=> b!508486 (= res!309482 (validKeyInArray!0 k!2280))))

(declare-fun b!508487 () Bool)

(assert (=> b!508487 (= e!297475 (not true))))

(declare-fun e!297478 () Bool)

(assert (=> b!508487 e!297478))

(declare-fun res!309483 () Bool)

(assert (=> b!508487 (=> (not res!309483) (not e!297478))))

(assert (=> b!508487 (= res!309483 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15584 0))(
  ( (Unit!15585) )
))
(declare-fun lt!232289 () Unit!15584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15584)

(assert (=> b!508487 (= lt!232289 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508488 () Bool)

(declare-fun res!309480 () Bool)

(assert (=> b!508488 (=> (not res!309480) (not e!297477))))

(assert (=> b!508488 (= res!309480 (and (= (size!16057 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16057 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16057 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508489 () Bool)

(assert (=> b!508489 (= e!297478 (= (seekEntryOrOpen!0 (select (arr!15693 a!3235) j!176) a!3235 mask!3524) (Found!4167 j!176)))))

(declare-fun b!508490 () Bool)

(declare-fun res!309485 () Bool)

(assert (=> b!508490 (=> (not res!309485) (not e!297475))))

(declare-datatypes ((List!9904 0))(
  ( (Nil!9901) (Cons!9900 (h!10777 (_ BitVec 64)) (t!16140 List!9904)) )
))
(declare-fun arrayNoDuplicates!0 (array!32635 (_ BitVec 32) List!9904) Bool)

(assert (=> b!508490 (= res!309485 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9901))))

(assert (= (and start!45964 res!309484) b!508488))

(assert (= (and b!508488 res!309480) b!508484))

(assert (= (and b!508484 res!309479) b!508486))

(assert (= (and b!508486 res!309482) b!508483))

(assert (= (and b!508483 res!309477) b!508485))

(assert (= (and b!508485 res!309481) b!508482))

(assert (= (and b!508482 res!309478) b!508490))

(assert (= (and b!508490 res!309485) b!508487))

(assert (= (and b!508487 res!309483) b!508489))

(declare-fun m!489271 () Bool)

(assert (=> b!508482 m!489271))

(declare-fun m!489273 () Bool)

(assert (=> b!508484 m!489273))

(assert (=> b!508484 m!489273))

(declare-fun m!489275 () Bool)

(assert (=> b!508484 m!489275))

(declare-fun m!489277 () Bool)

(assert (=> b!508490 m!489277))

(declare-fun m!489279 () Bool)

(assert (=> b!508487 m!489279))

(declare-fun m!489281 () Bool)

(assert (=> b!508487 m!489281))

(declare-fun m!489283 () Bool)

(assert (=> b!508485 m!489283))

(declare-fun m!489285 () Bool)

(assert (=> b!508486 m!489285))

(assert (=> b!508489 m!489273))

(assert (=> b!508489 m!489273))

(declare-fun m!489287 () Bool)

(assert (=> b!508489 m!489287))

(declare-fun m!489289 () Bool)

(assert (=> b!508483 m!489289))

(declare-fun m!489291 () Bool)

(assert (=> start!45964 m!489291))

(declare-fun m!489293 () Bool)

(assert (=> start!45964 m!489293))

(push 1)

