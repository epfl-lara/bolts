; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130600 () Bool)

(assert start!130600)

(declare-fun b!1532271 () Bool)

(declare-fun res!1049552 () Bool)

(declare-fun e!853756 () Bool)

(assert (=> b!1532271 (=> (not res!1049552) (not e!853756))))

(declare-datatypes ((array!101706 0))(
  ( (array!101707 (arr!49069 (Array (_ BitVec 32) (_ BitVec 64))) (size!49620 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101706)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532271 (= res!1049552 (and (= (size!49620 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49620 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49620 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532272 () Bool)

(declare-fun res!1049550 () Bool)

(assert (=> b!1532272 (=> (not res!1049550) (not e!853756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101706 (_ BitVec 32)) Bool)

(assert (=> b!1532272 (= res!1049550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532273 () Bool)

(declare-fun res!1049549 () Bool)

(assert (=> b!1532273 (=> (not res!1049549) (not e!853756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532273 (= res!1049549 (validKeyInArray!0 (select (arr!49069 a!2792) j!64)))))

(declare-fun b!1532274 () Bool)

(assert (=> b!1532274 (= e!853756 (and (bvsle #b00000000000000000000000000000000 (size!49620 a!2792)) (bvsge (size!49620 a!2792) #b01111111111111111111111111111111)))))

(declare-fun res!1049553 () Bool)

(assert (=> start!130600 (=> (not res!1049553) (not e!853756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130600 (= res!1049553 (validMask!0 mask!2480))))

(assert (=> start!130600 e!853756))

(assert (=> start!130600 true))

(declare-fun array_inv!38014 (array!101706) Bool)

(assert (=> start!130600 (array_inv!38014 a!2792)))

(declare-fun b!1532275 () Bool)

(declare-fun res!1049551 () Bool)

(assert (=> b!1532275 (=> (not res!1049551) (not e!853756))))

(assert (=> b!1532275 (= res!1049551 (validKeyInArray!0 (select (arr!49069 a!2792) i!951)))))

(assert (= (and start!130600 res!1049553) b!1532271))

(assert (= (and b!1532271 res!1049552) b!1532275))

(assert (= (and b!1532275 res!1049551) b!1532273))

(assert (= (and b!1532273 res!1049549) b!1532272))

(assert (= (and b!1532272 res!1049550) b!1532274))

(declare-fun m!1415049 () Bool)

(assert (=> b!1532272 m!1415049))

(declare-fun m!1415051 () Bool)

(assert (=> b!1532273 m!1415051))

(assert (=> b!1532273 m!1415051))

(declare-fun m!1415053 () Bool)

(assert (=> b!1532273 m!1415053))

(declare-fun m!1415055 () Bool)

(assert (=> start!130600 m!1415055))

(declare-fun m!1415057 () Bool)

(assert (=> start!130600 m!1415057))

(declare-fun m!1415059 () Bool)

(assert (=> b!1532275 m!1415059))

(assert (=> b!1532275 m!1415059))

(declare-fun m!1415061 () Bool)

(assert (=> b!1532275 m!1415061))

(push 1)

(assert (not start!130600))

(assert (not b!1532272))

(assert (not b!1532273))

(assert (not b!1532275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159965 () Bool)

(assert (=> d!159965 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130600 d!159965))

(declare-fun d!159975 () Bool)

(assert (=> d!159975 (= (array_inv!38014 a!2792) (bvsge (size!49620 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130600 d!159975))

(declare-fun d!159977 () Bool)

(declare-fun res!1049598 () Bool)

(declare-fun e!853792 () Bool)

(assert (=> d!159977 (=> res!1049598 e!853792)))

(assert (=> d!159977 (= res!1049598 (bvsge #b00000000000000000000000000000000 (size!49620 a!2792)))))

(assert (=> d!159977 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!853792)))

(declare-fun b!1532334 () Bool)

(declare-fun e!853793 () Bool)

(assert (=> b!1532334 (= e!853792 e!853793)))

(declare-fun c!140929 () Bool)

(assert (=> b!1532334 (= c!140929 (validKeyInArray!0 (select (arr!49069 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1532335 () Bool)

(declare-fun call!68556 () Bool)

(assert (=> b!1532335 (= e!853793 call!68556)))

(declare-fun bm!68553 () Bool)

(assert (=> bm!68553 (= call!68556 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1532336 () Bool)

(declare-fun e!853791 () Bool)

(assert (=> b!1532336 (= e!853793 e!853791)))

(declare-fun lt!663581 () (_ BitVec 64))

(assert (=> b!1532336 (= lt!663581 (select (arr!49069 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51240 0))(
  ( (Unit!51241) )
))
(declare-fun lt!663582 () Unit!51240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101706 (_ BitVec 64) (_ BitVec 32)) Unit!51240)

(assert (=> b!1532336 (= lt!663582 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663581 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532336 (arrayContainsKey!0 a!2792 lt!663581 #b00000000000000000000000000000000)))

(declare-fun lt!663583 () Unit!51240)

(assert (=> b!1532336 (= lt!663583 lt!663582)))

(declare-fun res!1049599 () Bool)

(declare-datatypes ((SeekEntryResult!13250 0))(
  ( (MissingZero!13250 (index!55394 (_ BitVec 32))) (Found!13250 (index!55395 (_ BitVec 32))) (Intermediate!13250 (undefined!14062 Bool) (index!55396 (_ BitVec 32)) (x!137111 (_ BitVec 32))) (Undefined!13250) (MissingVacant!13250 (index!55397 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101706 (_ BitVec 32)) SeekEntryResult!13250)

(assert (=> b!1532336 (= res!1049599 (= (seekEntryOrOpen!0 (select (arr!49069 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13250 #b00000000000000000000000000000000)))))

