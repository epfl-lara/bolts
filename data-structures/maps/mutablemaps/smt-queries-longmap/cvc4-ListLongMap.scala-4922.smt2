; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67796 () Bool)

(assert start!67796)

(declare-datatypes ((array!42791 0))(
  ( (array!42792 (arr!20480 (Array (_ BitVec 32) (_ BitVec 64))) (size!20901 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42791)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!437728 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!787451 () Bool)

(declare-datatypes ((SeekEntryResult!8087 0))(
  ( (MissingZero!8087 (index!34715 (_ BitVec 32))) (Found!8087 (index!34716 (_ BitVec 32))) (Intermediate!8087 (undefined!8899 Bool) (index!34717 (_ BitVec 32)) (x!65676 (_ BitVec 32))) (Undefined!8087) (MissingVacant!8087 (index!34718 (_ BitVec 32))) )
))
(declare-fun lt!351300 () SeekEntryResult!8087)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42791 (_ BitVec 32)) SeekEntryResult!8087)

(assert (=> b!787451 (= e!437728 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20480 a!3186) j!159) a!3186 mask!3328) lt!351300))))

(declare-fun b!787452 () Bool)

(declare-fun res!533468 () Bool)

(declare-fun e!437725 () Bool)

(assert (=> b!787452 (=> (not res!533468) (not e!437725))))

(declare-fun e!437723 () Bool)

(assert (=> b!787452 (= res!533468 e!437723)))

(declare-fun c!87402 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!787452 (= c!87402 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787453 () Bool)

(declare-fun res!533481 () Bool)

(declare-fun e!437729 () Bool)

(assert (=> b!787453 (=> (not res!533481) (not e!437729))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787453 (= res!533481 (validKeyInArray!0 k!2102))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!351292 () SeekEntryResult!8087)

(declare-fun b!787454 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42791 (_ BitVec 32)) SeekEntryResult!8087)

(assert (=> b!787454 (= e!437723 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20480 a!3186) j!159) a!3186 mask!3328) lt!351292))))

(declare-fun b!787455 () Bool)

(assert (=> b!787455 (= e!437723 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20480 a!3186) j!159) a!3186 mask!3328) (Found!8087 j!159)))))

(declare-fun b!787456 () Bool)

(declare-fun e!437732 () Bool)

(declare-fun e!437730 () Bool)

(assert (=> b!787456 (= e!437732 e!437730)))

(declare-fun res!533474 () Bool)

(assert (=> b!787456 (=> res!533474 e!437730)))

(declare-fun lt!351298 () SeekEntryResult!8087)

(assert (=> b!787456 (= res!533474 (not (= lt!351298 lt!351300)))))

(assert (=> b!787456 (= lt!351298 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20480 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787457 () Bool)

(declare-fun res!533466 () Bool)

(declare-fun e!437724 () Bool)

(assert (=> b!787457 (=> (not res!533466) (not e!437724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42791 (_ BitVec 32)) Bool)

(assert (=> b!787457 (= res!533466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787459 () Bool)

(declare-fun res!533479 () Bool)

(assert (=> b!787459 (=> (not res!533479) (not e!437724))))

(declare-datatypes ((List!14535 0))(
  ( (Nil!14532) (Cons!14531 (h!15654 (_ BitVec 64)) (t!20858 List!14535)) )
))
(declare-fun arrayNoDuplicates!0 (array!42791 (_ BitVec 32) List!14535) Bool)

(assert (=> b!787459 (= res!533479 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14532))))

(declare-fun b!787460 () Bool)

(assert (=> b!787460 (= e!437724 e!437725)))

(declare-fun res!533472 () Bool)

(assert (=> b!787460 (=> (not res!533472) (not e!437725))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787460 (= res!533472 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20480 a!3186) j!159) mask!3328) (select (arr!20480 a!3186) j!159) a!3186 mask!3328) lt!351292))))

(assert (=> b!787460 (= lt!351292 (Intermediate!8087 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787461 () Bool)

(assert (=> b!787461 (= e!437729 e!437724)))

(declare-fun res!533470 () Bool)

(assert (=> b!787461 (=> (not res!533470) (not e!437724))))

(declare-fun lt!351297 () SeekEntryResult!8087)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!787461 (= res!533470 (or (= lt!351297 (MissingZero!8087 i!1173)) (= lt!351297 (MissingVacant!8087 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42791 (_ BitVec 32)) SeekEntryResult!8087)

(assert (=> b!787461 (= lt!351297 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787462 () Bool)

(declare-fun e!437727 () Bool)

(assert (=> b!787462 (= e!437730 e!437727)))

(declare-fun res!533471 () Bool)

(assert (=> b!787462 (=> res!533471 e!437727)))

(declare-fun lt!351291 () (_ BitVec 64))

(declare-fun lt!351295 () (_ BitVec 64))

(assert (=> b!787462 (= res!533471 (= lt!351291 lt!351295))))

(assert (=> b!787462 (= lt!351291 (select (store (arr!20480 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787463 () Bool)

(declare-fun e!437734 () Bool)

(declare-fun lt!351290 () SeekEntryResult!8087)

(assert (=> b!787463 (= e!437734 (= lt!351290 lt!351298))))

(declare-fun b!787464 () Bool)

(declare-fun e!437733 () Bool)

(assert (=> b!787464 (= e!437733 (not e!437732))))

(declare-fun res!533465 () Bool)

(assert (=> b!787464 (=> res!533465 e!437732)))

(declare-fun lt!351301 () SeekEntryResult!8087)

(assert (=> b!787464 (= res!533465 (or (not (is-Intermediate!8087 lt!351301)) (bvslt x!1131 (x!65676 lt!351301)) (not (= x!1131 (x!65676 lt!351301))) (not (= index!1321 (index!34717 lt!351301)))))))

(assert (=> b!787464 e!437728))

(declare-fun res!533467 () Bool)

(assert (=> b!787464 (=> (not res!533467) (not e!437728))))

(assert (=> b!787464 (= res!533467 (= lt!351290 lt!351300))))

(assert (=> b!787464 (= lt!351300 (Found!8087 j!159))))

(assert (=> b!787464 (= lt!351290 (seekEntryOrOpen!0 (select (arr!20480 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!787464 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27258 0))(
  ( (Unit!27259) )
))
(declare-fun lt!351299 () Unit!27258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27258)

(assert (=> b!787464 (= lt!351299 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787465 () Bool)

(declare-fun res!533478 () Bool)

(assert (=> b!787465 (=> (not res!533478) (not e!437729))))

(assert (=> b!787465 (= res!533478 (and (= (size!20901 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20901 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20901 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787466 () Bool)

(assert (=> b!787466 (= e!437727 true)))

(assert (=> b!787466 e!437734))

(declare-fun res!533475 () Bool)

(assert (=> b!787466 (=> (not res!533475) (not e!437734))))

(assert (=> b!787466 (= res!533475 (= lt!351291 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351293 () Unit!27258)

(declare-fun e!437731 () Unit!27258)

(assert (=> b!787466 (= lt!351293 e!437731)))

(declare-fun c!87401 () Bool)

(assert (=> b!787466 (= c!87401 (= lt!351291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787467 () Bool)

(assert (=> b!787467 (= e!437725 e!437733)))

(declare-fun res!533477 () Bool)

(assert (=> b!787467 (=> (not res!533477) (not e!437733))))

(declare-fun lt!351296 () SeekEntryResult!8087)

(assert (=> b!787467 (= res!533477 (= lt!351296 lt!351301))))

(declare-fun lt!351294 () array!42791)

(assert (=> b!787467 (= lt!351301 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351295 lt!351294 mask!3328))))

(assert (=> b!787467 (= lt!351296 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351295 mask!3328) lt!351295 lt!351294 mask!3328))))

(assert (=> b!787467 (= lt!351295 (select (store (arr!20480 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787467 (= lt!351294 (array!42792 (store (arr!20480 a!3186) i!1173 k!2102) (size!20901 a!3186)))))

(declare-fun b!787468 () Bool)

(declare-fun res!533480 () Bool)

(assert (=> b!787468 (=> (not res!533480) (not e!437725))))

(assert (=> b!787468 (= res!533480 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20480 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!533476 () Bool)

(assert (=> start!67796 (=> (not res!533476) (not e!437729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67796 (= res!533476 (validMask!0 mask!3328))))

(assert (=> start!67796 e!437729))

(assert (=> start!67796 true))

(declare-fun array_inv!16254 (array!42791) Bool)

(assert (=> start!67796 (array_inv!16254 a!3186)))

(declare-fun b!787458 () Bool)

(declare-fun res!533464 () Bool)

(assert (=> b!787458 (=> (not res!533464) (not e!437729))))

(assert (=> b!787458 (= res!533464 (validKeyInArray!0 (select (arr!20480 a!3186) j!159)))))

(declare-fun b!787469 () Bool)

(declare-fun res!533482 () Bool)

(assert (=> b!787469 (=> (not res!533482) (not e!437734))))

(assert (=> b!787469 (= res!533482 (= (seekEntryOrOpen!0 lt!351295 lt!351294 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351295 lt!351294 mask!3328)))))

(declare-fun b!787470 () Bool)

(declare-fun Unit!27260 () Unit!27258)

(assert (=> b!787470 (= e!437731 Unit!27260)))

(assert (=> b!787470 false))

(declare-fun b!787471 () Bool)

(declare-fun res!533469 () Bool)

(assert (=> b!787471 (=> (not res!533469) (not e!437724))))

(assert (=> b!787471 (= res!533469 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20901 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20901 a!3186))))))

(declare-fun b!787472 () Bool)

(declare-fun Unit!27261 () Unit!27258)

(assert (=> b!787472 (= e!437731 Unit!27261)))

(declare-fun b!787473 () Bool)

(declare-fun res!533473 () Bool)

(assert (=> b!787473 (=> (not res!533473) (not e!437729))))

(declare-fun arrayContainsKey!0 (array!42791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787473 (= res!533473 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67796 res!533476) b!787465))

(assert (= (and b!787465 res!533478) b!787458))

(assert (= (and b!787458 res!533464) b!787453))

(assert (= (and b!787453 res!533481) b!787473))

(assert (= (and b!787473 res!533473) b!787461))

(assert (= (and b!787461 res!533470) b!787457))

(assert (= (and b!787457 res!533466) b!787459))

(assert (= (and b!787459 res!533479) b!787471))

(assert (= (and b!787471 res!533469) b!787460))

(assert (= (and b!787460 res!533472) b!787468))

(assert (= (and b!787468 res!533480) b!787452))

(assert (= (and b!787452 c!87402) b!787454))

(assert (= (and b!787452 (not c!87402)) b!787455))

(assert (= (and b!787452 res!533468) b!787467))

(assert (= (and b!787467 res!533477) b!787464))

(assert (= (and b!787464 res!533467) b!787451))

(assert (= (and b!787464 (not res!533465)) b!787456))

(assert (= (and b!787456 (not res!533474)) b!787462))

(assert (= (and b!787462 (not res!533471)) b!787466))

(assert (= (and b!787466 c!87401) b!787470))

(assert (= (and b!787466 (not c!87401)) b!787472))

(assert (= (and b!787466 res!533475) b!787469))

(assert (= (and b!787469 res!533482) b!787463))

(declare-fun m!729069 () Bool)

(assert (=> b!787468 m!729069))

(declare-fun m!729071 () Bool)

(assert (=> b!787457 m!729071))

(declare-fun m!729073 () Bool)

(assert (=> b!787464 m!729073))

(assert (=> b!787464 m!729073))

(declare-fun m!729075 () Bool)

(assert (=> b!787464 m!729075))

(declare-fun m!729077 () Bool)

(assert (=> b!787464 m!729077))

(declare-fun m!729079 () Bool)

(assert (=> b!787464 m!729079))

(declare-fun m!729081 () Bool)

(assert (=> start!67796 m!729081))

(declare-fun m!729083 () Bool)

(assert (=> start!67796 m!729083))

(declare-fun m!729085 () Bool)

(assert (=> b!787467 m!729085))

(declare-fun m!729087 () Bool)

(assert (=> b!787467 m!729087))

(assert (=> b!787467 m!729085))

(declare-fun m!729089 () Bool)

(assert (=> b!787467 m!729089))

(declare-fun m!729091 () Bool)

(assert (=> b!787467 m!729091))

(declare-fun m!729093 () Bool)

(assert (=> b!787467 m!729093))

(declare-fun m!729095 () Bool)

(assert (=> b!787469 m!729095))

(declare-fun m!729097 () Bool)

(assert (=> b!787469 m!729097))

(assert (=> b!787455 m!729073))

(assert (=> b!787455 m!729073))

(declare-fun m!729099 () Bool)

(assert (=> b!787455 m!729099))

(declare-fun m!729101 () Bool)

(assert (=> b!787473 m!729101))

(assert (=> b!787460 m!729073))

(assert (=> b!787460 m!729073))

(declare-fun m!729103 () Bool)

(assert (=> b!787460 m!729103))

(assert (=> b!787460 m!729103))

(assert (=> b!787460 m!729073))

(declare-fun m!729105 () Bool)

(assert (=> b!787460 m!729105))

(assert (=> b!787458 m!729073))

(assert (=> b!787458 m!729073))

(declare-fun m!729107 () Bool)

(assert (=> b!787458 m!729107))

(declare-fun m!729109 () Bool)

(assert (=> b!787453 m!729109))

(assert (=> b!787456 m!729073))

(assert (=> b!787456 m!729073))

(assert (=> b!787456 m!729099))

(assert (=> b!787454 m!729073))

(assert (=> b!787454 m!729073))

(declare-fun m!729111 () Bool)

(assert (=> b!787454 m!729111))

(assert (=> b!787451 m!729073))

(assert (=> b!787451 m!729073))

(declare-fun m!729113 () Bool)

(assert (=> b!787451 m!729113))

(declare-fun m!729115 () Bool)

(assert (=> b!787461 m!729115))

(declare-fun m!729117 () Bool)

(assert (=> b!787459 m!729117))

(assert (=> b!787462 m!729087))

(declare-fun m!729119 () Bool)

(assert (=> b!787462 m!729119))

(push 1)

