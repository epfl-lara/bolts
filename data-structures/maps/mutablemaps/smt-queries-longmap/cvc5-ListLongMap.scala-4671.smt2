; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64960 () Bool)

(assert start!64960)

(declare-fun b!733145 () Bool)

(declare-fun res!492791 () Bool)

(declare-fun e!410251 () Bool)

(assert (=> b!733145 (=> (not res!492791) (not e!410251))))

(declare-fun e!410245 () Bool)

(assert (=> b!733145 (= res!492791 e!410245)))

(declare-fun c!80556 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733145 (= c!80556 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733146 () Bool)

(declare-fun res!492794 () Bool)

(assert (=> b!733146 (=> (not res!492794) (not e!410251))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41224 0))(
  ( (array!41225 (arr!19725 (Array (_ BitVec 32) (_ BitVec 64))) (size!20146 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41224)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733146 (= res!492794 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19725 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733147 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7332 0))(
  ( (MissingZero!7332 (index!31695 (_ BitVec 32))) (Found!7332 (index!31696 (_ BitVec 32))) (Intermediate!7332 (undefined!8144 Bool) (index!31697 (_ BitVec 32)) (x!62715 (_ BitVec 32))) (Undefined!7332) (MissingVacant!7332 (index!31698 (_ BitVec 32))) )
))
(declare-fun lt!324951 () SeekEntryResult!7332)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41224 (_ BitVec 32)) SeekEntryResult!7332)

(assert (=> b!733147 (= e!410245 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19725 a!3186) j!159) a!3186 mask!3328) lt!324951))))

(declare-fun b!733148 () Bool)

(declare-fun e!410247 () Bool)

(declare-fun e!410253 () Bool)

(assert (=> b!733148 (= e!410247 e!410253)))

(declare-fun res!492793 () Bool)

(assert (=> b!733148 (=> (not res!492793) (not e!410253))))

(declare-fun lt!324954 () SeekEntryResult!7332)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41224 (_ BitVec 32)) SeekEntryResult!7332)

(assert (=> b!733148 (= res!492793 (= (seekEntryOrOpen!0 (select (arr!19725 a!3186) j!159) a!3186 mask!3328) lt!324954))))

(assert (=> b!733148 (= lt!324954 (Found!7332 j!159))))

(declare-fun b!733149 () Bool)

(declare-fun e!410249 () Bool)

(declare-fun e!410250 () Bool)

(assert (=> b!733149 (= e!410249 e!410250)))

(declare-fun res!492789 () Bool)

(assert (=> b!733149 (=> res!492789 e!410250)))

(assert (=> b!733149 (= res!492789 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324950 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733149 (= lt!324950 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!492796 () Bool)

(declare-fun e!410244 () Bool)

(assert (=> start!64960 (=> (not res!492796) (not e!410244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64960 (= res!492796 (validMask!0 mask!3328))))

(assert (=> start!64960 e!410244))

(assert (=> start!64960 true))

(declare-fun array_inv!15499 (array!41224) Bool)

(assert (=> start!64960 (array_inv!15499 a!3186)))

(declare-fun b!733150 () Bool)

(declare-fun res!492804 () Bool)

(assert (=> b!733150 (=> (not res!492804) (not e!410244))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733150 (= res!492804 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733151 () Bool)

(declare-fun e!410252 () Bool)

(assert (=> b!733151 (= e!410252 (not e!410249))))

(declare-fun res!492792 () Bool)

(assert (=> b!733151 (=> res!492792 e!410249)))

(declare-fun lt!324957 () SeekEntryResult!7332)

(assert (=> b!733151 (= res!492792 (or (not (is-Intermediate!7332 lt!324957)) (bvsge x!1131 (x!62715 lt!324957))))))

(assert (=> b!733151 e!410247))

(declare-fun res!492800 () Bool)

(assert (=> b!733151 (=> (not res!492800) (not e!410247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41224 (_ BitVec 32)) Bool)

(assert (=> b!733151 (= res!492800 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24982 0))(
  ( (Unit!24983) )
))
(declare-fun lt!324953 () Unit!24982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24982)

(assert (=> b!733151 (= lt!324953 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733152 () Bool)

(declare-fun res!492803 () Bool)

(assert (=> b!733152 (=> (not res!492803) (not e!410244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733152 (= res!492803 (validKeyInArray!0 k!2102))))

(declare-fun b!733153 () Bool)

(declare-fun res!492795 () Bool)

(assert (=> b!733153 (=> (not res!492795) (not e!410244))))

(assert (=> b!733153 (= res!492795 (and (= (size!20146 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20146 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20146 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733154 () Bool)

(declare-fun res!492797 () Bool)

(declare-fun e!410246 () Bool)

(assert (=> b!733154 (=> (not res!492797) (not e!410246))))

(declare-datatypes ((List!13780 0))(
  ( (Nil!13777) (Cons!13776 (h!14842 (_ BitVec 64)) (t!20103 List!13780)) )
))
(declare-fun arrayNoDuplicates!0 (array!41224 (_ BitVec 32) List!13780) Bool)

(assert (=> b!733154 (= res!492797 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13777))))

(declare-fun b!733155 () Bool)

(declare-fun res!492799 () Bool)

(assert (=> b!733155 (=> (not res!492799) (not e!410244))))

(assert (=> b!733155 (= res!492799 (validKeyInArray!0 (select (arr!19725 a!3186) j!159)))))

(declare-fun b!733156 () Bool)

(assert (=> b!733156 (= e!410251 e!410252)))

(declare-fun res!492801 () Bool)

(assert (=> b!733156 (=> (not res!492801) (not e!410252))))

(declare-fun lt!324958 () SeekEntryResult!7332)

(assert (=> b!733156 (= res!492801 (= lt!324958 lt!324957))))

(declare-fun lt!324956 () array!41224)

(declare-fun lt!324955 () (_ BitVec 64))

(assert (=> b!733156 (= lt!324957 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324955 lt!324956 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733156 (= lt!324958 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324955 mask!3328) lt!324955 lt!324956 mask!3328))))

(assert (=> b!733156 (= lt!324955 (select (store (arr!19725 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!733156 (= lt!324956 (array!41225 (store (arr!19725 a!3186) i!1173 k!2102) (size!20146 a!3186)))))

(declare-fun b!733157 () Bool)

(declare-fun res!492798 () Bool)

(assert (=> b!733157 (=> (not res!492798) (not e!410246))))

(assert (=> b!733157 (= res!492798 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20146 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20146 a!3186))))))

(declare-fun b!733158 () Bool)

(assert (=> b!733158 (= e!410246 e!410251)))

(declare-fun res!492790 () Bool)

(assert (=> b!733158 (=> (not res!492790) (not e!410251))))

(assert (=> b!733158 (= res!492790 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19725 a!3186) j!159) mask!3328) (select (arr!19725 a!3186) j!159) a!3186 mask!3328) lt!324951))))

(assert (=> b!733158 (= lt!324951 (Intermediate!7332 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733159 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41224 (_ BitVec 32)) SeekEntryResult!7332)

(assert (=> b!733159 (= e!410253 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19725 a!3186) j!159) a!3186 mask!3328) lt!324954))))

(declare-fun b!733160 () Bool)

(declare-fun res!492802 () Bool)

(assert (=> b!733160 (=> (not res!492802) (not e!410246))))

(assert (=> b!733160 (= res!492802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733161 () Bool)

(assert (=> b!733161 (= e!410245 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19725 a!3186) j!159) a!3186 mask!3328) (Found!7332 j!159)))))

(declare-fun b!733162 () Bool)

(assert (=> b!733162 (= e!410250 true)))

(declare-fun lt!324952 () SeekEntryResult!7332)

(assert (=> b!733162 (= lt!324952 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19725 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733163 () Bool)

(assert (=> b!733163 (= e!410244 e!410246)))

(declare-fun res!492788 () Bool)

(assert (=> b!733163 (=> (not res!492788) (not e!410246))))

(declare-fun lt!324959 () SeekEntryResult!7332)

(assert (=> b!733163 (= res!492788 (or (= lt!324959 (MissingZero!7332 i!1173)) (= lt!324959 (MissingVacant!7332 i!1173))))))

(assert (=> b!733163 (= lt!324959 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64960 res!492796) b!733153))

(assert (= (and b!733153 res!492795) b!733155))

(assert (= (and b!733155 res!492799) b!733152))

(assert (= (and b!733152 res!492803) b!733150))

(assert (= (and b!733150 res!492804) b!733163))

(assert (= (and b!733163 res!492788) b!733160))

(assert (= (and b!733160 res!492802) b!733154))

(assert (= (and b!733154 res!492797) b!733157))

(assert (= (and b!733157 res!492798) b!733158))

(assert (= (and b!733158 res!492790) b!733146))

(assert (= (and b!733146 res!492794) b!733145))

(assert (= (and b!733145 c!80556) b!733147))

(assert (= (and b!733145 (not c!80556)) b!733161))

(assert (= (and b!733145 res!492791) b!733156))

(assert (= (and b!733156 res!492801) b!733151))

(assert (= (and b!733151 res!492800) b!733148))

(assert (= (and b!733148 res!492793) b!733159))

(assert (= (and b!733151 (not res!492792)) b!733149))

(assert (= (and b!733149 (not res!492789)) b!733162))

(declare-fun m!686161 () Bool)

(assert (=> b!733147 m!686161))

(assert (=> b!733147 m!686161))

(declare-fun m!686163 () Bool)

(assert (=> b!733147 m!686163))

(declare-fun m!686165 () Bool)

(assert (=> b!733156 m!686165))

(declare-fun m!686167 () Bool)

(assert (=> b!733156 m!686167))

(assert (=> b!733156 m!686165))

(declare-fun m!686169 () Bool)

(assert (=> b!733156 m!686169))

(declare-fun m!686171 () Bool)

(assert (=> b!733156 m!686171))

(declare-fun m!686173 () Bool)

(assert (=> b!733156 m!686173))

(declare-fun m!686175 () Bool)

(assert (=> b!733151 m!686175))

(declare-fun m!686177 () Bool)

(assert (=> b!733151 m!686177))

(assert (=> b!733162 m!686161))

(assert (=> b!733162 m!686161))

(declare-fun m!686179 () Bool)

(assert (=> b!733162 m!686179))

(declare-fun m!686181 () Bool)

(assert (=> b!733163 m!686181))

(declare-fun m!686183 () Bool)

(assert (=> b!733160 m!686183))

(assert (=> b!733161 m!686161))

(assert (=> b!733161 m!686161))

(assert (=> b!733161 m!686179))

(assert (=> b!733159 m!686161))

(assert (=> b!733159 m!686161))

(declare-fun m!686185 () Bool)

(assert (=> b!733159 m!686185))

(declare-fun m!686187 () Bool)

(assert (=> b!733154 m!686187))

(assert (=> b!733158 m!686161))

(assert (=> b!733158 m!686161))

(declare-fun m!686189 () Bool)

(assert (=> b!733158 m!686189))

(assert (=> b!733158 m!686189))

(assert (=> b!733158 m!686161))

(declare-fun m!686191 () Bool)

(assert (=> b!733158 m!686191))

(assert (=> b!733148 m!686161))

(assert (=> b!733148 m!686161))

(declare-fun m!686193 () Bool)

(assert (=> b!733148 m!686193))

(declare-fun m!686195 () Bool)

(assert (=> b!733150 m!686195))

(declare-fun m!686197 () Bool)

(assert (=> b!733149 m!686197))

(assert (=> b!733155 m!686161))

(assert (=> b!733155 m!686161))

(declare-fun m!686199 () Bool)

(assert (=> b!733155 m!686199))

(declare-fun m!686201 () Bool)

(assert (=> b!733146 m!686201))

(declare-fun m!686203 () Bool)

(assert (=> b!733152 m!686203))

(declare-fun m!686205 () Bool)

(assert (=> start!64960 m!686205))

(declare-fun m!686207 () Bool)

(assert (=> start!64960 m!686207))

(push 1)

