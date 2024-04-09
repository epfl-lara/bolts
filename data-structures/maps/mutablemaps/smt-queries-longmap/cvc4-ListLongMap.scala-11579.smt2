; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134938 () Bool)

(assert start!134938)

(declare-fun res!1074189 () Bool)

(declare-fun e!876566 () Bool)

(assert (=> start!134938 (=> (not res!1074189) (not e!876566))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134938 (= res!1074189 (validMask!0 mask!889))))

(assert (=> start!134938 e!876566))

(assert (=> start!134938 true))

(declare-datatypes ((array!104951 0))(
  ( (array!104952 (arr!50640 (Array (_ BitVec 32) (_ BitVec 64))) (size!51191 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104951)

(declare-fun array_inv!39285 (array!104951) Bool)

(assert (=> start!134938 (array_inv!39285 _keys!600)))

(declare-fun b!1571985 () Bool)

(declare-fun res!1074191 () Bool)

(assert (=> b!1571985 (=> (not res!1074191) (not e!876566))))

(assert (=> b!1571985 (= res!1074191 (= (size!51191 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571986 () Bool)

(declare-fun res!1074190 () Bool)

(assert (=> b!1571986 (=> (not res!1074190) (not e!876566))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571986 (= res!1074190 (validKeyInArray!0 k!754))))

(declare-fun b!1571987 () Bool)

(declare-datatypes ((SeekEntryResult!13569 0))(
  ( (MissingZero!13569 (index!56673 (_ BitVec 32))) (Found!13569 (index!56674 (_ BitVec 32))) (Intermediate!13569 (undefined!14381 Bool) (index!56675 (_ BitVec 32)) (x!141440 (_ BitVec 32))) (Undefined!13569) (MissingVacant!13569 (index!56676 (_ BitVec 32))) )
))
(declare-fun lt!673780 () SeekEntryResult!13569)

(assert (=> b!1571987 (= e!876566 (and (is-Intermediate!13569 lt!673780) (not (undefined!14381 lt!673780)) (not (= (select (arr!50640 _keys!600) (index!56675 lt!673780)) k!754)) (not (= (select (arr!50640 _keys!600) (index!56675 lt!673780)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50640 _keys!600) (index!56675 lt!673780)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104951 (_ BitVec 32)) SeekEntryResult!13569)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571987 (= lt!673780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134938 res!1074189) b!1571985))

(assert (= (and b!1571985 res!1074191) b!1571986))

(assert (= (and b!1571986 res!1074190) b!1571987))

(declare-fun m!1445893 () Bool)

(assert (=> start!134938 m!1445893))

(declare-fun m!1445895 () Bool)

(assert (=> start!134938 m!1445895))

(declare-fun m!1445897 () Bool)

(assert (=> b!1571986 m!1445897))

(declare-fun m!1445899 () Bool)

(assert (=> b!1571987 m!1445899))

(declare-fun m!1445901 () Bool)

(assert (=> b!1571987 m!1445901))

(assert (=> b!1571987 m!1445901))

(declare-fun m!1445903 () Bool)

(assert (=> b!1571987 m!1445903))

(push 1)

(assert (not b!1571987))

(assert (not start!134938))

(assert (not b!1571986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1572024 () Bool)

(declare-fun e!876588 () SeekEntryResult!13569)

(declare-fun e!876590 () SeekEntryResult!13569)

(assert (=> b!1572024 (= e!876588 e!876590)))

(declare-fun c!145153 () Bool)

(declare-fun lt!673790 () (_ BitVec 64))

(assert (=> b!1572024 (= c!145153 (or (= lt!673790 k!754) (= (bvadd lt!673790 lt!673790) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164631 () Bool)

(declare-fun e!876589 () Bool)

(assert (=> d!164631 e!876589))

(declare-fun c!145154 () Bool)

(declare-fun lt!673789 () SeekEntryResult!13569)

(assert (=> d!164631 (= c!145154 (and (is-Intermediate!13569 lt!673789) (undefined!14381 lt!673789)))))

(assert (=> d!164631 (= lt!673789 e!876588)))

(declare-fun c!145155 () Bool)

(assert (=> d!164631 (= c!145155 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164631 (= lt!673790 (select (arr!50640 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164631 (validMask!0 mask!889)))

(assert (=> d!164631 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673789)))

(declare-fun b!1572025 () Bool)

(assert (=> b!1572025 (= e!876589 (bvsge (x!141440 lt!673789) #b01111111111111111111111111111110))))

(declare-fun b!1572026 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572026 (= e!876590 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572027 () Bool)

(assert (=> b!1572027 (and (bvsge (index!56675 lt!673789) #b00000000000000000000000000000000) (bvslt (index!56675 lt!673789) (size!51191 _keys!600)))))

(declare-fun e!876591 () Bool)

(assert (=> b!1572027 (= e!876591 (= (select (arr!50640 _keys!600) (index!56675 lt!673789)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572028 () Bool)

(assert (=> b!1572028 (= e!876590 (Intermediate!13569 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572029 () Bool)

(assert (=> b!1572029 (and (bvsge (index!56675 lt!673789) #b00000000000000000000000000000000) (bvslt (index!56675 lt!673789) (size!51191 _keys!600)))))

(declare-fun res!1074204 () Bool)

(assert (=> b!1572029 (= res!1074204 (= (select (arr!50640 _keys!600) (index!56675 lt!673789)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572029 (=> res!1074204 e!876591)))

(declare-fun b!1572030 () Bool)

(assert (=> b!1572030 (and (bvsge (index!56675 lt!673789) #b00000000000000000000000000000000) (bvslt (index!56675 lt!673789) (size!51191 _keys!600)))))

(declare-fun res!1074206 () Bool)

(assert (=> b!1572030 (= res!1074206 (= (select (arr!50640 _keys!600) (index!56675 lt!673789)) k!754))))

(assert (=> b!1572030 (=> res!1074206 e!876591)))

(declare-fun e!876592 () Bool)

(assert (=> b!1572030 (= e!876592 e!876591)))

(declare-fun b!1572031 () Bool)

(assert (=> b!1572031 (= e!876588 (Intermediate!13569 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572032 () Bool)

(assert (=> b!1572032 (= e!876589 e!876592)))

(declare-fun res!1074205 () Bool)

(assert (=> b!1572032 (= res!1074205 (and (is-Intermediate!13569 lt!673789) (not (undefined!14381 lt!673789)) (bvslt (x!141440 lt!673789) #b01111111111111111111111111111110) (bvsge (x!141440 lt!673789) #b00000000000000000000000000000000) (bvsge (x!141440 lt!673789) #b00000000000000000000000000000000)))))

(assert (=> b!1572032 (=> (not res!1074205) (not e!876592))))

(assert (= (and d!164631 c!145155) b!1572031))

(assert (= (and d!164631 (not c!145155)) b!1572024))

(assert (= (and b!1572024 c!145153) b!1572028))

(assert (= (and b!1572024 (not c!145153)) b!1572026))

(assert (= (and d!164631 c!145154) b!1572025))

(assert (= (and d!164631 (not c!145154)) b!1572032))

(assert (= (and b!1572032 res!1074205) b!1572030))

(assert (= (and b!1572030 (not res!1074206)) b!1572029))

(assert (= (and b!1572029 (not res!1074204)) b!1572027))

(assert (=> d!164631 m!1445901))

(declare-fun m!1445905 () Bool)

(assert (=> d!164631 m!1445905))

(assert (=> d!164631 m!1445893))

(declare-fun m!1445907 () Bool)

(assert (=> b!1572027 m!1445907))

(assert (=> b!1572026 m!1445901))

(declare-fun m!1445909 () Bool)

(assert (=> b!1572026 m!1445909))

(assert (=> b!1572026 m!1445909))

(declare-fun m!1445911 () Bool)

(assert (=> b!1572026 m!1445911))

(assert (=> b!1572030 m!1445907))

(assert (=> b!1572029 m!1445907))

(assert (=> b!1571987 d!164631))

(declare-fun d!164639 () Bool)

(declare-fun lt!673798 () (_ BitVec 32))

(declare-fun lt!673797 () (_ BitVec 32))

(assert (=> d!164639 (= lt!673798 (bvmul (bvxor lt!673797 (bvlshr lt!673797 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164639 (= lt!673797 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164639 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074207 (let ((h!38375 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141443 (bvmul (bvxor h!38375 (bvlshr h!38375 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141443 (bvlshr x!141443 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074207 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074207 #b00000000000000000000000000000000))))))

(assert (=> d!164639 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673798 (bvlshr lt!673798 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1571987 d!164639))

(declare-fun d!164643 () Bool)

(assert (=> d!164643 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134938 d!164643))

(declare-fun d!164647 () Bool)

(assert (=> d!164647 (= (array_inv!39285 _keys!600) (bvsge (size!51191 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134938 d!164647))

(declare-fun d!164649 () Bool)

(assert (=> d!164649 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571986 d!164649))

(push 1)

(assert (not b!1572026))

(assert (not d!164631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

