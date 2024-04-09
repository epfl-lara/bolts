; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66404 () Bool)

(assert start!66404)

(declare-fun b!764918 () Bool)

(declare-fun res!517623 () Bool)

(declare-fun e!426027 () Bool)

(assert (=> b!764918 (=> (not res!517623) (not e!426027))))

(declare-datatypes ((array!42199 0))(
  ( (array!42200 (arr!20202 (Array (_ BitVec 32) (_ BitVec 64))) (size!20623 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42199)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!764918 (= res!517623 (and (= (size!20623 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20623 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20623 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!764920 () Bool)

(declare-fun res!517621 () Bool)

(assert (=> b!764920 (=> (not res!517621) (not e!426027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764920 (= res!517621 (validKeyInArray!0 (select (arr!20202 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!426028 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!764921 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7809 0))(
  ( (MissingZero!7809 (index!33603 (_ BitVec 32))) (Found!7809 (index!33604 (_ BitVec 32))) (Intermediate!7809 (undefined!8621 Bool) (index!33605 (_ BitVec 32)) (x!64535 (_ BitVec 32))) (Undefined!7809) (MissingVacant!7809 (index!33606 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42199 (_ BitVec 32)) SeekEntryResult!7809)

(assert (=> b!764921 (= e!426028 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) (Found!7809 j!159)))))

(declare-fun b!764922 () Bool)

(declare-fun e!426030 () Bool)

(declare-fun e!426032 () Bool)

(assert (=> b!764922 (= e!426030 e!426032)))

(declare-fun res!517619 () Bool)

(assert (=> b!764922 (=> (not res!517619) (not e!426032))))

(declare-fun lt!340345 () (_ BitVec 64))

(declare-fun lt!340341 () array!42199)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42199 (_ BitVec 32)) SeekEntryResult!7809)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764922 (= res!517619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340345 mask!3328) lt!340345 lt!340341 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340345 lt!340341 mask!3328)))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!764922 (= lt!340345 (select (store (arr!20202 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764922 (= lt!340341 (array!42200 (store (arr!20202 a!3186) i!1173 k!2102) (size!20623 a!3186)))))

(declare-fun b!764923 () Bool)

(declare-fun res!517624 () Bool)

(declare-fun e!426026 () Bool)

(assert (=> b!764923 (=> (not res!517624) (not e!426026))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764923 (= res!517624 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20623 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20623 a!3186))))))

(declare-fun b!764924 () Bool)

(assert (=> b!764924 (= e!426026 e!426030)))

(declare-fun res!517626 () Bool)

(assert (=> b!764924 (=> (not res!517626) (not e!426030))))

(declare-fun lt!340342 () SeekEntryResult!7809)

(assert (=> b!764924 (= res!517626 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328) (select (arr!20202 a!3186) j!159) a!3186 mask!3328) lt!340342))))

(assert (=> b!764924 (= lt!340342 (Intermediate!7809 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764925 () Bool)

(declare-fun res!517627 () Bool)

(assert (=> b!764925 (=> (not res!517627) (not e!426027))))

(declare-fun arrayContainsKey!0 (array!42199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764925 (= res!517627 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764926 () Bool)

(declare-fun res!517620 () Bool)

(assert (=> b!764926 (=> (not res!517620) (not e!426026))))

(declare-datatypes ((List!14257 0))(
  ( (Nil!14254) (Cons!14253 (h!15340 (_ BitVec 64)) (t!20580 List!14257)) )
))
(declare-fun arrayNoDuplicates!0 (array!42199 (_ BitVec 32) List!14257) Bool)

(assert (=> b!764926 (= res!517620 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14254))))

(declare-fun b!764927 () Bool)

(assert (=> b!764927 (= e!426027 e!426026)))

(declare-fun res!517622 () Bool)

(assert (=> b!764927 (=> (not res!517622) (not e!426026))))

(declare-fun lt!340344 () SeekEntryResult!7809)

(assert (=> b!764927 (= res!517622 (or (= lt!340344 (MissingZero!7809 i!1173)) (= lt!340344 (MissingVacant!7809 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42199 (_ BitVec 32)) SeekEntryResult!7809)

(assert (=> b!764927 (= lt!340344 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!764928 () Bool)

(declare-fun res!517629 () Bool)

(assert (=> b!764928 (=> (not res!517629) (not e!426030))))

(assert (=> b!764928 (= res!517629 e!426028)))

(declare-fun c!84039 () Bool)

(assert (=> b!764928 (= c!84039 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764929 () Bool)

(declare-fun res!517625 () Bool)

(assert (=> b!764929 (=> (not res!517625) (not e!426027))))

(assert (=> b!764929 (= res!517625 (validKeyInArray!0 k!2102))))

(declare-fun e!426031 () Bool)

(declare-fun b!764930 () Bool)

(assert (=> b!764930 (= e!426031 (= (seekEntryOrOpen!0 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) (Found!7809 j!159)))))

(declare-fun b!764931 () Bool)

(declare-fun res!517617 () Bool)

(assert (=> b!764931 (=> (not res!517617) (not e!426026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42199 (_ BitVec 32)) Bool)

(assert (=> b!764931 (= res!517617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764932 () Bool)

(assert (=> b!764932 (= e!426032 (not (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) (Found!7809 j!159))))))

(assert (=> b!764932 e!426031))

(declare-fun res!517616 () Bool)

(assert (=> b!764932 (=> (not res!517616) (not e!426031))))

(assert (=> b!764932 (= res!517616 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26344 0))(
  ( (Unit!26345) )
))
(declare-fun lt!340343 () Unit!26344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26344)

(assert (=> b!764932 (= lt!340343 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764933 () Bool)

(declare-fun res!517628 () Bool)

(assert (=> b!764933 (=> (not res!517628) (not e!426030))))

(assert (=> b!764933 (= res!517628 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20202 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764919 () Bool)

(assert (=> b!764919 (= e!426028 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) lt!340342))))

(declare-fun res!517618 () Bool)

(assert (=> start!66404 (=> (not res!517618) (not e!426027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66404 (= res!517618 (validMask!0 mask!3328))))

(assert (=> start!66404 e!426027))

(assert (=> start!66404 true))

(declare-fun array_inv!15976 (array!42199) Bool)

(assert (=> start!66404 (array_inv!15976 a!3186)))

(assert (= (and start!66404 res!517618) b!764918))

(assert (= (and b!764918 res!517623) b!764920))

(assert (= (and b!764920 res!517621) b!764929))

(assert (= (and b!764929 res!517625) b!764925))

(assert (= (and b!764925 res!517627) b!764927))

(assert (= (and b!764927 res!517622) b!764931))

(assert (= (and b!764931 res!517617) b!764926))

(assert (= (and b!764926 res!517620) b!764923))

(assert (= (and b!764923 res!517624) b!764924))

(assert (= (and b!764924 res!517626) b!764933))

(assert (= (and b!764933 res!517628) b!764928))

(assert (= (and b!764928 c!84039) b!764919))

(assert (= (and b!764928 (not c!84039)) b!764921))

(assert (= (and b!764928 res!517629) b!764922))

(assert (= (and b!764922 res!517619) b!764932))

(assert (= (and b!764932 res!517616) b!764930))

(declare-fun m!711215 () Bool)

(assert (=> start!66404 m!711215))

(declare-fun m!711217 () Bool)

(assert (=> start!66404 m!711217))

(declare-fun m!711219 () Bool)

(assert (=> b!764926 m!711219))

(declare-fun m!711221 () Bool)

(assert (=> b!764922 m!711221))

(declare-fun m!711223 () Bool)

(assert (=> b!764922 m!711223))

(declare-fun m!711225 () Bool)

(assert (=> b!764922 m!711225))

(declare-fun m!711227 () Bool)

(assert (=> b!764922 m!711227))

(assert (=> b!764922 m!711223))

(declare-fun m!711229 () Bool)

(assert (=> b!764922 m!711229))

(declare-fun m!711231 () Bool)

(assert (=> b!764921 m!711231))

(assert (=> b!764921 m!711231))

(declare-fun m!711233 () Bool)

(assert (=> b!764921 m!711233))

(declare-fun m!711235 () Bool)

(assert (=> b!764929 m!711235))

(assert (=> b!764930 m!711231))

(assert (=> b!764930 m!711231))

(declare-fun m!711237 () Bool)

(assert (=> b!764930 m!711237))

(declare-fun m!711239 () Bool)

(assert (=> b!764931 m!711239))

(assert (=> b!764919 m!711231))

(assert (=> b!764919 m!711231))

(declare-fun m!711241 () Bool)

(assert (=> b!764919 m!711241))

(declare-fun m!711243 () Bool)

(assert (=> b!764925 m!711243))

(assert (=> b!764920 m!711231))

(assert (=> b!764920 m!711231))

(declare-fun m!711245 () Bool)

(assert (=> b!764920 m!711245))

(assert (=> b!764932 m!711231))

(assert (=> b!764932 m!711231))

(declare-fun m!711247 () Bool)

(assert (=> b!764932 m!711247))

(declare-fun m!711249 () Bool)

(assert (=> b!764932 m!711249))

(declare-fun m!711251 () Bool)

(assert (=> b!764932 m!711251))

(declare-fun m!711253 () Bool)

(assert (=> b!764927 m!711253))

(assert (=> b!764924 m!711231))

(assert (=> b!764924 m!711231))

(declare-fun m!711255 () Bool)

(assert (=> b!764924 m!711255))

(assert (=> b!764924 m!711255))

(assert (=> b!764924 m!711231))

(declare-fun m!711257 () Bool)

(assert (=> b!764924 m!711257))

(declare-fun m!711259 () Bool)

(assert (=> b!764933 m!711259))

(push 1)

(assert (not start!66404))

(assert (not b!764931))

(assert (not b!764925))

(assert (not b!764922))

(assert (not b!764927))

(assert (not b!764921))

(assert (not b!764924))

(assert (not b!764930))

(assert (not b!764919))

(assert (not b!764920))

(assert (not b!764929))

(assert (not b!764926))

(assert (not b!764932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!765068 () Bool)

(declare-fun e!426098 () Bool)

(declare-fun contains!4077 (List!14257 (_ BitVec 64)) Bool)

(assert (=> b!765068 (= e!426098 (contains!4077 Nil!14254 (select (arr!20202 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!765069 () Bool)

(declare-fun e!426099 () Bool)

(declare-fun e!426100 () Bool)

(assert (=> b!765069 (= e!426099 e!426100)))

(declare-fun c!84057 () Bool)

(assert (=> b!765069 (= c!84057 (validKeyInArray!0 (select (arr!20202 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!765070 () Bool)

(declare-fun call!35025 () Bool)

(assert (=> b!765070 (= e!426100 call!35025)))

(declare-fun b!765067 () Bool)

(declare-fun e!426101 () Bool)

(assert (=> b!765067 (= e!426101 e!426099)))

(declare-fun res!517729 () Bool)

(assert (=> b!765067 (=> (not res!517729) (not e!426099))))

(assert (=> b!765067 (= res!517729 (not e!426098))))

(declare-fun res!517730 () Bool)

(assert (=> b!765067 (=> (not res!517730) (not e!426098))))

(assert (=> b!765067 (= res!517730 (validKeyInArray!0 (select (arr!20202 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101007 () Bool)

(declare-fun res!517731 () Bool)

(assert (=> d!101007 (=> res!517731 e!426101)))

(assert (=> d!101007 (= res!517731 (bvsge #b00000000000000000000000000000000 (size!20623 a!3186)))))

(assert (=> d!101007 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14254) e!426101)))

(declare-fun bm!35022 () Bool)

(assert (=> bm!35022 (= call!35025 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84057 (Cons!14253 (select (arr!20202 a!3186) #b00000000000000000000000000000000) Nil!14254) Nil!14254)))))

(declare-fun b!765071 () Bool)

(assert (=> b!765071 (= e!426100 call!35025)))

(assert (= (and d!101007 (not res!517731)) b!765067))

(assert (= (and b!765067 res!517730) b!765068))

(assert (= (and b!765067 res!517729) b!765069))

(assert (= (and b!765069 c!84057) b!765070))

(assert (= (and b!765069 (not c!84057)) b!765071))

(assert (= (or b!765070 b!765071) bm!35022))

(declare-fun m!711361 () Bool)

(assert (=> b!765068 m!711361))

(assert (=> b!765068 m!711361))

(declare-fun m!711363 () Bool)

(assert (=> b!765068 m!711363))

(assert (=> b!765069 m!711361))

(assert (=> b!765069 m!711361))

(declare-fun m!711365 () Bool)

(assert (=> b!765069 m!711365))

(assert (=> b!765067 m!711361))

(assert (=> b!765067 m!711361))

(assert (=> b!765067 m!711365))

(assert (=> bm!35022 m!711361))

(declare-fun m!711367 () Bool)

(assert (=> bm!35022 m!711367))

(assert (=> b!764926 d!101007))

(declare-fun b!765084 () Bool)

(declare-fun e!426110 () SeekEntryResult!7809)

(assert (=> b!765084 (= e!426110 Undefined!7809)))

(declare-fun b!765086 () Bool)

(declare-fun e!426108 () SeekEntryResult!7809)

(declare-fun lt!340395 () SeekEntryResult!7809)

(assert (=> b!765086 (= e!426108 (MissingZero!7809 (index!33605 lt!340395)))))

(declare-fun b!765087 () Bool)

(declare-fun e!426109 () SeekEntryResult!7809)

(assert (=> b!765087 (= e!426109 (Found!7809 (index!33605 lt!340395)))))

(declare-fun d!101011 () Bool)

(declare-fun lt!340396 () SeekEntryResult!7809)

(assert (=> d!101011 (and (or (is-Undefined!7809 lt!340396) (not (is-Found!7809 lt!340396)) (and (bvsge (index!33604 lt!340396) #b00000000000000000000000000000000) (bvslt (index!33604 lt!340396) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340396) (is-Found!7809 lt!340396) (not (is-MissingZero!7809 lt!340396)) (and (bvsge (index!33603 lt!340396) #b00000000000000000000000000000000) (bvslt (index!33603 lt!340396) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340396) (is-Found!7809 lt!340396) (is-MissingZero!7809 lt!340396) (not (is-MissingVacant!7809 lt!340396)) (and (bvsge (index!33606 lt!340396) #b00000000000000000000000000000000) (bvslt (index!33606 lt!340396) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340396) (ite (is-Found!7809 lt!340396) (= (select (arr!20202 a!3186) (index!33604 lt!340396)) k!2102) (ite (is-MissingZero!7809 lt!340396) (= (select (arr!20202 a!3186) (index!33603 lt!340396)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7809 lt!340396) (= (select (arr!20202 a!3186) (index!33606 lt!340396)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101011 (= lt!340396 e!426110)))

(declare-fun c!84064 () Bool)

(assert (=> d!101011 (= c!84064 (and (is-Intermediate!7809 lt!340395) (undefined!8621 lt!340395)))))

(assert (=> d!101011 (= lt!340395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101011 (validMask!0 mask!3328)))

(assert (=> d!101011 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!340396)))

(declare-fun b!765085 () Bool)

(declare-fun c!84066 () Bool)

(declare-fun lt!340394 () (_ BitVec 64))

(assert (=> b!765085 (= c!84066 (= lt!340394 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765085 (= e!426109 e!426108)))

(declare-fun b!765088 () Bool)

(assert (=> b!765088 (= e!426110 e!426109)))

(assert (=> b!765088 (= lt!340394 (select (arr!20202 a!3186) (index!33605 lt!340395)))))

(declare-fun c!84065 () Bool)

(assert (=> b!765088 (= c!84065 (= lt!340394 k!2102))))

(declare-fun b!765089 () Bool)

(assert (=> b!765089 (= e!426108 (seekKeyOrZeroReturnVacant!0 (x!64535 lt!340395) (index!33605 lt!340395) (index!33605 lt!340395) k!2102 a!3186 mask!3328))))

(assert (= (and d!101011 c!84064) b!765084))

(assert (= (and d!101011 (not c!84064)) b!765088))

(assert (= (and b!765088 c!84065) b!765087))

(assert (= (and b!765088 (not c!84065)) b!765085))

(assert (= (and b!765085 c!84066) b!765086))

(assert (= (and b!765085 (not c!84066)) b!765089))

(declare-fun m!711369 () Bool)

(assert (=> d!101011 m!711369))

(declare-fun m!711371 () Bool)

(assert (=> d!101011 m!711371))

(declare-fun m!711373 () Bool)

(assert (=> d!101011 m!711373))

(declare-fun m!711375 () Bool)

(assert (=> d!101011 m!711375))

(assert (=> d!101011 m!711369))

(assert (=> d!101011 m!711215))

(declare-fun m!711377 () Bool)

(assert (=> d!101011 m!711377))

(declare-fun m!711379 () Bool)

(assert (=> b!765088 m!711379))

(declare-fun m!711381 () Bool)

(assert (=> b!765089 m!711381))

(assert (=> b!764927 d!101011))

(declare-fun d!101017 () Bool)

(assert (=> d!101017 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764929 d!101017))

(declare-fun b!765144 () Bool)

(declare-fun e!426142 () SeekEntryResult!7809)

(assert (=> b!765144 (= e!426142 (Intermediate!7809 true index!1321 x!1131))))

(declare-fun b!765145 () Bool)

(declare-fun lt!340420 () SeekEntryResult!7809)

(assert (=> b!765145 (and (bvsge (index!33605 lt!340420) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340420) (size!20623 a!3186)))))

(declare-fun res!517739 () Bool)

(assert (=> b!765145 (= res!517739 (= (select (arr!20202 a!3186) (index!33605 lt!340420)) (select (arr!20202 a!3186) j!159)))))

(declare-fun e!426143 () Bool)

(assert (=> b!765145 (=> res!517739 e!426143)))

(declare-fun e!426140 () Bool)

(assert (=> b!765145 (= e!426140 e!426143)))

(declare-fun b!765146 () Bool)

(assert (=> b!765146 (and (bvsge (index!33605 lt!340420) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340420) (size!20623 a!3186)))))

(declare-fun res!517741 () Bool)

(assert (=> b!765146 (= res!517741 (= (select (arr!20202 a!3186) (index!33605 lt!340420)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765146 (=> res!517741 e!426143)))

(declare-fun b!765147 () Bool)

(declare-fun e!426139 () SeekEntryResult!7809)

(assert (=> b!765147 (= e!426142 e!426139)))

(declare-fun lt!340419 () (_ BitVec 64))

(declare-fun c!84092 () Bool)

(assert (=> b!765147 (= c!84092 (or (= lt!340419 (select (arr!20202 a!3186) j!159)) (= (bvadd lt!340419 lt!340419) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765148 () Bool)

(declare-fun e!426141 () Bool)

(assert (=> b!765148 (= e!426141 e!426140)))

(declare-fun res!517740 () Bool)

(assert (=> b!765148 (= res!517740 (and (is-Intermediate!7809 lt!340420) (not (undefined!8621 lt!340420)) (bvslt (x!64535 lt!340420) #b01111111111111111111111111111110) (bvsge (x!64535 lt!340420) #b00000000000000000000000000000000) (bvsge (x!64535 lt!340420) x!1131)))))

(assert (=> b!765148 (=> (not res!517740) (not e!426140))))

(declare-fun b!765149 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765149 (= e!426139 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20202 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!765150 () Bool)

(assert (=> b!765150 (= e!426139 (Intermediate!7809 false index!1321 x!1131))))

(declare-fun d!101019 () Bool)

(assert (=> d!101019 e!426141))

(declare-fun c!84093 () Bool)

(assert (=> d!101019 (= c!84093 (and (is-Intermediate!7809 lt!340420) (undefined!8621 lt!340420)))))

(assert (=> d!101019 (= lt!340420 e!426142)))

(declare-fun c!84091 () Bool)

(assert (=> d!101019 (= c!84091 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101019 (= lt!340419 (select (arr!20202 a!3186) index!1321))))

(assert (=> d!101019 (validMask!0 mask!3328)))

(assert (=> d!101019 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) lt!340420)))

(declare-fun b!765151 () Bool)

(assert (=> b!765151 (= e!426141 (bvsge (x!64535 lt!340420) #b01111111111111111111111111111110))))

(declare-fun b!765152 () Bool)

(assert (=> b!765152 (and (bvsge (index!33605 lt!340420) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340420) (size!20623 a!3186)))))

(assert (=> b!765152 (= e!426143 (= (select (arr!20202 a!3186) (index!33605 lt!340420)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101019 c!84091) b!765144))

(assert (= (and d!101019 (not c!84091)) b!765147))

(assert (= (and b!765147 c!84092) b!765150))

(assert (= (and b!765147 (not c!84092)) b!765149))

(assert (= (and d!101019 c!84093) b!765151))

(assert (= (and d!101019 (not c!84093)) b!765148))

(assert (= (and b!765148 res!517740) b!765145))

(assert (= (and b!765145 (not res!517739)) b!765146))

(assert (= (and b!765146 (not res!517741)) b!765152))

(declare-fun m!711403 () Bool)

(assert (=> d!101019 m!711403))

(assert (=> d!101019 m!711215))

(declare-fun m!711405 () Bool)

(assert (=> b!765145 m!711405))

(assert (=> b!765146 m!711405))

(assert (=> b!765152 m!711405))

(declare-fun m!711407 () Bool)

(assert (=> b!765149 m!711407))

(assert (=> b!765149 m!711407))

(assert (=> b!765149 m!711231))

(declare-fun m!711409 () Bool)

(assert (=> b!765149 m!711409))

(assert (=> b!764919 d!101019))

(declare-fun b!765153 () Bool)

(declare-fun e!426146 () SeekEntryResult!7809)

(assert (=> b!765153 (= e!426146 Undefined!7809)))

(declare-fun b!765155 () Bool)

(declare-fun e!426144 () SeekEntryResult!7809)

(declare-fun lt!340422 () SeekEntryResult!7809)

(assert (=> b!765155 (= e!426144 (MissingZero!7809 (index!33605 lt!340422)))))

(declare-fun b!765156 () Bool)

(declare-fun e!426145 () SeekEntryResult!7809)

(assert (=> b!765156 (= e!426145 (Found!7809 (index!33605 lt!340422)))))

(declare-fun d!101027 () Bool)

(declare-fun lt!340423 () SeekEntryResult!7809)

(assert (=> d!101027 (and (or (is-Undefined!7809 lt!340423) (not (is-Found!7809 lt!340423)) (and (bvsge (index!33604 lt!340423) #b00000000000000000000000000000000) (bvslt (index!33604 lt!340423) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340423) (is-Found!7809 lt!340423) (not (is-MissingZero!7809 lt!340423)) (and (bvsge (index!33603 lt!340423) #b00000000000000000000000000000000) (bvslt (index!33603 lt!340423) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340423) (is-Found!7809 lt!340423) (is-MissingZero!7809 lt!340423) (not (is-MissingVacant!7809 lt!340423)) (and (bvsge (index!33606 lt!340423) #b00000000000000000000000000000000) (bvslt (index!33606 lt!340423) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340423) (ite (is-Found!7809 lt!340423) (= (select (arr!20202 a!3186) (index!33604 lt!340423)) (select (arr!20202 a!3186) j!159)) (ite (is-MissingZero!7809 lt!340423) (= (select (arr!20202 a!3186) (index!33603 lt!340423)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7809 lt!340423) (= (select (arr!20202 a!3186) (index!33606 lt!340423)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101027 (= lt!340423 e!426146)))

(declare-fun c!84094 () Bool)

(assert (=> d!101027 (= c!84094 (and (is-Intermediate!7809 lt!340422) (undefined!8621 lt!340422)))))

(assert (=> d!101027 (= lt!340422 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328) (select (arr!20202 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101027 (validMask!0 mask!3328)))

(assert (=> d!101027 (= (seekEntryOrOpen!0 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) lt!340423)))

(declare-fun b!765154 () Bool)

(declare-fun c!84096 () Bool)

(declare-fun lt!340421 () (_ BitVec 64))

(assert (=> b!765154 (= c!84096 (= lt!340421 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765154 (= e!426145 e!426144)))

(declare-fun b!765157 () Bool)

(assert (=> b!765157 (= e!426146 e!426145)))

(assert (=> b!765157 (= lt!340421 (select (arr!20202 a!3186) (index!33605 lt!340422)))))

(declare-fun c!84095 () Bool)

(assert (=> b!765157 (= c!84095 (= lt!340421 (select (arr!20202 a!3186) j!159)))))

(declare-fun b!765158 () Bool)

(assert (=> b!765158 (= e!426144 (seekKeyOrZeroReturnVacant!0 (x!64535 lt!340422) (index!33605 lt!340422) (index!33605 lt!340422) (select (arr!20202 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101027 c!84094) b!765153))

(assert (= (and d!101027 (not c!84094)) b!765157))

(assert (= (and b!765157 c!84095) b!765156))

(assert (= (and b!765157 (not c!84095)) b!765154))

(assert (= (and b!765154 c!84096) b!765155))

(assert (= (and b!765154 (not c!84096)) b!765158))

(assert (=> d!101027 m!711255))

(assert (=> d!101027 m!711231))

(assert (=> d!101027 m!711257))

(declare-fun m!711411 () Bool)

(assert (=> d!101027 m!711411))

(declare-fun m!711413 () Bool)

(assert (=> d!101027 m!711413))

(assert (=> d!101027 m!711231))

(assert (=> d!101027 m!711255))

(assert (=> d!101027 m!711215))

(declare-fun m!711415 () Bool)

(assert (=> d!101027 m!711415))

(declare-fun m!711417 () Bool)

(assert (=> b!765157 m!711417))

(assert (=> b!765158 m!711231))

(declare-fun m!711419 () Bool)

(assert (=> b!765158 m!711419))

(assert (=> b!764930 d!101027))

(declare-fun b!765191 () Bool)

(declare-fun e!426165 () Bool)

(declare-fun e!426166 () Bool)

(assert (=> b!765191 (= e!426165 e!426166)))

(declare-fun lt!340440 () (_ BitVec 64))

(assert (=> b!765191 (= lt!340440 (select (arr!20202 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!340441 () Unit!26344)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42199 (_ BitVec 64) (_ BitVec 32)) Unit!26344)

(assert (=> b!765191 (= lt!340441 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340440 #b00000000000000000000000000000000))))

(assert (=> b!765191 (arrayContainsKey!0 a!3186 lt!340440 #b00000000000000000000000000000000)))

(declare-fun lt!340439 () Unit!26344)

(assert (=> b!765191 (= lt!340439 lt!340441)))

(declare-fun res!517747 () Bool)

(assert (=> b!765191 (= res!517747 (= (seekEntryOrOpen!0 (select (arr!20202 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7809 #b00000000000000000000000000000000)))))

(assert (=> b!765191 (=> (not res!517747) (not e!426166))))

(declare-fun b!765192 () Bool)

(declare-fun e!426167 () Bool)

(assert (=> b!765192 (= e!426167 e!426165)))

(declare-fun c!84111 () Bool)

(assert (=> b!765192 (= c!84111 (validKeyInArray!0 (select (arr!20202 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35025 () Bool)

(declare-fun call!35028 () Bool)

(assert (=> bm!35025 (= call!35028 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!765194 () Bool)

(assert (=> b!765194 (= e!426166 call!35028)))

(declare-fun d!101029 () Bool)

(declare-fun res!517746 () Bool)

(assert (=> d!101029 (=> res!517746 e!426167)))

(assert (=> d!101029 (= res!517746 (bvsge #b00000000000000000000000000000000 (size!20623 a!3186)))))

(assert (=> d!101029 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!426167)))

(declare-fun b!765193 () Bool)

(assert (=> b!765193 (= e!426165 call!35028)))

(assert (= (and d!101029 (not res!517746)) b!765192))

(assert (= (and b!765192 c!84111) b!765191))

(assert (= (and b!765192 (not c!84111)) b!765193))

(assert (= (and b!765191 res!517747) b!765194))

(assert (= (or b!765194 b!765193) bm!35025))

(assert (=> b!765191 m!711361))

(declare-fun m!711445 () Bool)

(assert (=> b!765191 m!711445))

(declare-fun m!711447 () Bool)

(assert (=> b!765191 m!711447))

(assert (=> b!765191 m!711361))

(declare-fun m!711449 () Bool)

(assert (=> b!765191 m!711449))

(assert (=> b!765192 m!711361))

(assert (=> b!765192 m!711361))

(assert (=> b!765192 m!711365))

(declare-fun m!711451 () Bool)

(assert (=> bm!35025 m!711451))

(assert (=> b!764931 d!101029))

(declare-fun d!101035 () Bool)

(assert (=> d!101035 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66404 d!101035))

(declare-fun d!101043 () Bool)

(assert (=> d!101043 (= (array_inv!15976 a!3186) (bvsge (size!20623 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66404 d!101043))

(declare-fun d!101047 () Bool)

(assert (=> d!101047 (= (validKeyInArray!0 (select (arr!20202 a!3186) j!159)) (and (not (= (select (arr!20202 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20202 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764920 d!101047))

(declare-fun b!765301 () Bool)

(declare-fun e!426238 () SeekEntryResult!7809)

(declare-fun e!426237 () SeekEntryResult!7809)

(assert (=> b!765301 (= e!426238 e!426237)))

(declare-fun lt!340484 () (_ BitVec 64))

(declare-fun c!84144 () Bool)

(assert (=> b!765301 (= c!84144 (= lt!340484 (select (arr!20202 a!3186) j!159)))))

(declare-fun b!765302 () Bool)

(assert (=> b!765302 (= e!426238 Undefined!7809)))

(declare-fun b!765303 () Bool)

(assert (=> b!765303 (= e!426237 (Found!7809 index!1321))))

(declare-fun d!101049 () Bool)

(declare-fun lt!340485 () SeekEntryResult!7809)

(assert (=> d!101049 (and (or (is-Undefined!7809 lt!340485) (not (is-Found!7809 lt!340485)) (and (bvsge (index!33604 lt!340485) #b00000000000000000000000000000000) (bvslt (index!33604 lt!340485) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340485) (is-Found!7809 lt!340485) (not (is-MissingVacant!7809 lt!340485)) (not (= (index!33606 lt!340485) resIntermediateIndex!5)) (and (bvsge (index!33606 lt!340485) #b00000000000000000000000000000000) (bvslt (index!33606 lt!340485) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340485) (ite (is-Found!7809 lt!340485) (= (select (arr!20202 a!3186) (index!33604 lt!340485)) (select (arr!20202 a!3186) j!159)) (and (is-MissingVacant!7809 lt!340485) (= (index!33606 lt!340485) resIntermediateIndex!5) (= (select (arr!20202 a!3186) (index!33606 lt!340485)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101049 (= lt!340485 e!426238)))

(declare-fun c!84146 () Bool)

(assert (=> d!101049 (= c!84146 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101049 (= lt!340484 (select (arr!20202 a!3186) index!1321))))

(assert (=> d!101049 (validMask!0 mask!3328)))

(assert (=> d!101049 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) lt!340485)))

(declare-fun e!426236 () SeekEntryResult!7809)

(declare-fun b!765304 () Bool)

(assert (=> b!765304 (= e!426236 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20202 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!765305 () Bool)

(assert (=> b!765305 (= e!426236 (MissingVacant!7809 resIntermediateIndex!5))))

(declare-fun b!765306 () Bool)

(declare-fun c!84145 () Bool)

(assert (=> b!765306 (= c!84145 (= lt!340484 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765306 (= e!426237 e!426236)))

(assert (= (and d!101049 c!84146) b!765302))

(assert (= (and d!101049 (not c!84146)) b!765301))

(assert (= (and b!765301 c!84144) b!765303))

(assert (= (and b!765301 (not c!84144)) b!765306))

(assert (= (and b!765306 c!84145) b!765305))

(assert (= (and b!765306 (not c!84145)) b!765304))

(declare-fun m!711509 () Bool)

(assert (=> d!101049 m!711509))

(declare-fun m!711511 () Bool)

(assert (=> d!101049 m!711511))

(assert (=> d!101049 m!711403))

(assert (=> d!101049 m!711215))

(assert (=> b!765304 m!711407))

(assert (=> b!765304 m!711407))

(assert (=> b!765304 m!711231))

(declare-fun m!711513 () Bool)

(assert (=> b!765304 m!711513))

(assert (=> b!764921 d!101049))

(declare-fun b!765307 () Bool)

(declare-fun e!426241 () SeekEntryResult!7809)

(declare-fun e!426240 () SeekEntryResult!7809)

(assert (=> b!765307 (= e!426241 e!426240)))

(declare-fun c!84147 () Bool)

(declare-fun lt!340486 () (_ BitVec 64))

(assert (=> b!765307 (= c!84147 (= lt!340486 (select (arr!20202 a!3186) j!159)))))

(declare-fun b!765308 () Bool)

(assert (=> b!765308 (= e!426241 Undefined!7809)))

(declare-fun b!765309 () Bool)

(assert (=> b!765309 (= e!426240 (Found!7809 resIntermediateIndex!5))))

(declare-fun lt!340487 () SeekEntryResult!7809)

(declare-fun d!101065 () Bool)

(assert (=> d!101065 (and (or (is-Undefined!7809 lt!340487) (not (is-Found!7809 lt!340487)) (and (bvsge (index!33604 lt!340487) #b00000000000000000000000000000000) (bvslt (index!33604 lt!340487) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340487) (is-Found!7809 lt!340487) (not (is-MissingVacant!7809 lt!340487)) (not (= (index!33606 lt!340487) resIntermediateIndex!5)) (and (bvsge (index!33606 lt!340487) #b00000000000000000000000000000000) (bvslt (index!33606 lt!340487) (size!20623 a!3186)))) (or (is-Undefined!7809 lt!340487) (ite (is-Found!7809 lt!340487) (= (select (arr!20202 a!3186) (index!33604 lt!340487)) (select (arr!20202 a!3186) j!159)) (and (is-MissingVacant!7809 lt!340487) (= (index!33606 lt!340487) resIntermediateIndex!5) (= (select (arr!20202 a!3186) (index!33606 lt!340487)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101065 (= lt!340487 e!426241)))

(declare-fun c!84149 () Bool)

(assert (=> d!101065 (= c!84149 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101065 (= lt!340486 (select (arr!20202 a!3186) resIntermediateIndex!5))))

(assert (=> d!101065 (validMask!0 mask!3328)))

(assert (=> d!101065 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) lt!340487)))

(declare-fun b!765310 () Bool)

(declare-fun e!426239 () SeekEntryResult!7809)

(assert (=> b!765310 (= e!426239 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20202 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!765311 () Bool)

(assert (=> b!765311 (= e!426239 (MissingVacant!7809 resIntermediateIndex!5))))

(declare-fun b!765312 () Bool)

(declare-fun c!84148 () Bool)

(assert (=> b!765312 (= c!84148 (= lt!340486 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765312 (= e!426240 e!426239)))

(assert (= (and d!101065 c!84149) b!765308))

(assert (= (and d!101065 (not c!84149)) b!765307))

(assert (= (and b!765307 c!84147) b!765309))

(assert (= (and b!765307 (not c!84147)) b!765312))

(assert (= (and b!765312 c!84148) b!765311))

(assert (= (and b!765312 (not c!84148)) b!765310))

(declare-fun m!711515 () Bool)

(assert (=> d!101065 m!711515))

(declare-fun m!711517 () Bool)

(assert (=> d!101065 m!711517))

(assert (=> d!101065 m!711259))

(assert (=> d!101065 m!711215))

(declare-fun m!711519 () Bool)

(assert (=> b!765310 m!711519))

(assert (=> b!765310 m!711519))

(assert (=> b!765310 m!711231))

(declare-fun m!711521 () Bool)

(assert (=> b!765310 m!711521))

(assert (=> b!764932 d!101065))

(declare-fun b!765318 () Bool)

(declare-fun e!426246 () Bool)

(declare-fun e!426247 () Bool)

(assert (=> b!765318 (= e!426246 e!426247)))

(declare-fun lt!340489 () (_ BitVec 64))

(assert (=> b!765318 (= lt!340489 (select (arr!20202 a!3186) j!159))))

(declare-fun lt!340490 () Unit!26344)

(assert (=> b!765318 (= lt!340490 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340489 j!159))))

(assert (=> b!765318 (arrayContainsKey!0 a!3186 lt!340489 #b00000000000000000000000000000000)))

(declare-fun lt!340488 () Unit!26344)

(assert (=> b!765318 (= lt!340488 lt!340490)))

(declare-fun res!517795 () Bool)

(assert (=> b!765318 (= res!517795 (= (seekEntryOrOpen!0 (select (arr!20202 a!3186) j!159) a!3186 mask!3328) (Found!7809 j!159)))))

(assert (=> b!765318 (=> (not res!517795) (not e!426247))))

(declare-fun b!765319 () Bool)

(declare-fun e!426248 () Bool)

(assert (=> b!765319 (= e!426248 e!426246)))

(declare-fun c!84151 () Bool)

(assert (=> b!765319 (= c!84151 (validKeyInArray!0 (select (arr!20202 a!3186) j!159)))))

(declare-fun call!35038 () Bool)

(declare-fun bm!35035 () Bool)

(assert (=> bm!35035 (= call!35038 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!765321 () Bool)

(assert (=> b!765321 (= e!426247 call!35038)))

(declare-fun d!101067 () Bool)

(declare-fun res!517794 () Bool)

(assert (=> d!101067 (=> res!517794 e!426248)))

(assert (=> d!101067 (= res!517794 (bvsge j!159 (size!20623 a!3186)))))

(assert (=> d!101067 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!426248)))

(declare-fun b!765320 () Bool)

(assert (=> b!765320 (= e!426246 call!35038)))

(assert (= (and d!101067 (not res!517794)) b!765319))

(assert (= (and b!765319 c!84151) b!765318))

(assert (= (and b!765319 (not c!84151)) b!765320))

(assert (= (and b!765318 res!517795) b!765321))

(assert (= (or b!765321 b!765320) bm!35035))

(assert (=> b!765318 m!711231))

(declare-fun m!711523 () Bool)

(assert (=> b!765318 m!711523))

(declare-fun m!711527 () Bool)

(assert (=> b!765318 m!711527))

(assert (=> b!765318 m!711231))

(assert (=> b!765318 m!711237))

(assert (=> b!765319 m!711231))

(assert (=> b!765319 m!711231))

(assert (=> b!765319 m!711245))

(declare-fun m!711531 () Bool)

(assert (=> bm!35035 m!711531))

(assert (=> b!764932 d!101067))

(declare-fun d!101069 () Bool)

(assert (=> d!101069 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!340500 () Unit!26344)

(declare-fun choose!38 (array!42199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26344)

(assert (=> d!101069 (= lt!340500 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101069 (validMask!0 mask!3328)))

(assert (=> d!101069 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!340500)))

(declare-fun bs!21477 () Bool)

(assert (= bs!21477 d!101069))

(assert (=> bs!21477 m!711249))

(declare-fun m!711551 () Bool)

(assert (=> bs!21477 m!711551))

(assert (=> bs!21477 m!711215))

(assert (=> b!764932 d!101069))

(declare-fun b!765341 () Bool)

(declare-fun e!426263 () SeekEntryResult!7809)

(assert (=> b!765341 (= e!426263 (Intermediate!7809 true (toIndex!0 lt!340345 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!765342 () Bool)

(declare-fun lt!340502 () SeekEntryResult!7809)

(assert (=> b!765342 (and (bvsge (index!33605 lt!340502) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340502) (size!20623 lt!340341)))))

(declare-fun res!517801 () Bool)

(assert (=> b!765342 (= res!517801 (= (select (arr!20202 lt!340341) (index!33605 lt!340502)) lt!340345))))

(declare-fun e!426264 () Bool)

(assert (=> b!765342 (=> res!517801 e!426264)))

(declare-fun e!426261 () Bool)

(assert (=> b!765342 (= e!426261 e!426264)))

(declare-fun b!765343 () Bool)

(assert (=> b!765343 (and (bvsge (index!33605 lt!340502) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340502) (size!20623 lt!340341)))))

(declare-fun res!517803 () Bool)

(assert (=> b!765343 (= res!517803 (= (select (arr!20202 lt!340341) (index!33605 lt!340502)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765343 (=> res!517803 e!426264)))

(declare-fun b!765344 () Bool)

(declare-fun e!426260 () SeekEntryResult!7809)

(assert (=> b!765344 (= e!426263 e!426260)))

(declare-fun c!84160 () Bool)

(declare-fun lt!340501 () (_ BitVec 64))

(assert (=> b!765344 (= c!84160 (or (= lt!340501 lt!340345) (= (bvadd lt!340501 lt!340501) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765345 () Bool)

(declare-fun e!426262 () Bool)

(assert (=> b!765345 (= e!426262 e!426261)))

(declare-fun res!517802 () Bool)

(assert (=> b!765345 (= res!517802 (and (is-Intermediate!7809 lt!340502) (not (undefined!8621 lt!340502)) (bvslt (x!64535 lt!340502) #b01111111111111111111111111111110) (bvsge (x!64535 lt!340502) #b00000000000000000000000000000000) (bvsge (x!64535 lt!340502) #b00000000000000000000000000000000)))))

(assert (=> b!765345 (=> (not res!517802) (not e!426261))))

(declare-fun b!765346 () Bool)

(assert (=> b!765346 (= e!426260 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340345 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340345 lt!340341 mask!3328))))

(declare-fun b!765347 () Bool)

(assert (=> b!765347 (= e!426260 (Intermediate!7809 false (toIndex!0 lt!340345 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101083 () Bool)

(assert (=> d!101083 e!426262))

(declare-fun c!84161 () Bool)

(assert (=> d!101083 (= c!84161 (and (is-Intermediate!7809 lt!340502) (undefined!8621 lt!340502)))))

(assert (=> d!101083 (= lt!340502 e!426263)))

(declare-fun c!84159 () Bool)

(assert (=> d!101083 (= c!84159 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101083 (= lt!340501 (select (arr!20202 lt!340341) (toIndex!0 lt!340345 mask!3328)))))

(assert (=> d!101083 (validMask!0 mask!3328)))

(assert (=> d!101083 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340345 mask!3328) lt!340345 lt!340341 mask!3328) lt!340502)))

(declare-fun b!765348 () Bool)

(assert (=> b!765348 (= e!426262 (bvsge (x!64535 lt!340502) #b01111111111111111111111111111110))))

(declare-fun b!765349 () Bool)

(assert (=> b!765349 (and (bvsge (index!33605 lt!340502) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340502) (size!20623 lt!340341)))))

(assert (=> b!765349 (= e!426264 (= (select (arr!20202 lt!340341) (index!33605 lt!340502)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101083 c!84159) b!765341))

(assert (= (and d!101083 (not c!84159)) b!765344))

(assert (= (and b!765344 c!84160) b!765347))

(assert (= (and b!765344 (not c!84160)) b!765346))

(assert (= (and d!101083 c!84161) b!765348))

(assert (= (and d!101083 (not c!84161)) b!765345))

(assert (= (and b!765345 res!517802) b!765342))

(assert (= (and b!765342 (not res!517801)) b!765343))

(assert (= (and b!765343 (not res!517803)) b!765349))

(assert (=> d!101083 m!711223))

(declare-fun m!711553 () Bool)

(assert (=> d!101083 m!711553))

(assert (=> d!101083 m!711215))

(declare-fun m!711555 () Bool)

(assert (=> b!765342 m!711555))

(assert (=> b!765343 m!711555))

(assert (=> b!765349 m!711555))

(assert (=> b!765346 m!711223))

(declare-fun m!711557 () Bool)

(assert (=> b!765346 m!711557))

(assert (=> b!765346 m!711557))

(declare-fun m!711559 () Bool)

(assert (=> b!765346 m!711559))

(assert (=> b!764922 d!101083))

(declare-fun d!101085 () Bool)

(declare-fun lt!340515 () (_ BitVec 32))

(declare-fun lt!340514 () (_ BitVec 32))

(assert (=> d!101085 (= lt!340515 (bvmul (bvxor lt!340514 (bvlshr lt!340514 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101085 (= lt!340514 ((_ extract 31 0) (bvand (bvxor lt!340345 (bvlshr lt!340345 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101085 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517804 (let ((h!15345 ((_ extract 31 0) (bvand (bvxor lt!340345 (bvlshr lt!340345 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64545 (bvmul (bvxor h!15345 (bvlshr h!15345 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64545 (bvlshr x!64545 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517804 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517804 #b00000000000000000000000000000000))))))

(assert (=> d!101085 (= (toIndex!0 lt!340345 mask!3328) (bvand (bvxor lt!340515 (bvlshr lt!340515 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764922 d!101085))

(declare-fun b!765362 () Bool)

(declare-fun e!426274 () SeekEntryResult!7809)

(assert (=> b!765362 (= e!426274 (Intermediate!7809 true index!1321 x!1131))))

(declare-fun b!765363 () Bool)

(declare-fun lt!340517 () SeekEntryResult!7809)

(assert (=> b!765363 (and (bvsge (index!33605 lt!340517) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340517) (size!20623 lt!340341)))))

(declare-fun res!517805 () Bool)

(assert (=> b!765363 (= res!517805 (= (select (arr!20202 lt!340341) (index!33605 lt!340517)) lt!340345))))

(declare-fun e!426275 () Bool)

(assert (=> b!765363 (=> res!517805 e!426275)))

(declare-fun e!426272 () Bool)

(assert (=> b!765363 (= e!426272 e!426275)))

(declare-fun b!765364 () Bool)

(assert (=> b!765364 (and (bvsge (index!33605 lt!340517) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340517) (size!20623 lt!340341)))))

(declare-fun res!517807 () Bool)

(assert (=> b!765364 (= res!517807 (= (select (arr!20202 lt!340341) (index!33605 lt!340517)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765364 (=> res!517807 e!426275)))

(declare-fun b!765365 () Bool)

(declare-fun e!426271 () SeekEntryResult!7809)

(assert (=> b!765365 (= e!426274 e!426271)))

(declare-fun c!84169 () Bool)

(declare-fun lt!340516 () (_ BitVec 64))

(assert (=> b!765365 (= c!84169 (or (= lt!340516 lt!340345) (= (bvadd lt!340516 lt!340516) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765366 () Bool)

(declare-fun e!426273 () Bool)

(assert (=> b!765366 (= e!426273 e!426272)))

(declare-fun res!517806 () Bool)

(assert (=> b!765366 (= res!517806 (and (is-Intermediate!7809 lt!340517) (not (undefined!8621 lt!340517)) (bvslt (x!64535 lt!340517) #b01111111111111111111111111111110) (bvsge (x!64535 lt!340517) #b00000000000000000000000000000000) (bvsge (x!64535 lt!340517) x!1131)))))

(assert (=> b!765366 (=> (not res!517806) (not e!426272))))

(declare-fun b!765367 () Bool)

(assert (=> b!765367 (= e!426271 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340345 lt!340341 mask!3328))))

(declare-fun b!765368 () Bool)

(assert (=> b!765368 (= e!426271 (Intermediate!7809 false index!1321 x!1131))))

(declare-fun d!101087 () Bool)

(assert (=> d!101087 e!426273))

(declare-fun c!84170 () Bool)

(assert (=> d!101087 (= c!84170 (and (is-Intermediate!7809 lt!340517) (undefined!8621 lt!340517)))))

(assert (=> d!101087 (= lt!340517 e!426274)))

(declare-fun c!84168 () Bool)

(assert (=> d!101087 (= c!84168 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101087 (= lt!340516 (select (arr!20202 lt!340341) index!1321))))

(assert (=> d!101087 (validMask!0 mask!3328)))

(assert (=> d!101087 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340345 lt!340341 mask!3328) lt!340517)))

(declare-fun b!765369 () Bool)

(assert (=> b!765369 (= e!426273 (bvsge (x!64535 lt!340517) #b01111111111111111111111111111110))))

(declare-fun b!765370 () Bool)

(assert (=> b!765370 (and (bvsge (index!33605 lt!340517) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340517) (size!20623 lt!340341)))))

(assert (=> b!765370 (= e!426275 (= (select (arr!20202 lt!340341) (index!33605 lt!340517)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101087 c!84168) b!765362))

(assert (= (and d!101087 (not c!84168)) b!765365))

(assert (= (and b!765365 c!84169) b!765368))

(assert (= (and b!765365 (not c!84169)) b!765367))

(assert (= (and d!101087 c!84170) b!765369))

(assert (= (and d!101087 (not c!84170)) b!765366))

(assert (= (and b!765366 res!517806) b!765363))

(assert (= (and b!765363 (not res!517805)) b!765364))

(assert (= (and b!765364 (not res!517807)) b!765370))

(declare-fun m!711563 () Bool)

(assert (=> d!101087 m!711563))

(assert (=> d!101087 m!711215))

(declare-fun m!711565 () Bool)

(assert (=> b!765363 m!711565))

(assert (=> b!765364 m!711565))

(assert (=> b!765370 m!711565))

(assert (=> b!765367 m!711407))

(assert (=> b!765367 m!711407))

(declare-fun m!711567 () Bool)

(assert (=> b!765367 m!711567))

(assert (=> b!764922 d!101087))

(declare-fun e!426282 () SeekEntryResult!7809)

(declare-fun b!765377 () Bool)

(assert (=> b!765377 (= e!426282 (Intermediate!7809 true (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!765378 () Bool)

(declare-fun lt!340521 () SeekEntryResult!7809)

(assert (=> b!765378 (and (bvsge (index!33605 lt!340521) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340521) (size!20623 a!3186)))))

(declare-fun res!517808 () Bool)

(assert (=> b!765378 (= res!517808 (= (select (arr!20202 a!3186) (index!33605 lt!340521)) (select (arr!20202 a!3186) j!159)))))

(declare-fun e!426283 () Bool)

(assert (=> b!765378 (=> res!517808 e!426283)))

(declare-fun e!426280 () Bool)

(assert (=> b!765378 (= e!426280 e!426283)))

(declare-fun b!765379 () Bool)

(assert (=> b!765379 (and (bvsge (index!33605 lt!340521) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340521) (size!20623 a!3186)))))

(declare-fun res!517810 () Bool)

(assert (=> b!765379 (= res!517810 (= (select (arr!20202 a!3186) (index!33605 lt!340521)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765379 (=> res!517810 e!426283)))

(declare-fun b!765380 () Bool)

(declare-fun e!426279 () SeekEntryResult!7809)

(assert (=> b!765380 (= e!426282 e!426279)))

(declare-fun c!84175 () Bool)

(declare-fun lt!340520 () (_ BitVec 64))

(assert (=> b!765380 (= c!84175 (or (= lt!340520 (select (arr!20202 a!3186) j!159)) (= (bvadd lt!340520 lt!340520) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765381 () Bool)

(declare-fun e!426281 () Bool)

(assert (=> b!765381 (= e!426281 e!426280)))

(declare-fun res!517809 () Bool)

(assert (=> b!765381 (= res!517809 (and (is-Intermediate!7809 lt!340521) (not (undefined!8621 lt!340521)) (bvslt (x!64535 lt!340521) #b01111111111111111111111111111110) (bvsge (x!64535 lt!340521) #b00000000000000000000000000000000) (bvsge (x!64535 lt!340521) #b00000000000000000000000000000000)))))

(assert (=> b!765381 (=> (not res!517809) (not e!426280))))

(declare-fun b!765382 () Bool)

(assert (=> b!765382 (= e!426279 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20202 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!765383 () Bool)

(assert (=> b!765383 (= e!426279 (Intermediate!7809 false (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101089 () Bool)

(assert (=> d!101089 e!426281))

(declare-fun c!84176 () Bool)

(assert (=> d!101089 (= c!84176 (and (is-Intermediate!7809 lt!340521) (undefined!8621 lt!340521)))))

(assert (=> d!101089 (= lt!340521 e!426282)))

(declare-fun c!84174 () Bool)

(assert (=> d!101089 (= c!84174 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101089 (= lt!340520 (select (arr!20202 a!3186) (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328)))))

(assert (=> d!101089 (validMask!0 mask!3328)))

(assert (=> d!101089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328) (select (arr!20202 a!3186) j!159) a!3186 mask!3328) lt!340521)))

(declare-fun b!765384 () Bool)

(assert (=> b!765384 (= e!426281 (bvsge (x!64535 lt!340521) #b01111111111111111111111111111110))))

(declare-fun b!765385 () Bool)

(assert (=> b!765385 (and (bvsge (index!33605 lt!340521) #b00000000000000000000000000000000) (bvslt (index!33605 lt!340521) (size!20623 a!3186)))))

(assert (=> b!765385 (= e!426283 (= (select (arr!20202 a!3186) (index!33605 lt!340521)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101089 c!84174) b!765377))

(assert (= (and d!101089 (not c!84174)) b!765380))

(assert (= (and b!765380 c!84175) b!765383))

(assert (= (and b!765380 (not c!84175)) b!765382))

(assert (= (and d!101089 c!84176) b!765384))

(assert (= (and d!101089 (not c!84176)) b!765381))

(assert (= (and b!765381 res!517809) b!765378))

(assert (= (and b!765378 (not res!517808)) b!765379))

(assert (= (and b!765379 (not res!517810)) b!765385))

(assert (=> d!101089 m!711255))

(declare-fun m!711575 () Bool)

(assert (=> d!101089 m!711575))

(assert (=> d!101089 m!711215))

(declare-fun m!711577 () Bool)

(assert (=> b!765378 m!711577))

(assert (=> b!765379 m!711577))

(assert (=> b!765385 m!711577))

(assert (=> b!765382 m!711255))

(declare-fun m!711579 () Bool)

(assert (=> b!765382 m!711579))

(assert (=> b!765382 m!711579))

(assert (=> b!765382 m!711231))

(declare-fun m!711581 () Bool)

(assert (=> b!765382 m!711581))

(assert (=> b!764924 d!101089))

(declare-fun d!101093 () Bool)

(declare-fun lt!340523 () (_ BitVec 32))

(declare-fun lt!340522 () (_ BitVec 32))

(assert (=> d!101093 (= lt!340523 (bvmul (bvxor lt!340522 (bvlshr lt!340522 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101093 (= lt!340522 ((_ extract 31 0) (bvand (bvxor (select (arr!20202 a!3186) j!159) (bvlshr (select (arr!20202 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101093 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517804 (let ((h!15345 ((_ extract 31 0) (bvand (bvxor (select (arr!20202 a!3186) j!159) (bvlshr (select (arr!20202 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64545 (bvmul (bvxor h!15345 (bvlshr h!15345 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64545 (bvlshr x!64545 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517804 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517804 #b00000000000000000000000000000000))))))

(assert (=> d!101093 (= (toIndex!0 (select (arr!20202 a!3186) j!159) mask!3328) (bvand (bvxor lt!340523 (bvlshr lt!340523 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764924 d!101093))

(declare-fun d!101095 () Bool)

(declare-fun res!517815 () Bool)

(declare-fun e!426288 () Bool)

(assert (=> d!101095 (=> res!517815 e!426288)))

(assert (=> d!101095 (= res!517815 (= (select (arr!20202 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101095 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!426288)))

(declare-fun b!765390 () Bool)

(declare-fun e!426289 () Bool)

(assert (=> b!765390 (= e!426288 e!426289)))

(declare-fun res!517816 () Bool)

(assert (=> b!765390 (=> (not res!517816) (not e!426289))))

(assert (=> b!765390 (= res!517816 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20623 a!3186)))))

(declare-fun b!765391 () Bool)

(assert (=> b!765391 (= e!426289 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101095 (not res!517815)) b!765390))

(assert (= (and b!765390 res!517816) b!765391))

(assert (=> d!101095 m!711361))

(declare-fun m!711583 () Bool)

(assert (=> b!765391 m!711583))

(assert (=> b!764925 d!101095))

(push 1)

