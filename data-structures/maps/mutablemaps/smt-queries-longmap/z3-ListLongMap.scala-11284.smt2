; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131580 () Bool)

(assert start!131580)

(declare-fun b!1541206 () Bool)

(declare-fun res!1057893 () Bool)

(declare-fun e!857215 () Bool)

(assert (=> b!1541206 (=> (not res!1057893) (not e!857215))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102410 0))(
  ( (array!102411 (arr!49409 (Array (_ BitVec 32) (_ BitVec 64))) (size!49960 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102410)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(assert (=> b!1541206 (= res!1057893 (and (= (size!49960 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49960 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49960 a!3920))))))

(declare-fun b!1541208 () Bool)

(declare-fun res!1057890 () Bool)

(assert (=> b!1541208 (=> (not res!1057890) (not e!857215))))

(assert (=> b!1541208 (= res!1057890 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49960 a!3920))))))

(declare-fun b!1541207 () Bool)

(declare-fun res!1057892 () Bool)

(assert (=> b!1541207 (=> (not res!1057892) (not e!857215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102410 (_ BitVec 32)) Bool)

(assert (=> b!1541207 (= res!1057892 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541209 () Bool)

(assert (=> b!1541209 (= e!857215 (not (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052)))))

(declare-fun res!1057891 () Bool)

(assert (=> start!131580 (=> (not res!1057891) (not e!857215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131580 (= res!1057891 (validMask!0 mask!4052))))

(assert (=> start!131580 e!857215))

(assert (=> start!131580 true))

(declare-fun array_inv!38354 (array!102410) Bool)

(assert (=> start!131580 (array_inv!38354 a!3920)))

(assert (= (and start!131580 res!1057891) b!1541206))

(assert (= (and b!1541206 res!1057893) b!1541207))

(assert (= (and b!1541207 res!1057892) b!1541208))

(assert (= (and b!1541208 res!1057890) b!1541209))

(declare-fun m!1423247 () Bool)

(assert (=> b!1541207 m!1423247))

(declare-fun m!1423249 () Bool)

(assert (=> b!1541209 m!1423249))

(declare-fun m!1423251 () Bool)

(assert (=> start!131580 m!1423251))

(declare-fun m!1423253 () Bool)

(assert (=> start!131580 m!1423253))

(check-sat (not start!131580) (not b!1541209) (not b!1541207))
(check-sat)
(get-model)

(declare-fun d!160571 () Bool)

(assert (=> d!160571 (= (validMask!0 mask!4052) (and (or (= mask!4052 #b00000000000000000000000000000111) (= mask!4052 #b00000000000000000000000000001111) (= mask!4052 #b00000000000000000000000000011111) (= mask!4052 #b00000000000000000000000000111111) (= mask!4052 #b00000000000000000000000001111111) (= mask!4052 #b00000000000000000000000011111111) (= mask!4052 #b00000000000000000000000111111111) (= mask!4052 #b00000000000000000000001111111111) (= mask!4052 #b00000000000000000000011111111111) (= mask!4052 #b00000000000000000000111111111111) (= mask!4052 #b00000000000000000001111111111111) (= mask!4052 #b00000000000000000011111111111111) (= mask!4052 #b00000000000000000111111111111111) (= mask!4052 #b00000000000000001111111111111111) (= mask!4052 #b00000000000000011111111111111111) (= mask!4052 #b00000000000000111111111111111111) (= mask!4052 #b00000000000001111111111111111111) (= mask!4052 #b00000000000011111111111111111111) (= mask!4052 #b00000000000111111111111111111111) (= mask!4052 #b00000000001111111111111111111111) (= mask!4052 #b00000000011111111111111111111111) (= mask!4052 #b00000000111111111111111111111111) (= mask!4052 #b00000001111111111111111111111111) (= mask!4052 #b00000011111111111111111111111111) (= mask!4052 #b00000111111111111111111111111111) (= mask!4052 #b00001111111111111111111111111111) (= mask!4052 #b00011111111111111111111111111111) (= mask!4052 #b00111111111111111111111111111111)) (bvsle mask!4052 #b00111111111111111111111111111111)))))

(assert (=> start!131580 d!160571))

(declare-fun d!160575 () Bool)

(assert (=> d!160575 (= (array_inv!38354 a!3920) (bvsge (size!49960 a!3920) #b00000000000000000000000000000000))))

(assert (=> start!131580 d!160575))

(declare-fun d!160577 () Bool)

(declare-fun res!1057920 () Bool)

(declare-fun e!857244 () Bool)

(assert (=> d!160577 (=> res!1057920 e!857244)))

(assert (=> d!160577 (= res!1057920 (bvsge (bvadd #b00000000000000000000000000000001 from!3298) (size!49960 a!3920)))))

(assert (=> d!160577 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052) e!857244)))

(declare-fun b!1541250 () Bool)

(declare-fun e!857246 () Bool)

(declare-fun call!68675 () Bool)

(assert (=> b!1541250 (= e!857246 call!68675)))

(declare-fun b!1541251 () Bool)

(declare-fun e!857245 () Bool)

(assert (=> b!1541251 (= e!857245 call!68675)))

(declare-fun bm!68672 () Bool)

(assert (=> bm!68672 (= call!68675 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298 #b00000000000000000000000000000001) a!3920 mask!4052))))

(declare-fun b!1541252 () Bool)

(assert (=> b!1541252 (= e!857245 e!857246)))

(declare-fun lt!665594 () (_ BitVec 64))

(assert (=> b!1541252 (= lt!665594 (select (arr!49409 a!3920) (bvadd #b00000000000000000000000000000001 from!3298)))))

(declare-datatypes ((Unit!51422 0))(
  ( (Unit!51423) )
))
(declare-fun lt!665596 () Unit!51422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102410 (_ BitVec 64) (_ BitVec 32)) Unit!51422)

(assert (=> b!1541252 (= lt!665596 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3920 lt!665594 (bvadd #b00000000000000000000000000000001 from!3298)))))

(declare-fun arrayContainsKey!0 (array!102410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1541252 (arrayContainsKey!0 a!3920 lt!665594 #b00000000000000000000000000000000)))

(declare-fun lt!665595 () Unit!51422)

(assert (=> b!1541252 (= lt!665595 lt!665596)))

(declare-fun res!1057921 () Bool)

(declare-datatypes ((SeekEntryResult!13503 0))(
  ( (MissingZero!13503 (index!56409 (_ BitVec 32))) (Found!13503 (index!56410 (_ BitVec 32))) (Intermediate!13503 (undefined!14315 Bool) (index!56411 (_ BitVec 32)) (x!138298 (_ BitVec 32))) (Undefined!13503) (MissingVacant!13503 (index!56412 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102410 (_ BitVec 32)) SeekEntryResult!13503)

(assert (=> b!1541252 (= res!1057921 (= (seekEntryOrOpen!0 (select (arr!49409 a!3920) (bvadd #b00000000000000000000000000000001 from!3298)) a!3920 mask!4052) (Found!13503 (bvadd #b00000000000000000000000000000001 from!3298))))))

(assert (=> b!1541252 (=> (not res!1057921) (not e!857246))))

(declare-fun b!1541253 () Bool)

(assert (=> b!1541253 (= e!857244 e!857245)))

(declare-fun c!141226 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1541253 (= c!141226 (validKeyInArray!0 (select (arr!49409 a!3920) (bvadd #b00000000000000000000000000000001 from!3298))))))

(assert (= (and d!160577 (not res!1057920)) b!1541253))

(assert (= (and b!1541253 c!141226) b!1541252))

(assert (= (and b!1541253 (not c!141226)) b!1541251))

(assert (= (and b!1541252 res!1057921) b!1541250))

(assert (= (or b!1541250 b!1541251) bm!68672))

(declare-fun m!1423275 () Bool)

(assert (=> bm!68672 m!1423275))

(declare-fun m!1423277 () Bool)

(assert (=> b!1541252 m!1423277))

(declare-fun m!1423279 () Bool)

(assert (=> b!1541252 m!1423279))

(declare-fun m!1423281 () Bool)

(assert (=> b!1541252 m!1423281))

(assert (=> b!1541252 m!1423277))

(declare-fun m!1423283 () Bool)

(assert (=> b!1541252 m!1423283))

(assert (=> b!1541253 m!1423277))

(assert (=> b!1541253 m!1423277))

(declare-fun m!1423285 () Bool)

(assert (=> b!1541253 m!1423285))

(assert (=> b!1541209 d!160577))

(declare-fun d!160583 () Bool)

(declare-fun res!1057922 () Bool)

(declare-fun e!857247 () Bool)

(assert (=> d!160583 (=> res!1057922 e!857247)))

(assert (=> d!160583 (= res!1057922 (bvsge from!3298 (size!49960 a!3920)))))

(assert (=> d!160583 (= (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052) e!857247)))

(declare-fun b!1541254 () Bool)

(declare-fun e!857249 () Bool)

(declare-fun call!68676 () Bool)

(assert (=> b!1541254 (= e!857249 call!68676)))

(declare-fun b!1541255 () Bool)

(declare-fun e!857248 () Bool)

(assert (=> b!1541255 (= e!857248 call!68676)))

(declare-fun bm!68673 () Bool)

(assert (=> bm!68673 (= call!68676 (arrayForallSeekEntryOrOpenFound!0 (bvadd from!3298 #b00000000000000000000000000000001) a!3920 mask!4052))))

(declare-fun b!1541256 () Bool)

(assert (=> b!1541256 (= e!857248 e!857249)))

(declare-fun lt!665597 () (_ BitVec 64))

(assert (=> b!1541256 (= lt!665597 (select (arr!49409 a!3920) from!3298))))

(declare-fun lt!665599 () Unit!51422)

(assert (=> b!1541256 (= lt!665599 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3920 lt!665597 from!3298))))

(assert (=> b!1541256 (arrayContainsKey!0 a!3920 lt!665597 #b00000000000000000000000000000000)))

(declare-fun lt!665598 () Unit!51422)

(assert (=> b!1541256 (= lt!665598 lt!665599)))

(declare-fun res!1057923 () Bool)

(assert (=> b!1541256 (= res!1057923 (= (seekEntryOrOpen!0 (select (arr!49409 a!3920) from!3298) a!3920 mask!4052) (Found!13503 from!3298)))))

(assert (=> b!1541256 (=> (not res!1057923) (not e!857249))))

(declare-fun b!1541257 () Bool)

(assert (=> b!1541257 (= e!857247 e!857248)))

(declare-fun c!141227 () Bool)

(assert (=> b!1541257 (= c!141227 (validKeyInArray!0 (select (arr!49409 a!3920) from!3298)))))

(assert (= (and d!160583 (not res!1057922)) b!1541257))

(assert (= (and b!1541257 c!141227) b!1541256))

(assert (= (and b!1541257 (not c!141227)) b!1541255))

(assert (= (and b!1541256 res!1057923) b!1541254))

(assert (= (or b!1541254 b!1541255) bm!68673))

(declare-fun m!1423287 () Bool)

(assert (=> bm!68673 m!1423287))

(declare-fun m!1423289 () Bool)

(assert (=> b!1541256 m!1423289))

(declare-fun m!1423291 () Bool)

(assert (=> b!1541256 m!1423291))

(declare-fun m!1423293 () Bool)

(assert (=> b!1541256 m!1423293))

(assert (=> b!1541256 m!1423289))

(declare-fun m!1423295 () Bool)

(assert (=> b!1541256 m!1423295))

(assert (=> b!1541257 m!1423289))

(assert (=> b!1541257 m!1423289))

(declare-fun m!1423297 () Bool)

(assert (=> b!1541257 m!1423297))

(assert (=> b!1541207 d!160583))

(check-sat (not bm!68672) (not b!1541256) (not bm!68673) (not b!1541253) (not b!1541257) (not b!1541252))
(check-sat)
