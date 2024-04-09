; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29394 () Bool)

(assert start!29394)

(declare-fun b!297445 () Bool)

(declare-fun res!156906 () Bool)

(declare-fun e!187975 () Bool)

(assert (=> b!297445 (=> (not res!156906) (not e!187975))))

(declare-datatypes ((array!15059 0))(
  ( (array!15060 (arr!7135 (Array (_ BitVec 32) (_ BitVec 64))) (size!7487 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15059)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297445 (= res!156906 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297446 () Bool)

(declare-datatypes ((Unit!9264 0))(
  ( (Unit!9265) )
))
(declare-fun e!187976 () Unit!9264)

(declare-fun e!187979 () Unit!9264)

(assert (=> b!297446 (= e!187976 e!187979)))

(declare-fun c!47855 () Bool)

(declare-datatypes ((SeekEntryResult!2295 0))(
  ( (MissingZero!2295 (index!11350 (_ BitVec 32))) (Found!2295 (index!11351 (_ BitVec 32))) (Intermediate!2295 (undefined!3107 Bool) (index!11352 (_ BitVec 32)) (x!29538 (_ BitVec 32))) (Undefined!2295) (MissingVacant!2295 (index!11353 (_ BitVec 32))) )
))
(declare-fun lt!147884 () SeekEntryResult!2295)

(assert (=> b!297446 (= c!47855 (is-Intermediate!2295 lt!147884))))

(declare-fun res!156901 () Bool)

(assert (=> start!29394 (=> (not res!156901) (not e!187975))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29394 (= res!156901 (validMask!0 mask!3809))))

(assert (=> start!29394 e!187975))

(assert (=> start!29394 true))

(declare-fun array_inv!5089 (array!15059) Bool)

(assert (=> start!29394 (array_inv!5089 a!3312)))

(declare-fun b!297447 () Bool)

(declare-fun e!187974 () Bool)

(declare-fun e!187977 () Bool)

(assert (=> b!297447 (= e!187974 e!187977)))

(declare-fun res!156903 () Bool)

(assert (=> b!297447 (=> (not res!156903) (not e!187977))))

(declare-fun lt!147886 () Bool)

(assert (=> b!297447 (= res!156903 lt!147886)))

(declare-fun lt!147887 () SeekEntryResult!2295)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147883 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15059 (_ BitVec 32)) SeekEntryResult!2295)

(assert (=> b!297447 (= lt!147887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147883 k!2524 (array!15060 (store (arr!7135 a!3312) i!1256 k!2524) (size!7487 a!3312)) mask!3809))))

(assert (=> b!297447 (= lt!147884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147883 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297447 (= lt!147883 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297448 () Bool)

(declare-fun res!156900 () Bool)

(assert (=> b!297448 (=> (not res!156900) (not e!187975))))

(assert (=> b!297448 (= res!156900 (and (= (size!7487 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7487 a!3312))))))

(declare-fun b!297449 () Bool)

(assert (=> b!297449 false))

(declare-fun Unit!9266 () Unit!9264)

(assert (=> b!297449 (= e!187979 Unit!9266)))

(declare-fun b!297450 () Bool)

(assert (=> b!297450 (and (= lt!147887 lt!147884) (= (select (store (arr!7135 a!3312) i!1256 k!2524) (index!11352 lt!147884)) k!2524))))

(declare-fun lt!147881 () Unit!9264)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15059 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9264)

(assert (=> b!297450 (= lt!147881 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147883 (index!11352 lt!147884) (x!29538 lt!147884) mask!3809))))

(assert (=> b!297450 (and (= (select (arr!7135 a!3312) (index!11352 lt!147884)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11352 lt!147884) i!1256))))

(declare-fun Unit!9267 () Unit!9264)

(assert (=> b!297450 (= e!187979 Unit!9267)))

(declare-fun b!297451 () Bool)

(declare-fun res!156902 () Bool)

(assert (=> b!297451 (=> (not res!156902) (not e!187974))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15059 (_ BitVec 32)) Bool)

(assert (=> b!297451 (= res!156902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297452 () Bool)

(declare-fun Unit!9268 () Unit!9264)

(assert (=> b!297452 (= e!187976 Unit!9268)))

(assert (=> b!297452 false))

(declare-fun b!297453 () Bool)

(assert (=> b!297453 (= e!187977 false)))

(declare-fun lt!147885 () Unit!9264)

(assert (=> b!297453 (= lt!147885 e!187976)))

(declare-fun c!47856 () Bool)

(assert (=> b!297453 (= c!47856 (or (and (is-Intermediate!2295 lt!147884) (undefined!3107 lt!147884)) (and (is-Intermediate!2295 lt!147884) (= (select (arr!7135 a!3312) (index!11352 lt!147884)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2295 lt!147884) (= (select (arr!7135 a!3312) (index!11352 lt!147884)) k!2524))))))

(declare-fun b!297454 () Bool)

(declare-fun res!156905 () Bool)

(assert (=> b!297454 (=> (not res!156905) (not e!187975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297454 (= res!156905 (validKeyInArray!0 k!2524))))

(declare-fun b!297455 () Bool)

(assert (=> b!297455 (= e!187975 e!187974)))

(declare-fun res!156904 () Bool)

(assert (=> b!297455 (=> (not res!156904) (not e!187974))))

(declare-fun lt!147882 () SeekEntryResult!2295)

(assert (=> b!297455 (= res!156904 (or lt!147886 (= lt!147882 (MissingVacant!2295 i!1256))))))

(assert (=> b!297455 (= lt!147886 (= lt!147882 (MissingZero!2295 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15059 (_ BitVec 32)) SeekEntryResult!2295)

(assert (=> b!297455 (= lt!147882 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29394 res!156901) b!297448))

(assert (= (and b!297448 res!156900) b!297454))

(assert (= (and b!297454 res!156905) b!297445))

(assert (= (and b!297445 res!156906) b!297455))

(assert (= (and b!297455 res!156904) b!297451))

(assert (= (and b!297451 res!156902) b!297447))

(assert (= (and b!297447 res!156903) b!297453))

(assert (= (and b!297453 c!47856) b!297452))

(assert (= (and b!297453 (not c!47856)) b!297446))

(assert (= (and b!297446 c!47855) b!297450))

(assert (= (and b!297446 (not c!47855)) b!297449))

(declare-fun m!310193 () Bool)

(assert (=> b!297454 m!310193))

(declare-fun m!310195 () Bool)

(assert (=> b!297451 m!310195))

(declare-fun m!310197 () Bool)

(assert (=> b!297455 m!310197))

(declare-fun m!310199 () Bool)

(assert (=> b!297447 m!310199))

(declare-fun m!310201 () Bool)

(assert (=> b!297447 m!310201))

(declare-fun m!310203 () Bool)

(assert (=> b!297447 m!310203))

(declare-fun m!310205 () Bool)

(assert (=> b!297447 m!310205))

(declare-fun m!310207 () Bool)

(assert (=> b!297445 m!310207))

(declare-fun m!310209 () Bool)

(assert (=> start!29394 m!310209))

(declare-fun m!310211 () Bool)

(assert (=> start!29394 m!310211))

(declare-fun m!310213 () Bool)

(assert (=> b!297453 m!310213))

(assert (=> b!297450 m!310199))

(declare-fun m!310215 () Bool)

(assert (=> b!297450 m!310215))

(declare-fun m!310217 () Bool)

(assert (=> b!297450 m!310217))

(assert (=> b!297450 m!310213))

(push 1)

