; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31316 () Bool)

(assert start!31316)

(declare-fun b!313849 () Bool)

(declare-fun res!169905 () Bool)

(declare-fun e!195557 () Bool)

(assert (=> b!313849 (=> (not res!169905) (not e!195557))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313849 (= res!169905 (validKeyInArray!0 k0!2441))))

(declare-fun b!313850 () Bool)

(declare-fun res!169898 () Bool)

(assert (=> b!313850 (=> (not res!169898) (not e!195557))))

(declare-datatypes ((array!16030 0))(
  ( (array!16031 (arr!7589 (Array (_ BitVec 32) (_ BitVec 64))) (size!7941 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16030)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2740 0))(
  ( (MissingZero!2740 (index!13136 (_ BitVec 32))) (Found!2740 (index!13137 (_ BitVec 32))) (Intermediate!2740 (undefined!3552 Bool) (index!13138 (_ BitVec 32)) (x!31327 (_ BitVec 32))) (Undefined!2740) (MissingVacant!2740 (index!13139 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16030 (_ BitVec 32)) SeekEntryResult!2740)

(assert (=> b!313850 (= res!169898 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2740 i!1240)))))

(declare-fun b!313851 () Bool)

(declare-fun e!195558 () Bool)

(assert (=> b!313851 (= e!195557 e!195558)))

(declare-fun res!169901 () Bool)

(assert (=> b!313851 (=> (not res!169901) (not e!195558))))

(declare-fun lt!153749 () SeekEntryResult!2740)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16030 (_ BitVec 32)) SeekEntryResult!2740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313851 (= res!169901 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153749))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!313851 (= lt!153749 (Intermediate!2740 false resIndex!52 resX!52))))

(declare-fun b!313852 () Bool)

(declare-fun res!169903 () Bool)

(assert (=> b!313852 (=> (not res!169903) (not e!195557))))

(declare-fun arrayContainsKey!0 (array!16030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313852 (= res!169903 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!313853 () Bool)

(declare-fun res!169899 () Bool)

(assert (=> b!313853 (=> (not res!169899) (not e!195558))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!313853 (= res!169899 (and (= (select (arr!7589 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7941 a!3293))))))

(declare-fun b!313854 () Bool)

(declare-fun res!169904 () Bool)

(assert (=> b!313854 (=> (not res!169904) (not e!195557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16030 (_ BitVec 32)) Bool)

(assert (=> b!313854 (= res!169904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!313855 () Bool)

(assert (=> b!313855 (= e!195558 (bvslt (bvsub #b01111111111111111111111111111110 x!1427) #b00000000000000000000000000000000))))

(declare-fun b!313856 () Bool)

(declare-fun res!169902 () Bool)

(assert (=> b!313856 (=> (not res!169902) (not e!195558))))

(assert (=> b!313856 (= res!169902 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153749))))

(declare-fun b!313857 () Bool)

(declare-fun res!169897 () Bool)

(assert (=> b!313857 (=> (not res!169897) (not e!195557))))

(assert (=> b!313857 (= res!169897 (and (= (size!7941 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7941 a!3293))))))

(declare-fun res!169900 () Bool)

(assert (=> start!31316 (=> (not res!169900) (not e!195557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31316 (= res!169900 (validMask!0 mask!3709))))

(assert (=> start!31316 e!195557))

(declare-fun array_inv!5543 (array!16030) Bool)

(assert (=> start!31316 (array_inv!5543 a!3293)))

(assert (=> start!31316 true))

(assert (= (and start!31316 res!169900) b!313857))

(assert (= (and b!313857 res!169897) b!313849))

(assert (= (and b!313849 res!169905) b!313852))

(assert (= (and b!313852 res!169903) b!313850))

(assert (= (and b!313850 res!169898) b!313854))

(assert (= (and b!313854 res!169904) b!313851))

(assert (= (and b!313851 res!169901) b!313853))

(assert (= (and b!313853 res!169899) b!313856))

(assert (= (and b!313856 res!169902) b!313855))

(declare-fun m!323577 () Bool)

(assert (=> b!313854 m!323577))

(declare-fun m!323579 () Bool)

(assert (=> b!313850 m!323579))

(declare-fun m!323581 () Bool)

(assert (=> start!31316 m!323581))

(declare-fun m!323583 () Bool)

(assert (=> start!31316 m!323583))

(declare-fun m!323585 () Bool)

(assert (=> b!313852 m!323585))

(declare-fun m!323587 () Bool)

(assert (=> b!313853 m!323587))

(declare-fun m!323589 () Bool)

(assert (=> b!313856 m!323589))

(declare-fun m!323591 () Bool)

(assert (=> b!313851 m!323591))

(assert (=> b!313851 m!323591))

(declare-fun m!323593 () Bool)

(assert (=> b!313851 m!323593))

(declare-fun m!323595 () Bool)

(assert (=> b!313849 m!323595))

(check-sat (not b!313851) (not b!313856) (not b!313849) (not b!313854) (not b!313850) (not start!31316) (not b!313852))
(check-sat)
(get-model)

(declare-fun d!68573 () Bool)

(declare-fun res!169937 () Bool)

(declare-fun e!195573 () Bool)

(assert (=> d!68573 (=> res!169937 e!195573)))

(assert (=> d!68573 (= res!169937 (= (select (arr!7589 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68573 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!195573)))

(declare-fun b!313889 () Bool)

(declare-fun e!195574 () Bool)

(assert (=> b!313889 (= e!195573 e!195574)))

(declare-fun res!169938 () Bool)

(assert (=> b!313889 (=> (not res!169938) (not e!195574))))

(assert (=> b!313889 (= res!169938 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7941 a!3293)))))

(declare-fun b!313890 () Bool)

(assert (=> b!313890 (= e!195574 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68573 (not res!169937)) b!313889))

(assert (= (and b!313889 res!169938) b!313890))

(declare-fun m!323617 () Bool)

(assert (=> d!68573 m!323617))

(declare-fun m!323619 () Bool)

(assert (=> b!313890 m!323619))

(assert (=> b!313852 d!68573))

(declare-fun b!313899 () Bool)

(declare-fun e!195583 () Bool)

(declare-fun e!195581 () Bool)

(assert (=> b!313899 (= e!195583 e!195581)))

(declare-fun lt!153760 () (_ BitVec 64))

(assert (=> b!313899 (= lt!153760 (select (arr!7589 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9676 0))(
  ( (Unit!9677) )
))
(declare-fun lt!153761 () Unit!9676)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16030 (_ BitVec 64) (_ BitVec 32)) Unit!9676)

(assert (=> b!313899 (= lt!153761 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153760 #b00000000000000000000000000000000))))

(assert (=> b!313899 (arrayContainsKey!0 a!3293 lt!153760 #b00000000000000000000000000000000)))

(declare-fun lt!153759 () Unit!9676)

(assert (=> b!313899 (= lt!153759 lt!153761)))

(declare-fun res!169944 () Bool)

(assert (=> b!313899 (= res!169944 (= (seekEntryOrOpen!0 (select (arr!7589 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2740 #b00000000000000000000000000000000)))))

(assert (=> b!313899 (=> (not res!169944) (not e!195581))))

(declare-fun bm!25958 () Bool)

(declare-fun call!25961 () Bool)

(assert (=> bm!25958 (= call!25961 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!313900 () Bool)

(assert (=> b!313900 (= e!195581 call!25961)))

(declare-fun d!68575 () Bool)

(declare-fun res!169943 () Bool)

(declare-fun e!195582 () Bool)

(assert (=> d!68575 (=> res!169943 e!195582)))

(assert (=> d!68575 (= res!169943 (bvsge #b00000000000000000000000000000000 (size!7941 a!3293)))))

(assert (=> d!68575 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195582)))

(declare-fun b!313901 () Bool)

(assert (=> b!313901 (= e!195583 call!25961)))

(declare-fun b!313902 () Bool)

(assert (=> b!313902 (= e!195582 e!195583)))

(declare-fun c!49589 () Bool)

(assert (=> b!313902 (= c!49589 (validKeyInArray!0 (select (arr!7589 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68575 (not res!169943)) b!313902))

(assert (= (and b!313902 c!49589) b!313899))

(assert (= (and b!313902 (not c!49589)) b!313901))

(assert (= (and b!313899 res!169944) b!313900))

(assert (= (or b!313900 b!313901) bm!25958))

(assert (=> b!313899 m!323617))

(declare-fun m!323621 () Bool)

(assert (=> b!313899 m!323621))

(declare-fun m!323623 () Bool)

(assert (=> b!313899 m!323623))

(assert (=> b!313899 m!323617))

(declare-fun m!323625 () Bool)

(assert (=> b!313899 m!323625))

(declare-fun m!323627 () Bool)

(assert (=> bm!25958 m!323627))

(assert (=> b!313902 m!323617))

(assert (=> b!313902 m!323617))

(declare-fun m!323629 () Bool)

(assert (=> b!313902 m!323629))

(assert (=> b!313854 d!68575))

(declare-fun d!68579 () Bool)

(assert (=> d!68579 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313849 d!68579))

(declare-fun d!68581 () Bool)

(assert (=> d!68581 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31316 d!68581))

(declare-fun d!68593 () Bool)

(assert (=> d!68593 (= (array_inv!5543 a!3293) (bvsge (size!7941 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31316 d!68593))

(declare-fun d!68595 () Bool)

(declare-fun lt!153796 () SeekEntryResult!2740)

(get-info :version)

(assert (=> d!68595 (and (or ((_ is Undefined!2740) lt!153796) (not ((_ is Found!2740) lt!153796)) (and (bvsge (index!13137 lt!153796) #b00000000000000000000000000000000) (bvslt (index!13137 lt!153796) (size!7941 a!3293)))) (or ((_ is Undefined!2740) lt!153796) ((_ is Found!2740) lt!153796) (not ((_ is MissingZero!2740) lt!153796)) (and (bvsge (index!13136 lt!153796) #b00000000000000000000000000000000) (bvslt (index!13136 lt!153796) (size!7941 a!3293)))) (or ((_ is Undefined!2740) lt!153796) ((_ is Found!2740) lt!153796) ((_ is MissingZero!2740) lt!153796) (not ((_ is MissingVacant!2740) lt!153796)) (and (bvsge (index!13139 lt!153796) #b00000000000000000000000000000000) (bvslt (index!13139 lt!153796) (size!7941 a!3293)))) (or ((_ is Undefined!2740) lt!153796) (ite ((_ is Found!2740) lt!153796) (= (select (arr!7589 a!3293) (index!13137 lt!153796)) k0!2441) (ite ((_ is MissingZero!2740) lt!153796) (= (select (arr!7589 a!3293) (index!13136 lt!153796)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2740) lt!153796) (= (select (arr!7589 a!3293) (index!13139 lt!153796)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!195637 () SeekEntryResult!2740)

(assert (=> d!68595 (= lt!153796 e!195637)))

(declare-fun c!49619 () Bool)

(declare-fun lt!153797 () SeekEntryResult!2740)

(assert (=> d!68595 (= c!49619 (and ((_ is Intermediate!2740) lt!153797) (undefined!3552 lt!153797)))))

(assert (=> d!68595 (= lt!153797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68595 (validMask!0 mask!3709)))

(assert (=> d!68595 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!153796)))

(declare-fun b!313987 () Bool)

(declare-fun e!195635 () SeekEntryResult!2740)

(assert (=> b!313987 (= e!195637 e!195635)))

(declare-fun lt!153795 () (_ BitVec 64))

(assert (=> b!313987 (= lt!153795 (select (arr!7589 a!3293) (index!13138 lt!153797)))))

(declare-fun c!49617 () Bool)

(assert (=> b!313987 (= c!49617 (= lt!153795 k0!2441))))

(declare-fun e!195636 () SeekEntryResult!2740)

(declare-fun b!313988 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16030 (_ BitVec 32)) SeekEntryResult!2740)

(assert (=> b!313988 (= e!195636 (seekKeyOrZeroReturnVacant!0 (x!31327 lt!153797) (index!13138 lt!153797) (index!13138 lt!153797) k0!2441 a!3293 mask!3709))))

(declare-fun b!313989 () Bool)

(assert (=> b!313989 (= e!195635 (Found!2740 (index!13138 lt!153797)))))

(declare-fun b!313990 () Bool)

(assert (=> b!313990 (= e!195637 Undefined!2740)))

(declare-fun b!313991 () Bool)

(declare-fun c!49618 () Bool)

(assert (=> b!313991 (= c!49618 (= lt!153795 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313991 (= e!195635 e!195636)))

(declare-fun b!313992 () Bool)

(assert (=> b!313992 (= e!195636 (MissingZero!2740 (index!13138 lt!153797)))))

(assert (= (and d!68595 c!49619) b!313990))

(assert (= (and d!68595 (not c!49619)) b!313987))

(assert (= (and b!313987 c!49617) b!313989))

(assert (= (and b!313987 (not c!49617)) b!313991))

(assert (= (and b!313991 c!49618) b!313992))

(assert (= (and b!313991 (not c!49618)) b!313988))

(declare-fun m!323661 () Bool)

(assert (=> d!68595 m!323661))

(declare-fun m!323663 () Bool)

(assert (=> d!68595 m!323663))

(assert (=> d!68595 m!323591))

(declare-fun m!323665 () Bool)

(assert (=> d!68595 m!323665))

(assert (=> d!68595 m!323591))

(assert (=> d!68595 m!323593))

(assert (=> d!68595 m!323581))

(declare-fun m!323667 () Bool)

(assert (=> b!313987 m!323667))

(declare-fun m!323669 () Bool)

(assert (=> b!313988 m!323669))

(assert (=> b!313850 d!68595))

(declare-fun b!314035 () Bool)

(declare-fun e!195666 () SeekEntryResult!2740)

(assert (=> b!314035 (= e!195666 (Intermediate!2740 false index!1781 x!1427))))

(declare-fun b!314036 () Bool)

(declare-fun lt!153812 () SeekEntryResult!2740)

(assert (=> b!314036 (and (bvsge (index!13138 lt!153812) #b00000000000000000000000000000000) (bvslt (index!13138 lt!153812) (size!7941 a!3293)))))

(declare-fun res!169996 () Bool)

(assert (=> b!314036 (= res!169996 (= (select (arr!7589 a!3293) (index!13138 lt!153812)) k0!2441))))

(declare-fun e!195664 () Bool)

(assert (=> b!314036 (=> res!169996 e!195664)))

(declare-fun e!195667 () Bool)

(assert (=> b!314036 (= e!195667 e!195664)))

(declare-fun b!314037 () Bool)

(assert (=> b!314037 (and (bvsge (index!13138 lt!153812) #b00000000000000000000000000000000) (bvslt (index!13138 lt!153812) (size!7941 a!3293)))))

(assert (=> b!314037 (= e!195664 (= (select (arr!7589 a!3293) (index!13138 lt!153812)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314038 () Bool)

(declare-fun e!195665 () Bool)

(assert (=> b!314038 (= e!195665 (bvsge (x!31327 lt!153812) #b01111111111111111111111111111110))))

(declare-fun b!314039 () Bool)

(assert (=> b!314039 (and (bvsge (index!13138 lt!153812) #b00000000000000000000000000000000) (bvslt (index!13138 lt!153812) (size!7941 a!3293)))))

(declare-fun res!169995 () Bool)

(assert (=> b!314039 (= res!169995 (= (select (arr!7589 a!3293) (index!13138 lt!153812)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314039 (=> res!169995 e!195664)))

(declare-fun b!314040 () Bool)

(declare-fun e!195668 () SeekEntryResult!2740)

(assert (=> b!314040 (= e!195668 (Intermediate!2740 true index!1781 x!1427))))

(declare-fun d!68603 () Bool)

(assert (=> d!68603 e!195665))

(declare-fun c!49633 () Bool)

(assert (=> d!68603 (= c!49633 (and ((_ is Intermediate!2740) lt!153812) (undefined!3552 lt!153812)))))

(assert (=> d!68603 (= lt!153812 e!195668)))

(declare-fun c!49634 () Bool)

(assert (=> d!68603 (= c!49634 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153813 () (_ BitVec 64))

(assert (=> d!68603 (= lt!153813 (select (arr!7589 a!3293) index!1781))))

(assert (=> d!68603 (validMask!0 mask!3709)))

(assert (=> d!68603 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153812)))

(declare-fun b!314041 () Bool)

(assert (=> b!314041 (= e!195665 e!195667)))

(declare-fun res!169997 () Bool)

(assert (=> b!314041 (= res!169997 (and ((_ is Intermediate!2740) lt!153812) (not (undefined!3552 lt!153812)) (bvslt (x!31327 lt!153812) #b01111111111111111111111111111110) (bvsge (x!31327 lt!153812) #b00000000000000000000000000000000) (bvsge (x!31327 lt!153812) x!1427)))))

(assert (=> b!314041 (=> (not res!169997) (not e!195667))))

(declare-fun b!314042 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314042 (= e!195666 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!314043 () Bool)

(assert (=> b!314043 (= e!195668 e!195666)))

(declare-fun c!49632 () Bool)

(assert (=> b!314043 (= c!49632 (or (= lt!153813 k0!2441) (= (bvadd lt!153813 lt!153813) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68603 c!49634) b!314040))

(assert (= (and d!68603 (not c!49634)) b!314043))

(assert (= (and b!314043 c!49632) b!314035))

(assert (= (and b!314043 (not c!49632)) b!314042))

(assert (= (and d!68603 c!49633) b!314038))

(assert (= (and d!68603 (not c!49633)) b!314041))

(assert (= (and b!314041 res!169997) b!314036))

(assert (= (and b!314036 (not res!169996)) b!314039))

(assert (= (and b!314039 (not res!169995)) b!314037))

(declare-fun m!323691 () Bool)

(assert (=> b!314039 m!323691))

(declare-fun m!323693 () Bool)

(assert (=> d!68603 m!323693))

(assert (=> d!68603 m!323581))

(declare-fun m!323695 () Bool)

(assert (=> b!314042 m!323695))

(assert (=> b!314042 m!323695))

(declare-fun m!323697 () Bool)

(assert (=> b!314042 m!323697))

(assert (=> b!314037 m!323691))

(assert (=> b!314036 m!323691))

(assert (=> b!313856 d!68603))

(declare-fun b!314044 () Bool)

(declare-fun e!195671 () SeekEntryResult!2740)

(assert (=> b!314044 (= e!195671 (Intermediate!2740 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314045 () Bool)

(declare-fun lt!153814 () SeekEntryResult!2740)

(assert (=> b!314045 (and (bvsge (index!13138 lt!153814) #b00000000000000000000000000000000) (bvslt (index!13138 lt!153814) (size!7941 a!3293)))))

(declare-fun res!169999 () Bool)

(assert (=> b!314045 (= res!169999 (= (select (arr!7589 a!3293) (index!13138 lt!153814)) k0!2441))))

(declare-fun e!195669 () Bool)

(assert (=> b!314045 (=> res!169999 e!195669)))

(declare-fun e!195672 () Bool)

(assert (=> b!314045 (= e!195672 e!195669)))

(declare-fun b!314046 () Bool)

(assert (=> b!314046 (and (bvsge (index!13138 lt!153814) #b00000000000000000000000000000000) (bvslt (index!13138 lt!153814) (size!7941 a!3293)))))

(assert (=> b!314046 (= e!195669 (= (select (arr!7589 a!3293) (index!13138 lt!153814)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314047 () Bool)

(declare-fun e!195670 () Bool)

(assert (=> b!314047 (= e!195670 (bvsge (x!31327 lt!153814) #b01111111111111111111111111111110))))

(declare-fun b!314048 () Bool)

(assert (=> b!314048 (and (bvsge (index!13138 lt!153814) #b00000000000000000000000000000000) (bvslt (index!13138 lt!153814) (size!7941 a!3293)))))

(declare-fun res!169998 () Bool)

(assert (=> b!314048 (= res!169998 (= (select (arr!7589 a!3293) (index!13138 lt!153814)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314048 (=> res!169998 e!195669)))

(declare-fun b!314049 () Bool)

(declare-fun e!195673 () SeekEntryResult!2740)

(assert (=> b!314049 (= e!195673 (Intermediate!2740 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!68621 () Bool)

(assert (=> d!68621 e!195670))

(declare-fun c!49636 () Bool)

(assert (=> d!68621 (= c!49636 (and ((_ is Intermediate!2740) lt!153814) (undefined!3552 lt!153814)))))

(assert (=> d!68621 (= lt!153814 e!195673)))

(declare-fun c!49637 () Bool)

(assert (=> d!68621 (= c!49637 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153815 () (_ BitVec 64))

(assert (=> d!68621 (= lt!153815 (select (arr!7589 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68621 (validMask!0 mask!3709)))

(assert (=> d!68621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153814)))

(declare-fun b!314050 () Bool)

(assert (=> b!314050 (= e!195670 e!195672)))

(declare-fun res!170000 () Bool)

(assert (=> b!314050 (= res!170000 (and ((_ is Intermediate!2740) lt!153814) (not (undefined!3552 lt!153814)) (bvslt (x!31327 lt!153814) #b01111111111111111111111111111110) (bvsge (x!31327 lt!153814) #b00000000000000000000000000000000) (bvsge (x!31327 lt!153814) #b00000000000000000000000000000000)))))

(assert (=> b!314050 (=> (not res!170000) (not e!195672))))

(declare-fun b!314051 () Bool)

(assert (=> b!314051 (= e!195671 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!314052 () Bool)

(assert (=> b!314052 (= e!195673 e!195671)))

(declare-fun c!49635 () Bool)

(assert (=> b!314052 (= c!49635 (or (= lt!153815 k0!2441) (= (bvadd lt!153815 lt!153815) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68621 c!49637) b!314049))

(assert (= (and d!68621 (not c!49637)) b!314052))

(assert (= (and b!314052 c!49635) b!314044))

(assert (= (and b!314052 (not c!49635)) b!314051))

(assert (= (and d!68621 c!49636) b!314047))

(assert (= (and d!68621 (not c!49636)) b!314050))

(assert (= (and b!314050 res!170000) b!314045))

(assert (= (and b!314045 (not res!169999)) b!314048))

(assert (= (and b!314048 (not res!169998)) b!314046))

(declare-fun m!323699 () Bool)

(assert (=> b!314048 m!323699))

(assert (=> d!68621 m!323591))

(declare-fun m!323701 () Bool)

(assert (=> d!68621 m!323701))

(assert (=> d!68621 m!323581))

(assert (=> b!314051 m!323591))

(declare-fun m!323703 () Bool)

(assert (=> b!314051 m!323703))

(assert (=> b!314051 m!323703))

(declare-fun m!323705 () Bool)

(assert (=> b!314051 m!323705))

(assert (=> b!314046 m!323699))

(assert (=> b!314045 m!323699))

(assert (=> b!313851 d!68621))

(declare-fun d!68623 () Bool)

(declare-fun lt!153827 () (_ BitVec 32))

(declare-fun lt!153826 () (_ BitVec 32))

(assert (=> d!68623 (= lt!153827 (bvmul (bvxor lt!153826 (bvlshr lt!153826 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68623 (= lt!153826 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68623 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170001 (let ((h!5380 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31334 (bvmul (bvxor h!5380 (bvlshr h!5380 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31334 (bvlshr x!31334 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170001 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170001 #b00000000000000000000000000000000))))))

(assert (=> d!68623 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!153827 (bvlshr lt!153827 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313851 d!68623))

(check-sat (not b!313902) (not b!314051) (not d!68595) (not d!68603) (not b!313899) (not b!313890) (not b!313988) (not bm!25958) (not b!314042) (not d!68621))
(check-sat)
