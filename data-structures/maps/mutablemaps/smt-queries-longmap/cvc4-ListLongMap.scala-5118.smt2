; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69446 () Bool)

(assert start!69446)

(declare-fun b!809452 () Bool)

(declare-fun e!448069 () Bool)

(declare-fun e!448070 () Bool)

(assert (=> b!809452 (= e!448069 e!448070)))

(declare-fun res!553350 () Bool)

(assert (=> b!809452 (=> (not res!553350) (not e!448070))))

(declare-datatypes ((SeekEntryResult!8666 0))(
  ( (MissingZero!8666 (index!37031 (_ BitVec 32))) (Found!8666 (index!37032 (_ BitVec 32))) (Intermediate!8666 (undefined!9478 Bool) (index!37033 (_ BitVec 32)) (x!67859 (_ BitVec 32))) (Undefined!8666) (MissingVacant!8666 (index!37034 (_ BitVec 32))) )
))
(declare-fun lt!362793 () SeekEntryResult!8666)

(declare-datatypes ((array!43995 0))(
  ( (array!43996 (arr!21068 (Array (_ BitVec 32) (_ BitVec 64))) (size!21489 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43995)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362791 () SeekEntryResult!8666)

(assert (=> b!809452 (= res!553350 (and (= lt!362793 lt!362791) (= lt!362791 (Found!8666 j!153)) (not (= (select (arr!21068 a!3170) index!1236) (select (arr!21068 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43995 (_ BitVec 32)) SeekEntryResult!8666)

(assert (=> b!809452 (= lt!362791 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21068 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43995 (_ BitVec 32)) SeekEntryResult!8666)

(assert (=> b!809452 (= lt!362793 (seekEntryOrOpen!0 (select (arr!21068 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!362796 () SeekEntryResult!8666)

(declare-fun e!448067 () Bool)

(declare-fun b!809453 () Bool)

(declare-fun lt!362792 () (_ BitVec 64))

(declare-fun lt!362795 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362794 () array!43995)

(assert (=> b!809453 (= e!448067 (not (= lt!362796 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362795 vacantAfter!23 lt!362792 lt!362794 mask!3266))))))

(declare-fun b!809454 () Bool)

(assert (=> b!809454 (= e!448070 e!448067)))

(declare-fun res!553354 () Bool)

(assert (=> b!809454 (=> (not res!553354) (not e!448067))))

(assert (=> b!809454 (= res!553354 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!362795 #b00000000000000000000000000000000) (bvslt lt!362795 (size!21489 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809454 (= lt!362795 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809455 () Bool)

(declare-fun res!553349 () Bool)

(declare-fun e!448068 () Bool)

(assert (=> b!809455 (=> (not res!553349) (not e!448068))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809455 (= res!553349 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809456 () Bool)

(declare-fun e!448071 () Bool)

(assert (=> b!809456 (= e!448068 e!448071)))

(declare-fun res!553358 () Bool)

(assert (=> b!809456 (=> (not res!553358) (not e!448071))))

(declare-fun lt!362797 () SeekEntryResult!8666)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809456 (= res!553358 (or (= lt!362797 (MissingZero!8666 i!1163)) (= lt!362797 (MissingVacant!8666 i!1163))))))

(assert (=> b!809456 (= lt!362797 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809457 () Bool)

(declare-fun res!553353 () Bool)

(assert (=> b!809457 (=> (not res!553353) (not e!448068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809457 (= res!553353 (validKeyInArray!0 (select (arr!21068 a!3170) j!153)))))

(declare-fun b!809459 () Bool)

(declare-fun res!553360 () Bool)

(assert (=> b!809459 (=> (not res!553360) (not e!448068))))

(assert (=> b!809459 (= res!553360 (validKeyInArray!0 k!2044))))

(declare-fun b!809460 () Bool)

(declare-fun res!553352 () Bool)

(assert (=> b!809460 (=> (not res!553352) (not e!448071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43995 (_ BitVec 32)) Bool)

(assert (=> b!809460 (= res!553352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!553359 () Bool)

(assert (=> start!69446 (=> (not res!553359) (not e!448068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69446 (= res!553359 (validMask!0 mask!3266))))

(assert (=> start!69446 e!448068))

(assert (=> start!69446 true))

(declare-fun array_inv!16842 (array!43995) Bool)

(assert (=> start!69446 (array_inv!16842 a!3170)))

(declare-fun b!809458 () Bool)

(declare-fun res!553351 () Bool)

(assert (=> b!809458 (=> (not res!553351) (not e!448071))))

(declare-datatypes ((List!15084 0))(
  ( (Nil!15081) (Cons!15080 (h!16209 (_ BitVec 64)) (t!21407 List!15084)) )
))
(declare-fun arrayNoDuplicates!0 (array!43995 (_ BitVec 32) List!15084) Bool)

(assert (=> b!809458 (= res!553351 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15081))))

(declare-fun b!809461 () Bool)

(assert (=> b!809461 (= e!448071 e!448069)))

(declare-fun res!553355 () Bool)

(assert (=> b!809461 (=> (not res!553355) (not e!448069))))

(assert (=> b!809461 (= res!553355 (= lt!362796 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362792 lt!362794 mask!3266)))))

(assert (=> b!809461 (= lt!362796 (seekEntryOrOpen!0 lt!362792 lt!362794 mask!3266))))

(assert (=> b!809461 (= lt!362792 (select (store (arr!21068 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809461 (= lt!362794 (array!43996 (store (arr!21068 a!3170) i!1163 k!2044) (size!21489 a!3170)))))

(declare-fun b!809462 () Bool)

(declare-fun res!553357 () Bool)

(assert (=> b!809462 (=> (not res!553357) (not e!448071))))

(assert (=> b!809462 (= res!553357 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21489 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21068 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21489 a!3170)) (= (select (arr!21068 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809463 () Bool)

(declare-fun res!553356 () Bool)

(assert (=> b!809463 (=> (not res!553356) (not e!448068))))

(assert (=> b!809463 (= res!553356 (and (= (size!21489 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21489 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21489 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69446 res!553359) b!809463))

(assert (= (and b!809463 res!553356) b!809457))

(assert (= (and b!809457 res!553353) b!809459))

(assert (= (and b!809459 res!553360) b!809455))

(assert (= (and b!809455 res!553349) b!809456))

(assert (= (and b!809456 res!553358) b!809460))

(assert (= (and b!809460 res!553352) b!809458))

(assert (= (and b!809458 res!553351) b!809462))

(assert (= (and b!809462 res!553357) b!809461))

(assert (= (and b!809461 res!553355) b!809452))

(assert (= (and b!809452 res!553350) b!809454))

(assert (= (and b!809454 res!553354) b!809453))

(declare-fun m!751761 () Bool)

(assert (=> b!809459 m!751761))

(declare-fun m!751763 () Bool)

(assert (=> b!809458 m!751763))

(declare-fun m!751765 () Bool)

(assert (=> b!809461 m!751765))

(declare-fun m!751767 () Bool)

(assert (=> b!809461 m!751767))

(declare-fun m!751769 () Bool)

(assert (=> b!809461 m!751769))

(declare-fun m!751771 () Bool)

(assert (=> b!809461 m!751771))

(declare-fun m!751773 () Bool)

(assert (=> b!809457 m!751773))

(assert (=> b!809457 m!751773))

(declare-fun m!751775 () Bool)

(assert (=> b!809457 m!751775))

(declare-fun m!751777 () Bool)

(assert (=> b!809452 m!751777))

(assert (=> b!809452 m!751773))

(assert (=> b!809452 m!751773))

(declare-fun m!751779 () Bool)

(assert (=> b!809452 m!751779))

(assert (=> b!809452 m!751773))

(declare-fun m!751781 () Bool)

(assert (=> b!809452 m!751781))

(declare-fun m!751783 () Bool)

(assert (=> b!809453 m!751783))

(declare-fun m!751785 () Bool)

(assert (=> b!809462 m!751785))

(declare-fun m!751787 () Bool)

(assert (=> b!809462 m!751787))

(declare-fun m!751789 () Bool)

(assert (=> b!809454 m!751789))

(declare-fun m!751791 () Bool)

(assert (=> b!809460 m!751791))

(declare-fun m!751793 () Bool)

(assert (=> start!69446 m!751793))

(declare-fun m!751795 () Bool)

(assert (=> start!69446 m!751795))

(declare-fun m!751797 () Bool)

(assert (=> b!809455 m!751797))

(declare-fun m!751799 () Bool)

(assert (=> b!809456 m!751799))

(push 1)

(assert (not b!809460))

(assert (not b!809454))

(assert (not b!809455))

(assert (not b!809459))

(assert (not start!69446))

(assert (not b!809453))

(assert (not b!809456))

(assert (not b!809457))

(assert (not b!809452))

(assert (not b!809461))

(assert (not b!809458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103841 () Bool)

(declare-fun lt!362815 () (_ BitVec 32))

(assert (=> d!103841 (and (bvsge lt!362815 #b00000000000000000000000000000000) (bvslt lt!362815 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103841 (= lt!362815 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103841 (validMask!0 mask!3266)))

(assert (=> d!103841 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362815)))

(declare-fun bs!22414 () Bool)

(assert (= bs!22414 d!103841))

(declare-fun m!751819 () Bool)

(assert (=> bs!22414 m!751819))

(assert (=> bs!22414 m!751793))

(assert (=> b!809454 d!103841))

(declare-fun d!103845 () Bool)

(declare-fun res!553371 () Bool)

(declare-fun e!448095 () Bool)

(assert (=> d!103845 (=> res!553371 e!448095)))

(assert (=> d!103845 (= res!553371 (= (select (arr!21068 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103845 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!448095)))

(declare-fun b!809498 () Bool)

(declare-fun e!448096 () Bool)

(assert (=> b!809498 (= e!448095 e!448096)))

(declare-fun res!553372 () Bool)

(assert (=> b!809498 (=> (not res!553372) (not e!448096))))

(assert (=> b!809498 (= res!553372 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21489 a!3170)))))

(declare-fun b!809499 () Bool)

(assert (=> b!809499 (= e!448096 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103845 (not res!553371)) b!809498))

(assert (= (and b!809498 res!553372) b!809499))

(declare-fun m!751821 () Bool)

(assert (=> d!103845 m!751821))

(declare-fun m!751823 () Bool)

(assert (=> b!809499 m!751823))

(assert (=> b!809455 d!103845))

(declare-fun b!809548 () Bool)

(declare-fun e!448127 () SeekEntryResult!8666)

(declare-fun e!448129 () SeekEntryResult!8666)

(assert (=> b!809548 (= e!448127 e!448129)))

(declare-fun lt!362845 () (_ BitVec 64))

(declare-fun lt!362844 () SeekEntryResult!8666)

(assert (=> b!809548 (= lt!362845 (select (arr!21068 a!3170) (index!37033 lt!362844)))))

(declare-fun c!88493 () Bool)

(assert (=> b!809548 (= c!88493 (= lt!362845 k!2044))))

(declare-fun b!809549 () Bool)

(declare-fun e!448128 () SeekEntryResult!8666)

(assert (=> b!809549 (= e!448128 (MissingZero!8666 (index!37033 lt!362844)))))

(declare-fun b!809550 () Bool)

(assert (=> b!809550 (= e!448129 (Found!8666 (index!37033 lt!362844)))))

(declare-fun b!809551 () Bool)

(assert (=> b!809551 (= e!448128 (seekKeyOrZeroReturnVacant!0 (x!67859 lt!362844) (index!37033 lt!362844) (index!37033 lt!362844) k!2044 a!3170 mask!3266))))

(declare-fun b!809552 () Bool)

(assert (=> b!809552 (= e!448127 Undefined!8666)))

(declare-fun b!809553 () Bool)

(declare-fun c!88494 () Bool)

(assert (=> b!809553 (= c!88494 (= lt!362845 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809553 (= e!448129 e!448128)))

(declare-fun d!103847 () Bool)

(declare-fun lt!362843 () SeekEntryResult!8666)

(assert (=> d!103847 (and (or (is-Undefined!8666 lt!362843) (not (is-Found!8666 lt!362843)) (and (bvsge (index!37032 lt!362843) #b00000000000000000000000000000000) (bvslt (index!37032 lt!362843) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362843) (is-Found!8666 lt!362843) (not (is-MissingZero!8666 lt!362843)) (and (bvsge (index!37031 lt!362843) #b00000000000000000000000000000000) (bvslt (index!37031 lt!362843) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362843) (is-Found!8666 lt!362843) (is-MissingZero!8666 lt!362843) (not (is-MissingVacant!8666 lt!362843)) (and (bvsge (index!37034 lt!362843) #b00000000000000000000000000000000) (bvslt (index!37034 lt!362843) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362843) (ite (is-Found!8666 lt!362843) (= (select (arr!21068 a!3170) (index!37032 lt!362843)) k!2044) (ite (is-MissingZero!8666 lt!362843) (= (select (arr!21068 a!3170) (index!37031 lt!362843)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8666 lt!362843) (= (select (arr!21068 a!3170) (index!37034 lt!362843)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103847 (= lt!362843 e!448127)))

(declare-fun c!88492 () Bool)

(assert (=> d!103847 (= c!88492 (and (is-Intermediate!8666 lt!362844) (undefined!9478 lt!362844)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43995 (_ BitVec 32)) SeekEntryResult!8666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103847 (= lt!362844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103847 (validMask!0 mask!3266)))

(assert (=> d!103847 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!362843)))

(assert (= (and d!103847 c!88492) b!809552))

(assert (= (and d!103847 (not c!88492)) b!809548))

(assert (= (and b!809548 c!88493) b!809550))

(assert (= (and b!809548 (not c!88493)) b!809553))

(assert (= (and b!809553 c!88494) b!809549))

(assert (= (and b!809553 (not c!88494)) b!809551))

(declare-fun m!751855 () Bool)

(assert (=> b!809548 m!751855))

(declare-fun m!751857 () Bool)

(assert (=> b!809551 m!751857))

(declare-fun m!751859 () Bool)

(assert (=> d!103847 m!751859))

(assert (=> d!103847 m!751793))

(declare-fun m!751861 () Bool)

(assert (=> d!103847 m!751861))

(declare-fun m!751863 () Bool)

(assert (=> d!103847 m!751863))

(declare-fun m!751865 () Bool)

(assert (=> d!103847 m!751865))

(declare-fun m!751867 () Bool)

(assert (=> d!103847 m!751867))

(assert (=> d!103847 m!751863))

(assert (=> b!809456 d!103847))

(declare-fun d!103859 () Bool)

(assert (=> d!103859 (= (validKeyInArray!0 (select (arr!21068 a!3170) j!153)) (and (not (= (select (arr!21068 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21068 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809457 d!103859))

(declare-fun b!809570 () Bool)

(declare-fun e!448147 () Bool)

(declare-fun call!35427 () Bool)

(assert (=> b!809570 (= e!448147 call!35427)))

(declare-fun b!809571 () Bool)

(assert (=> b!809571 (= e!448147 call!35427)))

(declare-fun b!809572 () Bool)

(declare-fun e!448144 () Bool)

(assert (=> b!809572 (= e!448144 e!448147)))

(declare-fun c!88497 () Bool)

(assert (=> b!809572 (= c!88497 (validKeyInArray!0 (select (arr!21068 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809573 () Bool)

(declare-fun e!448146 () Bool)

(assert (=> b!809573 (= e!448146 e!448144)))

(declare-fun res!553399 () Bool)

(assert (=> b!809573 (=> (not res!553399) (not e!448144))))

(declare-fun e!448145 () Bool)

(assert (=> b!809573 (= res!553399 (not e!448145))))

(declare-fun res!553398 () Bool)

(assert (=> b!809573 (=> (not res!553398) (not e!448145))))

(assert (=> b!809573 (= res!553398 (validKeyInArray!0 (select (arr!21068 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35424 () Bool)

(assert (=> bm!35424 (= call!35427 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88497 (Cons!15080 (select (arr!21068 a!3170) #b00000000000000000000000000000000) Nil!15081) Nil!15081)))))

(declare-fun d!103861 () Bool)

(declare-fun res!553397 () Bool)

(assert (=> d!103861 (=> res!553397 e!448146)))

(assert (=> d!103861 (= res!553397 (bvsge #b00000000000000000000000000000000 (size!21489 a!3170)))))

(assert (=> d!103861 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15081) e!448146)))

(declare-fun b!809574 () Bool)

(declare-fun contains!4132 (List!15084 (_ BitVec 64)) Bool)

(assert (=> b!809574 (= e!448145 (contains!4132 Nil!15081 (select (arr!21068 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103861 (not res!553397)) b!809573))

(assert (= (and b!809573 res!553398) b!809574))

(assert (= (and b!809573 res!553399) b!809572))

(assert (= (and b!809572 c!88497) b!809571))

(assert (= (and b!809572 (not c!88497)) b!809570))

(assert (= (or b!809571 b!809570) bm!35424))

(assert (=> b!809572 m!751821))

(assert (=> b!809572 m!751821))

(declare-fun m!751873 () Bool)

(assert (=> b!809572 m!751873))

(assert (=> b!809573 m!751821))

(assert (=> b!809573 m!751821))

(assert (=> b!809573 m!751873))

(assert (=> bm!35424 m!751821))

(declare-fun m!751875 () Bool)

(assert (=> bm!35424 m!751875))

(assert (=> b!809574 m!751821))

(assert (=> b!809574 m!751821))

(declare-fun m!751877 () Bool)

(assert (=> b!809574 m!751877))

(assert (=> b!809458 d!103861))

(declare-fun d!103867 () Bool)

(assert (=> d!103867 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809459 d!103867))

(declare-fun d!103869 () Bool)

(assert (=> d!103869 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69446 d!103869))

(declare-fun d!103873 () Bool)

(assert (=> d!103873 (= (array_inv!16842 a!3170) (bvsge (size!21489 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69446 d!103873))

(declare-fun b!809640 () Bool)

(declare-fun e!448188 () Bool)

(declare-fun e!448187 () Bool)

(assert (=> b!809640 (= e!448188 e!448187)))

(declare-fun lt!362872 () (_ BitVec 64))

(assert (=> b!809640 (= lt!362872 (select (arr!21068 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27606 0))(
  ( (Unit!27607) )
))
(declare-fun lt!362873 () Unit!27606)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43995 (_ BitVec 64) (_ BitVec 32)) Unit!27606)

(assert (=> b!809640 (= lt!362873 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362872 #b00000000000000000000000000000000))))

(assert (=> b!809640 (arrayContainsKey!0 a!3170 lt!362872 #b00000000000000000000000000000000)))

(declare-fun lt!362871 () Unit!27606)

(assert (=> b!809640 (= lt!362871 lt!362873)))

(declare-fun res!553413 () Bool)

(assert (=> b!809640 (= res!553413 (= (seekEntryOrOpen!0 (select (arr!21068 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8666 #b00000000000000000000000000000000)))))

(assert (=> b!809640 (=> (not res!553413) (not e!448187))))

(declare-fun d!103875 () Bool)

(declare-fun res!553414 () Bool)

(declare-fun e!448189 () Bool)

(assert (=> d!103875 (=> res!553414 e!448189)))

(assert (=> d!103875 (= res!553414 (bvsge #b00000000000000000000000000000000 (size!21489 a!3170)))))

(assert (=> d!103875 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448189)))

(declare-fun b!809641 () Bool)

(assert (=> b!809641 (= e!448189 e!448188)))

(declare-fun c!88524 () Bool)

(assert (=> b!809641 (= c!88524 (validKeyInArray!0 (select (arr!21068 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35430 () Bool)

(declare-fun call!35433 () Bool)

(assert (=> bm!35430 (= call!35433 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!809642 () Bool)

(assert (=> b!809642 (= e!448187 call!35433)))

(declare-fun b!809643 () Bool)

(assert (=> b!809643 (= e!448188 call!35433)))

(assert (= (and d!103875 (not res!553414)) b!809641))

(assert (= (and b!809641 c!88524) b!809640))

(assert (= (and b!809641 (not c!88524)) b!809643))

(assert (= (and b!809640 res!553413) b!809642))

(assert (= (or b!809642 b!809643) bm!35430))

(assert (=> b!809640 m!751821))

(declare-fun m!751939 () Bool)

(assert (=> b!809640 m!751939))

(declare-fun m!751941 () Bool)

(assert (=> b!809640 m!751941))

(assert (=> b!809640 m!751821))

(declare-fun m!751943 () Bool)

(assert (=> b!809640 m!751943))

(assert (=> b!809641 m!751821))

(assert (=> b!809641 m!751821))

(assert (=> b!809641 m!751873))

(declare-fun m!751945 () Bool)

(assert (=> bm!35430 m!751945))

(assert (=> b!809460 d!103875))

(declare-fun b!809662 () Bool)

(declare-fun e!448201 () SeekEntryResult!8666)

(declare-fun e!448200 () SeekEntryResult!8666)

(assert (=> b!809662 (= e!448201 e!448200)))

(declare-fun c!88534 () Bool)

(declare-fun lt!362881 () (_ BitVec 64))

(assert (=> b!809662 (= c!88534 (= lt!362881 lt!362792))))

(declare-fun e!448199 () SeekEntryResult!8666)

(declare-fun b!809663 () Bool)

(assert (=> b!809663 (= e!448199 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362792 lt!362794 mask!3266))))

(declare-fun b!809664 () Bool)

(assert (=> b!809664 (= e!448200 (Found!8666 index!1236))))

(declare-fun b!809665 () Bool)

(declare-fun c!88535 () Bool)

(assert (=> b!809665 (= c!88535 (= lt!362881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809665 (= e!448200 e!448199)))

(declare-fun b!809666 () Bool)

(assert (=> b!809666 (= e!448199 (MissingVacant!8666 vacantAfter!23))))

(declare-fun d!103889 () Bool)

(declare-fun lt!362880 () SeekEntryResult!8666)

(assert (=> d!103889 (and (or (is-Undefined!8666 lt!362880) (not (is-Found!8666 lt!362880)) (and (bvsge (index!37032 lt!362880) #b00000000000000000000000000000000) (bvslt (index!37032 lt!362880) (size!21489 lt!362794)))) (or (is-Undefined!8666 lt!362880) (is-Found!8666 lt!362880) (not (is-MissingVacant!8666 lt!362880)) (not (= (index!37034 lt!362880) vacantAfter!23)) (and (bvsge (index!37034 lt!362880) #b00000000000000000000000000000000) (bvslt (index!37034 lt!362880) (size!21489 lt!362794)))) (or (is-Undefined!8666 lt!362880) (ite (is-Found!8666 lt!362880) (= (select (arr!21068 lt!362794) (index!37032 lt!362880)) lt!362792) (and (is-MissingVacant!8666 lt!362880) (= (index!37034 lt!362880) vacantAfter!23) (= (select (arr!21068 lt!362794) (index!37034 lt!362880)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103889 (= lt!362880 e!448201)))

(declare-fun c!88536 () Bool)

(assert (=> d!103889 (= c!88536 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103889 (= lt!362881 (select (arr!21068 lt!362794) index!1236))))

(assert (=> d!103889 (validMask!0 mask!3266)))

(assert (=> d!103889 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362792 lt!362794 mask!3266) lt!362880)))

(declare-fun b!809667 () Bool)

(assert (=> b!809667 (= e!448201 Undefined!8666)))

(assert (= (and d!103889 c!88536) b!809667))

(assert (= (and d!103889 (not c!88536)) b!809662))

(assert (= (and b!809662 c!88534) b!809664))

(assert (= (and b!809662 (not c!88534)) b!809665))

(assert (= (and b!809665 c!88535) b!809666))

(assert (= (and b!809665 (not c!88535)) b!809663))

(assert (=> b!809663 m!751789))

(assert (=> b!809663 m!751789))

(declare-fun m!751953 () Bool)

(assert (=> b!809663 m!751953))

(declare-fun m!751955 () Bool)

(assert (=> d!103889 m!751955))

(declare-fun m!751957 () Bool)

(assert (=> d!103889 m!751957))

(declare-fun m!751959 () Bool)

(assert (=> d!103889 m!751959))

(assert (=> d!103889 m!751793))

(assert (=> b!809461 d!103889))

(declare-fun b!809668 () Bool)

(declare-fun e!448202 () SeekEntryResult!8666)

(declare-fun e!448204 () SeekEntryResult!8666)

(assert (=> b!809668 (= e!448202 e!448204)))

(declare-fun lt!362884 () (_ BitVec 64))

(declare-fun lt!362883 () SeekEntryResult!8666)

(assert (=> b!809668 (= lt!362884 (select (arr!21068 lt!362794) (index!37033 lt!362883)))))

(declare-fun c!88538 () Bool)

(assert (=> b!809668 (= c!88538 (= lt!362884 lt!362792))))

(declare-fun b!809669 () Bool)

(declare-fun e!448203 () SeekEntryResult!8666)

(assert (=> b!809669 (= e!448203 (MissingZero!8666 (index!37033 lt!362883)))))

(declare-fun b!809670 () Bool)

(assert (=> b!809670 (= e!448204 (Found!8666 (index!37033 lt!362883)))))

(declare-fun b!809671 () Bool)

(assert (=> b!809671 (= e!448203 (seekKeyOrZeroReturnVacant!0 (x!67859 lt!362883) (index!37033 lt!362883) (index!37033 lt!362883) lt!362792 lt!362794 mask!3266))))

(declare-fun b!809672 () Bool)

(assert (=> b!809672 (= e!448202 Undefined!8666)))

(declare-fun b!809673 () Bool)

(declare-fun c!88539 () Bool)

(assert (=> b!809673 (= c!88539 (= lt!362884 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809673 (= e!448204 e!448203)))

(declare-fun d!103897 () Bool)

(declare-fun lt!362882 () SeekEntryResult!8666)

(assert (=> d!103897 (and (or (is-Undefined!8666 lt!362882) (not (is-Found!8666 lt!362882)) (and (bvsge (index!37032 lt!362882) #b00000000000000000000000000000000) (bvslt (index!37032 lt!362882) (size!21489 lt!362794)))) (or (is-Undefined!8666 lt!362882) (is-Found!8666 lt!362882) (not (is-MissingZero!8666 lt!362882)) (and (bvsge (index!37031 lt!362882) #b00000000000000000000000000000000) (bvslt (index!37031 lt!362882) (size!21489 lt!362794)))) (or (is-Undefined!8666 lt!362882) (is-Found!8666 lt!362882) (is-MissingZero!8666 lt!362882) (not (is-MissingVacant!8666 lt!362882)) (and (bvsge (index!37034 lt!362882) #b00000000000000000000000000000000) (bvslt (index!37034 lt!362882) (size!21489 lt!362794)))) (or (is-Undefined!8666 lt!362882) (ite (is-Found!8666 lt!362882) (= (select (arr!21068 lt!362794) (index!37032 lt!362882)) lt!362792) (ite (is-MissingZero!8666 lt!362882) (= (select (arr!21068 lt!362794) (index!37031 lt!362882)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8666 lt!362882) (= (select (arr!21068 lt!362794) (index!37034 lt!362882)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103897 (= lt!362882 e!448202)))

(declare-fun c!88537 () Bool)

(assert (=> d!103897 (= c!88537 (and (is-Intermediate!8666 lt!362883) (undefined!9478 lt!362883)))))

(assert (=> d!103897 (= lt!362883 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362792 mask!3266) lt!362792 lt!362794 mask!3266))))

(assert (=> d!103897 (validMask!0 mask!3266)))

(assert (=> d!103897 (= (seekEntryOrOpen!0 lt!362792 lt!362794 mask!3266) lt!362882)))

(assert (= (and d!103897 c!88537) b!809672))

(assert (= (and d!103897 (not c!88537)) b!809668))

(assert (= (and b!809668 c!88538) b!809670))

(assert (= (and b!809668 (not c!88538)) b!809673))

(assert (= (and b!809673 c!88539) b!809669))

(assert (= (and b!809673 (not c!88539)) b!809671))

(declare-fun m!751961 () Bool)

(assert (=> b!809668 m!751961))

(declare-fun m!751963 () Bool)

(assert (=> b!809671 m!751963))

(declare-fun m!751965 () Bool)

(assert (=> d!103897 m!751965))

(assert (=> d!103897 m!751793))

(declare-fun m!751967 () Bool)

(assert (=> d!103897 m!751967))

(declare-fun m!751969 () Bool)

(assert (=> d!103897 m!751969))

(declare-fun m!751971 () Bool)

(assert (=> d!103897 m!751971))

(declare-fun m!751973 () Bool)

(assert (=> d!103897 m!751973))

(assert (=> d!103897 m!751969))

(assert (=> b!809461 d!103897))

(declare-fun b!809674 () Bool)

(declare-fun e!448207 () SeekEntryResult!8666)

(declare-fun e!448206 () SeekEntryResult!8666)

(assert (=> b!809674 (= e!448207 e!448206)))

(declare-fun lt!362886 () (_ BitVec 64))

(declare-fun c!88540 () Bool)

(assert (=> b!809674 (= c!88540 (= lt!362886 (select (arr!21068 a!3170) j!153)))))

(declare-fun b!809675 () Bool)

(declare-fun e!448205 () SeekEntryResult!8666)

(assert (=> b!809675 (= e!448205 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21068 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809676 () Bool)

(assert (=> b!809676 (= e!448206 (Found!8666 index!1236))))

(declare-fun b!809677 () Bool)

(declare-fun c!88541 () Bool)

(assert (=> b!809677 (= c!88541 (= lt!362886 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809677 (= e!448206 e!448205)))

(declare-fun b!809678 () Bool)

(assert (=> b!809678 (= e!448205 (MissingVacant!8666 vacantBefore!23))))

(declare-fun d!103899 () Bool)

(declare-fun lt!362885 () SeekEntryResult!8666)

(assert (=> d!103899 (and (or (is-Undefined!8666 lt!362885) (not (is-Found!8666 lt!362885)) (and (bvsge (index!37032 lt!362885) #b00000000000000000000000000000000) (bvslt (index!37032 lt!362885) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362885) (is-Found!8666 lt!362885) (not (is-MissingVacant!8666 lt!362885)) (not (= (index!37034 lt!362885) vacantBefore!23)) (and (bvsge (index!37034 lt!362885) #b00000000000000000000000000000000) (bvslt (index!37034 lt!362885) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362885) (ite (is-Found!8666 lt!362885) (= (select (arr!21068 a!3170) (index!37032 lt!362885)) (select (arr!21068 a!3170) j!153)) (and (is-MissingVacant!8666 lt!362885) (= (index!37034 lt!362885) vacantBefore!23) (= (select (arr!21068 a!3170) (index!37034 lt!362885)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103899 (= lt!362885 e!448207)))

(declare-fun c!88542 () Bool)

(assert (=> d!103899 (= c!88542 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103899 (= lt!362886 (select (arr!21068 a!3170) index!1236))))

(assert (=> d!103899 (validMask!0 mask!3266)))

(assert (=> d!103899 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21068 a!3170) j!153) a!3170 mask!3266) lt!362885)))

(declare-fun b!809679 () Bool)

(assert (=> b!809679 (= e!448207 Undefined!8666)))

(assert (= (and d!103899 c!88542) b!809679))

(assert (= (and d!103899 (not c!88542)) b!809674))

(assert (= (and b!809674 c!88540) b!809676))

(assert (= (and b!809674 (not c!88540)) b!809677))

(assert (= (and b!809677 c!88541) b!809678))

(assert (= (and b!809677 (not c!88541)) b!809675))

(assert (=> b!809675 m!751789))

(assert (=> b!809675 m!751789))

(assert (=> b!809675 m!751773))

(declare-fun m!751975 () Bool)

(assert (=> b!809675 m!751975))

(declare-fun m!751977 () Bool)

(assert (=> d!103899 m!751977))

(declare-fun m!751979 () Bool)

(assert (=> d!103899 m!751979))

(assert (=> d!103899 m!751777))

(assert (=> d!103899 m!751793))

(assert (=> b!809452 d!103899))

(declare-fun b!809680 () Bool)

(declare-fun e!448208 () SeekEntryResult!8666)

(declare-fun e!448210 () SeekEntryResult!8666)

(assert (=> b!809680 (= e!448208 e!448210)))

(declare-fun lt!362889 () (_ BitVec 64))

(declare-fun lt!362888 () SeekEntryResult!8666)

(assert (=> b!809680 (= lt!362889 (select (arr!21068 a!3170) (index!37033 lt!362888)))))

(declare-fun c!88544 () Bool)

(assert (=> b!809680 (= c!88544 (= lt!362889 (select (arr!21068 a!3170) j!153)))))

(declare-fun b!809681 () Bool)

(declare-fun e!448209 () SeekEntryResult!8666)

(assert (=> b!809681 (= e!448209 (MissingZero!8666 (index!37033 lt!362888)))))

(declare-fun b!809682 () Bool)

(assert (=> b!809682 (= e!448210 (Found!8666 (index!37033 lt!362888)))))

(declare-fun b!809683 () Bool)

(assert (=> b!809683 (= e!448209 (seekKeyOrZeroReturnVacant!0 (x!67859 lt!362888) (index!37033 lt!362888) (index!37033 lt!362888) (select (arr!21068 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809684 () Bool)

(assert (=> b!809684 (= e!448208 Undefined!8666)))

(declare-fun b!809685 () Bool)

(declare-fun c!88545 () Bool)

(assert (=> b!809685 (= c!88545 (= lt!362889 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809685 (= e!448210 e!448209)))

(declare-fun d!103901 () Bool)

(declare-fun lt!362887 () SeekEntryResult!8666)

(assert (=> d!103901 (and (or (is-Undefined!8666 lt!362887) (not (is-Found!8666 lt!362887)) (and (bvsge (index!37032 lt!362887) #b00000000000000000000000000000000) (bvslt (index!37032 lt!362887) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362887) (is-Found!8666 lt!362887) (not (is-MissingZero!8666 lt!362887)) (and (bvsge (index!37031 lt!362887) #b00000000000000000000000000000000) (bvslt (index!37031 lt!362887) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362887) (is-Found!8666 lt!362887) (is-MissingZero!8666 lt!362887) (not (is-MissingVacant!8666 lt!362887)) (and (bvsge (index!37034 lt!362887) #b00000000000000000000000000000000) (bvslt (index!37034 lt!362887) (size!21489 a!3170)))) (or (is-Undefined!8666 lt!362887) (ite (is-Found!8666 lt!362887) (= (select (arr!21068 a!3170) (index!37032 lt!362887)) (select (arr!21068 a!3170) j!153)) (ite (is-MissingZero!8666 lt!362887) (= (select (arr!21068 a!3170) (index!37031 lt!362887)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8666 lt!362887) (= (select (arr!21068 a!3170) (index!37034 lt!362887)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103901 (= lt!362887 e!448208)))

(declare-fun c!88543 () Bool)

(assert (=> d!103901 (= c!88543 (and (is-Intermediate!8666 lt!362888) (undefined!9478 lt!362888)))))

(assert (=> d!103901 (= lt!362888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21068 a!3170) j!153) mask!3266) (select (arr!21068 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103901 (validMask!0 mask!3266)))

(assert (=> d!103901 (= (seekEntryOrOpen!0 (select (arr!21068 a!3170) j!153) a!3170 mask!3266) lt!362887)))

(assert (= (and d!103901 c!88543) b!809684))

(assert (= (and d!103901 (not c!88543)) b!809680))

(assert (= (and b!809680 c!88544) b!809682))

(assert (= (and b!809680 (not c!88544)) b!809685))

(assert (= (and b!809685 c!88545) b!809681))

(assert (= (and b!809685 (not c!88545)) b!809683))

(declare-fun m!751981 () Bool)

(assert (=> b!809680 m!751981))

(assert (=> b!809683 m!751773))

(declare-fun m!751983 () Bool)

(assert (=> b!809683 m!751983))

(declare-fun m!751985 () Bool)

(assert (=> d!103901 m!751985))

(assert (=> d!103901 m!751793))

(declare-fun m!751987 () Bool)

(assert (=> d!103901 m!751987))

(declare-fun m!751989 () Bool)

(assert (=> d!103901 m!751989))

(assert (=> d!103901 m!751773))

(declare-fun m!751991 () Bool)

(assert (=> d!103901 m!751991))

(declare-fun m!751993 () Bool)

(assert (=> d!103901 m!751993))

(assert (=> d!103901 m!751773))

(assert (=> d!103901 m!751989))

(assert (=> b!809452 d!103901))

(declare-fun b!809686 () Bool)

(declare-fun e!448213 () SeekEntryResult!8666)

(declare-fun e!448212 () SeekEntryResult!8666)

(assert (=> b!809686 (= e!448213 e!448212)))

(declare-fun c!88546 () Bool)

(declare-fun lt!362891 () (_ BitVec 64))

(assert (=> b!809686 (= c!88546 (= lt!362891 lt!362792))))

(declare-fun e!448211 () SeekEntryResult!8666)

(declare-fun b!809687 () Bool)

(assert (=> b!809687 (= e!448211 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!362795 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!362792 lt!362794 mask!3266))))

(declare-fun b!809688 () Bool)

(assert (=> b!809688 (= e!448212 (Found!8666 lt!362795))))

(declare-fun b!809689 () Bool)

(declare-fun c!88547 () Bool)

(assert (=> b!809689 (= c!88547 (= lt!362891 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809689 (= e!448212 e!448211)))

(declare-fun b!809690 () Bool)

(assert (=> b!809690 (= e!448211 (MissingVacant!8666 vacantAfter!23))))

(declare-fun d!103903 () Bool)

(declare-fun lt!362890 () SeekEntryResult!8666)

(assert (=> d!103903 (and (or (is-Undefined!8666 lt!362890) (not (is-Found!8666 lt!362890)) (and (bvsge (index!37032 lt!362890) #b00000000000000000000000000000000) (bvslt (index!37032 lt!362890) (size!21489 lt!362794)))) (or (is-Undefined!8666 lt!362890) (is-Found!8666 lt!362890) (not (is-MissingVacant!8666 lt!362890)) (not (= (index!37034 lt!362890) vacantAfter!23)) (and (bvsge (index!37034 lt!362890) #b00000000000000000000000000000000) (bvslt (index!37034 lt!362890) (size!21489 lt!362794)))) (or (is-Undefined!8666 lt!362890) (ite (is-Found!8666 lt!362890) (= (select (arr!21068 lt!362794) (index!37032 lt!362890)) lt!362792) (and (is-MissingVacant!8666 lt!362890) (= (index!37034 lt!362890) vacantAfter!23) (= (select (arr!21068 lt!362794) (index!37034 lt!362890)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103903 (= lt!362890 e!448213)))

(declare-fun c!88548 () Bool)

(assert (=> d!103903 (= c!88548 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!103903 (= lt!362891 (select (arr!21068 lt!362794) lt!362795))))

(assert (=> d!103903 (validMask!0 mask!3266)))

(assert (=> d!103903 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362795 vacantAfter!23 lt!362792 lt!362794 mask!3266) lt!362890)))

(declare-fun b!809691 () Bool)

(assert (=> b!809691 (= e!448213 Undefined!8666)))

(assert (= (and d!103903 c!88548) b!809691))

(assert (= (and d!103903 (not c!88548)) b!809686))

(assert (= (and b!809686 c!88546) b!809688))

(assert (= (and b!809686 (not c!88546)) b!809689))

(assert (= (and b!809689 c!88547) b!809690))

(assert (= (and b!809689 (not c!88547)) b!809687))

(declare-fun m!751995 () Bool)

(assert (=> b!809687 m!751995))

(assert (=> b!809687 m!751995))

(declare-fun m!751997 () Bool)

(assert (=> b!809687 m!751997))

(declare-fun m!751999 () Bool)

(assert (=> d!103903 m!751999))

(declare-fun m!752001 () Bool)

(assert (=> d!103903 m!752001))

(declare-fun m!752003 () Bool)

(assert (=> d!103903 m!752003))

(assert (=> d!103903 m!751793))

(assert (=> b!809453 d!103903))

(push 1)

(assert (not b!809687))

(assert (not d!103889))

(assert (not b!809499))

(assert (not d!103841))

(assert (not d!103847))

(assert (not b!809675))

(assert (not b!809641))

(assert (not b!809671))

(assert (not bm!35424))

(assert (not d!103897))

(assert (not b!809683))

(assert (not b!809574))

(assert (not d!103901))

(assert (not d!103899))

(assert (not b!809663))

(assert (not bm!35430))

(assert (not d!103903))

(assert (not b!809551))

(assert (not b!809572))

(assert (not b!809640))

(assert (not b!809573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

