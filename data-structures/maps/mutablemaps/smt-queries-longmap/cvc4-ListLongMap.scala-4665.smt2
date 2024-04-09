; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64856 () Bool)

(assert start!64856)

(declare-fun b!731797 () Bool)

(declare-fun res!491841 () Bool)

(declare-fun e!409513 () Bool)

(assert (=> b!731797 (=> (not res!491841) (not e!409513))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41189 0))(
  ( (array!41190 (arr!19709 (Array (_ BitVec 32) (_ BitVec 64))) (size!20130 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41189)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!731797 (= res!491841 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20130 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20130 a!3186))))))

(declare-fun b!731798 () Bool)

(declare-fun res!491832 () Bool)

(declare-fun e!409515 () Bool)

(assert (=> b!731798 (=> (not res!491832) (not e!409515))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!731798 (= res!491832 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19709 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!324322 () (_ BitVec 32))

(declare-fun e!409516 () Bool)

(declare-fun b!731799 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!731799 (= e!409516 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!324322 #b00000000000000000000000000000000) (bvsge lt!324322 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun b!731800 () Bool)

(declare-fun res!491838 () Bool)

(declare-fun e!409521 () Bool)

(assert (=> b!731800 (=> (not res!491838) (not e!409521))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!731800 (= res!491838 (and (= (size!20130 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20130 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20130 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!731801 () Bool)

(declare-fun res!491833 () Bool)

(assert (=> b!731801 (=> (not res!491833) (not e!409521))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!731801 (= res!491833 (validKeyInArray!0 k!2102))))

(declare-fun res!491837 () Bool)

(assert (=> start!64856 (=> (not res!491837) (not e!409521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64856 (= res!491837 (validMask!0 mask!3328))))

(assert (=> start!64856 e!409521))

(assert (=> start!64856 true))

(declare-fun array_inv!15483 (array!41189) Bool)

(assert (=> start!64856 (array_inv!15483 a!3186)))

(declare-fun b!731802 () Bool)

(declare-fun res!491834 () Bool)

(assert (=> b!731802 (=> (not res!491834) (not e!409513))))

(declare-datatypes ((List!13764 0))(
  ( (Nil!13761) (Cons!13760 (h!14823 (_ BitVec 64)) (t!20087 List!13764)) )
))
(declare-fun arrayNoDuplicates!0 (array!41189 (_ BitVec 32) List!13764) Bool)

(assert (=> b!731802 (= res!491834 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13761))))

(declare-fun b!731803 () Bool)

(declare-fun res!491836 () Bool)

(assert (=> b!731803 (=> res!491836 e!409516)))

(declare-datatypes ((SeekEntryResult!7316 0))(
  ( (MissingZero!7316 (index!31631 (_ BitVec 32))) (Found!7316 (index!31632 (_ BitVec 32))) (Intermediate!7316 (undefined!8128 Bool) (index!31633 (_ BitVec 32)) (x!62639 (_ BitVec 32))) (Undefined!7316) (MissingVacant!7316 (index!31634 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41189 (_ BitVec 32)) SeekEntryResult!7316)

(assert (=> b!731803 (= res!491836 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) (Found!7316 j!159))))))

(declare-fun b!731804 () Bool)

(declare-fun res!491828 () Bool)

(assert (=> b!731804 (=> (not res!491828) (not e!409521))))

(declare-fun arrayContainsKey!0 (array!41189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!731804 (= res!491828 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!731805 () Bool)

(declare-fun e!409517 () Bool)

(assert (=> b!731805 (= e!409515 e!409517)))

(declare-fun res!491830 () Bool)

(assert (=> b!731805 (=> (not res!491830) (not e!409517))))

(declare-fun lt!324316 () SeekEntryResult!7316)

(declare-fun lt!324321 () SeekEntryResult!7316)

(assert (=> b!731805 (= res!491830 (= lt!324316 lt!324321))))

(declare-fun lt!324320 () array!41189)

(declare-fun lt!324323 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41189 (_ BitVec 32)) SeekEntryResult!7316)

(assert (=> b!731805 (= lt!324321 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324323 lt!324320 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731805 (= lt!324316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324323 mask!3328) lt!324323 lt!324320 mask!3328))))

(assert (=> b!731805 (= lt!324323 (select (store (arr!19709 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!731805 (= lt!324320 (array!41190 (store (arr!19709 a!3186) i!1173 k!2102) (size!20130 a!3186)))))

(declare-fun b!731806 () Bool)

(declare-fun res!491839 () Bool)

(assert (=> b!731806 (=> (not res!491839) (not e!409521))))

(assert (=> b!731806 (= res!491839 (validKeyInArray!0 (select (arr!19709 a!3186) j!159)))))

(declare-fun e!409518 () Bool)

(declare-fun lt!324317 () SeekEntryResult!7316)

(declare-fun b!731807 () Bool)

(assert (=> b!731807 (= e!409518 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324317))))

(declare-fun b!731808 () Bool)

(assert (=> b!731808 (= e!409518 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) (Found!7316 j!159)))))

(declare-fun e!409512 () Bool)

(declare-fun lt!324318 () SeekEntryResult!7316)

(declare-fun b!731809 () Bool)

(assert (=> b!731809 (= e!409512 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324318))))

(declare-fun b!731810 () Bool)

(declare-fun e!409519 () Bool)

(assert (=> b!731810 (= e!409517 (not e!409519))))

(declare-fun res!491831 () Bool)

(assert (=> b!731810 (=> res!491831 e!409519)))

(assert (=> b!731810 (= res!491831 (or (not (is-Intermediate!7316 lt!324321)) (bvsge x!1131 (x!62639 lt!324321))))))

(declare-fun e!409520 () Bool)

(assert (=> b!731810 e!409520))

(declare-fun res!491840 () Bool)

(assert (=> b!731810 (=> (not res!491840) (not e!409520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41189 (_ BitVec 32)) Bool)

(assert (=> b!731810 (= res!491840 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24950 0))(
  ( (Unit!24951) )
))
(declare-fun lt!324319 () Unit!24950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24950)

(assert (=> b!731810 (= lt!324319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!731811 () Bool)

(assert (=> b!731811 (= e!409520 e!409512)))

(declare-fun res!491829 () Bool)

(assert (=> b!731811 (=> (not res!491829) (not e!409512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41189 (_ BitVec 32)) SeekEntryResult!7316)

(assert (=> b!731811 (= res!491829 (= (seekEntryOrOpen!0 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324318))))

(assert (=> b!731811 (= lt!324318 (Found!7316 j!159))))

(declare-fun b!731812 () Bool)

(assert (=> b!731812 (= e!409521 e!409513)))

(declare-fun res!491827 () Bool)

(assert (=> b!731812 (=> (not res!491827) (not e!409513))))

(declare-fun lt!324315 () SeekEntryResult!7316)

(assert (=> b!731812 (= res!491827 (or (= lt!324315 (MissingZero!7316 i!1173)) (= lt!324315 (MissingVacant!7316 i!1173))))))

(assert (=> b!731812 (= lt!324315 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!731813 () Bool)

(assert (=> b!731813 (= e!409513 e!409515)))

(declare-fun res!491842 () Bool)

(assert (=> b!731813 (=> (not res!491842) (not e!409515))))

(assert (=> b!731813 (= res!491842 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328) (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324317))))

(assert (=> b!731813 (= lt!324317 (Intermediate!7316 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!731814 () Bool)

(declare-fun res!491844 () Bool)

(assert (=> b!731814 (=> (not res!491844) (not e!409515))))

(assert (=> b!731814 (= res!491844 e!409518)))

(declare-fun c!80361 () Bool)

(assert (=> b!731814 (= c!80361 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!731815 () Bool)

(assert (=> b!731815 (= e!409519 e!409516)))

(declare-fun res!491835 () Bool)

(assert (=> b!731815 (=> res!491835 e!409516)))

(assert (=> b!731815 (= res!491835 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731815 (= lt!324322 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!731816 () Bool)

(declare-fun res!491843 () Bool)

(assert (=> b!731816 (=> (not res!491843) (not e!409513))))

(assert (=> b!731816 (= res!491843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64856 res!491837) b!731800))

(assert (= (and b!731800 res!491838) b!731806))

(assert (= (and b!731806 res!491839) b!731801))

(assert (= (and b!731801 res!491833) b!731804))

(assert (= (and b!731804 res!491828) b!731812))

(assert (= (and b!731812 res!491827) b!731816))

(assert (= (and b!731816 res!491843) b!731802))

(assert (= (and b!731802 res!491834) b!731797))

(assert (= (and b!731797 res!491841) b!731813))

(assert (= (and b!731813 res!491842) b!731798))

(assert (= (and b!731798 res!491832) b!731814))

(assert (= (and b!731814 c!80361) b!731807))

(assert (= (and b!731814 (not c!80361)) b!731808))

(assert (= (and b!731814 res!491844) b!731805))

(assert (= (and b!731805 res!491830) b!731810))

(assert (= (and b!731810 res!491840) b!731811))

(assert (= (and b!731811 res!491829) b!731809))

(assert (= (and b!731810 (not res!491831)) b!731815))

(assert (= (and b!731815 (not res!491835)) b!731803))

(assert (= (and b!731803 (not res!491836)) b!731799))

(declare-fun m!685111 () Bool)

(assert (=> b!731803 m!685111))

(assert (=> b!731803 m!685111))

(declare-fun m!685113 () Bool)

(assert (=> b!731803 m!685113))

(assert (=> b!731808 m!685111))

(assert (=> b!731808 m!685111))

(assert (=> b!731808 m!685113))

(declare-fun m!685115 () Bool)

(assert (=> start!64856 m!685115))

(declare-fun m!685117 () Bool)

(assert (=> start!64856 m!685117))

(declare-fun m!685119 () Bool)

(assert (=> b!731816 m!685119))

(declare-fun m!685121 () Bool)

(assert (=> b!731815 m!685121))

(declare-fun m!685123 () Bool)

(assert (=> b!731805 m!685123))

(declare-fun m!685125 () Bool)

(assert (=> b!731805 m!685125))

(assert (=> b!731805 m!685123))

(declare-fun m!685127 () Bool)

(assert (=> b!731805 m!685127))

(declare-fun m!685129 () Bool)

(assert (=> b!731805 m!685129))

(declare-fun m!685131 () Bool)

(assert (=> b!731805 m!685131))

(assert (=> b!731806 m!685111))

(assert (=> b!731806 m!685111))

(declare-fun m!685133 () Bool)

(assert (=> b!731806 m!685133))

(assert (=> b!731807 m!685111))

(assert (=> b!731807 m!685111))

(declare-fun m!685135 () Bool)

(assert (=> b!731807 m!685135))

(declare-fun m!685137 () Bool)

(assert (=> b!731804 m!685137))

(assert (=> b!731811 m!685111))

(assert (=> b!731811 m!685111))

(declare-fun m!685139 () Bool)

(assert (=> b!731811 m!685139))

(declare-fun m!685141 () Bool)

(assert (=> b!731802 m!685141))

(assert (=> b!731813 m!685111))

(assert (=> b!731813 m!685111))

(declare-fun m!685143 () Bool)

(assert (=> b!731813 m!685143))

(assert (=> b!731813 m!685143))

(assert (=> b!731813 m!685111))

(declare-fun m!685145 () Bool)

(assert (=> b!731813 m!685145))

(declare-fun m!685147 () Bool)

(assert (=> b!731812 m!685147))

(declare-fun m!685149 () Bool)

(assert (=> b!731798 m!685149))

(declare-fun m!685151 () Bool)

(assert (=> b!731801 m!685151))

(declare-fun m!685153 () Bool)

(assert (=> b!731810 m!685153))

(declare-fun m!685155 () Bool)

(assert (=> b!731810 m!685155))

(assert (=> b!731809 m!685111))

(assert (=> b!731809 m!685111))

(declare-fun m!685157 () Bool)

(assert (=> b!731809 m!685157))

(push 1)

(assert (not b!731815))

(assert (not b!731813))

(assert (not b!731809))

(assert (not b!731812))

(assert (not start!64856))

(assert (not b!731807))

(assert (not b!731816))

(assert (not b!731811))

(assert (not b!731805))

(assert (not b!731803))

(assert (not b!731808))

(assert (not b!731806))

(assert (not b!731802))

(assert (not b!731810))

(assert (not b!731804))

(assert (not b!731801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!99679 () Bool)

(declare-fun lt!324368 () SeekEntryResult!7316)

(assert (=> d!99679 (and (or (is-Undefined!7316 lt!324368) (not (is-Found!7316 lt!324368)) (and (bvsge (index!31632 lt!324368) #b00000000000000000000000000000000) (bvslt (index!31632 lt!324368) (size!20130 a!3186)))) (or (is-Undefined!7316 lt!324368) (is-Found!7316 lt!324368) (not (is-MissingVacant!7316 lt!324368)) (not (= (index!31634 lt!324368) resIntermediateIndex!5)) (and (bvsge (index!31634 lt!324368) #b00000000000000000000000000000000) (bvslt (index!31634 lt!324368) (size!20130 a!3186)))) (or (is-Undefined!7316 lt!324368) (ite (is-Found!7316 lt!324368) (= (select (arr!19709 a!3186) (index!31632 lt!324368)) (select (arr!19709 a!3186) j!159)) (and (is-MissingVacant!7316 lt!324368) (= (index!31634 lt!324368) resIntermediateIndex!5) (= (select (arr!19709 a!3186) (index!31634 lt!324368)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409595 () SeekEntryResult!7316)

(assert (=> d!99679 (= lt!324368 e!409595)))

(declare-fun c!80398 () Bool)

(assert (=> d!99679 (= c!80398 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!324367 () (_ BitVec 64))

(assert (=> d!99679 (= lt!324367 (select (arr!19709 a!3186) resIntermediateIndex!5))))

(assert (=> d!99679 (validMask!0 mask!3328)))

(assert (=> d!99679 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324368)))

(declare-fun b!731927 () Bool)

(declare-fun c!80400 () Bool)

(assert (=> b!731927 (= c!80400 (= lt!324367 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409594 () SeekEntryResult!7316)

(declare-fun e!409593 () SeekEntryResult!7316)

(assert (=> b!731927 (= e!409594 e!409593)))

(declare-fun b!731928 () Bool)

(assert (=> b!731928 (= e!409595 e!409594)))

(declare-fun c!80399 () Bool)

(assert (=> b!731928 (= c!80399 (= lt!324367 (select (arr!19709 a!3186) j!159)))))

(declare-fun b!731929 () Bool)

(assert (=> b!731929 (= e!409593 (MissingVacant!7316 resIntermediateIndex!5))))

(declare-fun b!731930 () Bool)

(assert (=> b!731930 (= e!409595 Undefined!7316)))

(declare-fun b!731931 () Bool)

(assert (=> b!731931 (= e!409594 (Found!7316 resIntermediateIndex!5))))

(declare-fun b!731932 () Bool)

(assert (=> b!731932 (= e!409593 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19709 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99679 c!80398) b!731930))

(assert (= (and d!99679 (not c!80398)) b!731928))

(assert (= (and b!731928 c!80399) b!731931))

(assert (= (and b!731928 (not c!80399)) b!731927))

(assert (= (and b!731927 c!80400) b!731929))

(assert (= (and b!731927 (not c!80400)) b!731932))

(declare-fun m!685215 () Bool)

(assert (=> d!99679 m!685215))

(declare-fun m!685217 () Bool)

(assert (=> d!99679 m!685217))

(assert (=> d!99679 m!685149))

(assert (=> d!99679 m!685115))

(declare-fun m!685219 () Bool)

(assert (=> b!731932 m!685219))

(assert (=> b!731932 m!685219))

(assert (=> b!731932 m!685111))

(declare-fun m!685221 () Bool)

(assert (=> b!731932 m!685221))

(assert (=> b!731809 d!99679))

(declare-fun lt!324370 () SeekEntryResult!7316)

(declare-fun d!99691 () Bool)

(assert (=> d!99691 (and (or (is-Undefined!7316 lt!324370) (not (is-Found!7316 lt!324370)) (and (bvsge (index!31632 lt!324370) #b00000000000000000000000000000000) (bvslt (index!31632 lt!324370) (size!20130 a!3186)))) (or (is-Undefined!7316 lt!324370) (is-Found!7316 lt!324370) (not (is-MissingVacant!7316 lt!324370)) (not (= (index!31634 lt!324370) resIntermediateIndex!5)) (and (bvsge (index!31634 lt!324370) #b00000000000000000000000000000000) (bvslt (index!31634 lt!324370) (size!20130 a!3186)))) (or (is-Undefined!7316 lt!324370) (ite (is-Found!7316 lt!324370) (= (select (arr!19709 a!3186) (index!31632 lt!324370)) (select (arr!19709 a!3186) j!159)) (and (is-MissingVacant!7316 lt!324370) (= (index!31634 lt!324370) resIntermediateIndex!5) (= (select (arr!19709 a!3186) (index!31634 lt!324370)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409602 () SeekEntryResult!7316)

(assert (=> d!99691 (= lt!324370 e!409602)))

(declare-fun c!80402 () Bool)

(assert (=> d!99691 (= c!80402 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!324369 () (_ BitVec 64))

(assert (=> d!99691 (= lt!324369 (select (arr!19709 a!3186) index!1321))))

(assert (=> d!99691 (validMask!0 mask!3328)))

(assert (=> d!99691 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324370)))

(declare-fun b!731938 () Bool)

(declare-fun c!80404 () Bool)

(assert (=> b!731938 (= c!80404 (= lt!324369 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409601 () SeekEntryResult!7316)

(declare-fun e!409600 () SeekEntryResult!7316)

(assert (=> b!731938 (= e!409601 e!409600)))

(declare-fun b!731939 () Bool)

(assert (=> b!731939 (= e!409602 e!409601)))

(declare-fun c!80403 () Bool)

(assert (=> b!731939 (= c!80403 (= lt!324369 (select (arr!19709 a!3186) j!159)))))

(declare-fun b!731940 () Bool)

(assert (=> b!731940 (= e!409600 (MissingVacant!7316 resIntermediateIndex!5))))

(declare-fun b!731941 () Bool)

(assert (=> b!731941 (= e!409602 Undefined!7316)))

(declare-fun b!731942 () Bool)

(assert (=> b!731942 (= e!409601 (Found!7316 index!1321))))

(declare-fun b!731943 () Bool)

(assert (=> b!731943 (= e!409600 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19709 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99691 c!80402) b!731941))

(assert (= (and d!99691 (not c!80402)) b!731939))

(assert (= (and b!731939 c!80403) b!731942))

(assert (= (and b!731939 (not c!80403)) b!731938))

(assert (= (and b!731938 c!80404) b!731940))

(assert (= (and b!731938 (not c!80404)) b!731943))

(declare-fun m!685227 () Bool)

(assert (=> d!99691 m!685227))

(declare-fun m!685229 () Bool)

(assert (=> d!99691 m!685229))

(declare-fun m!685231 () Bool)

(assert (=> d!99691 m!685231))

(assert (=> d!99691 m!685115))

(assert (=> b!731943 m!685121))

(assert (=> b!731943 m!685121))

(assert (=> b!731943 m!685111))

(declare-fun m!685233 () Bool)

(assert (=> b!731943 m!685233))

(assert (=> b!731808 d!99691))

(declare-fun e!409628 () SeekEntryResult!7316)

(declare-fun b!731980 () Bool)

(assert (=> b!731980 (= e!409628 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19709 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99695 () Bool)

(declare-fun e!409625 () Bool)

(assert (=> d!99695 e!409625))

(declare-fun c!80417 () Bool)

(declare-fun lt!324382 () SeekEntryResult!7316)

(assert (=> d!99695 (= c!80417 (and (is-Intermediate!7316 lt!324382) (undefined!8128 lt!324382)))))

(declare-fun e!409629 () SeekEntryResult!7316)

(assert (=> d!99695 (= lt!324382 e!409629)))

(declare-fun c!80418 () Bool)

(assert (=> d!99695 (= c!80418 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!324381 () (_ BitVec 64))

(assert (=> d!99695 (= lt!324381 (select (arr!19709 a!3186) index!1321))))

(assert (=> d!99695 (validMask!0 mask!3328)))

(assert (=> d!99695 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324382)))

(declare-fun b!731981 () Bool)

(assert (=> b!731981 (and (bvsge (index!31633 lt!324382) #b00000000000000000000000000000000) (bvslt (index!31633 lt!324382) (size!20130 a!3186)))))

(declare-fun res!491898 () Bool)

(assert (=> b!731981 (= res!491898 (= (select (arr!19709 a!3186) (index!31633 lt!324382)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409627 () Bool)

(assert (=> b!731981 (=> res!491898 e!409627)))

(declare-fun b!731982 () Bool)

(assert (=> b!731982 (= e!409628 (Intermediate!7316 false index!1321 x!1131))))

(declare-fun b!731983 () Bool)

(assert (=> b!731983 (= e!409629 (Intermediate!7316 true index!1321 x!1131))))

(declare-fun b!731984 () Bool)

(assert (=> b!731984 (= e!409625 (bvsge (x!62639 lt!324382) #b01111111111111111111111111111110))))

(declare-fun b!731985 () Bool)

(declare-fun e!409626 () Bool)

(assert (=> b!731985 (= e!409625 e!409626)))

(declare-fun res!491899 () Bool)

(assert (=> b!731985 (= res!491899 (and (is-Intermediate!7316 lt!324382) (not (undefined!8128 lt!324382)) (bvslt (x!62639 lt!324382) #b01111111111111111111111111111110) (bvsge (x!62639 lt!324382) #b00000000000000000000000000000000) (bvsge (x!62639 lt!324382) x!1131)))))

(assert (=> b!731985 (=> (not res!491899) (not e!409626))))

(declare-fun b!731986 () Bool)

(assert (=> b!731986 (= e!409629 e!409628)))

(declare-fun c!80419 () Bool)

(assert (=> b!731986 (= c!80419 (or (= lt!324381 (select (arr!19709 a!3186) j!159)) (= (bvadd lt!324381 lt!324381) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731987 () Bool)

(assert (=> b!731987 (and (bvsge (index!31633 lt!324382) #b00000000000000000000000000000000) (bvslt (index!31633 lt!324382) (size!20130 a!3186)))))

(assert (=> b!731987 (= e!409627 (= (select (arr!19709 a!3186) (index!31633 lt!324382)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!731988 () Bool)

(assert (=> b!731988 (and (bvsge (index!31633 lt!324382) #b00000000000000000000000000000000) (bvslt (index!31633 lt!324382) (size!20130 a!3186)))))

(declare-fun res!491900 () Bool)

(assert (=> b!731988 (= res!491900 (= (select (arr!19709 a!3186) (index!31633 lt!324382)) (select (arr!19709 a!3186) j!159)))))

(assert (=> b!731988 (=> res!491900 e!409627)))

(assert (=> b!731988 (= e!409626 e!409627)))

(assert (= (and d!99695 c!80418) b!731983))

(assert (= (and d!99695 (not c!80418)) b!731986))

(assert (= (and b!731986 c!80419) b!731982))

(assert (= (and b!731986 (not c!80419)) b!731980))

(assert (= (and d!99695 c!80417) b!731984))

(assert (= (and d!99695 (not c!80417)) b!731985))

(assert (= (and b!731985 res!491899) b!731988))

(assert (= (and b!731988 (not res!491900)) b!731981))

(assert (= (and b!731981 (not res!491898)) b!731987))

(assert (=> b!731980 m!685121))

(assert (=> b!731980 m!685121))

(assert (=> b!731980 m!685111))

(declare-fun m!685237 () Bool)

(assert (=> b!731980 m!685237))

(declare-fun m!685239 () Bool)

(assert (=> b!731988 m!685239))

(assert (=> b!731981 m!685239))

(assert (=> b!731987 m!685239))

(assert (=> d!99695 m!685231))

(assert (=> d!99695 m!685115))

(assert (=> b!731807 d!99695))

(declare-fun d!99705 () Bool)

(assert (=> d!99705 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64856 d!99705))

(declare-fun d!99713 () Bool)

(assert (=> d!99713 (= (array_inv!15483 a!3186) (bvsge (size!20130 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64856 d!99713))

(declare-fun d!99715 () Bool)

(assert (=> d!99715 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!731801 d!99715))

(declare-fun b!732086 () Bool)

(declare-fun e!409681 () SeekEntryResult!7316)

(declare-fun e!409683 () SeekEntryResult!7316)

(assert (=> b!732086 (= e!409681 e!409683)))

(declare-fun lt!324433 () (_ BitVec 64))

(declare-fun lt!324432 () SeekEntryResult!7316)

(assert (=> b!732086 (= lt!324433 (select (arr!19709 a!3186) (index!31633 lt!324432)))))

(declare-fun c!80465 () Bool)

(assert (=> b!732086 (= c!80465 (= lt!324433 (select (arr!19709 a!3186) j!159)))))

(declare-fun b!732087 () Bool)

(assert (=> b!732087 (= e!409681 Undefined!7316)))

(declare-fun b!732088 () Bool)

(declare-fun e!409682 () SeekEntryResult!7316)

(assert (=> b!732088 (= e!409682 (MissingZero!7316 (index!31633 lt!324432)))))

(declare-fun b!732089 () Bool)

(declare-fun c!80464 () Bool)

(assert (=> b!732089 (= c!80464 (= lt!324433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!732089 (= e!409683 e!409682)))

(declare-fun b!732091 () Bool)

(assert (=> b!732091 (= e!409682 (seekKeyOrZeroReturnVacant!0 (x!62639 lt!324432) (index!31633 lt!324432) (index!31633 lt!324432) (select (arr!19709 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732090 () Bool)

(assert (=> b!732090 (= e!409683 (Found!7316 (index!31633 lt!324432)))))

(declare-fun d!99717 () Bool)

(declare-fun lt!324434 () SeekEntryResult!7316)

(assert (=> d!99717 (and (or (is-Undefined!7316 lt!324434) (not (is-Found!7316 lt!324434)) (and (bvsge (index!31632 lt!324434) #b00000000000000000000000000000000) (bvslt (index!31632 lt!324434) (size!20130 a!3186)))) (or (is-Undefined!7316 lt!324434) (is-Found!7316 lt!324434) (not (is-MissingZero!7316 lt!324434)) (and (bvsge (index!31631 lt!324434) #b00000000000000000000000000000000) (bvslt (index!31631 lt!324434) (size!20130 a!3186)))) (or (is-Undefined!7316 lt!324434) (is-Found!7316 lt!324434) (is-MissingZero!7316 lt!324434) (not (is-MissingVacant!7316 lt!324434)) (and (bvsge (index!31634 lt!324434) #b00000000000000000000000000000000) (bvslt (index!31634 lt!324434) (size!20130 a!3186)))) (or (is-Undefined!7316 lt!324434) (ite (is-Found!7316 lt!324434) (= (select (arr!19709 a!3186) (index!31632 lt!324434)) (select (arr!19709 a!3186) j!159)) (ite (is-MissingZero!7316 lt!324434) (= (select (arr!19709 a!3186) (index!31631 lt!324434)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7316 lt!324434) (= (select (arr!19709 a!3186) (index!31634 lt!324434)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99717 (= lt!324434 e!409681)))

(declare-fun c!80463 () Bool)

(assert (=> d!99717 (= c!80463 (and (is-Intermediate!7316 lt!324432) (undefined!8128 lt!324432)))))

(assert (=> d!99717 (= lt!324432 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328) (select (arr!19709 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99717 (validMask!0 mask!3328)))

(assert (=> d!99717 (= (seekEntryOrOpen!0 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324434)))

(assert (= (and d!99717 c!80463) b!732087))

(assert (= (and d!99717 (not c!80463)) b!732086))

(assert (= (and b!732086 c!80465) b!732090))

(assert (= (and b!732086 (not c!80465)) b!732089))

(assert (= (and b!732089 c!80464) b!732088))

(assert (= (and b!732089 (not c!80464)) b!732091))

(declare-fun m!685315 () Bool)

(assert (=> b!732086 m!685315))

(assert (=> b!732091 m!685111))

(declare-fun m!685317 () Bool)

(assert (=> b!732091 m!685317))

(assert (=> d!99717 m!685115))

(assert (=> d!99717 m!685111))

(assert (=> d!99717 m!685143))

(assert (=> d!99717 m!685143))

(assert (=> d!99717 m!685111))

(assert (=> d!99717 m!685145))

(declare-fun m!685319 () Bool)

(assert (=> d!99717 m!685319))

(declare-fun m!685321 () Bool)

(assert (=> d!99717 m!685321))

(declare-fun m!685323 () Bool)

(assert (=> d!99717 m!685323))

(assert (=> b!731811 d!99717))

(declare-fun d!99739 () Bool)

(declare-fun res!491926 () Bool)

(declare-fun e!409706 () Bool)

(assert (=> d!99739 (=> res!491926 e!409706)))

(assert (=> d!99739 (= res!491926 (bvsge j!159 (size!20130 a!3186)))))

(assert (=> d!99739 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!409706)))

(declare-fun bm!34862 () Bool)

(declare-fun call!34865 () Bool)

(assert (=> bm!34862 (= call!34865 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!732127 () Bool)

(declare-fun e!409705 () Bool)

(declare-fun e!409707 () Bool)

(assert (=> b!732127 (= e!409705 e!409707)))

(declare-fun lt!324447 () (_ BitVec 64))

(assert (=> b!732127 (= lt!324447 (select (arr!19709 a!3186) j!159))))

(declare-fun lt!324449 () Unit!24950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41189 (_ BitVec 64) (_ BitVec 32)) Unit!24950)

(assert (=> b!732127 (= lt!324449 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!324447 j!159))))

(assert (=> b!732127 (arrayContainsKey!0 a!3186 lt!324447 #b00000000000000000000000000000000)))

(declare-fun lt!324448 () Unit!24950)

(assert (=> b!732127 (= lt!324448 lt!324449)))

(declare-fun res!491927 () Bool)

(assert (=> b!732127 (= res!491927 (= (seekEntryOrOpen!0 (select (arr!19709 a!3186) j!159) a!3186 mask!3328) (Found!7316 j!159)))))

(assert (=> b!732127 (=> (not res!491927) (not e!409707))))

(declare-fun b!732128 () Bool)

(assert (=> b!732128 (= e!409707 call!34865)))

(declare-fun b!732129 () Bool)

(assert (=> b!732129 (= e!409706 e!409705)))

(declare-fun c!80477 () Bool)

(assert (=> b!732129 (= c!80477 (validKeyInArray!0 (select (arr!19709 a!3186) j!159)))))

(declare-fun b!732130 () Bool)

(assert (=> b!732130 (= e!409705 call!34865)))

(assert (= (and d!99739 (not res!491926)) b!732129))

(assert (= (and b!732129 c!80477) b!732127))

(assert (= (and b!732129 (not c!80477)) b!732130))

(assert (= (and b!732127 res!491927) b!732128))

(assert (= (or b!732128 b!732130) bm!34862))

(declare-fun m!685331 () Bool)

(assert (=> bm!34862 m!685331))

(assert (=> b!732127 m!685111))

(declare-fun m!685333 () Bool)

(assert (=> b!732127 m!685333))

(declare-fun m!685335 () Bool)

(assert (=> b!732127 m!685335))

(assert (=> b!732127 m!685111))

(assert (=> b!732127 m!685139))

(assert (=> b!732129 m!685111))

(assert (=> b!732129 m!685111))

(assert (=> b!732129 m!685133))

(assert (=> b!731810 d!99739))

(declare-fun d!99743 () Bool)

(assert (=> d!99743 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!324455 () Unit!24950)

(declare-fun choose!38 (array!41189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24950)

(assert (=> d!99743 (= lt!324455 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99743 (validMask!0 mask!3328)))

(assert (=> d!99743 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!324455)))

(declare-fun bs!20943 () Bool)

(assert (= bs!20943 d!99743))

(assert (=> bs!20943 m!685153))

(declare-fun m!685339 () Bool)

(assert (=> bs!20943 m!685339))

(assert (=> bs!20943 m!685115))

(assert (=> b!731810 d!99743))

(assert (=> b!731803 d!99691))

(declare-fun e!409711 () SeekEntryResult!7316)

(declare-fun b!732131 () Bool)

(assert (=> b!732131 (= e!409711 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19709 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99747 () Bool)

(declare-fun e!409708 () Bool)

(assert (=> d!99747 e!409708))

(declare-fun c!80478 () Bool)

(declare-fun lt!324457 () SeekEntryResult!7316)

(assert (=> d!99747 (= c!80478 (and (is-Intermediate!7316 lt!324457) (undefined!8128 lt!324457)))))

(declare-fun e!409712 () SeekEntryResult!7316)

(assert (=> d!99747 (= lt!324457 e!409712)))

(declare-fun c!80479 () Bool)

(assert (=> d!99747 (= c!80479 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!324456 () (_ BitVec 64))

(assert (=> d!99747 (= lt!324456 (select (arr!19709 a!3186) (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328)))))

(assert (=> d!99747 (validMask!0 mask!3328)))

(assert (=> d!99747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328) (select (arr!19709 a!3186) j!159) a!3186 mask!3328) lt!324457)))

(declare-fun b!732132 () Bool)

(assert (=> b!732132 (and (bvsge (index!31633 lt!324457) #b00000000000000000000000000000000) (bvslt (index!31633 lt!324457) (size!20130 a!3186)))))

(declare-fun res!491928 () Bool)

(assert (=> b!732132 (= res!491928 (= (select (arr!19709 a!3186) (index!31633 lt!324457)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409710 () Bool)

(assert (=> b!732132 (=> res!491928 e!409710)))

(declare-fun b!732133 () Bool)

(assert (=> b!732133 (= e!409711 (Intermediate!7316 false (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!732134 () Bool)

(assert (=> b!732134 (= e!409712 (Intermediate!7316 true (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!732135 () Bool)

(assert (=> b!732135 (= e!409708 (bvsge (x!62639 lt!324457) #b01111111111111111111111111111110))))

(declare-fun b!732136 () Bool)

(declare-fun e!409709 () Bool)

(assert (=> b!732136 (= e!409708 e!409709)))

(declare-fun res!491929 () Bool)

(assert (=> b!732136 (= res!491929 (and (is-Intermediate!7316 lt!324457) (not (undefined!8128 lt!324457)) (bvslt (x!62639 lt!324457) #b01111111111111111111111111111110) (bvsge (x!62639 lt!324457) #b00000000000000000000000000000000) (bvsge (x!62639 lt!324457) #b00000000000000000000000000000000)))))

(assert (=> b!732136 (=> (not res!491929) (not e!409709))))

(declare-fun b!732137 () Bool)

(assert (=> b!732137 (= e!409712 e!409711)))

(declare-fun c!80480 () Bool)

(assert (=> b!732137 (= c!80480 (or (= lt!324456 (select (arr!19709 a!3186) j!159)) (= (bvadd lt!324456 lt!324456) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732138 () Bool)

(assert (=> b!732138 (and (bvsge (index!31633 lt!324457) #b00000000000000000000000000000000) (bvslt (index!31633 lt!324457) (size!20130 a!3186)))))

(assert (=> b!732138 (= e!409710 (= (select (arr!19709 a!3186) (index!31633 lt!324457)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!732139 () Bool)

(assert (=> b!732139 (and (bvsge (index!31633 lt!324457) #b00000000000000000000000000000000) (bvslt (index!31633 lt!324457) (size!20130 a!3186)))))

(declare-fun res!491930 () Bool)

(assert (=> b!732139 (= res!491930 (= (select (arr!19709 a!3186) (index!31633 lt!324457)) (select (arr!19709 a!3186) j!159)))))

(assert (=> b!732139 (=> res!491930 e!409710)))

(assert (=> b!732139 (= e!409709 e!409710)))

(assert (= (and d!99747 c!80479) b!732134))

(assert (= (and d!99747 (not c!80479)) b!732137))

(assert (= (and b!732137 c!80480) b!732133))

(assert (= (and b!732137 (not c!80480)) b!732131))

(assert (= (and d!99747 c!80478) b!732135))

(assert (= (and d!99747 (not c!80478)) b!732136))

(assert (= (and b!732136 res!491929) b!732139))

(assert (= (and b!732139 (not res!491930)) b!732132))

(assert (= (and b!732132 (not res!491928)) b!732138))

(assert (=> b!732131 m!685143))

(declare-fun m!685341 () Bool)

(assert (=> b!732131 m!685341))

(assert (=> b!732131 m!685341))

(assert (=> b!732131 m!685111))

(declare-fun m!685343 () Bool)

(assert (=> b!732131 m!685343))

(declare-fun m!685345 () Bool)

(assert (=> b!732139 m!685345))

(assert (=> b!732132 m!685345))

(assert (=> b!732138 m!685345))

(assert (=> d!99747 m!685143))

(declare-fun m!685347 () Bool)

(assert (=> d!99747 m!685347))

(assert (=> d!99747 m!685115))

(assert (=> b!731813 d!99747))

(declare-fun d!99749 () Bool)

(declare-fun lt!324463 () (_ BitVec 32))

(declare-fun lt!324462 () (_ BitVec 32))

(assert (=> d!99749 (= lt!324463 (bvmul (bvxor lt!324462 (bvlshr lt!324462 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99749 (= lt!324462 ((_ extract 31 0) (bvand (bvxor (select (arr!19709 a!3186) j!159) (bvlshr (select (arr!19709 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99749 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!491931 (let ((h!14825 ((_ extract 31 0) (bvand (bvxor (select (arr!19709 a!3186) j!159) (bvlshr (select (arr!19709 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62649 (bvmul (bvxor h!14825 (bvlshr h!14825 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62649 (bvlshr x!62649 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!491931 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!491931 #b00000000000000000000000000000000))))))

(assert (=> d!99749 (= (toIndex!0 (select (arr!19709 a!3186) j!159) mask!3328) (bvand (bvxor lt!324463 (bvlshr lt!324463 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!731813 d!99749))

(declare-fun b!732159 () Bool)

(declare-fun e!409728 () Bool)

(declare-fun call!34868 () Bool)

(assert (=> b!732159 (= e!409728 call!34868)))

(declare-fun d!99751 () Bool)

(declare-fun res!491944 () Bool)

(declare-fun e!409727 () Bool)

(assert (=> d!99751 (=> res!491944 e!409727)))

(assert (=> d!99751 (= res!491944 (bvsge #b00000000000000000000000000000000 (size!20130 a!3186)))))

(assert (=> d!99751 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13761) e!409727)))

(declare-fun b!732160 () Bool)

(declare-fun e!409729 () Bool)

(assert (=> b!732160 (= e!409729 e!409728)))

(declare-fun c!80486 () Bool)

(assert (=> b!732160 (= c!80486 (validKeyInArray!0 (select (arr!19709 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!732161 () Bool)

(assert (=> b!732161 (= e!409728 call!34868)))

(declare-fun b!732162 () Bool)

(assert (=> b!732162 (= e!409727 e!409729)))

(declare-fun res!491942 () Bool)

(assert (=> b!732162 (=> (not res!491942) (not e!409729))))

(declare-fun e!409726 () Bool)

(assert (=> b!732162 (= res!491942 (not e!409726))))

(declare-fun res!491943 () Bool)

(assert (=> b!732162 (=> (not res!491943) (not e!409726))))

(assert (=> b!732162 (= res!491943 (validKeyInArray!0 (select (arr!19709 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34865 () Bool)

(assert (=> bm!34865 (= call!34868 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!80486 (Cons!13760 (select (arr!19709 a!3186) #b00000000000000000000000000000000) Nil!13761) Nil!13761)))))

(declare-fun b!732163 () Bool)

(declare-fun contains!4059 (List!13764 (_ BitVec 64)) Bool)

(assert (=> b!732163 (= e!409726 (contains!4059 Nil!13761 (select (arr!19709 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99751 (not res!491944)) b!732162))

(assert (= (and b!732162 res!491943) b!732163))

(assert (= (and b!732162 res!491942) b!732160))

(assert (= (and b!732160 c!80486) b!732161))

(assert (= (and b!732160 (not c!80486)) b!732159))

(assert (= (or b!732161 b!732159) bm!34865))

(declare-fun m!685357 () Bool)

(assert (=> b!732160 m!685357))

(assert (=> b!732160 m!685357))

(declare-fun m!685359 () Bool)

(assert (=> b!732160 m!685359))

(assert (=> b!732162 m!685357))

(assert (=> b!732162 m!685357))

(assert (=> b!732162 m!685359))

(assert (=> bm!34865 m!685357))

(declare-fun m!685361 () Bool)

(assert (=> bm!34865 m!685361))

(assert (=> b!732163 m!685357))

(assert (=> b!732163 m!685357))

(declare-fun m!685363 () Bool)

(assert (=> b!732163 m!685363))

(assert (=> b!731802 d!99751))

(declare-fun b!732164 () Bool)

(declare-fun e!409730 () SeekEntryResult!7316)

(declare-fun e!409732 () SeekEntryResult!7316)

(assert (=> b!732164 (= e!409730 e!409732)))

(declare-fun lt!324467 () (_ BitVec 64))

(declare-fun lt!324466 () SeekEntryResult!7316)

(assert (=> b!732164 (= lt!324467 (select (arr!19709 a!3186) (index!31633 lt!324466)))))

(declare-fun c!80489 () Bool)

(assert (=> b!732164 (= c!80489 (= lt!324467 k!2102))))

(declare-fun b!732165 () Bool)

(assert (=> b!732165 (= e!409730 Undefined!7316)))

(declare-fun b!732166 () Bool)

(declare-fun e!409731 () SeekEntryResult!7316)

(assert (=> b!732166 (= e!409731 (MissingZero!7316 (index!31633 lt!324466)))))

(declare-fun b!732167 () Bool)

(declare-fun c!80488 () Bool)

(assert (=> b!732167 (= c!80488 (= lt!324467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!732167 (= e!409732 e!409731)))

(declare-fun b!732169 () Bool)

(assert (=> b!732169 (= e!409731 (seekKeyOrZeroReturnVacant!0 (x!62639 lt!324466) (index!31633 lt!324466) (index!31633 lt!324466) k!2102 a!3186 mask!3328))))

(declare-fun b!732168 () Bool)

