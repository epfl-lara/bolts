; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66828 () Bool)

(assert start!66828)

(declare-fun b!770585 () Bool)

(declare-fun res!521409 () Bool)

(declare-fun e!429040 () Bool)

(assert (=> b!770585 (=> (not res!521409) (not e!429040))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770585 (= res!521409 (validKeyInArray!0 k0!2102))))

(declare-fun b!770587 () Bool)

(declare-fun res!521418 () Bool)

(declare-fun e!429046 () Bool)

(assert (=> b!770587 (=> (not res!521418) (not e!429046))))

(declare-datatypes ((array!42345 0))(
  ( (array!42346 (arr!20269 (Array (_ BitVec 32) (_ BitVec 64))) (size!20690 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42345)

(declare-datatypes ((List!14324 0))(
  ( (Nil!14321) (Cons!14320 (h!15419 (_ BitVec 64)) (t!20647 List!14324)) )
))
(declare-fun arrayNoDuplicates!0 (array!42345 (_ BitVec 32) List!14324) Bool)

(assert (=> b!770587 (= res!521418 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14321))))

(declare-fun b!770588 () Bool)

(declare-fun res!521414 () Bool)

(declare-fun e!429042 () Bool)

(assert (=> b!770588 (=> (not res!521414) (not e!429042))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770588 (= res!521414 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20269 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770589 () Bool)

(declare-fun res!521412 () Bool)

(assert (=> b!770589 (=> (not res!521412) (not e!429040))))

(declare-fun arrayContainsKey!0 (array!42345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770589 (= res!521412 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770590 () Bool)

(declare-fun res!521405 () Bool)

(assert (=> b!770590 (=> (not res!521405) (not e!429040))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!770590 (= res!521405 (validKeyInArray!0 (select (arr!20269 a!3186) j!159)))))

(declare-fun b!770591 () Bool)

(declare-fun e!429048 () Bool)

(assert (=> b!770591 (= e!429042 e!429048)))

(declare-fun res!521413 () Bool)

(assert (=> b!770591 (=> (not res!521413) (not e!429048))))

(declare-datatypes ((SeekEntryResult!7876 0))(
  ( (MissingZero!7876 (index!33871 (_ BitVec 32))) (Found!7876 (index!33872 (_ BitVec 32))) (Intermediate!7876 (undefined!8688 Bool) (index!33873 (_ BitVec 32)) (x!64824 (_ BitVec 32))) (Undefined!7876) (MissingVacant!7876 (index!33874 (_ BitVec 32))) )
))
(declare-fun lt!343018 () SeekEntryResult!7876)

(declare-fun lt!343015 () SeekEntryResult!7876)

(assert (=> b!770591 (= res!521413 (= lt!343018 lt!343015))))

(declare-fun lt!343021 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!343020 () array!42345)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42345 (_ BitVec 32)) SeekEntryResult!7876)

(assert (=> b!770591 (= lt!343015 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343021 lt!343020 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770591 (= lt!343018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343021 mask!3328) lt!343021 lt!343020 mask!3328))))

(assert (=> b!770591 (= lt!343021 (select (store (arr!20269 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!770591 (= lt!343020 (array!42346 (store (arr!20269 a!3186) i!1173 k0!2102) (size!20690 a!3186)))))

(declare-fun b!770592 () Bool)

(declare-fun res!521407 () Bool)

(assert (=> b!770592 (=> (not res!521407) (not e!429046))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770592 (= res!521407 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20690 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20690 a!3186))))))

(declare-fun b!770593 () Bool)

(declare-datatypes ((Unit!26540 0))(
  ( (Unit!26541) )
))
(declare-fun e!429045 () Unit!26540)

(declare-fun Unit!26542 () Unit!26540)

(assert (=> b!770593 (= e!429045 Unit!26542)))

(declare-fun lt!343023 () SeekEntryResult!7876)

(declare-fun lt!343022 () (_ BitVec 32))

(assert (=> b!770593 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343022 (select (arr!20269 a!3186) j!159) a!3186 mask!3328) lt!343023)))

(declare-fun b!770594 () Bool)

(declare-fun Unit!26543 () Unit!26540)

(assert (=> b!770594 (= e!429045 Unit!26543)))

(declare-fun lt!343024 () SeekEntryResult!7876)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42345 (_ BitVec 32)) SeekEntryResult!7876)

(assert (=> b!770594 (= lt!343024 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20269 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770594 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343022 resIntermediateIndex!5 (select (arr!20269 a!3186) j!159) a!3186 mask!3328) (Found!7876 j!159))))

(declare-fun b!770595 () Bool)

(declare-fun res!521404 () Bool)

(assert (=> b!770595 (=> (not res!521404) (not e!429046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42345 (_ BitVec 32)) Bool)

(assert (=> b!770595 (= res!521404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!429049 () Bool)

(declare-fun b!770596 () Bool)

(assert (=> b!770596 (= e!429049 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20269 a!3186) j!159) a!3186 mask!3328) (Found!7876 j!159)))))

(declare-fun b!770597 () Bool)

(assert (=> b!770597 (= e!429049 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20269 a!3186) j!159) a!3186 mask!3328) lt!343023))))

(declare-fun b!770598 () Bool)

(assert (=> b!770598 (= e!429046 e!429042)))

(declare-fun res!521411 () Bool)

(assert (=> b!770598 (=> (not res!521411) (not e!429042))))

(assert (=> b!770598 (= res!521411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20269 a!3186) j!159) mask!3328) (select (arr!20269 a!3186) j!159) a!3186 mask!3328) lt!343023))))

(assert (=> b!770598 (= lt!343023 (Intermediate!7876 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!343014 () SeekEntryResult!7876)

(declare-fun b!770599 () Bool)

(declare-fun e!429047 () Bool)

(assert (=> b!770599 (= e!429047 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20269 a!3186) j!159) a!3186 mask!3328) lt!343014))))

(declare-fun b!770600 () Bool)

(declare-fun e!429043 () Bool)

(assert (=> b!770600 (= e!429048 (not e!429043))))

(declare-fun res!521416 () Bool)

(assert (=> b!770600 (=> res!521416 e!429043)))

(get-info :version)

(assert (=> b!770600 (= res!521416 (or (not ((_ is Intermediate!7876) lt!343015)) (bvsge x!1131 (x!64824 lt!343015))))))

(declare-fun e!429041 () Bool)

(assert (=> b!770600 e!429041))

(declare-fun res!521415 () Bool)

(assert (=> b!770600 (=> (not res!521415) (not e!429041))))

(assert (=> b!770600 (= res!521415 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343019 () Unit!26540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26540)

(assert (=> b!770600 (= lt!343019 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!521417 () Bool)

(assert (=> start!66828 (=> (not res!521417) (not e!429040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66828 (= res!521417 (validMask!0 mask!3328))))

(assert (=> start!66828 e!429040))

(assert (=> start!66828 true))

(declare-fun array_inv!16043 (array!42345) Bool)

(assert (=> start!66828 (array_inv!16043 a!3186)))

(declare-fun b!770586 () Bool)

(assert (=> b!770586 (= e!429040 e!429046)))

(declare-fun res!521419 () Bool)

(assert (=> b!770586 (=> (not res!521419) (not e!429046))))

(declare-fun lt!343016 () SeekEntryResult!7876)

(assert (=> b!770586 (= res!521419 (or (= lt!343016 (MissingZero!7876 i!1173)) (= lt!343016 (MissingVacant!7876 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42345 (_ BitVec 32)) SeekEntryResult!7876)

(assert (=> b!770586 (= lt!343016 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!770601 () Bool)

(assert (=> b!770601 (= e!429043 true)))

(declare-fun lt!343017 () Unit!26540)

(assert (=> b!770601 (= lt!343017 e!429045)))

(declare-fun c!84986 () Bool)

(assert (=> b!770601 (= c!84986 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770601 (= lt!343022 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770602 () Bool)

(assert (=> b!770602 (= e!429041 e!429047)))

(declare-fun res!521408 () Bool)

(assert (=> b!770602 (=> (not res!521408) (not e!429047))))

(assert (=> b!770602 (= res!521408 (= (seekEntryOrOpen!0 (select (arr!20269 a!3186) j!159) a!3186 mask!3328) lt!343014))))

(assert (=> b!770602 (= lt!343014 (Found!7876 j!159))))

(declare-fun b!770603 () Bool)

(declare-fun res!521406 () Bool)

(assert (=> b!770603 (=> (not res!521406) (not e!429040))))

(assert (=> b!770603 (= res!521406 (and (= (size!20690 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20690 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20690 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770604 () Bool)

(declare-fun res!521410 () Bool)

(assert (=> b!770604 (=> (not res!521410) (not e!429042))))

(assert (=> b!770604 (= res!521410 e!429049)))

(declare-fun c!84987 () Bool)

(assert (=> b!770604 (= c!84987 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66828 res!521417) b!770603))

(assert (= (and b!770603 res!521406) b!770590))

(assert (= (and b!770590 res!521405) b!770585))

(assert (= (and b!770585 res!521409) b!770589))

(assert (= (and b!770589 res!521412) b!770586))

(assert (= (and b!770586 res!521419) b!770595))

(assert (= (and b!770595 res!521404) b!770587))

(assert (= (and b!770587 res!521418) b!770592))

(assert (= (and b!770592 res!521407) b!770598))

(assert (= (and b!770598 res!521411) b!770588))

(assert (= (and b!770588 res!521414) b!770604))

(assert (= (and b!770604 c!84987) b!770597))

(assert (= (and b!770604 (not c!84987)) b!770596))

(assert (= (and b!770604 res!521410) b!770591))

(assert (= (and b!770591 res!521413) b!770600))

(assert (= (and b!770600 res!521415) b!770602))

(assert (= (and b!770602 res!521408) b!770599))

(assert (= (and b!770600 (not res!521416)) b!770601))

(assert (= (and b!770601 c!84986) b!770593))

(assert (= (and b!770601 (not c!84986)) b!770594))

(declare-fun m!715907 () Bool)

(assert (=> b!770596 m!715907))

(assert (=> b!770596 m!715907))

(declare-fun m!715909 () Bool)

(assert (=> b!770596 m!715909))

(declare-fun m!715911 () Bool)

(assert (=> b!770600 m!715911))

(declare-fun m!715913 () Bool)

(assert (=> b!770600 m!715913))

(declare-fun m!715915 () Bool)

(assert (=> b!770591 m!715915))

(declare-fun m!715917 () Bool)

(assert (=> b!770591 m!715917))

(declare-fun m!715919 () Bool)

(assert (=> b!770591 m!715919))

(declare-fun m!715921 () Bool)

(assert (=> b!770591 m!715921))

(assert (=> b!770591 m!715915))

(declare-fun m!715923 () Bool)

(assert (=> b!770591 m!715923))

(assert (=> b!770590 m!715907))

(assert (=> b!770590 m!715907))

(declare-fun m!715925 () Bool)

(assert (=> b!770590 m!715925))

(declare-fun m!715927 () Bool)

(assert (=> b!770589 m!715927))

(declare-fun m!715929 () Bool)

(assert (=> b!770587 m!715929))

(assert (=> b!770593 m!715907))

(assert (=> b!770593 m!715907))

(declare-fun m!715931 () Bool)

(assert (=> b!770593 m!715931))

(assert (=> b!770598 m!715907))

(assert (=> b!770598 m!715907))

(declare-fun m!715933 () Bool)

(assert (=> b!770598 m!715933))

(assert (=> b!770598 m!715933))

(assert (=> b!770598 m!715907))

(declare-fun m!715935 () Bool)

(assert (=> b!770598 m!715935))

(assert (=> b!770597 m!715907))

(assert (=> b!770597 m!715907))

(declare-fun m!715937 () Bool)

(assert (=> b!770597 m!715937))

(assert (=> b!770602 m!715907))

(assert (=> b!770602 m!715907))

(declare-fun m!715939 () Bool)

(assert (=> b!770602 m!715939))

(declare-fun m!715941 () Bool)

(assert (=> b!770585 m!715941))

(declare-fun m!715943 () Bool)

(assert (=> b!770588 m!715943))

(declare-fun m!715945 () Bool)

(assert (=> b!770601 m!715945))

(declare-fun m!715947 () Bool)

(assert (=> start!66828 m!715947))

(declare-fun m!715949 () Bool)

(assert (=> start!66828 m!715949))

(declare-fun m!715951 () Bool)

(assert (=> b!770586 m!715951))

(assert (=> b!770599 m!715907))

(assert (=> b!770599 m!715907))

(declare-fun m!715953 () Bool)

(assert (=> b!770599 m!715953))

(declare-fun m!715955 () Bool)

(assert (=> b!770595 m!715955))

(assert (=> b!770594 m!715907))

(assert (=> b!770594 m!715907))

(assert (=> b!770594 m!715909))

(assert (=> b!770594 m!715907))

(declare-fun m!715957 () Bool)

(assert (=> b!770594 m!715957))

(check-sat (not b!770597) (not b!770599) (not b!770587) (not b!770602) (not b!770591) (not b!770600) (not b!770601) (not b!770595) (not start!66828) (not b!770589) (not b!770598) (not b!770596) (not b!770585) (not b!770594) (not b!770593) (not b!770590) (not b!770586))
(check-sat)
