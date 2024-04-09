; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122330 () Bool)

(assert start!122330)

(declare-fun b!1417932 () Bool)

(declare-fun res!953741 () Bool)

(declare-fun e!802466 () Bool)

(assert (=> b!1417932 (=> (not res!953741) (not e!802466))))

(declare-datatypes ((array!96784 0))(
  ( (array!96785 (arr!46713 (Array (_ BitVec 32) (_ BitVec 64))) (size!47264 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96784)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417932 (= res!953741 (validKeyInArray!0 (select (arr!46713 a!2831) i!982)))))

(declare-fun b!1417933 () Bool)

(declare-fun res!953739 () Bool)

(assert (=> b!1417933 (=> (not res!953739) (not e!802466))))

(declare-datatypes ((List!33403 0))(
  ( (Nil!33400) (Cons!33399 (h!34692 (_ BitVec 64)) (t!48104 List!33403)) )
))
(declare-fun noDuplicate!2644 (List!33403) Bool)

(assert (=> b!1417933 (= res!953739 (noDuplicate!2644 Nil!33400))))

(declare-fun b!1417934 () Bool)

(declare-fun e!802464 () Bool)

(declare-fun contains!9846 (List!33403 (_ BitVec 64)) Bool)

(assert (=> b!1417934 (= e!802464 (contains!9846 Nil!33400 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417935 () Bool)

(declare-fun res!953737 () Bool)

(assert (=> b!1417935 (=> (not res!953737) (not e!802466))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1417935 (= res!953737 (and (= (size!47264 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47264 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47264 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953742 () Bool)

(assert (=> start!122330 (=> (not res!953742) (not e!802466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122330 (= res!953742 (validMask!0 mask!2608))))

(assert (=> start!122330 e!802466))

(assert (=> start!122330 true))

(declare-fun array_inv!35658 (array!96784) Bool)

(assert (=> start!122330 (array_inv!35658 a!2831)))

(declare-fun b!1417936 () Bool)

(declare-fun res!953740 () Bool)

(assert (=> b!1417936 (=> (not res!953740) (not e!802466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96784 (_ BitVec 32)) Bool)

(assert (=> b!1417936 (= res!953740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417937 () Bool)

(declare-fun res!953735 () Bool)

(assert (=> b!1417937 (=> (not res!953735) (not e!802466))))

(assert (=> b!1417937 (= res!953735 (and (bvsle #b00000000000000000000000000000000 (size!47264 a!2831)) (bvslt (size!47264 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417938 () Bool)

(assert (=> b!1417938 (= e!802466 e!802464)))

(declare-fun res!953736 () Bool)

(assert (=> b!1417938 (=> res!953736 e!802464)))

(assert (=> b!1417938 (= res!953736 (contains!9846 Nil!33400 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417939 () Bool)

(declare-fun res!953738 () Bool)

(assert (=> b!1417939 (=> (not res!953738) (not e!802466))))

(assert (=> b!1417939 (= res!953738 (validKeyInArray!0 (select (arr!46713 a!2831) j!81)))))

(assert (= (and start!122330 res!953742) b!1417935))

(assert (= (and b!1417935 res!953737) b!1417932))

(assert (= (and b!1417932 res!953741) b!1417939))

(assert (= (and b!1417939 res!953738) b!1417936))

(assert (= (and b!1417936 res!953740) b!1417937))

(assert (= (and b!1417937 res!953735) b!1417933))

(assert (= (and b!1417933 res!953739) b!1417938))

(assert (= (and b!1417938 (not res!953736)) b!1417934))

(declare-fun m!1308741 () Bool)

(assert (=> b!1417932 m!1308741))

(assert (=> b!1417932 m!1308741))

(declare-fun m!1308743 () Bool)

(assert (=> b!1417932 m!1308743))

(declare-fun m!1308745 () Bool)

(assert (=> start!122330 m!1308745))

(declare-fun m!1308747 () Bool)

(assert (=> start!122330 m!1308747))

(declare-fun m!1308749 () Bool)

(assert (=> b!1417933 m!1308749))

(declare-fun m!1308751 () Bool)

(assert (=> b!1417934 m!1308751))

(declare-fun m!1308753 () Bool)

(assert (=> b!1417939 m!1308753))

(assert (=> b!1417939 m!1308753))

(declare-fun m!1308755 () Bool)

(assert (=> b!1417939 m!1308755))

(declare-fun m!1308757 () Bool)

(assert (=> b!1417936 m!1308757))

(declare-fun m!1308759 () Bool)

(assert (=> b!1417938 m!1308759))

(push 1)

(assert (not b!1417939))

(assert (not b!1417938))

(assert (not b!1417934))

(assert (not b!1417936))

(assert (not start!122330))

(assert (not b!1417932))

(assert (not b!1417933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1417992 () Bool)

(declare-fun e!802513 () Bool)

(declare-fun e!802512 () Bool)

(assert (=> b!1417992 (= e!802513 e!802512)))

(declare-fun c!131591 () Bool)

(assert (=> b!1417992 (= c!131591 (validKeyInArray!0 (select (arr!46713 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1417993 () Bool)

(declare-fun e!802511 () Bool)

(assert (=> b!1417993 (= e!802512 e!802511)))

(declare-fun lt!625465 () (_ BitVec 64))

(assert (=> b!1417993 (= lt!625465 (select (arr!46713 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48002 0))(
  ( (Unit!48003) )
))
(declare-fun lt!625464 () Unit!48002)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96784 (_ BitVec 64) (_ BitVec 32)) Unit!48002)

(assert (=> b!1417993 (= lt!625464 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625465 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417993 (arrayContainsKey!0 a!2831 lt!625465 #b00000000000000000000000000000000)))

(declare-fun lt!625466 () Unit!48002)

(assert (=> b!1417993 (= lt!625466 lt!625464)))

(declare-fun res!953779 () Bool)

(declare-datatypes ((SeekEntryResult!11039 0))(
  ( (MissingZero!11039 (index!46547 (_ BitVec 32))) (Found!11039 (index!46548 (_ BitVec 32))) (Intermediate!11039 (undefined!11851 Bool) (index!46549 (_ BitVec 32)) (x!128165 (_ BitVec 32))) (Undefined!11039) (MissingVacant!11039 (index!46550 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96784 (_ BitVec 32)) SeekEntryResult!11039)

(assert (=> b!1417993 (= res!953779 (= (seekEntryOrOpen!0 (select (arr!46713 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11039 #b00000000000000000000000000000000)))))

(assert (=> b!1417993 (=> (not res!953779) (not e!802511))))

(declare-fun b!1417994 () Bool)

(declare-fun call!67248 () Bool)

(assert (=> b!1417994 (= e!802512 call!67248)))

(declare-fun b!1417995 () Bool)

(assert (=> b!1417995 (= e!802511 call!67248)))

(declare-fun d!152721 () Bool)

(declare-fun res!953780 () Bool)

(assert (=> d!152721 (=> res!953780 e!802513)))

(assert (=> d!152721 (= res!953780 (bvsge #b00000000000000000000000000000000 (size!47264 a!2831)))))

(assert (=> d!152721 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802513)))

(declare-fun bm!67245 () Bool)

(assert (=> bm!67245 (= call!67248 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!152721 (not res!953780)) b!1417992))

(assert (= (and b!1417992 c!131591) b!1417993))

(assert (= (and b!1417992 (not c!131591)) b!1417994))

(assert (= (and b!1417993 res!953779) b!1417995))

(assert (= (or b!1417995 b!1417994) bm!67245))

(declare-fun m!1308805 () Bool)

(assert (=> b!1417992 m!1308805))

(assert (=> b!1417992 m!1308805))

(declare-fun m!1308807 () Bool)

(assert (=> b!1417992 m!1308807))

(assert (=> b!1417993 m!1308805))

(declare-fun m!1308809 () Bool)

(assert (=> b!1417993 m!1308809))

(declare-fun m!1308811 () Bool)

(assert (=> b!1417993 m!1308811))

(assert (=> b!1417993 m!1308805))

(declare-fun m!1308813 () Bool)

(assert (=> b!1417993 m!1308813))

(declare-fun m!1308815 () Bool)

(assert (=> bm!67245 m!1308815))

(assert (=> b!1417936 d!152721))

(declare-fun d!152739 () Bool)

(assert (=> d!152739 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) 