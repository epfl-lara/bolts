; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28604 () Bool)

(assert start!28604)

(declare-fun res!153421 () Bool)

(declare-fun e!184969 () Bool)

(assert (=> start!28604 (=> (not res!153421) (not e!184969))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28604 (= res!153421 (validMask!0 mask!3809))))

(assert (=> start!28604 e!184969))

(assert (=> start!28604 true))

(declare-datatypes ((array!14772 0))(
  ( (array!14773 (arr!7008 (Array (_ BitVec 32) (_ BitVec 64))) (size!7360 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14772)

(declare-fun array_inv!4962 (array!14772) Bool)

(assert (=> start!28604 (array_inv!4962 a!3312)))

(declare-fun b!292325 () Bool)

(declare-fun res!153426 () Bool)

(declare-fun e!184971 () Bool)

(assert (=> b!292325 (=> (not res!153426) (not e!184971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14772 (_ BitVec 32)) Bool)

(assert (=> b!292325 (= res!153426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292326 () Bool)

(declare-fun res!153419 () Bool)

(assert (=> b!292326 (=> (not res!153419) (not e!184969))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292326 (= res!153419 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292327 () Bool)

(declare-fun res!153420 () Bool)

(assert (=> b!292327 (=> (not res!153420) (not e!184969))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292327 (= res!153420 (and (= (size!7360 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7360 a!3312))))))

(declare-fun b!292328 () Bool)

(declare-fun res!153424 () Bool)

(assert (=> b!292328 (=> (not res!153424) (not e!184969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292328 (= res!153424 (validKeyInArray!0 k!2524))))

(declare-fun b!292329 () Bool)

(declare-fun e!184970 () Bool)

(assert (=> b!292329 (= e!184970 (not true))))

(declare-datatypes ((Unit!9167 0))(
  ( (Unit!9168) )
))
(declare-fun lt!144819 () Unit!9167)

(declare-fun lt!144818 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2168 0))(
  ( (MissingZero!2168 (index!10842 (_ BitVec 32))) (Found!2168 (index!10843 (_ BitVec 32))) (Intermediate!2168 (undefined!2980 Bool) (index!10844 (_ BitVec 32)) (x!28999 (_ BitVec 32))) (Undefined!2168) (MissingVacant!2168 (index!10845 (_ BitVec 32))) )
))
(declare-fun lt!144815 () SeekEntryResult!2168)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14772 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9167)

(assert (=> b!292329 (= lt!144819 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144818 (index!10844 lt!144815) (x!28999 lt!144815) mask!3809))))

(assert (=> b!292329 (= (index!10844 lt!144815) i!1256)))

(declare-fun b!292330 () Bool)

(assert (=> b!292330 (= e!184969 e!184971)))

(declare-fun res!153423 () Bool)

(assert (=> b!292330 (=> (not res!153423) (not e!184971))))

(declare-fun lt!144820 () SeekEntryResult!2168)

(declare-fun lt!144816 () Bool)

(assert (=> b!292330 (= res!153423 (or lt!144816 (= lt!144820 (MissingVacant!2168 i!1256))))))

(assert (=> b!292330 (= lt!144816 (= lt!144820 (MissingZero!2168 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14772 (_ BitVec 32)) SeekEntryResult!2168)

(assert (=> b!292330 (= lt!144820 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292331 () Bool)

(declare-fun e!184972 () Bool)

(assert (=> b!292331 (= e!184971 e!184972)))

(declare-fun res!153425 () Bool)

(assert (=> b!292331 (=> (not res!153425) (not e!184972))))

(assert (=> b!292331 (= res!153425 (and (not lt!144816) (= lt!144820 (MissingVacant!2168 i!1256))))))

(declare-fun lt!144817 () SeekEntryResult!2168)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14772 (_ BitVec 32)) SeekEntryResult!2168)

(assert (=> b!292331 (= lt!144817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144818 k!2524 (array!14773 (store (arr!7008 a!3312) i!1256 k!2524) (size!7360 a!3312)) mask!3809))))

(assert (=> b!292331 (= lt!144815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144818 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292331 (= lt!144818 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292332 () Bool)

(assert (=> b!292332 (= e!184972 e!184970)))

(declare-fun res!153422 () Bool)

(assert (=> b!292332 (=> (not res!153422) (not e!184970))))

(declare-fun lt!144821 () Bool)

(assert (=> b!292332 (= res!153422 (and (or lt!144821 (not (undefined!2980 lt!144815))) (not lt!144821) (= (select (arr!7008 a!3312) (index!10844 lt!144815)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292332 (= lt!144821 (not (is-Intermediate!2168 lt!144815)))))

(assert (= (and start!28604 res!153421) b!292327))

(assert (= (and b!292327 res!153420) b!292328))

(assert (= (and b!292328 res!153424) b!292326))

(assert (= (and b!292326 res!153419) b!292330))

(assert (= (and b!292330 res!153423) b!292325))

(assert (= (and b!292325 res!153426) b!292331))

(assert (= (and b!292331 res!153425) b!292332))

(assert (= (and b!292332 res!153422) b!292329))

(declare-fun m!306091 () Bool)

(assert (=> b!292325 m!306091))

(declare-fun m!306093 () Bool)

(assert (=> b!292331 m!306093))

(declare-fun m!306095 () Bool)

(assert (=> b!292331 m!306095))

(declare-fun m!306097 () Bool)

(assert (=> b!292331 m!306097))

(declare-fun m!306099 () Bool)

(assert (=> b!292331 m!306099))

(declare-fun m!306101 () Bool)

(assert (=> b!292332 m!306101))

(declare-fun m!306103 () Bool)

(assert (=> b!292326 m!306103))

(declare-fun m!306105 () Bool)

(assert (=> b!292329 m!306105))

(declare-fun m!306107 () Bool)

(assert (=> b!292328 m!306107))

(declare-fun m!306109 () Bool)

(assert (=> b!292330 m!306109))

(declare-fun m!306111 () Bool)

(assert (=> start!28604 m!306111))

(declare-fun m!306113 () Bool)

(assert (=> start!28604 m!306113))

(push 1)

