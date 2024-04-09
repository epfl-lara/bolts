; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103152 () Bool)

(assert start!103152)

(declare-fun b!1238090 () Bool)

(declare-fun res!825942 () Bool)

(declare-fun e!701734 () Bool)

(assert (=> b!1238090 (=> (not res!825942) (not e!701734))))

(declare-datatypes ((List!27444 0))(
  ( (Nil!27441) (Cons!27440 (h!28649 (_ BitVec 64)) (t!40914 List!27444)) )
))
(declare-fun acc!846 () List!27444)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7359 (List!27444 (_ BitVec 64)) Bool)

(assert (=> b!1238090 (= res!825942 (contains!7359 acc!846 k!2925))))

(declare-fun b!1238091 () Bool)

(declare-fun e!701735 () Bool)

(assert (=> b!1238091 (= e!701734 (not e!701735))))

(declare-fun res!825949 () Bool)

(assert (=> b!1238091 (=> res!825949 e!701735)))

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1238091 (= res!825949 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun lt!561167 () List!27444)

(declare-fun subseq!596 (List!27444 List!27444) Bool)

(assert (=> b!1238091 (subseq!596 acc!846 lt!561167)))

(declare-datatypes ((Unit!41040 0))(
  ( (Unit!41041) )
))
(declare-fun lt!561169 () Unit!41040)

(declare-fun subseqTail!83 (List!27444 List!27444) Unit!41040)

(assert (=> b!1238091 (= lt!561169 (subseqTail!83 lt!561167 lt!561167))))

(assert (=> b!1238091 (subseq!596 lt!561167 lt!561167)))

(declare-fun lt!561166 () Unit!41040)

(declare-fun lemmaListSubSeqRefl!0 (List!27444) Unit!41040)

(assert (=> b!1238091 (= lt!561166 (lemmaListSubSeqRefl!0 lt!561167))))

(declare-datatypes ((array!79787 0))(
  ( (array!79788 (arr!38493 (Array (_ BitVec 32) (_ BitVec 64))) (size!39030 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79787)

(assert (=> b!1238091 (= lt!561167 (Cons!27440 (select (arr!38493 a!3835) from!3213) acc!846))))

(declare-fun b!1238092 () Bool)

(assert (=> b!1238092 (= e!701735 true)))

(declare-fun lt!561168 () Bool)

(assert (=> b!1238092 (= lt!561168 (contains!7359 lt!561167 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238093 () Bool)

(declare-fun res!825941 () Bool)

(assert (=> b!1238093 (=> (not res!825941) (not e!701734))))

(assert (=> b!1238093 (= res!825941 (not (contains!7359 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238094 () Bool)

(declare-fun res!825946 () Bool)

(assert (=> b!1238094 (=> (not res!825946) (not e!701734))))

(assert (=> b!1238094 (= res!825946 (not (= from!3213 (bvsub (size!39030 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238095 () Bool)

(declare-fun res!825943 () Bool)

(assert (=> b!1238095 (=> (not res!825943) (not e!701734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238095 (= res!825943 (validKeyInArray!0 (select (arr!38493 a!3835) from!3213)))))

(declare-fun res!825939 () Bool)

(assert (=> start!103152 (=> (not res!825939) (not e!701734))))

(assert (=> start!103152 (= res!825939 (and (bvslt (size!39030 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39030 a!3835))))))

(assert (=> start!103152 e!701734))

(declare-fun array_inv!29269 (array!79787) Bool)

(assert (=> start!103152 (array_inv!29269 a!3835)))

(assert (=> start!103152 true))

(declare-fun b!1238096 () Bool)

(declare-fun res!825945 () Bool)

(assert (=> b!1238096 (=> (not res!825945) (not e!701734))))

(assert (=> b!1238096 (= res!825945 (not (contains!7359 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238097 () Bool)

(declare-fun res!825940 () Bool)

(assert (=> b!1238097 (=> (not res!825940) (not e!701734))))

(declare-fun arrayNoDuplicates!0 (array!79787 (_ BitVec 32) List!27444) Bool)

(assert (=> b!1238097 (= res!825940 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238098 () Bool)

(declare-fun res!825944 () Bool)

(assert (=> b!1238098 (=> res!825944 e!701735)))

(declare-fun noDuplicate!1966 (List!27444) Bool)

(assert (=> b!1238098 (= res!825944 (not (noDuplicate!1966 lt!561167)))))

(declare-fun b!1238099 () Bool)

(declare-fun res!825947 () Bool)

(assert (=> b!1238099 (=> res!825947 e!701735)))

(assert (=> b!1238099 (= res!825947 (contains!7359 lt!561167 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238100 () Bool)

(declare-fun res!825948 () Bool)

(assert (=> b!1238100 (=> (not res!825948) (not e!701734))))

(assert (=> b!1238100 (= res!825948 (noDuplicate!1966 acc!846))))

(assert (= (and start!103152 res!825939) b!1238100))

(assert (= (and b!1238100 res!825948) b!1238096))

(assert (= (and b!1238096 res!825945) b!1238093))

(assert (= (and b!1238093 res!825941) b!1238097))

(assert (= (and b!1238097 res!825940) b!1238090))

(assert (= (and b!1238090 res!825942) b!1238094))

(assert (= (and b!1238094 res!825946) b!1238095))

(assert (= (and b!1238095 res!825943) b!1238091))

(assert (= (and b!1238091 (not res!825949)) b!1238098))

(assert (= (and b!1238098 (not res!825944)) b!1238099))

(assert (= (and b!1238099 (not res!825947)) b!1238092))

(declare-fun m!1141691 () Bool)

(assert (=> b!1238090 m!1141691))

(declare-fun m!1141693 () Bool)

(assert (=> b!1238093 m!1141693))

(declare-fun m!1141695 () Bool)

(assert (=> b!1238091 m!1141695))

(declare-fun m!1141697 () Bool)

(assert (=> b!1238091 m!1141697))

(declare-fun m!1141699 () Bool)

(assert (=> b!1238091 m!1141699))

(declare-fun m!1141701 () Bool)

(assert (=> b!1238091 m!1141701))

(declare-fun m!1141703 () Bool)

(assert (=> b!1238091 m!1141703))

(declare-fun m!1141705 () Bool)

(assert (=> b!1238100 m!1141705))

(declare-fun m!1141707 () Bool)

(assert (=> b!1238097 m!1141707))

(declare-fun m!1141709 () Bool)

(assert (=> b!1238092 m!1141709))

(declare-fun m!1141711 () Bool)

(assert (=> b!1238098 m!1141711))

(declare-fun m!1141713 () Bool)

(assert (=> start!103152 m!1141713))

(assert (=> b!1238095 m!1141701))

(assert (=> b!1238095 m!1141701))

(declare-fun m!1141715 () Bool)

(assert (=> b!1238095 m!1141715))

(declare-fun m!1141717 () Bool)

(assert (=> b!1238096 m!1141717))

(declare-fun m!1141719 () Bool)

(assert (=> b!1238099 m!1141719))

(push 1)

(assert (not start!103152))

(assert (not b!1238098))

(assert (not b!1238093))

(assert (not b!1238096))

(assert (not b!1238091))

(assert (not b!1238092))

(assert (not b!1238095))

(assert (not b!1238097))

(assert (not b!1238090))

(assert (not b!1238100))

(assert (not b!1238099))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

