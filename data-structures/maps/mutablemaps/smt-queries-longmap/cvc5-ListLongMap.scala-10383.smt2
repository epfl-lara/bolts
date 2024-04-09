; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122260 () Bool)

(assert start!122260)

(declare-fun b!1417689 () Bool)

(declare-fun res!953529 () Bool)

(declare-fun e!802336 () Bool)

(assert (=> b!1417689 (=> (not res!953529) (not e!802336))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96762 0))(
  ( (array!96763 (arr!46705 (Array (_ BitVec 32) (_ BitVec 64))) (size!47256 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96762)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1417689 (= res!953529 (and (= (size!47256 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47256 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47256 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953530 () Bool)

(assert (=> start!122260 (=> (not res!953530) (not e!802336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122260 (= res!953530 (validMask!0 mask!2608))))

(assert (=> start!122260 e!802336))

(assert (=> start!122260 true))

(declare-fun array_inv!35650 (array!96762) Bool)

(assert (=> start!122260 (array_inv!35650 a!2831)))

(declare-fun b!1417690 () Bool)

(assert (=> b!1417690 (= e!802336 (and (bvsle #b00000000000000000000000000000000 (size!47256 a!2831)) (bvsge (size!47256 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417691 () Bool)

(declare-fun res!953531 () Bool)

(assert (=> b!1417691 (=> (not res!953531) (not e!802336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417691 (= res!953531 (validKeyInArray!0 (select (arr!46705 a!2831) i!982)))))

(declare-fun b!1417692 () Bool)

(declare-fun res!953532 () Bool)

(assert (=> b!1417692 (=> (not res!953532) (not e!802336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96762 (_ BitVec 32)) Bool)

(assert (=> b!1417692 (= res!953532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417693 () Bool)

(declare-fun res!953528 () Bool)

(assert (=> b!1417693 (=> (not res!953528) (not e!802336))))

(assert (=> b!1417693 (= res!953528 (validKeyInArray!0 (select (arr!46705 a!2831) j!81)))))

(assert (= (and start!122260 res!953530) b!1417689))

(assert (= (and b!1417689 res!953529) b!1417691))

(assert (= (and b!1417691 res!953531) b!1417693))

(assert (= (and b!1417693 res!953528) b!1417692))

(assert (= (and b!1417692 res!953532) b!1417690))

(declare-fun m!1308527 () Bool)

(assert (=> start!122260 m!1308527))

(declare-fun m!1308529 () Bool)

(assert (=> start!122260 m!1308529))

(declare-fun m!1308531 () Bool)

(assert (=> b!1417691 m!1308531))

(assert (=> b!1417691 m!1308531))

(declare-fun m!1308533 () Bool)

(assert (=> b!1417691 m!1308533))

(declare-fun m!1308535 () Bool)

(assert (=> b!1417692 m!1308535))

(declare-fun m!1308537 () Bool)

(assert (=> b!1417693 m!1308537))

(assert (=> b!1417693 m!1308537))

(declare-fun m!1308539 () Bool)

(assert (=> b!1417693 m!1308539))

(push 1)

(assert (not b!1417692))

(assert (not b!1417693))

(assert (not start!122260))

(assert (not b!1417691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!67221 () Bool)

(declare-fun call!67224 () Bool)

(assert (=> bm!67221 (= call!67224 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1417732 () Bool)

(declare-fun e!802356 () Bool)

(assert (=> b!1417732 (= e!802356 call!67224)))

(declare-fun b!1417733 () Bool)

(declare-fun e!802357 () Bool)

(assert (=> b!1417733 (= e!802357 call!67224)))

(declare-fun d!152647 () Bool)

(declare-fun res!953568 () Bool)

(declare-fun e!802358 () Bool)

(assert (=> d!152647 (=> res!953568 e!802358)))

(assert (=> d!152647 (= res!953568 (bvsge #b00000000000000000000000000000000 (size!47256 a!2831)))))

(assert (=> d!152647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802358)))

(declare-fun b!1417734 () Bool)

(assert (=> b!1417734 (= e!802358 e!802357)))

(declare-fun c!131567 () Bool)

(assert (=> b!1417734 (= c!131567 (validKeyInArray!0 (select (arr!46705 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1417735 () Bool)

(assert (=> b!1417735 (= e!802357 e!802356)))

(declare-fun lt!625386 () (_ BitVec 64))

(assert (=> b!1417735 (= lt!625386 (select (arr!46705 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!47990 0))(
  ( (Unit!47991) )
))
(declare-fun lt!625387 () Unit!47990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96762 (_ BitVec 64) (_ BitVec 32)) Unit!47990)

(assert (=> b!1417735 (= lt!625387 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625386 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417735 (arrayContainsKey!0 a!2831 lt!625386 #b00000000000000000000000000000000)))

(declare-fun lt!625385 () Unit!47990)

(assert (=> b!1417735 (= lt!625385 lt!625387)))

(declare-fun res!953567 () Bool)

(declare-datatypes ((SeekEntryResult!11033 0))(
  ( (MissingZero!11033 (index!46523 (_ BitVec 32))) (Found!11033 (index!46524 (_ BitVec 32))) (Intermediate!11033 (undefined!11845 Bool) (index!46525 (_ BitVec 32)) (x!128143 (_ BitVec 32))) (Undefined!11033) (MissingVacant!11033 (index!46526 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96762 (_ BitVec 32)) SeekEntryResult!11033)

(assert (=> b!1417735 (= res!953567 (= (seekEntryOrOpen!0 (select (arr!46705 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11033 #b00000000000000000000000000000000)))))

(assert (=> b!1417735 (=> (not res!953567) (not e!802356))))

(assert (= (and d!152647 (not res!953568)) b!1417734))

(assert (= (and b!1417734 c!131567) b!1417735))

(assert (= (and b!1417734 (not c!131567)) b!1417733))

(assert (= (and b!1417735 res!953567) b!1417732))

(assert (= (or b!1417732 b!1417733) bm!67221))

(declare-fun m!1308569 () Bool)

(assert (=> bm!67221 m!1308569))

(declare-fun m!1308571 () Bool)

(assert (=> b!1417734 m!1308571))

