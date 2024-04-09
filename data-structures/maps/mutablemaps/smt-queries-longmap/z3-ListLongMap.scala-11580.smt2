; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134972 () Bool)

(assert start!134972)

(declare-fun res!1074238 () Bool)

(declare-fun e!876624 () Bool)

(assert (=> start!134972 (=> (not res!1074238) (not e!876624))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134972 (= res!1074238 (validMask!0 mask!889))))

(assert (=> start!134972 e!876624))

(assert (=> start!134972 true))

(declare-datatypes ((array!104958 0))(
  ( (array!104959 (arr!50642 (Array (_ BitVec 32) (_ BitVec 64))) (size!51193 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104958)

(declare-fun array_inv!39287 (array!104958) Bool)

(assert (=> start!134972 (array_inv!39287 _keys!600)))

(declare-fun b!1572084 () Bool)

(declare-fun res!1074239 () Bool)

(assert (=> b!1572084 (=> (not res!1074239) (not e!876624))))

(assert (=> b!1572084 (= res!1074239 (= (size!51193 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572085 () Bool)

(declare-fun res!1074237 () Bool)

(assert (=> b!1572085 (=> (not res!1074237) (not e!876624))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572085 (= res!1074237 (validKeyInArray!0 k0!754))))

(declare-fun b!1572086 () Bool)

(declare-datatypes ((SeekEntryResult!13571 0))(
  ( (MissingZero!13571 (index!56681 (_ BitVec 32))) (Found!13571 (index!56682 (_ BitVec 32))) (Intermediate!13571 (undefined!14383 Bool) (index!56683 (_ BitVec 32)) (x!141456 (_ BitVec 32))) (Undefined!13571) (MissingVacant!13571 (index!56684 (_ BitVec 32))) )
))
(declare-fun lt!673822 () SeekEntryResult!13571)

(get-info :version)

(assert (=> b!1572086 (= e!876624 (and ((_ is Intermediate!13571) lt!673822) (not (undefined!14383 lt!673822)) (not (= (select (arr!50642 _keys!600) (index!56683 lt!673822)) k0!754)) (not (= (select (arr!50642 _keys!600) (index!56683 lt!673822)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50642 _keys!600) (index!56683 lt!673822)) #b1000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!56683 lt!673822) #b00000000000000000000000000000000) (bvsge (index!56683 lt!673822) (bvadd #b00000000000000000000000000000001 mask!889)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104958 (_ BitVec 32)) SeekEntryResult!13571)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572086 (= lt!673822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134972 res!1074238) b!1572084))

(assert (= (and b!1572084 res!1074239) b!1572085))

(assert (= (and b!1572085 res!1074237) b!1572086))

(declare-fun m!1445941 () Bool)

(assert (=> start!134972 m!1445941))

(declare-fun m!1445943 () Bool)

(assert (=> start!134972 m!1445943))

(declare-fun m!1445945 () Bool)

(assert (=> b!1572085 m!1445945))

(declare-fun m!1445947 () Bool)

(assert (=> b!1572086 m!1445947))

(declare-fun m!1445949 () Bool)

(assert (=> b!1572086 m!1445949))

(assert (=> b!1572086 m!1445949))

(declare-fun m!1445951 () Bool)

(assert (=> b!1572086 m!1445951))

(check-sat (not b!1572085) (not b!1572086) (not start!134972))
(check-sat)
(get-model)

(declare-fun d!164659 () Bool)

(assert (=> d!164659 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572085 d!164659))

(declare-fun b!1572141 () Bool)

(declare-fun e!876660 () SeekEntryResult!13571)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572141 (= e!876660 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572142 () Bool)

(assert (=> b!1572142 (= e!876660 (Intermediate!13571 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572143 () Bool)

(declare-fun e!876656 () Bool)

(declare-fun e!876659 () Bool)

(assert (=> b!1572143 (= e!876656 e!876659)))

(declare-fun res!1074265 () Bool)

(declare-fun lt!673837 () SeekEntryResult!13571)

(assert (=> b!1572143 (= res!1074265 (and ((_ is Intermediate!13571) lt!673837) (not (undefined!14383 lt!673837)) (bvslt (x!141456 lt!673837) #b01111111111111111111111111111110) (bvsge (x!141456 lt!673837) #b00000000000000000000000000000000) (bvsge (x!141456 lt!673837) #b00000000000000000000000000000000)))))

(assert (=> b!1572143 (=> (not res!1074265) (not e!876659))))

(declare-fun b!1572144 () Bool)

(declare-fun e!876657 () SeekEntryResult!13571)

(assert (=> b!1572144 (= e!876657 (Intermediate!13571 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!164661 () Bool)

(assert (=> d!164661 e!876656))

(declare-fun c!145184 () Bool)

(assert (=> d!164661 (= c!145184 (and ((_ is Intermediate!13571) lt!673837) (undefined!14383 lt!673837)))))

(assert (=> d!164661 (= lt!673837 e!876657)))

(declare-fun c!145185 () Bool)

(assert (=> d!164661 (= c!145185 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673836 () (_ BitVec 64))

(assert (=> d!164661 (= lt!673836 (select (arr!50642 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164661 (validMask!0 mask!889)))

(assert (=> d!164661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!673837)))

(declare-fun b!1572145 () Bool)

(assert (=> b!1572145 (= e!876656 (bvsge (x!141456 lt!673837) #b01111111111111111111111111111110))))

(declare-fun b!1572146 () Bool)

(assert (=> b!1572146 (and (bvsge (index!56683 lt!673837) #b00000000000000000000000000000000) (bvslt (index!56683 lt!673837) (size!51193 _keys!600)))))

(declare-fun e!876658 () Bool)

(assert (=> b!1572146 (= e!876658 (= (select (arr!50642 _keys!600) (index!56683 lt!673837)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572147 () Bool)

(assert (=> b!1572147 (and (bvsge (index!56683 lt!673837) #b00000000000000000000000000000000) (bvslt (index!56683 lt!673837) (size!51193 _keys!600)))))

(declare-fun res!1074266 () Bool)

(assert (=> b!1572147 (= res!1074266 (= (select (arr!50642 _keys!600) (index!56683 lt!673837)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572147 (=> res!1074266 e!876658)))

(declare-fun b!1572148 () Bool)

(assert (=> b!1572148 (= e!876657 e!876660)))

(declare-fun c!145183 () Bool)

(assert (=> b!1572148 (= c!145183 (or (= lt!673836 k0!754) (= (bvadd lt!673836 lt!673836) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572149 () Bool)

(assert (=> b!1572149 (and (bvsge (index!56683 lt!673837) #b00000000000000000000000000000000) (bvslt (index!56683 lt!673837) (size!51193 _keys!600)))))

(declare-fun res!1074267 () Bool)

(assert (=> b!1572149 (= res!1074267 (= (select (arr!50642 _keys!600) (index!56683 lt!673837)) k0!754))))

(assert (=> b!1572149 (=> res!1074267 e!876658)))

(assert (=> b!1572149 (= e!876659 e!876658)))

(assert (= (and d!164661 c!145185) b!1572144))

(assert (= (and d!164661 (not c!145185)) b!1572148))

(assert (= (and b!1572148 c!145183) b!1572142))

(assert (= (and b!1572148 (not c!145183)) b!1572141))

(assert (= (and d!164661 c!145184) b!1572145))

(assert (= (and d!164661 (not c!145184)) b!1572143))

(assert (= (and b!1572143 res!1074265) b!1572149))

(assert (= (and b!1572149 (not res!1074267)) b!1572147))

(assert (= (and b!1572147 (not res!1074266)) b!1572146))

(declare-fun m!1445973 () Bool)

(assert (=> b!1572147 m!1445973))

(assert (=> d!164661 m!1445949))

(declare-fun m!1445975 () Bool)

(assert (=> d!164661 m!1445975))

(assert (=> d!164661 m!1445941))

(assert (=> b!1572141 m!1445949))

(declare-fun m!1445977 () Bool)

(assert (=> b!1572141 m!1445977))

(assert (=> b!1572141 m!1445977))

(declare-fun m!1445979 () Bool)

(assert (=> b!1572141 m!1445979))

(assert (=> b!1572149 m!1445973))

(assert (=> b!1572146 m!1445973))

(assert (=> b!1572086 d!164661))

(declare-fun d!164677 () Bool)

(declare-fun lt!673849 () (_ BitVec 32))

(declare-fun lt!673848 () (_ BitVec 32))

(assert (=> d!164677 (= lt!673849 (bvmul (bvxor lt!673848 (bvlshr lt!673848 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164677 (= lt!673848 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164677 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074268 (let ((h!38379 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141461 (bvmul (bvxor h!38379 (bvlshr h!38379 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141461 (bvlshr x!141461 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074268 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074268 #b00000000000000000000000000000000))))))

(assert (=> d!164677 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!673849 (bvlshr lt!673849 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572086 d!164677))

(declare-fun d!164679 () Bool)

(assert (=> d!164679 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134972 d!164679))

(declare-fun d!164685 () Bool)

(assert (=> d!164685 (= (array_inv!39287 _keys!600) (bvsge (size!51193 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134972 d!164685))

(check-sat (not d!164661) (not b!1572141))
(check-sat)
