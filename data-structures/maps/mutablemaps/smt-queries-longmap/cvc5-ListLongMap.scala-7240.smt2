; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92538 () Bool)

(assert start!92538)

(declare-fun b!1051923 () Bool)

(declare-fun e!597230 () Bool)

(declare-fun e!597228 () Bool)

(assert (=> b!1051923 (= e!597230 e!597228)))

(declare-fun res!701165 () Bool)

(assert (=> b!1051923 (=> (not res!701165) (not e!597228))))

(declare-datatypes ((array!66287 0))(
  ( (array!66288 (arr!31879 (Array (_ BitVec 32) (_ BitVec 64))) (size!32416 (_ BitVec 32))) )
))
(declare-fun lt!464504 () array!66287)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051923 (= res!701165 (arrayContainsKey!0 lt!464504 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66287)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051923 (= lt!464504 (array!66288 (store (arr!31879 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32416 a!3488)))))

(declare-fun b!1051924 () Bool)

(declare-fun e!597226 () Bool)

(declare-fun e!597232 () Bool)

(assert (=> b!1051924 (= e!597226 (not e!597232))))

(declare-fun res!701164 () Bool)

(assert (=> b!1051924 (=> res!701164 e!597232)))

(declare-fun lt!464507 () (_ BitVec 32))

(assert (=> b!1051924 (= res!701164 (or (bvsgt lt!464507 i!1381) (bvsle i!1381 lt!464507)))))

(declare-fun e!597233 () Bool)

(assert (=> b!1051924 e!597233))

(declare-fun res!701159 () Bool)

(assert (=> b!1051924 (=> (not res!701159) (not e!597233))))

(assert (=> b!1051924 (= res!701159 (= (select (store (arr!31879 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464507) k!2747))))

(declare-fun b!1051926 () Bool)

(declare-fun e!597229 () Bool)

(assert (=> b!1051926 (= e!597233 e!597229)))

(declare-fun res!701167 () Bool)

(assert (=> b!1051926 (=> res!701167 e!597229)))

(assert (=> b!1051926 (= res!701167 (or (bvsgt lt!464507 i!1381) (bvsle i!1381 lt!464507)))))

(declare-fun b!1051927 () Bool)

(declare-fun e!597227 () Bool)

(assert (=> b!1051927 (= e!597227 true)))

(declare-fun lt!464509 () Bool)

(declare-datatypes ((List!22322 0))(
  ( (Nil!22319) (Cons!22318 (h!23527 (_ BitVec 64)) (t!31636 List!22322)) )
))
(declare-fun contains!6163 (List!22322 (_ BitVec 64)) Bool)

(assert (=> b!1051927 (= lt!464509 (contains!6163 Nil!22319 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051928 () Bool)

(assert (=> b!1051928 (= e!597232 e!597227)))

(declare-fun res!701161 () Bool)

(assert (=> b!1051928 (=> res!701161 e!597227)))

(declare-fun lt!464505 () (_ BitVec 32))

(assert (=> b!1051928 (= res!701161 (or (bvslt lt!464507 #b00000000000000000000000000000000) (bvsge lt!464505 (size!32416 a!3488)) (bvsge lt!464507 (size!32416 a!3488))))))

(assert (=> b!1051928 (arrayContainsKey!0 a!3488 k!2747 lt!464505)))

(declare-datatypes ((Unit!34439 0))(
  ( (Unit!34440) )
))
(declare-fun lt!464506 () Unit!34439)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66287 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34439)

(assert (=> b!1051928 (= lt!464506 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464505))))

(assert (=> b!1051928 (= lt!464505 (bvadd #b00000000000000000000000000000001 lt!464507))))

(declare-fun arrayNoDuplicates!0 (array!66287 (_ BitVec 32) List!22322) Bool)

(assert (=> b!1051928 (arrayNoDuplicates!0 a!3488 lt!464507 Nil!22319)))

(declare-fun lt!464508 () Unit!34439)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66287 (_ BitVec 32) (_ BitVec 32)) Unit!34439)

(assert (=> b!1051928 (= lt!464508 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464507))))

(declare-fun b!1051929 () Bool)

(declare-fun res!701160 () Bool)

(assert (=> b!1051929 (=> (not res!701160) (not e!597230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051929 (= res!701160 (validKeyInArray!0 k!2747))))

(declare-fun b!1051930 () Bool)

(declare-fun res!701166 () Bool)

(assert (=> b!1051930 (=> res!701166 e!597227)))

(assert (=> b!1051930 (= res!701166 (contains!6163 Nil!22319 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051925 () Bool)

(declare-fun res!701162 () Bool)

(assert (=> b!1051925 (=> res!701162 e!597227)))

(declare-fun noDuplicate!1548 (List!22322) Bool)

(assert (=> b!1051925 (= res!701162 (not (noDuplicate!1548 Nil!22319)))))

(declare-fun res!701168 () Bool)

(assert (=> start!92538 (=> (not res!701168) (not e!597230))))

(assert (=> start!92538 (= res!701168 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32416 a!3488)) (bvslt (size!32416 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92538 e!597230))

(assert (=> start!92538 true))

(declare-fun array_inv!24501 (array!66287) Bool)

(assert (=> start!92538 (array_inv!24501 a!3488)))

(declare-fun b!1051931 () Bool)

(assert (=> b!1051931 (= e!597229 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051932 () Bool)

(declare-fun res!701158 () Bool)

(assert (=> b!1051932 (=> (not res!701158) (not e!597230))))

(assert (=> b!1051932 (= res!701158 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22319))))

(declare-fun b!1051933 () Bool)

(assert (=> b!1051933 (= e!597228 e!597226)))

(declare-fun res!701169 () Bool)

(assert (=> b!1051933 (=> (not res!701169) (not e!597226))))

(assert (=> b!1051933 (= res!701169 (not (= lt!464507 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66287 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051933 (= lt!464507 (arrayScanForKey!0 lt!464504 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051934 () Bool)

(declare-fun res!701163 () Bool)

(assert (=> b!1051934 (=> (not res!701163) (not e!597230))))

(assert (=> b!1051934 (= res!701163 (= (select (arr!31879 a!3488) i!1381) k!2747))))

(assert (= (and start!92538 res!701168) b!1051932))

(assert (= (and b!1051932 res!701158) b!1051929))

(assert (= (and b!1051929 res!701160) b!1051934))

(assert (= (and b!1051934 res!701163) b!1051923))

(assert (= (and b!1051923 res!701165) b!1051933))

(assert (= (and b!1051933 res!701169) b!1051924))

(assert (= (and b!1051924 res!701159) b!1051926))

(assert (= (and b!1051926 (not res!701167)) b!1051931))

(assert (= (and b!1051924 (not res!701164)) b!1051928))

(assert (= (and b!1051928 (not res!701161)) b!1051925))

(assert (= (and b!1051925 (not res!701162)) b!1051930))

(assert (= (and b!1051930 (not res!701166)) b!1051927))

(declare-fun m!972495 () Bool)

(assert (=> b!1051930 m!972495))

(declare-fun m!972497 () Bool)

(assert (=> b!1051928 m!972497))

(declare-fun m!972499 () Bool)

(assert (=> b!1051928 m!972499))

(declare-fun m!972501 () Bool)

(assert (=> b!1051928 m!972501))

(declare-fun m!972503 () Bool)

(assert (=> b!1051928 m!972503))

(declare-fun m!972505 () Bool)

(assert (=> b!1051927 m!972505))

(declare-fun m!972507 () Bool)

(assert (=> b!1051931 m!972507))

(declare-fun m!972509 () Bool)

(assert (=> b!1051924 m!972509))

(declare-fun m!972511 () Bool)

(assert (=> b!1051924 m!972511))

(declare-fun m!972513 () Bool)

(assert (=> b!1051929 m!972513))

(declare-fun m!972515 () Bool)

(assert (=> b!1051925 m!972515))

(declare-fun m!972517 () Bool)

(assert (=> b!1051934 m!972517))

(declare-fun m!972519 () Bool)

(assert (=> b!1051923 m!972519))

(assert (=> b!1051923 m!972509))

(declare-fun m!972521 () Bool)

(assert (=> b!1051933 m!972521))

(declare-fun m!972523 () Bool)

(assert (=> b!1051932 m!972523))

(declare-fun m!972525 () Bool)

(assert (=> start!92538 m!972525))

(push 1)

