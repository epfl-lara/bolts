; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136058 () Bool)

(assert start!136058)

(declare-fun b!1575818 () Bool)

(declare-fun e!878941 () Bool)

(declare-datatypes ((SeekEntryResult!13727 0))(
  ( (MissingZero!13727 (index!57305 (_ BitVec 32))) (Found!13727 (index!57306 (_ BitVec 32))) (Intermediate!13727 (undefined!14539 Bool) (index!57307 (_ BitVec 32)) (x!142285 (_ BitVec 32))) (Undefined!13727) (MissingVacant!13727 (index!57308 (_ BitVec 32))) )
))
(declare-fun lt!675321 () SeekEntryResult!13727)

(declare-datatypes ((array!105435 0))(
  ( (array!105436 (arr!50846 (Array (_ BitVec 32) (_ BitVec 64))) (size!51397 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105435)

(get-info :version)

(assert (=> b!1575818 (= e!878941 (and (not ((_ is Undefined!13727) lt!675321)) (not ((_ is Found!13727) lt!675321)) ((_ is MissingZero!13727) lt!675321) (or (bvslt (index!57305 lt!675321) #b00000000000000000000000000000000) (bvsge (index!57305 lt!675321) (size!51397 _keys!605)))))))

(declare-fun lt!675322 () SeekEntryResult!13727)

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105435 (_ BitVec 32)) SeekEntryResult!13727)

(assert (=> b!1575818 (= lt!675321 (seekKeyOrZeroReturnVacant!0 (x!142285 lt!675322) (index!57307 lt!675322) (index!57307 lt!675322) k0!761 _keys!605 mask!898))))

(declare-fun b!1575815 () Bool)

(declare-fun res!1076787 () Bool)

(declare-fun e!878942 () Bool)

(assert (=> b!1575815 (=> (not res!1076787) (not e!878942))))

(assert (=> b!1575815 (= res!1076787 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51397 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575816 () Bool)

(declare-fun res!1076788 () Bool)

(assert (=> b!1575816 (=> (not res!1076788) (not e!878942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575816 (= res!1076788 (validKeyInArray!0 k0!761))))

(declare-fun res!1076789 () Bool)

(assert (=> start!136058 (=> (not res!1076789) (not e!878942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136058 (= res!1076789 (validMask!0 mask!898))))

(assert (=> start!136058 e!878942))

(assert (=> start!136058 true))

(declare-fun array_inv!39491 (array!105435) Bool)

(assert (=> start!136058 (array_inv!39491 _keys!605)))

(declare-fun b!1575817 () Bool)

(assert (=> b!1575817 (= e!878942 e!878941)))

(declare-fun res!1076786 () Bool)

(assert (=> b!1575817 (=> (not res!1076786) (not e!878941))))

(assert (=> b!1575817 (= res!1076786 (and (not (undefined!14539 lt!675322)) ((_ is Intermediate!13727) lt!675322) (not (= (select (arr!50846 _keys!605) (index!57307 lt!675322)) k0!761)) (not (= (select (arr!50846 _keys!605) (index!57307 lt!675322)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50846 _keys!605) (index!57307 lt!675322)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57307 lt!675322) #b00000000000000000000000000000000) (bvslt (index!57307 lt!675322) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105435 (_ BitVec 32)) SeekEntryResult!13727)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575817 (= lt!675322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!136058 res!1076789) b!1575815))

(assert (= (and b!1575815 res!1076787) b!1575816))

(assert (= (and b!1575816 res!1076788) b!1575817))

(assert (= (and b!1575817 res!1076786) b!1575818))

(declare-fun m!1448715 () Bool)

(assert (=> b!1575818 m!1448715))

(declare-fun m!1448717 () Bool)

(assert (=> b!1575816 m!1448717))

(declare-fun m!1448719 () Bool)

(assert (=> start!136058 m!1448719))

(declare-fun m!1448721 () Bool)

(assert (=> start!136058 m!1448721))

(declare-fun m!1448723 () Bool)

(assert (=> b!1575817 m!1448723))

(declare-fun m!1448725 () Bool)

(assert (=> b!1575817 m!1448725))

(assert (=> b!1575817 m!1448725))

(declare-fun m!1448727 () Bool)

(assert (=> b!1575817 m!1448727))

(check-sat (not b!1575817) (not start!136058) (not b!1575818) (not b!1575816))
(check-sat)
(get-model)

(declare-fun b!1575849 () Bool)

(declare-fun e!878967 () SeekEntryResult!13727)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575849 (= e!878967 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1575850 () Bool)

(assert (=> b!1575850 (= e!878967 (Intermediate!13727 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575851 () Bool)

(declare-fun e!878966 () Bool)

(declare-fun e!878963 () Bool)

(assert (=> b!1575851 (= e!878966 e!878963)))

(declare-fun res!1076808 () Bool)

(declare-fun lt!675334 () SeekEntryResult!13727)

(assert (=> b!1575851 (= res!1076808 (and ((_ is Intermediate!13727) lt!675334) (not (undefined!14539 lt!675334)) (bvslt (x!142285 lt!675334) #b01111111111111111111111111111110) (bvsge (x!142285 lt!675334) #b00000000000000000000000000000000) (bvsge (x!142285 lt!675334) #b00000000000000000000000000000000)))))

(assert (=> b!1575851 (=> (not res!1076808) (not e!878963))))

(declare-fun b!1575853 () Bool)

(assert (=> b!1575853 (and (bvsge (index!57307 lt!675334) #b00000000000000000000000000000000) (bvslt (index!57307 lt!675334) (size!51397 _keys!605)))))

(declare-fun e!878964 () Bool)

(assert (=> b!1575853 (= e!878964 (= (select (arr!50846 _keys!605) (index!57307 lt!675334)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575854 () Bool)

(declare-fun e!878965 () SeekEntryResult!13727)

(assert (=> b!1575854 (= e!878965 (Intermediate!13727 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575855 () Bool)

(assert (=> b!1575855 (= e!878965 e!878967)))

(declare-fun c!145797 () Bool)

(declare-fun lt!675333 () (_ BitVec 64))

(assert (=> b!1575855 (= c!145797 (or (= lt!675333 k0!761) (= (bvadd lt!675333 lt!675333) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575856 () Bool)

(assert (=> b!1575856 (and (bvsge (index!57307 lt!675334) #b00000000000000000000000000000000) (bvslt (index!57307 lt!675334) (size!51397 _keys!605)))))

(declare-fun res!1076810 () Bool)

(assert (=> b!1575856 (= res!1076810 (= (select (arr!50846 _keys!605) (index!57307 lt!675334)) k0!761))))

(assert (=> b!1575856 (=> res!1076810 e!878964)))

(assert (=> b!1575856 (= e!878963 e!878964)))

(declare-fun b!1575857 () Bool)

(assert (=> b!1575857 (= e!878966 (bvsge (x!142285 lt!675334) #b01111111111111111111111111111110))))

(declare-fun b!1575852 () Bool)

(assert (=> b!1575852 (and (bvsge (index!57307 lt!675334) #b00000000000000000000000000000000) (bvslt (index!57307 lt!675334) (size!51397 _keys!605)))))

(declare-fun res!1076809 () Bool)

(assert (=> b!1575852 (= res!1076809 (= (select (arr!50846 _keys!605) (index!57307 lt!675334)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575852 (=> res!1076809 e!878964)))

(declare-fun d!165473 () Bool)

(assert (=> d!165473 e!878966))

(declare-fun c!145796 () Bool)

(assert (=> d!165473 (= c!145796 (and ((_ is Intermediate!13727) lt!675334) (undefined!14539 lt!675334)))))

(assert (=> d!165473 (= lt!675334 e!878965)))

(declare-fun c!145795 () Bool)

(assert (=> d!165473 (= c!145795 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165473 (= lt!675333 (select (arr!50846 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165473 (validMask!0 mask!898)))

(assert (=> d!165473 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675334)))

(assert (= (and d!165473 c!145795) b!1575854))

(assert (= (and d!165473 (not c!145795)) b!1575855))

(assert (= (and b!1575855 c!145797) b!1575850))

(assert (= (and b!1575855 (not c!145797)) b!1575849))

(assert (= (and d!165473 c!145796) b!1575857))

(assert (= (and d!165473 (not c!145796)) b!1575851))

(assert (= (and b!1575851 res!1076808) b!1575856))

(assert (= (and b!1575856 (not res!1076810)) b!1575852))

(assert (= (and b!1575852 (not res!1076809)) b!1575853))

(declare-fun m!1448743 () Bool)

(assert (=> b!1575856 m!1448743))

(assert (=> d!165473 m!1448725))

(declare-fun m!1448745 () Bool)

(assert (=> d!165473 m!1448745))

(assert (=> d!165473 m!1448719))

(assert (=> b!1575849 m!1448725))

(declare-fun m!1448747 () Bool)

(assert (=> b!1575849 m!1448747))

(assert (=> b!1575849 m!1448747))

(declare-fun m!1448749 () Bool)

(assert (=> b!1575849 m!1448749))

(assert (=> b!1575853 m!1448743))

(assert (=> b!1575852 m!1448743))

(assert (=> b!1575817 d!165473))

(declare-fun d!165483 () Bool)

(declare-fun lt!675344 () (_ BitVec 32))

(declare-fun lt!675343 () (_ BitVec 32))

(assert (=> d!165483 (= lt!675344 (bvmul (bvxor lt!675343 (bvlshr lt!675343 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165483 (= lt!675343 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165483 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076811 (let ((h!38438 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142288 (bvmul (bvxor h!38438 (bvlshr h!38438 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142288 (bvlshr x!142288 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076811 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076811 #b00000000000000000000000000000000))))))

(assert (=> d!165483 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675344 (bvlshr lt!675344 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575817 d!165483))

(declare-fun d!165485 () Bool)

(assert (=> d!165485 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136058 d!165485))

(declare-fun d!165491 () Bool)

(assert (=> d!165491 (= (array_inv!39491 _keys!605) (bvsge (size!51397 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136058 d!165491))

(declare-fun b!1575924 () Bool)

(declare-fun e!879004 () SeekEntryResult!13727)

(assert (=> b!1575924 (= e!879004 Undefined!13727)))

(declare-fun b!1575925 () Bool)

(declare-fun e!879005 () SeekEntryResult!13727)

(assert (=> b!1575925 (= e!879005 (MissingVacant!13727 (index!57307 lt!675322)))))

(declare-fun b!1575926 () Bool)

(declare-fun c!145823 () Bool)

(declare-fun lt!675369 () (_ BitVec 64))

(assert (=> b!1575926 (= c!145823 (= lt!675369 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879006 () SeekEntryResult!13727)

(assert (=> b!1575926 (= e!879006 e!879005)))

(declare-fun b!1575927 () Bool)

(assert (=> b!1575927 (= e!879004 e!879006)))

(declare-fun c!145824 () Bool)

(assert (=> b!1575927 (= c!145824 (= lt!675369 k0!761))))

(declare-fun lt!675370 () SeekEntryResult!13727)

(declare-fun d!165493 () Bool)

(assert (=> d!165493 (and (or ((_ is Undefined!13727) lt!675370) (not ((_ is Found!13727) lt!675370)) (and (bvsge (index!57306 lt!675370) #b00000000000000000000000000000000) (bvslt (index!57306 lt!675370) (size!51397 _keys!605)))) (or ((_ is Undefined!13727) lt!675370) ((_ is Found!13727) lt!675370) (not ((_ is MissingVacant!13727) lt!675370)) (not (= (index!57308 lt!675370) (index!57307 lt!675322))) (and (bvsge (index!57308 lt!675370) #b00000000000000000000000000000000) (bvslt (index!57308 lt!675370) (size!51397 _keys!605)))) (or ((_ is Undefined!13727) lt!675370) (ite ((_ is Found!13727) lt!675370) (= (select (arr!50846 _keys!605) (index!57306 lt!675370)) k0!761) (and ((_ is MissingVacant!13727) lt!675370) (= (index!57308 lt!675370) (index!57307 lt!675322)) (= (select (arr!50846 _keys!605) (index!57308 lt!675370)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165493 (= lt!675370 e!879004)))

(declare-fun c!145822 () Bool)

(assert (=> d!165493 (= c!145822 (bvsge (x!142285 lt!675322) #b01111111111111111111111111111110))))

(assert (=> d!165493 (= lt!675369 (select (arr!50846 _keys!605) (index!57307 lt!675322)))))

(assert (=> d!165493 (validMask!0 mask!898)))

(assert (=> d!165493 (= (seekKeyOrZeroReturnVacant!0 (x!142285 lt!675322) (index!57307 lt!675322) (index!57307 lt!675322) k0!761 _keys!605 mask!898) lt!675370)))

(declare-fun b!1575928 () Bool)

(assert (=> b!1575928 (= e!879005 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142285 lt!675322) #b00000000000000000000000000000001) (nextIndex!0 (index!57307 lt!675322) (x!142285 lt!675322) mask!898) (index!57307 lt!675322) k0!761 _keys!605 mask!898))))

(declare-fun b!1575929 () Bool)

(assert (=> b!1575929 (= e!879006 (Found!13727 (index!57307 lt!675322)))))

(assert (= (and d!165493 c!145822) b!1575924))

(assert (= (and d!165493 (not c!145822)) b!1575927))

(assert (= (and b!1575927 c!145824) b!1575929))

(assert (= (and b!1575927 (not c!145824)) b!1575926))

(assert (= (and b!1575926 c!145823) b!1575925))

(assert (= (and b!1575926 (not c!145823)) b!1575928))

(declare-fun m!1448767 () Bool)

(assert (=> d!165493 m!1448767))

(declare-fun m!1448769 () Bool)

(assert (=> d!165493 m!1448769))

(assert (=> d!165493 m!1448723))

(assert (=> d!165493 m!1448719))

(declare-fun m!1448771 () Bool)

(assert (=> b!1575928 m!1448771))

(assert (=> b!1575928 m!1448771))

(declare-fun m!1448773 () Bool)

(assert (=> b!1575928 m!1448773))

(assert (=> b!1575818 d!165493))

(declare-fun d!165503 () Bool)

(assert (=> d!165503 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575816 d!165503))

(check-sat (not d!165473) (not b!1575928) (not b!1575849) (not d!165493))
(check-sat)
