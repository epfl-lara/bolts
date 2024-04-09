; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135266 () Bool)

(assert start!135266)

(declare-fun b!1573189 () Bool)

(declare-fun e!877304 () Bool)

(declare-fun e!877305 () Bool)

(assert (=> b!1573189 (= e!877304 e!877305)))

(declare-fun res!1074927 () Bool)

(assert (=> b!1573189 (=> (not res!1074927) (not e!877305))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105078 0))(
  ( (array!105079 (arr!50693 (Array (_ BitVec 32) (_ BitVec 64))) (size!51244 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105078)

(declare-datatypes ((SeekEntryResult!13622 0))(
  ( (MissingZero!13622 (index!56885 (_ BitVec 32))) (Found!13622 (index!56886 (_ BitVec 32))) (Intermediate!13622 (undefined!14434 Bool) (index!56887 (_ BitVec 32)) (x!141685 (_ BitVec 32))) (Undefined!13622) (MissingVacant!13622 (index!56888 (_ BitVec 32))) )
))
(declare-fun lt!674278 () SeekEntryResult!13622)

(get-info :version)

(assert (=> b!1573189 (= res!1074927 (and (not (undefined!14434 lt!674278)) ((_ is Intermediate!13622) lt!674278) (not (= (select (arr!50693 _keys!600) (index!56887 lt!674278)) k0!754)) (not (= (select (arr!50693 _keys!600) (index!56887 lt!674278)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50693 _keys!600) (index!56887 lt!674278)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56887 lt!674278) #b00000000000000000000000000000000) (bvslt (index!56887 lt!674278) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105078 (_ BitVec 32)) SeekEntryResult!13622)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573189 (= lt!674278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573190 () Bool)

(declare-fun lt!674277 () SeekEntryResult!13622)

(assert (=> b!1573190 (= e!877305 (and (not ((_ is MissingVacant!13622) lt!674277)) ((_ is Found!13622) lt!674277) (not (= (select (arr!50693 _keys!600) (index!56886 lt!674277)) k0!754))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105078 (_ BitVec 32)) SeekEntryResult!13622)

(assert (=> b!1573190 (= lt!674277 (seekKeyOrZeroReturnVacant!0 (x!141685 lt!674278) (index!56887 lt!674278) (index!56887 lt!674278) k0!754 _keys!600 mask!889))))

(declare-fun res!1074929 () Bool)

(assert (=> start!135266 (=> (not res!1074929) (not e!877304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135266 (= res!1074929 (validMask!0 mask!889))))

(assert (=> start!135266 e!877304))

(assert (=> start!135266 true))

(declare-fun array_inv!39338 (array!105078) Bool)

(assert (=> start!135266 (array_inv!39338 _keys!600)))

(declare-fun b!1573187 () Bool)

(declare-fun res!1074926 () Bool)

(assert (=> b!1573187 (=> (not res!1074926) (not e!877304))))

(assert (=> b!1573187 (= res!1074926 (= (size!51244 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573188 () Bool)

(declare-fun res!1074928 () Bool)

(assert (=> b!1573188 (=> (not res!1074928) (not e!877304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573188 (= res!1074928 (validKeyInArray!0 k0!754))))

(assert (= (and start!135266 res!1074929) b!1573187))

(assert (= (and b!1573187 res!1074926) b!1573188))

(assert (= (and b!1573188 res!1074928) b!1573189))

(assert (= (and b!1573189 res!1074927) b!1573190))

(declare-fun m!1446725 () Bool)

(assert (=> b!1573189 m!1446725))

(declare-fun m!1446727 () Bool)

(assert (=> b!1573189 m!1446727))

(assert (=> b!1573189 m!1446727))

(declare-fun m!1446729 () Bool)

(assert (=> b!1573189 m!1446729))

(declare-fun m!1446731 () Bool)

(assert (=> b!1573190 m!1446731))

(declare-fun m!1446733 () Bool)

(assert (=> b!1573190 m!1446733))

(declare-fun m!1446735 () Bool)

(assert (=> start!135266 m!1446735))

(declare-fun m!1446737 () Bool)

(assert (=> start!135266 m!1446737))

(declare-fun m!1446739 () Bool)

(assert (=> b!1573188 m!1446739))

(check-sat (not b!1573189) (not start!135266) (not b!1573188) (not b!1573190))
(check-sat)
(get-model)

(declare-fun b!1573239 () Bool)

(declare-fun e!877334 () SeekEntryResult!13622)

(declare-fun e!877338 () SeekEntryResult!13622)

(assert (=> b!1573239 (= e!877334 e!877338)))

(declare-fun c!145399 () Bool)

(declare-fun lt!674296 () (_ BitVec 64))

(assert (=> b!1573239 (= c!145399 (or (= lt!674296 k0!754) (= (bvadd lt!674296 lt!674296) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573240 () Bool)

(declare-fun lt!674295 () SeekEntryResult!13622)

(assert (=> b!1573240 (and (bvsge (index!56887 lt!674295) #b00000000000000000000000000000000) (bvslt (index!56887 lt!674295) (size!51244 _keys!600)))))

(declare-fun res!1074950 () Bool)

(assert (=> b!1573240 (= res!1074950 (= (select (arr!50693 _keys!600) (index!56887 lt!674295)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877335 () Bool)

(assert (=> b!1573240 (=> res!1074950 e!877335)))

(declare-fun b!1573241 () Bool)

(assert (=> b!1573241 (= e!877338 (Intermediate!13622 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573242 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573242 (= e!877338 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun d!164885 () Bool)

(declare-fun e!877336 () Bool)

(assert (=> d!164885 e!877336))

(declare-fun c!145400 () Bool)

(assert (=> d!164885 (= c!145400 (and ((_ is Intermediate!13622) lt!674295) (undefined!14434 lt!674295)))))

(assert (=> d!164885 (= lt!674295 e!877334)))

(declare-fun c!145401 () Bool)

(assert (=> d!164885 (= c!145401 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164885 (= lt!674296 (select (arr!50693 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164885 (validMask!0 mask!889)))

(assert (=> d!164885 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!674295)))

(declare-fun b!1573243 () Bool)

(assert (=> b!1573243 (= e!877334 (Intermediate!13622 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573244 () Bool)

(assert (=> b!1573244 (= e!877336 (bvsge (x!141685 lt!674295) #b01111111111111111111111111111110))))

(declare-fun b!1573245 () Bool)

(assert (=> b!1573245 (and (bvsge (index!56887 lt!674295) #b00000000000000000000000000000000) (bvslt (index!56887 lt!674295) (size!51244 _keys!600)))))

(declare-fun res!1074948 () Bool)

(assert (=> b!1573245 (= res!1074948 (= (select (arr!50693 _keys!600) (index!56887 lt!674295)) k0!754))))

(assert (=> b!1573245 (=> res!1074948 e!877335)))

(declare-fun e!877337 () Bool)

(assert (=> b!1573245 (= e!877337 e!877335)))

(declare-fun b!1573246 () Bool)

(assert (=> b!1573246 (and (bvsge (index!56887 lt!674295) #b00000000000000000000000000000000) (bvslt (index!56887 lt!674295) (size!51244 _keys!600)))))

(assert (=> b!1573246 (= e!877335 (= (select (arr!50693 _keys!600) (index!56887 lt!674295)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573247 () Bool)

(assert (=> b!1573247 (= e!877336 e!877337)))

(declare-fun res!1074949 () Bool)

(assert (=> b!1573247 (= res!1074949 (and ((_ is Intermediate!13622) lt!674295) (not (undefined!14434 lt!674295)) (bvslt (x!141685 lt!674295) #b01111111111111111111111111111110) (bvsge (x!141685 lt!674295) #b00000000000000000000000000000000) (bvsge (x!141685 lt!674295) #b00000000000000000000000000000000)))))

(assert (=> b!1573247 (=> (not res!1074949) (not e!877337))))

(assert (= (and d!164885 c!145401) b!1573243))

(assert (= (and d!164885 (not c!145401)) b!1573239))

(assert (= (and b!1573239 c!145399) b!1573241))

(assert (= (and b!1573239 (not c!145399)) b!1573242))

(assert (= (and d!164885 c!145400) b!1573244))

(assert (= (and d!164885 (not c!145400)) b!1573247))

(assert (= (and b!1573247 res!1074949) b!1573245))

(assert (= (and b!1573245 (not res!1074948)) b!1573240))

(assert (= (and b!1573240 (not res!1074950)) b!1573246))

(declare-fun m!1446765 () Bool)

(assert (=> b!1573245 m!1446765))

(assert (=> b!1573246 m!1446765))

(assert (=> d!164885 m!1446727))

(declare-fun m!1446767 () Bool)

(assert (=> d!164885 m!1446767))

(assert (=> d!164885 m!1446735))

(assert (=> b!1573242 m!1446727))

(declare-fun m!1446769 () Bool)

(assert (=> b!1573242 m!1446769))

(assert (=> b!1573242 m!1446769))

(declare-fun m!1446771 () Bool)

(assert (=> b!1573242 m!1446771))

(assert (=> b!1573240 m!1446765))

(assert (=> b!1573189 d!164885))

(declare-fun d!164893 () Bool)

(declare-fun lt!674302 () (_ BitVec 32))

(declare-fun lt!674301 () (_ BitVec 32))

(assert (=> d!164893 (= lt!674302 (bvmul (bvxor lt!674301 (bvlshr lt!674301 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164893 (= lt!674301 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164893 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074951 (let ((h!38396 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141689 (bvmul (bvxor h!38396 (bvlshr h!38396 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141689 (bvlshr x!141689 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074951 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074951 #b00000000000000000000000000000000))))))

(assert (=> d!164893 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!674302 (bvlshr lt!674302 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573189 d!164893))

(declare-fun d!164895 () Bool)

(assert (=> d!164895 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135266 d!164895))

(declare-fun d!164897 () Bool)

(assert (=> d!164897 (= (array_inv!39338 _keys!600) (bvsge (size!51244 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135266 d!164897))

(declare-fun d!164899 () Bool)

(assert (=> d!164899 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573188 d!164899))

(declare-fun b!1573314 () Bool)

(declare-fun e!877375 () SeekEntryResult!13622)

(declare-fun e!877376 () SeekEntryResult!13622)

(assert (=> b!1573314 (= e!877375 e!877376)))

(declare-fun c!145428 () Bool)

(declare-fun lt!674326 () (_ BitVec 64))

(assert (=> b!1573314 (= c!145428 (= lt!674326 k0!754))))

(declare-fun b!1573315 () Bool)

(assert (=> b!1573315 (= e!877376 (Found!13622 (index!56887 lt!674278)))))

(declare-fun e!877377 () SeekEntryResult!13622)

(declare-fun b!1573316 () Bool)

(assert (=> b!1573316 (= e!877377 (seekKeyOrZeroReturnVacant!0 (bvadd (x!141685 lt!674278) #b00000000000000000000000000000001) (nextIndex!0 (index!56887 lt!674278) (x!141685 lt!674278) mask!889) (index!56887 lt!674278) k0!754 _keys!600 mask!889))))

(declare-fun b!1573317 () Bool)

(assert (=> b!1573317 (= e!877375 Undefined!13622)))

(declare-fun b!1573319 () Bool)

(assert (=> b!1573319 (= e!877377 (MissingVacant!13622 (index!56887 lt!674278)))))

(declare-fun b!1573318 () Bool)

(declare-fun c!145426 () Bool)

(assert (=> b!1573318 (= c!145426 (= lt!674326 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573318 (= e!877376 e!877377)))

(declare-fun d!164901 () Bool)

(declare-fun lt!674325 () SeekEntryResult!13622)

(assert (=> d!164901 (and (or ((_ is Undefined!13622) lt!674325) (not ((_ is Found!13622) lt!674325)) (and (bvsge (index!56886 lt!674325) #b00000000000000000000000000000000) (bvslt (index!56886 lt!674325) (size!51244 _keys!600)))) (or ((_ is Undefined!13622) lt!674325) ((_ is Found!13622) lt!674325) (not ((_ is MissingVacant!13622) lt!674325)) (not (= (index!56888 lt!674325) (index!56887 lt!674278))) (and (bvsge (index!56888 lt!674325) #b00000000000000000000000000000000) (bvslt (index!56888 lt!674325) (size!51244 _keys!600)))) (or ((_ is Undefined!13622) lt!674325) (ite ((_ is Found!13622) lt!674325) (= (select (arr!50693 _keys!600) (index!56886 lt!674325)) k0!754) (and ((_ is MissingVacant!13622) lt!674325) (= (index!56888 lt!674325) (index!56887 lt!674278)) (= (select (arr!50693 _keys!600) (index!56888 lt!674325)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!164901 (= lt!674325 e!877375)))

(declare-fun c!145427 () Bool)

(assert (=> d!164901 (= c!145427 (bvsge (x!141685 lt!674278) #b01111111111111111111111111111110))))

(assert (=> d!164901 (= lt!674326 (select (arr!50693 _keys!600) (index!56887 lt!674278)))))

(assert (=> d!164901 (validMask!0 mask!889)))

(assert (=> d!164901 (= (seekKeyOrZeroReturnVacant!0 (x!141685 lt!674278) (index!56887 lt!674278) (index!56887 lt!674278) k0!754 _keys!600 mask!889) lt!674325)))

(assert (= (and d!164901 c!145427) b!1573317))

(assert (= (and d!164901 (not c!145427)) b!1573314))

(assert (= (and b!1573314 c!145428) b!1573315))

(assert (= (and b!1573314 (not c!145428)) b!1573318))

(assert (= (and b!1573318 c!145426) b!1573319))

(assert (= (and b!1573318 (not c!145426)) b!1573316))

(declare-fun m!1446789 () Bool)

(assert (=> b!1573316 m!1446789))

(assert (=> b!1573316 m!1446789))

(declare-fun m!1446791 () Bool)

(assert (=> b!1573316 m!1446791))

(declare-fun m!1446793 () Bool)

(assert (=> d!164901 m!1446793))

(declare-fun m!1446795 () Bool)

(assert (=> d!164901 m!1446795))

(assert (=> d!164901 m!1446725))

(assert (=> d!164901 m!1446735))

(assert (=> b!1573190 d!164901))

(check-sat (not b!1573316) (not d!164901) (not d!164885) (not b!1573242))
(check-sat)
