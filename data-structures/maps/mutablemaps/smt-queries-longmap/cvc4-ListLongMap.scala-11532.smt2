; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134312 () Bool)

(assert start!134312)

(declare-fun res!1072000 () Bool)

(declare-fun e!874232 () Bool)

(assert (=> start!134312 (=> (not res!1072000) (not e!874232))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104743 0))(
  ( (array!104744 (arr!50547 (Array (_ BitVec 32) (_ BitVec 64))) (size!51098 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104743)

(assert (=> start!134312 (= res!1072000 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51098 a!3481)) (bvslt (size!51098 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134312 e!874232))

(assert (=> start!134312 true))

(declare-fun array_inv!39192 (array!104743) Bool)

(assert (=> start!134312 (array_inv!39192 a!3481)))

(declare-fun b!1568175 () Bool)

(declare-fun res!1071999 () Bool)

(assert (=> b!1568175 (=> (not res!1071999) (not e!874232))))

(declare-datatypes ((List!36858 0))(
  ( (Nil!36855) (Cons!36854 (h!38302 (_ BitVec 64)) (t!51773 List!36858)) )
))
(declare-fun acc!619 () List!36858)

(declare-fun noDuplicate!2708 (List!36858) Bool)

(assert (=> b!1568175 (= res!1071999 (noDuplicate!2708 acc!619))))

(declare-fun b!1568176 () Bool)

(declare-fun res!1072001 () Bool)

(assert (=> b!1568176 (=> (not res!1072001) (not e!874232))))

(declare-fun contains!10417 (List!36858 (_ BitVec 64)) Bool)

(assert (=> b!1568176 (= res!1072001 (not (contains!10417 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568177 () Bool)

(assert (=> b!1568177 (= e!874232 false)))

(declare-fun lt!673078 () Bool)

(assert (=> b!1568177 (= lt!673078 (contains!10417 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134312 res!1072000) b!1568175))

(assert (= (and b!1568175 res!1071999) b!1568176))

(assert (= (and b!1568176 res!1072001) b!1568177))

(declare-fun m!1442921 () Bool)

(assert (=> start!134312 m!1442921))

(declare-fun m!1442923 () Bool)

(assert (=> b!1568175 m!1442923))

(declare-fun m!1442925 () Bool)

(assert (=> b!1568176 m!1442925))

(declare-fun m!1442927 () Bool)

(assert (=> b!1568177 m!1442927))

(push 1)

(assert (not b!1568175))

(assert (not b!1568177))

(assert (not b!1568176))

(assert (not start!134312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

