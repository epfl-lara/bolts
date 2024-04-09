; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67134 () Bool)

(assert start!67134)

(declare-fun b!774876 () Bool)

(declare-fun res!524088 () Bool)

(declare-fun e!431323 () Bool)

(assert (=> b!774876 (=> (not res!524088) (not e!431323))))

(declare-datatypes ((array!42444 0))(
  ( (array!42445 (arr!20314 (Array (_ BitVec 32) (_ BitVec 64))) (size!20735 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42444)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42444 (_ BitVec 32)) Bool)

(assert (=> b!774876 (= res!524088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!431326 () Bool)

(declare-fun b!774877 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7921 0))(
  ( (MissingZero!7921 (index!34051 (_ BitVec 32))) (Found!7921 (index!34052 (_ BitVec 32))) (Intermediate!7921 (undefined!8733 Bool) (index!34053 (_ BitVec 32)) (x!65025 (_ BitVec 32))) (Undefined!7921) (MissingVacant!7921 (index!34054 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42444 (_ BitVec 32)) SeekEntryResult!7921)

(assert (=> b!774877 (= e!431326 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) (Found!7921 j!159)))))

(declare-fun b!774878 () Bool)

(declare-fun res!524086 () Bool)

(declare-fun e!431324 () Bool)

(assert (=> b!774878 (=> (not res!524086) (not e!431324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774878 (= res!524086 (validKeyInArray!0 (select (arr!20314 a!3186) j!159)))))

(declare-fun b!774879 () Bool)

(declare-fun res!524087 () Bool)

(assert (=> b!774879 (=> (not res!524087) (not e!431324))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!774879 (= res!524087 (validKeyInArray!0 k0!2102))))

(declare-fun b!774880 () Bool)

(declare-fun e!431316 () Bool)

(assert (=> b!774880 (= e!431323 e!431316)))

(declare-fun res!524078 () Bool)

(assert (=> b!774880 (=> (not res!524078) (not e!431316))))

(declare-fun lt!345169 () SeekEntryResult!7921)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42444 (_ BitVec 32)) SeekEntryResult!7921)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774880 (= res!524078 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20314 a!3186) j!159) mask!3328) (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345169))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!774880 (= lt!345169 (Intermediate!7921 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!774881 () Bool)

(declare-datatypes ((Unit!26720 0))(
  ( (Unit!26721) )
))
(declare-fun e!431322 () Unit!26720)

(declare-fun Unit!26722 () Unit!26720)

(assert (=> b!774881 (= e!431322 Unit!26722)))

(declare-fun lt!345162 () (_ BitVec 32))

(assert (=> b!774881 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345162 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345169)))

(declare-fun b!774882 () Bool)

(declare-fun e!431319 () Bool)

(assert (=> b!774882 (= e!431319 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345162 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345169)))))

(declare-fun b!774883 () Bool)

(declare-fun res!524077 () Bool)

(assert (=> b!774883 (=> (not res!524077) (not e!431324))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774883 (= res!524077 (and (= (size!20735 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20735 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20735 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774884 () Bool)

(declare-fun e!431317 () Bool)

(declare-fun e!431315 () Bool)

(assert (=> b!774884 (= e!431317 e!431315)))

(declare-fun res!524075 () Bool)

(assert (=> b!774884 (=> (not res!524075) (not e!431315))))

(declare-fun lt!345171 () SeekEntryResult!7921)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42444 (_ BitVec 32)) SeekEntryResult!7921)

(assert (=> b!774884 (= res!524075 (= (seekEntryOrOpen!0 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345171))))

(assert (=> b!774884 (= lt!345171 (Found!7921 j!159))))

(declare-fun b!774886 () Bool)

(declare-fun res!524090 () Bool)

(declare-fun e!431325 () Bool)

(assert (=> b!774886 (=> res!524090 e!431325)))

(assert (=> b!774886 (= res!524090 e!431319)))

(declare-fun c!85801 () Bool)

(declare-fun lt!345163 () Bool)

(assert (=> b!774886 (= c!85801 lt!345163)))

(declare-fun b!774887 () Bool)

(assert (=> b!774887 (= e!431324 e!431323)))

(declare-fun res!524089 () Bool)

(assert (=> b!774887 (=> (not res!524089) (not e!431323))))

(declare-fun lt!345172 () SeekEntryResult!7921)

(assert (=> b!774887 (= res!524089 (or (= lt!345172 (MissingZero!7921 i!1173)) (= lt!345172 (MissingVacant!7921 i!1173))))))

(assert (=> b!774887 (= lt!345172 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!774888 () Bool)

(declare-fun res!524092 () Bool)

(assert (=> b!774888 (=> (not res!524092) (not e!431324))))

(declare-fun arrayContainsKey!0 (array!42444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774888 (= res!524092 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774889 () Bool)

(declare-fun res!524081 () Bool)

(assert (=> b!774889 (=> (not res!524081) (not e!431323))))

(declare-datatypes ((List!14369 0))(
  ( (Nil!14366) (Cons!14365 (h!15473 (_ BitVec 64)) (t!20692 List!14369)) )
))
(declare-fun arrayNoDuplicates!0 (array!42444 (_ BitVec 32) List!14369) Bool)

(assert (=> b!774889 (= res!524081 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14366))))

(declare-fun b!774890 () Bool)

(declare-fun Unit!26723 () Unit!26720)

(assert (=> b!774890 (= e!431322 Unit!26723)))

(declare-fun lt!345170 () SeekEntryResult!7921)

(assert (=> b!774890 (= lt!345170 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20314 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!345159 () SeekEntryResult!7921)

(assert (=> b!774890 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345162 resIntermediateIndex!5 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345159)))

(declare-fun b!774891 () Bool)

(assert (=> b!774891 (= e!431319 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345162 resIntermediateIndex!5 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345159)))))

(declare-fun b!774892 () Bool)

(declare-fun res!524074 () Bool)

(assert (=> b!774892 (=> (not res!524074) (not e!431323))))

(assert (=> b!774892 (= res!524074 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20735 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20735 a!3186))))))

(declare-fun b!774893 () Bool)

(declare-fun res!524083 () Bool)

(assert (=> b!774893 (=> res!524083 e!431325)))

(declare-fun lt!345165 () array!42444)

(declare-fun lt!345164 () (_ BitVec 64))

(declare-fun lt!345161 () SeekEntryResult!7921)

(assert (=> b!774893 (= res!524083 (not (= lt!345161 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345162 lt!345164 lt!345165 mask!3328))))))

(declare-fun b!774894 () Bool)

(declare-fun e!431321 () Bool)

(assert (=> b!774894 (= e!431321 e!431325)))

(declare-fun res!524082 () Bool)

(assert (=> b!774894 (=> res!524082 e!431325)))

(assert (=> b!774894 (= res!524082 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345162 #b00000000000000000000000000000000) (bvsge lt!345162 (size!20735 a!3186))))))

(declare-fun lt!345160 () Unit!26720)

(assert (=> b!774894 (= lt!345160 e!431322)))

(declare-fun c!85802 () Bool)

(assert (=> b!774894 (= c!85802 lt!345163)))

(assert (=> b!774894 (= lt!345163 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774894 (= lt!345162 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774895 () Bool)

(declare-fun res!524076 () Bool)

(assert (=> b!774895 (=> (not res!524076) (not e!431316))))

(assert (=> b!774895 (= res!524076 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20314 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774896 () Bool)

(assert (=> b!774896 (= e!431325 true)))

(assert (=> b!774896 (= (seekEntryOrOpen!0 lt!345164 lt!345165 mask!3328) lt!345159)))

(declare-fun lt!345167 () Unit!26720)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42444 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26720)

(assert (=> b!774896 (= lt!345167 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!345162 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!774897 () Bool)

(assert (=> b!774897 (= e!431326 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345169))))

(declare-fun b!774898 () Bool)

(declare-fun e!431318 () Bool)

(assert (=> b!774898 (= e!431318 (not e!431321))))

(declare-fun res!524080 () Bool)

(assert (=> b!774898 (=> res!524080 e!431321)))

(declare-fun lt!345166 () SeekEntryResult!7921)

(get-info :version)

(assert (=> b!774898 (= res!524080 (or (not ((_ is Intermediate!7921) lt!345166)) (bvsge x!1131 (x!65025 lt!345166))))))

(assert (=> b!774898 (= lt!345159 (Found!7921 j!159))))

(assert (=> b!774898 e!431317))

(declare-fun res!524085 () Bool)

(assert (=> b!774898 (=> (not res!524085) (not e!431317))))

(assert (=> b!774898 (= res!524085 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345168 () Unit!26720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42444 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26720)

(assert (=> b!774898 (= lt!345168 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774899 () Bool)

(declare-fun res!524091 () Bool)

(assert (=> b!774899 (=> (not res!524091) (not e!431316))))

(assert (=> b!774899 (= res!524091 e!431326)))

(declare-fun c!85803 () Bool)

(assert (=> b!774899 (= c!85803 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774900 () Bool)

(assert (=> b!774900 (= e!431316 e!431318)))

(declare-fun res!524079 () Bool)

(assert (=> b!774900 (=> (not res!524079) (not e!431318))))

(assert (=> b!774900 (= res!524079 (= lt!345161 lt!345166))))

(assert (=> b!774900 (= lt!345166 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345164 lt!345165 mask!3328))))

(assert (=> b!774900 (= lt!345161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345164 mask!3328) lt!345164 lt!345165 mask!3328))))

(assert (=> b!774900 (= lt!345164 (select (store (arr!20314 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!774900 (= lt!345165 (array!42445 (store (arr!20314 a!3186) i!1173 k0!2102) (size!20735 a!3186)))))

(declare-fun res!524084 () Bool)

(assert (=> start!67134 (=> (not res!524084) (not e!431324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67134 (= res!524084 (validMask!0 mask!3328))))

(assert (=> start!67134 e!431324))

(assert (=> start!67134 true))

(declare-fun array_inv!16088 (array!42444) Bool)

(assert (=> start!67134 (array_inv!16088 a!3186)))

(declare-fun b!774885 () Bool)

(assert (=> b!774885 (= e!431315 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20314 a!3186) j!159) a!3186 mask!3328) lt!345171))))

(assert (= (and start!67134 res!524084) b!774883))

(assert (= (and b!774883 res!524077) b!774878))

(assert (= (and b!774878 res!524086) b!774879))

(assert (= (and b!774879 res!524087) b!774888))

(assert (= (and b!774888 res!524092) b!774887))

(assert (= (and b!774887 res!524089) b!774876))

(assert (= (and b!774876 res!524088) b!774889))

(assert (= (and b!774889 res!524081) b!774892))

(assert (= (and b!774892 res!524074) b!774880))

(assert (= (and b!774880 res!524078) b!774895))

(assert (= (and b!774895 res!524076) b!774899))

(assert (= (and b!774899 c!85803) b!774897))

(assert (= (and b!774899 (not c!85803)) b!774877))

(assert (= (and b!774899 res!524091) b!774900))

(assert (= (and b!774900 res!524079) b!774898))

(assert (= (and b!774898 res!524085) b!774884))

(assert (= (and b!774884 res!524075) b!774885))

(assert (= (and b!774898 (not res!524080)) b!774894))

(assert (= (and b!774894 c!85802) b!774881))

(assert (= (and b!774894 (not c!85802)) b!774890))

(assert (= (and b!774894 (not res!524082)) b!774886))

(assert (= (and b!774886 c!85801) b!774882))

(assert (= (and b!774886 (not c!85801)) b!774891))

(assert (= (and b!774886 (not res!524090)) b!774893))

(assert (= (and b!774893 (not res!524083)) b!774896))

(declare-fun m!719273 () Bool)

(assert (=> b!774885 m!719273))

(assert (=> b!774885 m!719273))

(declare-fun m!719275 () Bool)

(assert (=> b!774885 m!719275))

(declare-fun m!719277 () Bool)

(assert (=> start!67134 m!719277))

(declare-fun m!719279 () Bool)

(assert (=> start!67134 m!719279))

(assert (=> b!774877 m!719273))

(assert (=> b!774877 m!719273))

(declare-fun m!719281 () Bool)

(assert (=> b!774877 m!719281))

(assert (=> b!774890 m!719273))

(assert (=> b!774890 m!719273))

(assert (=> b!774890 m!719281))

(assert (=> b!774890 m!719273))

(declare-fun m!719283 () Bool)

(assert (=> b!774890 m!719283))

(declare-fun m!719285 () Bool)

(assert (=> b!774889 m!719285))

(assert (=> b!774897 m!719273))

(assert (=> b!774897 m!719273))

(declare-fun m!719287 () Bool)

(assert (=> b!774897 m!719287))

(assert (=> b!774881 m!719273))

(assert (=> b!774881 m!719273))

(declare-fun m!719289 () Bool)

(assert (=> b!774881 m!719289))

(declare-fun m!719291 () Bool)

(assert (=> b!774888 m!719291))

(assert (=> b!774884 m!719273))

(assert (=> b!774884 m!719273))

(declare-fun m!719293 () Bool)

(assert (=> b!774884 m!719293))

(declare-fun m!719295 () Bool)

(assert (=> b!774876 m!719295))

(declare-fun m!719297 () Bool)

(assert (=> b!774895 m!719297))

(declare-fun m!719299 () Bool)

(assert (=> b!774879 m!719299))

(declare-fun m!719301 () Bool)

(assert (=> b!774898 m!719301))

(declare-fun m!719303 () Bool)

(assert (=> b!774898 m!719303))

(declare-fun m!719305 () Bool)

(assert (=> b!774900 m!719305))

(declare-fun m!719307 () Bool)

(assert (=> b!774900 m!719307))

(declare-fun m!719309 () Bool)

(assert (=> b!774900 m!719309))

(declare-fun m!719311 () Bool)

(assert (=> b!774900 m!719311))

(declare-fun m!719313 () Bool)

(assert (=> b!774900 m!719313))

(assert (=> b!774900 m!719307))

(assert (=> b!774880 m!719273))

(assert (=> b!774880 m!719273))

(declare-fun m!719315 () Bool)

(assert (=> b!774880 m!719315))

(assert (=> b!774880 m!719315))

(assert (=> b!774880 m!719273))

(declare-fun m!719317 () Bool)

(assert (=> b!774880 m!719317))

(assert (=> b!774882 m!719273))

(assert (=> b!774882 m!719273))

(assert (=> b!774882 m!719289))

(assert (=> b!774891 m!719273))

(assert (=> b!774891 m!719273))

(assert (=> b!774891 m!719283))

(declare-fun m!719319 () Bool)

(assert (=> b!774894 m!719319))

(declare-fun m!719321 () Bool)

(assert (=> b!774893 m!719321))

(declare-fun m!719323 () Bool)

(assert (=> b!774887 m!719323))

(declare-fun m!719325 () Bool)

(assert (=> b!774896 m!719325))

(declare-fun m!719327 () Bool)

(assert (=> b!774896 m!719327))

(assert (=> b!774878 m!719273))

(assert (=> b!774878 m!719273))

(declare-fun m!719329 () Bool)

(assert (=> b!774878 m!719329))

(check-sat (not b!774881) (not b!774896) (not b!774885) (not b!774887) (not b!774884) (not b!774878) (not b!774891) (not b!774900) (not b!774894) (not b!774893) (not b!774889) (not start!67134) (not b!774877) (not b!774898) (not b!774882) (not b!774876) (not b!774879) (not b!774890) (not b!774888) (not b!774897) (not b!774880))
(check-sat)
