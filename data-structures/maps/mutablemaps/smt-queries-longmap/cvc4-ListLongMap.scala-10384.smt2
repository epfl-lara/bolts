; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122294 () Bool)

(assert start!122294)

(declare-fun b!1417808 () Bool)

(declare-fun e!802393 () Bool)

(declare-datatypes ((List!33400 0))(
  ( (Nil!33397) (Cons!33396 (h!34689 (_ BitVec 64)) (t!48101 List!33400)) )
))
(declare-fun noDuplicate!2641 (List!33400) Bool)

(assert (=> b!1417808 (= e!802393 (not (noDuplicate!2641 Nil!33397)))))

(declare-fun res!953629 () Bool)

(assert (=> start!122294 (=> (not res!953629) (not e!802393))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122294 (= res!953629 (validMask!0 mask!2608))))

(assert (=> start!122294 e!802393))

(assert (=> start!122294 true))

(declare-datatypes ((array!96775 0))(
  ( (array!96776 (arr!46710 (Array (_ BitVec 32) (_ BitVec 64))) (size!47261 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96775)

(declare-fun array_inv!35655 (array!96775) Bool)

(assert (=> start!122294 (array_inv!35655 a!2831)))

(declare-fun b!1417809 () Bool)

(declare-fun res!953632 () Bool)

(assert (=> b!1417809 (=> (not res!953632) (not e!802393))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417809 (= res!953632 (validKeyInArray!0 (select (arr!46710 a!2831) i!982)))))

(declare-fun b!1417810 () Bool)

(declare-fun res!953631 () Bool)

(assert (=> b!1417810 (=> (not res!953631) (not e!802393))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1417810 (= res!953631 (validKeyInArray!0 (select (arr!46710 a!2831) j!81)))))

(declare-fun b!1417811 () Bool)

(declare-fun res!953630 () Bool)

(assert (=> b!1417811 (=> (not res!953630) (not e!802393))))

(assert (=> b!1417811 (= res!953630 (and (bvsle #b00000000000000000000000000000000 (size!47261 a!2831)) (bvslt (size!47261 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417812 () Bool)

(declare-fun res!953633 () Bool)

(assert (=> b!1417812 (=> (not res!953633) (not e!802393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96775 (_ BitVec 32)) Bool)

(assert (=> b!1417812 (= res!953633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417813 () Bool)

(declare-fun res!953634 () Bool)

(assert (=> b!1417813 (=> (not res!953634) (not e!802393))))

(assert (=> b!1417813 (= res!953634 (and (= (size!47261 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47261 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47261 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122294 res!953629) b!1417813))

(assert (= (and b!1417813 res!953634) b!1417809))

(assert (= (and b!1417809 res!953632) b!1417810))

(assert (= (and b!1417810 res!953631) b!1417812))

(assert (= (and b!1417812 res!953633) b!1417811))

(assert (= (and b!1417811 res!953630) b!1417808))

(declare-fun m!1308637 () Bool)

(assert (=> b!1417810 m!1308637))

(assert (=> b!1417810 m!1308637))

(declare-fun m!1308639 () Bool)

(assert (=> b!1417810 m!1308639))

(declare-fun m!1308641 () Bool)

(assert (=> b!1417812 m!1308641))

(declare-fun m!1308643 () Bool)

(assert (=> b!1417808 m!1308643))

(declare-fun m!1308645 () Bool)

(assert (=> b!1417809 m!1308645))

(assert (=> b!1417809 m!1308645))

(declare-fun m!1308647 () Bool)

(assert (=> b!1417809 m!1308647))

(declare-fun m!1308649 () Bool)

(assert (=> start!122294 m!1308649))

(declare-fun m!1308651 () Bool)

(assert (=> start!122294 m!1308651))

(push 1)

(assert (not b!1417812))

(assert (not b!1417809))

(assert (not b!1417808))

(assert (not b!1417810))

(assert (not start!122294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152685 () Bool)

(assert (=> d!152685 (= (validKeyInArray!0 (select (arr!46710 a!2831) j!81)) (and (not (= (select (arr!46710 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46710 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417810 d!152685))

(declare-fun d!152689 () Bool)

(assert (=> d!152689 (= (validKeyInArray!0 (select (arr!46710 a!2831) i!982)) (and (not (= (select (arr!46710 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46710 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417809 d!152689))

(declare-fun b!1417840 () Bool)

(declare-fun e!802418 () Bool)

(declare-fun e!802416 () Bool)

(assert (=> b!1417840 (= e!802418 e!802416)))

(declare-fun c!131579 () Bool)

(assert (=> b!1417840 (= c!131579 (validKeyInArray!0 (select (arr!46710 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1417841 () Bool)

(declare-fun e!802417 () Bool)

(assert (=> b!1417841 (= e!802416 e!802417)))

(declare-fun lt!625421 () (_ BitVec 64))

(assert (=> b!1417841 (= lt!625421 (select (arr!46710 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!47994 0))(
  ( (Unit!47995) )
))
(declare-fun lt!625422 () Unit!47994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96775 (_ BitVec 64) (_ BitVec 32)) Unit!47994)

(assert (=> b!1417841 (= lt!625422 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625421 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417841 (arrayContainsKey!0 a!2831 lt!625421 #b00000000000000000000000000000000)))

(declare-fun lt!625423 () Unit!47994)

(assert (=> b!1417841 (= lt!625423 lt!625422)))

(declare-fun res!953651 () Bool)

(declare-datatypes ((SeekEntryResult!11035 0))(
  ( (MissingZero!11035 (index!46531 (_ BitVec 32))) (Found!11035 (index!46532 (_ BitVec 32))) (Intermediate!11035 (undefined!11847 Bool) (index!46533 (_ BitVec 32)) (x!128153 (_ BitVec 32))) (Undefined!11035) (MissingVacant!11035 (index!46534 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96775 (_ BitVec 32)) SeekEntryResult!11035)

(assert (=> b!1417841 (= res!953651 (= (seekEntryOrOpen!0 (select (arr!46710 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11035 #b00000000000000000000000000000000)))))

(assert (=> b!1417841 (=> (not res!953651) (not e!802417))))

(declare-fun d!152691 () Bool)

(declare-fun res!953652 () Bool)

(assert (=> d!152691 (=> res!953652 e!802418)))

(assert (=> d!152691 (= res!953652 (bvsge #b00000000000000000000000000000000 (size!47261 a!2831)))))

(assert (=> d!152691 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802418)))

(declare-fun bm!67233 () Bool)

(declare-fun call!67236 () Bool)

(assert (=> bm!67233 (= call!67236 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1417842 () Bool)

(assert (=> b!1417842 (= e!802417 call!67236)))

(declare-fun b!1417843 () Bool)

(assert (=> b!1417843 (= e!802416 call!67236)))

(assert (= (and d!152691 (not res!953652)) b!1417840))

(assert (= (and b!1417840 c!131579) b!1417841))

(assert (= (and b!1417840 (not c!131579)) b!1417843))

(assert (= (and b!1417841 res!953651) b!1417842))

(assert (= (or b!1417842 b!1417843) bm!67233))

