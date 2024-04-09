; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136016 () Bool)

(assert start!136016)

(declare-fun b!1575644 () Bool)

(declare-fun res!1076721 () Bool)

(declare-fun e!878843 () Bool)

(assert (=> b!1575644 (=> (not res!1076721) (not e!878843))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-datatypes ((array!105426 0))(
  ( (array!105427 (arr!50843 (Array (_ BitVec 32) (_ BitVec 64))) (size!51394 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105426)

(assert (=> b!1575644 (= res!1076721 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51394 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575646 () Bool)

(declare-fun e!878844 () Bool)

(assert (=> b!1575646 (= e!878843 e!878844)))

(declare-fun res!1076720 () Bool)

(assert (=> b!1575646 (=> (not res!1076720) (not e!878844))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13724 0))(
  ( (MissingZero!13724 (index!57293 (_ BitVec 32))) (Found!13724 (index!57294 (_ BitVec 32))) (Intermediate!13724 (undefined!14536 Bool) (index!57295 (_ BitVec 32)) (x!142265 (_ BitVec 32))) (Undefined!13724) (MissingVacant!13724 (index!57296 (_ BitVec 32))) )
))
(declare-fun lt!675250 () SeekEntryResult!13724)

(get-info :version)

(assert (=> b!1575646 (= res!1076720 (and (not (undefined!14536 lt!675250)) ((_ is Intermediate!13724) lt!675250) (not (= (select (arr!50843 _keys!605) (index!57295 lt!675250)) k0!761)) (not (= (select (arr!50843 _keys!605) (index!57295 lt!675250)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50843 _keys!605) (index!57295 lt!675250)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57295 lt!675250) #b00000000000000000000000000000000) (bvslt (index!57295 lt!675250) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105426 (_ BitVec 32)) SeekEntryResult!13724)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575646 (= lt!675250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1575645 () Bool)

(declare-fun res!1076722 () Bool)

(assert (=> b!1575645 (=> (not res!1076722) (not e!878843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575645 (= res!1076722 (validKeyInArray!0 k0!761))))

(declare-fun res!1076723 () Bool)

(assert (=> start!136016 (=> (not res!1076723) (not e!878843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136016 (= res!1076723 (validMask!0 mask!898))))

(assert (=> start!136016 e!878843))

(assert (=> start!136016 true))

(declare-fun array_inv!39488 (array!105426) Bool)

(assert (=> start!136016 (array_inv!39488 _keys!605)))

(declare-fun b!1575647 () Bool)

(declare-fun lt!675249 () SeekEntryResult!13724)

(assert (=> b!1575647 (= e!878844 (and (not ((_ is Undefined!13724) lt!675249)) ((_ is Found!13724) lt!675249) (or (bvslt (index!57294 lt!675249) #b00000000000000000000000000000000) (bvsge (index!57294 lt!675249) (size!51394 _keys!605)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105426 (_ BitVec 32)) SeekEntryResult!13724)

(assert (=> b!1575647 (= lt!675249 (seekKeyOrZeroReturnVacant!0 (x!142265 lt!675250) (index!57295 lt!675250) (index!57295 lt!675250) k0!761 _keys!605 mask!898))))

(assert (= (and start!136016 res!1076723) b!1575644))

(assert (= (and b!1575644 res!1076721) b!1575645))

(assert (= (and b!1575645 res!1076722) b!1575646))

(assert (= (and b!1575646 res!1076720) b!1575647))

(declare-fun m!1448625 () Bool)

(assert (=> b!1575646 m!1448625))

(declare-fun m!1448627 () Bool)

(assert (=> b!1575646 m!1448627))

(assert (=> b!1575646 m!1448627))

(declare-fun m!1448629 () Bool)

(assert (=> b!1575646 m!1448629))

(declare-fun m!1448631 () Bool)

(assert (=> b!1575645 m!1448631))

(declare-fun m!1448633 () Bool)

(assert (=> start!136016 m!1448633))

(declare-fun m!1448635 () Bool)

(assert (=> start!136016 m!1448635))

(declare-fun m!1448637 () Bool)

(assert (=> b!1575647 m!1448637))

(check-sat (not b!1575647) (not b!1575645) (not start!136016) (not b!1575646))
(check-sat)
(get-model)

(declare-fun b!1575717 () Bool)

(declare-fun e!878885 () SeekEntryResult!13724)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575717 (= e!878885 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142265 lt!675250) #b00000000000000000000000000000001) (nextIndex!0 (index!57295 lt!675250) (x!142265 lt!675250) mask!898) (index!57295 lt!675250) k0!761 _keys!605 mask!898))))

(declare-fun b!1575718 () Bool)

(declare-fun e!878886 () SeekEntryResult!13724)

(assert (=> b!1575718 (= e!878886 Undefined!13724)))

(declare-fun b!1575719 () Bool)

(assert (=> b!1575719 (= e!878885 (MissingVacant!13724 (index!57295 lt!675250)))))

(declare-fun b!1575721 () Bool)

(declare-fun c!145758 () Bool)

(declare-fun lt!675278 () (_ BitVec 64))

(assert (=> b!1575721 (= c!145758 (= lt!675278 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878887 () SeekEntryResult!13724)

(assert (=> b!1575721 (= e!878887 e!878885)))

(declare-fun b!1575722 () Bool)

(assert (=> b!1575722 (= e!878886 e!878887)))

(declare-fun c!145756 () Bool)

(assert (=> b!1575722 (= c!145756 (= lt!675278 k0!761))))

(declare-fun b!1575720 () Bool)

(assert (=> b!1575720 (= e!878887 (Found!13724 (index!57295 lt!675250)))))

(declare-fun lt!675277 () SeekEntryResult!13724)

(declare-fun d!165439 () Bool)

(assert (=> d!165439 (and (or ((_ is Undefined!13724) lt!675277) (not ((_ is Found!13724) lt!675277)) (and (bvsge (index!57294 lt!675277) #b00000000000000000000000000000000) (bvslt (index!57294 lt!675277) (size!51394 _keys!605)))) (or ((_ is Undefined!13724) lt!675277) ((_ is Found!13724) lt!675277) (not ((_ is MissingVacant!13724) lt!675277)) (not (= (index!57296 lt!675277) (index!57295 lt!675250))) (and (bvsge (index!57296 lt!675277) #b00000000000000000000000000000000) (bvslt (index!57296 lt!675277) (size!51394 _keys!605)))) (or ((_ is Undefined!13724) lt!675277) (ite ((_ is Found!13724) lt!675277) (= (select (arr!50843 _keys!605) (index!57294 lt!675277)) k0!761) (and ((_ is MissingVacant!13724) lt!675277) (= (index!57296 lt!675277) (index!57295 lt!675250)) (= (select (arr!50843 _keys!605) (index!57296 lt!675277)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165439 (= lt!675277 e!878886)))

(declare-fun c!145757 () Bool)

(assert (=> d!165439 (= c!145757 (bvsge (x!142265 lt!675250) #b01111111111111111111111111111110))))

(assert (=> d!165439 (= lt!675278 (select (arr!50843 _keys!605) (index!57295 lt!675250)))))

(assert (=> d!165439 (validMask!0 mask!898)))

(assert (=> d!165439 (= (seekKeyOrZeroReturnVacant!0 (x!142265 lt!675250) (index!57295 lt!675250) (index!57295 lt!675250) k0!761 _keys!605 mask!898) lt!675277)))

(assert (= (and d!165439 c!145757) b!1575718))

(assert (= (and d!165439 (not c!145757)) b!1575722))

(assert (= (and b!1575722 c!145756) b!1575720))

(assert (= (and b!1575722 (not c!145756)) b!1575721))

(assert (= (and b!1575721 c!145758) b!1575719))

(assert (= (and b!1575721 (not c!145758)) b!1575717))

(declare-fun m!1448661 () Bool)

(assert (=> b!1575717 m!1448661))

(assert (=> b!1575717 m!1448661))

(declare-fun m!1448663 () Bool)

(assert (=> b!1575717 m!1448663))

(declare-fun m!1448665 () Bool)

(assert (=> d!165439 m!1448665))

(declare-fun m!1448667 () Bool)

(assert (=> d!165439 m!1448667))

(assert (=> d!165439 m!1448625))

(assert (=> d!165439 m!1448633))

(assert (=> b!1575647 d!165439))

(declare-fun d!165457 () Bool)

(assert (=> d!165457 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575645 d!165457))

(declare-fun d!165459 () Bool)

(assert (=> d!165459 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136016 d!165459))

(declare-fun d!165465 () Bool)

(assert (=> d!165465 (= (array_inv!39488 _keys!605) (bvsge (size!51394 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136016 d!165465))

(declare-fun b!1575786 () Bool)

(declare-fun lt!675303 () SeekEntryResult!13724)

(assert (=> b!1575786 (and (bvsge (index!57295 lt!675303) #b00000000000000000000000000000000) (bvslt (index!57295 lt!675303) (size!51394 _keys!605)))))

(declare-fun res!1076763 () Bool)

(assert (=> b!1575786 (= res!1076763 (= (select (arr!50843 _keys!605) (index!57295 lt!675303)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878925 () Bool)

(assert (=> b!1575786 (=> res!1076763 e!878925)))

(declare-fun b!1575787 () Bool)

(declare-fun e!878923 () SeekEntryResult!13724)

(assert (=> b!1575787 (= e!878923 (Intermediate!13724 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165467 () Bool)

(declare-fun e!878924 () Bool)

(assert (=> d!165467 e!878924))

(declare-fun c!145788 () Bool)

(assert (=> d!165467 (= c!145788 (and ((_ is Intermediate!13724) lt!675303) (undefined!14536 lt!675303)))))

(declare-fun e!878922 () SeekEntryResult!13724)

(assert (=> d!165467 (= lt!675303 e!878922)))

(declare-fun c!145787 () Bool)

(assert (=> d!165467 (= c!145787 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675304 () (_ BitVec 64))

(assert (=> d!165467 (= lt!675304 (select (arr!50843 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165467 (validMask!0 mask!898)))

(assert (=> d!165467 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675303)))

(declare-fun b!1575788 () Bool)

(assert (=> b!1575788 (= e!878922 e!878923)))

(declare-fun c!145786 () Bool)

(assert (=> b!1575788 (= c!145786 (or (= lt!675304 k0!761) (= (bvadd lt!675304 lt!675304) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575789 () Bool)

(declare-fun e!878921 () Bool)

(assert (=> b!1575789 (= e!878924 e!878921)))

(declare-fun res!1076764 () Bool)

(assert (=> b!1575789 (= res!1076764 (and ((_ is Intermediate!13724) lt!675303) (not (undefined!14536 lt!675303)) (bvslt (x!142265 lt!675303) #b01111111111111111111111111111110) (bvsge (x!142265 lt!675303) #b00000000000000000000000000000000) (bvsge (x!142265 lt!675303) #b00000000000000000000000000000000)))))

(assert (=> b!1575789 (=> (not res!1076764) (not e!878921))))

(declare-fun b!1575790 () Bool)

(assert (=> b!1575790 (= e!878924 (bvsge (x!142265 lt!675303) #b01111111111111111111111111111110))))

(declare-fun b!1575791 () Bool)

(assert (=> b!1575791 (= e!878923 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1575792 () Bool)

(assert (=> b!1575792 (= e!878922 (Intermediate!13724 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575793 () Bool)

(assert (=> b!1575793 (and (bvsge (index!57295 lt!675303) #b00000000000000000000000000000000) (bvslt (index!57295 lt!675303) (size!51394 _keys!605)))))

(declare-fun res!1076762 () Bool)

(assert (=> b!1575793 (= res!1076762 (= (select (arr!50843 _keys!605) (index!57295 lt!675303)) k0!761))))

(assert (=> b!1575793 (=> res!1076762 e!878925)))

(assert (=> b!1575793 (= e!878921 e!878925)))

(declare-fun b!1575794 () Bool)

(assert (=> b!1575794 (and (bvsge (index!57295 lt!675303) #b00000000000000000000000000000000) (bvslt (index!57295 lt!675303) (size!51394 _keys!605)))))

(assert (=> b!1575794 (= e!878925 (= (select (arr!50843 _keys!605) (index!57295 lt!675303)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!165467 c!145787) b!1575792))

(assert (= (and d!165467 (not c!145787)) b!1575788))

(assert (= (and b!1575788 c!145786) b!1575787))

(assert (= (and b!1575788 (not c!145786)) b!1575791))

(assert (= (and d!165467 c!145788) b!1575790))

(assert (= (and d!165467 (not c!145788)) b!1575789))

(assert (= (and b!1575789 res!1076764) b!1575793))

(assert (= (and b!1575793 (not res!1076762)) b!1575786))

(assert (= (and b!1575786 (not res!1076763)) b!1575794))

(assert (=> d!165467 m!1448627))

(declare-fun m!1448693 () Bool)

(assert (=> d!165467 m!1448693))

(assert (=> d!165467 m!1448633))

(declare-fun m!1448695 () Bool)

(assert (=> b!1575786 m!1448695))

(assert (=> b!1575794 m!1448695))

(assert (=> b!1575791 m!1448627))

(declare-fun m!1448697 () Bool)

(assert (=> b!1575791 m!1448697))

(assert (=> b!1575791 m!1448697))

(declare-fun m!1448699 () Bool)

(assert (=> b!1575791 m!1448699))

(assert (=> b!1575793 m!1448695))

(assert (=> b!1575646 d!165467))

(declare-fun d!165469 () Bool)

(declare-fun lt!675310 () (_ BitVec 32))

(declare-fun lt!675309 () (_ BitVec 32))

(assert (=> d!165469 (= lt!675310 (bvmul (bvxor lt!675309 (bvlshr lt!675309 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165469 (= lt!675309 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165469 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076765 (let ((h!38437 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142275 (bvmul (bvxor h!38437 (bvlshr h!38437 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142275 (bvlshr x!142275 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076765 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076765 #b00000000000000000000000000000000))))))

(assert (=> d!165469 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675310 (bvlshr lt!675310 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575646 d!165469))

(check-sat (not b!1575717) (not d!165467) (not b!1575791) (not d!165439))
(check-sat)
