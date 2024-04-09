; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135226 () Bool)

(assert start!135226)

(declare-fun b!1573028 () Bool)

(declare-fun res!1074874 () Bool)

(declare-fun e!877214 () Bool)

(assert (=> b!1573028 (=> (not res!1074874) (not e!877214))))

(declare-datatypes ((array!105071 0))(
  ( (array!105072 (arr!50691 (Array (_ BitVec 32) (_ BitVec 64))) (size!51242 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105071)

(declare-fun mask!889 () (_ BitVec 32))

(assert (=> b!1573028 (= res!1074874 (= (size!51242 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun res!1074873 () Bool)

(assert (=> start!135226 (=> (not res!1074873) (not e!877214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135226 (= res!1074873 (validMask!0 mask!889))))

(assert (=> start!135226 e!877214))

(assert (=> start!135226 true))

(declare-fun array_inv!39336 (array!105071) Bool)

(assert (=> start!135226 (array_inv!39336 _keys!600)))

(declare-fun b!1573029 () Bool)

(declare-fun res!1074872 () Bool)

(assert (=> b!1573029 (=> (not res!1074872) (not e!877214))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573029 (= res!1074872 (validKeyInArray!0 k!754))))

(declare-fun b!1573030 () Bool)

(declare-fun e!877213 () Bool)

(assert (=> b!1573030 (= e!877214 e!877213)))

(declare-fun res!1074875 () Bool)

(assert (=> b!1573030 (=> (not res!1074875) (not e!877213))))

(declare-datatypes ((SeekEntryResult!13620 0))(
  ( (MissingZero!13620 (index!56877 (_ BitVec 32))) (Found!13620 (index!56878 (_ BitVec 32))) (Intermediate!13620 (undefined!14432 Bool) (index!56879 (_ BitVec 32)) (x!141666 (_ BitVec 32))) (Undefined!13620) (MissingVacant!13620 (index!56880 (_ BitVec 32))) )
))
(declare-fun lt!674212 () SeekEntryResult!13620)

(assert (=> b!1573030 (= res!1074875 (and (not (undefined!14432 lt!674212)) (is-Intermediate!13620 lt!674212) (not (= (select (arr!50691 _keys!600) (index!56879 lt!674212)) k!754)) (not (= (select (arr!50691 _keys!600) (index!56879 lt!674212)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50691 _keys!600) (index!56879 lt!674212)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56879 lt!674212) #b00000000000000000000000000000000) (bvslt (index!56879 lt!674212) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105071 (_ BitVec 32)) SeekEntryResult!13620)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573030 (= lt!674212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573031 () Bool)

(declare-fun lt!674211 () SeekEntryResult!13620)

(assert (=> b!1573031 (= e!877213 (and (not (is-MissingVacant!13620 lt!674211)) (not (is-Found!13620 lt!674211)) (not (is-MissingZero!13620 lt!674211)) (not (is-Undefined!13620 lt!674211))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105071 (_ BitVec 32)) SeekEntryResult!13620)

(assert (=> b!1573031 (= lt!674211 (seekKeyOrZeroReturnVacant!0 (x!141666 lt!674212) (index!56879 lt!674212) (index!56879 lt!674212) k!754 _keys!600 mask!889))))

(assert (= (and start!135226 res!1074873) b!1573028))

(assert (= (and b!1573028 res!1074874) b!1573029))

(assert (= (and b!1573029 res!1074872) b!1573030))

(assert (= (and b!1573030 res!1074875) b!1573031))

(declare-fun m!1446647 () Bool)

(assert (=> start!135226 m!1446647))

(declare-fun m!1446649 () Bool)

(assert (=> start!135226 m!1446649))

(declare-fun m!1446651 () Bool)

(assert (=> b!1573029 m!1446651))

(declare-fun m!1446653 () Bool)

(assert (=> b!1573030 m!1446653))

(declare-fun m!1446655 () Bool)

(assert (=> b!1573030 m!1446655))

(assert (=> b!1573030 m!1446655))

(declare-fun m!1446657 () Bool)

(assert (=> b!1573030 m!1446657))

(declare-fun m!1446659 () Bool)

(assert (=> b!1573031 m!1446659))

(push 1)

(assert (not b!1573030))

(assert (not start!135226))

(assert (not b!1573029))

(assert (not b!1573031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1573122 () Bool)

(declare-fun lt!674242 () SeekEntryResult!13620)

(assert (=> b!1573122 (and (bvsge (index!56879 lt!674242) #b00000000000000000000000000000000) (bvslt (index!56879 lt!674242) (size!51242 _keys!600)))))

(declare-fun e!877267 () Bool)

(assert (=> b!1573122 (= e!877267 (= (select (arr!50691 _keys!600) (index!56879 lt!674242)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573124 () Bool)

(declare-fun e!877266 () SeekEntryResult!13620)

(assert (=> b!1573124 (= e!877266 (Intermediate!13620 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573125 () Bool)

(assert (=> b!1573125 (and (bvsge (index!56879 lt!674242) #b00000000000000000000000000000000) (bvslt (index!56879 lt!674242) (size!51242 _keys!600)))))

(declare-fun res!1074904 () Bool)

(assert (=> b!1573125 (= res!1074904 (= (select (arr!50691 _keys!600) (index!56879 lt!674242)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573125 (=> res!1074904 e!877267)))

(declare-fun e!877268 () SeekEntryResult!13620)

(declare-fun b!1573126 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573126 (= e!877268 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573127 () Bool)

(assert (=> b!1573127 (= e!877268 (Intermediate!13620 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573128 () Bool)

(assert (=> b!1573128 (and (bvsge (index!56879 lt!674242) #b00000000000000000000000000000000) (bvslt (index!56879 lt!674242) (size!51242 _keys!600)))))

(declare-fun res!1074902 () Bool)

(assert (=> b!1573128 (= res!1074902 (= (select (arr!50691 _keys!600) (index!56879 lt!674242)) k!754))))

(assert (=> b!1573128 (=> res!1074902 e!877267)))

(declare-fun e!877269 () Bool)

(assert (=> b!1573128 (= e!877269 e!877267)))

(declare-fun b!1573129 () Bool)

(declare-fun e!877265 () Bool)

(assert (=> b!1573129 (= e!877265 (bvsge (x!141666 lt!674242) #b01111111111111111111111111111110))))

(declare-fun b!1573130 () Bool)

(assert (=> b!1573130 (= e!877265 e!877269)))

(declare-fun res!1074903 () Bool)

(assert (=> b!1573130 (= res!1074903 (and (is-Intermediate!13620 lt!674242) (not (undefined!14432 lt!674242)) (bvslt (x!141666 lt!674242) #b01111111111111111111111111111110) (bvsge (x!141666 lt!674242) #b00000000000000000000000000000000) (bvsge (x!141666 lt!674242) #b00000000000000000000000000000000)))))

(assert (=> b!1573130 (=> (not res!1074903) (not e!877269))))

(declare-fun d!164853 () Bool)

(assert (=> d!164853 e!877265))

(declare-fun c!145365 () Bool)

(assert (=> d!164853 (= c!145365 (and (is-Intermediate!13620 lt!674242) (undefined!14432 lt!674242)))))

(assert (=> d!164853 (= lt!674242 e!877266)))

(declare-fun c!145364 () Bool)

(assert (=> d!164853 (= c!145364 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674241 () (_ BitVec 64))

(assert (=> d!164853 (= lt!674241 (select (arr!50691 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164853 (validMask!0 mask!889)))

(assert (=> d!164853 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674242)))

(declare-fun b!1573123 () Bool)

(assert (=> b!1573123 (= e!877266 e!877268)))

(declare-fun c!145363 () Bool)

(assert (=> b!1573123 (= c!145363 (or (= lt!674241 k!754) (= (bvadd lt!674241 lt!674241) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!164853 c!145364) b!1573124))

(assert (= (and d!164853 (not c!145364)) b!1573123))

(assert (= (and b!1573123 c!145363) b!1573127))

(assert (= (and b!1573123 (not c!145363)) b!1573126))

(assert (= (and d!164853 c!145365) b!1573129))

(assert (= (and d!164853 (not c!145365)) b!1573130))

(assert (= (and b!1573130 res!1074903) b!1573128))

(assert (= (and b!1573128 (not res!1074902)) b!1573125))

(assert (= (and b!1573125 (not res!1074904)) b!1573122))

(declare-fun m!1446685 () Bool)

(assert (=> b!1573128 m!1446685))

(assert (=> d!164853 m!1446655))

(declare-fun m!1446687 () Bool)

(assert (=> d!164853 m!1446687))

(assert (=> d!164853 m!1446647))

(assert (=> b!1573126 m!1446655))

(declare-fun m!1446689 () Bool)

(assert (=> b!1573126 m!1446689))

(assert (=> b!1573126 m!1446689))

(declare-fun m!1446691 () Bool)

(assert (=> b!1573126 m!1446691))

(assert (=> b!1573122 m!1446685))

(assert (=> b!1573125 m!1446685))

(assert (=> b!1573030 d!164853))

(declare-fun d!164863 () Bool)

(declare-fun lt!674254 () (_ BitVec 32))

(declare-fun lt!674253 () (_ BitVec 32))

(assert (=> d!164863 (= lt!674254 (bvmul (bvxor lt!674253 (bvlshr lt!674253 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164863 (= lt!674253 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164863 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074905 (let ((h!38395 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141673 (bvmul (bvxor h!38395 (bvlshr h!38395 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141673 (bvlshr x!141673 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074905 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074905 #b00000000000000000000000000000000))))))

(assert (=> d!164863 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674254 (bvlshr lt!674254 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573030 d!164863))

(declare-fun d!164869 () Bool)

