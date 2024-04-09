; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66938 () Bool)

(assert start!66938)

(declare-fun b!772187 () Bool)

(declare-fun res!522454 () Bool)

(declare-fun e!429895 () Bool)

(assert (=> b!772187 (=> (not res!522454) (not e!429895))))

(declare-datatypes ((array!42386 0))(
  ( (array!42387 (arr!20288 (Array (_ BitVec 32) (_ BitVec 64))) (size!20709 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42386)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!772187 (= res!522454 (and (= (size!20709 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20709 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20709 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!772188 () Bool)

(declare-fun e!429890 () Bool)

(assert (=> b!772188 (= e!429895 e!429890)))

(declare-fun res!522457 () Bool)

(assert (=> b!772188 (=> (not res!522457) (not e!429890))))

(declare-datatypes ((SeekEntryResult!7895 0))(
  ( (MissingZero!7895 (index!33947 (_ BitVec 32))) (Found!7895 (index!33948 (_ BitVec 32))) (Intermediate!7895 (undefined!8707 Bool) (index!33949 (_ BitVec 32)) (x!64903 (_ BitVec 32))) (Undefined!7895) (MissingVacant!7895 (index!33950 (_ BitVec 32))) )
))
(declare-fun lt!343829 () SeekEntryResult!7895)

(assert (=> b!772188 (= res!522457 (or (= lt!343829 (MissingZero!7895 i!1173)) (= lt!343829 (MissingVacant!7895 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42386 (_ BitVec 32)) SeekEntryResult!7895)

(assert (=> b!772188 (= lt!343829 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!772189 () Bool)

(declare-fun e!429894 () Bool)

(declare-fun e!429891 () Bool)

(assert (=> b!772189 (= e!429894 e!429891)))

(declare-fun res!522453 () Bool)

(assert (=> b!772189 (=> (not res!522453) (not e!429891))))

(declare-fun lt!343835 () SeekEntryResult!7895)

(assert (=> b!772189 (= res!522453 (= (seekEntryOrOpen!0 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343835))))

(assert (=> b!772189 (= lt!343835 (Found!7895 j!159))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!772190 () Bool)

(declare-fun e!429888 () Bool)

(declare-fun lt!343837 () (_ BitVec 32))

(assert (=> b!772190 (= e!429888 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (and (bvsge lt!343837 #b00000000000000000000000000000000) (bvslt lt!343837 (size!20709 a!3186)))))))

(declare-datatypes ((Unit!26616 0))(
  ( (Unit!26617) )
))
(declare-fun lt!343833 () Unit!26616)

(declare-fun e!429893 () Unit!26616)

(assert (=> b!772190 (= lt!343833 e!429893)))

(declare-fun c!85266 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772190 (= c!85266 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772190 (= lt!343837 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772191 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42386 (_ BitVec 32)) SeekEntryResult!7895)

(assert (=> b!772191 (= e!429891 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343835))))

(declare-fun b!772192 () Bool)

(declare-fun res!522452 () Bool)

(declare-fun e!429889 () Bool)

(assert (=> b!772192 (=> (not res!522452) (not e!429889))))

(assert (=> b!772192 (= res!522452 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20288 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772193 () Bool)

(declare-fun res!522455 () Bool)

(assert (=> b!772193 (=> (not res!522455) (not e!429889))))

(declare-fun e!429887 () Bool)

(assert (=> b!772193 (= res!522455 e!429887)))

(declare-fun c!85265 () Bool)

(assert (=> b!772193 (= c!85265 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!772194 () Bool)

(declare-fun res!522464 () Bool)

(assert (=> b!772194 (=> (not res!522464) (not e!429890))))

(assert (=> b!772194 (= res!522464 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20709 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20709 a!3186))))))

(declare-fun b!772195 () Bool)

(assert (=> b!772195 (= e!429887 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) (Found!7895 j!159)))))

(declare-fun b!772196 () Bool)

(declare-fun res!522451 () Bool)

(assert (=> b!772196 (=> (not res!522451) (not e!429895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772196 (= res!522451 (validKeyInArray!0 (select (arr!20288 a!3186) j!159)))))

(declare-fun b!772197 () Bool)

(declare-fun res!522459 () Bool)

(assert (=> b!772197 (=> (not res!522459) (not e!429895))))

(declare-fun arrayContainsKey!0 (array!42386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772197 (= res!522459 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772198 () Bool)

(declare-fun Unit!26618 () Unit!26616)

(assert (=> b!772198 (= e!429893 Unit!26618)))

(declare-fun lt!343831 () SeekEntryResult!7895)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42386 (_ BitVec 32)) SeekEntryResult!7895)

(assert (=> b!772198 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343837 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343831)))

(declare-fun b!772199 () Bool)

(declare-fun Unit!26619 () Unit!26616)

(assert (=> b!772199 (= e!429893 Unit!26619)))

(declare-fun lt!343828 () SeekEntryResult!7895)

(assert (=> b!772199 (= lt!343828 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!772199 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343837 resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) (Found!7895 j!159))))

(declare-fun b!772200 () Bool)

(declare-fun res!522458 () Bool)

(assert (=> b!772200 (=> (not res!522458) (not e!429890))))

(declare-datatypes ((List!14343 0))(
  ( (Nil!14340) (Cons!14339 (h!15441 (_ BitVec 64)) (t!20666 List!14343)) )
))
(declare-fun arrayNoDuplicates!0 (array!42386 (_ BitVec 32) List!14343) Bool)

(assert (=> b!772200 (= res!522458 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14340))))

(declare-fun b!772202 () Bool)

(assert (=> b!772202 (= e!429887 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343831))))

(declare-fun b!772203 () Bool)

(declare-fun res!522466 () Bool)

(assert (=> b!772203 (=> (not res!522466) (not e!429895))))

(assert (=> b!772203 (= res!522466 (validKeyInArray!0 k!2102))))

(declare-fun b!772204 () Bool)

(declare-fun e!429892 () Bool)

(assert (=> b!772204 (= e!429892 (not e!429888))))

(declare-fun res!522461 () Bool)

(assert (=> b!772204 (=> res!522461 e!429888)))

(declare-fun lt!343827 () SeekEntryResult!7895)

(assert (=> b!772204 (= res!522461 (or (not (is-Intermediate!7895 lt!343827)) (bvsge x!1131 (x!64903 lt!343827))))))

(assert (=> b!772204 e!429894))

(declare-fun res!522460 () Bool)

(assert (=> b!772204 (=> (not res!522460) (not e!429894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42386 (_ BitVec 32)) Bool)

(assert (=> b!772204 (= res!522460 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343830 () Unit!26616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26616)

(assert (=> b!772204 (= lt!343830 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!772205 () Bool)

(declare-fun res!522462 () Bool)

(assert (=> b!772205 (=> (not res!522462) (not e!429890))))

(assert (=> b!772205 (= res!522462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772206 () Bool)

(assert (=> b!772206 (= e!429890 e!429889)))

(declare-fun res!522465 () Bool)

(assert (=> b!772206 (=> (not res!522465) (not e!429889))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772206 (= res!522465 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328) (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343831))))

(assert (=> b!772206 (= lt!343831 (Intermediate!7895 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!522456 () Bool)

(assert (=> start!66938 (=> (not res!522456) (not e!429895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66938 (= res!522456 (validMask!0 mask!3328))))

(assert (=> start!66938 e!429895))

(assert (=> start!66938 true))

(declare-fun array_inv!16062 (array!42386) Bool)

(assert (=> start!66938 (array_inv!16062 a!3186)))

(declare-fun b!772201 () Bool)

(assert (=> b!772201 (= e!429889 e!429892)))

(declare-fun res!522463 () Bool)

(assert (=> b!772201 (=> (not res!522463) (not e!429892))))

(declare-fun lt!343836 () SeekEntryResult!7895)

(assert (=> b!772201 (= res!522463 (= lt!343836 lt!343827))))

(declare-fun lt!343832 () array!42386)

(declare-fun lt!343834 () (_ BitVec 64))

(assert (=> b!772201 (= lt!343827 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343834 lt!343832 mask!3328))))

(assert (=> b!772201 (= lt!343836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343834 mask!3328) lt!343834 lt!343832 mask!3328))))

(assert (=> b!772201 (= lt!343834 (select (store (arr!20288 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!772201 (= lt!343832 (array!42387 (store (arr!20288 a!3186) i!1173 k!2102) (size!20709 a!3186)))))

(assert (= (and start!66938 res!522456) b!772187))

(assert (= (and b!772187 res!522454) b!772196))

(assert (= (and b!772196 res!522451) b!772203))

(assert (= (and b!772203 res!522466) b!772197))

(assert (= (and b!772197 res!522459) b!772188))

(assert (= (and b!772188 res!522457) b!772205))

(assert (= (and b!772205 res!522462) b!772200))

(assert (= (and b!772200 res!522458) b!772194))

(assert (= (and b!772194 res!522464) b!772206))

(assert (= (and b!772206 res!522465) b!772192))

(assert (= (and b!772192 res!522452) b!772193))

(assert (= (and b!772193 c!85265) b!772202))

(assert (= (and b!772193 (not c!85265)) b!772195))

(assert (= (and b!772193 res!522455) b!772201))

(assert (= (and b!772201 res!522463) b!772204))

(assert (= (and b!772204 res!522460) b!772189))

(assert (= (and b!772189 res!522453) b!772191))

(assert (= (and b!772204 (not res!522461)) b!772190))

(assert (= (and b!772190 c!85266) b!772198))

(assert (= (and b!772190 (not c!85266)) b!772199))

(declare-fun m!717219 () Bool)

(assert (=> b!772202 m!717219))

(assert (=> b!772202 m!717219))

(declare-fun m!717221 () Bool)

(assert (=> b!772202 m!717221))

(declare-fun m!717223 () Bool)

(assert (=> start!66938 m!717223))

(declare-fun m!717225 () Bool)

(assert (=> start!66938 m!717225))

(declare-fun m!717227 () Bool)

(assert (=> b!772205 m!717227))

(assert (=> b!772206 m!717219))

(assert (=> b!772206 m!717219))

(declare-fun m!717229 () Bool)

(assert (=> b!772206 m!717229))

(assert (=> b!772206 m!717229))

(assert (=> b!772206 m!717219))

(declare-fun m!717231 () Bool)

(assert (=> b!772206 m!717231))

(declare-fun m!717233 () Bool)

(assert (=> b!772192 m!717233))

(declare-fun m!717235 () Bool)

(assert (=> b!772203 m!717235))

(declare-fun m!717237 () Bool)

(assert (=> b!772201 m!717237))

(declare-fun m!717239 () Bool)

(assert (=> b!772201 m!717239))

(declare-fun m!717241 () Bool)

(assert (=> b!772201 m!717241))

(declare-fun m!717243 () Bool)

(assert (=> b!772201 m!717243))

(declare-fun m!717245 () Bool)

(assert (=> b!772201 m!717245))

(assert (=> b!772201 m!717239))

(assert (=> b!772196 m!717219))

(assert (=> b!772196 m!717219))

(declare-fun m!717247 () Bool)

(assert (=> b!772196 m!717247))

(assert (=> b!772189 m!717219))

(assert (=> b!772189 m!717219))

(declare-fun m!717249 () Bool)

(assert (=> b!772189 m!717249))

(declare-fun m!717251 () Bool)

(assert (=> b!772200 m!717251))

(declare-fun m!717253 () Bool)

(assert (=> b!772190 m!717253))

(declare-fun m!717255 () Bool)

(assert (=> b!772197 m!717255))

(assert (=> b!772191 m!717219))

(assert (=> b!772191 m!717219))

(declare-fun m!717257 () Bool)

(assert (=> b!772191 m!717257))

(declare-fun m!717259 () Bool)

(assert (=> b!772188 m!717259))

(assert (=> b!772195 m!717219))

(assert (=> b!772195 m!717219))

(declare-fun m!717261 () Bool)

(assert (=> b!772195 m!717261))

(declare-fun m!717263 () Bool)

(assert (=> b!772204 m!717263))

(declare-fun m!717265 () Bool)

(assert (=> b!772204 m!717265))

(assert (=> b!772199 m!717219))

(assert (=> b!772199 m!717219))

(assert (=> b!772199 m!717261))

(assert (=> b!772199 m!717219))

(declare-fun m!717267 () Bool)

(assert (=> b!772199 m!717267))

(assert (=> b!772198 m!717219))

(assert (=> b!772198 m!717219))

(declare-fun m!717269 () Bool)

(assert (=> b!772198 m!717269))

(push 1)

(assert (not b!772195))

(assert (not b!772202))

(assert (not b!772198))

(assert (not b!772197))

(assert (not start!66938))

(assert (not b!772189))

(assert (not b!772190))

(assert (not b!772200))

(assert (not b!772196))

(assert (not b!772203))

(assert (not b!772205))

(assert (not b!772199))

(assert (not b!772206))

(assert (not b!772191))

(assert (not b!772188))

(assert (not b!772201))

(assert (not b!772204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!35130 () Bool)

(declare-fun call!35133 () Bool)

(assert (=> bm!35130 (= call!35133 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!772269 () Bool)

(declare-fun e!429933 () Bool)

(declare-fun e!429931 () Bool)

(assert (=> b!772269 (= e!429933 e!429931)))

(declare-fun lt!343862 () (_ BitVec 64))

(assert (=> b!772269 (= lt!343862 (select (arr!20288 a!3186) j!159))))

(declare-fun lt!343860 () Unit!26616)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42386 (_ BitVec 64) (_ BitVec 32)) Unit!26616)

(assert (=> b!772269 (= lt!343860 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343862 j!159))))

(assert (=> b!772269 (arrayContainsKey!0 a!3186 lt!343862 #b00000000000000000000000000000000)))

(declare-fun lt!343861 () Unit!26616)

(assert (=> b!772269 (= lt!343861 lt!343860)))

(declare-fun res!522484 () Bool)

(assert (=> b!772269 (= res!522484 (= (seekEntryOrOpen!0 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) (Found!7895 j!159)))))

(assert (=> b!772269 (=> (not res!522484) (not e!429931))))

(declare-fun b!772270 () Bool)

(declare-fun e!429932 () Bool)

(assert (=> b!772270 (= e!429932 e!429933)))

(declare-fun c!85290 () Bool)

(assert (=> b!772270 (= c!85290 (validKeyInArray!0 (select (arr!20288 a!3186) j!159)))))

(declare-fun d!101747 () Bool)

(declare-fun res!522485 () Bool)

(assert (=> d!101747 (=> res!522485 e!429932)))

(assert (=> d!101747 (= res!522485 (bvsge j!159 (size!20709 a!3186)))))

(assert (=> d!101747 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!429932)))

(declare-fun b!772271 () Bool)

(assert (=> b!772271 (= e!429933 call!35133)))

(declare-fun b!772272 () Bool)

(assert (=> b!772272 (= e!429931 call!35133)))

(assert (= (and d!101747 (not res!522485)) b!772270))

(assert (= (and b!772270 c!85290) b!772269))

(assert (= (and b!772270 (not c!85290)) b!772271))

(assert (= (and b!772269 res!522484) b!772272))

(assert (= (or b!772272 b!772271) bm!35130))

(declare-fun m!717293 () Bool)

(assert (=> bm!35130 m!717293))

(assert (=> b!772269 m!717219))

(declare-fun m!717295 () Bool)

(assert (=> b!772269 m!717295))

(declare-fun m!717297 () Bool)

(assert (=> b!772269 m!717297))

(assert (=> b!772269 m!717219))

(assert (=> b!772269 m!717249))

(assert (=> b!772270 m!717219))

(assert (=> b!772270 m!717219))

(assert (=> b!772270 m!717247))

(assert (=> b!772204 d!101747))

(declare-fun d!101753 () Bool)

(assert (=> d!101753 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!343877 () Unit!26616)

(declare-fun choose!38 (array!42386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26616)

(assert (=> d!101753 (= lt!343877 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101753 (validMask!0 mask!3328)))

(assert (=> d!101753 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!343877)))

(declare-fun bs!21595 () Bool)

(assert (= bs!21595 d!101753))

(assert (=> bs!21595 m!717263))

(declare-fun m!717307 () Bool)

(assert (=> bs!21595 m!717307))

(assert (=> bs!21595 m!717223))

(assert (=> b!772204 d!101753))

(declare-fun bm!35131 () Bool)

(declare-fun call!35134 () Bool)

(assert (=> bm!35131 (= call!35134 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!772300 () Bool)

(declare-fun e!429951 () Bool)

(declare-fun e!429949 () Bool)

(assert (=> b!772300 (= e!429951 e!429949)))

(declare-fun lt!343880 () (_ BitVec 64))

(assert (=> b!772300 (= lt!343880 (select (arr!20288 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!343878 () Unit!26616)

(assert (=> b!772300 (= lt!343878 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343880 #b00000000000000000000000000000000))))

(assert (=> b!772300 (arrayContainsKey!0 a!3186 lt!343880 #b00000000000000000000000000000000)))

(declare-fun lt!343879 () Unit!26616)

(assert (=> b!772300 (= lt!343879 lt!343878)))

(declare-fun res!522495 () Bool)

(assert (=> b!772300 (= res!522495 (= (seekEntryOrOpen!0 (select (arr!20288 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7895 #b00000000000000000000000000000000)))))

(assert (=> b!772300 (=> (not res!522495) (not e!429949))))

(declare-fun b!772301 () Bool)

(declare-fun e!429950 () Bool)

(assert (=> b!772301 (= e!429950 e!429951)))

(declare-fun c!85300 () Bool)

(assert (=> b!772301 (= c!85300 (validKeyInArray!0 (select (arr!20288 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101761 () Bool)

(declare-fun res!522496 () Bool)

(assert (=> d!101761 (=> res!522496 e!429950)))

(assert (=> d!101761 (= res!522496 (bvsge #b00000000000000000000000000000000 (size!20709 a!3186)))))

(assert (=> d!101761 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!429950)))

(declare-fun b!772302 () Bool)

(assert (=> b!772302 (= e!429951 call!35134)))

(declare-fun b!772303 () Bool)

(assert (=> b!772303 (= e!429949 call!35134)))

(assert (= (and d!101761 (not res!522496)) b!772301))

(assert (= (and b!772301 c!85300) b!772300))

(assert (= (and b!772301 (not c!85300)) b!772302))

(assert (= (and b!772300 res!522495) b!772303))

(assert (= (or b!772303 b!772302) bm!35131))

(declare-fun m!717309 () Bool)

(assert (=> bm!35131 m!717309))

(declare-fun m!717311 () Bool)

(assert (=> b!772300 m!717311))

(declare-fun m!717313 () Bool)

(assert (=> b!772300 m!717313))

(declare-fun m!717315 () Bool)

(assert (=> b!772300 m!717315))

(assert (=> b!772300 m!717311))

(declare-fun m!717317 () Bool)

(assert (=> b!772300 m!717317))

(assert (=> b!772301 m!717311))

(assert (=> b!772301 m!717311))

(declare-fun m!717319 () Bool)

(assert (=> b!772301 m!717319))

(assert (=> b!772205 d!101761))

(declare-fun b!772351 () Bool)

(declare-fun e!429979 () SeekEntryResult!7895)

(assert (=> b!772351 (= e!429979 (MissingVacant!7895 resIntermediateIndex!5))))

(declare-fun b!772352 () Bool)

(declare-fun e!429980 () SeekEntryResult!7895)

(declare-fun e!429981 () SeekEntryResult!7895)

(assert (=> b!772352 (= e!429980 e!429981)))

(declare-fun lt!343904 () (_ BitVec 64))

(declare-fun c!85319 () Bool)

(assert (=> b!772352 (= c!85319 (= lt!343904 (select (arr!20288 a!3186) j!159)))))

(declare-fun b!772353 () Bool)

(declare-fun c!85318 () Bool)

(assert (=> b!772353 (= c!85318 (= lt!343904 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772353 (= e!429981 e!429979)))

(declare-fun b!772354 () Bool)

(assert (=> b!772354 (= e!429979 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101763 () Bool)

(declare-fun lt!343903 () SeekEntryResult!7895)

(assert (=> d!101763 (and (or (is-Undefined!7895 lt!343903) (not (is-Found!7895 lt!343903)) (and (bvsge (index!33948 lt!343903) #b00000000000000000000000000000000) (bvslt (index!33948 lt!343903) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343903) (is-Found!7895 lt!343903) (not (is-MissingVacant!7895 lt!343903)) (not (= (index!33950 lt!343903) resIntermediateIndex!5)) (and (bvsge (index!33950 lt!343903) #b00000000000000000000000000000000) (bvslt (index!33950 lt!343903) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343903) (ite (is-Found!7895 lt!343903) (= (select (arr!20288 a!3186) (index!33948 lt!343903)) (select (arr!20288 a!3186) j!159)) (and (is-MissingVacant!7895 lt!343903) (= (index!33950 lt!343903) resIntermediateIndex!5) (= (select (arr!20288 a!3186) (index!33950 lt!343903)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101763 (= lt!343903 e!429980)))

(declare-fun c!85320 () Bool)

(assert (=> d!101763 (= c!85320 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101763 (= lt!343904 (select (arr!20288 a!3186) index!1321))))

(assert (=> d!101763 (validMask!0 mask!3328)))

(assert (=> d!101763 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343903)))

(declare-fun b!772355 () Bool)

(assert (=> b!772355 (= e!429981 (Found!7895 index!1321))))

(declare-fun b!772356 () Bool)

(assert (=> b!772356 (= e!429980 Undefined!7895)))

(assert (= (and d!101763 c!85320) b!772356))

(assert (= (and d!101763 (not c!85320)) b!772352))

(assert (= (and b!772352 c!85319) b!772355))

(assert (= (and b!772352 (not c!85319)) b!772353))

(assert (= (and b!772353 c!85318) b!772351))

(assert (= (and b!772353 (not c!85318)) b!772354))

(assert (=> b!772354 m!717253))

(assert (=> b!772354 m!717253))

(assert (=> b!772354 m!717219))

(declare-fun m!717343 () Bool)

(assert (=> b!772354 m!717343))

(declare-fun m!717345 () Bool)

(assert (=> d!101763 m!717345))

(declare-fun m!717347 () Bool)

(assert (=> d!101763 m!717347))

(declare-fun m!717349 () Bool)

(assert (=> d!101763 m!717349))

(assert (=> d!101763 m!717223))

(assert (=> b!772195 d!101763))

(declare-fun b!772404 () Bool)

(declare-fun e!430015 () Bool)

(declare-fun lt!343920 () SeekEntryResult!7895)

(assert (=> b!772404 (= e!430015 (bvsge (x!64903 lt!343920) #b01111111111111111111111111111110))))

(declare-fun b!772405 () Bool)

(declare-fun e!430014 () SeekEntryResult!7895)

(declare-fun e!430016 () SeekEntryResult!7895)

(assert (=> b!772405 (= e!430014 e!430016)))

(declare-fun lt!343919 () (_ BitVec 64))

(declare-fun c!85335 () Bool)

(assert (=> b!772405 (= c!85335 (or (= lt!343919 (select (arr!20288 a!3186) j!159)) (= (bvadd lt!343919 lt!343919) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772406 () Bool)

(assert (=> b!772406 (= e!430016 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772407 () Bool)

(assert (=> b!772407 (and (bvsge (index!33949 lt!343920) #b00000000000000000000000000000000) (bvslt (index!33949 lt!343920) (size!20709 a!3186)))))

(declare-fun e!430013 () Bool)

(assert (=> b!772407 (= e!430013 (= (select (arr!20288 a!3186) (index!33949 lt!343920)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772408 () Bool)

(declare-fun e!430012 () Bool)

(assert (=> b!772408 (= e!430015 e!430012)))

(declare-fun res!522531 () Bool)

(assert (=> b!772408 (= res!522531 (and (is-Intermediate!7895 lt!343920) (not (undefined!8707 lt!343920)) (bvslt (x!64903 lt!343920) #b01111111111111111111111111111110) (bvsge (x!64903 lt!343920) #b00000000000000000000000000000000) (bvsge (x!64903 lt!343920) #b00000000000000000000000000000000)))))

(assert (=> b!772408 (=> (not res!522531) (not e!430012))))

(declare-fun b!772409 () Bool)

(assert (=> b!772409 (and (bvsge (index!33949 lt!343920) #b00000000000000000000000000000000) (bvslt (index!33949 lt!343920) (size!20709 a!3186)))))

(declare-fun res!522532 () Bool)

(assert (=> b!772409 (= res!522532 (= (select (arr!20288 a!3186) (index!33949 lt!343920)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772409 (=> res!522532 e!430013)))

(declare-fun b!772403 () Bool)

(assert (=> b!772403 (= e!430016 (Intermediate!7895 false (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101777 () Bool)

(assert (=> d!101777 e!430015))

(declare-fun c!85336 () Bool)

(assert (=> d!101777 (= c!85336 (and (is-Intermediate!7895 lt!343920) (undefined!8707 lt!343920)))))

(assert (=> d!101777 (= lt!343920 e!430014)))

(declare-fun c!85334 () Bool)

(assert (=> d!101777 (= c!85334 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101777 (= lt!343919 (select (arr!20288 a!3186) (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328)))))

(assert (=> d!101777 (validMask!0 mask!3328)))

(assert (=> d!101777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328) (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343920)))

(declare-fun b!772410 () Bool)

(assert (=> b!772410 (and (bvsge (index!33949 lt!343920) #b00000000000000000000000000000000) (bvslt (index!33949 lt!343920) (size!20709 a!3186)))))

(declare-fun res!522533 () Bool)

(assert (=> b!772410 (= res!522533 (= (select (arr!20288 a!3186) (index!33949 lt!343920)) (select (arr!20288 a!3186) j!159)))))

(assert (=> b!772410 (=> res!522533 e!430013)))

(assert (=> b!772410 (= e!430012 e!430013)))

(declare-fun b!772411 () Bool)

(assert (=> b!772411 (= e!430014 (Intermediate!7895 true (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101777 c!85334) b!772411))

(assert (= (and d!101777 (not c!85334)) b!772405))

(assert (= (and b!772405 c!85335) b!772403))

(assert (= (and b!772405 (not c!85335)) b!772406))

(assert (= (and d!101777 c!85336) b!772404))

(assert (= (and d!101777 (not c!85336)) b!772408))

(assert (= (and b!772408 res!522531) b!772410))

(assert (= (and b!772410 (not res!522533)) b!772409))

(assert (= (and b!772409 (not res!522532)) b!772407))

(declare-fun m!717375 () Bool)

(assert (=> b!772409 m!717375))

(assert (=> b!772407 m!717375))

(assert (=> b!772410 m!717375))

(assert (=> b!772406 m!717229))

(declare-fun m!717377 () Bool)

(assert (=> b!772406 m!717377))

(assert (=> b!772406 m!717377))

(assert (=> b!772406 m!717219))

(declare-fun m!717379 () Bool)

(assert (=> b!772406 m!717379))

(assert (=> d!101777 m!717229))

(declare-fun m!717381 () Bool)

(assert (=> d!101777 m!717381))

(assert (=> d!101777 m!717223))

(assert (=> b!772206 d!101777))

(declare-fun d!101799 () Bool)

(declare-fun lt!343932 () (_ BitVec 32))

(declare-fun lt!343931 () (_ BitVec 32))

(assert (=> d!101799 (= lt!343932 (bvmul (bvxor lt!343931 (bvlshr lt!343931 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101799 (= lt!343931 ((_ extract 31 0) (bvand (bvxor (select (arr!20288 a!3186) j!159) (bvlshr (select (arr!20288 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101799 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!522534 (let ((h!15444 ((_ extract 31 0) (bvand (bvxor (select (arr!20288 a!3186) j!159) (bvlshr (select (arr!20288 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64911 (bvmul (bvxor h!15444 (bvlshr h!15444 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64911 (bvlshr x!64911 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!522534 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!522534 #b00000000000000000000000000000000))))))

(assert (=> d!101799 (= (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328) (bvand (bvxor lt!343932 (bvlshr lt!343932 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!772206 d!101799))

(declare-fun d!101801 () Bool)

(assert (=> d!101801 (= (validKeyInArray!0 (select (arr!20288 a!3186) j!159)) (and (not (= (select (arr!20288 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20288 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!772196 d!101801))

(declare-fun d!101803 () Bool)

(declare-fun res!522542 () Bool)

(declare-fun e!430044 () Bool)

(assert (=> d!101803 (=> res!522542 e!430044)))

(assert (=> d!101803 (= res!522542 (= (select (arr!20288 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101803 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!430044)))

(declare-fun b!772461 () Bool)

(declare-fun e!430045 () Bool)

(assert (=> b!772461 (= e!430044 e!430045)))

(declare-fun res!522543 () Bool)

(assert (=> b!772461 (=> (not res!522543) (not e!430045))))

(assert (=> b!772461 (= res!522543 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20709 a!3186)))))

(declare-fun b!772462 () Bool)

(assert (=> b!772462 (= e!430045 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101803 (not res!522542)) b!772461))

(assert (= (and b!772461 res!522543) b!772462))

(assert (=> d!101803 m!717311))

(declare-fun m!717405 () Bool)

(assert (=> b!772462 m!717405))

(assert (=> b!772197 d!101803))

(declare-fun b!772464 () Bool)

(declare-fun e!430049 () Bool)

(declare-fun lt!343947 () SeekEntryResult!7895)

(assert (=> b!772464 (= e!430049 (bvsge (x!64903 lt!343947) #b01111111111111111111111111111110))))

(declare-fun b!772465 () Bool)

(declare-fun e!430048 () SeekEntryResult!7895)

(declare-fun e!430050 () SeekEntryResult!7895)

(assert (=> b!772465 (= e!430048 e!430050)))

(declare-fun c!85359 () Bool)

(declare-fun lt!343946 () (_ BitVec 64))

(assert (=> b!772465 (= c!85359 (or (= lt!343946 (select (arr!20288 a!3186) j!159)) (= (bvadd lt!343946 lt!343946) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772466 () Bool)

(assert (=> b!772466 (= e!430050 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343837 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772467 () Bool)

(assert (=> b!772467 (and (bvsge (index!33949 lt!343947) #b00000000000000000000000000000000) (bvslt (index!33949 lt!343947) (size!20709 a!3186)))))

(declare-fun e!430047 () Bool)

(assert (=> b!772467 (= e!430047 (= (select (arr!20288 a!3186) (index!33949 lt!343947)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772468 () Bool)

(declare-fun e!430046 () Bool)

(assert (=> b!772468 (= e!430049 e!430046)))

(declare-fun res!522544 () Bool)

(assert (=> b!772468 (= res!522544 (and (is-Intermediate!7895 lt!343947) (not (undefined!8707 lt!343947)) (bvslt (x!64903 lt!343947) #b01111111111111111111111111111110) (bvsge (x!64903 lt!343947) #b00000000000000000000000000000000) (bvsge (x!64903 lt!343947) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!772468 (=> (not res!522544) (not e!430046))))

(declare-fun b!772469 () Bool)

(assert (=> b!772469 (and (bvsge (index!33949 lt!343947) #b00000000000000000000000000000000) (bvslt (index!33949 lt!343947) (size!20709 a!3186)))))

(declare-fun res!522545 () Bool)

(assert (=> b!772469 (= res!522545 (= (select (arr!20288 a!3186) (index!33949 lt!343947)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772469 (=> res!522545 e!430047)))

(declare-fun b!772463 () Bool)

(assert (=> b!772463 (= e!430050 (Intermediate!7895 false lt!343837 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun d!101811 () Bool)

(assert (=> d!101811 e!430049))

(declare-fun c!85360 () Bool)

(assert (=> d!101811 (= c!85360 (and (is-Intermediate!7895 lt!343947) (undefined!8707 lt!343947)))))

(assert (=> d!101811 (= lt!343947 e!430048)))

(declare-fun c!85358 () Bool)

(assert (=> d!101811 (= c!85358 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101811 (= lt!343946 (select (arr!20288 a!3186) lt!343837))))

(assert (=> d!101811 (validMask!0 mask!3328)))

(assert (=> d!101811 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343837 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343947)))

(declare-fun b!772470 () Bool)

(assert (=> b!772470 (and (bvsge (index!33949 lt!343947) #b00000000000000000000000000000000) (bvslt (index!33949 lt!343947) (size!20709 a!3186)))))

(declare-fun res!522546 () Bool)

(assert (=> b!772470 (= res!522546 (= (select (arr!20288 a!3186) (index!33949 lt!343947)) (select (arr!20288 a!3186) j!159)))))

(assert (=> b!772470 (=> res!522546 e!430047)))

(assert (=> b!772470 (= e!430046 e!430047)))

(declare-fun b!772471 () Bool)

(assert (=> b!772471 (= e!430048 (Intermediate!7895 true lt!343837 (bvadd #b00000000000000000000000000000001 x!1131)))))

(assert (= (and d!101811 c!85358) b!772471))

(assert (= (and d!101811 (not c!85358)) b!772465))

(assert (= (and b!772465 c!85359) b!772463))

(assert (= (and b!772465 (not c!85359)) b!772466))

(assert (= (and d!101811 c!85360) b!772464))

(assert (= (and d!101811 (not c!85360)) b!772468))

(assert (= (and b!772468 res!522544) b!772470))

(assert (= (and b!772470 (not res!522546)) b!772469))

(assert (= (and b!772469 (not res!522545)) b!772467))

(declare-fun m!717407 () Bool)

(assert (=> b!772469 m!717407))

(assert (=> b!772467 m!717407))

(assert (=> b!772470 m!717407))

(declare-fun m!717409 () Bool)

(assert (=> b!772466 m!717409))

(assert (=> b!772466 m!717409))

(assert (=> b!772466 m!717219))

(declare-fun m!717411 () Bool)

(assert (=> b!772466 m!717411))

(declare-fun m!717413 () Bool)

(assert (=> d!101811 m!717413))

(assert (=> d!101811 m!717223))

(assert (=> b!772198 d!101811))

(declare-fun b!772554 () Bool)

(declare-fun e!430101 () SeekEntryResult!7895)

(declare-fun e!430102 () SeekEntryResult!7895)

(assert (=> b!772554 (= e!430101 e!430102)))

(declare-fun lt!343978 () (_ BitVec 64))

(declare-fun lt!343977 () SeekEntryResult!7895)

(assert (=> b!772554 (= lt!343978 (select (arr!20288 a!3186) (index!33949 lt!343977)))))

(declare-fun c!85393 () Bool)

(assert (=> b!772554 (= c!85393 (= lt!343978 k!2102))))

(declare-fun b!772555 () Bool)

(declare-fun c!85392 () Bool)

(assert (=> b!772555 (= c!85392 (= lt!343978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430103 () SeekEntryResult!7895)

(assert (=> b!772555 (= e!430102 e!430103)))

(declare-fun b!772556 () Bool)

(assert (=> b!772556 (= e!430103 (seekKeyOrZeroReturnVacant!0 (x!64903 lt!343977) (index!33949 lt!343977) (index!33949 lt!343977) k!2102 a!3186 mask!3328))))

(declare-fun d!101813 () Bool)

(declare-fun lt!343976 () SeekEntryResult!7895)

(assert (=> d!101813 (and (or (is-Undefined!7895 lt!343976) (not (is-Found!7895 lt!343976)) (and (bvsge (index!33948 lt!343976) #b00000000000000000000000000000000) (bvslt (index!33948 lt!343976) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343976) (is-Found!7895 lt!343976) (not (is-MissingZero!7895 lt!343976)) (and (bvsge (index!33947 lt!343976) #b00000000000000000000000000000000) (bvslt (index!33947 lt!343976) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343976) (is-Found!7895 lt!343976) (is-MissingZero!7895 lt!343976) (not (is-MissingVacant!7895 lt!343976)) (and (bvsge (index!33950 lt!343976) #b00000000000000000000000000000000) (bvslt (index!33950 lt!343976) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343976) (ite (is-Found!7895 lt!343976) (= (select (arr!20288 a!3186) (index!33948 lt!343976)) k!2102) (ite (is-MissingZero!7895 lt!343976) (= (select (arr!20288 a!3186) (index!33947 lt!343976)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7895 lt!343976) (= (select (arr!20288 a!3186) (index!33950 lt!343976)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101813 (= lt!343976 e!430101)))

(declare-fun c!85394 () Bool)

(assert (=> d!101813 (= c!85394 (and (is-Intermediate!7895 lt!343977) (undefined!8707 lt!343977)))))

(assert (=> d!101813 (= lt!343977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101813 (validMask!0 mask!3328)))

(assert (=> d!101813 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!343976)))

(declare-fun b!772557 () Bool)

(assert (=> b!772557 (= e!430102 (Found!7895 (index!33949 lt!343977)))))

(declare-fun b!772558 () Bool)

(assert (=> b!772558 (= e!430101 Undefined!7895)))

(declare-fun b!772559 () Bool)

(assert (=> b!772559 (= e!430103 (MissingZero!7895 (index!33949 lt!343977)))))

(assert (= (and d!101813 c!85394) b!772558))

(assert (= (and d!101813 (not c!85394)) b!772554))

(assert (= (and b!772554 c!85393) b!772557))

(assert (= (and b!772554 (not c!85393)) b!772555))

(assert (= (and b!772555 c!85392) b!772559))

(assert (= (and b!772555 (not c!85392)) b!772556))

(declare-fun m!717481 () Bool)

(assert (=> b!772554 m!717481))

(declare-fun m!717483 () Bool)

(assert (=> b!772556 m!717483))

(declare-fun m!717485 () Bool)

(assert (=> d!101813 m!717485))

(declare-fun m!717487 () Bool)

(assert (=> d!101813 m!717487))

(declare-fun m!717489 () Bool)

(assert (=> d!101813 m!717489))

(declare-fun m!717491 () Bool)

(assert (=> d!101813 m!717491))

(declare-fun m!717493 () Bool)

(assert (=> d!101813 m!717493))

(assert (=> d!101813 m!717491))

(assert (=> d!101813 m!717223))

(assert (=> b!772188 d!101813))

(declare-fun d!101833 () Bool)

(assert (=> d!101833 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66938 d!101833))

(declare-fun d!101839 () Bool)

(assert (=> d!101839 (= (array_inv!16062 a!3186) (bvsge (size!20709 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66938 d!101839))

(assert (=> b!772199 d!101763))

(declare-fun b!772583 () Bool)

(declare-fun e!430121 () SeekEntryResult!7895)

(assert (=> b!772583 (= e!430121 (MissingVacant!7895 resIntermediateIndex!5))))

(declare-fun b!772584 () Bool)

(declare-fun e!430122 () SeekEntryResult!7895)

(declare-fun e!430123 () SeekEntryResult!7895)

(assert (=> b!772584 (= e!430122 e!430123)))

(declare-fun lt!343988 () (_ BitVec 64))

(declare-fun c!85401 () Bool)

(assert (=> b!772584 (= c!85401 (= lt!343988 (select (arr!20288 a!3186) j!159)))))

(declare-fun b!772585 () Bool)

(declare-fun c!85400 () Bool)

(assert (=> b!772585 (= c!85400 (= lt!343988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772585 (= e!430123 e!430121)))

(declare-fun b!772586 () Bool)

(assert (=> b!772586 (= e!430121 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343837 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343987 () SeekEntryResult!7895)

(declare-fun d!101841 () Bool)

(assert (=> d!101841 (and (or (is-Undefined!7895 lt!343987) (not (is-Found!7895 lt!343987)) (and (bvsge (index!33948 lt!343987) #b00000000000000000000000000000000) (bvslt (index!33948 lt!343987) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343987) (is-Found!7895 lt!343987) (not (is-MissingVacant!7895 lt!343987)) (not (= (index!33950 lt!343987) resIntermediateIndex!5)) (and (bvsge (index!33950 lt!343987) #b00000000000000000000000000000000) (bvslt (index!33950 lt!343987) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343987) (ite (is-Found!7895 lt!343987) (= (select (arr!20288 a!3186) (index!33948 lt!343987)) (select (arr!20288 a!3186) j!159)) (and (is-MissingVacant!7895 lt!343987) (= (index!33950 lt!343987) resIntermediateIndex!5) (= (select (arr!20288 a!3186) (index!33950 lt!343987)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101841 (= lt!343987 e!430122)))

(declare-fun c!85402 () Bool)

(assert (=> d!101841 (= c!85402 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101841 (= lt!343988 (select (arr!20288 a!3186) lt!343837))))

(assert (=> d!101841 (validMask!0 mask!3328)))

(assert (=> d!101841 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343837 resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343987)))

(declare-fun b!772587 () Bool)

(assert (=> b!772587 (= e!430123 (Found!7895 lt!343837))))

(declare-fun b!772588 () Bool)

(assert (=> b!772588 (= e!430122 Undefined!7895)))

(assert (= (and d!101841 c!85402) b!772588))

(assert (= (and d!101841 (not c!85402)) b!772584))

(assert (= (and b!772584 c!85401) b!772587))

(assert (= (and b!772584 (not c!85401)) b!772585))

(assert (= (and b!772585 c!85400) b!772583))

(assert (= (and b!772585 (not c!85400)) b!772586))

(assert (=> b!772586 m!717409))

(assert (=> b!772586 m!717409))

(assert (=> b!772586 m!717219))

(declare-fun m!717501 () Bool)

(assert (=> b!772586 m!717501))

(declare-fun m!717503 () Bool)

(assert (=> d!101841 m!717503))

(declare-fun m!717505 () Bool)

(assert (=> d!101841 m!717505))

(assert (=> d!101841 m!717413))

(assert (=> d!101841 m!717223))

(assert (=> b!772199 d!101841))

(declare-fun b!772593 () Bool)

(declare-fun e!430127 () SeekEntryResult!7895)

(declare-fun e!430128 () SeekEntryResult!7895)

(assert (=> b!772593 (= e!430127 e!430128)))

(declare-fun lt!343994 () (_ BitVec 64))

(declare-fun lt!343993 () SeekEntryResult!7895)

(assert (=> b!772593 (= lt!343994 (select (arr!20288 a!3186) (index!33949 lt!343993)))))

(declare-fun c!85405 () Bool)

(assert (=> b!772593 (= c!85405 (= lt!343994 (select (arr!20288 a!3186) j!159)))))

(declare-fun b!772594 () Bool)

(declare-fun c!85404 () Bool)

(assert (=> b!772594 (= c!85404 (= lt!343994 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430129 () SeekEntryResult!7895)

(assert (=> b!772594 (= e!430128 e!430129)))

(declare-fun b!772595 () Bool)

(assert (=> b!772595 (= e!430129 (seekKeyOrZeroReturnVacant!0 (x!64903 lt!343993) (index!33949 lt!343993) (index!33949 lt!343993) (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101843 () Bool)

(declare-fun lt!343992 () SeekEntryResult!7895)

(assert (=> d!101843 (and (or (is-Undefined!7895 lt!343992) (not (is-Found!7895 lt!343992)) (and (bvsge (index!33948 lt!343992) #b00000000000000000000000000000000) (bvslt (index!33948 lt!343992) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343992) (is-Found!7895 lt!343992) (not (is-MissingZero!7895 lt!343992)) (and (bvsge (index!33947 lt!343992) #b00000000000000000000000000000000) (bvslt (index!33947 lt!343992) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343992) (is-Found!7895 lt!343992) (is-MissingZero!7895 lt!343992) (not (is-MissingVacant!7895 lt!343992)) (and (bvsge (index!33950 lt!343992) #b00000000000000000000000000000000) (bvslt (index!33950 lt!343992) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!343992) (ite (is-Found!7895 lt!343992) (= (select (arr!20288 a!3186) (index!33948 lt!343992)) (select (arr!20288 a!3186) j!159)) (ite (is-MissingZero!7895 lt!343992) (= (select (arr!20288 a!3186) (index!33947 lt!343992)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7895 lt!343992) (= (select (arr!20288 a!3186) (index!33950 lt!343992)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101843 (= lt!343992 e!430127)))

(declare-fun c!85406 () Bool)

(assert (=> d!101843 (= c!85406 (and (is-Intermediate!7895 lt!343993) (undefined!8707 lt!343993)))))

(assert (=> d!101843 (= lt!343993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20288 a!3186) j!159) mask!3328) (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101843 (validMask!0 mask!3328)))

(assert (=> d!101843 (= (seekEntryOrOpen!0 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!343992)))

(declare-fun b!772596 () Bool)

(assert (=> b!772596 (= e!430128 (Found!7895 (index!33949 lt!343993)))))

(declare-fun b!772597 () Bool)

(assert (=> b!772597 (= e!430127 Undefined!7895)))

(declare-fun b!772598 () Bool)

(assert (=> b!772598 (= e!430129 (MissingZero!7895 (index!33949 lt!343993)))))

(assert (= (and d!101843 c!85406) b!772597))

(assert (= (and d!101843 (not c!85406)) b!772593))

(assert (= (and b!772593 c!85405) b!772596))

(assert (= (and b!772593 (not c!85405)) b!772594))

(assert (= (and b!772594 c!85404) b!772598))

(assert (= (and b!772594 (not c!85404)) b!772595))

(declare-fun m!717513 () Bool)

(assert (=> b!772593 m!717513))

(assert (=> b!772595 m!717219))

(declare-fun m!717515 () Bool)

(assert (=> b!772595 m!717515))

(declare-fun m!717517 () Bool)

(assert (=> d!101843 m!717517))

(declare-fun m!717519 () Bool)

(assert (=> d!101843 m!717519))

(declare-fun m!717521 () Bool)

(assert (=> d!101843 m!717521))

(assert (=> d!101843 m!717229))

(assert (=> d!101843 m!717219))

(assert (=> d!101843 m!717231))

(assert (=> d!101843 m!717219))

(assert (=> d!101843 m!717229))

(assert (=> d!101843 m!717223))

(assert (=> b!772189 d!101843))

(declare-fun b!772627 () Bool)

(declare-fun e!430149 () Bool)

(declare-fun call!35150 () Bool)

(assert (=> b!772627 (= e!430149 call!35150)))

(declare-fun d!101847 () Bool)

(declare-fun res!522589 () Bool)

(declare-fun e!430148 () Bool)

(assert (=> d!101847 (=> res!522589 e!430148)))

(assert (=> d!101847 (= res!522589 (bvsge #b00000000000000000000000000000000 (size!20709 a!3186)))))

(assert (=> d!101847 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14340) e!430148)))

(declare-fun b!772628 () Bool)

(declare-fun e!430150 () Bool)

(assert (=> b!772628 (= e!430150 e!430149)))

(declare-fun c!85418 () Bool)

(assert (=> b!772628 (= c!85418 (validKeyInArray!0 (select (arr!20288 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!772629 () Bool)

(assert (=> b!772629 (= e!430148 e!430150)))

(declare-fun res!522590 () Bool)

(assert (=> b!772629 (=> (not res!522590) (not e!430150))))

(declare-fun e!430147 () Bool)

(assert (=> b!772629 (= res!522590 (not e!430147))))

(declare-fun res!522588 () Bool)

(assert (=> b!772629 (=> (not res!522588) (not e!430147))))

(assert (=> b!772629 (= res!522588 (validKeyInArray!0 (select (arr!20288 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35147 () Bool)

(assert (=> bm!35147 (= call!35150 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85418 (Cons!14339 (select (arr!20288 a!3186) #b00000000000000000000000000000000) Nil!14340) Nil!14340)))))

(declare-fun b!772630 () Bool)

(assert (=> b!772630 (= e!430149 call!35150)))

(declare-fun b!772631 () Bool)

(declare-fun contains!4094 (List!14343 (_ BitVec 64)) Bool)

(assert (=> b!772631 (= e!430147 (contains!4094 Nil!14340 (select (arr!20288 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101847 (not res!522589)) b!772629))

(assert (= (and b!772629 res!522588) b!772631))

(assert (= (and b!772629 res!522590) b!772628))

(assert (= (and b!772628 c!85418) b!772627))

(assert (= (and b!772628 (not c!85418)) b!772630))

(assert (= (or b!772627 b!772630) bm!35147))

(assert (=> b!772628 m!717311))

(assert (=> b!772628 m!717311))

(assert (=> b!772628 m!717319))

(assert (=> b!772629 m!717311))

(assert (=> b!772629 m!717311))

(assert (=> b!772629 m!717319))

(assert (=> bm!35147 m!717311))

(declare-fun m!717553 () Bool)

(assert (=> bm!35147 m!717553))

(assert (=> b!772631 m!717311))

(assert (=> b!772631 m!717311))

(declare-fun m!717555 () Bool)

(assert (=> b!772631 m!717555))

(assert (=> b!772200 d!101847))

(declare-fun d!101857 () Bool)

(declare-fun lt!344012 () (_ BitVec 32))

(assert (=> d!101857 (and (bvsge lt!344012 #b00000000000000000000000000000000) (bvslt lt!344012 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101857 (= lt!344012 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101857 (validMask!0 mask!3328)))

(assert (=> d!101857 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!344012)))

(declare-fun bs!21599 () Bool)

(assert (= bs!21599 d!101857))

(declare-fun m!717565 () Bool)

(assert (=> bs!21599 m!717565))

(assert (=> bs!21599 m!717223))

(assert (=> b!772190 d!101857))

(declare-fun b!772637 () Bool)

(declare-fun e!430157 () Bool)

(declare-fun lt!344015 () SeekEntryResult!7895)

(assert (=> b!772637 (= e!430157 (bvsge (x!64903 lt!344015) #b01111111111111111111111111111110))))

(declare-fun b!772638 () Bool)

(declare-fun e!430156 () SeekEntryResult!7895)

(declare-fun e!430158 () SeekEntryResult!7895)

(assert (=> b!772638 (= e!430156 e!430158)))

(declare-fun c!85421 () Bool)

(declare-fun lt!344014 () (_ BitVec 64))

(assert (=> b!772638 (= c!85421 (or (= lt!344014 lt!343834) (= (bvadd lt!344014 lt!344014) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772639 () Bool)

(assert (=> b!772639 (= e!430158 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!343834 lt!343832 mask!3328))))

(declare-fun b!772640 () Bool)

(assert (=> b!772640 (and (bvsge (index!33949 lt!344015) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344015) (size!20709 lt!343832)))))

(declare-fun e!430155 () Bool)

(assert (=> b!772640 (= e!430155 (= (select (arr!20288 lt!343832) (index!33949 lt!344015)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772641 () Bool)

(declare-fun e!430154 () Bool)

(assert (=> b!772641 (= e!430157 e!430154)))

(declare-fun res!522593 () Bool)

(assert (=> b!772641 (= res!522593 (and (is-Intermediate!7895 lt!344015) (not (undefined!8707 lt!344015)) (bvslt (x!64903 lt!344015) #b01111111111111111111111111111110) (bvsge (x!64903 lt!344015) #b00000000000000000000000000000000) (bvsge (x!64903 lt!344015) x!1131)))))

(assert (=> b!772641 (=> (not res!522593) (not e!430154))))

(declare-fun b!772642 () Bool)

(assert (=> b!772642 (and (bvsge (index!33949 lt!344015) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344015) (size!20709 lt!343832)))))

(declare-fun res!522594 () Bool)

(assert (=> b!772642 (= res!522594 (= (select (arr!20288 lt!343832) (index!33949 lt!344015)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772642 (=> res!522594 e!430155)))

(declare-fun b!772636 () Bool)

(assert (=> b!772636 (= e!430158 (Intermediate!7895 false index!1321 x!1131))))

(declare-fun d!101861 () Bool)

(assert (=> d!101861 e!430157))

(declare-fun c!85422 () Bool)

(assert (=> d!101861 (= c!85422 (and (is-Intermediate!7895 lt!344015) (undefined!8707 lt!344015)))))

(assert (=> d!101861 (= lt!344015 e!430156)))

(declare-fun c!85420 () Bool)

(assert (=> d!101861 (= c!85420 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101861 (= lt!344014 (select (arr!20288 lt!343832) index!1321))))

(assert (=> d!101861 (validMask!0 mask!3328)))

(assert (=> d!101861 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343834 lt!343832 mask!3328) lt!344015)))

(declare-fun b!772643 () Bool)

(assert (=> b!772643 (and (bvsge (index!33949 lt!344015) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344015) (size!20709 lt!343832)))))

(declare-fun res!522595 () Bool)

(assert (=> b!772643 (= res!522595 (= (select (arr!20288 lt!343832) (index!33949 lt!344015)) lt!343834))))

(assert (=> b!772643 (=> res!522595 e!430155)))

(assert (=> b!772643 (= e!430154 e!430155)))

(declare-fun b!772644 () Bool)

(assert (=> b!772644 (= e!430156 (Intermediate!7895 true index!1321 x!1131))))

(assert (= (and d!101861 c!85420) b!772644))

(assert (= (and d!101861 (not c!85420)) b!772638))

(assert (= (and b!772638 c!85421) b!772636))

(assert (= (and b!772638 (not c!85421)) b!772639))

(assert (= (and d!101861 c!85422) b!772637))

(assert (= (and d!101861 (not c!85422)) b!772641))

(assert (= (and b!772641 res!522593) b!772643))

(assert (= (and b!772643 (not res!522595)) b!772642))

(assert (= (and b!772642 (not res!522594)) b!772640))

(declare-fun m!717569 () Bool)

(assert (=> b!772642 m!717569))

(assert (=> b!772640 m!717569))

(assert (=> b!772643 m!717569))

(assert (=> b!772639 m!717253))

(assert (=> b!772639 m!717253))

(declare-fun m!717571 () Bool)

(assert (=> b!772639 m!717571))

(declare-fun m!717573 () Bool)

(assert (=> d!101861 m!717573))

(assert (=> d!101861 m!717223))

(assert (=> b!772201 d!101861))

(declare-fun b!772646 () Bool)

(declare-fun e!430162 () Bool)

(declare-fun lt!344017 () SeekEntryResult!7895)

(assert (=> b!772646 (= e!430162 (bvsge (x!64903 lt!344017) #b01111111111111111111111111111110))))

(declare-fun b!772647 () Bool)

(declare-fun e!430161 () SeekEntryResult!7895)

(declare-fun e!430163 () SeekEntryResult!7895)

(assert (=> b!772647 (= e!430161 e!430163)))

(declare-fun c!85424 () Bool)

(declare-fun lt!344016 () (_ BitVec 64))

(assert (=> b!772647 (= c!85424 (or (= lt!344016 lt!343834) (= (bvadd lt!344016 lt!344016) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772648 () Bool)

(assert (=> b!772648 (= e!430163 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!343834 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!343834 lt!343832 mask!3328))))

(declare-fun b!772649 () Bool)

(assert (=> b!772649 (and (bvsge (index!33949 lt!344017) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344017) (size!20709 lt!343832)))))

(declare-fun e!430160 () Bool)

(assert (=> b!772649 (= e!430160 (= (select (arr!20288 lt!343832) (index!33949 lt!344017)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772650 () Bool)

(declare-fun e!430159 () Bool)

(assert (=> b!772650 (= e!430162 e!430159)))

(declare-fun res!522596 () Bool)

(assert (=> b!772650 (= res!522596 (and (is-Intermediate!7895 lt!344017) (not (undefined!8707 lt!344017)) (bvslt (x!64903 lt!344017) #b01111111111111111111111111111110) (bvsge (x!64903 lt!344017) #b00000000000000000000000000000000) (bvsge (x!64903 lt!344017) #b00000000000000000000000000000000)))))

(assert (=> b!772650 (=> (not res!522596) (not e!430159))))

(declare-fun b!772651 () Bool)

(assert (=> b!772651 (and (bvsge (index!33949 lt!344017) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344017) (size!20709 lt!343832)))))

(declare-fun res!522597 () Bool)

(assert (=> b!772651 (= res!522597 (= (select (arr!20288 lt!343832) (index!33949 lt!344017)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772651 (=> res!522597 e!430160)))

(declare-fun b!772645 () Bool)

(assert (=> b!772645 (= e!430163 (Intermediate!7895 false (toIndex!0 lt!343834 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!101863 () Bool)

(assert (=> d!101863 e!430162))

(declare-fun c!85425 () Bool)

(assert (=> d!101863 (= c!85425 (and (is-Intermediate!7895 lt!344017) (undefined!8707 lt!344017)))))

(assert (=> d!101863 (= lt!344017 e!430161)))

(declare-fun c!85423 () Bool)

(assert (=> d!101863 (= c!85423 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101863 (= lt!344016 (select (arr!20288 lt!343832) (toIndex!0 lt!343834 mask!3328)))))

(assert (=> d!101863 (validMask!0 mask!3328)))

(assert (=> d!101863 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343834 mask!3328) lt!343834 lt!343832 mask!3328) lt!344017)))

(declare-fun b!772652 () Bool)

(assert (=> b!772652 (and (bvsge (index!33949 lt!344017) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344017) (size!20709 lt!343832)))))

(declare-fun res!522598 () Bool)

(assert (=> b!772652 (= res!522598 (= (select (arr!20288 lt!343832) (index!33949 lt!344017)) lt!343834))))

(assert (=> b!772652 (=> res!522598 e!430160)))

(assert (=> b!772652 (= e!430159 e!430160)))

(declare-fun b!772653 () Bool)

(assert (=> b!772653 (= e!430161 (Intermediate!7895 true (toIndex!0 lt!343834 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101863 c!85423) b!772653))

(assert (= (and d!101863 (not c!85423)) b!772647))

(assert (= (and b!772647 c!85424) b!772645))

(assert (= (and b!772647 (not c!85424)) b!772648))

(assert (= (and d!101863 c!85425) b!772646))

(assert (= (and d!101863 (not c!85425)) b!772650))

(assert (= (and b!772650 res!522596) b!772652))

(assert (= (and b!772652 (not res!522598)) b!772651))

(assert (= (and b!772651 (not res!522597)) b!772649))

(declare-fun m!717575 () Bool)

(assert (=> b!772651 m!717575))

(assert (=> b!772649 m!717575))

(assert (=> b!772652 m!717575))

(assert (=> b!772648 m!717239))

(declare-fun m!717577 () Bool)

(assert (=> b!772648 m!717577))

(assert (=> b!772648 m!717577))

(declare-fun m!717579 () Bool)

(assert (=> b!772648 m!717579))

(assert (=> d!101863 m!717239))

(declare-fun m!717581 () Bool)

(assert (=> d!101863 m!717581))

(assert (=> d!101863 m!717223))

(assert (=> b!772201 d!101863))

(declare-fun d!101865 () Bool)

(declare-fun lt!344019 () (_ BitVec 32))

(declare-fun lt!344018 () (_ BitVec 32))

(assert (=> d!101865 (= lt!344019 (bvmul (bvxor lt!344018 (bvlshr lt!344018 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101865 (= lt!344018 ((_ extract 31 0) (bvand (bvxor lt!343834 (bvlshr lt!343834 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101865 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!522534 (let ((h!15444 ((_ extract 31 0) (bvand (bvxor lt!343834 (bvlshr lt!343834 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64911 (bvmul (bvxor h!15444 (bvlshr h!15444 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64911 (bvlshr x!64911 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!522534 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!522534 #b00000000000000000000000000000000))))))

(assert (=> d!101865 (= (toIndex!0 lt!343834 mask!3328) (bvand (bvxor lt!344019 (bvlshr lt!344019 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!772201 d!101865))

(declare-fun b!772654 () Bool)

(declare-fun e!430164 () SeekEntryResult!7895)

(assert (=> b!772654 (= e!430164 (MissingVacant!7895 resIntermediateIndex!5))))

(declare-fun b!772655 () Bool)

(declare-fun e!430165 () SeekEntryResult!7895)

(declare-fun e!430166 () SeekEntryResult!7895)

(assert (=> b!772655 (= e!430165 e!430166)))

(declare-fun lt!344021 () (_ BitVec 64))

(declare-fun c!85427 () Bool)

(assert (=> b!772655 (= c!85427 (= lt!344021 (select (arr!20288 a!3186) j!159)))))

(declare-fun b!772656 () Bool)

(declare-fun c!85426 () Bool)

(assert (=> b!772656 (= c!85426 (= lt!344021 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772656 (= e!430166 e!430164)))

(declare-fun b!772657 () Bool)

(assert (=> b!772657 (= e!430164 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344020 () SeekEntryResult!7895)

(declare-fun d!101867 () Bool)

(assert (=> d!101867 (and (or (is-Undefined!7895 lt!344020) (not (is-Found!7895 lt!344020)) (and (bvsge (index!33948 lt!344020) #b00000000000000000000000000000000) (bvslt (index!33948 lt!344020) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!344020) (is-Found!7895 lt!344020) (not (is-MissingVacant!7895 lt!344020)) (not (= (index!33950 lt!344020) resIntermediateIndex!5)) (and (bvsge (index!33950 lt!344020) #b00000000000000000000000000000000) (bvslt (index!33950 lt!344020) (size!20709 a!3186)))) (or (is-Undefined!7895 lt!344020) (ite (is-Found!7895 lt!344020) (= (select (arr!20288 a!3186) (index!33948 lt!344020)) (select (arr!20288 a!3186) j!159)) (and (is-MissingVacant!7895 lt!344020) (= (index!33950 lt!344020) resIntermediateIndex!5) (= (select (arr!20288 a!3186) (index!33950 lt!344020)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101867 (= lt!344020 e!430165)))

(declare-fun c!85428 () Bool)

(assert (=> d!101867 (= c!85428 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101867 (= lt!344021 (select (arr!20288 a!3186) resIntermediateIndex!5))))

(assert (=> d!101867 (validMask!0 mask!3328)))

(assert (=> d!101867 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!344020)))

(declare-fun b!772658 () Bool)

(assert (=> b!772658 (= e!430166 (Found!7895 resIntermediateIndex!5))))

(declare-fun b!772659 () Bool)

(assert (=> b!772659 (= e!430165 Undefined!7895)))

(assert (= (and d!101867 c!85428) b!772659))

(assert (= (and d!101867 (not c!85428)) b!772655))

(assert (= (and b!772655 c!85427) b!772658))

(assert (= (and b!772655 (not c!85427)) b!772656))

(assert (= (and b!772656 c!85426) b!772654))

(assert (= (and b!772656 (not c!85426)) b!772657))

(declare-fun m!717583 () Bool)

(assert (=> b!772657 m!717583))

(assert (=> b!772657 m!717583))

(assert (=> b!772657 m!717219))

(declare-fun m!717585 () Bool)

(assert (=> b!772657 m!717585))

(declare-fun m!717587 () Bool)

(assert (=> d!101867 m!717587))

(declare-fun m!717589 () Bool)

(assert (=> d!101867 m!717589))

(assert (=> d!101867 m!717233))

(assert (=> d!101867 m!717223))

(assert (=> b!772191 d!101867))

(declare-fun b!772661 () Bool)

(declare-fun e!430170 () Bool)

(declare-fun lt!344023 () SeekEntryResult!7895)

(assert (=> b!772661 (= e!430170 (bvsge (x!64903 lt!344023) #b01111111111111111111111111111110))))

(declare-fun b!772662 () Bool)

(declare-fun e!430169 () SeekEntryResult!7895)

(declare-fun e!430171 () SeekEntryResult!7895)

(assert (=> b!772662 (= e!430169 e!430171)))

(declare-fun lt!344022 () (_ BitVec 64))

(declare-fun c!85430 () Bool)

(assert (=> b!772662 (= c!85430 (or (= lt!344022 (select (arr!20288 a!3186) j!159)) (= (bvadd lt!344022 lt!344022) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772663 () Bool)

(assert (=> b!772663 (= e!430171 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20288 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772664 () Bool)

(assert (=> b!772664 (and (bvsge (index!33949 lt!344023) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344023) (size!20709 a!3186)))))

(declare-fun e!430168 () Bool)

(assert (=> b!772664 (= e!430168 (= (select (arr!20288 a!3186) (index!33949 lt!344023)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772665 () Bool)

(declare-fun e!430167 () Bool)

(assert (=> b!772665 (= e!430170 e!430167)))

(declare-fun res!522599 () Bool)

(assert (=> b!772665 (= res!522599 (and (is-Intermediate!7895 lt!344023) (not (undefined!8707 lt!344023)) (bvslt (x!64903 lt!344023) #b01111111111111111111111111111110) (bvsge (x!64903 lt!344023) #b00000000000000000000000000000000) (bvsge (x!64903 lt!344023) x!1131)))))

(assert (=> b!772665 (=> (not res!522599) (not e!430167))))

(declare-fun b!772666 () Bool)

(assert (=> b!772666 (and (bvsge (index!33949 lt!344023) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344023) (size!20709 a!3186)))))

(declare-fun res!522600 () Bool)

(assert (=> b!772666 (= res!522600 (= (select (arr!20288 a!3186) (index!33949 lt!344023)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772666 (=> res!522600 e!430168)))

(declare-fun b!772660 () Bool)

(assert (=> b!772660 (= e!430171 (Intermediate!7895 false index!1321 x!1131))))

(declare-fun d!101869 () Bool)

(assert (=> d!101869 e!430170))

(declare-fun c!85431 () Bool)

(assert (=> d!101869 (= c!85431 (and (is-Intermediate!7895 lt!344023) (undefined!8707 lt!344023)))))

(assert (=> d!101869 (= lt!344023 e!430169)))

(declare-fun c!85429 () Bool)

(assert (=> d!101869 (= c!85429 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101869 (= lt!344022 (select (arr!20288 a!3186) index!1321))))

(assert (=> d!101869 (validMask!0 mask!3328)))

(assert (=> d!101869 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20288 a!3186) j!159) a!3186 mask!3328) lt!344023)))

(declare-fun b!772667 () Bool)

(assert (=> b!772667 (and (bvsge (index!33949 lt!344023) #b00000000000000000000000000000000) (bvslt (index!33949 lt!344023) (size!20709 a!3186)))))

(declare-fun res!522601 () Bool)

(assert (=> b!772667 (= res!522601 (= (select (arr!20288 a!3186) (index!33949 lt!344023)) (select (arr!20288 a!3186) j!159)))))

(assert (=> b!772667 (=> res!522601 e!430168)))

(assert (=> b!772667 (= e!430167 e!430168)))

(declare-fun b!772668 () Bool)

(assert (=> b!772668 (= e!430169 (Intermediate!7895 true index!1321 x!1131))))

(assert (= (and d!101869 c!85429) b!772668))

(assert (= (and d!101869 (not c!85429)) b!772662))

(assert (= (and b!772662 c!85430) b!772660))

(assert (= (and b!772662 (not c!85430)) b!772663))

(assert (= (and d!101869 c!85431) b!772661))

(assert (= (and d!101869 (not c!85431)) b!772665))

(assert (= (and b!772665 res!522599) b!772667))

(assert (= (and b!772667 (not res!522601)) b!772666))

(assert (= (and b!772666 (not res!522600)) b!772664))

(declare-fun m!717591 () Bool)

(assert (=> b!772666 m!717591))

(assert (=> b!772664 m!717591))

(assert (=> b!772667 m!717591))

(assert (=> b!772663 m!717253))

(assert (=> b!772663 m!717253))

(assert (=> b!772663 m!717219))

(declare-fun m!717593 () Bool)

(assert (=> b!772663 m!717593))

(assert (=> d!101869 m!717349))

(assert (=> d!101869 m!717223))

(assert (=> b!772202 d!101869))

(declare-fun d!101871 () Bool)

(assert (=> d!101871 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!772203 d!101871))

(push 1)

(assert (not b!772354))

(assert (not b!772595))

(assert (not b!772466))

(assert (not b!772556))

(assert (not b!772269))

(assert (not bm!35131))

(assert (not b!772406))

(assert (not b!772270))

(assert (not d!101861))

(assert (not d!101863))

(assert (not d!101753))

(assert (not b!772300))

(assert (not b!772462))

(assert (not d!101869))

(assert (not b!772657))

(assert (not b!772586))

(assert (not d!101763))

(assert (not d!101841))

(assert (not b!772639))

(assert (not b!772301))

(assert (not d!101811))

(assert (not d!101777))

(assert (not b!772631))

(assert (not bm!35147))

(assert (not d!101843))

(assert (not b!772648))

(assert (not b!772663))

(assert (not d!101813))

(assert (not bm!35130))

(assert (not b!772629))

(assert (not b!772628))

(assert (not d!101867))

(assert (not d!101857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

