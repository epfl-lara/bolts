; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136460 () Bool)

(assert start!136460)

(declare-fun b!1577291 () Bool)

(declare-fun res!1077694 () Bool)

(declare-fun e!879801 () Bool)

(assert (=> b!1577291 (=> (not res!1077694) (not e!879801))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-datatypes ((array!105582 0))(
  ( (array!105583 (arr!50906 (Array (_ BitVec 32) (_ BitVec 64))) (size!51457 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105582)

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1577291 (= res!1077694 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51457 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!13751 0))(
  ( (MissingZero!13751 (index!57401 (_ BitVec 32))) (Found!13751 (index!57402 (_ BitVec 32))) (Intermediate!13751 (undefined!14563 Bool) (index!57403 (_ BitVec 32)) (x!142529 (_ BitVec 32))) (Undefined!13751) (MissingVacant!13751 (index!57404 (_ BitVec 32))) )
))
(declare-fun lt!675910 () SeekEntryResult!13751)

(declare-fun b!1577294 () Bool)

(get-info :version)

(assert (=> b!1577294 (= e!879801 (and ((_ is Intermediate!13751) lt!675910) (not (undefined!14563 lt!675910)) (bvslt (x!142529 lt!675910) #b01111111111111111111111111111110) (bvsge (x!142529 lt!675910) #b00000000000000000000000000000000) (bvsge (x!142529 lt!675910) x!458) (or (bvslt (index!57403 lt!675910) #b00000000000000000000000000000000) (bvsge (index!57403 lt!675910) (size!51457 _keys!610)))))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105582 (_ BitVec 32)) SeekEntryResult!13751)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577294 (= lt!675910 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910))))

(declare-fun b!1577292 () Bool)

(declare-fun res!1077693 () Bool)

(assert (=> b!1577292 (=> (not res!1077693) (not e!879801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577292 (= res!1077693 (validKeyInArray!0 k0!768))))

(declare-fun b!1577293 () Bool)

(declare-fun res!1077695 () Bool)

(assert (=> b!1577293 (=> (not res!1077695) (not e!879801))))

(assert (=> b!1577293 (= res!1077695 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50906 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50906 _keys!610) ee!12) (select (arr!50906 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077692 () Bool)

(assert (=> start!136460 (=> (not res!1077692) (not e!879801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136460 (= res!1077692 (validMask!0 mask!910))))

(assert (=> start!136460 e!879801))

(assert (=> start!136460 true))

(declare-fun array_inv!39551 (array!105582) Bool)

(assert (=> start!136460 (array_inv!39551 _keys!610)))

(assert (= (and start!136460 res!1077692) b!1577291))

(assert (= (and b!1577291 res!1077694) b!1577292))

(assert (= (and b!1577292 res!1077693) b!1577293))

(assert (= (and b!1577293 res!1077695) b!1577294))

(declare-fun m!1449611 () Bool)

(assert (=> b!1577294 m!1449611))

(assert (=> b!1577294 m!1449611))

(declare-fun m!1449613 () Bool)

(assert (=> b!1577294 m!1449613))

(declare-fun m!1449615 () Bool)

(assert (=> b!1577292 m!1449615))

(declare-fun m!1449617 () Bool)

(assert (=> b!1577293 m!1449617))

(declare-fun m!1449619 () Bool)

(assert (=> start!136460 m!1449619))

(declare-fun m!1449621 () Bool)

(assert (=> start!136460 m!1449621))

(check-sat (not b!1577292) (not b!1577294) (not start!136460))
(check-sat)
(get-model)

(declare-fun d!165795 () Bool)

(assert (=> d!165795 (= (validKeyInArray!0 k0!768) (and (not (= k0!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577292 d!165795))

(declare-fun b!1577352 () Bool)

(declare-fun lt!675929 () SeekEntryResult!13751)

(assert (=> b!1577352 (and (bvsge (index!57403 lt!675929) #b00000000000000000000000000000000) (bvslt (index!57403 lt!675929) (size!51457 _keys!610)))))

(declare-fun res!1077724 () Bool)

(assert (=> b!1577352 (= res!1077724 (= (select (arr!50906 _keys!610) (index!57403 lt!675929)) k0!768))))

(declare-fun e!879834 () Bool)

(assert (=> b!1577352 (=> res!1077724 e!879834)))

(declare-fun e!879833 () Bool)

(assert (=> b!1577352 (= e!879833 e!879834)))

(declare-fun b!1577353 () Bool)

(declare-fun e!879835 () SeekEntryResult!13751)

(declare-fun e!879836 () SeekEntryResult!13751)

(assert (=> b!1577353 (= e!879835 e!879836)))

(declare-fun c!146102 () Bool)

(declare-fun lt!675928 () (_ BitVec 64))

(assert (=> b!1577353 (= c!146102 (or (= lt!675928 k0!768) (= (bvadd lt!675928 lt!675928) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577354 () Bool)

(assert (=> b!1577354 (= e!879835 (Intermediate!13751 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577355 () Bool)

(assert (=> b!1577355 (and (bvsge (index!57403 lt!675929) #b00000000000000000000000000000000) (bvslt (index!57403 lt!675929) (size!51457 _keys!610)))))

(assert (=> b!1577355 (= e!879834 (= (select (arr!50906 _keys!610) (index!57403 lt!675929)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577356 () Bool)

(assert (=> b!1577356 (= e!879836 (Intermediate!13751 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577357 () Bool)

(assert (=> b!1577357 (= e!879836 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k0!768 _keys!610 mask!910))))

(declare-fun b!1577359 () Bool)

(assert (=> b!1577359 (and (bvsge (index!57403 lt!675929) #b00000000000000000000000000000000) (bvslt (index!57403 lt!675929) (size!51457 _keys!610)))))

(declare-fun res!1077725 () Bool)

(assert (=> b!1577359 (= res!1077725 (= (select (arr!50906 _keys!610) (index!57403 lt!675929)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577359 (=> res!1077725 e!879834)))

(declare-fun b!1577360 () Bool)

(declare-fun e!879837 () Bool)

(assert (=> b!1577360 (= e!879837 (bvsge (x!142529 lt!675929) #b01111111111111111111111111111110))))

(declare-fun b!1577358 () Bool)

(assert (=> b!1577358 (= e!879837 e!879833)))

(declare-fun res!1077723 () Bool)

(assert (=> b!1577358 (= res!1077723 (and ((_ is Intermediate!13751) lt!675929) (not (undefined!14563 lt!675929)) (bvslt (x!142529 lt!675929) #b01111111111111111111111111111110) (bvsge (x!142529 lt!675929) #b00000000000000000000000000000000) (bvsge (x!142529 lt!675929) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577358 (=> (not res!1077723) (not e!879833))))

(declare-fun d!165799 () Bool)

(assert (=> d!165799 e!879837))

(declare-fun c!146101 () Bool)

(assert (=> d!165799 (= c!146101 (and ((_ is Intermediate!13751) lt!675929) (undefined!14563 lt!675929)))))

(assert (=> d!165799 (= lt!675929 e!879835)))

(declare-fun c!146103 () Bool)

(assert (=> d!165799 (= c!146103 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165799 (= lt!675928 (select (arr!50906 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165799 (validMask!0 mask!910)))

(assert (=> d!165799 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910) lt!675929)))

(assert (= (and d!165799 c!146103) b!1577354))

(assert (= (and d!165799 (not c!146103)) b!1577353))

(assert (= (and b!1577353 c!146102) b!1577356))

(assert (= (and b!1577353 (not c!146102)) b!1577357))

(assert (= (and d!165799 c!146101) b!1577360))

(assert (= (and d!165799 (not c!146101)) b!1577358))

(assert (= (and b!1577358 res!1077723) b!1577352))

(assert (= (and b!1577352 (not res!1077724)) b!1577359))

(assert (= (and b!1577359 (not res!1077725)) b!1577355))

(assert (=> d!165799 m!1449611))

(declare-fun m!1449643 () Bool)

(assert (=> d!165799 m!1449643))

(assert (=> d!165799 m!1449619))

(assert (=> b!1577357 m!1449611))

(declare-fun m!1449645 () Bool)

(assert (=> b!1577357 m!1449645))

(assert (=> b!1577357 m!1449645))

(declare-fun m!1449647 () Bool)

(assert (=> b!1577357 m!1449647))

(declare-fun m!1449649 () Bool)

(assert (=> b!1577355 m!1449649))

(assert (=> b!1577352 m!1449649))

(assert (=> b!1577359 m!1449649))

(assert (=> b!1577294 d!165799))

(declare-fun d!165809 () Bool)

(declare-fun lt!675935 () (_ BitVec 32))

(assert (=> d!165809 (and (bvsge lt!675935 #b00000000000000000000000000000000) (bvslt lt!675935 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165809 (= lt!675935 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165809 (validMask!0 mask!910)))

(assert (=> d!165809 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675935)))

(declare-fun bs!45573 () Bool)

(assert (= bs!45573 d!165809))

(declare-fun m!1449653 () Bool)

(assert (=> bs!45573 m!1449653))

(assert (=> bs!45573 m!1449619))

(assert (=> b!1577294 d!165809))

(declare-fun d!165813 () Bool)

(assert (=> d!165813 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136460 d!165813))

(declare-fun d!165821 () Bool)

(assert (=> d!165821 (= (array_inv!39551 _keys!610) (bvsge (size!51457 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136460 d!165821))

(check-sat (not d!165799) (not b!1577357) (not d!165809))
(check-sat)
