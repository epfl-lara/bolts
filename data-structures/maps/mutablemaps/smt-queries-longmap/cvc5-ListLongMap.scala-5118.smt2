; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69442 () Bool)

(assert start!69442)

(declare-fun b!809380 () Bool)

(declare-fun e!448034 () Bool)

(declare-fun e!448033 () Bool)

(assert (=> b!809380 (= e!448034 e!448033)))

(declare-fun res!553285 () Bool)

(assert (=> b!809380 (=> (not res!553285) (not e!448033))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43991 0))(
  ( (array!43992 (arr!21066 (Array (_ BitVec 32) (_ BitVec 64))) (size!21487 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43991)

(declare-fun lt!362751 () (_ BitVec 32))

(assert (=> b!809380 (= res!553285 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!362751 #b00000000000000000000000000000000) (bvslt lt!362751 (size!21487 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809380 (= lt!362751 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809381 () Bool)

(declare-fun res!553280 () Bool)

(declare-fun e!448035 () Bool)

(assert (=> b!809381 (=> (not res!553280) (not e!448035))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809381 (= res!553280 (validKeyInArray!0 (select (arr!21066 a!3170) j!153)))))

(declare-fun b!809382 () Bool)

(declare-fun e!448036 () Bool)

(assert (=> b!809382 (= e!448036 e!448034)))

(declare-fun res!553284 () Bool)

(assert (=> b!809382 (=> (not res!553284) (not e!448034))))

(declare-datatypes ((SeekEntryResult!8664 0))(
  ( (MissingZero!8664 (index!37023 (_ BitVec 32))) (Found!8664 (index!37024 (_ BitVec 32))) (Intermediate!8664 (undefined!9476 Bool) (index!37025 (_ BitVec 32)) (x!67857 (_ BitVec 32))) (Undefined!8664) (MissingVacant!8664 (index!37026 (_ BitVec 32))) )
))
(declare-fun lt!362754 () SeekEntryResult!8664)

(declare-fun lt!362750 () SeekEntryResult!8664)

(assert (=> b!809382 (= res!553284 (and (= lt!362754 lt!362750) (= lt!362750 (Found!8664 j!153)) (not (= (select (arr!21066 a!3170) index!1236) (select (arr!21066 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43991 (_ BitVec 32)) SeekEntryResult!8664)

(assert (=> b!809382 (= lt!362750 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21066 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43991 (_ BitVec 32)) SeekEntryResult!8664)

(assert (=> b!809382 (= lt!362754 (seekEntryOrOpen!0 (select (arr!21066 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809383 () Bool)

(declare-fun res!553288 () Bool)

(declare-fun e!448031 () Bool)

(assert (=> b!809383 (=> (not res!553288) (not e!448031))))

(declare-datatypes ((List!15082 0))(
  ( (Nil!15079) (Cons!15078 (h!16207 (_ BitVec 64)) (t!21405 List!15082)) )
))
(declare-fun arrayNoDuplicates!0 (array!43991 (_ BitVec 32) List!15082) Bool)

(assert (=> b!809383 (= res!553288 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15079))))

(declare-fun b!809384 () Bool)

(assert (=> b!809384 (= e!448035 e!448031)))

(declare-fun res!553278 () Bool)

(assert (=> b!809384 (=> (not res!553278) (not e!448031))))

(declare-fun lt!362753 () SeekEntryResult!8664)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809384 (= res!553278 (or (= lt!362753 (MissingZero!8664 i!1163)) (= lt!362753 (MissingVacant!8664 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!809384 (= lt!362753 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809385 () Bool)

(declare-fun res!553277 () Bool)

(assert (=> b!809385 (=> (not res!553277) (not e!448031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43991 (_ BitVec 32)) Bool)

(assert (=> b!809385 (= res!553277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809386 () Bool)

(declare-fun res!553286 () Bool)

(assert (=> b!809386 (=> (not res!553286) (not e!448035))))

(assert (=> b!809386 (= res!553286 (and (= (size!21487 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21487 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21487 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!553281 () Bool)

(assert (=> start!69442 (=> (not res!553281) (not e!448035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69442 (= res!553281 (validMask!0 mask!3266))))

(assert (=> start!69442 e!448035))

(assert (=> start!69442 true))

(declare-fun array_inv!16840 (array!43991) Bool)

(assert (=> start!69442 (array_inv!16840 a!3170)))

(declare-fun lt!362752 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362749 () SeekEntryResult!8664)

(declare-fun lt!362755 () array!43991)

(declare-fun b!809387 () Bool)

(assert (=> b!809387 (= e!448033 (not (= lt!362749 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362751 vacantAfter!23 lt!362752 lt!362755 mask!3266))))))

(declare-fun b!809388 () Bool)

(assert (=> b!809388 (= e!448031 e!448036)))

(declare-fun res!553282 () Bool)

(assert (=> b!809388 (=> (not res!553282) (not e!448036))))

(assert (=> b!809388 (= res!553282 (= lt!362749 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362752 lt!362755 mask!3266)))))

(assert (=> b!809388 (= lt!362749 (seekEntryOrOpen!0 lt!362752 lt!362755 mask!3266))))

(assert (=> b!809388 (= lt!362752 (select (store (arr!21066 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809388 (= lt!362755 (array!43992 (store (arr!21066 a!3170) i!1163 k!2044) (size!21487 a!3170)))))

(declare-fun b!809389 () Bool)

(declare-fun res!553279 () Bool)

(assert (=> b!809389 (=> (not res!553279) (not e!448035))))

(assert (=> b!809389 (= res!553279 (validKeyInArray!0 k!2044))))

(declare-fun b!809390 () Bool)

(declare-fun res!553287 () Bool)

(assert (=> b!809390 (=> (not res!553287) (not e!448031))))

(assert (=> b!809390 (= res!553287 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21487 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21066 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21487 a!3170)) (= (select (arr!21066 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809391 () Bool)

(declare-fun res!553283 () Bool)

(assert (=> b!809391 (=> (not res!553283) (not e!448035))))

(declare-fun arrayContainsKey!0 (array!43991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809391 (= res!553283 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69442 res!553281) b!809386))

(assert (= (and b!809386 res!553286) b!809381))

(assert (= (and b!809381 res!553280) b!809389))

(assert (= (and b!809389 res!553279) b!809391))

(assert (= (and b!809391 res!553283) b!809384))

(assert (= (and b!809384 res!553278) b!809385))

(assert (= (and b!809385 res!553277) b!809383))

(assert (= (and b!809383 res!553288) b!809390))

(assert (= (and b!809390 res!553287) b!809388))

(assert (= (and b!809388 res!553282) b!809382))

(assert (= (and b!809382 res!553284) b!809380))

(assert (= (and b!809380 res!553285) b!809387))

(declare-fun m!751681 () Bool)

(assert (=> b!809390 m!751681))

(declare-fun m!751683 () Bool)

(assert (=> b!809390 m!751683))

(declare-fun m!751685 () Bool)

(assert (=> b!809388 m!751685))

(declare-fun m!751687 () Bool)

(assert (=> b!809388 m!751687))

(declare-fun m!751689 () Bool)

(assert (=> b!809388 m!751689))

(declare-fun m!751691 () Bool)

(assert (=> b!809388 m!751691))

(declare-fun m!751693 () Bool)

(assert (=> b!809387 m!751693))

(declare-fun m!751695 () Bool)

(assert (=> b!809385 m!751695))

(declare-fun m!751697 () Bool)

(assert (=> b!809380 m!751697))

(declare-fun m!751699 () Bool)

(assert (=> start!69442 m!751699))

(declare-fun m!751701 () Bool)

(assert (=> start!69442 m!751701))

(declare-fun m!751703 () Bool)

(assert (=> b!809389 m!751703))

(declare-fun m!751705 () Bool)

(assert (=> b!809391 m!751705))

(declare-fun m!751707 () Bool)

(assert (=> b!809384 m!751707))

(declare-fun m!751709 () Bool)

(assert (=> b!809382 m!751709))

(declare-fun m!751711 () Bool)

(assert (=> b!809382 m!751711))

(assert (=> b!809382 m!751711))

(declare-fun m!751713 () Bool)

(assert (=> b!809382 m!751713))

(assert (=> b!809382 m!751711))

(declare-fun m!751715 () Bool)

(assert (=> b!809382 m!751715))

(declare-fun m!751717 () Bool)

(assert (=> b!809383 m!751717))

(assert (=> b!809381 m!751711))

(assert (=> b!809381 m!751711))

(declare-fun m!751719 () Bool)

(assert (=> b!809381 m!751719))

(push 1)

(assert (not b!809391))

(assert (not start!69442))

(assert (not b!809384))

(assert (not b!809389))

(assert (not b!809388))

(assert (not b!809380))

(assert (not b!809382))

(assert (not b!809385))

(assert (not b!809381))

(assert (not b!809387))

(assert (not b!809383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103843 () Bool)

(declare-fun res!553378 () Bool)

(declare-fun e!448103 () Bool)

(assert (=> d!103843 (=> res!553378 e!448103)))

(assert (=> d!103843 (= res!553378 (bvsge #b00000000000000000000000000000000 (size!21487 a!3170)))))

(assert (=> d!103843 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448103)))

(declare-fun b!809508 () Bool)

(declare-fun e!448104 () Bool)

(declare-fun call!35424 () Bool)

(assert (=> b!809508 (= e!448104 call!35424)))

(declare-fun b!809509 () Bool)

(declare-fun e!448105 () Bool)

(assert (=> b!809509 (= e!448103 e!448105)))

(declare-fun c!88476 () Bool)

(assert (=> b!809509 (= c!88476 (validKeyInArray!0 (select (arr!21066 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35421 () Bool)

(assert (=> bm!35421 (= call!35424 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!809510 () Bool)

(assert (=> b!809510 (= e!448105 e!448104)))

(declare-fun lt!362824 () (_ BitVec 64))

(assert (=> b!809510 (= lt!362824 (select (arr!21066 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27608 0))(
  ( (Unit!27609) )
))
(declare-fun lt!362822 () Unit!27608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43991 (_ BitVec 64) (_ BitVec 32)) Unit!27608)

(assert (=> b!809510 (= lt!362822 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362824 #b00000000000000000000000000000000))))

(assert (=> b!809510 (arrayContainsKey!0 a!3170 lt!362824 #b00000000000000000000000000000000)))

(declare-fun lt!362823 () Unit!27608)

(assert (=> b!809510 (= lt!362823 lt!362822)))

(declare-fun res!553377 () Bool)

(assert (=> b!809510 (= res!553377 (= (seekEntryOrOpen!0 (select (arr!21066 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8664 #b00000000000000000000000000000000)))))

(assert (=> b!809510 (=> (not res!553377) (not e!448104))))

(declare-fun b!809511 () Bool)

(assert (=> b!809511 (= e!448105 call!35424)))

(assert (= (and d!103843 (not res!553378)) b!809509))

(assert (= (and b!809509 c!88476) b!809510))

(assert (= (and b!809509 (not c!88476)) b!809511))

(assert (= (and b!809510 res!553377) b!809508))

(assert (= (or b!809508 b!809511) bm!35421))

(declare-fun m!751825 () Bool)

(assert (=> b!809509 m!751825))

(assert (=> b!809509 m!751825))

(declare-fun m!751827 () Bool)

(assert (=> b!809509 m!751827))

(declare-fun m!751829 () Bool)

(assert (=> bm!35421 m!751829))

(assert (=> b!809510 m!751825))

(declare-fun m!751831 () Bool)

(assert (=> b!809510 m!751831))

(declare-fun m!751833 () Bool)

(assert (=> b!809510 m!751833))

(assert (=> b!809510 m!751825))

(declare-fun m!751835 () Bool)

(assert (=> b!809510 m!751835))

(assert (=> b!809385 d!103843))

(declare-fun d!103849 () Bool)

(declare-fun res!553383 () Bool)

(declare-fun e!448116 () Bool)

(assert (=> d!103849 (=> res!553383 e!448116)))

(assert (=> d!103849 (= res!553383 (= (select (arr!21066 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103849 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!448116)))

(declare-fun b!809528 () Bool)

(declare-fun e!448117 () Bool)

(assert (=> b!809528 (= e!448116 e!448117)))

(declare-fun res!553384 () Bool)

(assert (=> b!809528 (=> (not res!553384) (not e!448117))))

(assert (=> b!809528 (= res!553384 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21487 a!3170)))))

(declare-fun b!809529 () Bool)

(assert (=> b!809529 (= e!448117 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103849 (not res!553383)) b!809528))

(assert (= (and b!809528 res!553384) b!809529))

(assert (=> d!103849 m!751825))

(declare-fun m!751837 () Bool)

(assert (=> b!809529 m!751837))

(assert (=> b!809391 d!103849))

(declare-fun d!103851 () Bool)

(declare-fun lt!362839 () (_ BitVec 32))

(assert (=> d!103851 (and (bvsge lt!362839 #b00000000000000000000000000000000) (bvslt lt!362839 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103851 (= lt!362839 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103851 (validMask!0 mask!3266)))

(assert (=> d!103851 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362839)))

(declare-fun bs!22415 () Bool)

(assert (= bs!22415 d!103851))

(declare-fun m!751839 () Bool)

(assert (=> bs!22415 m!751839))

(assert (=> bs!22415 m!751699))

(assert (=> b!809380 d!103851))

(declare-fun d!103853 () Bool)

(assert (=> d!103853 (= (validKeyInArray!0 (select (arr!21066 a!3170) j!153)) (and (not (= (select (arr!21066 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21066 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809381 d!103853))

(declare-fun lt!362858 () SeekEntryResult!8664)

(declare-fun d!103855 () Bool)

(assert (=> d!103855 (and (or (is-Undefined!8664 lt!362858) (not (is-Found!8664 lt!362858)) (and (bvsge (index!37024 lt!362858) #b00000000000000000000000000000000) (bvslt (index!37024 lt!362858) (size!21487 lt!362755)))) (or (is-Undefined!8664 lt!362858) (is-Found!8664 lt!362858) (not (is-MissingVacant!8664 lt!362858)) (not (= (index!37026 lt!362858) vacantAfter!23)) (and (bvsge (index!37026 lt!362858) #b00000000000000000000000000000000) (bvslt (index!37026 lt!362858) (size!21487 lt!362755)))) (or (is-Undefined!8664 lt!362858) (ite (is-Found!8664 lt!362858) (= (select (arr!21066 lt!362755) (index!37024 lt!362858)) lt!362752) (and (is-MissingVacant!8664 lt!362858) (= (index!37026 lt!362858) vacantAfter!23) (= (select (arr!21066 lt!362755) (index!37026 lt!362858)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448174 () SeekEntryResult!8664)

(assert (=> d!103855 (= lt!362858 e!448174)))

(declare-fun c!88514 () Bool)

(assert (=> d!103855 (= c!88514 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(declare-fun lt!362859 () (_ BitVec 64))

(assert (=> d!103855 (= lt!362859 (select (arr!21066 lt!362755) lt!362751))))

(assert (=> d!103855 (validMask!0 mask!3266)))

(assert (=> d!103855 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362751 vacantAfter!23 lt!362752 lt!362755 mask!3266) lt!362858)))

(declare-fun b!809614 () Bool)

(declare-fun e!448173 () SeekEntryResult!8664)

(assert (=> b!809614 (= e!448173 (MissingVacant!8664 vacantAfter!23))))

(declare-fun b!809615 () Bool)

(assert (=> b!809615 (= e!448173 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!362751 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!362752 lt!362755 mask!3266))))

(declare-fun b!809616 () Bool)

(assert (=> b!809616 (= e!448174 Undefined!8664)))

(declare-fun b!809617 () Bool)

(declare-fun e!448172 () SeekEntryResult!8664)

(assert (=> b!809617 (= e!448172 (Found!8664 lt!362751))))

(declare-fun b!809618 () Bool)

(assert (=> b!809618 (= e!448174 e!448172)))

(declare-fun c!88515 () Bool)

(assert (=> b!809618 (= c!88515 (= lt!362859 lt!362752))))

(declare-fun b!809619 () Bool)

(declare-fun c!88513 () Bool)

(assert (=> b!809619 (= c!88513 (= lt!362859 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809619 (= e!448172 e!448173)))

(assert (= (and d!103855 c!88514) b!809616))

(assert (= (and d!103855 (not c!88514)) b!809618))

(assert (= (and b!809618 c!88515) b!809617))

(assert (= (and b!809618 (not c!88515)) b!809619))

(assert (= (and b!809619 c!88513) b!809614))

(assert (= (and b!809619 (not c!88513)) b!809615))

(declare-fun m!751907 () Bool)

(assert (=> d!103855 m!751907))

(declare-fun m!751909 () Bool)

(assert (=> d!103855 m!751909))

(declare-fun m!751911 () Bool)

(assert (=> d!103855 m!751911))

(assert (=> d!103855 m!751699))

(declare-fun m!751913 () Bool)

(assert (=> b!809615 m!751913))

(assert (=> b!809615 m!751913))

(declare-fun m!751915 () Bool)

(assert (=> b!809615 m!751915))

(assert (=> b!809387 d!103855))

(declare-fun d!103885 () Bool)

(assert (=> d!103885 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69442 d!103885))

(declare-fun d!103891 () Bool)

(assert (=> d!103891 (= (array_inv!16840 a!3170) (bvsge (size!21487 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69442 d!103891))

(declare-fun d!103893 () Bool)

(declare-fun lt!362878 () SeekEntryResult!8664)

(assert (=> d!103893 (and (or (is-Undefined!8664 lt!362878) (not (is-Found!8664 lt!362878)) (and (bvsge (index!37024 lt!362878) #b00000000000000000000000000000000) (bvslt (index!37024 lt!362878) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362878) (is-Found!8664 lt!362878) (not (is-MissingVacant!8664 lt!362878)) (not (= (index!37026 lt!362878) vacantBefore!23)) (and (bvsge (index!37026 lt!362878) #b00000000000000000000000000000000) (bvslt (index!37026 lt!362878) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362878) (ite (is-Found!8664 lt!362878) (= (select (arr!21066 a!3170) (index!37024 lt!362878)) (select (arr!21066 a!3170) j!153)) (and (is-MissingVacant!8664 lt!362878) (= (index!37026 lt!362878) vacantBefore!23) (= (select (arr!21066 a!3170) (index!37026 lt!362878)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448198 () SeekEntryResult!8664)

(assert (=> d!103893 (= lt!362878 e!448198)))

(declare-fun c!88532 () Bool)

(assert (=> d!103893 (= c!88532 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!362879 () (_ BitVec 64))

(assert (=> d!103893 (= lt!362879 (select (arr!21066 a!3170) index!1236))))

(assert (=> d!103893 (validMask!0 mask!3266)))

(assert (=> d!103893 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21066 a!3170) j!153) a!3170 mask!3266) lt!362878)))

(declare-fun b!809656 () Bool)

(declare-fun e!448197 () SeekEntryResult!8664)

(assert (=> b!809656 (= e!448197 (MissingVacant!8664 vacantBefore!23))))

(declare-fun b!809657 () Bool)

(assert (=> b!809657 (= e!448197 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21066 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809658 () Bool)

(assert (=> b!809658 (= e!448198 Undefined!8664)))

(declare-fun b!809659 () Bool)

(declare-fun e!448196 () SeekEntryResult!8664)

(assert (=> b!809659 (= e!448196 (Found!8664 index!1236))))

(declare-fun b!809660 () Bool)

(assert (=> b!809660 (= e!448198 e!448196)))

(declare-fun c!88533 () Bool)

(assert (=> b!809660 (= c!88533 (= lt!362879 (select (arr!21066 a!3170) j!153)))))

(declare-fun b!809661 () Bool)

(declare-fun c!88531 () Bool)

(assert (=> b!809661 (= c!88531 (= lt!362879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809661 (= e!448196 e!448197)))

(assert (= (and d!103893 c!88532) b!809658))

(assert (= (and d!103893 (not c!88532)) b!809660))

(assert (= (and b!809660 c!88533) b!809659))

(assert (= (and b!809660 (not c!88533)) b!809661))

(assert (= (and b!809661 c!88531) b!809656))

(assert (= (and b!809661 (not c!88531)) b!809657))

(declare-fun m!751947 () Bool)

(assert (=> d!103893 m!751947))

(declare-fun m!751949 () Bool)

(assert (=> d!103893 m!751949))

(assert (=> d!103893 m!751709))

(assert (=> d!103893 m!751699))

(assert (=> b!809657 m!751697))

(assert (=> b!809657 m!751697))

(assert (=> b!809657 m!751711))

(declare-fun m!751951 () Bool)

(assert (=> b!809657 m!751951))

(assert (=> b!809382 d!103893))

(declare-fun b!809704 () Bool)

(declare-fun e!448221 () SeekEntryResult!8664)

(declare-fun lt!362900 () SeekEntryResult!8664)

(assert (=> b!809704 (= e!448221 (Found!8664 (index!37025 lt!362900)))))

(declare-fun b!809705 () Bool)

(declare-fun e!448222 () SeekEntryResult!8664)

(assert (=> b!809705 (= e!448222 (seekKeyOrZeroReturnVacant!0 (x!67857 lt!362900) (index!37025 lt!362900) (index!37025 lt!362900) (select (arr!21066 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809706 () Bool)

(declare-fun e!448220 () SeekEntryResult!8664)

(assert (=> b!809706 (= e!448220 e!448221)))

(declare-fun lt!362899 () (_ BitVec 64))

(assert (=> b!809706 (= lt!362899 (select (arr!21066 a!3170) (index!37025 lt!362900)))))

(declare-fun c!88557 () Bool)

(assert (=> b!809706 (= c!88557 (= lt!362899 (select (arr!21066 a!3170) j!153)))))

(declare-fun d!103895 () Bool)

(declare-fun lt!362898 () SeekEntryResult!8664)

(assert (=> d!103895 (and (or (is-Undefined!8664 lt!362898) (not (is-Found!8664 lt!362898)) (and (bvsge (index!37024 lt!362898) #b00000000000000000000000000000000) (bvslt (index!37024 lt!362898) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362898) (is-Found!8664 lt!362898) (not (is-MissingZero!8664 lt!362898)) (and (bvsge (index!37023 lt!362898) #b00000000000000000000000000000000) (bvslt (index!37023 lt!362898) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362898) (is-Found!8664 lt!362898) (is-MissingZero!8664 lt!362898) (not (is-MissingVacant!8664 lt!362898)) (and (bvsge (index!37026 lt!362898) #b00000000000000000000000000000000) (bvslt (index!37026 lt!362898) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362898) (ite (is-Found!8664 lt!362898) (= (select (arr!21066 a!3170) (index!37024 lt!362898)) (select (arr!21066 a!3170) j!153)) (ite (is-MissingZero!8664 lt!362898) (= (select (arr!21066 a!3170) (index!37023 lt!362898)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8664 lt!362898) (= (select (arr!21066 a!3170) (index!37026 lt!362898)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103895 (= lt!362898 e!448220)))

(declare-fun c!88555 () Bool)

(assert (=> d!103895 (= c!88555 (and (is-Intermediate!8664 lt!362900) (undefined!9476 lt!362900)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43991 (_ BitVec 32)) SeekEntryResult!8664)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103895 (= lt!362900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21066 a!3170) j!153) mask!3266) (select (arr!21066 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103895 (validMask!0 mask!3266)))

(assert (=> d!103895 (= (seekEntryOrOpen!0 (select (arr!21066 a!3170) j!153) a!3170 mask!3266) lt!362898)))

(declare-fun b!809707 () Bool)

(assert (=> b!809707 (= e!448220 Undefined!8664)))

(declare-fun b!809708 () Bool)

(declare-fun c!88556 () Bool)

(assert (=> b!809708 (= c!88556 (= lt!362899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809708 (= e!448221 e!448222)))

(declare-fun b!809709 () Bool)

(assert (=> b!809709 (= e!448222 (MissingZero!8664 (index!37025 lt!362900)))))

(assert (= (and d!103895 c!88555) b!809707))

(assert (= (and d!103895 (not c!88555)) b!809706))

(assert (= (and b!809706 c!88557) b!809704))

(assert (= (and b!809706 (not c!88557)) b!809708))

(assert (= (and b!809708 c!88556) b!809709))

(assert (= (and b!809708 (not c!88556)) b!809705))

(assert (=> b!809705 m!751711))

(declare-fun m!752005 () Bool)

(assert (=> b!809705 m!752005))

(declare-fun m!752007 () Bool)

(assert (=> b!809706 m!752007))

(declare-fun m!752009 () Bool)

(assert (=> d!103895 m!752009))

(assert (=> d!103895 m!751711))

(declare-fun m!752011 () Bool)

(assert (=> d!103895 m!752011))

(declare-fun m!752013 () Bool)

(assert (=> d!103895 m!752013))

(assert (=> d!103895 m!751699))

(declare-fun m!752015 () Bool)

(assert (=> d!103895 m!752015))

(declare-fun m!752017 () Bool)

(assert (=> d!103895 m!752017))

(assert (=> d!103895 m!751711))

(assert (=> d!103895 m!752009))

(assert (=> b!809382 d!103895))

(declare-fun b!809720 () Bool)

(declare-fun e!448232 () Bool)

(declare-fun call!35436 () Bool)

(assert (=> b!809720 (= e!448232 call!35436)))

(declare-fun d!103905 () Bool)

(declare-fun res!553423 () Bool)

(declare-fun e!448233 () Bool)

(assert (=> d!103905 (=> res!553423 e!448233)))

(assert (=> d!103905 (= res!553423 (bvsge #b00000000000000000000000000000000 (size!21487 a!3170)))))

(assert (=> d!103905 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15079) e!448233)))

(declare-fun b!809721 () Bool)

(declare-fun e!448234 () Bool)

(assert (=> b!809721 (= e!448233 e!448234)))

(declare-fun res!553422 () Bool)

(assert (=> b!809721 (=> (not res!553422) (not e!448234))))

(declare-fun e!448231 () Bool)

(assert (=> b!809721 (= res!553422 (not e!448231))))

(declare-fun res!553421 () Bool)

(assert (=> b!809721 (=> (not res!553421) (not e!448231))))

(assert (=> b!809721 (= res!553421 (validKeyInArray!0 (select (arr!21066 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809722 () Bool)

(assert (=> b!809722 (= e!448234 e!448232)))

(declare-fun c!88560 () Bool)

(assert (=> b!809722 (= c!88560 (validKeyInArray!0 (select (arr!21066 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809723 () Bool)

(assert (=> b!809723 (= e!448232 call!35436)))

(declare-fun bm!35433 () Bool)

(assert (=> bm!35433 (= call!35436 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88560 (Cons!15078 (select (arr!21066 a!3170) #b00000000000000000000000000000000) Nil!15079) Nil!15079)))))

(declare-fun b!809724 () Bool)

(declare-fun contains!4133 (List!15082 (_ BitVec 64)) Bool)

(assert (=> b!809724 (= e!448231 (contains!4133 Nil!15079 (select (arr!21066 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103905 (not res!553423)) b!809721))

(assert (= (and b!809721 res!553421) b!809724))

(assert (= (and b!809721 res!553422) b!809722))

(assert (= (and b!809722 c!88560) b!809720))

(assert (= (and b!809722 (not c!88560)) b!809723))

(assert (= (or b!809720 b!809723) bm!35433))

(assert (=> b!809721 m!751825))

(assert (=> b!809721 m!751825))

(assert (=> b!809721 m!751827))

(assert (=> b!809722 m!751825))

(assert (=> b!809722 m!751825))

(assert (=> b!809722 m!751827))

(assert (=> bm!35433 m!751825))

(declare-fun m!752019 () Bool)

(assert (=> bm!35433 m!752019))

(assert (=> b!809724 m!751825))

(assert (=> b!809724 m!751825))

(declare-fun m!752021 () Bool)

(assert (=> b!809724 m!752021))

(assert (=> b!809383 d!103905))

(declare-fun lt!362901 () SeekEntryResult!8664)

(declare-fun d!103907 () Bool)

(assert (=> d!103907 (and (or (is-Undefined!8664 lt!362901) (not (is-Found!8664 lt!362901)) (and (bvsge (index!37024 lt!362901) #b00000000000000000000000000000000) (bvslt (index!37024 lt!362901) (size!21487 lt!362755)))) (or (is-Undefined!8664 lt!362901) (is-Found!8664 lt!362901) (not (is-MissingVacant!8664 lt!362901)) (not (= (index!37026 lt!362901) vacantAfter!23)) (and (bvsge (index!37026 lt!362901) #b00000000000000000000000000000000) (bvslt (index!37026 lt!362901) (size!21487 lt!362755)))) (or (is-Undefined!8664 lt!362901) (ite (is-Found!8664 lt!362901) (= (select (arr!21066 lt!362755) (index!37024 lt!362901)) lt!362752) (and (is-MissingVacant!8664 lt!362901) (= (index!37026 lt!362901) vacantAfter!23) (= (select (arr!21066 lt!362755) (index!37026 lt!362901)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448237 () SeekEntryResult!8664)

(assert (=> d!103907 (= lt!362901 e!448237)))

(declare-fun c!88562 () Bool)

(assert (=> d!103907 (= c!88562 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!362902 () (_ BitVec 64))

(assert (=> d!103907 (= lt!362902 (select (arr!21066 lt!362755) index!1236))))

(assert (=> d!103907 (validMask!0 mask!3266)))

(assert (=> d!103907 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362752 lt!362755 mask!3266) lt!362901)))

(declare-fun b!809725 () Bool)

(declare-fun e!448236 () SeekEntryResult!8664)

(assert (=> b!809725 (= e!448236 (MissingVacant!8664 vacantAfter!23))))

(declare-fun b!809726 () Bool)

(assert (=> b!809726 (= e!448236 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362752 lt!362755 mask!3266))))

(declare-fun b!809727 () Bool)

(assert (=> b!809727 (= e!448237 Undefined!8664)))

(declare-fun b!809728 () Bool)

(declare-fun e!448235 () SeekEntryResult!8664)

(assert (=> b!809728 (= e!448235 (Found!8664 index!1236))))

(declare-fun b!809729 () Bool)

(assert (=> b!809729 (= e!448237 e!448235)))

(declare-fun c!88563 () Bool)

(assert (=> b!809729 (= c!88563 (= lt!362902 lt!362752))))

(declare-fun b!809730 () Bool)

(declare-fun c!88561 () Bool)

(assert (=> b!809730 (= c!88561 (= lt!362902 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809730 (= e!448235 e!448236)))

(assert (= (and d!103907 c!88562) b!809727))

(assert (= (and d!103907 (not c!88562)) b!809729))

(assert (= (and b!809729 c!88563) b!809728))

(assert (= (and b!809729 (not c!88563)) b!809730))

(assert (= (and b!809730 c!88561) b!809725))

(assert (= (and b!809730 (not c!88561)) b!809726))

(declare-fun m!752023 () Bool)

(assert (=> d!103907 m!752023))

(declare-fun m!752025 () Bool)

(assert (=> d!103907 m!752025))

(declare-fun m!752027 () Bool)

(assert (=> d!103907 m!752027))

(assert (=> d!103907 m!751699))

(assert (=> b!809726 m!751697))

(assert (=> b!809726 m!751697))

(declare-fun m!752029 () Bool)

(assert (=> b!809726 m!752029))

(assert (=> b!809388 d!103907))

(declare-fun b!809731 () Bool)

(declare-fun e!448239 () SeekEntryResult!8664)

(declare-fun lt!362905 () SeekEntryResult!8664)

(assert (=> b!809731 (= e!448239 (Found!8664 (index!37025 lt!362905)))))

(declare-fun e!448240 () SeekEntryResult!8664)

(declare-fun b!809732 () Bool)

(assert (=> b!809732 (= e!448240 (seekKeyOrZeroReturnVacant!0 (x!67857 lt!362905) (index!37025 lt!362905) (index!37025 lt!362905) lt!362752 lt!362755 mask!3266))))

(declare-fun b!809733 () Bool)

(declare-fun e!448238 () SeekEntryResult!8664)

(assert (=> b!809733 (= e!448238 e!448239)))

(declare-fun lt!362904 () (_ BitVec 64))

(assert (=> b!809733 (= lt!362904 (select (arr!21066 lt!362755) (index!37025 lt!362905)))))

(declare-fun c!88566 () Bool)

(assert (=> b!809733 (= c!88566 (= lt!362904 lt!362752))))

(declare-fun d!103909 () Bool)

(declare-fun lt!362903 () SeekEntryResult!8664)

(assert (=> d!103909 (and (or (is-Undefined!8664 lt!362903) (not (is-Found!8664 lt!362903)) (and (bvsge (index!37024 lt!362903) #b00000000000000000000000000000000) (bvslt (index!37024 lt!362903) (size!21487 lt!362755)))) (or (is-Undefined!8664 lt!362903) (is-Found!8664 lt!362903) (not (is-MissingZero!8664 lt!362903)) (and (bvsge (index!37023 lt!362903) #b00000000000000000000000000000000) (bvslt (index!37023 lt!362903) (size!21487 lt!362755)))) (or (is-Undefined!8664 lt!362903) (is-Found!8664 lt!362903) (is-MissingZero!8664 lt!362903) (not (is-MissingVacant!8664 lt!362903)) (and (bvsge (index!37026 lt!362903) #b00000000000000000000000000000000) (bvslt (index!37026 lt!362903) (size!21487 lt!362755)))) (or (is-Undefined!8664 lt!362903) (ite (is-Found!8664 lt!362903) (= (select (arr!21066 lt!362755) (index!37024 lt!362903)) lt!362752) (ite (is-MissingZero!8664 lt!362903) (= (select (arr!21066 lt!362755) (index!37023 lt!362903)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8664 lt!362903) (= (select (arr!21066 lt!362755) (index!37026 lt!362903)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103909 (= lt!362903 e!448238)))

(declare-fun c!88564 () Bool)

(assert (=> d!103909 (= c!88564 (and (is-Intermediate!8664 lt!362905) (undefined!9476 lt!362905)))))

(assert (=> d!103909 (= lt!362905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362752 mask!3266) lt!362752 lt!362755 mask!3266))))

(assert (=> d!103909 (validMask!0 mask!3266)))

(assert (=> d!103909 (= (seekEntryOrOpen!0 lt!362752 lt!362755 mask!3266) lt!362903)))

(declare-fun b!809734 () Bool)

(assert (=> b!809734 (= e!448238 Undefined!8664)))

(declare-fun b!809735 () Bool)

(declare-fun c!88565 () Bool)

(assert (=> b!809735 (= c!88565 (= lt!362904 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809735 (= e!448239 e!448240)))

(declare-fun b!809736 () Bool)

(assert (=> b!809736 (= e!448240 (MissingZero!8664 (index!37025 lt!362905)))))

(assert (= (and d!103909 c!88564) b!809734))

(assert (= (and d!103909 (not c!88564)) b!809733))

(assert (= (and b!809733 c!88566) b!809731))

(assert (= (and b!809733 (not c!88566)) b!809735))

(assert (= (and b!809735 c!88565) b!809736))

(assert (= (and b!809735 (not c!88565)) b!809732))

(declare-fun m!752031 () Bool)

(assert (=> b!809732 m!752031))

(declare-fun m!752033 () Bool)

(assert (=> b!809733 m!752033))

(declare-fun m!752035 () Bool)

(assert (=> d!103909 m!752035))

(declare-fun m!752037 () Bool)

(assert (=> d!103909 m!752037))

(declare-fun m!752039 () Bool)

(assert (=> d!103909 m!752039))

(assert (=> d!103909 m!751699))

(declare-fun m!752041 () Bool)

(assert (=> d!103909 m!752041))

(declare-fun m!752043 () Bool)

(assert (=> d!103909 m!752043))

(assert (=> d!103909 m!752035))

(assert (=> b!809388 d!103909))

(declare-fun d!103911 () Bool)

(assert (=> d!103911 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809389 d!103911))

(declare-fun b!809737 () Bool)

(declare-fun e!448242 () SeekEntryResult!8664)

(declare-fun lt!362908 () SeekEntryResult!8664)

(assert (=> b!809737 (= e!448242 (Found!8664 (index!37025 lt!362908)))))

(declare-fun b!809738 () Bool)

(declare-fun e!448243 () SeekEntryResult!8664)

(assert (=> b!809738 (= e!448243 (seekKeyOrZeroReturnVacant!0 (x!67857 lt!362908) (index!37025 lt!362908) (index!37025 lt!362908) k!2044 a!3170 mask!3266))))

(declare-fun b!809739 () Bool)

(declare-fun e!448241 () SeekEntryResult!8664)

(assert (=> b!809739 (= e!448241 e!448242)))

(declare-fun lt!362907 () (_ BitVec 64))

(assert (=> b!809739 (= lt!362907 (select (arr!21066 a!3170) (index!37025 lt!362908)))))

(declare-fun c!88569 () Bool)

(assert (=> b!809739 (= c!88569 (= lt!362907 k!2044))))

(declare-fun d!103913 () Bool)

(declare-fun lt!362906 () SeekEntryResult!8664)

(assert (=> d!103913 (and (or (is-Undefined!8664 lt!362906) (not (is-Found!8664 lt!362906)) (and (bvsge (index!37024 lt!362906) #b00000000000000000000000000000000) (bvslt (index!37024 lt!362906) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362906) (is-Found!8664 lt!362906) (not (is-MissingZero!8664 lt!362906)) (and (bvsge (index!37023 lt!362906) #b00000000000000000000000000000000) (bvslt (index!37023 lt!362906) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362906) (is-Found!8664 lt!362906) (is-MissingZero!8664 lt!362906) (not (is-MissingVacant!8664 lt!362906)) (and (bvsge (index!37026 lt!362906) #b00000000000000000000000000000000) (bvslt (index!37026 lt!362906) (size!21487 a!3170)))) (or (is-Undefined!8664 lt!362906) (ite (is-Found!8664 lt!362906) (= (select (arr!21066 a!3170) (index!37024 lt!362906)) k!2044) (ite (is-MissingZero!8664 lt!362906) (= (select (arr!21066 a!3170) (index!37023 lt!362906)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8664 lt!362906) (= (select (arr!21066 a!3170) (index!37026 lt!362906)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103913 (= lt!362906 e!448241)))

(declare-fun c!88567 () Bool)

(assert (=> d!103913 (= c!88567 (and (is-Intermediate!8664 lt!362908) (undefined!9476 lt!362908)))))

(assert (=> d!103913 (= lt!362908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103913 (validMask!0 mask!3266)))

(assert (=> d!103913 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!362906)))

(declare-fun b!809740 () Bool)

(assert (=> b!809740 (= e!448241 Undefined!8664)))

(declare-fun b!809741 () Bool)

(declare-fun c!88568 () Bool)

(assert (=> b!809741 (= c!88568 (= lt!362907 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809741 (= e!448242 e!448243)))

(declare-fun b!809742 () Bool)

(assert (=> b!809742 (= e!448243 (MissingZero!8664 (index!37025 lt!362908)))))

(assert (= (and d!103913 c!88567) b!809740))

(assert (= (and d!103913 (not c!88567)) b!809739))

(assert (= (and b!809739 c!88569) b!809737))

(assert (= (and b!809739 (not c!88569)) b!809741))

(assert (= (and b!809741 c!88568) b!809742))

(assert (= (and b!809741 (not c!88568)) b!809738))

(declare-fun m!752045 () Bool)

(assert (=> b!809738 m!752045))

(declare-fun m!752047 () Bool)

(assert (=> b!809739 m!752047))

(declare-fun m!752049 () Bool)

(assert (=> d!103913 m!752049))

(declare-fun m!752051 () Bool)

(assert (=> d!103913 m!752051))

(declare-fun m!752053 () Bool)

(assert (=> d!103913 m!752053))

(assert (=> d!103913 m!751699))

(declare-fun m!752055 () Bool)

(assert (=> d!103913 m!752055))

(declare-fun m!752057 () Bool)

(assert (=> d!103913 m!752057))

(assert (=> d!103913 m!752049))

(assert (=> b!809384 d!103913))

(push 1)

(assert (not bm!35433))

(assert (not b!809726))

(assert (not b!809615))

(assert (not d!103895))

(assert (not d!103851))

(assert (not b!809732))

(assert (not d!103909))

(assert (not b!809724))

(assert (not b!809705))

(assert (not d!103893))

(assert (not b!809509))

(assert (not bm!35421))

(assert (not d!103913))

(assert (not b!809722))

(assert (not d!103907))

(assert (not d!103855))

(assert (not b!809738))

(assert (not b!809657))

(assert (not b!809510))

(assert (not b!809529))

(assert (not b!809721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

