; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135060 () Bool)

(assert start!135060)

(declare-fun res!1074423 () Bool)

(declare-fun e!876797 () Bool)

(assert (=> start!135060 (=> (not res!1074423) (not e!876797))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135060 (= res!1074423 (validMask!0 mask!889))))

(assert (=> start!135060 e!876797))

(assert (=> start!135060 true))

(declare-datatypes ((array!104992 0))(
  ( (array!104993 (arr!50656 (Array (_ BitVec 32) (_ BitVec 64))) (size!51207 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104992)

(declare-fun array_inv!39301 (array!104992) Bool)

(assert (=> start!135060 (array_inv!39301 _keys!600)))

(declare-fun b!1572372 () Bool)

(declare-fun res!1074424 () Bool)

(assert (=> b!1572372 (=> (not res!1074424) (not e!876797))))

(assert (=> b!1572372 (= res!1074424 (= (size!51207 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572373 () Bool)

(declare-fun res!1074425 () Bool)

(assert (=> b!1572373 (=> (not res!1074425) (not e!876797))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572373 (= res!1074425 (validKeyInArray!0 k!754))))

(declare-datatypes ((SeekEntryResult!13585 0))(
  ( (MissingZero!13585 (index!56737 (_ BitVec 32))) (Found!13585 (index!56738 (_ BitVec 32))) (Intermediate!13585 (undefined!14397 Bool) (index!56739 (_ BitVec 32)) (x!141522 (_ BitVec 32))) (Undefined!13585) (MissingVacant!13585 (index!56740 (_ BitVec 32))) )
))
(declare-fun lt!673936 () SeekEntryResult!13585)

(declare-fun b!1572374 () Bool)

(assert (=> b!1572374 (= e!876797 (and (is-Intermediate!13585 lt!673936) (not (undefined!14397 lt!673936)) (= (select (arr!50656 _keys!600) (index!56739 lt!673936)) k!754) (or (bvslt (index!56739 lt!673936) #b00000000000000000000000000000000) (bvsge (index!56739 lt!673936) (size!51207 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104992 (_ BitVec 32)) SeekEntryResult!13585)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572374 (= lt!673936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135060 res!1074423) b!1572372))

(assert (= (and b!1572372 res!1074424) b!1572373))

(assert (= (and b!1572373 res!1074425) b!1572374))

(declare-fun m!1446133 () Bool)

(assert (=> start!135060 m!1446133))

(declare-fun m!1446135 () Bool)

(assert (=> start!135060 m!1446135))

(declare-fun m!1446137 () Bool)

(assert (=> b!1572373 m!1446137))

(declare-fun m!1446139 () Bool)

(assert (=> b!1572374 m!1446139))

(declare-fun m!1446141 () Bool)

(assert (=> b!1572374 m!1446141))

(assert (=> b!1572374 m!1446141))

(declare-fun m!1446143 () Bool)

(assert (=> b!1572374 m!1446143))

(push 1)

(assert (not start!135060))

(assert (not b!1572374))

(assert (not b!1572373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164733 () Bool)

(assert (=> d!164733 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135060 d!164733))

(declare-fun d!164743 () Bool)

(assert (=> d!164743 (= (array_inv!39301 _keys!600) (bvsge (size!51207 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135060 d!164743))

(declare-fun d!164745 () Bool)

(declare-fun e!876842 () Bool)

(assert (=> d!164745 e!876842))

(declare-fun c!145242 () Bool)

(declare-fun lt!673958 () SeekEntryResult!13585)

(assert (=> d!164745 (= c!145242 (and (is-Intermediate!13585 lt!673958) (undefined!14397 lt!673958)))))

(declare-fun e!876840 () SeekEntryResult!13585)

(assert (=> d!164745 (= lt!673958 e!876840)))

(declare-fun c!145243 () Bool)

(assert (=> d!164745 (= c!145243 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673957 () (_ BitVec 64))

(assert (=> d!164745 (= lt!673957 (select (arr!50656 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164745 (validMask!0 mask!889)))

(assert (=> d!164745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673958)))

(declare-fun b!1572446 () Bool)

(assert (=> b!1572446 (= e!876840 (Intermediate!13585 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572447 () Bool)

(assert (=> b!1572447 (and (bvsge (index!56739 lt!673958) #b00000000000000000000000000000000) (bvslt (index!56739 lt!673958) (size!51207 _keys!600)))))

(declare-fun e!876843 () Bool)

(assert (=> b!1572447 (= e!876843 (= (select (arr!50656 _keys!600) (index!56739 lt!673958)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572448 () Bool)

(assert (=> b!1572448 (and (bvsge (index!56739 lt!673958) #b00000000000000000000000000000000) (bvslt (index!56739 lt!673958) (size!51207 _keys!600)))))

(declare-fun res!1074460 () Bool)

(assert (=> b!1572448 (= res!1074460 (= (select (arr!50656 _keys!600) (index!56739 lt!673958)) k!754))))

(assert (=> b!1572448 (=> res!1074460 e!876843)))

(declare-fun e!876841 () Bool)

(assert (=> b!1572448 (= e!876841 e!876843)))

(declare-fun b!1572449 () Bool)

(declare-fun e!876844 () SeekEntryResult!13585)

(assert (=> b!1572449 (= e!876844 (Intermediate!13585 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572450 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572450 (= e!876844 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572451 () Bool)

(assert (=> b!1572451 (= e!876840 e!876844)))

(declare-fun c!145241 () Bool)

(assert (=> b!1572451 (= c!145241 (or (= lt!673957 k!754) (= (bvadd lt!673957 lt!673957) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572452 () Bool)

(assert (=> b!1572452 (and (bvsge (index!56739 lt!673958) #b00000000000000000000000000000000) (bvslt (index!56739 lt!673958) (size!51207 _keys!600)))))

(declare-fun res!1074462 () Bool)

(assert (=> b!1572452 (= res!1074462 (= (select (arr!50656 _keys!600) (index!56739 lt!673958)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572452 (=> res!1074462 e!876843)))

(declare-fun b!1572453 () Bool)

(assert (=> b!1572453 (= e!876842 e!876841)))

(declare-fun res!1074461 () Bool)

(assert (=> b!1572453 (= res!1074461 (and (is-Intermediate!13585 lt!673958) (not (undefined!14397 lt!673958)) (bvslt (x!141522 lt!673958) #b01111111111111111111111111111110) (bvsge (x!141522 lt!673958) #b00000000000000000000000000000000) (bvsge (x!141522 lt!673958) #b00000000000000000000000000000000)))))

(assert (=> b!1572453 (=> (not res!1074461) (not e!876841))))

(declare-fun b!1572454 () Bool)

(assert (=> b!1572454 (= e!876842 (bvsge (x!141522 lt!673958) #b01111111111111111111111111111110))))

(assert (= (and d!164745 c!145243) b!1572446))

(assert (= (and d!164745 (not c!145243)) b!1572451))

(assert (= (and b!1572451 c!145241) b!1572449))

(assert (= (and b!1572451 (not c!145241)) b!1572450))

(assert (= (and d!164745 c!145242) b!1572454))

(assert (= (and d!164745 (not c!145242)) b!1572453))

(assert (= (and b!1572453 res!1074461) b!1572448))

(assert (= (and b!1572448 (not res!1074460)) b!1572452))

(assert (= (and b!1572452 (not res!1074462)) b!1572447))

(assert (=> d!164745 m!1446141))

(declare-fun m!1446177 () Bool)

(assert (=> d!164745 m!1446177))

(assert (=> d!164745 m!1446133))

(declare-fun m!1446179 () Bool)

(assert (=> b!1572448 m!1446179))

(assert (=> b!1572447 m!1446179))

(assert (=> b!1572450 m!1446141))

(declare-fun m!1446181 () Bool)

(assert (=> b!1572450 m!1446181))

(assert (=> b!1572450 m!1446181))

(declare-fun m!1446183 () Bool)

(assert (=> b!1572450 m!1446183))

(assert (=> b!1572452 m!1446179))

(assert (=> b!1572374 d!164745))

(declare-fun d!164753 () Bool)

(declare-fun lt!673972 () (_ BitVec 32))

(declare-fun lt!673971 () (_ BitVec 32))

(assert (=> d!164753 (= lt!673972 (bvmul (bvxor lt!673971 (bvlshr lt!673971 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164753 (= lt!673971 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164753 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074469 (let ((h!38385 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141529 (bvmul (bvxor h!38385 (bvlshr h!38385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141529 (bvlshr x!141529 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074469 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074469 #b00000000000000000000000000000000))))))

(assert (=> d!164753 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673972 (bvlshr lt!673972 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572374 d!164753))

(declare-fun d!164755 () Bool)

(assert (=> d!164755 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572373 d!164755))

(push 1)

(assert (not d!164745))

(assert (not b!1572450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

