; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65822 () Bool)

(assert start!65822)

(declare-fun b!757021 () Bool)

(declare-fun e!422125 () Bool)

(declare-fun e!422126 () Bool)

(assert (=> b!757021 (= e!422125 e!422126)))

(declare-fun res!512058 () Bool)

(assert (=> b!757021 (=> (not res!512058) (not e!422126))))

(declare-datatypes ((array!41948 0))(
  ( (array!41949 (arr!20084 (Array (_ BitVec 32) (_ BitVec 64))) (size!20505 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41948)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7691 0))(
  ( (MissingZero!7691 (index!33131 (_ BitVec 32))) (Found!7691 (index!33132 (_ BitVec 32))) (Intermediate!7691 (undefined!8503 Bool) (index!33133 (_ BitVec 32)) (x!64050 (_ BitVec 32))) (Undefined!7691) (MissingVacant!7691 (index!33134 (_ BitVec 32))) )
))
(declare-fun lt!337130 () SeekEntryResult!7691)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41948 (_ BitVec 32)) SeekEntryResult!7691)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757021 (= res!512058 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20084 a!3186) j!159) mask!3328) (select (arr!20084 a!3186) j!159) a!3186 mask!3328) lt!337130))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757021 (= lt!337130 (Intermediate!7691 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!512053 () Bool)

(declare-fun e!422127 () Bool)

(assert (=> start!65822 (=> (not res!512053) (not e!422127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65822 (= res!512053 (validMask!0 mask!3328))))

(assert (=> start!65822 e!422127))

(assert (=> start!65822 true))

(declare-fun array_inv!15858 (array!41948) Bool)

(assert (=> start!65822 (array_inv!15858 a!3186)))

(declare-fun b!757022 () Bool)

(declare-fun res!512040 () Bool)

(assert (=> b!757022 (=> (not res!512040) (not e!422125))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!757022 (= res!512040 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20505 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20505 a!3186))))))

(declare-fun b!757023 () Bool)

(declare-datatypes ((Unit!26166 0))(
  ( (Unit!26167) )
))
(declare-fun e!422121 () Unit!26166)

(declare-fun Unit!26168 () Unit!26166)

(assert (=> b!757023 (= e!422121 Unit!26168)))

(assert (=> b!757023 false))

(declare-fun b!757024 () Bool)

(assert (=> b!757024 (= e!422127 e!422125)))

(declare-fun res!512043 () Bool)

(assert (=> b!757024 (=> (not res!512043) (not e!422125))))

(declare-fun lt!337126 () SeekEntryResult!7691)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757024 (= res!512043 (or (= lt!337126 (MissingZero!7691 i!1173)) (= lt!337126 (MissingVacant!7691 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41948 (_ BitVec 32)) SeekEntryResult!7691)

(assert (=> b!757024 (= lt!337126 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757025 () Bool)

(declare-fun e!422124 () Bool)

(declare-fun e!422120 () Bool)

(assert (=> b!757025 (= e!422124 e!422120)))

(declare-fun res!512051 () Bool)

(assert (=> b!757025 (=> res!512051 e!422120)))

(declare-fun lt!337127 () SeekEntryResult!7691)

(declare-fun lt!337125 () SeekEntryResult!7691)

(assert (=> b!757025 (= res!512051 (not (= lt!337127 lt!337125)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41948 (_ BitVec 32)) SeekEntryResult!7691)

(assert (=> b!757025 (= lt!337127 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20084 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757026 () Bool)

(declare-fun e!422123 () Bool)

(assert (=> b!757026 (= e!422123 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20084 a!3186) j!159) a!3186 mask!3328) lt!337130))))

(declare-fun b!757027 () Bool)

(declare-fun res!512049 () Bool)

(assert (=> b!757027 (=> (not res!512049) (not e!422127))))

(declare-fun arrayContainsKey!0 (array!41948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757027 (= res!512049 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757028 () Bool)

(declare-fun e!422128 () Bool)

(assert (=> b!757028 (= e!422120 e!422128)))

(declare-fun res!512057 () Bool)

(assert (=> b!757028 (=> res!512057 e!422128)))

(declare-fun lt!337120 () (_ BitVec 64))

(declare-fun lt!337122 () (_ BitVec 64))

(assert (=> b!757028 (= res!512057 (= lt!337120 lt!337122))))

(assert (=> b!757028 (= lt!337120 (select (store (arr!20084 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757029 () Bool)

(declare-fun e!422130 () Bool)

(assert (=> b!757029 (= e!422126 e!422130)))

(declare-fun res!512048 () Bool)

(assert (=> b!757029 (=> (not res!512048) (not e!422130))))

(declare-fun lt!337128 () SeekEntryResult!7691)

(declare-fun lt!337129 () SeekEntryResult!7691)

(assert (=> b!757029 (= res!512048 (= lt!337128 lt!337129))))

(declare-fun lt!337123 () array!41948)

(assert (=> b!757029 (= lt!337129 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337122 lt!337123 mask!3328))))

(assert (=> b!757029 (= lt!337128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337122 mask!3328) lt!337122 lt!337123 mask!3328))))

(assert (=> b!757029 (= lt!337122 (select (store (arr!20084 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757029 (= lt!337123 (array!41949 (store (arr!20084 a!3186) i!1173 k!2102) (size!20505 a!3186)))))

(declare-fun b!757030 () Bool)

(declare-fun res!512045 () Bool)

(assert (=> b!757030 (=> (not res!512045) (not e!422126))))

(assert (=> b!757030 (= res!512045 e!422123)))

(declare-fun c!82871 () Bool)

(assert (=> b!757030 (= c!82871 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757031 () Bool)

(declare-fun res!512046 () Bool)

(assert (=> b!757031 (=> (not res!512046) (not e!422126))))

(assert (=> b!757031 (= res!512046 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20084 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757032 () Bool)

(declare-fun res!512042 () Bool)

(assert (=> b!757032 (=> (not res!512042) (not e!422127))))

(assert (=> b!757032 (= res!512042 (and (= (size!20505 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20505 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20505 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757033 () Bool)

(declare-fun Unit!26169 () Unit!26166)

(assert (=> b!757033 (= e!422121 Unit!26169)))

(declare-fun b!757034 () Bool)

(assert (=> b!757034 (= e!422123 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20084 a!3186) j!159) a!3186 mask!3328) (Found!7691 j!159)))))

(declare-fun b!757035 () Bool)

(declare-fun res!512050 () Bool)

(assert (=> b!757035 (=> (not res!512050) (not e!422125))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41948 (_ BitVec 32)) Bool)

(assert (=> b!757035 (= res!512050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757036 () Bool)

(declare-fun e!422119 () Bool)

(declare-fun lt!337121 () SeekEntryResult!7691)

(assert (=> b!757036 (= e!422119 (= lt!337121 lt!337127))))

(declare-fun b!757037 () Bool)

(declare-fun res!512044 () Bool)

(assert (=> b!757037 (=> (not res!512044) (not e!422127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757037 (= res!512044 (validKeyInArray!0 (select (arr!20084 a!3186) j!159)))))

(declare-fun b!757038 () Bool)

(declare-fun res!512052 () Bool)

(assert (=> b!757038 (=> (not res!512052) (not e!422119))))

(assert (=> b!757038 (= res!512052 (= (seekEntryOrOpen!0 lt!337122 lt!337123 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337122 lt!337123 mask!3328)))))

(declare-fun b!757039 () Bool)

(declare-fun res!512047 () Bool)

(assert (=> b!757039 (=> (not res!512047) (not e!422125))))

(declare-datatypes ((List!14139 0))(
  ( (Nil!14136) (Cons!14135 (h!15207 (_ BitVec 64)) (t!20462 List!14139)) )
))
(declare-fun arrayNoDuplicates!0 (array!41948 (_ BitVec 32) List!14139) Bool)

(assert (=> b!757039 (= res!512047 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14136))))

(declare-fun b!757040 () Bool)

(declare-fun e!422122 () Bool)

(assert (=> b!757040 (= e!422122 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20084 a!3186) j!159) a!3186 mask!3328) lt!337125))))

(declare-fun b!757041 () Bool)

(declare-fun res!512055 () Bool)

(assert (=> b!757041 (=> (not res!512055) (not e!422127))))

(assert (=> b!757041 (= res!512055 (validKeyInArray!0 k!2102))))

(declare-fun b!757042 () Bool)

(assert (=> b!757042 (= e!422130 (not e!422124))))

(declare-fun res!512041 () Bool)

(assert (=> b!757042 (=> res!512041 e!422124)))

(assert (=> b!757042 (= res!512041 (or (not (is-Intermediate!7691 lt!337129)) (bvslt x!1131 (x!64050 lt!337129)) (not (= x!1131 (x!64050 lt!337129))) (not (= index!1321 (index!33133 lt!337129)))))))

(assert (=> b!757042 e!422122))

(declare-fun res!512056 () Bool)

(assert (=> b!757042 (=> (not res!512056) (not e!422122))))

(assert (=> b!757042 (= res!512056 (= lt!337121 lt!337125))))

(assert (=> b!757042 (= lt!337125 (Found!7691 j!159))))

(assert (=> b!757042 (= lt!337121 (seekEntryOrOpen!0 (select (arr!20084 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757042 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337124 () Unit!26166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41948 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26166)

(assert (=> b!757042 (= lt!337124 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757043 () Bool)

(assert (=> b!757043 (= e!422128 true)))

(assert (=> b!757043 e!422119))

(declare-fun res!512054 () Bool)

(assert (=> b!757043 (=> (not res!512054) (not e!422119))))

(assert (=> b!757043 (= res!512054 (= lt!337120 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337119 () Unit!26166)

(assert (=> b!757043 (= lt!337119 e!422121)))

(declare-fun c!82872 () Bool)

(assert (=> b!757043 (= c!82872 (= lt!337120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!65822 res!512053) b!757032))

(assert (= (and b!757032 res!512042) b!757037))

(assert (= (and b!757037 res!512044) b!757041))

(assert (= (and b!757041 res!512055) b!757027))

(assert (= (and b!757027 res!512049) b!757024))

(assert (= (and b!757024 res!512043) b!757035))

(assert (= (and b!757035 res!512050) b!757039))

(assert (= (and b!757039 res!512047) b!757022))

(assert (= (and b!757022 res!512040) b!757021))

(assert (= (and b!757021 res!512058) b!757031))

(assert (= (and b!757031 res!512046) b!757030))

(assert (= (and b!757030 c!82871) b!757026))

(assert (= (and b!757030 (not c!82871)) b!757034))

(assert (= (and b!757030 res!512045) b!757029))

(assert (= (and b!757029 res!512048) b!757042))

(assert (= (and b!757042 res!512056) b!757040))

(assert (= (and b!757042 (not res!512041)) b!757025))

(assert (= (and b!757025 (not res!512051)) b!757028))

(assert (= (and b!757028 (not res!512057)) b!757043))

(assert (= (and b!757043 c!82872) b!757023))

(assert (= (and b!757043 (not c!82872)) b!757033))

(assert (= (and b!757043 res!512054) b!757038))

(assert (= (and b!757038 res!512052) b!757036))

(declare-fun m!704901 () Bool)

(assert (=> b!757028 m!704901))

(declare-fun m!704903 () Bool)

(assert (=> b!757028 m!704903))

(declare-fun m!704905 () Bool)

(assert (=> b!757038 m!704905))

(declare-fun m!704907 () Bool)

(assert (=> b!757038 m!704907))

(declare-fun m!704909 () Bool)

(assert (=> b!757039 m!704909))

(declare-fun m!704911 () Bool)

(assert (=> b!757024 m!704911))

(declare-fun m!704913 () Bool)

(assert (=> b!757041 m!704913))

(declare-fun m!704915 () Bool)

(assert (=> b!757029 m!704915))

(assert (=> b!757029 m!704915))

(declare-fun m!704917 () Bool)

(assert (=> b!757029 m!704917))

(declare-fun m!704919 () Bool)

(assert (=> b!757029 m!704919))

(assert (=> b!757029 m!704901))

(declare-fun m!704921 () Bool)

(assert (=> b!757029 m!704921))

(declare-fun m!704923 () Bool)

(assert (=> b!757026 m!704923))

(assert (=> b!757026 m!704923))

(declare-fun m!704925 () Bool)

(assert (=> b!757026 m!704925))

(assert (=> b!757037 m!704923))

(assert (=> b!757037 m!704923))

(declare-fun m!704927 () Bool)

(assert (=> b!757037 m!704927))

(declare-fun m!704929 () Bool)

(assert (=> b!757035 m!704929))

(assert (=> b!757034 m!704923))

(assert (=> b!757034 m!704923))

(declare-fun m!704931 () Bool)

(assert (=> b!757034 m!704931))

(declare-fun m!704933 () Bool)

(assert (=> b!757027 m!704933))

(assert (=> b!757025 m!704923))

(assert (=> b!757025 m!704923))

(assert (=> b!757025 m!704931))

(declare-fun m!704935 () Bool)

(assert (=> b!757031 m!704935))

(declare-fun m!704937 () Bool)

(assert (=> start!65822 m!704937))

(declare-fun m!704939 () Bool)

(assert (=> start!65822 m!704939))

(assert (=> b!757021 m!704923))

(assert (=> b!757021 m!704923))

(declare-fun m!704941 () Bool)

(assert (=> b!757021 m!704941))

(assert (=> b!757021 m!704941))

(assert (=> b!757021 m!704923))

(declare-fun m!704943 () Bool)

(assert (=> b!757021 m!704943))

(assert (=> b!757042 m!704923))

(assert (=> b!757042 m!704923))

(declare-fun m!704945 () Bool)

(assert (=> b!757042 m!704945))

(declare-fun m!704947 () Bool)

(assert (=> b!757042 m!704947))

(declare-fun m!704949 () Bool)

(assert (=> b!757042 m!704949))

(assert (=> b!757040 m!704923))

(assert (=> b!757040 m!704923))

(declare-fun m!704951 () Bool)

(assert (=> b!757040 m!704951))

(push 1)

(assert (not b!757040))

(assert (not b!757024))

(assert (not start!65822))

(assert (not b!757026))

(assert (not b!757037))

(assert (not b!757029))

(assert (not b!757027))

(assert (not b!757035))

(assert (not b!757034))

(assert (not b!757021))

(assert (not b!757039))

(assert (not b!757038))

(assert (not b!757025))

(assert (not b!757042))

(assert (not b!757041))

(check-sat)

