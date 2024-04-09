; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103218 () Bool)

(assert start!103218)

(declare-fun b!1238539 () Bool)

(declare-fun res!826307 () Bool)

(declare-fun e!701996 () Bool)

(assert (=> b!1238539 (=> (not res!826307) (not e!701996))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79802 0))(
  ( (array!79803 (arr!38499 (Array (_ BitVec 32) (_ BitVec 64))) (size!39036 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79802)

(assert (=> b!1238539 (= res!826307 (not (= from!3213 (bvsub (size!39036 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238540 () Bool)

(declare-fun res!826311 () Bool)

(assert (=> b!1238540 (=> (not res!826311) (not e!701996))))

(declare-datatypes ((List!27450 0))(
  ( (Nil!27447) (Cons!27446 (h!28655 (_ BitVec 64)) (t!40920 List!27450)) )
))
(declare-fun acc!846 () List!27450)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7365 (List!27450 (_ BitVec 64)) Bool)

(assert (=> b!1238540 (= res!826311 (contains!7365 acc!846 k!2925))))

(declare-fun b!1238541 () Bool)

(declare-datatypes ((Unit!41058 0))(
  ( (Unit!41059) )
))
(declare-fun e!701995 () Unit!41058)

(declare-fun lt!561289 () Unit!41058)

(assert (=> b!1238541 (= e!701995 lt!561289)))

(declare-fun lt!561290 () List!27450)

(assert (=> b!1238541 (= lt!561290 (Cons!27446 (select (arr!38499 a!3835) from!3213) acc!846))))

(declare-fun lt!561288 () Unit!41058)

(declare-fun lemmaListSubSeqRefl!0 (List!27450) Unit!41058)

(assert (=> b!1238541 (= lt!561288 (lemmaListSubSeqRefl!0 lt!561290))))

(declare-fun subseq!602 (List!27450 List!27450) Bool)

(assert (=> b!1238541 (subseq!602 lt!561290 lt!561290)))

(declare-fun lt!561292 () Unit!41058)

(declare-fun subseqTail!89 (List!27450 List!27450) Unit!41058)

(assert (=> b!1238541 (= lt!561292 (subseqTail!89 lt!561290 lt!561290))))

(assert (=> b!1238541 (subseq!602 acc!846 lt!561290)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79802 List!27450 List!27450 (_ BitVec 32)) Unit!41058)

(assert (=> b!1238541 (= lt!561289 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561290 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79802 (_ BitVec 32) List!27450) Bool)

(assert (=> b!1238541 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238542 () Bool)

(declare-fun res!826310 () Bool)

(assert (=> b!1238542 (=> (not res!826310) (not e!701996))))

(assert (=> b!1238542 (= res!826310 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238543 () Bool)

(declare-fun res!826308 () Bool)

(assert (=> b!1238543 (=> (not res!826308) (not e!701996))))

(assert (=> b!1238543 (= res!826308 (not (contains!7365 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238544 () Bool)

(declare-fun Unit!41060 () Unit!41058)

(assert (=> b!1238544 (= e!701995 Unit!41060)))

(declare-fun b!1238545 () Bool)

(declare-fun res!826306 () Bool)

(assert (=> b!1238545 (=> (not res!826306) (not e!701996))))

(assert (=> b!1238545 (= res!826306 (not (contains!7365 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!826309 () Bool)

(assert (=> start!103218 (=> (not res!826309) (not e!701996))))

(assert (=> start!103218 (= res!826309 (and (bvslt (size!39036 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39036 a!3835))))))

(assert (=> start!103218 e!701996))

(declare-fun array_inv!29275 (array!79802) Bool)

(assert (=> start!103218 (array_inv!29275 a!3835)))

(assert (=> start!103218 true))

(declare-fun b!1238546 () Bool)

(declare-fun res!826312 () Bool)

(assert (=> b!1238546 (=> (not res!826312) (not e!701996))))

(declare-fun noDuplicate!1972 (List!27450) Bool)

(assert (=> b!1238546 (= res!826312 (noDuplicate!1972 acc!846))))

(declare-fun b!1238547 () Bool)

(assert (=> b!1238547 (= e!701996 false)))

(declare-fun lt!561291 () Unit!41058)

(assert (=> b!1238547 (= lt!561291 e!701995)))

(declare-fun c!120979 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238547 (= c!120979 (validKeyInArray!0 (select (arr!38499 a!3835) from!3213)))))

(assert (= (and start!103218 res!826309) b!1238546))

(assert (= (and b!1238546 res!826312) b!1238545))

(assert (= (and b!1238545 res!826306) b!1238543))

(assert (= (and b!1238543 res!826308) b!1238542))

(assert (= (and b!1238542 res!826310) b!1238540))

(assert (= (and b!1238540 res!826311) b!1238539))

(assert (= (and b!1238539 res!826307) b!1238547))

(assert (= (and b!1238547 c!120979) b!1238541))

(assert (= (and b!1238547 (not c!120979)) b!1238544))

(declare-fun m!1142081 () Bool)

(assert (=> b!1238545 m!1142081))

(declare-fun m!1142083 () Bool)

(assert (=> start!103218 m!1142083))

(declare-fun m!1142085 () Bool)

(assert (=> b!1238546 m!1142085))

(declare-fun m!1142087 () Bool)

(assert (=> b!1238542 m!1142087))

(declare-fun m!1142089 () Bool)

(assert (=> b!1238540 m!1142089))

(declare-fun m!1142091 () Bool)

(assert (=> b!1238547 m!1142091))

(assert (=> b!1238547 m!1142091))

(declare-fun m!1142093 () Bool)

(assert (=> b!1238547 m!1142093))

(declare-fun m!1142095 () Bool)

(assert (=> b!1238541 m!1142095))

(declare-fun m!1142097 () Bool)

(assert (=> b!1238541 m!1142097))

(declare-fun m!1142099 () Bool)

(assert (=> b!1238541 m!1142099))

(declare-fun m!1142101 () Bool)

(assert (=> b!1238541 m!1142101))

(assert (=> b!1238541 m!1142091))

(declare-fun m!1142103 () Bool)

(assert (=> b!1238541 m!1142103))

(declare-fun m!1142105 () Bool)

(assert (=> b!1238541 m!1142105))

(declare-fun m!1142107 () Bool)

(assert (=> b!1238543 m!1142107))

(push 1)

(assert (not b!1238545))

(assert (not b!1238543))

(assert (not b!1238541))

(assert (not b!1238547))

(assert (not start!103218))

(assert (not b!1238546))

(assert (not b!1238542))

(assert (not b!1238540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

