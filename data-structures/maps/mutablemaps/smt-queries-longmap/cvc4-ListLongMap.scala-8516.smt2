; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103930 () Bool)

(assert start!103930)

(declare-fun b!1243418 () Bool)

(declare-fun res!829329 () Bool)

(declare-fun e!704930 () Bool)

(assert (=> b!1243418 (=> (not res!829329) (not e!704930))))

(declare-datatypes ((List!27554 0))(
  ( (Nil!27551) (Cons!27550 (h!28759 (_ BitVec 64)) (t!41030 List!27554)) )
))
(declare-fun contains!7426 (List!27554 (_ BitVec 64)) Bool)

(assert (=> b!1243418 (= res!829329 (not (contains!7426 Nil!27551 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243419 () Bool)

(declare-fun res!829326 () Bool)

(assert (=> b!1243419 (=> (not res!829326) (not e!704930))))

(declare-fun lt!562346 () List!27554)

(declare-fun subseq!637 (List!27554 List!27554) Bool)

(assert (=> b!1243419 (= res!829326 (subseq!637 Nil!27551 lt!562346))))

(declare-fun b!1243420 () Bool)

(declare-fun e!704928 () Bool)

(assert (=> b!1243420 (= e!704928 e!704930)))

(declare-fun res!829322 () Bool)

(assert (=> b!1243420 (=> (not res!829322) (not e!704930))))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243420 (= res!829322 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((array!79968 0))(
  ( (array!79969 (arr!38573 (Array (_ BitVec 32) (_ BitVec 64))) (size!39110 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79968)

(assert (=> b!1243420 (= lt!562346 (Cons!27550 (select (arr!38573 a!3892) from!3270) Nil!27551))))

(declare-fun b!1243421 () Bool)

(declare-fun res!829324 () Bool)

(assert (=> b!1243421 (=> (not res!829324) (not e!704930))))

(assert (=> b!1243421 (= res!829324 (not (contains!7426 lt!562346 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243422 () Bool)

(assert (=> b!1243422 (= e!704930 false)))

(declare-fun lt!562348 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79968 (_ BitVec 32) List!27554) Bool)

(assert (=> b!1243422 (= lt!562348 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562346))))

(declare-datatypes ((Unit!41225 0))(
  ( (Unit!41226) )
))
(declare-fun lt!562347 () Unit!41225)

(declare-fun noDuplicateSubseq!91 (List!27554 List!27554) Unit!41225)

(assert (=> b!1243422 (= lt!562347 (noDuplicateSubseq!91 Nil!27551 lt!562346))))

(declare-fun b!1243423 () Bool)

(declare-fun res!829328 () Bool)

(assert (=> b!1243423 (=> (not res!829328) (not e!704928))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243423 (= res!829328 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39110 a!3892)) (not (= newFrom!287 (size!39110 a!3892)))))))

(declare-fun res!829327 () Bool)

(assert (=> start!103930 (=> (not res!829327) (not e!704928))))

(assert (=> start!103930 (= res!829327 (and (bvslt (size!39110 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39110 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39110 a!3892))))))

(assert (=> start!103930 e!704928))

(declare-fun array_inv!29349 (array!79968) Bool)

(assert (=> start!103930 (array_inv!29349 a!3892)))

(assert (=> start!103930 true))

(declare-fun b!1243424 () Bool)

(declare-fun res!829330 () Bool)

(assert (=> b!1243424 (=> (not res!829330) (not e!704928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243424 (= res!829330 (validKeyInArray!0 (select (arr!38573 a!3892) from!3270)))))

(declare-fun b!1243425 () Bool)

(declare-fun res!829325 () Bool)

(assert (=> b!1243425 (=> (not res!829325) (not e!704930))))

(assert (=> b!1243425 (= res!829325 (not (contains!7426 lt!562346 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243426 () Bool)

(declare-fun res!829323 () Bool)

(assert (=> b!1243426 (=> (not res!829323) (not e!704930))))

(assert (=> b!1243426 (= res!829323 (not (contains!7426 Nil!27551 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243427 () Bool)

(declare-fun res!829320 () Bool)

(assert (=> b!1243427 (=> (not res!829320) (not e!704928))))

(assert (=> b!1243427 (= res!829320 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27551))))

(declare-fun b!1243428 () Bool)

(declare-fun res!829321 () Bool)

(assert (=> b!1243428 (=> (not res!829321) (not e!704930))))

(declare-fun noDuplicate!2016 (List!27554) Bool)

(assert (=> b!1243428 (= res!829321 (noDuplicate!2016 lt!562346))))

(assert (= (and start!103930 res!829327) b!1243427))

(assert (= (and b!1243427 res!829320) b!1243423))

(assert (= (and b!1243423 res!829328) b!1243424))

(assert (= (and b!1243424 res!829330) b!1243420))

(assert (= (and b!1243420 res!829322) b!1243428))

(assert (= (and b!1243428 res!829321) b!1243425))

(assert (= (and b!1243425 res!829325) b!1243421))

(assert (= (and b!1243421 res!829324) b!1243426))

(assert (= (and b!1243426 res!829323) b!1243418))

(assert (= (and b!1243418 res!829329) b!1243419))

(assert (= (and b!1243419 res!829326) b!1243422))

(declare-fun m!1145985 () Bool)

(assert (=> b!1243421 m!1145985))

(declare-fun m!1145987 () Bool)

(assert (=> b!1243420 m!1145987))

(declare-fun m!1145989 () Bool)

(assert (=> b!1243422 m!1145989))

(declare-fun m!1145991 () Bool)

(assert (=> b!1243422 m!1145991))

(declare-fun m!1145993 () Bool)

(assert (=> b!1243418 m!1145993))

(declare-fun m!1145995 () Bool)

(assert (=> b!1243427 m!1145995))

(declare-fun m!1145997 () Bool)

(assert (=> b!1243428 m!1145997))

(declare-fun m!1145999 () Bool)

(assert (=> start!103930 m!1145999))

(declare-fun m!1146001 () Bool)

(assert (=> b!1243419 m!1146001))

(assert (=> b!1243424 m!1145987))

(assert (=> b!1243424 m!1145987))

(declare-fun m!1146003 () Bool)

(assert (=> b!1243424 m!1146003))

(declare-fun m!1146005 () Bool)

(assert (=> b!1243426 m!1146005))

(declare-fun m!1146007 () Bool)

(assert (=> b!1243425 m!1146007))

(push 1)

