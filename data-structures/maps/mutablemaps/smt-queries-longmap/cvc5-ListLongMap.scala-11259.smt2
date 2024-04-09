; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131338 () Bool)

(assert start!131338)

(declare-fun b!1539640 () Bool)

(declare-fun res!1056577 () Bool)

(declare-fun e!856367 () Bool)

(assert (=> b!1539640 (=> (not res!1056577) (not e!856367))))

(declare-datatypes ((array!102252 0))(
  ( (array!102253 (arr!49333 (Array (_ BitVec 32) (_ BitVec 64))) (size!49884 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102252)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539640 (= res!1056577 (validKeyInArray!0 (select (arr!49333 a!2792) j!64)))))

(declare-fun b!1539641 () Bool)

(declare-fun res!1056584 () Bool)

(assert (=> b!1539641 (=> (not res!1056584) (not e!856367))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102252 (_ BitVec 32)) Bool)

(assert (=> b!1539641 (= res!1056584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539642 () Bool)

(declare-fun res!1056581 () Bool)

(assert (=> b!1539642 (=> (not res!1056581) (not e!856367))))

(declare-datatypes ((List!35987 0))(
  ( (Nil!35984) (Cons!35983 (h!37429 (_ BitVec 64)) (t!50688 List!35987)) )
))
(declare-fun arrayNoDuplicates!0 (array!102252 (_ BitVec 32) List!35987) Bool)

(assert (=> b!1539642 (= res!1056581 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35984))))

(declare-fun b!1539643 () Bool)

(declare-fun res!1056583 () Bool)

(declare-fun e!856368 () Bool)

(assert (=> b!1539643 (=> (not res!1056583) (not e!856368))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539643 (= res!1056583 (not (= (select (arr!49333 a!2792) index!463) (select (arr!49333 a!2792) j!64))))))

(declare-datatypes ((SeekEntryResult!13482 0))(
  ( (MissingZero!13482 (index!56322 (_ BitVec 32))) (Found!13482 (index!56323 (_ BitVec 32))) (Intermediate!13482 (undefined!14294 Bool) (index!56324 (_ BitVec 32)) (x!138062 (_ BitVec 32))) (Undefined!13482) (MissingVacant!13482 (index!56325 (_ BitVec 32))) )
))
(declare-fun lt!665050 () SeekEntryResult!13482)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun e!856369 () Bool)

(declare-fun lt!665049 () (_ BitVec 32))

(declare-fun b!1539644 () Bool)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102252 (_ BitVec 32)) SeekEntryResult!13482)

(assert (=> b!1539644 (= e!856369 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665049 vacantIndex!5 (select (arr!49333 a!2792) j!64) a!2792 mask!2480) lt!665050)))))

(declare-fun b!1539645 () Bool)

(assert (=> b!1539645 (= e!856367 e!856368)))

(declare-fun res!1056579 () Bool)

(assert (=> b!1539645 (=> (not res!1056579) (not e!856368))))

(assert (=> b!1539645 (= res!1056579 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49333 a!2792) j!64) a!2792 mask!2480) lt!665050))))

(assert (=> b!1539645 (= lt!665050 (Found!13482 j!64))))

(declare-fun res!1056578 () Bool)

(assert (=> start!131338 (=> (not res!1056578) (not e!856367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131338 (= res!1056578 (validMask!0 mask!2480))))

(assert (=> start!131338 e!856367))

(assert (=> start!131338 true))

(declare-fun array_inv!38278 (array!102252) Bool)

(assert (=> start!131338 (array_inv!38278 a!2792)))

(declare-fun b!1539646 () Bool)

(declare-fun res!1056576 () Bool)

(assert (=> b!1539646 (=> (not res!1056576) (not e!856367))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539646 (= res!1056576 (validKeyInArray!0 (select (arr!49333 a!2792) i!951)))))

(declare-fun b!1539647 () Bool)

(declare-fun res!1056580 () Bool)

(assert (=> b!1539647 (=> (not res!1056580) (not e!856367))))

(assert (=> b!1539647 (= res!1056580 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49884 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49884 a!2792)) (= (select (arr!49333 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539648 () Bool)

(assert (=> b!1539648 (= e!856368 e!856369)))

(declare-fun res!1056585 () Bool)

(assert (=> b!1539648 (=> (not res!1056585) (not e!856369))))

(assert (=> b!1539648 (= res!1056585 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665049 #b00000000000000000000000000000000) (bvslt lt!665049 (size!49884 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539648 (= lt!665049 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539649 () Bool)

(declare-fun res!1056582 () Bool)

(assert (=> b!1539649 (=> (not res!1056582) (not e!856367))))

(assert (=> b!1539649 (= res!1056582 (and (= (size!49884 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49884 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49884 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131338 res!1056578) b!1539649))

(assert (= (and b!1539649 res!1056582) b!1539646))

(assert (= (and b!1539646 res!1056576) b!1539640))

(assert (= (and b!1539640 res!1056577) b!1539641))

(assert (= (and b!1539641 res!1056584) b!1539642))

(assert (= (and b!1539642 res!1056581) b!1539647))

(assert (= (and b!1539647 res!1056580) b!1539645))

(assert (= (and b!1539645 res!1056579) b!1539643))

(assert (= (and b!1539643 res!1056583) b!1539648))

(assert (= (and b!1539648 res!1056585) b!1539644))

(declare-fun m!1421877 () Bool)

(assert (=> b!1539641 m!1421877))

(declare-fun m!1421879 () Bool)

(assert (=> b!1539644 m!1421879))

(assert (=> b!1539644 m!1421879))

(declare-fun m!1421881 () Bool)

(assert (=> b!1539644 m!1421881))

(declare-fun m!1421883 () Bool)

(assert (=> b!1539647 m!1421883))

(declare-fun m!1421885 () Bool)

(assert (=> b!1539642 m!1421885))

(declare-fun m!1421887 () Bool)

(assert (=> b!1539648 m!1421887))

(declare-fun m!1421889 () Bool)

(assert (=> start!131338 m!1421889))

(declare-fun m!1421891 () Bool)

(assert (=> start!131338 m!1421891))

(assert (=> b!1539640 m!1421879))

(assert (=> b!1539640 m!1421879))

(declare-fun m!1421893 () Bool)

(assert (=> b!1539640 m!1421893))

(assert (=> b!1539645 m!1421879))

(assert (=> b!1539645 m!1421879))

(declare-fun m!1421895 () Bool)

(assert (=> b!1539645 m!1421895))

(declare-fun m!1421897 () Bool)

(assert (=> b!1539643 m!1421897))

(assert (=> b!1539643 m!1421879))

(declare-fun m!1421899 () Bool)

(assert (=> b!1539646 m!1421899))

(assert (=> b!1539646 m!1421899))

(declare-fun m!1421901 () Bool)

(assert (=> b!1539646 m!1421901))

(push 1)

(assert (not b!1539644))

(assert (not b!1539646))

(assert (not b!1539640))

(assert (not b!1539641))

(assert (not start!131338))

(assert (not b!1539645))

(assert (not b!1539648))

(assert (not b!1539642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!160407 () Bool)

(declare-fun lt!665074 () (_ BitVec 32))

(assert (=> d!160407 (and (bvsge lt!665074 #b00000000000000000000000000000000) (bvslt lt!665074 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160407 (= lt!665074 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160407 (validMask!0 mask!2480)))

(assert (=> d!160407 (= (nextIndex!0 index!463 x!510 mask!2480) lt!665074)))

(declare-fun bs!44196 () Bool)

(assert (= bs!44196 d!160407))

(declare-fun m!1421957 () Bool)

(assert (=> bs!44196 m!1421957))

(assert (=> bs!44196 m!1421889))

(assert (=> b!1539648 d!160407))

(declare-fun b!1539750 () Bool)

(declare-fun e!856422 () Bool)

(declare-fun contains!10031 (List!35987 (_ BitVec 64)) Bool)

(assert (=> b!1539750 (= e!856422 (contains!10031 Nil!35984 (select (arr!49333 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539751 () Bool)

(declare-fun e!856423 () Bool)

(declare-fun call!68637 () Bool)

(assert (=> b!1539751 (= e!856423 call!68637)))

(declare-fun b!1539752 () Bool)

(declare-fun e!856424 () Bool)

(assert (=> b!1539752 (= e!856424 e!856423)))

(declare-fun c!141107 () Bool)

(assert (=> b!1539752 (= c!141107 (validKeyInArray!0 (select (arr!49333 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68634 () Bool)

(assert (=> bm!68634 (= call!68637 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141107 (Cons!35983 (select (arr!49333 a!2792) #b00000000000000000000000000000000) Nil!35984) Nil!35984)))))

(declare-fun b!1539753 () Bool)

(assert (=> b!1539753 (= e!856423 call!68637)))

(declare-fun b!1539754 () Bool)

(declare-fun e!856421 () Bool)

(assert (=> b!1539754 (= e!856421 e!856424)))

(declare-fun res!1056659 () Bool)

(assert (=> b!1539754 (=> (not res!1056659) (not e!856424))))

(assert (=> b!1539754 (= res!1056659 (not e!856422))))

(declare-fun res!1056658 () Bool)

(assert (=> b!1539754 (=> (not res!1056658) (not e!856422))))

(assert (=> b!1539754 (= res!1056658 (validKeyInArray!0 (select (arr!49333 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160409 () Bool)

(declare-fun res!1056660 () Bool)

(assert (=> d!160409 (=> res!1056660 e!856421)))

(assert (=> d!160409 (= res!1056660 (bvsge #b00000000000000000000000000000000 (size!49884 a!2792)))))

(assert (=> d!160409 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35984) e!856421)))

(assert (= (and d!160409 (not res!1056660)) b!1539754))

(assert (= (and b!1539754 res!1056658) b!1539750))

(assert (= (and b!1539754 res!1056659) b!1539752))

(assert (= (and b!1539752 c!141107) b!1539753))

(assert (= (and b!1539752 (not c!141107)) b!1539751))

(assert (= (or b!1539753 b!1539751) bm!68634))

(declare-fun m!1421983 () Bool)

(assert (=> b!1539750 m!1421983))

(assert (=> b!1539750 m!1421983))

(declare-fun m!1421985 () Bool)

(assert (=> b!1539750 m!1421985))

(assert (=> b!1539752 m!1421983))

(assert (=> b!1539752 m!1421983))

(declare-fun m!1421987 () Bool)

(assert (=> b!1539752 m!1421987))

(assert (=> bm!68634 m!1421983))

(declare-fun m!1421989 () Bool)

(assert (=> bm!68634 m!1421989))

(assert (=> b!1539754 m!1421983))

(assert (=> b!1539754 m!1421983))

(assert (=> b!1539754 m!1421987))

(assert (=> b!1539642 d!160409))

(declare-fun b!1539799 () Bool)

(declare-fun e!856459 () Bool)

(declare-fun e!856460 () Bool)

(assert (=> b!1539799 (= e!856459 e!856460)))

(declare-fun lt!665097 () (_ BitVec 64))

(assert (=> b!1539799 (= lt!665097 (select (arr!49333 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51366 0))(
  ( (Unit!51367) )
))
(declare-fun lt!665096 () Unit!51366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102252 (_ BitVec 64) (_ BitVec 32)) Unit!51366)

(assert (=> b!1539799 (= lt!665096 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!665097 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539799 (arrayContainsKey!0 a!2792 lt!665097 #b00000000000000000000000000000000)))

(declare-fun lt!665095 () Unit!51366)

(assert (=> b!1539799 (= lt!665095 lt!665096)))

(declare-fun res!1056683 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102252 (_ BitVec 32)) SeekEntryResult!13482)

(assert (=> b!1539799 (= res!1056683 (= (seekEntryOrOpen!0 (select (arr!49333 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13482 #b00000000000000000000000000000000)))))

(assert (=> b!1539799 (=> (not res!1056683) (not e!856460))))

(declare-fun b!1539800 () Bool)

(declare-fun call!68646 () Bool)

(assert (=> b!1539800 (= e!856459 call!68646)))

(declare-fun b!1539801 () Bool)

(declare-fun e!856458 () Bool)

(assert (=> b!1539801 (= e!856458 e!856459)))

(declare-fun c!141119 () Bool)

(assert (=> b!1539801 (= c!141119 (validKeyInArray!0 (select (arr!49333 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160419 () Bool)

(declare-fun res!1056684 () Bool)

(assert (=> d!160419 (=> res!1056684 e!856458)))

(assert (=> d!160419 (= res!1056684 (bvsge #b00000000000000000000000000000000 (size!49884 a!2792)))))

(assert (=> d!160419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856458)))

(declare-fun bm!68643 () Bool)

(assert (=> bm!68643 (= call!68646 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1539802 () Bool)

(assert (=> b!1539802 (= e!856460 call!68646)))

(assert (= (and d!160419 (not res!1056684)) b!1539801))

(assert (= (and b!1539801 c!141119) b!1539799))

(assert (= (and b!1539801 (not c!141119)) b!1539800))

(assert (= (and b!1539799 res!1056683) b!1539802))

(assert (= (or b!1539802 b!1539800) bm!68643))

(assert (=> b!1539799 m!1421983))

(declare-fun m!1422009 () Bool)

(assert (=> b!1539799 m!1422009))

(declare-fun m!1422011 () Bool)

(assert (=> b!1539799 m!1422011))

(assert (=> b!1539799 m!1421983))

(declare-fun m!1422013 () Bool)

(assert (=> b!1539799 m!1422013))

(assert (=> b!1539801 m!1421983))

(assert (=> b!1539801 m!1421983))

(assert (=> b!1539801 m!1421987))

(declare-fun m!1422015 () Bool)

(assert (=> bm!68643 m!1422015))

(assert (=> b!1539641 d!160419))

(declare-fun d!160429 () Bool)

(assert (=> d!160429 (= (validKeyInArray!0 (select (arr!49333 a!2792) i!951)) (and (not (= (select (arr!49333 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49333 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539646 d!160429))

(declare-fun d!160431 () Bool)

(assert (=> d!160431 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131338 d!160431))

(declare-fun d!160437 () Bool)

(assert (=> d!160437 (= (array_inv!38278 a!2792) (bvsge (size!49884 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131338 d!160437))

(declare-fun d!160439 () Bool)

(assert (=> d!160439 (= (validKeyInArray!0 (select (arr!49333 a!2792) j!64)) (and (not (= (select (arr!49333 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49333 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539640 d!160439))

(declare-fun b!1539851 () Bool)

(declare-fun e!856488 () SeekEntryResult!13482)

(assert (=> b!1539851 (= e!856488 Undefined!13482)))

(declare-fun d!160441 () Bool)

(declare-fun lt!665120 () SeekEntryResult!13482)

(assert (=> d!160441 (and (or (is-Undefined!13482 lt!665120) (not (is-Found!13482 lt!665120)) (and (bvsge (index!56323 lt!665120) #b00000000000000000000000000000000) (bvslt (index!56323 lt!665120) (size!49884 a!2792)))) (or (is-Undefined!13482 lt!665120) (is-Found!13482 lt!665120) (not (is-MissingVacant!13482 lt!665120)) (not (= (index!56325 lt!665120) vacantIndex!5)) (and (bvsge (index!56325 lt!665120) #b00000000000000000000000000000000) (bvslt (index!56325 lt!665120) (size!49884 a!2792)))) (or (is-Undefined!13482 lt!665120) (ite (is-Found!13482 lt!665120) (= (select (arr!49333 a!2792) (index!56323 lt!665120)) (select (arr!49333 a!2792) j!64)) (and (is-MissingVacant!13482 lt!665120) (= (index!56325 lt!665120) vacantIndex!5) (= (select (arr!49333 a!2792) (index!56325 lt!665120)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160441 (= lt!665120 e!856488)))

(declare-fun c!141142 () Bool)

(assert (=> d!160441 (= c!141142 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!665119 () (_ BitVec 64))

(assert (=> d!160441 (= lt!665119 (select (arr!49333 a!2792) index!463))))

(assert (=> d!160441 (validMask!0 mask!2480)))

(assert (=> d!160441 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49333 a!2792) j!64) a!2792 mask!2480) lt!665120)))

(declare-fun b!1539852 () Bool)

(declare-fun e!856490 () SeekEntryResult!13482)

