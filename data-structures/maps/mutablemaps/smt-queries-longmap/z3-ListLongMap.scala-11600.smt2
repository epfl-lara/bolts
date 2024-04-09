; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135380 () Bool)

(assert start!135380)

(declare-fun b!1573586 () Bool)

(declare-fun e!877537 () Bool)

(declare-datatypes ((SeekEntryResult!13631 0))(
  ( (MissingZero!13631 (index!56921 (_ BitVec 32))) (Found!13631 (index!56922 (_ BitVec 32))) (Intermediate!13631 (undefined!14443 Bool) (index!56923 (_ BitVec 32)) (x!141739 (_ BitVec 32))) (Undefined!13631) (MissingVacant!13631 (index!56924 (_ BitVec 32))) )
))
(declare-fun lt!674472 () SeekEntryResult!13631)

(get-info :version)

(assert (=> b!1573586 (= e!877537 (and (not ((_ is MissingVacant!13631) lt!674472)) (not ((_ is Found!13631) lt!674472)) (not ((_ is MissingZero!13631) lt!674472)) (not ((_ is Undefined!13631) lt!674472))))))

(declare-fun err!154 () SeekEntryResult!13631)

(assert (=> b!1573586 (= lt!674472 err!154)))

(assert (=> b!1573586 true))

(declare-fun res!1075116 () Bool)

(declare-fun e!877539 () Bool)

(assert (=> start!135380 (=> (not res!1075116) (not e!877539))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135380 (= res!1075116 (validMask!0 mask!889))))

(assert (=> start!135380 e!877539))

(assert (=> start!135380 true))

(declare-datatypes ((array!105105 0))(
  ( (array!105106 (arr!50702 (Array (_ BitVec 32) (_ BitVec 64))) (size!51253 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105105)

(declare-fun array_inv!39347 (array!105105) Bool)

(assert (=> start!135380 (array_inv!39347 _keys!600)))

(declare-fun b!1573585 () Bool)

(assert (=> b!1573585 (= e!877539 e!877537)))

(declare-fun res!1075118 () Bool)

(assert (=> b!1573585 (=> (not res!1075118) (not e!877537))))

(declare-fun lt!674471 () Bool)

(declare-fun lt!674473 () SeekEntryResult!13631)

(assert (=> b!1573585 (= res!1075118 (and (or lt!674471 (not (undefined!14443 lt!674473))) (or lt!674471 (undefined!14443 lt!674473))))))

(assert (=> b!1573585 (= lt!674471 (not ((_ is Intermediate!13631) lt!674473)))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105105 (_ BitVec 32)) SeekEntryResult!13631)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573585 (= lt!674473 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573583 () Bool)

(declare-fun res!1075117 () Bool)

(assert (=> b!1573583 (=> (not res!1075117) (not e!877539))))

(assert (=> b!1573583 (= res!1075117 (= (size!51253 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573584 () Bool)

(declare-fun res!1075115 () Bool)

(assert (=> b!1573584 (=> (not res!1075115) (not e!877539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573584 (= res!1075115 (validKeyInArray!0 k0!754))))

(assert (= (and start!135380 res!1075116) b!1573583))

(assert (= (and b!1573583 res!1075117) b!1573584))

(assert (= (and b!1573584 res!1075115) b!1573585))

(assert (= (and b!1573585 res!1075118) b!1573586))

(declare-fun m!1446923 () Bool)

(assert (=> start!135380 m!1446923))

(declare-fun m!1446925 () Bool)

(assert (=> start!135380 m!1446925))

(declare-fun m!1446927 () Bool)

(assert (=> b!1573585 m!1446927))

(assert (=> b!1573585 m!1446927))

(declare-fun m!1446929 () Bool)

(assert (=> b!1573585 m!1446929))

(declare-fun m!1446931 () Bool)

(assert (=> b!1573584 m!1446931))

(check-sat (not start!135380) (not b!1573584) (not b!1573585))
(check-sat)
(get-model)

(declare-fun d!164987 () Bool)

(assert (=> d!164987 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135380 d!164987))

(declare-fun d!164995 () Bool)

(assert (=> d!164995 (= (array_inv!39347 _keys!600) (bvsge (size!51253 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135380 d!164995))

(declare-fun d!164997 () Bool)

(assert (=> d!164997 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573584 d!164997))

(declare-fun b!1573662 () Bool)

(declare-fun e!877587 () SeekEntryResult!13631)

(declare-fun e!877588 () SeekEntryResult!13631)

(assert (=> b!1573662 (= e!877587 e!877588)))

(declare-fun c!145515 () Bool)

(declare-fun lt!674498 () (_ BitVec 64))

(assert (=> b!1573662 (= c!145515 (or (= lt!674498 k0!754) (= (bvadd lt!674498 lt!674498) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573663 () Bool)

(assert (=> b!1573663 (= e!877587 (Intermediate!13631 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573664 () Bool)

(declare-fun lt!674497 () SeekEntryResult!13631)

(assert (=> b!1573664 (and (bvsge (index!56923 lt!674497) #b00000000000000000000000000000000) (bvslt (index!56923 lt!674497) (size!51253 _keys!600)))))

(declare-fun res!1075154 () Bool)

(assert (=> b!1573664 (= res!1075154 (= (select (arr!50702 _keys!600) (index!56923 lt!674497)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877586 () Bool)

(assert (=> b!1573664 (=> res!1075154 e!877586)))

(declare-fun d!164999 () Bool)

(declare-fun e!877584 () Bool)

(assert (=> d!164999 e!877584))

(declare-fun c!145513 () Bool)

(assert (=> d!164999 (= c!145513 (and ((_ is Intermediate!13631) lt!674497) (undefined!14443 lt!674497)))))

(assert (=> d!164999 (= lt!674497 e!877587)))

(declare-fun c!145514 () Bool)

(assert (=> d!164999 (= c!145514 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164999 (= lt!674498 (select (arr!50702 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164999 (validMask!0 mask!889)))

(assert (=> d!164999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!674497)))

(declare-fun b!1573665 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573665 (= e!877588 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573666 () Bool)

(assert (=> b!1573666 (= e!877584 (bvsge (x!141739 lt!674497) #b01111111111111111111111111111110))))

(declare-fun b!1573667 () Bool)

(declare-fun e!877585 () Bool)

(assert (=> b!1573667 (= e!877584 e!877585)))

(declare-fun res!1075155 () Bool)

(assert (=> b!1573667 (= res!1075155 (and ((_ is Intermediate!13631) lt!674497) (not (undefined!14443 lt!674497)) (bvslt (x!141739 lt!674497) #b01111111111111111111111111111110) (bvsge (x!141739 lt!674497) #b00000000000000000000000000000000) (bvsge (x!141739 lt!674497) #b00000000000000000000000000000000)))))

(assert (=> b!1573667 (=> (not res!1075155) (not e!877585))))

(declare-fun b!1573668 () Bool)

(assert (=> b!1573668 (and (bvsge (index!56923 lt!674497) #b00000000000000000000000000000000) (bvslt (index!56923 lt!674497) (size!51253 _keys!600)))))

(declare-fun res!1075153 () Bool)

(assert (=> b!1573668 (= res!1075153 (= (select (arr!50702 _keys!600) (index!56923 lt!674497)) k0!754))))

(assert (=> b!1573668 (=> res!1075153 e!877586)))

(assert (=> b!1573668 (= e!877585 e!877586)))

(declare-fun b!1573669 () Bool)

(assert (=> b!1573669 (= e!877588 (Intermediate!13631 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573670 () Bool)

(assert (=> b!1573670 (and (bvsge (index!56923 lt!674497) #b00000000000000000000000000000000) (bvslt (index!56923 lt!674497) (size!51253 _keys!600)))))

(assert (=> b!1573670 (= e!877586 (= (select (arr!50702 _keys!600) (index!56923 lt!674497)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!164999 c!145514) b!1573663))

(assert (= (and d!164999 (not c!145514)) b!1573662))

(assert (= (and b!1573662 c!145515) b!1573669))

(assert (= (and b!1573662 (not c!145515)) b!1573665))

(assert (= (and d!164999 c!145513) b!1573666))

(assert (= (and d!164999 (not c!145513)) b!1573667))

(assert (= (and b!1573667 res!1075155) b!1573668))

(assert (= (and b!1573668 (not res!1075153)) b!1573664))

(assert (= (and b!1573664 (not res!1075154)) b!1573670))

(assert (=> b!1573665 m!1446927))

(declare-fun m!1446951 () Bool)

(assert (=> b!1573665 m!1446951))

(assert (=> b!1573665 m!1446951))

(declare-fun m!1446953 () Bool)

(assert (=> b!1573665 m!1446953))

(assert (=> d!164999 m!1446927))

(declare-fun m!1446955 () Bool)

(assert (=> d!164999 m!1446955))

(assert (=> d!164999 m!1446923))

(declare-fun m!1446957 () Bool)

(assert (=> b!1573668 m!1446957))

(assert (=> b!1573664 m!1446957))

(assert (=> b!1573670 m!1446957))

(assert (=> b!1573585 d!164999))

(declare-fun d!165007 () Bool)

(declare-fun lt!674512 () (_ BitVec 32))

(declare-fun lt!674511 () (_ BitVec 32))

(assert (=> d!165007 (= lt!674512 (bvmul (bvxor lt!674511 (bvlshr lt!674511 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165007 (= lt!674511 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165007 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075156 (let ((h!38406 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141745 (bvmul (bvxor h!38406 (bvlshr h!38406 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141745 (bvlshr x!141745 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075156 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075156 #b00000000000000000000000000000000))))))

(assert (=> d!165007 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!674512 (bvlshr lt!674512 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573585 d!165007))

(check-sat (not b!1573665) (not d!164999))
(check-sat)
