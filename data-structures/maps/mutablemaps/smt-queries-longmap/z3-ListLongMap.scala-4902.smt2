; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67674 () Bool)

(assert start!67674)

(declare-fun b!783255 () Bool)

(declare-fun res!530000 () Bool)

(declare-fun e!435540 () Bool)

(assert (=> b!783255 (=> (not res!530000) (not e!435540))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783255 (= res!530000 (validKeyInArray!0 k0!2102))))

(declare-fun b!783256 () Bool)

(declare-fun e!435539 () Bool)

(assert (=> b!783256 (= e!435540 e!435539)))

(declare-fun res!530017 () Bool)

(assert (=> b!783256 (=> (not res!530017) (not e!435539))))

(declare-datatypes ((SeekEntryResult!8026 0))(
  ( (MissingZero!8026 (index!34471 (_ BitVec 32))) (Found!8026 (index!34472 (_ BitVec 32))) (Intermediate!8026 (undefined!8838 Bool) (index!34473 (_ BitVec 32)) (x!65455 (_ BitVec 32))) (Undefined!8026) (MissingVacant!8026 (index!34474 (_ BitVec 32))) )
))
(declare-fun lt!349099 () SeekEntryResult!8026)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783256 (= res!530017 (or (= lt!349099 (MissingZero!8026 i!1173)) (= lt!349099 (MissingVacant!8026 i!1173))))))

(declare-datatypes ((array!42669 0))(
  ( (array!42670 (arr!20419 (Array (_ BitVec 32) (_ BitVec 64))) (size!20840 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42669)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42669 (_ BitVec 32)) SeekEntryResult!8026)

(assert (=> b!783256 (= lt!349099 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!783257 () Bool)

(declare-fun e!435532 () Bool)

(declare-fun e!435535 () Bool)

(assert (=> b!783257 (= e!435532 e!435535)))

(declare-fun res!530004 () Bool)

(assert (=> b!783257 (=> (not res!530004) (not e!435535))))

(declare-fun lt!349102 () SeekEntryResult!8026)

(declare-fun lt!349108 () SeekEntryResult!8026)

(assert (=> b!783257 (= res!530004 (= lt!349102 lt!349108))))

(declare-fun lt!349105 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!349098 () array!42669)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42669 (_ BitVec 32)) SeekEntryResult!8026)

(assert (=> b!783257 (= lt!349108 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349105 lt!349098 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783257 (= lt!349102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349105 mask!3328) lt!349105 lt!349098 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!783257 (= lt!349105 (select (store (arr!20419 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!783257 (= lt!349098 (array!42670 (store (arr!20419 a!3186) i!1173 k0!2102) (size!20840 a!3186)))))

(declare-fun res!530002 () Bool)

(assert (=> start!67674 (=> (not res!530002) (not e!435540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67674 (= res!530002 (validMask!0 mask!3328))))

(assert (=> start!67674 e!435540))

(assert (=> start!67674 true))

(declare-fun array_inv!16193 (array!42669) Bool)

(assert (=> start!67674 (array_inv!16193 a!3186)))

(declare-fun b!783258 () Bool)

(declare-fun res!530014 () Bool)

(declare-fun e!435534 () Bool)

(assert (=> b!783258 (=> res!530014 e!435534)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!349107 () SeekEntryResult!8026)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42669 (_ BitVec 32)) SeekEntryResult!8026)

(assert (=> b!783258 (= res!530014 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20419 a!3186) j!159) a!3186 mask!3328) lt!349107)))))

(declare-fun b!783259 () Bool)

(declare-datatypes ((Unit!27014 0))(
  ( (Unit!27015) )
))
(declare-fun e!435537 () Unit!27014)

(declare-fun Unit!27016 () Unit!27014)

(assert (=> b!783259 (= e!435537 Unit!27016)))

(assert (=> b!783259 false))

(declare-fun b!783260 () Bool)

(assert (=> b!783260 (= e!435535 (not e!435534))))

(declare-fun res!530007 () Bool)

(assert (=> b!783260 (=> res!530007 e!435534)))

(get-info :version)

(assert (=> b!783260 (= res!530007 (or (not ((_ is Intermediate!8026) lt!349108)) (bvslt x!1131 (x!65455 lt!349108)) (not (= x!1131 (x!65455 lt!349108))) (not (= index!1321 (index!34473 lt!349108)))))))

(declare-fun e!435541 () Bool)

(assert (=> b!783260 e!435541))

(declare-fun res!530005 () Bool)

(assert (=> b!783260 (=> (not res!530005) (not e!435541))))

(declare-fun lt!349101 () SeekEntryResult!8026)

(assert (=> b!783260 (= res!530005 (= lt!349101 lt!349107))))

(assert (=> b!783260 (= lt!349107 (Found!8026 j!159))))

(assert (=> b!783260 (= lt!349101 (seekEntryOrOpen!0 (select (arr!20419 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42669 (_ BitVec 32)) Bool)

(assert (=> b!783260 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349106 () Unit!27014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27014)

(assert (=> b!783260 (= lt!349106 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783261 () Bool)

(declare-fun e!435533 () Bool)

(assert (=> b!783261 (= e!435533 true)))

(declare-fun e!435531 () Bool)

(assert (=> b!783261 e!435531))

(declare-fun res!530012 () Bool)

(assert (=> b!783261 (=> (not res!530012) (not e!435531))))

(declare-fun lt!349104 () (_ BitVec 64))

(assert (=> b!783261 (= res!530012 (= lt!349104 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349100 () Unit!27014)

(assert (=> b!783261 (= lt!349100 e!435537)))

(declare-fun c!87036 () Bool)

(assert (=> b!783261 (= c!87036 (= lt!349104 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783262 () Bool)

(declare-fun Unit!27017 () Unit!27014)

(assert (=> b!783262 (= e!435537 Unit!27017)))

(declare-fun b!783263 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783263 (= e!435541 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20419 a!3186) j!159) a!3186 mask!3328) lt!349107))))

(declare-fun e!435536 () Bool)

(declare-fun b!783264 () Bool)

(declare-fun lt!349103 () SeekEntryResult!8026)

(assert (=> b!783264 (= e!435536 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20419 a!3186) j!159) a!3186 mask!3328) lt!349103))))

(declare-fun b!783265 () Bool)

(assert (=> b!783265 (= e!435534 e!435533)))

(declare-fun res!530008 () Bool)

(assert (=> b!783265 (=> res!530008 e!435533)))

(assert (=> b!783265 (= res!530008 (= lt!349104 lt!349105))))

(assert (=> b!783265 (= lt!349104 (select (store (arr!20419 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!783266 () Bool)

(assert (=> b!783266 (= e!435539 e!435532)))

(declare-fun res!530016 () Bool)

(assert (=> b!783266 (=> (not res!530016) (not e!435532))))

(assert (=> b!783266 (= res!530016 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20419 a!3186) j!159) mask!3328) (select (arr!20419 a!3186) j!159) a!3186 mask!3328) lt!349103))))

(assert (=> b!783266 (= lt!349103 (Intermediate!8026 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783267 () Bool)

(declare-fun res!530011 () Bool)

(assert (=> b!783267 (=> (not res!530011) (not e!435532))))

(assert (=> b!783267 (= res!530011 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20419 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783268 () Bool)

(declare-fun res!530009 () Bool)

(assert (=> b!783268 (=> (not res!530009) (not e!435539))))

(declare-datatypes ((List!14474 0))(
  ( (Nil!14471) (Cons!14470 (h!15593 (_ BitVec 64)) (t!20797 List!14474)) )
))
(declare-fun arrayNoDuplicates!0 (array!42669 (_ BitVec 32) List!14474) Bool)

(assert (=> b!783268 (= res!530009 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14471))))

(declare-fun b!783269 () Bool)

(declare-fun res!530013 () Bool)

(assert (=> b!783269 (=> (not res!530013) (not e!435540))))

(assert (=> b!783269 (= res!530013 (and (= (size!20840 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20840 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20840 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783270 () Bool)

(assert (=> b!783270 (= e!435536 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20419 a!3186) j!159) a!3186 mask!3328) (Found!8026 j!159)))))

(declare-fun b!783271 () Bool)

(declare-fun res!530001 () Bool)

(assert (=> b!783271 (=> (not res!530001) (not e!435540))))

(assert (=> b!783271 (= res!530001 (validKeyInArray!0 (select (arr!20419 a!3186) j!159)))))

(declare-fun b!783272 () Bool)

(declare-fun res!530003 () Bool)

(assert (=> b!783272 (=> (not res!530003) (not e!435539))))

(assert (=> b!783272 (= res!530003 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20840 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20840 a!3186))))))

(declare-fun b!783273 () Bool)

(declare-fun res!530010 () Bool)

(assert (=> b!783273 (=> (not res!530010) (not e!435540))))

(declare-fun arrayContainsKey!0 (array!42669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783273 (= res!530010 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783274 () Bool)

(assert (=> b!783274 (= e!435531 (= (seekEntryOrOpen!0 lt!349105 lt!349098 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349105 lt!349098 mask!3328)))))

(declare-fun b!783275 () Bool)

(declare-fun res!530006 () Bool)

(assert (=> b!783275 (=> (not res!530006) (not e!435539))))

(assert (=> b!783275 (= res!530006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783276 () Bool)

(declare-fun res!530015 () Bool)

(assert (=> b!783276 (=> (not res!530015) (not e!435532))))

(assert (=> b!783276 (= res!530015 e!435536)))

(declare-fun c!87035 () Bool)

(assert (=> b!783276 (= c!87035 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67674 res!530002) b!783269))

(assert (= (and b!783269 res!530013) b!783271))

(assert (= (and b!783271 res!530001) b!783255))

(assert (= (and b!783255 res!530000) b!783273))

(assert (= (and b!783273 res!530010) b!783256))

(assert (= (and b!783256 res!530017) b!783275))

(assert (= (and b!783275 res!530006) b!783268))

(assert (= (and b!783268 res!530009) b!783272))

(assert (= (and b!783272 res!530003) b!783266))

(assert (= (and b!783266 res!530016) b!783267))

(assert (= (and b!783267 res!530011) b!783276))

(assert (= (and b!783276 c!87035) b!783264))

(assert (= (and b!783276 (not c!87035)) b!783270))

(assert (= (and b!783276 res!530015) b!783257))

(assert (= (and b!783257 res!530004) b!783260))

(assert (= (and b!783260 res!530005) b!783263))

(assert (= (and b!783260 (not res!530007)) b!783258))

(assert (= (and b!783258 (not res!530014)) b!783265))

(assert (= (and b!783265 (not res!530008)) b!783261))

(assert (= (and b!783261 c!87036) b!783259))

(assert (= (and b!783261 (not c!87036)) b!783262))

(assert (= (and b!783261 res!530012) b!783274))

(declare-fun m!725897 () Bool)

(assert (=> b!783267 m!725897))

(declare-fun m!725899 () Bool)

(assert (=> b!783256 m!725899))

(declare-fun m!725901 () Bool)

(assert (=> b!783275 m!725901))

(declare-fun m!725903 () Bool)

(assert (=> b!783268 m!725903))

(declare-fun m!725905 () Bool)

(assert (=> b!783271 m!725905))

(assert (=> b!783271 m!725905))

(declare-fun m!725907 () Bool)

(assert (=> b!783271 m!725907))

(declare-fun m!725909 () Bool)

(assert (=> b!783274 m!725909))

(declare-fun m!725911 () Bool)

(assert (=> b!783274 m!725911))

(assert (=> b!783270 m!725905))

(assert (=> b!783270 m!725905))

(declare-fun m!725913 () Bool)

(assert (=> b!783270 m!725913))

(declare-fun m!725915 () Bool)

(assert (=> b!783257 m!725915))

(declare-fun m!725917 () Bool)

(assert (=> b!783257 m!725917))

(declare-fun m!725919 () Bool)

(assert (=> b!783257 m!725919))

(declare-fun m!725921 () Bool)

(assert (=> b!783257 m!725921))

(assert (=> b!783257 m!725917))

(declare-fun m!725923 () Bool)

(assert (=> b!783257 m!725923))

(assert (=> b!783258 m!725905))

(assert (=> b!783258 m!725905))

(assert (=> b!783258 m!725913))

(assert (=> b!783264 m!725905))

(assert (=> b!783264 m!725905))

(declare-fun m!725925 () Bool)

(assert (=> b!783264 m!725925))

(assert (=> b!783263 m!725905))

(assert (=> b!783263 m!725905))

(declare-fun m!725927 () Bool)

(assert (=> b!783263 m!725927))

(assert (=> b!783265 m!725921))

(declare-fun m!725929 () Bool)

(assert (=> b!783265 m!725929))

(assert (=> b!783260 m!725905))

(assert (=> b!783260 m!725905))

(declare-fun m!725931 () Bool)

(assert (=> b!783260 m!725931))

(declare-fun m!725933 () Bool)

(assert (=> b!783260 m!725933))

(declare-fun m!725935 () Bool)

(assert (=> b!783260 m!725935))

(declare-fun m!725937 () Bool)

(assert (=> b!783255 m!725937))

(assert (=> b!783266 m!725905))

(assert (=> b!783266 m!725905))

(declare-fun m!725939 () Bool)

(assert (=> b!783266 m!725939))

(assert (=> b!783266 m!725939))

(assert (=> b!783266 m!725905))

(declare-fun m!725941 () Bool)

(assert (=> b!783266 m!725941))

(declare-fun m!725943 () Bool)

(assert (=> b!783273 m!725943))

(declare-fun m!725945 () Bool)

(assert (=> start!67674 m!725945))

(declare-fun m!725947 () Bool)

(assert (=> start!67674 m!725947))

(check-sat (not b!783274) (not b!783258) (not b!783263) (not start!67674) (not b!783270) (not b!783260) (not b!783273) (not b!783266) (not b!783255) (not b!783257) (not b!783264) (not b!783268) (not b!783275) (not b!783271) (not b!783256))
(check-sat)
