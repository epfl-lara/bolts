; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92490 () Bool)

(assert start!92490)

(declare-fun b!1051161 () Bool)

(declare-fun res!700401 () Bool)

(declare-fun e!596688 () Bool)

(assert (=> b!1051161 (=> (not res!700401) (not e!596688))))

(declare-datatypes ((array!66239 0))(
  ( (array!66240 (arr!31855 (Array (_ BitVec 32) (_ BitVec 64))) (size!32392 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66239)

(declare-datatypes ((List!22298 0))(
  ( (Nil!22295) (Cons!22294 (h!23503 (_ BitVec 64)) (t!31612 List!22298)) )
))
(declare-fun arrayNoDuplicates!0 (array!66239 (_ BitVec 32) List!22298) Bool)

(assert (=> b!1051161 (= res!700401 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22295))))

(declare-fun b!1051162 () Bool)

(declare-fun e!596689 () Bool)

(declare-fun e!596684 () Bool)

(assert (=> b!1051162 (= e!596689 e!596684)))

(declare-fun res!700404 () Bool)

(assert (=> b!1051162 (=> res!700404 e!596684)))

(declare-fun lt!464174 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051162 (= res!700404 (or (bvsgt lt!464174 i!1381) (bvsle i!1381 lt!464174)))))

(declare-fun b!1051163 () Bool)

(declare-fun e!596687 () Bool)

(declare-fun e!596686 () Bool)

(assert (=> b!1051163 (= e!596687 e!596686)))

(declare-fun res!700400 () Bool)

(assert (=> b!1051163 (=> (not res!700400) (not e!596686))))

(assert (=> b!1051163 (= res!700400 (not (= lt!464174 i!1381)))))

(declare-fun lt!464175 () array!66239)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66239 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051163 (= lt!464174 (arrayScanForKey!0 lt!464175 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051164 () Bool)

(declare-fun e!596685 () Bool)

(assert (=> b!1051164 (= e!596686 (not e!596685))))

(declare-fun res!700403 () Bool)

(assert (=> b!1051164 (=> res!700403 e!596685)))

(assert (=> b!1051164 (= res!700403 (or (bvsgt lt!464174 i!1381) (bvsle i!1381 lt!464174)))))

(assert (=> b!1051164 e!596689))

(declare-fun res!700402 () Bool)

(assert (=> b!1051164 (=> (not res!700402) (not e!596689))))

(assert (=> b!1051164 (= res!700402 (= (select (store (arr!31855 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464174) k!2747))))

(declare-fun b!1051165 () Bool)

(declare-fun res!700398 () Bool)

(assert (=> b!1051165 (=> (not res!700398) (not e!596688))))

(assert (=> b!1051165 (= res!700398 (= (select (arr!31855 a!3488) i!1381) k!2747))))

(declare-fun b!1051166 () Bool)

(assert (=> b!1051166 (= e!596688 e!596687)))

(declare-fun res!700397 () Bool)

(assert (=> b!1051166 (=> (not res!700397) (not e!596687))))

(declare-fun arrayContainsKey!0 (array!66239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051166 (= res!700397 (arrayContainsKey!0 lt!464175 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051166 (= lt!464175 (array!66240 (store (arr!31855 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32392 a!3488)))))

(declare-fun res!700396 () Bool)

(assert (=> start!92490 (=> (not res!700396) (not e!596688))))

(assert (=> start!92490 (= res!700396 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32392 a!3488)) (bvslt (size!32392 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92490 e!596688))

(assert (=> start!92490 true))

(declare-fun array_inv!24477 (array!66239) Bool)

(assert (=> start!92490 (array_inv!24477 a!3488)))

(declare-fun b!1051167 () Bool)

(assert (=> b!1051167 (= e!596684 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051168 () Bool)

(declare-fun res!700399 () Bool)

(assert (=> b!1051168 (=> (not res!700399) (not e!596688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051168 (= res!700399 (validKeyInArray!0 k!2747))))

(declare-fun b!1051169 () Bool)

(assert (=> b!1051169 (= e!596685 true)))

(assert (=> b!1051169 (arrayNoDuplicates!0 a!3488 lt!464174 Nil!22295)))

(declare-datatypes ((Unit!34391 0))(
  ( (Unit!34392) )
))
(declare-fun lt!464176 () Unit!34391)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66239 (_ BitVec 32) (_ BitVec 32)) Unit!34391)

(assert (=> b!1051169 (= lt!464176 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464174))))

(assert (= (and start!92490 res!700396) b!1051161))

(assert (= (and b!1051161 res!700401) b!1051168))

(assert (= (and b!1051168 res!700399) b!1051165))

(assert (= (and b!1051165 res!700398) b!1051166))

(assert (= (and b!1051166 res!700397) b!1051163))

(assert (= (and b!1051163 res!700400) b!1051164))

(assert (= (and b!1051164 res!700402) b!1051162))

(assert (= (and b!1051162 (not res!700404)) b!1051167))

(assert (= (and b!1051164 (not res!700403)) b!1051169))

(declare-fun m!971847 () Bool)

(assert (=> b!1051161 m!971847))

(declare-fun m!971849 () Bool)

(assert (=> b!1051166 m!971849))

(declare-fun m!971851 () Bool)

(assert (=> b!1051166 m!971851))

(declare-fun m!971853 () Bool)

(assert (=> b!1051163 m!971853))

(declare-fun m!971855 () Bool)

(assert (=> start!92490 m!971855))

(declare-fun m!971857 () Bool)

(assert (=> b!1051165 m!971857))

(assert (=> b!1051164 m!971851))

(declare-fun m!971859 () Bool)

(assert (=> b!1051164 m!971859))

(declare-fun m!971861 () Bool)

(assert (=> b!1051169 m!971861))

(declare-fun m!971863 () Bool)

(assert (=> b!1051169 m!971863))

(declare-fun m!971865 () Bool)

(assert (=> b!1051167 m!971865))

(declare-fun m!971867 () Bool)

(assert (=> b!1051168 m!971867))

(push 1)

