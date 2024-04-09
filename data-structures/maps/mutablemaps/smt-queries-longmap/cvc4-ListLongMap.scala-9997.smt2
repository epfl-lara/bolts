; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118034 () Bool)

(assert start!118034)

(declare-fun res!923768 () Bool)

(declare-fun e!783371 () Bool)

(assert (=> start!118034 (=> (not res!923768) (not e!783371))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118034 (= res!923768 (validMask!0 mask!3034))))

(assert (=> start!118034 e!783371))

(assert (=> start!118034 true))

(declare-datatypes ((array!94341 0))(
  ( (array!94342 (arr!45549 (Array (_ BitVec 32) (_ BitVec 64))) (size!46100 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94341)

(declare-fun array_inv!34494 (array!94341) Bool)

(assert (=> start!118034 (array_inv!34494 a!2971)))

(declare-fun b!1382028 () Bool)

(declare-fun res!923767 () Bool)

(assert (=> b!1382028 (=> (not res!923767) (not e!783371))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382028 (= res!923767 (and (= (size!46100 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46100 a!2971))))))

(declare-fun b!1382029 () Bool)

(assert (=> b!1382029 (= e!783371 (or (= (select (arr!45549 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!45549 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1382030 () Bool)

(declare-fun res!923765 () Bool)

(assert (=> b!1382030 (=> (not res!923765) (not e!783371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94341 (_ BitVec 32)) Bool)

(assert (=> b!1382030 (= res!923765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382031 () Bool)

(declare-fun res!923769 () Bool)

(assert (=> b!1382031 (=> (not res!923769) (not e!783371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382031 (= res!923769 (validKeyInArray!0 (select (arr!45549 a!2971) i!1094)))))

(declare-fun b!1382032 () Bool)

(declare-fun res!923766 () Bool)

(assert (=> b!1382032 (=> (not res!923766) (not e!783371))))

(declare-datatypes ((List!32263 0))(
  ( (Nil!32260) (Cons!32259 (h!33468 (_ BitVec 64)) (t!46964 List!32263)) )
))
(declare-fun arrayNoDuplicates!0 (array!94341 (_ BitVec 32) List!32263) Bool)

(assert (=> b!1382032 (= res!923766 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32260))))

(assert (= (and start!118034 res!923768) b!1382028))

(assert (= (and b!1382028 res!923767) b!1382031))

(assert (= (and b!1382031 res!923769) b!1382032))

(assert (= (and b!1382032 res!923766) b!1382030))

(assert (= (and b!1382030 res!923765) b!1382029))

(declare-fun m!1267263 () Bool)

(assert (=> start!118034 m!1267263))

(declare-fun m!1267265 () Bool)

(assert (=> start!118034 m!1267265))

(declare-fun m!1267267 () Bool)

(assert (=> b!1382031 m!1267267))

(assert (=> b!1382031 m!1267267))

(declare-fun m!1267269 () Bool)

(assert (=> b!1382031 m!1267269))

(declare-fun m!1267271 () Bool)

(assert (=> b!1382030 m!1267271))

(declare-fun m!1267273 () Bool)

(assert (=> b!1382032 m!1267273))

(assert (=> b!1382029 m!1267267))

(push 1)

(assert (not b!1382030))

(assert (not b!1382031))

(assert (not b!1382032))

(assert (not start!118034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!66522 () Bool)

(declare-fun call!66525 () Bool)

(assert (=> bm!66522 (= call!66525 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2971 mask!3034))))

(declare-fun b!1382068 () Bool)

(declare-fun e!783401 () Bool)

(declare-fun e!783400 () Bool)

(assert (=> b!1382068 (= e!783401 e!783400)))

(declare-fun c!128582 () Bool)

(assert (=> b!1382068 (= c!128582 (validKeyInArray!0 (select (arr!45549 a!2971) #b00000000000000000000000000000000)))))

(declare-fun d!149079 () Bool)

(declare-fun res!923790 () Bool)

(assert (=> d!149079 (=> res!923790 e!783401)))

(assert (=> d!149079 (= res!923790 (bvsge #b00000000000000000000000000000000 (size!46100 a!2971)))))

(assert (=> d!149079 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034) e!783401)))

(declare-fun b!1382069 () Bool)

(declare-fun e!783399 () Bool)

(assert (=> b!1382069 (= e!783399 call!66525)))

(declare-fun b!1382070 () Bool)

(assert (=> b!1382070 (= e!783400 e!783399)))

(declare-fun lt!608295 () (_ BitVec 64))

(assert (=> b!1382070 (= lt!608295 (select (arr!45549 a!2971) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!45997 0))(
  ( (Unit!45998) )
))
(declare-fun lt!608296 () Unit!45997)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94341 (_ BitVec 64) (_ BitVec 32)) Unit!45997)

(assert (=> b!1382070 (= lt!608296 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2971 lt!608295 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1382070 (arrayContainsKey!0 a!2971 lt!608295 #b00000000000000000000000000000000)))

(declare-fun lt!608294 () Unit!45997)

(assert (=> b!1382070 (= lt!608294 lt!608296)))

(declare-fun res!923789 () Bool)

(declare-datatypes ((SeekEntryResult!10059 0))(
  ( (MissingZero!10059 (index!42606 (_ BitVec 32))) (Found!10059 (index!42607 (_ BitVec 32))) (Intermediate!10059 (undefined!10871 Bool) (index!42608 (_ BitVec 32)) (x!123871 (_ BitVec 32))) (Undefined!10059) (MissingVacant!10059 (index!42609 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94341 (_ BitVec 32)) SeekEntryResult!10059)

(assert (=> b!1382070 (= res!923789 (= (seekEntryOrOpen!0 (select (arr!45549 a!2971) #b00000000000000000000000000000000) a!2971 mask!3034) (Found!10059 #b00000000000000000000000000000000)))))

(assert (=> b!1382070 (=> (not res!923789) (not e!783399))))

(declare-fun b!1382071 () Bool)

(assert (=> b!1382071 (= e!783400 call!66525)))

(assert (= (and d!149079 (not res!923790)) b!1382068))

(assert (= (and b!1382068 c!128582) b!1382070))

(assert (= (and b!1382068 (not c!128582)) b!1382071))

(assert (= (and b!1382070 res!923789) b!1382069))

(assert (= (or b!1382069 b!1382071) bm!66522))

(declare-fun m!1267295 () Bool)

(assert (=> bm!66522 m!1267295))

(declare-fun m!1267297 () Bool)

(assert (=> b!1382068 m!1267297))

(assert (=> b!1382068 m!1267297))

(declare-fun m!1267299 () Bool)

(assert (=> b!1382068 m!1267299))

(assert (=> b!1382070 m!1267297))

