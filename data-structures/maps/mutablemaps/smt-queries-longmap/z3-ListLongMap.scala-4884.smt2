; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67368 () Bool)

(assert start!67368)

(declare-fun b!778735 () Bool)

(declare-fun e!433276 () Bool)

(declare-fun e!433274 () Bool)

(assert (=> b!778735 (= e!433276 e!433274)))

(declare-fun res!526934 () Bool)

(assert (=> b!778735 (=> (not res!526934) (not e!433274))))

(declare-datatypes ((SeekEntryResult!7972 0))(
  ( (MissingZero!7972 (index!34255 (_ BitVec 32))) (Found!7972 (index!34256 (_ BitVec 32))) (Intermediate!7972 (undefined!8784 Bool) (index!34257 (_ BitVec 32)) (x!65230 (_ BitVec 32))) (Undefined!7972) (MissingVacant!7972 (index!34258 (_ BitVec 32))) )
))
(declare-fun lt!346975 () SeekEntryResult!7972)

(declare-fun lt!346973 () SeekEntryResult!7972)

(assert (=> b!778735 (= res!526934 (= lt!346975 lt!346973))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!346969 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42552 0))(
  ( (array!42553 (arr!20365 (Array (_ BitVec 32) (_ BitVec 64))) (size!20786 (_ BitVec 32))) )
))
(declare-fun lt!346972 () array!42552)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42552 (_ BitVec 32)) SeekEntryResult!7972)

(assert (=> b!778735 (= lt!346973 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346969 lt!346972 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778735 (= lt!346975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346969 mask!3328) lt!346969 lt!346972 mask!3328))))

(declare-fun a!3186 () array!42552)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!778735 (= lt!346969 (select (store (arr!20365 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!778735 (= lt!346972 (array!42553 (store (arr!20365 a!3186) i!1173 k0!2102) (size!20786 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!778737 () Bool)

(declare-fun e!433279 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42552 (_ BitVec 32)) SeekEntryResult!7972)

(assert (=> b!778737 (= e!433279 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20365 a!3186) j!159) a!3186 mask!3328) (Found!7972 j!159)))))

(declare-fun b!778738 () Bool)

(declare-fun res!526928 () Bool)

(declare-fun e!433272 () Bool)

(assert (=> b!778738 (=> (not res!526928) (not e!433272))))

(assert (=> b!778738 (= res!526928 (and (= (size!20786 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20786 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20786 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778739 () Bool)

(declare-fun e!433271 () Bool)

(assert (=> b!778739 (= e!433271 true)))

(declare-fun lt!346971 () SeekEntryResult!7972)

(assert (=> b!778739 (= lt!346971 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20365 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778740 () Bool)

(declare-fun res!526924 () Bool)

(assert (=> b!778740 (=> (not res!526924) (not e!433272))))

(declare-fun arrayContainsKey!0 (array!42552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778740 (= res!526924 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!778741 () Bool)

(declare-fun res!526930 () Bool)

(assert (=> b!778741 (=> (not res!526930) (not e!433272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778741 (= res!526930 (validKeyInArray!0 k0!2102))))

(declare-fun b!778742 () Bool)

(declare-fun res!526935 () Bool)

(assert (=> b!778742 (=> (not res!526935) (not e!433272))))

(assert (=> b!778742 (= res!526935 (validKeyInArray!0 (select (arr!20365 a!3186) j!159)))))

(declare-fun b!778743 () Bool)

(declare-fun res!526923 () Bool)

(declare-fun e!433278 () Bool)

(assert (=> b!778743 (=> (not res!526923) (not e!433278))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!778743 (= res!526923 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20786 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20786 a!3186))))))

(declare-fun b!778744 () Bool)

(declare-fun lt!346967 () SeekEntryResult!7972)

(assert (=> b!778744 (= e!433279 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20365 a!3186) j!159) a!3186 mask!3328) lt!346967))))

(declare-fun b!778745 () Bool)

(declare-fun res!526936 () Bool)

(assert (=> b!778745 (=> (not res!526936) (not e!433276))))

(assert (=> b!778745 (= res!526936 e!433279)))

(declare-fun c!86310 () Bool)

(assert (=> b!778745 (= c!86310 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778746 () Bool)

(assert (=> b!778746 (= e!433272 e!433278)))

(declare-fun res!526925 () Bool)

(assert (=> b!778746 (=> (not res!526925) (not e!433278))))

(declare-fun lt!346968 () SeekEntryResult!7972)

(assert (=> b!778746 (= res!526925 (or (= lt!346968 (MissingZero!7972 i!1173)) (= lt!346968 (MissingVacant!7972 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42552 (_ BitVec 32)) SeekEntryResult!7972)

(assert (=> b!778746 (= lt!346968 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!778736 () Bool)

(declare-fun res!526933 () Bool)

(assert (=> b!778736 (=> (not res!526933) (not e!433276))))

(assert (=> b!778736 (= res!526933 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20365 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!526931 () Bool)

(assert (=> start!67368 (=> (not res!526931) (not e!433272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67368 (= res!526931 (validMask!0 mask!3328))))

(assert (=> start!67368 e!433272))

(assert (=> start!67368 true))

(declare-fun array_inv!16139 (array!42552) Bool)

(assert (=> start!67368 (array_inv!16139 a!3186)))

(declare-fun b!778747 () Bool)

(declare-fun res!526929 () Bool)

(assert (=> b!778747 (=> (not res!526929) (not e!433278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42552 (_ BitVec 32)) Bool)

(assert (=> b!778747 (= res!526929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778748 () Bool)

(declare-fun lt!346974 () SeekEntryResult!7972)

(declare-fun e!433275 () Bool)

(assert (=> b!778748 (= e!433275 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20365 a!3186) j!159) a!3186 mask!3328) lt!346974))))

(declare-fun b!778749 () Bool)

(assert (=> b!778749 (= e!433278 e!433276)))

(declare-fun res!526926 () Bool)

(assert (=> b!778749 (=> (not res!526926) (not e!433276))))

(assert (=> b!778749 (= res!526926 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20365 a!3186) j!159) mask!3328) (select (arr!20365 a!3186) j!159) a!3186 mask!3328) lt!346967))))

(assert (=> b!778749 (= lt!346967 (Intermediate!7972 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778750 () Bool)

(declare-fun res!526921 () Bool)

(assert (=> b!778750 (=> (not res!526921) (not e!433278))))

(declare-datatypes ((List!14420 0))(
  ( (Nil!14417) (Cons!14416 (h!15530 (_ BitVec 64)) (t!20743 List!14420)) )
))
(declare-fun arrayNoDuplicates!0 (array!42552 (_ BitVec 32) List!14420) Bool)

(assert (=> b!778750 (= res!526921 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14417))))

(declare-fun b!778751 () Bool)

(assert (=> b!778751 (= e!433274 (not e!433271))))

(declare-fun res!526922 () Bool)

(assert (=> b!778751 (=> res!526922 e!433271)))

(get-info :version)

(assert (=> b!778751 (= res!526922 (or (not ((_ is Intermediate!7972) lt!346973)) (bvslt x!1131 (x!65230 lt!346973)) (not (= x!1131 (x!65230 lt!346973))) (not (= index!1321 (index!34257 lt!346973)))))))

(declare-fun e!433277 () Bool)

(assert (=> b!778751 e!433277))

(declare-fun res!526932 () Bool)

(assert (=> b!778751 (=> (not res!526932) (not e!433277))))

(assert (=> b!778751 (= res!526932 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26838 0))(
  ( (Unit!26839) )
))
(declare-fun lt!346970 () Unit!26838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26838)

(assert (=> b!778751 (= lt!346970 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778752 () Bool)

(assert (=> b!778752 (= e!433277 e!433275)))

(declare-fun res!526927 () Bool)

(assert (=> b!778752 (=> (not res!526927) (not e!433275))))

(assert (=> b!778752 (= res!526927 (= (seekEntryOrOpen!0 (select (arr!20365 a!3186) j!159) a!3186 mask!3328) lt!346974))))

(assert (=> b!778752 (= lt!346974 (Found!7972 j!159))))

(assert (= (and start!67368 res!526931) b!778738))

(assert (= (and b!778738 res!526928) b!778742))

(assert (= (and b!778742 res!526935) b!778741))

(assert (= (and b!778741 res!526930) b!778740))

(assert (= (and b!778740 res!526924) b!778746))

(assert (= (and b!778746 res!526925) b!778747))

(assert (= (and b!778747 res!526929) b!778750))

(assert (= (and b!778750 res!526921) b!778743))

(assert (= (and b!778743 res!526923) b!778749))

(assert (= (and b!778749 res!526926) b!778736))

(assert (= (and b!778736 res!526933) b!778745))

(assert (= (and b!778745 c!86310) b!778744))

(assert (= (and b!778745 (not c!86310)) b!778737))

(assert (= (and b!778745 res!526936) b!778735))

(assert (= (and b!778735 res!526934) b!778751))

(assert (= (and b!778751 res!526932) b!778752))

(assert (= (and b!778752 res!526927) b!778748))

(assert (= (and b!778751 (not res!526922)) b!778739))

(declare-fun m!722399 () Bool)

(assert (=> b!778750 m!722399))

(declare-fun m!722401 () Bool)

(assert (=> b!778744 m!722401))

(assert (=> b!778744 m!722401))

(declare-fun m!722403 () Bool)

(assert (=> b!778744 m!722403))

(declare-fun m!722405 () Bool)

(assert (=> b!778751 m!722405))

(declare-fun m!722407 () Bool)

(assert (=> b!778751 m!722407))

(declare-fun m!722409 () Bool)

(assert (=> start!67368 m!722409))

(declare-fun m!722411 () Bool)

(assert (=> start!67368 m!722411))

(declare-fun m!722413 () Bool)

(assert (=> b!778735 m!722413))

(declare-fun m!722415 () Bool)

(assert (=> b!778735 m!722415))

(declare-fun m!722417 () Bool)

(assert (=> b!778735 m!722417))

(assert (=> b!778735 m!722415))

(declare-fun m!722419 () Bool)

(assert (=> b!778735 m!722419))

(declare-fun m!722421 () Bool)

(assert (=> b!778735 m!722421))

(declare-fun m!722423 () Bool)

(assert (=> b!778740 m!722423))

(declare-fun m!722425 () Bool)

(assert (=> b!778741 m!722425))

(declare-fun m!722427 () Bool)

(assert (=> b!778747 m!722427))

(assert (=> b!778742 m!722401))

(assert (=> b!778742 m!722401))

(declare-fun m!722429 () Bool)

(assert (=> b!778742 m!722429))

(assert (=> b!778752 m!722401))

(assert (=> b!778752 m!722401))

(declare-fun m!722431 () Bool)

(assert (=> b!778752 m!722431))

(assert (=> b!778739 m!722401))

(assert (=> b!778739 m!722401))

(declare-fun m!722433 () Bool)

(assert (=> b!778739 m!722433))

(declare-fun m!722435 () Bool)

(assert (=> b!778736 m!722435))

(assert (=> b!778748 m!722401))

(assert (=> b!778748 m!722401))

(declare-fun m!722437 () Bool)

(assert (=> b!778748 m!722437))

(declare-fun m!722439 () Bool)

(assert (=> b!778746 m!722439))

(assert (=> b!778749 m!722401))

(assert (=> b!778749 m!722401))

(declare-fun m!722441 () Bool)

(assert (=> b!778749 m!722441))

(assert (=> b!778749 m!722441))

(assert (=> b!778749 m!722401))

(declare-fun m!722443 () Bool)

(assert (=> b!778749 m!722443))

(assert (=> b!778737 m!722401))

(assert (=> b!778737 m!722401))

(assert (=> b!778737 m!722433))

(check-sat (not b!778741) (not b!778735) (not b!778751) (not b!778742) (not b!778750) (not b!778739) (not b!778747) (not b!778737) (not start!67368) (not b!778746) (not b!778744) (not b!778752) (not b!778740) (not b!778748) (not b!778749))
(check-sat)
