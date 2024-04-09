; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135310 () Bool)

(assert start!135310)

(declare-fun res!1074996 () Bool)

(declare-fun e!877403 () Bool)

(assert (=> start!135310 (=> (not res!1074996) (not e!877403))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135310 (= res!1074996 (validMask!0 mask!889))))

(assert (=> start!135310 e!877403))

(assert (=> start!135310 true))

(declare-datatypes ((array!105089 0))(
  ( (array!105090 (arr!50697 (Array (_ BitVec 32) (_ BitVec 64))) (size!51248 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105089)

(declare-fun array_inv!39342 (array!105089) Bool)

(assert (=> start!135310 (array_inv!39342 _keys!600)))

(declare-fun b!1573362 () Bool)

(declare-fun res!1074998 () Bool)

(assert (=> b!1573362 (=> (not res!1074998) (not e!877403))))

(assert (=> b!1573362 (= res!1074998 (= (size!51248 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573363 () Bool)

(declare-fun res!1074997 () Bool)

(assert (=> b!1573363 (=> (not res!1074997) (not e!877403))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573363 (= res!1074997 (validKeyInArray!0 k!754))))

(declare-fun b!1573364 () Bool)

(declare-fun lt!674356 () Bool)

(declare-datatypes ((SeekEntryResult!13626 0))(
  ( (MissingZero!13626 (index!56901 (_ BitVec 32))) (Found!13626 (index!56902 (_ BitVec 32))) (Intermediate!13626 (undefined!14438 Bool) (index!56903 (_ BitVec 32)) (x!141706 (_ BitVec 32))) (Undefined!13626) (MissingVacant!13626 (index!56904 (_ BitVec 32))) )
))
(declare-fun lt!674355 () SeekEntryResult!13626)

(assert (=> b!1573364 (= e!877403 (and (or lt!674356 (not (undefined!14438 lt!674355))) (or lt!674356 (undefined!14438 lt!674355))))))

(assert (=> b!1573364 (= lt!674356 (not (is-Intermediate!13626 lt!674355)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105089 (_ BitVec 32)) SeekEntryResult!13626)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573364 (= lt!674355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135310 res!1074996) b!1573362))

(assert (= (and b!1573362 res!1074998) b!1573363))

(assert (= (and b!1573363 res!1074997) b!1573364))

(declare-fun m!1446825 () Bool)

(assert (=> start!135310 m!1446825))

(declare-fun m!1446827 () Bool)

(assert (=> start!135310 m!1446827))

(declare-fun m!1446829 () Bool)

(assert (=> b!1573363 m!1446829))

(declare-fun m!1446831 () Bool)

(assert (=> b!1573364 m!1446831))

(assert (=> b!1573364 m!1446831))

(declare-fun m!1446833 () Bool)

(assert (=> b!1573364 m!1446833))

(push 1)

(assert (not b!1573363))

(assert (not start!135310))

(assert (not b!1573364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164927 () Bool)

(assert (=> d!164927 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573363 d!164927))

(declare-fun d!164929 () Bool)

(assert (=> d!164929 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135310 d!164929))

(declare-fun d!164933 () Bool)

(assert (=> d!164933 (= (array_inv!39342 _keys!600) (bvsge (size!51248 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135310 d!164933))

(declare-fun b!1573410 () Bool)

(declare-fun e!877433 () Bool)

(declare-fun lt!674373 () SeekEntryResult!13626)

(assert (=> b!1573410 (= e!877433 (bvsge (x!141706 lt!674373) #b01111111111111111111111111111110))))

(declare-fun b!1573412 () Bool)

(declare-fun e!877432 () SeekEntryResult!13626)

(assert (=> b!1573412 (= e!877432 (Intermediate!13626 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573413 () Bool)

(assert (=> b!1573413 (and (bvsge (index!56903 lt!674373) #b00000000000000000000000000000000) (bvslt (index!56903 lt!674373) (size!51248 _keys!600)))))

(declare-fun res!1075016 () Bool)

(assert (=> b!1573413 (= res!1075016 (= (select (arr!50697 _keys!600) (index!56903 lt!674373)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877430 () Bool)

(assert (=> b!1573413 (=> res!1075016 e!877430)))

(declare-fun e!877434 () SeekEntryResult!13626)

(declare-fun b!1573414 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573414 (= e!877434 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573415 () Bool)

(assert (=> b!1573415 (= e!877432 e!877434)))

(declare-fun c!145455 () Bool)

(declare-fun lt!674374 () (_ BitVec 64))

(assert (=> b!1573415 (= c!145455 (or (= lt!674374 k!754) (= (bvadd lt!674374 lt!674374) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573416 () Bool)

(assert (=> b!1573416 (= e!877434 (Intermediate!13626 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573411 () Bool)

(assert (=> b!1573411 (and (bvsge (index!56903 lt!674373) #b00000000000000000000000000000000) (bvslt (index!56903 lt!674373) (size!51248 _keys!600)))))

(assert (=> b!1573411 (= e!877430 (= (select (arr!50697 _keys!600) (index!56903 lt!674373)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!164935 () Bool)

(assert (=> d!164935 e!877433))

(declare-fun c!145454 () Bool)

(assert (=> d!164935 (= c!145454 (and (is-Intermediate!13626 lt!674373) (undefined!14438 lt!674373)))))

(assert (=> d!164935 (= lt!674373 e!877432)))

(declare-fun c!145453 () Bool)

(assert (=> d!164935 (= c!145453 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164935 (= lt!674374 (select (arr!50697 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164935 (validMask!0 mask!889)))

(assert (=> d!164935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674373)))

(declare-fun b!1573417 () Bool)

(declare-fun e!877431 () Bool)

(assert (=> b!1573417 (= e!877433 e!877431)))

(declare-fun res!1075017 () Bool)

(assert (=> b!1573417 (= res!1075017 (and (is-Intermediate!13626 lt!674373) (not (undefined!14438 lt!674373)) (bvslt (x!141706 lt!674373) #b01111111111111111111111111111110) (bvsge (x!141706 lt!674373) #b00000000000000000000000000000000) (bvsge (x!141706 lt!674373) #b00000000000000000000000000000000)))))

(assert (=> b!1573417 (=> (not res!1075017) (not e!877431))))

(declare-fun b!1573418 () Bool)

(assert (=> b!1573418 (and (bvsge (index!56903 lt!674373) #b00000000000000000000000000000000) (bvslt (index!56903 lt!674373) (size!51248 _keys!600)))))

(declare-fun res!1075015 () Bool)

(assert (=> b!1573418 (= res!1075015 (= (select (arr!50697 _keys!600) (index!56903 lt!674373)) k!754))))

(assert (=> b!1573418 (=> res!1075015 e!877430)))

(assert (=> b!1573418 (= e!877431 e!877430)))

(assert (= (and d!164935 c!145453) b!1573412))

(assert (= (and d!164935 (not c!145453)) b!1573415))

(assert (= (and b!1573415 c!145455) b!1573416))

(assert (= (and b!1573415 (not c!145455)) b!1573414))

(assert (= (and d!164935 c!145454) b!1573410))

