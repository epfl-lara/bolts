; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47238 () Bool)

(assert start!47238)

(declare-fun b!519679 () Bool)

(declare-fun res!318163 () Bool)

(declare-fun e!303232 () Bool)

(assert (=> b!519679 (=> (not res!318163) (not e!303232))))

(declare-datatypes ((array!33150 0))(
  ( (array!33151 (arr!15931 (Array (_ BitVec 32) (_ BitVec 64))) (size!16295 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33150)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519679 (= res!318163 (validKeyInArray!0 (select (arr!15931 a!3235) j!176)))))

(declare-fun b!519680 () Bool)

(declare-fun res!318159 () Bool)

(declare-fun e!303238 () Bool)

(assert (=> b!519680 (=> (not res!318159) (not e!303238))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33150 (_ BitVec 32)) Bool)

(assert (=> b!519680 (= res!318159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!519681 () Bool)

(declare-datatypes ((Unit!16086 0))(
  ( (Unit!16087) )
))
(declare-fun e!303233 () Unit!16086)

(declare-fun Unit!16088 () Unit!16086)

(assert (=> b!519681 (= e!303233 Unit!16088)))

(declare-fun lt!238047 () Unit!16086)

(declare-fun lt!238053 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4405 0))(
  ( (MissingZero!4405 (index!19817 (_ BitVec 32))) (Found!4405 (index!19818 (_ BitVec 32))) (Intermediate!4405 (undefined!5217 Bool) (index!19819 (_ BitVec 32)) (x!48824 (_ BitVec 32))) (Undefined!4405) (MissingVacant!4405 (index!19820 (_ BitVec 32))) )
))
(declare-fun lt!238051 () SeekEntryResult!4405)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33150 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16086)

(assert (=> b!519681 (= lt!238047 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238053 #b00000000000000000000000000000000 (index!19819 lt!238051) (x!48824 lt!238051) mask!3524))))

(declare-fun lt!238054 () array!33150)

(declare-fun lt!238048 () (_ BitVec 64))

(declare-fun res!318161 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33150 (_ BitVec 32)) SeekEntryResult!4405)

(assert (=> b!519681 (= res!318161 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238053 lt!238048 lt!238054 mask!3524) (Intermediate!4405 false (index!19819 lt!238051) (x!48824 lt!238051))))))

(declare-fun e!303237 () Bool)

(assert (=> b!519681 (=> (not res!318161) (not e!303237))))

(assert (=> b!519681 e!303237))

(declare-fun b!519682 () Bool)

(declare-fun e!303236 () Bool)

(assert (=> b!519682 (= e!303238 (not e!303236))))

(declare-fun res!318169 () Bool)

(assert (=> b!519682 (=> res!318169 e!303236)))

(declare-fun lt!238055 () (_ BitVec 32))

(assert (=> b!519682 (= res!318169 (= lt!238051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238055 lt!238048 lt!238054 mask!3524)))))

(assert (=> b!519682 (= lt!238051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238053 (select (arr!15931 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519682 (= lt!238055 (toIndex!0 lt!238048 mask!3524))))

(assert (=> b!519682 (= lt!238048 (select (store (arr!15931 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!519682 (= lt!238053 (toIndex!0 (select (arr!15931 a!3235) j!176) mask!3524))))

(assert (=> b!519682 (= lt!238054 (array!33151 (store (arr!15931 a!3235) i!1204 k0!2280) (size!16295 a!3235)))))

(declare-fun e!303234 () Bool)

(assert (=> b!519682 e!303234))

(declare-fun res!318164 () Bool)

(assert (=> b!519682 (=> (not res!318164) (not e!303234))))

(assert (=> b!519682 (= res!318164 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238050 () Unit!16086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16086)

(assert (=> b!519682 (= lt!238050 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!318165 () Bool)

(assert (=> start!47238 (=> (not res!318165) (not e!303232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47238 (= res!318165 (validMask!0 mask!3524))))

(assert (=> start!47238 e!303232))

(assert (=> start!47238 true))

(declare-fun array_inv!11705 (array!33150) Bool)

(assert (=> start!47238 (array_inv!11705 a!3235)))

(declare-fun b!519683 () Bool)

(declare-fun res!318170 () Bool)

(assert (=> b!519683 (=> res!318170 e!303236)))

(get-info :version)

(assert (=> b!519683 (= res!318170 (or (undefined!5217 lt!238051) (not ((_ is Intermediate!4405) lt!238051))))))

(declare-fun b!519684 () Bool)

(declare-fun res!318162 () Bool)

(assert (=> b!519684 (=> (not res!318162) (not e!303232))))

(assert (=> b!519684 (= res!318162 (validKeyInArray!0 k0!2280))))

(declare-fun b!519685 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33150 (_ BitVec 32)) SeekEntryResult!4405)

(assert (=> b!519685 (= e!303234 (= (seekEntryOrOpen!0 (select (arr!15931 a!3235) j!176) a!3235 mask!3524) (Found!4405 j!176)))))

(declare-fun b!519686 () Bool)

(declare-fun res!318168 () Bool)

(assert (=> b!519686 (=> (not res!318168) (not e!303232))))

(declare-fun arrayContainsKey!0 (array!33150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519686 (= res!318168 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!519687 () Bool)

(declare-fun res!318160 () Bool)

(assert (=> b!519687 (=> (not res!318160) (not e!303232))))

(assert (=> b!519687 (= res!318160 (and (= (size!16295 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16295 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16295 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519688 () Bool)

(declare-fun res!318166 () Bool)

(assert (=> b!519688 (=> (not res!318166) (not e!303238))))

(declare-datatypes ((List!10142 0))(
  ( (Nil!10139) (Cons!10138 (h!11054 (_ BitVec 64)) (t!16378 List!10142)) )
))
(declare-fun arrayNoDuplicates!0 (array!33150 (_ BitVec 32) List!10142) Bool)

(assert (=> b!519688 (= res!318166 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10139))))

(declare-fun b!519689 () Bool)

(declare-fun Unit!16089 () Unit!16086)

(assert (=> b!519689 (= e!303233 Unit!16089)))

(declare-fun b!519690 () Bool)

(assert (=> b!519690 (= e!303232 e!303238)))

(declare-fun res!318167 () Bool)

(assert (=> b!519690 (=> (not res!318167) (not e!303238))))

(declare-fun lt!238052 () SeekEntryResult!4405)

(assert (=> b!519690 (= res!318167 (or (= lt!238052 (MissingZero!4405 i!1204)) (= lt!238052 (MissingVacant!4405 i!1204))))))

(assert (=> b!519690 (= lt!238052 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!519691 () Bool)

(assert (=> b!519691 (= e!303237 false)))

(declare-fun b!519692 () Bool)

(assert (=> b!519692 (= e!303236 (not (= (select (arr!15931 a!3235) (index!19819 lt!238051)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!519692 (or (= (select (arr!15931 a!3235) (index!19819 lt!238051)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15931 a!3235) (index!19819 lt!238051)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238049 () Unit!16086)

(assert (=> b!519692 (= lt!238049 e!303233)))

(declare-fun c!61058 () Bool)

(assert (=> b!519692 (= c!61058 (= (select (arr!15931 a!3235) (index!19819 lt!238051)) (select (arr!15931 a!3235) j!176)))))

(assert (=> b!519692 (and (bvslt (x!48824 lt!238051) #b01111111111111111111111111111110) (or (= (select (arr!15931 a!3235) (index!19819 lt!238051)) (select (arr!15931 a!3235) j!176)) (= (select (arr!15931 a!3235) (index!19819 lt!238051)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15931 a!3235) (index!19819 lt!238051)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47238 res!318165) b!519687))

(assert (= (and b!519687 res!318160) b!519679))

(assert (= (and b!519679 res!318163) b!519684))

(assert (= (and b!519684 res!318162) b!519686))

(assert (= (and b!519686 res!318168) b!519690))

(assert (= (and b!519690 res!318167) b!519680))

(assert (= (and b!519680 res!318159) b!519688))

(assert (= (and b!519688 res!318166) b!519682))

(assert (= (and b!519682 res!318164) b!519685))

(assert (= (and b!519682 (not res!318169)) b!519683))

(assert (= (and b!519683 (not res!318170)) b!519692))

(assert (= (and b!519692 c!61058) b!519681))

(assert (= (and b!519692 (not c!61058)) b!519689))

(assert (= (and b!519681 res!318161) b!519691))

(declare-fun m!500815 () Bool)

(assert (=> b!519682 m!500815))

(declare-fun m!500817 () Bool)

(assert (=> b!519682 m!500817))

(declare-fun m!500819 () Bool)

(assert (=> b!519682 m!500819))

(declare-fun m!500821 () Bool)

(assert (=> b!519682 m!500821))

(declare-fun m!500823 () Bool)

(assert (=> b!519682 m!500823))

(assert (=> b!519682 m!500821))

(declare-fun m!500825 () Bool)

(assert (=> b!519682 m!500825))

(declare-fun m!500827 () Bool)

(assert (=> b!519682 m!500827))

(assert (=> b!519682 m!500821))

(declare-fun m!500829 () Bool)

(assert (=> b!519682 m!500829))

(declare-fun m!500831 () Bool)

(assert (=> b!519682 m!500831))

(declare-fun m!500833 () Bool)

(assert (=> b!519684 m!500833))

(declare-fun m!500835 () Bool)

(assert (=> b!519688 m!500835))

(declare-fun m!500837 () Bool)

(assert (=> start!47238 m!500837))

(declare-fun m!500839 () Bool)

(assert (=> start!47238 m!500839))

(assert (=> b!519685 m!500821))

(assert (=> b!519685 m!500821))

(declare-fun m!500841 () Bool)

(assert (=> b!519685 m!500841))

(declare-fun m!500843 () Bool)

(assert (=> b!519681 m!500843))

(declare-fun m!500845 () Bool)

(assert (=> b!519681 m!500845))

(declare-fun m!500847 () Bool)

(assert (=> b!519680 m!500847))

(assert (=> b!519679 m!500821))

(assert (=> b!519679 m!500821))

(declare-fun m!500849 () Bool)

(assert (=> b!519679 m!500849))

(declare-fun m!500851 () Bool)

(assert (=> b!519692 m!500851))

(assert (=> b!519692 m!500821))

(declare-fun m!500853 () Bool)

(assert (=> b!519686 m!500853))

(declare-fun m!500855 () Bool)

(assert (=> b!519690 m!500855))

(check-sat (not b!519688) (not b!519681) (not b!519679) (not b!519685) (not b!519686) (not b!519682) (not b!519690) (not b!519684) (not b!519680) (not start!47238))
(check-sat)
(get-model)

(declare-fun d!80051 () Bool)

(declare-fun lt!238088 () (_ BitVec 32))

(declare-fun lt!238087 () (_ BitVec 32))

(assert (=> d!80051 (= lt!238088 (bvmul (bvxor lt!238087 (bvlshr lt!238087 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80051 (= lt!238087 ((_ extract 31 0) (bvand (bvxor (select (arr!15931 a!3235) j!176) (bvlshr (select (arr!15931 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80051 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318207 (let ((h!11056 ((_ extract 31 0) (bvand (bvxor (select (arr!15931 a!3235) j!176) (bvlshr (select (arr!15931 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48826 (bvmul (bvxor h!11056 (bvlshr h!11056 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48826 (bvlshr x!48826 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318207 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318207 #b00000000000000000000000000000000))))))

(assert (=> d!80051 (= (toIndex!0 (select (arr!15931 a!3235) j!176) mask!3524) (bvand (bvxor lt!238088 (bvlshr lt!238088 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519682 d!80051))

(declare-fun d!80053 () Bool)

(assert (=> d!80053 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!238091 () Unit!16086)

(declare-fun choose!38 (array!33150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16086)

(assert (=> d!80053 (= lt!238091 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80053 (validMask!0 mask!3524)))

(assert (=> d!80053 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!238091)))

(declare-fun bs!16377 () Bool)

(assert (= bs!16377 d!80053))

(assert (=> bs!16377 m!500831))

(declare-fun m!500899 () Bool)

(assert (=> bs!16377 m!500899))

(assert (=> bs!16377 m!500837))

(assert (=> b!519682 d!80053))

(declare-fun b!519753 () Bool)

(declare-fun e!303271 () SeekEntryResult!4405)

(assert (=> b!519753 (= e!303271 (Intermediate!4405 false lt!238055 #b00000000000000000000000000000000))))

(declare-fun b!519754 () Bool)

(declare-fun lt!238096 () SeekEntryResult!4405)

(assert (=> b!519754 (and (bvsge (index!19819 lt!238096) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238096) (size!16295 lt!238054)))))

(declare-fun res!318215 () Bool)

(assert (=> b!519754 (= res!318215 (= (select (arr!15931 lt!238054) (index!19819 lt!238096)) lt!238048))))

(declare-fun e!303273 () Bool)

(assert (=> b!519754 (=> res!318215 e!303273)))

(declare-fun e!303272 () Bool)

(assert (=> b!519754 (= e!303272 e!303273)))

(declare-fun d!80055 () Bool)

(declare-fun e!303274 () Bool)

(assert (=> d!80055 e!303274))

(declare-fun c!61070 () Bool)

(assert (=> d!80055 (= c!61070 (and ((_ is Intermediate!4405) lt!238096) (undefined!5217 lt!238096)))))

(declare-fun e!303270 () SeekEntryResult!4405)

(assert (=> d!80055 (= lt!238096 e!303270)))

(declare-fun c!61068 () Bool)

(assert (=> d!80055 (= c!61068 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!238097 () (_ BitVec 64))

(assert (=> d!80055 (= lt!238097 (select (arr!15931 lt!238054) lt!238055))))

(assert (=> d!80055 (validMask!0 mask!3524)))

(assert (=> d!80055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238055 lt!238048 lt!238054 mask!3524) lt!238096)))

(declare-fun b!519755 () Bool)

(assert (=> b!519755 (= e!303274 e!303272)))

(declare-fun res!318216 () Bool)

(assert (=> b!519755 (= res!318216 (and ((_ is Intermediate!4405) lt!238096) (not (undefined!5217 lt!238096)) (bvslt (x!48824 lt!238096) #b01111111111111111111111111111110) (bvsge (x!48824 lt!238096) #b00000000000000000000000000000000) (bvsge (x!48824 lt!238096) #b00000000000000000000000000000000)))))

(assert (=> b!519755 (=> (not res!318216) (not e!303272))))

(declare-fun b!519756 () Bool)

(assert (=> b!519756 (and (bvsge (index!19819 lt!238096) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238096) (size!16295 lt!238054)))))

(declare-fun res!318214 () Bool)

(assert (=> b!519756 (= res!318214 (= (select (arr!15931 lt!238054) (index!19819 lt!238096)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519756 (=> res!318214 e!303273)))

(declare-fun b!519757 () Bool)

(assert (=> b!519757 (= e!303274 (bvsge (x!48824 lt!238096) #b01111111111111111111111111111110))))

(declare-fun b!519758 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519758 (= e!303271 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238055 #b00000000000000000000000000000000 mask!3524) lt!238048 lt!238054 mask!3524))))

(declare-fun b!519759 () Bool)

(assert (=> b!519759 (= e!303270 e!303271)))

(declare-fun c!61069 () Bool)

(assert (=> b!519759 (= c!61069 (or (= lt!238097 lt!238048) (= (bvadd lt!238097 lt!238097) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519760 () Bool)

(assert (=> b!519760 (= e!303270 (Intermediate!4405 true lt!238055 #b00000000000000000000000000000000))))

(declare-fun b!519761 () Bool)

(assert (=> b!519761 (and (bvsge (index!19819 lt!238096) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238096) (size!16295 lt!238054)))))

(assert (=> b!519761 (= e!303273 (= (select (arr!15931 lt!238054) (index!19819 lt!238096)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80055 c!61068) b!519760))

(assert (= (and d!80055 (not c!61068)) b!519759))

(assert (= (and b!519759 c!61069) b!519753))

(assert (= (and b!519759 (not c!61069)) b!519758))

(assert (= (and d!80055 c!61070) b!519757))

(assert (= (and d!80055 (not c!61070)) b!519755))

(assert (= (and b!519755 res!318216) b!519754))

(assert (= (and b!519754 (not res!318215)) b!519756))

(assert (= (and b!519756 (not res!318214)) b!519761))

(declare-fun m!500901 () Bool)

(assert (=> b!519754 m!500901))

(assert (=> b!519756 m!500901))

(declare-fun m!500903 () Bool)

(assert (=> b!519758 m!500903))

(assert (=> b!519758 m!500903))

(declare-fun m!500905 () Bool)

(assert (=> b!519758 m!500905))

(assert (=> b!519761 m!500901))

(declare-fun m!500907 () Bool)

(assert (=> d!80055 m!500907))

(assert (=> d!80055 m!500837))

(assert (=> b!519682 d!80055))

(declare-fun b!519785 () Bool)

(declare-fun e!303294 () Bool)

(declare-fun call!31769 () Bool)

(assert (=> b!519785 (= e!303294 call!31769)))

(declare-fun b!519786 () Bool)

(declare-fun e!303293 () Bool)

(assert (=> b!519786 (= e!303293 call!31769)))

(declare-fun d!80057 () Bool)

(declare-fun res!318231 () Bool)

(declare-fun e!303295 () Bool)

(assert (=> d!80057 (=> res!318231 e!303295)))

(assert (=> d!80057 (= res!318231 (bvsge j!176 (size!16295 a!3235)))))

(assert (=> d!80057 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303295)))

(declare-fun b!519787 () Bool)

(assert (=> b!519787 (= e!303293 e!303294)))

(declare-fun lt!238105 () (_ BitVec 64))

(assert (=> b!519787 (= lt!238105 (select (arr!15931 a!3235) j!176))))

(declare-fun lt!238106 () Unit!16086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33150 (_ BitVec 64) (_ BitVec 32)) Unit!16086)

(assert (=> b!519787 (= lt!238106 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238105 j!176))))

(assert (=> b!519787 (arrayContainsKey!0 a!3235 lt!238105 #b00000000000000000000000000000000)))

(declare-fun lt!238104 () Unit!16086)

(assert (=> b!519787 (= lt!238104 lt!238106)))

(declare-fun res!318230 () Bool)

(assert (=> b!519787 (= res!318230 (= (seekEntryOrOpen!0 (select (arr!15931 a!3235) j!176) a!3235 mask!3524) (Found!4405 j!176)))))

(assert (=> b!519787 (=> (not res!318230) (not e!303294))))

(declare-fun b!519788 () Bool)

(assert (=> b!519788 (= e!303295 e!303293)))

(declare-fun c!61076 () Bool)

(assert (=> b!519788 (= c!61076 (validKeyInArray!0 (select (arr!15931 a!3235) j!176)))))

(declare-fun bm!31766 () Bool)

(assert (=> bm!31766 (= call!31769 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!80057 (not res!318231)) b!519788))

(assert (= (and b!519788 c!61076) b!519787))

(assert (= (and b!519788 (not c!61076)) b!519786))

(assert (= (and b!519787 res!318230) b!519785))

(assert (= (or b!519785 b!519786) bm!31766))

(assert (=> b!519787 m!500821))

(declare-fun m!500917 () Bool)

(assert (=> b!519787 m!500917))

(declare-fun m!500919 () Bool)

(assert (=> b!519787 m!500919))

(assert (=> b!519787 m!500821))

(assert (=> b!519787 m!500841))

(assert (=> b!519788 m!500821))

(assert (=> b!519788 m!500821))

(assert (=> b!519788 m!500849))

(declare-fun m!500921 () Bool)

(assert (=> bm!31766 m!500921))

(assert (=> b!519682 d!80057))

(declare-fun b!519789 () Bool)

(declare-fun e!303297 () SeekEntryResult!4405)

(assert (=> b!519789 (= e!303297 (Intermediate!4405 false lt!238053 #b00000000000000000000000000000000))))

(declare-fun b!519790 () Bool)

(declare-fun lt!238107 () SeekEntryResult!4405)

(assert (=> b!519790 (and (bvsge (index!19819 lt!238107) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238107) (size!16295 a!3235)))))

(declare-fun res!318233 () Bool)

(assert (=> b!519790 (= res!318233 (= (select (arr!15931 a!3235) (index!19819 lt!238107)) (select (arr!15931 a!3235) j!176)))))

(declare-fun e!303299 () Bool)

(assert (=> b!519790 (=> res!318233 e!303299)))

(declare-fun e!303298 () Bool)

(assert (=> b!519790 (= e!303298 e!303299)))

(declare-fun d!80065 () Bool)

(declare-fun e!303300 () Bool)

(assert (=> d!80065 e!303300))

(declare-fun c!61079 () Bool)

(assert (=> d!80065 (= c!61079 (and ((_ is Intermediate!4405) lt!238107) (undefined!5217 lt!238107)))))

(declare-fun e!303296 () SeekEntryResult!4405)

(assert (=> d!80065 (= lt!238107 e!303296)))

(declare-fun c!61077 () Bool)

(assert (=> d!80065 (= c!61077 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!238108 () (_ BitVec 64))

(assert (=> d!80065 (= lt!238108 (select (arr!15931 a!3235) lt!238053))))

(assert (=> d!80065 (validMask!0 mask!3524)))

(assert (=> d!80065 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238053 (select (arr!15931 a!3235) j!176) a!3235 mask!3524) lt!238107)))

(declare-fun b!519791 () Bool)

(assert (=> b!519791 (= e!303300 e!303298)))

(declare-fun res!318234 () Bool)

(assert (=> b!519791 (= res!318234 (and ((_ is Intermediate!4405) lt!238107) (not (undefined!5217 lt!238107)) (bvslt (x!48824 lt!238107) #b01111111111111111111111111111110) (bvsge (x!48824 lt!238107) #b00000000000000000000000000000000) (bvsge (x!48824 lt!238107) #b00000000000000000000000000000000)))))

(assert (=> b!519791 (=> (not res!318234) (not e!303298))))

(declare-fun b!519792 () Bool)

(assert (=> b!519792 (and (bvsge (index!19819 lt!238107) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238107) (size!16295 a!3235)))))

(declare-fun res!318232 () Bool)

(assert (=> b!519792 (= res!318232 (= (select (arr!15931 a!3235) (index!19819 lt!238107)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519792 (=> res!318232 e!303299)))

(declare-fun b!519793 () Bool)

(assert (=> b!519793 (= e!303300 (bvsge (x!48824 lt!238107) #b01111111111111111111111111111110))))

(declare-fun b!519794 () Bool)

(assert (=> b!519794 (= e!303297 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238053 #b00000000000000000000000000000000 mask!3524) (select (arr!15931 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519795 () Bool)

(assert (=> b!519795 (= e!303296 e!303297)))

(declare-fun c!61078 () Bool)

(assert (=> b!519795 (= c!61078 (or (= lt!238108 (select (arr!15931 a!3235) j!176)) (= (bvadd lt!238108 lt!238108) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519796 () Bool)

(assert (=> b!519796 (= e!303296 (Intermediate!4405 true lt!238053 #b00000000000000000000000000000000))))

(declare-fun b!519797 () Bool)

(assert (=> b!519797 (and (bvsge (index!19819 lt!238107) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238107) (size!16295 a!3235)))))

(assert (=> b!519797 (= e!303299 (= (select (arr!15931 a!3235) (index!19819 lt!238107)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80065 c!61077) b!519796))

(assert (= (and d!80065 (not c!61077)) b!519795))

(assert (= (and b!519795 c!61078) b!519789))

(assert (= (and b!519795 (not c!61078)) b!519794))

(assert (= (and d!80065 c!61079) b!519793))

(assert (= (and d!80065 (not c!61079)) b!519791))

(assert (= (and b!519791 res!318234) b!519790))

(assert (= (and b!519790 (not res!318233)) b!519792))

(assert (= (and b!519792 (not res!318232)) b!519797))

(declare-fun m!500923 () Bool)

(assert (=> b!519790 m!500923))

(assert (=> b!519792 m!500923))

(declare-fun m!500925 () Bool)

(assert (=> b!519794 m!500925))

(assert (=> b!519794 m!500925))

(assert (=> b!519794 m!500821))

(declare-fun m!500927 () Bool)

(assert (=> b!519794 m!500927))

(assert (=> b!519797 m!500923))

(declare-fun m!500929 () Bool)

(assert (=> d!80065 m!500929))

(assert (=> d!80065 m!500837))

(assert (=> b!519682 d!80065))

(declare-fun d!80067 () Bool)

(declare-fun lt!238110 () (_ BitVec 32))

(declare-fun lt!238109 () (_ BitVec 32))

(assert (=> d!80067 (= lt!238110 (bvmul (bvxor lt!238109 (bvlshr lt!238109 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80067 (= lt!238109 ((_ extract 31 0) (bvand (bvxor lt!238048 (bvlshr lt!238048 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80067 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318207 (let ((h!11056 ((_ extract 31 0) (bvand (bvxor lt!238048 (bvlshr lt!238048 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48826 (bvmul (bvxor h!11056 (bvlshr h!11056 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48826 (bvlshr x!48826 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318207 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318207 #b00000000000000000000000000000000))))))

(assert (=> d!80067 (= (toIndex!0 lt!238048 mask!3524) (bvand (bvxor lt!238110 (bvlshr lt!238110 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519682 d!80067))

(declare-fun b!519808 () Bool)

(declare-fun e!303312 () Bool)

(declare-fun contains!2763 (List!10142 (_ BitVec 64)) Bool)

(assert (=> b!519808 (= e!303312 (contains!2763 Nil!10139 (select (arr!15931 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80069 () Bool)

(declare-fun res!318243 () Bool)

(declare-fun e!303309 () Bool)

(assert (=> d!80069 (=> res!318243 e!303309)))

(assert (=> d!80069 (= res!318243 (bvsge #b00000000000000000000000000000000 (size!16295 a!3235)))))

(assert (=> d!80069 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10139) e!303309)))

(declare-fun bm!31769 () Bool)

(declare-fun call!31772 () Bool)

(declare-fun c!61082 () Bool)

(assert (=> bm!31769 (= call!31772 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61082 (Cons!10138 (select (arr!15931 a!3235) #b00000000000000000000000000000000) Nil!10139) Nil!10139)))))

(declare-fun b!519809 () Bool)

(declare-fun e!303310 () Bool)

(declare-fun e!303311 () Bool)

(assert (=> b!519809 (= e!303310 e!303311)))

(assert (=> b!519809 (= c!61082 (validKeyInArray!0 (select (arr!15931 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519810 () Bool)

(assert (=> b!519810 (= e!303309 e!303310)))

(declare-fun res!318242 () Bool)

(assert (=> b!519810 (=> (not res!318242) (not e!303310))))

(assert (=> b!519810 (= res!318242 (not e!303312))))

(declare-fun res!318241 () Bool)

(assert (=> b!519810 (=> (not res!318241) (not e!303312))))

(assert (=> b!519810 (= res!318241 (validKeyInArray!0 (select (arr!15931 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519811 () Bool)

(assert (=> b!519811 (= e!303311 call!31772)))

(declare-fun b!519812 () Bool)

(assert (=> b!519812 (= e!303311 call!31772)))

(assert (= (and d!80069 (not res!318243)) b!519810))

(assert (= (and b!519810 res!318241) b!519808))

(assert (= (and b!519810 res!318242) b!519809))

(assert (= (and b!519809 c!61082) b!519811))

(assert (= (and b!519809 (not c!61082)) b!519812))

(assert (= (or b!519811 b!519812) bm!31769))

(declare-fun m!500931 () Bool)

(assert (=> b!519808 m!500931))

(assert (=> b!519808 m!500931))

(declare-fun m!500933 () Bool)

(assert (=> b!519808 m!500933))

(assert (=> bm!31769 m!500931))

(declare-fun m!500935 () Bool)

(assert (=> bm!31769 m!500935))

(assert (=> b!519809 m!500931))

(assert (=> b!519809 m!500931))

(declare-fun m!500937 () Bool)

(assert (=> b!519809 m!500937))

(assert (=> b!519810 m!500931))

(assert (=> b!519810 m!500931))

(assert (=> b!519810 m!500937))

(assert (=> b!519688 d!80069))

(declare-fun d!80071 () Bool)

(declare-fun res!318248 () Bool)

(declare-fun e!303317 () Bool)

(assert (=> d!80071 (=> res!318248 e!303317)))

(assert (=> d!80071 (= res!318248 (= (select (arr!15931 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80071 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!303317)))

(declare-fun b!519817 () Bool)

(declare-fun e!303318 () Bool)

(assert (=> b!519817 (= e!303317 e!303318)))

(declare-fun res!318249 () Bool)

(assert (=> b!519817 (=> (not res!318249) (not e!303318))))

(assert (=> b!519817 (= res!318249 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16295 a!3235)))))

(declare-fun b!519818 () Bool)

(assert (=> b!519818 (= e!303318 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80071 (not res!318248)) b!519817))

(assert (= (and b!519817 res!318249) b!519818))

(assert (=> d!80071 m!500931))

(declare-fun m!500939 () Bool)

(assert (=> b!519818 m!500939))

(assert (=> b!519686 d!80071))

(declare-fun d!80073 () Bool)

(assert (=> d!80073 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47238 d!80073))

(declare-fun d!80079 () Bool)

(assert (=> d!80079 (= (array_inv!11705 a!3235) (bvsge (size!16295 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47238 d!80079))

(declare-fun d!80081 () Bool)

(declare-fun e!303342 () Bool)

(assert (=> d!80081 e!303342))

(declare-fun res!318253 () Bool)

(assert (=> d!80081 (=> (not res!318253) (not e!303342))))

(assert (=> d!80081 (= res!318253 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16295 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16295 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16295 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16295 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16295 a!3235))))))

(declare-fun lt!238140 () Unit!16086)

(declare-fun choose!47 (array!33150 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16086)

(assert (=> d!80081 (= lt!238140 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!238053 #b00000000000000000000000000000000 (index!19819 lt!238051) (x!48824 lt!238051) mask!3524))))

(assert (=> d!80081 (validMask!0 mask!3524)))

(assert (=> d!80081 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238053 #b00000000000000000000000000000000 (index!19819 lt!238051) (x!48824 lt!238051) mask!3524) lt!238140)))

(declare-fun b!519863 () Bool)

(assert (=> b!519863 (= e!303342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238053 (select (store (arr!15931 a!3235) i!1204 k0!2280) j!176) (array!33151 (store (arr!15931 a!3235) i!1204 k0!2280) (size!16295 a!3235)) mask!3524) (Intermediate!4405 false (index!19819 lt!238051) (x!48824 lt!238051))))))

(assert (= (and d!80081 res!318253) b!519863))

(declare-fun m!500979 () Bool)

(assert (=> d!80081 m!500979))

(assert (=> d!80081 m!500837))

(assert (=> b!519863 m!500815))

(assert (=> b!519863 m!500819))

(assert (=> b!519863 m!500819))

(declare-fun m!500981 () Bool)

(assert (=> b!519863 m!500981))

(assert (=> b!519681 d!80081))

(declare-fun b!519868 () Bool)

(declare-fun e!303350 () SeekEntryResult!4405)

(assert (=> b!519868 (= e!303350 (Intermediate!4405 false lt!238053 #b00000000000000000000000000000000))))

(declare-fun b!519869 () Bool)

(declare-fun lt!238141 () SeekEntryResult!4405)

(assert (=> b!519869 (and (bvsge (index!19819 lt!238141) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238141) (size!16295 lt!238054)))))

(declare-fun res!318261 () Bool)

(assert (=> b!519869 (= res!318261 (= (select (arr!15931 lt!238054) (index!19819 lt!238141)) lt!238048))))

(declare-fun e!303352 () Bool)

(assert (=> b!519869 (=> res!318261 e!303352)))

(declare-fun e!303351 () Bool)

(assert (=> b!519869 (= e!303351 e!303352)))

(declare-fun d!80093 () Bool)

(declare-fun e!303353 () Bool)

(assert (=> d!80093 e!303353))

(declare-fun c!61106 () Bool)

(assert (=> d!80093 (= c!61106 (and ((_ is Intermediate!4405) lt!238141) (undefined!5217 lt!238141)))))

(declare-fun e!303349 () SeekEntryResult!4405)

(assert (=> d!80093 (= lt!238141 e!303349)))

(declare-fun c!61104 () Bool)

(assert (=> d!80093 (= c!61104 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!238142 () (_ BitVec 64))

(assert (=> d!80093 (= lt!238142 (select (arr!15931 lt!238054) lt!238053))))

(assert (=> d!80093 (validMask!0 mask!3524)))

(assert (=> d!80093 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238053 lt!238048 lt!238054 mask!3524) lt!238141)))

(declare-fun b!519870 () Bool)

(assert (=> b!519870 (= e!303353 e!303351)))

(declare-fun res!318262 () Bool)

(assert (=> b!519870 (= res!318262 (and ((_ is Intermediate!4405) lt!238141) (not (undefined!5217 lt!238141)) (bvslt (x!48824 lt!238141) #b01111111111111111111111111111110) (bvsge (x!48824 lt!238141) #b00000000000000000000000000000000) (bvsge (x!48824 lt!238141) #b00000000000000000000000000000000)))))

(assert (=> b!519870 (=> (not res!318262) (not e!303351))))

(declare-fun b!519871 () Bool)

(assert (=> b!519871 (and (bvsge (index!19819 lt!238141) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238141) (size!16295 lt!238054)))))

(declare-fun res!318260 () Bool)

(assert (=> b!519871 (= res!318260 (= (select (arr!15931 lt!238054) (index!19819 lt!238141)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519871 (=> res!318260 e!303352)))

(declare-fun b!519872 () Bool)

(assert (=> b!519872 (= e!303353 (bvsge (x!48824 lt!238141) #b01111111111111111111111111111110))))

(declare-fun b!519873 () Bool)

(assert (=> b!519873 (= e!303350 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238053 #b00000000000000000000000000000000 mask!3524) lt!238048 lt!238054 mask!3524))))

(declare-fun b!519874 () Bool)

(assert (=> b!519874 (= e!303349 e!303350)))

(declare-fun c!61105 () Bool)

(assert (=> b!519874 (= c!61105 (or (= lt!238142 lt!238048) (= (bvadd lt!238142 lt!238142) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519875 () Bool)

(assert (=> b!519875 (= e!303349 (Intermediate!4405 true lt!238053 #b00000000000000000000000000000000))))

(declare-fun b!519876 () Bool)

(assert (=> b!519876 (and (bvsge (index!19819 lt!238141) #b00000000000000000000000000000000) (bvslt (index!19819 lt!238141) (size!16295 lt!238054)))))

(assert (=> b!519876 (= e!303352 (= (select (arr!15931 lt!238054) (index!19819 lt!238141)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80093 c!61104) b!519875))

(assert (= (and d!80093 (not c!61104)) b!519874))

(assert (= (and b!519874 c!61105) b!519868))

(assert (= (and b!519874 (not c!61105)) b!519873))

(assert (= (and d!80093 c!61106) b!519872))

(assert (= (and d!80093 (not c!61106)) b!519870))

(assert (= (and b!519870 res!318262) b!519869))

(assert (= (and b!519869 (not res!318261)) b!519871))

(assert (= (and b!519871 (not res!318260)) b!519876))

(declare-fun m!500983 () Bool)

(assert (=> b!519869 m!500983))

(assert (=> b!519871 m!500983))

(assert (=> b!519873 m!500925))

(assert (=> b!519873 m!500925))

(declare-fun m!500985 () Bool)

(assert (=> b!519873 m!500985))

(assert (=> b!519876 m!500983))

(declare-fun m!500987 () Bool)

(assert (=> d!80093 m!500987))

(assert (=> d!80093 m!500837))

(assert (=> b!519681 d!80093))

(declare-fun b!519939 () Bool)

(declare-fun lt!238165 () SeekEntryResult!4405)

(declare-fun e!303390 () SeekEntryResult!4405)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33150 (_ BitVec 32)) SeekEntryResult!4405)

(assert (=> b!519939 (= e!303390 (seekKeyOrZeroReturnVacant!0 (x!48824 lt!238165) (index!19819 lt!238165) (index!19819 lt!238165) k0!2280 a!3235 mask!3524))))

(declare-fun b!519940 () Bool)

(declare-fun e!303389 () SeekEntryResult!4405)

(assert (=> b!519940 (= e!303389 (Found!4405 (index!19819 lt!238165)))))

(declare-fun b!519941 () Bool)

(declare-fun c!61130 () Bool)

(declare-fun lt!238167 () (_ BitVec 64))

(assert (=> b!519941 (= c!61130 (= lt!238167 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519941 (= e!303389 e!303390)))

(declare-fun b!519942 () Bool)

(declare-fun e!303391 () SeekEntryResult!4405)

(assert (=> b!519942 (= e!303391 Undefined!4405)))

(declare-fun b!519943 () Bool)

(assert (=> b!519943 (= e!303390 (MissingZero!4405 (index!19819 lt!238165)))))

(declare-fun b!519944 () Bool)

(assert (=> b!519944 (= e!303391 e!303389)))

(assert (=> b!519944 (= lt!238167 (select (arr!15931 a!3235) (index!19819 lt!238165)))))

(declare-fun c!61128 () Bool)

(assert (=> b!519944 (= c!61128 (= lt!238167 k0!2280))))

(declare-fun d!80095 () Bool)

(declare-fun lt!238166 () SeekEntryResult!4405)

(assert (=> d!80095 (and (or ((_ is Undefined!4405) lt!238166) (not ((_ is Found!4405) lt!238166)) (and (bvsge (index!19818 lt!238166) #b00000000000000000000000000000000) (bvslt (index!19818 lt!238166) (size!16295 a!3235)))) (or ((_ is Undefined!4405) lt!238166) ((_ is Found!4405) lt!238166) (not ((_ is MissingZero!4405) lt!238166)) (and (bvsge (index!19817 lt!238166) #b00000000000000000000000000000000) (bvslt (index!19817 lt!238166) (size!16295 a!3235)))) (or ((_ is Undefined!4405) lt!238166) ((_ is Found!4405) lt!238166) ((_ is MissingZero!4405) lt!238166) (not ((_ is MissingVacant!4405) lt!238166)) (and (bvsge (index!19820 lt!238166) #b00000000000000000000000000000000) (bvslt (index!19820 lt!238166) (size!16295 a!3235)))) (or ((_ is Undefined!4405) lt!238166) (ite ((_ is Found!4405) lt!238166) (= (select (arr!15931 a!3235) (index!19818 lt!238166)) k0!2280) (ite ((_ is MissingZero!4405) lt!238166) (= (select (arr!15931 a!3235) (index!19817 lt!238166)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4405) lt!238166) (= (select (arr!15931 a!3235) (index!19820 lt!238166)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80095 (= lt!238166 e!303391)))

(declare-fun c!61129 () Bool)

(assert (=> d!80095 (= c!61129 (and ((_ is Intermediate!4405) lt!238165) (undefined!5217 lt!238165)))))

(assert (=> d!80095 (= lt!238165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80095 (validMask!0 mask!3524)))

(assert (=> d!80095 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!238166)))

(assert (= (and d!80095 c!61129) b!519942))

(assert (= (and d!80095 (not c!61129)) b!519944))

(assert (= (and b!519944 c!61128) b!519940))

(assert (= (and b!519944 (not c!61128)) b!519941))

(assert (= (and b!519941 c!61130) b!519943))

(assert (= (and b!519941 (not c!61130)) b!519939))

(declare-fun m!501019 () Bool)

(assert (=> b!519939 m!501019))

(declare-fun m!501021 () Bool)

(assert (=> b!519944 m!501021))

(declare-fun m!501023 () Bool)

(assert (=> d!80095 m!501023))

(declare-fun m!501025 () Bool)

(assert (=> d!80095 m!501025))

(assert (=> d!80095 m!501025))

(declare-fun m!501027 () Bool)

(assert (=> d!80095 m!501027))

(declare-fun m!501029 () Bool)

(assert (=> d!80095 m!501029))

(declare-fun m!501031 () Bool)

(assert (=> d!80095 m!501031))

(assert (=> d!80095 m!500837))

(assert (=> b!519690 d!80095))

(declare-fun d!80109 () Bool)

(assert (=> d!80109 (= (validKeyInArray!0 (select (arr!15931 a!3235) j!176)) (and (not (= (select (arr!15931 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15931 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519679 d!80109))

(declare-fun b!519945 () Bool)

(declare-fun e!303393 () Bool)

(declare-fun call!31776 () Bool)

(assert (=> b!519945 (= e!303393 call!31776)))

(declare-fun b!519946 () Bool)

(declare-fun e!303392 () Bool)

(assert (=> b!519946 (= e!303392 call!31776)))

(declare-fun d!80111 () Bool)

(declare-fun res!318282 () Bool)

(declare-fun e!303394 () Bool)

(assert (=> d!80111 (=> res!318282 e!303394)))

(assert (=> d!80111 (= res!318282 (bvsge #b00000000000000000000000000000000 (size!16295 a!3235)))))

(assert (=> d!80111 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303394)))

(declare-fun b!519947 () Bool)

(assert (=> b!519947 (= e!303392 e!303393)))

(declare-fun lt!238169 () (_ BitVec 64))

(assert (=> b!519947 (= lt!238169 (select (arr!15931 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!238170 () Unit!16086)

(assert (=> b!519947 (= lt!238170 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238169 #b00000000000000000000000000000000))))

(assert (=> b!519947 (arrayContainsKey!0 a!3235 lt!238169 #b00000000000000000000000000000000)))

(declare-fun lt!238168 () Unit!16086)

(assert (=> b!519947 (= lt!238168 lt!238170)))

(declare-fun res!318281 () Bool)

(assert (=> b!519947 (= res!318281 (= (seekEntryOrOpen!0 (select (arr!15931 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4405 #b00000000000000000000000000000000)))))

(assert (=> b!519947 (=> (not res!318281) (not e!303393))))

(declare-fun b!519948 () Bool)

(assert (=> b!519948 (= e!303394 e!303392)))

(declare-fun c!61131 () Bool)

(assert (=> b!519948 (= c!61131 (validKeyInArray!0 (select (arr!15931 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31773 () Bool)

(assert (=> bm!31773 (= call!31776 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!80111 (not res!318282)) b!519948))

(assert (= (and b!519948 c!61131) b!519947))

(assert (= (and b!519948 (not c!61131)) b!519946))

(assert (= (and b!519947 res!318281) b!519945))

(assert (= (or b!519945 b!519946) bm!31773))

(assert (=> b!519947 m!500931))

(declare-fun m!501033 () Bool)

(assert (=> b!519947 m!501033))

(declare-fun m!501035 () Bool)

(assert (=> b!519947 m!501035))

(assert (=> b!519947 m!500931))

(declare-fun m!501037 () Bool)

(assert (=> b!519947 m!501037))

(assert (=> b!519948 m!500931))

(assert (=> b!519948 m!500931))

(assert (=> b!519948 m!500937))

(declare-fun m!501039 () Bool)

(assert (=> bm!31773 m!501039))

(assert (=> b!519680 d!80111))

(declare-fun e!303398 () SeekEntryResult!4405)

(declare-fun b!519953 () Bool)

(declare-fun lt!238171 () SeekEntryResult!4405)

(assert (=> b!519953 (= e!303398 (seekKeyOrZeroReturnVacant!0 (x!48824 lt!238171) (index!19819 lt!238171) (index!19819 lt!238171) (select (arr!15931 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519954 () Bool)

(declare-fun e!303397 () SeekEntryResult!4405)

(assert (=> b!519954 (= e!303397 (Found!4405 (index!19819 lt!238171)))))

(declare-fun b!519955 () Bool)

(declare-fun c!61134 () Bool)

(declare-fun lt!238173 () (_ BitVec 64))

(assert (=> b!519955 (= c!61134 (= lt!238173 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519955 (= e!303397 e!303398)))

(declare-fun b!519956 () Bool)

(declare-fun e!303399 () SeekEntryResult!4405)

(assert (=> b!519956 (= e!303399 Undefined!4405)))

(declare-fun b!519957 () Bool)

(assert (=> b!519957 (= e!303398 (MissingZero!4405 (index!19819 lt!238171)))))

(declare-fun b!519958 () Bool)

(assert (=> b!519958 (= e!303399 e!303397)))

(assert (=> b!519958 (= lt!238173 (select (arr!15931 a!3235) (index!19819 lt!238171)))))

(declare-fun c!61132 () Bool)

(assert (=> b!519958 (= c!61132 (= lt!238173 (select (arr!15931 a!3235) j!176)))))

(declare-fun d!80113 () Bool)

(declare-fun lt!238172 () SeekEntryResult!4405)

(assert (=> d!80113 (and (or ((_ is Undefined!4405) lt!238172) (not ((_ is Found!4405) lt!238172)) (and (bvsge (index!19818 lt!238172) #b00000000000000000000000000000000) (bvslt (index!19818 lt!238172) (size!16295 a!3235)))) (or ((_ is Undefined!4405) lt!238172) ((_ is Found!4405) lt!238172) (not ((_ is MissingZero!4405) lt!238172)) (and (bvsge (index!19817 lt!238172) #b00000000000000000000000000000000) (bvslt (index!19817 lt!238172) (size!16295 a!3235)))) (or ((_ is Undefined!4405) lt!238172) ((_ is Found!4405) lt!238172) ((_ is MissingZero!4405) lt!238172) (not ((_ is MissingVacant!4405) lt!238172)) (and (bvsge (index!19820 lt!238172) #b00000000000000000000000000000000) (bvslt (index!19820 lt!238172) (size!16295 a!3235)))) (or ((_ is Undefined!4405) lt!238172) (ite ((_ is Found!4405) lt!238172) (= (select (arr!15931 a!3235) (index!19818 lt!238172)) (select (arr!15931 a!3235) j!176)) (ite ((_ is MissingZero!4405) lt!238172) (= (select (arr!15931 a!3235) (index!19817 lt!238172)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4405) lt!238172) (= (select (arr!15931 a!3235) (index!19820 lt!238172)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80113 (= lt!238172 e!303399)))

(declare-fun c!61133 () Bool)

(assert (=> d!80113 (= c!61133 (and ((_ is Intermediate!4405) lt!238171) (undefined!5217 lt!238171)))))

(assert (=> d!80113 (= lt!238171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15931 a!3235) j!176) mask!3524) (select (arr!15931 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80113 (validMask!0 mask!3524)))

(assert (=> d!80113 (= (seekEntryOrOpen!0 (select (arr!15931 a!3235) j!176) a!3235 mask!3524) lt!238172)))

(assert (= (and d!80113 c!61133) b!519956))

(assert (= (and d!80113 (not c!61133)) b!519958))

(assert (= (and b!519958 c!61132) b!519954))

(assert (= (and b!519958 (not c!61132)) b!519955))

(assert (= (and b!519955 c!61134) b!519957))

(assert (= (and b!519955 (not c!61134)) b!519953))

(assert (=> b!519953 m!500821))

(declare-fun m!501041 () Bool)

(assert (=> b!519953 m!501041))

(declare-fun m!501043 () Bool)

(assert (=> b!519958 m!501043))

(declare-fun m!501045 () Bool)

(assert (=> d!80113 m!501045))

(assert (=> d!80113 m!500821))

(assert (=> d!80113 m!500825))

(assert (=> d!80113 m!500825))

(assert (=> d!80113 m!500821))

(declare-fun m!501047 () Bool)

(assert (=> d!80113 m!501047))

(declare-fun m!501049 () Bool)

(assert (=> d!80113 m!501049))

(declare-fun m!501051 () Bool)

(assert (=> d!80113 m!501051))

(assert (=> d!80113 m!500837))

(assert (=> b!519685 d!80113))

(declare-fun d!80115 () Bool)

(assert (=> d!80115 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519684 d!80115))

(check-sat (not b!519808) (not b!519787) (not d!80065) (not bm!31769) (not b!519818) (not d!80053) (not bm!31773) (not b!519788) (not b!519758) (not b!519873) (not d!80113) (not b!519810) (not b!519863) (not b!519809) (not b!519947) (not b!519939) (not d!80095) (not b!519794) (not d!80093) (not b!519953) (not bm!31766) (not b!519948) (not d!80055) (not d!80081))
(check-sat)
