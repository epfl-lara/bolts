; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103156 () Bool)

(assert start!103156)

(declare-fun b!1238156 () Bool)

(declare-fun res!826014 () Bool)

(declare-fun e!701753 () Bool)

(assert (=> b!1238156 (=> (not res!826014) (not e!701753))))

(declare-datatypes ((array!79791 0))(
  ( (array!79792 (arr!38495 (Array (_ BitVec 32) (_ BitVec 64))) (size!39032 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79791)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238156 (= res!826014 (validKeyInArray!0 (select (arr!38495 a!3835) from!3213)))))

(declare-fun res!826010 () Bool)

(assert (=> start!103156 (=> (not res!826010) (not e!701753))))

(assert (=> start!103156 (= res!826010 (and (bvslt (size!39032 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39032 a!3835))))))

(assert (=> start!103156 e!701753))

(declare-fun array_inv!29271 (array!79791) Bool)

(assert (=> start!103156 (array_inv!29271 a!3835)))

(assert (=> start!103156 true))

(declare-fun b!1238157 () Bool)

(declare-fun res!826007 () Bool)

(assert (=> b!1238157 (=> (not res!826007) (not e!701753))))

(declare-datatypes ((List!27446 0))(
  ( (Nil!27443) (Cons!27442 (h!28651 (_ BitVec 64)) (t!40916 List!27446)) )
))
(declare-fun acc!846 () List!27446)

(declare-fun noDuplicate!1968 (List!27446) Bool)

(assert (=> b!1238157 (= res!826007 (noDuplicate!1968 acc!846))))

(declare-fun b!1238158 () Bool)

(declare-fun res!826009 () Bool)

(assert (=> b!1238158 (=> (not res!826009) (not e!701753))))

(declare-fun contains!7361 (List!27446 (_ BitVec 64)) Bool)

(assert (=> b!1238158 (= res!826009 (not (contains!7361 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238159 () Bool)

(declare-fun res!826008 () Bool)

(declare-fun e!701751 () Bool)

(assert (=> b!1238159 (=> res!826008 e!701751)))

(declare-fun lt!561191 () List!27446)

(assert (=> b!1238159 (= res!826008 (contains!7361 lt!561191 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238160 () Bool)

(assert (=> b!1238160 (= e!701753 (not e!701751))))

(declare-fun res!826012 () Bool)

(assert (=> b!1238160 (=> res!826012 e!701751)))

(assert (=> b!1238160 (= res!826012 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!598 (List!27446 List!27446) Bool)

(assert (=> b!1238160 (subseq!598 acc!846 lt!561191)))

(declare-datatypes ((Unit!41044 0))(
  ( (Unit!41045) )
))
(declare-fun lt!561193 () Unit!41044)

(declare-fun subseqTail!85 (List!27446 List!27446) Unit!41044)

(assert (=> b!1238160 (= lt!561193 (subseqTail!85 lt!561191 lt!561191))))

(assert (=> b!1238160 (subseq!598 lt!561191 lt!561191)))

(declare-fun lt!561190 () Unit!41044)

(declare-fun lemmaListSubSeqRefl!0 (List!27446) Unit!41044)

(assert (=> b!1238160 (= lt!561190 (lemmaListSubSeqRefl!0 lt!561191))))

(assert (=> b!1238160 (= lt!561191 (Cons!27442 (select (arr!38495 a!3835) from!3213) acc!846))))

(declare-fun b!1238161 () Bool)

(assert (=> b!1238161 (= e!701751 true)))

(declare-fun lt!561192 () Bool)

(assert (=> b!1238161 (= lt!561192 (contains!7361 lt!561191 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238162 () Bool)

(declare-fun res!826013 () Bool)

(assert (=> b!1238162 (=> (not res!826013) (not e!701753))))

(assert (=> b!1238162 (= res!826013 (not (contains!7361 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238163 () Bool)

(declare-fun res!826005 () Bool)

(assert (=> b!1238163 (=> (not res!826005) (not e!701753))))

(declare-fun arrayNoDuplicates!0 (array!79791 (_ BitVec 32) List!27446) Bool)

(assert (=> b!1238163 (= res!826005 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238164 () Bool)

(declare-fun res!826006 () Bool)

(assert (=> b!1238164 (=> (not res!826006) (not e!701753))))

(assert (=> b!1238164 (= res!826006 (not (= from!3213 (bvsub (size!39032 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238165 () Bool)

(declare-fun res!826015 () Bool)

(assert (=> b!1238165 (=> res!826015 e!701751)))

(assert (=> b!1238165 (= res!826015 (not (noDuplicate!1968 lt!561191)))))

(declare-fun b!1238166 () Bool)

(declare-fun res!826011 () Bool)

(assert (=> b!1238166 (=> (not res!826011) (not e!701753))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238166 (= res!826011 (contains!7361 acc!846 k!2925))))

(assert (= (and start!103156 res!826010) b!1238157))

(assert (= (and b!1238157 res!826007) b!1238158))

(assert (= (and b!1238158 res!826009) b!1238162))

(assert (= (and b!1238162 res!826013) b!1238163))

(assert (= (and b!1238163 res!826005) b!1238166))

(assert (= (and b!1238166 res!826011) b!1238164))

(assert (= (and b!1238164 res!826006) b!1238156))

(assert (= (and b!1238156 res!826014) b!1238160))

(assert (= (and b!1238160 (not res!826012)) b!1238165))

(assert (= (and b!1238165 (not res!826015)) b!1238159))

(assert (= (and b!1238159 (not res!826008)) b!1238161))

(declare-fun m!1141751 () Bool)

(assert (=> start!103156 m!1141751))

(declare-fun m!1141753 () Bool)

(assert (=> b!1238166 m!1141753))

(declare-fun m!1141755 () Bool)

(assert (=> b!1238160 m!1141755))

(declare-fun m!1141757 () Bool)

(assert (=> b!1238160 m!1141757))

(declare-fun m!1141759 () Bool)

(assert (=> b!1238160 m!1141759))

(declare-fun m!1141761 () Bool)

(assert (=> b!1238160 m!1141761))

(declare-fun m!1141763 () Bool)

(assert (=> b!1238160 m!1141763))

(assert (=> b!1238156 m!1141763))

(assert (=> b!1238156 m!1141763))

(declare-fun m!1141765 () Bool)

(assert (=> b!1238156 m!1141765))

(declare-fun m!1141767 () Bool)

(assert (=> b!1238157 m!1141767))

(declare-fun m!1141769 () Bool)

(assert (=> b!1238163 m!1141769))

(declare-fun m!1141771 () Bool)

(assert (=> b!1238161 m!1141771))

(declare-fun m!1141773 () Bool)

(assert (=> b!1238158 m!1141773))

(declare-fun m!1141775 () Bool)

(assert (=> b!1238165 m!1141775))

(declare-fun m!1141777 () Bool)

(assert (=> b!1238159 m!1141777))

(declare-fun m!1141779 () Bool)

(assert (=> b!1238162 m!1141779))

(push 1)

(assert (not b!1238165))

(assert (not b!1238161))

(assert (not b!1238156))

(assert (not b!1238157))

(assert (not b!1238159))

(assert (not start!103156))

(assert (not b!1238163))

(assert (not b!1238160))

(assert (not b!1238162))

(assert (not b!1238166))

(assert (not b!1238158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

