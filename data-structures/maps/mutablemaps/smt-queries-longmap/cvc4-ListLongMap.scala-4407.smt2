; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60808 () Bool)

(assert start!60808)

(declare-fun b!681945 () Bool)

(declare-fun res!448173 () Bool)

(declare-fun e!388546 () Bool)

(assert (=> b!681945 (=> (not res!448173) (not e!388546))))

(declare-datatypes ((List!13029 0))(
  ( (Nil!13026) (Cons!13025 (h!14070 (_ BitVec 64)) (t!19277 List!13029)) )
))
(declare-fun acc!681 () List!13029)

(declare-fun contains!3572 (List!13029 (_ BitVec 64)) Bool)

(assert (=> b!681945 (= res!448173 (not (contains!3572 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681946 () Bool)

(declare-fun e!388543 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!681946 (= e!388543 (contains!3572 acc!681 k!2843))))

(declare-datatypes ((array!39511 0))(
  ( (array!39512 (arr!18935 (Array (_ BitVec 32) (_ BitVec 64))) (size!19299 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39511)

(declare-fun b!681947 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39511 (_ BitVec 32) List!13029) Bool)

(assert (=> b!681947 (= e!388546 (not (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))))

(declare-datatypes ((Unit!23912 0))(
  ( (Unit!23913) )
))
(declare-fun lt!313388 () Unit!23912)

(declare-fun e!388545 () Unit!23912)

(assert (=> b!681947 (= lt!313388 e!388545)))

(declare-fun c!77257 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681947 (= c!77257 (validKeyInArray!0 (select (arr!18935 a!3626) from!3004)))))

(declare-fun lt!313389 () Unit!23912)

(declare-fun e!388542 () Unit!23912)

(assert (=> b!681947 (= lt!313389 e!388542)))

(declare-fun c!77258 () Bool)

(declare-fun arrayContainsKey!0 (array!39511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681947 (= c!77258 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!681947 (arrayContainsKey!0 (array!39512 (store (arr!18935 a!3626) i!1382 k!2843) (size!19299 a!3626)) k!2843 from!3004)))

(declare-fun b!681948 () Bool)

(declare-fun res!448168 () Bool)

(assert (=> b!681948 (=> (not res!448168) (not e!388546))))

(assert (=> b!681948 (= res!448168 (not (contains!3572 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681949 () Bool)

(declare-fun res!448176 () Bool)

(assert (=> b!681949 (=> (not res!448176) (not e!388546))))

(assert (=> b!681949 (= res!448176 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19299 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!681950 () Bool)

(declare-fun res!448165 () Bool)

(assert (=> b!681950 (=> (not res!448165) (not e!388546))))

(assert (=> b!681950 (= res!448165 (validKeyInArray!0 k!2843))))

(declare-fun b!681951 () Bool)

(declare-fun lt!313391 () Unit!23912)

(assert (=> b!681951 (= e!388545 lt!313391)))

(declare-fun lt!313392 () Unit!23912)

(declare-fun lemmaListSubSeqRefl!0 (List!13029) Unit!23912)

(assert (=> b!681951 (= lt!313392 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!157 (List!13029 List!13029) Bool)

(assert (=> b!681951 (subseq!157 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39511 List!13029 List!13029 (_ BitVec 32)) Unit!23912)

(declare-fun $colon$colon!321 (List!13029 (_ BitVec 64)) List!13029)

(assert (=> b!681951 (= lt!313391 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!321 acc!681 (select (arr!18935 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681951 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!681952 () Bool)

(declare-fun Unit!23914 () Unit!23912)

(assert (=> b!681952 (= e!388542 Unit!23914)))

(declare-fun lt!313390 () Unit!23912)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39511 (_ BitVec 64) (_ BitVec 32)) Unit!23912)

(assert (=> b!681952 (= lt!313390 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!681952 false))

(declare-fun res!448178 () Bool)

(assert (=> start!60808 (=> (not res!448178) (not e!388546))))

(assert (=> start!60808 (= res!448178 (and (bvslt (size!19299 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19299 a!3626))))))

(assert (=> start!60808 e!388546))

(assert (=> start!60808 true))

(declare-fun array_inv!14709 (array!39511) Bool)

(assert (=> start!60808 (array_inv!14709 a!3626)))

(declare-fun b!681953 () Bool)

(declare-fun res!448174 () Bool)

(assert (=> b!681953 (=> (not res!448174) (not e!388546))))

(declare-fun e!388540 () Bool)

(assert (=> b!681953 (= res!448174 e!388540)))

(declare-fun res!448177 () Bool)

(assert (=> b!681953 (=> res!448177 e!388540)))

(assert (=> b!681953 (= res!448177 e!388543)))

(declare-fun res!448169 () Bool)

(assert (=> b!681953 (=> (not res!448169) (not e!388543))))

(assert (=> b!681953 (= res!448169 (bvsgt from!3004 i!1382))))

(declare-fun b!681954 () Bool)

(declare-fun e!388541 () Bool)

(assert (=> b!681954 (= e!388541 (not (contains!3572 acc!681 k!2843)))))

(declare-fun b!681955 () Bool)

(declare-fun res!448170 () Bool)

(assert (=> b!681955 (=> (not res!448170) (not e!388546))))

(declare-fun noDuplicate!819 (List!13029) Bool)

(assert (=> b!681955 (= res!448170 (noDuplicate!819 acc!681))))

(declare-fun b!681956 () Bool)

(declare-fun Unit!23915 () Unit!23912)

(assert (=> b!681956 (= e!388545 Unit!23915)))

(declare-fun b!681957 () Bool)

(declare-fun res!448171 () Bool)

(assert (=> b!681957 (=> (not res!448171) (not e!388546))))

(assert (=> b!681957 (= res!448171 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19299 a!3626))))))

(declare-fun b!681958 () Bool)

(declare-fun res!448172 () Bool)

(assert (=> b!681958 (=> (not res!448172) (not e!388546))))

(assert (=> b!681958 (= res!448172 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681959 () Bool)

(declare-fun res!448166 () Bool)

(assert (=> b!681959 (=> (not res!448166) (not e!388546))))

(assert (=> b!681959 (= res!448166 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681960 () Bool)

(declare-fun Unit!23916 () Unit!23912)

(assert (=> b!681960 (= e!388542 Unit!23916)))

(declare-fun b!681961 () Bool)

(assert (=> b!681961 (= e!388540 e!388541)))

(declare-fun res!448175 () Bool)

(assert (=> b!681961 (=> (not res!448175) (not e!388541))))

(assert (=> b!681961 (= res!448175 (bvsle from!3004 i!1382))))

(declare-fun b!681962 () Bool)

(declare-fun res!448167 () Bool)

(assert (=> b!681962 (=> (not res!448167) (not e!388546))))

(assert (=> b!681962 (= res!448167 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13026))))

(assert (= (and start!60808 res!448178) b!681955))

(assert (= (and b!681955 res!448170) b!681948))

(assert (= (and b!681948 res!448168) b!681945))

(assert (= (and b!681945 res!448173) b!681953))

(assert (= (and b!681953 res!448169) b!681946))

(assert (= (and b!681953 (not res!448177)) b!681961))

(assert (= (and b!681961 res!448175) b!681954))

(assert (= (and b!681953 res!448174) b!681962))

(assert (= (and b!681962 res!448167) b!681959))

(assert (= (and b!681959 res!448166) b!681957))

(assert (= (and b!681957 res!448171) b!681950))

(assert (= (and b!681950 res!448165) b!681958))

(assert (= (and b!681958 res!448172) b!681949))

(assert (= (and b!681949 res!448176) b!681947))

(assert (= (and b!681947 c!77258) b!681952))

(assert (= (and b!681947 (not c!77258)) b!681960))

(assert (= (and b!681947 c!77257) b!681951))

(assert (= (and b!681947 (not c!77257)) b!681956))

(declare-fun m!646763 () Bool)

(assert (=> b!681962 m!646763))

(declare-fun m!646765 () Bool)

(assert (=> start!60808 m!646765))

(declare-fun m!646767 () Bool)

(assert (=> b!681947 m!646767))

(declare-fun m!646769 () Bool)

(assert (=> b!681947 m!646769))

(declare-fun m!646771 () Bool)

(assert (=> b!681947 m!646771))

(declare-fun m!646773 () Bool)

(assert (=> b!681947 m!646773))

(assert (=> b!681947 m!646769))

(declare-fun m!646775 () Bool)

(assert (=> b!681947 m!646775))

(declare-fun m!646777 () Bool)

(assert (=> b!681947 m!646777))

(declare-fun m!646779 () Bool)

(assert (=> b!681946 m!646779))

(declare-fun m!646781 () Bool)

(assert (=> b!681952 m!646781))

(declare-fun m!646783 () Bool)

(assert (=> b!681945 m!646783))

(declare-fun m!646785 () Bool)

(assert (=> b!681959 m!646785))

(declare-fun m!646787 () Bool)

(assert (=> b!681950 m!646787))

(declare-fun m!646789 () Bool)

(assert (=> b!681948 m!646789))

(declare-fun m!646791 () Bool)

(assert (=> b!681958 m!646791))

(declare-fun m!646793 () Bool)

(assert (=> b!681955 m!646793))

(assert (=> b!681954 m!646779))

(assert (=> b!681951 m!646767))

(assert (=> b!681951 m!646769))

(declare-fun m!646795 () Bool)

(assert (=> b!681951 m!646795))

(declare-fun m!646797 () Bool)

(assert (=> b!681951 m!646797))

(assert (=> b!681951 m!646769))

(assert (=> b!681951 m!646795))

(declare-fun m!646799 () Bool)

(assert (=> b!681951 m!646799))

(declare-fun m!646801 () Bool)

(assert (=> b!681951 m!646801))

(push 1)

(assert (not b!681948))

(assert (not b!681947))

(assert (not b!681952))

(assert (not b!681945))

(assert (not start!60808))

(assert (not b!681955))

(assert (not b!681954))

(assert (not b!681951))

(assert (not b!681950))

(assert (not b!681962))

(assert (not b!681946))

(assert (not b!681959))

(assert (not b!681958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93937 () Bool)

(declare-fun lt!313408 () Bool)

(declare-fun content!281 (List!13029) (Set (_ BitVec 64)))

(assert (=> d!93937 (= lt!313408 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!281 acc!681)))))

(declare-fun e!388572 () Bool)

(assert (=> d!93937 (= lt!313408 e!388572)))

(declare-fun res!448203 () Bool)

(assert (=> d!93937 (=> (not res!448203) (not e!388572))))

(assert (=> d!93937 (= res!448203 (is-Cons!13025 acc!681))))

(assert (=> d!93937 (= (contains!3572 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313408)))

(declare-fun b!681987 () Bool)

(declare-fun e!388571 () Bool)

(assert (=> b!681987 (= e!388572 e!388571)))

(declare-fun res!448204 () Bool)

(assert (=> b!681987 (=> res!448204 e!388571)))

(assert (=> b!681987 (= res!448204 (= (h!14070 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681988 () Bool)

(assert (=> b!681988 (= e!388571 (contains!3572 (t!19277 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93937 res!448203) b!681987))

(assert (= (and b!681987 (not res!448204)) b!681988))

(declare-fun m!646823 () Bool)

(assert (=> d!93937 m!646823))

(declare-fun m!646825 () Bool)

(assert (=> d!93937 m!646825))

(declare-fun m!646827 () Bool)

(assert (=> b!681988 m!646827))

(assert (=> b!681948 d!93937))

(declare-fun d!93951 () Bool)

(declare-fun res!448221 () Bool)

(declare-fun e!388593 () Bool)

(assert (=> d!93951 (=> res!448221 e!388593)))

(assert (=> d!93951 (= res!448221 (= (select (arr!18935 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93951 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!388593)))

(declare-fun b!682013 () Bool)

(declare-fun e!388594 () Bool)

(assert (=> b!682013 (= e!388593 e!388594)))

(declare-fun res!448222 () Bool)

(assert (=> b!682013 (=> (not res!448222) (not e!388594))))

(assert (=> b!682013 (= res!448222 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19299 a!3626)))))

(declare-fun b!682014 () Bool)

(assert (=> b!682014 (= e!388594 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93951 (not res!448221)) b!682013))

(assert (= (and b!682013 res!448222) b!682014))

(declare-fun m!646829 () Bool)

(assert (=> d!93951 m!646829))

(declare-fun m!646831 () Bool)

(assert (=> b!682014 m!646831))

(assert (=> b!681958 d!93951))

(declare-fun e!388637 () Bool)

(declare-fun b!682063 () Bool)

(assert (=> b!682063 (= e!388637 (contains!3572 acc!681 (select (arr!18935 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!682064 () Bool)

(declare-fun e!388639 () Bool)

(declare-fun call!33997 () Bool)

(assert (=> b!682064 (= e!388639 call!33997)))

(declare-fun bm!33994 () Bool)

(declare-fun c!77269 () Bool)

(assert (=> bm!33994 (= call!33997 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77269 (Cons!13025 (select (arr!18935 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!682065 () Bool)

(assert (=> b!682065 (= e!388639 call!33997)))

(declare-fun d!93953 () Bool)

(declare-fun res!448260 () Bool)

(declare-fun e!388640 () Bool)

(assert (=> d!93953 (=> res!448260 e!388640)))

(assert (=> d!93953 (= res!448260 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19299 a!3626)))))

(assert (=> d!93953 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!388640)))

(declare-fun b!682066 () Bool)

(declare-fun e!388638 () Bool)

(assert (=> b!682066 (= e!388638 e!388639)))

(assert (=> b!682066 (= c!77269 (validKeyInArray!0 (select (arr!18935 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!682067 () Bool)

(assert (=> b!682067 (= e!388640 e!388638)))

(declare-fun res!448259 () Bool)

(assert (=> b!682067 (=> (not res!448259) (not e!388638))))

(assert (=> b!682067 (= res!448259 (not e!388637))))

(declare-fun res!448261 () Bool)

(assert (=> b!682067 (=> (not res!448261) (not e!388637))))

(assert (=> b!682067 (= res!448261 (validKeyInArray!0 (select (arr!18935 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!93953 (not res!448260)) b!682067))

(assert (= (and b!682067 res!448261) b!682063))

(assert (= (and b!682067 res!448259) b!682066))

(assert (= (and b!682066 c!77269) b!682064))

(assert (= (and b!682066 (not c!77269)) b!682065))

(assert (= (or b!682064 b!682065) bm!33994))

(declare-fun m!646877 () Bool)

(assert (=> b!682063 m!646877))

(assert (=> b!682063 m!646877))

(declare-fun m!646879 () Bool)

(assert (=> b!682063 m!646879))

(assert (=> bm!33994 m!646877))

(declare-fun m!646881 () Bool)

(assert (=> bm!33994 m!646881))

(assert (=> b!682066 m!646877))

(assert (=> b!682066 m!646877))

(declare-fun m!646883 () Bool)

(assert (=> b!682066 m!646883))

(assert (=> b!682067 m!646877))

(assert (=> b!682067 m!646877))

(assert (=> b!682067 m!646883))

(assert (=> b!681947 d!93953))

(declare-fun d!93983 () Bool)

(assert (=> d!93983 (= (validKeyInArray!0 (select (arr!18935 a!3626) from!3004)) (and (not (= (select (arr!18935 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18935 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681947 d!93983))

(declare-fun d!93985 () Bool)

(declare-fun res!448270 () Bool)

(declare-fun e!388649 () Bool)

(assert (=> d!93985 (=> res!448270 e!388649)))

(assert (=> d!93985 (= res!448270 (= (select (arr!18935 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!93985 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!388649)))

(declare-fun b!682076 () Bool)

(declare-fun e!388650 () Bool)

(assert (=> b!682076 (= e!388649 e!388650)))

(declare-fun res!448271 () Bool)

(assert (=> b!682076 (=> (not res!448271) (not e!388650))))

(assert (=> b!682076 (= res!448271 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19299 a!3626)))))

(declare-fun b!682077 () Bool)

(assert (=> b!682077 (= e!388650 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93985 (not res!448270)) b!682076))

(assert (= (and b!682076 res!448271) b!682077))

(assert (=> d!93985 m!646877))

(declare-fun m!646885 () Bool)

(assert (=> b!682077 m!646885))

(assert (=> b!681947 d!93985))

(declare-fun d!93987 () Bool)

(declare-fun res!448280 () Bool)

(declare-fun e!388659 () Bool)

(assert (=> d!93987 (=> res!448280 e!388659)))

(assert (=> d!93987 (= res!448280 (= (select (arr!18935 (array!39512 (store (arr!18935 a!3626) i!1382 k!2843) (size!19299 a!3626))) from!3004) k!2843))))

(assert (=> d!93987 (= (arrayContainsKey!0 (array!39512 (store (arr!18935 a!3626) i!1382 k!2843) (size!19299 a!3626)) k!2843 from!3004) e!388659)))

(declare-fun b!682086 () Bool)

(declare-fun e!388660 () Bool)

(assert (=> b!682086 (= e!388659 e!388660)))

(declare-fun res!448281 () Bool)

(assert (=> b!682086 (=> (not res!448281) (not e!388660))))

(assert (=> b!682086 (= res!448281 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19299 (array!39512 (store (arr!18935 a!3626) i!1382 k!2843) (size!19299 a!3626)))))))

(declare-fun b!682087 () Bool)

(assert (=> b!682087 (= e!388660 (arrayContainsKey!0 (array!39512 (store (arr!18935 a!3626) i!1382 k!2843) (size!19299 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93987 (not res!448280)) b!682086))

(assert (= (and b!682086 res!448281) b!682087))

(declare-fun m!646891 () Bool)

(assert (=> d!93987 m!646891))

(declare-fun m!646893 () Bool)

(assert (=> b!682087 m!646893))

(assert (=> b!681947 d!93987))

(declare-fun d!93991 () Bool)

(declare-fun lt!313412 () Bool)

(assert (=> d!93991 (= lt!313412 (member k!2843 (content!281 acc!681)))))

(declare-fun e!388662 () Bool)

(assert (=> d!93991 (= lt!313412 e!388662)))

(declare-fun res!448282 () Bool)

(assert (=> d!93991 (=> (not res!448282) (not e!388662))))

(assert (=> d!93991 (= res!448282 (is-Cons!13025 acc!681))))

(assert (=> d!93991 (= (contains!3572 acc!681 k!2843) lt!313412)))

(declare-fun b!682088 () Bool)

(declare-fun e!388661 () Bool)

(assert (=> b!682088 (= e!388662 e!388661)))

(declare-fun res!448283 () Bool)

(assert (=> b!682088 (=> res!448283 e!388661)))

(assert (=> b!682088 (= res!448283 (= (h!14070 acc!681) k!2843))))

(declare-fun b!682089 () Bool)

(assert (=> b!682089 (= e!388661 (contains!3572 (t!19277 acc!681) k!2843))))

(assert (= (and d!93991 res!448282) b!682088))

(assert (= (and b!682088 (not res!448283)) b!682089))

(assert (=> d!93991 m!646823))

(declare-fun m!646895 () Bool)

(assert (=> d!93991 m!646895))

(declare-fun m!646897 () Bool)

(assert (=> b!682089 m!646897))

(assert (=> b!681946 d!93991))

(declare-fun d!93993 () Bool)

(declare-fun lt!313413 () Bool)

(assert (=> d!93993 (= lt!313413 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!281 acc!681)))))

(declare-fun e!388664 () Bool)

(assert (=> d!93993 (= lt!313413 e!388664)))

(declare-fun res!448284 () Bool)

(assert (=> d!93993 (=> (not res!448284) (not e!388664))))

(assert (=> d!93993 (= res!448284 (is-Cons!13025 acc!681))))

(assert (=> d!93993 (= (contains!3572 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313413)))

(declare-fun b!682090 () Bool)

(declare-fun e!388663 () Bool)

(assert (=> b!682090 (= e!388664 e!388663)))

(declare-fun res!448285 () Bool)

(assert (=> b!682090 (=> res!448285 e!388663)))

(assert (=> b!682090 (= res!448285 (= (h!14070 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!682091 () Bool)

(assert (=> b!682091 (= e!388663 (contains!3572 (t!19277 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93993 res!448284) b!682090))

(assert (= (and b!682090 (not res!448285)) b!682091))

(assert (=> d!93993 m!646823))

(declare-fun m!646899 () Bool)

(assert (=> d!93993 m!646899))

(declare-fun m!646901 () Bool)

(assert (=> b!682091 m!646901))

(assert (=> b!681945 d!93993))

(declare-fun d!93995 () Bool)

(declare-fun res!448296 () Bool)

(declare-fun e!388675 () Bool)

(assert (=> d!93995 (=> res!448296 e!388675)))

(assert (=> d!93995 (= res!448296 (is-Nil!13026 acc!681))))

(assert (=> d!93995 (= (noDuplicate!819 acc!681) e!388675)))

(declare-fun b!682102 () Bool)

(declare-fun e!388676 () Bool)

(assert (=> b!682102 (= e!388675 e!388676)))

(declare-fun res!448297 () Bool)

(assert (=> b!682102 (=> (not res!448297) (not e!388676))))

(assert (=> b!682102 (= res!448297 (not (contains!3572 (t!19277 acc!681) (h!14070 acc!681))))))

(declare-fun b!682103 () Bool)

(assert (=> b!682103 (= e!388676 (noDuplicate!819 (t!19277 acc!681)))))

(assert (= (and d!93995 (not res!448296)) b!682102))

(assert (= (and b!682102 res!448297) b!682103))

(declare-fun m!646915 () Bool)

(assert (=> b!682102 m!646915))

(declare-fun m!646917 () Bool)

(assert (=> b!682103 m!646917))

(assert (=> b!681955 d!93995))

(assert (=> b!681954 d!93991))

(declare-fun d!94005 () Bool)

(assert (=> d!94005 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313427 () Unit!23912)

(declare-fun choose!13 (array!39511 (_ BitVec 64) (_ BitVec 32)) Unit!23912)

(assert (=> d!94005 (= lt!313427 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94005 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94005 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!313427)))

(declare-fun bs!20018 () Bool)

(assert (= bs!20018 d!94005))

(assert (=> bs!20018 m!646791))

(declare-fun m!646933 () Bool)

(assert (=> bs!20018 m!646933))

(assert (=> b!681952 d!94005))

(declare-fun d!94013 () Bool)

(assert (=> d!94013 (= (array_inv!14709 a!3626) (bvsge (size!19299 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60808 d!94013))

(declare-fun b!682116 () Bool)

(declare-fun e!388689 () Bool)

(assert (=> b!682116 (= e!388689 (contains!3572 Nil!13026 (select (arr!18935 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!682117 () Bool)

(declare-fun e!388691 () Bool)

(declare-fun call!33998 () Bool)

(assert (=> b!682117 (= e!388691 call!33998)))

(declare-fun bm!33995 () Bool)

(declare-fun c!77270 () Bool)

(assert (=> bm!33995 (= call!33998 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77270 (Cons!13025 (select (arr!18935 a!3626) #b00000000000000000000000000000000) Nil!13026) Nil!13026)))))

(declare-fun b!682118 () Bool)

(assert (=> b!682118 (= e!388691 call!33998)))

(declare-fun d!94015 () Bool)

(declare-fun res!448311 () Bool)

(declare-fun e!388692 () Bool)

(assert (=> d!94015 (=> res!448311 e!388692)))

(assert (=> d!94015 (= res!448311 (bvsge #b00000000000000000000000000000000 (size!19299 a!3626)))))

(assert (=> d!94015 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13026) e!388692)))

(declare-fun b!682119 () Bool)

(declare-fun e!388690 () Bool)

(assert (=> b!682119 (= e!388690 e!388691)))

(assert (=> b!682119 (= c!77270 (validKeyInArray!0 (select (arr!18935 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!682120 () Bool)

(assert (=> b!682120 (= e!388692 e!388690)))

(declare-fun res!448310 () Bool)

(assert (=> b!682120 (=> (not res!448310) (not e!388690))))

(assert (=> b!682120 (= res!448310 (not e!388689))))

(declare-fun res!448312 () Bool)

(assert (=> b!682120 (=> (not res!448312) (not e!388689))))

(assert (=> b!682120 (= res!448312 (validKeyInArray!0 (select (arr!18935 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!94015 (not res!448311)) b!682120))

(assert (= (and b!682120 res!448312) b!682116))

(assert (= (and b!682120 res!448310) b!682119))

(assert (= (and b!682119 c!77270) b!682117))

(assert (= (and b!682119 (not c!77270)) b!682118))

(assert (= (or b!682117 b!682118) bm!33995))

(assert (=> b!682116 m!646829))

(assert (=> b!682116 m!646829))

(declare-fun m!646939 () Bool)

(assert (=> b!682116 m!646939))

(assert (=> bm!33995 m!646829))

(declare-fun m!646941 () Bool)

(assert (=> bm!33995 m!646941))

(assert (=> b!682119 m!646829))

(assert (=> b!682119 m!646829))

(declare-fun m!646943 () Bool)

(assert (=> b!682119 m!646943))

(assert (=> b!682120 m!646829))

(assert (=> b!682120 m!646829))

(assert (=> b!682120 m!646943))

(assert (=> b!681962 d!94015))

(declare-fun d!94019 () Bool)

(assert (=> d!94019 (= ($colon$colon!321 acc!681 (select (arr!18935 a!3626) from!3004)) (Cons!13025 (select (arr!18935 a!3626) from!3004) acc!681))))

(assert (=> b!681951 d!94019))

(declare-fun b!682143 () Bool)

(declare-fun e!388713 () Bool)

(declare-fun e!388715 () Bool)

(assert (=> b!682143 (= e!388713 e!388715)))

(declare-fun res!448332 () Bool)

(assert (=> b!682143 (=> (not res!448332) (not e!388715))))

(assert (=> b!682143 (= res!448332 (is-Cons!13025 acc!681))))

(declare-fun b!682145 () Bool)

(declare-fun e!388714 () Bool)

(assert (=> b!682145 (= e!388714 (subseq!157 (t!19277 acc!681) (t!19277 acc!681)))))

(declare-fun b!682144 () Bool)

(declare-fun e!388716 () Bool)

(assert (=> b!682144 (= e!388715 e!388716)))

(declare-fun res!448331 () Bool)

(assert (=> b!682144 (=> res!448331 e!388716)))

(assert (=> b!682144 (= res!448331 e!388714)))

(declare-fun res!448334 () Bool)

(assert (=> b!682144 (=> (not res!448334) (not e!388714))))

(assert (=> b!682144 (= res!448334 (= (h!14070 acc!681) (h!14070 acc!681)))))

