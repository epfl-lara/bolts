; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92336 () Bool)

(assert start!92336)

(declare-fun b!1048965 () Bool)

(declare-fun e!595118 () Bool)

(declare-fun e!595112 () Bool)

(assert (=> b!1048965 (= e!595118 e!595112)))

(declare-fun res!698200 () Bool)

(assert (=> b!1048965 (=> (not res!698200) (not e!595112))))

(declare-datatypes ((array!66085 0))(
  ( (array!66086 (arr!31778 (Array (_ BitVec 32) (_ BitVec 64))) (size!32315 (_ BitVec 32))) )
))
(declare-fun lt!463337 () array!66085)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048965 (= res!698200 (arrayContainsKey!0 lt!463337 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66085)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048965 (= lt!463337 (array!66086 (store (arr!31778 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32315 a!3488)))))

(declare-fun b!1048966 () Bool)

(declare-fun res!698202 () Bool)

(assert (=> b!1048966 (=> (not res!698202) (not e!595118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048966 (= res!698202 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048967 () Bool)

(declare-fun e!595116 () Bool)

(assert (=> b!1048967 (= e!595116 true)))

(declare-datatypes ((List!22221 0))(
  ( (Nil!22218) (Cons!22217 (h!23426 (_ BitVec 64)) (t!31535 List!22221)) )
))
(declare-fun arrayNoDuplicates!0 (array!66085 (_ BitVec 32) List!22221) Bool)

(assert (=> b!1048967 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22218)))

(declare-datatypes ((Unit!34285 0))(
  ( (Unit!34286) )
))
(declare-fun lt!463338 () Unit!34285)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66085 (_ BitVec 32) (_ BitVec 32)) Unit!34285)

(assert (=> b!1048967 (= lt!463338 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048969 () Bool)

(declare-fun e!595117 () Bool)

(declare-fun e!595114 () Bool)

(assert (=> b!1048969 (= e!595117 e!595114)))

(declare-fun res!698206 () Bool)

(assert (=> b!1048969 (=> res!698206 e!595114)))

(declare-fun lt!463339 () (_ BitVec 32))

(assert (=> b!1048969 (= res!698206 (bvsle lt!463339 i!1381))))

(declare-fun b!1048970 () Bool)

(declare-fun e!595115 () Bool)

(assert (=> b!1048970 (= e!595112 e!595115)))

(declare-fun res!698207 () Bool)

(assert (=> b!1048970 (=> (not res!698207) (not e!595115))))

(assert (=> b!1048970 (= res!698207 (not (= lt!463339 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66085 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048970 (= lt!463339 (arrayScanForKey!0 lt!463337 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048971 () Bool)

(declare-fun res!698205 () Bool)

(assert (=> b!1048971 (=> (not res!698205) (not e!595118))))

(assert (=> b!1048971 (= res!698205 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22218))))

(declare-fun b!1048972 () Bool)

(assert (=> b!1048972 (= e!595115 (not e!595116))))

(declare-fun res!698201 () Bool)

(assert (=> b!1048972 (=> res!698201 e!595116)))

(assert (=> b!1048972 (= res!698201 (bvsle lt!463339 i!1381))))

(assert (=> b!1048972 e!595117))

(declare-fun res!698204 () Bool)

(assert (=> b!1048972 (=> (not res!698204) (not e!595117))))

(assert (=> b!1048972 (= res!698204 (= (select (store (arr!31778 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463339) k0!2747))))

(declare-fun b!1048973 () Bool)

(assert (=> b!1048973 (= e!595114 (arrayContainsKey!0 a!3488 k0!2747 lt!463339))))

(declare-fun b!1048968 () Bool)

(declare-fun res!698208 () Bool)

(assert (=> b!1048968 (=> (not res!698208) (not e!595118))))

(assert (=> b!1048968 (= res!698208 (= (select (arr!31778 a!3488) i!1381) k0!2747))))

(declare-fun res!698203 () Bool)

(assert (=> start!92336 (=> (not res!698203) (not e!595118))))

(assert (=> start!92336 (= res!698203 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32315 a!3488)) (bvslt (size!32315 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92336 e!595118))

(assert (=> start!92336 true))

(declare-fun array_inv!24400 (array!66085) Bool)

(assert (=> start!92336 (array_inv!24400 a!3488)))

(assert (= (and start!92336 res!698203) b!1048971))

(assert (= (and b!1048971 res!698205) b!1048966))

(assert (= (and b!1048966 res!698202) b!1048968))

(assert (= (and b!1048968 res!698208) b!1048965))

(assert (= (and b!1048965 res!698200) b!1048970))

(assert (= (and b!1048970 res!698207) b!1048972))

(assert (= (and b!1048972 res!698204) b!1048969))

(assert (= (and b!1048969 (not res!698206)) b!1048973))

(assert (= (and b!1048972 (not res!698201)) b!1048967))

(declare-fun m!969943 () Bool)

(assert (=> b!1048966 m!969943))

(declare-fun m!969945 () Bool)

(assert (=> b!1048968 m!969945))

(declare-fun m!969947 () Bool)

(assert (=> b!1048972 m!969947))

(declare-fun m!969949 () Bool)

(assert (=> b!1048972 m!969949))

(declare-fun m!969951 () Bool)

(assert (=> b!1048965 m!969951))

(assert (=> b!1048965 m!969947))

(declare-fun m!969953 () Bool)

(assert (=> b!1048970 m!969953))

(declare-fun m!969955 () Bool)

(assert (=> start!92336 m!969955))

(declare-fun m!969957 () Bool)

(assert (=> b!1048971 m!969957))

(declare-fun m!969959 () Bool)

(assert (=> b!1048967 m!969959))

(declare-fun m!969961 () Bool)

(assert (=> b!1048967 m!969961))

(declare-fun m!969963 () Bool)

(assert (=> b!1048973 m!969963))

(check-sat (not b!1048965) (not b!1048967) (not b!1048971) (not b!1048966) (not start!92336) (not b!1048973) (not b!1048970))
(check-sat)
