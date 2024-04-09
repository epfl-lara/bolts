; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92320 () Bool)

(assert start!92320)

(declare-fun lt!463266 () (_ BitVec 32))

(declare-fun e!594948 () Bool)

(declare-datatypes ((array!66069 0))(
  ( (array!66070 (arr!31770 (Array (_ BitVec 32) (_ BitVec 64))) (size!32307 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66069)

(declare-fun b!1048750 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048750 (= e!594948 (arrayContainsKey!0 a!3488 k!2747 lt!463266))))

(declare-fun res!697991 () Bool)

(declare-fun e!594950 () Bool)

(assert (=> start!92320 (=> (not res!697991) (not e!594950))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92320 (= res!697991 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32307 a!3488)) (bvslt (size!32307 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92320 e!594950))

(assert (=> start!92320 true))

(declare-fun array_inv!24392 (array!66069) Bool)

(assert (=> start!92320 (array_inv!24392 a!3488)))

(declare-fun b!1048751 () Bool)

(declare-fun e!594947 () Bool)

(declare-fun e!594946 () Bool)

(assert (=> b!1048751 (= e!594947 e!594946)))

(declare-fun res!697988 () Bool)

(assert (=> b!1048751 (=> (not res!697988) (not e!594946))))

(assert (=> b!1048751 (= res!697988 (not (= lt!463266 i!1381)))))

(declare-fun lt!463267 () array!66069)

(declare-fun arrayScanForKey!0 (array!66069 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048751 (= lt!463266 (arrayScanForKey!0 lt!463267 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048752 () Bool)

(assert (=> b!1048752 (= e!594950 e!594947)))

(declare-fun res!697987 () Bool)

(assert (=> b!1048752 (=> (not res!697987) (not e!594947))))

(assert (=> b!1048752 (= res!697987 (arrayContainsKey!0 lt!463267 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048752 (= lt!463267 (array!66070 (store (arr!31770 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32307 a!3488)))))

(declare-fun b!1048753 () Bool)

(declare-fun res!697992 () Bool)

(assert (=> b!1048753 (=> (not res!697992) (not e!594950))))

(declare-datatypes ((List!22213 0))(
  ( (Nil!22210) (Cons!22209 (h!23418 (_ BitVec 64)) (t!31527 List!22213)) )
))
(declare-fun arrayNoDuplicates!0 (array!66069 (_ BitVec 32) List!22213) Bool)

(assert (=> b!1048753 (= res!697992 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22210))))

(declare-fun b!1048754 () Bool)

(declare-fun res!697986 () Bool)

(assert (=> b!1048754 (=> (not res!697986) (not e!594950))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048754 (= res!697986 (validKeyInArray!0 k!2747))))

(declare-fun b!1048755 () Bool)

(declare-fun e!594945 () Bool)

(assert (=> b!1048755 (= e!594945 e!594948)))

(declare-fun res!697990 () Bool)

(assert (=> b!1048755 (=> res!697990 e!594948)))

(assert (=> b!1048755 (= res!697990 (bvsle lt!463266 i!1381))))

(declare-fun b!1048756 () Bool)

(assert (=> b!1048756 (= e!594946 (not true))))

(assert (=> b!1048756 e!594945))

(declare-fun res!697989 () Bool)

(assert (=> b!1048756 (=> (not res!697989) (not e!594945))))

(assert (=> b!1048756 (= res!697989 (= (select (store (arr!31770 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463266) k!2747))))

(declare-fun b!1048757 () Bool)

(declare-fun res!697985 () Bool)

(assert (=> b!1048757 (=> (not res!697985) (not e!594950))))

(assert (=> b!1048757 (= res!697985 (= (select (arr!31770 a!3488) i!1381) k!2747))))

(assert (= (and start!92320 res!697991) b!1048753))

(assert (= (and b!1048753 res!697992) b!1048754))

(assert (= (and b!1048754 res!697986) b!1048757))

(assert (= (and b!1048757 res!697985) b!1048752))

(assert (= (and b!1048752 res!697987) b!1048751))

(assert (= (and b!1048751 res!697988) b!1048756))

(assert (= (and b!1048756 res!697989) b!1048755))

(assert (= (and b!1048755 (not res!697990)) b!1048750))

(declare-fun m!969771 () Bool)

(assert (=> b!1048756 m!969771))

(declare-fun m!969773 () Bool)

(assert (=> b!1048756 m!969773))

(declare-fun m!969775 () Bool)

(assert (=> b!1048753 m!969775))

(declare-fun m!969777 () Bool)

(assert (=> b!1048751 m!969777))

(declare-fun m!969779 () Bool)

(assert (=> b!1048752 m!969779))

(assert (=> b!1048752 m!969771))

(declare-fun m!969781 () Bool)

(assert (=> b!1048750 m!969781))

(declare-fun m!969783 () Bool)

(assert (=> b!1048754 m!969783))

(declare-fun m!969785 () Bool)

(assert (=> b!1048757 m!969785))

(declare-fun m!969787 () Bool)

(assert (=> start!92320 m!969787))

(push 1)

(assert (