; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135182 () Bool)

(assert start!135182)

(declare-fun b!1572845 () Bool)

(declare-fun res!1074795 () Bool)

(declare-fun e!877107 () Bool)

(assert (=> b!1572845 (=> (not res!1074795) (not e!877107))))

(declare-datatypes ((array!105060 0))(
  ( (array!105061 (arr!50687 (Array (_ BitVec 32) (_ BitVec 64))) (size!51238 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105060)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1572845 (= res!1074795 (= (size!51238 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun res!1074797 () Bool)

(assert (=> start!135182 (=> (not res!1074797) (not e!877107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135182 (= res!1074797 (validMask!0 mask!889))))

(assert (=> start!135182 e!877107))

(assert (=> start!135182 true))

(declare-fun array_inv!39332 (array!105060) Bool)

(assert (=> start!135182 (array_inv!39332 _keys!600)))

(declare-fun b!1572848 () Bool)

(declare-fun e!877105 () Bool)

(declare-datatypes ((SeekEntryResult!13616 0))(
  ( (MissingZero!13616 (index!56861 (_ BitVec 32))) (Found!13616 (index!56862 (_ BitVec 32))) (Intermediate!13616 (undefined!14428 Bool) (index!56863 (_ BitVec 32)) (x!141645 (_ BitVec 32))) (Undefined!13616) (MissingVacant!13616 (index!56864 (_ BitVec 32))) )
))
(declare-fun lt!674134 () SeekEntryResult!13616)

(get-info :version)

(assert (=> b!1572848 (= e!877105 (and (not ((_ is MissingVacant!13616) lt!674134)) ((_ is Found!13616) lt!674134) (or (bvslt (index!56862 lt!674134) #b00000000000000000000000000000000) (bvsge (index!56862 lt!674134) (size!51238 _keys!600)))))))

(declare-fun lt!674133 () SeekEntryResult!13616)

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105060 (_ BitVec 32)) SeekEntryResult!13616)

(assert (=> b!1572848 (= lt!674134 (seekKeyOrZeroReturnVacant!0 (x!141645 lt!674133) (index!56863 lt!674133) (index!56863 lt!674133) k0!754 _keys!600 mask!889))))

(declare-fun b!1572847 () Bool)

(assert (=> b!1572847 (= e!877107 e!877105)))

(declare-fun res!1074796 () Bool)

(assert (=> b!1572847 (=> (not res!1074796) (not e!877105))))

(assert (=> b!1572847 (= res!1074796 (and (not (undefined!14428 lt!674133)) ((_ is Intermediate!13616) lt!674133) (not (= (select (arr!50687 _keys!600) (index!56863 lt!674133)) k0!754)) (not (= (select (arr!50687 _keys!600) (index!56863 lt!674133)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50687 _keys!600) (index!56863 lt!674133)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56863 lt!674133) #b00000000000000000000000000000000) (bvslt (index!56863 lt!674133) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105060 (_ BitVec 32)) SeekEntryResult!13616)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572847 (= lt!674133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572846 () Bool)

(declare-fun res!1074794 () Bool)

(assert (=> b!1572846 (=> (not res!1074794) (not e!877107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572846 (= res!1074794 (validKeyInArray!0 k0!754))))

(assert (= (and start!135182 res!1074797) b!1572845))

(assert (= (and b!1572845 res!1074795) b!1572846))

(assert (= (and b!1572846 res!1074794) b!1572847))

(assert (= (and b!1572847 res!1074796) b!1572848))

(declare-fun m!1446543 () Bool)

(assert (=> start!135182 m!1446543))

(declare-fun m!1446545 () Bool)

(assert (=> start!135182 m!1446545))

(declare-fun m!1446547 () Bool)

(assert (=> b!1572848 m!1446547))

(declare-fun m!1446549 () Bool)

(assert (=> b!1572847 m!1446549))

(declare-fun m!1446551 () Bool)

(assert (=> b!1572847 m!1446551))

(assert (=> b!1572847 m!1446551))

(declare-fun m!1446553 () Bool)

(assert (=> b!1572847 m!1446553))

(declare-fun m!1446555 () Bool)

(assert (=> b!1572846 m!1446555))

(check-sat (not start!135182) (not b!1572847) (not b!1572848) (not b!1572846))
(check-sat)
(get-model)

(declare-fun d!164809 () Bool)

(assert (=> d!164809 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135182 d!164809))

(declare-fun d!164815 () Bool)

(assert (=> d!164815 (= (array_inv!39332 _keys!600) (bvsge (size!51238 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135182 d!164815))

(declare-fun b!1572887 () Bool)

(declare-fun lt!674149 () SeekEntryResult!13616)

(assert (=> b!1572887 (and (bvsge (index!56863 lt!674149) #b00000000000000000000000000000000) (bvslt (index!56863 lt!674149) (size!51238 _keys!600)))))

(declare-fun res!1074818 () Bool)

(assert (=> b!1572887 (= res!1074818 (= (select (arr!50687 _keys!600) (index!56863 lt!674149)) k0!754))))

(declare-fun e!877133 () Bool)

(assert (=> b!1572887 (=> res!1074818 e!877133)))

(declare-fun e!877134 () Bool)

(assert (=> b!1572887 (= e!877134 e!877133)))

(declare-fun b!1572888 () Bool)

(declare-fun e!877132 () SeekEntryResult!13616)

(declare-fun e!877135 () SeekEntryResult!13616)

(assert (=> b!1572888 (= e!877132 e!877135)))

(declare-fun c!145286 () Bool)

(declare-fun lt!674150 () (_ BitVec 64))

(assert (=> b!1572888 (= c!145286 (or (= lt!674150 k0!754) (= (bvadd lt!674150 lt!674150) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572889 () Bool)

(assert (=> b!1572889 (= e!877132 (Intermediate!13616 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572890 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572890 (= e!877135 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572891 () Bool)

(assert (=> b!1572891 (and (bvsge (index!56863 lt!674149) #b00000000000000000000000000000000) (bvslt (index!56863 lt!674149) (size!51238 _keys!600)))))

(declare-fun res!1074817 () Bool)

(assert (=> b!1572891 (= res!1074817 (= (select (arr!50687 _keys!600) (index!56863 lt!674149)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572891 (=> res!1074817 e!877133)))

(declare-fun b!1572892 () Bool)

(declare-fun e!877131 () Bool)

(assert (=> b!1572892 (= e!877131 (bvsge (x!141645 lt!674149) #b01111111111111111111111111111110))))

(declare-fun b!1572893 () Bool)

(assert (=> b!1572893 (= e!877135 (Intermediate!13616 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!164817 () Bool)

(assert (=> d!164817 e!877131))

(declare-fun c!145287 () Bool)

(assert (=> d!164817 (= c!145287 (and ((_ is Intermediate!13616) lt!674149) (undefined!14428 lt!674149)))))

(assert (=> d!164817 (= lt!674149 e!877132)))

(declare-fun c!145288 () Bool)

(assert (=> d!164817 (= c!145288 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164817 (= lt!674150 (select (arr!50687 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164817 (validMask!0 mask!889)))

(assert (=> d!164817 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!674149)))

(declare-fun b!1572894 () Bool)

(assert (=> b!1572894 (= e!877131 e!877134)))

(declare-fun res!1074816 () Bool)

(assert (=> b!1572894 (= res!1074816 (and ((_ is Intermediate!13616) lt!674149) (not (undefined!14428 lt!674149)) (bvslt (x!141645 lt!674149) #b01111111111111111111111111111110) (bvsge (x!141645 lt!674149) #b00000000000000000000000000000000) (bvsge (x!141645 lt!674149) #b00000000000000000000000000000000)))))

(assert (=> b!1572894 (=> (not res!1074816) (not e!877134))))

(declare-fun b!1572895 () Bool)

(assert (=> b!1572895 (and (bvsge (index!56863 lt!674149) #b00000000000000000000000000000000) (bvslt (index!56863 lt!674149) (size!51238 _keys!600)))))

(assert (=> b!1572895 (= e!877133 (= (select (arr!50687 _keys!600) (index!56863 lt!674149)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!164817 c!145288) b!1572889))

(assert (= (and d!164817 (not c!145288)) b!1572888))

(assert (= (and b!1572888 c!145286) b!1572893))

(assert (= (and b!1572888 (not c!145286)) b!1572890))

(assert (= (and d!164817 c!145287) b!1572892))

(assert (= (and d!164817 (not c!145287)) b!1572894))

(assert (= (and b!1572894 res!1074816) b!1572887))

(assert (= (and b!1572887 (not res!1074818)) b!1572891))

(assert (= (and b!1572891 (not res!1074817)) b!1572895))

(assert (=> d!164817 m!1446551))

(declare-fun m!1446571 () Bool)

(assert (=> d!164817 m!1446571))

(assert (=> d!164817 m!1446543))

(declare-fun m!1446573 () Bool)

(assert (=> b!1572887 m!1446573))

(assert (=> b!1572891 m!1446573))

(assert (=> b!1572890 m!1446551))

(declare-fun m!1446575 () Bool)

(assert (=> b!1572890 m!1446575))

(assert (=> b!1572890 m!1446575))

(declare-fun m!1446577 () Bool)

(assert (=> b!1572890 m!1446577))

(assert (=> b!1572895 m!1446573))

(assert (=> b!1572847 d!164817))

(declare-fun d!164831 () Bool)

(declare-fun lt!674158 () (_ BitVec 32))

(declare-fun lt!674157 () (_ BitVec 32))

(assert (=> d!164831 (= lt!674158 (bvmul (bvxor lt!674157 (bvlshr lt!674157 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164831 (= lt!674157 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164831 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074825 (let ((h!38390 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141649 (bvmul (bvxor h!38390 (bvlshr h!38390 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141649 (bvlshr x!141649 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074825 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074825 #b00000000000000000000000000000000))))))

(assert (=> d!164831 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!674158 (bvlshr lt!674158 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572847 d!164831))

(declare-fun b!1572954 () Bool)

(declare-fun e!877170 () SeekEntryResult!13616)

(assert (=> b!1572954 (= e!877170 Undefined!13616)))

(declare-fun b!1572955 () Bool)

(declare-fun e!877168 () SeekEntryResult!13616)

(assert (=> b!1572955 (= e!877170 e!877168)))

(declare-fun c!145311 () Bool)

(declare-fun lt!674182 () (_ BitVec 64))

(assert (=> b!1572955 (= c!145311 (= lt!674182 k0!754))))

(declare-fun e!877169 () SeekEntryResult!13616)

(declare-fun b!1572956 () Bool)

(assert (=> b!1572956 (= e!877169 (seekKeyOrZeroReturnVacant!0 (bvadd (x!141645 lt!674133) #b00000000000000000000000000000001) (nextIndex!0 (index!56863 lt!674133) (x!141645 lt!674133) mask!889) (index!56863 lt!674133) k0!754 _keys!600 mask!889))))

(declare-fun b!1572958 () Bool)

(assert (=> b!1572958 (= e!877169 (MissingVacant!13616 (index!56863 lt!674133)))))

(declare-fun b!1572959 () Bool)

(assert (=> b!1572959 (= e!877168 (Found!13616 (index!56863 lt!674133)))))

(declare-fun b!1572957 () Bool)

(declare-fun c!145309 () Bool)

(assert (=> b!1572957 (= c!145309 (= lt!674182 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572957 (= e!877168 e!877169)))

(declare-fun lt!674181 () SeekEntryResult!13616)

(declare-fun d!164833 () Bool)

(assert (=> d!164833 (and (or ((_ is Undefined!13616) lt!674181) (not ((_ is Found!13616) lt!674181)) (and (bvsge (index!56862 lt!674181) #b00000000000000000000000000000000) (bvslt (index!56862 lt!674181) (size!51238 _keys!600)))) (or ((_ is Undefined!13616) lt!674181) ((_ is Found!13616) lt!674181) (not ((_ is MissingVacant!13616) lt!674181)) (not (= (index!56864 lt!674181) (index!56863 lt!674133))) (and (bvsge (index!56864 lt!674181) #b00000000000000000000000000000000) (bvslt (index!56864 lt!674181) (size!51238 _keys!600)))) (or ((_ is Undefined!13616) lt!674181) (ite ((_ is Found!13616) lt!674181) (= (select (arr!50687 _keys!600) (index!56862 lt!674181)) k0!754) (and ((_ is MissingVacant!13616) lt!674181) (= (index!56864 lt!674181) (index!56863 lt!674133)) (= (select (arr!50687 _keys!600) (index!56864 lt!674181)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!164833 (= lt!674181 e!877170)))

(declare-fun c!145310 () Bool)

(assert (=> d!164833 (= c!145310 (bvsge (x!141645 lt!674133) #b01111111111111111111111111111110))))

(assert (=> d!164833 (= lt!674182 (select (arr!50687 _keys!600) (index!56863 lt!674133)))))

(assert (=> d!164833 (validMask!0 mask!889)))

(assert (=> d!164833 (= (seekKeyOrZeroReturnVacant!0 (x!141645 lt!674133) (index!56863 lt!674133) (index!56863 lt!674133) k0!754 _keys!600 mask!889) lt!674181)))

(assert (= (and d!164833 c!145310) b!1572954))

(assert (= (and d!164833 (not c!145310)) b!1572955))

(assert (= (and b!1572955 c!145311) b!1572959))

(assert (= (and b!1572955 (not c!145311)) b!1572957))

(assert (= (and b!1572957 c!145309) b!1572958))

(assert (= (and b!1572957 (not c!145309)) b!1572956))

(declare-fun m!1446595 () Bool)

(assert (=> b!1572956 m!1446595))

(assert (=> b!1572956 m!1446595))

(declare-fun m!1446597 () Bool)

(assert (=> b!1572956 m!1446597))

(declare-fun m!1446599 () Bool)

(assert (=> d!164833 m!1446599))

(declare-fun m!1446601 () Bool)

(assert (=> d!164833 m!1446601))

(assert (=> d!164833 m!1446549))

(assert (=> d!164833 m!1446543))

(assert (=> b!1572848 d!164833))

(declare-fun d!164843 () Bool)

(assert (=> d!164843 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572846 d!164843))

(check-sat (not b!1572890) (not d!164817) (not b!1572956) (not d!164833))
(check-sat)
