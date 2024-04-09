; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93148 () Bool)

(assert start!93148)

(declare-fun b!1056115 () Bool)

(declare-fun res!705007 () Bool)

(declare-fun e!600402 () Bool)

(assert (=> b!1056115 (=> (not res!705007) (not e!600402))))

(declare-datatypes ((array!66594 0))(
  ( (array!66595 (arr!32019 (Array (_ BitVec 32) (_ BitVec 64))) (size!32556 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66594)

(declare-datatypes ((List!22462 0))(
  ( (Nil!22459) (Cons!22458 (h!23667 (_ BitVec 64)) (t!31776 List!22462)) )
))
(declare-fun arrayNoDuplicates!0 (array!66594 (_ BitVec 32) List!22462) Bool)

(assert (=> b!1056115 (= res!705007 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22459))))

(declare-fun b!1056116 () Bool)

(declare-fun e!600400 () Bool)

(declare-fun e!600404 () Bool)

(assert (=> b!1056116 (= e!600400 e!600404)))

(declare-fun res!705009 () Bool)

(assert (=> b!1056116 (=> (not res!705009) (not e!600404))))

(declare-fun lt!466024 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056116 (= res!705009 (not (= lt!466024 i!1381)))))

(declare-fun lt!466023 () array!66594)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66594 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056116 (= lt!466024 (arrayScanForKey!0 lt!466023 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705004 () Bool)

(assert (=> start!93148 (=> (not res!705004) (not e!600402))))

(assert (=> start!93148 (= res!705004 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32556 a!3488)) (bvslt (size!32556 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93148 e!600402))

(assert (=> start!93148 true))

(declare-fun array_inv!24641 (array!66594) Bool)

(assert (=> start!93148 (array_inv!24641 a!3488)))

(declare-fun b!1056117 () Bool)

(declare-fun res!705008 () Bool)

(assert (=> b!1056117 (=> (not res!705008) (not e!600402))))

(assert (=> b!1056117 (= res!705008 (= (select (arr!32019 a!3488) i!1381) k!2747))))

(declare-fun b!1056118 () Bool)

(declare-fun res!705005 () Bool)

(assert (=> b!1056118 (=> (not res!705005) (not e!600402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056118 (= res!705005 (validKeyInArray!0 k!2747))))

(declare-fun b!1056119 () Bool)

(assert (=> b!1056119 (= e!600404 (not true))))

(declare-fun e!600399 () Bool)

(assert (=> b!1056119 e!600399))

(declare-fun res!705006 () Bool)

(assert (=> b!1056119 (=> (not res!705006) (not e!600399))))

(assert (=> b!1056119 (= res!705006 (= (select (store (arr!32019 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466024) k!2747))))

(declare-fun b!1056120 () Bool)

(assert (=> b!1056120 (= e!600402 e!600400)))

(declare-fun res!705003 () Bool)

(assert (=> b!1056120 (=> (not res!705003) (not e!600400))))

(declare-fun arrayContainsKey!0 (array!66594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056120 (= res!705003 (arrayContainsKey!0 lt!466023 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056120 (= lt!466023 (array!66595 (store (arr!32019 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32556 a!3488)))))

(declare-fun b!1056121 () Bool)

(declare-fun e!600401 () Bool)

(assert (=> b!1056121 (= e!600401 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056122 () Bool)

(assert (=> b!1056122 (= e!600399 e!600401)))

(declare-fun res!705002 () Bool)

(assert (=> b!1056122 (=> res!705002 e!600401)))

(assert (=> b!1056122 (= res!705002 (or (bvsgt lt!466024 i!1381) (bvsle i!1381 lt!466024)))))

(assert (= (and start!93148 res!705004) b!1056115))

(assert (= (and b!1056115 res!705007) b!1056118))

(assert (= (and b!1056118 res!705005) b!1056117))

(assert (= (and b!1056117 res!705008) b!1056120))

(assert (= (and b!1056120 res!705003) b!1056116))

(assert (= (and b!1056116 res!705009) b!1056119))

(assert (= (and b!1056119 res!705006) b!1056122))

(assert (= (and b!1056122 (not res!705002)) b!1056121))

(declare-fun m!976185 () Bool)

(assert (=> b!1056115 m!976185))

(declare-fun m!976187 () Bool)

(assert (=> b!1056119 m!976187))

(declare-fun m!976189 () Bool)

(assert (=> b!1056119 m!976189))

(declare-fun m!976191 () Bool)

(assert (=> start!93148 m!976191))

(declare-fun m!976193 () Bool)

(assert (=> b!1056117 m!976193))

(declare-fun m!976195 () Bool)

(assert (=> b!1056118 m!976195))

(declare-fun m!976197 () Bool)

(assert (=> b!1056120 m!976197))

(assert (=> b!1056120 m!976187))

(declare-fun m!976199 () Bool)

(assert (=> b!1056121 m!976199))

(declare-fun m!976201 () Bool)

(assert (=> b!1056116 m!976201))

(push 1)

(assert (not b!1056120))

(assert (not b!1056116))

(assert (not b!1056115))

