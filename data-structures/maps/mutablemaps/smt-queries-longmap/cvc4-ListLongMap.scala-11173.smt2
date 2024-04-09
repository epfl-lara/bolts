; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130670 () Bool)

(assert start!130670)

(declare-fun b!1532514 () Bool)

(declare-fun res!1049758 () Bool)

(declare-fun e!853886 () Bool)

(assert (=> b!1532514 (=> (not res!1049758) (not e!853886))))

(declare-datatypes ((array!101728 0))(
  ( (array!101729 (arr!49077 (Array (_ BitVec 32) (_ BitVec 64))) (size!49628 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101728)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532514 (= res!1049758 (and (= (size!49628 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49628 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49628 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1049760 () Bool)

(assert (=> start!130670 (=> (not res!1049760) (not e!853886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130670 (= res!1049760 (validMask!0 mask!2480))))

(assert (=> start!130670 e!853886))

(assert (=> start!130670 true))

(declare-fun array_inv!38022 (array!101728) Bool)

(assert (=> start!130670 (array_inv!38022 a!2792)))

(declare-fun b!1532515 () Bool)

(declare-fun res!1049756 () Bool)

(assert (=> b!1532515 (=> (not res!1049756) (not e!853886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101728 (_ BitVec 32)) Bool)

(assert (=> b!1532515 (= res!1049756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532516 () Bool)

(declare-fun res!1049763 () Bool)

(assert (=> b!1532516 (=> (not res!1049763) (not e!853886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532516 (= res!1049763 (validKeyInArray!0 (select (arr!49077 a!2792) i!951)))))

(declare-fun b!1532517 () Bool)

(declare-fun res!1049759 () Bool)

(assert (=> b!1532517 (=> (not res!1049759) (not e!853886))))

(assert (=> b!1532517 (= res!1049759 (and (bvsle #b00000000000000000000000000000000 (size!49628 a!2792)) (bvslt (size!49628 a!2792) #b01111111111111111111111111111111)))))

(declare-fun b!1532518 () Bool)

(declare-fun e!853885 () Bool)

(assert (=> b!1532518 (= e!853886 e!853885)))

(declare-fun res!1049757 () Bool)

(assert (=> b!1532518 (=> res!1049757 e!853885)))

(declare-datatypes ((List!35731 0))(
  ( (Nil!35728) (Cons!35727 (h!37173 (_ BitVec 64)) (t!50432 List!35731)) )
))
(declare-fun contains!10022 (List!35731 (_ BitVec 64)) Bool)

(assert (=> b!1532518 (= res!1049757 (contains!10022 Nil!35728 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532519 () Bool)

(declare-fun res!1049762 () Bool)

(assert (=> b!1532519 (=> (not res!1049762) (not e!853886))))

(declare-fun noDuplicate!2668 (List!35731) Bool)

(assert (=> b!1532519 (= res!1049762 (noDuplicate!2668 Nil!35728))))

(declare-fun b!1532520 () Bool)

(assert (=> b!1532520 (= e!853885 (contains!10022 Nil!35728 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532521 () Bool)

(declare-fun res!1049761 () Bool)

(assert (=> b!1532521 (=> (not res!1049761) (not e!853886))))

(assert (=> b!1532521 (= res!1049761 (validKeyInArray!0 (select (arr!49077 a!2792) j!64)))))

(assert (= (and start!130670 res!1049760) b!1532514))

(assert (= (and b!1532514 res!1049758) b!1532516))

(assert (= (and b!1532516 res!1049763) b!1532521))

(assert (= (and b!1532521 res!1049761) b!1532515))

(assert (= (and b!1532515 res!1049756) b!1532517))

(assert (= (and b!1532517 res!1049759) b!1532519))

(assert (= (and b!1532519 res!1049762) b!1532518))

(assert (= (and b!1532518 (not res!1049757)) b!1532520))

(declare-fun m!1415263 () Bool)

(assert (=> b!1532516 m!1415263))

(assert (=> b!1532516 m!1415263))

(declare-fun m!1415265 () Bool)

(assert (=> b!1532516 m!1415265))

(declare-fun m!1415267 () Bool)

(assert (=> b!1532520 m!1415267))

(declare-fun m!1415269 () Bool)

(assert (=> start!130670 m!1415269))

(declare-fun m!1415271 () Bool)

(assert (=> start!130670 m!1415271))

(declare-fun m!1415273 () Bool)

(assert (=> b!1532518 m!1415273))

(declare-fun m!1415275 () Bool)

(assert (=> b!1532521 m!1415275))

(assert (=> b!1532521 m!1415275))

(declare-fun m!1415277 () Bool)

(assert (=> b!1532521 m!1415277))

(declare-fun m!1415279 () Bool)

(assert (=> b!1532519 m!1415279))

(declare-fun m!1415281 () Bool)

(assert (=> b!1532515 m!1415281))

(push 1)

(assert (not b!1532520))

(assert (not b!1532516))

(assert (not b!1532521))

(assert (not b!1532515))

(assert (not b!1532518))

(assert (not start!130670))

(assert (not b!1532519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!160035 () Bool)

(declare-fun lt!663616 () Bool)

(declare-fun content!793 (List!35731) (Set (_ BitVec 64)))

(assert (=> d!160035 (= lt!663616 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!793 Nil!35728)))))

(declare-fun e!853898 () Bool)

(assert (=> d!160035 (= lt!663616 e!853898)))

(declare-fun res!1049774 () Bool)

(assert (=> d!160035 (=> (not res!1049774) (not e!853898))))

(assert (=> d!160035 (= res!1049774 (is-Cons!35727 Nil!35728))))

(assert (=> d!160035 (= (contains!10022 Nil!35728 #b0000000000000000000000000000000000000000000000000000000000000000) lt!663616)))

(declare-fun b!1532532 () Bool)

(declare-fun e!853897 () Bool)

(assert (=> b!1532532 (= e!853898 e!853897)))

(declare-fun res!1049775 () Bool)

(assert (=> b!1532532 (=> res!1049775 e!853897)))

(assert (=> b!1532532 (= res!1049775 (= (h!37173 Nil!35728) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1532533 () Bool)

(assert (=> b!1532533 (= e!853897 (contains!10022 (t!50432 Nil!35728) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!160035 res!1049774) b!1532532))

(assert (= (and b!1532532 (not res!1049775)) b!1532533))

(declare-fun m!1415287 () Bool)

(assert (=> d!160035 m!1415287))

(declare-fun m!1415289 () Bool)

(assert (=> d!160035 m!1415289))

(declare-fun m!1415291 () Bool)

(assert (=> b!1532533 m!1415291))

(assert (=> b!1532518 d!160035))

(declare-fun d!160039 () Bool)

(assert (=> d!160039 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!130670 d!160039))

(declare-fun d!160051 () Bool)

(assert (=> d!160051 (= (array_inv!38022 a!2792) (bvsge (size!49628 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!130670 d!160051))

(declare-fun d!160053 () Bool)

(assert (=> d!160053 (= (validKeyInArray!0 (select (arr!49077 a!2792) i!951)) (and (not (= (select (arr!49077 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49077 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532516 d!160053))

(declare-fun d!160057 () Bool)

(assert (=> d!160057 (= (validKeyInArray!0 (select (arr!49077 a!2792) j!64)) (and (not (= (select (arr!49077 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49077 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1532521 d!160057))

(declare-fun b!1532582 () Bool)

(declare-fun e!853942 () Bool)

(declare-fun e!853940 () Bool)

(assert (=> b!1532582 (= e!853942 e!853940)))

(declare-fun c!140947 () Bool)

(assert (=> b!1532582 (= c!140947 (validKeyInArray!0 (select (arr!49077 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1532583 () Bool)

(declare-fun call!68577 () Bool)

(assert (=> b!1532583 (= e!853940 call!68577)))

(declare-fun bm!68573 () Bool)

(assert (=> bm!68573 (= call!68577 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1532585 () Bool)

(declare-fun e!853943 () Bool)

(assert (=> b!1532585 (= e!853940 e!853943)))

(declare-fun lt!663647 () (_ BitVec 64))

(assert (=> b!1532585 (= lt!663647 (select (arr!49077 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51252 0))(
  ( (Unit!51253) )
))
(declare-fun lt!663650 () Unit!51252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101728 (_ BitVec 64) (_ BitVec 32)) Unit!51252)

(assert (=> b!1532585 (= lt!663650 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!663647 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1532585 (arrayContainsKey!0 a!2792 lt!663647 #b00000000000000000000000000000000)))

(declare-fun lt!663645 () Unit!51252)

(assert (=> b!1532585 (= lt!663645 lt!663650)))

(declare-fun res!1049810 () Bool)

(declare-datatypes ((SeekEntryResult!13256 0))(
  ( (MissingZero!13256 (index!55418 (_ BitVec 32))) (Found!13256 (index!55419 (_ BitVec 32))) (Intermediate!13256 (undefined!14068 Bool) (index!55420 (_ BitVec 32)) (x!137133 (_ BitVec 32))) (Undefined!13256) (MissingVacant!13256 (index!55421 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101728 (_ BitVec 32)) SeekEntryResult!13256)

(assert (=> b!1532585 (= res!1049810 (= (seekEntryOrOpen!0 (select (arr!49077 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13256 #b00000000000000000000000000000000)))))

(assert (=> b!1532585 (=> (not res!1049810) (not e!853943))))

(declare-fun b!1532587 () Bool)

(assert (=> b!1532587 (= e!853943 call!68577)))

(declare-fun d!160059 () Bool)

(declare-fun res!1049812 () Bool)

(assert (=> d!160059 (=> res!1049812 e!853942)))

(assert (=> d!160059 (= res!1049812 (bvsge #b00000000000000000000000000000000 (size!49628 a!2792)))))

(assert (=> d!160059 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!853942)))

(assert (= (and d!160059 (not res!1049812)) b!1532582))

(assert (= (and b!1532582 c!140947) b!1532585))

(assert (= (and b!1532582 (not c!140947)) b!1532583))

(assert (= (and b!1532585 res!1049810) b!1532587))

(assert (= (or b!1532587 b!1532583) bm!68573))

(declare-fun m!1415325 () Bool)

(assert (=> b!1532582 m!1415325))

(assert (=> b!1532582 m!1415325))

(declare-fun m!1415331 () Bool)

(assert (=> b!1532582 m!1415331))

