; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65266 () Bool)

(assert start!65266)

(declare-fun b!739578 () Bool)

(declare-fun res!497391 () Bool)

(declare-fun e!413562 () Bool)

(assert (=> b!739578 (=> (not res!497391) (not e!413562))))

(declare-datatypes ((array!41392 0))(
  ( (array!41393 (arr!19806 (Array (_ BitVec 32) (_ BitVec 64))) (size!20227 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41392)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739578 (= res!497391 (validKeyInArray!0 (select (arr!19806 a!3186) j!159)))))

(declare-fun b!739579 () Bool)

(declare-fun e!413564 () Bool)

(assert (=> b!739579 (= e!413564 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!328477 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7413 0))(
  ( (MissingZero!7413 (index!32019 (_ BitVec 32))) (Found!7413 (index!32020 (_ BitVec 32))) (Intermediate!7413 (undefined!8225 Bool) (index!32021 (_ BitVec 32)) (x!63036 (_ BitVec 32))) (Undefined!7413) (MissingVacant!7413 (index!32022 (_ BitVec 32))) )
))
(declare-fun lt!328475 () SeekEntryResult!7413)

(declare-fun lt!328478 () (_ BitVec 64))

(declare-fun lt!328470 () array!41392)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41392 (_ BitVec 32)) SeekEntryResult!7413)

(assert (=> b!739579 (= lt!328475 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328477 lt!328478 lt!328470 mask!3328))))

(declare-fun b!739580 () Bool)

(declare-fun res!497398 () Bool)

(declare-fun e!413567 () Bool)

(assert (=> b!739580 (=> (not res!497398) (not e!413567))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739580 (= res!497398 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20227 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20227 a!3186))))))

(declare-fun b!739581 () Bool)

(declare-fun res!497393 () Bool)

(assert (=> b!739581 (=> (not res!497393) (not e!413562))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!739581 (= res!497393 (validKeyInArray!0 k!2102))))

(declare-fun e!413566 () Bool)

(declare-fun b!739582 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41392 (_ BitVec 32)) SeekEntryResult!7413)

(assert (=> b!739582 (= e!413566 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) (Found!7413 j!159)))))

(declare-fun b!739583 () Bool)

(declare-fun e!413565 () Bool)

(declare-fun e!413563 () Bool)

(assert (=> b!739583 (= e!413565 (not e!413563))))

(declare-fun res!497402 () Bool)

(assert (=> b!739583 (=> res!497402 e!413563)))

(declare-fun lt!328467 () SeekEntryResult!7413)

(assert (=> b!739583 (= res!497402 (or (not (is-Intermediate!7413 lt!328467)) (bvsge x!1131 (x!63036 lt!328467))))))

(declare-fun lt!328465 () SeekEntryResult!7413)

(assert (=> b!739583 (= lt!328465 (Found!7413 j!159))))

(declare-fun e!413568 () Bool)

(assert (=> b!739583 e!413568))

(declare-fun res!497394 () Bool)

(assert (=> b!739583 (=> (not res!497394) (not e!413568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41392 (_ BitVec 32)) Bool)

(assert (=> b!739583 (= res!497394 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25270 0))(
  ( (Unit!25271) )
))
(declare-fun lt!328471 () Unit!25270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41392 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25270)

(assert (=> b!739583 (= lt!328471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739584 () Bool)

(declare-fun res!497397 () Bool)

(assert (=> b!739584 (=> res!497397 e!413564)))

(declare-fun e!413570 () Bool)

(assert (=> b!739584 (= res!497397 e!413570)))

(declare-fun c!81476 () Bool)

(declare-fun lt!328466 () Bool)

(assert (=> b!739584 (= c!81476 lt!328466)))

(declare-fun lt!328476 () SeekEntryResult!7413)

(declare-fun b!739585 () Bool)

(assert (=> b!739585 (= e!413570 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328477 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328476)))))

(declare-fun b!739586 () Bool)

(declare-fun res!497396 () Bool)

(declare-fun e!413561 () Bool)

(assert (=> b!739586 (=> (not res!497396) (not e!413561))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739586 (= res!497396 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19806 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!497400 () Bool)

(assert (=> start!65266 (=> (not res!497400) (not e!413562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65266 (= res!497400 (validMask!0 mask!3328))))

(assert (=> start!65266 e!413562))

(assert (=> start!65266 true))

(declare-fun array_inv!15580 (array!41392) Bool)

(assert (=> start!65266 (array_inv!15580 a!3186)))

(declare-fun b!739587 () Bool)

(assert (=> b!739587 (= e!413566 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328476))))

(declare-fun b!739588 () Bool)

(declare-fun res!497395 () Bool)

(assert (=> b!739588 (=> (not res!497395) (not e!413562))))

(declare-fun arrayContainsKey!0 (array!41392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739588 (= res!497395 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739589 () Bool)

(assert (=> b!739589 (= e!413570 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328477 resIntermediateIndex!5 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328465)))))

(declare-fun b!739590 () Bool)

(assert (=> b!739590 (= e!413561 e!413565)))

(declare-fun res!497389 () Bool)

(assert (=> b!739590 (=> (not res!497389) (not e!413565))))

(declare-fun lt!328474 () SeekEntryResult!7413)

(assert (=> b!739590 (= res!497389 (= lt!328474 lt!328467))))

(assert (=> b!739590 (= lt!328467 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328478 lt!328470 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739590 (= lt!328474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328478 mask!3328) lt!328478 lt!328470 mask!3328))))

(assert (=> b!739590 (= lt!328478 (select (store (arr!19806 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739590 (= lt!328470 (array!41393 (store (arr!19806 a!3186) i!1173 k!2102) (size!20227 a!3186)))))

(declare-fun b!739591 () Bool)

(declare-fun res!497401 () Bool)

(assert (=> b!739591 (=> (not res!497401) (not e!413567))))

(declare-datatypes ((List!13861 0))(
  ( (Nil!13858) (Cons!13857 (h!14929 (_ BitVec 64)) (t!20184 List!13861)) )
))
(declare-fun arrayNoDuplicates!0 (array!41392 (_ BitVec 32) List!13861) Bool)

(assert (=> b!739591 (= res!497401 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13858))))

(declare-fun b!739592 () Bool)

(assert (=> b!739592 (= e!413567 e!413561)))

(declare-fun res!497392 () Bool)

(assert (=> b!739592 (=> (not res!497392) (not e!413561))))

(assert (=> b!739592 (= res!497392 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19806 a!3186) j!159) mask!3328) (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328476))))

(assert (=> b!739592 (= lt!328476 (Intermediate!7413 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739593 () Bool)

(assert (=> b!739593 (= e!413563 e!413564)))

(declare-fun res!497406 () Bool)

(assert (=> b!739593 (=> res!497406 e!413564)))

(assert (=> b!739593 (= res!497406 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328477 #b00000000000000000000000000000000) (bvsge lt!328477 (size!20227 a!3186))))))

(declare-fun lt!328468 () Unit!25270)

(declare-fun e!413571 () Unit!25270)

(assert (=> b!739593 (= lt!328468 e!413571)))

(declare-fun c!81475 () Bool)

(assert (=> b!739593 (= c!81475 lt!328466)))

(assert (=> b!739593 (= lt!328466 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739593 (= lt!328477 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739594 () Bool)

(assert (=> b!739594 (= e!413562 e!413567)))

(declare-fun res!497403 () Bool)

(assert (=> b!739594 (=> (not res!497403) (not e!413567))))

(declare-fun lt!328469 () SeekEntryResult!7413)

(assert (=> b!739594 (= res!497403 (or (= lt!328469 (MissingZero!7413 i!1173)) (= lt!328469 (MissingVacant!7413 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41392 (_ BitVec 32)) SeekEntryResult!7413)

(assert (=> b!739594 (= lt!328469 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739595 () Bool)

(declare-fun Unit!25272 () Unit!25270)

(assert (=> b!739595 (= e!413571 Unit!25272)))

(declare-fun lt!328472 () SeekEntryResult!7413)

(assert (=> b!739595 (= lt!328472 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19806 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!739595 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328477 resIntermediateIndex!5 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328465)))

(declare-fun b!739596 () Bool)

(declare-fun Unit!25273 () Unit!25270)

(assert (=> b!739596 (= e!413571 Unit!25273)))

(assert (=> b!739596 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328477 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328476)))

(declare-fun b!739597 () Bool)

(declare-fun lt!328473 () SeekEntryResult!7413)

(declare-fun e!413569 () Bool)

(assert (=> b!739597 (= e!413569 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328473))))

(declare-fun b!739598 () Bool)

(declare-fun res!497405 () Bool)

(assert (=> b!739598 (=> (not res!497405) (not e!413562))))

(assert (=> b!739598 (= res!497405 (and (= (size!20227 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20227 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20227 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739599 () Bool)

(declare-fun res!497399 () Bool)

(assert (=> b!739599 (=> (not res!497399) (not e!413567))))

(assert (=> b!739599 (= res!497399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739600 () Bool)

(assert (=> b!739600 (= e!413568 e!413569)))

(declare-fun res!497390 () Bool)

(assert (=> b!739600 (=> (not res!497390) (not e!413569))))

(assert (=> b!739600 (= res!497390 (= (seekEntryOrOpen!0 (select (arr!19806 a!3186) j!159) a!3186 mask!3328) lt!328473))))

(assert (=> b!739600 (= lt!328473 (Found!7413 j!159))))

(declare-fun b!739601 () Bool)

(declare-fun res!497404 () Bool)

(assert (=> b!739601 (=> (not res!497404) (not e!413561))))

(assert (=> b!739601 (= res!497404 e!413566)))

(declare-fun c!81477 () Bool)

(assert (=> b!739601 (= c!81477 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65266 res!497400) b!739598))

(assert (= (and b!739598 res!497405) b!739578))

(assert (= (and b!739578 res!497391) b!739581))

(assert (= (and b!739581 res!497393) b!739588))

(assert (= (and b!739588 res!497395) b!739594))

(assert (= (and b!739594 res!497403) b!739599))

(assert (= (and b!739599 res!497399) b!739591))

(assert (= (and b!739591 res!497401) b!739580))

(assert (= (and b!739580 res!497398) b!739592))

(assert (= (and b!739592 res!497392) b!739586))

(assert (= (and b!739586 res!497396) b!739601))

(assert (= (and b!739601 c!81477) b!739587))

(assert (= (and b!739601 (not c!81477)) b!739582))

(assert (= (and b!739601 res!497404) b!739590))

(assert (= (and b!739590 res!497389) b!739583))

(assert (= (and b!739583 res!497394) b!739600))

(assert (= (and b!739600 res!497390) b!739597))

(assert (= (and b!739583 (not res!497402)) b!739593))

(assert (= (and b!739593 c!81475) b!739596))

(assert (= (and b!739593 (not c!81475)) b!739595))

(assert (= (and b!739593 (not res!497406)) b!739584))

(assert (= (and b!739584 c!81476) b!739585))

(assert (= (and b!739584 (not c!81476)) b!739589))

(assert (= (and b!739584 (not res!497397)) b!739579))

(declare-fun m!690991 () Bool)

(assert (=> b!739587 m!690991))

(assert (=> b!739587 m!690991))

(declare-fun m!690993 () Bool)

(assert (=> b!739587 m!690993))

(assert (=> b!739582 m!690991))

(assert (=> b!739582 m!690991))

(declare-fun m!690995 () Bool)

(assert (=> b!739582 m!690995))

(assert (=> b!739600 m!690991))

(assert (=> b!739600 m!690991))

(declare-fun m!690997 () Bool)

(assert (=> b!739600 m!690997))

(assert (=> b!739596 m!690991))

(assert (=> b!739596 m!690991))

(declare-fun m!690999 () Bool)

(assert (=> b!739596 m!690999))

(declare-fun m!691001 () Bool)

(assert (=> b!739581 m!691001))

(assert (=> b!739592 m!690991))

(assert (=> b!739592 m!690991))

(declare-fun m!691003 () Bool)

(assert (=> b!739592 m!691003))

(assert (=> b!739592 m!691003))

(assert (=> b!739592 m!690991))

(declare-fun m!691005 () Bool)

(assert (=> b!739592 m!691005))

(declare-fun m!691007 () Bool)

(assert (=> b!739593 m!691007))

(declare-fun m!691009 () Bool)

(assert (=> b!739579 m!691009))

(declare-fun m!691011 () Bool)

(assert (=> b!739583 m!691011))

(declare-fun m!691013 () Bool)

(assert (=> b!739583 m!691013))

(declare-fun m!691015 () Bool)

(assert (=> b!739591 m!691015))

(declare-fun m!691017 () Bool)

(assert (=> b!739590 m!691017))

(declare-fun m!691019 () Bool)

(assert (=> b!739590 m!691019))

(declare-fun m!691021 () Bool)

(assert (=> b!739590 m!691021))

(declare-fun m!691023 () Bool)

(assert (=> b!739590 m!691023))

(assert (=> b!739590 m!691017))

(declare-fun m!691025 () Bool)

(assert (=> b!739590 m!691025))

(declare-fun m!691027 () Bool)

(assert (=> b!739594 m!691027))

(assert (=> b!739595 m!690991))

(assert (=> b!739595 m!690991))

(assert (=> b!739595 m!690995))

(assert (=> b!739595 m!690991))

(declare-fun m!691029 () Bool)

(assert (=> b!739595 m!691029))

(assert (=> b!739589 m!690991))

(assert (=> b!739589 m!690991))

(assert (=> b!739589 m!691029))

(assert (=> b!739578 m!690991))

(assert (=> b!739578 m!690991))

(declare-fun m!691031 () Bool)

(assert (=> b!739578 m!691031))

(declare-fun m!691033 () Bool)

(assert (=> start!65266 m!691033))

(declare-fun m!691035 () Bool)

(assert (=> start!65266 m!691035))

(declare-fun m!691037 () Bool)

(assert (=> b!739586 m!691037))

(declare-fun m!691039 () Bool)

(assert (=> b!739599 m!691039))

(assert (=> b!739585 m!690991))

(assert (=> b!739585 m!690991))

(assert (=> b!739585 m!690999))

(declare-fun m!691041 () Bool)

(assert (=> b!739588 m!691041))

(assert (=> b!739597 m!690991))

(assert (=> b!739597 m!690991))

(declare-fun m!691043 () Bool)

(assert (=> b!739597 m!691043))

(push 1)

