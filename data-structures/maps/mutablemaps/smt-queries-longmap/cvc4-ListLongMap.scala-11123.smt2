; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130004 () Bool)

(assert start!130004)

(declare-fun b!1525132 () Bool)

(declare-fun e!850165 () Bool)

(declare-fun e!850163 () Bool)

(assert (=> b!1525132 (= e!850165 e!850163)))

(declare-fun res!1043635 () Bool)

(assert (=> b!1525132 (=> (not res!1043635) (not e!850163))))

(declare-datatypes ((SeekEntryResult!13113 0))(
  ( (MissingZero!13113 (index!54846 (_ BitVec 32))) (Found!13113 (index!54847 (_ BitVec 32))) (Intermediate!13113 (undefined!13925 Bool) (index!54848 (_ BitVec 32)) (x!136545 (_ BitVec 32))) (Undefined!13113) (MissingVacant!13113 (index!54849 (_ BitVec 32))) )
))
(declare-fun lt!660534 () SeekEntryResult!13113)

(declare-fun lt!660531 () SeekEntryResult!13113)

(assert (=> b!1525132 (= res!1043635 (= lt!660534 lt!660531))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1525132 (= lt!660531 (Intermediate!13113 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101407 0))(
  ( (array!101408 (arr!48927 (Array (_ BitVec 32) (_ BitVec 64))) (size!49478 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101407)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101407 (_ BitVec 32)) SeekEntryResult!13113)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525132 (= lt!660534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512) (select (arr!48927 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525133 () Bool)

(declare-fun res!1043638 () Bool)

(assert (=> b!1525133 (=> (not res!1043638) (not e!850165))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525133 (= res!1043638 (validKeyInArray!0 (select (arr!48927 a!2804) i!961)))))

(declare-fun b!1525134 () Bool)

(declare-fun e!850166 () Bool)

(declare-fun e!850161 () Bool)

(assert (=> b!1525134 (= e!850166 e!850161)))

(declare-fun res!1043641 () Bool)

(assert (=> b!1525134 (=> res!1043641 e!850161)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!660532 () (_ BitVec 64))

(assert (=> b!1525134 (= res!1043641 (or (not (= (select (arr!48927 a!2804) j!70) lt!660532)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48927 a!2804) index!487) (select (arr!48927 a!2804) j!70)) (not (= (select (arr!48927 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525135 () Bool)

(declare-fun res!1043639 () Bool)

(assert (=> b!1525135 (=> (not res!1043639) (not e!850163))))

(assert (=> b!1525135 (= res!1043639 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48927 a!2804) j!70) a!2804 mask!2512) lt!660531))))

(declare-fun b!1525136 () Bool)

(declare-fun res!1043631 () Bool)

(assert (=> b!1525136 (=> (not res!1043631) (not e!850165))))

(assert (=> b!1525136 (= res!1043631 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49478 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49478 a!2804))))))

(declare-fun b!1525137 () Bool)

(declare-fun e!850160 () Bool)

(assert (=> b!1525137 (= e!850163 e!850160)))

(declare-fun res!1043634 () Bool)

(assert (=> b!1525137 (=> (not res!1043634) (not e!850160))))

(declare-fun lt!660533 () array!101407)

(assert (=> b!1525137 (= res!1043634 (= lt!660534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660532 mask!2512) lt!660532 lt!660533 mask!2512)))))

(assert (=> b!1525137 (= lt!660532 (select (store (arr!48927 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525137 (= lt!660533 (array!101408 (store (arr!48927 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49478 a!2804)))))

(declare-fun b!1525138 () Bool)

(declare-fun res!1043640 () Bool)

(assert (=> b!1525138 (=> (not res!1043640) (not e!850166))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101407 (_ BitVec 32)) SeekEntryResult!13113)

(assert (=> b!1525138 (= res!1043640 (= (seekEntry!0 (select (arr!48927 a!2804) j!70) a!2804 mask!2512) (Found!13113 j!70)))))

(declare-fun b!1525139 () Bool)

(declare-fun e!850164 () Bool)

(assert (=> b!1525139 (= e!850160 (not e!850164))))

(declare-fun res!1043632 () Bool)

(assert (=> b!1525139 (=> res!1043632 e!850164)))

(assert (=> b!1525139 (= res!1043632 (or (not (= (select (arr!48927 a!2804) j!70) lt!660532)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48927 a!2804) index!487) (select (arr!48927 a!2804) j!70)) (not (= (select (arr!48927 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525139 e!850166))

(declare-fun res!1043633 () Bool)

(assert (=> b!1525139 (=> (not res!1043633) (not e!850166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101407 (_ BitVec 32)) Bool)

(assert (=> b!1525139 (= res!1043633 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50966 0))(
  ( (Unit!50967) )
))
(declare-fun lt!660535 () Unit!50966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50966)

(assert (=> b!1525139 (= lt!660535 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525140 () Bool)

(declare-fun res!1043642 () Bool)

(assert (=> b!1525140 (=> (not res!1043642) (not e!850165))))

(assert (=> b!1525140 (= res!1043642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525141 () Bool)

(declare-fun res!1043643 () Bool)

(assert (=> b!1525141 (=> (not res!1043643) (not e!850165))))

(assert (=> b!1525141 (= res!1043643 (validKeyInArray!0 (select (arr!48927 a!2804) j!70)))))

(declare-fun b!1525142 () Bool)

(declare-fun res!1043637 () Bool)

(assert (=> b!1525142 (=> (not res!1043637) (not e!850165))))

(assert (=> b!1525142 (= res!1043637 (and (= (size!49478 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49478 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49478 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525143 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101407 (_ BitVec 32)) SeekEntryResult!13113)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101407 (_ BitVec 32)) SeekEntryResult!13113)

(assert (=> b!1525143 (= e!850164 (= (seekEntryOrOpen!0 lt!660532 lt!660533 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660532 lt!660533 mask!2512)))))

(declare-fun b!1525144 () Bool)

(assert (=> b!1525144 (= e!850161 (= (seekEntryOrOpen!0 (select (arr!48927 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48927 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1043636 () Bool)

(assert (=> start!130004 (=> (not res!1043636) (not e!850165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130004 (= res!1043636 (validMask!0 mask!2512))))

(assert (=> start!130004 e!850165))

(assert (=> start!130004 true))

(declare-fun array_inv!37872 (array!101407) Bool)

(assert (=> start!130004 (array_inv!37872 a!2804)))

(declare-fun b!1525131 () Bool)

(declare-fun res!1043630 () Bool)

(assert (=> b!1525131 (=> (not res!1043630) (not e!850165))))

(declare-datatypes ((List!35590 0))(
  ( (Nil!35587) (Cons!35586 (h!37017 (_ BitVec 64)) (t!50291 List!35590)) )
))
(declare-fun arrayNoDuplicates!0 (array!101407 (_ BitVec 32) List!35590) Bool)

(assert (=> b!1525131 (= res!1043630 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35587))))

(assert (= (and start!130004 res!1043636) b!1525142))

(assert (= (and b!1525142 res!1043637) b!1525133))

(assert (= (and b!1525133 res!1043638) b!1525141))

(assert (= (and b!1525141 res!1043643) b!1525140))

(assert (= (and b!1525140 res!1043642) b!1525131))

(assert (= (and b!1525131 res!1043630) b!1525136))

(assert (= (and b!1525136 res!1043631) b!1525132))

(assert (= (and b!1525132 res!1043635) b!1525135))

(assert (= (and b!1525135 res!1043639) b!1525137))

(assert (= (and b!1525137 res!1043634) b!1525139))

(assert (= (and b!1525139 res!1043633) b!1525138))

(assert (= (and b!1525138 res!1043640) b!1525134))

(assert (= (and b!1525134 (not res!1043641)) b!1525144))

(assert (= (and b!1525139 (not res!1043632)) b!1525143))

(declare-fun m!1408079 () Bool)

(assert (=> b!1525132 m!1408079))

(assert (=> b!1525132 m!1408079))

(declare-fun m!1408081 () Bool)

(assert (=> b!1525132 m!1408081))

(assert (=> b!1525132 m!1408081))

(assert (=> b!1525132 m!1408079))

(declare-fun m!1408083 () Bool)

(assert (=> b!1525132 m!1408083))

(declare-fun m!1408085 () Bool)

(assert (=> b!1525137 m!1408085))

(assert (=> b!1525137 m!1408085))

(declare-fun m!1408087 () Bool)

(assert (=> b!1525137 m!1408087))

(declare-fun m!1408089 () Bool)

(assert (=> b!1525137 m!1408089))

(declare-fun m!1408091 () Bool)

(assert (=> b!1525137 m!1408091))

(declare-fun m!1408093 () Bool)

(assert (=> b!1525143 m!1408093))

(declare-fun m!1408095 () Bool)

(assert (=> b!1525143 m!1408095))

(assert (=> b!1525139 m!1408079))

(declare-fun m!1408097 () Bool)

(assert (=> b!1525139 m!1408097))

(declare-fun m!1408099 () Bool)

(assert (=> b!1525139 m!1408099))

(declare-fun m!1408101 () Bool)

(assert (=> b!1525139 m!1408101))

(declare-fun m!1408103 () Bool)

(assert (=> b!1525140 m!1408103))

(declare-fun m!1408105 () Bool)

(assert (=> b!1525131 m!1408105))

(declare-fun m!1408107 () Bool)

(assert (=> b!1525133 m!1408107))

(assert (=> b!1525133 m!1408107))

(declare-fun m!1408109 () Bool)

(assert (=> b!1525133 m!1408109))

(assert (=> b!1525135 m!1408079))

(assert (=> b!1525135 m!1408079))

(declare-fun m!1408111 () Bool)

(assert (=> b!1525135 m!1408111))

(assert (=> b!1525134 m!1408079))

(assert (=> b!1525134 m!1408097))

(declare-fun m!1408113 () Bool)

(assert (=> start!130004 m!1408113))

(declare-fun m!1408115 () Bool)

(assert (=> start!130004 m!1408115))

(assert (=> b!1525138 m!1408079))

(assert (=> b!1525138 m!1408079))

(declare-fun m!1408117 () Bool)

(assert (=> b!1525138 m!1408117))

(assert (=> b!1525144 m!1408079))

(assert (=> b!1525144 m!1408079))

(declare-fun m!1408119 () Bool)

(assert (=> b!1525144 m!1408119))

(assert (=> b!1525144 m!1408079))

(declare-fun m!1408121 () Bool)

(assert (=> b!1525144 m!1408121))

(assert (=> b!1525141 m!1408079))

(assert (=> b!1525141 m!1408079))

(declare-fun m!1408123 () Bool)

(assert (=> b!1525141 m!1408123))

(push 1)

(assert (not b!1525137))

(assert (not b!1525144))

(assert (not b!1525138))

(assert (not b!1525139))

(assert (not b!1525135))

(assert (not b!1525143))

(assert (not b!1525132))

(assert (not start!130004))

(assert (not b!1525133))

(assert (not b!1525140))

(assert (not b!1525131))

(assert (not b!1525141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1525173 () Bool)

(declare-fun e!850187 () Bool)

(declare-fun call!68448 () Bool)

(assert (=> b!1525173 (= e!850187 call!68448)))

(declare-fun d!159377 () Bool)

(declare-fun res!1043650 () Bool)

(declare-fun e!850184 () Bool)

(assert (=> d!159377 (=> res!1043650 e!850184)))

(assert (=> d!159377 (= res!1043650 (bvsge #b00000000000000000000000000000000 (size!49478 a!2804)))))

(assert (=> d!159377 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35587) e!850184)))

(declare-fun b!1525174 () Bool)

(declare-fun e!850186 () Bool)

(declare-fun contains!10004 (List!35590 (_ BitVec 64)) Bool)

(assert (=> b!1525174 (= e!850186 (contains!10004 Nil!35587 (select (arr!48927 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68445 () Bool)

(declare-fun c!140315 () Bool)

(assert (=> bm!68445 (= call!68448 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140315 (Cons!35586 (select (arr!48927 a!2804) #b00000000000000000000000000000000) Nil!35587) Nil!35587)))))

(declare-fun b!1525175 () Bool)

(assert (=> b!1525175 (= e!850187 call!68448)))

(declare-fun b!1525176 () Bool)

(declare-fun e!850185 () Bool)

(assert (=> b!1525176 (= e!850184 e!850185)))

(declare-fun res!1043652 () Bool)

(assert (=> b!1525176 (=> (not res!1043652) (not e!850185))))

(assert (=> b!1525176 (= res!1043652 (not e!850186))))

(declare-fun res!1043651 () Bool)

(assert (=> b!1525176 (=> (not res!1043651) (not e!850186))))

(assert (=> b!1525176 (= res!1043651 (validKeyInArray!0 (select (arr!48927 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1525177 () Bool)

(assert (=> b!1525177 (= e!850185 e!850187)))

(assert (=> b!1525177 (= c!140315 (validKeyInArray!0 (select (arr!48927 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159377 (not res!1043650)) b!1525176))

(assert (= (and b!1525176 res!1043651) b!1525174))

(assert (= (and b!1525176 res!1043652) b!1525177))

(assert (= (and b!1525177 c!140315) b!1525173))

(assert (= (and b!1525177 (not c!140315)) b!1525175))

(assert (= (or b!1525173 b!1525175) bm!68445))

(declare-fun m!1408135 () Bool)

(assert (=> b!1525174 m!1408135))

(assert (=> b!1525174 m!1408135))

(declare-fun m!1408137 () Bool)

(assert (=> b!1525174 m!1408137))

(assert (=> bm!68445 m!1408135))

(declare-fun m!1408139 () Bool)

(assert (=> bm!68445 m!1408139))

(assert (=> b!1525176 m!1408135))

(assert (=> b!1525176 m!1408135))

(declare-fun m!1408141 () Bool)

(assert (=> b!1525176 m!1408141))

(assert (=> b!1525177 m!1408135))

(assert (=> b!1525177 m!1408135))

(assert (=> b!1525177 m!1408141))

(assert (=> b!1525131 d!159377))

(declare-fun e!850234 () SeekEntryResult!13113)

(declare-fun b!1525253 () Bool)

(assert (=> b!1525253 (= e!850234 (Intermediate!13113 false (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525254 () Bool)

(declare-fun e!850232 () Bool)

(declare-fun lt!660565 () SeekEntryResult!13113)

(assert (=> b!1525254 (= e!850232 (bvsge (x!136545 lt!660565) #b01111111111111111111111111111110))))

(declare-fun b!1525255 () Bool)

(declare-fun e!850233 () Bool)

(assert (=> b!1525255 (= e!850232 e!850233)))

(declare-fun res!1043670 () Bool)

(assert (=> b!1525255 (= res!1043670 (and (is-Intermediate!13113 lt!660565) (not (undefined!13925 lt!660565)) (bvslt (x!136545 lt!660565) #b01111111111111111111111111111110) (bvsge (x!136545 lt!660565) #b00000000000000000000000000000000) (bvsge (x!136545 lt!660565) #b00000000000000000000000000000000)))))

(assert (=> b!1525255 (=> (not res!1043670) (not e!850233))))

(declare-fun b!1525256 () Bool)

(assert (=> b!1525256 (and (bvsge (index!54848 lt!660565) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660565) (size!49478 a!2804)))))

(declare-fun res!1043673 () Bool)

(assert (=> b!1525256 (= res!1043673 (= (select (arr!48927 a!2804) (index!54848 lt!660565)) (select (arr!48927 a!2804) j!70)))))

(declare-fun e!850231 () Bool)

(assert (=> b!1525256 (=> res!1043673 e!850231)))

(assert (=> b!1525256 (= e!850233 e!850231)))

(declare-fun e!850229 () SeekEntryResult!13113)

(declare-fun b!1525257 () Bool)

(assert (=> b!1525257 (= e!850229 (Intermediate!13113 true (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525258 () Bool)

(assert (=> b!1525258 (and (bvsge (index!54848 lt!660565) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660565) (size!49478 a!2804)))))

(declare-fun res!1043672 () Bool)

(assert (=> b!1525258 (= res!1043672 (= (select (arr!48927 a!2804) (index!54848 lt!660565)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525258 (=> res!1043672 e!850231)))

(declare-fun b!1525259 () Bool)

(assert (=> b!1525259 (= e!850229 e!850234)))

(declare-fun c!140347 () Bool)

(declare-fun lt!660566 () (_ BitVec 64))

(assert (=> b!1525259 (= c!140347 (or (= lt!660566 (select (arr!48927 a!2804) j!70)) (= (bvadd lt!660566 lt!660566) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525260 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525260 (= e!850234 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48927 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159381 () Bool)

(assert (=> d!159381 e!850232))

(declare-fun c!140346 () Bool)

(assert (=> d!159381 (= c!140346 (and (is-Intermediate!13113 lt!660565) (undefined!13925 lt!660565)))))

(assert (=> d!159381 (= lt!660565 e!850229)))

(declare-fun c!140348 () Bool)

(assert (=> d!159381 (= c!140348 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159381 (= lt!660566 (select (arr!48927 a!2804) (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512)))))

(assert (=> d!159381 (validMask!0 mask!2512)))

(assert (=> d!159381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512) (select (arr!48927 a!2804) j!70) a!2804 mask!2512) lt!660565)))

(declare-fun b!1525261 () Bool)

(assert (=> b!1525261 (and (bvsge (index!54848 lt!660565) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660565) (size!49478 a!2804)))))

(assert (=> b!1525261 (= e!850231 (= (select (arr!48927 a!2804) (index!54848 lt!660565)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159381 c!140348) b!1525257))

(assert (= (and d!159381 (not c!140348)) b!1525259))

(assert (= (and b!1525259 c!140347) b!1525253))

(assert (= (and b!1525259 (not c!140347)) b!1525260))

(assert (= (and d!159381 c!140346) b!1525254))

(assert (= (and d!159381 (not c!140346)) b!1525255))

(assert (= (and b!1525255 res!1043670) b!1525256))

(assert (= (and b!1525256 (not res!1043673)) b!1525258))

(assert (= (and b!1525258 (not res!1043672)) b!1525261))

(declare-fun m!1408161 () Bool)

(assert (=> b!1525256 m!1408161))

(assert (=> d!159381 m!1408081))

(declare-fun m!1408163 () Bool)

(assert (=> d!159381 m!1408163))

(assert (=> d!159381 m!1408113))

(assert (=> b!1525258 m!1408161))

(assert (=> b!1525261 m!1408161))

(assert (=> b!1525260 m!1408081))

(declare-fun m!1408165 () Bool)

(assert (=> b!1525260 m!1408165))

(assert (=> b!1525260 m!1408165))

(assert (=> b!1525260 m!1408079))

(declare-fun m!1408167 () Bool)

(assert (=> b!1525260 m!1408167))

(assert (=> b!1525132 d!159381))

(declare-fun d!159387 () Bool)

(declare-fun lt!660580 () (_ BitVec 32))

(declare-fun lt!660579 () (_ BitVec 32))

(assert (=> d!159387 (= lt!660580 (bvmul (bvxor lt!660579 (bvlshr lt!660579 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159387 (= lt!660579 ((_ extract 31 0) (bvand (bvxor (select (arr!48927 a!2804) j!70) (bvlshr (select (arr!48927 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159387 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043678 (let ((h!37019 ((_ extract 31 0) (bvand (bvxor (select (arr!48927 a!2804) j!70) (bvlshr (select (arr!48927 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136551 (bvmul (bvxor h!37019 (bvlshr h!37019 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136551 (bvlshr x!136551 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043678 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043678 #b00000000000000000000000000000000))))))

(assert (=> d!159387 (= (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512) (bvand (bvxor lt!660580 (bvlshr lt!660580 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1525132 d!159387))

(declare-fun d!159393 () Bool)

(assert (=> d!159393 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130004 d!159393))

(declare-fun d!159403 () Bool)

(assert (=> d!159403 (= (array_inv!37872 a!2804) (bvsge (size!49478 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130004 d!159403))

(declare-fun d!159405 () Bool)

(assert (=> d!159405 (= (validKeyInArray!0 (select (arr!48927 a!2804) j!70)) (and (not (= (select (arr!48927 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48927 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525141 d!159405))

(declare-fun d!159407 () Bool)

(declare-fun lt!660616 () SeekEntryResult!13113)

(assert (=> d!159407 (and (or (is-Undefined!13113 lt!660616) (not (is-Found!13113 lt!660616)) (and (bvsge (index!54847 lt!660616) #b00000000000000000000000000000000) (bvslt (index!54847 lt!660616) (size!49478 lt!660533)))) (or (is-Undefined!13113 lt!660616) (is-Found!13113 lt!660616) (not (is-MissingZero!13113 lt!660616)) (and (bvsge (index!54846 lt!660616) #b00000000000000000000000000000000) (bvslt (index!54846 lt!660616) (size!49478 lt!660533)))) (or (is-Undefined!13113 lt!660616) (is-Found!13113 lt!660616) (is-MissingZero!13113 lt!660616) (not (is-MissingVacant!13113 lt!660616)) (and (bvsge (index!54849 lt!660616) #b00000000000000000000000000000000) (bvslt (index!54849 lt!660616) (size!49478 lt!660533)))) (or (is-Undefined!13113 lt!660616) (ite (is-Found!13113 lt!660616) (= (select (arr!48927 lt!660533) (index!54847 lt!660616)) lt!660532) (ite (is-MissingZero!13113 lt!660616) (= (select (arr!48927 lt!660533) (index!54846 lt!660616)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13113 lt!660616) (= (select (arr!48927 lt!660533) (index!54849 lt!660616)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!850285 () SeekEntryResult!13113)

(assert (=> d!159407 (= lt!660616 e!850285)))

(declare-fun c!140376 () Bool)

(declare-fun lt!660618 () SeekEntryResult!13113)

(assert (=> d!159407 (= c!140376 (and (is-Intermediate!13113 lt!660618) (undefined!13925 lt!660618)))))

(assert (=> d!159407 (= lt!660618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660532 mask!2512) lt!660532 lt!660533 mask!2512))))

(assert (=> d!159407 (validMask!0 mask!2512)))

(assert (=> d!159407 (= (seekEntryOrOpen!0 lt!660532 lt!660533 mask!2512) lt!660616)))

(declare-fun b!1525343 () Bool)

(assert (=> b!1525343 (= e!850285 Undefined!13113)))

(declare-fun b!1525344 () Bool)

(declare-fun e!850284 () SeekEntryResult!13113)

(assert (=> b!1525344 (= e!850285 e!850284)))

(declare-fun lt!660617 () (_ BitVec 64))

(assert (=> b!1525344 (= lt!660617 (select (arr!48927 lt!660533) (index!54848 lt!660618)))))

(declare-fun c!140377 () Bool)

(assert (=> b!1525344 (= c!140377 (= lt!660617 lt!660532))))

(declare-fun b!1525345 () Bool)

(declare-fun e!850286 () SeekEntryResult!13113)

(assert (=> b!1525345 (= e!850286 (seekKeyOrZeroReturnVacant!0 (x!136545 lt!660618) (index!54848 lt!660618) (index!54848 lt!660618) lt!660532 lt!660533 mask!2512))))

(declare-fun b!1525346 () Bool)

(assert (=> b!1525346 (= e!850286 (MissingZero!13113 (index!54848 lt!660618)))))

(declare-fun b!1525347 () Bool)

(declare-fun c!140375 () Bool)

(assert (=> b!1525347 (= c!140375 (= lt!660617 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525347 (= e!850284 e!850286)))

(declare-fun b!1525348 () Bool)

(assert (=> b!1525348 (= e!850284 (Found!13113 (index!54848 lt!660618)))))

(assert (= (and d!159407 c!140376) b!1525343))

(assert (= (and d!159407 (not c!140376)) b!1525344))

(assert (= (and b!1525344 c!140377) b!1525348))

(assert (= (and b!1525344 (not c!140377)) b!1525347))

(assert (= (and b!1525347 c!140375) b!1525346))

(assert (= (and b!1525347 (not c!140375)) b!1525345))

(declare-fun m!1408213 () Bool)

(assert (=> d!159407 m!1408213))

(declare-fun m!1408215 () Bool)

(assert (=> d!159407 m!1408215))

(assert (=> d!159407 m!1408085))

(assert (=> d!159407 m!1408087))

(assert (=> d!159407 m!1408085))

(declare-fun m!1408217 () Bool)

(assert (=> d!159407 m!1408217))

(assert (=> d!159407 m!1408113))

(declare-fun m!1408219 () Bool)

(assert (=> b!1525344 m!1408219))

(declare-fun m!1408221 () Bool)

(assert (=> b!1525345 m!1408221))

(assert (=> b!1525143 d!159407))

(declare-fun b!1525385 () Bool)

(declare-fun e!850307 () SeekEntryResult!13113)

(assert (=> b!1525385 (= e!850307 (MissingVacant!13113 index!487))))

(declare-fun b!1525386 () Bool)

(declare-fun e!850308 () SeekEntryResult!13113)

(assert (=> b!1525386 (= e!850308 Undefined!13113)))

(declare-fun b!1525387 () Bool)

(declare-fun c!140396 () Bool)

(declare-fun lt!660641 () (_ BitVec 64))

(assert (=> b!1525387 (= c!140396 (= lt!660641 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850309 () SeekEntryResult!13113)

(assert (=> b!1525387 (= e!850309 e!850307)))

(declare-fun b!1525388 () Bool)

(assert (=> b!1525388 (= e!850308 e!850309)))

(declare-fun c!140395 () Bool)

(assert (=> b!1525388 (= c!140395 (= lt!660641 lt!660532))))

(declare-fun b!1525389 () Bool)

(assert (=> b!1525389 (= e!850307 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 lt!660532 lt!660533 mask!2512))))

(declare-fun lt!660640 () SeekEntryResult!13113)

(declare-fun d!159425 () Bool)

(assert (=> d!159425 (and (or (is-Undefined!13113 lt!660640) (not (is-Found!13113 lt!660640)) (and (bvsge (index!54847 lt!660640) #b00000000000000000000000000000000) (bvslt (index!54847 lt!660640) (size!49478 lt!660533)))) (or (is-Undefined!13113 lt!660640) (is-Found!13113 lt!660640) (not (is-MissingVacant!13113 lt!660640)) (not (= (index!54849 lt!660640) index!487)) (and (bvsge (index!54849 lt!660640) #b00000000000000000000000000000000) (bvslt (index!54849 lt!660640) (size!49478 lt!660533)))) (or (is-Undefined!13113 lt!660640) (ite (is-Found!13113 lt!660640) (= (select (arr!48927 lt!660533) (index!54847 lt!660640)) lt!660532) (and (is-MissingVacant!13113 lt!660640) (= (index!54849 lt!660640) index!487) (= (select (arr!48927 lt!660533) (index!54849 lt!660640)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!159425 (= lt!660640 e!850308)))

(declare-fun c!140394 () Bool)

(assert (=> d!159425 (= c!140394 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159425 (= lt!660641 (select (arr!48927 lt!660533) index!487))))

(assert (=> d!159425 (validMask!0 mask!2512)))

(assert (=> d!159425 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660532 lt!660533 mask!2512) lt!660640)))

(declare-fun b!1525390 () Bool)

(assert (=> b!1525390 (= e!850309 (Found!13113 index!487))))

(assert (= (and d!159425 c!140394) b!1525386))

(assert (= (and d!159425 (not c!140394)) b!1525388))

(assert (= (and b!1525388 c!140395) b!1525390))

(assert (= (and b!1525388 (not c!140395)) b!1525387))

(assert (= (and b!1525387 c!140396) b!1525385))

(assert (= (and b!1525387 (not c!140396)) b!1525389))

(declare-fun m!1408241 () Bool)

(assert (=> b!1525389 m!1408241))

(assert (=> b!1525389 m!1408241))

(declare-fun m!1408243 () Bool)

(assert (=> b!1525389 m!1408243))

(declare-fun m!1408245 () Bool)

(assert (=> d!159425 m!1408245))

(declare-fun m!1408247 () Bool)

(assert (=> d!159425 m!1408247))

(declare-fun m!1408249 () Bool)

(assert (=> d!159425 m!1408249))

(assert (=> d!159425 m!1408113))

(assert (=> b!1525143 d!159425))

(declare-fun d!159433 () Bool)

(declare-fun lt!660642 () SeekEntryResult!13113)

(assert (=> d!159433 (and (or (is-Undefined!13113 lt!660642) (not (is-Found!13113 lt!660642)) (and (bvsge (index!54847 lt!660642) #b00000000000000000000000000000000) (bvslt (index!54847 lt!660642) (size!49478 a!2804)))) (or (is-Undefined!13113 lt!660642) (is-Found!13113 lt!660642) (not (is-MissingZero!13113 lt!660642)) (and (bvsge (index!54846 lt!660642) #b00000000000000000000000000000000) (bvslt (index!54846 lt!660642) (size!49478 a!2804)))) (or (is-Undefined!13113 lt!660642) (is-Found!13113 lt!660642) (is-MissingZero!13113 lt!660642) (not (is-MissingVacant!13113 lt!660642)) (and (bvsge (index!54849 lt!660642) #b00000000000000000000000000000000) (bvslt (index!54849 lt!660642) (size!49478 a!2804)))) (or (is-Undefined!13113 lt!660642) (ite (is-Found!13113 lt!660642) (= (select (arr!48927 a!2804) (index!54847 lt!660642)) (select (arr!48927 a!2804) j!70)) (ite (is-MissingZero!13113 lt!660642) (= (select (arr!48927 a!2804) (index!54846 lt!660642)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13113 lt!660642) (= (select (arr!48927 a!2804) (index!54849 lt!660642)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!850311 () SeekEntryResult!13113)

(assert (=> d!159433 (= lt!660642 e!850311)))

(declare-fun c!140398 () Bool)

(declare-fun lt!660644 () SeekEntryResult!13113)

(assert (=> d!159433 (= c!140398 (and (is-Intermediate!13113 lt!660644) (undefined!13925 lt!660644)))))

(assert (=> d!159433 (= lt!660644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48927 a!2804) j!70) mask!2512) (select (arr!48927 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159433 (validMask!0 mask!2512)))

(assert (=> d!159433 (= (seekEntryOrOpen!0 (select (arr!48927 a!2804) j!70) a!2804 mask!2512) lt!660642)))

(declare-fun b!1525391 () Bool)

(assert (=> b!1525391 (= e!850311 Undefined!13113)))

(declare-fun b!1525392 () Bool)

(declare-fun e!850310 () SeekEntryResult!13113)

(assert (=> b!1525392 (= e!850311 e!850310)))

(declare-fun lt!660643 () (_ BitVec 64))

(assert (=> b!1525392 (= lt!660643 (select (arr!48927 a!2804) (index!54848 lt!660644)))))

(declare-fun c!140399 () Bool)

(assert (=> b!1525392 (= c!140399 (= lt!660643 (select (arr!48927 a!2804) j!70)))))

(declare-fun e!850312 () SeekEntryResult!13113)

(declare-fun b!1525393 () Bool)

(assert (=> b!1525393 (= e!850312 (seekKeyOrZeroReturnVacant!0 (x!136545 lt!660644) (index!54848 lt!660644) (index!54848 lt!660644) (select (arr!48927 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525394 () Bool)

(assert (=> b!1525394 (= e!850312 (MissingZero!13113 (index!54848 lt!660644)))))

(declare-fun b!1525395 () Bool)

(declare-fun c!140397 () Bool)

(assert (=> b!1525395 (= c!140397 (= lt!660643 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525395 (= e!850310 e!850312)))

(declare-fun b!1525396 () Bool)

(assert (=> b!1525396 (= e!850310 (Found!13113 (index!54848 lt!660644)))))

(assert (= (and d!159433 c!140398) b!1525391))

(assert (= (and d!159433 (not c!140398)) b!1525392))

(assert (= (and b!1525392 c!140399) b!1525396))

(assert (= (and b!1525392 (not c!140399)) b!1525395))

(assert (= (and b!1525395 c!140397) b!1525394))

(assert (= (and b!1525395 (not c!140397)) b!1525393))

(declare-fun m!1408251 () Bool)

(assert (=> d!159433 m!1408251))

(declare-fun m!1408253 () Bool)

(assert (=> d!159433 m!1408253))

(assert (=> d!159433 m!1408081))

(assert (=> d!159433 m!1408079))

(assert (=> d!159433 m!1408083))

(assert (=> d!159433 m!1408079))

(assert (=> d!159433 m!1408081))

(declare-fun m!1408255 () Bool)

(assert (=> d!159433 m!1408255))

(assert (=> d!159433 m!1408113))

(declare-fun m!1408257 () Bool)

(assert (=> b!1525392 m!1408257))

(assert (=> b!1525393 m!1408079))

(declare-fun m!1408259 () Bool)

(assert (=> b!1525393 m!1408259))

(assert (=> b!1525144 d!159433))

(declare-fun b!1525397 () Bool)

(declare-fun e!850313 () SeekEntryResult!13113)

(assert (=> b!1525397 (= e!850313 (MissingVacant!13113 index!487))))

(declare-fun b!1525398 () Bool)

(declare-fun e!850314 () SeekEntryResult!13113)

(assert (=> b!1525398 (= e!850314 Undefined!13113)))

(declare-fun b!1525399 () Bool)

(declare-fun c!140402 () Bool)

(declare-fun lt!660646 () (_ BitVec 64))

(assert (=> b!1525399 (= c!140402 (= lt!660646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850315 () SeekEntryResult!13113)

(assert (=> b!1525399 (= e!850315 e!850313)))

(declare-fun b!1525400 () Bool)

(assert (=> b!1525400 (= e!850314 e!850315)))

(declare-fun c!140401 () Bool)

(assert (=> b!1525400 (= c!140401 (= lt!660646 (select (arr!48927 a!2804) j!70)))))

(declare-fun b!1525401 () Bool)

(assert (=> b!1525401 (= e!850313 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48927 a!2804) j!70) a!2804 mask!2512))))

(declare-fun lt!660645 () SeekEntryResult!13113)

(declare-fun d!159435 () Bool)

(assert (=> d!159435 (and (or (is-Undefined!13113 lt!660645) (not (is-Found!13113 lt!660645)) (and (bvsge (index!54847 lt!660645) #b00000000000000000000000000000000) (bvslt (index!54847 lt!660645) (size!49478 a!2804)))) (or (is-Undefined!13113 lt!660645) (is-Found!13113 lt!660645) (not (is-MissingVacant!13113 lt!660645)) (not (= (index!54849 lt!660645) index!487)) (and (bvsge (index!54849 lt!660645) #b00000000000000000000000000000000) (bvslt (index!54849 lt!660645) (size!49478 a!2804)))) (or (is-Undefined!13113 lt!660645) (ite (is-Found!13113 lt!660645) (= (select (arr!48927 a!2804) (index!54847 lt!660645)) (select (arr!48927 a!2804) j!70)) (and (is-MissingVacant!13113 lt!660645) (= (index!54849 lt!660645) index!487) (= (select (arr!48927 a!2804) (index!54849 lt!660645)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!159435 (= lt!660645 e!850314)))

(declare-fun c!140400 () Bool)

(assert (=> d!159435 (= c!140400 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159435 (= lt!660646 (select (arr!48927 a!2804) index!487))))

(assert (=> d!159435 (validMask!0 mask!2512)))

(assert (=> d!159435 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48927 a!2804) j!70) a!2804 mask!2512) lt!660645)))

(declare-fun b!1525402 () Bool)

(assert (=> b!1525402 (= e!850315 (Found!13113 index!487))))

(assert (= (and d!159435 c!140400) b!1525398))

(assert (= (and d!159435 (not c!140400)) b!1525400))

(assert (= (and b!1525400 c!140401) b!1525402))

(assert (= (and b!1525400 (not c!140401)) b!1525399))

(assert (= (and b!1525399 c!140402) b!1525397))

(assert (= (and b!1525399 (not c!140402)) b!1525401))

(assert (=> b!1525401 m!1408241))

(assert (=> b!1525401 m!1408241))

(assert (=> b!1525401 m!1408079))

(declare-fun m!1408261 () Bool)

(assert (=> b!1525401 m!1408261))

(declare-fun m!1408263 () Bool)

(assert (=> d!159435 m!1408263))

(declare-fun m!1408265 () Bool)

(assert (=> d!159435 m!1408265))

(assert (=> d!159435 m!1408097))

(assert (=> d!159435 m!1408113))

(assert (=> b!1525144 d!159435))

(declare-fun d!159437 () Bool)

(assert (=> d!159437 (= (validKeyInArray!0 (select (arr!48927 a!2804) i!961)) (and (not (= (select (arr!48927 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48927 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525133 d!159437))

(declare-fun b!1525415 () Bool)

(declare-fun e!850326 () SeekEntryResult!13113)

(assert (=> b!1525415 (= e!850326 (Intermediate!13113 false (toIndex!0 lt!660532 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525416 () Bool)

(declare-fun e!850324 () Bool)

(declare-fun lt!660655 () SeekEntryResult!13113)

(assert (=> b!1525416 (= e!850324 (bvsge (x!136545 lt!660655) #b01111111111111111111111111111110))))

(declare-fun b!1525417 () Bool)

(declare-fun e!850325 () Bool)

(assert (=> b!1525417 (= e!850324 e!850325)))

(declare-fun res!1043707 () Bool)

(assert (=> b!1525417 (= res!1043707 (and (is-Intermediate!13113 lt!660655) (not (undefined!13925 lt!660655)) (bvslt (x!136545 lt!660655) #b01111111111111111111111111111110) (bvsge (x!136545 lt!660655) #b00000000000000000000000000000000) (bvsge (x!136545 lt!660655) #b00000000000000000000000000000000)))))

(assert (=> b!1525417 (=> (not res!1043707) (not e!850325))))

(declare-fun b!1525418 () Bool)

(assert (=> b!1525418 (and (bvsge (index!54848 lt!660655) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660655) (size!49478 lt!660533)))))

(declare-fun res!1043709 () Bool)

(assert (=> b!1525418 (= res!1043709 (= (select (arr!48927 lt!660533) (index!54848 lt!660655)) lt!660532))))

(declare-fun e!850323 () Bool)

(assert (=> b!1525418 (=> res!1043709 e!850323)))

(assert (=> b!1525418 (= e!850325 e!850323)))

(declare-fun b!1525419 () Bool)

(declare-fun e!850322 () SeekEntryResult!13113)

(assert (=> b!1525419 (= e!850322 (Intermediate!13113 true (toIndex!0 lt!660532 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525420 () Bool)

(assert (=> b!1525420 (and (bvsge (index!54848 lt!660655) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660655) (size!49478 lt!660533)))))

(declare-fun res!1043708 () Bool)

(assert (=> b!1525420 (= res!1043708 (= (select (arr!48927 lt!660533) (index!54848 lt!660655)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525420 (=> res!1043708 e!850323)))

(declare-fun b!1525421 () Bool)

(assert (=> b!1525421 (= e!850322 e!850326)))

(declare-fun c!140410 () Bool)

(declare-fun lt!660656 () (_ BitVec 64))

(assert (=> b!1525421 (= c!140410 (or (= lt!660656 lt!660532) (= (bvadd lt!660656 lt!660656) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525422 () Bool)

(assert (=> b!1525422 (= e!850326 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!660532 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!660532 lt!660533 mask!2512))))

(declare-fun d!159439 () Bool)

(assert (=> d!159439 e!850324))

(declare-fun c!140409 () Bool)

(assert (=> d!159439 (= c!140409 (and (is-Intermediate!13113 lt!660655) (undefined!13925 lt!660655)))))

(assert (=> d!159439 (= lt!660655 e!850322)))

(declare-fun c!140411 () Bool)

(assert (=> d!159439 (= c!140411 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159439 (= lt!660656 (select (arr!48927 lt!660533) (toIndex!0 lt!660532 mask!2512)))))

(assert (=> d!159439 (validMask!0 mask!2512)))

(assert (=> d!159439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660532 mask!2512) lt!660532 lt!660533 mask!2512) lt!660655)))

(declare-fun b!1525423 () Bool)

(assert (=> b!1525423 (and (bvsge (index!54848 lt!660655) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660655) (size!49478 lt!660533)))))

(assert (=> b!1525423 (= e!850323 (= (select (arr!48927 lt!660533) (index!54848 lt!660655)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159439 c!140411) b!1525419))

(assert (= (and d!159439 (not c!140411)) b!1525421))

(assert (= (and b!1525421 c!140410) b!1525415))

(assert (= (and b!1525421 (not c!140410)) b!1525422))

(assert (= (and d!159439 c!140409) b!1525416))

(assert (= (and d!159439 (not c!140409)) b!1525417))

(assert (= (and b!1525417 res!1043707) b!1525418))

(assert (= (and b!1525418 (not res!1043709)) b!1525420))

(assert (= (and b!1525420 (not res!1043708)) b!1525423))

(declare-fun m!1408267 () Bool)

(assert (=> b!1525418 m!1408267))

(assert (=> d!159439 m!1408085))

(declare-fun m!1408269 () Bool)

(assert (=> d!159439 m!1408269))

(assert (=> d!159439 m!1408113))

(assert (=> b!1525420 m!1408267))

(assert (=> b!1525423 m!1408267))

(assert (=> b!1525422 m!1408085))

(declare-fun m!1408271 () Bool)

(assert (=> b!1525422 m!1408271))

(assert (=> b!1525422 m!1408271))

(declare-fun m!1408273 () Bool)

(assert (=> b!1525422 m!1408273))

(assert (=> b!1525137 d!159439))

(declare-fun d!159441 () Bool)

(declare-fun lt!660658 () (_ BitVec 32))

(declare-fun lt!660657 () (_ BitVec 32))

(assert (=> d!159441 (= lt!660658 (bvmul (bvxor lt!660657 (bvlshr lt!660657 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159441 (= lt!660657 ((_ extract 31 0) (bvand (bvxor lt!660532 (bvlshr lt!660532 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159441 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043678 (let ((h!37019 ((_ extract 31 0) (bvand (bvxor lt!660532 (bvlshr lt!660532 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136551 (bvmul (bvxor h!37019 (bvlshr h!37019 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136551 (bvlshr x!136551 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043678 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043678 #b00000000000000000000000000000000))))))

(assert (=> d!159441 (= (toIndex!0 lt!660532 mask!2512) (bvand (bvxor lt!660658 (bvlshr lt!660658 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1525137 d!159441))

(declare-fun b!1525424 () Bool)

(declare-fun e!850331 () SeekEntryResult!13113)

(assert (=> b!1525424 (= e!850331 (Intermediate!13113 false index!487 x!534))))

(declare-fun b!1525425 () Bool)

(declare-fun e!850329 () Bool)

(declare-fun lt!660659 () SeekEntryResult!13113)

(assert (=> b!1525425 (= e!850329 (bvsge (x!136545 lt!660659) #b01111111111111111111111111111110))))

(declare-fun b!1525426 () Bool)

(declare-fun e!850330 () Bool)

(assert (=> b!1525426 (= e!850329 e!850330)))

(declare-fun res!1043710 () Bool)

(assert (=> b!1525426 (= res!1043710 (and (is-Intermediate!13113 lt!660659) (not (undefined!13925 lt!660659)) (bvslt (x!136545 lt!660659) #b01111111111111111111111111111110) (bvsge (x!136545 lt!660659) #b00000000000000000000000000000000) (bvsge (x!136545 lt!660659) x!534)))))

(assert (=> b!1525426 (=> (not res!1043710) (not e!850330))))

(declare-fun b!1525427 () Bool)

(assert (=> b!1525427 (and (bvsge (index!54848 lt!660659) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660659) (size!49478 a!2804)))))

(declare-fun res!1043712 () Bool)

(assert (=> b!1525427 (= res!1043712 (= (select (arr!48927 a!2804) (index!54848 lt!660659)) (select (arr!48927 a!2804) j!70)))))

(declare-fun e!850328 () Bool)

(assert (=> b!1525427 (=> res!1043712 e!850328)))

(assert (=> b!1525427 (= e!850330 e!850328)))

(declare-fun b!1525428 () Bool)

(declare-fun e!850327 () SeekEntryResult!13113)

(assert (=> b!1525428 (= e!850327 (Intermediate!13113 true index!487 x!534))))

(declare-fun b!1525429 () Bool)

(assert (=> b!1525429 (and (bvsge (index!54848 lt!660659) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660659) (size!49478 a!2804)))))

(declare-fun res!1043711 () Bool)

(assert (=> b!1525429 (= res!1043711 (= (select (arr!48927 a!2804) (index!54848 lt!660659)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525429 (=> res!1043711 e!850328)))

(declare-fun b!1525430 () Bool)

(assert (=> b!1525430 (= e!850327 e!850331)))

(declare-fun c!140413 () Bool)

(declare-fun lt!660660 () (_ BitVec 64))

(assert (=> b!1525430 (= c!140413 (or (= lt!660660 (select (arr!48927 a!2804) j!70)) (= (bvadd lt!660660 lt!660660) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525431 () Bool)

(assert (=> b!1525431 (= e!850331 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48927 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159443 () Bool)

(assert (=> d!159443 e!850329))

(declare-fun c!140412 () Bool)

(assert (=> d!159443 (= c!140412 (and (is-Intermediate!13113 lt!660659) (undefined!13925 lt!660659)))))

(assert (=> d!159443 (= lt!660659 e!850327)))

(declare-fun c!140414 () Bool)

(assert (=> d!159443 (= c!140414 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159443 (= lt!660660 (select (arr!48927 a!2804) index!487))))

(assert (=> d!159443 (validMask!0 mask!2512)))

(assert (=> d!159443 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48927 a!2804) j!70) a!2804 mask!2512) lt!660659)))

(declare-fun b!1525432 () Bool)

(assert (=> b!1525432 (and (bvsge (index!54848 lt!660659) #b00000000000000000000000000000000) (bvslt (index!54848 lt!660659) (size!49478 a!2804)))))

(assert (=> b!1525432 (= e!850328 (= (select (arr!48927 a!2804) (index!54848 lt!660659)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159443 c!140414) b!1525428))

(assert (= (and d!159443 (not c!140414)) b!1525430))

(assert (= (and b!1525430 c!140413) b!1525424))

(assert (= (and b!1525430 (not c!140413)) b!1525431))

(assert (= (and d!159443 c!140412) b!1525425))

(assert (= (and d!159443 (not c!140412)) b!1525426))

(assert (= (and b!1525426 res!1043710) b!1525427))

(assert (= (and b!1525427 (not res!1043712)) b!1525429))

(assert (= (and b!1525429 (not res!1043711)) b!1525432))

(declare-fun m!1408275 () Bool)

(assert (=> b!1525427 m!1408275))

(assert (=> d!159443 m!1408097))

(assert (=> d!159443 m!1408113))

(assert (=> b!1525429 m!1408275))

(assert (=> b!1525432 m!1408275))

(assert (=> b!1525431 m!1408241))

(assert (=> b!1525431 m!1408241))

(assert (=> b!1525431 m!1408079))

(declare-fun m!1408277 () Bool)

(assert (=> b!1525431 m!1408277))

(assert (=> b!1525135 d!159443))

(declare-fun b!1525487 () Bool)

(declare-fun e!850365 () Bool)

(declare-fun call!68461 () Bool)

(assert (=> b!1525487 (= e!850365 call!68461)))

(declare-fun b!1525488 () Bool)

(declare-fun e!850364 () Bool)

(assert (=> b!1525488 (= e!850364 call!68461)))

(declare-fun d!159445 () Bool)

(declare-fun res!1043726 () Bool)

(declare-fun e!850363 () Bool)

(assert (=> d!159445 (=> res!1043726 e!850363)))

(assert (=> d!159445 (= res!1043726 (bvsge j!70 (size!49478 a!2804)))))

(assert (=> d!159445 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!850363)))

(declare-fun b!1525489 () Bool)

(assert (=> b!1525489 (= e!850365 e!850364)))

(declare-fun lt!660690 () (_ BitVec 64))

(assert (=> b!1525489 (= lt!660690 (select (arr!48927 a!2804) j!70))))

(declare-fun lt!660688 () Unit!50966)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101407 (_ BitVec 64) (_ BitVec 32)) Unit!50966)

(assert (=> b!1525489 (= lt!660688 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660690 j!70))))

(declare-fun arrayContainsKey!0 (array!101407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1525489 (arrayContainsKey!0 a!2804 lt!660690 #b00000000000000000000000000000000)))

(declare-fun lt!660689 () Unit!50966)

(assert (=> b!1525489 (= lt!660689 lt!660688)))

(declare-fun res!1043725 () Bool)

(assert (=> b!1525489 (= res!1043725 (= (seekEntryOrOpen!0 (select (arr!48927 a!2804) j!70) a!2804 mask!2512) (Found!13113 j!70)))))

(assert (=> b!1525489 (=> (not res!1043725) (not e!850364))))

(declare-fun bm!68458 () Bool)

(assert (=> bm!68458 (= call!68461 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1525490 () Bool)

(assert (=> b!1525490 (= e!850363 e!850365)))

(declare-fun c!140436 () Bool)

(assert (=> b!1525490 (= c!140436 (validKeyInArray!0 (select (arr!48927 a!2804) j!70)))))

(assert (= (and d!159445 (not res!1043726)) b!1525490))

(assert (= (and b!1525490 c!140436) b!1525489))

(assert (= (and b!1525490 (not c!140436)) b!1525487))

(assert (= (and b!1525489 res!1043725) b!1525488))

(assert (= (or b!1525488 b!1525487) bm!68458))

(assert (=> b!1525489 m!1408079))

(declare-fun m!1408319 () Bool)

(assert (=> b!1525489 m!1408319))

(declare-fun m!1408321 () Bool)

(assert (=> b!1525489 m!1408321))

(assert (=> b!1525489 m!1408079))

(assert (=> b!1525489 m!1408119))

(declare-fun m!1408323 () Bool)

(assert (=> bm!68458 m!1408323))

(assert (=> b!1525490 m!1408079))

(assert (=> b!1525490 m!1408079))

(assert (=> b!1525490 m!1408123))

(assert (=> b!1525139 d!159445))

(declare-fun d!159461 () Bool)

(assert (=> d!159461 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660693 () Unit!50966)

(declare-fun choose!38 (array!101407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50966)

(assert (=> d!159461 (= lt!660693 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159461 (validMask!0 mask!2512)))

(assert (=> d!159461 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660693)))

(declare-fun bs!43759 () Bool)

(assert (= bs!43759 d!159461))

(assert (=> bs!43759 m!1408099))

(declare-fun m!1408325 () Bool)

(assert (=> bs!43759 m!1408325))

(assert (=> bs!43759 m!1408113))

(assert (=> b!1525139 d!159461))

(declare-fun b!1525506 () Bool)

(declare-fun e!850380 () Bool)

(declare-fun call!68465 () Bool)

(assert (=> b!1525506 (= e!850380 call!68465)))

(declare-fun b!1525507 () Bool)

(declare-fun e!850379 () Bool)

(assert (=> b!1525507 (= e!850379 call!68465)))

(declare-fun d!159463 () Bool)

(declare-fun res!1043737 () Bool)

(declare-fun e!850378 () Bool)

(assert (=> d!159463 (=> res!1043737 e!850378)))

(assert (=> d!159463 (= res!1043737 (bvsge #b00000000000000000000000000000000 (size!49478 a!2804)))))

(assert (=> d!159463 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!850378)))

(declare-fun b!1525508 () Bool)

(assert (=> b!1525508 (= e!850380 e!850379)))

(declare-fun lt!660696 () (_ BitVec 64))

(assert (=> b!1525508 (= lt!660696 (select (arr!48927 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660694 () Unit!50966)

(assert (=> b!1525508 (= lt!660694 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660696 #b00000000000000000000000000000000))))

(assert (=> b!1525508 (arrayContainsKey!0 a!2804 lt!660696 #b00000000000000000000000000000000)))

(declare-fun lt!660695 () Unit!50966)

(assert (=> b!1525508 (= lt!660695 lt!660694)))

(declare-fun res!1043736 () Bool)

(assert (=> b!1525508 (= res!1043736 (= (seekEntryOrOpen!0 (select (arr!48927 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13113 #b00000000000000000000000000000000)))))

(assert (=> b!1525508 (=> (not res!1043736) (not e!850379))))

(declare-fun bm!68462 () Bool)

(assert (=> bm!68462 (= call!68465 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1525509 () Bool)

(assert (=> b!1525509 (= e!850378 e!850380)))

(declare-fun c!140440 () Bool)

(assert (=> b!1525509 (= c!140440 (validKeyInArray!0 (select (arr!48927 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159463 (not res!1043737)) b!1525509))

(assert (= (and b!1525509 c!140440) b!1525508))

(assert (= (and b!1525509 (not c!140440)) b!1525506))

(assert (= (and b!1525508 res!1043736) b!1525507))

(assert (= (or b!1525507 b!1525506) bm!68462))

(assert (=> b!1525508 m!1408135))

(declare-fun m!1408333 () Bool)

(assert (=> b!1525508 m!1408333))

(declare-fun m!1408337 () Bool)

(assert (=> b!1525508 m!1408337))

(assert (=> b!1525508 m!1408135))

(declare-fun m!1408339 () Bool)

(assert (=> b!1525508 m!1408339))

(declare-fun m!1408341 () Bool)

