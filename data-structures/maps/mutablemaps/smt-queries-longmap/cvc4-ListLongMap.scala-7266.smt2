; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92818 () Bool)

(assert start!92818)

(declare-fun res!702956 () Bool)

(declare-fun e!598653 () Bool)

(assert (=> start!92818 (=> (not res!702956) (not e!598653))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66459 0))(
  ( (array!66460 (arr!31959 (Array (_ BitVec 32) (_ BitVec 64))) (size!32496 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66459)

(assert (=> start!92818 (= res!702956 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32496 a!3488)) (bvslt (size!32496 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92818 e!598653))

(assert (=> start!92818 true))

(declare-fun array_inv!24581 (array!66459) Bool)

(assert (=> start!92818 (array_inv!24581 a!3488)))

(declare-fun b!1053859 () Bool)

(declare-fun e!598652 () Bool)

(assert (=> b!1053859 (= e!598652 (not true))))

(declare-fun e!598650 () Bool)

(assert (=> b!1053859 e!598650))

(declare-fun res!702950 () Bool)

(assert (=> b!1053859 (=> (not res!702950) (not e!598650))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun lt!465229 () (_ BitVec 32))

(assert (=> b!1053859 (= res!702950 (= (select (store (arr!31959 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465229) k!2747))))

(declare-fun b!1053860 () Bool)

(declare-fun res!702951 () Bool)

(assert (=> b!1053860 (=> (not res!702951) (not e!598653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053860 (= res!702951 (validKeyInArray!0 k!2747))))

(declare-fun b!1053861 () Bool)

(declare-fun res!702953 () Bool)

(assert (=> b!1053861 (=> (not res!702953) (not e!598653))))

(assert (=> b!1053861 (= res!702953 (= (select (arr!31959 a!3488) i!1381) k!2747))))

(declare-fun b!1053862 () Bool)

(declare-fun e!598654 () Bool)

(declare-fun arrayContainsKey!0 (array!66459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053862 (= e!598654 (arrayContainsKey!0 a!3488 k!2747 lt!465229))))

(declare-fun b!1053863 () Bool)

(assert (=> b!1053863 (= e!598650 e!598654)))

(declare-fun res!702955 () Bool)

(assert (=> b!1053863 (=> res!702955 e!598654)))

(assert (=> b!1053863 (= res!702955 (bvsle lt!465229 i!1381))))

(declare-fun b!1053864 () Bool)

(declare-fun e!598651 () Bool)

(assert (=> b!1053864 (= e!598653 e!598651)))

(declare-fun res!702952 () Bool)

(assert (=> b!1053864 (=> (not res!702952) (not e!598651))))

(declare-fun lt!465228 () array!66459)

(assert (=> b!1053864 (= res!702952 (arrayContainsKey!0 lt!465228 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053864 (= lt!465228 (array!66460 (store (arr!31959 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32496 a!3488)))))

(declare-fun b!1053865 () Bool)

(declare-fun res!702954 () Bool)

(assert (=> b!1053865 (=> (not res!702954) (not e!598653))))

(declare-datatypes ((List!22402 0))(
  ( (Nil!22399) (Cons!22398 (h!23607 (_ BitVec 64)) (t!31716 List!22402)) )
))
(declare-fun arrayNoDuplicates!0 (array!66459 (_ BitVec 32) List!22402) Bool)

(assert (=> b!1053865 (= res!702954 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22399))))

(declare-fun b!1053866 () Bool)

(assert (=> b!1053866 (= e!598651 e!598652)))

(declare-fun res!702957 () Bool)

(assert (=> b!1053866 (=> (not res!702957) (not e!598652))))

(assert (=> b!1053866 (= res!702957 (not (= lt!465229 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66459 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053866 (= lt!465229 (arrayScanForKey!0 lt!465228 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92818 res!702956) b!1053865))

(assert (= (and b!1053865 res!702954) b!1053860))

(assert (= (and b!1053860 res!702951) b!1053861))

(assert (= (and b!1053861 res!702953) b!1053864))

(assert (= (and b!1053864 res!702952) b!1053866))

(assert (= (and b!1053866 res!702957) b!1053859))

(assert (= (and b!1053859 res!702950) b!1053863))

(assert (= (and b!1053863 (not res!702955)) b!1053862))

(declare-fun m!974169 () Bool)

(assert (=> b!1053862 m!974169))

(declare-fun m!974171 () Bool)

(assert (=> b!1053865 m!974171))

(declare-fun m!974173 () Bool)

(assert (=> b!1053859 m!974173))

(declare-fun m!974175 () Bool)

(assert (=> b!1053859 m!974175))

(declare-fun m!974177 () Bool)

(assert (=> b!1053866 m!974177))

(declare-fun m!974179 () Bool)

(assert (=> start!92818 m!974179))

(declare-fun m!974181 () Bool)

(assert (=> b!1053861 m!974181))

(declare-fun m!974183 () Bool)

(assert (=> b!1053864 m!974183))

(assert (=> b!1053864 m!974173))

(declare-fun m!974185 () Bool)

(assert (=> b!1053860 m!974185))

(push 1)

(assert (not b!1053860))

(assert (not b!1053866))

