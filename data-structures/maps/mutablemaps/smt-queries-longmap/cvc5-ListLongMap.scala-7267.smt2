; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92820 () Bool)

(assert start!92820)

(declare-fun b!1053885 () Bool)

(declare-fun e!598674 () Bool)

(declare-fun e!598671 () Bool)

(assert (=> b!1053885 (= e!598674 e!598671)))

(declare-fun res!702983 () Bool)

(assert (=> b!1053885 (=> (not res!702983) (not e!598671))))

(declare-datatypes ((array!66461 0))(
  ( (array!66462 (arr!31960 (Array (_ BitVec 32) (_ BitVec 64))) (size!32497 (_ BitVec 32))) )
))
(declare-fun lt!465236 () array!66461)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053885 (= res!702983 (arrayContainsKey!0 lt!465236 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66461)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053885 (= lt!465236 (array!66462 (store (arr!31960 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32497 a!3488)))))

(declare-fun b!1053886 () Bool)

(declare-fun e!598675 () Bool)

(declare-fun e!598676 () Bool)

(assert (=> b!1053886 (= e!598675 (not e!598676))))

(declare-fun res!702976 () Bool)

(assert (=> b!1053886 (=> res!702976 e!598676)))

(declare-fun lt!465238 () (_ BitVec 32))

(assert (=> b!1053886 (= res!702976 (bvsle lt!465238 i!1381))))

(declare-fun e!598670 () Bool)

(assert (=> b!1053886 e!598670))

(declare-fun res!702977 () Bool)

(assert (=> b!1053886 (=> (not res!702977) (not e!598670))))

(assert (=> b!1053886 (= res!702977 (= (select (store (arr!31960 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465238) k!2747))))

(declare-fun b!1053887 () Bool)

(assert (=> b!1053887 (= e!598676 (bvsge lt!465238 #b00000000000000000000000000000000))))

(declare-datatypes ((List!22403 0))(
  ( (Nil!22400) (Cons!22399 (h!23608 (_ BitVec 64)) (t!31717 List!22403)) )
))
(declare-fun arrayNoDuplicates!0 (array!66461 (_ BitVec 32) List!22403) Bool)

(assert (=> b!1053887 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22400)))

(declare-datatypes ((Unit!34487 0))(
  ( (Unit!34488) )
))
(declare-fun lt!465237 () Unit!34487)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66461 (_ BitVec 32) (_ BitVec 32)) Unit!34487)

(assert (=> b!1053887 (= lt!465237 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1053888 () Bool)

(declare-fun res!702984 () Bool)

(assert (=> b!1053888 (=> (not res!702984) (not e!598674))))

(assert (=> b!1053888 (= res!702984 (= (select (arr!31960 a!3488) i!1381) k!2747))))

(declare-fun b!1053889 () Bool)

(assert (=> b!1053889 (= e!598671 e!598675)))

(declare-fun res!702979 () Bool)

(assert (=> b!1053889 (=> (not res!702979) (not e!598675))))

(assert (=> b!1053889 (= res!702979 (not (= lt!465238 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66461 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053889 (= lt!465238 (arrayScanForKey!0 lt!465236 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!702980 () Bool)

(assert (=> start!92820 (=> (not res!702980) (not e!598674))))

(assert (=> start!92820 (= res!702980 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32497 a!3488)) (bvslt (size!32497 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92820 e!598674))

(assert (=> start!92820 true))

(declare-fun array_inv!24582 (array!66461) Bool)

(assert (=> start!92820 (array_inv!24582 a!3488)))

(declare-fun b!1053890 () Bool)

(declare-fun res!702978 () Bool)

(assert (=> b!1053890 (=> (not res!702978) (not e!598674))))

(assert (=> b!1053890 (= res!702978 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22400))))

(declare-fun b!1053891 () Bool)

(declare-fun e!598672 () Bool)

(assert (=> b!1053891 (= e!598672 (arrayContainsKey!0 a!3488 k!2747 lt!465238))))

(declare-fun b!1053892 () Bool)

(assert (=> b!1053892 (= e!598670 e!598672)))

(declare-fun res!702982 () Bool)

(assert (=> b!1053892 (=> res!702982 e!598672)))

(assert (=> b!1053892 (= res!702982 (bvsle lt!465238 i!1381))))

(declare-fun b!1053893 () Bool)

(declare-fun res!702981 () Bool)

(assert (=> b!1053893 (=> (not res!702981) (not e!598674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053893 (= res!702981 (validKeyInArray!0 k!2747))))

(assert (= (and start!92820 res!702980) b!1053890))

(assert (= (and b!1053890 res!702978) b!1053893))

(assert (= (and b!1053893 res!702981) b!1053888))

(assert (= (and b!1053888 res!702984) b!1053885))

(assert (= (and b!1053885 res!702983) b!1053889))

(assert (= (and b!1053889 res!702979) b!1053886))

(assert (= (and b!1053886 res!702977) b!1053892))

(assert (= (and b!1053892 (not res!702982)) b!1053891))

(assert (= (and b!1053886 (not res!702976)) b!1053887))

(declare-fun m!974187 () Bool)

(assert (=> b!1053886 m!974187))

(declare-fun m!974189 () Bool)

(assert (=> b!1053886 m!974189))

(declare-fun m!974191 () Bool)

(assert (=> b!1053889 m!974191))

(declare-fun m!974193 () Bool)

(assert (=> b!1053891 m!974193))

(declare-fun m!974195 () Bool)

(assert (=> b!1053887 m!974195))

(declare-fun m!974197 () Bool)

(assert (=> b!1053887 m!974197))

(declare-fun m!974199 () Bool)

(assert (=> b!1053885 m!974199))

(assert (=> b!1053885 m!974187))

(declare-fun m!974201 () Bool)

(assert (=> b!1053893 m!974201))

(declare-fun m!974203 () Bool)

(assert (=> start!92820 m!974203))

(declare-fun m!974205 () Bool)

(assert (=> b!1053888 m!974205))

(declare-fun m!974207 () Bool)

(assert (=> b!1053890 m!974207))

(push 1)

