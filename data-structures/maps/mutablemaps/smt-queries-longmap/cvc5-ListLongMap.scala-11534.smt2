; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134320 () Bool)

(assert start!134320)

(declare-fun b!1568217 () Bool)

(declare-datatypes ((array!104751 0))(
  ( (array!104752 (arr!50551 (Array (_ BitVec 32) (_ BitVec 64))) (size!51102 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104751)

(declare-datatypes ((List!36862 0))(
  ( (Nil!36859) (Cons!36858 (h!38306 (_ BitVec 64)) (t!51777 List!36862)) )
))
(declare-fun acc!619 () List!36862)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun e!874258 () Bool)

(declare-fun contains!10421 (List!36862 (_ BitVec 64)) Bool)

(assert (=> b!1568217 (= e!874258 (not (contains!10421 acc!619 (select (arr!50551 a!3481) from!2856))))))

(declare-fun b!1568218 () Bool)

(declare-fun e!874260 () Bool)

(assert (=> b!1568218 (= e!874260 false)))

(declare-fun lt!673090 () Bool)

(assert (=> b!1568218 (= lt!673090 e!874258)))

(declare-fun res!1072044 () Bool)

(assert (=> b!1568218 (=> res!1072044 e!874258)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568218 (= res!1072044 (not (validKeyInArray!0 (select (arr!50551 a!3481) from!2856))))))

(declare-fun res!1072043 () Bool)

(assert (=> start!134320 (=> (not res!1072043) (not e!874260))))

(assert (=> start!134320 (= res!1072043 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51102 a!3481)) (bvslt (size!51102 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134320 e!874260))

(assert (=> start!134320 true))

(declare-fun array_inv!39196 (array!104751) Bool)

(assert (=> start!134320 (array_inv!39196 a!3481)))

(declare-fun b!1568219 () Bool)

(declare-fun res!1072041 () Bool)

(assert (=> b!1568219 (=> (not res!1072041) (not e!874260))))

(assert (=> b!1568219 (= res!1072041 (not (contains!10421 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568220 () Bool)

(declare-fun res!1072046 () Bool)

(assert (=> b!1568220 (=> (not res!1072046) (not e!874260))))

(assert (=> b!1568220 (= res!1072046 (not (contains!10421 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568221 () Bool)

(declare-fun res!1072042 () Bool)

(assert (=> b!1568221 (=> (not res!1072042) (not e!874260))))

(assert (=> b!1568221 (= res!1072042 (bvslt from!2856 (size!51102 a!3481)))))

(declare-fun b!1568222 () Bool)

(declare-fun res!1072045 () Bool)

(assert (=> b!1568222 (=> (not res!1072045) (not e!874260))))

(declare-fun noDuplicate!2712 (List!36862) Bool)

(assert (=> b!1568222 (= res!1072045 (noDuplicate!2712 acc!619))))

(assert (= (and start!134320 res!1072043) b!1568222))

(assert (= (and b!1568222 res!1072045) b!1568219))

(assert (= (and b!1568219 res!1072041) b!1568220))

(assert (= (and b!1568220 res!1072046) b!1568221))

(assert (= (and b!1568221 res!1072042) b!1568218))

(assert (= (and b!1568218 (not res!1072044)) b!1568217))

(declare-fun m!1442953 () Bool)

(assert (=> b!1568218 m!1442953))

(assert (=> b!1568218 m!1442953))

(declare-fun m!1442955 () Bool)

(assert (=> b!1568218 m!1442955))

(declare-fun m!1442957 () Bool)

(assert (=> start!134320 m!1442957))

(declare-fun m!1442959 () Bool)

(assert (=> b!1568222 m!1442959))

(assert (=> b!1568217 m!1442953))

(assert (=> b!1568217 m!1442953))

(declare-fun m!1442961 () Bool)

(assert (=> b!1568217 m!1442961))

(declare-fun m!1442963 () Bool)

(assert (=> b!1568220 m!1442963))

(declare-fun m!1442965 () Bool)

(assert (=> b!1568219 m!1442965))

(push 1)

(assert (not b!1568218))

(assert (not b!1568222))

(assert (not b!1568217))

(assert (not b!1568219))

(assert (not start!134320))

(assert (not b!1568220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

