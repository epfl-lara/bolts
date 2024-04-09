; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92314 () Bool)

(assert start!92314)

(declare-fun res!697914 () Bool)

(declare-fun e!594894 () Bool)

(assert (=> start!92314 (=> (not res!697914) (not e!594894))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66063 0))(
  ( (array!66064 (arr!31767 (Array (_ BitVec 32) (_ BitVec 64))) (size!32304 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66063)

(assert (=> start!92314 (= res!697914 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32304 a!3488)) (bvslt (size!32304 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92314 e!594894))

(assert (=> start!92314 true))

(declare-fun array_inv!24389 (array!66063) Bool)

(assert (=> start!92314 (array_inv!24389 a!3488)))

(declare-fun b!1048678 () Bool)

(declare-fun e!594892 () Bool)

(declare-fun e!594893 () Bool)

(assert (=> b!1048678 (= e!594892 e!594893)))

(declare-fun res!697920 () Bool)

(assert (=> b!1048678 (=> (not res!697920) (not e!594893))))

(declare-fun lt!463249 () (_ BitVec 32))

(assert (=> b!1048678 (= res!697920 (not (= lt!463249 i!1381)))))

(declare-fun lt!463248 () array!66063)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66063 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048678 (= lt!463249 (arrayScanForKey!0 lt!463248 k!2747 #b00000000000000000000000000000000))))

(declare-fun e!594896 () Bool)

(declare-fun b!1048679 () Bool)

(declare-fun arrayContainsKey!0 (array!66063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048679 (= e!594896 (arrayContainsKey!0 a!3488 k!2747 lt!463249))))

(declare-fun b!1048680 () Bool)

(assert (=> b!1048680 (= e!594894 e!594892)))

(declare-fun res!697919 () Bool)

(assert (=> b!1048680 (=> (not res!697919) (not e!594892))))

(assert (=> b!1048680 (= res!697919 (arrayContainsKey!0 lt!463248 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048680 (= lt!463248 (array!66064 (store (arr!31767 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32304 a!3488)))))

(declare-fun b!1048681 () Bool)

(declare-fun e!594895 () Bool)

(assert (=> b!1048681 (= e!594895 e!594896)))

(declare-fun res!697913 () Bool)

(assert (=> b!1048681 (=> res!697913 e!594896)))

(assert (=> b!1048681 (= res!697913 (bvsle lt!463249 i!1381))))

(declare-fun b!1048682 () Bool)

(assert (=> b!1048682 (= e!594893 (not true))))

(assert (=> b!1048682 e!594895))

(declare-fun res!697918 () Bool)

(assert (=> b!1048682 (=> (not res!697918) (not e!594895))))

(assert (=> b!1048682 (= res!697918 (= (select (store (arr!31767 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463249) k!2747))))

(declare-fun b!1048683 () Bool)

(declare-fun res!697915 () Bool)

(assert (=> b!1048683 (=> (not res!697915) (not e!594894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048683 (= res!697915 (validKeyInArray!0 k!2747))))

(declare-fun b!1048684 () Bool)

(declare-fun res!697917 () Bool)

(assert (=> b!1048684 (=> (not res!697917) (not e!594894))))

(assert (=> b!1048684 (= res!697917 (= (select (arr!31767 a!3488) i!1381) k!2747))))

(declare-fun b!1048685 () Bool)

(declare-fun res!697916 () Bool)

(assert (=> b!1048685 (=> (not res!697916) (not e!594894))))

(declare-datatypes ((List!22210 0))(
  ( (Nil!22207) (Cons!22206 (h!23415 (_ BitVec 64)) (t!31524 List!22210)) )
))
(declare-fun arrayNoDuplicates!0 (array!66063 (_ BitVec 32) List!22210) Bool)

(assert (=> b!1048685 (= res!697916 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22207))))

(assert (= (and start!92314 res!697914) b!1048685))

(assert (= (and b!1048685 res!697916) b!1048683))

(assert (= (and b!1048683 res!697915) b!1048684))

(assert (= (and b!1048684 res!697917) b!1048680))

(assert (= (and b!1048680 res!697919) b!1048678))

(assert (= (and b!1048678 res!697920) b!1048682))

(assert (= (and b!1048682 res!697918) b!1048681))

(assert (= (and b!1048681 (not res!697913)) b!1048679))

(declare-fun m!969717 () Bool)

(assert (=> b!1048683 m!969717))

(declare-fun m!969719 () Bool)

(assert (=> b!1048679 m!969719))

(declare-fun m!969721 () Bool)

(assert (=> b!1048685 m!969721))

(declare-fun m!969723 () Bool)

(assert (=> b!1048678 m!969723))

(declare-fun m!969725 () Bool)

(assert (=> b!1048684 m!969725))

(declare-fun m!969727 () Bool)

(assert (=> b!1048682 m!969727))

(declare-fun m!969729 () Bool)

(assert (=> b!1048682 m!969729))

(declare-fun m!969731 () Bool)

(assert (=> b!1048680 m!969731))

(assert (=> b!1048680 m!969727))

(declare-fun m!969733 () Bool)

(assert (=> start!92314 m!969733))

(push 1)

(assert (not b!1048683))

