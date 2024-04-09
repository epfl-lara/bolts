; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135416 () Bool)

(assert start!135416)

(declare-fun b!1573702 () Bool)

(declare-fun e!877609 () Bool)

(declare-fun e!877610 () Bool)

(assert (=> b!1573702 (= e!877609 e!877610)))

(declare-fun res!1075183 () Bool)

(assert (=> b!1573702 (=> (not res!1075183) (not e!877610))))

(declare-fun lt!674536 () Bool)

(declare-datatypes ((SeekEntryResult!13634 0))(
  ( (MissingZero!13634 (index!56933 (_ BitVec 32))) (Found!13634 (index!56934 (_ BitVec 32))) (Intermediate!13634 (undefined!14446 Bool) (index!56935 (_ BitVec 32)) (x!141756 (_ BitVec 32))) (Undefined!13634) (MissingVacant!13634 (index!56936 (_ BitVec 32))) )
))
(declare-fun lt!674535 () SeekEntryResult!13634)

(assert (=> b!1573702 (= res!1075183 (and (or lt!674536 (not (undefined!14446 lt!674535))) (or lt!674536 (undefined!14446 lt!674535))))))

(get-info :version)

(assert (=> b!1573702 (= lt!674536 (not ((_ is Intermediate!13634) lt!674535)))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105114 0))(
  ( (array!105115 (arr!50705 (Array (_ BitVec 32) (_ BitVec 64))) (size!51256 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105114)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105114 (_ BitVec 32)) SeekEntryResult!13634)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573702 (= lt!674535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun res!1075184 () Bool)

(assert (=> start!135416 (=> (not res!1075184) (not e!877609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135416 (= res!1075184 (validMask!0 mask!889))))

(assert (=> start!135416 e!877609))

(assert (=> start!135416 true))

(declare-fun array_inv!39350 (array!105114) Bool)

(assert (=> start!135416 (array_inv!39350 _keys!600)))

(declare-fun lt!674534 () SeekEntryResult!13634)

(declare-fun b!1573703 () Bool)

(assert (=> b!1573703 (= e!877610 (or ((_ is MissingVacant!13634) lt!674534) (and ((_ is Found!13634) lt!674534) (not (= (select (arr!50705 _keys!600) (index!56934 lt!674534)) k0!754)))))))

(declare-fun err!166 () SeekEntryResult!13634)

(assert (=> b!1573703 (= lt!674534 err!166)))

(assert (=> b!1573703 true))

(declare-fun b!1573701 () Bool)

(declare-fun res!1075182 () Bool)

(assert (=> b!1573701 (=> (not res!1075182) (not e!877609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573701 (= res!1075182 (validKeyInArray!0 k0!754))))

(declare-fun b!1573700 () Bool)

(declare-fun res!1075181 () Bool)

(assert (=> b!1573700 (=> (not res!1075181) (not e!877609))))

(assert (=> b!1573700 (= res!1075181 (= (size!51256 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(assert (= (and start!135416 res!1075184) b!1573700))

(assert (= (and b!1573700 res!1075181) b!1573701))

(assert (= (and b!1573701 res!1075182) b!1573702))

(assert (= (and b!1573702 res!1075183) b!1573703))

(declare-fun m!1446979 () Bool)

(assert (=> b!1573702 m!1446979))

(assert (=> b!1573702 m!1446979))

(declare-fun m!1446981 () Bool)

(assert (=> b!1573702 m!1446981))

(declare-fun m!1446983 () Bool)

(assert (=> start!135416 m!1446983))

(declare-fun m!1446985 () Bool)

(assert (=> start!135416 m!1446985))

(declare-fun m!1446987 () Bool)

(assert (=> b!1573703 m!1446987))

(declare-fun m!1446989 () Bool)

(assert (=> b!1573701 m!1446989))

(check-sat (not b!1573702) (not start!135416) (not b!1573701))
(check-sat)
(get-model)

(declare-fun d!165019 () Bool)

(declare-fun e!877645 () Bool)

(assert (=> d!165019 e!877645))

(declare-fun c!145532 () Bool)

(declare-fun lt!674554 () SeekEntryResult!13634)

(assert (=> d!165019 (= c!145532 (and ((_ is Intermediate!13634) lt!674554) (undefined!14446 lt!674554)))))

(declare-fun e!877643 () SeekEntryResult!13634)

(assert (=> d!165019 (= lt!674554 e!877643)))

(declare-fun c!145531 () Bool)

(assert (=> d!165019 (= c!145531 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674555 () (_ BitVec 64))

(assert (=> d!165019 (= lt!674555 (select (arr!50705 _keys!600) (toIndex!0 k0!754 mask!889)))))

(assert (=> d!165019 (validMask!0 mask!889)))

(assert (=> d!165019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889) lt!674554)))

(declare-fun b!1573752 () Bool)

(assert (=> b!1573752 (= e!877645 (bvsge (x!141756 lt!674554) #b01111111111111111111111111111110))))

(declare-fun e!877644 () SeekEntryResult!13634)

(declare-fun b!1573753 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573753 (= e!877644 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000 mask!889) k0!754 _keys!600 mask!889))))

(declare-fun b!1573754 () Bool)

(assert (=> b!1573754 (and (bvsge (index!56935 lt!674554) #b00000000000000000000000000000000) (bvslt (index!56935 lt!674554) (size!51256 _keys!600)))))

(declare-fun res!1075209 () Bool)

(assert (=> b!1573754 (= res!1075209 (= (select (arr!50705 _keys!600) (index!56935 lt!674554)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!877641 () Bool)

(assert (=> b!1573754 (=> res!1075209 e!877641)))

(declare-fun b!1573755 () Bool)

(assert (=> b!1573755 (and (bvsge (index!56935 lt!674554) #b00000000000000000000000000000000) (bvslt (index!56935 lt!674554) (size!51256 _keys!600)))))

(assert (=> b!1573755 (= e!877641 (= (select (arr!50705 _keys!600) (index!56935 lt!674554)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573756 () Bool)

(assert (=> b!1573756 (and (bvsge (index!56935 lt!674554) #b00000000000000000000000000000000) (bvslt (index!56935 lt!674554) (size!51256 _keys!600)))))

(declare-fun res!1075210 () Bool)

(assert (=> b!1573756 (= res!1075210 (= (select (arr!50705 _keys!600) (index!56935 lt!674554)) k0!754))))

(assert (=> b!1573756 (=> res!1075210 e!877641)))

(declare-fun e!877642 () Bool)

(assert (=> b!1573756 (= e!877642 e!877641)))

(declare-fun b!1573757 () Bool)

(assert (=> b!1573757 (= e!877644 (Intermediate!13634 false (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573758 () Bool)

(assert (=> b!1573758 (= e!877645 e!877642)))

(declare-fun res!1075211 () Bool)

(assert (=> b!1573758 (= res!1075211 (and ((_ is Intermediate!13634) lt!674554) (not (undefined!14446 lt!674554)) (bvslt (x!141756 lt!674554) #b01111111111111111111111111111110) (bvsge (x!141756 lt!674554) #b00000000000000000000000000000000) (bvsge (x!141756 lt!674554) #b00000000000000000000000000000000)))))

(assert (=> b!1573758 (=> (not res!1075211) (not e!877642))))

(declare-fun b!1573759 () Bool)

(assert (=> b!1573759 (= e!877643 e!877644)))

(declare-fun c!145533 () Bool)

(assert (=> b!1573759 (= c!145533 (or (= lt!674555 k0!754) (= (bvadd lt!674555 lt!674555) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573760 () Bool)

(assert (=> b!1573760 (= e!877643 (Intermediate!13634 true (toIndex!0 k0!754 mask!889) #b00000000000000000000000000000000))))

(assert (= (and d!165019 c!145531) b!1573760))

(assert (= (and d!165019 (not c!145531)) b!1573759))

(assert (= (and b!1573759 c!145533) b!1573757))

(assert (= (and b!1573759 (not c!145533)) b!1573753))

(assert (= (and d!165019 c!145532) b!1573752))

(assert (= (and d!165019 (not c!145532)) b!1573758))

(assert (= (and b!1573758 res!1075211) b!1573756))

(assert (= (and b!1573756 (not res!1075210)) b!1573754))

(assert (= (and b!1573754 (not res!1075209)) b!1573755))

(declare-fun m!1447003 () Bool)

(assert (=> b!1573756 m!1447003))

(assert (=> b!1573755 m!1447003))

(assert (=> b!1573754 m!1447003))

(assert (=> b!1573753 m!1446979))

(declare-fun m!1447005 () Bool)

(assert (=> b!1573753 m!1447005))

(assert (=> b!1573753 m!1447005))

(declare-fun m!1447007 () Bool)

(assert (=> b!1573753 m!1447007))

(assert (=> d!165019 m!1446979))

(declare-fun m!1447009 () Bool)

(assert (=> d!165019 m!1447009))

(assert (=> d!165019 m!1446983))

(assert (=> b!1573702 d!165019))

(declare-fun d!165025 () Bool)

(declare-fun lt!674563 () (_ BitVec 32))

(declare-fun lt!674562 () (_ BitVec 32))

(assert (=> d!165025 (= lt!674563 (bvmul (bvxor lt!674562 (bvlshr lt!674562 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165025 (= lt!674562 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165025 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075212 (let ((h!38408 ((_ extract 31 0) (bvand (bvxor k0!754 (bvlshr k0!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141760 (bvmul (bvxor h!38408 (bvlshr h!38408 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141760 (bvlshr x!141760 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075212 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075212 #b00000000000000000000000000000000))))))

(assert (=> d!165025 (= (toIndex!0 k0!754 mask!889) (bvand (bvxor lt!674563 (bvlshr lt!674563 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573702 d!165025))

(declare-fun d!165029 () Bool)

(assert (=> d!165029 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135416 d!165029))

(declare-fun d!165039 () Bool)

(assert (=> d!165039 (= (array_inv!39350 _keys!600) (bvsge (size!51256 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135416 d!165039))

(declare-fun d!165041 () Bool)

(assert (=> d!165041 (= (validKeyInArray!0 k0!754) (and (not (= k0!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573701 d!165041))

(check-sat (not b!1573753) (not d!165019))
