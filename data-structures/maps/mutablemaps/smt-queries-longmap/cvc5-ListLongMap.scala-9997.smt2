; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118030 () Bool)

(assert start!118030)

(declare-fun res!923737 () Bool)

(declare-fun e!783359 () Bool)

(assert (=> start!118030 (=> (not res!923737) (not e!783359))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118030 (= res!923737 (validMask!0 mask!3034))))

(assert (=> start!118030 e!783359))

(assert (=> start!118030 true))

(declare-datatypes ((array!94337 0))(
  ( (array!94338 (arr!45547 (Array (_ BitVec 32) (_ BitVec 64))) (size!46098 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94337)

(declare-fun array_inv!34492 (array!94337) Bool)

(assert (=> start!118030 (array_inv!34492 a!2971)))

(declare-fun b!1381998 () Bool)

(declare-fun res!923739 () Bool)

(assert (=> b!1381998 (=> (not res!923739) (not e!783359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94337 (_ BitVec 32)) Bool)

(assert (=> b!1381998 (= res!923739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381999 () Bool)

(declare-fun res!923736 () Bool)

(assert (=> b!1381999 (=> (not res!923736) (not e!783359))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381999 (= res!923736 (and (= (size!46098 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46098 a!2971))))))

(declare-fun b!1382000 () Bool)

(assert (=> b!1382000 (= e!783359 (or (= (select (arr!45547 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!45547 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1382001 () Bool)

(declare-fun res!923738 () Bool)

(assert (=> b!1382001 (=> (not res!923738) (not e!783359))))

(declare-datatypes ((List!32261 0))(
  ( (Nil!32258) (Cons!32257 (h!33466 (_ BitVec 64)) (t!46962 List!32261)) )
))
(declare-fun arrayNoDuplicates!0 (array!94337 (_ BitVec 32) List!32261) Bool)

(assert (=> b!1382001 (= res!923738 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32258))))

(declare-fun b!1382002 () Bool)

(declare-fun res!923735 () Bool)

(assert (=> b!1382002 (=> (not res!923735) (not e!783359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382002 (= res!923735 (validKeyInArray!0 (select (arr!45547 a!2971) i!1094)))))

(assert (= (and start!118030 res!923737) b!1381999))

(assert (= (and b!1381999 res!923736) b!1382002))

(assert (= (and b!1382002 res!923735) b!1382001))

(assert (= (and b!1382001 res!923738) b!1381998))

(assert (= (and b!1381998 res!923739) b!1382000))

(declare-fun m!1267239 () Bool)

(assert (=> b!1382000 m!1267239))

(assert (=> b!1382002 m!1267239))

(assert (=> b!1382002 m!1267239))

(declare-fun m!1267241 () Bool)

(assert (=> b!1382002 m!1267241))

(declare-fun m!1267243 () Bool)

(assert (=> start!118030 m!1267243))

(declare-fun m!1267245 () Bool)

(assert (=> start!118030 m!1267245))

(declare-fun m!1267247 () Bool)

(assert (=> b!1381998 m!1267247))

(declare-fun m!1267249 () Bool)

(assert (=> b!1382001 m!1267249))

(push 1)

(assert (not b!1382001))

(assert (not b!1382002))

(assert (not start!118030))

(assert (not b!1381998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!66519 () Bool)

(declare-fun call!66522 () Bool)

(declare-fun c!128579 () Bool)

(assert (=> bm!66519 (= call!66522 (arrayNoDuplicates!0 a!2971 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128579 (Cons!32257 (select (arr!45547 a!2971) #b00000000000000000000000000000000) Nil!32258) Nil!32258)))))

(declare-fun b!1382055 () Bool)

(declare-fun e!783391 () Bool)

(declare-fun e!783390 () Bool)

(assert (=> b!1382055 (= e!783391 e!783390)))

(assert (=> b!1382055 (= c!128579 (validKeyInArray!0 (select (arr!45547 a!2971) #b00000000000000000000000000000000)))))

(declare-fun b!1382056 () Bool)

(declare-fun e!783392 () Bool)

(assert (=> b!1382056 (= e!783392 e!783391)))

(declare-fun res!923782 () Bool)

(assert (=> b!1382056 (=> (not res!923782) (not e!783391))))

(declare-fun e!783389 () Bool)

(assert (=> b!1382056 (= res!923782 (not e!783389))))

(declare-fun res!923783 () Bool)

(assert (=> b!1382056 (=> (not res!923783) (not e!783389))))

(assert (=> b!1382056 (= res!923783 (validKeyInArray!0 (select (arr!45547 a!2971) #b00000000000000000000000000000000)))))

(declare-fun b!1382057 () Bool)

(assert (=> b!1382057 (= e!783390 call!66522)))

(declare-fun d!149077 () Bool)

(declare-fun res!923784 () Bool)

(assert (=> d!149077 (=> res!923784 e!783392)))

(assert (=> d!149077 (= res!923784 (bvsge #b00000000000000000000000000000000 (size!46098 a!2971)))))

(assert (=> d!149077 (= (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32258) e!783392)))

(declare-fun b!1382058 () Bool)

(declare-fun contains!9748 (List!32261 (_ BitVec 64)) Bool)

(assert (=> b!1382058 (= e!783389 (contains!9748 Nil!32258 (select (arr!45547 a!2971) #b00000000000000000000000000000000)))))

(declare-fun b!1382059 () Bool)

(assert (=> b!1382059 (= e!783390 call!66522)))

(assert (= (and d!149077 (not res!923784)) b!1382056))

(assert (= (and b!1382056 res!923783) b!1382058))

(assert (= (and b!1382056 res!923782) b!1382055))

(assert (= (and b!1382055 c!128579) b!1382057))

(assert (= (and b!1382055 (not c!128579)) b!1382059))

(assert (= (or b!1382057 b!1382059) bm!66519))

(declare-fun m!1267287 () Bool)

(assert (=> bm!66519 m!1267287))

(declare-fun m!1267289 () Bool)

(assert (=> bm!66519 m!1267289))

(assert (=> b!1382055 m!1267287))

(assert (=> b!1382055 m!1267287))

(declare-fun m!1267291 () Bool)

(assert (=> b!1382055 m!1267291))

(assert (=> b!1382056 m!1267287))

(assert (=> b!1382056 m!1267287))

(assert (=> b!1382056 m!1267291))

(assert (=> b!1382058 m!1267287))

(assert (=> b!1382058 m!1267287))

(declare-fun m!1267293 () Bool)

(assert (=> b!1382058 m!1267293))

(assert (=> b!1382001 d!149077))

(declare-fun d!149083 () Bool)

(assert (=> d!149083 (= (validKeyInArray!0 (select (arr!45547 a!2971) i!1094)) (and (not (= (select (arr!45547 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45547 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1382002 d!149083))

(declare-fun d!149085 () Bool)

(assert (=> d!149085 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

(assert (=> start!118030 d!149085))

(declare-fun d!149097 () Bool)

(assert (=> d!149097 (= (array_inv!34492 a!2971) (bvsge (size!46098 a!2971) #b00000000000000000000000000000000))))

(assert (=> start!118030 d!149097))

(declare-fun bm!66531 () Bool)

(declare-fun call!66534 () Bool)

(assert (=> bm!66531 (= call!66534 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2971 mask!3034))))

(declare-fun b!1382111 () Bool)

(declare-fun e!783432 () Bool)

(assert (=> b!1382111 (= e!783432 call!66534)))

(declare-fun b!1382112 () Bool)

(declare-fun e!783434 () Bool)

(assert (=> b!1382112 (= e!783434 call!66534)))

(declare-fun b!1382113 () Bool)

(declare-fun e!783433 () Bool)

(assert (=> b!1382113 (= e!783433 e!783434)))

(declare-fun c!128591 () Bool)

(assert (=> b!1382113 (= c!128591 (validKeyInArray!0 (select (arr!45547 a!2971) #b00000000000000000000000000000000)))))

(declare-fun d!149099 () Bool)

(declare-fun res!923814 () Bool)

(assert (=> d!149099 (=> res!923814 e!783433)))

(assert (=> d!149099 (= res!923814 (bvsge #b00000000000000000000000000000000 (size!46098 a!2971)))))

(assert (=> d!149099 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034) e!783433)))

(declare-fun b!1382110 () Bool)

