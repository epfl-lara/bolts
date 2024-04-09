; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93090 () Bool)

(assert start!93090)

(declare-fun b!1055676 () Bool)

(declare-fun res!704602 () Bool)

(declare-fun e!600064 () Bool)

(assert (=> b!1055676 (=> (not res!704602) (not e!600064))))

(declare-datatypes ((array!66563 0))(
  ( (array!66564 (arr!32005 (Array (_ BitVec 32) (_ BitVec 64))) (size!32542 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66563)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055676 (= res!704602 (= (select (arr!32005 a!3488) i!1381) k!2747))))

(declare-fun b!1055677 () Bool)

(declare-fun res!704601 () Bool)

(assert (=> b!1055677 (=> (not res!704601) (not e!600064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055677 (= res!704601 (validKeyInArray!0 k!2747))))

(declare-fun e!600062 () Bool)

(declare-fun b!1055678 () Bool)

(declare-fun lt!465855 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055678 (= e!600062 (arrayContainsKey!0 a!3488 k!2747 lt!465855))))

(declare-fun b!1055679 () Bool)

(declare-fun res!704603 () Bool)

(assert (=> b!1055679 (=> (not res!704603) (not e!600064))))

(declare-datatypes ((List!22448 0))(
  ( (Nil!22445) (Cons!22444 (h!23653 (_ BitVec 64)) (t!31762 List!22448)) )
))
(declare-fun arrayNoDuplicates!0 (array!66563 (_ BitVec 32) List!22448) Bool)

(assert (=> b!1055679 (= res!704603 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22445))))

(declare-fun b!1055680 () Bool)

(declare-fun e!600066 () Bool)

(declare-fun e!600063 () Bool)

(assert (=> b!1055680 (= e!600066 e!600063)))

(declare-fun res!704607 () Bool)

(assert (=> b!1055680 (=> (not res!704607) (not e!600063))))

(assert (=> b!1055680 (= res!704607 (not (= lt!465855 i!1381)))))

(declare-fun lt!465858 () array!66563)

(declare-fun arrayScanForKey!0 (array!66563 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055680 (= lt!465855 (arrayScanForKey!0 lt!465858 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055681 () Bool)

(assert (=> b!1055681 (= e!600064 e!600066)))

(declare-fun res!704604 () Bool)

(assert (=> b!1055681 (=> (not res!704604) (not e!600066))))

(assert (=> b!1055681 (= res!704604 (arrayContainsKey!0 lt!465858 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055681 (= lt!465858 (array!66564 (store (arr!32005 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32542 a!3488)))))

(declare-fun b!1055682 () Bool)

(declare-fun e!600065 () Bool)

(assert (=> b!1055682 (= e!600065 true)))

(assert (=> b!1055682 false))

(declare-datatypes ((Unit!34577 0))(
  ( (Unit!34578) )
))
(declare-fun lt!465859 () Unit!34577)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66563 (_ BitVec 64) (_ BitVec 32) List!22448) Unit!34577)

(assert (=> b!1055682 (= lt!465859 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22445))))

(assert (=> b!1055682 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465856 () Unit!34577)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66563 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34577)

(assert (=> b!1055682 (= lt!465856 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465855 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055682 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22445)))

(declare-fun lt!465857 () Unit!34577)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66563 (_ BitVec 32) (_ BitVec 32)) Unit!34577)

(assert (=> b!1055682 (= lt!465857 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!704599 () Bool)

(assert (=> start!93090 (=> (not res!704599) (not e!600064))))

(assert (=> start!93090 (= res!704599 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32542 a!3488)) (bvslt (size!32542 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93090 e!600064))

(assert (=> start!93090 true))

(declare-fun array_inv!24627 (array!66563) Bool)

(assert (=> start!93090 (array_inv!24627 a!3488)))

(declare-fun b!1055683 () Bool)

(declare-fun e!600068 () Bool)

(assert (=> b!1055683 (= e!600068 e!600062)))

(declare-fun res!704606 () Bool)

(assert (=> b!1055683 (=> res!704606 e!600062)))

(assert (=> b!1055683 (= res!704606 (bvsle lt!465855 i!1381))))

(declare-fun b!1055684 () Bool)

(assert (=> b!1055684 (= e!600063 (not e!600065))))

(declare-fun res!704605 () Bool)

(assert (=> b!1055684 (=> res!704605 e!600065)))

(assert (=> b!1055684 (= res!704605 (bvsle lt!465855 i!1381))))

(assert (=> b!1055684 e!600068))

(declare-fun res!704600 () Bool)

(assert (=> b!1055684 (=> (not res!704600) (not e!600068))))

(assert (=> b!1055684 (= res!704600 (= (select (store (arr!32005 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465855) k!2747))))

(assert (= (and start!93090 res!704599) b!1055679))

(assert (= (and b!1055679 res!704603) b!1055677))

(assert (= (and b!1055677 res!704601) b!1055676))

(assert (= (and b!1055676 res!704602) b!1055681))

(assert (= (and b!1055681 res!704604) b!1055680))

(assert (= (and b!1055680 res!704607) b!1055684))

(assert (= (and b!1055684 res!704600) b!1055683))

(assert (= (and b!1055683 (not res!704606)) b!1055678))

(assert (= (and b!1055684 (not res!704605)) b!1055682))

(declare-fun m!975789 () Bool)

(assert (=> b!1055679 m!975789))

(declare-fun m!975791 () Bool)

(assert (=> b!1055680 m!975791))

(declare-fun m!975793 () Bool)

(assert (=> b!1055681 m!975793))

(declare-fun m!975795 () Bool)

(assert (=> b!1055681 m!975795))

(declare-fun m!975797 () Bool)

(assert (=> start!93090 m!975797))

(declare-fun m!975799 () Bool)

(assert (=> b!1055682 m!975799))

(declare-fun m!975801 () Bool)

(assert (=> b!1055682 m!975801))

(declare-fun m!975803 () Bool)

(assert (=> b!1055682 m!975803))

(declare-fun m!975805 () Bool)

(assert (=> b!1055682 m!975805))

(declare-fun m!975807 () Bool)

(assert (=> b!1055682 m!975807))

(declare-fun m!975809 () Bool)

(assert (=> b!1055676 m!975809))

(assert (=> b!1055684 m!975795))

(declare-fun m!975811 () Bool)

(assert (=> b!1055684 m!975811))

(declare-fun m!975813 () Bool)

(assert (=> b!1055678 m!975813))

(declare-fun m!975815 () Bool)

(assert (=> b!1055677 m!975815))

(push 1)

