; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65296 () Bool)

(assert start!65296)

(declare-fun b!740689 () Bool)

(declare-datatypes ((Unit!25330 0))(
  ( (Unit!25331) )
))
(declare-fun e!414102 () Unit!25330)

(declare-fun Unit!25332 () Unit!25330)

(assert (=> b!740689 (= e!414102 Unit!25332)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41422 0))(
  ( (array!41423 (arr!19821 (Array (_ BitVec 32) (_ BitVec 64))) (size!20242 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41422)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7428 0))(
  ( (MissingZero!7428 (index!32079 (_ BitVec 32))) (Found!7428 (index!32080 (_ BitVec 32))) (Intermediate!7428 (undefined!8240 Bool) (index!32081 (_ BitVec 32)) (x!63091 (_ BitVec 32))) (Undefined!7428) (MissingVacant!7428 (index!32082 (_ BitVec 32))) )
))
(declare-fun lt!329097 () SeekEntryResult!7428)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41422 (_ BitVec 32)) SeekEntryResult!7428)

(assert (=> b!740689 (= lt!329097 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19821 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!329096 () SeekEntryResult!7428)

(declare-fun lt!329104 () (_ BitVec 32))

(assert (=> b!740689 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329104 resIntermediateIndex!5 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329096)))

(declare-fun b!740690 () Bool)

(declare-fun res!498239 () Bool)

(declare-fun e!414112 () Bool)

(assert (=> b!740690 (=> (not res!498239) (not e!414112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740690 (= res!498239 (validKeyInArray!0 (select (arr!19821 a!3186) j!159)))))

(declare-fun b!740691 () Bool)

(declare-fun e!414103 () Bool)

(declare-fun e!414108 () Bool)

(assert (=> b!740691 (= e!414103 e!414108)))

(declare-fun res!498230 () Bool)

(assert (=> b!740691 (=> res!498230 e!414108)))

(assert (=> b!740691 (= res!498230 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!329104 #b00000000000000000000000000000000) (bvsge lt!329104 (size!20242 a!3186))))))

(declare-fun lt!329101 () Unit!25330)

(assert (=> b!740691 (= lt!329101 e!414102)))

(declare-fun c!81612 () Bool)

(declare-fun lt!329102 () Bool)

(assert (=> b!740691 (= c!81612 lt!329102)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740691 (= lt!329102 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740691 (= lt!329104 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740692 () Bool)

(declare-fun res!498231 () Bool)

(assert (=> b!740692 (=> (not res!498231) (not e!414112))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740692 (= res!498231 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740693 () Bool)

(declare-fun Unit!25333 () Unit!25330)

(assert (=> b!740693 (= e!414102 Unit!25333)))

(declare-fun lt!329103 () SeekEntryResult!7428)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41422 (_ BitVec 32)) SeekEntryResult!7428)

(assert (=> b!740693 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329104 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329103)))

(declare-fun b!740694 () Bool)

(declare-fun res!498234 () Bool)

(declare-fun e!414113 () Bool)

(assert (=> b!740694 (=> (not res!498234) (not e!414113))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740694 (= res!498234 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19821 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!414106 () Bool)

(declare-fun b!740695 () Bool)

(assert (=> b!740695 (= e!414106 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329104 resIntermediateIndex!5 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329096)))))

(declare-fun b!740696 () Bool)

(declare-fun e!414109 () Bool)

(assert (=> b!740696 (= e!414113 e!414109)))

(declare-fun res!498245 () Bool)

(assert (=> b!740696 (=> (not res!498245) (not e!414109))))

(declare-fun lt!329100 () SeekEntryResult!7428)

(declare-fun lt!329108 () SeekEntryResult!7428)

(assert (=> b!740696 (= res!498245 (= lt!329100 lt!329108))))

(declare-fun lt!329099 () array!41422)

(declare-fun lt!329105 () (_ BitVec 64))

(assert (=> b!740696 (= lt!329108 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329105 lt!329099 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740696 (= lt!329100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329105 mask!3328) lt!329105 lt!329099 mask!3328))))

(assert (=> b!740696 (= lt!329105 (select (store (arr!19821 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740696 (= lt!329099 (array!41423 (store (arr!19821 a!3186) i!1173 k!2102) (size!20242 a!3186)))))

(declare-fun b!740697 () Bool)

(declare-fun res!498246 () Bool)

(assert (=> b!740697 (=> res!498246 e!414108)))

(assert (=> b!740697 (= res!498246 e!414106)))

(declare-fun c!81610 () Bool)

(assert (=> b!740697 (= c!81610 lt!329102)))

(declare-fun b!740698 () Bool)

(declare-fun e!414114 () Bool)

(assert (=> b!740698 (= e!414112 e!414114)))

(declare-fun res!498233 () Bool)

(assert (=> b!740698 (=> (not res!498233) (not e!414114))))

(declare-fun lt!329098 () SeekEntryResult!7428)

(assert (=> b!740698 (= res!498233 (or (= lt!329098 (MissingZero!7428 i!1173)) (= lt!329098 (MissingVacant!7428 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41422 (_ BitVec 32)) SeekEntryResult!7428)

(assert (=> b!740698 (= lt!329098 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740699 () Bool)

(declare-fun res!498247 () Bool)

(assert (=> b!740699 (=> (not res!498247) (not e!414114))))

(assert (=> b!740699 (= res!498247 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20242 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20242 a!3186))))))

(declare-fun b!740700 () Bool)

(assert (=> b!740700 (= e!414114 e!414113)))

(declare-fun res!498235 () Bool)

(assert (=> b!740700 (=> (not res!498235) (not e!414113))))

(assert (=> b!740700 (= res!498235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19821 a!3186) j!159) mask!3328) (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329103))))

(assert (=> b!740700 (= lt!329103 (Intermediate!7428 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740701 () Bool)

(declare-fun res!498249 () Bool)

(assert (=> b!740701 (=> (not res!498249) (not e!414113))))

(declare-fun e!414107 () Bool)

(assert (=> b!740701 (= res!498249 e!414107)))

(declare-fun c!81611 () Bool)

(assert (=> b!740701 (= c!81611 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740702 () Bool)

(assert (=> b!740702 (= e!414107 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) (Found!7428 j!159)))))

(declare-fun b!740703 () Bool)

(assert (=> b!740703 (= e!414106 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329104 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329103)))))

(declare-fun b!740704 () Bool)

(declare-fun res!498238 () Bool)

(assert (=> b!740704 (=> res!498238 e!414108)))

(assert (=> b!740704 (= res!498238 (not (= lt!329100 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329104 lt!329105 lt!329099 mask!3328))))))

(declare-fun b!740705 () Bool)

(declare-fun e!414111 () Bool)

(assert (=> b!740705 (= e!414108 e!414111)))

(declare-fun res!498232 () Bool)

(assert (=> b!740705 (=> res!498232 e!414111)))

(assert (=> b!740705 (= res!498232 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!740705 (= (seekEntryOrOpen!0 lt!329105 lt!329099 mask!3328) lt!329096)))

(declare-fun lt!329107 () Unit!25330)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41422 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25330)

(assert (=> b!740705 (= lt!329107 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!329104 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740706 () Bool)

(assert (=> b!740706 (= e!414109 (not e!414103))))

(declare-fun res!498240 () Bool)

(assert (=> b!740706 (=> res!498240 e!414103)))

(assert (=> b!740706 (= res!498240 (or (not (is-Intermediate!7428 lt!329108)) (bvsge x!1131 (x!63091 lt!329108))))))

(assert (=> b!740706 (= lt!329096 (Found!7428 j!159))))

(declare-fun e!414110 () Bool)

(assert (=> b!740706 e!414110))

(declare-fun res!498248 () Bool)

(assert (=> b!740706 (=> (not res!498248) (not e!414110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41422 (_ BitVec 32)) Bool)

(assert (=> b!740706 (= res!498248 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!329095 () Unit!25330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25330)

(assert (=> b!740706 (= lt!329095 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!498241 () Bool)

(assert (=> start!65296 (=> (not res!498241) (not e!414112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65296 (= res!498241 (validMask!0 mask!3328))))

(assert (=> start!65296 e!414112))

(assert (=> start!65296 true))

(declare-fun array_inv!15595 (array!41422) Bool)

(assert (=> start!65296 (array_inv!15595 a!3186)))

(declare-fun b!740707 () Bool)

(declare-fun res!498236 () Bool)

(assert (=> b!740707 (=> (not res!498236) (not e!414114))))

(declare-datatypes ((List!13876 0))(
  ( (Nil!13873) (Cons!13872 (h!14944 (_ BitVec 64)) (t!20199 List!13876)) )
))
(declare-fun arrayNoDuplicates!0 (array!41422 (_ BitVec 32) List!13876) Bool)

(assert (=> b!740707 (= res!498236 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13873))))

(declare-fun b!740708 () Bool)

(declare-fun res!498242 () Bool)

(assert (=> b!740708 (=> (not res!498242) (not e!414112))))

(assert (=> b!740708 (= res!498242 (validKeyInArray!0 k!2102))))

(declare-fun lt!329106 () SeekEntryResult!7428)

(declare-fun b!740709 () Bool)

(declare-fun e!414105 () Bool)

(assert (=> b!740709 (= e!414105 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329106))))

(declare-fun b!740710 () Bool)

(assert (=> b!740710 (= e!414111 (validKeyInArray!0 lt!329105))))

(declare-fun b!740711 () Bool)

(assert (=> b!740711 (= e!414107 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329103))))

(declare-fun b!740712 () Bool)

(declare-fun res!498237 () Bool)

(assert (=> b!740712 (=> (not res!498237) (not e!414112))))

(assert (=> b!740712 (= res!498237 (and (= (size!20242 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20242 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20242 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740713 () Bool)

(declare-fun res!498243 () Bool)

(assert (=> b!740713 (=> (not res!498243) (not e!414114))))

(assert (=> b!740713 (= res!498243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740714 () Bool)

(assert (=> b!740714 (= e!414110 e!414105)))

(declare-fun res!498244 () Bool)

(assert (=> b!740714 (=> (not res!498244) (not e!414105))))

(assert (=> b!740714 (= res!498244 (= (seekEntryOrOpen!0 (select (arr!19821 a!3186) j!159) a!3186 mask!3328) lt!329106))))

(assert (=> b!740714 (= lt!329106 (Found!7428 j!159))))

(assert (= (and start!65296 res!498241) b!740712))

(assert (= (and b!740712 res!498237) b!740690))

(assert (= (and b!740690 res!498239) b!740708))

(assert (= (and b!740708 res!498242) b!740692))

(assert (= (and b!740692 res!498231) b!740698))

(assert (= (and b!740698 res!498233) b!740713))

(assert (= (and b!740713 res!498243) b!740707))

(assert (= (and b!740707 res!498236) b!740699))

(assert (= (and b!740699 res!498247) b!740700))

(assert (= (and b!740700 res!498235) b!740694))

(assert (= (and b!740694 res!498234) b!740701))

(assert (= (and b!740701 c!81611) b!740711))

(assert (= (and b!740701 (not c!81611)) b!740702))

(assert (= (and b!740701 res!498249) b!740696))

(assert (= (and b!740696 res!498245) b!740706))

(assert (= (and b!740706 res!498248) b!740714))

(assert (= (and b!740714 res!498244) b!740709))

(assert (= (and b!740706 (not res!498240)) b!740691))

(assert (= (and b!740691 c!81612) b!740693))

(assert (= (and b!740691 (not c!81612)) b!740689))

(assert (= (and b!740691 (not res!498230)) b!740697))

(assert (= (and b!740697 c!81610) b!740703))

(assert (= (and b!740697 (not c!81610)) b!740695))

(assert (= (and b!740697 (not res!498246)) b!740704))

(assert (= (and b!740704 (not res!498238)) b!740705))

(assert (= (and b!740705 (not res!498232)) b!740710))

(declare-fun m!691837 () Bool)

(assert (=> b!740693 m!691837))

(assert (=> b!740693 m!691837))

(declare-fun m!691839 () Bool)

(assert (=> b!740693 m!691839))

(declare-fun m!691841 () Bool)

(assert (=> b!740713 m!691841))

(assert (=> b!740711 m!691837))

(assert (=> b!740711 m!691837))

(declare-fun m!691843 () Bool)

(assert (=> b!740711 m!691843))

(declare-fun m!691845 () Bool)

(assert (=> b!740692 m!691845))

(declare-fun m!691847 () Bool)

(assert (=> b!740698 m!691847))

(declare-fun m!691849 () Bool)

(assert (=> b!740705 m!691849))

(declare-fun m!691851 () Bool)

(assert (=> b!740705 m!691851))

(assert (=> b!740702 m!691837))

(assert (=> b!740702 m!691837))

(declare-fun m!691853 () Bool)

(assert (=> b!740702 m!691853))

(assert (=> b!740703 m!691837))

(assert (=> b!740703 m!691837))

(assert (=> b!740703 m!691839))

(declare-fun m!691855 () Bool)

(assert (=> b!740708 m!691855))

(declare-fun m!691857 () Bool)

(assert (=> b!740710 m!691857))

(assert (=> b!740689 m!691837))

(assert (=> b!740689 m!691837))

(assert (=> b!740689 m!691853))

(assert (=> b!740689 m!691837))

(declare-fun m!691859 () Bool)

(assert (=> b!740689 m!691859))

(declare-fun m!691861 () Bool)

(assert (=> b!740694 m!691861))

(assert (=> b!740714 m!691837))

(assert (=> b!740714 m!691837))

(declare-fun m!691863 () Bool)

(assert (=> b!740714 m!691863))

(declare-fun m!691865 () Bool)

(assert (=> b!740707 m!691865))

(assert (=> b!740695 m!691837))

(assert (=> b!740695 m!691837))

(assert (=> b!740695 m!691859))

(assert (=> b!740709 m!691837))

(assert (=> b!740709 m!691837))

(declare-fun m!691867 () Bool)

(assert (=> b!740709 m!691867))

(declare-fun m!691869 () Bool)

(assert (=> start!65296 m!691869))

(declare-fun m!691871 () Bool)

(assert (=> start!65296 m!691871))

(declare-fun m!691873 () Bool)

(assert (=> b!740706 m!691873))

(declare-fun m!691875 () Bool)

(assert (=> b!740706 m!691875))

(declare-fun m!691877 () Bool)

(assert (=> b!740691 m!691877))

(declare-fun m!691879 () Bool)

(assert (=> b!740704 m!691879))

(assert (=> b!740700 m!691837))

(assert (=> b!740700 m!691837))

(declare-fun m!691881 () Bool)

(assert (=> b!740700 m!691881))

(assert (=> b!740700 m!691881))

(assert (=> b!740700 m!691837))

(declare-fun m!691883 () Bool)

(assert (=> b!740700 m!691883))

(assert (=> b!740690 m!691837))

(assert (=> b!740690 m!691837))

(declare-fun m!691885 () Bool)

(assert (=> b!740690 m!691885))

(declare-fun m!691887 () Bool)

(assert (=> b!740696 m!691887))

(declare-fun m!691889 () Bool)

(assert (=> b!740696 m!691889))

(declare-fun m!691891 () Bool)

(assert (=> b!740696 m!691891))

(declare-fun m!691893 () Bool)

(assert (=> b!740696 m!691893))

(assert (=> b!740696 m!691889))

(declare-fun m!691895 () Bool)

(assert (=> b!740696 m!691895))

(push 1)

