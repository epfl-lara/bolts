; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28440 () Bool)

(assert start!28440)

(declare-fun b!291077 () Bool)

(declare-fun e!184198 () Bool)

(declare-fun e!184195 () Bool)

(assert (=> b!291077 (= e!184198 e!184195)))

(declare-fun res!152456 () Bool)

(assert (=> b!291077 (=> (not res!152456) (not e!184195))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2134 0))(
  ( (MissingZero!2134 (index!10706 (_ BitVec 32))) (Found!2134 (index!10707 (_ BitVec 32))) (Intermediate!2134 (undefined!2946 Bool) (index!10708 (_ BitVec 32)) (x!28865 (_ BitVec 32))) (Undefined!2134) (MissingVacant!2134 (index!10709 (_ BitVec 32))) )
))
(declare-fun lt!143980 () SeekEntryResult!2134)

(declare-fun lt!143977 () Bool)

(assert (=> b!291077 (= res!152456 (and (not lt!143977) (= lt!143980 (MissingVacant!2134 i!1256))))))

(declare-fun lt!143981 () SeekEntryResult!2134)

(declare-fun lt!143976 () (_ BitVec 32))

(declare-datatypes ((array!14698 0))(
  ( (array!14699 (arr!6974 (Array (_ BitVec 32) (_ BitVec 64))) (size!7326 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14698)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14698 (_ BitVec 32)) SeekEntryResult!2134)

(assert (=> b!291077 (= lt!143981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143976 k0!2524 (array!14699 (store (arr!6974 a!3312) i!1256 k0!2524) (size!7326 a!3312)) mask!3809))))

(declare-fun lt!143979 () SeekEntryResult!2134)

(assert (=> b!291077 (= lt!143979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143976 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291077 (= lt!143976 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!291079 () Bool)

(declare-fun res!152460 () Bool)

(declare-fun e!184196 () Bool)

(assert (=> b!291079 (=> (not res!152460) (not e!184196))))

(declare-fun arrayContainsKey!0 (array!14698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291079 (= res!152460 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291080 () Bool)

(declare-fun res!152454 () Bool)

(assert (=> b!291080 (=> (not res!152454) (not e!184196))))

(assert (=> b!291080 (= res!152454 (and (= (size!7326 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7326 a!3312))))))

(declare-fun b!291081 () Bool)

(assert (=> b!291081 (= e!184196 e!184198)))

(declare-fun res!152457 () Bool)

(assert (=> b!291081 (=> (not res!152457) (not e!184198))))

(assert (=> b!291081 (= res!152457 (or lt!143977 (= lt!143980 (MissingVacant!2134 i!1256))))))

(assert (=> b!291081 (= lt!143977 (= lt!143980 (MissingZero!2134 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14698 (_ BitVec 32)) SeekEntryResult!2134)

(assert (=> b!291081 (= lt!143980 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!291082 () Bool)

(declare-fun e!184197 () Bool)

(assert (=> b!291082 (= e!184197 (not true))))

(assert (=> b!291082 (= (index!10708 lt!143979) i!1256)))

(declare-fun b!291083 () Bool)

(declare-fun res!152459 () Bool)

(assert (=> b!291083 (=> (not res!152459) (not e!184198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14698 (_ BitVec 32)) Bool)

(assert (=> b!291083 (= res!152459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291084 () Bool)

(declare-fun res!152453 () Bool)

(assert (=> b!291084 (=> (not res!152453) (not e!184196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291084 (= res!152453 (validKeyInArray!0 k0!2524))))

(declare-fun b!291078 () Bool)

(assert (=> b!291078 (= e!184195 e!184197)))

(declare-fun res!152455 () Bool)

(assert (=> b!291078 (=> (not res!152455) (not e!184197))))

(declare-fun lt!143978 () Bool)

(assert (=> b!291078 (= res!152455 (and (or lt!143978 (not (undefined!2946 lt!143979))) (not lt!143978) (= (select (arr!6974 a!3312) (index!10708 lt!143979)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291078 (= lt!143978 (not ((_ is Intermediate!2134) lt!143979)))))

(declare-fun res!152458 () Bool)

(assert (=> start!28440 (=> (not res!152458) (not e!184196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28440 (= res!152458 (validMask!0 mask!3809))))

(assert (=> start!28440 e!184196))

(assert (=> start!28440 true))

(declare-fun array_inv!4928 (array!14698) Bool)

(assert (=> start!28440 (array_inv!4928 a!3312)))

(assert (= (and start!28440 res!152458) b!291080))

(assert (= (and b!291080 res!152454) b!291084))

(assert (= (and b!291084 res!152453) b!291079))

(assert (= (and b!291079 res!152460) b!291081))

(assert (= (and b!291081 res!152457) b!291083))

(assert (= (and b!291083 res!152459) b!291077))

(assert (= (and b!291077 res!152456) b!291078))

(assert (= (and b!291078 res!152455) b!291082))

(declare-fun m!305081 () Bool)

(assert (=> b!291084 m!305081))

(declare-fun m!305083 () Bool)

(assert (=> b!291077 m!305083))

(declare-fun m!305085 () Bool)

(assert (=> b!291077 m!305085))

(declare-fun m!305087 () Bool)

(assert (=> b!291077 m!305087))

(declare-fun m!305089 () Bool)

(assert (=> b!291077 m!305089))

(declare-fun m!305091 () Bool)

(assert (=> start!28440 m!305091))

(declare-fun m!305093 () Bool)

(assert (=> start!28440 m!305093))

(declare-fun m!305095 () Bool)

(assert (=> b!291078 m!305095))

(declare-fun m!305097 () Bool)

(assert (=> b!291079 m!305097))

(declare-fun m!305099 () Bool)

(assert (=> b!291083 m!305099))

(declare-fun m!305101 () Bool)

(assert (=> b!291081 m!305101))

(check-sat (not b!291084) (not b!291079) (not b!291077) (not b!291081) (not b!291083) (not start!28440))
(check-sat)
