; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135378 () Bool)

(assert start!135378)

(declare-fun res!1075106 () Bool)

(declare-fun e!877530 () Bool)

(assert (=> start!135378 (=> (not res!1075106) (not e!877530))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135378 (= res!1075106 (validMask!0 mask!889))))

(assert (=> start!135378 e!877530))

(assert (=> start!135378 true))

(declare-datatypes ((array!105103 0))(
  ( (array!105104 (arr!50701 (Array (_ BitVec 32) (_ BitVec 64))) (size!51252 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105103)

(declare-fun array_inv!39346 (array!105103) Bool)

(assert (=> start!135378 (array_inv!39346 _keys!600)))

(declare-fun b!1573574 () Bool)

(declare-fun e!877529 () Bool)

(declare-datatypes ((SeekEntryResult!13630 0))(
  ( (MissingZero!13630 (index!56917 (_ BitVec 32))) (Found!13630 (index!56918 (_ BitVec 32))) (Intermediate!13630 (undefined!14442 Bool) (index!56919 (_ BitVec 32)) (x!141738 (_ BitVec 32))) (Undefined!13630) (MissingVacant!13630 (index!56920 (_ BitVec 32))) )
))
(declare-fun lt!674463 () SeekEntryResult!13630)

(assert (=> b!1573574 (= e!877529 (and (not (is-MissingVacant!13630 lt!674463)) (not (is-Found!13630 lt!674463)) (not (is-MissingZero!13630 lt!674463)) (not (is-Undefined!13630 lt!674463))))))

(declare-fun err!150 () SeekEntryResult!13630)

(assert (=> b!1573574 (= lt!674463 err!150)))

(assert (=> b!1573574 true))

(declare-fun b!1573571 () Bool)

(declare-fun res!1075104 () Bool)

(assert (=> b!1573571 (=> (not res!1075104) (not e!877530))))

(assert (=> b!1573571 (= res!1075104 (= (size!51252 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1573573 () Bool)

(assert (=> b!1573573 (= e!877530 e!877529)))

(declare-fun res!1075103 () Bool)

(assert (=> b!1573573 (=> (not res!1075103) (not e!877529))))

(declare-fun lt!674462 () Bool)

(declare-fun lt!674464 () SeekEntryResult!13630)

(assert (=> b!1573573 (= res!1075103 (and (or lt!674462 (not (undefined!14442 lt!674464))) (or lt!674462 (undefined!14442 lt!674464))))))

(assert (=> b!1573573 (= lt!674462 (not (is-Intermediate!13630 lt!674464)))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105103 (_ BitVec 32)) SeekEntryResult!13630)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573573 (= lt!674464 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573572 () Bool)

(declare-fun res!1075105 () Bool)

(assert (=> b!1573572 (=> (not res!1075105) (not e!877530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573572 (= res!1075105 (validKeyInArray!0 k!754))))

(assert (= (and start!135378 res!1075106) b!1573571))

(assert (= (and b!1573571 res!1075104) b!1573572))

(assert (= (and b!1573572 res!1075105) b!1573573))

(assert (= (and b!1573573 res!1075103) b!1573574))

(declare-fun m!1446913 () Bool)

(assert (=> start!135378 m!1446913))

(declare-fun m!1446915 () Bool)

(assert (=> start!135378 m!1446915))

(declare-fun m!1446917 () Bool)

(assert (=> b!1573573 m!1446917))

(assert (=> b!1573573 m!1446917))

(declare-fun m!1446919 () Bool)

(assert (=> b!1573573 m!1446919))

(declare-fun m!1446921 () Bool)

(assert (=> b!1573572 m!1446921))

(push 1)

(assert (not b!1573572))

(assert (not start!135378))

(assert (not b!1573573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164989 () Bool)

(assert (=> d!164989 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573572 d!164989))

(declare-fun d!164991 () Bool)

(assert (=> d!164991 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135378 d!164991))

(declare-fun d!165001 () Bool)

(assert (=> d!165001 (= (array_inv!39346 _keys!600) (bvsge (size!51252 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135378 d!165001))

(declare-fun b!1573671 () Bool)

(declare-fun lt!674503 () SeekEntryResult!13630)

(assert (=> b!1573671 (and (bvsge (index!56919 lt!674503) #b00000000000000000000000000000000) (bvslt (index!56919 lt!674503) (size!51252 _keys!600)))))

(declare-fun e!877591 () Bool)

(assert (=> b!1573671 (= e!877591 (= (select (arr!50701 _keys!600) (index!56919 lt!674503)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573672 () Bool)

(declare-fun e!877589 () Bool)

(declare-fun e!877590 () Bool)

(assert (=> b!1573672 (= e!877589 e!877590)))

(declare-fun res!1075158 () Bool)

(assert (=> b!1573672 (= res!1075158 (and (is-Intermediate!13630 lt!674503) (not (undefined!14442 lt!674503)) (bvslt (x!141738 lt!674503) #b01111111111111111111111111111110) (bvsge (x!141738 lt!674503) #b00000000000000000000000000000000) (bvsge (x!141738 lt!674503) #b00000000000000000000000000000000)))))

(assert (=> b!1573672 (=> (not res!1075158) (not e!877590))))

(declare-fun b!1573673 () Bool)

(declare-fun e!877592 () SeekEntryResult!13630)

(assert (=> b!1573673 (= e!877592 (Intermediate!13630 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573674 () Bool)

(declare-fun e!877593 () SeekEntryResult!13630)

(assert (=> b!1573674 (= e!877593 (Intermediate!13630 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573675 () Bool)

(assert (=> b!1573675 (= e!877593 e!877592)))

(declare-fun c!145518 () Bool)

(declare-fun lt!674504 () (_ BitVec 64))

(assert (=> b!1573675 (= c!145518 (or (= lt!674504 k!754) (= (bvadd lt!674504 lt!674504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1573676 () Bool)

(assert (=> b!1573676 (and (bvsge (index!56919 lt!674503) #b00000000000000000000000000000000) (bvslt (index!56919 lt!674503) (size!51252 _keys!600)))))

(declare-fun res!1075159 () Bool)

(assert (=> b!1573676 (= res!1075159 (= (select (arr!50701 _keys!600) (index!56919 lt!674503)) k!754))))

(assert (=> b!1573676 (=> res!1075159 e!877591)))

(assert (=> b!1573676 (= e!877590 e!877591)))

(declare-fun b!1573677 () Bool)

(assert (=> b!1573677 (and (bvsge (index!56919 lt!674503) #b00000000000000000000000000000000) (bvslt (index!56919 lt!674503) (size!51252 _keys!600)))))

(declare-fun res!1075157 () Bool)

(assert (=> b!1573677 (= res!1075157 (= (select (arr!50701 _keys!600) (index!56919 lt!674503)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573677 (=> res!1075157 e!877591)))

(declare-fun b!1573678 () Bool)

(assert (=> b!1573678 (= e!877589 (bvsge (x!141738 lt!674503) #b01111111111111111111111111111110))))

(declare-fun b!1573679 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573679 (= e!877592 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun d!165003 () Bool)

(assert (=> d!165003 e!877589))

(declare-fun c!145517 () Bool)

(assert (=> d!165003 (= c!145517 (and (is-Intermediate!13630 lt!674503) (undefined!14442 lt!674503)))))

(assert (=> d!165003 (= lt!674503 e!877593)))

(declare-fun c!145516 () Bool)

(assert (=> d!165003 (= c!145516 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165003 (= lt!674504 (select (arr!50701 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!165003 (validMask!0 mask!889)))

(assert (=> d!165003 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674503)))

(assert (= (and d!165003 c!145516) b!1573674))

(assert (= (and d!165003 (not c!145516)) b!1573675))

(assert (= (and b!1573675 c!145518) b!1573673))

(assert (= (and b!1573675 (not c!145518)) b!1573679))

(assert (= (and d!165003 c!145517) b!1573678))

(assert (= (and d!165003 (not c!145517)) b!1573672))

(assert (= (and b!1573672 res!1075158) b!1573676))

(assert (= (and b!1573676 (not res!1075159)) b!1573677))

(assert (= (and b!1573677 (not res!1075157)) b!1573671))

(declare-fun m!1446959 () Bool)

(assert (=> b!1573671 m!1446959))

(assert (=> d!165003 m!1446917))

(declare-fun m!1446961 () Bool)

(assert (=> d!165003 m!1446961))

(assert (=> d!165003 m!1446913))

(assert (=> b!1573679 m!1446917))

(declare-fun m!1446963 () Bool)

(assert (=> b!1573679 m!1446963))

(assert (=> b!1573679 m!1446963))

(declare-fun m!1446965 () Bool)

(assert (=> b!1573679 m!1446965))

(assert (=> b!1573677 m!1446959))

(assert (=> b!1573676 m!1446959))

(assert (=> b!1573573 d!165003))

(declare-fun d!165011 () Bool)

(declare-fun lt!674518 () (_ BitVec 32))

(declare-fun lt!674517 () (_ BitVec 32))

(assert (=> d!165011 (= lt!674518 (bvmul (bvxor lt!674517 (bvlshr lt!674517 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165011 (= lt!674517 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165011 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1075160 (let ((h!38407 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141746 (bvmul (bvxor h!38407 (bvlshr h!38407 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141746 (bvlshr x!141746 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1075160 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1075160 #b00000000000000000000000000000000))))))

(assert (=> d!165011 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674518 (bvlshr lt!674518 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573573 d!165011))

(push 1)

(assert (not b!1573679))

(assert (not d!165003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

