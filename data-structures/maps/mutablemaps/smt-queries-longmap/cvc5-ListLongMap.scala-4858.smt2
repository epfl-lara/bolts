; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66934 () Bool)

(assert start!66934)

(declare-fun b!772067 () Bool)

(declare-fun e!429830 () Bool)

(declare-fun e!429831 () Bool)

(assert (=> b!772067 (= e!429830 e!429831)))

(declare-fun res!522360 () Bool)

(assert (=> b!772067 (=> (not res!522360) (not e!429831))))

(declare-datatypes ((SeekEntryResult!7893 0))(
  ( (MissingZero!7893 (index!33939 (_ BitVec 32))) (Found!7893 (index!33940 (_ BitVec 32))) (Intermediate!7893 (undefined!8705 Bool) (index!33941 (_ BitVec 32)) (x!64901 (_ BitVec 32))) (Undefined!7893) (MissingVacant!7893 (index!33942 (_ BitVec 32))) )
))
(declare-fun lt!343762 () SeekEntryResult!7893)

(declare-fun lt!343768 () SeekEntryResult!7893)

(assert (=> b!772067 (= res!522360 (= lt!343762 lt!343768))))

(declare-datatypes ((array!42382 0))(
  ( (array!42383 (arr!20286 (Array (_ BitVec 32) (_ BitVec 64))) (size!20707 (_ BitVec 32))) )
))
(declare-fun lt!343761 () array!42382)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!343764 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42382 (_ BitVec 32)) SeekEntryResult!7893)

(assert (=> b!772067 (= lt!343768 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343764 lt!343761 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772067 (= lt!343762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343764 mask!3328) lt!343764 lt!343761 mask!3328))))

(declare-fun a!3186 () array!42382)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!772067 (= lt!343764 (select (store (arr!20286 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!772067 (= lt!343761 (array!42383 (store (arr!20286 a!3186) i!1173 k!2102) (size!20707 a!3186)))))

(declare-fun b!772068 () Bool)

(declare-datatypes ((Unit!26608 0))(
  ( (Unit!26609) )
))
(declare-fun e!429827 () Unit!26608)

(declare-fun Unit!26610 () Unit!26608)

(assert (=> b!772068 (= e!429827 Unit!26610)))

(declare-fun lt!343769 () (_ BitVec 32))

(declare-fun lt!343770 () SeekEntryResult!7893)

(assert (=> b!772068 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343769 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343770)))

(declare-fun b!772069 () Bool)

(declare-fun res!522359 () Bool)

(declare-fun e!429828 () Bool)

(assert (=> b!772069 (=> (not res!522359) (not e!429828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772069 (= res!522359 (validKeyInArray!0 (select (arr!20286 a!3186) j!159)))))

(declare-fun b!772070 () Bool)

(declare-fun res!522358 () Bool)

(assert (=> b!772070 (=> (not res!522358) (not e!429828))))

(assert (=> b!772070 (= res!522358 (validKeyInArray!0 k!2102))))

(declare-fun b!772071 () Bool)

(declare-fun e!429833 () Bool)

(declare-fun e!429835 () Bool)

(assert (=> b!772071 (= e!429833 e!429835)))

(declare-fun res!522363 () Bool)

(assert (=> b!772071 (=> (not res!522363) (not e!429835))))

(declare-fun lt!343766 () SeekEntryResult!7893)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42382 (_ BitVec 32)) SeekEntryResult!7893)

(assert (=> b!772071 (= res!522363 (= (seekEntryOrOpen!0 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343766))))

(assert (=> b!772071 (= lt!343766 (Found!7893 j!159))))

(declare-fun b!772072 () Bool)

(declare-fun res!522364 () Bool)

(assert (=> b!772072 (=> (not res!522364) (not e!429828))))

(declare-fun arrayContainsKey!0 (array!42382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772072 (= res!522364 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772073 () Bool)

(declare-fun e!429832 () Bool)

(assert (=> b!772073 (= e!429831 (not e!429832))))

(declare-fun res!522356 () Bool)

(assert (=> b!772073 (=> res!522356 e!429832)))

(assert (=> b!772073 (= res!522356 (or (not (is-Intermediate!7893 lt!343768)) (bvsge x!1131 (x!64901 lt!343768))))))

(assert (=> b!772073 e!429833))

(declare-fun res!522370 () Bool)

(assert (=> b!772073 (=> (not res!522370) (not e!429833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42382 (_ BitVec 32)) Bool)

(assert (=> b!772073 (= res!522370 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343763 () Unit!26608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26608)

(assert (=> b!772073 (= lt!343763 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!772074 () Bool)

(declare-fun res!522362 () Bool)

(assert (=> b!772074 (=> (not res!522362) (not e!429828))))

(assert (=> b!772074 (= res!522362 (and (= (size!20707 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20707 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20707 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!772075 () Bool)

(declare-fun e!429826 () Bool)

(assert (=> b!772075 (= e!429828 e!429826)))

(declare-fun res!522368 () Bool)

(assert (=> b!772075 (=> (not res!522368) (not e!429826))))

(declare-fun lt!343767 () SeekEntryResult!7893)

(assert (=> b!772075 (= res!522368 (or (= lt!343767 (MissingZero!7893 i!1173)) (= lt!343767 (MissingVacant!7893 i!1173))))))

(assert (=> b!772075 (= lt!343767 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!772076 () Bool)

(declare-fun res!522367 () Bool)

(assert (=> b!772076 (=> (not res!522367) (not e!429826))))

(assert (=> b!772076 (= res!522367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772077 () Bool)

(assert (=> b!772077 (= e!429832 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (and (bvsge lt!343769 #b00000000000000000000000000000000) (bvslt lt!343769 (size!20707 a!3186)))))))

(declare-fun lt!343771 () Unit!26608)

(assert (=> b!772077 (= lt!343771 e!429827)))

(declare-fun c!85253 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772077 (= c!85253 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772077 (= lt!343769 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772078 () Bool)

(declare-fun res!522361 () Bool)

(assert (=> b!772078 (=> (not res!522361) (not e!429826))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!772078 (= res!522361 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20707 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20707 a!3186))))))

(declare-fun b!772079 () Bool)

(declare-fun res!522366 () Bool)

(assert (=> b!772079 (=> (not res!522366) (not e!429830))))

(assert (=> b!772079 (= res!522366 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20286 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772080 () Bool)

(assert (=> b!772080 (= e!429826 e!429830)))

(declare-fun res!522369 () Bool)

(assert (=> b!772080 (=> (not res!522369) (not e!429830))))

(assert (=> b!772080 (= res!522369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328) (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343770))))

(assert (=> b!772080 (= lt!343770 (Intermediate!7893 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772081 () Bool)

(declare-fun res!522365 () Bool)

(assert (=> b!772081 (=> (not res!522365) (not e!429826))))

(declare-datatypes ((List!14341 0))(
  ( (Nil!14338) (Cons!14337 (h!15439 (_ BitVec 64)) (t!20664 List!14341)) )
))
(declare-fun arrayNoDuplicates!0 (array!42382 (_ BitVec 32) List!14341) Bool)

(assert (=> b!772081 (= res!522365 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14338))))

(declare-fun res!522355 () Bool)

(assert (=> start!66934 (=> (not res!522355) (not e!429828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66934 (= res!522355 (validMask!0 mask!3328))))

(assert (=> start!66934 e!429828))

(assert (=> start!66934 true))

(declare-fun array_inv!16060 (array!42382) Bool)

(assert (=> start!66934 (array_inv!16060 a!3186)))

(declare-fun b!772082 () Bool)

(declare-fun e!429829 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42382 (_ BitVec 32)) SeekEntryResult!7893)

(assert (=> b!772082 (= e!429829 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) (Found!7893 j!159)))))

(declare-fun b!772083 () Bool)

(assert (=> b!772083 (= e!429829 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343770))))

(declare-fun b!772084 () Bool)

(assert (=> b!772084 (= e!429835 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343766))))

(declare-fun b!772085 () Bool)

(declare-fun Unit!26611 () Unit!26608)

(assert (=> b!772085 (= e!429827 Unit!26611)))

(declare-fun lt!343765 () SeekEntryResult!7893)

(assert (=> b!772085 (= lt!343765 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!772085 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343769 resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) (Found!7893 j!159))))

(declare-fun b!772086 () Bool)

(declare-fun res!522357 () Bool)

(assert (=> b!772086 (=> (not res!522357) (not e!429830))))

(assert (=> b!772086 (= res!522357 e!429829)))

(declare-fun c!85254 () Bool)

(assert (=> b!772086 (= c!85254 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66934 res!522355) b!772074))

(assert (= (and b!772074 res!522362) b!772069))

(assert (= (and b!772069 res!522359) b!772070))

(assert (= (and b!772070 res!522358) b!772072))

(assert (= (and b!772072 res!522364) b!772075))

(assert (= (and b!772075 res!522368) b!772076))

(assert (= (and b!772076 res!522367) b!772081))

(assert (= (and b!772081 res!522365) b!772078))

(assert (= (and b!772078 res!522361) b!772080))

(assert (= (and b!772080 res!522369) b!772079))

(assert (= (and b!772079 res!522366) b!772086))

(assert (= (and b!772086 c!85254) b!772083))

(assert (= (and b!772086 (not c!85254)) b!772082))

(assert (= (and b!772086 res!522357) b!772067))

(assert (= (and b!772067 res!522360) b!772073))

(assert (= (and b!772073 res!522370) b!772071))

(assert (= (and b!772071 res!522363) b!772084))

(assert (= (and b!772073 (not res!522356)) b!772077))

(assert (= (and b!772077 c!85253) b!772068))

(assert (= (and b!772077 (not c!85253)) b!772085))

(declare-fun m!717115 () Bool)

(assert (=> b!772085 m!717115))

(assert (=> b!772085 m!717115))

(declare-fun m!717117 () Bool)

(assert (=> b!772085 m!717117))

(assert (=> b!772085 m!717115))

(declare-fun m!717119 () Bool)

(assert (=> b!772085 m!717119))

(declare-fun m!717121 () Bool)

(assert (=> b!772081 m!717121))

(declare-fun m!717123 () Bool)

(assert (=> b!772073 m!717123))

(declare-fun m!717125 () Bool)

(assert (=> b!772073 m!717125))

(assert (=> b!772083 m!717115))

(assert (=> b!772083 m!717115))

(declare-fun m!717127 () Bool)

(assert (=> b!772083 m!717127))

(assert (=> b!772068 m!717115))

(assert (=> b!772068 m!717115))

(declare-fun m!717129 () Bool)

(assert (=> b!772068 m!717129))

(declare-fun m!717131 () Bool)

(assert (=> b!772070 m!717131))

(declare-fun m!717133 () Bool)

(assert (=> b!772079 m!717133))

(declare-fun m!717135 () Bool)

(assert (=> start!66934 m!717135))

(declare-fun m!717137 () Bool)

(assert (=> start!66934 m!717137))

(declare-fun m!717139 () Bool)

(assert (=> b!772075 m!717139))

(declare-fun m!717141 () Bool)

(assert (=> b!772067 m!717141))

(declare-fun m!717143 () Bool)

(assert (=> b!772067 m!717143))

(declare-fun m!717145 () Bool)

(assert (=> b!772067 m!717145))

(declare-fun m!717147 () Bool)

(assert (=> b!772067 m!717147))

(declare-fun m!717149 () Bool)

(assert (=> b!772067 m!717149))

(assert (=> b!772067 m!717141))

(declare-fun m!717151 () Bool)

(assert (=> b!772077 m!717151))

(assert (=> b!772080 m!717115))

(assert (=> b!772080 m!717115))

(declare-fun m!717153 () Bool)

(assert (=> b!772080 m!717153))

(assert (=> b!772080 m!717153))

(assert (=> b!772080 m!717115))

(declare-fun m!717155 () Bool)

(assert (=> b!772080 m!717155))

(declare-fun m!717157 () Bool)

(assert (=> b!772072 m!717157))

(assert (=> b!772069 m!717115))

(assert (=> b!772069 m!717115))

(declare-fun m!717159 () Bool)

(assert (=> b!772069 m!717159))

(assert (=> b!772071 m!717115))

(assert (=> b!772071 m!717115))

(declare-fun m!717161 () Bool)

(assert (=> b!772071 m!717161))

(declare-fun m!717163 () Bool)

(assert (=> b!772076 m!717163))

(assert (=> b!772082 m!717115))

(assert (=> b!772082 m!717115))

(assert (=> b!772082 m!717117))

(assert (=> b!772084 m!717115))

(assert (=> b!772084 m!717115))

(declare-fun m!717165 () Bool)

(assert (=> b!772084 m!717165))

(push 1)

(assert (not b!772081))

(assert (not b!772076))

(assert (not b!772080))

(assert (not b!772069))

(assert (not start!66934))

(assert (not b!772075))

(assert (not b!772068))

(assert (not b!772073))

(assert (not b!772072))

(assert (not b!772071))

(assert (not b!772084))

(assert (not b!772082))

(assert (not b!772083))

(assert (not b!772077))

(assert (not b!772085))

(assert (not b!772067))

(assert (not b!772070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!772304 () Bool)

(declare-fun e!429953 () SeekEntryResult!7893)

(assert (=> b!772304 (= e!429953 (Intermediate!7893 true index!1321 x!1131))))

(declare-fun b!772306 () Bool)

(declare-fun lt!343882 () SeekEntryResult!7893)

(assert (=> b!772306 (and (bvsge (index!33941 lt!343882) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343882) (size!20707 lt!343761)))))

(declare-fun res!522498 () Bool)

(assert (=> b!772306 (= res!522498 (= (select (arr!20286 lt!343761) (index!33941 lt!343882)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429955 () Bool)

(assert (=> b!772306 (=> res!522498 e!429955)))

(declare-fun b!772307 () Bool)

(declare-fun e!429952 () SeekEntryResult!7893)

(assert (=> b!772307 (= e!429952 (Intermediate!7893 false index!1321 x!1131))))

(declare-fun b!772308 () Bool)

(declare-fun e!429956 () Bool)

(declare-fun e!429954 () Bool)

(assert (=> b!772308 (= e!429956 e!429954)))

(declare-fun res!522497 () Bool)

(assert (=> b!772308 (= res!522497 (and (is-Intermediate!7893 lt!343882) (not (undefined!8705 lt!343882)) (bvslt (x!64901 lt!343882) #b01111111111111111111111111111110) (bvsge (x!64901 lt!343882) #b00000000000000000000000000000000) (bvsge (x!64901 lt!343882) x!1131)))))

(assert (=> b!772308 (=> (not res!522497) (not e!429954))))

(declare-fun d!101745 () Bool)

(assert (=> d!101745 e!429956))

(declare-fun c!85302 () Bool)

(assert (=> d!101745 (= c!85302 (and (is-Intermediate!7893 lt!343882) (undefined!8705 lt!343882)))))

(assert (=> d!101745 (= lt!343882 e!429953)))

(declare-fun c!85303 () Bool)

(assert (=> d!101745 (= c!85303 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343881 () (_ BitVec 64))

(assert (=> d!101745 (= lt!343881 (select (arr!20286 lt!343761) index!1321))))

(assert (=> d!101745 (validMask!0 mask!3328)))

(assert (=> d!101745 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343764 lt!343761 mask!3328) lt!343882)))

(declare-fun b!772305 () Bool)

(assert (=> b!772305 (= e!429952 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!343764 lt!343761 mask!3328))))

(declare-fun b!772309 () Bool)

(assert (=> b!772309 (and (bvsge (index!33941 lt!343882) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343882) (size!20707 lt!343761)))))

(assert (=> b!772309 (= e!429955 (= (select (arr!20286 lt!343761) (index!33941 lt!343882)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772310 () Bool)

(assert (=> b!772310 (= e!429956 (bvsge (x!64901 lt!343882) #b01111111111111111111111111111110))))

(declare-fun b!772311 () Bool)

(assert (=> b!772311 (and (bvsge (index!33941 lt!343882) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343882) (size!20707 lt!343761)))))

(declare-fun res!522499 () Bool)

(assert (=> b!772311 (= res!522499 (= (select (arr!20286 lt!343761) (index!33941 lt!343882)) lt!343764))))

(assert (=> b!772311 (=> res!522499 e!429955)))

(assert (=> b!772311 (= e!429954 e!429955)))

(declare-fun b!772312 () Bool)

(assert (=> b!772312 (= e!429953 e!429952)))

(declare-fun c!85301 () Bool)

(assert (=> b!772312 (= c!85301 (or (= lt!343881 lt!343764) (= (bvadd lt!343881 lt!343881) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101745 c!85303) b!772304))

(assert (= (and d!101745 (not c!85303)) b!772312))

(assert (= (and b!772312 c!85301) b!772307))

(assert (= (and b!772312 (not c!85301)) b!772305))

(assert (= (and d!101745 c!85302) b!772310))

(assert (= (and d!101745 (not c!85302)) b!772308))

(assert (= (and b!772308 res!522497) b!772311))

(assert (= (and b!772311 (not res!522499)) b!772306))

(assert (= (and b!772306 (not res!522498)) b!772309))

(declare-fun m!717321 () Bool)

(assert (=> b!772309 m!717321))

(assert (=> b!772306 m!717321))

(assert (=> b!772311 m!717321))

(declare-fun m!717323 () Bool)

(assert (=> d!101745 m!717323))

(assert (=> d!101745 m!717135))

(assert (=> b!772305 m!717151))

(assert (=> b!772305 m!717151))

(declare-fun m!717325 () Bool)

(assert (=> b!772305 m!717325))

(assert (=> b!772067 d!101745))

(declare-fun b!772313 () Bool)

(declare-fun e!429958 () SeekEntryResult!7893)

(assert (=> b!772313 (= e!429958 (Intermediate!7893 true (toIndex!0 lt!343764 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772315 () Bool)

(declare-fun lt!343884 () SeekEntryResult!7893)

(assert (=> b!772315 (and (bvsge (index!33941 lt!343884) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343884) (size!20707 lt!343761)))))

(declare-fun res!522501 () Bool)

(assert (=> b!772315 (= res!522501 (= (select (arr!20286 lt!343761) (index!33941 lt!343884)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429960 () Bool)

(assert (=> b!772315 (=> res!522501 e!429960)))

(declare-fun b!772316 () Bool)

(declare-fun e!429957 () SeekEntryResult!7893)

(assert (=> b!772316 (= e!429957 (Intermediate!7893 false (toIndex!0 lt!343764 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772317 () Bool)

(declare-fun e!429961 () Bool)

(declare-fun e!429959 () Bool)

(assert (=> b!772317 (= e!429961 e!429959)))

(declare-fun res!522500 () Bool)

(assert (=> b!772317 (= res!522500 (and (is-Intermediate!7893 lt!343884) (not (undefined!8705 lt!343884)) (bvslt (x!64901 lt!343884) #b01111111111111111111111111111110) (bvsge (x!64901 lt!343884) #b00000000000000000000000000000000) (bvsge (x!64901 lt!343884) #b00000000000000000000000000000000)))))

(assert (=> b!772317 (=> (not res!522500) (not e!429959))))

(declare-fun d!101765 () Bool)

(assert (=> d!101765 e!429961))

(declare-fun c!85305 () Bool)

(assert (=> d!101765 (= c!85305 (and (is-Intermediate!7893 lt!343884) (undefined!8705 lt!343884)))))

(assert (=> d!101765 (= lt!343884 e!429958)))

(declare-fun c!85306 () Bool)

(assert (=> d!101765 (= c!85306 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343883 () (_ BitVec 64))

(assert (=> d!101765 (= lt!343883 (select (arr!20286 lt!343761) (toIndex!0 lt!343764 mask!3328)))))

(assert (=> d!101765 (validMask!0 mask!3328)))

(assert (=> d!101765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343764 mask!3328) lt!343764 lt!343761 mask!3328) lt!343884)))

(declare-fun b!772314 () Bool)

(assert (=> b!772314 (= e!429957 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!343764 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!343764 lt!343761 mask!3328))))

(declare-fun b!772318 () Bool)

(assert (=> b!772318 (and (bvsge (index!33941 lt!343884) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343884) (size!20707 lt!343761)))))

(assert (=> b!772318 (= e!429960 (= (select (arr!20286 lt!343761) (index!33941 lt!343884)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772319 () Bool)

(assert (=> b!772319 (= e!429961 (bvsge (x!64901 lt!343884) #b01111111111111111111111111111110))))

(declare-fun b!772320 () Bool)

(assert (=> b!772320 (and (bvsge (index!33941 lt!343884) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343884) (size!20707 lt!343761)))))

(declare-fun res!522502 () Bool)

(assert (=> b!772320 (= res!522502 (= (select (arr!20286 lt!343761) (index!33941 lt!343884)) lt!343764))))

(assert (=> b!772320 (=> res!522502 e!429960)))

(assert (=> b!772320 (= e!429959 e!429960)))

(declare-fun b!772321 () Bool)

(assert (=> b!772321 (= e!429958 e!429957)))

(declare-fun c!85304 () Bool)

(assert (=> b!772321 (= c!85304 (or (= lt!343883 lt!343764) (= (bvadd lt!343883 lt!343883) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101765 c!85306) b!772313))

(assert (= (and d!101765 (not c!85306)) b!772321))

(assert (= (and b!772321 c!85304) b!772316))

(assert (= (and b!772321 (not c!85304)) b!772314))

(assert (= (and d!101765 c!85305) b!772319))

(assert (= (and d!101765 (not c!85305)) b!772317))

(assert (= (and b!772317 res!522500) b!772320))

(assert (= (and b!772320 (not res!522502)) b!772315))

(assert (= (and b!772315 (not res!522501)) b!772318))

(declare-fun m!717327 () Bool)

(assert (=> b!772318 m!717327))

(assert (=> b!772315 m!717327))

(assert (=> b!772320 m!717327))

(assert (=> d!101765 m!717141))

(declare-fun m!717329 () Bool)

(assert (=> d!101765 m!717329))

(assert (=> d!101765 m!717135))

(assert (=> b!772314 m!717141))

(declare-fun m!717331 () Bool)

(assert (=> b!772314 m!717331))

(assert (=> b!772314 m!717331))

(declare-fun m!717333 () Bool)

(assert (=> b!772314 m!717333))

(assert (=> b!772067 d!101765))

(declare-fun d!101767 () Bool)

(declare-fun lt!343890 () (_ BitVec 32))

(declare-fun lt!343889 () (_ BitVec 32))

(assert (=> d!101767 (= lt!343890 (bvmul (bvxor lt!343889 (bvlshr lt!343889 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101767 (= lt!343889 ((_ extract 31 0) (bvand (bvxor lt!343764 (bvlshr lt!343764 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101767 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!522503 (let ((h!15443 ((_ extract 31 0) (bvand (bvxor lt!343764 (bvlshr lt!343764 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64908 (bvmul (bvxor h!15443 (bvlshr h!15443 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64908 (bvlshr x!64908 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!522503 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!522503 #b00000000000000000000000000000000))))))

(assert (=> d!101767 (= (toIndex!0 lt!343764 mask!3328) (bvand (bvxor lt!343890 (bvlshr lt!343890 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!772067 d!101767))

(declare-fun b!772322 () Bool)

(declare-fun e!429963 () SeekEntryResult!7893)

(assert (=> b!772322 (= e!429963 (Intermediate!7893 true lt!343769 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!772324 () Bool)

(declare-fun lt!343892 () SeekEntryResult!7893)

(assert (=> b!772324 (and (bvsge (index!33941 lt!343892) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343892) (size!20707 a!3186)))))

(declare-fun res!522505 () Bool)

(assert (=> b!772324 (= res!522505 (= (select (arr!20286 a!3186) (index!33941 lt!343892)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429965 () Bool)

(assert (=> b!772324 (=> res!522505 e!429965)))

(declare-fun b!772325 () Bool)

(declare-fun e!429962 () SeekEntryResult!7893)

(assert (=> b!772325 (= e!429962 (Intermediate!7893 false lt!343769 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!772326 () Bool)

(declare-fun e!429966 () Bool)

(declare-fun e!429964 () Bool)

(assert (=> b!772326 (= e!429966 e!429964)))

(declare-fun res!522504 () Bool)

(assert (=> b!772326 (= res!522504 (and (is-Intermediate!7893 lt!343892) (not (undefined!8705 lt!343892)) (bvslt (x!64901 lt!343892) #b01111111111111111111111111111110) (bvsge (x!64901 lt!343892) #b00000000000000000000000000000000) (bvsge (x!64901 lt!343892) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!772326 (=> (not res!522504) (not e!429964))))

(declare-fun d!101773 () Bool)

(assert (=> d!101773 e!429966))

(declare-fun c!85308 () Bool)

(assert (=> d!101773 (= c!85308 (and (is-Intermediate!7893 lt!343892) (undefined!8705 lt!343892)))))

(assert (=> d!101773 (= lt!343892 e!429963)))

(declare-fun c!85309 () Bool)

(assert (=> d!101773 (= c!85309 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343891 () (_ BitVec 64))

(assert (=> d!101773 (= lt!343891 (select (arr!20286 a!3186) lt!343769))))

(assert (=> d!101773 (validMask!0 mask!3328)))

(assert (=> d!101773 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343769 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343892)))

(declare-fun b!772323 () Bool)

(assert (=> b!772323 (= e!429962 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343769 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772327 () Bool)

(assert (=> b!772327 (and (bvsge (index!33941 lt!343892) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343892) (size!20707 a!3186)))))

(assert (=> b!772327 (= e!429965 (= (select (arr!20286 a!3186) (index!33941 lt!343892)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772328 () Bool)

(assert (=> b!772328 (= e!429966 (bvsge (x!64901 lt!343892) #b01111111111111111111111111111110))))

(declare-fun b!772329 () Bool)

(assert (=> b!772329 (and (bvsge (index!33941 lt!343892) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343892) (size!20707 a!3186)))))

(declare-fun res!522506 () Bool)

(assert (=> b!772329 (= res!522506 (= (select (arr!20286 a!3186) (index!33941 lt!343892)) (select (arr!20286 a!3186) j!159)))))

(assert (=> b!772329 (=> res!522506 e!429965)))

(assert (=> b!772329 (= e!429964 e!429965)))

(declare-fun b!772330 () Bool)

(assert (=> b!772330 (= e!429963 e!429962)))

(declare-fun c!85307 () Bool)

(assert (=> b!772330 (= c!85307 (or (= lt!343891 (select (arr!20286 a!3186) j!159)) (= (bvadd lt!343891 lt!343891) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101773 c!85309) b!772322))

(assert (= (and d!101773 (not c!85309)) b!772330))

(assert (= (and b!772330 c!85307) b!772325))

(assert (= (and b!772330 (not c!85307)) b!772323))

(assert (= (and d!101773 c!85308) b!772328))

(assert (= (and d!101773 (not c!85308)) b!772326))

(assert (= (and b!772326 res!522504) b!772329))

(assert (= (and b!772329 (not res!522506)) b!772324))

(assert (= (and b!772324 (not res!522505)) b!772327))

(declare-fun m!717335 () Bool)

(assert (=> b!772327 m!717335))

(assert (=> b!772324 m!717335))

(assert (=> b!772329 m!717335))

(declare-fun m!717337 () Bool)

(assert (=> d!101773 m!717337))

(assert (=> d!101773 m!717135))

(declare-fun m!717339 () Bool)

(assert (=> b!772323 m!717339))

(assert (=> b!772323 m!717339))

(assert (=> b!772323 m!717115))

(declare-fun m!717341 () Bool)

(assert (=> b!772323 m!717341))

(assert (=> b!772068 d!101773))

(declare-fun d!101775 () Bool)

(assert (=> d!101775 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66934 d!101775))

(declare-fun d!101781 () Bool)

(assert (=> d!101781 (= (array_inv!16060 a!3186) (bvsge (size!20707 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66934 d!101781))

(declare-fun d!101783 () Bool)

(assert (=> d!101783 (= (validKeyInArray!0 (select (arr!20286 a!3186) j!159)) (and (not (= (select (arr!20286 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20286 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!772069 d!101783))

(declare-fun b!772361 () Bool)

(declare-fun e!429986 () SeekEntryResult!7893)

(assert (=> b!772361 (= e!429986 (Intermediate!7893 true (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772363 () Bool)

(declare-fun lt!343911 () SeekEntryResult!7893)

(assert (=> b!772363 (and (bvsge (index!33941 lt!343911) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343911) (size!20707 a!3186)))))

(declare-fun res!522514 () Bool)

(assert (=> b!772363 (= res!522514 (= (select (arr!20286 a!3186) (index!33941 lt!343911)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429988 () Bool)

(assert (=> b!772363 (=> res!522514 e!429988)))

(declare-fun e!429985 () SeekEntryResult!7893)

(declare-fun b!772364 () Bool)

(assert (=> b!772364 (= e!429985 (Intermediate!7893 false (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772365 () Bool)

(declare-fun e!429989 () Bool)

(declare-fun e!429987 () Bool)

(assert (=> b!772365 (= e!429989 e!429987)))

(declare-fun res!522513 () Bool)

(assert (=> b!772365 (= res!522513 (and (is-Intermediate!7893 lt!343911) (not (undefined!8705 lt!343911)) (bvslt (x!64901 lt!343911) #b01111111111111111111111111111110) (bvsge (x!64901 lt!343911) #b00000000000000000000000000000000) (bvsge (x!64901 lt!343911) #b00000000000000000000000000000000)))))

(assert (=> b!772365 (=> (not res!522513) (not e!429987))))

(declare-fun d!101785 () Bool)

(assert (=> d!101785 e!429989))

(declare-fun c!85323 () Bool)

(assert (=> d!101785 (= c!85323 (and (is-Intermediate!7893 lt!343911) (undefined!8705 lt!343911)))))

(assert (=> d!101785 (= lt!343911 e!429986)))

(declare-fun c!85324 () Bool)

(assert (=> d!101785 (= c!85324 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343910 () (_ BitVec 64))

(assert (=> d!101785 (= lt!343910 (select (arr!20286 a!3186) (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328)))))

(assert (=> d!101785 (validMask!0 mask!3328)))

(assert (=> d!101785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328) (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343911)))

(declare-fun b!772362 () Bool)

(assert (=> b!772362 (= e!429985 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772366 () Bool)

(assert (=> b!772366 (and (bvsge (index!33941 lt!343911) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343911) (size!20707 a!3186)))))

(assert (=> b!772366 (= e!429988 (= (select (arr!20286 a!3186) (index!33941 lt!343911)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772367 () Bool)

(assert (=> b!772367 (= e!429989 (bvsge (x!64901 lt!343911) #b01111111111111111111111111111110))))

(declare-fun b!772368 () Bool)

(assert (=> b!772368 (and (bvsge (index!33941 lt!343911) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343911) (size!20707 a!3186)))))

(declare-fun res!522515 () Bool)

(assert (=> b!772368 (= res!522515 (= (select (arr!20286 a!3186) (index!33941 lt!343911)) (select (arr!20286 a!3186) j!159)))))

(assert (=> b!772368 (=> res!522515 e!429988)))

(assert (=> b!772368 (= e!429987 e!429988)))

(declare-fun b!772369 () Bool)

(assert (=> b!772369 (= e!429986 e!429985)))

(declare-fun c!85322 () Bool)

(assert (=> b!772369 (= c!85322 (or (= lt!343910 (select (arr!20286 a!3186) j!159)) (= (bvadd lt!343910 lt!343910) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101785 c!85324) b!772361))

(assert (= (and d!101785 (not c!85324)) b!772369))

(assert (= (and b!772369 c!85322) b!772364))

(assert (= (and b!772369 (not c!85322)) b!772362))

(assert (= (and d!101785 c!85323) b!772367))

(assert (= (and d!101785 (not c!85323)) b!772365))

(assert (= (and b!772365 res!522513) b!772368))

(assert (= (and b!772368 (not res!522515)) b!772363))

(assert (= (and b!772363 (not res!522514)) b!772366))

(declare-fun m!717359 () Bool)

(assert (=> b!772366 m!717359))

(assert (=> b!772363 m!717359))

(assert (=> b!772368 m!717359))

(assert (=> d!101785 m!717153))

(declare-fun m!717361 () Bool)

(assert (=> d!101785 m!717361))

(assert (=> d!101785 m!717135))

(assert (=> b!772362 m!717153))

(declare-fun m!717363 () Bool)

(assert (=> b!772362 m!717363))

(assert (=> b!772362 m!717363))

(assert (=> b!772362 m!717115))

(declare-fun m!717365 () Bool)

(assert (=> b!772362 m!717365))

(assert (=> b!772080 d!101785))

(declare-fun d!101789 () Bool)

(declare-fun lt!343914 () (_ BitVec 32))

(declare-fun lt!343913 () (_ BitVec 32))

(assert (=> d!101789 (= lt!343914 (bvmul (bvxor lt!343913 (bvlshr lt!343913 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101789 (= lt!343913 ((_ extract 31 0) (bvand (bvxor (select (arr!20286 a!3186) j!159) (bvlshr (select (arr!20286 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101789 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!522503 (let ((h!15443 ((_ extract 31 0) (bvand (bvxor (select (arr!20286 a!3186) j!159) (bvlshr (select (arr!20286 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64908 (bvmul (bvxor h!15443 (bvlshr h!15443 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64908 (bvlshr x!64908 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!522503 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!522503 #b00000000000000000000000000000000))))))

(assert (=> d!101789 (= (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328) (bvand (bvxor lt!343914 (bvlshr lt!343914 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!772080 d!101789))

(declare-fun d!101791 () Bool)

(assert (=> d!101791 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!772070 d!101791))

(declare-fun d!101793 () Bool)

(declare-fun res!522524 () Bool)

(declare-fun e!430000 () Bool)

(assert (=> d!101793 (=> res!522524 e!430000)))

(assert (=> d!101793 (= res!522524 (bvsge #b00000000000000000000000000000000 (size!20707 a!3186)))))

(assert (=> d!101793 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14338) e!430000)))

(declare-fun b!772380 () Bool)

(declare-fun e!430001 () Bool)

(declare-fun contains!4092 (List!14341 (_ BitVec 64)) Bool)

(assert (=> b!772380 (= e!430001 (contains!4092 Nil!14338 (select (arr!20286 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!772381 () Bool)

(declare-fun e!429999 () Bool)

(declare-fun call!35140 () Bool)

(assert (=> b!772381 (= e!429999 call!35140)))

(declare-fun b!772382 () Bool)

(assert (=> b!772382 (= e!429999 call!35140)))

(declare-fun b!772383 () Bool)

(declare-fun e!429998 () Bool)

(assert (=> b!772383 (= e!430000 e!429998)))

(declare-fun res!522523 () Bool)

(assert (=> b!772383 (=> (not res!522523) (not e!429998))))

(assert (=> b!772383 (= res!522523 (not e!430001))))

(declare-fun res!522522 () Bool)

(assert (=> b!772383 (=> (not res!522522) (not e!430001))))

(assert (=> b!772383 (= res!522522 (validKeyInArray!0 (select (arr!20286 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35137 () Bool)

(declare-fun c!85327 () Bool)

(assert (=> bm!35137 (= call!35140 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85327 (Cons!14337 (select (arr!20286 a!3186) #b00000000000000000000000000000000) Nil!14338) Nil!14338)))))

(declare-fun b!772384 () Bool)

(assert (=> b!772384 (= e!429998 e!429999)))

(assert (=> b!772384 (= c!85327 (validKeyInArray!0 (select (arr!20286 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101793 (not res!522524)) b!772383))

(assert (= (and b!772383 res!522522) b!772380))

(assert (= (and b!772383 res!522523) b!772384))

(assert (= (and b!772384 c!85327) b!772381))

(assert (= (and b!772384 (not c!85327)) b!772382))

(assert (= (or b!772381 b!772382) bm!35137))

(declare-fun m!717367 () Bool)

(assert (=> b!772380 m!717367))

(assert (=> b!772380 m!717367))

(declare-fun m!717369 () Bool)

(assert (=> b!772380 m!717369))

(assert (=> b!772383 m!717367))

(assert (=> b!772383 m!717367))

(declare-fun m!717371 () Bool)

(assert (=> b!772383 m!717371))

(assert (=> bm!35137 m!717367))

(declare-fun m!717373 () Bool)

(assert (=> bm!35137 m!717373))

(assert (=> b!772384 m!717367))

(assert (=> b!772384 m!717367))

(assert (=> b!772384 m!717371))

(assert (=> b!772081 d!101793))

(declare-fun b!772482 () Bool)

(declare-fun e!430061 () SeekEntryResult!7893)

(declare-fun lt!343949 () SeekEntryResult!7893)

(assert (=> b!772482 (= e!430061 (MissingZero!7893 (index!33941 lt!343949)))))

(declare-fun b!772483 () Bool)

(declare-fun c!85363 () Bool)

(declare-fun lt!343948 () (_ BitVec 64))

(assert (=> b!772483 (= c!85363 (= lt!343948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430059 () SeekEntryResult!7893)

(assert (=> b!772483 (= e!430059 e!430061)))

(declare-fun b!772484 () Bool)

(assert (=> b!772484 (= e!430061 (seekKeyOrZeroReturnVacant!0 (x!64901 lt!343949) (index!33941 lt!343949) (index!33941 lt!343949) (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772485 () Bool)

(declare-fun e!430060 () SeekEntryResult!7893)

(assert (=> b!772485 (= e!430060 e!430059)))

(assert (=> b!772485 (= lt!343948 (select (arr!20286 a!3186) (index!33941 lt!343949)))))

(declare-fun c!85364 () Bool)

(assert (=> b!772485 (= c!85364 (= lt!343948 (select (arr!20286 a!3186) j!159)))))

(declare-fun b!772486 () Bool)

(assert (=> b!772486 (= e!430059 (Found!7893 (index!33941 lt!343949)))))

(declare-fun b!772487 () Bool)

(assert (=> b!772487 (= e!430060 Undefined!7893)))

(declare-fun d!101797 () Bool)

(declare-fun lt!343950 () SeekEntryResult!7893)

(assert (=> d!101797 (and (or (is-Undefined!7893 lt!343950) (not (is-Found!7893 lt!343950)) (and (bvsge (index!33940 lt!343950) #b00000000000000000000000000000000) (bvslt (index!33940 lt!343950) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!343950) (is-Found!7893 lt!343950) (not (is-MissingZero!7893 lt!343950)) (and (bvsge (index!33939 lt!343950) #b00000000000000000000000000000000) (bvslt (index!33939 lt!343950) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!343950) (is-Found!7893 lt!343950) (is-MissingZero!7893 lt!343950) (not (is-MissingVacant!7893 lt!343950)) (and (bvsge (index!33942 lt!343950) #b00000000000000000000000000000000) (bvslt (index!33942 lt!343950) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!343950) (ite (is-Found!7893 lt!343950) (= (select (arr!20286 a!3186) (index!33940 lt!343950)) (select (arr!20286 a!3186) j!159)) (ite (is-MissingZero!7893 lt!343950) (= (select (arr!20286 a!3186) (index!33939 lt!343950)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7893 lt!343950) (= (select (arr!20286 a!3186) (index!33942 lt!343950)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101797 (= lt!343950 e!430060)))

(declare-fun c!85365 () Bool)

(assert (=> d!101797 (= c!85365 (and (is-Intermediate!7893 lt!343949) (undefined!8705 lt!343949)))))

(assert (=> d!101797 (= lt!343949 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20286 a!3186) j!159) mask!3328) (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101797 (validMask!0 mask!3328)))

(assert (=> d!101797 (= (seekEntryOrOpen!0 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343950)))

(assert (= (and d!101797 c!85365) b!772487))

(assert (= (and d!101797 (not c!85365)) b!772485))

(assert (= (and b!772485 c!85364) b!772486))

(assert (= (and b!772485 (not c!85364)) b!772483))

(assert (= (and b!772483 c!85363) b!772482))

(assert (= (and b!772483 (not c!85363)) b!772484))

(assert (=> b!772484 m!717115))

(declare-fun m!717415 () Bool)

(assert (=> b!772484 m!717415))

(declare-fun m!717417 () Bool)

(assert (=> b!772485 m!717417))

(declare-fun m!717419 () Bool)

(assert (=> d!101797 m!717419))

(declare-fun m!717421 () Bool)

(assert (=> d!101797 m!717421))

(assert (=> d!101797 m!717135))

(declare-fun m!717423 () Bool)

(assert (=> d!101797 m!717423))

(assert (=> d!101797 m!717153))

(assert (=> d!101797 m!717115))

(assert (=> d!101797 m!717155))

(assert (=> d!101797 m!717115))

(assert (=> d!101797 m!717153))

(assert (=> b!772071 d!101797))

(declare-fun b!772548 () Bool)

(declare-fun e!430098 () SeekEntryResult!7893)

(assert (=> b!772548 (= e!430098 (Found!7893 index!1321))))

(declare-fun b!772549 () Bool)

(declare-fun c!85391 () Bool)

(declare-fun lt!343975 () (_ BitVec 64))

(assert (=> b!772549 (= c!85391 (= lt!343975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430099 () SeekEntryResult!7893)

(assert (=> b!772549 (= e!430098 e!430099)))

(declare-fun b!772550 () Bool)

(assert (=> b!772550 (= e!430099 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772551 () Bool)

(declare-fun e!430100 () SeekEntryResult!7893)

(assert (=> b!772551 (= e!430100 e!430098)))

(declare-fun c!85389 () Bool)

(assert (=> b!772551 (= c!85389 (= lt!343975 (select (arr!20286 a!3186) j!159)))))

(declare-fun b!772552 () Bool)

(assert (=> b!772552 (= e!430099 (MissingVacant!7893 resIntermediateIndex!5))))

(declare-fun lt!343974 () SeekEntryResult!7893)

(declare-fun d!101815 () Bool)

(assert (=> d!101815 (and (or (is-Undefined!7893 lt!343974) (not (is-Found!7893 lt!343974)) (and (bvsge (index!33940 lt!343974) #b00000000000000000000000000000000) (bvslt (index!33940 lt!343974) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!343974) (is-Found!7893 lt!343974) (not (is-MissingVacant!7893 lt!343974)) (not (= (index!33942 lt!343974) resIntermediateIndex!5)) (and (bvsge (index!33942 lt!343974) #b00000000000000000000000000000000) (bvslt (index!33942 lt!343974) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!343974) (ite (is-Found!7893 lt!343974) (= (select (arr!20286 a!3186) (index!33940 lt!343974)) (select (arr!20286 a!3186) j!159)) (and (is-MissingVacant!7893 lt!343974) (= (index!33942 lt!343974) resIntermediateIndex!5) (= (select (arr!20286 a!3186) (index!33942 lt!343974)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101815 (= lt!343974 e!430100)))

(declare-fun c!85390 () Bool)

(assert (=> d!101815 (= c!85390 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101815 (= lt!343975 (select (arr!20286 a!3186) index!1321))))

(assert (=> d!101815 (validMask!0 mask!3328)))

(assert (=> d!101815 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343974)))

(declare-fun b!772553 () Bool)

(assert (=> b!772553 (= e!430100 Undefined!7893)))

(assert (= (and d!101815 c!85390) b!772553))

(assert (= (and d!101815 (not c!85390)) b!772551))

(assert (= (and b!772551 c!85389) b!772548))

(assert (= (and b!772551 (not c!85389)) b!772549))

(assert (= (and b!772549 c!85391) b!772552))

(assert (= (and b!772549 (not c!85391)) b!772550))

(assert (=> b!772550 m!717151))

(assert (=> b!772550 m!717151))

(assert (=> b!772550 m!717115))

(declare-fun m!717473 () Bool)

(assert (=> b!772550 m!717473))

(declare-fun m!717475 () Bool)

(assert (=> d!101815 m!717475))

(declare-fun m!717477 () Bool)

(assert (=> d!101815 m!717477))

(declare-fun m!717479 () Bool)

(assert (=> d!101815 m!717479))

(assert (=> d!101815 m!717135))

(assert (=> b!772082 d!101815))

(declare-fun d!101831 () Bool)

(declare-fun res!522571 () Bool)

(declare-fun e!430108 () Bool)

(assert (=> d!101831 (=> res!522571 e!430108)))

(assert (=> d!101831 (= res!522571 (= (select (arr!20286 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101831 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!430108)))

(declare-fun b!772564 () Bool)

(declare-fun e!430109 () Bool)

(assert (=> b!772564 (= e!430108 e!430109)))

(declare-fun res!522572 () Bool)

(assert (=> b!772564 (=> (not res!522572) (not e!430109))))

(assert (=> b!772564 (= res!522572 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20707 a!3186)))))

(declare-fun b!772565 () Bool)

(assert (=> b!772565 (= e!430109 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101831 (not res!522571)) b!772564))

(assert (= (and b!772564 res!522572) b!772565))

(assert (=> d!101831 m!717367))

(declare-fun m!717495 () Bool)

(assert (=> b!772565 m!717495))

(assert (=> b!772072 d!101831))

(declare-fun b!772566 () Bool)

(declare-fun e!430111 () SeekEntryResult!7893)

(assert (=> b!772566 (= e!430111 (Intermediate!7893 true index!1321 x!1131))))

(declare-fun b!772568 () Bool)

(declare-fun lt!343980 () SeekEntryResult!7893)

(assert (=> b!772568 (and (bvsge (index!33941 lt!343980) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343980) (size!20707 a!3186)))))

(declare-fun res!522574 () Bool)

(assert (=> b!772568 (= res!522574 (= (select (arr!20286 a!3186) (index!33941 lt!343980)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430113 () Bool)

(assert (=> b!772568 (=> res!522574 e!430113)))

(declare-fun b!772569 () Bool)

(declare-fun e!430110 () SeekEntryResult!7893)

(assert (=> b!772569 (= e!430110 (Intermediate!7893 false index!1321 x!1131))))

(declare-fun b!772570 () Bool)

(declare-fun e!430114 () Bool)

(declare-fun e!430112 () Bool)

(assert (=> b!772570 (= e!430114 e!430112)))

(declare-fun res!522573 () Bool)

(assert (=> b!772570 (= res!522573 (and (is-Intermediate!7893 lt!343980) (not (undefined!8705 lt!343980)) (bvslt (x!64901 lt!343980) #b01111111111111111111111111111110) (bvsge (x!64901 lt!343980) #b00000000000000000000000000000000) (bvsge (x!64901 lt!343980) x!1131)))))

(assert (=> b!772570 (=> (not res!522573) (not e!430112))))

(declare-fun d!101835 () Bool)

(assert (=> d!101835 e!430114))

(declare-fun c!85396 () Bool)

(assert (=> d!101835 (= c!85396 (and (is-Intermediate!7893 lt!343980) (undefined!8705 lt!343980)))))

(assert (=> d!101835 (= lt!343980 e!430111)))

(declare-fun c!85397 () Bool)

(assert (=> d!101835 (= c!85397 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343979 () (_ BitVec 64))

(assert (=> d!101835 (= lt!343979 (select (arr!20286 a!3186) index!1321))))

(assert (=> d!101835 (validMask!0 mask!3328)))

(assert (=> d!101835 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343980)))

(declare-fun b!772567 () Bool)

(assert (=> b!772567 (= e!430110 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772571 () Bool)

(assert (=> b!772571 (and (bvsge (index!33941 lt!343980) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343980) (size!20707 a!3186)))))

(assert (=> b!772571 (= e!430113 (= (select (arr!20286 a!3186) (index!33941 lt!343980)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772572 () Bool)

(assert (=> b!772572 (= e!430114 (bvsge (x!64901 lt!343980) #b01111111111111111111111111111110))))

(declare-fun b!772573 () Bool)

(assert (=> b!772573 (and (bvsge (index!33941 lt!343980) #b00000000000000000000000000000000) (bvslt (index!33941 lt!343980) (size!20707 a!3186)))))

(declare-fun res!522575 () Bool)

(assert (=> b!772573 (= res!522575 (= (select (arr!20286 a!3186) (index!33941 lt!343980)) (select (arr!20286 a!3186) j!159)))))

(assert (=> b!772573 (=> res!522575 e!430113)))

(assert (=> b!772573 (= e!430112 e!430113)))

(declare-fun b!772574 () Bool)

(assert (=> b!772574 (= e!430111 e!430110)))

(declare-fun c!85395 () Bool)

(assert (=> b!772574 (= c!85395 (or (= lt!343979 (select (arr!20286 a!3186) j!159)) (= (bvadd lt!343979 lt!343979) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101835 c!85397) b!772566))

(assert (= (and d!101835 (not c!85397)) b!772574))

(assert (= (and b!772574 c!85395) b!772569))

(assert (= (and b!772574 (not c!85395)) b!772567))

(assert (= (and d!101835 c!85396) b!772572))

(assert (= (and d!101835 (not c!85396)) b!772570))

(assert (= (and b!772570 res!522573) b!772573))

(assert (= (and b!772573 (not res!522575)) b!772568))

(assert (= (and b!772568 (not res!522574)) b!772571))

(declare-fun m!717497 () Bool)

(assert (=> b!772571 m!717497))

(assert (=> b!772568 m!717497))

(assert (=> b!772573 m!717497))

(assert (=> d!101835 m!717479))

(assert (=> d!101835 m!717135))

(assert (=> b!772567 m!717151))

(assert (=> b!772567 m!717151))

(assert (=> b!772567 m!717115))

(declare-fun m!717499 () Bool)

(assert (=> b!772567 m!717499))

(assert (=> b!772083 d!101835))

(declare-fun b!772589 () Bool)

(declare-fun e!430126 () Bool)

(declare-fun e!430125 () Bool)

(assert (=> b!772589 (= e!430126 e!430125)))

(declare-fun lt!343991 () (_ BitVec 64))

(assert (=> b!772589 (= lt!343991 (select (arr!20286 a!3186) j!159))))

(declare-fun lt!343989 () Unit!26608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42382 (_ BitVec 64) (_ BitVec 32)) Unit!26608)

(assert (=> b!772589 (= lt!343989 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343991 j!159))))

(assert (=> b!772589 (arrayContainsKey!0 a!3186 lt!343991 #b00000000000000000000000000000000)))

(declare-fun lt!343990 () Unit!26608)

(assert (=> b!772589 (= lt!343990 lt!343989)))

(declare-fun res!522580 () Bool)

(assert (=> b!772589 (= res!522580 (= (seekEntryOrOpen!0 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) (Found!7893 j!159)))))

(assert (=> b!772589 (=> (not res!522580) (not e!430125))))

(declare-fun b!772590 () Bool)

(declare-fun call!35147 () Bool)

(assert (=> b!772590 (= e!430125 call!35147)))

(declare-fun bm!35144 () Bool)

(assert (=> bm!35144 (= call!35147 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!772591 () Bool)

(declare-fun e!430124 () Bool)

(assert (=> b!772591 (= e!430124 e!430126)))

(declare-fun c!85403 () Bool)

(assert (=> b!772591 (= c!85403 (validKeyInArray!0 (select (arr!20286 a!3186) j!159)))))

(declare-fun b!772592 () Bool)

(assert (=> b!772592 (= e!430126 call!35147)))

(declare-fun d!101837 () Bool)

(declare-fun res!522581 () Bool)

(assert (=> d!101837 (=> res!522581 e!430124)))

(assert (=> d!101837 (= res!522581 (bvsge j!159 (size!20707 a!3186)))))

(assert (=> d!101837 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!430124)))

(assert (= (and d!101837 (not res!522581)) b!772591))

(assert (= (and b!772591 c!85403) b!772589))

(assert (= (and b!772591 (not c!85403)) b!772592))

(assert (= (and b!772589 res!522580) b!772590))

(assert (= (or b!772590 b!772592) bm!35144))

(assert (=> b!772589 m!717115))

(declare-fun m!717507 () Bool)

(assert (=> b!772589 m!717507))

(declare-fun m!717509 () Bool)

(assert (=> b!772589 m!717509))

(assert (=> b!772589 m!717115))

(assert (=> b!772589 m!717161))

(declare-fun m!717511 () Bool)

(assert (=> bm!35144 m!717511))

(assert (=> b!772591 m!717115))

(assert (=> b!772591 m!717115))

(assert (=> b!772591 m!717159))

(assert (=> b!772073 d!101837))

(declare-fun d!101845 () Bool)

(assert (=> d!101845 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!343997 () Unit!26608)

(declare-fun choose!38 (array!42382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26608)

(assert (=> d!101845 (= lt!343997 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101845 (validMask!0 mask!3328)))

(assert (=> d!101845 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!343997)))

(declare-fun bs!21598 () Bool)

(assert (= bs!21598 d!101845))

(assert (=> bs!21598 m!717123))

(declare-fun m!717523 () Bool)

(assert (=> bs!21598 m!717523))

(assert (=> bs!21598 m!717135))

(assert (=> b!772073 d!101845))

(declare-fun b!772609 () Bool)

(declare-fun e!430138 () SeekEntryResult!7893)

(assert (=> b!772609 (= e!430138 (Found!7893 resIntermediateIndex!5))))

(declare-fun b!772610 () Bool)

(declare-fun c!85411 () Bool)

(declare-fun lt!343999 () (_ BitVec 64))

(assert (=> b!772610 (= c!85411 (= lt!343999 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430139 () SeekEntryResult!7893)

(assert (=> b!772610 (= e!430138 e!430139)))

(declare-fun b!772611 () Bool)

(assert (=> b!772611 (= e!430139 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772612 () Bool)

(declare-fun e!430140 () SeekEntryResult!7893)

(assert (=> b!772612 (= e!430140 e!430138)))

(declare-fun c!85409 () Bool)

(assert (=> b!772612 (= c!85409 (= lt!343999 (select (arr!20286 a!3186) j!159)))))

(declare-fun b!772613 () Bool)

(assert (=> b!772613 (= e!430139 (MissingVacant!7893 resIntermediateIndex!5))))

(declare-fun d!101849 () Bool)

(declare-fun lt!343998 () SeekEntryResult!7893)

(assert (=> d!101849 (and (or (is-Undefined!7893 lt!343998) (not (is-Found!7893 lt!343998)) (and (bvsge (index!33940 lt!343998) #b00000000000000000000000000000000) (bvslt (index!33940 lt!343998) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!343998) (is-Found!7893 lt!343998) (not (is-MissingVacant!7893 lt!343998)) (not (= (index!33942 lt!343998) resIntermediateIndex!5)) (and (bvsge (index!33942 lt!343998) #b00000000000000000000000000000000) (bvslt (index!33942 lt!343998) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!343998) (ite (is-Found!7893 lt!343998) (= (select (arr!20286 a!3186) (index!33940 lt!343998)) (select (arr!20286 a!3186) j!159)) (and (is-MissingVacant!7893 lt!343998) (= (index!33942 lt!343998) resIntermediateIndex!5) (= (select (arr!20286 a!3186) (index!33942 lt!343998)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101849 (= lt!343998 e!430140)))

(declare-fun c!85410 () Bool)

(assert (=> d!101849 (= c!85410 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101849 (= lt!343999 (select (arr!20286 a!3186) resIntermediateIndex!5))))

(assert (=> d!101849 (validMask!0 mask!3328)))

(assert (=> d!101849 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!343998)))

(declare-fun b!772614 () Bool)

(assert (=> b!772614 (= e!430140 Undefined!7893)))

(assert (= (and d!101849 c!85410) b!772614))

(assert (= (and d!101849 (not c!85410)) b!772612))

(assert (= (and b!772612 c!85409) b!772609))

(assert (= (and b!772612 (not c!85409)) b!772610))

(assert (= (and b!772610 c!85411) b!772613))

(assert (= (and b!772610 (not c!85411)) b!772611))

(declare-fun m!717525 () Bool)

(assert (=> b!772611 m!717525))

(assert (=> b!772611 m!717525))

(assert (=> b!772611 m!717115))

(declare-fun m!717527 () Bool)

(assert (=> b!772611 m!717527))

(declare-fun m!717529 () Bool)

(assert (=> d!101849 m!717529))

(declare-fun m!717531 () Bool)

(assert (=> d!101849 m!717531))

(assert (=> d!101849 m!717133))

(assert (=> d!101849 m!717135))

(assert (=> b!772084 d!101849))

(assert (=> b!772085 d!101815))

(declare-fun b!772615 () Bool)

(declare-fun e!430141 () SeekEntryResult!7893)

(assert (=> b!772615 (= e!430141 (Found!7893 lt!343769))))

(declare-fun b!772616 () Bool)

(declare-fun c!85414 () Bool)

(declare-fun lt!344001 () (_ BitVec 64))

(assert (=> b!772616 (= c!85414 (= lt!344001 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430142 () SeekEntryResult!7893)

(assert (=> b!772616 (= e!430141 e!430142)))

(declare-fun b!772617 () Bool)

(assert (=> b!772617 (= e!430142 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343769 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772618 () Bool)

(declare-fun e!430143 () SeekEntryResult!7893)

(assert (=> b!772618 (= e!430143 e!430141)))

(declare-fun c!85412 () Bool)

(assert (=> b!772618 (= c!85412 (= lt!344001 (select (arr!20286 a!3186) j!159)))))

(declare-fun b!772619 () Bool)

(assert (=> b!772619 (= e!430142 (MissingVacant!7893 resIntermediateIndex!5))))

(declare-fun d!101851 () Bool)

(declare-fun lt!344000 () SeekEntryResult!7893)

(assert (=> d!101851 (and (or (is-Undefined!7893 lt!344000) (not (is-Found!7893 lt!344000)) (and (bvsge (index!33940 lt!344000) #b00000000000000000000000000000000) (bvslt (index!33940 lt!344000) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!344000) (is-Found!7893 lt!344000) (not (is-MissingVacant!7893 lt!344000)) (not (= (index!33942 lt!344000) resIntermediateIndex!5)) (and (bvsge (index!33942 lt!344000) #b00000000000000000000000000000000) (bvslt (index!33942 lt!344000) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!344000) (ite (is-Found!7893 lt!344000) (= (select (arr!20286 a!3186) (index!33940 lt!344000)) (select (arr!20286 a!3186) j!159)) (and (is-MissingVacant!7893 lt!344000) (= (index!33942 lt!344000) resIntermediateIndex!5) (= (select (arr!20286 a!3186) (index!33942 lt!344000)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101851 (= lt!344000 e!430143)))

(declare-fun c!85413 () Bool)

(assert (=> d!101851 (= c!85413 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101851 (= lt!344001 (select (arr!20286 a!3186) lt!343769))))

(assert (=> d!101851 (validMask!0 mask!3328)))

(assert (=> d!101851 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343769 resIntermediateIndex!5 (select (arr!20286 a!3186) j!159) a!3186 mask!3328) lt!344000)))

(declare-fun b!772620 () Bool)

(assert (=> b!772620 (= e!430143 Undefined!7893)))

(assert (= (and d!101851 c!85413) b!772620))

(assert (= (and d!101851 (not c!85413)) b!772618))

(assert (= (and b!772618 c!85412) b!772615))

(assert (= (and b!772618 (not c!85412)) b!772616))

(assert (= (and b!772616 c!85414) b!772619))

(assert (= (and b!772616 (not c!85414)) b!772617))

(assert (=> b!772617 m!717339))

(assert (=> b!772617 m!717339))

(assert (=> b!772617 m!717115))

(declare-fun m!717533 () Bool)

(assert (=> b!772617 m!717533))

(declare-fun m!717535 () Bool)

(assert (=> d!101851 m!717535))

(declare-fun m!717537 () Bool)

(assert (=> d!101851 m!717537))

(assert (=> d!101851 m!717337))

(assert (=> d!101851 m!717135))

(assert (=> b!772085 d!101851))

(declare-fun b!772621 () Bool)

(declare-fun e!430146 () SeekEntryResult!7893)

(declare-fun lt!344003 () SeekEntryResult!7893)

(assert (=> b!772621 (= e!430146 (MissingZero!7893 (index!33941 lt!344003)))))

(declare-fun b!772622 () Bool)

(declare-fun c!85415 () Bool)

(declare-fun lt!344002 () (_ BitVec 64))

(assert (=> b!772622 (= c!85415 (= lt!344002 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430144 () SeekEntryResult!7893)

(assert (=> b!772622 (= e!430144 e!430146)))

(declare-fun b!772623 () Bool)

(assert (=> b!772623 (= e!430146 (seekKeyOrZeroReturnVacant!0 (x!64901 lt!344003) (index!33941 lt!344003) (index!33941 lt!344003) k!2102 a!3186 mask!3328))))

(declare-fun b!772624 () Bool)

(declare-fun e!430145 () SeekEntryResult!7893)

(assert (=> b!772624 (= e!430145 e!430144)))

(assert (=> b!772624 (= lt!344002 (select (arr!20286 a!3186) (index!33941 lt!344003)))))

(declare-fun c!85416 () Bool)

(assert (=> b!772624 (= c!85416 (= lt!344002 k!2102))))

(declare-fun b!772625 () Bool)

(assert (=> b!772625 (= e!430144 (Found!7893 (index!33941 lt!344003)))))

(declare-fun b!772626 () Bool)

(assert (=> b!772626 (= e!430145 Undefined!7893)))

(declare-fun d!101853 () Bool)

(declare-fun lt!344004 () SeekEntryResult!7893)

(assert (=> d!101853 (and (or (is-Undefined!7893 lt!344004) (not (is-Found!7893 lt!344004)) (and (bvsge (index!33940 lt!344004) #b00000000000000000000000000000000) (bvslt (index!33940 lt!344004) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!344004) (is-Found!7893 lt!344004) (not (is-MissingZero!7893 lt!344004)) (and (bvsge (index!33939 lt!344004) #b00000000000000000000000000000000) (bvslt (index!33939 lt!344004) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!344004) (is-Found!7893 lt!344004) (is-MissingZero!7893 lt!344004) (not (is-MissingVacant!7893 lt!344004)) (and (bvsge (index!33942 lt!344004) #b00000000000000000000000000000000) (bvslt (index!33942 lt!344004) (size!20707 a!3186)))) (or (is-Undefined!7893 lt!344004) (ite (is-Found!7893 lt!344004) (= (select (arr!20286 a!3186) (index!33940 lt!344004)) k!2102) (ite (is-MissingZero!7893 lt!344004) (= (select (arr!20286 a!3186) (index!33939 lt!344004)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7893 lt!344004) (= (select (arr!20286 a!3186) (index!33942 lt!344004)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101853 (= lt!344004 e!430145)))

(declare-fun c!85417 () Bool)

(assert (=> d!101853 (= c!85417 (and (is-Intermediate!7893 lt!344003) (undefined!8705 lt!344003)))))

(assert (=> d!101853 (= lt!344003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101853 (validMask!0 mask!3328)))

(assert (=> d!101853 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!344004)))

(assert (= (and d!101853 c!85417) b!772626))

(assert (= (and d!101853 (not c!85417)) b!772624))

(assert (= (and b!772624 c!85416) b!772625))

(assert (= (and b!772624 (not c!85416)) b!772622))

(assert (= (and b!772622 c!85415) b!772621))

(assert (= (and b!772622 (not c!85415)) b!772623))

(declare-fun m!717539 () Bool)

(assert (=> b!772623 m!717539))

(declare-fun m!717541 () Bool)

(assert (=> b!772624 m!717541))

(declare-fun m!717543 () Bool)

(assert (=> d!101853 m!717543))

(declare-fun m!717545 () Bool)

(assert (=> d!101853 m!717545))

(assert (=> d!101853 m!717135))

(declare-fun m!717547 () Bool)

(assert (=> d!101853 m!717547))

(declare-fun m!717549 () Bool)

(assert (=> d!101853 m!717549))

(declare-fun m!717551 () Bool)

(assert (=> d!101853 m!717551))

(assert (=> d!101853 m!717549))

(assert (=> b!772075 d!101853))

(declare-fun b!772632 () Bool)

(declare-fun e!430153 () Bool)

(declare-fun e!430152 () Bool)

(assert (=> b!772632 (= e!430153 e!430152)))

(declare-fun lt!344007 () (_ BitVec 64))

(assert (=> b!772632 (= lt!344007 (select (arr!20286 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!344005 () Unit!26608)

(assert (=> b!772632 (= lt!344005 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!344007 #b00000000000000000000000000000000))))

(assert (=> b!772632 (arrayContainsKey!0 a!3186 lt!344007 #b00000000000000000000000000000000)))

(declare-fun lt!344006 () Unit!26608)

(assert (=> b!772632 (= lt!344006 lt!344005)))

(declare-fun res!522591 () Bool)

(assert (=> b!772632 (= res!522591 (= (seekEntryOrOpen!0 (select (arr!20286 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7893 #b00000000000000000000000000000000)))))

(assert (=> b!772632 (=> (not res!522591) (not e!430152))))

(declare-fun b!772633 () Bool)

(declare-fun call!35151 () Bool)

(assert (=> b!772633 (= e!430152 call!35151)))

(declare-fun bm!35148 () Bool)

(assert (=> bm!35148 (= call!35151 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!772634 () Bool)

(declare-fun e!430151 () Bool)

(assert (=> b!772634 (= e!430151 e!430153)))

(declare-fun c!85419 () Bool)

(assert (=> b!772634 (= c!85419 (validKeyInArray!0 (select (arr!20286 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!772635 () Bool)

(assert (=> b!772635 (= e!430153 call!35151)))

(declare-fun d!101855 () Bool)

(declare-fun res!522592 () Bool)

(assert (=> d!101855 (=> res!522592 e!430151)))

(assert (=> d!101855 (= res!522592 (bvsge #b00000000000000000000000000000000 (size!20707 a!3186)))))

(assert (=> d!101855 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!430151)))

(assert (= (and d!101855 (not res!522592)) b!772634))

(assert (= (and b!772634 c!85419) b!772632))

(assert (= (and b!772634 (not c!85419)) b!772635))

(assert (= (and b!772632 res!522591) b!772633))

(assert (= (or b!772633 b!772635) bm!35148))

(assert (=> b!772632 m!717367))

(declare-fun m!717557 () Bool)

(assert (=> b!772632 m!717557))

(declare-fun m!717559 () Bool)

(assert (=> b!772632 m!717559))

(assert (=> b!772632 m!717367))

(declare-fun m!717561 () Bool)

(assert (=> b!772632 m!717561))

(declare-fun m!717563 () Bool)

(assert (=> bm!35148 m!717563))

(assert (=> b!772634 m!717367))

(assert (=> b!772634 m!717367))

(assert (=> b!772634 m!717371))

(assert (=> b!772076 d!101855))

(declare-fun d!101859 () Bool)

(declare-fun lt!344013 () (_ BitVec 32))

(assert (=> d!101859 (and (bvsge lt!344013 #b00000000000000000000000000000000) (bvslt lt!344013 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101859 (= lt!344013 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101859 (validMask!0 mask!3328)))

(assert (=> d!101859 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!344013)))

(declare-fun bs!21600 () Bool)

(assert (= bs!21600 d!101859))

(declare-fun m!717567 () Bool)

(assert (=> bs!21600 m!717567))

(assert (=> bs!21600 m!717135))

(assert (=> b!772077 d!101859))

(push 1)

(assert (not b!772384))

(assert (not bm!35144))

(assert (not b!772617))

(assert (not b!772632))

(assert (not b!772611))

(assert (not b!772565))

(assert (not b!772567))

(assert (not d!101853))

(assert (not d!101849))

(assert (not b!772362))

(assert (not b!772550))

(assert (not b!772634))

(assert (not d!101845))

(assert (not b!772380))

(assert (not bm!35148))

(assert (not d!101765))

(assert (not b!772589))

(assert (not b!772383))

(assert (not b!772623))

(assert (not d!101815))

(assert (not bm!35137))

(assert (not d!101851))

(assert (not b!772323))

(assert (not d!101835))

(assert (not b!772305))

(assert (not d!101859))

(assert (not d!101745))

(assert (not b!772484))

(assert (not b!772314))

(assert (not d!101773))

(assert (not b!772591))

(assert (not d!101785))

(assert (not d!101797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

