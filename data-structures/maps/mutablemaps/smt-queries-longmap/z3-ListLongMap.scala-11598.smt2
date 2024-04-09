; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135308 () Bool)

(assert start!135308)

(declare-fun res!1074989 () Bool)

(declare-fun e!877397 () Bool)

(assert (=> start!135308 (=> (not res!1074989) (not e!877397))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135308 (= res!1074989 (validMask!0 mask!889))))

(assert (=> start!135308 e!877397))

(assert (=> start!135308 true))

(declare-datatypes ((array!105087 0))(
  ( (array!105088 (arr!50696 (Array (_ BitVec 32) (_ BitVec 64))) (size!51247 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105087)

(declare-fun array_inv!39341 (array!105087) Bool)

(assert (=> start!135308 (array_inv!39341 _keys!600)))

(declare-fun b!1573353 () Bool)

(declare-fun res!1074988 () Bool)

(assert (=> b!1573353 (=> (not res!1074988) (not e!877397))))

(assert (=> b!1573353 (= res!1074988 (= (size!51247 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573354 () Bool)

(declare-fun res!1074987 () Bool)

(assert (=> b!1573354 (=> (not res!1074987) (not e!877397))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573354 (= res!1074987 (validKeyInArray!0 k0!754))))

(declare-fun b!1573355 () Bool)

(declare-fun lt!674349 () Bool)

(declare-datatypes ((SeekEntryResult!13625 0))(
  ( (MissingZero!13625 (index!56897 (_ BitVec 32))) (Found!13625 (index!56898 (_ BitVec 32))) (Intermediate!13625 (undefined!14437 Bool) (index!56899 (_ BitVec 32)) (x!141705 (_ BitVec 32))) (Undefined!13625) (MissingVacant!13625 (index!56900 (_ BitVec 32))) )
))
(declare-fun lt!674350 () SeekEntryResult!13625)

(assert (=> b!1573355 (= e!877397 (and (or lt!674349 (not (undefined!14437 lt!674350))) (or lt!674349 (undefined!14437 lt!674350))))))

(get-info :version)

(assert (=> b!1573355 (= lt!674349 (not ((_ is Intermediate!13625) lt!674350)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105087 (_ BitVec 32)) SeekEntryResult!13625)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573355 (= lt!674350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135308 res!1074989) b!1573353))

(assert (= (and b!1573353 res!1074988) b!1573354))

(assert (= (and b!1573354 res!1074987) b!1573355))

(declare-fun m!1446815 () Bool)

(assert (=> start!135308 m!1446815))

(declare-fun m!1446817 () Bool)

(assert (=> start!135308 m!1446817))

(declare-fun m!1446819 () Bool)

(assert (=> b!1573354 m!1446819))

(declare-fun m!1446821 () Bool)

(assert (=> b!1573355 m!1446821))

(assert (=> b!1573355 m!1446821))

(declare-fun m!1446823 () Bool)

(assert (=> b!1573355 m!1446823))

(check-sat (not b!1573354) (not start!135308) (not b!1573355))
(check-sat)
(get-model)

(declare-fun d!164925 () Bool)

(assert (=> d!164925 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573354 d!164925))

(declare-fun d!164931 () Bool)

(assert (=> d!164931 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135308 d!164931))

(declare-fun d!164937 () Bool)

(assert (=> d!164937 (= (array_inv!39341 _keys!600) (bvsge (size!51247 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135308 d!164937))

(declare-fun d!164939 () Bool)

(declare-fun e!877446 () Bool)

(assert (=> d!164939 e!877446))

(declare-fun c!145463 () Bool)

(declare-fun lt!674385 () SeekEntryResult!13625)

(assert (=> d!164939 (= c!145463 (and ((_ is Intermediate!13625) lt!674385) (undefined!14437 lt!674385)))))

(declare-fun e!877448 () SeekEntryResult!13625)

(assert (=> d!164939 (= lt!674385 e!877448)))

(declare-fun c!145464 () Bool)

(assert (=> d!164939 (= c!145464 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674386 () (_ BitVec 64))

(assert (=> d!164939 (= lt!674386 (select (arr!50696 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164939 (validMask!0 mask!889)))

(assert (=> d!164939 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!674385)))

(declare-fun b!1573437 () Bool)

(assert (=> b!1573437 (and (bvsge (index!56899 lt!674385) #b00000000000000000000000000000000) (bvslt (index!56899 lt!674385) (size!51247 _keys!600)))))

(declare-fun res!1075027 () Bool)

(assert (=> b!1573437 (= res!1075027 (= (select (arr!50696 _keys!600) (index!56899 lt!674385)) k0!754))))

(declare-fun e!877445 () Bool)

(assert (=> b!1573437 (=> res!1075027 e!877445)))

(declare-fun e!877447 () Bool)

(assert (=> b!1573437 (= e!877447 e!877445)))

(declare-fun b!1573438 () Bool)

(assert (=> b!1573438 (and (bvsge (index!56899 lt!674385) #b00000000000000000000000000000000) (bvslt (index!56899 lt!674385) (size!51247 _keys!600)))))

(declare-fun res!1075025 () Bool)

(assert (=> b!1573438 (= res!1075025 (= (select (arr!50696 _keys!600) (index!56899 lt!674385)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573438 (=> res!1075025 e!877445)))

(declare-fun e!877449 () SeekEntryResult!13625)

(declare-fun b!1573439 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573439 (= e!877449 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573440 () Bool)

(assert (=> b!1573440 (= e!877448 (Intermediate!13625 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573441 () Bool)

(assert (=> b!1573441 (= e!877446 (bvsge (x!141705 lt!674385) #b01111111111111111111111111111110))))

(declare-fun b!1573442 () Bool)

(assert (=> b!1573442 (= e!877449 (Intermediate!13625 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573443 () Bool)

(assert (=> b!1573443 (= e!877448 e!877449)))

(declare-fun c!145462 () Bool)

(assert (=> b!1573443 (= c!145462 (or (= lt!674386 k0!754) (= (bvadd lt!674386 lt!674386) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573444 () Bool)

(assert (=> b!1573444 (= e!877446 e!877447)))

(declare-fun res!1075026 () Bool)

(assert (=> b!1573444 (= res!1075026 (and ((_ is Intermediate!13625) lt!674385) (not (undefined!14437 lt!674385)) (bvslt (x!141705 lt!674385) #b01111111111111111111111111111110) (bvsge (x!141705 lt!674385) #b00000000000000000000000000000000) (bvsge (x!141705 lt!674385) #b00000000000000000000000000000000)))))

