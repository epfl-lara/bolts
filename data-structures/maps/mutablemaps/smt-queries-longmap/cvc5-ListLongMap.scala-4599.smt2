; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64126 () Bool)

(assert start!64126)

(declare-fun b!720046 () Bool)

(declare-fun e!403896 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!720046 (= e!403896 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvsgt mask!3328 #b00111111111111111111111111111111)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40774 0))(
  ( (array!40775 (arr!19509 (Array (_ BitVec 32) (_ BitVec 64))) (size!19930 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40774)

(declare-fun b!720047 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!403899 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7116 0))(
  ( (MissingZero!7116 (index!30831 (_ BitVec 32))) (Found!7116 (index!30832 (_ BitVec 32))) (Intermediate!7116 (undefined!7928 Bool) (index!30833 (_ BitVec 32)) (x!61860 (_ BitVec 32))) (Undefined!7116) (MissingVacant!7116 (index!30834 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40774 (_ BitVec 32)) SeekEntryResult!7116)

(assert (=> b!720047 (= e!403899 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19509 a!3186) j!159) a!3186 mask!3328) (Found!7116 j!159)))))

(declare-fun b!720048 () Bool)

(declare-fun res!482563 () Bool)

(declare-fun e!403897 () Bool)

(assert (=> b!720048 (=> (not res!482563) (not e!403897))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720048 (= res!482563 (validKeyInArray!0 k!2102))))

(declare-fun b!720049 () Bool)

(declare-fun res!482560 () Bool)

(assert (=> b!720049 (=> (not res!482560) (not e!403896))))

(assert (=> b!720049 (= res!482560 e!403899)))

(declare-fun c!79113 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720049 (= c!79113 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720050 () Bool)

(declare-fun res!482561 () Bool)

(assert (=> b!720050 (=> (not res!482561) (not e!403897))))

(assert (=> b!720050 (= res!482561 (validKeyInArray!0 (select (arr!19509 a!3186) j!159)))))

(declare-fun b!720051 () Bool)

(declare-fun e!403898 () Bool)

(assert (=> b!720051 (= e!403897 e!403898)))

(declare-fun res!482562 () Bool)

(assert (=> b!720051 (=> (not res!482562) (not e!403898))))

(declare-fun lt!319682 () SeekEntryResult!7116)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720051 (= res!482562 (or (= lt!319682 (MissingZero!7116 i!1173)) (= lt!319682 (MissingVacant!7116 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40774 (_ BitVec 32)) SeekEntryResult!7116)

(assert (=> b!720051 (= lt!319682 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720053 () Bool)

(declare-fun res!482566 () Bool)

(assert (=> b!720053 (=> (not res!482566) (not e!403897))))

(declare-fun arrayContainsKey!0 (array!40774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720053 (= res!482566 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720054 () Bool)

(declare-fun res!482568 () Bool)

(assert (=> b!720054 (=> (not res!482568) (not e!403896))))

(assert (=> b!720054 (= res!482568 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19509 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720055 () Bool)

(declare-fun res!482558 () Bool)

(assert (=> b!720055 (=> (not res!482558) (not e!403898))))

(assert (=> b!720055 (= res!482558 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19930 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19930 a!3186))))))

(declare-fun b!720056 () Bool)

(declare-fun res!482567 () Bool)

(assert (=> b!720056 (=> (not res!482567) (not e!403898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40774 (_ BitVec 32)) Bool)

(assert (=> b!720056 (= res!482567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720057 () Bool)

(declare-fun res!482559 () Bool)

(assert (=> b!720057 (=> (not res!482559) (not e!403897))))

(assert (=> b!720057 (= res!482559 (and (= (size!19930 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19930 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19930 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!482557 () Bool)

(assert (=> start!64126 (=> (not res!482557) (not e!403897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64126 (= res!482557 (validMask!0 mask!3328))))

(assert (=> start!64126 e!403897))

(assert (=> start!64126 true))

(declare-fun array_inv!15283 (array!40774) Bool)

(assert (=> start!64126 (array_inv!15283 a!3186)))

(declare-fun b!720052 () Bool)

(declare-fun res!482565 () Bool)

(assert (=> b!720052 (=> (not res!482565) (not e!403898))))

(declare-datatypes ((List!13564 0))(
  ( (Nil!13561) (Cons!13560 (h!14608 (_ BitVec 64)) (t!19887 List!13564)) )
))
(declare-fun arrayNoDuplicates!0 (array!40774 (_ BitVec 32) List!13564) Bool)

(assert (=> b!720052 (= res!482565 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13561))))

(declare-fun b!720058 () Bool)

(assert (=> b!720058 (= e!403898 e!403896)))

(declare-fun res!482564 () Bool)

(assert (=> b!720058 (=> (not res!482564) (not e!403896))))

(declare-fun lt!319681 () SeekEntryResult!7116)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40774 (_ BitVec 32)) SeekEntryResult!7116)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720058 (= res!482564 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19509 a!3186) j!159) mask!3328) (select (arr!19509 a!3186) j!159) a!3186 mask!3328) lt!319681))))

(assert (=> b!720058 (= lt!319681 (Intermediate!7116 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720059 () Bool)

(assert (=> b!720059 (= e!403899 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19509 a!3186) j!159) a!3186 mask!3328) lt!319681))))

(assert (= (and start!64126 res!482557) b!720057))

(assert (= (and b!720057 res!482559) b!720050))

(assert (= (and b!720050 res!482561) b!720048))

(assert (= (and b!720048 res!482563) b!720053))

(assert (= (and b!720053 res!482566) b!720051))

(assert (= (and b!720051 res!482562) b!720056))

(assert (= (and b!720056 res!482567) b!720052))

(assert (= (and b!720052 res!482565) b!720055))

(assert (= (and b!720055 res!482558) b!720058))

(assert (= (and b!720058 res!482564) b!720054))

(assert (= (and b!720054 res!482568) b!720049))

(assert (= (and b!720049 c!79113) b!720059))

(assert (= (and b!720049 (not c!79113)) b!720047))

(assert (= (and b!720049 res!482560) b!720046))

(declare-fun m!675385 () Bool)

(assert (=> start!64126 m!675385))

(declare-fun m!675387 () Bool)

(assert (=> start!64126 m!675387))

(declare-fun m!675389 () Bool)

(assert (=> b!720054 m!675389))

(declare-fun m!675391 () Bool)

(assert (=> b!720050 m!675391))

(assert (=> b!720050 m!675391))

(declare-fun m!675393 () Bool)

(assert (=> b!720050 m!675393))

(assert (=> b!720059 m!675391))

(assert (=> b!720059 m!675391))

(declare-fun m!675395 () Bool)

(assert (=> b!720059 m!675395))

(declare-fun m!675397 () Bool)

(assert (=> b!720056 m!675397))

(declare-fun m!675399 () Bool)

(assert (=> b!720052 m!675399))

(assert (=> b!720047 m!675391))

(assert (=> b!720047 m!675391))

(declare-fun m!675401 () Bool)

(assert (=> b!720047 m!675401))

(declare-fun m!675403 () Bool)

(assert (=> b!720048 m!675403))

(assert (=> b!720058 m!675391))

(assert (=> b!720058 m!675391))

(declare-fun m!675405 () Bool)

(assert (=> b!720058 m!675405))

(assert (=> b!720058 m!675405))

(assert (=> b!720058 m!675391))

(declare-fun m!675407 () Bool)

(assert (=> b!720058 m!675407))

(declare-fun m!675409 () Bool)

(assert (=> b!720051 m!675409))

(declare-fun m!675411 () Bool)

(assert (=> b!720053 m!675411))

(push 1)

(assert (not b!720050))

(assert (not b!720058))

(assert (not b!720051))

(assert (not b!720053))

(assert (not b!720059))

(assert (not b!720052))

(assert (not start!64126))

(assert (not b!720047))

(assert (not b!720048))

(assert (not b!720056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!99041 () Bool)

(assert (=> d!99041 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720048 d!99041))

(declare-fun b!720212 () Bool)

(declare-fun e!403972 () Bool)

(declare-fun e!403971 () Bool)

(assert (=> b!720212 (= e!403972 e!403971)))

(declare-fun res!482653 () Bool)

(declare-fun lt!319719 () SeekEntryResult!7116)

(assert (=> b!720212 (= res!482653 (and (is-Intermediate!7116 lt!319719) (not (undefined!7928 lt!319719)) (bvslt (x!61860 lt!319719) #b01111111111111111111111111111110) (bvsge (x!61860 lt!319719) #b00000000000000000000000000000000) (bvsge (x!61860 lt!319719) x!1131)))))

(assert (=> b!720212 (=> (not res!482653) (not e!403971))))

(declare-fun b!720213 () Bool)

(declare-fun e!403969 () SeekEntryResult!7116)

(assert (=> b!720213 (= e!403969 (Intermediate!7116 true index!1321 x!1131))))

(declare-fun b!720214 () Bool)

(assert (=> b!720214 (= e!403972 (bvsge (x!61860 lt!319719) #b01111111111111111111111111111110))))

(declare-fun b!720215 () Bool)

(assert (=> b!720215 (and (bvsge (index!30833 lt!319719) #b00000000000000000000000000000000) (bvslt (index!30833 lt!319719) (size!19930 a!3186)))))

(declare-fun res!482654 () Bool)

(assert (=> b!720215 (= res!482654 (= (select (arr!19509 a!3186) (index!30833 lt!319719)) (select (arr!19509 a!3186) j!159)))))

(declare-fun e!403970 () Bool)

(assert (=> b!720215 (=> res!482654 e!403970)))

(assert (=> b!720215 (= e!403971 e!403970)))

(declare-fun d!99043 () Bool)

(assert (=> d!99043 e!403972))

(declare-fun c!79149 () Bool)

(assert (=> d!99043 (= c!79149 (and (is-Intermediate!7116 lt!319719) (undefined!7928 lt!319719)))))

(assert (=> d!99043 (= lt!319719 e!403969)))

(declare-fun c!79150 () Bool)

(assert (=> d!99043 (= c!79150 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!319718 () (_ BitVec 64))

(assert (=> d!99043 (= lt!319718 (select (arr!19509 a!3186) index!1321))))

(assert (=> d!99043 (validMask!0 mask!3328)))

(assert (=> d!99043 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19509 a!3186) j!159) a!3186 mask!3328) lt!319719)))

(declare-fun b!720216 () Bool)

(assert (=> b!720216 (and (bvsge (index!30833 lt!319719) #b00000000000000000000000000000000) (bvslt (index!30833 lt!319719) (size!19930 a!3186)))))

(declare-fun res!482655 () Bool)

(assert (=> b!720216 (= res!482655 (= (select (arr!19509 a!3186) (index!30833 lt!319719)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720216 (=> res!482655 e!403970)))

(declare-fun b!720217 () Bool)

(assert (=> b!720217 (and (bvsge (index!30833 lt!319719) #b00000000000000000000000000000000) (bvslt (index!30833 lt!319719) (size!19930 a!3186)))))

(assert (=> b!720217 (= e!403970 (= (select (arr!19509 a!3186) (index!30833 lt!319719)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!720218 () Bool)

(declare-fun e!403968 () SeekEntryResult!7116)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720218 (= e!403968 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19509 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!720219 () Bool)

(assert (=> b!720219 (= e!403969 e!403968)))

(declare-fun c!79148 () Bool)

(assert (=> b!720219 (= c!79148 (or (= lt!319718 (select (arr!19509 a!3186) j!159)) (= (bvadd lt!319718 lt!319718) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720220 () Bool)

(assert (=> b!720220 (= e!403968 (Intermediate!7116 false index!1321 x!1131))))

(assert (= (and d!99043 c!79150) b!720213))

(assert (= (and d!99043 (not c!79150)) b!720219))

(assert (= (and b!720219 c!79148) b!720220))

(assert (= (and b!720219 (not c!79148)) b!720218))

(assert (= (and d!99043 c!79149) b!720214))

(assert (= (and d!99043 (not c!79149)) b!720212))

(assert (= (and b!720212 res!482653) b!720215))

(assert (= (and b!720215 (not res!482654)) b!720216))

(assert (= (and b!720216 (not res!482655)) b!720217))

(declare-fun m!675497 () Bool)

(assert (=> b!720217 m!675497))

(declare-fun m!675499 () Bool)

(assert (=> d!99043 m!675499))

(assert (=> d!99043 m!675385))

(assert (=> b!720215 m!675497))

(assert (=> b!720216 m!675497))

(declare-fun m!675501 () Bool)

(assert (=> b!720218 m!675501))

(assert (=> b!720218 m!675501))

(assert (=> b!720218 m!675391))

(declare-fun m!675503 () Bool)

(assert (=> b!720218 m!675503))

(assert (=> b!720059 d!99043))

(declare-fun b!720229 () Bool)

(declare-fun e!403983 () Bool)

(declare-fun e!403982 () Bool)

(assert (=> b!720229 (= e!403983 e!403982)))

(declare-fun res!482662 () Bool)

(declare-fun lt!319721 () SeekEntryResult!7116)

(assert (=> b!720229 (= res!482662 (and (is-Intermediate!7116 lt!319721) (not (undefined!7928 lt!319721)) (bvslt (x!61860 lt!319721) #b01111111111111111111111111111110) (bvsge (x!61860 lt!319721) #b00000000000000000000000000000000) (bvsge (x!61860 lt!319721) #b00000000000000000000000000000000)))))

(assert (=> b!720229 (=> (not res!482662) (not e!403982))))

(declare-fun e!403980 () SeekEntryResult!7116)

(declare-fun b!720230 () Bool)

(assert (=> b!720230 (= e!403980 (Intermediate!7116 true (toIndex!0 (select (arr!19509 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!720231 () Bool)

(assert (=> b!720231 (= e!403983 (bvsge (x!61860 lt!319721) #b01111111111111111111111111111110))))

(declare-fun b!720232 () Bool)

(assert (=> b!720232 (and (bvsge (index!30833 lt!319721) #b00000000000000000000000000000000) (bvslt (index!30833 lt!319721) (size!19930 a!3186)))))

(declare-fun res!482663 () Bool)

(assert (=> b!720232 (= res!482663 (= (select (arr!19509 a!3186) (index!30833 lt!319721)) (select (arr!19509 a!3186) j!159)))))

(declare-fun e!403981 () Bool)

(assert (=> b!720232 (=> res!482663 e!403981)))

(assert (=> b!720232 (= e!403982 e!403981)))

(declare-fun d!99055 () Bool)

(assert (=> d!99055 e!403983))

(declare-fun c!79154 () Bool)

(assert (=> d!99055 (= c!79154 (and (is-Intermediate!7116 lt!319721) (undefined!7928 lt!319721)))))

(assert (=> d!99055 (= lt!319721 e!403980)))

(declare-fun c!79155 () Bool)

(assert (=> d!99055 (= c!79155 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!319720 () (_ BitVec 64))

(assert (=> d!99055 (= lt!319720 (select (arr!19509 a!3186) (toIndex!0 (select (arr!19509 a!3186) j!159) mask!3328)))))

(assert (=> d!99055 (validMask!0 mask!3328)))

(assert (=> d!99055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19509 a!3186) j!159) mask!3328) (select (arr!19509 a!3186) j!159) a!3186 mask!3328) lt!319721)))

(declare-fun b!720233 () Bool)

(assert (=> b!720233 (and (bvsge (index!30833 lt!319721) #b00000000000000000000000000000000) (bvslt (index!30833 lt!319721) (size!19930 a!3186)))))

(declare-fun res!482664 () Bool)

(assert (=> b!720233 (= res!482664 (= (select (arr!19509 a!3186) (index!30833 lt!319721)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720233 (=> res!482664 e!403981)))

(declare-fun b!720234 () Bool)

(assert (=> b!720234 (and (bvsge (index!30833 lt!319721) #b00000000000000000000000000000000) (bvslt (index!30833 lt!319721) (size!19930 a!3186)))))

(assert (=> b!720234 (= e!403981 (= (select (arr!19509 a!3186) (index!30833 lt!319721)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!403979 () SeekEntryResult!7116)

(declare-fun b!720235 () Bool)

(assert (=> b!720235 (= e!403979 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19509 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19509 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!720236 () Bool)

(assert (=> b!720236 (= e!403980 e!403979)))

(declare-fun c!79153 () Bool)

(assert (=> b!720236 (= c!79153 (or (= lt!319720 (select (arr!19509 a!3186) j!159)) (= (bvadd lt!319720 lt!319720) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720237 () Bool)

(assert (=> b!720237 (= e!403979 (Intermediate!7116 false (toIndex!0 (select (arr!19509 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!99055 c!79155) b!720230))

(assert (= (and d!99055 (not c!79155)) b!720236))

(assert (= (and b!720236 c!79153) b!720237))

(assert (= (and b!720236 (not c!79153)) b!720235))

(assert (= (and d!99055 c!79154) b!720231))

(assert (= (and d!99055 (not c!79154)) b!720229))

(assert (= (and b!720229 res!482662) b!720232))

(assert (= (and b!720232 (not res!482663)) b!720233))

(assert (= (and b!720233 (not res!482664)) b!720234))

(declare-fun m!675505 () Bool)

(assert (=> b!720234 m!675505))

(assert (=> d!99055 m!675405))

(declare-fun m!675507 () Bool)

(assert (=> d!99055 m!675507))

(assert (=> d!99055 m!675385))

(assert (=> b!720232 m!675505))

(assert (=> b!720233 m!675505))

(assert (=> b!720235 m!675405))

(declare-fun m!675509 () Bool)

(assert (=> b!720235 m!675509))

(assert (=> b!720235 m!675509))

(assert (=> b!720235 m!675391))

(declare-fun m!675511 () Bool)

(assert (=> b!720235 m!675511))

(assert (=> b!720058 d!99055))

(declare-fun d!99057 () Bool)

(declare-fun lt!319729 () (_ BitVec 32))

(declare-fun lt!319728 () (_ BitVec 32))

(assert (=> d!99057 (= lt!319729 (bvmul (bvxor lt!319728 (bvlshr lt!319728 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99057 (= lt!319728 ((_ extract 31 0) (bvand (bvxor (select (arr!19509 a!3186) j!159) (bvlshr (select (arr!19509 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99057 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!482665 (let ((h!14611 ((_ extract 31 0) (bvand (bvxor (select (arr!19509 a!3186) j!159) (bvlshr (select (arr!19509 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61866 (bvmul (bvxor h!14611 (bvlshr h!14611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61866 (bvlshr x!61866 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!482665 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!482665 #b00000000000000000000000000000000))))))

(assert (=> d!99057 (= (toIndex!0 (select (arr!19509 a!3186) j!159) mask!3328) (bvand (bvxor lt!319729 (bvlshr lt!319729 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720058 d!99057))

(declare-fun d!99061 () Bool)

(declare-fun res!482679 () Bool)

(declare-fun e!404001 () Bool)

(assert (=> d!99061 (=> res!482679 e!404001)))

(assert (=> d!99061 (= res!482679 (= (select (arr!19509 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99061 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!404001)))

(declare-fun b!720263 () Bool)

(declare-fun e!404002 () Bool)

(assert (=> b!720263 (= e!404001 e!404002)))

(declare-fun res!482680 () Bool)

(assert (=> b!720263 (=> (not res!482680) (not e!404002))))

(assert (=> b!720263 (= res!482680 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19930 a!3186)))))

(declare-fun b!720264 () Bool)

(assert (=> b!720264 (= e!404002 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99061 (not res!482679)) b!720263))

(assert (= (and b!720263 res!482680) b!720264))

(declare-fun m!675521 () Bool)

(assert (=> d!99061 m!675521))

(declare-fun m!675523 () Bool)

(assert (=> b!720264 m!675523))

(assert (=> b!720053 d!99061))

(declare-fun d!99063 () Bool)

(assert (=> d!99063 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64126 d!99063))

(declare-fun d!99069 () Bool)

(assert (=> d!99069 (= (array_inv!15283 a!3186) (bvsge (size!19930 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64126 d!99069))

(declare-fun d!99071 () Bool)

(declare-fun res!482698 () Bool)

(declare-fun e!404033 () Bool)

(assert (=> d!99071 (=> res!482698 e!404033)))

(assert (=> d!99071 (= res!482698 (bvsge #b00000000000000000000000000000000 (size!19930 a!3186)))))

(assert (=> d!99071 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13561) e!404033)))

(declare-fun b!720308 () Bool)

(declare-fun e!404034 () Bool)

(declare-fun call!34757 () Bool)

(assert (=> b!720308 (= e!404034 call!34757)))

(declare-fun b!720309 () Bool)

(declare-fun e!404032 () Bool)

(assert (=> b!720309 (= e!404032 e!404034)))

(declare-fun c!79175 () Bool)

(assert (=> b!720309 (= c!79175 (validKeyInArray!0 (select (arr!19509 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!720310 () Bool)

(declare-fun e!404035 () Bool)

(declare-fun contains!4044 (List!13564 (_ BitVec 64)) Bool)

(assert (=> b!720310 (= e!404035 (contains!4044 Nil!13561 (select (arr!19509 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!720311 () Bool)

(assert (=> b!720311 (= e!404034 call!34757)))

(declare-fun b!720312 () Bool)

(assert (=> b!720312 (= e!404033 e!404032)))

(declare-fun res!482697 () Bool)

(assert (=> b!720312 (=> (not res!482697) (not e!404032))))

(assert (=> b!720312 (= res!482697 (not e!404035))))

(declare-fun res!482696 () Bool)

(assert (=> b!720312 (=> (not res!482696) (not e!404035))))

(assert (=> b!720312 (= res!482696 (validKeyInArray!0 (select (arr!19509 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34754 () Bool)

(assert (=> bm!34754 (= call!34757 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79175 (Cons!13560 (select (arr!19509 a!3186) #b00000000000000000000000000000000) Nil!13561) Nil!13561)))))

(assert (= (and d!99071 (not res!482698)) b!720312))

(assert (= (and b!720312 res!482696) b!720310))

(assert (= (and b!720312 res!482697) b!720309))

(assert (= (and b!720309 c!79175) b!720308))

(assert (= (and b!720309 (not c!79175)) b!720311))

(assert (= (or b!720308 b!720311) bm!34754))

(assert (=> b!720309 m!675521))

(assert (=> b!720309 m!675521))

(declare-fun m!675545 () Bool)

(assert (=> b!720309 m!675545))

(assert (=> b!720310 m!675521))

(assert (=> b!720310 m!675521))

(declare-fun m!675547 () Bool)

(assert (=> b!720310 m!675547))

(assert (=> b!720312 m!675521))

(assert (=> b!720312 m!675521))

(assert (=> b!720312 m!675545))

(assert (=> bm!34754 m!675521))

(declare-fun m!675549 () Bool)

(assert (=> bm!34754 m!675549))

(assert (=> b!720052 d!99071))

(declare-fun b!720357 () Bool)

(declare-fun e!404060 () SeekEntryResult!7116)

(assert (=> b!720357 (= e!404060 Undefined!7116)))

(declare-fun b!720358 () Bool)

(declare-fun e!404062 () SeekEntryResult!7116)

(assert (=> b!720358 (= e!404060 e!404062)))

(declare-fun c!79195 () Bool)

(declare-fun lt!319752 () (_ BitVec 64))

(assert (=> b!720358 (= c!79195 (= lt!319752 (select (arr!19509 a!3186) j!159)))))

(declare-fun e!404061 () SeekEntryResult!7116)

(declare-fun b!720359 () Bool)

(assert (=> b!720359 (= e!404061 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19509 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!319751 () SeekEntryResult!7116)

(declare-fun d!99081 () Bool)

(assert (=> d!99081 (and (or (is-Undefined!7116 lt!319751) (not (is-Found!7116 lt!319751)) (and (bvsge (index!30832 lt!319751) #b00000000000000000000000000000000) (bvslt (index!30832 lt!319751) (size!19930 a!3186)))) (or (is-Undefined!7116 lt!319751) (is-Found!7116 lt!319751) (not (is-MissingVacant!7116 lt!319751)) (not (= (index!30834 lt!319751) resIntermediateIndex!5)) (and (bvsge (index!30834 lt!319751) #b00000000000000000000000000000000) (bvslt (index!30834 lt!319751) (size!19930 a!3186)))) (or (is-Undefined!7116 lt!319751) (ite (is-Found!7116 lt!319751) (= (select (arr!19509 a!3186) (index!30832 lt!319751)) (select (arr!19509 a!3186) j!159)) (and (is-MissingVacant!7116 lt!319751) (= (index!30834 lt!319751) resIntermediateIndex!5) (= (select (arr!19509 a!3186) (index!30834 lt!319751)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99081 (= lt!319751 e!404060)))

(declare-fun c!79197 () Bool)

(assert (=> d!99081 (= c!79197 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99081 (= lt!319752 (select (arr!19509 a!3186) index!1321))))

(assert (=> d!99081 (validMask!0 mask!3328)))

(assert (=> d!99081 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19509 a!3186) j!159) a!3186 mask!3328) lt!319751)))

(declare-fun b!720360 () Bool)

(assert (=> b!720360 (= e!404061 (MissingVacant!7116 resIntermediateIndex!5))))

(declare-fun b!720361 () Bool)

(assert (=> b!720361 (= e!404062 (Found!7116 index!1321))))

(declare-fun b!720362 () Bool)

(declare-fun c!79196 () Bool)

(assert (=> b!720362 (= c!79196 (= lt!319752 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720362 (= e!404062 e!404061)))

(assert (= (and d!99081 c!79197) b!720357))

(assert (= (and d!99081 (not c!79197)) b!720358))

(assert (= (and b!720358 c!79195) b!720361))

(assert (= (and b!720358 (not c!79195)) b!720362))

(assert (= (and b!720362 c!79196) b!720360))

(assert (= (and b!720362 (not c!79196)) b!720359))

(assert (=> b!720359 m!675501))

(assert (=> b!720359 m!675501))

(assert (=> b!720359 m!675391))

(declare-fun m!675573 () Bool)

(assert (=> b!720359 m!675573))

(declare-fun m!675575 () Bool)

(assert (=> d!99081 m!675575))

(declare-fun m!675577 () Bool)

(assert (=> d!99081 m!675577))

(assert (=> d!99081 m!675499))

(assert (=> d!99081 m!675385))

(assert (=> b!720047 d!99081))

(declare-fun b!720375 () Bool)

(declare-fun e!404071 () Bool)

(declare-fun e!404072 () Bool)

(assert (=> b!720375 (= e!404071 e!404072)))

(declare-fun c!79200 () Bool)

(assert (=> b!720375 (= c!79200 (validKeyInArray!0 (select (arr!19509 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!720376 () Bool)

(declare-fun call!34761 () Bool)

(assert (=> b!720376 (= e!404072 call!34761)))

(declare-fun bm!34758 () Bool)

(assert (=> bm!34758 (= call!34761 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!99095 () Bool)

(declare-fun res!482712 () Bool)

(assert (=> d!99095 (=> res!482712 e!404071)))

(assert (=> d!99095 (= res!482712 (bvsge #b00000000000000000000000000000000 (size!19930 a!3186)))))

(assert (=> d!99095 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!404071)))

(declare-fun b!720377 () Bool)

(declare-fun e!404073 () Bool)

(assert (=> b!720377 (= e!404073 call!34761)))

(declare-fun b!720378 () Bool)

(assert (=> b!720378 (= e!404072 e!404073)))

(declare-fun lt!319766 () (_ BitVec 64))

(assert (=> b!720378 (= lt!319766 (select (arr!19509 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24648 0))(
  ( (Unit!24649) )
))
(declare-fun lt!319767 () Unit!24648)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40774 (_ BitVec 64) (_ BitVec 32)) Unit!24648)

(assert (=> b!720378 (= lt!319767 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319766 #b00000000000000000000000000000000))))

(assert (=> b!720378 (arrayContainsKey!0 a!3186 lt!319766 #b00000000000000000000000000000000)))

(declare-fun lt!319765 () Unit!24648)

(assert (=> b!720378 (= lt!319765 lt!319767)))

(declare-fun res!482713 () Bool)

(assert (=> b!720378 (= res!482713 (= (seekEntryOrOpen!0 (select (arr!19509 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7116 #b00000000000000000000000000000000)))))

(assert (=> b!720378 (=> (not res!482713) (not e!404073))))

(assert (= (and d!99095 (not res!482712)) b!720375))

(assert (= (and b!720375 c!79200) b!720378))

(assert (= (and b!720375 (not c!79200)) b!720376))

(assert (= (and b!720378 res!482713) b!720377))

(assert (= (or b!720377 b!720376) bm!34758))

(assert (=> b!720375 m!675521))

(assert (=> b!720375 m!675521))

(assert (=> b!720375 m!675545))

(declare-fun m!675579 () Bool)

(assert (=> bm!34758 m!675579))

(assert (=> b!720378 m!675521))

(declare-fun m!675581 () Bool)

(assert (=> b!720378 m!675581))

(declare-fun m!675583 () Bool)

(assert (=> b!720378 m!675583))

(assert (=> b!720378 m!675521))

(declare-fun m!675585 () Bool)

(assert (=> b!720378 m!675585))

(assert (=> b!720056 d!99095))

(declare-fun b!720440 () Bool)

(declare-fun e!404115 () SeekEntryResult!7116)

(assert (=> b!720440 (= e!404115 Undefined!7116)))

(declare-fun b!720441 () Bool)

(declare-fun e!404116 () SeekEntryResult!7116)

(declare-fun lt!319803 () SeekEntryResult!7116)

(assert (=> b!720441 (= e!404116 (seekKeyOrZeroReturnVacant!0 (x!61860 lt!319803) (index!30833 lt!319803) (index!30833 lt!319803) k!2102 a!3186 mask!3328))))

(declare-fun b!720442 () Bool)

(declare-fun e!404114 () SeekEntryResult!7116)

(assert (=> b!720442 (= e!404115 e!404114)))

(declare-fun lt!319802 () (_ BitVec 64))

(assert (=> b!720442 (= lt!319802 (select (arr!19509 a!3186) (index!30833 lt!319803)))))

(declare-fun c!79221 () Bool)

(assert (=> b!720442 (= c!79221 (= lt!319802 k!2102))))

(declare-fun b!720443 () Bool)

(assert (=> b!720443 (= e!404114 (Found!7116 (index!30833 lt!319803)))))

(declare-fun d!99099 () Bool)

(declare-fun lt!319801 () SeekEntryResult!7116)

(assert (=> d!99099 (and (or (is-Undefined!7116 lt!319801) (not (is-Found!7116 lt!319801)) (and (bvsge (index!30832 lt!319801) #b00000000000000000000000000000000) (bvslt (index!30832 lt!319801) (size!19930 a!3186)))) (or (is-Undefined!7116 lt!319801) (is-Found!7116 lt!319801) (not (is-MissingZero!7116 lt!319801)) (and (bvsge (index!30831 lt!319801) #b00000000000000000000000000000000) (bvslt (index!30831 lt!319801) (size!19930 a!3186)))) (or (is-Undefined!7116 lt!319801) (is-Found!7116 lt!319801) (is-MissingZero!7116 lt!319801) (not (is-MissingVacant!7116 lt!319801)) (and (bvsge (index!30834 lt!319801) #b00000000000000000000000000000000) (bvslt (index!30834 lt!319801) (size!19930 a!3186)))) (or (is-Undefined!7116 lt!319801) (ite (is-Found!7116 lt!319801) (= (select (arr!19509 a!3186) (index!30832 lt!319801)) k!2102) (ite (is-MissingZero!7116 lt!319801) (= (select (arr!19509 a!3186) (index!30831 lt!319801)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7116 lt!319801) (= (select (arr!19509 a!3186) (index!30834 lt!319801)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99099 (= lt!319801 e!404115)))

(declare-fun c!79223 () Bool)

(assert (=> d!99099 (= c!79223 (and (is-Intermediate!7116 lt!319803) (undefined!7928 lt!319803)))))

(assert (=> d!99099 (= lt!319803 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99099 (validMask!0 mask!3328)))

(assert (=> d!99099 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!319801)))

(declare-fun b!720444 () Bool)

(declare-fun c!79222 () Bool)

(assert (=> b!720444 (= c!79222 (= lt!319802 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720444 (= e!404114 e!404116)))

(declare-fun b!720445 () Bool)

(assert (=> b!720445 (= e!404116 (MissingZero!7116 (index!30833 lt!319803)))))

(assert (= (and d!99099 c!79223) b!720440))

(assert (= (and d!99099 (not c!79223)) b!720442))

(assert (= (and b!720442 c!79221) b!720443))

(assert (= (and b!720442 (not c!79221)) b!720444))

(assert (= (and b!720444 c!79222) b!720445))

(assert (= (and b!720444 (not c!79222)) b!720441))

(declare-fun m!675605 () Bool)

(assert (=> b!720441 m!675605))

(declare-fun m!675607 () Bool)

(assert (=> b!720442 m!675607))

(declare-fun m!675609 () Bool)

(assert (=> d!99099 m!675609))

(declare-fun m!675611 () Bool)

(assert (=> d!99099 m!675611))

(declare-fun m!675613 () Bool)

(assert (=> d!99099 m!675613))

(declare-fun m!675615 () Bool)

(assert (=> d!99099 m!675615))

(assert (=> d!99099 m!675385))

(assert (=> d!99099 m!675609))

(declare-fun m!675617 () Bool)

(assert (=> d!99099 m!675617))

(assert (=> b!720051 d!99099))

