; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92902 () Bool)

(assert start!92902)

(declare-fun b!1054608 () Bool)

(declare-fun res!703661 () Bool)

(declare-fun e!599239 () Bool)

(assert (=> b!1054608 (=> (not res!703661) (not e!599239))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054608 (= res!703661 (validKeyInArray!0 k!2747))))

(declare-fun e!599240 () Bool)

(declare-fun lt!465479 () (_ BitVec 32))

(declare-datatypes ((array!66510 0))(
  ( (array!66511 (arr!31983 (Array (_ BitVec 32) (_ BitVec 64))) (size!32520 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66510)

(declare-fun b!1054609 () Bool)

(declare-fun arrayContainsKey!0 (array!66510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054609 (= e!599240 (arrayContainsKey!0 a!3488 k!2747 lt!465479))))

(declare-fun b!1054610 () Bool)

(declare-fun e!599235 () Bool)

(declare-fun e!599238 () Bool)

(assert (=> b!1054610 (= e!599235 (not e!599238))))

(declare-fun res!703664 () Bool)

(assert (=> b!1054610 (=> res!703664 e!599238)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054610 (= res!703664 (bvsle lt!465479 i!1381))))

(declare-fun e!599236 () Bool)

(assert (=> b!1054610 e!599236))

(declare-fun res!703659 () Bool)

(assert (=> b!1054610 (=> (not res!703659) (not e!599236))))

(assert (=> b!1054610 (= res!703659 (= (select (store (arr!31983 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465479) k!2747))))

(declare-fun res!703657 () Bool)

(assert (=> start!92902 (=> (not res!703657) (not e!599239))))

(assert (=> start!92902 (= res!703657 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32520 a!3488)) (bvslt (size!32520 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92902 e!599239))

(assert (=> start!92902 true))

(declare-fun array_inv!24605 (array!66510) Bool)

(assert (=> start!92902 (array_inv!24605 a!3488)))

(declare-fun b!1054611 () Bool)

(declare-fun res!703658 () Bool)

(assert (=> b!1054611 (=> (not res!703658) (not e!599239))))

(assert (=> b!1054611 (= res!703658 (= (select (arr!31983 a!3488) i!1381) k!2747))))

(declare-fun b!1054612 () Bool)

(assert (=> b!1054612 (= e!599238 true)))

(assert (=> b!1054612 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34533 0))(
  ( (Unit!34534) )
))
(declare-fun lt!465478 () Unit!34533)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66510 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34533)

(assert (=> b!1054612 (= lt!465478 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465479 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22426 0))(
  ( (Nil!22423) (Cons!22422 (h!23631 (_ BitVec 64)) (t!31740 List!22426)) )
))
(declare-fun arrayNoDuplicates!0 (array!66510 (_ BitVec 32) List!22426) Bool)

(assert (=> b!1054612 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22423)))

(declare-fun lt!465480 () Unit!34533)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66510 (_ BitVec 32) (_ BitVec 32)) Unit!34533)

(assert (=> b!1054612 (= lt!465480 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054613 () Bool)

(declare-fun e!599237 () Bool)

(assert (=> b!1054613 (= e!599237 e!599235)))

(declare-fun res!703660 () Bool)

(assert (=> b!1054613 (=> (not res!703660) (not e!599235))))

(assert (=> b!1054613 (= res!703660 (not (= lt!465479 i!1381)))))

(declare-fun lt!465481 () array!66510)

(declare-fun arrayScanForKey!0 (array!66510 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054613 (= lt!465479 (arrayScanForKey!0 lt!465481 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054614 () Bool)

(assert (=> b!1054614 (= e!599236 e!599240)))

(declare-fun res!703665 () Bool)

(assert (=> b!1054614 (=> res!703665 e!599240)))

(assert (=> b!1054614 (= res!703665 (bvsle lt!465479 i!1381))))

(declare-fun b!1054615 () Bool)

(declare-fun res!703663 () Bool)

(assert (=> b!1054615 (=> (not res!703663) (not e!599239))))

(assert (=> b!1054615 (= res!703663 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22423))))

(declare-fun b!1054616 () Bool)

(assert (=> b!1054616 (= e!599239 e!599237)))

(declare-fun res!703662 () Bool)

(assert (=> b!1054616 (=> (not res!703662) (not e!599237))))

(assert (=> b!1054616 (= res!703662 (arrayContainsKey!0 lt!465481 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054616 (= lt!465481 (array!66511 (store (arr!31983 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32520 a!3488)))))

(assert (= (and start!92902 res!703657) b!1054615))

(assert (= (and b!1054615 res!703663) b!1054608))

(assert (= (and b!1054608 res!703661) b!1054611))

(assert (= (and b!1054611 res!703658) b!1054616))

(assert (= (and b!1054616 res!703662) b!1054613))

(assert (= (and b!1054613 res!703660) b!1054610))

(assert (= (and b!1054610 res!703659) b!1054614))

(assert (= (and b!1054614 (not res!703665)) b!1054609))

(assert (= (and b!1054610 (not res!703664)) b!1054612))

(declare-fun m!974797 () Bool)

(assert (=> b!1054609 m!974797))

(declare-fun m!974799 () Bool)

(assert (=> b!1054608 m!974799))

(declare-fun m!974801 () Bool)

(assert (=> b!1054616 m!974801))

(declare-fun m!974803 () Bool)

(assert (=> b!1054616 m!974803))

(declare-fun m!974805 () Bool)

(assert (=> start!92902 m!974805))

(declare-fun m!974807 () Bool)

(assert (=> b!1054611 m!974807))

(declare-fun m!974809 () Bool)

(assert (=> b!1054612 m!974809))

(declare-fun m!974811 () Bool)

(assert (=> b!1054612 m!974811))

(declare-fun m!974813 () Bool)

(assert (=> b!1054612 m!974813))

(declare-fun m!974815 () Bool)

(assert (=> b!1054612 m!974815))

(declare-fun m!974817 () Bool)

(assert (=> b!1054615 m!974817))

(declare-fun m!974819 () Bool)

(assert (=> b!1054613 m!974819))

(assert (=> b!1054610 m!974803))

(declare-fun m!974821 () Bool)

(assert (=> b!1054610 m!974821))

(push 1)

