; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136218 () Bool)

(assert start!136218)

(declare-fun b!1576425 () Bool)

(declare-fun res!1077031 () Bool)

(declare-fun e!879292 () Bool)

(assert (=> b!1576425 (=> (not res!1077031) (not e!879292))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576425 (= res!1077031 (validKeyInArray!0 k!761))))

(declare-fun b!1576424 () Bool)

(declare-fun res!1077030 () Bool)

(assert (=> b!1576424 (=> (not res!1077030) (not e!879292))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-datatypes ((array!105469 0))(
  ( (array!105470 (arr!50857 (Array (_ BitVec 32) (_ BitVec 64))) (size!51408 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105469)

(assert (=> b!1576424 (= res!1077030 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51408 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1077029 () Bool)

(assert (=> start!136218 (=> (not res!1077029) (not e!879292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136218 (= res!1077029 (validMask!0 mask!898))))

(assert (=> start!136218 e!879292))

(assert (=> start!136218 true))

(declare-fun array_inv!39502 (array!105469) Bool)

(assert (=> start!136218 (array_inv!39502 _keys!605)))

(declare-fun b!1576426 () Bool)

(declare-fun e!879294 () Bool)

(assert (=> b!1576426 (= e!879292 e!879294)))

(declare-fun res!1077032 () Bool)

(assert (=> b!1576426 (=> (not res!1077032) (not e!879294))))

(declare-fun lt!675587 () Bool)

(declare-datatypes ((SeekEntryResult!13738 0))(
  ( (MissingZero!13738 (index!57349 (_ BitVec 32))) (Found!13738 (index!57350 (_ BitVec 32))) (Intermediate!13738 (undefined!14550 Bool) (index!57351 (_ BitVec 32)) (x!142361 (_ BitVec 32))) (Undefined!13738) (MissingVacant!13738 (index!57352 (_ BitVec 32))) )
))
(declare-fun lt!675588 () SeekEntryResult!13738)

(assert (=> b!1576426 (= res!1077032 (and (or lt!675587 (not (undefined!14550 lt!675588))) (or lt!675587 (undefined!14550 lt!675588))))))

(assert (=> b!1576426 (= lt!675587 (not (is-Intermediate!13738 lt!675588)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105469 (_ BitVec 32)) SeekEntryResult!13738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576426 (= lt!675588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576427 () Bool)

(declare-fun lt!675589 () SeekEntryResult!13738)

(assert (=> b!1576427 (= e!879294 (and (not (is-Undefined!13738 lt!675589)) (is-Found!13738 lt!675589) (or (bvslt (index!57350 lt!675589) #b00000000000000000000000000000000) (bvsge (index!57350 lt!675589) (size!51408 _keys!605)))))))

(declare-fun err!174 () SeekEntryResult!13738)

(assert (=> b!1576427 (= lt!675589 err!174)))

(assert (=> b!1576427 true))

(assert (= (and start!136218 res!1077029) b!1576424))

(assert (= (and b!1576424 res!1077030) b!1576425))

(assert (= (and b!1576425 res!1077031) b!1576426))

(assert (= (and b!1576426 res!1077032) b!1576427))

(declare-fun m!1449035 () Bool)

(assert (=> b!1576425 m!1449035))

(declare-fun m!1449037 () Bool)

(assert (=> start!136218 m!1449037))

(declare-fun m!1449039 () Bool)

(assert (=> start!136218 m!1449039))

(declare-fun m!1449041 () Bool)

(assert (=> b!1576426 m!1449041))

(assert (=> b!1576426 m!1449041))

(declare-fun m!1449043 () Bool)

(assert (=> b!1576426 m!1449043))

(push 1)

(assert (not start!136218))

(assert (not b!1576425))

(assert (not b!1576426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165619 () Bool)

(assert (=> d!165619 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136218 d!165619))

(declare-fun d!165625 () Bool)

(assert (=> d!165625 (= (array_inv!39502 _keys!605) (bvsge (size!51408 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136218 d!165625))

(declare-fun d!165627 () Bool)

(assert (=> d!165627 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576425 d!165627))

(declare-fun b!1576500 () Bool)

(declare-fun e!879343 () SeekEntryResult!13738)

(assert (=> b!1576500 (= e!879343 (Intermediate!13738 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576501 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576501 (= e!879343 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576502 () Bool)

(declare-fun lt!675621 () SeekEntryResult!13738)

(assert (=> b!1576502 (and (bvsge (index!57351 lt!675621) #b00000000000000000000000000000000) (bvslt (index!57351 lt!675621) (size!51408 _keys!605)))))

(declare-fun res!1077071 () Bool)

(assert (=> b!1576502 (= res!1077071 (= (select (arr!50857 _keys!605) (index!57351 lt!675621)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879345 () Bool)

(assert (=> b!1576502 (=> res!1077071 e!879345)))

(declare-fun b!1576503 () Bool)

(declare-fun e!879341 () SeekEntryResult!13738)

(assert (=> b!1576503 (= e!879341 (Intermediate!13738 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576505 () Bool)

(assert (=> b!1576505 (and (bvsge (index!57351 lt!675621) #b00000000000000000000000000000000) (bvslt (index!57351 lt!675621) (size!51408 _keys!605)))))

(assert (=> b!1576505 (= e!879345 (= (select (arr!50857 _keys!605) (index!57351 lt!675621)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576506 () Bool)

(declare-fun e!879342 () Bool)

(assert (=> b!1576506 (= e!879342 (bvsge (x!142361 lt!675621) #b01111111111111111111111111111110))))

(declare-fun b!1576507 () Bool)

(declare-fun e!879344 () Bool)

(assert (=> b!1576507 (= e!879342 e!879344)))

(declare-fun res!1077073 () Bool)

(assert (=> b!1576507 (= res!1077073 (and (is-Intermediate!13738 lt!675621) (not (undefined!14550 lt!675621)) (bvslt (x!142361 lt!675621) #b01111111111111111111111111111110) (bvsge (x!142361 lt!675621) #b00000000000000000000000000000000) (bvsge (x!142361 lt!675621) #b00000000000000000000000000000000)))))

(assert (=> b!1576507 (=> (not res!1077073) (not e!879344))))

(declare-fun b!1576509 () Bool)

(assert (=> b!1576509 (= e!879341 e!879343)))

(declare-fun c!145998 () Bool)

(declare-fun lt!675620 () (_ BitVec 64))

(assert (=> b!1576509 (= c!145998 (or (= lt!675620 k!761) (= (bvadd lt!675620 lt!675620) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165629 () Bool)

(assert (=> d!165629 e!879342))

(declare-fun c!145997 () Bool)

(assert (=> d!165629 (= c!145997 (and (is-Intermediate!13738 lt!675621) (undefined!14550 lt!675621)))))

(assert (=> d!165629 (= lt!675621 e!879341)))

(declare-fun c!145996 () Bool)

(assert (=> d!165629 (= c!145996 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165629 (= lt!675620 (select (arr!50857 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165629 (validMask!0 mask!898)))

(assert (=> d!165629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675621)))

(declare-fun b!1576504 () Bool)

(assert (=> b!1576504 (and (bvsge (index!57351 lt!675621) #b00000000000000000000000000000000) (bvslt (index!57351 lt!675621) (size!51408 _keys!605)))))

(declare-fun res!1077072 () Bool)

(assert (=> b!1576504 (= res!1077072 (= (select (arr!50857 _keys!605) (index!57351 lt!675621)) k!761))))

(assert (=> b!1576504 (=> res!1077072 e!879345)))

(assert (=> b!1576504 (= e!879344 e!879345)))

(assert (= (and d!165629 c!145996) b!1576503))

(assert (= (and d!165629 (not c!145996)) b!1576509))

(assert (= (and b!1576509 c!145998) b!1576500))

(assert (= (and b!1576509 (not c!145998)) b!1576501))

(assert (= (and d!165629 c!145997) b!1576506))

(assert (= (and d!165629 (not c!145997)) b!1576507))

(assert (= (and b!1576507 res!1077073) b!1576504))

(assert (= (and b!1576504 (not res!1077072)) b!1576502))

(assert (= (and b!1576502 (not res!1077071)) b!1576505))

(declare-fun m!1449065 () Bool)

(assert (=> b!1576502 m!1449065))

(assert (=> b!1576504 m!1449065))

(assert (=> b!1576501 m!1449041))

(declare-fun m!1449067 () Bool)

(assert (=> b!1576501 m!1449067))

(assert (=> b!1576501 m!1449067))

(declare-fun m!1449069 () Bool)

(assert (=> b!1576501 m!1449069))

(assert (=> d!165629 m!1449041))

(declare-fun m!1449071 () Bool)

(assert (=> d!165629 m!1449071))

(assert (=> d!165629 m!1449037))

(assert (=> b!1576505 m!1449065))

(assert (=> b!1576426 d!165629))

(declare-fun d!165643 () Bool)

(declare-fun lt!675631 () (_ BitVec 32))

(declare-fun lt!675630 () (_ BitVec 32))

(assert (=> d!165643 (= lt!675631 (bvmul (bvxor lt!675630 (bvlshr lt!675630 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165643 (= lt!675630 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165643 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077081 (let ((h!38450 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142367 (bvmul (bvxor h!38450 (bvlshr h!38450 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142367 (bvlshr x!142367 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077081 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077081 #b00000000000000000000000000000000))))))

(assert (=> d!165643 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675631 (bvlshr lt!675631 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576426 d!165643))

(push 1)

(assert (not b!1576501))

(assert (not d!165629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

