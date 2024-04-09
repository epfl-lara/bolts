; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135342 () Bool)

(assert start!135342)

(declare-fun res!1075040 () Bool)

(declare-fun e!877458 () Bool)

(assert (=> start!135342 (=> (not res!1075040) (not e!877458))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135342 (= res!1075040 (validMask!0 mask!889))))

(assert (=> start!135342 e!877458))

(assert (=> start!135342 true))

(declare-datatypes ((array!105094 0))(
  ( (array!105095 (arr!50698 (Array (_ BitVec 32) (_ BitVec 64))) (size!51249 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105094)

(declare-fun array_inv!39343 (array!105094) Bool)

(assert (=> start!135342 (array_inv!39343 _keys!600)))

(declare-fun b!1573457 () Bool)

(declare-fun e!877457 () Bool)

(declare-datatypes ((SeekEntryResult!13627 0))(
  ( (MissingZero!13627 (index!56905 (_ BitVec 32))) (Found!13627 (index!56906 (_ BitVec 32))) (Intermediate!13627 (undefined!14439 Bool) (index!56907 (_ BitVec 32)) (x!141721 (_ BitVec 32))) (Undefined!13627) (MissingVacant!13627 (index!56908 (_ BitVec 32))) )
))
(declare-fun lt!674399 () SeekEntryResult!13627)

(assert (=> b!1573457 (= e!877457 (and (not (is-MissingVacant!13627 lt!674399)) (is-Found!13627 lt!674399) (or (bvslt (index!56906 lt!674399) #b00000000000000000000000000000000) (bvsge (index!56906 lt!674399) (size!51249 _keys!600)))))))

(declare-fun err!138 () SeekEntryResult!13627)

(assert (=> b!1573457 (= lt!674399 err!138)))

(assert (=> b!1573457 true))

(declare-fun b!1573454 () Bool)

(declare-fun res!1075039 () Bool)

(assert (=> b!1573454 (=> (not res!1075039) (not e!877458))))

(assert (=> b!1573454 (= res!1075039 (= (size!51249 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573456 () Bool)

(assert (=> b!1573456 (= e!877458 e!877457)))

(declare-fun res!1075038 () Bool)

(assert (=> b!1573456 (=> (not res!1075038) (not e!877457))))

(declare-fun lt!674400 () Bool)

(declare-fun lt!674401 () SeekEntryResult!13627)

(assert (=> b!1573456 (= res!1075038 (and (or lt!674400 (not (undefined!14439 lt!674401))) (or lt!674400 (undefined!14439 lt!674401))))))

(assert (=> b!1573456 (= lt!674400 (not (is-Intermediate!13627 lt!674401)))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105094 (_ BitVec 32)) SeekEntryResult!13627)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573456 (= lt!674401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573455 () Bool)

(declare-fun res!1075037 () Bool)

(assert (=> b!1573455 (=> (not res!1075037) (not e!877458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573455 (= res!1075037 (validKeyInArray!0 k!754))))

(assert (= (and start!135342 res!1075040) b!1573454))

(assert (= (and b!1573454 res!1075039) b!1573455))

(assert (= (and b!1573455 res!1075037) b!1573456))

(assert (= (and b!1573456 res!1075038) b!1573457))

(declare-fun m!1446859 () Bool)

(assert (=> start!135342 m!1446859))

(declare-fun m!1446861 () Bool)

(assert (=> start!135342 m!1446861))

(declare-fun m!1446863 () Bool)

(assert (=> b!1573456 m!1446863))

(assert (=> b!1573456 m!1446863))

(declare-fun m!1446865 () Bool)

(assert (=> b!1573456 m!1446865))

(declare-fun m!1446867 () Bool)

(assert (=> b!1573455 m!1446867))

(push 1)

(assert (not b!1573455))

(assert (not b!1573456))

(assert (not start!135342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164955 () Bool)

(assert (=> d!164955 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573455 d!164955))

(declare-fun b!1573500 () Bool)

(declare-fun lt!674424 () SeekEntryResult!13627)

(assert (=> b!1573500 (and (bvsge (index!56907 lt!674424) #b00000000000000000000000000000000) (bvslt (index!56907 lt!674424) (size!51249 _keys!600)))))

(declare-fun res!1075072 () Bool)

(assert (=> b!1573500 (= res!1075072 (= (select (arr!50698 _keys!600) (index!56907 lt!674424)) k!754))))

(declare-fun e!877490 () Bool)

(assert (=> b!1573500 (=> res!1075072 e!877490)))

(declare-fun e!877487 () Bool)

(assert (=> b!1573500 (= e!877487 e!877490)))

(declare-fun b!1573501 () Bool)

(declare-fun e!877491 () SeekEntryResult!13627)

(assert (=> b!1573501 (= e!877491 (Intermediate!13627 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573502 () Bool)

(declare-fun e!877489 () SeekEntryResult!13627)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573502 (= e!877489 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573503 () Bool)

(declare-fun e!877488 () Bool)

(assert (=> b!1573503 (= e!877488 (bvsge (x!141721 lt!674424) #b01111111111111111111111111111110))))

(declare-fun b!1573504 () Bool)

(assert (=> b!1573504 (= e!877491 e!877489)))

(declare-fun c!145472 () Bool)

(declare-fun lt!674425 () (_ BitVec 64))

(assert (=> b!1573504 (= c!145472 (or (= lt!674425 k!754) (= (bvadd lt!674425 lt!674425) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573505 () Bool)

(assert (=> b!1573505 (= e!877488 e!877487)))

(declare-fun res!1075073 () Bool)

(assert (=> b!1573505 (= res!1075073 (and (is-Intermediate!13627 lt!674424) (not (undefined!14439 lt!674424)) (bvslt (x!141721 lt!674424) #b01111111111111111111111111111110) (bvsge (x!141721 lt!674424) #b00000000000000000000000000000000) (bvsge (x!141721 lt!674424) #b00000000000000000000000000000000)))))

(assert (=> b!1573505 (=> (not res!1075073) (not e!877487))))

(declare-fun b!1573506 () Bool)

(assert (=> b!1573506 (and (bvsge (index!56907 lt!674424) #b00000000000000000000000000000000) (bvslt (index!56907 lt!674424) (size!51249 _keys!600)))))

(declare-fun res!1075071 () Bool)

(assert (=> b!1573506 (= res!1075071 (= (select (arr!50698 _keys!600) (index!56907 lt!674424)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573506 (=> res!1075071 e!877490)))

(declare-fun d!164957 () Bool)

(assert (=> d!164957 e!877488))

(declare-fun c!145473 () Bool)

(assert (=> d!164957 (= c!145473 (and (is-Intermediate!13627 lt!674424) (undefined!14439 lt!674424)))))

(assert (=> d!164957 (= lt!674424 e!877491)))

(declare-fun c!145471 () Bool)

(assert (=> d!164957 (= c!145471 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164957 (= lt!674425 (select (arr!50698 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164957 (validMask!0 mask!889)))

(assert (=> d!164957 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674424)))

(declare-fun b!1573507 () Bool)

(assert (=> b!1573507 (= e!877489 (Intermediate!13627 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573508 () Bool)

(assert (=> b!1573508 (and (bvsge (index!56907 lt!674424) #b00000000000000000000000000000000) (bvslt (index!56907 lt!674424) (size!51249 _keys!600)))))

(assert (=> b!1573508 (= e!877490 (= (select (arr!50698 _keys!600) (index!56907 lt!674424)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!164957 c!145471) b!1573501))

(assert (= (and d!164957 (not c!145471)) b!1573504))

(assert (= (and b!1573504 c!145472) b!1573507))

(assert (= (and b!1573504 (not c!145472)) b!1573502))

(assert (= (and d!164957 c!145473) b!1573503))

(assert (= (and d!164957 (not c!145473)) b!1573505))

(assert (= (and b!1573505 res!1075073) b!1573500))

(assert (= (and b!1573500 (not res!1075072)) b!1573506))

(assert (= (and b!1573506 (not res!1075071)) b!1573508))

(assert (=> b!1573502 m!1446863))

(declare-fun m!1446889 () Bool)

(assert (=> b!1573502 m!1446889))

(assert (=> b!1573502 m!1446889))

(declare-fun m!1446891 () Bool)

(assert (=> b!1573502 m!1446891))

(declare-fun m!1446893 () Bool)

(assert (=> b!1573500 m!1446893))

(assert (=> b!1573508 m!1446893))

(assert (=> d!164957 m!1446863))

(declare-fun m!1446895 () Bool)

(assert (=> d!164957 m!1446895))

(assert (=> d!164957 m!1446859))

(assert (=> b!1573506 m!1446893))

(assert (=> b!1573456 d!164957))

(declare-fun d!164971 () Bool)

(declare-fun lt!674431 () (_ BitVec 32))

(declare-fun lt!674430 () (_ BitVec 32))

(assert (=> d!164971 (= lt!674431 (bvmul (bvxor lt!674430 (bvlshr lt!674430 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164971 (= lt!674430 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164971 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075074 (let ((h!38402 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141725 (bvmul (bvxor h!38402 (bvlshr h!38402 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141725 (bvlshr x!141725 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075074 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075074 #b00000000000000000000000000000000))))))

(assert (=> d!164971 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674431 (bvlshr lt!674431 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573456 d!164971))

(declare-fun d!164973 () Bool)

(assert (=> d!164973 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135342 d!164973))

(declare-fun d!164979 () Bool)

(assert (=> d!164979 (= (array_inv!39343 _keys!600) (bvsge (size!51249 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135342 d!164979))

(push 1)

(assert (not b!1573502))

(assert (not d!164957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

