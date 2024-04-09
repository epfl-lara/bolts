; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92814 () Bool)

(assert start!92814)

(declare-fun b!1053811 () Bool)

(declare-fun res!702908 () Bool)

(declare-fun e!598616 () Bool)

(assert (=> b!1053811 (=> (not res!702908) (not e!598616))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053811 (= res!702908 (validKeyInArray!0 k!2747))))

(declare-fun res!702904 () Bool)

(assert (=> start!92814 (=> (not res!702904) (not e!598616))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66455 0))(
  ( (array!66456 (arr!31957 (Array (_ BitVec 32) (_ BitVec 64))) (size!32494 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66455)

(assert (=> start!92814 (= res!702904 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32494 a!3488)) (bvslt (size!32494 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92814 e!598616))

(assert (=> start!92814 true))

(declare-fun array_inv!24579 (array!66455) Bool)

(assert (=> start!92814 (array_inv!24579 a!3488)))

(declare-fun b!1053812 () Bool)

(declare-fun e!598618 () Bool)

(assert (=> b!1053812 (= e!598616 e!598618)))

(declare-fun res!702903 () Bool)

(assert (=> b!1053812 (=> (not res!702903) (not e!598618))))

(declare-fun lt!465217 () array!66455)

(declare-fun arrayContainsKey!0 (array!66455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053812 (= res!702903 (arrayContainsKey!0 lt!465217 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053812 (= lt!465217 (array!66456 (store (arr!31957 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32494 a!3488)))))

(declare-fun b!1053813 () Bool)

(declare-fun res!702909 () Bool)

(assert (=> b!1053813 (=> (not res!702909) (not e!598616))))

(assert (=> b!1053813 (= res!702909 (= (select (arr!31957 a!3488) i!1381) k!2747))))

(declare-fun b!1053814 () Bool)

(declare-fun lt!465216 () (_ BitVec 32))

(declare-fun e!598615 () Bool)

(assert (=> b!1053814 (= e!598615 (arrayContainsKey!0 a!3488 k!2747 lt!465216))))

(declare-fun b!1053815 () Bool)

(declare-fun e!598619 () Bool)

(assert (=> b!1053815 (= e!598619 (not true))))

(declare-fun e!598614 () Bool)

(assert (=> b!1053815 e!598614))

(declare-fun res!702907 () Bool)

(assert (=> b!1053815 (=> (not res!702907) (not e!598614))))

(assert (=> b!1053815 (= res!702907 (= (select (store (arr!31957 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465216) k!2747))))

(declare-fun b!1053816 () Bool)

(assert (=> b!1053816 (= e!598618 e!598619)))

(declare-fun res!702902 () Bool)

(assert (=> b!1053816 (=> (not res!702902) (not e!598619))))

(assert (=> b!1053816 (= res!702902 (not (= lt!465216 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66455 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053816 (= lt!465216 (arrayScanForKey!0 lt!465217 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053817 () Bool)

(declare-fun res!702905 () Bool)

(assert (=> b!1053817 (=> (not res!702905) (not e!598616))))

(declare-datatypes ((List!22400 0))(
  ( (Nil!22397) (Cons!22396 (h!23605 (_ BitVec 64)) (t!31714 List!22400)) )
))
(declare-fun arrayNoDuplicates!0 (array!66455 (_ BitVec 32) List!22400) Bool)

(assert (=> b!1053817 (= res!702905 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22397))))

(declare-fun b!1053818 () Bool)

(assert (=> b!1053818 (= e!598614 e!598615)))

(declare-fun res!702906 () Bool)

(assert (=> b!1053818 (=> res!702906 e!598615)))

(assert (=> b!1053818 (= res!702906 (bvsle lt!465216 i!1381))))

(assert (= (and start!92814 res!702904) b!1053817))

(assert (= (and b!1053817 res!702905) b!1053811))

(assert (= (and b!1053811 res!702908) b!1053813))

(assert (= (and b!1053813 res!702909) b!1053812))

(assert (= (and b!1053812 res!702903) b!1053816))

(assert (= (and b!1053816 res!702902) b!1053815))

(assert (= (and b!1053815 res!702907) b!1053818))

(assert (= (and b!1053818 (not res!702906)) b!1053814))

(declare-fun m!974133 () Bool)

(assert (=> b!1053816 m!974133))

(declare-fun m!974135 () Bool)

(assert (=> b!1053814 m!974135))

(declare-fun m!974137 () Bool)

(assert (=> b!1053811 m!974137))

(declare-fun m!974139 () Bool)

(assert (=> start!92814 m!974139))

(declare-fun m!974141 () Bool)

(assert (=> b!1053817 m!974141))

(declare-fun m!974143 () Bool)

(assert (=> b!1053812 m!974143))

(declare-fun m!974145 () Bool)

(assert (=> b!1053812 m!974145))

(assert (=> b!1053815 m!974145))

(declare-fun m!974147 () Bool)

(assert (=> b!1053815 m!974147))

(declare-fun m!974149 () Bool)

(assert (=> b!1053813 m!974149))

(push 1)

