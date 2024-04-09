; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135026 () Bool)

(assert start!135026)

(declare-fun res!1074375 () Bool)

(declare-fun e!876741 () Bool)

(assert (=> start!135026 (=> (not res!1074375) (not e!876741))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135026 (= res!1074375 (validMask!0 mask!889))))

(assert (=> start!135026 e!876741))

(assert (=> start!135026 true))

(declare-datatypes ((array!104985 0))(
  ( (array!104986 (arr!50654 (Array (_ BitVec 32) (_ BitVec 64))) (size!51205 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104985)

(declare-fun array_inv!39299 (array!104985) Bool)

(assert (=> start!135026 (array_inv!39299 _keys!600)))

(declare-fun b!1572273 () Bool)

(declare-fun res!1074376 () Bool)

(assert (=> b!1572273 (=> (not res!1074376) (not e!876741))))

(assert (=> b!1572273 (= res!1074376 (= (size!51205 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572274 () Bool)

(declare-fun res!1074377 () Bool)

(assert (=> b!1572274 (=> (not res!1074377) (not e!876741))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572274 (= res!1074377 (validKeyInArray!0 k0!754))))

(declare-fun b!1572275 () Bool)

(declare-datatypes ((SeekEntryResult!13583 0))(
  ( (MissingZero!13583 (index!56729 (_ BitVec 32))) (Found!13583 (index!56730 (_ BitVec 32))) (Intermediate!13583 (undefined!14395 Bool) (index!56731 (_ BitVec 32)) (x!141506 (_ BitVec 32))) (Undefined!13583) (MissingVacant!13583 (index!56732 (_ BitVec 32))) )
))
(declare-fun lt!673894 () SeekEntryResult!13583)

(get-info :version)

(assert (=> b!1572275 (= e!876741 (and ((_ is Intermediate!13583) lt!673894) (not (undefined!14395 lt!673894)) (or (bvslt (index!56731 lt!673894) #b00000000000000000000000000000000) (bvsge (index!56731 lt!673894) (size!51205 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104985 (_ BitVec 32)) SeekEntryResult!13583)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572275 (= lt!673894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135026 res!1074375) b!1572273))

(assert (= (and b!1572273 res!1074376) b!1572274))

(assert (= (and b!1572274 res!1074377) b!1572275))

(declare-fun m!1446089 () Bool)

(assert (=> start!135026 m!1446089))

(declare-fun m!1446091 () Bool)

(assert (=> start!135026 m!1446091))

(declare-fun m!1446093 () Bool)

(assert (=> b!1572274 m!1446093))

(declare-fun m!1446095 () Bool)

(assert (=> b!1572275 m!1446095))

(assert (=> b!1572275 m!1446095))

(declare-fun m!1446097 () Bool)

(assert (=> b!1572275 m!1446097))

(check-sat (not b!1572274) (not start!135026) (not b!1572275))
(check-sat)
(get-model)

(declare-fun d!164697 () Bool)

(assert (=> d!164697 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572274 d!164697))

(declare-fun d!164699 () Bool)

(assert (=> d!164699 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135026 d!164699))

(declare-fun d!164709 () Bool)

(assert (=> d!164709 (= (array_inv!39299 _keys!600) (bvsge (size!51205 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135026 d!164709))

(declare-fun b!1572330 () Bool)

(declare-fun e!876774 () SeekEntryResult!13583)

(assert (=> b!1572330 (= e!876774 (Intermediate!13583 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572331 () Bool)

(declare-fun lt!673915 () SeekEntryResult!13583)

(assert (=> b!1572331 (and (bvsge (index!56731 lt!673915) #b00000000000000000000000000000000) (bvslt (index!56731 lt!673915) (size!51205 _keys!600)))))

(declare-fun res!1074405 () Bool)

(assert (=> b!1572331 (= res!1074405 (= (select (arr!50654 _keys!600) (index!56731 lt!673915)) k0!754))))

(declare-fun e!876775 () Bool)

(assert (=> b!1572331 (=> res!1074405 e!876775)))

(declare-fun e!876773 () Bool)

(assert (=> b!1572331 (= e!876773 e!876775)))

(declare-fun b!1572332 () Bool)

(declare-fun e!876777 () Bool)

(assert (=> b!1572332 (= e!876777 e!876773)))

(declare-fun res!1074403 () Bool)

(assert (=> b!1572332 (= res!1074403 (and ((_ is Intermediate!13583) lt!673915) (not (undefined!14395 lt!673915)) (bvslt (x!141506 lt!673915) #b01111111111111111111111111111110) (bvsge (x!141506 lt!673915) #b00000000000000000000000000000000) (bvsge (x!141506 lt!673915) #b00000000000000000000000000000000)))))

(assert (=> b!1572332 (=> (not res!1074403) (not e!876773))))

(declare-fun b!1572333 () Bool)

(assert (=> b!1572333 (and (bvsge (index!56731 lt!673915) #b00000000000000000000000000000000) (bvslt (index!56731 lt!673915) (size!51205 _keys!600)))))

(assert (=> b!1572333 (= e!876775 (= (select (arr!50654 _keys!600) (index!56731 lt!673915)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572334 () Bool)

(declare-fun e!876776 () SeekEntryResult!13583)

(assert (=> b!1572334 (= e!876776 e!876774)))

(declare-fun c!145211 () Bool)

(declare-fun lt!673914 () (_ BitVec 64))

(assert (=> b!1572334 (= c!145211 (or (= lt!673914 k0!754) (= (bvadd lt!673914 lt!673914) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572335 () Bool)

(assert (=> b!1572335 (= e!876776 (Intermediate!13583 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!164711 () Bool)

(assert (=> d!164711 e!876777))

(declare-fun c!145210 () Bool)

(assert (=> d!164711 (= c!145210 (and ((_ is Intermediate!13583) lt!673915) (undefined!14395 lt!673915)))))

(assert (=> d!164711 (= lt!673915 e!876776)))

(declare-fun c!145212 () Bool)

(assert (=> d!164711 (= c!145212 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164711 (= lt!673914 (select (arr!50654 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164711 (validMask!0 mask!889)))

(assert (=> d!164711 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!673915)))

(declare-fun b!1572336 () Bool)

(assert (=> b!1572336 (and (bvsge (index!56731 lt!673915) #b00000000000000000000000000000000) (bvslt (index!56731 lt!673915) (size!51205 _keys!600)))))

(declare-fun res!1074404 () Bool)

(assert (=> b!1572336 (= res!1074404 (= (select (arr!50654 _keys!600) (index!56731 lt!673915)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572336 (=> res!1074404 e!876775)))

(declare-fun b!1572337 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572337 (= e!876774 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572338 () Bool)

(assert (=> b!1572338 (= e!876777 (bvsge (x!141506 lt!673915) #b01111111111111111111111111111110))))

(assert (= (and d!164711 c!145212) b!1572335))

(assert (= (and d!164711 (not c!145212)) b!1572334))

(assert (= (and b!1572334 c!145211) b!1572330))

(assert (= (and b!1572334 (not c!145211)) b!1572337))

(assert (= (and d!164711 c!145210) b!1572338))

(assert (= (and d!164711 (not c!145210)) b!1572332))

(assert (= (and b!1572332 res!1074403) b!1572331))

(assert (= (and b!1572331 (not res!1074405)) b!1572336))

(assert (= (and b!1572336 (not res!1074404)) b!1572333))

(declare-fun m!1446117 () Bool)

(assert (=> b!1572333 m!1446117))

(assert (=> b!1572336 m!1446117))

(assert (=> b!1572331 m!1446117))

(assert (=> b!1572337 m!1446095))

(declare-fun m!1446119 () Bool)

(assert (=> b!1572337 m!1446119))

(assert (=> b!1572337 m!1446119))

(declare-fun m!1446121 () Bool)

(assert (=> b!1572337 m!1446121))

(assert (=> d!164711 m!1446095))

(declare-fun m!1446123 () Bool)

(assert (=> d!164711 m!1446123))

(assert (=> d!164711 m!1446089))

(assert (=> b!1572275 d!164711))

(declare-fun d!164721 () Bool)

(declare-fun lt!673925 () (_ BitVec 32))

(declare-fun lt!673924 () (_ BitVec 32))

(assert (=> d!164721 (= lt!673925 (bvmul (bvxor lt!673924 (bvlshr lt!673924 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164721 (= lt!673924 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164721 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074406 (let ((h!38382 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141511 (bvmul (bvxor h!38382 (bvlshr h!38382 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141511 (bvlshr x!141511 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074406 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074406 #b00000000000000000000000000000000))))))

(assert (=> d!164721 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!673925 (bvlshr lt!673925 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572275 d!164721))

(check-sat (not b!1572337) (not d!164711))
(check-sat)
