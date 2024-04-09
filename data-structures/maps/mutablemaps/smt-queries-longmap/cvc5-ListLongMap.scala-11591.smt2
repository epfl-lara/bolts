; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135126 () Bool)

(assert start!135126)

(declare-fun res!1074617 () Bool)

(declare-fun e!876951 () Bool)

(assert (=> start!135126 (=> (not res!1074617) (not e!876951))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135126 (= res!1074617 (validMask!0 mask!889))))

(assert (=> start!135126 e!876951))

(assert (=> start!135126 true))

(declare-datatypes ((array!105031 0))(
  ( (array!105032 (arr!50674 (Array (_ BitVec 32) (_ BitVec 64))) (size!51225 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105031)

(declare-fun array_inv!39319 (array!105031) Bool)

(assert (=> start!135126 (array_inv!39319 _keys!600)))

(declare-fun b!1572615 () Bool)

(declare-fun res!1074616 () Bool)

(assert (=> b!1572615 (=> (not res!1074616) (not e!876951))))

(assert (=> b!1572615 (= res!1074616 (= (size!51225 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572616 () Bool)

(declare-fun res!1074615 () Bool)

(assert (=> b!1572616 (=> (not res!1074615) (not e!876951))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572616 (= res!1074615 (validKeyInArray!0 k!754))))

(declare-fun b!1572617 () Bool)

(declare-datatypes ((SeekEntryResult!13603 0))(
  ( (MissingZero!13603 (index!56809 (_ BitVec 32))) (Found!13603 (index!56810 (_ BitVec 32))) (Intermediate!13603 (undefined!14415 Bool) (index!56811 (_ BitVec 32)) (x!141594 (_ BitVec 32))) (Undefined!13603) (MissingVacant!13603 (index!56812 (_ BitVec 32))) )
))
(declare-fun lt!674026 () SeekEntryResult!13603)

(assert (=> b!1572617 (= e!876951 (and (is-Intermediate!13603 lt!674026) (not (undefined!14415 lt!674026)) (not (= (select (arr!50674 _keys!600) (index!56811 lt!674026)) k!754)) (not (= (select (arr!50674 _keys!600) (index!56811 lt!674026)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!56811 lt!674026) #b00000000000000000000000000000000) (bvsge (index!56811 lt!674026) (size!51225 _keys!600)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105031 (_ BitVec 32)) SeekEntryResult!13603)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572617 (= lt!674026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135126 res!1074617) b!1572615))

(assert (= (and b!1572615 res!1074616) b!1572616))

(assert (= (and b!1572616 res!1074615) b!1572617))

(declare-fun m!1446343 () Bool)

(assert (=> start!135126 m!1446343))

(declare-fun m!1446345 () Bool)

(assert (=> start!135126 m!1446345))

(declare-fun m!1446347 () Bool)

(assert (=> b!1572616 m!1446347))

(declare-fun m!1446349 () Bool)

(assert (=> b!1572617 m!1446349))

(declare-fun m!1446351 () Bool)

(assert (=> b!1572617 m!1446351))

(assert (=> b!1572617 m!1446351))

(declare-fun m!1446353 () Bool)

(assert (=> b!1572617 m!1446353))

(push 1)

(assert (not b!1572616))

(assert (not b!1572617))

(assert (not start!135126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164773 () Bool)

(assert (=> d!164773 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572616 d!164773))

(declare-fun b!1572672 () Bool)

(declare-fun e!876988 () SeekEntryResult!13603)

(declare-fun e!876985 () SeekEntryResult!13603)

(assert (=> b!1572672 (= e!876988 e!876985)))

(declare-fun c!145262 () Bool)

(declare-fun lt!674042 () (_ BitVec 64))

(assert (=> b!1572672 (= c!145262 (or (= lt!674042 k!754) (= (bvadd lt!674042 lt!674042) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572674 () Bool)

(declare-fun e!876984 () Bool)

(declare-fun e!876986 () Bool)

(assert (=> b!1572674 (= e!876984 e!876986)))

(declare-fun res!1074650 () Bool)

(declare-fun lt!674041 () SeekEntryResult!13603)

(assert (=> b!1572674 (= res!1074650 (and (is-Intermediate!13603 lt!674041) (not (undefined!14415 lt!674041)) (bvslt (x!141594 lt!674041) #b01111111111111111111111111111110) (bvsge (x!141594 lt!674041) #b00000000000000000000000000000000) (bvsge (x!141594 lt!674041) #b00000000000000000000000000000000)))))

(assert (=> b!1572674 (=> (not res!1074650) (not e!876986))))

(declare-fun b!1572675 () Bool)

(assert (=> b!1572675 (= e!876988 (Intermediate!13603 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572676 () Bool)

(assert (=> b!1572676 (and (bvsge (index!56811 lt!674041) #b00000000000000000000000000000000) (bvslt (index!56811 lt!674041) (size!51225 _keys!600)))))

(declare-fun e!876987 () Bool)

(assert (=> b!1572676 (= e!876987 (= (select (arr!50674 _keys!600) (index!56811 lt!674041)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572677 () Bool)

(assert (=> b!1572677 (and (bvsge (index!56811 lt!674041) #b00000000000000000000000000000000) (bvslt (index!56811 lt!674041) (size!51225 _keys!600)))))

(declare-fun res!1074649 () Bool)

(assert (=> b!1572677 (= res!1074649 (= (select (arr!50674 _keys!600) (index!56811 lt!674041)) k!754))))

(assert (=> b!1572677 (=> res!1074649 e!876987)))

(assert (=> b!1572677 (= e!876986 e!876987)))

(declare-fun b!1572678 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572678 (= e!876985 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun d!164775 () Bool)

(assert (=> d!164775 e!876984))

(declare-fun c!145261 () Bool)

(assert (=> d!164775 (= c!145261 (and (is-Intermediate!13603 lt!674041) (undefined!14415 lt!674041)))))

(assert (=> d!164775 (= lt!674041 e!876988)))

(declare-fun c!145263 () Bool)

(assert (=> d!164775 (= c!145263 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164775 (= lt!674042 (select (arr!50674 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164775 (validMask!0 mask!889)))

(assert (=> d!164775 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674041)))

(declare-fun b!1572673 () Bool)

(assert (=> b!1572673 (and (bvsge (index!56811 lt!674041) #b00000000000000000000000000000000) (bvslt (index!56811 lt!674041) (size!51225 _keys!600)))))

(declare-fun res!1074648 () Bool)

(assert (=> b!1572673 (= res!1074648 (= (select (arr!50674 _keys!600) (index!56811 lt!674041)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572673 (=> res!1074648 e!876987)))

(declare-fun b!1572679 () Bool)

(assert (=> b!1572679 (= e!876985 (Intermediate!13603 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572680 () Bool)

(assert (=> b!1572680 (= e!876984 (bvsge (x!141594 lt!674041) #b01111111111111111111111111111110))))

(assert (= (and d!164775 c!145263) b!1572675))

(assert (= (and d!164775 (not c!145263)) b!1572672))

(assert (= (and b!1572672 c!145262) b!1572679))

(assert (= (and b!1572672 (not c!145262)) b!1572678))

(assert (= (and d!164775 c!145261) b!1572680))

(assert (= (and d!164775 (not c!145261)) b!1572674))

(assert (= (and b!1572674 res!1074650) b!1572677))

(assert (= (and b!1572677 (not res!1074649)) b!1572673))

(assert (= (and b!1572673 (not res!1074648)) b!1572676))

(declare-fun m!1446379 () Bool)

(assert (=> b!1572677 m!1446379))

(assert (=> d!164775 m!1446351))

(declare-fun m!1446381 () Bool)

(assert (=> d!164775 m!1446381))

(assert (=> d!164775 m!1446343))

(assert (=> b!1572676 m!1446379))

(assert (=> b!1572673 m!1446379))

(assert (=> b!1572678 m!1446351))

(declare-fun m!1446383 () Bool)

(assert (=> b!1572678 m!1446383))

(assert (=> b!1572678 m!1446383))

(declare-fun m!1446385 () Bool)

(assert (=> b!1572678 m!1446385))

(assert (=> b!1572617 d!164775))

(declare-fun d!164787 () Bool)

(declare-fun lt!674056 () (_ BitVec 32))

(declare-fun lt!674055 () (_ BitVec 32))

(assert (=> d!164787 (= lt!674056 (bvmul (bvxor lt!674055 (bvlshr lt!674055 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164787 (= lt!674055 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164787 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074651 (let ((h!38387 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141600 (bvmul (bvxor h!38387 (bvlshr h!38387 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141600 (bvlshr x!141600 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074651 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074651 #b00000000000000000000000000000000))))))

(assert (=> d!164787 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674056 (bvlshr lt!674056 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572617 d!164787))

(declare-fun d!164791 () Bool)

(assert (=> d!164791 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135126 d!164791))

(declare-fun d!164797 () Bool)

(assert (=> d!164797 (= (array_inv!39319 _keys!600) (bvsge (size!51225 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135126 d!164797))

(push 1)

(assert (not d!164775))

(assert (not b!1572678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

