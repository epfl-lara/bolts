; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134282 () Bool)

(assert start!134282)

(declare-fun b!1567955 () Bool)

(declare-fun res!1071785 () Bool)

(declare-fun e!874113 () Bool)

(assert (=> b!1567955 (=> (not res!1071785) (not e!874113))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104713 0))(
  ( (array!104714 (arr!50532 (Array (_ BitVec 32) (_ BitVec 64))) (size!51083 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104713)

(assert (=> b!1567955 (= res!1071785 (bvslt from!2856 (size!51083 a!3481)))))

(declare-fun b!1567956 () Bool)

(declare-fun res!1071782 () Bool)

(assert (=> b!1567956 (=> (not res!1071782) (not e!874113))))

(declare-datatypes ((List!36843 0))(
  ( (Nil!36840) (Cons!36839 (h!38287 (_ BitVec 64)) (t!51758 List!36843)) )
))
(declare-fun acc!619 () List!36843)

(declare-fun contains!10402 (List!36843 (_ BitVec 64)) Bool)

(assert (=> b!1567956 (= res!1071782 (not (contains!10402 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1071783 () Bool)

(assert (=> start!134282 (=> (not res!1071783) (not e!874113))))

(assert (=> start!134282 (= res!1071783 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51083 a!3481)) (bvslt (size!51083 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134282 e!874113))

(assert (=> start!134282 true))

(declare-fun array_inv!39177 (array!104713) Bool)

(assert (=> start!134282 (array_inv!39177 a!3481)))

(declare-fun b!1567957 () Bool)

(declare-fun res!1071784 () Bool)

(assert (=> b!1567957 (=> (not res!1071784) (not e!874113))))

(declare-fun noDuplicate!2693 (List!36843) Bool)

(assert (=> b!1567957 (= res!1071784 (noDuplicate!2693 acc!619))))

(declare-fun b!1567958 () Bool)

(declare-fun e!874116 () Bool)

(declare-fun lt!673033 () Bool)

(assert (=> b!1567958 (= e!874116 (and (not lt!673033) (bvslt (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000)))))

(declare-fun b!1567959 () Bool)

(assert (=> b!1567959 (= e!874113 e!874116)))

(declare-fun res!1071779 () Bool)

(assert (=> b!1567959 (=> (not res!1071779) (not e!874116))))

(declare-fun e!874115 () Bool)

(assert (=> b!1567959 (= res!1071779 e!874115)))

(declare-fun res!1071781 () Bool)

(assert (=> b!1567959 (=> res!1071781 e!874115)))

(assert (=> b!1567959 (= res!1071781 (not lt!673033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567959 (= lt!673033 (validKeyInArray!0 (select (arr!50532 a!3481) from!2856)))))

(declare-fun b!1567960 () Bool)

(declare-fun res!1071780 () Bool)

(assert (=> b!1567960 (=> (not res!1071780) (not e!874113))))

(assert (=> b!1567960 (= res!1071780 (not (contains!10402 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567961 () Bool)

(assert (=> b!1567961 (= e!874115 (not (contains!10402 acc!619 (select (arr!50532 a!3481) from!2856))))))

(assert (= (and start!134282 res!1071783) b!1567957))

(assert (= (and b!1567957 res!1071784) b!1567960))

(assert (= (and b!1567960 res!1071780) b!1567956))

(assert (= (and b!1567956 res!1071782) b!1567955))

(assert (= (and b!1567955 res!1071785) b!1567959))

(assert (= (and b!1567959 (not res!1071781)) b!1567961))

(assert (= (and b!1567959 res!1071779) b!1567958))

(declare-fun m!1442741 () Bool)

(assert (=> b!1567960 m!1442741))

(declare-fun m!1442743 () Bool)

(assert (=> b!1567957 m!1442743))

(declare-fun m!1442745 () Bool)

(assert (=> b!1567956 m!1442745))

(declare-fun m!1442747 () Bool)

(assert (=> b!1567961 m!1442747))

(assert (=> b!1567961 m!1442747))

(declare-fun m!1442749 () Bool)

(assert (=> b!1567961 m!1442749))

(declare-fun m!1442751 () Bool)

(assert (=> start!134282 m!1442751))

(assert (=> b!1567959 m!1442747))

(assert (=> b!1567959 m!1442747))

(declare-fun m!1442753 () Bool)

(assert (=> b!1567959 m!1442753))

(push 1)

(assert (not b!1567957))

(assert (not b!1567961))

(assert (not start!134282))

(assert (not b!1567959))

(assert (not b!1567956))

