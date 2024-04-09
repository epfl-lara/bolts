; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134882 () Bool)

(assert start!134882)

(declare-fun res!1074042 () Bool)

(declare-fun e!876443 () Bool)

(assert (=> start!134882 (=> (not res!1074042) (not e!876443))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134882 (= res!1074042 (validMask!0 mask!889))))

(assert (=> start!134882 e!876443))

(assert (=> start!134882 true))

(declare-datatypes ((array!104922 0))(
  ( (array!104923 (arr!50627 (Array (_ BitVec 32) (_ BitVec 64))) (size!51178 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104922)

(declare-fun array_inv!39272 (array!104922) Bool)

(assert (=> start!134882 (array_inv!39272 _keys!600)))

(declare-fun b!1571787 () Bool)

(declare-fun res!1074044 () Bool)

(assert (=> b!1571787 (=> (not res!1074044) (not e!876443))))

(assert (=> b!1571787 (= res!1074044 (= (size!51178 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571788 () Bool)

(declare-fun res!1074043 () Bool)

(assert (=> b!1571788 (=> (not res!1074043) (not e!876443))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571788 (= res!1074043 (validKeyInArray!0 k0!754))))

(declare-fun b!1571789 () Bool)

(declare-datatypes ((SeekEntryResult!13556 0))(
  ( (MissingZero!13556 (index!56621 (_ BitVec 32))) (Found!13556 (index!56622 (_ BitVec 32))) (Intermediate!13556 (undefined!14368 Bool) (index!56623 (_ BitVec 32)) (x!141389 (_ BitVec 32))) (Undefined!13556) (MissingVacant!13556 (index!56624 (_ BitVec 32))) )
))
(declare-fun lt!673705 () SeekEntryResult!13556)

(get-info :version)

(assert (=> b!1571789 (= e!876443 (and ((_ is Intermediate!13556) lt!673705) (not (undefined!14368 lt!673705)) (not (= (select (arr!50627 _keys!600) (index!56623 lt!673705)) k0!754)) (not (= (select (arr!50627 _keys!600) (index!56623 lt!673705)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50627 _keys!600) (index!56623 lt!673705)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56623 lt!673705) #b00000000000000000000000000000000) (bvslt (index!56623 lt!673705) (bvadd #b00000000000000000000000000000001 mask!889)) (bvsge mask!889 #b00000000000000000000000000000000) (or (bvsgt (x!141389 lt!673705) #b01111111111111111111111111111110) (bvslt (x!141389 lt!673705) #b00000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104922 (_ BitVec 32)) SeekEntryResult!13556)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571789 (= lt!673705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134882 res!1074042) b!1571787))

(assert (= (and b!1571787 res!1074044) b!1571788))

(assert (= (and b!1571788 res!1074043) b!1571789))

(declare-fun m!1445731 () Bool)

(assert (=> start!134882 m!1445731))

(declare-fun m!1445733 () Bool)

(assert (=> start!134882 m!1445733))

(declare-fun m!1445735 () Bool)

(assert (=> b!1571788 m!1445735))

(declare-fun m!1445737 () Bool)

(assert (=> b!1571789 m!1445737))

(declare-fun m!1445739 () Bool)

(assert (=> b!1571789 m!1445739))

(assert (=> b!1571789 m!1445739))

(declare-fun m!1445741 () Bool)

(assert (=> b!1571789 m!1445741))

(check-sat (not b!1571788) (not start!134882) (not b!1571789))
(check-sat)
(get-model)

(declare-fun d!164589 () Bool)

(assert (=> d!164589 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571788 d!164589))

(declare-fun d!164591 () Bool)

(assert (=> d!164591 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134882 d!164591))

(declare-fun d!164599 () Bool)

(assert (=> d!164599 (= (array_inv!39272 _keys!600) (bvsge (size!51178 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134882 d!164599))

(declare-fun b!1571844 () Bool)

(declare-fun e!876480 () SeekEntryResult!13556)

(assert (=> b!1571844 (= e!876480 (Intermediate!13556 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!164601 () Bool)

(declare-fun e!876478 () Bool)

(assert (=> d!164601 e!876478))

(declare-fun c!145129 () Bool)

(declare-fun lt!673723 () SeekEntryResult!13556)

(assert (=> d!164601 (= c!145129 (and ((_ is Intermediate!13556) lt!673723) (undefined!14368 lt!673723)))))

(assert (=> d!164601 (= lt!673723 e!876480)))

(declare-fun c!145131 () Bool)

(assert (=> d!164601 (= c!145131 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673724 () (_ BitVec 64))

(assert (=> d!164601 (= lt!673724 (select (arr!50627 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!164601 (validMask!0 mask!889)))

(assert (=> d!164601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!673723)))

(declare-fun b!1571845 () Bool)

(assert (=> b!1571845 (and (bvsge (index!56623 lt!673723) #b00000000000000000000000000000000) (bvslt (index!56623 lt!673723) (size!51178 _keys!600)))))

(declare-fun e!876479 () Bool)

(assert (=> b!1571845 (= e!876479 (= (select (arr!50627 _keys!600) (index!56623 lt!673723)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1571846 () Bool)

(declare-fun e!876477 () SeekEntryResult!13556)

(assert (=> b!1571846 (= e!876480 e!876477)))

(declare-fun c!145130 () Bool)

(assert (=> b!1571846 (= c!145130 (or (= lt!673724 k0!754) (= (bvadd lt!673724 lt!673724) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1571847 () Bool)

(declare-fun e!876476 () Bool)

(assert (=> b!1571847 (= e!876478 e!876476)))

(declare-fun res!1074071 () Bool)

(assert (=> b!1571847 (= res!1074071 (and ((_ is Intermediate!13556) lt!673723) (not (undefined!14368 lt!673723)) (bvslt (x!141389 lt!673723) #b01111111111111111111111111111110) (bvsge (x!141389 lt!673723) #b00000000000000000000000000000000) (bvsge (x!141389 lt!673723) #b00000000000000000000000000000000)))))

(assert (=> b!1571847 (=> (not res!1074071) (not e!876476))))

(declare-fun b!1571848 () Bool)

(assert (=> b!1571848 (and (bvsge (index!56623 lt!673723) #b00000000000000000000000000000000) (bvslt (index!56623 lt!673723) (size!51178 _keys!600)))))

(declare-fun res!1074072 () Bool)

(assert (=> b!1571848 (= res!1074072 (= (select (arr!50627 _keys!600) (index!56623 lt!673723)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1571848 (=> res!1074072 e!876479)))

(declare-fun b!1571849 () Bool)

(assert (=> b!1571849 (= e!876477 (Intermediate!13556 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1571850 () Bool)

(assert (=> b!1571850 (= e!876478 (bvsge (x!141389 lt!673723) #b01111111111111111111111111111110))))

(declare-fun b!1571851 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571851 (= e!876477 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1571852 () Bool)

(assert (=> b!1571852 (and (bvsge (index!56623 lt!673723) #b00000000000000000000000000000000) (bvslt (index!56623 lt!673723) (size!51178 _keys!600)))))

(declare-fun res!1074070 () Bool)

(assert (=> b!1571852 (= res!1074070 (= (select (arr!50627 _keys!600) (index!56623 lt!673723)) k0!754))))

(assert (=> b!1571852 (=> res!1074070 e!876479)))

(assert (=> b!1571852 (= e!876476 e!876479)))

(assert (= (and d!164601 c!145131) b!1571844))

(assert (= (and d!164601 (not c!145131)) b!1571846))

(assert (= (and b!1571846 c!145130) b!1571849))

(assert (= (and b!1571846 (not c!145130)) b!1571851))

(assert (= (and d!164601 c!145129) b!1571850))

(assert (= (and d!164601 (not c!145129)) b!1571847))

(assert (= (and b!1571847 res!1074071) b!1571852))

(assert (= (and b!1571852 (not res!1074070)) b!1571848))

(assert (= (and b!1571848 (not res!1074072)) b!1571845))

(assert (=> d!164601 m!1445739))

(declare-fun m!1445763 () Bool)

(assert (=> d!164601 m!1445763))

(assert (=> d!164601 m!1445731))

(declare-fun m!1445765 () Bool)

(assert (=> b!1571845 m!1445765))

(assert (=> b!1571852 m!1445765))

(assert (=> b!1571851 m!1445739))

(declare-fun m!1445767 () Bool)

(assert (=> b!1571851 m!1445767))

(assert (=> b!1571851 m!1445767))

(declare-fun m!1445769 () Bool)

(assert (=> b!1571851 m!1445769))

(assert (=> b!1571848 m!1445765))

(assert (=> b!1571789 d!164601))

(declare-fun d!164615 () Bool)

(declare-fun lt!673732 () (_ BitVec 32))

(declare-fun lt!673731 () (_ BitVec 32))

(assert (=> d!164615 (= lt!673732 (bvmul (bvxor lt!673731 (bvlshr lt!673731 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164615 (= lt!673731 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164615 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074073 (let ((h!38373 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141394 (bvmul (bvxor h!38373 (bvlshr h!38373 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141394 (bvlshr x!141394 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074073 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074073 #b00000000000000000000000000000000))))))

(assert (=> d!164615 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!673732 (bvlshr lt!673732 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1571789 d!164615))

(check-sat (not b!1571851) (not d!164601))
(check-sat)
