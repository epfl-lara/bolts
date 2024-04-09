; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122290 () Bool)

(assert start!122290)

(declare-fun b!1417772 () Bool)

(declare-fun res!953596 () Bool)

(declare-fun e!802382 () Bool)

(assert (=> b!1417772 (=> (not res!953596) (not e!802382))))

(declare-datatypes ((array!96771 0))(
  ( (array!96772 (arr!46708 (Array (_ BitVec 32) (_ BitVec 64))) (size!47259 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96771)

(assert (=> b!1417772 (= res!953596 (and (bvsle #b00000000000000000000000000000000 (size!47259 a!2831)) (bvslt (size!47259 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417773 () Bool)

(declare-fun res!953593 () Bool)

(assert (=> b!1417773 (=> (not res!953593) (not e!802382))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417773 (= res!953593 (validKeyInArray!0 (select (arr!46708 a!2831) j!81)))))

(declare-fun b!1417774 () Bool)

(declare-fun res!953597 () Bool)

(assert (=> b!1417774 (=> (not res!953597) (not e!802382))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1417774 (= res!953597 (and (= (size!47259 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47259 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47259 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1417776 () Bool)

(declare-fun res!953598 () Bool)

(assert (=> b!1417776 (=> (not res!953598) (not e!802382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96771 (_ BitVec 32)) Bool)

(assert (=> b!1417776 (= res!953598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417777 () Bool)

(declare-fun res!953594 () Bool)

(assert (=> b!1417777 (=> (not res!953594) (not e!802382))))

(assert (=> b!1417777 (= res!953594 (validKeyInArray!0 (select (arr!46708 a!2831) i!982)))))

(declare-fun b!1417775 () Bool)

(declare-datatypes ((List!33398 0))(
  ( (Nil!33395) (Cons!33394 (h!34687 (_ BitVec 64)) (t!48099 List!33398)) )
))
(declare-fun noDuplicate!2639 (List!33398) Bool)

(assert (=> b!1417775 (= e!802382 (not (noDuplicate!2639 Nil!33395)))))

(declare-fun res!953595 () Bool)

(assert (=> start!122290 (=> (not res!953595) (not e!802382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122290 (= res!953595 (validMask!0 mask!2608))))

(assert (=> start!122290 e!802382))

(assert (=> start!122290 true))

(declare-fun array_inv!35653 (array!96771) Bool)

(assert (=> start!122290 (array_inv!35653 a!2831)))

(assert (= (and start!122290 res!953595) b!1417774))

(assert (= (and b!1417774 res!953597) b!1417777))

(assert (= (and b!1417777 res!953594) b!1417773))

(assert (= (and b!1417773 res!953593) b!1417776))

(assert (= (and b!1417776 res!953598) b!1417772))

(assert (= (and b!1417772 res!953596) b!1417775))

(declare-fun m!1308605 () Bool)

(assert (=> start!122290 m!1308605))

(declare-fun m!1308607 () Bool)

(assert (=> start!122290 m!1308607))

(declare-fun m!1308609 () Bool)

(assert (=> b!1417775 m!1308609))

(declare-fun m!1308611 () Bool)

(assert (=> b!1417776 m!1308611))

(declare-fun m!1308613 () Bool)

(assert (=> b!1417777 m!1308613))

(assert (=> b!1417777 m!1308613))

(declare-fun m!1308615 () Bool)

(assert (=> b!1417777 m!1308615))

(declare-fun m!1308617 () Bool)

(assert (=> b!1417773 m!1308617))

(assert (=> b!1417773 m!1308617))

(declare-fun m!1308619 () Bool)

(assert (=> b!1417773 m!1308619))

(push 1)

(assert (not start!122290))

(assert (not b!1417776))

(assert (not b!1417777))

(assert (not b!1417775))

(assert (not b!1417773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152681 () Bool)

(assert (=> d!152681 (= (validKeyInArray!0 (select (arr!46708 a!2831) i!982)) (and (not (= (select (arr!46708 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46708 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417777 d!152681))

(declare-fun d!152683 () Bool)

(assert (=> d!152683 (= (validKeyInArray!0 (select (arr!46708 a!2831) j!81)) (and (not (= (select (arr!46708 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46708 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417773 d!152683))

(declare-fun d!152687 () Bool)

(assert (=> d!152687 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122290 d!152687))

(declare-fun d!152695 () Bool)

(assert (=> d!152695 (= (array_inv!35653 a!2831) (bvsge (size!47259 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122290 d!152695))

(declare-fun b!1417852 () Bool)

(declare-fun e!802426 () Bool)

(declare-fun call!67239 () Bool)

(assert (=> b!1417852 (= e!802426 call!67239)))

(declare-fun d!152697 () Bool)

(declare-fun res!953658 () Bool)

(declare-fun e!802427 () Bool)

(assert (=> d!152697 (=> res!953658 e!802427)))

(assert (=> d!152697 (= res!953658 (bvsge #b00000000000000000000000000000000 (size!47259 a!2831)))))

(assert (=> d!152697 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802427)))

(declare-fun b!1417853 () Bool)

(declare-fun e!802425 () Bool)

(assert (=> b!1417853 (= e!802425 e!802426)))

(declare-fun lt!625432 () (_ BitVec 64))

(assert (=> b!1417853 (= lt!625432 (select (arr!46708 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!47996 0))(
  ( (Unit!47997) )
))
(declare-fun lt!625431 () Unit!47996)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96771 (_ BitVec 64) (_ BitVec 32)) Unit!47996)

(assert (=> b!1417853 (= lt!625431 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625432 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417853 (arrayContainsKey!0 a!2831 lt!625432 #b00000000000000000000000000000000)))

(declare-fun lt!625430 () Unit!47996)

(assert (=> b!1417853 (= lt!625430 lt!625431)))

(declare-fun res!953657 () Bool)

(declare-datatypes ((SeekEntryResult!11036 0))(
  ( (MissingZero!11036 (index!46535 (_ BitVec 32))) (Found!11036 (index!46536 (_ BitVec 32))) (Intermediate!11036 (undefined!11848 Bool) (index!46537 (_ BitVec 32)) (x!128154 (_ BitVec 32))) (Undefined!11036) (MissingVacant!11036 (index!46538 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96771 (_ BitVec 32)) SeekEntryResult!11036)

(assert (=> b!1417853 (= res!953657 (= (seekEntryOrOpen!0 (select (arr!46708 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11036 #b00000000000000000000000000000000)))))

(assert (=> b!1417853 (=> (not res!953657) (not e!802426))))

(declare-fun bm!67236 () Bool)

(assert (=> bm!67236 (= call!67239 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1417854 () Bool)

(assert (=> b!1417854 (= e!802427 e!802425)))

(declare-fun c!131582 () Bool)

(assert (=> b!1417854 (= c!131582 (validKeyInArray!0 (select (arr!46708 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1417855 () Bool)

(assert (=> b!1417855 (= e!802425 call!67239)))

(assert (= (and d!152697 (not res!953658)) b!1417854))

(assert (= (and b!1417854 c!131582) b!1417853))

(assert (= (and b!1417854 (not c!131582)) b!1417855))

(assert (= (and b!1417853 res!953657) b!1417852))

(assert (= (or b!1417852 b!1417855) bm!67236))

(declare-fun m!1308681 () Bool)

(assert (=> b!1417853 m!1308681))

(declare-fun m!1308683 () Bool)

(assert (=> b!1417853 m!1308683))

(declare-fun m!1308685 () Bool)

(assert (=> b!1417853 m!1308685))

(assert (=> b!1417853 m!1308681))

(declare-fun m!1308687 () Bool)

(assert (=> b!1417853 m!1308687))

(declare-fun m!1308689 () Bool)

