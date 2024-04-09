; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136018 () Bool)

(assert start!136018)

(declare-fun b!1575658 () Bool)

(declare-fun e!878851 () Bool)

(declare-fun e!878853 () Bool)

(assert (=> b!1575658 (= e!878851 e!878853)))

(declare-fun res!1076735 () Bool)

(assert (=> b!1575658 (=> (not res!1076735) (not e!878853))))

(declare-datatypes ((array!105428 0))(
  ( (array!105429 (arr!50844 (Array (_ BitVec 32) (_ BitVec 64))) (size!51395 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105428)

(declare-datatypes ((SeekEntryResult!13725 0))(
  ( (MissingZero!13725 (index!57297 (_ BitVec 32))) (Found!13725 (index!57298 (_ BitVec 32))) (Intermediate!13725 (undefined!14537 Bool) (index!57299 (_ BitVec 32)) (x!142266 (_ BitVec 32))) (Undefined!13725) (MissingVacant!13725 (index!57300 (_ BitVec 32))) )
))
(declare-fun lt!675256 () SeekEntryResult!13725)

(declare-fun k!761 () (_ BitVec 64))

(declare-fun mask!898 () (_ BitVec 32))

(assert (=> b!1575658 (= res!1076735 (and (not (undefined!14537 lt!675256)) (is-Intermediate!13725 lt!675256) (not (= (select (arr!50844 _keys!605) (index!57299 lt!675256)) k!761)) (not (= (select (arr!50844 _keys!605) (index!57299 lt!675256)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50844 _keys!605) (index!57299 lt!675256)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57299 lt!675256) #b00000000000000000000000000000000) (bvslt (index!57299 lt!675256) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105428 (_ BitVec 32)) SeekEntryResult!13725)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575658 (= lt!675256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575659 () Bool)

(declare-fun lt!675255 () SeekEntryResult!13725)

(assert (=> b!1575659 (= e!878853 (and (not (is-Undefined!13725 lt!675255)) (is-Found!13725 lt!675255) (or (bvslt (index!57298 lt!675255) #b00000000000000000000000000000000) (bvsge (index!57298 lt!675255) (size!51395 _keys!605)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105428 (_ BitVec 32)) SeekEntryResult!13725)

(assert (=> b!1575659 (= lt!675255 (seekKeyOrZeroReturnVacant!0 (x!142266 lt!675256) (index!57299 lt!675256) (index!57299 lt!675256) k!761 _keys!605 mask!898))))

(declare-fun b!1575656 () Bool)

(declare-fun res!1076732 () Bool)

(assert (=> b!1575656 (=> (not res!1076732) (not e!878851))))

(assert (=> b!1575656 (= res!1076732 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51395 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575657 () Bool)

(declare-fun res!1076734 () Bool)

(assert (=> b!1575657 (=> (not res!1076734) (not e!878851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575657 (= res!1076734 (validKeyInArray!0 k!761))))

(declare-fun res!1076733 () Bool)

(assert (=> start!136018 (=> (not res!1076733) (not e!878851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136018 (= res!1076733 (validMask!0 mask!898))))

(assert (=> start!136018 e!878851))

(assert (=> start!136018 true))

(declare-fun array_inv!39489 (array!105428) Bool)

(assert (=> start!136018 (array_inv!39489 _keys!605)))

(assert (= (and start!136018 res!1076733) b!1575656))

(assert (= (and b!1575656 res!1076732) b!1575657))

(assert (= (and b!1575657 res!1076734) b!1575658))

(assert (= (and b!1575658 res!1076735) b!1575659))

(declare-fun m!1448639 () Bool)

(assert (=> b!1575658 m!1448639))

(declare-fun m!1448641 () Bool)

(assert (=> b!1575658 m!1448641))

(assert (=> b!1575658 m!1448641))

(declare-fun m!1448643 () Bool)

(assert (=> b!1575658 m!1448643))

(declare-fun m!1448645 () Bool)

(assert (=> b!1575659 m!1448645))

(declare-fun m!1448647 () Bool)

(assert (=> b!1575657 m!1448647))

(declare-fun m!1448649 () Bool)

(assert (=> start!136018 m!1448649))

(declare-fun m!1448651 () Bool)

(assert (=> start!136018 m!1448651))

(push 1)

(assert (not b!1575657))

(assert (not start!136018))

(assert (not b!1575658))

(assert (not b!1575659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165443 () Bool)

(assert (=> d!165443 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575657 d!165443))

(declare-fun d!165447 () Bool)

(assert (=> d!165447 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136018 d!165447))

(declare-fun d!165449 () Bool)

(assert (=> d!165449 (= (array_inv!39489 _keys!605) (bvsge (size!51395 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136018 d!165449))

(declare-fun b!1575723 () Bool)

(declare-fun e!878889 () Bool)

(declare-fun lt!675280 () SeekEntryResult!13725)

(assert (=> b!1575723 (= e!878889 (bvsge (x!142266 lt!675280) #b01111111111111111111111111111110))))

(declare-fun b!1575724 () Bool)

(assert (=> b!1575724 (and (bvsge (index!57299 lt!675280) #b00000000000000000000000000000000) (bvslt (index!57299 lt!675280) (size!51395 _keys!605)))))

(declare-fun e!878892 () Bool)

(assert (=> b!1575724 (= e!878892 (= (select (arr!50844 _keys!605) (index!57299 lt!675280)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!165451 () Bool)

(assert (=> d!165451 e!878889))

(declare-fun c!145761 () Bool)

(assert (=> d!165451 (= c!145761 (and (is-Intermediate!13725 lt!675280) (undefined!14537 lt!675280)))))

(declare-fun e!878890 () SeekEntryResult!13725)

(assert (=> d!165451 (= lt!675280 e!878890)))

(declare-fun c!145760 () Bool)

(assert (=> d!165451 (= c!145760 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675279 () (_ BitVec 64))

(assert (=> d!165451 (= lt!675279 (select (arr!50844 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165451 (validMask!0 mask!898)))

(assert (=> d!165451 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675280)))

(declare-fun b!1575725 () Bool)

(declare-fun e!878888 () SeekEntryResult!13725)

(assert (=> b!1575725 (= e!878888 (Intermediate!13725 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575726 () Bool)

(declare-fun e!878891 () Bool)

(assert (=> b!1575726 (= e!878889 e!878891)))

(declare-fun res!1076752 () Bool)

(assert (=> b!1575726 (= res!1076752 (and (is-Intermediate!13725 lt!675280) (not (undefined!14537 lt!675280)) (bvslt (x!142266 lt!675280) #b01111111111111111111111111111110) (bvsge (x!142266 lt!675280) #b00000000000000000000000000000000) (bvsge (x!142266 lt!675280) #b00000000000000000000000000000000)))))

(assert (=> b!1575726 (=> (not res!1076752) (not e!878891))))

(declare-fun b!1575727 () Bool)

(assert (=> b!1575727 (= e!878890 e!878888)))

(declare-fun c!145759 () Bool)

(assert (=> b!1575727 (= c!145759 (or (= lt!675279 k!761) (= (bvadd lt!675279 lt!675279) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575728 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575728 (= e!878888 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575729 () Bool)

(assert (=> b!1575729 (= e!878890 (Intermediate!13725 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575730 () Bool)

(assert (=> b!1575730 (and (bvsge (index!57299 lt!675280) #b00000000000000000000000000000000) (bvslt (index!57299 lt!675280) (size!51395 _keys!605)))))

(declare-fun res!1076754 () Bool)

(assert (=> b!1575730 (= res!1076754 (= (select (arr!50844 _keys!605) (index!57299 lt!675280)) k!761))))

(assert (=> b!1575730 (=> res!1076754 e!878892)))

(assert (=> b!1575730 (= e!878891 e!878892)))

(declare-fun b!1575731 () Bool)

(assert (=> b!1575731 (and (bvsge (index!57299 lt!675280) #b00000000000000000000000000000000) (bvslt (index!57299 lt!675280) (size!51395 _keys!605)))))

(declare-fun res!1076753 () Bool)

(assert (=> b!1575731 (= res!1076753 (= (select (arr!50844 _keys!605) (index!57299 lt!675280)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575731 (=> res!1076753 e!878892)))

(assert (= (and d!165451 c!145760) b!1575729))

(assert (= (and d!165451 (not c!145760)) b!1575727))

(assert (= (and b!1575727 c!145759) b!1575725))

(assert (= (and b!1575727 (not c!145759)) b!1575728))

(assert (= (and d!165451 c!145761) b!1575723))

(assert (= (and d!165451 (not c!145761)) b!1575726))

(assert (= (and b!1575726 res!1076752) b!1575730))

(assert (= (and b!1575730 (not res!1076754)) b!1575731))

(assert (= (and b!1575731 (not res!1076753)) b!1575724))

(declare-fun m!1448669 () Bool)

(assert (=> b!1575731 m!1448669))

(assert (=> b!1575730 m!1448669))

(assert (=> b!1575728 m!1448641))

(declare-fun m!1448671 () Bool)

(assert (=> b!1575728 m!1448671))

(assert (=> b!1575728 m!1448671))

(declare-fun m!1448673 () Bool)

(assert (=> b!1575728 m!1448673))

(assert (=> d!165451 m!1448641))

(declare-fun m!1448675 () Bool)

(assert (=> d!165451 m!1448675))

(assert (=> d!165451 m!1448649))

(assert (=> b!1575724 m!1448669))

(assert (=> b!1575658 d!165451))

(declare-fun d!165461 () Bool)

(declare-fun lt!675286 () (_ BitVec 32))

(declare-fun lt!675285 () (_ BitVec 32))

(assert (=> d!165461 (= lt!675286 (bvmul (bvxor lt!675285 (bvlshr lt!675285 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165461 (= lt!675285 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165461 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076755 (let ((h!38436 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142271 (bvmul (bvxor h!38436 (bvlshr h!38436 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142271 (bvlshr x!142271 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076755 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076755 #b00000000000000000000000000000000))))))

(assert (=> d!165461 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675286 (bvlshr lt!675286 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575658 d!165461))

(declare-fun b!1575762 () Bool)

(declare-fun e!878910 () SeekEntryResult!13725)

(assert (=> b!1575762 (= e!878910 (Found!13725 (index!57299 lt!675256)))))

(declare-fun b!1575763 () Bool)

(declare-fun e!878908 () SeekEntryResult!13725)

(assert (=> b!1575763 (= e!878908 (MissingVacant!13725 (index!57299 lt!675256)))))

(declare-fun b!1575764 () Bool)

(assert (=> b!1575764 (= e!878908 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142266 lt!675256) #b00000000000000000000000000000001) (nextIndex!0 (index!57299 lt!675256) (x!142266 lt!675256) mask!898) (index!57299 lt!675256) k!761 _keys!605 mask!898))))

(declare-fun b!1575765 () Bool)

(declare-fun c!145777 () Bool)

(declare-fun lt!675298 () (_ BitVec 64))

(assert (=> b!1575765 (= c!145777 (= lt!675298 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575765 (= e!878910 e!878908)))

(declare-fun b!1575766 () Bool)

(declare-fun e!878909 () SeekEntryResult!13725)

(assert (=> b!1575766 (= e!878909 e!878910)))

(declare-fun c!145778 () Bool)

(assert (=> b!1575766 (= c!145778 (= lt!675298 k!761))))

(declare-fun lt!675297 () SeekEntryResult!13725)

(declare-fun d!165463 () Bool)

(assert (=> d!165463 (and (or (is-Undefined!13725 lt!675297) (not (is-Found!13725 lt!675297)) (and (bvsge (index!57298 lt!675297) #b00000000000000000000000000000000) (bvslt (index!57298 lt!675297) (size!51395 _keys!605)))) (or (is-Undefined!13725 lt!675297) (is-Found!13725 lt!675297) (not (is-MissingVacant!13725 lt!675297)) (not (= (index!57300 lt!675297) (index!57299 lt!675256))) (and (bvsge (index!57300 lt!675297) #b00000000000000000000000000000000) (bvslt (index!57300 lt!675297) (size!51395 _keys!605)))) (or (is-Undefined!13725 lt!675297) (ite (is-Found!13725 lt!675297) (= (select (arr!50844 _keys!605) (index!57298 lt!675297)) k!761) (and (is-MissingVacant!13725 lt!675297) (= (index!57300 lt!675297) (index!57299 lt!675256)) (= (select (arr!50844 _keys!605) (index!57300 lt!675297)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165463 (= lt!675297 e!878909)))

(declare-fun c!145779 () Bool)

(assert (=> d!165463 (= c!145779 (bvsge (x!142266 lt!675256) #b01111111111111111111111111111110))))

(assert (=> d!165463 (= lt!675298 (select (arr!50844 _keys!605) (index!57299 lt!675256)))))

(assert (=> d!165463 (validMask!0 mask!898)))

(assert (=> d!165463 (= (seekKeyOrZeroReturnVacant!0 (x!142266 lt!675256) (index!57299 lt!675256) (index!57299 lt!675256) k!761 _keys!605 mask!898) lt!675297)))

(declare-fun b!1575767 () Bool)

(assert (=> b!1575767 (= e!878909 Undefined!13725)))

(assert (= (and d!165463 c!145779) b!1575767))

(assert (= (and d!165463 (not c!145779)) b!1575766))

(assert (= (and b!1575766 c!145778) b!1575762))

(assert (= (and b!1575766 (not c!145778)) b!1575765))

(assert (= (and b!1575765 c!145777) b!1575763))

(assert (= (and b!1575765 (not c!145777)) b!1575764))

(declare-fun m!1448685 () Bool)

(assert (=> b!1575764 m!1448685))

(assert (=> b!1575764 m!1448685))

(declare-fun m!1448687 () Bool)

(assert (=> b!1575764 m!1448687))

(declare-fun m!1448689 () Bool)

(assert (=> d!165463 m!1448689))

(declare-fun m!1448691 () Bool)

(assert (=> d!165463 m!1448691))

(assert (=> d!165463 m!1448639))

(assert (=> d!165463 m!1448649))

(assert (=> b!1575659 d!165463))

(push 1)

(assert (not b!1575764))

(assert (not d!165463))

(assert (not d!165451))

(assert (not b!1575728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

