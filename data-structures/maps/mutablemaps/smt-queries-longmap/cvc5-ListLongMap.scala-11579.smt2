; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134934 () Bool)

(assert start!134934)

(declare-fun res!1074173 () Bool)

(declare-fun e!876554 () Bool)

(assert (=> start!134934 (=> (not res!1074173) (not e!876554))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134934 (= res!1074173 (validMask!0 mask!889))))

(assert (=> start!134934 e!876554))

(assert (=> start!134934 true))

(declare-datatypes ((array!104947 0))(
  ( (array!104948 (arr!50638 (Array (_ BitVec 32) (_ BitVec 64))) (size!51189 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104947)

(declare-fun array_inv!39283 (array!104947) Bool)

(assert (=> start!134934 (array_inv!39283 _keys!600)))

(declare-fun b!1571967 () Bool)

(declare-fun res!1074171 () Bool)

(assert (=> b!1571967 (=> (not res!1074171) (not e!876554))))

(assert (=> b!1571967 (= res!1074171 (= (size!51189 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571968 () Bool)

(declare-fun res!1074172 () Bool)

(assert (=> b!1571968 (=> (not res!1074172) (not e!876554))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571968 (= res!1074172 (validKeyInArray!0 k!754))))

(declare-fun b!1571969 () Bool)

(declare-datatypes ((SeekEntryResult!13567 0))(
  ( (MissingZero!13567 (index!56665 (_ BitVec 32))) (Found!13567 (index!56666 (_ BitVec 32))) (Intermediate!13567 (undefined!14379 Bool) (index!56667 (_ BitVec 32)) (x!141438 (_ BitVec 32))) (Undefined!13567) (MissingVacant!13567 (index!56668 (_ BitVec 32))) )
))
(declare-fun lt!673774 () SeekEntryResult!13567)

(assert (=> b!1571969 (= e!876554 (and (is-Intermediate!13567 lt!673774) (not (undefined!14379 lt!673774)) (not (= (select (arr!50638 _keys!600) (index!56667 lt!673774)) k!754)) (not (= (select (arr!50638 _keys!600) (index!56667 lt!673774)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50638 _keys!600) (index!56667 lt!673774)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104947 (_ BitVec 32)) SeekEntryResult!13567)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571969 (= lt!673774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134934 res!1074173) b!1571967))

(assert (= (and b!1571967 res!1074171) b!1571968))

(assert (= (and b!1571968 res!1074172) b!1571969))

(declare-fun m!1445869 () Bool)

(assert (=> start!134934 m!1445869))

(declare-fun m!1445871 () Bool)

(assert (=> start!134934 m!1445871))

(declare-fun m!1445873 () Bool)

(assert (=> b!1571968 m!1445873))

(declare-fun m!1445875 () Bool)

(assert (=> b!1571969 m!1445875))

(declare-fun m!1445877 () Bool)

(assert (=> b!1571969 m!1445877))

(assert (=> b!1571969 m!1445877))

(declare-fun m!1445879 () Bool)

(assert (=> b!1571969 m!1445879))

(push 1)

(assert (not start!134934))

(assert (not b!1571968))

(assert (not b!1571969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164629 () Bool)

(assert (=> d!164629 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134934 d!164629))

(declare-fun d!164633 () Bool)

(assert (=> d!164633 (= (array_inv!39283 _keys!600) (bvsge (size!51189 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134934 d!164633))

(declare-fun d!164635 () Bool)

(assert (=> d!164635 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571968 d!164635))

(declare-fun b!1572060 () Bool)

(declare-fun lt!673809 () SeekEntryResult!13567)

(assert (=> b!1572060 (and (bvsge (index!56667 lt!673809) #b00000000000000000000000000000000) (bvslt (index!56667 lt!673809) (size!51189 _keys!600)))))

(declare-fun e!876610 () Bool)

(assert (=> b!1572060 (= e!876610 (= (select (arr!50638 _keys!600) (index!56667 lt!673809)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572061 () Bool)

(declare-fun e!876609 () Bool)

(assert (=> b!1572061 (= e!876609 (bvsge (x!141438 lt!673809) #b01111111111111111111111111111110))))

(declare-fun b!1572062 () Bool)

(assert (=> b!1572062 (and (bvsge (index!56667 lt!673809) #b00000000000000000000000000000000) (bvslt (index!56667 lt!673809) (size!51189 _keys!600)))))

(declare-fun res!1074220 () Bool)

(assert (=> b!1572062 (= res!1074220 (= (select (arr!50638 _keys!600) (index!56667 lt!673809)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572062 (=> res!1074220 e!876610)))

(declare-fun b!1572063 () Bool)

(declare-fun e!876612 () SeekEntryResult!13567)

(assert (=> b!1572063 (= e!876612 (Intermediate!13567 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!164637 () Bool)

(assert (=> d!164637 e!876609))

(declare-fun c!145167 () Bool)

(assert (=> d!164637 (= c!145167 (and (is-Intermediate!13567 lt!673809) (undefined!14379 lt!673809)))))

(declare-fun e!876611 () SeekEntryResult!13567)

(assert (=> d!164637 (= lt!673809 e!876611)))

(declare-fun c!145165 () Bool)

(assert (=> d!164637 (= c!145165 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673810 () (_ BitVec 64))

(assert (=> d!164637 (= lt!673810 (select (arr!50638 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164637 (validMask!0 mask!889)))

(assert (=> d!164637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673809)))

(declare-fun b!1572064 () Bool)

(assert (=> b!1572064 (and (bvsge (index!56667 lt!673809) #b00000000000000000000000000000000) (bvslt (index!56667 lt!673809) (size!51189 _keys!600)))))

(declare-fun res!1074219 () Bool)

(assert (=> b!1572064 (= res!1074219 (= (select (arr!50638 _keys!600) (index!56667 lt!673809)) k!754))))

(assert (=> b!1572064 (=> res!1074219 e!876610)))

(declare-fun e!876608 () Bool)

(assert (=> b!1572064 (= e!876608 e!876610)))

(declare-fun b!1572065 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572065 (= e!876612 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572066 () Bool)

(assert (=> b!1572066 (= e!876611 e!876612)))

(declare-fun c!145166 () Bool)

(assert (=> b!1572066 (= c!145166 (or (= lt!673810 k!754) (= (bvadd lt!673810 lt!673810) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572067 () Bool)

(assert (=> b!1572067 (= e!876609 e!876608)))

(declare-fun res!1074218 () Bool)

(assert (=> b!1572067 (= res!1074218 (and (is-Intermediate!13567 lt!673809) (not (undefined!14379 lt!673809)) (bvslt (x!141438 lt!673809) #b01111111111111111111111111111110) (bvsge (x!141438 lt!673809) #b00000000000000000000000000000000) (bvsge (x!141438 lt!673809) #b00000000000000000000000000000000)))))

(assert (=> b!1572067 (=> (not res!1074218) (not e!876608))))

(declare-fun b!1572068 () Bool)

(assert (=> b!1572068 (= e!876611 (Intermediate!13567 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(assert (= (and d!164637 c!145165) b!1572068))

(assert (= (and d!164637 (not c!145165)) b!1572066))

(assert (= (and b!1572066 c!145166) b!1572063))

(assert (= (and b!1572066 (not c!145166)) b!1572065))

(assert (= (and d!164637 c!145167) b!1572061))

(assert (= (and d!164637 (not c!145167)) b!1572067))

(assert (= (and b!1572067 res!1074218) b!1572064))

(assert (= (and b!1572064 (not res!1074219)) b!1572062))

(assert (= (and b!1572062 (not res!1074220)) b!1572060))

(declare-fun m!1445921 () Bool)

(assert (=> b!1572062 m!1445921))

(assert (=> b!1572060 m!1445921))

(assert (=> b!1572065 m!1445877))

(declare-fun m!1445923 () Bool)

(assert (=> b!1572065 m!1445923))

(assert (=> b!1572065 m!1445923))

(declare-fun m!1445925 () Bool)

(assert (=> b!1572065 m!1445925))

(assert (=> d!164637 m!1445877))

(declare-fun m!1445927 () Bool)

(assert (=> d!164637 m!1445927))

(assert (=> d!164637 m!1445869))

(assert (=> b!1572064 m!1445921))

(assert (=> b!1571969 d!164637))

(declare-fun d!164651 () Bool)

(declare-fun lt!673816 () (_ BitVec 32))

(declare-fun lt!673815 () (_ BitVec 32))

(assert (=> d!164651 (= lt!673816 (bvmul (bvxor lt!673815 (bvlshr lt!673815 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164651 (= lt!673815 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

