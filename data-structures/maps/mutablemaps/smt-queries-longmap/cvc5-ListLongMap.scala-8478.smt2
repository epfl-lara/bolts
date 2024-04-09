; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103308 () Bool)

(assert start!103308)

(declare-fun b!1239255 () Bool)

(declare-fun res!826841 () Bool)

(declare-fun e!702348 () Bool)

(assert (=> b!1239255 (=> (not res!826841) (not e!702348))))

(declare-datatypes ((List!27468 0))(
  ( (Nil!27465) (Cons!27464 (h!28673 (_ BitVec 64)) (t!40938 List!27468)) )
))
(declare-fun acc!846 () List!27468)

(declare-fun contains!7383 (List!27468 (_ BitVec 64)) Bool)

(assert (=> b!1239255 (= res!826841 (not (contains!7383 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239256 () Bool)

(declare-fun e!702349 () Bool)

(assert (=> b!1239256 (= e!702349 false)))

(declare-datatypes ((array!79841 0))(
  ( (array!79842 (arr!38517 (Array (_ BitVec 32) (_ BitVec 64))) (size!39054 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79841)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!561607 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79841 (_ BitVec 32) List!27468) Bool)

(assert (=> b!1239256 (= lt!561607 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1239257 () Bool)

(declare-datatypes ((Unit!41116 0))(
  ( (Unit!41117) )
))
(declare-fun e!702347 () Unit!41116)

(declare-fun lt!561605 () Unit!41116)

(assert (=> b!1239257 (= e!702347 lt!561605)))

(declare-fun lt!561606 () List!27468)

(assert (=> b!1239257 (= lt!561606 (Cons!27464 (select (arr!38517 a!3835) from!3213) acc!846))))

(declare-fun lt!561602 () Unit!41116)

(declare-fun lemmaListSubSeqRefl!0 (List!27468) Unit!41116)

(assert (=> b!1239257 (= lt!561602 (lemmaListSubSeqRefl!0 lt!561606))))

(declare-fun subseq!620 (List!27468 List!27468) Bool)

(assert (=> b!1239257 (subseq!620 lt!561606 lt!561606)))

(declare-fun lt!561604 () Unit!41116)

(declare-fun subseqTail!107 (List!27468 List!27468) Unit!41116)

(assert (=> b!1239257 (= lt!561604 (subseqTail!107 lt!561606 lt!561606))))

(assert (=> b!1239257 (subseq!620 acc!846 lt!561606)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79841 List!27468 List!27468 (_ BitVec 32)) Unit!41116)

(assert (=> b!1239257 (= lt!561605 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561606 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1239257 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun res!826842 () Bool)

(assert (=> start!103308 (=> (not res!826842) (not e!702348))))

(assert (=> start!103308 (= res!826842 (and (bvslt (size!39054 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39054 a!3835))))))

(assert (=> start!103308 e!702348))

(declare-fun array_inv!29293 (array!79841) Bool)

(assert (=> start!103308 (array_inv!29293 a!3835)))

(assert (=> start!103308 true))

(declare-fun b!1239258 () Bool)

(declare-fun res!826838 () Bool)

(assert (=> b!1239258 (=> (not res!826838) (not e!702348))))

(assert (=> b!1239258 (= res!826838 (not (= from!3213 (bvsub (size!39054 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239259 () Bool)

(declare-fun res!826840 () Bool)

(assert (=> b!1239259 (=> (not res!826840) (not e!702348))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1239259 (= res!826840 (contains!7383 acc!846 k!2925))))

(declare-fun b!1239260 () Bool)

(assert (=> b!1239260 (= e!702348 e!702349)))

(declare-fun res!826837 () Bool)

(assert (=> b!1239260 (=> (not res!826837) (not e!702349))))

(assert (=> b!1239260 (= res!826837 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39054 a!3835))))))

(declare-fun lt!561603 () Unit!41116)

(assert (=> b!1239260 (= lt!561603 e!702347)))

(declare-fun c!121072 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239260 (= c!121072 (validKeyInArray!0 (select (arr!38517 a!3835) from!3213)))))

(declare-fun b!1239261 () Bool)

(declare-fun Unit!41118 () Unit!41116)

(assert (=> b!1239261 (= e!702347 Unit!41118)))

(declare-fun b!1239262 () Bool)

(declare-fun res!826843 () Bool)

(assert (=> b!1239262 (=> (not res!826843) (not e!702348))))

(assert (=> b!1239262 (= res!826843 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239263 () Bool)

(declare-fun res!826836 () Bool)

(assert (=> b!1239263 (=> (not res!826836) (not e!702348))))

(assert (=> b!1239263 (= res!826836 (not (contains!7383 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239264 () Bool)

(declare-fun res!826839 () Bool)

(assert (=> b!1239264 (=> (not res!826839) (not e!702348))))

(declare-fun noDuplicate!1990 (List!27468) Bool)

(assert (=> b!1239264 (= res!826839 (noDuplicate!1990 acc!846))))

(assert (= (and start!103308 res!826842) b!1239264))

(assert (= (and b!1239264 res!826839) b!1239255))

(assert (= (and b!1239255 res!826841) b!1239263))

(assert (= (and b!1239263 res!826836) b!1239262))

(assert (= (and b!1239262 res!826843) b!1239259))

(assert (= (and b!1239259 res!826840) b!1239258))

(assert (= (and b!1239258 res!826838) b!1239260))

(assert (= (and b!1239260 c!121072) b!1239257))

(assert (= (and b!1239260 (not c!121072)) b!1239261))

(assert (= (and b!1239260 res!826837) b!1239256))

(declare-fun m!1142741 () Bool)

(assert (=> b!1239262 m!1142741))

(declare-fun m!1142743 () Bool)

(assert (=> b!1239257 m!1142743))

(declare-fun m!1142745 () Bool)

(assert (=> b!1239257 m!1142745))

(declare-fun m!1142747 () Bool)

(assert (=> b!1239257 m!1142747))

(declare-fun m!1142749 () Bool)

(assert (=> b!1239257 m!1142749))

(declare-fun m!1142751 () Bool)

(assert (=> b!1239257 m!1142751))

(declare-fun m!1142753 () Bool)

(assert (=> b!1239257 m!1142753))

(declare-fun m!1142755 () Bool)

(assert (=> b!1239257 m!1142755))

(declare-fun m!1142757 () Bool)

(assert (=> b!1239264 m!1142757))

(assert (=> b!1239256 m!1142749))

(assert (=> b!1239260 m!1142751))

(assert (=> b!1239260 m!1142751))

(declare-fun m!1142759 () Bool)

(assert (=> b!1239260 m!1142759))

(declare-fun m!1142761 () Bool)

(assert (=> start!103308 m!1142761))

(declare-fun m!1142763 () Bool)

(assert (=> b!1239263 m!1142763))

(declare-fun m!1142765 () Bool)

(assert (=> b!1239255 m!1142765))

(declare-fun m!1142767 () Bool)

(assert (=> b!1239259 m!1142767))

(push 1)

