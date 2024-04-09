; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134884 () Bool)

(assert start!134884)

(declare-fun res!1074052 () Bool)

(declare-fun e!876449 () Bool)

(assert (=> start!134884 (=> (not res!1074052) (not e!876449))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134884 (= res!1074052 (validMask!0 mask!889))))

(assert (=> start!134884 e!876449))

(assert (=> start!134884 true))

(declare-datatypes ((array!104924 0))(
  ( (array!104925 (arr!50628 (Array (_ BitVec 32) (_ BitVec 64))) (size!51179 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104924)

(declare-fun array_inv!39273 (array!104924) Bool)

(assert (=> start!134884 (array_inv!39273 _keys!600)))

(declare-fun b!1571796 () Bool)

(declare-fun res!1074051 () Bool)

(assert (=> b!1571796 (=> (not res!1074051) (not e!876449))))

(assert (=> b!1571796 (= res!1074051 (= (size!51179 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571797 () Bool)

(declare-fun res!1074053 () Bool)

(assert (=> b!1571797 (=> (not res!1074053) (not e!876449))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571797 (= res!1074053 (validKeyInArray!0 k!754))))

(declare-fun b!1571798 () Bool)

(declare-datatypes ((SeekEntryResult!13557 0))(
  ( (MissingZero!13557 (index!56625 (_ BitVec 32))) (Found!13557 (index!56626 (_ BitVec 32))) (Intermediate!13557 (undefined!14369 Bool) (index!56627 (_ BitVec 32)) (x!141390 (_ BitVec 32))) (Undefined!13557) (MissingVacant!13557 (index!56628 (_ BitVec 32))) )
))
(declare-fun lt!673708 () SeekEntryResult!13557)

(assert (=> b!1571798 (= e!876449 (and (is-Intermediate!13557 lt!673708) (not (undefined!14369 lt!673708)) (not (= (select (arr!50628 _keys!600) (index!56627 lt!673708)) k!754)) (not (= (select (arr!50628 _keys!600) (index!56627 lt!673708)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50628 _keys!600) (index!56627 lt!673708)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56627 lt!673708) #b00000000000000000000000000000000) (bvslt (index!56627 lt!673708) (bvadd #b00000000000000000000000000000001 mask!889)) (bvsge mask!889 #b00000000000000000000000000000000) (or (bvsgt (x!141390 lt!673708) #b01111111111111111111111111111110) (bvslt (x!141390 lt!673708) #b00000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104924 (_ BitVec 32)) SeekEntryResult!13557)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571798 (= lt!673708 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134884 res!1074052) b!1571796))

(assert (= (and b!1571796 res!1074051) b!1571797))

(assert (= (and b!1571797 res!1074053) b!1571798))

(declare-fun m!1445743 () Bool)

(assert (=> start!134884 m!1445743))

(declare-fun m!1445745 () Bool)

(assert (=> start!134884 m!1445745))

(declare-fun m!1445747 () Bool)

(assert (=> b!1571797 m!1445747))

(declare-fun m!1445749 () Bool)

(assert (=> b!1571798 m!1445749))

(declare-fun m!1445751 () Bool)

(assert (=> b!1571798 m!1445751))

(assert (=> b!1571798 m!1445751))

(declare-fun m!1445753 () Bool)

(assert (=> b!1571798 m!1445753))

(push 1)

(assert (not b!1571797))

(assert (not start!134884))

(assert (not b!1571798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164603 () Bool)

(assert (=> d!164603 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571797 d!164603))

(declare-fun d!164605 () Bool)

(assert (=> d!164605 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134884 d!164605))

(declare-fun d!164607 () Bool)

(assert (=> d!164607 (= (array_inv!39273 _keys!600) (bvsge (size!51179 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134884 d!164607))

(declare-fun d!164609 () Bool)

(declare-fun e!876491 () Bool)

(assert (=> d!164609 e!876491))

(declare-fun c!145139 () Bool)

(declare-fun lt!673737 () SeekEntryResult!13557)

(assert (=> d!164609 (= c!145139 (and (is-Intermediate!13557 lt!673737) (undefined!14369 lt!673737)))))

(declare-fun e!876492 () SeekEntryResult!13557)

(assert (=> d!164609 (= lt!673737 e!876492)))

(declare-fun c!145138 () Bool)

(assert (=> d!164609 (= c!145138 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!673738 () (_ BitVec 64))

(assert (=> d!164609 (= lt!673738 (select (arr!50628 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164609 (validMask!0 mask!889)))

(assert (=> d!164609 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!673737)))

(declare-fun b!1571871 () Bool)

(declare-fun e!876493 () Bool)

(assert (=> b!1571871 (= e!876491 e!876493)))

(declare-fun res!1074082 () Bool)

(assert (=> b!1571871 (= res!1074082 (and (is-Intermediate!13557 lt!673737) (not (undefined!14369 lt!673737)) (bvslt (x!141390 lt!673737) #b01111111111111111111111111111110) (bvsge (x!141390 lt!673737) #b00000000000000000000000000000000) (bvsge (x!141390 lt!673737) #b00000000000000000000000000000000)))))

(assert (=> b!1571871 (=> (not res!1074082) (not e!876493))))

(declare-fun b!1571872 () Bool)

(assert (=> b!1571872 (= e!876491 (bvsge (x!141390 lt!673737) #b01111111111111111111111111111110))))

(declare-fun b!1571873 () Bool)

(declare-fun e!876494 () SeekEntryResult!13557)

(assert (=> b!1571873 (= e!876494 (Intermediate!13557 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1571874 () Bool)

(assert (=> b!1571874 (and (bvsge (index!56627 lt!673737) #b00000000000000000000000000000000) (bvslt (index!56627 lt!673737) (size!51179 _keys!600)))))

(declare-fun res!1074081 () Bool)

(assert (=> b!1571874 (= res!1074081 (= (select (arr!50628 _keys!600) (index!56627 lt!673737)) k!754))))

(declare-fun e!876495 () Bool)

(assert (=> b!1571874 (=> res!1074081 e!876495)))

(assert (=> b!1571874 (= e!876493 e!876495)))

(declare-fun b!1571875 () Bool)

(assert (=> b!1571875 (and (bvsge (index!56627 lt!673737) #b00000000000000000000000000000000) (bvslt (index!56627 lt!673737) (size!51179 _keys!600)))))

(declare-fun res!1074080 () Bool)

(assert (=> b!1571875 (= res!1074080 (= (select (arr!50628 _keys!600) (index!56627 lt!673737)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1571875 (=> res!1074080 e!876495)))

(declare-fun b!1571876 () Bool)

(assert (=> b!1571876 (and (bvsge (index!56627 lt!673737) #b00000000000000000000000000000000) (bvslt (index!56627 lt!673737) (size!51179 _keys!600)))))

(assert (=> b!1571876 (= e!876495 (= (select (arr!50628 _keys!600) (index!56627 lt!673737)) #b1000000000000000000000000000000000000000000000000000000000000000))))

