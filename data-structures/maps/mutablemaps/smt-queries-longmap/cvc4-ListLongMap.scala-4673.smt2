; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65048 () Bool)

(assert start!65048)

(declare-fun b!734035 () Bool)

(declare-fun res!493352 () Bool)

(declare-fun e!410742 () Bool)

(assert (=> b!734035 (=> (not res!493352) (not e!410742))))

(declare-datatypes ((array!41243 0))(
  ( (array!41244 (arr!19733 (Array (_ BitVec 32) (_ BitVec 64))) (size!20154 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41243)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!734035 (= res!493352 (and (= (size!20154 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20154 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20154 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734036 () Bool)

(declare-fun e!410740 () Bool)

(declare-fun e!410736 () Bool)

(assert (=> b!734036 (= e!410740 e!410736)))

(declare-fun res!493346 () Bool)

(assert (=> b!734036 (=> (not res!493346) (not e!410736))))

(declare-datatypes ((SeekEntryResult!7340 0))(
  ( (MissingZero!7340 (index!31727 (_ BitVec 32))) (Found!7340 (index!31728 (_ BitVec 32))) (Intermediate!7340 (undefined!8152 Bool) (index!31729 (_ BitVec 32)) (x!62751 (_ BitVec 32))) (Undefined!7340) (MissingVacant!7340 (index!31730 (_ BitVec 32))) )
))
(declare-fun lt!325348 () SeekEntryResult!7340)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41243 (_ BitVec 32)) SeekEntryResult!7340)

(assert (=> b!734036 (= res!493346 (= (seekEntryOrOpen!0 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) lt!325348))))

(assert (=> b!734036 (= lt!325348 (Found!7340 j!159))))

(declare-fun b!734037 () Bool)

(declare-fun res!493343 () Bool)

(assert (=> b!734037 (=> (not res!493343) (not e!410742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734037 (= res!493343 (validKeyInArray!0 (select (arr!19733 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!410739 () Bool)

(declare-fun b!734038 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41243 (_ BitVec 32)) SeekEntryResult!7340)

(assert (=> b!734038 (= e!410739 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) (Found!7340 j!159)))))

(declare-fun b!734039 () Bool)

(declare-fun res!493355 () Bool)

(assert (=> b!734039 (=> (not res!493355) (not e!410742))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734039 (= res!493355 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734041 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!734041 (= e!410736 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) lt!325348))))

(declare-fun e!410738 () Bool)

(declare-fun b!734042 () Bool)

(declare-fun lt!325353 () (_ BitVec 32))

(assert (=> b!734042 (= e!410738 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!325353 #b00000000000000000000000000000000) (bvsge lt!325353 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun b!734043 () Bool)

(declare-fun res!493348 () Bool)

(assert (=> b!734043 (=> res!493348 e!410738)))

(assert (=> b!734043 (= res!493348 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) (Found!7340 j!159)))))

(declare-fun b!734044 () Bool)

(declare-fun e!410744 () Bool)

(assert (=> b!734044 (= e!410742 e!410744)))

(declare-fun res!493344 () Bool)

(assert (=> b!734044 (=> (not res!493344) (not e!410744))))

(declare-fun lt!325352 () SeekEntryResult!7340)

(assert (=> b!734044 (= res!493344 (or (= lt!325352 (MissingZero!7340 i!1173)) (= lt!325352 (MissingVacant!7340 i!1173))))))

(assert (=> b!734044 (= lt!325352 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!734045 () Bool)

(declare-fun res!493341 () Bool)

(assert (=> b!734045 (=> (not res!493341) (not e!410744))))

(declare-datatypes ((List!13788 0))(
  ( (Nil!13785) (Cons!13784 (h!14853 (_ BitVec 64)) (t!20111 List!13788)) )
))
(declare-fun arrayNoDuplicates!0 (array!41243 (_ BitVec 32) List!13788) Bool)

(assert (=> b!734045 (= res!493341 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13785))))

(declare-fun b!734046 () Bool)

(declare-fun e!410743 () Bool)

(declare-fun e!410741 () Bool)

(assert (=> b!734046 (= e!410743 (not e!410741))))

(declare-fun res!493339 () Bool)

(assert (=> b!734046 (=> res!493339 e!410741)))

(declare-fun lt!325349 () SeekEntryResult!7340)

(assert (=> b!734046 (= res!493339 (or (not (is-Intermediate!7340 lt!325349)) (bvsge x!1131 (x!62751 lt!325349))))))

(assert (=> b!734046 e!410740))

(declare-fun res!493345 () Bool)

(assert (=> b!734046 (=> (not res!493345) (not e!410740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41243 (_ BitVec 32)) Bool)

(assert (=> b!734046 (= res!493345 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24998 0))(
  ( (Unit!24999) )
))
(declare-fun lt!325354 () Unit!24998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41243 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24998)

(assert (=> b!734046 (= lt!325354 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!734047 () Bool)

(declare-fun res!493350 () Bool)

(assert (=> b!734047 (=> (not res!493350) (not e!410744))))

(assert (=> b!734047 (= res!493350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!493349 () Bool)

(assert (=> start!65048 (=> (not res!493349) (not e!410742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65048 (= res!493349 (validMask!0 mask!3328))))

(assert (=> start!65048 e!410742))

(assert (=> start!65048 true))

(declare-fun array_inv!15507 (array!41243) Bool)

(assert (=> start!65048 (array_inv!15507 a!3186)))

(declare-fun b!734040 () Bool)

(declare-fun res!493356 () Bool)

(declare-fun e!410737 () Bool)

(assert (=> b!734040 (=> (not res!493356) (not e!410737))))

(assert (=> b!734040 (= res!493356 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19733 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!325350 () SeekEntryResult!7340)

(declare-fun b!734048 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41243 (_ BitVec 32)) SeekEntryResult!7340)

(assert (=> b!734048 (= e!410739 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) lt!325350))))

(declare-fun b!734049 () Bool)

(declare-fun res!493353 () Bool)

(assert (=> b!734049 (=> (not res!493353) (not e!410744))))

(assert (=> b!734049 (= res!493353 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20154 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20154 a!3186))))))

(declare-fun b!734050 () Bool)

(declare-fun res!493351 () Bool)

(assert (=> b!734050 (=> (not res!493351) (not e!410742))))

(assert (=> b!734050 (= res!493351 (validKeyInArray!0 k!2102))))

(declare-fun b!734051 () Bool)

(assert (=> b!734051 (= e!410741 e!410738)))

(declare-fun res!493340 () Bool)

(assert (=> b!734051 (=> res!493340 e!410738)))

(assert (=> b!734051 (= res!493340 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734051 (= lt!325353 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!734052 () Bool)

(assert (=> b!734052 (= e!410737 e!410743)))

(declare-fun res!493354 () Bool)

(assert (=> b!734052 (=> (not res!493354) (not e!410743))))

(declare-fun lt!325351 () SeekEntryResult!7340)

(assert (=> b!734052 (= res!493354 (= lt!325351 lt!325349))))

(declare-fun lt!325347 () array!41243)

(declare-fun lt!325355 () (_ BitVec 64))

(assert (=> b!734052 (= lt!325349 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325355 lt!325347 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734052 (= lt!325351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325355 mask!3328) lt!325355 lt!325347 mask!3328))))

(assert (=> b!734052 (= lt!325355 (select (store (arr!19733 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!734052 (= lt!325347 (array!41244 (store (arr!19733 a!3186) i!1173 k!2102) (size!20154 a!3186)))))

(declare-fun b!734053 () Bool)

(declare-fun res!493347 () Bool)

(assert (=> b!734053 (=> (not res!493347) (not e!410737))))

(assert (=> b!734053 (= res!493347 e!410739)))

(declare-fun c!80727 () Bool)

(assert (=> b!734053 (= c!80727 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734054 () Bool)

(assert (=> b!734054 (= e!410744 e!410737)))

(declare-fun res!493342 () Bool)

(assert (=> b!734054 (=> (not res!493342) (not e!410737))))

(assert (=> b!734054 (= res!493342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19733 a!3186) j!159) mask!3328) (select (arr!19733 a!3186) j!159) a!3186 mask!3328) lt!325350))))

(assert (=> b!734054 (= lt!325350 (Intermediate!7340 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65048 res!493349) b!734035))

(assert (= (and b!734035 res!493352) b!734037))

(assert (= (and b!734037 res!493343) b!734050))

(assert (= (and b!734050 res!493351) b!734039))

(assert (= (and b!734039 res!493355) b!734044))

(assert (= (and b!734044 res!493344) b!734047))

(assert (= (and b!734047 res!493350) b!734045))

(assert (= (and b!734045 res!493341) b!734049))

(assert (= (and b!734049 res!493353) b!734054))

(assert (= (and b!734054 res!493342) b!734040))

(assert (= (and b!734040 res!493356) b!734053))

(assert (= (and b!734053 c!80727) b!734048))

(assert (= (and b!734053 (not c!80727)) b!734038))

(assert (= (and b!734053 res!493347) b!734052))

(assert (= (and b!734052 res!493354) b!734046))

(assert (= (and b!734046 res!493345) b!734036))

(assert (= (and b!734036 res!493346) b!734041))

(assert (= (and b!734046 (not res!493339)) b!734051))

(assert (= (and b!734051 (not res!493340)) b!734043))

(assert (= (and b!734043 (not res!493348)) b!734042))

(declare-fun m!686827 () Bool)

(assert (=> b!734039 m!686827))

(declare-fun m!686829 () Bool)

(assert (=> b!734040 m!686829))

(declare-fun m!686831 () Bool)

(assert (=> b!734052 m!686831))

(declare-fun m!686833 () Bool)

(assert (=> b!734052 m!686833))

(assert (=> b!734052 m!686831))

(declare-fun m!686835 () Bool)

(assert (=> b!734052 m!686835))

(declare-fun m!686837 () Bool)

(assert (=> b!734052 m!686837))

(declare-fun m!686839 () Bool)

(assert (=> b!734052 m!686839))

(declare-fun m!686841 () Bool)

(assert (=> b!734051 m!686841))

(declare-fun m!686843 () Bool)

(assert (=> b!734048 m!686843))

(assert (=> b!734048 m!686843))

(declare-fun m!686845 () Bool)

(assert (=> b!734048 m!686845))

(declare-fun m!686847 () Bool)

(assert (=> start!65048 m!686847))

(declare-fun m!686849 () Bool)

(assert (=> start!65048 m!686849))

(declare-fun m!686851 () Bool)

(assert (=> b!734047 m!686851))

(declare-fun m!686853 () Bool)

(assert (=> b!734050 m!686853))

(declare-fun m!686855 () Bool)

(assert (=> b!734044 m!686855))

(assert (=> b!734038 m!686843))

(assert (=> b!734038 m!686843))

(declare-fun m!686857 () Bool)

(assert (=> b!734038 m!686857))

(declare-fun m!686859 () Bool)

(assert (=> b!734046 m!686859))

(declare-fun m!686861 () Bool)

(assert (=> b!734046 m!686861))

(declare-fun m!686863 () Bool)

(assert (=> b!734045 m!686863))

(assert (=> b!734043 m!686843))

(assert (=> b!734043 m!686843))

(assert (=> b!734043 m!686857))

(assert (=> b!734054 m!686843))

(assert (=> b!734054 m!686843))

(declare-fun m!686865 () Bool)

(assert (=> b!734054 m!686865))

(assert (=> b!734054 m!686865))

(assert (=> b!734054 m!686843))

(declare-fun m!686867 () Bool)

(assert (=> b!734054 m!686867))

(assert (=> b!734037 m!686843))

(assert (=> b!734037 m!686843))

(declare-fun m!686869 () Bool)

(assert (=> b!734037 m!686869))

(assert (=> b!734041 m!686843))

(assert (=> b!734041 m!686843))

(declare-fun m!686871 () Bool)

(assert (=> b!734041 m!686871))

(assert (=> b!734036 m!686843))

(assert (=> b!734036 m!686843))

(declare-fun m!686873 () Bool)

(assert (=> b!734036 m!686873))

(push 1)

(assert (not b!734047))

(assert (not b!734041))

(assert (not start!65048))

(assert (not b!734051))

(assert (not b!734043))

(assert (not b!734045))

(assert (not b!734046))

(assert (not b!734050))

(assert (not b!734044))

(assert (not b!734048))

(assert (not b!734037))

(assert (not b!734052))

(assert (not b!734054))

(assert (not b!734038))

(assert (not b!734039))

(assert (not b!734036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!734191 () Bool)

(declare-fun e!410829 () Bool)

(declare-fun lt!325406 () SeekEntryResult!7340)

(assert (=> b!734191 (= e!410829 (bvsge (x!62751 lt!325406) #b01111111111111111111111111111110))))

(declare-fun b!734192 () Bool)

(assert (=> b!734192 (and (bvsge (index!31729 lt!325406) #b00000000000000000000000000000000) (bvslt (index!31729 lt!325406) (size!20154 a!3186)))))

(declare-fun res!493399 () Bool)

(assert (=> b!734192 (= res!493399 (= (select (arr!19733 a!3186) (index!31729 lt!325406)) (select (arr!19733 a!3186) j!159)))))

(declare-fun e!410831 () Bool)

(assert (=> b!734192 (=> res!493399 e!410831)))

(declare-fun e!410827 () Bool)

(assert (=> b!734192 (= e!410827 e!410831)))

(declare-fun b!734193 () Bool)

(assert (=> b!734193 (and (bvsge (index!31729 lt!325406) #b00000000000000000000000000000000) (bvslt (index!31729 lt!325406) (size!20154 a!3186)))))

(declare-fun res!493397 () Bool)

(assert (=> b!734193 (= res!493397 (= (select (arr!19733 a!3186) (index!31729 lt!325406)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734193 (=> res!493397 e!410831)))

(declare-fun d!99943 () Bool)

(assert (=> d!99943 e!410829))

(declare-fun c!80777 () Bool)

(assert (=> d!99943 (= c!80777 (and (is-Intermediate!7340 lt!325406) (undefined!8152 lt!325406)))))

(declare-fun e!410828 () SeekEntryResult!7340)

(assert (=> d!99943 (= lt!325406 e!410828)))

(declare-fun c!80778 () Bool)

(assert (=> d!99943 (= c!80778 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!325405 () (_ BitVec 64))

(assert (=> d!99943 (= lt!325405 (select (arr!19733 a!3186) index!1321))))

(assert (=> d!99943 (validMask!0 mask!3328)))

(assert (=> d!99943 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) lt!325406)))

(declare-fun b!734190 () Bool)

(assert (=> b!734190 (and (bvsge (index!31729 lt!325406) #b00000000000000000000000000000000) (bvslt (index!31729 lt!325406) (size!20154 a!3186)))))

(assert (=> b!734190 (= e!410831 (= (select (arr!19733 a!3186) (index!31729 lt!325406)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410830 () SeekEntryResult!7340)

(declare-fun b!734194 () Bool)

(assert (=> b!734194 (= e!410830 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19733 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734195 () Bool)

(assert (=> b!734195 (= e!410829 e!410827)))

(declare-fun res!493398 () Bool)

(assert (=> b!734195 (= res!493398 (and (is-Intermediate!7340 lt!325406) (not (undefined!8152 lt!325406)) (bvslt (x!62751 lt!325406) #b01111111111111111111111111111110) (bvsge (x!62751 lt!325406) #b00000000000000000000000000000000) (bvsge (x!62751 lt!325406) x!1131)))))

(assert (=> b!734195 (=> (not res!493398) (not e!410827))))

(declare-fun b!734196 () Bool)

(assert (=> b!734196 (= e!410830 (Intermediate!7340 false index!1321 x!1131))))

(declare-fun b!734197 () Bool)

(assert (=> b!734197 (= e!410828 (Intermediate!7340 true index!1321 x!1131))))

(declare-fun b!734198 () Bool)

(assert (=> b!734198 (= e!410828 e!410830)))

(declare-fun c!80776 () Bool)

(assert (=> b!734198 (= c!80776 (or (= lt!325405 (select (arr!19733 a!3186) j!159)) (= (bvadd lt!325405 lt!325405) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!99943 c!80778) b!734197))

(assert (= (and d!99943 (not c!80778)) b!734198))

(assert (= (and b!734198 c!80776) b!734196))

(assert (= (and b!734198 (not c!80776)) b!734194))

(assert (= (and d!99943 c!80777) b!734191))

(assert (= (and d!99943 (not c!80777)) b!734195))

(assert (= (and b!734195 res!493398) b!734192))

(assert (= (and b!734192 (not res!493399)) b!734193))

(assert (= (and b!734193 (not res!493397)) b!734190))

(declare-fun m!686941 () Bool)

(assert (=> b!734190 m!686941))

(assert (=> b!734193 m!686941))

(declare-fun m!686943 () Bool)

(assert (=> d!99943 m!686943))

(assert (=> d!99943 m!686847))

(assert (=> b!734192 m!686941))

(assert (=> b!734194 m!686841))

(assert (=> b!734194 m!686841))

(assert (=> b!734194 m!686843))

(declare-fun m!686945 () Bool)

(assert (=> b!734194 m!686945))

(assert (=> b!734048 d!99943))

(declare-fun d!99961 () Bool)

(assert (=> d!99961 (= (validKeyInArray!0 (select (arr!19733 a!3186) j!159)) (and (not (= (select (arr!19733 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19733 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!734037 d!99961))

(declare-fun b!734248 () Bool)

(declare-fun e!410862 () SeekEntryResult!7340)

(declare-fun lt!325439 () SeekEntryResult!7340)

(assert (=> b!734248 (= e!410862 (seekKeyOrZeroReturnVacant!0 (x!62751 lt!325439) (index!31729 lt!325439) (index!31729 lt!325439) (select (arr!19733 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734249 () Bool)

(declare-fun c!80799 () Bool)

(declare-fun lt!325438 () (_ BitVec 64))

(assert (=> b!734249 (= c!80799 (= lt!325438 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410861 () SeekEntryResult!7340)

(assert (=> b!734249 (= e!410861 e!410862)))

(declare-fun b!734250 () Bool)

(declare-fun e!410863 () SeekEntryResult!7340)

(assert (=> b!734250 (= e!410863 e!410861)))

(assert (=> b!734250 (= lt!325438 (select (arr!19733 a!3186) (index!31729 lt!325439)))))

(declare-fun c!80798 () Bool)

(assert (=> b!734250 (= c!80798 (= lt!325438 (select (arr!19733 a!3186) j!159)))))

(declare-fun b!734251 () Bool)

(assert (=> b!734251 (= e!410862 (MissingZero!7340 (index!31729 lt!325439)))))

(declare-fun b!734252 () Bool)

(assert (=> b!734252 (= e!410863 Undefined!7340)))

(declare-fun b!734253 () Bool)

(assert (=> b!734253 (= e!410861 (Found!7340 (index!31729 lt!325439)))))

(declare-fun d!99967 () Bool)

(declare-fun lt!325440 () SeekEntryResult!7340)

(assert (=> d!99967 (and (or (is-Undefined!7340 lt!325440) (not (is-Found!7340 lt!325440)) (and (bvsge (index!31728 lt!325440) #b00000000000000000000000000000000) (bvslt (index!31728 lt!325440) (size!20154 a!3186)))) (or (is-Undefined!7340 lt!325440) (is-Found!7340 lt!325440) (not (is-MissingZero!7340 lt!325440)) (and (bvsge (index!31727 lt!325440) #b00000000000000000000000000000000) (bvslt (index!31727 lt!325440) (size!20154 a!3186)))) (or (is-Undefined!7340 lt!325440) (is-Found!7340 lt!325440) (is-MissingZero!7340 lt!325440) (not (is-MissingVacant!7340 lt!325440)) (and (bvsge (index!31730 lt!325440) #b00000000000000000000000000000000) (bvslt (index!31730 lt!325440) (size!20154 a!3186)))) (or (is-Undefined!7340 lt!325440) (ite (is-Found!7340 lt!325440) (= (select (arr!19733 a!3186) (index!31728 lt!325440)) (select (arr!19733 a!3186) j!159)) (ite (is-MissingZero!7340 lt!325440) (= (select (arr!19733 a!3186) (index!31727 lt!325440)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7340 lt!325440) (= (select (arr!19733 a!3186) (index!31730 lt!325440)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99967 (= lt!325440 e!410863)))

(declare-fun c!80800 () Bool)

(assert (=> d!99967 (= c!80800 (and (is-Intermediate!7340 lt!325439) (undefined!8152 lt!325439)))))

(assert (=> d!99967 (= lt!325439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19733 a!3186) j!159) mask!3328) (select (arr!19733 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99967 (validMask!0 mask!3328)))

(assert (=> d!99967 (= (seekEntryOrOpen!0 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) lt!325440)))

(assert (= (and d!99967 c!80800) b!734252))

(assert (= (and d!99967 (not c!80800)) b!734250))

(assert (= (and b!734250 c!80798) b!734253))

(assert (= (and b!734250 (not c!80798)) b!734249))

(assert (= (and b!734249 c!80799) b!734251))

(assert (= (and b!734249 (not c!80799)) b!734248))

(assert (=> b!734248 m!686843))

(declare-fun m!686971 () Bool)

(assert (=> b!734248 m!686971))

(declare-fun m!686973 () Bool)

(assert (=> b!734250 m!686973))

(declare-fun m!686975 () Bool)

(assert (=> d!99967 m!686975))

(assert (=> d!99967 m!686865))

(assert (=> d!99967 m!686843))

(assert (=> d!99967 m!686867))

(declare-fun m!686977 () Bool)

(assert (=> d!99967 m!686977))

(declare-fun m!686979 () Bool)

(assert (=> d!99967 m!686979))

(assert (=> d!99967 m!686843))

(assert (=> d!99967 m!686865))

(assert (=> d!99967 m!686847))

(assert (=> b!734036 d!99967))

(declare-fun b!734310 () Bool)

(declare-fun e!410898 () Bool)

(declare-fun e!410896 () Bool)

(assert (=> b!734310 (= e!410898 e!410896)))

(declare-fun lt!325464 () (_ BitVec 64))

(assert (=> b!734310 (= lt!325464 (select (arr!19733 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!325465 () Unit!24998)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41243 (_ BitVec 64) (_ BitVec 32)) Unit!24998)

(assert (=> b!734310 (= lt!325465 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325464 #b00000000000000000000000000000000))))

(assert (=> b!734310 (arrayContainsKey!0 a!3186 lt!325464 #b00000000000000000000000000000000)))

(declare-fun lt!325466 () Unit!24998)

(assert (=> b!734310 (= lt!325466 lt!325465)))

(declare-fun res!493429 () Bool)

(assert (=> b!734310 (= res!493429 (= (seekEntryOrOpen!0 (select (arr!19733 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7340 #b00000000000000000000000000000000)))))

(assert (=> b!734310 (=> (not res!493429) (not e!410896))))

(declare-fun b!734311 () Bool)

(declare-fun e!410897 () Bool)

(assert (=> b!734311 (= e!410897 e!410898)))

(declare-fun c!80821 () Bool)

(assert (=> b!734311 (= c!80821 (validKeyInArray!0 (select (arr!19733 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!734312 () Bool)

(declare-fun call!34903 () Bool)

(assert (=> b!734312 (= e!410896 call!34903)))

(declare-fun b!734313 () Bool)

(assert (=> b!734313 (= e!410898 call!34903)))

(declare-fun d!99979 () Bool)

(declare-fun res!493428 () Bool)

(assert (=> d!99979 (=> res!493428 e!410897)))

(assert (=> d!99979 (= res!493428 (bvsge #b00000000000000000000000000000000 (size!20154 a!3186)))))

(assert (=> d!99979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!410897)))

(declare-fun bm!34900 () Bool)

(assert (=> bm!34900 (= call!34903 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!99979 (not res!493428)) b!734311))

(assert (= (and b!734311 c!80821) b!734310))

(assert (= (and b!734311 (not c!80821)) b!734313))

(assert (= (and b!734310 res!493429) b!734312))

(assert (= (or b!734312 b!734313) bm!34900))

(declare-fun m!687019 () Bool)

(assert (=> b!734310 m!687019))

(declare-fun m!687021 () Bool)

(assert (=> b!734310 m!687021))

(declare-fun m!687023 () Bool)

(assert (=> b!734310 m!687023))

(assert (=> b!734310 m!687019))

(declare-fun m!687025 () Bool)

(assert (=> b!734310 m!687025))

(assert (=> b!734311 m!687019))

(assert (=> b!734311 m!687019))

(declare-fun m!687027 () Bool)

(assert (=> b!734311 m!687027))

(declare-fun m!687029 () Bool)

(assert (=> bm!34900 m!687029))

(assert (=> b!734047 d!99979))

(declare-fun b!734314 () Bool)

(declare-fun e!410901 () Bool)

(declare-fun e!410899 () Bool)

(assert (=> b!734314 (= e!410901 e!410899)))

(declare-fun lt!325467 () (_ BitVec 64))

(assert (=> b!734314 (= lt!325467 (select (arr!19733 a!3186) j!159))))

(declare-fun lt!325468 () Unit!24998)

(assert (=> b!734314 (= lt!325468 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325467 j!159))))

(assert (=> b!734314 (arrayContainsKey!0 a!3186 lt!325467 #b00000000000000000000000000000000)))

(declare-fun lt!325469 () Unit!24998)

(assert (=> b!734314 (= lt!325469 lt!325468)))

(declare-fun res!493431 () Bool)

(assert (=> b!734314 (= res!493431 (= (seekEntryOrOpen!0 (select (arr!19733 a!3186) j!159) a!3186 mask!3328) (Found!7340 j!159)))))

(assert (=> b!734314 (=> (not res!493431) (not e!410899))))

(declare-fun b!734315 () Bool)

(declare-fun e!410900 () Bool)

(assert (=> b!734315 (= e!410900 e!410901)))

(declare-fun c!80822 () Bool)

(assert (=> b!734315 (= c!80822 (validKeyInArray!0 (select (arr!19733 a!3186) j!159)))))

(declare-fun b!734316 () Bool)

(declare-fun call!34904 () Bool)

(assert (=> b!734316 (= e!410899 call!34904)))

(declare-fun b!734317 () Bool)

(assert (=> b!734317 (= e!410901 call!34904)))

(declare-fun d!99989 () Bool)

(declare-fun res!493430 () Bool)

(assert (=> d!99989 (=> res!493430 e!410900)))

(assert (=> d!99989 (= res!493430 (bvsge j!159 (size!20154 a!3186)))))

(assert (=> d!99989 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!410900)))

(declare-fun bm!34901 () Bool)

(assert (=> bm!34901 (= call!34904 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!99989 (not res!493430)) b!734315))

(assert (= (and b!734315 c!80822) b!734314))

(assert (= (and b!734315 (not c!80822)) b!734317))

(assert (= (and b!734314 res!493431) b!734316))

(assert (= (or b!734316 b!734317) bm!34901))

(assert (=> b!734314 m!686843))

(declare-fun m!687031 () Bool)

(assert (=> b!734314 m!687031))

(declare-fun m!687033 () Bool)

(assert (=> b!734314 m!687033))

(assert (=> b!734314 m!686843))

(assert (=> b!734314 m!686873))

(assert (=> b!734315 m!686843))

(assert (=> b!734315 m!686843))

(assert (=> b!734315 m!686869))

(declare-fun m!687035 () Bool)

(assert (=> bm!34901 m!687035))

(assert (=> b!734046 d!99989))

(declare-fun d!99991 () Bool)

(assert (=> d!99991 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!325478 () Unit!24998)

(declare-fun choose!38 (array!41243 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24998)

(assert (=> d!99991 (= lt!325478 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99991 (validMask!0 mask!3328)))

(assert (=> d!99991 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!325478)))

(declare-fun bs!20979 () Bool)

(assert (= bs!20979 d!99991))

(assert (=> bs!20979 m!686859))

(declare-fun m!687037 () Bool)

(assert (=> bs!20979 m!687037))

(assert (=> bs!20979 m!686847))

(assert (=> b!734046 d!99991))

(declare-fun b!734328 () Bool)

(declare-fun e!410913 () Bool)

(declare-fun e!410912 () Bool)

(assert (=> b!734328 (= e!410913 e!410912)))

(declare-fun res!493438 () Bool)

(assert (=> b!734328 (=> (not res!493438) (not e!410912))))

(declare-fun e!410911 () Bool)

(assert (=> b!734328 (= res!493438 (not e!410911))))

(declare-fun res!493440 () Bool)

(assert (=> b!734328 (=> (not res!493440) (not e!410911))))

(assert (=> b!734328 (= res!493440 (validKeyInArray!0 (select (arr!19733 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!99995 () Bool)

(declare-fun res!493439 () Bool)

(assert (=> d!99995 (=> res!493439 e!410913)))

(assert (=> d!99995 (= res!493439 (bvsge #b00000000000000000000000000000000 (size!20154 a!3186)))))

(assert (=> d!99995 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13785) e!410913)))

(declare-fun b!734329 () Bool)

(declare-fun e!410910 () Bool)

(declare-fun call!34907 () Bool)

(assert (=> b!734329 (= e!410910 call!34907)))

(declare-fun b!734330 () Bool)

(assert (=> b!734330 (= e!410910 call!34907)))

(declare-fun b!734331 () Bool)

(declare-fun contains!4062 (List!13788 (_ BitVec 64)) Bool)

(assert (=> b!734331 (= e!410911 (contains!4062 Nil!13785 (select (arr!19733 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34904 () Bool)

(declare-fun c!80825 () Bool)

(assert (=> bm!34904 (= call!34907 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!80825 (Cons!13784 (select (arr!19733 a!3186) #b00000000000000000000000000000000) Nil!13785) Nil!13785)))))

(declare-fun b!734332 () Bool)

(assert (=> b!734332 (= e!410912 e!410910)))

(assert (=> b!734332 (= c!80825 (validKeyInArray!0 (select (arr!19733 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99995 (not res!493439)) b!734328))

(assert (= (and b!734328 res!493440) b!734331))

(assert (= (and b!734328 res!493438) b!734332))

(assert (= (and b!734332 c!80825) b!734329))

(assert (= (and b!734332 (not c!80825)) b!734330))

(assert (= (or b!734329 b!734330) bm!34904))

(assert (=> b!734328 m!687019))

(assert (=> b!734328 m!687019))

(assert (=> b!734328 m!687027))

(assert (=> b!734331 m!687019))

(assert (=> b!734331 m!687019))

(declare-fun m!687039 () Bool)

(assert (=> b!734331 m!687039))

(assert (=> bm!34904 m!687019))

(declare-fun m!687041 () Bool)

(assert (=> bm!34904 m!687041))

(assert (=> b!734332 m!687019))

(assert (=> b!734332 m!687019))

(assert (=> b!734332 m!687027))

(assert (=> b!734045 d!99995))

(declare-fun lt!325480 () SeekEntryResult!7340)

(declare-fun e!410915 () SeekEntryResult!7340)

(declare-fun b!734333 () Bool)

(assert (=> b!734333 (= e!410915 (seekKeyOrZeroReturnVacant!0 (x!62751 lt!325480) (index!31729 lt!325480) (index!31729 lt!325480) k!2102 a!3186 mask!3328))))

(declare-fun b!734334 () Bool)

(declare-fun c!80827 () Bool)

(declare-fun lt!325479 () (_ BitVec 64))

(assert (=> b!734334 (= c!80827 (= lt!325479 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410914 () SeekEntryResult!7340)

(assert (=> b!734334 (= e!410914 e!410915)))

(declare-fun b!734335 () Bool)

(declare-fun e!410916 () SeekEntryResult!7340)

(assert (=> b!734335 (= e!410916 e!410914)))

(assert (=> b!734335 (= lt!325479 (select (arr!19733 a!3186) (index!31729 lt!325480)))))

(declare-fun c!80826 () Bool)

(assert (=> b!734335 (= c!80826 (= lt!325479 k!2102))))

(declare-fun b!734336 () Bool)

(assert (=> b!734336 (= e!410915 (MissingZero!7340 (index!31729 lt!325480)))))

(declare-fun b!734337 () Bool)

(assert (=> b!734337 (= e!410916 Undefined!7340)))

(declare-fun b!734338 () Bool)

(assert (=> b!734338 (= e!410914 (Found!7340 (index!31729 lt!325480)))))

(declare-fun d!99997 () Bool)

(declare-fun lt!325481 () SeekEntryResult!7340)

(assert (=> d!99997 (and (or (is-Undefined!7340 lt!325481) (not (is-Found!7340 lt!325481)) (and (bvsge (index!31728 lt!325481) #b00000000000000000000000000000000) (bvslt (index!31728 lt!325481) (size!20154 a!3186)))) (or (is-Undefined!7340 lt!325481) (is-Found!7340 lt!325481) (not (is-MissingZero!7340 lt!325481)) (and (bvsge (index!31727 lt!325481) #b00000000000000000000000000000000) (bvslt (index!31727 lt!325481) (size!20154 a!3186)))) (or (is-Undefined!7340 lt!325481) (is-Found!7340 lt!325481) (is-MissingZero!7340 lt!325481) (not (is-MissingVacant!7340 lt!325481)) (and (bvsge (index!31730 lt!325481) #b00000000000000000000000000000000) (bvslt (index!31730 lt!325481) (size!20154 a!3186)))) (or (is-Undefined!7340 lt!325481) (ite (is-Found!7340 lt!325481) (= (select (arr!19733 a!3186) (index!31728 lt!325481)) k!2102) (ite (is-MissingZero!7340 lt!325481) (= (select (arr!19733 a!3186) (index!31727 lt!325481)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7340 lt!325481) (= (select (arr!19733 a!3186) (index!31730 lt!325481)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99997 (= lt!325481 e!410916)))

(declare-fun c!80828 () Bool)

(assert (=> d!99997 (= c!80828 (and (is-Intermediate!7340 lt!325480) (undefined!8152 lt!325480)))))

(assert (=> d!99997 (= lt!325480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99997 (validMask!0 mask!3328)))

(assert (=> d!99997 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!325481)))

(assert (= (and d!99997 c!80828) b!734337))

(assert (= (and d!99997 (not c!80828)) b!734335))

(assert (= (and b!734335 c!80826) b!734338))

(assert (= (and b!734335 (not c!80826)) b!734334))

(assert (= (and b!734334 c!80827) b!734336))

(assert (= (and b!734334 (not c!80827)) b!734333))

(declare-fun m!687043 () Bool)

(assert (=> b!734333 m!687043))

(declare-fun m!687045 () Bool)

(assert (=> b!734335 m!687045))

(declare-fun m!687047 () Bool)

(assert (=> d!99997 m!687047))

(declare-fun m!687049 () Bool)

(assert (=> d!99997 m!687049))

(declare-fun m!687051 () Bool)

(assert (=> d!99997 m!687051))

(declare-fun m!687053 () Bool)

(assert (=> d!99997 m!687053))

(declare-fun m!687055 () Bool)

(assert (=> d!99997 m!687055))

(assert (=> d!99997 m!687049))

(assert (=> d!99997 m!686847))

(assert (=> b!734044 d!99997))

(declare-fun b!734340 () Bool)

(declare-fun e!410919 () Bool)

(declare-fun lt!325483 () SeekEntryResult!7340)

(assert (=> b!734340 (= e!410919 (bvsge (x!62751 lt!325483) #b01111111111111111111111111111110))))

(declare-fun b!734341 () Bool)

(assert (=> b!734341 (and (bvsge (index!31729 lt!325483) #b00000000000000000000000000000000) (bvslt (index!31729 lt!325483) (size!20154 a!3186)))))

(declare-fun res!493443 () Bool)

(assert (=> b!734341 (= res!493443 (= (select (arr!19733 a!3186) (index!31729 lt!325483)) (select (arr!19733 a!3186) j!159)))))

(declare-fun e!410921 () Bool)

(assert (=> b!734341 (=> res!493443 e!410921)))

(declare-fun e!410917 () Bool)

(assert (=> b!734341 (= e!410917 e!410921)))

(declare-fun b!734342 () Bool)

