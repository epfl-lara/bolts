; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92580 () Bool)

(assert start!92580)

(declare-fun b!1052619 () Bool)

(declare-fun res!701855 () Bool)

(declare-fun e!597716 () Bool)

(assert (=> b!1052619 (=> (not res!701855) (not e!597716))))

(declare-datatypes ((array!66329 0))(
  ( (array!66330 (arr!31900 (Array (_ BitVec 32) (_ BitVec 64))) (size!32437 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66329)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052619 (= res!701855 (= (select (arr!31900 a!3488) i!1381) k!2747))))

(declare-fun b!1052620 () Bool)

(declare-fun e!597710 () Bool)

(assert (=> b!1052620 (= e!597710 true)))

(declare-fun lt!464886 () (_ BitVec 32))

(assert (=> b!1052620 (not (= (select (arr!31900 a!3488) lt!464886) k!2747))))

(declare-datatypes ((Unit!34481 0))(
  ( (Unit!34482) )
))
(declare-fun lt!464883 () Unit!34481)

(declare-datatypes ((List!22343 0))(
  ( (Nil!22340) (Cons!22339 (h!23548 (_ BitVec 64)) (t!31657 List!22343)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66329 (_ BitVec 64) (_ BitVec 32) List!22343) Unit!34481)

(assert (=> b!1052620 (= lt!464883 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!464886 Nil!22340))))

(declare-fun lt!464882 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052620 (arrayContainsKey!0 a!3488 k!2747 lt!464882)))

(declare-fun lt!464885 () Unit!34481)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66329 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34481)

(assert (=> b!1052620 (= lt!464885 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464882))))

(assert (=> b!1052620 (= lt!464882 (bvadd #b00000000000000000000000000000001 lt!464886))))

(declare-fun arrayNoDuplicates!0 (array!66329 (_ BitVec 32) List!22343) Bool)

(assert (=> b!1052620 (arrayNoDuplicates!0 a!3488 lt!464886 Nil!22340)))

(declare-fun lt!464887 () Unit!34481)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66329 (_ BitVec 32) (_ BitVec 32)) Unit!34481)

(assert (=> b!1052620 (= lt!464887 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464886))))

(declare-fun b!1052621 () Bool)

(declare-fun e!597711 () Bool)

(assert (=> b!1052621 (= e!597711 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052622 () Bool)

(declare-fun e!597715 () Bool)

(assert (=> b!1052622 (= e!597715 (not e!597710))))

(declare-fun res!701857 () Bool)

(assert (=> b!1052622 (=> res!701857 e!597710)))

(assert (=> b!1052622 (= res!701857 (or (bvsgt lt!464886 i!1381) (bvsle i!1381 lt!464886)))))

(declare-fun e!597713 () Bool)

(assert (=> b!1052622 e!597713))

(declare-fun res!701860 () Bool)

(assert (=> b!1052622 (=> (not res!701860) (not e!597713))))

(assert (=> b!1052622 (= res!701860 (= (select (store (arr!31900 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464886) k!2747))))

(declare-fun b!1052623 () Bool)

(declare-fun res!701854 () Bool)

(assert (=> b!1052623 (=> (not res!701854) (not e!597716))))

(assert (=> b!1052623 (= res!701854 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22340))))

(declare-fun b!1052624 () Bool)

(assert (=> b!1052624 (= e!597713 e!597711)))

(declare-fun res!701856 () Bool)

(assert (=> b!1052624 (=> res!701856 e!597711)))

(assert (=> b!1052624 (= res!701856 (or (bvsgt lt!464886 i!1381) (bvsle i!1381 lt!464886)))))

(declare-fun res!701859 () Bool)

(assert (=> start!92580 (=> (not res!701859) (not e!597716))))

(assert (=> start!92580 (= res!701859 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32437 a!3488)) (bvslt (size!32437 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92580 e!597716))

(assert (=> start!92580 true))

(declare-fun array_inv!24522 (array!66329) Bool)

(assert (=> start!92580 (array_inv!24522 a!3488)))

(declare-fun b!1052625 () Bool)

(declare-fun res!701861 () Bool)

(assert (=> b!1052625 (=> (not res!701861) (not e!597716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052625 (= res!701861 (validKeyInArray!0 k!2747))))

(declare-fun b!1052626 () Bool)

(declare-fun e!597714 () Bool)

(assert (=> b!1052626 (= e!597716 e!597714)))

(declare-fun res!701858 () Bool)

(assert (=> b!1052626 (=> (not res!701858) (not e!597714))))

(declare-fun lt!464884 () array!66329)

(assert (=> b!1052626 (= res!701858 (arrayContainsKey!0 lt!464884 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052626 (= lt!464884 (array!66330 (store (arr!31900 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32437 a!3488)))))

(declare-fun b!1052627 () Bool)

(assert (=> b!1052627 (= e!597714 e!597715)))

(declare-fun res!701862 () Bool)

(assert (=> b!1052627 (=> (not res!701862) (not e!597715))))

(assert (=> b!1052627 (= res!701862 (not (= lt!464886 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66329 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052627 (= lt!464886 (arrayScanForKey!0 lt!464884 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92580 res!701859) b!1052623))

(assert (= (and b!1052623 res!701854) b!1052625))

(assert (= (and b!1052625 res!701861) b!1052619))

(assert (= (and b!1052619 res!701855) b!1052626))

(assert (= (and b!1052626 res!701858) b!1052627))

(assert (= (and b!1052627 res!701862) b!1052622))

(assert (= (and b!1052622 res!701860) b!1052624))

(assert (= (and b!1052624 (not res!701856)) b!1052621))

(assert (= (and b!1052622 (not res!701857)) b!1052620))

(declare-fun m!973155 () Bool)

(assert (=> b!1052621 m!973155))

(declare-fun m!973157 () Bool)

(assert (=> b!1052625 m!973157))

(declare-fun m!973159 () Bool)

(assert (=> b!1052620 m!973159))

(declare-fun m!973161 () Bool)

(assert (=> b!1052620 m!973161))

(declare-fun m!973163 () Bool)

(assert (=> b!1052620 m!973163))

(declare-fun m!973165 () Bool)

(assert (=> b!1052620 m!973165))

(declare-fun m!973167 () Bool)

(assert (=> b!1052620 m!973167))

(declare-fun m!973169 () Bool)

(assert (=> b!1052620 m!973169))

(declare-fun m!973171 () Bool)

(assert (=> b!1052627 m!973171))

(declare-fun m!973173 () Bool)

(assert (=> b!1052622 m!973173))

(declare-fun m!973175 () Bool)

(assert (=> b!1052622 m!973175))

(declare-fun m!973177 () Bool)

(assert (=> b!1052623 m!973177))

(declare-fun m!973179 () Bool)

(assert (=> b!1052626 m!973179))

(assert (=> b!1052626 m!973173))

(declare-fun m!973181 () Bool)

(assert (=> start!92580 m!973181))

(declare-fun m!973183 () Bool)

(assert (=> b!1052619 m!973183))

(push 1)

