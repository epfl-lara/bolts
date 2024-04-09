; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44124 () Bool)

(assert start!44124)

(declare-fun b!485900 () Bool)

(declare-fun res!289656 () Bool)

(declare-fun e!286013 () Bool)

(assert (=> b!485900 (=> (not res!289656) (not e!286013))))

(declare-datatypes ((array!31452 0))(
  ( (array!31453 (arr!15121 (Array (_ BitVec 32) (_ BitVec 64))) (size!15485 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31452)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485900 (= res!289656 (validKeyInArray!0 (select (arr!15121 a!3235) j!176)))))

(declare-fun b!485901 () Bool)

(declare-fun e!286014 () Bool)

(assert (=> b!485901 (= e!286014 (and (bvsle #b00000000000000000000000000000000 (size!15485 a!3235)) (bvsge (size!15485 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!485902 () Bool)

(declare-fun res!289652 () Bool)

(assert (=> b!485902 (=> (not res!289652) (not e!286014))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31452 (_ BitVec 32)) Bool)

(assert (=> b!485902 (= res!289652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!485903 () Bool)

(declare-fun res!289654 () Bool)

(assert (=> b!485903 (=> (not res!289654) (not e!286013))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485903 (= res!289654 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!289657 () Bool)

(assert (=> start!44124 (=> (not res!289657) (not e!286013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44124 (= res!289657 (validMask!0 mask!3524))))

(assert (=> start!44124 e!286013))

(assert (=> start!44124 true))

(declare-fun array_inv!10895 (array!31452) Bool)

(assert (=> start!44124 (array_inv!10895 a!3235)))

(declare-fun b!485904 () Bool)

(assert (=> b!485904 (= e!286013 e!286014)))

(declare-fun res!289653 () Bool)

(assert (=> b!485904 (=> (not res!289653) (not e!286014))))

(declare-datatypes ((SeekEntryResult!3595 0))(
  ( (MissingZero!3595 (index!16559 (_ BitVec 32))) (Found!3595 (index!16560 (_ BitVec 32))) (Intermediate!3595 (undefined!4407 Bool) (index!16561 (_ BitVec 32)) (x!45722 (_ BitVec 32))) (Undefined!3595) (MissingVacant!3595 (index!16562 (_ BitVec 32))) )
))
(declare-fun lt!219587 () SeekEntryResult!3595)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485904 (= res!289653 (or (= lt!219587 (MissingZero!3595 i!1204)) (= lt!219587 (MissingVacant!3595 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31452 (_ BitVec 32)) SeekEntryResult!3595)

(assert (=> b!485904 (= lt!219587 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!485905 () Bool)

(declare-fun res!289655 () Bool)

(assert (=> b!485905 (=> (not res!289655) (not e!286013))))

(assert (=> b!485905 (= res!289655 (and (= (size!15485 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15485 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15485 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485906 () Bool)

(declare-fun res!289658 () Bool)

(assert (=> b!485906 (=> (not res!289658) (not e!286013))))

(assert (=> b!485906 (= res!289658 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44124 res!289657) b!485905))

(assert (= (and b!485905 res!289655) b!485900))

(assert (= (and b!485900 res!289656) b!485906))

(assert (= (and b!485906 res!289658) b!485903))

(assert (= (and b!485903 res!289654) b!485904))

(assert (= (and b!485904 res!289653) b!485902))

(assert (= (and b!485902 res!289652) b!485901))

(declare-fun m!465971 () Bool)

(assert (=> start!44124 m!465971))

(declare-fun m!465973 () Bool)

(assert (=> start!44124 m!465973))

(declare-fun m!465975 () Bool)

(assert (=> b!485904 m!465975))

(declare-fun m!465977 () Bool)

(assert (=> b!485903 m!465977))

(declare-fun m!465979 () Bool)

(assert (=> b!485900 m!465979))

(assert (=> b!485900 m!465979))

(declare-fun m!465981 () Bool)

(assert (=> b!485900 m!465981))

(declare-fun m!465983 () Bool)

(assert (=> b!485906 m!465983))

(declare-fun m!465985 () Bool)

(assert (=> b!485902 m!465985))

(check-sat (not start!44124) (not b!485900) (not b!485902) (not b!485906) (not b!485903) (not b!485904))
(check-sat)
(get-model)

(declare-fun b!485936 () Bool)

(declare-fun e!286031 () Bool)

(declare-fun e!286032 () Bool)

(assert (=> b!485936 (= e!286031 e!286032)))

(declare-fun lt!219598 () (_ BitVec 64))

(assert (=> b!485936 (= lt!219598 (select (arr!15121 a!3235) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14156 0))(
  ( (Unit!14157) )
))
(declare-fun lt!219599 () Unit!14156)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31452 (_ BitVec 64) (_ BitVec 32)) Unit!14156)

(assert (=> b!485936 (= lt!219599 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219598 #b00000000000000000000000000000000))))

(assert (=> b!485936 (arrayContainsKey!0 a!3235 lt!219598 #b00000000000000000000000000000000)))

(declare-fun lt!219597 () Unit!14156)

(assert (=> b!485936 (= lt!219597 lt!219599)))

(declare-fun res!289684 () Bool)

(assert (=> b!485936 (= res!289684 (= (seekEntryOrOpen!0 (select (arr!15121 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3595 #b00000000000000000000000000000000)))))

(assert (=> b!485936 (=> (not res!289684) (not e!286032))))

(declare-fun b!485937 () Bool)

(declare-fun call!31256 () Bool)

(assert (=> b!485937 (= e!286031 call!31256)))

(declare-fun b!485938 () Bool)

(assert (=> b!485938 (= e!286032 call!31256)))

(declare-fun b!485939 () Bool)

(declare-fun e!286033 () Bool)

(assert (=> b!485939 (= e!286033 e!286031)))

(declare-fun c!58394 () Bool)

(assert (=> b!485939 (= c!58394 (validKeyInArray!0 (select (arr!15121 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31253 () Bool)

(assert (=> bm!31253 (= call!31256 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!77333 () Bool)

(declare-fun res!289685 () Bool)

(assert (=> d!77333 (=> res!289685 e!286033)))

(assert (=> d!77333 (= res!289685 (bvsge #b00000000000000000000000000000000 (size!15485 a!3235)))))

(assert (=> d!77333 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286033)))

(assert (= (and d!77333 (not res!289685)) b!485939))

(assert (= (and b!485939 c!58394) b!485936))

(assert (= (and b!485939 (not c!58394)) b!485937))

(assert (= (and b!485936 res!289684) b!485938))

(assert (= (or b!485938 b!485937) bm!31253))

(declare-fun m!466003 () Bool)

(assert (=> b!485936 m!466003))

(declare-fun m!466005 () Bool)

(assert (=> b!485936 m!466005))

(declare-fun m!466007 () Bool)

(assert (=> b!485936 m!466007))

(assert (=> b!485936 m!466003))

(declare-fun m!466009 () Bool)

(assert (=> b!485936 m!466009))

(assert (=> b!485939 m!466003))

(assert (=> b!485939 m!466003))

(declare-fun m!466011 () Bool)

(assert (=> b!485939 m!466011))

(declare-fun m!466013 () Bool)

(assert (=> bm!31253 m!466013))

(assert (=> b!485902 d!77333))

(declare-fun d!77337 () Bool)

(declare-fun res!289690 () Bool)

(declare-fun e!286038 () Bool)

(assert (=> d!77337 (=> res!289690 e!286038)))

(assert (=> d!77337 (= res!289690 (= (select (arr!15121 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!77337 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!286038)))

(declare-fun b!485944 () Bool)

(declare-fun e!286039 () Bool)

(assert (=> b!485944 (= e!286038 e!286039)))

(declare-fun res!289691 () Bool)

(assert (=> b!485944 (=> (not res!289691) (not e!286039))))

(assert (=> b!485944 (= res!289691 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15485 a!3235)))))

(declare-fun b!485945 () Bool)

(assert (=> b!485945 (= e!286039 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77337 (not res!289690)) b!485944))

(assert (= (and b!485944 res!289691) b!485945))

(assert (=> d!77337 m!466003))

(declare-fun m!466015 () Bool)

(assert (=> b!485945 m!466015))

(assert (=> b!485903 d!77337))

(declare-fun b!485970 () Bool)

(declare-fun e!286056 () SeekEntryResult!3595)

(declare-fun lt!219617 () SeekEntryResult!3595)

(assert (=> b!485970 (= e!286056 (Found!3595 (index!16561 lt!219617)))))

(declare-fun b!485971 () Bool)

(declare-fun e!286055 () SeekEntryResult!3595)

(assert (=> b!485971 (= e!286055 Undefined!3595)))

(declare-fun b!485972 () Bool)

(declare-fun e!286057 () SeekEntryResult!3595)

(assert (=> b!485972 (= e!286057 (MissingZero!3595 (index!16561 lt!219617)))))

(declare-fun d!77339 () Bool)

(declare-fun lt!219615 () SeekEntryResult!3595)

(get-info :version)

(assert (=> d!77339 (and (or ((_ is Undefined!3595) lt!219615) (not ((_ is Found!3595) lt!219615)) (and (bvsge (index!16560 lt!219615) #b00000000000000000000000000000000) (bvslt (index!16560 lt!219615) (size!15485 a!3235)))) (or ((_ is Undefined!3595) lt!219615) ((_ is Found!3595) lt!219615) (not ((_ is MissingZero!3595) lt!219615)) (and (bvsge (index!16559 lt!219615) #b00000000000000000000000000000000) (bvslt (index!16559 lt!219615) (size!15485 a!3235)))) (or ((_ is Undefined!3595) lt!219615) ((_ is Found!3595) lt!219615) ((_ is MissingZero!3595) lt!219615) (not ((_ is MissingVacant!3595) lt!219615)) (and (bvsge (index!16562 lt!219615) #b00000000000000000000000000000000) (bvslt (index!16562 lt!219615) (size!15485 a!3235)))) (or ((_ is Undefined!3595) lt!219615) (ite ((_ is Found!3595) lt!219615) (= (select (arr!15121 a!3235) (index!16560 lt!219615)) k0!2280) (ite ((_ is MissingZero!3595) lt!219615) (= (select (arr!15121 a!3235) (index!16559 lt!219615)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3595) lt!219615) (= (select (arr!15121 a!3235) (index!16562 lt!219615)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77339 (= lt!219615 e!286055)))

(declare-fun c!58404 () Bool)

(assert (=> d!77339 (= c!58404 (and ((_ is Intermediate!3595) lt!219617) (undefined!4407 lt!219617)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31452 (_ BitVec 32)) SeekEntryResult!3595)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77339 (= lt!219617 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!77339 (validMask!0 mask!3524)))

(assert (=> d!77339 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!219615)))

(declare-fun b!485973 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31452 (_ BitVec 32)) SeekEntryResult!3595)

(assert (=> b!485973 (= e!286057 (seekKeyOrZeroReturnVacant!0 (x!45722 lt!219617) (index!16561 lt!219617) (index!16561 lt!219617) k0!2280 a!3235 mask!3524))))

(declare-fun b!485974 () Bool)

(assert (=> b!485974 (= e!286055 e!286056)))

(declare-fun lt!219616 () (_ BitVec 64))

(assert (=> b!485974 (= lt!219616 (select (arr!15121 a!3235) (index!16561 lt!219617)))))

(declare-fun c!58406 () Bool)

(assert (=> b!485974 (= c!58406 (= lt!219616 k0!2280))))

(declare-fun b!485975 () Bool)

(declare-fun c!58405 () Bool)

(assert (=> b!485975 (= c!58405 (= lt!219616 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!485975 (= e!286056 e!286057)))

(assert (= (and d!77339 c!58404) b!485971))

(assert (= (and d!77339 (not c!58404)) b!485974))

(assert (= (and b!485974 c!58406) b!485970))

(assert (= (and b!485974 (not c!58406)) b!485975))

(assert (= (and b!485975 c!58405) b!485972))

(assert (= (and b!485975 (not c!58405)) b!485973))

(assert (=> d!77339 m!465971))

(declare-fun m!466029 () Bool)

(assert (=> d!77339 m!466029))

(declare-fun m!466031 () Bool)

(assert (=> d!77339 m!466031))

(declare-fun m!466033 () Bool)

(assert (=> d!77339 m!466033))

(declare-fun m!466035 () Bool)

(assert (=> d!77339 m!466035))

(assert (=> d!77339 m!466035))

(declare-fun m!466037 () Bool)

(assert (=> d!77339 m!466037))

(declare-fun m!466039 () Bool)

(assert (=> b!485973 m!466039))

(declare-fun m!466041 () Bool)

(assert (=> b!485974 m!466041))

(assert (=> b!485904 d!77339))

(declare-fun d!77351 () Bool)

(assert (=> d!77351 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!485906 d!77351))

(declare-fun d!77353 () Bool)

(assert (=> d!77353 (= (validKeyInArray!0 (select (arr!15121 a!3235) j!176)) (and (not (= (select (arr!15121 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15121 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!485900 d!77353))

(declare-fun d!77355 () Bool)

(assert (=> d!77355 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44124 d!77355))

(declare-fun d!77359 () Bool)

(assert (=> d!77359 (= (array_inv!10895 a!3235) (bvsge (size!15485 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44124 d!77359))

(check-sat (not d!77339) (not b!485945) (not b!485973) (not bm!31253) (not b!485936) (not b!485939))
(check-sat)
