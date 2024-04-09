; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93106 () Bool)

(assert start!93106)

(declare-fun b!1055892 () Bool)

(declare-fun res!704823 () Bool)

(declare-fun e!600232 () Bool)

(assert (=> b!1055892 (=> (not res!704823) (not e!600232))))

(declare-datatypes ((array!66579 0))(
  ( (array!66580 (arr!32013 (Array (_ BitVec 32) (_ BitVec 64))) (size!32550 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66579)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055892 (= res!704823 (= (select (arr!32013 a!3488) i!1381) k!2747))))

(declare-fun res!704819 () Bool)

(assert (=> start!93106 (=> (not res!704819) (not e!600232))))

(assert (=> start!93106 (= res!704819 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32550 a!3488)) (bvslt (size!32550 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93106 e!600232))

(assert (=> start!93106 true))

(declare-fun array_inv!24635 (array!66579) Bool)

(assert (=> start!93106 (array_inv!24635 a!3488)))

(declare-fun b!1055893 () Bool)

(declare-fun e!600230 () Bool)

(assert (=> b!1055893 (= e!600232 e!600230)))

(declare-fun res!704821 () Bool)

(assert (=> b!1055893 (=> (not res!704821) (not e!600230))))

(declare-fun lt!465975 () array!66579)

(declare-fun arrayContainsKey!0 (array!66579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055893 (= res!704821 (arrayContainsKey!0 lt!465975 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055893 (= lt!465975 (array!66580 (store (arr!32013 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32550 a!3488)))))

(declare-fun b!1055894 () Bool)

(declare-fun res!704818 () Bool)

(assert (=> b!1055894 (=> (not res!704818) (not e!600232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055894 (= res!704818 (validKeyInArray!0 k!2747))))

(declare-fun b!1055895 () Bool)

(declare-fun e!600235 () Bool)

(assert (=> b!1055895 (= e!600230 e!600235)))

(declare-fun res!704820 () Bool)

(assert (=> b!1055895 (=> (not res!704820) (not e!600235))))

(declare-fun lt!465977 () (_ BitVec 32))

(assert (=> b!1055895 (= res!704820 (not (= lt!465977 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66579 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055895 (= lt!465977 (arrayScanForKey!0 lt!465975 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055896 () Bool)

(declare-fun e!600233 () Bool)

(assert (=> b!1055896 (= e!600235 (not e!600233))))

(declare-fun res!704817 () Bool)

(assert (=> b!1055896 (=> res!704817 e!600233)))

(assert (=> b!1055896 (= res!704817 (bvsle lt!465977 i!1381))))

(declare-fun e!600231 () Bool)

(assert (=> b!1055896 e!600231))

(declare-fun res!704822 () Bool)

(assert (=> b!1055896 (=> (not res!704822) (not e!600231))))

(assert (=> b!1055896 (= res!704822 (= (select (store (arr!32013 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465977) k!2747))))

(declare-fun b!1055897 () Bool)

(assert (=> b!1055897 (= e!600233 true)))

(assert (=> b!1055897 false))

(declare-datatypes ((Unit!34593 0))(
  ( (Unit!34594) )
))
(declare-fun lt!465979 () Unit!34593)

(declare-datatypes ((List!22456 0))(
  ( (Nil!22453) (Cons!22452 (h!23661 (_ BitVec 64)) (t!31770 List!22456)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66579 (_ BitVec 64) (_ BitVec 32) List!22456) Unit!34593)

(assert (=> b!1055897 (= lt!465979 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22453))))

(assert (=> b!1055897 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465976 () Unit!34593)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66579 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34593)

(assert (=> b!1055897 (= lt!465976 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465977 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66579 (_ BitVec 32) List!22456) Bool)

(assert (=> b!1055897 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22453)))

(declare-fun lt!465978 () Unit!34593)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66579 (_ BitVec 32) (_ BitVec 32)) Unit!34593)

(assert (=> b!1055897 (= lt!465978 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun e!600236 () Bool)

(declare-fun b!1055898 () Bool)

(assert (=> b!1055898 (= e!600236 (arrayContainsKey!0 a!3488 k!2747 lt!465977))))

(declare-fun b!1055899 () Bool)

(assert (=> b!1055899 (= e!600231 e!600236)))

(declare-fun res!704815 () Bool)

(assert (=> b!1055899 (=> res!704815 e!600236)))

(assert (=> b!1055899 (= res!704815 (bvsle lt!465977 i!1381))))

(declare-fun b!1055900 () Bool)

(declare-fun res!704816 () Bool)

(assert (=> b!1055900 (=> (not res!704816) (not e!600232))))

(assert (=> b!1055900 (= res!704816 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22453))))

(assert (= (and start!93106 res!704819) b!1055900))

(assert (= (and b!1055900 res!704816) b!1055894))

(assert (= (and b!1055894 res!704818) b!1055892))

(assert (= (and b!1055892 res!704823) b!1055893))

(assert (= (and b!1055893 res!704821) b!1055895))

(assert (= (and b!1055895 res!704820) b!1055896))

(assert (= (and b!1055896 res!704822) b!1055899))

(assert (= (and b!1055899 (not res!704815)) b!1055898))

(assert (= (and b!1055896 (not res!704817)) b!1055897))

(declare-fun m!976013 () Bool)

(assert (=> b!1055895 m!976013))

(declare-fun m!976015 () Bool)

(assert (=> b!1055896 m!976015))

(declare-fun m!976017 () Bool)

(assert (=> b!1055896 m!976017))

(declare-fun m!976019 () Bool)

(assert (=> b!1055893 m!976019))

(assert (=> b!1055893 m!976015))

(declare-fun m!976021 () Bool)

(assert (=> start!93106 m!976021))

(declare-fun m!976023 () Bool)

(assert (=> b!1055900 m!976023))

(declare-fun m!976025 () Bool)

(assert (=> b!1055897 m!976025))

(declare-fun m!976027 () Bool)

(assert (=> b!1055897 m!976027))

(declare-fun m!976029 () Bool)

(assert (=> b!1055897 m!976029))

(declare-fun m!976031 () Bool)

(assert (=> b!1055897 m!976031))

(declare-fun m!976033 () Bool)

(assert (=> b!1055897 m!976033))

(declare-fun m!976035 () Bool)

(assert (=> b!1055894 m!976035))

(declare-fun m!976037 () Bool)

(assert (=> b!1055892 m!976037))

(declare-fun m!976039 () Bool)

(assert (=> b!1055898 m!976039))

(push 1)

(assert (not b!1055897))

