; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92388 () Bool)

(assert start!92388)

(declare-fun res!699054 () Bool)

(declare-fun e!595705 () Bool)

(assert (=> start!92388 (=> (not res!699054) (not e!595705))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66137 0))(
  ( (array!66138 (arr!31804 (Array (_ BitVec 32) (_ BitVec 64))) (size!32341 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66137)

(assert (=> start!92388 (= res!699054 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32341 a!3488)) (bvslt (size!32341 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92388 e!595705))

(assert (=> start!92388 true))

(declare-fun array_inv!24426 (array!66137) Bool)

(assert (=> start!92388 (array_inv!24426 a!3488)))

(declare-fun b!1049808 () Bool)

(declare-fun e!595708 () Bool)

(declare-fun e!595706 () Bool)

(assert (=> b!1049808 (= e!595708 e!595706)))

(declare-fun res!699048 () Bool)

(assert (=> b!1049808 (=> (not res!699048) (not e!595706))))

(declare-fun lt!463665 () (_ BitVec 32))

(assert (=> b!1049808 (= res!699048 (not (= lt!463665 i!1381)))))

(declare-fun lt!463666 () array!66137)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66137 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049808 (= lt!463665 (arrayScanForKey!0 lt!463666 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049809 () Bool)

(declare-fun e!595710 () Bool)

(assert (=> b!1049809 (= e!595706 (not e!595710))))

(declare-fun res!699044 () Bool)

(assert (=> b!1049809 (=> res!699044 e!595710)))

(assert (=> b!1049809 (= res!699044 (bvsle lt!463665 i!1381))))

(declare-fun e!595711 () Bool)

(assert (=> b!1049809 e!595711))

(declare-fun res!699046 () Bool)

(assert (=> b!1049809 (=> (not res!699046) (not e!595711))))

(assert (=> b!1049809 (= res!699046 (= (select (store (arr!31804 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463665) k!2747))))

(declare-fun b!1049810 () Bool)

(declare-fun res!699052 () Bool)

(declare-fun e!595712 () Bool)

(assert (=> b!1049810 (=> res!699052 e!595712)))

(declare-datatypes ((List!22247 0))(
  ( (Nil!22244) (Cons!22243 (h!23452 (_ BitVec 64)) (t!31561 List!22247)) )
))
(declare-fun noDuplicate!1524 (List!22247) Bool)

(assert (=> b!1049810 (= res!699052 (not (noDuplicate!1524 Nil!22244)))))

(declare-fun b!1049811 () Bool)

(declare-fun e!595707 () Bool)

(declare-fun arrayContainsKey!0 (array!66137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049811 (= e!595707 (arrayContainsKey!0 a!3488 k!2747 lt!463665))))

(declare-fun b!1049812 () Bool)

(assert (=> b!1049812 (= e!595705 e!595708)))

(declare-fun res!699043 () Bool)

(assert (=> b!1049812 (=> (not res!699043) (not e!595708))))

(assert (=> b!1049812 (= res!699043 (arrayContainsKey!0 lt!463666 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049812 (= lt!463666 (array!66138 (store (arr!31804 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32341 a!3488)))))

(declare-fun b!1049813 () Bool)

(assert (=> b!1049813 (= e!595710 e!595712)))

(declare-fun res!699053 () Bool)

(assert (=> b!1049813 (=> res!699053 e!595712)))

(assert (=> b!1049813 (= res!699053 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32341 a!3488)))))

(assert (=> b!1049813 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34337 0))(
  ( (Unit!34338) )
))
(declare-fun lt!463669 () Unit!34337)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66137 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34337)

(assert (=> b!1049813 (= lt!463669 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463665 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66137 (_ BitVec 32) List!22247) Bool)

(assert (=> b!1049813 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22244)))

(declare-fun lt!463667 () Unit!34337)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66137 (_ BitVec 32) (_ BitVec 32)) Unit!34337)

(assert (=> b!1049813 (= lt!463667 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049814 () Bool)

(declare-fun res!699045 () Bool)

(assert (=> b!1049814 (=> res!699045 e!595712)))

(declare-fun contains!6139 (List!22247 (_ BitVec 64)) Bool)

(assert (=> b!1049814 (= res!699045 (contains!6139 Nil!22244 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049815 () Bool)

(declare-fun res!699047 () Bool)

(assert (=> b!1049815 (=> (not res!699047) (not e!595705))))

(assert (=> b!1049815 (= res!699047 (= (select (arr!31804 a!3488) i!1381) k!2747))))

(declare-fun b!1049816 () Bool)

(declare-fun res!699051 () Bool)

(assert (=> b!1049816 (=> (not res!699051) (not e!595705))))

(assert (=> b!1049816 (= res!699051 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22244))))

(declare-fun b!1049817 () Bool)

(assert (=> b!1049817 (= e!595711 e!595707)))

(declare-fun res!699050 () Bool)

(assert (=> b!1049817 (=> res!699050 e!595707)))

(assert (=> b!1049817 (= res!699050 (bvsle lt!463665 i!1381))))

(declare-fun b!1049818 () Bool)

(declare-fun res!699049 () Bool)

(assert (=> b!1049818 (=> (not res!699049) (not e!595705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049818 (= res!699049 (validKeyInArray!0 k!2747))))

(declare-fun b!1049819 () Bool)

(assert (=> b!1049819 (= e!595712 true)))

(declare-fun lt!463668 () Bool)

(assert (=> b!1049819 (= lt!463668 (contains!6139 Nil!22244 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92388 res!699054) b!1049816))

(assert (= (and b!1049816 res!699051) b!1049818))

(assert (= (and b!1049818 res!699049) b!1049815))

(assert (= (and b!1049815 res!699047) b!1049812))

(assert (= (and b!1049812 res!699043) b!1049808))

(assert (= (and b!1049808 res!699048) b!1049809))

(assert (= (and b!1049809 res!699046) b!1049817))

(assert (= (and b!1049817 (not res!699050)) b!1049811))

(assert (= (and b!1049809 (not res!699044)) b!1049813))

(assert (= (and b!1049813 (not res!699053)) b!1049810))

(assert (= (and b!1049810 (not res!699052)) b!1049814))

(assert (= (and b!1049814 (not res!699045)) b!1049819))

(declare-fun m!970665 () Bool)

(assert (=> b!1049808 m!970665))

(declare-fun m!970667 () Bool)

(assert (=> b!1049813 m!970667))

(declare-fun m!970669 () Bool)

(assert (=> b!1049813 m!970669))

(declare-fun m!970671 () Bool)

(assert (=> b!1049813 m!970671))

(declare-fun m!970673 () Bool)

(assert (=> b!1049813 m!970673))

(declare-fun m!970675 () Bool)

(assert (=> b!1049816 m!970675))

(declare-fun m!970677 () Bool)

(assert (=> b!1049815 m!970677))

(declare-fun m!970679 () Bool)

(assert (=> b!1049812 m!970679))

(declare-fun m!970681 () Bool)

(assert (=> b!1049812 m!970681))

(declare-fun m!970683 () Bool)

(assert (=> b!1049818 m!970683))

(declare-fun m!970685 () Bool)

(assert (=> b!1049819 m!970685))

(declare-fun m!970687 () Bool)

(assert (=> b!1049814 m!970687))

(declare-fun m!970689 () Bool)

(assert (=> b!1049811 m!970689))

(declare-fun m!970691 () Bool)

(assert (=> start!92388 m!970691))

(assert (=> b!1049809 m!970681))

(declare-fun m!970693 () Bool)

(assert (=> b!1049809 m!970693))

(declare-fun m!970695 () Bool)

(assert (=> b!1049810 m!970695))

(push 1)

