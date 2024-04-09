; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135264 () Bool)

(assert start!135264)

(declare-fun b!1573177 () Bool)

(declare-fun e!877296 () Bool)

(declare-fun e!877294 () Bool)

(assert (=> b!1573177 (= e!877296 e!877294)))

(declare-fun res!1074916 () Bool)

(assert (=> b!1573177 (=> (not res!1074916) (not e!877294))))

(declare-fun k!754 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13621 0))(
  ( (MissingZero!13621 (index!56881 (_ BitVec 32))) (Found!13621 (index!56882 (_ BitVec 32))) (Intermediate!13621 (undefined!14433 Bool) (index!56883 (_ BitVec 32)) (x!141684 (_ BitVec 32))) (Undefined!13621) (MissingVacant!13621 (index!56884 (_ BitVec 32))) )
))
(declare-fun lt!674271 () SeekEntryResult!13621)

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105076 0))(
  ( (array!105077 (arr!50692 (Array (_ BitVec 32) (_ BitVec 64))) (size!51243 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105076)

(assert (=> b!1573177 (= res!1074916 (and (not (undefined!14433 lt!674271)) (is-Intermediate!13621 lt!674271) (not (= (select (arr!50692 _keys!600) (index!56883 lt!674271)) k!754)) (not (= (select (arr!50692 _keys!600) (index!56883 lt!674271)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50692 _keys!600) (index!56883 lt!674271)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56883 lt!674271) #b00000000000000000000000000000000) (bvslt (index!56883 lt!674271) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105076 (_ BitVec 32)) SeekEntryResult!13621)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573177 (= lt!674271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun res!1074914 () Bool)

(assert (=> start!135264 (=> (not res!1074914) (not e!877296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135264 (= res!1074914 (validMask!0 mask!889))))

(assert (=> start!135264 e!877296))

(assert (=> start!135264 true))

(declare-fun array_inv!39337 (array!105076) Bool)

(assert (=> start!135264 (array_inv!39337 _keys!600)))

(declare-fun b!1573175 () Bool)

(declare-fun res!1074917 () Bool)

(assert (=> b!1573175 (=> (not res!1074917) (not e!877296))))

(assert (=> b!1573175 (= res!1074917 (= (size!51243 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573176 () Bool)

(declare-fun res!1074915 () Bool)

(assert (=> b!1573176 (=> (not res!1074915) (not e!877296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573176 (= res!1074915 (validKeyInArray!0 k!754))))

(declare-fun b!1573178 () Bool)

(declare-fun lt!674272 () SeekEntryResult!13621)

(assert (=> b!1573178 (= e!877294 (and (not (is-MissingVacant!13621 lt!674272)) (is-Found!13621 lt!674272) (not (= (select (arr!50692 _keys!600) (index!56882 lt!674272)) k!754))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105076 (_ BitVec 32)) SeekEntryResult!13621)

(assert (=> b!1573178 (= lt!674272 (seekKeyOrZeroReturnVacant!0 (x!141684 lt!674271) (index!56883 lt!674271) (index!56883 lt!674271) k!754 _keys!600 mask!889))))

(assert (= (and start!135264 res!1074914) b!1573175))

(assert (= (and b!1573175 res!1074917) b!1573176))

(assert (= (and b!1573176 res!1074915) b!1573177))

(assert (= (and b!1573177 res!1074916) b!1573178))

(declare-fun m!1446709 () Bool)

(assert (=> b!1573177 m!1446709))

(declare-fun m!1446711 () Bool)

(assert (=> b!1573177 m!1446711))

(assert (=> b!1573177 m!1446711))

(declare-fun m!1446713 () Bool)

(assert (=> b!1573177 m!1446713))

(declare-fun m!1446715 () Bool)

(assert (=> start!135264 m!1446715))

(declare-fun m!1446717 () Bool)

(assert (=> start!135264 m!1446717))

(declare-fun m!1446719 () Bool)

(assert (=> b!1573176 m!1446719))

(declare-fun m!1446721 () Bool)

(assert (=> b!1573178 m!1446721))

(declare-fun m!1446723 () Bool)

(assert (=> b!1573178 m!1446723))

(push 1)

(assert (not b!1573178))

(assert (not b!1573177))

(assert (not start!135264))

(assert (not b!1573176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1573233 () Bool)

(declare-fun e!877333 () SeekEntryResult!13621)

(declare-fun e!877332 () SeekEntryResult!13621)

(assert (=> b!1573233 (= e!877333 e!877332)))

(declare-fun c!145398 () Bool)

(declare-fun lt!674293 () (_ BitVec 64))

(assert (=> b!1573233 (= c!145398 (= lt!674293 k!754))))

(declare-fun b!1573234 () Bool)

(assert (=> b!1573234 (= e!877332 (Found!13621 (index!56883 lt!674271)))))

(declare-fun e!877331 () SeekEntryResult!13621)

(declare-fun b!1573235 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573235 (= e!877331 (seekKeyOrZeroReturnVacant!0 (bvadd (x!141684 lt!674271) #b00000000000000000000000000000001) (nextIndex!0 (index!56883 lt!674271) (x!141684 lt!674271) mask!889) (index!56883 lt!674271) k!754 _keys!600 mask!889))))

(declare-fun b!1573236 () Bool)

(assert (=> b!1573236 (= e!877333 Undefined!13621)))

(declare-fun d!164887 () Bool)

(declare-fun lt!674294 () SeekEntryResult!13621)

(assert (=> d!164887 (and (or (is-Undefined!13621 lt!674294) (not (is-Found!13621 lt!674294)) (and (bvsge (index!56882 lt!674294) #b00000000000000000000000000000000) (bvslt (index!56882 lt!674294) (size!51243 _keys!600)))) (or (is-Undefined!13621 lt!674294) (is-Found!13621 lt!674294) (not (is-MissingVacant!13621 lt!674294)) (not (= (index!56884 lt!674294) (index!56883 lt!674271))) (and (bvsge (index!56884 lt!674294) #b00000000000000000000000000000000) (bvslt (index!56884 lt!674294) (size!51243 _keys!600)))) (or (is-Undefined!13621 lt!674294) (ite (is-Found!13621 lt!674294) (= (select (arr!50692 _keys!600) (index!56882 lt!674294)) k!754) (and (is-MissingVacant!13621 lt!674294) (= (index!56884 lt!674294) (index!56883 lt!674271)) (= (select (arr!50692 _keys!600) (index!56884 lt!674294)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!164887 (= lt!674294 e!877333)))

(declare-fun c!145397 () Bool)

(assert (=> d!164887 (= c!145397 (bvsge (x!141684 lt!674271) #b01111111111111111111111111111110))))

(assert (=> d!164887 (= lt!674293 (select (arr!50692 _keys!600) (index!56883 lt!674271)))))

(assert (=> d!164887 (validMask!0 mask!889)))

(assert (=> d!164887 (= (seekKeyOrZeroReturnVacant!0 (x!141684 lt!674271) (index!56883 lt!674271) (index!56883 lt!674271) k!754 _keys!600 mask!889) lt!674294)))

(declare-fun b!1573237 () Bool)

(assert (=> b!1573237 (= e!877331 (MissingVacant!13621 (index!56883 lt!674271)))))

(declare-fun b!1573238 () Bool)

(declare-fun c!145396 () Bool)

(assert (=> b!1573238 (= c!145396 (= lt!674293 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573238 (= e!877332 e!877331)))

(assert (= (and d!164887 c!145397) b!1573236))

(assert (= (and d!164887 (not c!145397)) b!1573233))

(assert (= (and b!1573233 c!145398) b!1573234))

(assert (= (and b!1573233 (not c!145398)) b!1573238))

(assert (= (and b!1573238 c!145396) b!1573237))

(assert (= (and b!1573238 (not c!145396)) b!1573235))

(declare-fun m!1446757 () Bool)

(assert (=> b!1573235 m!1446757))

(assert (=> b!1573235 m!1446757))

(declare-fun m!1446759 () Bool)

(assert (=> b!1573235 m!1446759))

(declare-fun m!1446761 () Bool)

(assert (=> d!164887 m!1446761))

(declare-fun m!1446763 () Bool)

(assert (=> d!164887 m!1446763))

(assert (=> d!164887 m!1446709))

(assert (=> d!164887 m!1446715))

(assert (=> b!1573178 d!164887))

(declare-fun b!1573266 () Bool)

(declare-fun e!877351 () Bool)

(declare-fun lt!674307 () SeekEntryResult!13621)

(assert (=> b!1573266 (= e!877351 (bvsge (x!141684 lt!674307) #b01111111111111111111111111111110))))

(declare-fun b!1573267 () Bool)

(declare-fun e!877350 () SeekEntryResult!13621)

(assert (=> b!1573267 (= e!877350 (Intermediate!13621 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573268 () Bool)

(assert (=> b!1573268 (and (bvsge (index!56883 lt!674307) #b00000000000000000000000000000000) (bvslt (index!56883 lt!674307) (size!51243 _keys!600)))))

(declare-fun res!1074958 () Bool)

(assert (=> b!1573268 (= res!1074958 (= (select (arr!50692 _keys!600) (index!56883 lt!674307)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877353 () Bool)

(assert (=> b!1573268 (=> res!1074958 e!877353)))

(declare-fun b!1573269 () Bool)

(declare-fun e!877349 () SeekEntryResult!13621)

(assert (=> b!1573269 (= e!877350 e!877349)))

(declare-fun c!145410 () Bool)

(declare-fun lt!674308 () (_ BitVec 64))

(assert (=> b!1573269 (= c!145410 (or (= lt!674308 k!754) (= (bvadd lt!674308 lt!674308) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573270 () Bool)

(assert (=> b!1573270 (and (bvsge (index!56883 lt!674307) #b00000000000000000000000000000000) (bvslt (index!56883 lt!674307) (size!51243 _keys!600)))))

(assert (=> b!1573270 (= e!877353 (= (select (arr!50692 _keys!600) (index!56883 lt!674307)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!164891 () Bool)

(assert (=> d!164891 e!877351))

(declare-fun c!145409 () Bool)

(assert (=> d!164891 (= c!145409 (and (is-Intermediate!13621 lt!674307) (undefined!14433 lt!674307)))))

(assert (=> d!164891 (= lt!674307 e!877350)))

(declare-fun c!145408 () Bool)

(assert (=> d!164891 (= c!145408 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164891 (= lt!674308 (select (arr!50692 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164891 (validMask!0 mask!889)))

(assert (=> d!164891 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674307)))

(declare-fun b!1573271 () Bool)

(assert (=> b!1573271 (= e!877349 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573272 () Bool)

(declare-fun e!877352 () Bool)

(assert (=> b!1573272 (= e!877351 e!877352)))

(declare-fun res!1074959 () Bool)

(assert (=> b!1573272 (= res!1074959 (and (is-Intermediate!13621 lt!674307) (not (undefined!14433 lt!674307)) (bvslt (x!141684 lt!674307) #b01111111111111111111111111111110) (bvsge (x!141684 lt!674307) #b00000000000000000000000000000000) (bvsge (x!141684 lt!674307) #b00000000000000000000000000000000)))))

(assert (=> b!1573272 (=> (not res!1074959) (not e!877352))))

(declare-fun b!1573273 () Bool)

(assert (=> b!1573273 (= e!877349 (Intermediate!13621 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573274 () Bool)

(assert (=> b!1573274 (and (bvsge (index!56883 lt!674307) #b00000000000000000000000000000000) (bvslt (index!56883 lt!674307) (size!51243 _keys!600)))))

(declare-fun res!1074960 () Bool)

(assert (=> b!1573274 (= res!1074960 (= (select (arr!50692 _keys!600) (index!56883 lt!674307)) k!754))))

(assert (=> b!1573274 (=> res!1074960 e!877353)))

(assert (=> b!1573274 (= e!877352 e!877353)))

(assert (= (and d!164891 c!145408) b!1573267))

(assert (= (and d!164891 (not c!145408)) b!1573269))

(assert (= (and b!1573269 c!145410) b!1573273))

(assert (= (and b!1573269 (not c!145410)) b!1573271))

(assert (= (and d!164891 c!145409) b!1573266))

(assert (= (and d!164891 (not c!145409)) b!1573272))

(assert (= (and b!1573272 res!1074959) b!1573274))

(assert (= (and b!1573274 (not res!1074960)) b!1573268))

(assert (= (and b!1573268 (not res!1074958)) b!1573270))

(declare-fun m!1446773 () Bool)

(assert (=> b!1573274 m!1446773))

(assert (=> b!1573268 m!1446773))

(assert (=> b!1573270 m!1446773))

(assert (=> b!1573271 m!1446711))

(declare-fun m!1446775 () Bool)

(assert (=> b!1573271 m!1446775))

(assert (=> b!1573271 m!1446775))

(declare-fun m!1446777 () Bool)

(assert (=> b!1573271 m!1446777))

(assert (=> d!164891 m!1446711))

(declare-fun m!1446779 () Bool)

(assert (=> d!164891 m!1446779))

(assert (=> d!164891 m!1446715))

(assert (=> b!1573177 d!164891))

(declare-fun d!164903 () Bool)

(declare-fun lt!674318 () (_ BitVec 32))

(declare-fun lt!674317 () (_ BitVec 32))

(assert (=> d!164903 (= lt!674318 (bvmul (bvxor lt!674317 (bvlshr lt!674317 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164903 (= lt!674317 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164903 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074961 (let ((h!38397 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141691 (bvmul (bvxor h!38397 (bvlshr h!38397 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141691 (bvlshr x!141691 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074961 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074961 #b00000000000000000000000000000000))))))

(assert (=> d!164903 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674318 (bvlshr lt!674318 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573177 d!164903))

(declare-fun d!164905 () Bool)

(assert (=> d!164905 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135264 d!164905))

(declare-fun d!164909 () Bool)

(assert (=> d!164909 (= (array_inv!39337 _keys!600) (bvsge (size!51243 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135264 d!164909))

(declare-fun d!164911 () Bool)

(assert (=> d!164911 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573176 d!164911))

(push 1)

