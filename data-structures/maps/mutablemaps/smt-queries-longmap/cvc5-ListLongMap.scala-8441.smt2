; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102818 () Bool)

(assert start!102818)

(declare-fun b!1235077 () Bool)

(declare-fun res!823352 () Bool)

(declare-fun e!700361 () Bool)

(assert (=> b!1235077 (=> (not res!823352) (not e!700361))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79604 0))(
  ( (array!79605 (arr!38406 (Array (_ BitVec 32) (_ BitVec 64))) (size!38943 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79604)

(assert (=> b!1235077 (= res!823352 (not (= from!3213 (bvsub (size!38943 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235078 () Bool)

(declare-fun res!823351 () Bool)

(assert (=> b!1235078 (=> (not res!823351) (not e!700361))))

(declare-datatypes ((List!27357 0))(
  ( (Nil!27354) (Cons!27353 (h!28562 (_ BitVec 64)) (t!40827 List!27357)) )
))
(declare-fun acc!846 () List!27357)

(declare-fun noDuplicate!1879 (List!27357) Bool)

(assert (=> b!1235078 (= res!823351 (noDuplicate!1879 acc!846))))

(declare-fun b!1235079 () Bool)

(declare-fun res!823355 () Bool)

(assert (=> b!1235079 (=> (not res!823355) (not e!700361))))

(declare-fun contains!7272 (List!27357 (_ BitVec 64)) Bool)

(assert (=> b!1235079 (= res!823355 (not (contains!7272 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235080 () Bool)

(declare-fun e!700363 () Bool)

(assert (=> b!1235080 (= e!700363 true)))

(declare-fun lt!560092 () Bool)

(declare-fun lt!560088 () List!27357)

(declare-fun arrayNoDuplicates!0 (array!79604 (_ BitVec 32) List!27357) Bool)

(assert (=> b!1235080 (= lt!560092 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560088))))

(declare-datatypes ((Unit!40856 0))(
  ( (Unit!40857) )
))
(declare-fun lt!560090 () Unit!40856)

(declare-fun noDuplicateSubseq!74 (List!27357 List!27357) Unit!40856)

(assert (=> b!1235080 (= lt!560090 (noDuplicateSubseq!74 acc!846 lt!560088))))

(declare-fun res!823356 () Bool)

(assert (=> start!102818 (=> (not res!823356) (not e!700361))))

(assert (=> start!102818 (= res!823356 (and (bvslt (size!38943 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38943 a!3835))))))

(assert (=> start!102818 e!700361))

(declare-fun array_inv!29182 (array!79604) Bool)

(assert (=> start!102818 (array_inv!29182 a!3835)))

(assert (=> start!102818 true))

(declare-fun b!1235081 () Bool)

(assert (=> b!1235081 (= e!700361 (not e!700363))))

(declare-fun res!823354 () Bool)

(assert (=> b!1235081 (=> res!823354 e!700363)))

(assert (=> b!1235081 (= res!823354 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!527 (List!27357 List!27357) Bool)

(assert (=> b!1235081 (subseq!527 acc!846 lt!560088)))

(declare-fun lt!560091 () Unit!40856)

(declare-fun subseqTail!20 (List!27357 List!27357) Unit!40856)

(assert (=> b!1235081 (= lt!560091 (subseqTail!20 lt!560088 lt!560088))))

(assert (=> b!1235081 (subseq!527 lt!560088 lt!560088)))

(declare-fun lt!560089 () Unit!40856)

(declare-fun lemmaListSubSeqRefl!0 (List!27357) Unit!40856)

(assert (=> b!1235081 (= lt!560089 (lemmaListSubSeqRefl!0 lt!560088))))

(assert (=> b!1235081 (= lt!560088 (Cons!27353 (select (arr!38406 a!3835) from!3213) acc!846))))

(declare-fun b!1235082 () Bool)

(declare-fun res!823359 () Bool)

(assert (=> b!1235082 (=> (not res!823359) (not e!700361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235082 (= res!823359 (validKeyInArray!0 (select (arr!38406 a!3835) from!3213)))))

(declare-fun b!1235083 () Bool)

(declare-fun res!823358 () Bool)

(assert (=> b!1235083 (=> (not res!823358) (not e!700361))))

(assert (=> b!1235083 (= res!823358 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235084 () Bool)

(declare-fun res!823350 () Bool)

(assert (=> b!1235084 (=> res!823350 e!700363)))

(assert (=> b!1235084 (= res!823350 (contains!7272 lt!560088 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235085 () Bool)

(declare-fun res!823361 () Bool)

(assert (=> b!1235085 (=> (not res!823361) (not e!700361))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235085 (= res!823361 (contains!7272 acc!846 k!2925))))

(declare-fun b!1235086 () Bool)

(declare-fun res!823360 () Bool)

(assert (=> b!1235086 (=> res!823360 e!700363)))

(assert (=> b!1235086 (= res!823360 (not (noDuplicate!1879 lt!560088)))))

(declare-fun b!1235087 () Bool)

(declare-fun res!823353 () Bool)

(assert (=> b!1235087 (=> (not res!823353) (not e!700361))))

(assert (=> b!1235087 (= res!823353 (not (contains!7272 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235088 () Bool)

(declare-fun res!823357 () Bool)

(assert (=> b!1235088 (=> res!823357 e!700363)))

(assert (=> b!1235088 (= res!823357 (contains!7272 lt!560088 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102818 res!823356) b!1235078))

(assert (= (and b!1235078 res!823351) b!1235079))

(assert (= (and b!1235079 res!823355) b!1235087))

(assert (= (and b!1235087 res!823353) b!1235083))

(assert (= (and b!1235083 res!823358) b!1235085))

(assert (= (and b!1235085 res!823361) b!1235077))

(assert (= (and b!1235077 res!823352) b!1235082))

(assert (= (and b!1235082 res!823359) b!1235081))

(assert (= (and b!1235081 (not res!823354)) b!1235086))

(assert (= (and b!1235086 (not res!823360)) b!1235084))

(assert (= (and b!1235084 (not res!823350)) b!1235088))

(assert (= (and b!1235088 (not res!823357)) b!1235080))

(declare-fun m!1139027 () Bool)

(assert (=> b!1235088 m!1139027))

(declare-fun m!1139029 () Bool)

(assert (=> b!1235084 m!1139029))

(declare-fun m!1139031 () Bool)

(assert (=> b!1235085 m!1139031))

(declare-fun m!1139033 () Bool)

(assert (=> b!1235080 m!1139033))

(declare-fun m!1139035 () Bool)

(assert (=> b!1235080 m!1139035))

(declare-fun m!1139037 () Bool)

(assert (=> b!1235081 m!1139037))

(declare-fun m!1139039 () Bool)

(assert (=> b!1235081 m!1139039))

(declare-fun m!1139041 () Bool)

(assert (=> b!1235081 m!1139041))

(declare-fun m!1139043 () Bool)

(assert (=> b!1235081 m!1139043))

(declare-fun m!1139045 () Bool)

(assert (=> b!1235081 m!1139045))

(declare-fun m!1139047 () Bool)

(assert (=> b!1235086 m!1139047))

(assert (=> b!1235082 m!1139041))

(assert (=> b!1235082 m!1139041))

(declare-fun m!1139049 () Bool)

(assert (=> b!1235082 m!1139049))

(declare-fun m!1139051 () Bool)

(assert (=> b!1235087 m!1139051))

(declare-fun m!1139053 () Bool)

(assert (=> b!1235079 m!1139053))

(declare-fun m!1139055 () Bool)

(assert (=> b!1235078 m!1139055))

(declare-fun m!1139057 () Bool)

(assert (=> start!102818 m!1139057))

(declare-fun m!1139059 () Bool)

(assert (=> b!1235083 m!1139059))

(push 1)

(assert (not b!1235083))

(assert (not b!1235079))

(assert (not b!1235080))

(assert (not b!1235087))

(assert (not b!1235088))

(assert (not start!102818))

(assert (not b!1235081))

(assert (not b!1235082))

(assert (not b!1235086))

(assert (not b!1235085))

(assert (not b!1235084))

(assert (not b!1235078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

