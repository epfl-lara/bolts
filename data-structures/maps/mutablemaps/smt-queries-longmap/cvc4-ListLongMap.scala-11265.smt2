; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131420 () Bool)

(assert start!131420)

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13502 0))(
  ( (MissingZero!13502 (index!56402 (_ BitVec 32))) (Found!13502 (index!56403 (_ BitVec 32))) (Intermediate!13502 (undefined!14314 Bool) (index!56404 (_ BitVec 32)) (x!138136 (_ BitVec 32))) (Undefined!13502) (MissingVacant!13502 (index!56405 (_ BitVec 32))) )
))
(declare-fun lt!665341 () SeekEntryResult!13502)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun lt!665344 () (_ BitVec 64))

(declare-fun b!1540438 () Bool)

(declare-datatypes ((array!102295 0))(
  ( (array!102296 (arr!49353 (Array (_ BitVec 32) (_ BitVec 64))) (size!49904 (_ BitVec 32))) )
))
(declare-fun lt!665343 () array!102295)

(declare-fun e!856753 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102295 (_ BitVec 32)) SeekEntryResult!13502)

(assert (=> b!1540438 (= e!856753 (not (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 lt!665344 lt!665343 mask!2480) lt!665341)))))

(declare-fun lt!665347 () SeekEntryResult!13502)

(declare-fun lt!665346 () (_ BitVec 32))

(assert (=> b!1540438 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 lt!665344 lt!665343 mask!2480) lt!665347)))

(declare-fun a!2792 () array!102295)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1540438 (= lt!665344 (select (store (arr!49353 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))

(assert (=> b!1540438 (= lt!665343 (array!102296 (store (arr!49353 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49904 a!2792)))))

(declare-datatypes ((Unit!51396 0))(
  ( (Unit!51397) )
))
(declare-fun lt!665345 () Unit!51396)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51396)

(assert (=> b!1540438 (= lt!665345 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 mask!2480))))

(declare-fun b!1540439 () Bool)

(declare-fun e!856752 () Bool)

(declare-fun e!856754 () Bool)

(assert (=> b!1540439 (= e!856752 e!856754)))

(declare-fun res!1057266 () Bool)

(assert (=> b!1540439 (=> (not res!1057266) (not e!856754))))

(declare-fun lt!665342 () SeekEntryResult!13502)

(assert (=> b!1540439 (= res!1057266 (and (= lt!665341 lt!665342) (not (= (select (arr!49353 a!2792) index!463) (select (arr!49353 a!2792) j!64)))))))

(assert (=> b!1540439 (= lt!665342 (Found!13502 j!64))))

(assert (=> b!1540439 (= lt!665341 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49353 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540440 () Bool)

(declare-fun res!1057272 () Bool)

(assert (=> b!1540440 (=> (not res!1057272) (not e!856752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540440 (= res!1057272 (validKeyInArray!0 (select (arr!49353 a!2792) j!64)))))

(declare-fun b!1540441 () Bool)

(declare-fun res!1057268 () Bool)

(assert (=> b!1540441 (=> (not res!1057268) (not e!856752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102295 (_ BitVec 32)) Bool)

(assert (=> b!1540441 (= res!1057268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540443 () Bool)

(declare-fun res!1057271 () Bool)

(assert (=> b!1540443 (=> (not res!1057271) (not e!856752))))

(assert (=> b!1540443 (= res!1057271 (and (= (size!49904 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49904 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49904 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540444 () Bool)

(declare-fun res!1057270 () Bool)

(assert (=> b!1540444 (=> (not res!1057270) (not e!856752))))

(declare-datatypes ((List!36007 0))(
  ( (Nil!36004) (Cons!36003 (h!37449 (_ BitVec 64)) (t!50708 List!36007)) )
))
(declare-fun arrayNoDuplicates!0 (array!102295 (_ BitVec 32) List!36007) Bool)

(assert (=> b!1540444 (= res!1057270 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!36004))))

(declare-fun b!1540445 () Bool)

(declare-fun e!856750 () Bool)

(assert (=> b!1540445 (= e!856750 e!856753)))

(declare-fun res!1057273 () Bool)

(assert (=> b!1540445 (=> (not res!1057273) (not e!856753))))

(assert (=> b!1540445 (= res!1057273 (= lt!665347 lt!665342))))

(assert (=> b!1540445 (= lt!665347 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 (select (arr!49353 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1057274 () Bool)

(assert (=> start!131420 (=> (not res!1057274) (not e!856752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131420 (= res!1057274 (validMask!0 mask!2480))))

(assert (=> start!131420 e!856752))

(assert (=> start!131420 true))

(declare-fun array_inv!38298 (array!102295) Bool)

(assert (=> start!131420 (array_inv!38298 a!2792)))

(declare-fun b!1540442 () Bool)

(declare-fun res!1057267 () Bool)

(assert (=> b!1540442 (=> (not res!1057267) (not e!856752))))

(assert (=> b!1540442 (= res!1057267 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49904 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49904 a!2792)) (= (select (arr!49353 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540446 () Bool)

(assert (=> b!1540446 (= e!856754 e!856750)))

(declare-fun res!1057269 () Bool)

(assert (=> b!1540446 (=> (not res!1057269) (not e!856750))))

(assert (=> b!1540446 (= res!1057269 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665346 #b00000000000000000000000000000000) (bvslt lt!665346 (size!49904 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540446 (= lt!665346 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540447 () Bool)

(declare-fun res!1057275 () Bool)

(assert (=> b!1540447 (=> (not res!1057275) (not e!856752))))

(assert (=> b!1540447 (= res!1057275 (validKeyInArray!0 (select (arr!49353 a!2792) i!951)))))

(assert (= (and start!131420 res!1057274) b!1540443))

(assert (= (and b!1540443 res!1057271) b!1540447))

(assert (= (and b!1540447 res!1057275) b!1540440))

(assert (= (and b!1540440 res!1057272) b!1540441))

(assert (= (and b!1540441 res!1057268) b!1540444))

(assert (= (and b!1540444 res!1057270) b!1540442))

(assert (= (and b!1540442 res!1057267) b!1540439))

(assert (= (and b!1540439 res!1057266) b!1540446))

(assert (= (and b!1540446 res!1057269) b!1540445))

(assert (= (and b!1540445 res!1057273) b!1540438))

(declare-fun m!1422615 () Bool)

(assert (=> start!131420 m!1422615))

(declare-fun m!1422617 () Bool)

(assert (=> start!131420 m!1422617))

(declare-fun m!1422619 () Bool)

(assert (=> b!1540442 m!1422619))

(declare-fun m!1422621 () Bool)

(assert (=> b!1540447 m!1422621))

(assert (=> b!1540447 m!1422621))

(declare-fun m!1422623 () Bool)

(assert (=> b!1540447 m!1422623))

(declare-fun m!1422625 () Bool)

(assert (=> b!1540439 m!1422625))

(declare-fun m!1422627 () Bool)

(assert (=> b!1540439 m!1422627))

(assert (=> b!1540439 m!1422627))

(declare-fun m!1422629 () Bool)

(assert (=> b!1540439 m!1422629))

(declare-fun m!1422631 () Bool)

(assert (=> b!1540441 m!1422631))

(assert (=> b!1540440 m!1422627))

(assert (=> b!1540440 m!1422627))

(declare-fun m!1422633 () Bool)

(assert (=> b!1540440 m!1422633))

(declare-fun m!1422635 () Bool)

(assert (=> b!1540438 m!1422635))

(declare-fun m!1422637 () Bool)

(assert (=> b!1540438 m!1422637))

(declare-fun m!1422639 () Bool)

(assert (=> b!1540438 m!1422639))

(declare-fun m!1422641 () Bool)

(assert (=> b!1540438 m!1422641))

(declare-fun m!1422643 () Bool)

(assert (=> b!1540438 m!1422643))

(assert (=> b!1540445 m!1422627))

(assert (=> b!1540445 m!1422627))

(declare-fun m!1422645 () Bool)

(assert (=> b!1540445 m!1422645))

(declare-fun m!1422647 () Bool)

(assert (=> b!1540446 m!1422647))

(declare-fun m!1422649 () Bool)

(assert (=> b!1540444 m!1422649))

(push 1)

(assert (not b!1540438))

(assert (not b!1540440))

(assert (not start!131420))

(assert (not b!1540441))

(assert (not b!1540439))

(assert (not b!1540447))

(assert (not b!1540446))

(assert (not b!1540444))

(assert (not b!1540445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1540514 () Bool)

(declare-fun e!856792 () SeekEntryResult!13502)

(assert (=> b!1540514 (= e!856792 Undefined!13502)))

(declare-fun b!1540515 () Bool)

(declare-fun e!856791 () SeekEntryResult!13502)

(assert (=> b!1540515 (= e!856791 (Found!13502 index!463))))

(declare-fun b!1540516 () Bool)

(declare-fun c!141177 () Bool)

(declare-fun lt!665378 () (_ BitVec 64))

(assert (=> b!1540516 (= c!141177 (= lt!665378 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!856793 () SeekEntryResult!13502)

(assert (=> b!1540516 (= e!856791 e!856793)))

(declare-fun b!1540517 () Bool)

(assert (=> b!1540517 (= e!856793 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 lt!665344 lt!665343 mask!2480))))

(declare-fun b!1540518 () Bool)

(assert (=> b!1540518 (= e!856793 (MissingVacant!13502 vacantIndex!5))))

(declare-fun d!160473 () Bool)

(declare-fun lt!665379 () SeekEntryResult!13502)

(assert (=> d!160473 (and (or (is-Undefined!13502 lt!665379) (not (is-Found!13502 lt!665379)) (and (bvsge (index!56403 lt!665379) #b00000000000000000000000000000000) (bvslt (index!56403 lt!665379) (size!49904 lt!665343)))) (or (is-Undefined!13502 lt!665379) (is-Found!13502 lt!665379) (not (is-MissingVacant!13502 lt!665379)) (not (= (index!56405 lt!665379) vacantIndex!5)) (and (bvsge (index!56405 lt!665379) #b00000000000000000000000000000000) (bvslt (index!56405 lt!665379) (size!49904 lt!665343)))) (or (is-Undefined!13502 lt!665379) (ite (is-Found!13502 lt!665379) (= (select (arr!49353 lt!665343) (index!56403 lt!665379)) lt!665344) (and (is-MissingVacant!13502 lt!665379) (= (index!56405 lt!665379) vacantIndex!5) (= (select (arr!49353 lt!665343) (index!56405 lt!665379)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160473 (= lt!665379 e!856792)))

(declare-fun c!141178 () Bool)

(assert (=> d!160473 (= c!141178 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160473 (= lt!665378 (select (arr!49353 lt!665343) index!463))))

(assert (=> d!160473 (validMask!0 mask!2480)))

(assert (=> d!160473 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 lt!665344 lt!665343 mask!2480) lt!665379)))

(declare-fun b!1540519 () Bool)

(assert (=> b!1540519 (= e!856792 e!856791)))

(declare-fun c!141179 () Bool)

(assert (=> b!1540519 (= c!141179 (= lt!665378 lt!665344))))

(assert (= (and d!160473 c!141178) b!1540514))

(assert (= (and d!160473 (not c!141178)) b!1540519))

(assert (= (and b!1540519 c!141179) b!1540515))

(assert (= (and b!1540519 (not c!141179)) b!1540516))

(assert (= (and b!1540516 c!141177) b!1540518))

(assert (= (and b!1540516 (not c!141177)) b!1540517))

(assert (=> b!1540517 m!1422647))

(assert (=> b!1540517 m!1422647))

(declare-fun m!1422689 () Bool)

(assert (=> b!1540517 m!1422689))

(declare-fun m!1422691 () Bool)

(assert (=> d!160473 m!1422691))

(declare-fun m!1422693 () Bool)

(assert (=> d!160473 m!1422693))

(declare-fun m!1422695 () Bool)

(assert (=> d!160473 m!1422695))

(assert (=> d!160473 m!1422615))

(assert (=> b!1540438 d!160473))

(declare-fun b!1540520 () Bool)

(declare-fun e!856795 () SeekEntryResult!13502)

(assert (=> b!1540520 (= e!856795 Undefined!13502)))

(declare-fun b!1540521 () Bool)

(declare-fun e!856794 () SeekEntryResult!13502)

(assert (=> b!1540521 (= e!856794 (Found!13502 lt!665346))))

(declare-fun b!1540522 () Bool)

(declare-fun c!141180 () Bool)

(declare-fun lt!665380 () (_ BitVec 64))

(assert (=> b!1540522 (= c!141180 (= lt!665380 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!856796 () SeekEntryResult!13502)

(assert (=> b!1540522 (= e!856794 e!856796)))

(declare-fun b!1540523 () Bool)

(assert (=> b!1540523 (= e!856796 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510 #b00000000000000000000000000000001) (nextIndex!0 lt!665346 (bvadd #b00000000000000000000000000000001 x!510) mask!2480) vacantIndex!5 lt!665344 lt!665343 mask!2480))))

(declare-fun b!1540524 () Bool)

(assert (=> b!1540524 (= e!856796 (MissingVacant!13502 vacantIndex!5))))

(declare-fun d!160485 () Bool)

(declare-fun lt!665381 () SeekEntryResult!13502)

(assert (=> d!160485 (and (or (is-Undefined!13502 lt!665381) (not (is-Found!13502 lt!665381)) (and (bvsge (index!56403 lt!665381) #b00000000000000000000000000000000) (bvslt (index!56403 lt!665381) (size!49904 lt!665343)))) (or (is-Undefined!13502 lt!665381) (is-Found!13502 lt!665381) (not (is-MissingVacant!13502 lt!665381)) (not (= (index!56405 lt!665381) vacantIndex!5)) (and (bvsge (index!56405 lt!665381) #b00000000000000000000000000000000) (bvslt (index!56405 lt!665381) (size!49904 lt!665343)))) (or (is-Undefined!13502 lt!665381) (ite (is-Found!13502 lt!665381) (= (select (arr!49353 lt!665343) (index!56403 lt!665381)) lt!665344) (and (is-MissingVacant!13502 lt!665381) (= (index!56405 lt!665381) vacantIndex!5) (= (select (arr!49353 lt!665343) (index!56405 lt!665381)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160485 (= lt!665381 e!856795)))

(declare-fun c!141181 () Bool)

(assert (=> d!160485 (= c!141181 (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110))))

(assert (=> d!160485 (= lt!665380 (select (arr!49353 lt!665343) lt!665346))))

(assert (=> d!160485 (validMask!0 mask!2480)))

(assert (=> d!160485 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 lt!665344 lt!665343 mask!2480) lt!665381)))

(declare-fun b!1540525 () Bool)

(assert (=> b!1540525 (= e!856795 e!856794)))

(declare-fun c!141182 () Bool)

(assert (=> b!1540525 (= c!141182 (= lt!665380 lt!665344))))

(assert (= (and d!160485 c!141181) b!1540520))

(assert (= (and d!160485 (not c!141181)) b!1540525))

(assert (= (and b!1540525 c!141182) b!1540521))

(assert (= (and b!1540525 (not c!141182)) b!1540522))

(assert (= (and b!1540522 c!141180) b!1540524))

(assert (= (and b!1540522 (not c!141180)) b!1540523))

(declare-fun m!1422697 () Bool)

(assert (=> b!1540523 m!1422697))

(assert (=> b!1540523 m!1422697))

(declare-fun m!1422699 () Bool)

(assert (=> b!1540523 m!1422699))

(declare-fun m!1422701 () Bool)

(assert (=> d!160485 m!1422701))

(declare-fun m!1422703 () Bool)

(assert (=> d!160485 m!1422703))

(declare-fun m!1422705 () Bool)

(assert (=> d!160485 m!1422705))

(assert (=> d!160485 m!1422615))

(assert (=> b!1540438 d!160485))

(declare-fun d!160487 () Bool)

(declare-fun e!856829 () Bool)

(assert (=> d!160487 e!856829))

(declare-fun res!1057302 () Bool)

(assert (=> d!160487 (=> (not res!1057302) (not e!856829))))

(assert (=> d!160487 (= res!1057302 (and (or (bvslt i!951 #b00000000000000000000000000000000) (bvsge i!951 (size!49904 a!2792)) (and (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49904 a!2792)))) (or (bvslt i!951 #b00000000000000000000000000000000) (bvsge i!951 (size!49904 a!2792)) (and (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49904 a!2792)))) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49904 a!2792))))))

(declare-fun lt!665403 () Unit!51396)

(declare-fun choose!81 (array!102295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51396)

(assert (=> d!160487 (= lt!665403 (choose!81 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 mask!2480))))

(assert (=> d!160487 (validMask!0 mask!2480)))

(assert (=> d!160487 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 mask!2480) lt!665403)))

(declare-fun b!1540570 () Bool)

(assert (=> b!1540570 (= e!856829 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 (select (store (arr!49353 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102296 (store (arr!49353 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49904 a!2792)) mask!2480) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665346 vacantIndex!5 (select (arr!49353 a!2792) j!64) a!2792 mask!2480)))))

(assert (= (and d!160487 res!1057302) b!1540570))

(declare-fun m!1422745 () Bool)

(assert (=> d!160487 m!1422745))

(assert (=> d!160487 m!1422615))

(assert (=> b!1540570 m!1422639))

(assert (=> b!1540570 m!1422635))

(declare-fun m!1422751 () Bool)

(assert (=> b!1540570 m!1422751))

(assert (=> b!1540570 m!1422627))

(assert (=> b!1540570 m!1422635))

(assert (=> b!1540570 m!1422627))

(assert (=> b!1540570 m!1422645))

(assert (=> b!1540438 d!160487))

(declare-fun b!1540577 () Bool)

(declare-fun e!856834 () SeekEntryResult!13502)

(assert (=> b!1540577 (= e!856834 Undefined!13502)))

(declare-fun b!1540578 () Bool)

(declare-fun e!856833 () SeekEntryResult!13502)

(assert (=> b!1540578 (= e!856833 (Found!13502 index!463))))

(declare-fun b!1540579 () Bool)

(declare-fun c!141198 () Bool)

(declare-fun lt!665406 () (_ BitVec 64))

(assert (=> b!1540579 (= c!141198 (= lt!665406 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!856835 () SeekEntryResult!13502)

(assert (=> b!1540579 (= e!856833 e!856835)))

(declare-fun b!1540580 () Bool)

(assert (=> b!1540580 (= e!856835 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49353 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540581 () Bool)

(assert (=> b!1540581 (= e!856835 (MissingVacant!13502 vacantIndex!5))))

