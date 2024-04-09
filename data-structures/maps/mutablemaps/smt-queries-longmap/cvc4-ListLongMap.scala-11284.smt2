; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131582 () Bool)

(assert start!131582)

(declare-fun res!1057905 () Bool)

(declare-fun e!857222 () Bool)

(assert (=> start!131582 (=> (not res!1057905) (not e!857222))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131582 (= res!1057905 (validMask!0 mask!4052))))

(assert (=> start!131582 e!857222))

(assert (=> start!131582 true))

(declare-datatypes ((array!102412 0))(
  ( (array!102413 (arr!49410 (Array (_ BitVec 32) (_ BitVec 64))) (size!49961 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102412)

(declare-fun array_inv!38355 (array!102412) Bool)

(assert (=> start!131582 (array_inv!38355 a!3920)))

(declare-fun b!1541220 () Bool)

(declare-fun res!1057903 () Bool)

(assert (=> b!1541220 (=> (not res!1057903) (not e!857222))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541220 (= res!1057903 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49961 a!3920))))))

(declare-fun b!1541219 () Bool)

(declare-fun res!1057902 () Bool)

(assert (=> b!1541219 (=> (not res!1057902) (not e!857222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102412 (_ BitVec 32)) Bool)

(assert (=> b!1541219 (= res!1057902 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541218 () Bool)

(declare-fun res!1057904 () Bool)

(assert (=> b!1541218 (=> (not res!1057904) (not e!857222))))

(assert (=> b!1541218 (= res!1057904 (and (= (size!49961 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49961 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49961 a!3920))))))

(declare-fun b!1541221 () Bool)

(assert (=> b!1541221 (= e!857222 (not (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052)))))

(assert (= (and start!131582 res!1057905) b!1541218))

(assert (= (and b!1541218 res!1057904) b!1541219))

(assert (= (and b!1541219 res!1057902) b!1541220))

(assert (= (and b!1541220 res!1057903) b!1541221))

(declare-fun m!1423255 () Bool)

(assert (=> start!131582 m!1423255))

(declare-fun m!1423257 () Bool)

(assert (=> start!131582 m!1423257))

(declare-fun m!1423259 () Bool)

(assert (=> b!1541219 m!1423259))

(declare-fun m!1423261 () Bool)

(assert (=> b!1541221 m!1423261))

(push 1)

(assert (not b!1541221))

(assert (not b!1541219))

(assert (not start!131582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1541258 () Bool)

(declare-fun e!857252 () Bool)

(declare-fun e!857250 () Bool)

(assert (=> b!1541258 (= e!857252 e!857250)))

(declare-fun c!141228 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1541258 (= c!141228 (validKeyInArray!0 (select (arr!49410 a!3920) (bvadd #b00000000000000000000000000000001 from!3298))))))

(declare-fun d!160579 () Bool)

(declare-fun res!1057925 () Bool)

(assert (=> d!160579 (=> res!1057925 e!857252)))

(assert (=> d!160579 (= res!1057925 (bvsge (bvadd #b00000000000000000000000000000001 from!3298) (size!49961 a!3920)))))

(assert (=> d!160579 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052) e!857252)))

(declare-fun bm!68674 () Bool)

(declare-fun call!68677 () Bool)

(assert (=> bm!68674 (= call!68677 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298 #b00000000000000000000000000000001) a!3920 mask!4052))))

(declare-fun b!1541259 () Bool)

(declare-fun e!857251 () Bool)

(assert (=> b!1541259 (= e!857250 e!857251)))

(declare-fun lt!665600 () (_ BitVec 64))

(assert (=> b!1541259 (= lt!665600 (select (arr!49410 a!3920) (bvadd #b00000000000000000000000000000001 from!3298)))))

(declare-datatypes ((Unit!51426 0))(
  ( (Unit!51427) )
))
(declare-fun lt!665601 () Unit!51426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102412 (_ BitVec 64) (_ BitVec 32)) Unit!51426)

(assert (=> b!1541259 (= lt!665601 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3920 lt!665600 (bvadd #b00000000000000000000000000000001 from!3298)))))

(declare-fun arrayContainsKey!0 (array!102412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1541259 (arrayContainsKey!0 a!3920 lt!665600 #b00000000000000000000000000000000)))

(declare-fun lt!665602 () Unit!51426)

(assert (=> b!1541259 (= lt!665602 lt!665601)))

(declare-fun res!1057924 () Bool)

(declare-datatypes ((SeekEntryResult!13505 0))(
  ( (MissingZero!13505 (index!56417 (_ BitVec 32))) (Found!13505 (index!56418 (_ BitVec 32))) (Intermediate!13505 (undefined!14317 Bool) (index!56419 (_ BitVec 32)) (x!138300 (_ BitVec 32))) (Undefined!13505) (MissingVacant!13505 (index!56420 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102412 (_ BitVec 32)) SeekEntryResult!13505)

(assert (=> b!1541259 (= res!1057924 (= (seekEntryOrOpen!0 (select (arr!49410 a!3920) (bvadd #b00000000000000000000000000000001 from!3298)) a!3920 mask!4052) (Found!13505 (bvadd #b00000000000000000000000000000001 from!3298))))))

(assert (=> b!1541259 (=> (not res!1057924) (not e!857251))))

(declare-fun b!1541260 () Bool)

(assert (=> b!1541260 (= e!857251 call!68677)))

(declare-fun b!1541261 () Bool)

(assert (=> b!1541261 (= e!857250 call!68677)))

(assert (= (and d!160579 (not res!1057925)) b!1541258))

(assert (= (and b!1541258 c!141228) b!1541259))

(assert (= (and b!1541258 (not c!141228)) b!1541261))

(assert (= (and b!1541259 res!1057924) b!1541260))

(assert (= (or b!1541260 b!1541261) bm!68674))

(declare-fun m!1423299 () Bool)

(assert (=> b!1541258 m!1423299))

(assert (=> b!1541258 m!1423299))

(declare-fun m!1423301 () Bool)

(assert (=> b!1541258 m!1423301))

(declare-fun m!1423303 () Bool)

(assert (=> bm!68674 m!1423303))

(assert (=> b!1541259 m!1423299))

(declare-fun m!1423305 () Bool)

(assert (=> b!1541259 m!1423305))

(declare-fun m!1423307 () Bool)

(assert (=> b!1541259 m!1423307))

(assert (=> b!1541259 m!1423299))

(declare-fun m!1423309 () Bool)

(assert (=> b!1541259 m!1423309))

(assert (=> b!1541221 d!160579))

(declare-fun b!1541262 () Bool)

(declare-fun e!857255 () Bool)

(declare-fun e!857253 () Bool)

(assert (=> b!1541262 (= e!857255 e!857253)))

(declare-fun c!141229 () Bool)

(assert (=> b!1541262 (= c!141229 (validKeyInArray!0 (select (arr!49410 a!3920) from!3298)))))

(declare-fun d!160585 () Bool)

(declare-fun res!1057927 () Bool)

(assert (=> d!160585 (=> res!1057927 e!857255)))

(assert (=> d!160585 (= res!1057927 (bvsge from!3298 (size!49961 a!3920)))))

(assert (=> d!160585 (= (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052) e!857255)))

(declare-fun bm!68675 () Bool)

(declare-fun call!68678 () Bool)

(assert (=> bm!68675 (= call!68678 (arrayForallSeekEntryOrOpenFound!0 (bvadd from!3298 #b00000000000000000000000000000001) a!3920 mask!4052))))

(declare-fun b!1541263 () Bool)

(declare-fun e!857254 () Bool)

(assert (=> b!1541263 (= e!857253 e!857254)))

(declare-fun lt!665603 () (_ BitVec 64))

(assert (=> b!1541263 (= lt!665603 (select (arr!49410 a!3920) from!3298))))

(declare-fun lt!665604 () Unit!51426)

(assert (=> b!1541263 (= lt!665604 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3920 lt!665603 from!3298))))

(assert (=> b!1541263 (arrayContainsKey!0 a!3920 lt!665603 #b00000000000000000000000000000000)))

(declare-fun lt!665605 () Unit!51426)

(assert (=> b!1541263 (= lt!665605 lt!665604)))

(declare-fun res!1057926 () Bool)

(assert (=> b!1541263 (= res!1057926 (= (seekEntryOrOpen!0 (select (arr!49410 a!3920) from!3298) a!3920 mask!4052) (Found!13505 from!3298)))))

(assert (=> b!1541263 (=> (not res!1057926) (not e!857254))))

(declare-fun b!1541264 () Bool)

(assert (=> b!1541264 (= e!857254 call!68678)))

(declare-fun b!1541265 () Bool)

(assert (=> b!1541265 (= e!857253 call!68678)))

(assert (= (and d!160585 (not res!1057927)) b!1541262))

(assert (= (and b!1541262 c!141229) b!1541263))

(assert (= (and b!1541262 (not c!141229)) b!1541265))

(assert (= (and b!1541263 res!1057926) b!1541264))

(assert (= (or b!1541264 b!1541265) bm!68675))

(declare-fun m!1423311 () Bool)

(assert (=> b!1541262 m!1423311))

(assert (=> b!1541262 m!1423311))

(declare-fun m!1423313 () Bool)

(assert (=> b!1541262 m!1423313))

(declare-fun m!1423315 () Bool)

(assert (=> bm!68675 m!1423315))

(assert (=> b!1541263 m!1423311))

(declare-fun m!1423317 () Bool)

(assert (=> b!1541263 m!1423317))

(declare-fun m!1423319 () Bool)

(assert (=> b!1541263 m!1423319))

(assert (=> b!1541263 m!1423311))

