; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103924 () Bool)

(assert start!103924)

(declare-fun b!1243319 () Bool)

(declare-fun res!829223 () Bool)

(declare-fun e!704902 () Bool)

(assert (=> b!1243319 (=> (not res!829223) (not e!704902))))

(declare-datatypes ((List!27551 0))(
  ( (Nil!27548) (Cons!27547 (h!28756 (_ BitVec 64)) (t!41027 List!27551)) )
))
(declare-fun contains!7423 (List!27551 (_ BitVec 64)) Bool)

(assert (=> b!1243319 (= res!829223 (not (contains!7423 Nil!27548 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243320 () Bool)

(declare-fun res!829230 () Bool)

(assert (=> b!1243320 (=> (not res!829230) (not e!704902))))

(declare-fun lt!562321 () List!27551)

(declare-fun noDuplicate!2013 (List!27551) Bool)

(assert (=> b!1243320 (= res!829230 (noDuplicate!2013 lt!562321))))

(declare-fun b!1243321 () Bool)

(declare-fun res!829225 () Bool)

(assert (=> b!1243321 (=> (not res!829225) (not e!704902))))

(assert (=> b!1243321 (= res!829225 (not (contains!7423 Nil!27548 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829226 () Bool)

(declare-fun e!704903 () Bool)

(assert (=> start!103924 (=> (not res!829226) (not e!704903))))

(declare-datatypes ((array!79962 0))(
  ( (array!79963 (arr!38570 (Array (_ BitVec 32) (_ BitVec 64))) (size!39107 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79962)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103924 (= res!829226 (and (bvslt (size!39107 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39107 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39107 a!3892))))))

(assert (=> start!103924 e!704903))

(declare-fun array_inv!29346 (array!79962) Bool)

(assert (=> start!103924 (array_inv!29346 a!3892)))

(assert (=> start!103924 true))

(declare-fun b!1243322 () Bool)

(declare-fun res!829222 () Bool)

(assert (=> b!1243322 (=> (not res!829222) (not e!704902))))

(assert (=> b!1243322 (= res!829222 (not (contains!7423 lt!562321 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243323 () Bool)

(declare-fun res!829221 () Bool)

(assert (=> b!1243323 (=> (not res!829221) (not e!704902))))

(assert (=> b!1243323 (= res!829221 (not (contains!7423 lt!562321 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243324 () Bool)

(declare-fun res!829229 () Bool)

(assert (=> b!1243324 (=> (not res!829229) (not e!704903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243324 (= res!829229 (validKeyInArray!0 (select (arr!38570 a!3892) from!3270)))))

(declare-fun b!1243325 () Bool)

(declare-fun res!829231 () Bool)

(assert (=> b!1243325 (=> (not res!829231) (not e!704903))))

(declare-fun arrayNoDuplicates!0 (array!79962 (_ BitVec 32) List!27551) Bool)

(assert (=> b!1243325 (= res!829231 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27548))))

(declare-fun b!1243326 () Bool)

(assert (=> b!1243326 (= e!704902 false)))

(declare-fun lt!562320 () Bool)

(assert (=> b!1243326 (= lt!562320 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562321))))

(declare-datatypes ((Unit!41219 0))(
  ( (Unit!41220) )
))
(declare-fun lt!562319 () Unit!41219)

(declare-fun noDuplicateSubseq!88 (List!27551 List!27551) Unit!41219)

(assert (=> b!1243326 (= lt!562319 (noDuplicateSubseq!88 Nil!27548 lt!562321))))

(declare-fun b!1243327 () Bool)

(assert (=> b!1243327 (= e!704903 e!704902)))

(declare-fun res!829228 () Bool)

(assert (=> b!1243327 (=> (not res!829228) (not e!704902))))

(assert (=> b!1243327 (= res!829228 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243327 (= lt!562321 (Cons!27547 (select (arr!38570 a!3892) from!3270) Nil!27548))))

(declare-fun b!1243328 () Bool)

(declare-fun res!829227 () Bool)

(assert (=> b!1243328 (=> (not res!829227) (not e!704903))))

(assert (=> b!1243328 (= res!829227 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39107 a!3892)) (not (= newFrom!287 (size!39107 a!3892)))))))

(declare-fun b!1243329 () Bool)

(declare-fun res!829224 () Bool)

(assert (=> b!1243329 (=> (not res!829224) (not e!704902))))

(declare-fun subseq!634 (List!27551 List!27551) Bool)

(assert (=> b!1243329 (= res!829224 (subseq!634 Nil!27548 lt!562321))))

(assert (= (and start!103924 res!829226) b!1243325))

(assert (= (and b!1243325 res!829231) b!1243328))

(assert (= (and b!1243328 res!829227) b!1243324))

(assert (= (and b!1243324 res!829229) b!1243327))

(assert (= (and b!1243327 res!829228) b!1243320))

(assert (= (and b!1243320 res!829230) b!1243322))

(assert (= (and b!1243322 res!829222) b!1243323))

(assert (= (and b!1243323 res!829221) b!1243321))

(assert (= (and b!1243321 res!829225) b!1243319))

(assert (= (and b!1243319 res!829223) b!1243329))

(assert (= (and b!1243329 res!829224) b!1243326))

(declare-fun m!1145913 () Bool)

(assert (=> b!1243326 m!1145913))

(declare-fun m!1145915 () Bool)

(assert (=> b!1243326 m!1145915))

(declare-fun m!1145917 () Bool)

(assert (=> b!1243325 m!1145917))

(declare-fun m!1145919 () Bool)

(assert (=> b!1243319 m!1145919))

(declare-fun m!1145921 () Bool)

(assert (=> b!1243324 m!1145921))

(assert (=> b!1243324 m!1145921))

(declare-fun m!1145923 () Bool)

(assert (=> b!1243324 m!1145923))

(declare-fun m!1145925 () Bool)

(assert (=> b!1243321 m!1145925))

(declare-fun m!1145927 () Bool)

(assert (=> b!1243322 m!1145927))

(declare-fun m!1145929 () Bool)

(assert (=> b!1243320 m!1145929))

(declare-fun m!1145931 () Bool)

(assert (=> b!1243323 m!1145931))

(declare-fun m!1145933 () Bool)

(assert (=> b!1243329 m!1145933))

(declare-fun m!1145935 () Bool)

(assert (=> start!103924 m!1145935))

(assert (=> b!1243327 m!1145921))

(push 1)

(assert (not b!1243329))

(assert (not b!1243319))

(assert (not b!1243320))

