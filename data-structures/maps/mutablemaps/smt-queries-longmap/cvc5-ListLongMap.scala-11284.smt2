; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131578 () Bool)

(assert start!131578)

(declare-fun b!1541195 () Bool)

(declare-fun res!1057880 () Bool)

(declare-fun e!857210 () Bool)

(assert (=> b!1541195 (=> (not res!1057880) (not e!857210))))

(declare-datatypes ((array!102408 0))(
  ( (array!102409 (arr!49408 (Array (_ BitVec 32) (_ BitVec 64))) (size!49959 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102408)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102408 (_ BitVec 32)) Bool)

(assert (=> b!1541195 (= res!1057880 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541196 () Bool)

(declare-fun res!1057878 () Bool)

(assert (=> b!1541196 (=> (not res!1057878) (not e!857210))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541196 (= res!1057878 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49959 a!3920))))))

(declare-fun b!1541194 () Bool)

(declare-fun res!1057879 () Bool)

(assert (=> b!1541194 (=> (not res!1057879) (not e!857210))))

(assert (=> b!1541194 (= res!1057879 (and (= (size!49959 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49959 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49959 a!3920))))))

(declare-fun b!1541197 () Bool)

(assert (=> b!1541197 (= e!857210 (not (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052)))))

(declare-fun res!1057881 () Bool)

(assert (=> start!131578 (=> (not res!1057881) (not e!857210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131578 (= res!1057881 (validMask!0 mask!4052))))

(assert (=> start!131578 e!857210))

(assert (=> start!131578 true))

(declare-fun array_inv!38353 (array!102408) Bool)

(assert (=> start!131578 (array_inv!38353 a!3920)))

(assert (= (and start!131578 res!1057881) b!1541194))

(assert (= (and b!1541194 res!1057879) b!1541195))

(assert (= (and b!1541195 res!1057880) b!1541196))

(assert (= (and b!1541196 res!1057878) b!1541197))

(declare-fun m!1423239 () Bool)

(assert (=> b!1541195 m!1423239))

(declare-fun m!1423241 () Bool)

(assert (=> b!1541197 m!1423241))

(declare-fun m!1423243 () Bool)

(assert (=> start!131578 m!1423243))

(declare-fun m!1423245 () Bool)

(assert (=> start!131578 m!1423245))

(push 1)

(assert (not b!1541195))

(assert (not start!131578))

(assert (not b!1541197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1541238 () Bool)

(declare-fun e!857235 () Bool)

(declare-fun call!68672 () Bool)

(assert (=> b!1541238 (= e!857235 call!68672)))

(declare-fun d!160573 () Bool)

(declare-fun res!1057915 () Bool)

(declare-fun e!857236 () Bool)

(assert (=> d!160573 (=> res!1057915 e!857236)))

(assert (=> d!160573 (= res!1057915 (bvsge from!3298 (size!49959 a!3920)))))

(assert (=> d!160573 (= (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052) e!857236)))

(declare-fun bm!68669 () Bool)

(assert (=> bm!68669 (= call!68672 (arrayForallSeekEntryOrOpenFound!0 (bvadd from!3298 #b00000000000000000000000000000001) a!3920 mask!4052))))

(declare-fun b!1541239 () Bool)

(declare-fun e!857237 () Bool)

(assert (=> b!1541239 (= e!857237 call!68672)))

(declare-fun b!1541240 () Bool)

(assert (=> b!1541240 (= e!857237 e!857235)))

(declare-fun lt!665585 () (_ BitVec 64))

(assert (=> b!1541240 (= lt!665585 (select (arr!49408 a!3920) from!3298))))

(declare-datatypes ((Unit!51424 0))(
  ( (Unit!51425) )
))
(declare-fun lt!665586 () Unit!51424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102408 (_ BitVec 64) (_ BitVec 32)) Unit!51424)

(assert (=> b!1541240 (= lt!665586 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3920 lt!665585 from!3298))))

(declare-fun arrayContainsKey!0 (array!102408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1541240 (arrayContainsKey!0 a!3920 lt!665585 #b00000000000000000000000000000000)))

(declare-fun lt!665587 () Unit!51424)

(assert (=> b!1541240 (= lt!665587 lt!665586)))

(declare-fun res!1057914 () Bool)

(declare-datatypes ((SeekEntryResult!13504 0))(
  ( (MissingZero!13504 (index!56413 (_ BitVec 32))) (Found!13504 (index!56414 (_ BitVec 32))) (Intermediate!13504 (undefined!14316 Bool) (index!56415 (_ BitVec 32)) (x!138299 (_ BitVec 32))) (Undefined!13504) (MissingVacant!13504 (index!56416 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102408 (_ BitVec 32)) SeekEntryResult!13504)

(assert (=> b!1541240 (= res!1057914 (= (seekEntryOrOpen!0 (select (arr!49408 a!3920) from!3298) a!3920 mask!4052) (Found!13504 from!3298)))))

(assert (=> b!1541240 (=> (not res!1057914) (not e!857235))))

(declare-fun b!1541241 () Bool)

(assert (=> b!1541241 (= e!857236 e!857237)))

(declare-fun c!141223 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1541241 (= c!141223 (validKeyInArray!0 (select (arr!49408 a!3920) from!3298)))))

(assert (= (and d!160573 (not res!1057915)) b!1541241))

(assert (= (and b!1541241 c!141223) b!1541240))

(assert (= (and b!1541241 (not c!141223)) b!1541239))

(assert (= (and b!1541240 res!1057914) b!1541238))

(assert (= (or b!1541238 b!1541239) bm!68669))

(declare-fun m!1423263 () Bool)

(assert (=> bm!68669 m!1423263))

(declare-fun m!1423265 () Bool)

(assert (=> b!1541240 m!1423265))

(declare-fun m!1423267 () Bool)

(assert (=> b!1541240 m!1423267))

(declare-fun m!1423269 () Bool)

(assert (=> b!1541240 m!1423269))

(assert (=> b!1541240 m!1423265))

(declare-fun m!1423271 () Bool)

(assert (=> b!1541240 m!1423271))

(assert (=> b!1541241 m!1423265))

(assert (=> b!1541241 m!1423265))

(declare-fun m!1423273 () Bool)

(assert (=> b!1541241 m!1423273))

(assert (=> b!1541195 d!160573))

(declare-fun d!160581 () Bool)

(assert (=> d!160581 (= (validMask!0 mask!4052) (and (or (= mask!4052 #b00000000000000000000000000000111) (= mask!4052 #b00000000000000000000000000001111) (= mask!4052 #b00000000000000000000000000011111) (= mask!4052 #b00000000000000000000000000111111) (= mask!4052 #b00000000000000000000000001111111) (= mask!4052 #b00000000000000000000000011111111) (= mask!4052 #b00000000000000000000000111111111) (= mask!4052 #b00000000000000000000001111111111) (= mask!4052 #b00000000000000000000011111111111) (= mask!4052 #b00000000000000000000111111111111) (= mask!4052 #b00000000000000000001111111111111) (= mask!4052 #b00000000000000000011111111111111) (= mask!4052 #b00000000000000000111111111111111) (= mask!4052 #b00000000000000001111111111111111) (= mask!4052 #b00000000000000011111111111111111) (= mask!4052 #b00000000000000111111111111111111) (= mask!4052 #b00000000000001111111111111111111) (= mask!4052 #b00000000000011111111111111111111) (= mask!4052 #b00000000000111111111111111111111) (= mask!4052 #b00000000001111111111111111111111) (= mask!4052 #b00000000011111111111111111111111) (= mask!4052 #b00000000111111111111111111111111) (= mask!4052 #b00000001111111111111111111111111) (= mask!4052 #b00000011111111111111111111111111) (= mask!4052 #b00000111111111111111111111111111) (= mask!4052 #b00001111111111111111111111111111) (= mask!4052 #b00011111111111111111111111111111) (= mask!4052 #b00111111111111111111111111111111)) (bvsle mask!4052 #b00111111111111111111111111111111)))))

(assert (=> start!131578 d!160581))

(declare-fun d!160589 () Bool)

(assert (=> d!160589 (= (array_inv!38353 a!3920) (bvsge (size!49959 a!3920) #b00000000000000000000000000000000))))

(assert (=> start!131578 d!160589))

(declare-fun b!1541266 () Bool)

(declare-fun e!857256 () Bool)

(declare-fun call!68679 () Bool)

(assert (=> b!1541266 (= e!857256 call!68679)))

(declare-fun d!160591 () Bool)

(declare-fun res!1057929 () Bool)

(declare-fun e!857257 () Bool)

(assert (=> d!160591 (=> res!1057929 e!857257)))

(assert (=> d!160591 (= res!1057929 (bvsge (bvadd #b00000000000000000000000000000001 from!3298) (size!49959 a!3920)))))

(assert (=> d!160591 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052) e!857257)))

(declare-fun bm!68676 () Bool)

(assert (=> bm!68676 (= call!68679 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298 #b00000000000000000000000000000001) a!3920 mask!4052))))

(declare-fun b!1541267 () Bool)

(declare-fun e!857258 () Bool)

(assert (=> b!1541267 (= e!857258 call!68679)))

(declare-fun b!1541268 () Bool)

(assert (=> b!1541268 (= e!857258 e!857256)))

(declare-fun lt!665606 () (_ BitVec 64))

(assert (=> b!1541268 (= lt!665606 (select (arr!49408 a!3920) (bvadd #b00000000000000000000000000000001 from!3298)))))

(declare-fun lt!665607 () Unit!51424)

(assert (=> b!1541268 (= lt!665607 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3920 lt!665606 (bvadd #b00000000000000000000000000000001 from!3298)))))

(assert (=> b!1541268 (arrayContainsKey!0 a!3920 lt!665606 #b00000000000000000000000000000000)))

(declare-fun lt!665608 () Unit!51424)

(assert (=> b!1541268 (= lt!665608 lt!665607)))

(declare-fun res!1057928 () Bool)

(assert (=> b!1541268 (= res!1057928 (= (seekEntryOrOpen!0 (select (arr!49408 a!3920) (bvadd #b00000000000000000000000000000001 from!3298)) a!3920 mask!4052) (Found!13504 (bvadd #b00000000000000000000000000000001 from!3298))))))

(assert (=> b!1541268 (=> (not res!1057928) (not e!857256))))

(declare-fun b!1541269 () Bool)

(assert (=> b!1541269 (= e!857257 e!857258)))

(declare-fun c!141230 () Bool)

(assert (=> b!1541269 (= c!141230 (validKeyInArray!0 (select (arr!49408 a!3920) (bvadd #b00000000000000000000000000000001 from!3298))))))

(assert (= (and d!160591 (not res!1057929)) b!1541269))

(assert (= (and b!1541269 c!141230) b!1541268))

(assert (= (and b!1541269 (not c!141230)) b!1541267))

(assert (= (and b!1541268 res!1057928) b!1541266))

(assert (= (or b!1541266 b!1541267) bm!68676))

(declare-fun m!1423323 () Bool)

(assert (=> bm!68676 m!1423323))

(declare-fun m!1423325 () Bool)

(assert (=> b!1541268 m!1423325))

(declare-fun m!1423327 () Bool)

(assert (=> b!1541268 m!1423327))

(declare-fun m!1423329 () Bool)

(assert (=> b!1541268 m!1423329))

(assert (=> b!1541268 m!1423325))

(declare-fun m!1423331 () Bool)

(assert (=> b!1541268 m!1423331))

(assert (=> b!1541269 m!1423325))

(assert (=> b!1541269 m!1423325))

(declare-fun m!1423333 () Bool)

(assert (=> b!1541269 m!1423333))

(assert (=> b!1541197 d!160591))

(push 1)

(assert (not b!1541269))

(assert (not b!1541268))

(assert (not b!1541240))

(assert (not bm!68669))

(assert (not bm!68676))

(assert (not b!1541241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

