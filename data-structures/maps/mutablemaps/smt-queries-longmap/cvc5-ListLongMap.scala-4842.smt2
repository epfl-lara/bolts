; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66766 () Bool)

(assert start!66766)

(declare-datatypes ((array!42283 0))(
  ( (array!42284 (arr!20238 (Array (_ BitVec 32) (_ BitVec 64))) (size!20659 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42283)

(declare-fun b!768725 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7845 0))(
  ( (MissingZero!7845 (index!33747 (_ BitVec 32))) (Found!7845 (index!33748 (_ BitVec 32))) (Intermediate!7845 (undefined!8657 Bool) (index!33749 (_ BitVec 32)) (x!64713 (_ BitVec 32))) (Undefined!7845) (MissingVacant!7845 (index!33750 (_ BitVec 32))) )
))
(declare-fun lt!342000 () SeekEntryResult!7845)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!428114 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42283 (_ BitVec 32)) SeekEntryResult!7845)

(assert (=> b!768725 (= e!428114 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20238 a!3186) j!159) a!3186 mask!3328) lt!342000))))

(declare-fun b!768726 () Bool)

(declare-fun e!428119 () Bool)

(declare-fun e!428117 () Bool)

(assert (=> b!768726 (= e!428119 e!428117)))

(declare-fun res!519927 () Bool)

(assert (=> b!768726 (=> (not res!519927) (not e!428117))))

(declare-fun lt!341999 () SeekEntryResult!7845)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!768726 (= res!519927 (or (= lt!341999 (MissingZero!7845 i!1173)) (= lt!341999 (MissingVacant!7845 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42283 (_ BitVec 32)) SeekEntryResult!7845)

(assert (=> b!768726 (= lt!341999 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!768727 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42283 (_ BitVec 32)) SeekEntryResult!7845)

(assert (=> b!768727 (= e!428114 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20238 a!3186) j!159) a!3186 mask!3328) (Found!7845 j!159)))))

(declare-fun b!768728 () Bool)

(declare-fun res!519930 () Bool)

(assert (=> b!768728 (=> (not res!519930) (not e!428119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768728 (= res!519930 (validKeyInArray!0 (select (arr!20238 a!3186) j!159)))))

(declare-fun b!768729 () Bool)

(declare-fun e!428113 () Bool)

(declare-fun e!428111 () Bool)

(assert (=> b!768729 (= e!428113 (not e!428111))))

(declare-fun res!519920 () Bool)

(assert (=> b!768729 (=> res!519920 e!428111)))

(declare-fun lt!341997 () SeekEntryResult!7845)

(assert (=> b!768729 (= res!519920 (or (not (is-Intermediate!7845 lt!341997)) (bvsge x!1131 (x!64713 lt!341997))))))

(declare-fun e!428110 () Bool)

(assert (=> b!768729 e!428110))

(declare-fun res!519923 () Bool)

(assert (=> b!768729 (=> (not res!519923) (not e!428110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42283 (_ BitVec 32)) Bool)

(assert (=> b!768729 (= res!519923 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26416 0))(
  ( (Unit!26417) )
))
(declare-fun lt!341991 () Unit!26416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26416)

(assert (=> b!768729 (= lt!341991 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768730 () Bool)

(declare-fun res!519928 () Bool)

(assert (=> b!768730 (=> (not res!519928) (not e!428117))))

(assert (=> b!768730 (= res!519928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!768732 () Bool)

(declare-fun res!519925 () Bool)

(declare-fun e!428118 () Bool)

(assert (=> b!768732 (=> (not res!519925) (not e!428118))))

(assert (=> b!768732 (= res!519925 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20238 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768733 () Bool)

(declare-fun e!428112 () Bool)

(assert (=> b!768733 (= e!428110 e!428112)))

(declare-fun res!519921 () Bool)

(assert (=> b!768733 (=> (not res!519921) (not e!428112))))

(declare-fun lt!341992 () SeekEntryResult!7845)

(assert (=> b!768733 (= res!519921 (= (seekEntryOrOpen!0 (select (arr!20238 a!3186) j!159) a!3186 mask!3328) lt!341992))))

(assert (=> b!768733 (= lt!341992 (Found!7845 j!159))))

(declare-fun b!768734 () Bool)

(declare-fun res!519918 () Bool)

(assert (=> b!768734 (=> (not res!519918) (not e!428119))))

(assert (=> b!768734 (= res!519918 (validKeyInArray!0 k!2102))))

(declare-fun b!768735 () Bool)

(declare-fun e!428115 () Unit!26416)

(declare-fun Unit!26418 () Unit!26416)

(assert (=> b!768735 (= e!428115 Unit!26418)))

(declare-fun lt!341994 () SeekEntryResult!7845)

(assert (=> b!768735 (= lt!341994 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20238 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!341998 () (_ BitVec 32))

(assert (=> b!768735 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341998 resIntermediateIndex!5 (select (arr!20238 a!3186) j!159) a!3186 mask!3328) (Found!7845 j!159))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!768736 () Bool)

(assert (=> b!768736 (= e!428112 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20238 a!3186) j!159) a!3186 mask!3328) lt!341992))))

(declare-fun b!768737 () Bool)

(declare-fun res!519922 () Bool)

(assert (=> b!768737 (=> (not res!519922) (not e!428119))))

(declare-fun arrayContainsKey!0 (array!42283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768737 (= res!519922 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768738 () Bool)

(assert (=> b!768738 (= e!428118 e!428113)))

(declare-fun res!519929 () Bool)

(assert (=> b!768738 (=> (not res!519929) (not e!428113))))

(declare-fun lt!341995 () SeekEntryResult!7845)

(assert (=> b!768738 (= res!519929 (= lt!341995 lt!341997))))

(declare-fun lt!341993 () (_ BitVec 64))

(declare-fun lt!341996 () array!42283)

(assert (=> b!768738 (= lt!341997 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341993 lt!341996 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768738 (= lt!341995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341993 mask!3328) lt!341993 lt!341996 mask!3328))))

(assert (=> b!768738 (= lt!341993 (select (store (arr!20238 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!768738 (= lt!341996 (array!42284 (store (arr!20238 a!3186) i!1173 k!2102) (size!20659 a!3186)))))

(declare-fun b!768739 () Bool)

(declare-fun res!519931 () Bool)

(assert (=> b!768739 (=> (not res!519931) (not e!428117))))

(assert (=> b!768739 (= res!519931 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20659 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20659 a!3186))))))

(declare-fun b!768740 () Bool)

(assert (=> b!768740 (= e!428111 true)))

(declare-fun lt!342001 () Unit!26416)

(assert (=> b!768740 (= lt!342001 e!428115)))

(declare-fun c!84801 () Bool)

(assert (=> b!768740 (= c!84801 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768740 (= lt!341998 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768741 () Bool)

(declare-fun Unit!26419 () Unit!26416)

(assert (=> b!768741 (= e!428115 Unit!26419)))

(assert (=> b!768741 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341998 (select (arr!20238 a!3186) j!159) a!3186 mask!3328) lt!342000)))

(declare-fun b!768731 () Bool)

(declare-fun res!519917 () Bool)

(assert (=> b!768731 (=> (not res!519917) (not e!428117))))

(declare-datatypes ((List!14293 0))(
  ( (Nil!14290) (Cons!14289 (h!15388 (_ BitVec 64)) (t!20616 List!14293)) )
))
(declare-fun arrayNoDuplicates!0 (array!42283 (_ BitVec 32) List!14293) Bool)

(assert (=> b!768731 (= res!519917 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14290))))

(declare-fun res!519924 () Bool)

(assert (=> start!66766 (=> (not res!519924) (not e!428119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66766 (= res!519924 (validMask!0 mask!3328))))

(assert (=> start!66766 e!428119))

(assert (=> start!66766 true))

(declare-fun array_inv!16012 (array!42283) Bool)

(assert (=> start!66766 (array_inv!16012 a!3186)))

(declare-fun b!768742 () Bool)

(declare-fun res!519916 () Bool)

(assert (=> b!768742 (=> (not res!519916) (not e!428118))))

(assert (=> b!768742 (= res!519916 e!428114)))

(declare-fun c!84800 () Bool)

(assert (=> b!768742 (= c!84800 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!768743 () Bool)

(declare-fun res!519926 () Bool)

(assert (=> b!768743 (=> (not res!519926) (not e!428119))))

(assert (=> b!768743 (= res!519926 (and (= (size!20659 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20659 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20659 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!768744 () Bool)

(assert (=> b!768744 (= e!428117 e!428118)))

(declare-fun res!519919 () Bool)

(assert (=> b!768744 (=> (not res!519919) (not e!428118))))

(assert (=> b!768744 (= res!519919 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20238 a!3186) j!159) mask!3328) (select (arr!20238 a!3186) j!159) a!3186 mask!3328) lt!342000))))

(assert (=> b!768744 (= lt!342000 (Intermediate!7845 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66766 res!519924) b!768743))

(assert (= (and b!768743 res!519926) b!768728))

(assert (= (and b!768728 res!519930) b!768734))

(assert (= (and b!768734 res!519918) b!768737))

(assert (= (and b!768737 res!519922) b!768726))

(assert (= (and b!768726 res!519927) b!768730))

(assert (= (and b!768730 res!519928) b!768731))

(assert (= (and b!768731 res!519917) b!768739))

(assert (= (and b!768739 res!519931) b!768744))

(assert (= (and b!768744 res!519919) b!768732))

(assert (= (and b!768732 res!519925) b!768742))

(assert (= (and b!768742 c!84800) b!768725))

(assert (= (and b!768742 (not c!84800)) b!768727))

(assert (= (and b!768742 res!519916) b!768738))

(assert (= (and b!768738 res!519929) b!768729))

(assert (= (and b!768729 res!519923) b!768733))

(assert (= (and b!768733 res!519921) b!768736))

(assert (= (and b!768729 (not res!519920)) b!768740))

(assert (= (and b!768740 c!84801) b!768741))

(assert (= (and b!768740 (not c!84801)) b!768735))

(declare-fun m!714295 () Bool)

(assert (=> b!768726 m!714295))

(declare-fun m!714297 () Bool)

(assert (=> start!66766 m!714297))

(declare-fun m!714299 () Bool)

(assert (=> start!66766 m!714299))

(declare-fun m!714301 () Bool)

(assert (=> b!768733 m!714301))

(assert (=> b!768733 m!714301))

(declare-fun m!714303 () Bool)

(assert (=> b!768733 m!714303))

(assert (=> b!768736 m!714301))

(assert (=> b!768736 m!714301))

(declare-fun m!714305 () Bool)

(assert (=> b!768736 m!714305))

(declare-fun m!714307 () Bool)

(assert (=> b!768730 m!714307))

(assert (=> b!768744 m!714301))

(assert (=> b!768744 m!714301))

(declare-fun m!714309 () Bool)

(assert (=> b!768744 m!714309))

(assert (=> b!768744 m!714309))

(assert (=> b!768744 m!714301))

(declare-fun m!714311 () Bool)

(assert (=> b!768744 m!714311))

(assert (=> b!768741 m!714301))

(assert (=> b!768741 m!714301))

(declare-fun m!714313 () Bool)

(assert (=> b!768741 m!714313))

(declare-fun m!714315 () Bool)

(assert (=> b!768738 m!714315))

(declare-fun m!714317 () Bool)

(assert (=> b!768738 m!714317))

(declare-fun m!714319 () Bool)

(assert (=> b!768738 m!714319))

(declare-fun m!714321 () Bool)

(assert (=> b!768738 m!714321))

(assert (=> b!768738 m!714321))

(declare-fun m!714323 () Bool)

(assert (=> b!768738 m!714323))

(declare-fun m!714325 () Bool)

(assert (=> b!768734 m!714325))

(declare-fun m!714327 () Bool)

(assert (=> b!768740 m!714327))

(assert (=> b!768728 m!714301))

(assert (=> b!768728 m!714301))

(declare-fun m!714329 () Bool)

(assert (=> b!768728 m!714329))

(declare-fun m!714331 () Bool)

(assert (=> b!768729 m!714331))

(declare-fun m!714333 () Bool)

(assert (=> b!768729 m!714333))

(declare-fun m!714335 () Bool)

(assert (=> b!768737 m!714335))

(declare-fun m!714337 () Bool)

(assert (=> b!768732 m!714337))

(assert (=> b!768735 m!714301))

(assert (=> b!768735 m!714301))

(declare-fun m!714339 () Bool)

(assert (=> b!768735 m!714339))

(assert (=> b!768735 m!714301))

(declare-fun m!714341 () Bool)

(assert (=> b!768735 m!714341))

(assert (=> b!768727 m!714301))

(assert (=> b!768727 m!714301))

(assert (=> b!768727 m!714339))

(assert (=> b!768725 m!714301))

(assert (=> b!768725 m!714301))

(declare-fun m!714343 () Bool)

(assert (=> b!768725 m!714343))

(declare-fun m!714345 () Bool)

(assert (=> b!768731 m!714345))

(push 1)

