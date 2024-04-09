; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65252 () Bool)

(assert start!65252)

(declare-fun b!739074 () Bool)

(declare-fun e!413317 () Bool)

(declare-fun e!413316 () Bool)

(assert (=> b!739074 (= e!413317 (not e!413316))))

(declare-fun res!497027 () Bool)

(assert (=> b!739074 (=> res!497027 e!413316)))

(declare-datatypes ((SeekEntryResult!7406 0))(
  ( (MissingZero!7406 (index!31991 (_ BitVec 32))) (Found!7406 (index!31992 (_ BitVec 32))) (Intermediate!7406 (undefined!8218 Bool) (index!31993 (_ BitVec 32)) (x!63005 (_ BitVec 32))) (Undefined!7406) (MissingVacant!7406 (index!31994 (_ BitVec 32))) )
))
(declare-fun lt!328174 () SeekEntryResult!7406)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!739074 (= res!497027 (or (not (is-Intermediate!7406 lt!328174)) (bvsge x!1131 (x!63005 lt!328174))))))

(declare-fun lt!328175 () SeekEntryResult!7406)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!739074 (= lt!328175 (Found!7406 j!159))))

(declare-fun e!413310 () Bool)

(assert (=> b!739074 e!413310))

(declare-fun res!497016 () Bool)

(assert (=> b!739074 (=> (not res!497016) (not e!413310))))

(declare-datatypes ((array!41378 0))(
  ( (array!41379 (arr!19799 (Array (_ BitVec 32) (_ BitVec 64))) (size!20220 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41378)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41378 (_ BitVec 32)) Bool)

(assert (=> b!739074 (= res!497016 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25242 0))(
  ( (Unit!25243) )
))
(declare-fun lt!328176 () Unit!25242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41378 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25242)

(assert (=> b!739074 (= lt!328176 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739075 () Bool)

(declare-fun res!497017 () Bool)

(declare-fun e!413314 () Bool)

(assert (=> b!739075 (=> (not res!497017) (not e!413314))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739075 (= res!497017 (and (= (size!20220 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20220 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20220 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!328181 () (_ BitVec 32))

(declare-fun b!739076 () Bool)

(declare-fun e!413318 () Bool)

(declare-fun lt!328178 () SeekEntryResult!7406)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41378 (_ BitVec 32)) SeekEntryResult!7406)

(assert (=> b!739076 (= e!413318 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328181 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328178)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!328184 () SeekEntryResult!7406)

(declare-fun b!739077 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!413311 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41378 (_ BitVec 32)) SeekEntryResult!7406)

(assert (=> b!739077 (= e!413311 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328184))))

(declare-fun b!739078 () Bool)

(declare-fun e!413319 () Unit!25242)

(declare-fun Unit!25244 () Unit!25242)

(assert (=> b!739078 (= e!413319 Unit!25244)))

(assert (=> b!739078 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328181 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328178)))

(declare-fun b!739079 () Bool)

(declare-fun res!497015 () Bool)

(assert (=> b!739079 (=> (not res!497015) (not e!413314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739079 (= res!497015 (validKeyInArray!0 (select (arr!19799 a!3186) j!159)))))

(declare-fun b!739080 () Bool)

(declare-fun res!497012 () Bool)

(declare-fun e!413313 () Bool)

(assert (=> b!739080 (=> (not res!497012) (not e!413313))))

(declare-fun e!413309 () Bool)

(assert (=> b!739080 (= res!497012 e!413309)))

(declare-fun c!81414 () Bool)

(assert (=> b!739080 (= c!81414 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739081 () Bool)

(declare-fun res!497018 () Bool)

(assert (=> b!739081 (=> (not res!497018) (not e!413314))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!739081 (= res!497018 (validKeyInArray!0 k!2102))))

(declare-fun b!739082 () Bool)

(declare-fun res!497019 () Bool)

(declare-fun e!413315 () Bool)

(assert (=> b!739082 (=> (not res!497019) (not e!413315))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!739082 (= res!497019 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20220 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20220 a!3186))))))

(declare-fun b!739083 () Bool)

(declare-fun Unit!25245 () Unit!25242)

(assert (=> b!739083 (= e!413319 Unit!25245)))

(declare-fun lt!328173 () SeekEntryResult!7406)

(assert (=> b!739083 (= lt!328173 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19799 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!739083 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328181 resIntermediateIndex!5 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328175)))

(declare-fun b!739084 () Bool)

(declare-fun res!497025 () Bool)

(declare-fun e!413312 () Bool)

(assert (=> b!739084 (=> res!497025 e!413312)))

(assert (=> b!739084 (= res!497025 e!413318)))

(declare-fun c!81412 () Bool)

(declare-fun lt!328177 () Bool)

(assert (=> b!739084 (= c!81412 lt!328177)))

(declare-fun res!497021 () Bool)

(assert (=> start!65252 (=> (not res!497021) (not e!413314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65252 (= res!497021 (validMask!0 mask!3328))))

(assert (=> start!65252 e!413314))

(assert (=> start!65252 true))

(declare-fun array_inv!15573 (array!41378) Bool)

(assert (=> start!65252 (array_inv!15573 a!3186)))

(declare-fun b!739085 () Bool)

(declare-fun res!497022 () Bool)

(assert (=> b!739085 (=> (not res!497022) (not e!413314))))

(declare-fun arrayContainsKey!0 (array!41378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739085 (= res!497022 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739086 () Bool)

(declare-fun res!497014 () Bool)

(assert (=> b!739086 (=> (not res!497014) (not e!413313))))

(assert (=> b!739086 (= res!497014 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19799 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739087 () Bool)

(assert (=> b!739087 (= e!413316 e!413312)))

(declare-fun res!497020 () Bool)

(assert (=> b!739087 (=> res!497020 e!413312)))

(assert (=> b!739087 (= res!497020 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328181 #b00000000000000000000000000000000) (bvsge lt!328181 (size!20220 a!3186))))))

(declare-fun lt!328179 () Unit!25242)

(assert (=> b!739087 (= lt!328179 e!413319)))

(declare-fun c!81413 () Bool)

(assert (=> b!739087 (= c!81413 lt!328177)))

(assert (=> b!739087 (= lt!328177 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739087 (= lt!328181 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739088 () Bool)

(assert (=> b!739088 (= e!413309 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) (Found!7406 j!159)))))

(declare-fun b!739089 () Bool)

(assert (=> b!739089 (= e!413315 e!413313)))

(declare-fun res!497011 () Bool)

(assert (=> b!739089 (=> (not res!497011) (not e!413313))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739089 (= res!497011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19799 a!3186) j!159) mask!3328) (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328178))))

(assert (=> b!739089 (= lt!328178 (Intermediate!7406 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739090 () Bool)

(declare-fun res!497024 () Bool)

(assert (=> b!739090 (=> (not res!497024) (not e!413315))))

(assert (=> b!739090 (= res!497024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739091 () Bool)

(assert (=> b!739091 (= e!413310 e!413311)))

(declare-fun res!497013 () Bool)

(assert (=> b!739091 (=> (not res!497013) (not e!413311))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41378 (_ BitVec 32)) SeekEntryResult!7406)

(assert (=> b!739091 (= res!497013 (= (seekEntryOrOpen!0 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328184))))

(assert (=> b!739091 (= lt!328184 (Found!7406 j!159))))

(declare-fun b!739092 () Bool)

(declare-fun res!497028 () Bool)

(assert (=> b!739092 (=> (not res!497028) (not e!413315))))

(declare-datatypes ((List!13854 0))(
  ( (Nil!13851) (Cons!13850 (h!14922 (_ BitVec 64)) (t!20177 List!13854)) )
))
(declare-fun arrayNoDuplicates!0 (array!41378 (_ BitVec 32) List!13854) Bool)

(assert (=> b!739092 (= res!497028 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13851))))

(declare-fun b!739093 () Bool)

(assert (=> b!739093 (= e!413314 e!413315)))

(declare-fun res!497023 () Bool)

(assert (=> b!739093 (=> (not res!497023) (not e!413315))))

(declare-fun lt!328171 () SeekEntryResult!7406)

(assert (=> b!739093 (= res!497023 (or (= lt!328171 (MissingZero!7406 i!1173)) (= lt!328171 (MissingVacant!7406 i!1173))))))

(assert (=> b!739093 (= lt!328171 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739094 () Bool)

(assert (=> b!739094 (= e!413313 e!413317)))

(declare-fun res!497026 () Bool)

(assert (=> b!739094 (=> (not res!497026) (not e!413317))))

(declare-fun lt!328172 () SeekEntryResult!7406)

(assert (=> b!739094 (= res!497026 (= lt!328172 lt!328174))))

(declare-fun lt!328183 () array!41378)

(declare-fun lt!328180 () (_ BitVec 64))

(assert (=> b!739094 (= lt!328174 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328180 lt!328183 mask!3328))))

(assert (=> b!739094 (= lt!328172 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328180 mask!3328) lt!328180 lt!328183 mask!3328))))

(assert (=> b!739094 (= lt!328180 (select (store (arr!19799 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739094 (= lt!328183 (array!41379 (store (arr!19799 a!3186) i!1173 k!2102) (size!20220 a!3186)))))

(declare-fun b!739095 () Bool)

(assert (=> b!739095 (= e!413309 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328178))))

(declare-fun b!739096 () Bool)

(assert (=> b!739096 (= e!413318 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328181 resIntermediateIndex!5 (select (arr!19799 a!3186) j!159) a!3186 mask!3328) lt!328175)))))

(declare-fun b!739097 () Bool)

(assert (=> b!739097 (= e!413312 true)))

(declare-fun lt!328182 () SeekEntryResult!7406)

(assert (=> b!739097 (= lt!328182 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328181 lt!328180 lt!328183 mask!3328))))

(assert (= (and start!65252 res!497021) b!739075))

(assert (= (and b!739075 res!497017) b!739079))

(assert (= (and b!739079 res!497015) b!739081))

(assert (= (and b!739081 res!497018) b!739085))

(assert (= (and b!739085 res!497022) b!739093))

(assert (= (and b!739093 res!497023) b!739090))

(assert (= (and b!739090 res!497024) b!739092))

(assert (= (and b!739092 res!497028) b!739082))

(assert (= (and b!739082 res!497019) b!739089))

(assert (= (and b!739089 res!497011) b!739086))

(assert (= (and b!739086 res!497014) b!739080))

(assert (= (and b!739080 c!81414) b!739095))

(assert (= (and b!739080 (not c!81414)) b!739088))

(assert (= (and b!739080 res!497012) b!739094))

(assert (= (and b!739094 res!497026) b!739074))

(assert (= (and b!739074 res!497016) b!739091))

(assert (= (and b!739091 res!497013) b!739077))

(assert (= (and b!739074 (not res!497027)) b!739087))

(assert (= (and b!739087 c!81413) b!739078))

(assert (= (and b!739087 (not c!81413)) b!739083))

(assert (= (and b!739087 (not res!497020)) b!739084))

(assert (= (and b!739084 c!81412) b!739076))

(assert (= (and b!739084 (not c!81412)) b!739096))

(assert (= (and b!739084 (not res!497025)) b!739097))

(declare-fun m!690613 () Bool)

(assert (=> b!739097 m!690613))

(declare-fun m!690615 () Bool)

(assert (=> b!739089 m!690615))

(assert (=> b!739089 m!690615))

(declare-fun m!690617 () Bool)

(assert (=> b!739089 m!690617))

(assert (=> b!739089 m!690617))

(assert (=> b!739089 m!690615))

(declare-fun m!690619 () Bool)

(assert (=> b!739089 m!690619))

(assert (=> b!739079 m!690615))

(assert (=> b!739079 m!690615))

(declare-fun m!690621 () Bool)

(assert (=> b!739079 m!690621))

(declare-fun m!690623 () Bool)

(assert (=> b!739081 m!690623))

(declare-fun m!690625 () Bool)

(assert (=> b!739085 m!690625))

(declare-fun m!690627 () Bool)

(assert (=> b!739094 m!690627))

(declare-fun m!690629 () Bool)

(assert (=> b!739094 m!690629))

(assert (=> b!739094 m!690629))

(declare-fun m!690631 () Bool)

(assert (=> b!739094 m!690631))

(declare-fun m!690633 () Bool)

(assert (=> b!739094 m!690633))

(declare-fun m!690635 () Bool)

(assert (=> b!739094 m!690635))

(assert (=> b!739083 m!690615))

(assert (=> b!739083 m!690615))

(declare-fun m!690637 () Bool)

(assert (=> b!739083 m!690637))

(assert (=> b!739083 m!690615))

(declare-fun m!690639 () Bool)

(assert (=> b!739083 m!690639))

(declare-fun m!690641 () Bool)

(assert (=> b!739093 m!690641))

(declare-fun m!690643 () Bool)

(assert (=> start!65252 m!690643))

(declare-fun m!690645 () Bool)

(assert (=> start!65252 m!690645))

(assert (=> b!739077 m!690615))

(assert (=> b!739077 m!690615))

(declare-fun m!690647 () Bool)

(assert (=> b!739077 m!690647))

(declare-fun m!690649 () Bool)

(assert (=> b!739086 m!690649))

(assert (=> b!739076 m!690615))

(assert (=> b!739076 m!690615))

(declare-fun m!690651 () Bool)

(assert (=> b!739076 m!690651))

(assert (=> b!739091 m!690615))

(assert (=> b!739091 m!690615))

(declare-fun m!690653 () Bool)

(assert (=> b!739091 m!690653))

(assert (=> b!739078 m!690615))

(assert (=> b!739078 m!690615))

(assert (=> b!739078 m!690651))

(assert (=> b!739096 m!690615))

(assert (=> b!739096 m!690615))

(assert (=> b!739096 m!690639))

(assert (=> b!739088 m!690615))

(assert (=> b!739088 m!690615))

(assert (=> b!739088 m!690637))

(declare-fun m!690655 () Bool)

(assert (=> b!739087 m!690655))

(declare-fun m!690657 () Bool)

(assert (=> b!739074 m!690657))

(declare-fun m!690659 () Bool)

(assert (=> b!739074 m!690659))

(declare-fun m!690661 () Bool)

(assert (=> b!739090 m!690661))

(assert (=> b!739095 m!690615))

(assert (=> b!739095 m!690615))

(declare-fun m!690663 () Bool)

(assert (=> b!739095 m!690663))

(declare-fun m!690665 () Bool)

(assert (=> b!739092 m!690665))

(push 1)

