; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66330 () Bool)

(assert start!66330)

(declare-fun b!764328 () Bool)

(declare-fun e!425701 () Bool)

(declare-fun e!425703 () Bool)

(assert (=> b!764328 (= e!425701 e!425703)))

(declare-fun res!517328 () Bool)

(assert (=> b!764328 (=> (not res!517328) (not e!425703))))

(declare-datatypes ((SeekEntryResult!7805 0))(
  ( (MissingZero!7805 (index!33587 (_ BitVec 32))) (Found!7805 (index!33588 (_ BitVec 32))) (Intermediate!7805 (undefined!8617 Bool) (index!33589 (_ BitVec 32)) (x!64506 (_ BitVec 32))) (Undefined!7805) (MissingVacant!7805 (index!33590 (_ BitVec 32))) )
))
(declare-fun lt!340122 () SeekEntryResult!7805)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764328 (= res!517328 (or (= lt!340122 (MissingZero!7805 i!1173)) (= lt!340122 (MissingVacant!7805 i!1173))))))

(declare-datatypes ((array!42188 0))(
  ( (array!42189 (arr!20198 (Array (_ BitVec 32) (_ BitVec 64))) (size!20619 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42188)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42188 (_ BitVec 32)) SeekEntryResult!7805)

(assert (=> b!764328 (= lt!340122 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!764329 () Bool)

(declare-fun res!517331 () Bool)

(declare-fun e!425704 () Bool)

(assert (=> b!764329 (=> (not res!517331) (not e!425704))))

(declare-fun e!425705 () Bool)

(assert (=> b!764329 (= res!517331 e!425705)))

(declare-fun c!83889 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764329 (= c!83889 (bvsle x!1131 resIntermediateX!5))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!764330 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42188 (_ BitVec 32)) SeekEntryResult!7805)

(assert (=> b!764330 (= e!425705 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20198 a!3186) j!159) a!3186 mask!3328) (Found!7805 j!159)))))

(declare-fun b!764331 () Bool)

(assert (=> b!764331 (= e!425703 e!425704)))

(declare-fun res!517327 () Bool)

(assert (=> b!764331 (=> (not res!517327) (not e!425704))))

(declare-fun lt!340126 () SeekEntryResult!7805)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42188 (_ BitVec 32)) SeekEntryResult!7805)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764331 (= res!517327 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328) (select (arr!20198 a!3186) j!159) a!3186 mask!3328) lt!340126))))

(assert (=> b!764331 (= lt!340126 (Intermediate!7805 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764332 () Bool)

(declare-fun res!517329 () Bool)

(assert (=> b!764332 (=> (not res!517329) (not e!425701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764332 (= res!517329 (validKeyInArray!0 (select (arr!20198 a!3186) j!159)))))

(declare-fun b!764333 () Bool)

(declare-fun res!517325 () Bool)

(assert (=> b!764333 (=> (not res!517325) (not e!425703))))

(assert (=> b!764333 (= res!517325 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20619 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20619 a!3186))))))

(declare-fun b!764334 () Bool)

(declare-fun res!517333 () Bool)

(assert (=> b!764334 (=> (not res!517333) (not e!425704))))

(assert (=> b!764334 (= res!517333 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20198 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!517323 () Bool)

(assert (=> start!66330 (=> (not res!517323) (not e!425701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66330 (= res!517323 (validMask!0 mask!3328))))

(assert (=> start!66330 e!425701))

(assert (=> start!66330 true))

(declare-fun array_inv!15972 (array!42188) Bool)

(assert (=> start!66330 (array_inv!15972 a!3186)))

(declare-fun b!764335 () Bool)

(declare-fun res!517324 () Bool)

(assert (=> b!764335 (=> (not res!517324) (not e!425703))))

(declare-datatypes ((List!14253 0))(
  ( (Nil!14250) (Cons!14249 (h!15333 (_ BitVec 64)) (t!20576 List!14253)) )
))
(declare-fun arrayNoDuplicates!0 (array!42188 (_ BitVec 32) List!14253) Bool)

(assert (=> b!764335 (= res!517324 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14250))))

(declare-fun b!764336 () Bool)

(declare-fun e!425702 () Bool)

(assert (=> b!764336 (= e!425702 (not (= (seekEntryOrOpen!0 (select (arr!20198 a!3186) j!159) a!3186 mask!3328) (Found!7805 j!159))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42188 (_ BitVec 32)) Bool)

(assert (=> b!764336 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26336 0))(
  ( (Unit!26337) )
))
(declare-fun lt!340125 () Unit!26336)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26336)

(assert (=> b!764336 (= lt!340125 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764337 () Bool)

(assert (=> b!764337 (= e!425704 e!425702)))

(declare-fun res!517332 () Bool)

(assert (=> b!764337 (=> (not res!517332) (not e!425702))))

(declare-fun lt!340123 () (_ BitVec 64))

(declare-fun lt!340124 () array!42188)

(assert (=> b!764337 (= res!517332 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340123 mask!3328) lt!340123 lt!340124 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340123 lt!340124 mask!3328)))))

(assert (=> b!764337 (= lt!340123 (select (store (arr!20198 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764337 (= lt!340124 (array!42189 (store (arr!20198 a!3186) i!1173 k!2102) (size!20619 a!3186)))))

(declare-fun b!764338 () Bool)

(assert (=> b!764338 (= e!425705 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20198 a!3186) j!159) a!3186 mask!3328) lt!340126))))

(declare-fun b!764339 () Bool)

(declare-fun res!517330 () Bool)

(assert (=> b!764339 (=> (not res!517330) (not e!425703))))

(assert (=> b!764339 (= res!517330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764340 () Bool)

(declare-fun res!517335 () Bool)

(assert (=> b!764340 (=> (not res!517335) (not e!425701))))

(assert (=> b!764340 (= res!517335 (and (= (size!20619 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20619 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20619 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!764341 () Bool)

(declare-fun res!517326 () Bool)

(assert (=> b!764341 (=> (not res!517326) (not e!425701))))

(assert (=> b!764341 (= res!517326 (validKeyInArray!0 k!2102))))

(declare-fun b!764342 () Bool)

(declare-fun res!517334 () Bool)

(assert (=> b!764342 (=> (not res!517334) (not e!425701))))

(declare-fun arrayContainsKey!0 (array!42188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764342 (= res!517334 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!66330 res!517323) b!764340))

(assert (= (and b!764340 res!517335) b!764332))

(assert (= (and b!764332 res!517329) b!764341))

(assert (= (and b!764341 res!517326) b!764342))

(assert (= (and b!764342 res!517334) b!764328))

(assert (= (and b!764328 res!517328) b!764339))

(assert (= (and b!764339 res!517330) b!764335))

(assert (= (and b!764335 res!517324) b!764333))

(assert (= (and b!764333 res!517325) b!764331))

(assert (= (and b!764331 res!517327) b!764334))

(assert (= (and b!764334 res!517333) b!764329))

(assert (= (and b!764329 c!83889) b!764338))

(assert (= (and b!764329 (not c!83889)) b!764330))

(assert (= (and b!764329 res!517331) b!764337))

(assert (= (and b!764337 res!517332) b!764336))

(declare-fun m!710781 () Bool)

(assert (=> b!764339 m!710781))

(declare-fun m!710783 () Bool)

(assert (=> b!764336 m!710783))

(assert (=> b!764336 m!710783))

(declare-fun m!710785 () Bool)

(assert (=> b!764336 m!710785))

(declare-fun m!710787 () Bool)

(assert (=> b!764336 m!710787))

(declare-fun m!710789 () Bool)

(assert (=> b!764336 m!710789))

(declare-fun m!710791 () Bool)

(assert (=> b!764342 m!710791))

(declare-fun m!710793 () Bool)

(assert (=> start!66330 m!710793))

(declare-fun m!710795 () Bool)

(assert (=> start!66330 m!710795))

(assert (=> b!764331 m!710783))

(assert (=> b!764331 m!710783))

(declare-fun m!710797 () Bool)

(assert (=> b!764331 m!710797))

(assert (=> b!764331 m!710797))

(assert (=> b!764331 m!710783))

(declare-fun m!710799 () Bool)

(assert (=> b!764331 m!710799))

(declare-fun m!710801 () Bool)

(assert (=> b!764334 m!710801))

(declare-fun m!710803 () Bool)

(assert (=> b!764341 m!710803))

(assert (=> b!764330 m!710783))

(assert (=> b!764330 m!710783))

(declare-fun m!710805 () Bool)

(assert (=> b!764330 m!710805))

(declare-fun m!710807 () Bool)

(assert (=> b!764337 m!710807))

(declare-fun m!710809 () Bool)

(assert (=> b!764337 m!710809))

(declare-fun m!710811 () Bool)

(assert (=> b!764337 m!710811))

(declare-fun m!710813 () Bool)

(assert (=> b!764337 m!710813))

(assert (=> b!764337 m!710811))

(declare-fun m!710815 () Bool)

(assert (=> b!764337 m!710815))

(declare-fun m!710817 () Bool)

(assert (=> b!764328 m!710817))

(declare-fun m!710819 () Bool)

(assert (=> b!764335 m!710819))

(assert (=> b!764338 m!710783))

(assert (=> b!764338 m!710783))

(declare-fun m!710821 () Bool)

(assert (=> b!764338 m!710821))

(assert (=> b!764332 m!710783))

(assert (=> b!764332 m!710783))

(declare-fun m!710823 () Bool)

(assert (=> b!764332 m!710823))

(push 1)

(assert (not b!764335))

(assert (not b!764331))

(assert (not b!764342))

(assert (not b!764332))

(assert (not b!764338))

(assert (not b!764336))

(assert (not b!764337))

(assert (not b!764339))

(assert (not b!764341))

(assert (not b!764330))

(assert (not b!764328))

(assert (not start!66330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!100903 () Bool)

(assert (=> d!100903 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66330 d!100903))

(declare-fun d!100909 () Bool)

(assert (=> d!100909 (= (array_inv!15972 a!3186) (bvsge (size!20619 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66330 d!100909))

(declare-fun d!100911 () Bool)

(declare-fun res!517361 () Bool)

(declare-fun e!425746 () Bool)

(assert (=> d!100911 (=> res!517361 e!425746)))

(assert (=> d!100911 (= res!517361 (bvsge #b00000000000000000000000000000000 (size!20619 a!3186)))))

(assert (=> d!100911 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!425746)))

(declare-fun b!764402 () Bool)

(declare-fun e!425747 () Bool)

(assert (=> b!764402 (= e!425746 e!425747)))

(declare-fun c!83907 () Bool)

(assert (=> b!764402 (= c!83907 (validKeyInArray!0 (select (arr!20198 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35001 () Bool)

(declare-fun call!35004 () Bool)

(assert (=> bm!35001 (= call!35004 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!764403 () Bool)

(declare-fun e!425745 () Bool)

(assert (=> b!764403 (= e!425747 e!425745)))

(declare-fun lt!340145 () (_ BitVec 64))

(assert (=> b!764403 (= lt!340145 (select (arr!20198 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!340144 () Unit!26336)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42188 (_ BitVec 64) (_ BitVec 32)) Unit!26336)

(assert (=> b!764403 (= lt!340144 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340145 #b00000000000000000000000000000000))))

(assert (=> b!764403 (arrayContainsKey!0 a!3186 lt!340145 #b00000000000000000000000000000000)))

(declare-fun lt!340143 () Unit!26336)

(assert (=> b!764403 (= lt!340143 lt!340144)))

(declare-fun res!517362 () Bool)

(assert (=> b!764403 (= res!517362 (= (seekEntryOrOpen!0 (select (arr!20198 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7805 #b00000000000000000000000000000000)))))

(assert (=> b!764403 (=> (not res!517362) (not e!425745))))

(declare-fun b!764404 () Bool)

(assert (=> b!764404 (= e!425745 call!35004)))

(declare-fun b!764405 () Bool)

(assert (=> b!764405 (= e!425747 call!35004)))

(assert (= (and d!100911 (not res!517361)) b!764402))

(assert (= (and b!764402 c!83907) b!764403))

(assert (= (and b!764402 (not c!83907)) b!764405))

(assert (= (and b!764403 res!517362) b!764404))

(assert (= (or b!764404 b!764405) bm!35001))

(declare-fun m!710841 () Bool)

(assert (=> b!764402 m!710841))

(assert (=> b!764402 m!710841))

(declare-fun m!710843 () Bool)

(assert (=> b!764402 m!710843))

(declare-fun m!710845 () Bool)

(assert (=> bm!35001 m!710845))

(assert (=> b!764403 m!710841))

(declare-fun m!710847 () Bool)

(assert (=> b!764403 m!710847))

(declare-fun m!710849 () Bool)

(assert (=> b!764403 m!710849))

(assert (=> b!764403 m!710841))

(declare-fun m!710851 () Bool)

(assert (=> b!764403 m!710851))

(assert (=> b!764339 d!100911))

(declare-fun d!100913 () Bool)

(assert (=> d!100913 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764341 d!100913))

(declare-fun b!764451 () Bool)

(declare-fun e!425773 () SeekEntryResult!7805)

(assert (=> b!764451 (= e!425773 (MissingVacant!7805 resIntermediateIndex!5))))

(declare-fun lt!340159 () SeekEntryResult!7805)

(declare-fun d!100915 () Bool)

(assert (=> d!100915 (and (or (is-Undefined!7805 lt!340159) (not (is-Found!7805 lt!340159)) (and (bvsge (index!33588 lt!340159) #b00000000000000000000000000000000) (bvslt (index!33588 lt!340159) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340159) (is-Found!7805 lt!340159) (not (is-MissingVacant!7805 lt!340159)) (not (= (index!33590 lt!340159) resIntermediateIndex!5)) (and (bvsge (index!33590 lt!340159) #b00000000000000000000000000000000) (bvslt (index!33590 lt!340159) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340159) (ite (is-Found!7805 lt!340159) (= (select (arr!20198 a!3186) (index!33588 lt!340159)) (select (arr!20198 a!3186) j!159)) (and (is-MissingVacant!7805 lt!340159) (= (index!33590 lt!340159) resIntermediateIndex!5) (= (select (arr!20198 a!3186) (index!33590 lt!340159)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!425772 () SeekEntryResult!7805)

(assert (=> d!100915 (= lt!340159 e!425772)))

(declare-fun c!83928 () Bool)

(assert (=> d!100915 (= c!83928 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!340158 () (_ BitVec 64))

(assert (=> d!100915 (= lt!340158 (select (arr!20198 a!3186) index!1321))))

(assert (=> d!100915 (validMask!0 mask!3328)))

(assert (=> d!100915 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20198 a!3186) j!159) a!3186 mask!3328) lt!340159)))

(declare-fun b!764452 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764452 (= e!425773 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20198 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764453 () Bool)

(assert (=> b!764453 (= e!425772 Undefined!7805)))

(declare-fun b!764454 () Bool)

(declare-fun e!425774 () SeekEntryResult!7805)

(assert (=> b!764454 (= e!425772 e!425774)))

(declare-fun c!83926 () Bool)

(assert (=> b!764454 (= c!83926 (= lt!340158 (select (arr!20198 a!3186) j!159)))))

(declare-fun b!764455 () Bool)

(assert (=> b!764455 (= e!425774 (Found!7805 index!1321))))

(declare-fun b!764456 () Bool)

(declare-fun c!83927 () Bool)

(assert (=> b!764456 (= c!83927 (= lt!340158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764456 (= e!425774 e!425773)))

(assert (= (and d!100915 c!83928) b!764453))

(assert (= (and d!100915 (not c!83928)) b!764454))

(assert (= (and b!764454 c!83926) b!764455))

(assert (= (and b!764454 (not c!83926)) b!764456))

(assert (= (and b!764456 c!83927) b!764451))

(assert (= (and b!764456 (not c!83927)) b!764452))

(declare-fun m!710867 () Bool)

(assert (=> d!100915 m!710867))

(declare-fun m!710869 () Bool)

(assert (=> d!100915 m!710869))

(declare-fun m!710871 () Bool)

(assert (=> d!100915 m!710871))

(assert (=> d!100915 m!710793))

(declare-fun m!710873 () Bool)

(assert (=> b!764452 m!710873))

(assert (=> b!764452 m!710873))

(assert (=> b!764452 m!710783))

(declare-fun m!710875 () Bool)

(assert (=> b!764452 m!710875))

(assert (=> b!764330 d!100915))

(declare-fun d!100923 () Bool)

(assert (=> d!100923 (= (validKeyInArray!0 (select (arr!20198 a!3186) j!159)) (and (not (= (select (arr!20198 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20198 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764332 d!100923))

(declare-fun d!100925 () Bool)

(declare-fun res!517376 () Bool)

(declare-fun e!425779 () Bool)

(assert (=> d!100925 (=> res!517376 e!425779)))

(assert (=> d!100925 (= res!517376 (= (select (arr!20198 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100925 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!425779)))

(declare-fun b!764461 () Bool)

(declare-fun e!425780 () Bool)

(assert (=> b!764461 (= e!425779 e!425780)))

(declare-fun res!517377 () Bool)

(assert (=> b!764461 (=> (not res!517377) (not e!425780))))

(assert (=> b!764461 (= res!517377 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20619 a!3186)))))

(declare-fun b!764462 () Bool)

(assert (=> b!764462 (= e!425780 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100925 (not res!517376)) b!764461))

(assert (= (and b!764461 res!517377) b!764462))

(assert (=> d!100925 m!710841))

(declare-fun m!710877 () Bool)

(assert (=> b!764462 m!710877))

(assert (=> b!764342 d!100925))

(declare-fun b!764508 () Bool)

(declare-fun e!425805 () SeekEntryResult!7805)

(assert (=> b!764508 (= e!425805 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20198 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764509 () Bool)

(assert (=> b!764509 (= e!425805 (Intermediate!7805 false (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun e!425807 () SeekEntryResult!7805)

(declare-fun b!764510 () Bool)

(assert (=> b!764510 (= e!425807 (Intermediate!7805 true (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764511 () Bool)

(declare-fun e!425808 () Bool)

(declare-fun e!425809 () Bool)

(assert (=> b!764511 (= e!425808 e!425809)))

(declare-fun res!517387 () Bool)

(declare-fun lt!340176 () SeekEntryResult!7805)

(assert (=> b!764511 (= res!517387 (and (is-Intermediate!7805 lt!340176) (not (undefined!8617 lt!340176)) (bvslt (x!64506 lt!340176) #b01111111111111111111111111111110) (bvsge (x!64506 lt!340176) #b00000000000000000000000000000000) (bvsge (x!64506 lt!340176) #b00000000000000000000000000000000)))))

(assert (=> b!764511 (=> (not res!517387) (not e!425809))))

(declare-fun d!100927 () Bool)

(assert (=> d!100927 e!425808))

(declare-fun c!83947 () Bool)

(assert (=> d!100927 (= c!83947 (and (is-Intermediate!7805 lt!340176) (undefined!8617 lt!340176)))))

(assert (=> d!100927 (= lt!340176 e!425807)))

(declare-fun c!83949 () Bool)

(assert (=> d!100927 (= c!83949 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!340175 () (_ BitVec 64))

(assert (=> d!100927 (= lt!340175 (select (arr!20198 a!3186) (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328)))))

(assert (=> d!100927 (validMask!0 mask!3328)))

(assert (=> d!100927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328) (select (arr!20198 a!3186) j!159) a!3186 mask!3328) lt!340176)))

(declare-fun b!764512 () Bool)

(assert (=> b!764512 (= e!425807 e!425805)))

(declare-fun c!83948 () Bool)

(assert (=> b!764512 (= c!83948 (or (= lt!340175 (select (arr!20198 a!3186) j!159)) (= (bvadd lt!340175 lt!340175) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764513 () Bool)

(assert (=> b!764513 (and (bvsge (index!33589 lt!340176) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340176) (size!20619 a!3186)))))

(declare-fun e!425806 () Bool)

(assert (=> b!764513 (= e!425806 (= (select (arr!20198 a!3186) (index!33589 lt!340176)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764514 () Bool)

(assert (=> b!764514 (and (bvsge (index!33589 lt!340176) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340176) (size!20619 a!3186)))))

(declare-fun res!517388 () Bool)

(assert (=> b!764514 (= res!517388 (= (select (arr!20198 a!3186) (index!33589 lt!340176)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764514 (=> res!517388 e!425806)))

(declare-fun b!764515 () Bool)

(assert (=> b!764515 (= e!425808 (bvsge (x!64506 lt!340176) #b01111111111111111111111111111110))))

(declare-fun b!764516 () Bool)

(assert (=> b!764516 (and (bvsge (index!33589 lt!340176) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340176) (size!20619 a!3186)))))

(declare-fun res!517389 () Bool)

(assert (=> b!764516 (= res!517389 (= (select (arr!20198 a!3186) (index!33589 lt!340176)) (select (arr!20198 a!3186) j!159)))))

(assert (=> b!764516 (=> res!517389 e!425806)))

(assert (=> b!764516 (= e!425809 e!425806)))

(assert (= (and d!100927 c!83949) b!764510))

(assert (= (and d!100927 (not c!83949)) b!764512))

(assert (= (and b!764512 c!83948) b!764509))

(assert (= (and b!764512 (not c!83948)) b!764508))

(assert (= (and d!100927 c!83947) b!764515))

(assert (= (and d!100927 (not c!83947)) b!764511))

(assert (= (and b!764511 res!517387) b!764516))

(assert (= (and b!764516 (not res!517389)) b!764514))

(assert (= (and b!764514 (not res!517388)) b!764513))

(declare-fun m!710893 () Bool)

(assert (=> b!764516 m!710893))

(assert (=> b!764508 m!710797))

(declare-fun m!710897 () Bool)

(assert (=> b!764508 m!710897))

(assert (=> b!764508 m!710897))

(assert (=> b!764508 m!710783))

(declare-fun m!710901 () Bool)

(assert (=> b!764508 m!710901))

(assert (=> b!764514 m!710893))

(assert (=> b!764513 m!710893))

(assert (=> d!100927 m!710797))

(declare-fun m!710904 () Bool)

(assert (=> d!100927 m!710904))

(assert (=> d!100927 m!710793))

(assert (=> b!764331 d!100927))

(declare-fun d!100937 () Bool)

(declare-fun lt!340182 () (_ BitVec 32))

(declare-fun lt!340181 () (_ BitVec 32))

(assert (=> d!100937 (= lt!340182 (bvmul (bvxor lt!340181 (bvlshr lt!340181 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100937 (= lt!340181 ((_ extract 31 0) (bvand (bvxor (select (arr!20198 a!3186) j!159) (bvlshr (select (arr!20198 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100937 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517390 (let ((h!15334 ((_ extract 31 0) (bvand (bvxor (select (arr!20198 a!3186) j!159) (bvlshr (select (arr!20198 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64512 (bvmul (bvxor h!15334 (bvlshr h!15334 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64512 (bvlshr x!64512 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517390 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517390 #b00000000000000000000000000000000))))))

(assert (=> d!100937 (= (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328) (bvand (bvxor lt!340182 (bvlshr lt!340182 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764331 d!100937))

(declare-fun b!764555 () Bool)

(declare-fun e!425833 () SeekEntryResult!7805)

(declare-fun lt!340210 () SeekEntryResult!7805)

(assert (=> b!764555 (= e!425833 (Found!7805 (index!33589 lt!340210)))))

(declare-fun b!764556 () Bool)

(declare-fun e!425831 () SeekEntryResult!7805)

(assert (=> b!764556 (= e!425831 e!425833)))

(declare-fun lt!340211 () (_ BitVec 64))

(assert (=> b!764556 (= lt!340211 (select (arr!20198 a!3186) (index!33589 lt!340210)))))

(declare-fun c!83969 () Bool)

(assert (=> b!764556 (= c!83969 (= lt!340211 (select (arr!20198 a!3186) j!159)))))

(declare-fun b!764557 () Bool)

(assert (=> b!764557 (= e!425831 Undefined!7805)))

(declare-fun b!764558 () Bool)

(declare-fun c!83967 () Bool)

(assert (=> b!764558 (= c!83967 (= lt!340211 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!425832 () SeekEntryResult!7805)

(assert (=> b!764558 (= e!425833 e!425832)))

(declare-fun d!100941 () Bool)

(declare-fun lt!340212 () SeekEntryResult!7805)

(assert (=> d!100941 (and (or (is-Undefined!7805 lt!340212) (not (is-Found!7805 lt!340212)) (and (bvsge (index!33588 lt!340212) #b00000000000000000000000000000000) (bvslt (index!33588 lt!340212) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340212) (is-Found!7805 lt!340212) (not (is-MissingZero!7805 lt!340212)) (and (bvsge (index!33587 lt!340212) #b00000000000000000000000000000000) (bvslt (index!33587 lt!340212) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340212) (is-Found!7805 lt!340212) (is-MissingZero!7805 lt!340212) (not (is-MissingVacant!7805 lt!340212)) (and (bvsge (index!33590 lt!340212) #b00000000000000000000000000000000) (bvslt (index!33590 lt!340212) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340212) (ite (is-Found!7805 lt!340212) (= (select (arr!20198 a!3186) (index!33588 lt!340212)) (select (arr!20198 a!3186) j!159)) (ite (is-MissingZero!7805 lt!340212) (= (select (arr!20198 a!3186) (index!33587 lt!340212)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7805 lt!340212) (= (select (arr!20198 a!3186) (index!33590 lt!340212)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100941 (= lt!340212 e!425831)))

(declare-fun c!83968 () Bool)

(assert (=> d!100941 (= c!83968 (and (is-Intermediate!7805 lt!340210) (undefined!8617 lt!340210)))))

(assert (=> d!100941 (= lt!340210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20198 a!3186) j!159) mask!3328) (select (arr!20198 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100941 (validMask!0 mask!3328)))

(assert (=> d!100941 (= (seekEntryOrOpen!0 (select (arr!20198 a!3186) j!159) a!3186 mask!3328) lt!340212)))

(declare-fun b!764559 () Bool)

(assert (=> b!764559 (= e!425832 (MissingZero!7805 (index!33589 lt!340210)))))

(declare-fun b!764560 () Bool)

(assert (=> b!764560 (= e!425832 (seekKeyOrZeroReturnVacant!0 (x!64506 lt!340210) (index!33589 lt!340210) (index!33589 lt!340210) (select (arr!20198 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100941 c!83968) b!764557))

(assert (= (and d!100941 (not c!83968)) b!764556))

(assert (= (and b!764556 c!83969) b!764555))

(assert (= (and b!764556 (not c!83969)) b!764558))

(assert (= (and b!764558 c!83967) b!764559))

(assert (= (and b!764558 (not c!83967)) b!764560))

(declare-fun m!710919 () Bool)

(assert (=> b!764556 m!710919))

(declare-fun m!710921 () Bool)

(assert (=> d!100941 m!710921))

(assert (=> d!100941 m!710783))

(assert (=> d!100941 m!710797))

(declare-fun m!710923 () Bool)

(assert (=> d!100941 m!710923))

(assert (=> d!100941 m!710797))

(assert (=> d!100941 m!710783))

(assert (=> d!100941 m!710799))

(assert (=> d!100941 m!710793))

(declare-fun m!710925 () Bool)

(assert (=> d!100941 m!710925))

(assert (=> b!764560 m!710783))

(declare-fun m!710927 () Bool)

(assert (=> b!764560 m!710927))

(assert (=> b!764336 d!100941))

(declare-fun d!100949 () Bool)

(declare-fun res!517398 () Bool)

(declare-fun e!425838 () Bool)

(assert (=> d!100949 (=> res!517398 e!425838)))

(assert (=> d!100949 (= res!517398 (bvsge j!159 (size!20619 a!3186)))))

(assert (=> d!100949 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!425838)))

(declare-fun b!764565 () Bool)

(declare-fun e!425839 () Bool)

(assert (=> b!764565 (= e!425838 e!425839)))

(declare-fun c!83971 () Bool)

(assert (=> b!764565 (= c!83971 (validKeyInArray!0 (select (arr!20198 a!3186) j!159)))))

(declare-fun call!35008 () Bool)

(declare-fun bm!35005 () Bool)

(assert (=> bm!35005 (= call!35008 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!764566 () Bool)

(declare-fun e!425837 () Bool)

(assert (=> b!764566 (= e!425839 e!425837)))

(declare-fun lt!340218 () (_ BitVec 64))

(assert (=> b!764566 (= lt!340218 (select (arr!20198 a!3186) j!159))))

(declare-fun lt!340217 () Unit!26336)

(assert (=> b!764566 (= lt!340217 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340218 j!159))))

(assert (=> b!764566 (arrayContainsKey!0 a!3186 lt!340218 #b00000000000000000000000000000000)))

(declare-fun lt!340216 () Unit!26336)

(assert (=> b!764566 (= lt!340216 lt!340217)))

(declare-fun res!517399 () Bool)

(assert (=> b!764566 (= res!517399 (= (seekEntryOrOpen!0 (select (arr!20198 a!3186) j!159) a!3186 mask!3328) (Found!7805 j!159)))))

(assert (=> b!764566 (=> (not res!517399) (not e!425837))))

(declare-fun b!764567 () Bool)

(assert (=> b!764567 (= e!425837 call!35008)))

(declare-fun b!764568 () Bool)

(assert (=> b!764568 (= e!425839 call!35008)))

(assert (= (and d!100949 (not res!517398)) b!764565))

(assert (= (and b!764565 c!83971) b!764566))

(assert (= (and b!764565 (not c!83971)) b!764568))

(assert (= (and b!764566 res!517399) b!764567))

(assert (= (or b!764567 b!764568) bm!35005))

(assert (=> b!764565 m!710783))

(assert (=> b!764565 m!710783))

(assert (=> b!764565 m!710823))

(declare-fun m!710929 () Bool)

(assert (=> bm!35005 m!710929))

(assert (=> b!764566 m!710783))

(declare-fun m!710931 () Bool)

(assert (=> b!764566 m!710931))

(declare-fun m!710933 () Bool)

(assert (=> b!764566 m!710933))

(assert (=> b!764566 m!710783))

(assert (=> b!764566 m!710785))

(assert (=> b!764336 d!100949))

(declare-fun d!100951 () Bool)

(assert (=> d!100951 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!340224 () Unit!26336)

(declare-fun choose!38 (array!42188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26336)

(assert (=> d!100951 (= lt!340224 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100951 (validMask!0 mask!3328)))

(assert (=> d!100951 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!340224)))

(declare-fun bs!21468 () Bool)

(assert (= bs!21468 d!100951))

(assert (=> bs!21468 m!710787))

(declare-fun m!710951 () Bool)

(assert (=> bs!21468 m!710951))

(assert (=> bs!21468 m!710793))

(assert (=> b!764336 d!100951))

(declare-fun b!764611 () Bool)

(declare-fun e!425868 () Bool)

(declare-fun e!425870 () Bool)

(assert (=> b!764611 (= e!425868 e!425870)))

(declare-fun c!83985 () Bool)

(assert (=> b!764611 (= c!83985 (validKeyInArray!0 (select (arr!20198 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!764612 () Bool)

(declare-fun call!35011 () Bool)

(assert (=> b!764612 (= e!425870 call!35011)))

(declare-fun bm!35008 () Bool)

(assert (=> bm!35008 (= call!35011 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83985 (Cons!14249 (select (arr!20198 a!3186) #b00000000000000000000000000000000) Nil!14250) Nil!14250)))))

(declare-fun d!100957 () Bool)

(declare-fun res!517418 () Bool)

(declare-fun e!425869 () Bool)

(assert (=> d!100957 (=> res!517418 e!425869)))

(assert (=> d!100957 (= res!517418 (bvsge #b00000000000000000000000000000000 (size!20619 a!3186)))))

(assert (=> d!100957 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14250) e!425869)))

(declare-fun b!764613 () Bool)

(assert (=> b!764613 (= e!425869 e!425868)))

(declare-fun res!517417 () Bool)

(assert (=> b!764613 (=> (not res!517417) (not e!425868))))

(declare-fun e!425867 () Bool)

(assert (=> b!764613 (= res!517417 (not e!425867))))

(declare-fun res!517416 () Bool)

(assert (=> b!764613 (=> (not res!517416) (not e!425867))))

(assert (=> b!764613 (= res!517416 (validKeyInArray!0 (select (arr!20198 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!764614 () Bool)

(assert (=> b!764614 (= e!425870 call!35011)))

(declare-fun b!764615 () Bool)

(declare-fun contains!4074 (List!14253 (_ BitVec 64)) Bool)

(assert (=> b!764615 (= e!425867 (contains!4074 Nil!14250 (select (arr!20198 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100957 (not res!517418)) b!764613))

(assert (= (and b!764613 res!517416) b!764615))

(assert (= (and b!764613 res!517417) b!764611))

(assert (= (and b!764611 c!83985) b!764612))

(assert (= (and b!764611 (not c!83985)) b!764614))

(assert (= (or b!764612 b!764614) bm!35008))

(assert (=> b!764611 m!710841))

(assert (=> b!764611 m!710841))

(assert (=> b!764611 m!710843))

(assert (=> bm!35008 m!710841))

(declare-fun m!710967 () Bool)

(assert (=> bm!35008 m!710967))

(assert (=> b!764613 m!710841))

(assert (=> b!764613 m!710841))

(assert (=> b!764613 m!710843))

(assert (=> b!764615 m!710841))

(assert (=> b!764615 m!710841))

(declare-fun m!710971 () Bool)

(assert (=> b!764615 m!710971))

(assert (=> b!764335 d!100957))

(declare-fun e!425871 () SeekEntryResult!7805)

(declare-fun b!764616 () Bool)

(assert (=> b!764616 (= e!425871 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340123 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340123 lt!340124 mask!3328))))

(declare-fun b!764617 () Bool)

(assert (=> b!764617 (= e!425871 (Intermediate!7805 false (toIndex!0 lt!340123 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764618 () Bool)

(declare-fun e!425873 () SeekEntryResult!7805)

(assert (=> b!764618 (= e!425873 (Intermediate!7805 true (toIndex!0 lt!340123 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764619 () Bool)

(declare-fun e!425874 () Bool)

(declare-fun e!425875 () Bool)

(assert (=> b!764619 (= e!425874 e!425875)))

(declare-fun res!517419 () Bool)

(declare-fun lt!340241 () SeekEntryResult!7805)

(assert (=> b!764619 (= res!517419 (and (is-Intermediate!7805 lt!340241) (not (undefined!8617 lt!340241)) (bvslt (x!64506 lt!340241) #b01111111111111111111111111111110) (bvsge (x!64506 lt!340241) #b00000000000000000000000000000000) (bvsge (x!64506 lt!340241) #b00000000000000000000000000000000)))))

(assert (=> b!764619 (=> (not res!517419) (not e!425875))))

(declare-fun d!100965 () Bool)

(assert (=> d!100965 e!425874))

(declare-fun c!83986 () Bool)

(assert (=> d!100965 (= c!83986 (and (is-Intermediate!7805 lt!340241) (undefined!8617 lt!340241)))))

(assert (=> d!100965 (= lt!340241 e!425873)))

(declare-fun c!83988 () Bool)

(assert (=> d!100965 (= c!83988 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!340240 () (_ BitVec 64))

(assert (=> d!100965 (= lt!340240 (select (arr!20198 lt!340124) (toIndex!0 lt!340123 mask!3328)))))

(assert (=> d!100965 (validMask!0 mask!3328)))

(assert (=> d!100965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340123 mask!3328) lt!340123 lt!340124 mask!3328) lt!340241)))

(declare-fun b!764620 () Bool)

(assert (=> b!764620 (= e!425873 e!425871)))

(declare-fun c!83987 () Bool)

(assert (=> b!764620 (= c!83987 (or (= lt!340240 lt!340123) (= (bvadd lt!340240 lt!340240) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764621 () Bool)

(assert (=> b!764621 (and (bvsge (index!33589 lt!340241) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340241) (size!20619 lt!340124)))))

(declare-fun e!425872 () Bool)

(assert (=> b!764621 (= e!425872 (= (select (arr!20198 lt!340124) (index!33589 lt!340241)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764622 () Bool)

(assert (=> b!764622 (and (bvsge (index!33589 lt!340241) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340241) (size!20619 lt!340124)))))

(declare-fun res!517420 () Bool)

(assert (=> b!764622 (= res!517420 (= (select (arr!20198 lt!340124) (index!33589 lt!340241)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764622 (=> res!517420 e!425872)))

(declare-fun b!764623 () Bool)

(assert (=> b!764623 (= e!425874 (bvsge (x!64506 lt!340241) #b01111111111111111111111111111110))))

(declare-fun b!764624 () Bool)

(assert (=> b!764624 (and (bvsge (index!33589 lt!340241) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340241) (size!20619 lt!340124)))))

(declare-fun res!517421 () Bool)

(assert (=> b!764624 (= res!517421 (= (select (arr!20198 lt!340124) (index!33589 lt!340241)) lt!340123))))

(assert (=> b!764624 (=> res!517421 e!425872)))

(assert (=> b!764624 (= e!425875 e!425872)))

(assert (= (and d!100965 c!83988) b!764618))

(assert (= (and d!100965 (not c!83988)) b!764620))

(assert (= (and b!764620 c!83987) b!764617))

(assert (= (and b!764620 (not c!83987)) b!764616))

(assert (= (and d!100965 c!83986) b!764623))

(assert (= (and d!100965 (not c!83986)) b!764619))

(assert (= (and b!764619 res!517419) b!764624))

(assert (= (and b!764624 (not res!517421)) b!764622))

(assert (= (and b!764622 (not res!517420)) b!764621))

(declare-fun m!710973 () Bool)

(assert (=> b!764624 m!710973))

(assert (=> b!764616 m!710811))

(declare-fun m!710975 () Bool)

(assert (=> b!764616 m!710975))

(assert (=> b!764616 m!710975))

(declare-fun m!710977 () Bool)

(assert (=> b!764616 m!710977))

(assert (=> b!764622 m!710973))

(assert (=> b!764621 m!710973))

(assert (=> d!100965 m!710811))

(declare-fun m!710979 () Bool)

(assert (=> d!100965 m!710979))

(assert (=> d!100965 m!710793))

(assert (=> b!764337 d!100965))

(declare-fun d!100969 () Bool)

(declare-fun lt!340243 () (_ BitVec 32))

(declare-fun lt!340242 () (_ BitVec 32))

(assert (=> d!100969 (= lt!340243 (bvmul (bvxor lt!340242 (bvlshr lt!340242 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100969 (= lt!340242 ((_ extract 31 0) (bvand (bvxor lt!340123 (bvlshr lt!340123 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100969 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517390 (let ((h!15334 ((_ extract 31 0) (bvand (bvxor lt!340123 (bvlshr lt!340123 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64512 (bvmul (bvxor h!15334 (bvlshr h!15334 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64512 (bvlshr x!64512 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517390 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517390 #b00000000000000000000000000000000))))))

(assert (=> d!100969 (= (toIndex!0 lt!340123 mask!3328) (bvand (bvxor lt!340243 (bvlshr lt!340243 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764337 d!100969))

(declare-fun b!764625 () Bool)

(declare-fun e!425876 () SeekEntryResult!7805)

(assert (=> b!764625 (= e!425876 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340123 lt!340124 mask!3328))))

(declare-fun b!764626 () Bool)

(assert (=> b!764626 (= e!425876 (Intermediate!7805 false index!1321 x!1131))))

(declare-fun b!764627 () Bool)

(declare-fun e!425878 () SeekEntryResult!7805)

(assert (=> b!764627 (= e!425878 (Intermediate!7805 true index!1321 x!1131))))

(declare-fun b!764628 () Bool)

(declare-fun e!425879 () Bool)

(declare-fun e!425880 () Bool)

(assert (=> b!764628 (= e!425879 e!425880)))

(declare-fun res!517422 () Bool)

(declare-fun lt!340245 () SeekEntryResult!7805)

(assert (=> b!764628 (= res!517422 (and (is-Intermediate!7805 lt!340245) (not (undefined!8617 lt!340245)) (bvslt (x!64506 lt!340245) #b01111111111111111111111111111110) (bvsge (x!64506 lt!340245) #b00000000000000000000000000000000) (bvsge (x!64506 lt!340245) x!1131)))))

(assert (=> b!764628 (=> (not res!517422) (not e!425880))))

(declare-fun d!100971 () Bool)

(assert (=> d!100971 e!425879))

(declare-fun c!83989 () Bool)

(assert (=> d!100971 (= c!83989 (and (is-Intermediate!7805 lt!340245) (undefined!8617 lt!340245)))))

(assert (=> d!100971 (= lt!340245 e!425878)))

(declare-fun c!83991 () Bool)

(assert (=> d!100971 (= c!83991 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!340244 () (_ BitVec 64))

(assert (=> d!100971 (= lt!340244 (select (arr!20198 lt!340124) index!1321))))

(assert (=> d!100971 (validMask!0 mask!3328)))

(assert (=> d!100971 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340123 lt!340124 mask!3328) lt!340245)))

(declare-fun b!764629 () Bool)

(assert (=> b!764629 (= e!425878 e!425876)))

(declare-fun c!83990 () Bool)

(assert (=> b!764629 (= c!83990 (or (= lt!340244 lt!340123) (= (bvadd lt!340244 lt!340244) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764630 () Bool)

(assert (=> b!764630 (and (bvsge (index!33589 lt!340245) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340245) (size!20619 lt!340124)))))

(declare-fun e!425877 () Bool)

(assert (=> b!764630 (= e!425877 (= (select (arr!20198 lt!340124) (index!33589 lt!340245)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764631 () Bool)

(assert (=> b!764631 (and (bvsge (index!33589 lt!340245) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340245) (size!20619 lt!340124)))))

(declare-fun res!517423 () Bool)

(assert (=> b!764631 (= res!517423 (= (select (arr!20198 lt!340124) (index!33589 lt!340245)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764631 (=> res!517423 e!425877)))

(declare-fun b!764632 () Bool)

(assert (=> b!764632 (= e!425879 (bvsge (x!64506 lt!340245) #b01111111111111111111111111111110))))

(declare-fun b!764633 () Bool)

(assert (=> b!764633 (and (bvsge (index!33589 lt!340245) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340245) (size!20619 lt!340124)))))

(declare-fun res!517424 () Bool)

(assert (=> b!764633 (= res!517424 (= (select (arr!20198 lt!340124) (index!33589 lt!340245)) lt!340123))))

(assert (=> b!764633 (=> res!517424 e!425877)))

(assert (=> b!764633 (= e!425880 e!425877)))

(assert (= (and d!100971 c!83991) b!764627))

(assert (= (and d!100971 (not c!83991)) b!764629))

(assert (= (and b!764629 c!83990) b!764626))

(assert (= (and b!764629 (not c!83990)) b!764625))

(assert (= (and d!100971 c!83989) b!764632))

(assert (= (and d!100971 (not c!83989)) b!764628))

(assert (= (and b!764628 res!517422) b!764633))

(assert (= (and b!764633 (not res!517424)) b!764631))

(assert (= (and b!764631 (not res!517423)) b!764630))

(declare-fun m!710981 () Bool)

(assert (=> b!764633 m!710981))

(assert (=> b!764625 m!710873))

(assert (=> b!764625 m!710873))

(declare-fun m!710983 () Bool)

(assert (=> b!764625 m!710983))

(assert (=> b!764631 m!710981))

(assert (=> b!764630 m!710981))

(declare-fun m!710985 () Bool)

(assert (=> d!100971 m!710985))

(assert (=> d!100971 m!710793))

(assert (=> b!764337 d!100971))

(declare-fun b!764634 () Bool)

(declare-fun e!425883 () SeekEntryResult!7805)

(declare-fun lt!340246 () SeekEntryResult!7805)

(assert (=> b!764634 (= e!425883 (Found!7805 (index!33589 lt!340246)))))

(declare-fun b!764635 () Bool)

(declare-fun e!425881 () SeekEntryResult!7805)

(assert (=> b!764635 (= e!425881 e!425883)))

(declare-fun lt!340247 () (_ BitVec 64))

(assert (=> b!764635 (= lt!340247 (select (arr!20198 a!3186) (index!33589 lt!340246)))))

(declare-fun c!83994 () Bool)

(assert (=> b!764635 (= c!83994 (= lt!340247 k!2102))))

(declare-fun b!764636 () Bool)

(assert (=> b!764636 (= e!425881 Undefined!7805)))

(declare-fun b!764637 () Bool)

(declare-fun c!83992 () Bool)

(assert (=> b!764637 (= c!83992 (= lt!340247 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!425882 () SeekEntryResult!7805)

(assert (=> b!764637 (= e!425883 e!425882)))

(declare-fun d!100973 () Bool)

(declare-fun lt!340248 () SeekEntryResult!7805)

(assert (=> d!100973 (and (or (is-Undefined!7805 lt!340248) (not (is-Found!7805 lt!340248)) (and (bvsge (index!33588 lt!340248) #b00000000000000000000000000000000) (bvslt (index!33588 lt!340248) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340248) (is-Found!7805 lt!340248) (not (is-MissingZero!7805 lt!340248)) (and (bvsge (index!33587 lt!340248) #b00000000000000000000000000000000) (bvslt (index!33587 lt!340248) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340248) (is-Found!7805 lt!340248) (is-MissingZero!7805 lt!340248) (not (is-MissingVacant!7805 lt!340248)) (and (bvsge (index!33590 lt!340248) #b00000000000000000000000000000000) (bvslt (index!33590 lt!340248) (size!20619 a!3186)))) (or (is-Undefined!7805 lt!340248) (ite (is-Found!7805 lt!340248) (= (select (arr!20198 a!3186) (index!33588 lt!340248)) k!2102) (ite (is-MissingZero!7805 lt!340248) (= (select (arr!20198 a!3186) (index!33587 lt!340248)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7805 lt!340248) (= (select (arr!20198 a!3186) (index!33590 lt!340248)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100973 (= lt!340248 e!425881)))

(declare-fun c!83993 () Bool)

(assert (=> d!100973 (= c!83993 (and (is-Intermediate!7805 lt!340246) (undefined!8617 lt!340246)))))

(assert (=> d!100973 (= lt!340246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100973 (validMask!0 mask!3328)))

(assert (=> d!100973 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!340248)))

(declare-fun b!764638 () Bool)

(assert (=> b!764638 (= e!425882 (MissingZero!7805 (index!33589 lt!340246)))))

(declare-fun b!764639 () Bool)

(assert (=> b!764639 (= e!425882 (seekKeyOrZeroReturnVacant!0 (x!64506 lt!340246) (index!33589 lt!340246) (index!33589 lt!340246) k!2102 a!3186 mask!3328))))

(assert (= (and d!100973 c!83993) b!764636))

(assert (= (and d!100973 (not c!83993)) b!764635))

(assert (= (and b!764635 c!83994) b!764634))

(assert (= (and b!764635 (not c!83994)) b!764637))

(assert (= (and b!764637 c!83992) b!764638))

(assert (= (and b!764637 (not c!83992)) b!764639))

(declare-fun m!710987 () Bool)

(assert (=> b!764635 m!710987))

(declare-fun m!710989 () Bool)

(assert (=> d!100973 m!710989))

(declare-fun m!710991 () Bool)

(assert (=> d!100973 m!710991))

(declare-fun m!710993 () Bool)

(assert (=> d!100973 m!710993))

(assert (=> d!100973 m!710991))

(declare-fun m!710995 () Bool)

(assert (=> d!100973 m!710995))

(assert (=> d!100973 m!710793))

(declare-fun m!710997 () Bool)

(assert (=> d!100973 m!710997))

(declare-fun m!710999 () Bool)

(assert (=> b!764639 m!710999))

(assert (=> b!764328 d!100973))

(declare-fun b!764644 () Bool)

(declare-fun e!425887 () SeekEntryResult!7805)

(assert (=> b!764644 (= e!425887 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20198 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764645 () Bool)

(assert (=> b!764645 (= e!425887 (Intermediate!7805 false index!1321 x!1131))))

(declare-fun b!764646 () Bool)

(declare-fun e!425889 () SeekEntryResult!7805)

(assert (=> b!764646 (= e!425889 (Intermediate!7805 true index!1321 x!1131))))

(declare-fun b!764647 () Bool)

(declare-fun e!425890 () Bool)

(declare-fun e!425891 () Bool)

(assert (=> b!764647 (= e!425890 e!425891)))

(declare-fun res!517427 () Bool)

(declare-fun lt!340253 () SeekEntryResult!7805)

(assert (=> b!764647 (= res!517427 (and (is-Intermediate!7805 lt!340253) (not (undefined!8617 lt!340253)) (bvslt (x!64506 lt!340253) #b01111111111111111111111111111110) (bvsge (x!64506 lt!340253) #b00000000000000000000000000000000) (bvsge (x!64506 lt!340253) x!1131)))))

(assert (=> b!764647 (=> (not res!517427) (not e!425891))))

(declare-fun d!100975 () Bool)

(assert (=> d!100975 e!425890))

(declare-fun c!83996 () Bool)

(assert (=> d!100975 (= c!83996 (and (is-Intermediate!7805 lt!340253) (undefined!8617 lt!340253)))))

(assert (=> d!100975 (= lt!340253 e!425889)))

(declare-fun c!83998 () Bool)

(assert (=> d!100975 (= c!83998 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!340252 () (_ BitVec 64))

(assert (=> d!100975 (= lt!340252 (select (arr!20198 a!3186) index!1321))))

(assert (=> d!100975 (validMask!0 mask!3328)))

(assert (=> d!100975 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20198 a!3186) j!159) a!3186 mask!3328) lt!340253)))

(declare-fun b!764648 () Bool)

(assert (=> b!764648 (= e!425889 e!425887)))

(declare-fun c!83997 () Bool)

(assert (=> b!764648 (= c!83997 (or (= lt!340252 (select (arr!20198 a!3186) j!159)) (= (bvadd lt!340252 lt!340252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764649 () Bool)

(assert (=> b!764649 (and (bvsge (index!33589 lt!340253) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340253) (size!20619 a!3186)))))

(declare-fun e!425888 () Bool)

(assert (=> b!764649 (= e!425888 (= (select (arr!20198 a!3186) (index!33589 lt!340253)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764650 () Bool)

(assert (=> b!764650 (and (bvsge (index!33589 lt!340253) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340253) (size!20619 a!3186)))))

(declare-fun res!517428 () Bool)

(assert (=> b!764650 (= res!517428 (= (select (arr!20198 a!3186) (index!33589 lt!340253)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764650 (=> res!517428 e!425888)))

(declare-fun b!764651 () Bool)

(assert (=> b!764651 (= e!425890 (bvsge (x!64506 lt!340253) #b01111111111111111111111111111110))))

(declare-fun b!764652 () Bool)

(assert (=> b!764652 (and (bvsge (index!33589 lt!340253) #b00000000000000000000000000000000) (bvslt (index!33589 lt!340253) (size!20619 a!3186)))))

(declare-fun res!517429 () Bool)

(assert (=> b!764652 (= res!517429 (= (select (arr!20198 a!3186) (index!33589 lt!340253)) (select (arr!20198 a!3186) j!159)))))

(assert (=> b!764652 (=> res!517429 e!425888)))

(assert (=> b!764652 (= e!425891 e!425888)))

(assert (= (and d!100975 c!83998) b!764646))

(assert (= (and d!100975 (not c!83998)) b!764648))

(assert (= (and b!764648 c!83997) b!764645))

(assert (= (and b!764648 (not c!83997)) b!764644))

(assert (= (and d!100975 c!83996) b!764651))

(assert (= (and d!100975 (not c!83996)) b!764647))

(assert (= (and b!764647 res!517427) b!764652))

(assert (= (and b!764652 (not res!517429)) b!764650))

(assert (= (and b!764650 (not res!517428)) b!764649))

(declare-fun m!711007 () Bool)

(assert (=> b!764652 m!711007))

(assert (=> b!764644 m!710873))

(assert (=> b!764644 m!710873))

(assert (=> b!764644 m!710783))

(declare-fun m!711009 () Bool)

(assert (=> b!764644 m!711009))

(assert (=> b!764650 m!711007))

(assert (=> b!764649 m!711007))

(assert (=> d!100975 m!710871))

(assert (=> d!100975 m!710793))

(assert (=> b!764338 d!100975))

(push 1)

