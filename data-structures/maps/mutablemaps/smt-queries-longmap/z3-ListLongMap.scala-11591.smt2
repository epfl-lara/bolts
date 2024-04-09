; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135128 () Bool)

(assert start!135128)

(declare-fun res!1074625 () Bool)

(declare-fun e!876956 () Bool)

(assert (=> start!135128 (=> (not res!1074625) (not e!876956))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135128 (= res!1074625 (validMask!0 mask!889))))

(assert (=> start!135128 e!876956))

(assert (=> start!135128 true))

(declare-datatypes ((array!105033 0))(
  ( (array!105034 (arr!50675 (Array (_ BitVec 32) (_ BitVec 64))) (size!51226 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105033)

(declare-fun array_inv!39320 (array!105033) Bool)

(assert (=> start!135128 (array_inv!39320 _keys!600)))

(declare-fun b!1572624 () Bool)

(declare-fun res!1074624 () Bool)

(assert (=> b!1572624 (=> (not res!1074624) (not e!876956))))

(assert (=> b!1572624 (= res!1074624 (= (size!51226 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572625 () Bool)

(declare-fun res!1074626 () Bool)

(assert (=> b!1572625 (=> (not res!1074626) (not e!876956))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572625 (= res!1074626 (validKeyInArray!0 k0!754))))

(declare-datatypes ((SeekEntryResult!13604 0))(
  ( (MissingZero!13604 (index!56813 (_ BitVec 32))) (Found!13604 (index!56814 (_ BitVec 32))) (Intermediate!13604 (undefined!14416 Bool) (index!56815 (_ BitVec 32)) (x!141595 (_ BitVec 32))) (Undefined!13604) (MissingVacant!13604 (index!56816 (_ BitVec 32))) )
))
(declare-fun lt!674029 () SeekEntryResult!13604)

(declare-fun b!1572626 () Bool)

(get-info :version)

(assert (=> b!1572626 (= e!876956 (and ((_ is Intermediate!13604) lt!674029) (not (undefined!14416 lt!674029)) (not (= (select (arr!50675 _keys!600) (index!56815 lt!674029)) k0!754)) (not (= (select (arr!50675 _keys!600) (index!56815 lt!674029)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!56815 lt!674029) #b00000000000000000000000000000000) (bvsge (index!56815 lt!674029) (size!51226 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105033 (_ BitVec 32)) SeekEntryResult!13604)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572626 (= lt!674029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135128 res!1074625) b!1572624))

(assert (= (and b!1572624 res!1074624) b!1572625))

(assert (= (and b!1572625 res!1074626) b!1572626))

(declare-fun m!1446355 () Bool)

(assert (=> start!135128 m!1446355))

(declare-fun m!1446357 () Bool)

(assert (=> start!135128 m!1446357))

(declare-fun m!1446359 () Bool)

(assert (=> b!1572625 m!1446359))

(declare-fun m!1446361 () Bool)

(assert (=> b!1572626 m!1446361))

(declare-fun m!1446363 () Bool)

(assert (=> b!1572626 m!1446363))

(assert (=> b!1572626 m!1446363))

(declare-fun m!1446365 () Bool)

(assert (=> b!1572626 m!1446365))

(check-sat (not start!135128) (not b!1572625) (not b!1572626))
(check-sat)
(get-model)

(declare-fun d!164771 () Bool)

(assert (=> d!164771 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135128 d!164771))

(declare-fun d!164781 () Bool)

(assert (=> d!164781 (= (array_inv!39320 _keys!600) (bvsge (size!51226 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135128 d!164781))

(declare-fun d!164783 () Bool)

(assert (=> d!164783 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572625 d!164783))

(declare-fun b!1572708 () Bool)

(declare-fun e!877005 () SeekEntryResult!13604)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572708 (= e!877005 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572709 () Bool)

(declare-fun lt!674053 () SeekEntryResult!13604)

(assert (=> b!1572709 (and (bvsge (index!56815 lt!674053) #b00000000000000000000000000000000) (bvslt (index!56815 lt!674053) (size!51226 _keys!600)))))

(declare-fun res!1074662 () Bool)

(assert (=> b!1572709 (= res!1074662 (= (select (arr!50675 _keys!600) (index!56815 lt!674053)) k0!754))))

(declare-fun e!877004 () Bool)

(assert (=> b!1572709 (=> res!1074662 e!877004)))

(declare-fun e!877006 () Bool)

(assert (=> b!1572709 (= e!877006 e!877004)))

(declare-fun b!1572710 () Bool)

(assert (=> b!1572710 (and (bvsge (index!56815 lt!674053) #b00000000000000000000000000000000) (bvslt (index!56815 lt!674053) (size!51226 _keys!600)))))

(assert (=> b!1572710 (= e!877004 (= (select (arr!50675 _keys!600) (index!56815 lt!674053)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572711 () Bool)

(declare-fun e!877007 () Bool)

(assert (=> b!1572711 (= e!877007 (bvsge (x!141595 lt!674053) #b01111111111111111111111111111110))))

(declare-fun b!1572712 () Bool)

(declare-fun e!877008 () SeekEntryResult!13604)

(assert (=> b!1572712 (= e!877008 (Intermediate!13604 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572713 () Bool)

(assert (=> b!1572713 (= e!877007 e!877006)))

(declare-fun res!1074663 () Bool)

(assert (=> b!1572713 (= res!1074663 (and ((_ is Intermediate!13604) lt!674053) (not (undefined!14416 lt!674053)) (bvslt (x!141595 lt!674053) #b01111111111111111111111111111110) (bvsge (x!141595 lt!674053) #b00000000000000000000000000000000) (bvsge (x!141595 lt!674053) #b00000000000000000000000000000000)))))

(assert (=> b!1572713 (=> (not res!1074663) (not e!877006))))

(declare-fun b!1572714 () Bool)

(assert (=> b!1572714 (= e!877005 (Intermediate!13604 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572715 () Bool)

(assert (=> b!1572715 (and (bvsge (index!56815 lt!674053) #b00000000000000000000000000000000) (bvslt (index!56815 lt!674053) (size!51226 _keys!600)))))

(declare-fun res!1074664 () Bool)

(assert (=> b!1572715 (= res!1074664 (= (select (arr!50675 _keys!600) (index!56815 lt!674053)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572715 (=> res!1074664 e!877004)))

(declare-fun b!1572716 () Bool)

(assert (=> b!1572716 (= e!877008 e!877005)))

(declare-fun c!145274 () Bool)

(declare-fun lt!674054 () (_ BitVec 64))

(assert (=> b!1572716 (= c!145274 (or (= lt!674054 k0!754) (= (bvadd lt!674054 lt!674054) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164785 () Bool)

(assert (=> d!164785 e!877007))

(declare-fun c!145273 () Bool)

(assert (=> d!164785 (= c!145273 (and ((_ is Intermediate!13604) lt!674053) (undefined!14416 lt!674053)))))

(assert (=> d!164785 (= lt!674053 e!877008)))

(declare-fun c!145275 () Bool)

(assert (=> d!164785 (= c!145275 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164785 (= lt!674054 (select (arr!50675 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164785 (validMask!0 mask!889)))

(assert (=> d!164785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!674053)))

(assert (= (and d!164785 c!145275) b!1572712))

(assert (= (and d!164785 (not c!145275)) b!1572716))

(assert (= (and b!1572716 c!145274) b!1572714))

(assert (= (and b!1572716 (not c!145274)) b!1572708))

(assert (= (and d!164785 c!145273) b!1572711))

(assert (= (and d!164785 (not c!145273)) b!1572713))

(assert (= (and b!1572713 res!1074663) b!1572709))

(assert (= (and b!1572709 (not res!1074662)) b!1572715))

(assert (= (and b!1572715 (not res!1074664)) b!1572710))

(declare-fun m!1446395 () Bool)

(assert (=> b!1572709 m!1446395))

(assert (=> b!1572708 m!1446363))

(declare-fun m!1446397 () Bool)

(assert (=> b!1572708 m!1446397))

(assert (=> b!1572708 m!1446397))

(declare-fun m!1446399 () Bool)

(assert (=> b!1572708 m!1446399))

(assert (=> b!1572715 m!1446395))

(assert (=> d!164785 m!1446363))

(declare-fun m!1446401 () Bool)

(assert (=> d!164785 m!1446401))

(assert (=> d!164785 m!1446355))

(assert (=> b!1572710 m!1446395))

(assert (=> b!1572626 d!164785))

(declare-fun d!164793 () Bool)

(declare-fun lt!674068 () (_ BitVec 32))

(declare-fun lt!674067 () (_ BitVec 32))

(assert (=> d!164793 (= lt!674068 (bvmul (bvxor lt!674067 (bvlshr lt!674067 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164793 (= lt!674067 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164793 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074665 (let ((h!38389 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141602 (bvmul (bvxor h!38389 (bvlshr h!38389 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141602 (bvlshr x!141602 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074665 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074665 #b00000000000000000000000000000000))))))

(assert (=> d!164793 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!674068 (bvlshr lt!674068 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572626 d!164793))

(check-sat (not d!164785) (not b!1572708))
(check-sat)
