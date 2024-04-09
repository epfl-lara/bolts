; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65046 () Bool)

(assert start!65046)

(declare-fun b!733975 () Bool)

(declare-fun res!493288 () Bool)

(declare-fun e!410707 () Bool)

(assert (=> b!733975 (=> (not res!493288) (not e!410707))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733975 (= res!493288 (validKeyInArray!0 k0!2102))))

(declare-fun b!733976 () Bool)

(declare-fun res!493293 () Bool)

(declare-fun e!410715 () Bool)

(assert (=> b!733976 (=> (not res!493293) (not e!410715))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41241 0))(
  ( (array!41242 (arr!19732 (Array (_ BitVec 32) (_ BitVec 64))) (size!20153 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41241)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733976 (= res!493293 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19732 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733977 () Bool)

(declare-fun e!410711 () Bool)

(assert (=> b!733977 (= e!410715 e!410711)))

(declare-fun res!493302 () Bool)

(assert (=> b!733977 (=> (not res!493302) (not e!410711))))

(declare-datatypes ((SeekEntryResult!7339 0))(
  ( (MissingZero!7339 (index!31723 (_ BitVec 32))) (Found!7339 (index!31724 (_ BitVec 32))) (Intermediate!7339 (undefined!8151 Bool) (index!31725 (_ BitVec 32)) (x!62750 (_ BitVec 32))) (Undefined!7339) (MissingVacant!7339 (index!31726 (_ BitVec 32))) )
))
(declare-fun lt!325327 () SeekEntryResult!7339)

(declare-fun lt!325328 () SeekEntryResult!7339)

(assert (=> b!733977 (= res!493302 (= lt!325327 lt!325328))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!325324 () array!41241)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!325326 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41241 (_ BitVec 32)) SeekEntryResult!7339)

(assert (=> b!733977 (= lt!325328 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325326 lt!325324 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733977 (= lt!325327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325326 mask!3328) lt!325326 lt!325324 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!733977 (= lt!325326 (select (store (arr!19732 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!733977 (= lt!325324 (array!41242 (store (arr!19732 a!3186) i!1173 k0!2102) (size!20153 a!3186)))))

(declare-fun b!733978 () Bool)

(declare-fun e!410712 () Bool)

(assert (=> b!733978 (= e!410711 (not e!410712))))

(declare-fun res!493291 () Bool)

(assert (=> b!733978 (=> res!493291 e!410712)))

(get-info :version)

(assert (=> b!733978 (= res!493291 (or (not ((_ is Intermediate!7339) lt!325328)) (bvsge x!1131 (x!62750 lt!325328))))))

(declare-fun e!410714 () Bool)

(assert (=> b!733978 e!410714))

(declare-fun res!493299 () Bool)

(assert (=> b!733978 (=> (not res!493299) (not e!410714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41241 (_ BitVec 32)) Bool)

(assert (=> b!733978 (= res!493299 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24996 0))(
  ( (Unit!24997) )
))
(declare-fun lt!325320 () Unit!24996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41241 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24996)

(assert (=> b!733978 (= lt!325320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733980 () Bool)

(declare-fun res!493286 () Bool)

(assert (=> b!733980 (=> (not res!493286) (not e!410707))))

(declare-fun arrayContainsKey!0 (array!41241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733980 (= res!493286 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733981 () Bool)

(declare-fun lt!325325 () (_ BitVec 32))

(declare-fun e!410706 () Bool)

(assert (=> b!733981 (= e!410706 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!325325 #b00000000000000000000000000000000) (bvsge lt!325325 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun b!733982 () Bool)

(declare-fun e!410710 () Bool)

(assert (=> b!733982 (= e!410714 e!410710)))

(declare-fun res!493290 () Bool)

(assert (=> b!733982 (=> (not res!493290) (not e!410710))))

(declare-fun lt!325323 () SeekEntryResult!7339)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41241 (_ BitVec 32)) SeekEntryResult!7339)

(assert (=> b!733982 (= res!493290 (= (seekEntryOrOpen!0 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325323))))

(assert (=> b!733982 (= lt!325323 (Found!7339 j!159))))

(declare-fun b!733983 () Bool)

(declare-fun res!493296 () Bool)

(assert (=> b!733983 (=> (not res!493296) (not e!410715))))

(declare-fun e!410713 () Bool)

(assert (=> b!733983 (= res!493296 e!410713)))

(declare-fun c!80724 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733983 (= c!80724 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733984 () Bool)

(declare-fun e!410709 () Bool)

(assert (=> b!733984 (= e!410707 e!410709)))

(declare-fun res!493295 () Bool)

(assert (=> b!733984 (=> (not res!493295) (not e!410709))))

(declare-fun lt!325322 () SeekEntryResult!7339)

(assert (=> b!733984 (= res!493295 (or (= lt!325322 (MissingZero!7339 i!1173)) (= lt!325322 (MissingVacant!7339 i!1173))))))

(assert (=> b!733984 (= lt!325322 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!733985 () Bool)

(declare-fun res!493285 () Bool)

(assert (=> b!733985 (=> (not res!493285) (not e!410707))))

(assert (=> b!733985 (= res!493285 (validKeyInArray!0 (select (arr!19732 a!3186) j!159)))))

(declare-fun b!733986 () Bool)

(declare-fun res!493287 () Bool)

(assert (=> b!733986 (=> (not res!493287) (not e!410707))))

(assert (=> b!733986 (= res!493287 (and (= (size!20153 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20153 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20153 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733987 () Bool)

(declare-fun res!493297 () Bool)

(assert (=> b!733987 (=> (not res!493297) (not e!410709))))

(assert (=> b!733987 (= res!493297 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20153 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20153 a!3186))))))

(declare-fun b!733988 () Bool)

(declare-fun res!493298 () Bool)

(assert (=> b!733988 (=> (not res!493298) (not e!410709))))

(assert (=> b!733988 (= res!493298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733989 () Bool)

(declare-fun res!493294 () Bool)

(assert (=> b!733989 (=> (not res!493294) (not e!410709))))

(declare-datatypes ((List!13787 0))(
  ( (Nil!13784) (Cons!13783 (h!14852 (_ BitVec 64)) (t!20110 List!13787)) )
))
(declare-fun arrayNoDuplicates!0 (array!41241 (_ BitVec 32) List!13787) Bool)

(assert (=> b!733989 (= res!493294 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13784))))

(declare-fun b!733990 () Bool)

(declare-fun res!493289 () Bool)

(assert (=> b!733990 (=> res!493289 e!410706)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41241 (_ BitVec 32)) SeekEntryResult!7339)

(assert (=> b!733990 (= res!493289 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) (Found!7339 j!159)))))

(declare-fun b!733979 () Bool)

(assert (=> b!733979 (= e!410713 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) (Found!7339 j!159)))))

(declare-fun res!493300 () Bool)

(assert (=> start!65046 (=> (not res!493300) (not e!410707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65046 (= res!493300 (validMask!0 mask!3328))))

(assert (=> start!65046 e!410707))

(assert (=> start!65046 true))

(declare-fun array_inv!15506 (array!41241) Bool)

(assert (=> start!65046 (array_inv!15506 a!3186)))

(declare-fun b!733991 () Bool)

(assert (=> b!733991 (= e!410709 e!410715)))

(declare-fun res!493292 () Bool)

(assert (=> b!733991 (=> (not res!493292) (not e!410715))))

(declare-fun lt!325321 () SeekEntryResult!7339)

(assert (=> b!733991 (= res!493292 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328) (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325321))))

(assert (=> b!733991 (= lt!325321 (Intermediate!7339 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733992 () Bool)

(assert (=> b!733992 (= e!410710 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325323))))

(declare-fun b!733993 () Bool)

(assert (=> b!733993 (= e!410713 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325321))))

(declare-fun b!733994 () Bool)

(assert (=> b!733994 (= e!410712 e!410706)))

(declare-fun res!493301 () Bool)

(assert (=> b!733994 (=> res!493301 e!410706)))

(assert (=> b!733994 (= res!493301 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733994 (= lt!325325 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!65046 res!493300) b!733986))

(assert (= (and b!733986 res!493287) b!733985))

(assert (= (and b!733985 res!493285) b!733975))

(assert (= (and b!733975 res!493288) b!733980))

(assert (= (and b!733980 res!493286) b!733984))

(assert (= (and b!733984 res!493295) b!733988))

(assert (= (and b!733988 res!493298) b!733989))

(assert (= (and b!733989 res!493294) b!733987))

(assert (= (and b!733987 res!493297) b!733991))

(assert (= (and b!733991 res!493292) b!733976))

(assert (= (and b!733976 res!493293) b!733983))

(assert (= (and b!733983 c!80724) b!733993))

(assert (= (and b!733983 (not c!80724)) b!733979))

(assert (= (and b!733983 res!493296) b!733977))

(assert (= (and b!733977 res!493302) b!733978))

(assert (= (and b!733978 res!493299) b!733982))

(assert (= (and b!733982 res!493290) b!733992))

(assert (= (and b!733978 (not res!493291)) b!733994))

(assert (= (and b!733994 (not res!493301)) b!733990))

(assert (= (and b!733990 (not res!493289)) b!733981))

(declare-fun m!686779 () Bool)

(assert (=> b!733988 m!686779))

(declare-fun m!686781 () Bool)

(assert (=> b!733984 m!686781))

(declare-fun m!686783 () Bool)

(assert (=> b!733977 m!686783))

(declare-fun m!686785 () Bool)

(assert (=> b!733977 m!686785))

(declare-fun m!686787 () Bool)

(assert (=> b!733977 m!686787))

(declare-fun m!686789 () Bool)

(assert (=> b!733977 m!686789))

(declare-fun m!686791 () Bool)

(assert (=> b!733977 m!686791))

(assert (=> b!733977 m!686785))

(declare-fun m!686793 () Bool)

(assert (=> b!733994 m!686793))

(declare-fun m!686795 () Bool)

(assert (=> b!733979 m!686795))

(assert (=> b!733979 m!686795))

(declare-fun m!686797 () Bool)

(assert (=> b!733979 m!686797))

(assert (=> b!733991 m!686795))

(assert (=> b!733991 m!686795))

(declare-fun m!686799 () Bool)

(assert (=> b!733991 m!686799))

(assert (=> b!733991 m!686799))

(assert (=> b!733991 m!686795))

(declare-fun m!686801 () Bool)

(assert (=> b!733991 m!686801))

(declare-fun m!686803 () Bool)

(assert (=> b!733975 m!686803))

(declare-fun m!686805 () Bool)

(assert (=> b!733976 m!686805))

(declare-fun m!686807 () Bool)

(assert (=> b!733989 m!686807))

(assert (=> b!733992 m!686795))

(assert (=> b!733992 m!686795))

(declare-fun m!686809 () Bool)

(assert (=> b!733992 m!686809))

(declare-fun m!686811 () Bool)

(assert (=> b!733980 m!686811))

(assert (=> b!733982 m!686795))

(assert (=> b!733982 m!686795))

(declare-fun m!686813 () Bool)

(assert (=> b!733982 m!686813))

(assert (=> b!733990 m!686795))

(assert (=> b!733990 m!686795))

(assert (=> b!733990 m!686797))

(assert (=> b!733985 m!686795))

(assert (=> b!733985 m!686795))

(declare-fun m!686815 () Bool)

(assert (=> b!733985 m!686815))

(declare-fun m!686817 () Bool)

(assert (=> start!65046 m!686817))

(declare-fun m!686819 () Bool)

(assert (=> start!65046 m!686819))

(declare-fun m!686821 () Bool)

(assert (=> b!733978 m!686821))

(declare-fun m!686823 () Bool)

(assert (=> b!733978 m!686823))

(assert (=> b!733993 m!686795))

(assert (=> b!733993 m!686795))

(declare-fun m!686825 () Bool)

(assert (=> b!733993 m!686825))

(check-sat (not b!733975) (not b!733984) (not b!733993) (not b!733991) (not b!733978) (not b!733982) (not b!733988) (not b!733985) (not start!65046) (not b!733979) (not b!733980) (not b!733994) (not b!733992) (not b!733977) (not b!733990) (not b!733989))
(check-sat)
(get-model)

(declare-fun b!734067 () Bool)

(declare-fun e!410753 () SeekEntryResult!7339)

(declare-fun e!410754 () SeekEntryResult!7339)

(assert (=> b!734067 (= e!410753 e!410754)))

(declare-fun c!80736 () Bool)

(declare-fun lt!325361 () (_ BitVec 64))

(assert (=> b!734067 (= c!80736 (= lt!325361 (select (arr!19732 a!3186) j!159)))))

(declare-fun b!734068 () Bool)

(declare-fun e!410752 () SeekEntryResult!7339)

(assert (=> b!734068 (= e!410752 (MissingVacant!7339 resIntermediateIndex!5))))

(declare-fun d!99925 () Bool)

(declare-fun lt!325360 () SeekEntryResult!7339)

(assert (=> d!99925 (and (or ((_ is Undefined!7339) lt!325360) (not ((_ is Found!7339) lt!325360)) (and (bvsge (index!31724 lt!325360) #b00000000000000000000000000000000) (bvslt (index!31724 lt!325360) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325360) ((_ is Found!7339) lt!325360) (not ((_ is MissingVacant!7339) lt!325360)) (not (= (index!31726 lt!325360) resIntermediateIndex!5)) (and (bvsge (index!31726 lt!325360) #b00000000000000000000000000000000) (bvslt (index!31726 lt!325360) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325360) (ite ((_ is Found!7339) lt!325360) (= (select (arr!19732 a!3186) (index!31724 lt!325360)) (select (arr!19732 a!3186) j!159)) (and ((_ is MissingVacant!7339) lt!325360) (= (index!31726 lt!325360) resIntermediateIndex!5) (= (select (arr!19732 a!3186) (index!31726 lt!325360)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99925 (= lt!325360 e!410753)))

(declare-fun c!80734 () Bool)

(assert (=> d!99925 (= c!80734 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!99925 (= lt!325361 (select (arr!19732 a!3186) resIntermediateIndex!5))))

(assert (=> d!99925 (validMask!0 mask!3328)))

(assert (=> d!99925 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325360)))

(declare-fun b!734069 () Bool)

(assert (=> b!734069 (= e!410752 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19732 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734070 () Bool)

(assert (=> b!734070 (= e!410754 (Found!7339 resIntermediateIndex!5))))

(declare-fun b!734071 () Bool)

(declare-fun c!80735 () Bool)

(assert (=> b!734071 (= c!80735 (= lt!325361 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734071 (= e!410754 e!410752)))

(declare-fun b!734072 () Bool)

(assert (=> b!734072 (= e!410753 Undefined!7339)))

(assert (= (and d!99925 c!80734) b!734072))

(assert (= (and d!99925 (not c!80734)) b!734067))

(assert (= (and b!734067 c!80736) b!734070))

(assert (= (and b!734067 (not c!80736)) b!734071))

(assert (= (and b!734071 c!80735) b!734068))

(assert (= (and b!734071 (not c!80735)) b!734069))

(declare-fun m!686875 () Bool)

(assert (=> d!99925 m!686875))

(declare-fun m!686877 () Bool)

(assert (=> d!99925 m!686877))

(assert (=> d!99925 m!686805))

(assert (=> d!99925 m!686817))

(declare-fun m!686879 () Bool)

(assert (=> b!734069 m!686879))

(assert (=> b!734069 m!686879))

(assert (=> b!734069 m!686795))

(declare-fun m!686881 () Bool)

(assert (=> b!734069 m!686881))

(assert (=> b!733992 d!99925))

(declare-fun b!734091 () Bool)

(declare-fun e!410767 () Bool)

(declare-fun lt!325366 () SeekEntryResult!7339)

(assert (=> b!734091 (= e!410767 (bvsge (x!62750 lt!325366) #b01111111111111111111111111111110))))

(declare-fun b!734092 () Bool)

(assert (=> b!734092 (and (bvsge (index!31725 lt!325366) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325366) (size!20153 a!3186)))))

(declare-fun e!410769 () Bool)

(assert (=> b!734092 (= e!410769 (= (select (arr!19732 a!3186) (index!31725 lt!325366)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734093 () Bool)

(assert (=> b!734093 (and (bvsge (index!31725 lt!325366) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325366) (size!20153 a!3186)))))

(declare-fun res!493365 () Bool)

(assert (=> b!734093 (= res!493365 (= (select (arr!19732 a!3186) (index!31725 lt!325366)) (select (arr!19732 a!3186) j!159)))))

(assert (=> b!734093 (=> res!493365 e!410769)))

(declare-fun e!410765 () Bool)

(assert (=> b!734093 (= e!410765 e!410769)))

(declare-fun d!99927 () Bool)

(assert (=> d!99927 e!410767))

(declare-fun c!80743 () Bool)

(assert (=> d!99927 (= c!80743 (and ((_ is Intermediate!7339) lt!325366) (undefined!8151 lt!325366)))))

(declare-fun e!410766 () SeekEntryResult!7339)

(assert (=> d!99927 (= lt!325366 e!410766)))

(declare-fun c!80745 () Bool)

(assert (=> d!99927 (= c!80745 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!325367 () (_ BitVec 64))

(assert (=> d!99927 (= lt!325367 (select (arr!19732 a!3186) (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328)))))

(assert (=> d!99927 (validMask!0 mask!3328)))

(assert (=> d!99927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328) (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325366)))

(declare-fun b!734094 () Bool)

(declare-fun e!410768 () SeekEntryResult!7339)

(assert (=> b!734094 (= e!410766 e!410768)))

(declare-fun c!80744 () Bool)

(assert (=> b!734094 (= c!80744 (or (= lt!325367 (select (arr!19732 a!3186) j!159)) (= (bvadd lt!325367 lt!325367) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734095 () Bool)

(assert (=> b!734095 (= e!410766 (Intermediate!7339 true (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734096 () Bool)

(assert (=> b!734096 (= e!410767 e!410765)))

(declare-fun res!493364 () Bool)

(assert (=> b!734096 (= res!493364 (and ((_ is Intermediate!7339) lt!325366) (not (undefined!8151 lt!325366)) (bvslt (x!62750 lt!325366) #b01111111111111111111111111111110) (bvsge (x!62750 lt!325366) #b00000000000000000000000000000000) (bvsge (x!62750 lt!325366) #b00000000000000000000000000000000)))))

(assert (=> b!734096 (=> (not res!493364) (not e!410765))))

(declare-fun b!734097 () Bool)

(assert (=> b!734097 (= e!410768 (Intermediate!7339 false (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734098 () Bool)

(assert (=> b!734098 (= e!410768 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19732 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734099 () Bool)

(assert (=> b!734099 (and (bvsge (index!31725 lt!325366) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325366) (size!20153 a!3186)))))

(declare-fun res!493363 () Bool)

(assert (=> b!734099 (= res!493363 (= (select (arr!19732 a!3186) (index!31725 lt!325366)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734099 (=> res!493363 e!410769)))

(assert (= (and d!99927 c!80745) b!734095))

(assert (= (and d!99927 (not c!80745)) b!734094))

(assert (= (and b!734094 c!80744) b!734097))

(assert (= (and b!734094 (not c!80744)) b!734098))

(assert (= (and d!99927 c!80743) b!734091))

(assert (= (and d!99927 (not c!80743)) b!734096))

(assert (= (and b!734096 res!493364) b!734093))

(assert (= (and b!734093 (not res!493365)) b!734099))

(assert (= (and b!734099 (not res!493363)) b!734092))

(declare-fun m!686883 () Bool)

(assert (=> b!734093 m!686883))

(assert (=> b!734099 m!686883))

(assert (=> b!734092 m!686883))

(assert (=> d!99927 m!686799))

(declare-fun m!686885 () Bool)

(assert (=> d!99927 m!686885))

(assert (=> d!99927 m!686817))

(assert (=> b!734098 m!686799))

(declare-fun m!686887 () Bool)

(assert (=> b!734098 m!686887))

(assert (=> b!734098 m!686887))

(assert (=> b!734098 m!686795))

(declare-fun m!686889 () Bool)

(assert (=> b!734098 m!686889))

(assert (=> b!733991 d!99927))

(declare-fun d!99929 () Bool)

(declare-fun lt!325373 () (_ BitVec 32))

(declare-fun lt!325372 () (_ BitVec 32))

(assert (=> d!99929 (= lt!325373 (bvmul (bvxor lt!325372 (bvlshr lt!325372 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99929 (= lt!325372 ((_ extract 31 0) (bvand (bvxor (select (arr!19732 a!3186) j!159) (bvlshr (select (arr!19732 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99929 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493366 (let ((h!14854 ((_ extract 31 0) (bvand (bvxor (select (arr!19732 a!3186) j!159) (bvlshr (select (arr!19732 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62754 (bvmul (bvxor h!14854 (bvlshr h!14854 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62754 (bvlshr x!62754 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493366 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493366 #b00000000000000000000000000000000))))))

(assert (=> d!99929 (= (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328) (bvand (bvxor lt!325373 (bvlshr lt!325373 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733991 d!99929))

(declare-fun d!99933 () Bool)

(declare-fun res!493371 () Bool)

(declare-fun e!410774 () Bool)

(assert (=> d!99933 (=> res!493371 e!410774)))

(assert (=> d!99933 (= res!493371 (= (select (arr!19732 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99933 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!410774)))

(declare-fun b!734104 () Bool)

(declare-fun e!410775 () Bool)

(assert (=> b!734104 (= e!410774 e!410775)))

(declare-fun res!493372 () Bool)

(assert (=> b!734104 (=> (not res!493372) (not e!410775))))

(assert (=> b!734104 (= res!493372 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20153 a!3186)))))

(declare-fun b!734105 () Bool)

(assert (=> b!734105 (= e!410775 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99933 (not res!493371)) b!734104))

(assert (= (and b!734104 res!493372) b!734105))

(declare-fun m!686893 () Bool)

(assert (=> d!99933 m!686893))

(declare-fun m!686895 () Bool)

(assert (=> b!734105 m!686895))

(assert (=> b!733980 d!99933))

(declare-fun b!734106 () Bool)

(declare-fun e!410777 () SeekEntryResult!7339)

(declare-fun e!410778 () SeekEntryResult!7339)

(assert (=> b!734106 (= e!410777 e!410778)))

(declare-fun lt!325378 () (_ BitVec 64))

(declare-fun c!80748 () Bool)

(assert (=> b!734106 (= c!80748 (= lt!325378 (select (arr!19732 a!3186) j!159)))))

(declare-fun b!734107 () Bool)

(declare-fun e!410776 () SeekEntryResult!7339)

(assert (=> b!734107 (= e!410776 (MissingVacant!7339 resIntermediateIndex!5))))

(declare-fun d!99939 () Bool)

(declare-fun lt!325377 () SeekEntryResult!7339)

(assert (=> d!99939 (and (or ((_ is Undefined!7339) lt!325377) (not ((_ is Found!7339) lt!325377)) (and (bvsge (index!31724 lt!325377) #b00000000000000000000000000000000) (bvslt (index!31724 lt!325377) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325377) ((_ is Found!7339) lt!325377) (not ((_ is MissingVacant!7339) lt!325377)) (not (= (index!31726 lt!325377) resIntermediateIndex!5)) (and (bvsge (index!31726 lt!325377) #b00000000000000000000000000000000) (bvslt (index!31726 lt!325377) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325377) (ite ((_ is Found!7339) lt!325377) (= (select (arr!19732 a!3186) (index!31724 lt!325377)) (select (arr!19732 a!3186) j!159)) (and ((_ is MissingVacant!7339) lt!325377) (= (index!31726 lt!325377) resIntermediateIndex!5) (= (select (arr!19732 a!3186) (index!31726 lt!325377)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99939 (= lt!325377 e!410777)))

(declare-fun c!80746 () Bool)

(assert (=> d!99939 (= c!80746 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99939 (= lt!325378 (select (arr!19732 a!3186) index!1321))))

(assert (=> d!99939 (validMask!0 mask!3328)))

(assert (=> d!99939 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325377)))

(declare-fun b!734108 () Bool)

(assert (=> b!734108 (= e!410776 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19732 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734109 () Bool)

(assert (=> b!734109 (= e!410778 (Found!7339 index!1321))))

(declare-fun b!734110 () Bool)

(declare-fun c!80747 () Bool)

(assert (=> b!734110 (= c!80747 (= lt!325378 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734110 (= e!410778 e!410776)))

(declare-fun b!734111 () Bool)

(assert (=> b!734111 (= e!410777 Undefined!7339)))

(assert (= (and d!99939 c!80746) b!734111))

(assert (= (and d!99939 (not c!80746)) b!734106))

(assert (= (and b!734106 c!80748) b!734109))

(assert (= (and b!734106 (not c!80748)) b!734110))

(assert (= (and b!734110 c!80747) b!734107))

(assert (= (and b!734110 (not c!80747)) b!734108))

(declare-fun m!686897 () Bool)

(assert (=> d!99939 m!686897))

(declare-fun m!686899 () Bool)

(assert (=> d!99939 m!686899))

(declare-fun m!686901 () Bool)

(assert (=> d!99939 m!686901))

(assert (=> d!99939 m!686817))

(assert (=> b!734108 m!686793))

(assert (=> b!734108 m!686793))

(assert (=> b!734108 m!686795))

(declare-fun m!686903 () Bool)

(assert (=> b!734108 m!686903))

(assert (=> b!733979 d!99939))

(declare-fun d!99941 () Bool)

(assert (=> d!99941 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!65046 d!99941))

(declare-fun d!99945 () Bool)

(assert (=> d!99945 (= (array_inv!15506 a!3186) (bvsge (size!20153 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!65046 d!99945))

(assert (=> b!733990 d!99939))

(declare-fun b!734134 () Bool)

(declare-fun e!410795 () Bool)

(declare-fun e!410794 () Bool)

(assert (=> b!734134 (= e!410795 e!410794)))

(declare-fun res!493380 () Bool)

(assert (=> b!734134 (=> (not res!493380) (not e!410794))))

(declare-fun e!410793 () Bool)

(assert (=> b!734134 (= res!493380 (not e!410793))))

(declare-fun res!493379 () Bool)

(assert (=> b!734134 (=> (not res!493379) (not e!410793))))

(assert (=> b!734134 (= res!493379 (validKeyInArray!0 (select (arr!19732 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!734135 () Bool)

(declare-fun e!410796 () Bool)

(declare-fun call!34893 () Bool)

(assert (=> b!734135 (= e!410796 call!34893)))

(declare-fun b!734136 () Bool)

(assert (=> b!734136 (= e!410794 e!410796)))

(declare-fun c!80757 () Bool)

(assert (=> b!734136 (= c!80757 (validKeyInArray!0 (select (arr!19732 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34890 () Bool)

(assert (=> bm!34890 (= call!34893 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!80757 (Cons!13783 (select (arr!19732 a!3186) #b00000000000000000000000000000000) Nil!13784) Nil!13784)))))

(declare-fun b!734137 () Bool)

(assert (=> b!734137 (= e!410796 call!34893)))

(declare-fun b!734138 () Bool)

(declare-fun contains!4061 (List!13787 (_ BitVec 64)) Bool)

(assert (=> b!734138 (= e!410793 (contains!4061 Nil!13784 (select (arr!19732 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!99947 () Bool)

(declare-fun res!493381 () Bool)

(assert (=> d!99947 (=> res!493381 e!410795)))

(assert (=> d!99947 (= res!493381 (bvsge #b00000000000000000000000000000000 (size!20153 a!3186)))))

(assert (=> d!99947 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13784) e!410795)))

(assert (= (and d!99947 (not res!493381)) b!734134))

(assert (= (and b!734134 res!493379) b!734138))

(assert (= (and b!734134 res!493380) b!734136))

(assert (= (and b!734136 c!80757) b!734137))

(assert (= (and b!734136 (not c!80757)) b!734135))

(assert (= (or b!734137 b!734135) bm!34890))

(assert (=> b!734134 m!686893))

(assert (=> b!734134 m!686893))

(declare-fun m!686905 () Bool)

(assert (=> b!734134 m!686905))

(assert (=> b!734136 m!686893))

(assert (=> b!734136 m!686893))

(assert (=> b!734136 m!686905))

(assert (=> bm!34890 m!686893))

(declare-fun m!686907 () Bool)

(assert (=> bm!34890 m!686907))

(assert (=> b!734138 m!686893))

(assert (=> b!734138 m!686893))

(declare-fun m!686909 () Bool)

(assert (=> b!734138 m!686909))

(assert (=> b!733989 d!99947))

(declare-fun d!99949 () Bool)

(declare-fun res!493386 () Bool)

(declare-fun e!410815 () Bool)

(assert (=> d!99949 (=> res!493386 e!410815)))

(assert (=> d!99949 (= res!493386 (bvsge j!159 (size!20153 a!3186)))))

(assert (=> d!99949 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!410815)))

(declare-fun b!734167 () Bool)

(declare-fun e!410813 () Bool)

(declare-fun e!410814 () Bool)

(assert (=> b!734167 (= e!410813 e!410814)))

(declare-fun lt!325398 () (_ BitVec 64))

(assert (=> b!734167 (= lt!325398 (select (arr!19732 a!3186) j!159))))

(declare-fun lt!325399 () Unit!24996)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41241 (_ BitVec 64) (_ BitVec 32)) Unit!24996)

(assert (=> b!734167 (= lt!325399 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325398 j!159))))

(assert (=> b!734167 (arrayContainsKey!0 a!3186 lt!325398 #b00000000000000000000000000000000)))

(declare-fun lt!325397 () Unit!24996)

(assert (=> b!734167 (= lt!325397 lt!325399)))

(declare-fun res!493387 () Bool)

(assert (=> b!734167 (= res!493387 (= (seekEntryOrOpen!0 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) (Found!7339 j!159)))))

(assert (=> b!734167 (=> (not res!493387) (not e!410814))))

(declare-fun call!34896 () Bool)

(declare-fun bm!34893 () Bool)

(assert (=> bm!34893 (= call!34896 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!734168 () Bool)

(assert (=> b!734168 (= e!410813 call!34896)))

(declare-fun b!734169 () Bool)

(assert (=> b!734169 (= e!410815 e!410813)))

(declare-fun c!80770 () Bool)

(assert (=> b!734169 (= c!80770 (validKeyInArray!0 (select (arr!19732 a!3186) j!159)))))

(declare-fun b!734170 () Bool)

(assert (=> b!734170 (= e!410814 call!34896)))

(assert (= (and d!99949 (not res!493386)) b!734169))

(assert (= (and b!734169 c!80770) b!734167))

(assert (= (and b!734169 (not c!80770)) b!734168))

(assert (= (and b!734167 res!493387) b!734170))

(assert (= (or b!734170 b!734168) bm!34893))

(assert (=> b!734167 m!686795))

(declare-fun m!686927 () Bool)

(assert (=> b!734167 m!686927))

(declare-fun m!686929 () Bool)

(assert (=> b!734167 m!686929))

(assert (=> b!734167 m!686795))

(assert (=> b!734167 m!686813))

(declare-fun m!686931 () Bool)

(assert (=> bm!34893 m!686931))

(assert (=> b!734169 m!686795))

(assert (=> b!734169 m!686795))

(assert (=> b!734169 m!686815))

(assert (=> b!733978 d!99949))

(declare-fun d!99955 () Bool)

(assert (=> d!99955 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!325402 () Unit!24996)

(declare-fun choose!38 (array!41241 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24996)

(assert (=> d!99955 (= lt!325402 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99955 (validMask!0 mask!3328)))

(assert (=> d!99955 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!325402)))

(declare-fun bs!20976 () Bool)

(assert (= bs!20976 d!99955))

(assert (=> bs!20976 m!686821))

(declare-fun m!686933 () Bool)

(assert (=> bs!20976 m!686933))

(assert (=> bs!20976 m!686817))

(assert (=> b!733978 d!99955))

(declare-fun b!734181 () Bool)

(declare-fun e!410824 () Bool)

(declare-fun lt!325403 () SeekEntryResult!7339)

(assert (=> b!734181 (= e!410824 (bvsge (x!62750 lt!325403) #b01111111111111111111111111111110))))

(declare-fun b!734182 () Bool)

(assert (=> b!734182 (and (bvsge (index!31725 lt!325403) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325403) (size!20153 lt!325324)))))

(declare-fun e!410826 () Bool)

(assert (=> b!734182 (= e!410826 (= (select (arr!19732 lt!325324) (index!31725 lt!325403)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734183 () Bool)

(assert (=> b!734183 (and (bvsge (index!31725 lt!325403) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325403) (size!20153 lt!325324)))))

(declare-fun res!493396 () Bool)

(assert (=> b!734183 (= res!493396 (= (select (arr!19732 lt!325324) (index!31725 lt!325403)) lt!325326))))

(assert (=> b!734183 (=> res!493396 e!410826)))

(declare-fun e!410822 () Bool)

(assert (=> b!734183 (= e!410822 e!410826)))

(declare-fun d!99957 () Bool)

(assert (=> d!99957 e!410824))

(declare-fun c!80773 () Bool)

(assert (=> d!99957 (= c!80773 (and ((_ is Intermediate!7339) lt!325403) (undefined!8151 lt!325403)))))

(declare-fun e!410823 () SeekEntryResult!7339)

(assert (=> d!99957 (= lt!325403 e!410823)))

(declare-fun c!80775 () Bool)

(assert (=> d!99957 (= c!80775 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!325404 () (_ BitVec 64))

(assert (=> d!99957 (= lt!325404 (select (arr!19732 lt!325324) index!1321))))

(assert (=> d!99957 (validMask!0 mask!3328)))

(assert (=> d!99957 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325326 lt!325324 mask!3328) lt!325403)))

(declare-fun b!734184 () Bool)

(declare-fun e!410825 () SeekEntryResult!7339)

(assert (=> b!734184 (= e!410823 e!410825)))

(declare-fun c!80774 () Bool)

(assert (=> b!734184 (= c!80774 (or (= lt!325404 lt!325326) (= (bvadd lt!325404 lt!325404) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734185 () Bool)

(assert (=> b!734185 (= e!410823 (Intermediate!7339 true index!1321 x!1131))))

(declare-fun b!734186 () Bool)

(assert (=> b!734186 (= e!410824 e!410822)))

(declare-fun res!493395 () Bool)

(assert (=> b!734186 (= res!493395 (and ((_ is Intermediate!7339) lt!325403) (not (undefined!8151 lt!325403)) (bvslt (x!62750 lt!325403) #b01111111111111111111111111111110) (bvsge (x!62750 lt!325403) #b00000000000000000000000000000000) (bvsge (x!62750 lt!325403) x!1131)))))

(assert (=> b!734186 (=> (not res!493395) (not e!410822))))

(declare-fun b!734187 () Bool)

(assert (=> b!734187 (= e!410825 (Intermediate!7339 false index!1321 x!1131))))

(declare-fun b!734188 () Bool)

(assert (=> b!734188 (= e!410825 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!325326 lt!325324 mask!3328))))

(declare-fun b!734189 () Bool)

(assert (=> b!734189 (and (bvsge (index!31725 lt!325403) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325403) (size!20153 lt!325324)))))

(declare-fun res!493394 () Bool)

(assert (=> b!734189 (= res!493394 (= (select (arr!19732 lt!325324) (index!31725 lt!325403)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734189 (=> res!493394 e!410826)))

(assert (= (and d!99957 c!80775) b!734185))

(assert (= (and d!99957 (not c!80775)) b!734184))

(assert (= (and b!734184 c!80774) b!734187))

(assert (= (and b!734184 (not c!80774)) b!734188))

(assert (= (and d!99957 c!80773) b!734181))

(assert (= (and d!99957 (not c!80773)) b!734186))

(assert (= (and b!734186 res!493395) b!734183))

(assert (= (and b!734183 (not res!493396)) b!734189))

(assert (= (and b!734189 (not res!493394)) b!734182))

(declare-fun m!686935 () Bool)

(assert (=> b!734183 m!686935))

(assert (=> b!734189 m!686935))

(assert (=> b!734182 m!686935))

(declare-fun m!686937 () Bool)

(assert (=> d!99957 m!686937))

(assert (=> d!99957 m!686817))

(assert (=> b!734188 m!686793))

(assert (=> b!734188 m!686793))

(declare-fun m!686939 () Bool)

(assert (=> b!734188 m!686939))

(assert (=> b!733977 d!99957))

(declare-fun b!734203 () Bool)

(declare-fun e!410836 () Bool)

(declare-fun lt!325407 () SeekEntryResult!7339)

(assert (=> b!734203 (= e!410836 (bvsge (x!62750 lt!325407) #b01111111111111111111111111111110))))

(declare-fun b!734204 () Bool)

(assert (=> b!734204 (and (bvsge (index!31725 lt!325407) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325407) (size!20153 lt!325324)))))

(declare-fun e!410838 () Bool)

(assert (=> b!734204 (= e!410838 (= (select (arr!19732 lt!325324) (index!31725 lt!325407)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734205 () Bool)

(assert (=> b!734205 (and (bvsge (index!31725 lt!325407) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325407) (size!20153 lt!325324)))))

(declare-fun res!493404 () Bool)

(assert (=> b!734205 (= res!493404 (= (select (arr!19732 lt!325324) (index!31725 lt!325407)) lt!325326))))

(assert (=> b!734205 (=> res!493404 e!410838)))

(declare-fun e!410834 () Bool)

(assert (=> b!734205 (= e!410834 e!410838)))

(declare-fun d!99959 () Bool)

(assert (=> d!99959 e!410836))

(declare-fun c!80779 () Bool)

(assert (=> d!99959 (= c!80779 (and ((_ is Intermediate!7339) lt!325407) (undefined!8151 lt!325407)))))

(declare-fun e!410835 () SeekEntryResult!7339)

(assert (=> d!99959 (= lt!325407 e!410835)))

(declare-fun c!80781 () Bool)

(assert (=> d!99959 (= c!80781 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!325408 () (_ BitVec 64))

(assert (=> d!99959 (= lt!325408 (select (arr!19732 lt!325324) (toIndex!0 lt!325326 mask!3328)))))

(assert (=> d!99959 (validMask!0 mask!3328)))

(assert (=> d!99959 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325326 mask!3328) lt!325326 lt!325324 mask!3328) lt!325407)))

(declare-fun b!734206 () Bool)

(declare-fun e!410837 () SeekEntryResult!7339)

(assert (=> b!734206 (= e!410835 e!410837)))

(declare-fun c!80780 () Bool)

(assert (=> b!734206 (= c!80780 (or (= lt!325408 lt!325326) (= (bvadd lt!325408 lt!325408) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734207 () Bool)

(assert (=> b!734207 (= e!410835 (Intermediate!7339 true (toIndex!0 lt!325326 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734208 () Bool)

(assert (=> b!734208 (= e!410836 e!410834)))

(declare-fun res!493403 () Bool)

(assert (=> b!734208 (= res!493403 (and ((_ is Intermediate!7339) lt!325407) (not (undefined!8151 lt!325407)) (bvslt (x!62750 lt!325407) #b01111111111111111111111111111110) (bvsge (x!62750 lt!325407) #b00000000000000000000000000000000) (bvsge (x!62750 lt!325407) #b00000000000000000000000000000000)))))

(assert (=> b!734208 (=> (not res!493403) (not e!410834))))

(declare-fun b!734209 () Bool)

(assert (=> b!734209 (= e!410837 (Intermediate!7339 false (toIndex!0 lt!325326 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734210 () Bool)

(assert (=> b!734210 (= e!410837 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!325326 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!325326 lt!325324 mask!3328))))

(declare-fun b!734211 () Bool)

(assert (=> b!734211 (and (bvsge (index!31725 lt!325407) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325407) (size!20153 lt!325324)))))

(declare-fun res!493402 () Bool)

(assert (=> b!734211 (= res!493402 (= (select (arr!19732 lt!325324) (index!31725 lt!325407)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734211 (=> res!493402 e!410838)))

(assert (= (and d!99959 c!80781) b!734207))

(assert (= (and d!99959 (not c!80781)) b!734206))

(assert (= (and b!734206 c!80780) b!734209))

(assert (= (and b!734206 (not c!80780)) b!734210))

(assert (= (and d!99959 c!80779) b!734203))

(assert (= (and d!99959 (not c!80779)) b!734208))

(assert (= (and b!734208 res!493403) b!734205))

(assert (= (and b!734205 (not res!493404)) b!734211))

(assert (= (and b!734211 (not res!493402)) b!734204))

(declare-fun m!686947 () Bool)

(assert (=> b!734205 m!686947))

(assert (=> b!734211 m!686947))

(assert (=> b!734204 m!686947))

(assert (=> d!99959 m!686785))

(declare-fun m!686949 () Bool)

(assert (=> d!99959 m!686949))

(assert (=> d!99959 m!686817))

(assert (=> b!734210 m!686785))

(declare-fun m!686951 () Bool)

(assert (=> b!734210 m!686951))

(assert (=> b!734210 m!686951))

(declare-fun m!686953 () Bool)

(assert (=> b!734210 m!686953))

(assert (=> b!733977 d!99959))

(declare-fun d!99963 () Bool)

(declare-fun lt!325416 () (_ BitVec 32))

(declare-fun lt!325415 () (_ BitVec 32))

(assert (=> d!99963 (= lt!325416 (bvmul (bvxor lt!325415 (bvlshr lt!325415 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99963 (= lt!325415 ((_ extract 31 0) (bvand (bvxor lt!325326 (bvlshr lt!325326 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99963 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493366 (let ((h!14854 ((_ extract 31 0) (bvand (bvxor lt!325326 (bvlshr lt!325326 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62754 (bvmul (bvxor h!14854 (bvlshr h!14854 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62754 (bvlshr x!62754 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493366 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493366 #b00000000000000000000000000000000))))))

(assert (=> d!99963 (= (toIndex!0 lt!325326 mask!3328) (bvand (bvxor lt!325416 (bvlshr lt!325416 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733977 d!99963))

(declare-fun d!99965 () Bool)

(declare-fun res!493407 () Bool)

(declare-fun e!410845 () Bool)

(assert (=> d!99965 (=> res!493407 e!410845)))

(assert (=> d!99965 (= res!493407 (bvsge #b00000000000000000000000000000000 (size!20153 a!3186)))))

(assert (=> d!99965 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!410845)))

(declare-fun b!734216 () Bool)

(declare-fun e!410843 () Bool)

(declare-fun e!410844 () Bool)

(assert (=> b!734216 (= e!410843 e!410844)))

(declare-fun lt!325418 () (_ BitVec 64))

(assert (=> b!734216 (= lt!325418 (select (arr!19732 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!325419 () Unit!24996)

(assert (=> b!734216 (= lt!325419 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325418 #b00000000000000000000000000000000))))

(assert (=> b!734216 (arrayContainsKey!0 a!3186 lt!325418 #b00000000000000000000000000000000)))

(declare-fun lt!325417 () Unit!24996)

(assert (=> b!734216 (= lt!325417 lt!325419)))

(declare-fun res!493408 () Bool)

(assert (=> b!734216 (= res!493408 (= (seekEntryOrOpen!0 (select (arr!19732 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7339 #b00000000000000000000000000000000)))))

(assert (=> b!734216 (=> (not res!493408) (not e!410844))))

(declare-fun bm!34896 () Bool)

(declare-fun call!34899 () Bool)

(assert (=> bm!34896 (= call!34899 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!734217 () Bool)

(assert (=> b!734217 (= e!410843 call!34899)))

(declare-fun b!734218 () Bool)

(assert (=> b!734218 (= e!410845 e!410843)))

(declare-fun c!80784 () Bool)

(assert (=> b!734218 (= c!80784 (validKeyInArray!0 (select (arr!19732 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!734219 () Bool)

(assert (=> b!734219 (= e!410844 call!34899)))

(assert (= (and d!99965 (not res!493407)) b!734218))

(assert (= (and b!734218 c!80784) b!734216))

(assert (= (and b!734218 (not c!80784)) b!734217))

(assert (= (and b!734216 res!493408) b!734219))

(assert (= (or b!734219 b!734217) bm!34896))

(assert (=> b!734216 m!686893))

(declare-fun m!686955 () Bool)

(assert (=> b!734216 m!686955))

(declare-fun m!686957 () Bool)

(assert (=> b!734216 m!686957))

(assert (=> b!734216 m!686893))

(declare-fun m!686959 () Bool)

(assert (=> b!734216 m!686959))

(declare-fun m!686961 () Bool)

(assert (=> bm!34896 m!686961))

(assert (=> b!734218 m!686893))

(assert (=> b!734218 m!686893))

(assert (=> b!734218 m!686905))

(assert (=> b!733988 d!99965))

(declare-fun d!99969 () Bool)

(assert (=> d!99969 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!733975 d!99969))

(declare-fun d!99971 () Bool)

(assert (=> d!99971 (= (validKeyInArray!0 (select (arr!19732 a!3186) j!159)) (and (not (= (select (arr!19732 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19732 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!733985 d!99971))

(declare-fun b!734262 () Bool)

(declare-fun e!410868 () SeekEntryResult!7339)

(declare-fun e!410870 () SeekEntryResult!7339)

(assert (=> b!734262 (= e!410868 e!410870)))

(declare-fun lt!325445 () (_ BitVec 64))

(declare-fun lt!325447 () SeekEntryResult!7339)

(assert (=> b!734262 (= lt!325445 (select (arr!19732 a!3186) (index!31725 lt!325447)))))

(declare-fun c!80805 () Bool)

(assert (=> b!734262 (= c!80805 (= lt!325445 k0!2102))))

(declare-fun e!410869 () SeekEntryResult!7339)

(declare-fun b!734263 () Bool)

(assert (=> b!734263 (= e!410869 (seekKeyOrZeroReturnVacant!0 (x!62750 lt!325447) (index!31725 lt!325447) (index!31725 lt!325447) k0!2102 a!3186 mask!3328))))

(declare-fun d!99973 () Bool)

(declare-fun lt!325446 () SeekEntryResult!7339)

(assert (=> d!99973 (and (or ((_ is Undefined!7339) lt!325446) (not ((_ is Found!7339) lt!325446)) (and (bvsge (index!31724 lt!325446) #b00000000000000000000000000000000) (bvslt (index!31724 lt!325446) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325446) ((_ is Found!7339) lt!325446) (not ((_ is MissingZero!7339) lt!325446)) (and (bvsge (index!31723 lt!325446) #b00000000000000000000000000000000) (bvslt (index!31723 lt!325446) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325446) ((_ is Found!7339) lt!325446) ((_ is MissingZero!7339) lt!325446) (not ((_ is MissingVacant!7339) lt!325446)) (and (bvsge (index!31726 lt!325446) #b00000000000000000000000000000000) (bvslt (index!31726 lt!325446) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325446) (ite ((_ is Found!7339) lt!325446) (= (select (arr!19732 a!3186) (index!31724 lt!325446)) k0!2102) (ite ((_ is MissingZero!7339) lt!325446) (= (select (arr!19732 a!3186) (index!31723 lt!325446)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7339) lt!325446) (= (select (arr!19732 a!3186) (index!31726 lt!325446)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99973 (= lt!325446 e!410868)))

(declare-fun c!80807 () Bool)

(assert (=> d!99973 (= c!80807 (and ((_ is Intermediate!7339) lt!325447) (undefined!8151 lt!325447)))))

(assert (=> d!99973 (= lt!325447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99973 (validMask!0 mask!3328)))

(assert (=> d!99973 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!325446)))

(declare-fun b!734264 () Bool)

(assert (=> b!734264 (= e!410868 Undefined!7339)))

(declare-fun b!734265 () Bool)

(assert (=> b!734265 (= e!410869 (MissingZero!7339 (index!31725 lt!325447)))))

(declare-fun b!734266 () Bool)

(declare-fun c!80806 () Bool)

(assert (=> b!734266 (= c!80806 (= lt!325445 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734266 (= e!410870 e!410869)))

(declare-fun b!734267 () Bool)

(assert (=> b!734267 (= e!410870 (Found!7339 (index!31725 lt!325447)))))

(assert (= (and d!99973 c!80807) b!734264))

(assert (= (and d!99973 (not c!80807)) b!734262))

(assert (= (and b!734262 c!80805) b!734267))

(assert (= (and b!734262 (not c!80805)) b!734266))

(assert (= (and b!734266 c!80806) b!734265))

(assert (= (and b!734266 (not c!80806)) b!734263))

(declare-fun m!686981 () Bool)

(assert (=> b!734262 m!686981))

(declare-fun m!686983 () Bool)

(assert (=> b!734263 m!686983))

(declare-fun m!686985 () Bool)

(assert (=> d!99973 m!686985))

(assert (=> d!99973 m!686817))

(declare-fun m!686987 () Bool)

(assert (=> d!99973 m!686987))

(declare-fun m!686989 () Bool)

(assert (=> d!99973 m!686989))

(declare-fun m!686991 () Bool)

(assert (=> d!99973 m!686991))

(assert (=> d!99973 m!686989))

(declare-fun m!686993 () Bool)

(assert (=> d!99973 m!686993))

(assert (=> b!733984 d!99973))

(declare-fun d!99981 () Bool)

(declare-fun lt!325450 () (_ BitVec 32))

(assert (=> d!99981 (and (bvsge lt!325450 #b00000000000000000000000000000000) (bvslt lt!325450 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99981 (= lt!325450 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99981 (validMask!0 mask!3328)))

(assert (=> d!99981 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!325450)))

(declare-fun bs!20978 () Bool)

(assert (= bs!20978 d!99981))

(declare-fun m!686995 () Bool)

(assert (=> bs!20978 m!686995))

(assert (=> bs!20978 m!686817))

(assert (=> b!733994 d!99981))

(declare-fun b!734278 () Bool)

(declare-fun e!410879 () Bool)

(declare-fun lt!325451 () SeekEntryResult!7339)

(assert (=> b!734278 (= e!410879 (bvsge (x!62750 lt!325451) #b01111111111111111111111111111110))))

(declare-fun b!734279 () Bool)

(assert (=> b!734279 (and (bvsge (index!31725 lt!325451) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325451) (size!20153 a!3186)))))

(declare-fun e!410881 () Bool)

(assert (=> b!734279 (= e!410881 (= (select (arr!19732 a!3186) (index!31725 lt!325451)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734280 () Bool)

(assert (=> b!734280 (and (bvsge (index!31725 lt!325451) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325451) (size!20153 a!3186)))))

(declare-fun res!493419 () Bool)

(assert (=> b!734280 (= res!493419 (= (select (arr!19732 a!3186) (index!31725 lt!325451)) (select (arr!19732 a!3186) j!159)))))

(assert (=> b!734280 (=> res!493419 e!410881)))

(declare-fun e!410877 () Bool)

(assert (=> b!734280 (= e!410877 e!410881)))

(declare-fun d!99983 () Bool)

(assert (=> d!99983 e!410879))

(declare-fun c!80810 () Bool)

(assert (=> d!99983 (= c!80810 (and ((_ is Intermediate!7339) lt!325451) (undefined!8151 lt!325451)))))

(declare-fun e!410878 () SeekEntryResult!7339)

(assert (=> d!99983 (= lt!325451 e!410878)))

(declare-fun c!80812 () Bool)

(assert (=> d!99983 (= c!80812 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!325452 () (_ BitVec 64))

(assert (=> d!99983 (= lt!325452 (select (arr!19732 a!3186) index!1321))))

(assert (=> d!99983 (validMask!0 mask!3328)))

(assert (=> d!99983 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325451)))

(declare-fun b!734281 () Bool)

(declare-fun e!410880 () SeekEntryResult!7339)

(assert (=> b!734281 (= e!410878 e!410880)))

(declare-fun c!80811 () Bool)

(assert (=> b!734281 (= c!80811 (or (= lt!325452 (select (arr!19732 a!3186) j!159)) (= (bvadd lt!325452 lt!325452) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734282 () Bool)

(assert (=> b!734282 (= e!410878 (Intermediate!7339 true index!1321 x!1131))))

(declare-fun b!734283 () Bool)

(assert (=> b!734283 (= e!410879 e!410877)))

(declare-fun res!493418 () Bool)

(assert (=> b!734283 (= res!493418 (and ((_ is Intermediate!7339) lt!325451) (not (undefined!8151 lt!325451)) (bvslt (x!62750 lt!325451) #b01111111111111111111111111111110) (bvsge (x!62750 lt!325451) #b00000000000000000000000000000000) (bvsge (x!62750 lt!325451) x!1131)))))

(assert (=> b!734283 (=> (not res!493418) (not e!410877))))

(declare-fun b!734284 () Bool)

(assert (=> b!734284 (= e!410880 (Intermediate!7339 false index!1321 x!1131))))

(declare-fun b!734285 () Bool)

(assert (=> b!734285 (= e!410880 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19732 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734286 () Bool)

(assert (=> b!734286 (and (bvsge (index!31725 lt!325451) #b00000000000000000000000000000000) (bvslt (index!31725 lt!325451) (size!20153 a!3186)))))

(declare-fun res!493417 () Bool)

(assert (=> b!734286 (= res!493417 (= (select (arr!19732 a!3186) (index!31725 lt!325451)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734286 (=> res!493417 e!410881)))

(assert (= (and d!99983 c!80812) b!734282))

(assert (= (and d!99983 (not c!80812)) b!734281))

(assert (= (and b!734281 c!80811) b!734284))

(assert (= (and b!734281 (not c!80811)) b!734285))

(assert (= (and d!99983 c!80810) b!734278))

(assert (= (and d!99983 (not c!80810)) b!734283))

(assert (= (and b!734283 res!493418) b!734280))

(assert (= (and b!734280 (not res!493419)) b!734286))

(assert (= (and b!734286 (not res!493417)) b!734279))

(declare-fun m!686997 () Bool)

(assert (=> b!734280 m!686997))

(assert (=> b!734286 m!686997))

(assert (=> b!734279 m!686997))

(assert (=> d!99983 m!686901))

(assert (=> d!99983 m!686817))

(assert (=> b!734285 m!686793))

(assert (=> b!734285 m!686793))

(assert (=> b!734285 m!686795))

(declare-fun m!686999 () Bool)

(assert (=> b!734285 m!686999))

(assert (=> b!733993 d!99983))

(declare-fun b!734293 () Bool)

(declare-fun e!410886 () SeekEntryResult!7339)

(declare-fun e!410888 () SeekEntryResult!7339)

(assert (=> b!734293 (= e!410886 e!410888)))

(declare-fun lt!325457 () (_ BitVec 64))

(declare-fun lt!325459 () SeekEntryResult!7339)

(assert (=> b!734293 (= lt!325457 (select (arr!19732 a!3186) (index!31725 lt!325459)))))

(declare-fun c!80815 () Bool)

(assert (=> b!734293 (= c!80815 (= lt!325457 (select (arr!19732 a!3186) j!159)))))

(declare-fun b!734294 () Bool)

(declare-fun e!410887 () SeekEntryResult!7339)

(assert (=> b!734294 (= e!410887 (seekKeyOrZeroReturnVacant!0 (x!62750 lt!325459) (index!31725 lt!325459) (index!31725 lt!325459) (select (arr!19732 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99985 () Bool)

(declare-fun lt!325458 () SeekEntryResult!7339)

(assert (=> d!99985 (and (or ((_ is Undefined!7339) lt!325458) (not ((_ is Found!7339) lt!325458)) (and (bvsge (index!31724 lt!325458) #b00000000000000000000000000000000) (bvslt (index!31724 lt!325458) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325458) ((_ is Found!7339) lt!325458) (not ((_ is MissingZero!7339) lt!325458)) (and (bvsge (index!31723 lt!325458) #b00000000000000000000000000000000) (bvslt (index!31723 lt!325458) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325458) ((_ is Found!7339) lt!325458) ((_ is MissingZero!7339) lt!325458) (not ((_ is MissingVacant!7339) lt!325458)) (and (bvsge (index!31726 lt!325458) #b00000000000000000000000000000000) (bvslt (index!31726 lt!325458) (size!20153 a!3186)))) (or ((_ is Undefined!7339) lt!325458) (ite ((_ is Found!7339) lt!325458) (= (select (arr!19732 a!3186) (index!31724 lt!325458)) (select (arr!19732 a!3186) j!159)) (ite ((_ is MissingZero!7339) lt!325458) (= (select (arr!19732 a!3186) (index!31723 lt!325458)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7339) lt!325458) (= (select (arr!19732 a!3186) (index!31726 lt!325458)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99985 (= lt!325458 e!410886)))

(declare-fun c!80817 () Bool)

(assert (=> d!99985 (= c!80817 (and ((_ is Intermediate!7339) lt!325459) (undefined!8151 lt!325459)))))

(assert (=> d!99985 (= lt!325459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19732 a!3186) j!159) mask!3328) (select (arr!19732 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99985 (validMask!0 mask!3328)))

(assert (=> d!99985 (= (seekEntryOrOpen!0 (select (arr!19732 a!3186) j!159) a!3186 mask!3328) lt!325458)))

(declare-fun b!734295 () Bool)

(assert (=> b!734295 (= e!410886 Undefined!7339)))

(declare-fun b!734296 () Bool)

(assert (=> b!734296 (= e!410887 (MissingZero!7339 (index!31725 lt!325459)))))

(declare-fun b!734297 () Bool)

(declare-fun c!80816 () Bool)

(assert (=> b!734297 (= c!80816 (= lt!325457 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734297 (= e!410888 e!410887)))

(declare-fun b!734298 () Bool)

(assert (=> b!734298 (= e!410888 (Found!7339 (index!31725 lt!325459)))))

(assert (= (and d!99985 c!80817) b!734295))

(assert (= (and d!99985 (not c!80817)) b!734293))

(assert (= (and b!734293 c!80815) b!734298))

(assert (= (and b!734293 (not c!80815)) b!734297))

(assert (= (and b!734297 c!80816) b!734296))

(assert (= (and b!734297 (not c!80816)) b!734294))

(declare-fun m!687001 () Bool)

(assert (=> b!734293 m!687001))

(assert (=> b!734294 m!686795))

(declare-fun m!687003 () Bool)

(assert (=> b!734294 m!687003))

(declare-fun m!687005 () Bool)

(assert (=> d!99985 m!687005))

(assert (=> d!99985 m!686817))

(declare-fun m!687007 () Bool)

(assert (=> d!99985 m!687007))

(assert (=> d!99985 m!686799))

(assert (=> d!99985 m!686795))

(assert (=> d!99985 m!686801))

(assert (=> d!99985 m!686795))

(assert (=> d!99985 m!686799))

(declare-fun m!687009 () Bool)

(assert (=> d!99985 m!687009))

(assert (=> b!733982 d!99985))

(check-sat (not b!734216) (not d!99939) (not b!734108) (not b!734167) (not b!734218) (not d!99959) (not bm!34893) (not d!99927) (not b!734169) (not d!99973) (not b!734098) (not b!734134) (not b!734136) (not b!734138) (not d!99957) (not b!734263) (not bm!34890) (not bm!34896) (not b!734285) (not b!734188) (not d!99985) (not d!99925) (not b!734294) (not b!734210) (not b!734105) (not d!99983) (not d!99981) (not d!99955) (not b!734069))
(check-sat)
