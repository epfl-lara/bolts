; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64958 () Bool)

(assert start!64958)

(declare-fun b!733087 () Bool)

(declare-fun res!492751 () Bool)

(declare-fun e!410222 () Bool)

(assert (=> b!733087 (=> (not res!492751) (not e!410222))))

(declare-datatypes ((array!41222 0))(
  ( (array!41223 (arr!19724 (Array (_ BitVec 32) (_ BitVec 64))) (size!20145 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41222)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733087 (= res!492751 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733088 () Bool)

(declare-fun e!410219 () Bool)

(assert (=> b!733088 (= e!410222 e!410219)))

(declare-fun res!492752 () Bool)

(assert (=> b!733088 (=> (not res!492752) (not e!410219))))

(declare-datatypes ((SeekEntryResult!7331 0))(
  ( (MissingZero!7331 (index!31691 (_ BitVec 32))) (Found!7331 (index!31692 (_ BitVec 32))) (Intermediate!7331 (undefined!8143 Bool) (index!31693 (_ BitVec 32)) (x!62706 (_ BitVec 32))) (Undefined!7331) (MissingVacant!7331 (index!31694 (_ BitVec 32))) )
))
(declare-fun lt!324929 () SeekEntryResult!7331)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733088 (= res!492752 (or (= lt!324929 (MissingZero!7331 i!1173)) (= lt!324929 (MissingVacant!7331 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41222 (_ BitVec 32)) SeekEntryResult!7331)

(assert (=> b!733088 (= lt!324929 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!410220 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!733089 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41222 (_ BitVec 32)) SeekEntryResult!7331)

(assert (=> b!733089 (= e!410220 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19724 a!3186) j!159) a!3186 mask!3328) (Found!7331 j!159)))))

(declare-fun b!733090 () Bool)

(declare-fun res!492742 () Bool)

(declare-fun e!410223 () Bool)

(assert (=> b!733090 (=> (not res!492742) (not e!410223))))

(assert (=> b!733090 (= res!492742 e!410220)))

(declare-fun c!80553 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733090 (= c!80553 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733091 () Bool)

(declare-fun res!492738 () Bool)

(assert (=> b!733091 (=> (not res!492738) (not e!410219))))

(declare-datatypes ((List!13779 0))(
  ( (Nil!13776) (Cons!13775 (h!14841 (_ BitVec 64)) (t!20102 List!13779)) )
))
(declare-fun arrayNoDuplicates!0 (array!41222 (_ BitVec 32) List!13779) Bool)

(assert (=> b!733091 (= res!492738 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13776))))

(declare-fun b!733093 () Bool)

(declare-fun e!410216 () Bool)

(assert (=> b!733093 (= e!410223 e!410216)))

(declare-fun res!492741 () Bool)

(assert (=> b!733093 (=> (not res!492741) (not e!410216))))

(declare-fun lt!324921 () SeekEntryResult!7331)

(declare-fun lt!324927 () SeekEntryResult!7331)

(assert (=> b!733093 (= res!492741 (= lt!324921 lt!324927))))

(declare-fun lt!324928 () (_ BitVec 64))

(declare-fun lt!324922 () array!41222)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41222 (_ BitVec 32)) SeekEntryResult!7331)

(assert (=> b!733093 (= lt!324927 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324928 lt!324922 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733093 (= lt!324921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324928 mask!3328) lt!324928 lt!324922 mask!3328))))

(assert (=> b!733093 (= lt!324928 (select (store (arr!19724 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!733093 (= lt!324922 (array!41223 (store (arr!19724 a!3186) i!1173 k!2102) (size!20145 a!3186)))))

(declare-fun b!733094 () Bool)

(declare-fun res!492739 () Bool)

(assert (=> b!733094 (=> (not res!492739) (not e!410222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733094 (= res!492739 (validKeyInArray!0 (select (arr!19724 a!3186) j!159)))))

(declare-fun b!733095 () Bool)

(declare-fun lt!324926 () SeekEntryResult!7331)

(declare-fun e!410217 () Bool)

(assert (=> b!733095 (= e!410217 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19724 a!3186) j!159) a!3186 mask!3328) lt!324926))))

(declare-fun b!733096 () Bool)

(assert (=> b!733096 (= e!410219 e!410223)))

(declare-fun res!492753 () Bool)

(assert (=> b!733096 (=> (not res!492753) (not e!410223))))

(declare-fun lt!324923 () SeekEntryResult!7331)

(assert (=> b!733096 (= res!492753 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19724 a!3186) j!159) mask!3328) (select (arr!19724 a!3186) j!159) a!3186 mask!3328) lt!324923))))

(assert (=> b!733096 (= lt!324923 (Intermediate!7331 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733097 () Bool)

(declare-fun res!492736 () Bool)

(assert (=> b!733097 (=> (not res!492736) (not e!410223))))

(assert (=> b!733097 (= res!492736 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19724 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733098 () Bool)

(declare-fun e!410214 () Bool)

(assert (=> b!733098 (= e!410214 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!733099 () Bool)

(declare-fun res!492737 () Bool)

(assert (=> b!733099 (=> res!492737 e!410214)))

(assert (=> b!733099 (= res!492737 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19724 a!3186) j!159) a!3186 mask!3328) (Found!7331 j!159)))))

(declare-fun b!733100 () Bool)

(declare-fun e!410221 () Bool)

(assert (=> b!733100 (= e!410221 e!410217)))

(declare-fun res!492744 () Bool)

(assert (=> b!733100 (=> (not res!492744) (not e!410217))))

(assert (=> b!733100 (= res!492744 (= (seekEntryOrOpen!0 (select (arr!19724 a!3186) j!159) a!3186 mask!3328) lt!324926))))

(assert (=> b!733100 (= lt!324926 (Found!7331 j!159))))

(declare-fun b!733101 () Bool)

(declare-fun res!492745 () Bool)

(assert (=> b!733101 (=> (not res!492745) (not e!410219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41222 (_ BitVec 32)) Bool)

(assert (=> b!733101 (= res!492745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733102 () Bool)

(declare-fun res!492743 () Bool)

(assert (=> b!733102 (=> (not res!492743) (not e!410222))))

(assert (=> b!733102 (= res!492743 (and (= (size!20145 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20145 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20145 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733092 () Bool)

(declare-fun e!410215 () Bool)

(assert (=> b!733092 (= e!410215 e!410214)))

(declare-fun res!492740 () Bool)

(assert (=> b!733092 (=> res!492740 e!410214)))

(assert (=> b!733092 (= res!492740 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324924 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733092 (= lt!324924 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!492750 () Bool)

(assert (=> start!64958 (=> (not res!492750) (not e!410222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64958 (= res!492750 (validMask!0 mask!3328))))

(assert (=> start!64958 e!410222))

(assert (=> start!64958 true))

(declare-fun array_inv!15498 (array!41222) Bool)

(assert (=> start!64958 (array_inv!15498 a!3186)))

(declare-fun b!733103 () Bool)

(declare-fun res!492749 () Bool)

(assert (=> b!733103 (=> (not res!492749) (not e!410222))))

(assert (=> b!733103 (= res!492749 (validKeyInArray!0 k!2102))))

(declare-fun b!733104 () Bool)

(assert (=> b!733104 (= e!410220 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19724 a!3186) j!159) a!3186 mask!3328) lt!324923))))

(declare-fun b!733105 () Bool)

(declare-fun res!492748 () Bool)

(assert (=> b!733105 (=> (not res!492748) (not e!410219))))

(assert (=> b!733105 (= res!492748 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20145 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20145 a!3186))))))

(declare-fun b!733106 () Bool)

(assert (=> b!733106 (= e!410216 (not e!410215))))

(declare-fun res!492746 () Bool)

(assert (=> b!733106 (=> res!492746 e!410215)))

(assert (=> b!733106 (= res!492746 (or (not (is-Intermediate!7331 lt!324927)) (bvsge x!1131 (x!62706 lt!324927))))))

(assert (=> b!733106 e!410221))

(declare-fun res!492747 () Bool)

(assert (=> b!733106 (=> (not res!492747) (not e!410221))))

(assert (=> b!733106 (= res!492747 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24980 0))(
  ( (Unit!24981) )
))
(declare-fun lt!324925 () Unit!24980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41222 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24980)

(assert (=> b!733106 (= lt!324925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64958 res!492750) b!733102))

(assert (= (and b!733102 res!492743) b!733094))

(assert (= (and b!733094 res!492739) b!733103))

(assert (= (and b!733103 res!492749) b!733087))

(assert (= (and b!733087 res!492751) b!733088))

(assert (= (and b!733088 res!492752) b!733101))

(assert (= (and b!733101 res!492745) b!733091))

(assert (= (and b!733091 res!492738) b!733105))

(assert (= (and b!733105 res!492748) b!733096))

(assert (= (and b!733096 res!492753) b!733097))

(assert (= (and b!733097 res!492736) b!733090))

(assert (= (and b!733090 c!80553) b!733104))

(assert (= (and b!733090 (not c!80553)) b!733089))

(assert (= (and b!733090 res!492742) b!733093))

(assert (= (and b!733093 res!492741) b!733106))

(assert (= (and b!733106 res!492747) b!733100))

(assert (= (and b!733100 res!492744) b!733095))

(assert (= (and b!733106 (not res!492746)) b!733092))

(assert (= (and b!733092 (not res!492740)) b!733099))

(assert (= (and b!733099 (not res!492737)) b!733098))

(declare-fun m!686113 () Bool)

(assert (=> b!733092 m!686113))

(declare-fun m!686115 () Bool)

(assert (=> b!733104 m!686115))

(assert (=> b!733104 m!686115))

(declare-fun m!686117 () Bool)

(assert (=> b!733104 m!686117))

(declare-fun m!686119 () Bool)

(assert (=> b!733106 m!686119))

(declare-fun m!686121 () Bool)

(assert (=> b!733106 m!686121))

(declare-fun m!686123 () Bool)

(assert (=> b!733087 m!686123))

(assert (=> b!733094 m!686115))

(assert (=> b!733094 m!686115))

(declare-fun m!686125 () Bool)

(assert (=> b!733094 m!686125))

(assert (=> b!733095 m!686115))

(assert (=> b!733095 m!686115))

(declare-fun m!686127 () Bool)

(assert (=> b!733095 m!686127))

(assert (=> b!733089 m!686115))

(assert (=> b!733089 m!686115))

(declare-fun m!686129 () Bool)

(assert (=> b!733089 m!686129))

(declare-fun m!686131 () Bool)

(assert (=> b!733097 m!686131))

(assert (=> b!733100 m!686115))

(assert (=> b!733100 m!686115))

(declare-fun m!686133 () Bool)

(assert (=> b!733100 m!686133))

(declare-fun m!686135 () Bool)

(assert (=> b!733103 m!686135))

(assert (=> b!733099 m!686115))

(assert (=> b!733099 m!686115))

(assert (=> b!733099 m!686129))

(declare-fun m!686137 () Bool)

(assert (=> b!733091 m!686137))

(declare-fun m!686139 () Bool)

(assert (=> b!733101 m!686139))

(declare-fun m!686141 () Bool)

(assert (=> start!64958 m!686141))

(declare-fun m!686143 () Bool)

(assert (=> start!64958 m!686143))

(assert (=> b!733096 m!686115))

(assert (=> b!733096 m!686115))

(declare-fun m!686145 () Bool)

(assert (=> b!733096 m!686145))

(assert (=> b!733096 m!686145))

(assert (=> b!733096 m!686115))

(declare-fun m!686147 () Bool)

(assert (=> b!733096 m!686147))

(declare-fun m!686149 () Bool)

(assert (=> b!733093 m!686149))

(declare-fun m!686151 () Bool)

(assert (=> b!733093 m!686151))

(declare-fun m!686153 () Bool)

(assert (=> b!733093 m!686153))

(declare-fun m!686155 () Bool)

(assert (=> b!733093 m!686155))

(assert (=> b!733093 m!686153))

(declare-fun m!686157 () Bool)

(assert (=> b!733093 m!686157))

(declare-fun m!686159 () Bool)

(assert (=> b!733088 m!686159))

(push 1)

(assert (not b!733099))

(assert (not b!733087))

(assert (not b!733088))

