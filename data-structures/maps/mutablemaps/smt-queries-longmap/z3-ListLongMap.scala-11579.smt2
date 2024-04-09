; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134936 () Bool)

(assert start!134936)

(declare-fun res!1074180 () Bool)

(declare-fun e!876561 () Bool)

(assert (=> start!134936 (=> (not res!1074180) (not e!876561))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134936 (= res!1074180 (validMask!0 mask!889))))

(assert (=> start!134936 e!876561))

(assert (=> start!134936 true))

(declare-datatypes ((array!104949 0))(
  ( (array!104950 (arr!50639 (Array (_ BitVec 32) (_ BitVec 64))) (size!51190 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104949)

(declare-fun array_inv!39284 (array!104949) Bool)

(assert (=> start!134936 (array_inv!39284 _keys!600)))

(declare-fun b!1571976 () Bool)

(declare-fun res!1074182 () Bool)

(assert (=> b!1571976 (=> (not res!1074182) (not e!876561))))

(assert (=> b!1571976 (= res!1074182 (= (size!51190 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571977 () Bool)

(declare-fun res!1074181 () Bool)

(assert (=> b!1571977 (=> (not res!1074181) (not e!876561))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571977 (= res!1074181 (validKeyInArray!0 k0!754))))

(declare-datatypes ((SeekEntryResult!13568 0))(
  ( (MissingZero!13568 (index!56669 (_ BitVec 32))) (Found!13568 (index!56670 (_ BitVec 32))) (Intermediate!13568 (undefined!14380 Bool) (index!56671 (_ BitVec 32)) (x!141439 (_ BitVec 32))) (Undefined!13568) (MissingVacant!13568 (index!56672 (_ BitVec 32))) )
))
(declare-fun lt!673777 () SeekEntryResult!13568)

(declare-fun b!1571978 () Bool)

(get-info :version)

(assert (=> b!1571978 (= e!876561 (and ((_ is Intermediate!13568) lt!673777) (not (undefined!14380 lt!673777)) (not (= (select (arr!50639 _keys!600) (index!56671 lt!673777)) k0!754)) (not (= (select (arr!50639 _keys!600) (index!56671 lt!673777)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50639 _keys!600) (index!56671 lt!673777)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104949 (_ BitVec 32)) SeekEntryResult!13568)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571978 (= lt!673777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134936 res!1074180) b!1571976))

(assert (= (and b!1571976 res!1074182) b!1571977))

(assert (= (and b!1571977 res!1074181) b!1571978))

(declare-fun m!1445881 () Bool)

(assert (=> start!134936 m!1445881))

(declare-fun m!1445883 () Bool)

(assert (=> start!134936 m!1445883))

(declare-fun m!1445885 () Bool)

(assert (=> b!1571977 m!1445885))

(declare-fun m!1445887 () Bool)

(assert (=> b!1571978 m!1445887))

(declare-fun m!1445889 () Bool)

(assert (=> b!1571978 m!1445889))

(assert (=> b!1571978 m!1445889))

(declare-fun m!1445891 () Bool)

(assert (=> b!1571978 m!1445891))

(check-sat (not b!1571978) (not start!134936) (not b!1571977))
(check-sat)
(get-model)

(declare-fun b!1572033 () Bool)

(declare-fun e!876595 () Bool)

(declare-fun e!876597 () Bool)

(assert (=> b!1572033 (= e!876595 e!876597)))

(declare-fun res!1074208 () Bool)

(declare-fun lt!673791 () SeekEntryResult!13568)

(assert (=> b!1572033 (= res!1074208 (and ((_ is Intermediate!13568) lt!673791) (not (undefined!14380 lt!673791)) (bvslt (x!141439 lt!673791) #b01111111111111111111111111111110) (bvsge (x!141439 lt!673791) #b00000000000000000000000000000000) (bvsge (x!141439 lt!673791) #b00000000000000000000000000000000)))))

(assert (=> b!1572033 (=> (not res!1074208) (not e!876597))))

(declare-fun b!1572034 () Bool)

(assert (=> b!1572034 (and (bvsge (index!56671 lt!673791) #b00000000000000000000000000000000) (bvslt (index!56671 lt!673791) (size!51190 _keys!600)))))

(declare-fun e!876596 () Bool)

(assert (=> b!1572034 (= e!876596 (= (select (arr!50639 _keys!600) (index!56671 lt!673791)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!164627 () Bool)

(assert (=> d!164627 e!876595))

(declare-fun c!145158 () Bool)

(assert (=> d!164627 (= c!145158 (and ((_ is Intermediate!13568) lt!673791) (undefined!14380 lt!673791)))))

(declare-fun e!876593 () SeekEntryResult!13568)

(assert (=> d!164627 (= lt!673791 e!876593)))

(declare-fun c!145157 () Bool)

(assert (=> d!164627 (= c!145157 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673792 () (_ BitVec 64))

(assert (=> d!164627 (= lt!673792 (select (arr!50639 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164627 (validMask!0 mask!889)))

(assert (=> d!164627 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!673791)))

(declare-fun b!1572035 () Bool)

(assert (=> b!1572035 (and (bvsge (index!56671 lt!673791) #b00000000000000000000000000000000) (bvslt (index!56671 lt!673791) (size!51190 _keys!600)))))

(declare-fun res!1074210 () Bool)

(assert (=> b!1572035 (= res!1074210 (= (select (arr!50639 _keys!600) (index!56671 lt!673791)) k0!754))))

(assert (=> b!1572035 (=> res!1074210 e!876596)))

(assert (=> b!1572035 (= e!876597 e!876596)))

(declare-fun b!1572036 () Bool)

(declare-fun e!876594 () SeekEntryResult!13568)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572036 (= e!876594 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1572037 () Bool)

(assert (=> b!1572037 (and (bvsge (index!56671 lt!673791) #b00000000000000000000000000000000) (bvslt (index!56671 lt!673791) (size!51190 _keys!600)))))

(declare-fun res!1074209 () Bool)

(assert (=> b!1572037 (= res!1074209 (= (select (arr!50639 _keys!600) (index!56671 lt!673791)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572037 (=> res!1074209 e!876596)))

(declare-fun b!1572038 () Bool)

(assert (=> b!1572038 (= e!876594 (Intermediate!13568 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572039 () Bool)

(assert (=> b!1572039 (= e!876595 (bvsge (x!141439 lt!673791) #b01111111111111111111111111111110))))

(declare-fun b!1572040 () Bool)

(assert (=> b!1572040 (= e!876593 e!876594)))

(declare-fun c!145156 () Bool)

(assert (=> b!1572040 (= c!145156 (or (= lt!673792 k0!754) (= (bvadd lt!673792 lt!673792) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572041 () Bool)

(assert (=> b!1572041 (= e!876593 (Intermediate!13568 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(assert (= (and d!164627 c!145157) b!1572041))

(assert (= (and d!164627 (not c!145157)) b!1572040))

(assert (= (and b!1572040 c!145156) b!1572038))

(assert (= (and b!1572040 (not c!145156)) b!1572036))

(assert (= (and d!164627 c!145158) b!1572039))

(assert (= (and d!164627 (not c!145158)) b!1572033))

(assert (= (and b!1572033 res!1074208) b!1572035))

(assert (= (and b!1572035 (not res!1074210)) b!1572037))

(assert (= (and b!1572037 (not res!1074209)) b!1572034))

(declare-fun m!1445913 () Bool)

(assert (=> b!1572035 m!1445913))

(assert (=> b!1572034 m!1445913))

(assert (=> d!164627 m!1445889))

(declare-fun m!1445915 () Bool)

(assert (=> d!164627 m!1445915))

(assert (=> d!164627 m!1445881))

(assert (=> b!1572036 m!1445889))

(declare-fun m!1445917 () Bool)

(assert (=> b!1572036 m!1445917))

(assert (=> b!1572036 m!1445917))

(declare-fun m!1445919 () Bool)

(assert (=> b!1572036 m!1445919))

(assert (=> b!1572037 m!1445913))

(assert (=> b!1571978 d!164627))

(declare-fun d!164641 () Bool)

(declare-fun lt!673804 () (_ BitVec 32))

(declare-fun lt!673803 () (_ BitVec 32))

(assert (=> d!164641 (= lt!673804 (bvmul (bvxor lt!673803 (bvlshr lt!673803 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164641 (= lt!673803 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164641 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074211 (let ((h!38376 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141444 (bvmul (bvxor h!38376 (bvlshr h!38376 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141444 (bvlshr x!141444 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074211 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074211 #b00000000000000000000000000000000))))))

(assert (=> d!164641 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!673804 (bvlshr lt!673804 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1571978 d!164641))

(declare-fun d!164645 () Bool)

(assert (=> d!164645 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134936 d!164645))

(declare-fun d!164653 () Bool)

(assert (=> d!164653 (= (array_inv!39284 _keys!600) (bvsge (size!51190 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134936 d!164653))

(declare-fun d!164655 () Bool)

(assert (=> d!164655 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571977 d!164655))

(check-sat (not d!164627) (not b!1572036))
