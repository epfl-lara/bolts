; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135872 () Bool)

(assert start!135872)

(declare-fun res!1076384 () Bool)

(declare-fun e!878541 () Bool)

(assert (=> start!135872 (=> (not res!1076384) (not e!878541))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135872 (= res!1076384 (validMask!0 mask!898))))

(assert (=> start!135872 e!878541))

(assert (=> start!135872 true))

(declare-datatypes ((array!105363 0))(
  ( (array!105364 (arr!50816 (Array (_ BitVec 32) (_ BitVec 64))) (size!51367 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105363)

(declare-fun array_inv!39461 (array!105363) Bool)

(assert (=> start!135872 (array_inv!39461 _keys!605)))

(declare-fun b!1575153 () Bool)

(declare-fun res!1076383 () Bool)

(assert (=> b!1575153 (=> (not res!1076383) (not e!878541))))

(assert (=> b!1575153 (= res!1076383 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51367 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575154 () Bool)

(declare-fun res!1076382 () Bool)

(assert (=> b!1575154 (=> (not res!1076382) (not e!878541))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575154 (= res!1076382 (validKeyInArray!0 k0!761))))

(declare-datatypes ((SeekEntryResult!13697 0))(
  ( (MissingZero!13697 (index!57185 (_ BitVec 32))) (Found!13697 (index!57186 (_ BitVec 32))) (Intermediate!13697 (undefined!14509 Bool) (index!57187 (_ BitVec 32)) (x!142148 (_ BitVec 32))) (Undefined!13697) (MissingVacant!13697 (index!57188 (_ BitVec 32))) )
))
(declare-fun lt!675055 () SeekEntryResult!13697)

(declare-fun b!1575155 () Bool)

(get-info :version)

(assert (=> b!1575155 (= e!878541 (and ((_ is Intermediate!13697) lt!675055) (not (undefined!14509 lt!675055)) (= (select (arr!50816 _keys!605) (index!57187 lt!675055)) k0!761) (or (bvslt (index!57187 lt!675055) #b00000000000000000000000000000000) (bvsge (index!57187 lt!675055) (size!51367 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105363 (_ BitVec 32)) SeekEntryResult!13697)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575155 (= lt!675055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135872 res!1076384) b!1575153))

(assert (= (and b!1575153 res!1076383) b!1575154))

(assert (= (and b!1575154 res!1076382) b!1575155))

(declare-fun m!1448263 () Bool)

(assert (=> start!135872 m!1448263))

(declare-fun m!1448265 () Bool)

(assert (=> start!135872 m!1448265))

(declare-fun m!1448267 () Bool)

(assert (=> b!1575154 m!1448267))

(declare-fun m!1448269 () Bool)

(assert (=> b!1575155 m!1448269))

(declare-fun m!1448271 () Bool)

(assert (=> b!1575155 m!1448271))

(assert (=> b!1575155 m!1448271))

(declare-fun m!1448273 () Bool)

(assert (=> b!1575155 m!1448273))

(check-sat (not b!1575154) (not start!135872) (not b!1575155))
(check-sat)
(get-model)

(declare-fun d!165327 () Bool)

(assert (=> d!165327 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575154 d!165327))

(declare-fun d!165329 () Bool)

(assert (=> d!165329 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135872 d!165329))

(declare-fun d!165339 () Bool)

(assert (=> d!165339 (= (array_inv!39461 _keys!605) (bvsge (size!51367 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135872 d!165339))

(declare-fun b!1575183 () Bool)

(declare-fun lt!675064 () SeekEntryResult!13697)

(assert (=> b!1575183 (and (bvsge (index!57187 lt!675064) #b00000000000000000000000000000000) (bvslt (index!57187 lt!675064) (size!51367 _keys!605)))))

(declare-fun res!1076402 () Bool)

(assert (=> b!1575183 (= res!1076402 (= (select (arr!50816 _keys!605) (index!57187 lt!675064)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878559 () Bool)

(assert (=> b!1575183 (=> res!1076402 e!878559)))

(declare-fun b!1575184 () Bool)

(declare-fun e!878558 () SeekEntryResult!13697)

(assert (=> b!1575184 (= e!878558 (Intermediate!13697 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575185 () Bool)

(declare-fun e!878561 () Bool)

(declare-fun e!878560 () Bool)

(assert (=> b!1575185 (= e!878561 e!878560)))

(declare-fun res!1076400 () Bool)

(assert (=> b!1575185 (= res!1076400 (and ((_ is Intermediate!13697) lt!675064) (not (undefined!14509 lt!675064)) (bvslt (x!142148 lt!675064) #b01111111111111111111111111111110) (bvsge (x!142148 lt!675064) #b00000000000000000000000000000000) (bvsge (x!142148 lt!675064) #b00000000000000000000000000000000)))))

(assert (=> b!1575185 (=> (not res!1076400) (not e!878560))))

(declare-fun b!1575186 () Bool)

(assert (=> b!1575186 (and (bvsge (index!57187 lt!675064) #b00000000000000000000000000000000) (bvslt (index!57187 lt!675064) (size!51367 _keys!605)))))

(declare-fun res!1076401 () Bool)

(assert (=> b!1575186 (= res!1076401 (= (select (arr!50816 _keys!605) (index!57187 lt!675064)) k0!761))))

(assert (=> b!1575186 (=> res!1076401 e!878559)))

(assert (=> b!1575186 (= e!878560 e!878559)))

(declare-fun b!1575187 () Bool)

(assert (=> b!1575187 (= e!878561 (bvsge (x!142148 lt!675064) #b01111111111111111111111111111110))))

(declare-fun b!1575189 () Bool)

(assert (=> b!1575189 (and (bvsge (index!57187 lt!675064) #b00000000000000000000000000000000) (bvslt (index!57187 lt!675064) (size!51367 _keys!605)))))

(assert (=> b!1575189 (= e!878559 (= (select (arr!50816 _keys!605) (index!57187 lt!675064)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575190 () Bool)

(declare-fun e!878562 () SeekEntryResult!13697)

(assert (=> b!1575190 (= e!878562 e!878558)))

(declare-fun c!145660 () Bool)

(declare-fun lt!675063 () (_ BitVec 64))

(assert (=> b!1575190 (= c!145660 (or (= lt!675063 k0!761) (= (bvadd lt!675063 lt!675063) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575191 () Bool)

(assert (=> b!1575191 (= e!878562 (Intermediate!13697 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165341 () Bool)

(assert (=> d!165341 e!878561))

(declare-fun c!145661 () Bool)

(assert (=> d!165341 (= c!145661 (and ((_ is Intermediate!13697) lt!675064) (undefined!14509 lt!675064)))))

(assert (=> d!165341 (= lt!675064 e!878562)))

(declare-fun c!145662 () Bool)

(assert (=> d!165341 (= c!145662 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165341 (= lt!675063 (select (arr!50816 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165341 (validMask!0 mask!898)))

(assert (=> d!165341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675064)))

(declare-fun b!1575188 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575188 (= e!878558 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and d!165341 c!145662) b!1575191))

(assert (= (and d!165341 (not c!145662)) b!1575190))

(assert (= (and b!1575190 c!145660) b!1575184))

(assert (= (and b!1575190 (not c!145660)) b!1575188))

(assert (= (and d!165341 c!145661) b!1575187))

(assert (= (and d!165341 (not c!145661)) b!1575185))

(assert (= (and b!1575185 res!1076400) b!1575186))

(assert (= (and b!1575186 (not res!1076401)) b!1575183))

(assert (= (and b!1575183 (not res!1076402)) b!1575189))

(declare-fun m!1448287 () Bool)

(assert (=> b!1575186 m!1448287))

(assert (=> b!1575183 m!1448287))

(assert (=> b!1575189 m!1448287))

(assert (=> b!1575188 m!1448271))

(declare-fun m!1448289 () Bool)

(assert (=> b!1575188 m!1448289))

(assert (=> b!1575188 m!1448289))

(declare-fun m!1448291 () Bool)

(assert (=> b!1575188 m!1448291))

(assert (=> d!165341 m!1448271))

(declare-fun m!1448293 () Bool)

(assert (=> d!165341 m!1448293))

(assert (=> d!165341 m!1448263))

(assert (=> b!1575155 d!165341))

(declare-fun d!165351 () Bool)

(declare-fun lt!675078 () (_ BitVec 32))

(declare-fun lt!675077 () (_ BitVec 32))

(assert (=> d!165351 (= lt!675078 (bvmul (bvxor lt!675077 (bvlshr lt!675077 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165351 (= lt!675077 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165351 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076403 (let ((h!38426 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142152 (bvmul (bvxor h!38426 (bvlshr h!38426 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142152 (bvlshr x!142152 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076403 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076403 #b00000000000000000000000000000000))))))

(assert (=> d!165351 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675078 (bvlshr lt!675078 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575155 d!165351))

(check-sat (not b!1575188) (not d!165341))
(check-sat)
