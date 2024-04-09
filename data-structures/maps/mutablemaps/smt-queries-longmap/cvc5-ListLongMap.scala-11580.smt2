; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134970 () Bool)

(assert start!134970)

(declare-fun res!1074228 () Bool)

(declare-fun e!876618 () Bool)

(assert (=> start!134970 (=> (not res!1074228) (not e!876618))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134970 (= res!1074228 (validMask!0 mask!889))))

(assert (=> start!134970 e!876618))

(assert (=> start!134970 true))

(declare-datatypes ((array!104956 0))(
  ( (array!104957 (arr!50641 (Array (_ BitVec 32) (_ BitVec 64))) (size!51192 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104956)

(declare-fun array_inv!39286 (array!104956) Bool)

(assert (=> start!134970 (array_inv!39286 _keys!600)))

(declare-fun b!1572075 () Bool)

(declare-fun res!1074230 () Bool)

(assert (=> b!1572075 (=> (not res!1074230) (not e!876618))))

(assert (=> b!1572075 (= res!1074230 (= (size!51192 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572076 () Bool)

(declare-fun res!1074229 () Bool)

(assert (=> b!1572076 (=> (not res!1074229) (not e!876618))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572076 (= res!1074229 (validKeyInArray!0 k!754))))

(declare-datatypes ((SeekEntryResult!13570 0))(
  ( (MissingZero!13570 (index!56677 (_ BitVec 32))) (Found!13570 (index!56678 (_ BitVec 32))) (Intermediate!13570 (undefined!14382 Bool) (index!56679 (_ BitVec 32)) (x!141455 (_ BitVec 32))) (Undefined!13570) (MissingVacant!13570 (index!56680 (_ BitVec 32))) )
))
(declare-fun lt!673819 () SeekEntryResult!13570)

(declare-fun b!1572077 () Bool)

(assert (=> b!1572077 (= e!876618 (and (is-Intermediate!13570 lt!673819) (not (undefined!14382 lt!673819)) (not (= (select (arr!50641 _keys!600) (index!56679 lt!673819)) k!754)) (not (= (select (arr!50641 _keys!600) (index!56679 lt!673819)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50641 _keys!600) (index!56679 lt!673819)) #b1000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!56679 lt!673819) #b00000000000000000000000000000000) (bvsge (index!56679 lt!673819) (bvadd #b00000000000000000000000000000001 mask!889)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104956 (_ BitVec 32)) SeekEntryResult!13570)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572077 (= lt!673819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134970 res!1074228) b!1572075))

(assert (= (and b!1572075 res!1074230) b!1572076))

(assert (= (and b!1572076 res!1074229) b!1572077))

(declare-fun m!1445929 () Bool)

(assert (=> start!134970 m!1445929))

(declare-fun m!1445931 () Bool)

(assert (=> start!134970 m!1445931))

(declare-fun m!1445933 () Bool)

(assert (=> b!1572076 m!1445933))

(declare-fun m!1445935 () Bool)

(assert (=> b!1572077 m!1445935))

(declare-fun m!1445937 () Bool)

(assert (=> b!1572077 m!1445937))

(assert (=> b!1572077 m!1445937))

(declare-fun m!1445939 () Bool)

(assert (=> b!1572077 m!1445939))

(push 1)

(assert (not b!1572077))

(assert (not start!134970))

(assert (not b!1572076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1572132 () Bool)

(declare-fun lt!673835 () SeekEntryResult!13570)

(assert (=> b!1572132 (and (bvsge (index!56679 lt!673835) #b00000000000000000000000000000000) (bvslt (index!56679 lt!673835) (size!51192 _keys!600)))))

(declare-fun res!1074261 () Bool)

(assert (=> b!1572132 (= res!1074261 (= (select (arr!50641 _keys!600) (index!56679 lt!673835)) k!754))))

(declare-fun e!876652 () Bool)

(assert (=> b!1572132 (=> res!1074261 e!876652)))

(declare-fun e!876653 () Bool)

(assert (=> b!1572132 (= e!876653 e!876652)))

(declare-fun d!164663 () Bool)

(declare-fun e!876651 () Bool)

(assert (=> d!164663 e!876651))

(declare-fun c!145181 () Bool)

(assert (=> d!164663 (= c!145181 (and (is-Intermediate!13570 lt!673835) (undefined!14382 lt!673835)))))

(declare-fun e!876654 () SeekEntryResult!13570)

(assert (=> d!164663 (= lt!673835 e!876654)))

(declare-fun c!145180 () Bool)

(assert (=> d!164663 (= c!145180 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673834 () (_ BitVec 64))

(assert (=> d!164663 (= lt!673834 (select (arr!50641 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164663 (validMask!0 mask!889)))

(assert (=> d!164663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673835)))

(declare-fun b!1572133 () Bool)

(declare-fun e!876655 () SeekEntryResult!13570)

(assert (=> b!1572133 (= e!876654 e!876655)))

(declare-fun c!145182 () Bool)

(assert (=> b!1572133 (= c!145182 (or (= lt!673834 k!754) (= (bvadd lt!673834 lt!673834) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572134 () Bool)

(assert (=> b!1572134 (and (bvsge (index!56679 lt!673835) #b00000000000000000000000000000000) (bvslt (index!56679 lt!673835) (size!51192 _keys!600)))))

(declare-fun res!1074262 () Bool)

(assert (=> b!1572134 (= res!1074262 (= (select (arr!50641 _keys!600) (index!56679 lt!673835)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572134 (=> res!1074262 e!876652)))

(declare-fun b!1572135 () Bool)

(assert (=> b!1572135 (= e!876655 (Intermediate!13570 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572136 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572136 (= e!876655 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572137 () Bool)

(assert (=> b!1572137 (= e!876654 (Intermediate!13570 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572138 () Bool)

(assert (=> b!1572138 (= e!876651 (bvsge (x!141455 lt!673835) #b01111111111111111111111111111110))))

(declare-fun b!1572139 () Bool)

(assert (=> b!1572139 (and (bvsge (index!56679 lt!673835) #b00000000000000000000000000000000) (bvslt (index!56679 lt!673835) (size!51192 _keys!600)))))

(assert (=> b!1572139 (= e!876652 (= (select (arr!50641 _keys!600) (index!56679 lt!673835)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572140 () Bool)

(assert (=> b!1572140 (= e!876651 e!876653)))

(declare-fun res!1074263 () Bool)

(assert (=> b!1572140 (= res!1074263 (and (is-Intermediate!13570 lt!673835) (not (undefined!14382 lt!673835)) (bvslt (x!141455 lt!673835) #b01111111111111111111111111111110) (bvsge (x!141455 lt!673835) #b00000000000000000000000000000000) (bvsge (x!141455 lt!673835) #b00000000000000000000000000000000)))))

(assert (=> b!1572140 (=> (not res!1074263) (not e!876653))))

(assert (= (and d!164663 c!145180) b!1572137))

(assert (= (and d!164663 (not c!145180)) b!1572133))

(assert (= (and b!1572133 c!145182) b!1572135))

(assert (= (and b!1572133 (not c!145182)) b!1572136))

(assert (= (and d!164663 c!145181) b!1572138))

(assert (= (and d!164663 (not c!145181)) b!1572140))

(assert (= (and b!1572140 res!1074263) b!1572132))

(assert (= (and b!1572132 (not res!1074261)) b!1572134))

(assert (= (and b!1572134 (not res!1074262)) b!1572139))

(declare-fun m!1445965 () Bool)

(assert (=> b!1572132 m!1445965))

(assert (=> b!1572134 m!1445965))

(assert (=> d!164663 m!1445937))

(declare-fun m!1445967 () Bool)

(assert (=> d!164663 m!1445967))

(assert (=> d!164663 m!1445929))

(assert (=> b!1572136 m!1445937))

(declare-fun m!1445969 () Bool)

(assert (=> b!1572136 m!1445969))

(assert (=> b!1572136 m!1445969))

(declare-fun m!1445971 () Bool)

(assert (=> b!1572136 m!1445971))

(assert (=> b!1572139 m!1445965))

(assert (=> b!1572077 d!164663))

(declare-fun d!164667 () Bool)

(declare-fun lt!673843 () (_ BitVec 32))

(declare-fun lt!673842 () (_ BitVec 32))

(assert (=> d!164667 (= lt!673843 (bvmul (bvxor lt!673842 (bvlshr lt!673842 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164667 (= lt!673842 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164667 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074264 (let ((h!38378 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141460 (bvmul (bvxor h!38378 (bvlshr h!38378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141460 (bvlshr x!141460 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074264 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074264 #b00000000000000000000000000000000))))))

(assert (=> d!164667 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673843 (bvlshr lt!673843 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572077 d!164667))

(declare-fun d!164675 () Bool)

(assert (=> d!164675 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134970 d!164675))

(declare-fun d!164681 () Bool)

(assert (=> d!164681 (= (array_inv!39286 _keys!600) (bvsge (size!51192 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134970 d!164681))

(declare-fun d!164683 () Bool)

(assert (=> d!164683 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572076 d!164683))

(push 1)

(assert (not d!164663))

(assert (not b!1572136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

