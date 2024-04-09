; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66842 () Bool)

(assert start!66842)

(declare-fun e!429255 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42359 0))(
  ( (array!42360 (arr!20276 (Array (_ BitVec 32) (_ BitVec 64))) (size!20697 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42359)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!771005 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7883 0))(
  ( (MissingZero!7883 (index!33899 (_ BitVec 32))) (Found!7883 (index!33900 (_ BitVec 32))) (Intermediate!7883 (undefined!8695 Bool) (index!33901 (_ BitVec 32)) (x!64847 (_ BitVec 32))) (Undefined!7883) (MissingVacant!7883 (index!33902 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42359 (_ BitVec 32)) SeekEntryResult!7883)

(assert (=> b!771005 (= e!429255 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20276 a!3186) j!159) a!3186 mask!3328) (Found!7883 j!159)))))

(declare-fun b!771006 () Bool)

(declare-fun res!521753 () Bool)

(declare-fun e!429252 () Bool)

(assert (=> b!771006 (=> (not res!521753) (not e!429252))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!771006 (= res!521753 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20697 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20697 a!3186))))))

(declare-fun b!771007 () Bool)

(declare-fun res!521744 () Bool)

(assert (=> b!771007 (=> (not res!521744) (not e!429252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42359 (_ BitVec 32)) Bool)

(assert (=> b!771007 (= res!521744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!771008 () Bool)

(declare-datatypes ((Unit!26568 0))(
  ( (Unit!26569) )
))
(declare-fun e!429257 () Unit!26568)

(declare-fun Unit!26570 () Unit!26568)

(assert (=> b!771008 (= e!429257 Unit!26570)))

(declare-fun lt!343250 () (_ BitVec 32))

(declare-fun lt!343252 () SeekEntryResult!7883)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42359 (_ BitVec 32)) SeekEntryResult!7883)

(assert (=> b!771008 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343250 (select (arr!20276 a!3186) j!159) a!3186 mask!3328) lt!343252)))

(declare-fun b!771009 () Bool)

(declare-fun e!429253 () Bool)

(assert (=> b!771009 (= e!429252 e!429253)))

(declare-fun res!521747 () Bool)

(assert (=> b!771009 (=> (not res!521747) (not e!429253))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771009 (= res!521747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20276 a!3186) j!159) mask!3328) (select (arr!20276 a!3186) j!159) a!3186 mask!3328) lt!343252))))

(assert (=> b!771009 (= lt!343252 (Intermediate!7883 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!521742 () Bool)

(declare-fun e!429258 () Bool)

(assert (=> start!66842 (=> (not res!521742) (not e!429258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66842 (= res!521742 (validMask!0 mask!3328))))

(assert (=> start!66842 e!429258))

(assert (=> start!66842 true))

(declare-fun array_inv!16050 (array!42359) Bool)

(assert (=> start!66842 (array_inv!16050 a!3186)))

(declare-fun b!771010 () Bool)

(assert (=> b!771010 (= e!429255 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20276 a!3186) j!159) a!3186 mask!3328) lt!343252))))

(declare-fun b!771011 () Bool)

(declare-fun e!429251 () Bool)

(assert (=> b!771011 (= e!429251 true)))

(declare-fun lt!343247 () Unit!26568)

(assert (=> b!771011 (= lt!343247 e!429257)))

(declare-fun c!85028 () Bool)

(assert (=> b!771011 (= c!85028 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771011 (= lt!343250 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771012 () Bool)

(declare-fun res!521755 () Bool)

(assert (=> b!771012 (=> (not res!521755) (not e!429253))))

(assert (=> b!771012 (= res!521755 e!429255)))

(declare-fun c!85029 () Bool)

(assert (=> b!771012 (= c!85029 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!771013 () Bool)

(declare-fun res!521754 () Bool)

(assert (=> b!771013 (=> (not res!521754) (not e!429252))))

(declare-datatypes ((List!14331 0))(
  ( (Nil!14328) (Cons!14327 (h!15426 (_ BitVec 64)) (t!20654 List!14331)) )
))
(declare-fun arrayNoDuplicates!0 (array!42359 (_ BitVec 32) List!14331) Bool)

(assert (=> b!771013 (= res!521754 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14328))))

(declare-fun b!771014 () Bool)

(declare-fun res!521748 () Bool)

(assert (=> b!771014 (=> (not res!521748) (not e!429258))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771014 (= res!521748 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771015 () Bool)

(declare-fun e!429259 () Bool)

(assert (=> b!771015 (= e!429253 e!429259)))

(declare-fun res!521746 () Bool)

(assert (=> b!771015 (=> (not res!521746) (not e!429259))))

(declare-fun lt!343253 () SeekEntryResult!7883)

(declare-fun lt!343255 () SeekEntryResult!7883)

(assert (=> b!771015 (= res!521746 (= lt!343253 lt!343255))))

(declare-fun lt!343245 () (_ BitVec 64))

(declare-fun lt!343254 () array!42359)

(assert (=> b!771015 (= lt!343255 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343245 lt!343254 mask!3328))))

(assert (=> b!771015 (= lt!343253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343245 mask!3328) lt!343245 lt!343254 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771015 (= lt!343245 (select (store (arr!20276 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!771015 (= lt!343254 (array!42360 (store (arr!20276 a!3186) i!1173 k!2102) (size!20697 a!3186)))))

(declare-fun b!771016 () Bool)

(declare-fun res!521740 () Bool)

(assert (=> b!771016 (=> (not res!521740) (not e!429258))))

(assert (=> b!771016 (= res!521740 (and (= (size!20697 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20697 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20697 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!429254 () Bool)

(declare-fun lt!343246 () SeekEntryResult!7883)

(declare-fun b!771017 () Bool)

(assert (=> b!771017 (= e!429254 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20276 a!3186) j!159) a!3186 mask!3328) lt!343246))))

(declare-fun b!771018 () Bool)

(assert (=> b!771018 (= e!429258 e!429252)))

(declare-fun res!521745 () Bool)

(assert (=> b!771018 (=> (not res!521745) (not e!429252))))

(declare-fun lt!343251 () SeekEntryResult!7883)

(assert (=> b!771018 (= res!521745 (or (= lt!343251 (MissingZero!7883 i!1173)) (= lt!343251 (MissingVacant!7883 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42359 (_ BitVec 32)) SeekEntryResult!7883)

(assert (=> b!771018 (= lt!343251 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!771019 () Bool)

(declare-fun res!521752 () Bool)

(assert (=> b!771019 (=> (not res!521752) (not e!429253))))

(assert (=> b!771019 (= res!521752 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20276 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771020 () Bool)

(assert (=> b!771020 (= e!429259 (not e!429251))))

(declare-fun res!521749 () Bool)

(assert (=> b!771020 (=> res!521749 e!429251)))

(assert (=> b!771020 (= res!521749 (or (not (is-Intermediate!7883 lt!343255)) (bvsge x!1131 (x!64847 lt!343255))))))

(declare-fun e!429250 () Bool)

(assert (=> b!771020 e!429250))

(declare-fun res!521743 () Bool)

(assert (=> b!771020 (=> (not res!521743) (not e!429250))))

(assert (=> b!771020 (= res!521743 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343248 () Unit!26568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26568)

(assert (=> b!771020 (= lt!343248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!771021 () Bool)

(declare-fun res!521741 () Bool)

(assert (=> b!771021 (=> (not res!521741) (not e!429258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771021 (= res!521741 (validKeyInArray!0 k!2102))))

(declare-fun b!771022 () Bool)

(declare-fun res!521750 () Bool)

(assert (=> b!771022 (=> (not res!521750) (not e!429258))))

(assert (=> b!771022 (= res!521750 (validKeyInArray!0 (select (arr!20276 a!3186) j!159)))))

(declare-fun b!771023 () Bool)

(declare-fun Unit!26571 () Unit!26568)

(assert (=> b!771023 (= e!429257 Unit!26571)))

(declare-fun lt!343249 () SeekEntryResult!7883)

(assert (=> b!771023 (= lt!343249 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20276 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!771023 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343250 resIntermediateIndex!5 (select (arr!20276 a!3186) j!159) a!3186 mask!3328) (Found!7883 j!159))))

(declare-fun b!771024 () Bool)

(assert (=> b!771024 (= e!429250 e!429254)))

(declare-fun res!521751 () Bool)

(assert (=> b!771024 (=> (not res!521751) (not e!429254))))

(assert (=> b!771024 (= res!521751 (= (seekEntryOrOpen!0 (select (arr!20276 a!3186) j!159) a!3186 mask!3328) lt!343246))))

(assert (=> b!771024 (= lt!343246 (Found!7883 j!159))))

(assert (= (and start!66842 res!521742) b!771016))

(assert (= (and b!771016 res!521740) b!771022))

(assert (= (and b!771022 res!521750) b!771021))

(assert (= (and b!771021 res!521741) b!771014))

(assert (= (and b!771014 res!521748) b!771018))

(assert (= (and b!771018 res!521745) b!771007))

(assert (= (and b!771007 res!521744) b!771013))

(assert (= (and b!771013 res!521754) b!771006))

(assert (= (and b!771006 res!521753) b!771009))

(assert (= (and b!771009 res!521747) b!771019))

(assert (= (and b!771019 res!521752) b!771012))

(assert (= (and b!771012 c!85029) b!771010))

(assert (= (and b!771012 (not c!85029)) b!771005))

(assert (= (and b!771012 res!521755) b!771015))

(assert (= (and b!771015 res!521746) b!771020))

(assert (= (and b!771020 res!521743) b!771024))

(assert (= (and b!771024 res!521751) b!771017))

(assert (= (and b!771020 (not res!521749)) b!771011))

(assert (= (and b!771011 c!85028) b!771008))

(assert (= (and b!771011 (not c!85028)) b!771023))

(declare-fun m!716271 () Bool)

(assert (=> b!771013 m!716271))

(declare-fun m!716273 () Bool)

(assert (=> b!771015 m!716273))

(declare-fun m!716275 () Bool)

(assert (=> b!771015 m!716275))

(assert (=> b!771015 m!716273))

(declare-fun m!716277 () Bool)

(assert (=> b!771015 m!716277))

(declare-fun m!716279 () Bool)

(assert (=> b!771015 m!716279))

(declare-fun m!716281 () Bool)

(assert (=> b!771015 m!716281))

(declare-fun m!716283 () Bool)

(assert (=> b!771011 m!716283))

(declare-fun m!716285 () Bool)

(assert (=> b!771010 m!716285))

(assert (=> b!771010 m!716285))

(declare-fun m!716287 () Bool)

(assert (=> b!771010 m!716287))

(declare-fun m!716289 () Bool)

(assert (=> start!66842 m!716289))

(declare-fun m!716291 () Bool)

(assert (=> start!66842 m!716291))

(assert (=> b!771008 m!716285))

(assert (=> b!771008 m!716285))

(declare-fun m!716293 () Bool)

(assert (=> b!771008 m!716293))

(declare-fun m!716295 () Bool)

(assert (=> b!771020 m!716295))

(declare-fun m!716297 () Bool)

(assert (=> b!771020 m!716297))

(assert (=> b!771022 m!716285))

(assert (=> b!771022 m!716285))

(declare-fun m!716299 () Bool)

(assert (=> b!771022 m!716299))

(declare-fun m!716301 () Bool)

(assert (=> b!771014 m!716301))

(assert (=> b!771009 m!716285))

(assert (=> b!771009 m!716285))

(declare-fun m!716303 () Bool)

(assert (=> b!771009 m!716303))

(assert (=> b!771009 m!716303))

(assert (=> b!771009 m!716285))

(declare-fun m!716305 () Bool)

(assert (=> b!771009 m!716305))

(assert (=> b!771005 m!716285))

(assert (=> b!771005 m!716285))

(declare-fun m!716307 () Bool)

(assert (=> b!771005 m!716307))

(declare-fun m!716309 () Bool)

(assert (=> b!771018 m!716309))

(declare-fun m!716311 () Bool)

(assert (=> b!771019 m!716311))

(assert (=> b!771017 m!716285))

(assert (=> b!771017 m!716285))

(declare-fun m!716313 () Bool)

(assert (=> b!771017 m!716313))

(declare-fun m!716315 () Bool)

(assert (=> b!771007 m!716315))

(assert (=> b!771024 m!716285))

(assert (=> b!771024 m!716285))

(declare-fun m!716317 () Bool)

(assert (=> b!771024 m!716317))

(assert (=> b!771023 m!716285))

(assert (=> b!771023 m!716285))

(assert (=> b!771023 m!716307))

(assert (=> b!771023 m!716285))

(declare-fun m!716319 () Bool)

(assert (=> b!771023 m!716319))

(declare-fun m!716321 () Bool)

(assert (=> b!771021 m!716321))

(push 1)

