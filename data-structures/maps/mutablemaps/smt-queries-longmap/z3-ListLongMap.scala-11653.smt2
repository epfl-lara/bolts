; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136256 () Bool)

(assert start!136256)

(declare-fun b!1576554 () Bool)

(declare-fun res!1077110 () Bool)

(declare-fun e!879373 () Bool)

(assert (=> b!1576554 (=> (not res!1077110) (not e!879373))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576554 (= res!1077110 (validKeyInArray!0 k0!761))))

(declare-fun b!1576553 () Bool)

(declare-fun res!1077107 () Bool)

(assert (=> b!1576553 (=> (not res!1077107) (not e!879373))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-datatypes ((array!105480 0))(
  ( (array!105481 (arr!50861 (Array (_ BitVec 32) (_ BitVec 64))) (size!51412 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105480)

(assert (=> b!1576553 (= res!1077107 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51412 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1077108 () Bool)

(assert (=> start!136256 (=> (not res!1077108) (not e!879373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136256 (= res!1077108 (validMask!0 mask!898))))

(assert (=> start!136256 e!879373))

(assert (=> start!136256 true))

(declare-fun array_inv!39506 (array!105480) Bool)

(assert (=> start!136256 (array_inv!39506 _keys!605)))

(declare-fun b!1576555 () Bool)

(declare-fun e!879374 () Bool)

(assert (=> b!1576555 (= e!879373 e!879374)))

(declare-fun res!1077109 () Bool)

(assert (=> b!1576555 (=> (not res!1077109) (not e!879374))))

(declare-fun lt!675661 () Bool)

(declare-datatypes ((SeekEntryResult!13742 0))(
  ( (MissingZero!13742 (index!57365 (_ BitVec 32))) (Found!13742 (index!57366 (_ BitVec 32))) (Intermediate!13742 (undefined!14554 Bool) (index!57367 (_ BitVec 32)) (x!142379 (_ BitVec 32))) (Undefined!13742) (MissingVacant!13742 (index!57368 (_ BitVec 32))) )
))
(declare-fun lt!675659 () SeekEntryResult!13742)

(assert (=> b!1576555 (= res!1077109 (and (or lt!675661 (not (undefined!14554 lt!675659))) (or lt!675661 (undefined!14554 lt!675659))))))

(get-info :version)

(assert (=> b!1576555 (= lt!675661 (not ((_ is Intermediate!13742) lt!675659)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105480 (_ BitVec 32)) SeekEntryResult!13742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576555 (= lt!675659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576556 () Bool)

(declare-fun lt!675660 () SeekEntryResult!13742)

(assert (=> b!1576556 (= e!879374 (and (not ((_ is Undefined!13742) lt!675660)) (not ((_ is Found!13742) lt!675660)) ((_ is MissingZero!13742) lt!675660) (or (bvslt (index!57365 lt!675660) #b00000000000000000000000000000000) (bvsge (index!57365 lt!675660) (size!51412 _keys!605)))))))

(declare-fun err!190 () SeekEntryResult!13742)

(assert (=> b!1576556 (= lt!675660 err!190)))

(assert (=> b!1576556 true))

(assert (= (and start!136256 res!1077108) b!1576553))

(assert (= (and b!1576553 res!1077107) b!1576554))

(assert (= (and b!1576554 res!1077110) b!1576555))

(assert (= (and b!1576555 res!1077109) b!1576556))

(declare-fun m!1449099 () Bool)

(assert (=> b!1576554 m!1449099))

(declare-fun m!1449101 () Bool)

(assert (=> start!136256 m!1449101))

(declare-fun m!1449103 () Bool)

(assert (=> start!136256 m!1449103))

(declare-fun m!1449105 () Bool)

(assert (=> b!1576555 m!1449105))

(assert (=> b!1576555 m!1449105))

(declare-fun m!1449107 () Bool)

(assert (=> b!1576555 m!1449107))

(check-sat (not start!136256) (not b!1576554) (not b!1576555))
(check-sat)
(get-model)

(declare-fun d!165651 () Bool)

(assert (=> d!165651 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136256 d!165651))

(declare-fun d!165657 () Bool)

(assert (=> d!165657 (= (array_inv!39506 _keys!605) (bvsge (size!51412 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136256 d!165657))

(declare-fun d!165659 () Bool)

(assert (=> d!165659 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576554 d!165659))

(declare-fun b!1576587 () Bool)

(declare-fun e!879399 () SeekEntryResult!13742)

(assert (=> b!1576587 (= e!879399 (Intermediate!13742 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576588 () Bool)

(declare-fun e!879398 () SeekEntryResult!13742)

(assert (=> b!1576588 (= e!879399 e!879398)))

(declare-fun c!146011 () Bool)

(declare-fun lt!675675 () (_ BitVec 64))

(assert (=> b!1576588 (= c!146011 (or (= lt!675675 k0!761) (= (bvadd lt!675675 lt!675675) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576589 () Bool)

(declare-fun e!879395 () Bool)

(declare-fun e!879396 () Bool)

(assert (=> b!1576589 (= e!879395 e!879396)))

(declare-fun res!1077131 () Bool)

(declare-fun lt!675676 () SeekEntryResult!13742)

(assert (=> b!1576589 (= res!1077131 (and ((_ is Intermediate!13742) lt!675676) (not (undefined!14554 lt!675676)) (bvslt (x!142379 lt!675676) #b01111111111111111111111111111110) (bvsge (x!142379 lt!675676) #b00000000000000000000000000000000) (bvsge (x!142379 lt!675676) #b00000000000000000000000000000000)))))

(assert (=> b!1576589 (=> (not res!1077131) (not e!879396))))

(declare-fun b!1576590 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576590 (= e!879398 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576591 () Bool)

(assert (=> b!1576591 (= e!879395 (bvsge (x!142379 lt!675676) #b01111111111111111111111111111110))))

(declare-fun b!1576592 () Bool)

(assert (=> b!1576592 (and (bvsge (index!57367 lt!675676) #b00000000000000000000000000000000) (bvslt (index!57367 lt!675676) (size!51412 _keys!605)))))

(declare-fun res!1077129 () Bool)

(assert (=> b!1576592 (= res!1077129 (= (select (arr!50861 _keys!605) (index!57367 lt!675676)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879397 () Bool)

(assert (=> b!1576592 (=> res!1077129 e!879397)))

(declare-fun b!1576593 () Bool)

(assert (=> b!1576593 (and (bvsge (index!57367 lt!675676) #b00000000000000000000000000000000) (bvslt (index!57367 lt!675676) (size!51412 _keys!605)))))

(declare-fun res!1077130 () Bool)

(assert (=> b!1576593 (= res!1077130 (= (select (arr!50861 _keys!605) (index!57367 lt!675676)) k0!761))))

(assert (=> b!1576593 (=> res!1077130 e!879397)))

(assert (=> b!1576593 (= e!879396 e!879397)))

(declare-fun b!1576594 () Bool)

(assert (=> b!1576594 (= e!879398 (Intermediate!13742 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576595 () Bool)

(assert (=> b!1576595 (and (bvsge (index!57367 lt!675676) #b00000000000000000000000000000000) (bvslt (index!57367 lt!675676) (size!51412 _keys!605)))))

(assert (=> b!1576595 (= e!879397 (= (select (arr!50861 _keys!605) (index!57367 lt!675676)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!165661 () Bool)

(assert (=> d!165661 e!879395))

(declare-fun c!146012 () Bool)

(assert (=> d!165661 (= c!146012 (and ((_ is Intermediate!13742) lt!675676) (undefined!14554 lt!675676)))))

(assert (=> d!165661 (= lt!675676 e!879399)))

(declare-fun c!146013 () Bool)

(assert (=> d!165661 (= c!146013 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165661 (= lt!675675 (select (arr!50861 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165661 (validMask!0 mask!898)))

(assert (=> d!165661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675676)))

(assert (= (and d!165661 c!146013) b!1576587))

(assert (= (and d!165661 (not c!146013)) b!1576588))

(assert (= (and b!1576588 c!146011) b!1576594))

(assert (= (and b!1576588 (not c!146011)) b!1576590))

(assert (= (and d!165661 c!146012) b!1576591))

(assert (= (and d!165661 (not c!146012)) b!1576589))

(assert (= (and b!1576589 res!1077131) b!1576593))

(assert (= (and b!1576593 (not res!1077130)) b!1576592))

(assert (= (and b!1576592 (not res!1077129)) b!1576595))

(declare-fun m!1449119 () Bool)

(assert (=> b!1576593 m!1449119))

(assert (=> b!1576590 m!1449105))

(declare-fun m!1449121 () Bool)

(assert (=> b!1576590 m!1449121))

(assert (=> b!1576590 m!1449121))

(declare-fun m!1449123 () Bool)

(assert (=> b!1576590 m!1449123))

(assert (=> b!1576595 m!1449119))

(assert (=> b!1576592 m!1449119))

(assert (=> d!165661 m!1449105))

(declare-fun m!1449125 () Bool)

(assert (=> d!165661 m!1449125))

(assert (=> d!165661 m!1449101))

(assert (=> b!1576555 d!165661))

(declare-fun d!165675 () Bool)

(declare-fun lt!675690 () (_ BitVec 32))

(declare-fun lt!675689 () (_ BitVec 32))

(assert (=> d!165675 (= lt!675690 (bvmul (bvxor lt!675689 (bvlshr lt!675689 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165675 (= lt!675689 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165675 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077132 (let ((h!38453 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142383 (bvmul (bvxor h!38453 (bvlshr h!38453 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142383 (bvlshr x!142383 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077132 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077132 #b00000000000000000000000000000000))))))

(assert (=> d!165675 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675690 (bvlshr lt!675690 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576555 d!165675))

(check-sat (not d!165661) (not b!1576590))
(check-sat)
