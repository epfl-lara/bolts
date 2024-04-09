; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47236 () Bool)

(assert start!47236)

(declare-fun b!519637 () Bool)

(declare-fun res!318128 () Bool)

(declare-fun e!303217 () Bool)

(assert (=> b!519637 (=> (not res!318128) (not e!303217))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33148 0))(
  ( (array!33149 (arr!15930 (Array (_ BitVec 32) (_ BitVec 64))) (size!16294 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33148)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!519637 (= res!318128 (and (= (size!16294 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16294 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16294 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519638 () Bool)

(declare-fun res!318130 () Bool)

(assert (=> b!519638 (=> (not res!318130) (not e!303217))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519638 (= res!318130 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!519639 () Bool)

(declare-fun res!318124 () Bool)

(assert (=> b!519639 (=> (not res!318124) (not e!303217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519639 (= res!318124 (validKeyInArray!0 k!2280))))

(declare-fun b!519640 () Bool)

(declare-fun e!303212 () Bool)

(declare-fun e!303215 () Bool)

(assert (=> b!519640 (= e!303212 (not e!303215))))

(declare-fun res!318129 () Bool)

(assert (=> b!519640 (=> res!318129 e!303215)))

(declare-datatypes ((SeekEntryResult!4404 0))(
  ( (MissingZero!4404 (index!19813 (_ BitVec 32))) (Found!4404 (index!19814 (_ BitVec 32))) (Intermediate!4404 (undefined!5216 Bool) (index!19815 (_ BitVec 32)) (x!48823 (_ BitVec 32))) (Undefined!4404) (MissingVacant!4404 (index!19816 (_ BitVec 32))) )
))
(declare-fun lt!238027 () SeekEntryResult!4404)

(declare-fun lt!238025 () array!33148)

(declare-fun lt!238021 () (_ BitVec 32))

(declare-fun lt!238024 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33148 (_ BitVec 32)) SeekEntryResult!4404)

(assert (=> b!519640 (= res!318129 (= lt!238027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238021 lt!238024 lt!238025 mask!3524)))))

(declare-fun lt!238028 () (_ BitVec 32))

(assert (=> b!519640 (= lt!238027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238028 (select (arr!15930 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519640 (= lt!238021 (toIndex!0 lt!238024 mask!3524))))

(assert (=> b!519640 (= lt!238024 (select (store (arr!15930 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!519640 (= lt!238028 (toIndex!0 (select (arr!15930 a!3235) j!176) mask!3524))))

(assert (=> b!519640 (= lt!238025 (array!33149 (store (arr!15930 a!3235) i!1204 k!2280) (size!16294 a!3235)))))

(declare-fun e!303213 () Bool)

(assert (=> b!519640 e!303213))

(declare-fun res!318133 () Bool)

(assert (=> b!519640 (=> (not res!318133) (not e!303213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33148 (_ BitVec 32)) Bool)

(assert (=> b!519640 (= res!318133 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16082 0))(
  ( (Unit!16083) )
))
(declare-fun lt!238023 () Unit!16082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16082)

(assert (=> b!519640 (= lt!238023 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519641 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33148 (_ BitVec 32)) SeekEntryResult!4404)

(assert (=> b!519641 (= e!303213 (= (seekEntryOrOpen!0 (select (arr!15930 a!3235) j!176) a!3235 mask!3524) (Found!4404 j!176)))))

(declare-fun b!519642 () Bool)

(declare-fun res!318125 () Bool)

(assert (=> b!519642 (=> res!318125 e!303215)))

(assert (=> b!519642 (= res!318125 (or (undefined!5216 lt!238027) (not (is-Intermediate!4404 lt!238027))))))

(declare-fun b!519643 () Bool)

(declare-fun res!318127 () Bool)

(assert (=> b!519643 (=> (not res!318127) (not e!303217))))

(assert (=> b!519643 (= res!318127 (validKeyInArray!0 (select (arr!15930 a!3235) j!176)))))

(declare-fun b!519644 () Bool)

(declare-fun res!318126 () Bool)

(assert (=> b!519644 (=> (not res!318126) (not e!303212))))

(assert (=> b!519644 (= res!318126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!318131 () Bool)

(assert (=> start!47236 (=> (not res!318131) (not e!303217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47236 (= res!318131 (validMask!0 mask!3524))))

(assert (=> start!47236 e!303217))

(assert (=> start!47236 true))

(declare-fun array_inv!11704 (array!33148) Bool)

(assert (=> start!47236 (array_inv!11704 a!3235)))

(declare-fun b!519645 () Bool)

(assert (=> b!519645 (= e!303217 e!303212)))

(declare-fun res!318134 () Bool)

(assert (=> b!519645 (=> (not res!318134) (not e!303212))))

(declare-fun lt!238022 () SeekEntryResult!4404)

(assert (=> b!519645 (= res!318134 (or (= lt!238022 (MissingZero!4404 i!1204)) (= lt!238022 (MissingVacant!4404 i!1204))))))

(assert (=> b!519645 (= lt!238022 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!519646 () Bool)

(assert (=> b!519646 (= e!303215 (not (= (select (arr!15930 a!3235) (index!19815 lt!238027)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!519646 (or (= (select (arr!15930 a!3235) (index!19815 lt!238027)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15930 a!3235) (index!19815 lt!238027)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238026 () Unit!16082)

(declare-fun e!303214 () Unit!16082)

(assert (=> b!519646 (= lt!238026 e!303214)))

(declare-fun c!61055 () Bool)

(assert (=> b!519646 (= c!61055 (= (select (arr!15930 a!3235) (index!19815 lt!238027)) (select (arr!15930 a!3235) j!176)))))

(assert (=> b!519646 (and (bvslt (x!48823 lt!238027) #b01111111111111111111111111111110) (or (= (select (arr!15930 a!3235) (index!19815 lt!238027)) (select (arr!15930 a!3235) j!176)) (= (select (arr!15930 a!3235) (index!19815 lt!238027)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15930 a!3235) (index!19815 lt!238027)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519647 () Bool)

(declare-fun res!318132 () Bool)

(assert (=> b!519647 (=> (not res!318132) (not e!303212))))

(declare-datatypes ((List!10141 0))(
  ( (Nil!10138) (Cons!10137 (h!11053 (_ BitVec 64)) (t!16377 List!10141)) )
))
(declare-fun arrayNoDuplicates!0 (array!33148 (_ BitVec 32) List!10141) Bool)

(assert (=> b!519647 (= res!318132 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10138))))

(declare-fun b!519648 () Bool)

(declare-fun Unit!16084 () Unit!16082)

(assert (=> b!519648 (= e!303214 Unit!16084)))

(declare-fun b!519649 () Bool)

(declare-fun Unit!16085 () Unit!16082)

(assert (=> b!519649 (= e!303214 Unit!16085)))

(declare-fun lt!238020 () Unit!16082)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33148 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16082)

(assert (=> b!519649 (= lt!238020 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238028 #b00000000000000000000000000000000 (index!19815 lt!238027) (x!48823 lt!238027) mask!3524))))

(declare-fun res!318123 () Bool)

(assert (=> b!519649 (= res!318123 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238028 lt!238024 lt!238025 mask!3524) (Intermediate!4404 false (index!19815 lt!238027) (x!48823 lt!238027))))))

(declare-fun e!303211 () Bool)

(assert (=> b!519649 (=> (not res!318123) (not e!303211))))

(assert (=> b!519649 e!303211))

(declare-fun b!519650 () Bool)

(assert (=> b!519650 (= e!303211 false)))

(assert (= (and start!47236 res!318131) b!519637))

(assert (= (and b!519637 res!318128) b!519643))

(assert (= (and b!519643 res!318127) b!519639))

(assert (= (and b!519639 res!318124) b!519638))

(assert (= (and b!519638 res!318130) b!519645))

(assert (= (and b!519645 res!318134) b!519644))

(assert (= (and b!519644 res!318126) b!519647))

(assert (= (and b!519647 res!318132) b!519640))

(assert (= (and b!519640 res!318133) b!519641))

(assert (= (and b!519640 (not res!318129)) b!519642))

(assert (= (and b!519642 (not res!318125)) b!519646))

(assert (= (and b!519646 c!61055) b!519649))

(assert (= (and b!519646 (not c!61055)) b!519648))

(assert (= (and b!519649 res!318123) b!519650))

(declare-fun m!500773 () Bool)

(assert (=> b!519639 m!500773))

(declare-fun m!500775 () Bool)

(assert (=> b!519641 m!500775))

(assert (=> b!519641 m!500775))

(declare-fun m!500777 () Bool)

(assert (=> b!519641 m!500777))

(assert (=> b!519643 m!500775))

(assert (=> b!519643 m!500775))

(declare-fun m!500779 () Bool)

(assert (=> b!519643 m!500779))

(assert (=> b!519640 m!500775))

(declare-fun m!500781 () Bool)

(assert (=> b!519640 m!500781))

(declare-fun m!500783 () Bool)

(assert (=> b!519640 m!500783))

(declare-fun m!500785 () Bool)

(assert (=> b!519640 m!500785))

(declare-fun m!500787 () Bool)

(assert (=> b!519640 m!500787))

(declare-fun m!500789 () Bool)

(assert (=> b!519640 m!500789))

(assert (=> b!519640 m!500775))

(declare-fun m!500791 () Bool)

(assert (=> b!519640 m!500791))

(assert (=> b!519640 m!500775))

(declare-fun m!500793 () Bool)

(assert (=> b!519640 m!500793))

(declare-fun m!500795 () Bool)

(assert (=> b!519640 m!500795))

(declare-fun m!500797 () Bool)

(assert (=> b!519645 m!500797))

(declare-fun m!500799 () Bool)

(assert (=> b!519647 m!500799))

(declare-fun m!500801 () Bool)

(assert (=> b!519644 m!500801))

(declare-fun m!500803 () Bool)

(assert (=> b!519649 m!500803))

(declare-fun m!500805 () Bool)

(assert (=> b!519649 m!500805))

(declare-fun m!500807 () Bool)

(assert (=> b!519646 m!500807))

(assert (=> b!519646 m!500775))

(declare-fun m!500809 () Bool)

(assert (=> start!47236 m!500809))

(declare-fun m!500811 () Bool)

(assert (=> start!47236 m!500811))

(declare-fun m!500813 () Bool)

(assert (=> b!519638 m!500813))

(push 1)

(assert (not b!519643))

(assert (not b!519647))

(assert (not b!519649))

(assert (not b!519639))

(assert (not b!519644))

(assert (not b!519640))

(assert (not b!519638))

(assert (not b!519645))

(assert (not start!47236))

(assert (not b!519641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!519780 () Bool)

(declare-fun e!303292 () Bool)

(declare-fun contains!2764 (List!10141 (_ BitVec 64)) Bool)

(assert (=> b!519780 (= e!303292 (contains!2764 Nil!10138 (select (arr!15930 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519781 () Bool)

(declare-fun e!303290 () Bool)

(declare-fun e!303289 () Bool)

(assert (=> b!519781 (= e!303290 e!303289)))

(declare-fun res!318227 () Bool)

(assert (=> b!519781 (=> (not res!318227) (not e!303289))))

(assert (=> b!519781 (= res!318227 (not e!303292))))

(declare-fun res!318229 () Bool)

(assert (=> b!519781 (=> (not res!318229) (not e!303292))))

(assert (=> b!519781 (= res!318229 (validKeyInArray!0 (select (arr!15930 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519782 () Bool)

(declare-fun e!303291 () Bool)

(declare-fun call!31768 () Bool)

(assert (=> b!519782 (= e!303291 call!31768)))

(declare-fun b!519783 () Bool)

(assert (=> b!519783 (= e!303291 call!31768)))

(declare-fun d!80059 () Bool)

(declare-fun res!318228 () Bool)

(assert (=> d!80059 (=> res!318228 e!303290)))

(assert (=> d!80059 (= res!318228 (bvsge #b00000000000000000000000000000000 (size!16294 a!3235)))))

(assert (=> d!80059 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10138) e!303290)))

(declare-fun b!519784 () Bool)

(assert (=> b!519784 (= e!303289 e!303291)))

(declare-fun c!61075 () Bool)

(assert (=> b!519784 (= c!61075 (validKeyInArray!0 (select (arr!15930 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31765 () Bool)

(assert (=> bm!31765 (= call!31768 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61075 (Cons!10137 (select (arr!15930 a!3235) #b00000000000000000000000000000000) Nil!10138) Nil!10138)))))

(assert (= (and d!80059 (not res!318228)) b!519781))

(assert (= (and b!519781 res!318229) b!519780))

(assert (= (and b!519781 res!318227) b!519784))

(assert (= (and b!519784 c!61075) b!519783))

(assert (= (and b!519784 (not c!61075)) b!519782))

(assert (= (or b!519783 b!519782) bm!31765))

(declare-fun m!500909 () Bool)

(assert (=> b!519780 m!500909))

(assert (=> b!519780 m!500909))

(declare-fun m!500911 () Bool)

(assert (=> b!519780 m!500911))

(assert (=> b!519781 m!500909))

(assert (=> b!519781 m!500909))

(declare-fun m!500913 () Bool)

(assert (=> b!519781 m!500913))

(assert (=> b!519784 m!500909))

(assert (=> b!519784 m!500909))

(assert (=> b!519784 m!500913))

(assert (=> bm!31765 m!500909))

(declare-fun m!500915 () Bool)

(assert (=> bm!31765 m!500915))

(assert (=> b!519647 d!80059))

(declare-fun b!519849 () Bool)

(declare-fun e!303335 () SeekEntryResult!4404)

(declare-fun e!303334 () SeekEntryResult!4404)

(assert (=> b!519849 (= e!303335 e!303334)))

(declare-fun lt!238127 () (_ BitVec 64))

(declare-fun lt!238126 () SeekEntryResult!4404)

(assert (=> b!519849 (= lt!238127 (select (arr!15930 a!3235) (index!19815 lt!238126)))))

(declare-fun c!61098 () Bool)

(assert (=> b!519849 (= c!61098 (= lt!238127 (select (arr!15930 a!3235) j!176)))))

(declare-fun b!519850 () Bool)

(assert (=> b!519850 (= e!303334 (Found!4404 (index!19815 lt!238126)))))

(declare-fun b!519851 () Bool)

(assert (=> b!519851 (= e!303335 Undefined!4404)))

(declare-fun b!519852 () Bool)

(declare-fun e!303336 () SeekEntryResult!4404)

(assert (=> b!519852 (= e!303336 (MissingZero!4404 (index!19815 lt!238126)))))

(declare-fun d!80063 () Bool)

(declare-fun lt!238128 () SeekEntryResult!4404)

(assert (=> d!80063 (and (or (is-Undefined!4404 lt!238128) (not (is-Found!4404 lt!238128)) (and (bvsge (index!19814 lt!238128) #b00000000000000000000000000000000) (bvslt (index!19814 lt!238128) (size!16294 a!3235)))) (or (is-Undefined!4404 lt!238128) (is-Found!4404 lt!238128) (not (is-MissingZero!4404 lt!238128)) (and (bvsge (index!19813 lt!238128) #b00000000000000000000000000000000) (bvslt (index!19813 lt!238128) (size!16294 a!3235)))) (or (is-Undefined!4404 lt!238128) (is-Found!4404 lt!238128) (is-MissingZero!4404 lt!238128) (not (is-MissingVacant!4404 lt!238128)) (and (bvsge (index!19816 lt!238128) #b00000000000000000000000000000000) (bvslt (index!19816 lt!238128) (size!16294 a!3235)))) (or (is-Undefined!4404 lt!238128) (ite (is-Found!4404 lt!238128) (= (select (arr!15930 a!3235) (index!19814 lt!238128)) (select (arr!15930 a!3235) j!176)) (ite (is-MissingZero!4404 lt!238128) (= (select (arr!15930 a!3235) (index!19813 lt!238128)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4404 lt!238128) (= (select (arr!15930 a!3235) (index!19816 lt!238128)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80063 (= lt!238128 e!303335)))

(declare-fun c!61099 () Bool)

(assert (=> d!80063 (= c!61099 (and (is-Intermediate!4404 lt!238126) (undefined!5216 lt!238126)))))

(assert (=> d!80063 (= lt!238126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15930 a!3235) j!176) mask!3524) (select (arr!15930 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80063 (validMask!0 mask!3524)))

(assert (=> d!80063 (= (seekEntryOrOpen!0 (select (arr!15930 a!3235) j!176) a!3235 mask!3524) lt!238128)))

(declare-fun b!519853 () Bool)

(declare-fun c!61100 () Bool)

(assert (=> b!519853 (= c!61100 (= lt!238127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519853 (= e!303334 e!303336)))

(declare-fun b!519854 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33148 (_ BitVec 32)) SeekEntryResult!4404)

(assert (=> b!519854 (= e!303336 (seekKeyOrZeroReturnVacant!0 (x!48823 lt!238126) (index!19815 lt!238126) (index!19815 lt!238126) (select (arr!15930 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!80063 c!61099) b!519851))

(assert (= (and d!80063 (not c!61099)) b!519849))

(assert (= (and b!519849 c!61098) b!519850))

(assert (= (and b!519849 (not c!61098)) b!519853))

(assert (= (and b!519853 c!61100) b!519852))

(assert (= (and b!519853 (not c!61100)) b!519854))

(declare-fun m!500953 () Bool)

(assert (=> b!519849 m!500953))

(assert (=> d!80063 m!500809))

(assert (=> d!80063 m!500775))

(assert (=> d!80063 m!500791))

(assert (=> d!80063 m!500791))

(assert (=> d!80063 m!500775))

(declare-fun m!500955 () Bool)

(assert (=> d!80063 m!500955))

(declare-fun m!500957 () Bool)

(assert (=> d!80063 m!500957))

(declare-fun m!500959 () Bool)

(assert (=> d!80063 m!500959))

(declare-fun m!500961 () Bool)

(assert (=> d!80063 m!500961))

(assert (=> b!519854 m!500775))

(declare-fun m!500963 () Bool)

(assert (=> b!519854 m!500963))

(assert (=> b!519641 d!80063))

(declare-fun d!80077 () Bool)

(declare-fun lt!238134 () (_ BitVec 32))

(declare-fun lt!238133 () (_ BitVec 32))

(assert (=> d!80077 (= lt!238134 (bvmul (bvxor lt!238133 (bvlshr lt!238133 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80077 (= lt!238133 ((_ extract 31 0) (bvand (bvxor (select (arr!15930 a!3235) j!176) (bvlshr (select (arr!15930 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80077 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318250 (let ((h!11057 ((_ extract 31 0) (bvand (bvxor (select (arr!15930 a!3235) j!176) (bvlshr (select (arr!15930 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48828 (bvmul (bvxor h!11057 (bvlshr h!11057 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48828 (bvlshr x!48828 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318250 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318250 #b00000000000000000000000000000000))))))

(assert (=> d!80077 (= (toIndex!0 (select (arr!15930 a!3235) j!176) mask!3524) (bvand (bvxor lt!238134 (bvlshr lt!238134 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519640 d!80077))

(declare-fun b!519906 () Bool)

(declare-fun e!303371 () SeekEntryResult!4404)

(assert (=> b!519906 (= e!303371 (Intermediate!4404 false lt!238021 #b00000000000000000000000000000000))))

(declare-fun b!519907 () Bool)

(declare-fun lt!238147 () SeekEntryResult!4404)

(assert (=> b!519907 (and (bvsge (index!19815 lt!238147) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238147) (size!16294 lt!238025)))))

(declare-fun res!318273 () Bool)

(assert (=> b!519907 (= res!318273 (= (select (arr!15930 lt!238025) (index!19815 lt!238147)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303373 () Bool)

(assert (=> b!519907 (=> res!318273 e!303373)))

(declare-fun b!519908 () Bool)

(assert (=> b!519908 (and (bvsge (index!19815 lt!238147) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238147) (size!16294 lt!238025)))))

(assert (=> b!519908 (= e!303373 (= (select (arr!15930 lt!238025) (index!19815 lt!238147)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519909 () Bool)

(declare-fun e!303372 () SeekEntryResult!4404)

(assert (=> b!519909 (= e!303372 e!303371)))

(declare-fun c!61118 () Bool)

(declare-fun lt!238148 () (_ BitVec 64))

(assert (=> b!519909 (= c!61118 (or (= lt!238148 lt!238024) (= (bvadd lt!238148 lt!238148) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519911 () Bool)

(declare-fun e!303374 () Bool)

(declare-fun e!303370 () Bool)

(assert (=> b!519911 (= e!303374 e!303370)))

(declare-fun res!318274 () Bool)

(assert (=> b!519911 (= res!318274 (and (is-Intermediate!4404 lt!238147) (not (undefined!5216 lt!238147)) (bvslt (x!48823 lt!238147) #b01111111111111111111111111111110) (bvsge (x!48823 lt!238147) #b00000000000000000000000000000000) (bvsge (x!48823 lt!238147) #b00000000000000000000000000000000)))))

(assert (=> b!519911 (=> (not res!318274) (not e!303370))))

(declare-fun b!519912 () Bool)

(assert (=> b!519912 (= e!303372 (Intermediate!4404 true lt!238021 #b00000000000000000000000000000000))))

(declare-fun b!519913 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519913 (= e!303371 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238021 #b00000000000000000000000000000000 mask!3524) lt!238024 lt!238025 mask!3524))))

(declare-fun b!519914 () Bool)

(assert (=> b!519914 (and (bvsge (index!19815 lt!238147) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238147) (size!16294 lt!238025)))))

(declare-fun res!318272 () Bool)

(assert (=> b!519914 (= res!318272 (= (select (arr!15930 lt!238025) (index!19815 lt!238147)) lt!238024))))

(assert (=> b!519914 (=> res!318272 e!303373)))

(assert (=> b!519914 (= e!303370 e!303373)))

(declare-fun d!80083 () Bool)

(assert (=> d!80083 e!303374))

(declare-fun c!61116 () Bool)

(assert (=> d!80083 (= c!61116 (and (is-Intermediate!4404 lt!238147) (undefined!5216 lt!238147)))))

(assert (=> d!80083 (= lt!238147 e!303372)))

(declare-fun c!61117 () Bool)

(assert (=> d!80083 (= c!61117 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80083 (= lt!238148 (select (arr!15930 lt!238025) lt!238021))))

(assert (=> d!80083 (validMask!0 mask!3524)))

(assert (=> d!80083 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238021 lt!238024 lt!238025 mask!3524) lt!238147)))

(declare-fun b!519910 () Bool)

(assert (=> b!519910 (= e!303374 (bvsge (x!48823 lt!238147) #b01111111111111111111111111111110))))

(assert (= (and d!80083 c!61117) b!519912))

(assert (= (and d!80083 (not c!61117)) b!519909))

(assert (= (and b!519909 c!61118) b!519906))

(assert (= (and b!519909 (not c!61118)) b!519913))

(assert (= (and d!80083 c!61116) b!519910))

(assert (= (and d!80083 (not c!61116)) b!519911))

(assert (= (and b!519911 res!318274) b!519914))

(assert (= (and b!519914 (not res!318272)) b!519907))

(assert (= (and b!519907 (not res!318273)) b!519908))

(declare-fun m!500997 () Bool)

(assert (=> b!519907 m!500997))

(assert (=> b!519914 m!500997))

(declare-fun m!500999 () Bool)

(assert (=> d!80083 m!500999))

(assert (=> d!80083 m!500809))

(assert (=> b!519908 m!500997))

(declare-fun m!501001 () Bool)

(assert (=> b!519913 m!501001))

(assert (=> b!519913 m!501001))

(declare-fun m!501003 () Bool)

(assert (=> b!519913 m!501003))

(assert (=> b!519640 d!80083))

(declare-fun d!80099 () Bool)

(assert (=> d!80099 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!238160 () Unit!16082)

(declare-fun choose!38 (array!33148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16082)

(assert (=> d!80099 (= lt!238160 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80099 (validMask!0 mask!3524)))

(assert (=> d!80099 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!238160)))

(declare-fun bs!16378 () Bool)

(assert (= bs!16378 d!80099))

(assert (=> bs!16378 m!500793))

(declare-fun m!501009 () Bool)

(assert (=> bs!16378 m!501009))

(assert (=> bs!16378 m!500809))

(assert (=> b!519640 d!80099))

(declare-fun b!519930 () Bool)

(declare-fun e!303385 () SeekEntryResult!4404)

(assert (=> b!519930 (= e!303385 (Intermediate!4404 false lt!238028 #b00000000000000000000000000000000))))

(declare-fun b!519931 () Bool)

(declare-fun lt!238161 () SeekEntryResult!4404)

(assert (=> b!519931 (and (bvsge (index!19815 lt!238161) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238161) (size!16294 a!3235)))))

(declare-fun res!318279 () Bool)

(assert (=> b!519931 (= res!318279 (= (select (arr!15930 a!3235) (index!19815 lt!238161)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303387 () Bool)

(assert (=> b!519931 (=> res!318279 e!303387)))

(declare-fun b!519932 () Bool)

(assert (=> b!519932 (and (bvsge (index!19815 lt!238161) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238161) (size!16294 a!3235)))))

(assert (=> b!519932 (= e!303387 (= (select (arr!15930 a!3235) (index!19815 lt!238161)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519933 () Bool)

(declare-fun e!303386 () SeekEntryResult!4404)

(assert (=> b!519933 (= e!303386 e!303385)))

(declare-fun c!61127 () Bool)

(declare-fun lt!238162 () (_ BitVec 64))

(assert (=> b!519933 (= c!61127 (or (= lt!238162 (select (arr!15930 a!3235) j!176)) (= (bvadd lt!238162 lt!238162) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519935 () Bool)

(declare-fun e!303388 () Bool)

(declare-fun e!303384 () Bool)

(assert (=> b!519935 (= e!303388 e!303384)))

(declare-fun res!318280 () Bool)

(assert (=> b!519935 (= res!318280 (and (is-Intermediate!4404 lt!238161) (not (undefined!5216 lt!238161)) (bvslt (x!48823 lt!238161) #b01111111111111111111111111111110) (bvsge (x!48823 lt!238161) #b00000000000000000000000000000000) (bvsge (x!48823 lt!238161) #b00000000000000000000000000000000)))))

(assert (=> b!519935 (=> (not res!318280) (not e!303384))))

(declare-fun b!519936 () Bool)

(assert (=> b!519936 (= e!303386 (Intermediate!4404 true lt!238028 #b00000000000000000000000000000000))))

(declare-fun b!519937 () Bool)

(assert (=> b!519937 (= e!303385 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238028 #b00000000000000000000000000000000 mask!3524) (select (arr!15930 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519938 () Bool)

(assert (=> b!519938 (and (bvsge (index!19815 lt!238161) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238161) (size!16294 a!3235)))))

(declare-fun res!318278 () Bool)

(assert (=> b!519938 (= res!318278 (= (select (arr!15930 a!3235) (index!19815 lt!238161)) (select (arr!15930 a!3235) j!176)))))

(assert (=> b!519938 (=> res!318278 e!303387)))

(assert (=> b!519938 (= e!303384 e!303387)))

(declare-fun d!80103 () Bool)

(assert (=> d!80103 e!303388))

(declare-fun c!61125 () Bool)

(assert (=> d!80103 (= c!61125 (and (is-Intermediate!4404 lt!238161) (undefined!5216 lt!238161)))))

(assert (=> d!80103 (= lt!238161 e!303386)))

(declare-fun c!61126 () Bool)

(assert (=> d!80103 (= c!61126 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80103 (= lt!238162 (select (arr!15930 a!3235) lt!238028))))

(assert (=> d!80103 (validMask!0 mask!3524)))

(assert (=> d!80103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238028 (select (arr!15930 a!3235) j!176) a!3235 mask!3524) lt!238161)))

(declare-fun b!519934 () Bool)

(assert (=> b!519934 (= e!303388 (bvsge (x!48823 lt!238161) #b01111111111111111111111111111110))))

(assert (= (and d!80103 c!61126) b!519936))

(assert (= (and d!80103 (not c!61126)) b!519933))

(assert (= (and b!519933 c!61127) b!519930))

(assert (= (and b!519933 (not c!61127)) b!519937))

(assert (= (and d!80103 c!61125) b!519934))

(assert (= (and d!80103 (not c!61125)) b!519935))

(assert (= (and b!519935 res!318280) b!519938))

(assert (= (and b!519938 (not res!318278)) b!519931))

(assert (= (and b!519931 (not res!318279)) b!519932))

(declare-fun m!501011 () Bool)

(assert (=> b!519931 m!501011))

(assert (=> b!519938 m!501011))

(declare-fun m!501013 () Bool)

(assert (=> d!80103 m!501013))

(assert (=> d!80103 m!500809))

(assert (=> b!519932 m!501011))

(declare-fun m!501015 () Bool)

(assert (=> b!519937 m!501015))

(assert (=> b!519937 m!501015))

(assert (=> b!519937 m!500775))

(declare-fun m!501017 () Bool)

(assert (=> b!519937 m!501017))

(assert (=> b!519640 d!80103))

(declare-fun d!80105 () Bool)

(declare-fun lt!238164 () (_ BitVec 32))

(declare-fun lt!238163 () (_ BitVec 32))

(assert (=> d!80105 (= lt!238164 (bvmul (bvxor lt!238163 (bvlshr lt!238163 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80105 (= lt!238163 ((_ extract 31 0) (bvand (bvxor lt!238024 (bvlshr lt!238024 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80105 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318250 (let ((h!11057 ((_ extract 31 0) (bvand (bvxor lt!238024 (bvlshr lt!238024 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48828 (bvmul (bvxor h!11057 (bvlshr h!11057 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48828 (bvlshr x!48828 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318250 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318250 #b00000000000000000000000000000000))))))

(assert (=> d!80105 (= (toIndex!0 lt!238024 mask!3524) (bvand (bvxor lt!238164 (bvlshr lt!238164 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519640 d!80105))

(declare-fun b!519963 () Bool)

(declare-fun e!303406 () Bool)

(declare-fun e!303404 () Bool)

(assert (=> b!519963 (= e!303406 e!303404)))

(declare-fun c!61137 () Bool)

(assert (=> b!519963 (= c!61137 (validKeyInArray!0 (select (arr!15930 a!3235) j!176)))))

(declare-fun b!519964 () Bool)

(declare-fun e!303405 () Bool)

(assert (=> b!519964 (= e!303404 e!303405)))

(declare-fun lt!238182 () (_ BitVec 64))

(assert (=> b!519964 (= lt!238182 (select (arr!15930 a!3235) j!176))))

(declare-fun lt!238181 () Unit!16082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33148 (_ BitVec 64) (_ BitVec 32)) Unit!16082)

(assert (=> b!519964 (= lt!238181 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238182 j!176))))

(assert (=> b!519964 (arrayContainsKey!0 a!3235 lt!238182 #b00000000000000000000000000000000)))

(declare-fun lt!238180 () Unit!16082)

(assert (=> b!519964 (= lt!238180 lt!238181)))

(declare-fun res!318287 () Bool)

(assert (=> b!519964 (= res!318287 (= (seekEntryOrOpen!0 (select (arr!15930 a!3235) j!176) a!3235 mask!3524) (Found!4404 j!176)))))

(assert (=> b!519964 (=> (not res!318287) (not e!303405))))

(declare-fun b!519965 () Bool)

(declare-fun call!31779 () Bool)

(assert (=> b!519965 (= e!303405 call!31779)))

(declare-fun bm!31776 () Bool)

(assert (=> bm!31776 (= call!31779 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!519966 () Bool)

(assert (=> b!519966 (= e!303404 call!31779)))

(declare-fun d!80107 () Bool)

(declare-fun res!318288 () Bool)

(assert (=> d!80107 (=> res!318288 e!303406)))

(assert (=> d!80107 (= res!318288 (bvsge j!176 (size!16294 a!3235)))))

(assert (=> d!80107 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303406)))

(assert (= (and d!80107 (not res!318288)) b!519963))

(assert (= (and b!519963 c!61137) b!519964))

(assert (= (and b!519963 (not c!61137)) b!519966))

(assert (= (and b!519964 res!318287) b!519965))

(assert (= (or b!519965 b!519966) bm!31776))

(assert (=> b!519963 m!500775))

(assert (=> b!519963 m!500775))

(assert (=> b!519963 m!500779))

(assert (=> b!519964 m!500775))

(declare-fun m!501053 () Bool)

(assert (=> b!519964 m!501053))

(declare-fun m!501055 () Bool)

(assert (=> b!519964 m!501055))

(assert (=> b!519964 m!500775))

(assert (=> b!519964 m!500777))

(declare-fun m!501057 () Bool)

(assert (=> bm!31776 m!501057))

(assert (=> b!519640 d!80107))

(declare-fun b!519967 () Bool)

(declare-fun e!303408 () SeekEntryResult!4404)

(declare-fun e!303407 () SeekEntryResult!4404)

(assert (=> b!519967 (= e!303408 e!303407)))

(declare-fun lt!238184 () (_ BitVec 64))

(declare-fun lt!238183 () SeekEntryResult!4404)

(assert (=> b!519967 (= lt!238184 (select (arr!15930 a!3235) (index!19815 lt!238183)))))

(declare-fun c!61138 () Bool)

(assert (=> b!519967 (= c!61138 (= lt!238184 k!2280))))

(declare-fun b!519968 () Bool)

(assert (=> b!519968 (= e!303407 (Found!4404 (index!19815 lt!238183)))))

(declare-fun b!519969 () Bool)

(assert (=> b!519969 (= e!303408 Undefined!4404)))

(declare-fun b!519970 () Bool)

(declare-fun e!303409 () SeekEntryResult!4404)

(assert (=> b!519970 (= e!303409 (MissingZero!4404 (index!19815 lt!238183)))))

(declare-fun d!80117 () Bool)

(declare-fun lt!238185 () SeekEntryResult!4404)

(assert (=> d!80117 (and (or (is-Undefined!4404 lt!238185) (not (is-Found!4404 lt!238185)) (and (bvsge (index!19814 lt!238185) #b00000000000000000000000000000000) (bvslt (index!19814 lt!238185) (size!16294 a!3235)))) (or (is-Undefined!4404 lt!238185) (is-Found!4404 lt!238185) (not (is-MissingZero!4404 lt!238185)) (and (bvsge (index!19813 lt!238185) #b00000000000000000000000000000000) (bvslt (index!19813 lt!238185) (size!16294 a!3235)))) (or (is-Undefined!4404 lt!238185) (is-Found!4404 lt!238185) (is-MissingZero!4404 lt!238185) (not (is-MissingVacant!4404 lt!238185)) (and (bvsge (index!19816 lt!238185) #b00000000000000000000000000000000) (bvslt (index!19816 lt!238185) (size!16294 a!3235)))) (or (is-Undefined!4404 lt!238185) (ite (is-Found!4404 lt!238185) (= (select (arr!15930 a!3235) (index!19814 lt!238185)) k!2280) (ite (is-MissingZero!4404 lt!238185) (= (select (arr!15930 a!3235) (index!19813 lt!238185)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4404 lt!238185) (= (select (arr!15930 a!3235) (index!19816 lt!238185)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80117 (= lt!238185 e!303408)))

(declare-fun c!61139 () Bool)

(assert (=> d!80117 (= c!61139 (and (is-Intermediate!4404 lt!238183) (undefined!5216 lt!238183)))))

(assert (=> d!80117 (= lt!238183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80117 (validMask!0 mask!3524)))

(assert (=> d!80117 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!238185)))

(declare-fun b!519971 () Bool)

(declare-fun c!61140 () Bool)

(assert (=> b!519971 (= c!61140 (= lt!238184 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519971 (= e!303407 e!303409)))

(declare-fun b!519972 () Bool)

(assert (=> b!519972 (= e!303409 (seekKeyOrZeroReturnVacant!0 (x!48823 lt!238183) (index!19815 lt!238183) (index!19815 lt!238183) k!2280 a!3235 mask!3524))))

(assert (= (and d!80117 c!61139) b!519969))

(assert (= (and d!80117 (not c!61139)) b!519967))

(assert (= (and b!519967 c!61138) b!519968))

(assert (= (and b!519967 (not c!61138)) b!519971))

(assert (= (and b!519971 c!61140) b!519970))

(assert (= (and b!519971 (not c!61140)) b!519972))

(declare-fun m!501059 () Bool)

(assert (=> b!519967 m!501059))

(assert (=> d!80117 m!500809))

(declare-fun m!501061 () Bool)

(assert (=> d!80117 m!501061))

(assert (=> d!80117 m!501061))

(declare-fun m!501063 () Bool)

(assert (=> d!80117 m!501063))

(declare-fun m!501065 () Bool)

(assert (=> d!80117 m!501065))

(declare-fun m!501067 () Bool)

(assert (=> d!80117 m!501067))

(declare-fun m!501069 () Bool)

(assert (=> d!80117 m!501069))

(declare-fun m!501071 () Bool)

(assert (=> b!519972 m!501071))

(assert (=> b!519645 d!80117))

(declare-fun b!519973 () Bool)

(declare-fun e!303412 () Bool)

(declare-fun e!303410 () Bool)

(assert (=> b!519973 (= e!303412 e!303410)))

(declare-fun c!61141 () Bool)

(assert (=> b!519973 (= c!61141 (validKeyInArray!0 (select (arr!15930 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519974 () Bool)

(declare-fun e!303411 () Bool)

(assert (=> b!519974 (= e!303410 e!303411)))

(declare-fun lt!238188 () (_ BitVec 64))

(assert (=> b!519974 (= lt!238188 (select (arr!15930 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!238187 () Unit!16082)

(assert (=> b!519974 (= lt!238187 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238188 #b00000000000000000000000000000000))))

(assert (=> b!519974 (arrayContainsKey!0 a!3235 lt!238188 #b00000000000000000000000000000000)))

(declare-fun lt!238186 () Unit!16082)

(assert (=> b!519974 (= lt!238186 lt!238187)))

(declare-fun res!318289 () Bool)

(assert (=> b!519974 (= res!318289 (= (seekEntryOrOpen!0 (select (arr!15930 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4404 #b00000000000000000000000000000000)))))

(assert (=> b!519974 (=> (not res!318289) (not e!303411))))

(declare-fun b!519975 () Bool)

(declare-fun call!31780 () Bool)

(assert (=> b!519975 (= e!303411 call!31780)))

(declare-fun bm!31777 () Bool)

(assert (=> bm!31777 (= call!31780 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!519976 () Bool)

(assert (=> b!519976 (= e!303410 call!31780)))

(declare-fun d!80119 () Bool)

(declare-fun res!318290 () Bool)

(assert (=> d!80119 (=> res!318290 e!303412)))

(assert (=> d!80119 (= res!318290 (bvsge #b00000000000000000000000000000000 (size!16294 a!3235)))))

(assert (=> d!80119 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303412)))

(assert (= (and d!80119 (not res!318290)) b!519973))

(assert (= (and b!519973 c!61141) b!519974))

(assert (= (and b!519973 (not c!61141)) b!519976))

(assert (= (and b!519974 res!318289) b!519975))

(assert (= (or b!519975 b!519976) bm!31777))

(assert (=> b!519973 m!500909))

(assert (=> b!519973 m!500909))

(assert (=> b!519973 m!500913))

(assert (=> b!519974 m!500909))

(declare-fun m!501073 () Bool)

(assert (=> b!519974 m!501073))

(declare-fun m!501075 () Bool)

(assert (=> b!519974 m!501075))

(assert (=> b!519974 m!500909))

(declare-fun m!501077 () Bool)

(assert (=> b!519974 m!501077))

(declare-fun m!501079 () Bool)

(assert (=> bm!31777 m!501079))

(assert (=> b!519644 d!80119))

(declare-fun d!80121 () Bool)

(assert (=> d!80121 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519639 d!80121))

(declare-fun d!80123 () Bool)

(declare-fun res!318301 () Bool)

(declare-fun e!303427 () Bool)

(assert (=> d!80123 (=> res!318301 e!303427)))

(assert (=> d!80123 (= res!318301 (= (select (arr!15930 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80123 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!303427)))

(declare-fun b!519999 () Bool)

(declare-fun e!303428 () Bool)

(assert (=> b!519999 (= e!303427 e!303428)))

(declare-fun res!318302 () Bool)

(assert (=> b!519999 (=> (not res!318302) (not e!303428))))

(assert (=> b!519999 (= res!318302 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16294 a!3235)))))

(declare-fun b!520000 () Bool)

(assert (=> b!520000 (= e!303428 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80123 (not res!318301)) b!519999))

(assert (= (and b!519999 res!318302) b!520000))

(assert (=> d!80123 m!500909))

(declare-fun m!501081 () Bool)

(assert (=> b!520000 m!501081))

(assert (=> b!519638 d!80123))

(declare-fun d!80125 () Bool)

(declare-fun e!303446 () Bool)

(assert (=> d!80125 e!303446))

(declare-fun res!318315 () Bool)

(assert (=> d!80125 (=> (not res!318315) (not e!303446))))

(assert (=> d!80125 (= res!318315 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16294 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16294 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16294 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16294 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16294 a!3235))))))

(declare-fun lt!238212 () Unit!16082)

(declare-fun choose!47 (array!33148 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16082)

(assert (=> d!80125 (= lt!238212 (choose!47 a!3235 i!1204 k!2280 j!176 lt!238028 #b00000000000000000000000000000000 (index!19815 lt!238027) (x!48823 lt!238027) mask!3524))))

(assert (=> d!80125 (validMask!0 mask!3524)))

(assert (=> d!80125 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238028 #b00000000000000000000000000000000 (index!19815 lt!238027) (x!48823 lt!238027) mask!3524) lt!238212)))

(declare-fun b!520030 () Bool)

(assert (=> b!520030 (= e!303446 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238028 (select (store (arr!15930 a!3235) i!1204 k!2280) j!176) (array!33149 (store (arr!15930 a!3235) i!1204 k!2280) (size!16294 a!3235)) mask!3524) (Intermediate!4404 false (index!19815 lt!238027) (x!48823 lt!238027))))))

(assert (= (and d!80125 res!318315) b!520030))

(declare-fun m!501107 () Bool)

(assert (=> d!80125 m!501107))

(assert (=> d!80125 m!500809))

(assert (=> b!520030 m!500783))

(assert (=> b!520030 m!500787))

(assert (=> b!520030 m!500787))

(declare-fun m!501109 () Bool)

(assert (=> b!520030 m!501109))

(assert (=> b!519649 d!80125))

(declare-fun b!520031 () Bool)

(declare-fun e!303448 () SeekEntryResult!4404)

(assert (=> b!520031 (= e!303448 (Intermediate!4404 false lt!238028 #b00000000000000000000000000000000))))

(declare-fun b!520032 () Bool)

(declare-fun lt!238213 () SeekEntryResult!4404)

(assert (=> b!520032 (and (bvsge (index!19815 lt!238213) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238213) (size!16294 lt!238025)))))

(declare-fun res!318317 () Bool)

(assert (=> b!520032 (= res!318317 (= (select (arr!15930 lt!238025) (index!19815 lt!238213)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303450 () Bool)

(assert (=> b!520032 (=> res!318317 e!303450)))

(declare-fun b!520033 () Bool)

(assert (=> b!520033 (and (bvsge (index!19815 lt!238213) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238213) (size!16294 lt!238025)))))

(assert (=> b!520033 (= e!303450 (= (select (arr!15930 lt!238025) (index!19815 lt!238213)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520034 () Bool)

(declare-fun e!303449 () SeekEntryResult!4404)

(assert (=> b!520034 (= e!303449 e!303448)))

(declare-fun c!61159 () Bool)

(declare-fun lt!238214 () (_ BitVec 64))

(assert (=> b!520034 (= c!61159 (or (= lt!238214 lt!238024) (= (bvadd lt!238214 lt!238214) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520036 () Bool)

(declare-fun e!303451 () Bool)

(declare-fun e!303447 () Bool)

(assert (=> b!520036 (= e!303451 e!303447)))

(declare-fun res!318318 () Bool)

(assert (=> b!520036 (= res!318318 (and (is-Intermediate!4404 lt!238213) (not (undefined!5216 lt!238213)) (bvslt (x!48823 lt!238213) #b01111111111111111111111111111110) (bvsge (x!48823 lt!238213) #b00000000000000000000000000000000) (bvsge (x!48823 lt!238213) #b00000000000000000000000000000000)))))

(assert (=> b!520036 (=> (not res!318318) (not e!303447))))

(declare-fun b!520037 () Bool)

(assert (=> b!520037 (= e!303449 (Intermediate!4404 true lt!238028 #b00000000000000000000000000000000))))

(declare-fun b!520038 () Bool)

(assert (=> b!520038 (= e!303448 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238028 #b00000000000000000000000000000000 mask!3524) lt!238024 lt!238025 mask!3524))))

(declare-fun b!520039 () Bool)

(assert (=> b!520039 (and (bvsge (index!19815 lt!238213) #b00000000000000000000000000000000) (bvslt (index!19815 lt!238213) (size!16294 lt!238025)))))

(declare-fun res!318316 () Bool)

(assert (=> b!520039 (= res!318316 (= (select (arr!15930 lt!238025) (index!19815 lt!238213)) lt!238024))))

(assert (=> b!520039 (=> res!318316 e!303450)))

(assert (=> b!520039 (= e!303447 e!303450)))

(declare-fun d!80139 () Bool)

(assert (=> d!80139 e!303451))

(declare-fun c!61157 () Bool)

(assert (=> d!80139 (= c!61157 (and (is-Intermediate!4404 lt!238213) (undefined!5216 lt!238213)))))

(assert (=> d!80139 (= lt!238213 e!303449)))

(declare-fun c!61158 () Bool)

(assert (=> d!80139 (= c!61158 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80139 (= lt!238214 (select (arr!15930 lt!238025) lt!238028))))

(assert (=> d!80139 (validMask!0 mask!3524)))

(assert (=> d!80139 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238028 lt!238024 lt!238025 mask!3524) lt!238213)))

(declare-fun b!520035 () Bool)

(assert (=> b!520035 (= e!303451 (bvsge (x!48823 lt!238213) #b01111111111111111111111111111110))))

(assert (= (and d!80139 c!61158) b!520037))

(assert (= (and d!80139 (not c!61158)) b!520034))

(assert (= (and b!520034 c!61159) b!520031))

(assert (= (and b!520034 (not c!61159)) b!520038))

(assert (= (and d!80139 c!61157) b!520035))

(assert (= (and d!80139 (not c!61157)) b!520036))

(assert (= (and b!520036 res!318318) b!520039))

(assert (= (and b!520039 (not res!318316)) b!520032))

(assert (= (and b!520032 (not res!318317)) b!520033))

(declare-fun m!501111 () Bool)

(assert (=> b!520032 m!501111))

(assert (=> b!520039 m!501111))

(declare-fun m!501113 () Bool)

(assert (=> d!80139 m!501113))

(assert (=> d!80139 m!500809))

(assert (=> b!520033 m!501111))

(assert (=> b!520038 m!501015))

(assert (=> b!520038 m!501015))

(declare-fun m!501115 () Bool)

(assert (=> b!520038 m!501115))

(assert (=> b!519649 d!80139))

(declare-fun d!80141 () Bool)

(assert (=> d!80141 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47236 d!80141))

(declare-fun d!80149 () Bool)

(assert (=> d!80149 (= (array_inv!11704 a!3235) (bvsge (size!16294 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47236 d!80149))

(declare-fun d!80151 () Bool)

(assert (=> d!80151 (= (validKeyInArray!0 (select (arr!15930 a!3235) j!176)) (and (not (= (select (arr!15930 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15930 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519643 d!80151))

(push 1)

