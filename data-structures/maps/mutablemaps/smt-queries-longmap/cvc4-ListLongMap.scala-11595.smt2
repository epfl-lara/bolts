; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135184 () Bool)

(assert start!135184)

(declare-fun b!1572860 () Bool)

(declare-fun e!877116 () Bool)

(declare-datatypes ((SeekEntryResult!13617 0))(
  ( (MissingZero!13617 (index!56865 (_ BitVec 32))) (Found!13617 (index!56866 (_ BitVec 32))) (Intermediate!13617 (undefined!14429 Bool) (index!56867 (_ BitVec 32)) (x!141646 (_ BitVec 32))) (Undefined!13617) (MissingVacant!13617 (index!56868 (_ BitVec 32))) )
))
(declare-fun lt!674140 () SeekEntryResult!13617)

(declare-datatypes ((array!105062 0))(
  ( (array!105063 (arr!50688 (Array (_ BitVec 32) (_ BitVec 64))) (size!51239 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105062)

(assert (=> b!1572860 (= e!877116 (and (not (is-MissingVacant!13617 lt!674140)) (is-Found!13617 lt!674140) (or (bvslt (index!56866 lt!674140) #b00000000000000000000000000000000) (bvsge (index!56866 lt!674140) (size!51239 _keys!600)))))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun lt!674139 () SeekEntryResult!13617)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105062 (_ BitVec 32)) SeekEntryResult!13617)

(assert (=> b!1572860 (= lt!674140 (seekKeyOrZeroReturnVacant!0 (x!141646 lt!674139) (index!56867 lt!674139) (index!56867 lt!674139) k!754 _keys!600 mask!889))))

(declare-fun b!1572859 () Bool)

(declare-fun e!877115 () Bool)

(assert (=> b!1572859 (= e!877115 e!877116)))

(declare-fun res!1074806 () Bool)

(assert (=> b!1572859 (=> (not res!1074806) (not e!877116))))

(assert (=> b!1572859 (= res!1074806 (and (not (undefined!14429 lt!674139)) (is-Intermediate!13617 lt!674139) (not (= (select (arr!50688 _keys!600) (index!56867 lt!674139)) k!754)) (not (= (select (arr!50688 _keys!600) (index!56867 lt!674139)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50688 _keys!600) (index!56867 lt!674139)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56867 lt!674139) #b00000000000000000000000000000000) (bvslt (index!56867 lt!674139) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105062 (_ BitVec 32)) SeekEntryResult!13617)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572859 (= lt!674139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572858 () Bool)

(declare-fun res!1074809 () Bool)

(assert (=> b!1572858 (=> (not res!1074809) (not e!877115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572858 (= res!1074809 (validKeyInArray!0 k!754))))

(declare-fun res!1074808 () Bool)

(assert (=> start!135184 (=> (not res!1074808) (not e!877115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135184 (= res!1074808 (validMask!0 mask!889))))

(assert (=> start!135184 e!877115))

(assert (=> start!135184 true))

(declare-fun array_inv!39333 (array!105062) Bool)

(assert (=> start!135184 (array_inv!39333 _keys!600)))

(declare-fun b!1572857 () Bool)

(declare-fun res!1074807 () Bool)

(assert (=> b!1572857 (=> (not res!1074807) (not e!877115))))

(assert (=> b!1572857 (= res!1074807 (= (size!51239 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(assert (= (and start!135184 res!1074808) b!1572857))

(assert (= (and b!1572857 res!1074807) b!1572858))

(assert (= (and b!1572858 res!1074809) b!1572859))

(assert (= (and b!1572859 res!1074806) b!1572860))

(declare-fun m!1446557 () Bool)

(assert (=> b!1572860 m!1446557))

(declare-fun m!1446559 () Bool)

(assert (=> b!1572859 m!1446559))

(declare-fun m!1446561 () Bool)

(assert (=> b!1572859 m!1446561))

(assert (=> b!1572859 m!1446561))

(declare-fun m!1446563 () Bool)

(assert (=> b!1572859 m!1446563))

(declare-fun m!1446565 () Bool)

(assert (=> b!1572858 m!1446565))

(declare-fun m!1446567 () Bool)

(assert (=> start!135184 m!1446567))

(declare-fun m!1446569 () Bool)

(assert (=> start!135184 m!1446569))

(push 1)

(assert (not b!1572858))

(assert (not start!135184))

(assert (not b!1572859))

(assert (not b!1572860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164819 () Bool)

(assert (=> d!164819 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572858 d!164819))

(declare-fun d!164821 () Bool)

(assert (=> d!164821 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135184 d!164821))

(declare-fun d!164827 () Bool)

(assert (=> d!164827 (= (array_inv!39333 _keys!600) (bvsge (size!51239 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135184 d!164827))

(declare-fun b!1572933 () Bool)

(declare-fun e!877159 () SeekEntryResult!13617)

(assert (=> b!1572933 (= e!877159 (Intermediate!13617 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572934 () Bool)

(declare-fun lt!674169 () SeekEntryResult!13617)

(assert (=> b!1572934 (and (bvsge (index!56867 lt!674169) #b00000000000000000000000000000000) (bvslt (index!56867 lt!674169) (size!51239 _keys!600)))))

(declare-fun e!877161 () Bool)

(assert (=> b!1572934 (= e!877161 (= (select (arr!50688 _keys!600) (index!56867 lt!674169)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572935 () Bool)

(declare-fun e!877158 () SeekEntryResult!13617)

(assert (=> b!1572935 (= e!877158 e!877159)))

(declare-fun c!145301 () Bool)

(declare-fun lt!674170 () (_ BitVec 64))

(assert (=> b!1572935 (= c!145301 (or (= lt!674170 k!754) (= (bvadd lt!674170 lt!674170) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164829 () Bool)

(declare-fun e!877157 () Bool)

(assert (=> d!164829 e!877157))

(declare-fun c!145300 () Bool)

(assert (=> d!164829 (= c!145300 (and (is-Intermediate!13617 lt!674169) (undefined!14429 lt!674169)))))

(assert (=> d!164829 (= lt!674169 e!877158)))

(declare-fun c!145302 () Bool)

(assert (=> d!164829 (= c!145302 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164829 (= lt!674170 (select (arr!50688 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164829 (validMask!0 mask!889)))

(assert (=> d!164829 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674169)))

(declare-fun b!1572936 () Bool)

(assert (=> b!1572936 (and (bvsge (index!56867 lt!674169) #b00000000000000000000000000000000) (bvslt (index!56867 lt!674169) (size!51239 _keys!600)))))

(declare-fun res!1074836 () Bool)

(assert (=> b!1572936 (= res!1074836 (= (select (arr!50688 _keys!600) (index!56867 lt!674169)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572936 (=> res!1074836 e!877161)))

(declare-fun b!1572937 () Bool)

(assert (=> b!1572937 (= e!877158 (Intermediate!13617 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572938 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572938 (= e!877159 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572939 () Bool)

(assert (=> b!1572939 (= e!877157 (bvsge (x!141646 lt!674169) #b01111111111111111111111111111110))))

(declare-fun b!1572940 () Bool)

(assert (=> b!1572940 (and (bvsge (index!56867 lt!674169) #b00000000000000000000000000000000) (bvslt (index!56867 lt!674169) (size!51239 _keys!600)))))

(declare-fun res!1074838 () Bool)

(assert (=> b!1572940 (= res!1074838 (= (select (arr!50688 _keys!600) (index!56867 lt!674169)) k!754))))

(assert (=> b!1572940 (=> res!1074838 e!877161)))

(declare-fun e!877160 () Bool)

(assert (=> b!1572940 (= e!877160 e!877161)))

(declare-fun b!1572941 () Bool)

(assert (=> b!1572941 (= e!877157 e!877160)))

(declare-fun res!1074837 () Bool)

(assert (=> b!1572941 (= res!1074837 (and (is-Intermediate!13617 lt!674169) (not (undefined!14429 lt!674169)) (bvslt (x!141646 lt!674169) #b01111111111111111111111111111110) (bvsge (x!141646 lt!674169) #b00000000000000000000000000000000) (bvsge (x!141646 lt!674169) #b00000000000000000000000000000000)))))

(assert (=> b!1572941 (=> (not res!1074837) (not e!877160))))

(assert (= (and d!164829 c!145302) b!1572937))

(assert (= (and d!164829 (not c!145302)) b!1572935))

(assert (= (and b!1572935 c!145301) b!1572933))

(assert (= (and b!1572935 (not c!145301)) b!1572938))

(assert (= (and d!164829 c!145300) b!1572939))

(assert (= (and d!164829 (not c!145300)) b!1572941))

(assert (= (and b!1572941 res!1074837) b!1572940))

(assert (= (and b!1572940 (not res!1074838)) b!1572936))

(assert (= (and b!1572936 (not res!1074836)) b!1572934))

(declare-fun m!1446587 () Bool)

(assert (=> b!1572934 m!1446587))

(assert (=> d!164829 m!1446561))

(declare-fun m!1446589 () Bool)

(assert (=> d!164829 m!1446589))

(assert (=> d!164829 m!1446567))

(assert (=> b!1572936 m!1446587))

(assert (=> b!1572938 m!1446561))

(declare-fun m!1446591 () Bool)

(assert (=> b!1572938 m!1446591))

(assert (=> b!1572938 m!1446591))

(declare-fun m!1446593 () Bool)

(assert (=> b!1572938 m!1446593))

(assert (=> b!1572940 m!1446587))

(assert (=> b!1572859 d!164829))

(declare-fun d!164839 () Bool)

(declare-fun lt!674180 () (_ BitVec 32))

(declare-fun lt!674179 () (_ BitVec 32))

(assert (=> d!164839 (= lt!674180 (bvmul (bvxor lt!674179 (bvlshr lt!674179 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164839 (= lt!674179 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164839 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074839 (let ((h!38392 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141652 (bvmul (bvxor h!38392 (bvlshr h!38392 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141652 (bvlshr x!141652 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074839 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074839 #b00000000000000000000000000000000))))))

(assert (=> d!164839 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674180 (bvlshr lt!674180 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572859 d!164839))

(declare-fun b!1572990 () Bool)

(declare-fun e!877188 () SeekEntryResult!13617)

(assert (=> b!1572990 (= e!877188 (Found!13617 (index!56867 lt!674139)))))

(declare-fun b!1572991 () Bool)

(declare-fun e!877187 () SeekEntryResult!13617)

(assert (=> b!1572991 (= e!877187 Undefined!13617)))

(declare-fun b!1572992 () Bool)

(assert (=> b!1572992 (= e!877187 e!877188)))

(declare-fun c!145327 () Bool)

(declare-fun lt!674194 () (_ BitVec 64))

(assert (=> b!1572992 (= c!145327 (= lt!674194 k!754))))

(declare-fun b!1572993 () Bool)

(declare-fun e!877186 () SeekEntryResult!13617)

(assert (=> b!1572993 (= e!877186 (seekKeyOrZeroReturnVacant!0 (bvadd (x!141646 lt!674139) #b00000000000000000000000000000001) (nextIndex!0 (index!56867 lt!674139) (x!141646 lt!674139) mask!889) (index!56867 lt!674139) k!754 _keys!600 mask!889))))

(declare-fun lt!674193 () SeekEntryResult!13617)

(declare-fun d!164841 () Bool)

(assert (=> d!164841 (and (or (is-Undefined!13617 lt!674193) (not (is-Found!13617 lt!674193)) (and (bvsge (index!56866 lt!674193) #b00000000000000000000000000000000) (bvslt (index!56866 lt!674193) (size!51239 _keys!600)))) (or (is-Undefined!13617 lt!674193) (is-Found!13617 lt!674193) (not (is-MissingVacant!13617 lt!674193)) (not (= (index!56868 lt!674193) (index!56867 lt!674139))) (and (bvsge (index!56868 lt!674193) #b00000000000000000000000000000000) (bvslt (index!56868 lt!674193) (size!51239 _keys!600)))) (or (is-Undefined!13617 lt!674193) (ite (is-Found!13617 lt!674193) (= (select (arr!50688 _keys!600) (index!56866 lt!674193)) k!754) (and (is-MissingVacant!13617 lt!674193) (= (index!56868 lt!674193) (index!56867 lt!674139)) (= (select (arr!50688 _keys!600) (index!56868 lt!674193)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!164841 (= lt!674193 e!877187)))

(declare-fun c!145329 () Bool)

(assert (=> d!164841 (= c!145329 (bvsge (x!141646 lt!674139) #b01111111111111111111111111111110))))

(assert (=> d!164841 (= lt!674194 (select (arr!50688 _keys!600) (index!56867 lt!674139)))))

(assert (=> d!164841 (validMask!0 mask!889)))

(assert (=> d!164841 (= (seekKeyOrZeroReturnVacant!0 (x!141646 lt!674139) (index!56867 lt!674139) (index!56867 lt!674139) k!754 _keys!600 mask!889) lt!674193)))

(declare-fun b!1572994 () Bool)

(declare-fun c!145328 () Bool)

(assert (=> b!1572994 (= c!145328 (= lt!674194 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572994 (= e!877188 e!877186)))

(declare-fun b!1572995 () Bool)

(assert (=> b!1572995 (= e!877186 (MissingVacant!13617 (index!56867 lt!674139)))))

(assert (= (and d!164841 c!145329) b!1572991))

(assert (= (and d!164841 (not c!145329)) b!1572992))

(assert (= (and b!1572992 c!145327) b!1572990))

(assert (= (and b!1572992 (not c!145327)) b!1572994))

(assert (= (and b!1572994 c!145328) b!1572995))

(assert (= (and b!1572994 (not c!145328)) b!1572993))

(declare-fun m!1446611 () Bool)

(assert (=> b!1572993 m!1446611))

(assert (=> b!1572993 m!1446611))

(declare-fun m!1446613 () Bool)

(assert (=> b!1572993 m!1446613))

(declare-fun m!1446615 () Bool)

(assert (=> d!164841 m!1446615))

(declare-fun m!1446617 () Bool)

(assert (=> d!164841 m!1446617))

(assert (=> d!164841 m!1446559))

(assert (=> d!164841 m!1446567))

(assert (=> b!1572860 d!164841))

(push 1)

(assert (not b!1572993))

(assert (not d!164829))

(assert (not b!1572938))

(assert (not d!164841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

