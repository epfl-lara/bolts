; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134880 () Bool)

(assert start!134880)

(declare-fun res!1074033 () Bool)

(declare-fun e!876438 () Bool)

(assert (=> start!134880 (=> (not res!1074033) (not e!876438))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134880 (= res!1074033 (validMask!0 mask!889))))

(assert (=> start!134880 e!876438))

(assert (=> start!134880 true))

(declare-datatypes ((array!104920 0))(
  ( (array!104921 (arr!50626 (Array (_ BitVec 32) (_ BitVec 64))) (size!51177 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104920)

(declare-fun array_inv!39271 (array!104920) Bool)

(assert (=> start!134880 (array_inv!39271 _keys!600)))

(declare-fun b!1571778 () Bool)

(declare-fun res!1074034 () Bool)

(assert (=> b!1571778 (=> (not res!1074034) (not e!876438))))

(assert (=> b!1571778 (= res!1074034 (= (size!51177 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571779 () Bool)

(declare-fun res!1074035 () Bool)

(assert (=> b!1571779 (=> (not res!1074035) (not e!876438))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571779 (= res!1074035 (validKeyInArray!0 k!754))))

(declare-fun b!1571780 () Bool)

(declare-datatypes ((SeekEntryResult!13555 0))(
  ( (MissingZero!13555 (index!56617 (_ BitVec 32))) (Found!13555 (index!56618 (_ BitVec 32))) (Intermediate!13555 (undefined!14367 Bool) (index!56619 (_ BitVec 32)) (x!141388 (_ BitVec 32))) (Undefined!13555) (MissingVacant!13555 (index!56620 (_ BitVec 32))) )
))
(declare-fun lt!673702 () SeekEntryResult!13555)

(assert (=> b!1571780 (= e!876438 (and (is-Intermediate!13555 lt!673702) (not (undefined!14367 lt!673702)) (not (= (select (arr!50626 _keys!600) (index!56619 lt!673702)) k!754)) (not (= (select (arr!50626 _keys!600) (index!56619 lt!673702)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50626 _keys!600) (index!56619 lt!673702)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56619 lt!673702) #b00000000000000000000000000000000) (bvslt (index!56619 lt!673702) (bvadd #b00000000000000000000000000000001 mask!889)) (bvsge mask!889 #b00000000000000000000000000000000) (or (bvsgt (x!141388 lt!673702) #b01111111111111111111111111111110) (bvslt (x!141388 lt!673702) #b00000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104920 (_ BitVec 32)) SeekEntryResult!13555)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571780 (= lt!673702 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134880 res!1074033) b!1571778))

(assert (= (and b!1571778 res!1074034) b!1571779))

(assert (= (and b!1571779 res!1074035) b!1571780))

(declare-fun m!1445719 () Bool)

(assert (=> start!134880 m!1445719))

(declare-fun m!1445721 () Bool)

(assert (=> start!134880 m!1445721))

(declare-fun m!1445723 () Bool)

(assert (=> b!1571779 m!1445723))

(declare-fun m!1445725 () Bool)

(assert (=> b!1571780 m!1445725))

(declare-fun m!1445727 () Bool)

(assert (=> b!1571780 m!1445727))

(assert (=> b!1571780 m!1445727))

(declare-fun m!1445729 () Bool)

(assert (=> b!1571780 m!1445729))

(push 1)

(assert (not start!134880))

(assert (not b!1571780))

(assert (not b!1571779))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164593 () Bool)

(assert (=> d!164593 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134880 d!164593))

(declare-fun d!164595 () Bool)

(assert (=> d!164595 (= (array_inv!39271 _keys!600) (bvsge (size!51177 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134880 d!164595))

(declare-fun b!1571821 () Bool)

(declare-fun e!876463 () SeekEntryResult!13555)

(assert (=> b!1571821 (= e!876463 (Intermediate!13555 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1571822 () Bool)

(declare-fun e!876466 () Bool)

(declare-fun e!876464 () Bool)

(assert (=> b!1571822 (= e!876466 e!876464)))

(declare-fun res!1074062 () Bool)

(declare-fun lt!673718 () SeekEntryResult!13555)

(assert (=> b!1571822 (= res!1074062 (and (is-Intermediate!13555 lt!673718) (not (undefined!14367 lt!673718)) (bvslt (x!141388 lt!673718) #b01111111111111111111111111111110) (bvsge (x!141388 lt!673718) #b00000000000000000000000000000000) (bvsge (x!141388 lt!673718) #b00000000000000000000000000000000)))))

(assert (=> b!1571822 (=> (not res!1074062) (not e!876464))))

(declare-fun b!1571824 () Bool)

(assert (=> b!1571824 (= e!876466 (bvsge (x!141388 lt!673718) #b01111111111111111111111111111110))))

(declare-fun b!1571825 () Bool)

(assert (=> b!1571825 (and (bvsge (index!56619 lt!673718) #b00000000000000000000000000000000) (bvslt (index!56619 lt!673718) (size!51177 _keys!600)))))

(declare-fun res!1074060 () Bool)

(assert (=> b!1571825 (= res!1074060 (= (select (arr!50626 _keys!600) (index!56619 lt!673718)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!876467 () Bool)

(assert (=> b!1571825 (=> res!1074060 e!876467)))

(declare-fun b!1571826 () Bool)

(declare-fun e!876465 () SeekEntryResult!13555)

(assert (=> b!1571826 (= e!876465 (Intermediate!13555 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1571827 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571827 (= e!876463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun d!164597 () Bool)

(assert (=> d!164597 e!876466))

(declare-fun c!145123 () Bool)

(assert (=> d!164597 (= c!145123 (and (is-Intermediate!13555 lt!673718) (undefined!14367 lt!673718)))))

(assert (=> d!164597 (= lt!673718 e!876465)))

(declare-fun c!145122 () Bool)

(assert (=> d!164597 (= c!145122 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673717 () (_ BitVec 64))

(assert (=> d!164597 (= lt!673717 (select (arr!50626 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164597 (validMask!0 mask!889)))

(assert (=> d!164597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673718)))

(declare-fun b!1571823 () Bool)

(assert (=> b!1571823 (= e!876465 e!876463)))

(declare-fun c!145124 () Bool)

(assert (=> b!1571823 (= c!145124 (or (= lt!673717 k!754) (= (bvadd lt!673717 lt!673717) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1571828 () Bool)

(assert (=> b!1571828 (and (bvsge (index!56619 lt!673718) #b00000000000000000000000000000000) (bvslt (index!56619 lt!673718) (size!51177 _keys!600)))))

(declare-fun res!1074061 () Bool)

(assert (=> b!1571828 (= res!1074061 (= (select (arr!50626 _keys!600) (index!56619 lt!673718)) k!754))))

(assert (=> b!1571828 (=> res!1074061 e!876467)))

(assert (=> b!1571828 (= e!876464 e!876467)))

(declare-fun b!1571829 () Bool)

(assert (=> b!1571829 (and (bvsge (index!56619 lt!673718) #b00000000000000000000000000000000) (bvslt (index!56619 lt!673718) (size!51177 _keys!600)))))

(assert (=> b!1571829 (= e!876467 (= (select (arr!50626 _keys!600) (index!56619 lt!673718)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!164597 c!145122) b!1571826))

(assert (= (and d!164597 (not c!145122)) b!1571823))

(assert (= (and b!1571823 c!145124) b!1571821))

(assert (= (and b!1571823 (not c!145124)) b!1571827))

(assert (= (and d!164597 c!145123) b!1571824))

(assert (= (and d!164597 (not c!145123)) b!1571822))

(assert (= (and b!1571822 res!1074062) b!1571828))

(assert (= (and b!1571828 (not res!1074061)) b!1571825))

(assert (= (and b!1571825 (not res!1074060)) b!1571829))

(assert (=> d!164597 m!1445727))

(declare-fun m!1445755 () Bool)

(assert (=> d!164597 m!1445755))

(assert (=> d!164597 m!1445719))

(declare-fun m!1445757 () Bool)

(assert (=> b!1571825 m!1445757))

(assert (=> b!1571829 m!1445757))

(assert (=> b!1571827 m!1445727))

(declare-fun m!1445759 () Bool)

(assert (=> b!1571827 m!1445759))

(assert (=> b!1571827 m!1445759))

(declare-fun m!1445761 () Bool)

(assert (=> b!1571827 m!1445761))

(assert (=> b!1571828 m!1445757))

(assert (=> b!1571780 d!164597))

(declare-fun d!164611 () Bool)

(declare-fun lt!673726 () (_ BitVec 32))

(declare-fun lt!673725 () (_ BitVec 32))

(assert (=> d!164611 (= lt!673726 (bvmul (bvxor lt!673725 (bvlshr lt!673725 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164611 (= lt!673725 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164611 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074067 (let ((h!38372 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141393 (bvmul (bvxor h!38372 (bvlshr h!38372 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141393 (bvlshr x!141393 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074067 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074067 #b00000000000000000000000000000000))))))

(assert (=> d!164611 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!673726 (bvlshr lt!673726 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1571780 d!164611))

(declare-fun d!164613 () Bool)

(assert (=> d!164613 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571779 d!164613))

(push 1)

(assert (not b!1571827))

(assert (not d!164597))

(check-sat)

(pop 1)

(push 1)

(check-sat)

