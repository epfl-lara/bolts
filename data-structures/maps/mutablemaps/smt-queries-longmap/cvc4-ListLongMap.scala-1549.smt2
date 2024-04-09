; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29326 () Bool)

(assert start!29326)

(declare-fun b!296974 () Bool)

(declare-fun res!156618 () Bool)

(declare-fun e!187702 () Bool)

(assert (=> b!296974 (=> (not res!156618) (not e!187702))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296974 (= res!156618 (validKeyInArray!0 k!2524))))

(declare-fun b!296976 () Bool)

(declare-fun e!187703 () Bool)

(declare-fun e!187699 () Bool)

(assert (=> b!296976 (= e!187703 e!187699)))

(declare-fun res!156621 () Bool)

(assert (=> b!296976 (=> (not res!156621) (not e!187699))))

(declare-fun lt!147597 () Bool)

(assert (=> b!296976 (= res!156621 lt!147597)))

(declare-fun lt!147599 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2285 0))(
  ( (MissingZero!2285 (index!11310 (_ BitVec 32))) (Found!2285 (index!11311 (_ BitVec 32))) (Intermediate!2285 (undefined!3097 Bool) (index!11312 (_ BitVec 32)) (x!29490 (_ BitVec 32))) (Undefined!2285) (MissingVacant!2285 (index!11313 (_ BitVec 32))) )
))
(declare-fun lt!147594 () SeekEntryResult!2285)

(declare-datatypes ((array!15036 0))(
  ( (array!15037 (arr!7125 (Array (_ BitVec 32) (_ BitVec 64))) (size!7477 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15036)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15036 (_ BitVec 32)) SeekEntryResult!2285)

(assert (=> b!296976 (= lt!147594 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147599 k!2524 (array!15037 (store (arr!7125 a!3312) i!1256 k!2524) (size!7477 a!3312)) mask!3809))))

(declare-fun lt!147593 () SeekEntryResult!2285)

(assert (=> b!296976 (= lt!147593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147599 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296976 (= lt!147599 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296977 () Bool)

(declare-fun res!156620 () Bool)

(assert (=> b!296977 (=> (not res!156620) (not e!187702))))

(assert (=> b!296977 (= res!156620 (and (= (size!7477 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7477 a!3312))))))

(declare-fun b!296978 () Bool)

(assert (=> b!296978 (= e!187702 e!187703)))

(declare-fun res!156616 () Bool)

(assert (=> b!296978 (=> (not res!156616) (not e!187703))))

(declare-fun lt!147598 () SeekEntryResult!2285)

(assert (=> b!296978 (= res!156616 (or lt!147597 (= lt!147598 (MissingVacant!2285 i!1256))))))

(assert (=> b!296978 (= lt!147597 (= lt!147598 (MissingZero!2285 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15036 (_ BitVec 32)) SeekEntryResult!2285)

(assert (=> b!296978 (= lt!147598 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296979 () Bool)

(declare-fun res!156617 () Bool)

(assert (=> b!296979 (=> (not res!156617) (not e!187702))))

(declare-fun arrayContainsKey!0 (array!15036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296979 (= res!156617 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296975 () Bool)

(declare-fun res!156614 () Bool)

(assert (=> b!296975 (=> (not res!156614) (not e!187703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15036 (_ BitVec 32)) Bool)

(assert (=> b!296975 (= res!156614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!156615 () Bool)

(assert (=> start!29326 (=> (not res!156615) (not e!187702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29326 (= res!156615 (validMask!0 mask!3809))))

(assert (=> start!29326 e!187702))

(assert (=> start!29326 true))

(declare-fun array_inv!5079 (array!15036) Bool)

(assert (=> start!29326 (array_inv!5079 a!3312)))

(declare-fun b!296980 () Bool)

(declare-fun e!187700 () Bool)

(assert (=> b!296980 (= e!187699 e!187700)))

(declare-fun res!156619 () Bool)

(assert (=> b!296980 (=> (not res!156619) (not e!187700))))

(declare-fun lt!147595 () Bool)

(assert (=> b!296980 (= res!156619 (and (or lt!147595 (not (undefined!3097 lt!147593))) (or lt!147595 (not (= (select (arr!7125 a!3312) (index!11312 lt!147593)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147595 (not (= (select (arr!7125 a!3312) (index!11312 lt!147593)) k!2524))) (not lt!147595)))))

(assert (=> b!296980 (= lt!147595 (not (is-Intermediate!2285 lt!147593)))))

(declare-fun b!296981 () Bool)

(assert (=> b!296981 (= e!187700 (not (and (bvsge (index!11312 lt!147593) #b00000000000000000000000000000000) (bvslt (index!11312 lt!147593) (size!7477 a!3312)))))))

(assert (=> b!296981 (= lt!147594 lt!147593)))

(declare-datatypes ((Unit!9237 0))(
  ( (Unit!9238) )
))
(declare-fun lt!147596 () Unit!9237)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15036 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9237)

(assert (=> b!296981 (= lt!147596 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147599 (index!11312 lt!147593) (x!29490 lt!147593) mask!3809))))

(assert (=> b!296981 (and (= (select (arr!7125 a!3312) (index!11312 lt!147593)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11312 lt!147593) i!1256))))

(assert (= (and start!29326 res!156615) b!296977))

(assert (= (and b!296977 res!156620) b!296974))

(assert (= (and b!296974 res!156618) b!296979))

(assert (= (and b!296979 res!156617) b!296978))

(assert (= (and b!296978 res!156616) b!296975))

(assert (= (and b!296975 res!156614) b!296976))

(assert (= (and b!296976 res!156621) b!296980))

(assert (= (and b!296980 res!156619) b!296981))

(declare-fun m!309833 () Bool)

(assert (=> b!296981 m!309833))

(declare-fun m!309835 () Bool)

(assert (=> b!296981 m!309835))

(assert (=> b!296980 m!309835))

(declare-fun m!309837 () Bool)

(assert (=> b!296976 m!309837))

(declare-fun m!309839 () Bool)

(assert (=> b!296976 m!309839))

(declare-fun m!309841 () Bool)

(assert (=> b!296976 m!309841))

(declare-fun m!309843 () Bool)

(assert (=> b!296976 m!309843))

(declare-fun m!309845 () Bool)

(assert (=> start!29326 m!309845))

(declare-fun m!309847 () Bool)

(assert (=> start!29326 m!309847))

(declare-fun m!309849 () Bool)

(assert (=> b!296974 m!309849))

(declare-fun m!309851 () Bool)

(assert (=> b!296978 m!309851))

(declare-fun m!309853 () Bool)

(assert (=> b!296979 m!309853))

(declare-fun m!309855 () Bool)

(assert (=> b!296975 m!309855))

(push 1)

(assert (not b!296975))

(assert (not b!296978))

(assert (not b!296976))

(assert (not start!29326))

(assert (not b!296981))

(assert (not b!296979))

(assert (not b!296974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

