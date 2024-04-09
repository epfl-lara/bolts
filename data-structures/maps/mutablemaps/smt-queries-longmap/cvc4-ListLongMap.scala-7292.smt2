; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93214 () Bool)

(assert start!93214)

(declare-fun b!1056651 () Bool)

(declare-fun e!600811 () Bool)

(declare-fun e!600809 () Bool)

(assert (=> b!1056651 (= e!600811 e!600809)))

(declare-fun res!705503 () Bool)

(assert (=> b!1056651 (=> res!705503 e!600809)))

(declare-fun lt!466158 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056651 (= res!705503 (or (bvsgt lt!466158 i!1381) (bvsle i!1381 lt!466158)))))

(declare-fun b!1056652 () Bool)

(declare-fun e!600815 () Bool)

(declare-fun e!600813 () Bool)

(assert (=> b!1056652 (= e!600815 e!600813)))

(declare-fun res!705509 () Bool)

(assert (=> b!1056652 (=> (not res!705509) (not e!600813))))

(declare-datatypes ((array!66633 0))(
  ( (array!66634 (arr!32037 (Array (_ BitVec 32) (_ BitVec 64))) (size!32574 (_ BitVec 32))) )
))
(declare-fun lt!466157 () array!66633)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056652 (= res!705509 (arrayContainsKey!0 lt!466157 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66633)

(assert (=> b!1056652 (= lt!466157 (array!66634 (store (arr!32037 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32574 a!3488)))))

(declare-fun b!1056653 () Bool)

(assert (=> b!1056653 (= e!600809 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056654 () Bool)

(declare-fun res!705510 () Bool)

(assert (=> b!1056654 (=> (not res!705510) (not e!600815))))

(assert (=> b!1056654 (= res!705510 (= (select (arr!32037 a!3488) i!1381) k!2747))))

(declare-fun res!705508 () Bool)

(assert (=> start!93214 (=> (not res!705508) (not e!600815))))

(assert (=> start!93214 (= res!705508 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32574 a!3488)) (bvslt (size!32574 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93214 e!600815))

(assert (=> start!93214 true))

(declare-fun array_inv!24659 (array!66633) Bool)

(assert (=> start!93214 (array_inv!24659 a!3488)))

(declare-fun b!1056655 () Bool)

(declare-fun e!600814 () Bool)

(declare-fun e!600810 () Bool)

(assert (=> b!1056655 (= e!600814 (not e!600810))))

(declare-fun res!705505 () Bool)

(assert (=> b!1056655 (=> res!705505 e!600810)))

(assert (=> b!1056655 (= res!705505 (or (bvsgt lt!466158 i!1381) (bvsle i!1381 lt!466158)))))

(assert (=> b!1056655 e!600811))

(declare-fun res!705506 () Bool)

(assert (=> b!1056655 (=> (not res!705506) (not e!600811))))

(assert (=> b!1056655 (= res!705506 (= (select (store (arr!32037 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466158) k!2747))))

(declare-fun b!1056656 () Bool)

(declare-fun res!705504 () Bool)

(assert (=> b!1056656 (=> (not res!705504) (not e!600815))))

(declare-datatypes ((List!22480 0))(
  ( (Nil!22477) (Cons!22476 (h!23685 (_ BitVec 64)) (t!31794 List!22480)) )
))
(declare-fun arrayNoDuplicates!0 (array!66633 (_ BitVec 32) List!22480) Bool)

(assert (=> b!1056656 (= res!705504 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22477))))

(declare-fun b!1056657 () Bool)

(assert (=> b!1056657 (= e!600810 true)))

(assert (=> b!1056657 (arrayNoDuplicates!0 a!3488 lt!466158 Nil!22477)))

(declare-datatypes ((Unit!34605 0))(
  ( (Unit!34606) )
))
(declare-fun lt!466159 () Unit!34605)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66633 (_ BitVec 32) (_ BitVec 32)) Unit!34605)

(assert (=> b!1056657 (= lt!466159 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466158))))

(declare-fun b!1056658 () Bool)

(declare-fun res!705502 () Bool)

(assert (=> b!1056658 (=> (not res!705502) (not e!600815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056658 (= res!705502 (validKeyInArray!0 k!2747))))

(declare-fun b!1056659 () Bool)

(assert (=> b!1056659 (= e!600813 e!600814)))

(declare-fun res!705507 () Bool)

(assert (=> b!1056659 (=> (not res!705507) (not e!600814))))

(assert (=> b!1056659 (= res!705507 (not (= lt!466158 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66633 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056659 (= lt!466158 (arrayScanForKey!0 lt!466157 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93214 res!705508) b!1056656))

(assert (= (and b!1056656 res!705504) b!1056658))

(assert (= (and b!1056658 res!705502) b!1056654))

(assert (= (and b!1056654 res!705510) b!1056652))

(assert (= (and b!1056652 res!705509) b!1056659))

(assert (= (and b!1056659 res!705507) b!1056655))

(assert (= (and b!1056655 res!705506) b!1056651))

(assert (= (and b!1056651 (not res!705503)) b!1056653))

(assert (= (and b!1056655 (not res!705505)) b!1056657))

(declare-fun m!976583 () Bool)

(assert (=> b!1056656 m!976583))

(declare-fun m!976585 () Bool)

(assert (=> b!1056659 m!976585))

(declare-fun m!976587 () Bool)

(assert (=> b!1056654 m!976587))

(declare-fun m!976589 () Bool)

(assert (=> b!1056652 m!976589))

(declare-fun m!976591 () Bool)

(assert (=> b!1056652 m!976591))

(declare-fun m!976593 () Bool)

(assert (=> b!1056658 m!976593))

(declare-fun m!976595 () Bool)

(assert (=> start!93214 m!976595))

(assert (=> b!1056655 m!976591))

(declare-fun m!976597 () Bool)

(assert (=> b!1056655 m!976597))

(declare-fun m!976599 () Bool)

(assert (=> b!1056653 m!976599))

(declare-fun m!976601 () Bool)

(assert (=> b!1056657 m!976601))

(declare-fun m!976603 () Bool)

(assert (=> b!1056657 m!976603))

(push 1)

