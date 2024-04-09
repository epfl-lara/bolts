; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101908 () Bool)

(assert start!101908)

(declare-fun b!1226811 () Bool)

(declare-fun res!815580 () Bool)

(declare-fun e!696681 () Bool)

(assert (=> b!1226811 (=> (not res!815580) (not e!696681))))

(declare-datatypes ((List!27168 0))(
  ( (Nil!27165) (Cons!27164 (h!28373 (_ BitVec 64)) (t!40638 List!27168)) )
))
(declare-fun acc!823 () List!27168)

(declare-fun contains!7083 (List!27168 (_ BitVec 64)) Bool)

(assert (=> b!1226811 (= res!815580 (not (contains!7083 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226812 () Bool)

(declare-fun res!815578 () Bool)

(assert (=> b!1226812 (=> (not res!815578) (not e!696681))))

(assert (=> b!1226812 (= res!815578 (not (contains!7083 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!79190 0))(
  ( (array!79191 (arr!38217 (Array (_ BitVec 32) (_ BitVec 64))) (size!38754 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79190)

(declare-fun b!1226813 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun noDuplicate!1690 (List!27168) Bool)

(assert (=> b!1226813 (= e!696681 (not (noDuplicate!1690 (Cons!27164 (select (arr!38217 a!3806) from!3184) acc!823))))))

(declare-fun b!1226814 () Bool)

(declare-fun res!815583 () Bool)

(assert (=> b!1226814 (=> (not res!815583) (not e!696681))))

(assert (=> b!1226814 (= res!815583 (noDuplicate!1690 acc!823))))

(declare-fun res!815584 () Bool)

(assert (=> start!101908 (=> (not res!815584) (not e!696681))))

(assert (=> start!101908 (= res!815584 (bvslt (size!38754 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101908 e!696681))

(declare-fun array_inv!28993 (array!79190) Bool)

(assert (=> start!101908 (array_inv!28993 a!3806)))

(assert (=> start!101908 true))

(declare-fun b!1226815 () Bool)

(declare-fun res!815581 () Bool)

(assert (=> b!1226815 (=> (not res!815581) (not e!696681))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226815 (= res!815581 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226816 () Bool)

(declare-fun res!815577 () Bool)

(assert (=> b!1226816 (=> (not res!815577) (not e!696681))))

(declare-fun arrayNoDuplicates!0 (array!79190 (_ BitVec 32) List!27168) Bool)

(assert (=> b!1226816 (= res!815577 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1226817 () Bool)

(declare-fun res!815582 () Bool)

(assert (=> b!1226817 (=> (not res!815582) (not e!696681))))

(assert (=> b!1226817 (= res!815582 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun b!1226818 () Bool)

(declare-fun res!815585 () Bool)

(assert (=> b!1226818 (=> (not res!815585) (not e!696681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226818 (= res!815585 (validKeyInArray!0 (select (arr!38217 a!3806) from!3184)))))

(declare-fun b!1226819 () Bool)

(declare-fun res!815576 () Bool)

(assert (=> b!1226819 (=> (not res!815576) (not e!696681))))

(assert (=> b!1226819 (= res!815576 (validKeyInArray!0 k!2913))))

(declare-fun b!1226820 () Bool)

(declare-fun res!815579 () Bool)

(assert (=> b!1226820 (=> (not res!815579) (not e!696681))))

(assert (=> b!1226820 (= res!815579 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38754 a!3806)) (bvslt from!3184 (size!38754 a!3806))))))

(assert (= (and start!101908 res!815584) b!1226819))

(assert (= (and b!1226819 res!815576) b!1226820))

(assert (= (and b!1226820 res!815579) b!1226814))

(assert (= (and b!1226814 res!815583) b!1226812))

(assert (= (and b!1226812 res!815578) b!1226811))

(assert (= (and b!1226811 res!815580) b!1226815))

(assert (= (and b!1226815 res!815581) b!1226816))

(assert (= (and b!1226816 res!815577) b!1226818))

(assert (= (and b!1226818 res!815585) b!1226817))

(assert (= (and b!1226817 res!815582) b!1226813))

(declare-fun m!1131791 () Bool)

(assert (=> b!1226816 m!1131791))

(declare-fun m!1131793 () Bool)

(assert (=> start!101908 m!1131793))

(declare-fun m!1131795 () Bool)

(assert (=> b!1226818 m!1131795))

(assert (=> b!1226818 m!1131795))

(declare-fun m!1131797 () Bool)

(assert (=> b!1226818 m!1131797))

(declare-fun m!1131799 () Bool)

(assert (=> b!1226819 m!1131799))

(declare-fun m!1131801 () Bool)

(assert (=> b!1226815 m!1131801))

(declare-fun m!1131803 () Bool)

(assert (=> b!1226814 m!1131803))

(declare-fun m!1131805 () Bool)

(assert (=> b!1226811 m!1131805))

(assert (=> b!1226813 m!1131795))

(declare-fun m!1131807 () Bool)

(assert (=> b!1226813 m!1131807))

(declare-fun m!1131809 () Bool)

(assert (=> b!1226812 m!1131809))

(push 1)

(assert (not b!1226813))

(assert (not b!1226819))

(assert (not b!1226814))

(assert (not b!1226811))

(assert (not start!101908))

(assert (not b!1226812))

(assert (not b!1226815))

(assert (not b!1226818))

(assert (not b!1226816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!133993 () Bool)

(declare-fun res!815664 () Bool)

(declare-fun e!696713 () Bool)

(assert (=> d!133993 (=> res!815664 e!696713)))

(assert (=> d!133993 (= res!815664 (is-Nil!27165 acc!823))))

(assert (=> d!133993 (= (noDuplicate!1690 acc!823) e!696713)))

(declare-fun b!1226899 () Bool)

(declare-fun e!696714 () Bool)

(assert (=> b!1226899 (= e!696713 e!696714)))

(declare-fun res!815665 () Bool)

(assert (=> b!1226899 (=> (not res!815665) (not e!696714))))

(assert (=> b!1226899 (= res!815665 (not (contains!7083 (t!40638 acc!823) (h!28373 acc!823))))))

(declare-fun b!1226900 () Bool)

(assert (=> b!1226900 (= e!696714 (noDuplicate!1690 (t!40638 acc!823)))))

(assert (= (and d!133993 (not res!815664)) b!1226899))

(assert (= (and b!1226899 res!815665) b!1226900))

(declare-fun m!1131865 () Bool)

(assert (=> b!1226899 m!1131865))

(declare-fun m!1131867 () Bool)

(assert (=> b!1226900 m!1131867))

(assert (=> b!1226814 d!133993))

(declare-fun d!133999 () Bool)

(declare-fun res!815682 () Bool)

(declare-fun e!696733 () Bool)

(assert (=> d!133999 (=> res!815682 e!696733)))

(assert (=> d!133999 (= res!815682 (= (select (arr!38217 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!133999 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!696733)))

(declare-fun b!1226921 () Bool)

(declare-fun e!696734 () Bool)

(assert (=> b!1226921 (= e!696733 e!696734)))

(declare-fun res!815683 () Bool)

(assert (=> b!1226921 (=> (not res!815683) (not e!696734))))

(assert (=> b!1226921 (= res!815683 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38754 a!3806)))))

(declare-fun b!1226922 () Bool)

(assert (=> b!1226922 (= e!696734 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!133999 (not res!815682)) b!1226921))

(assert (= (and b!1226921 res!815683) b!1226922))

(declare-fun m!1131875 () Bool)

(assert (=> d!133999 m!1131875))

(declare-fun m!1131877 () Bool)

(assert (=> b!1226922 m!1131877))

(assert (=> b!1226815 d!133999))

(declare-fun d!134003 () Bool)

(declare-fun res!815684 () Bool)

(declare-fun e!696735 () Bool)

(assert (=> d!134003 (=> res!815684 e!696735)))

(assert (=> d!134003 (= res!815684 (is-Nil!27165 (Cons!27164 (select (arr!38217 a!3806) from!3184) acc!823)))))

(assert (=> d!134003 (= (noDuplicate!1690 (Cons!27164 (select (arr!38217 a!3806) from!3184) acc!823)) e!696735)))

(declare-fun b!1226923 () Bool)

(declare-fun e!696736 () Bool)

(assert (=> b!1226923 (= e!696735 e!696736)))

(declare-fun res!815685 () Bool)

(assert (=> b!1226923 (=> (not res!815685) (not e!696736))))

(assert (=> b!1226923 (= res!815685 (not (contains!7083 (t!40638 (Cons!27164 (select (arr!38217 a!3806) from!3184) acc!823)) (h!28373 (Cons!27164 (select (arr!38217 a!3806) from!3184) acc!823)))))))

(declare-fun b!1226924 () Bool)

(assert (=> b!1226924 (= e!696736 (noDuplicate!1690 (t!40638 (Cons!27164 (select (arr!38217 a!3806) from!3184) acc!823))))))

(assert (= (and d!134003 (not res!815684)) b!1226923))

(assert (= (and b!1226923 res!815685) b!1226924))

(declare-fun m!1131879 () Bool)

(assert (=> b!1226923 m!1131879))

(declare-fun m!1131881 () Bool)

(assert (=> b!1226924 m!1131881))

(assert (=> b!1226813 d!134003))

(declare-fun d!134005 () Bool)

(assert (=> d!134005 (= (array_inv!28993 a!3806) (bvsge (size!38754 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!101908 d!134005))

(declare-fun d!134007 () Bool)

(assert (=> d!134007 (= (validKeyInArray!0 (select (arr!38217 a!3806) from!3184)) (and (not (= (select (arr!38217 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38217 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1226818 d!134007))

(declare-fun d!134011 () Bool)

(assert (=> d!134011 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1226819 d!134011))

(declare-fun d!134013 () Bool)

(declare-fun lt!558814 () Bool)

(declare-fun content!554 (List!27168) (Set (_ BitVec 64)))

(assert (=> d!134013 (= lt!558814 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!554 acc!823)))))

(declare-fun e!696764 () Bool)

(assert (=> d!134013 (= lt!558814 e!696764)))

(declare-fun res!815712 () Bool)

(assert (=> d!134013 (=> (not res!815712) (not e!696764))))

(assert (=> d!134013 (= res!815712 (is-Cons!27164 acc!823))))

(assert (=> d!134013 (= (contains!7083 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558814)))

(declare-fun b!1226952 () Bool)

(declare-fun e!696763 () Bool)

(assert (=> b!1226952 (= e!696764 e!696763)))

(declare-fun res!815711 () Bool)

(assert (=> b!1226952 (=> res!815711 e!696763)))

(assert (=> b!1226952 (= res!815711 (= (h!28373 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226953 () Bool)

(assert (=> b!1226953 (= e!696763 (contains!7083 (t!40638 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134013 res!815712) b!1226952))

(assert (= (and b!1226952 (not res!815711)) b!1226953))

(declare-fun m!1131899 () Bool)

(assert (=> d!134013 m!1131899))

(declare-fun m!1131901 () Bool)

(assert (=> d!134013 m!1131901))

(declare-fun m!1131903 () Bool)

(assert (=> b!1226953 m!1131903))

(assert (=> b!1226812 d!134013))

(declare-fun d!134027 () Bool)

(declare-fun lt!558815 () Bool)

(assert (=> d!134027 (= lt!558815 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!554 acc!823)))))

(declare-fun e!696768 () Bool)

(assert (=> d!134027 (= lt!558815 e!696768)))

(declare-fun res!815716 () Bool)

(assert (=> d!134027 (=> (not res!815716) (not e!696768))))

(assert (=> d!134027 (= res!815716 (is-Cons!27164 acc!823))))

(assert (=> d!134027 (= (contains!7083 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558815)))

(declare-fun b!1226956 () Bool)

(declare-fun e!696767 () Bool)

(assert (=> b!1226956 (= e!696768 e!696767)))

(declare-fun res!815715 () Bool)

(assert (=> b!1226956 (=> res!815715 e!696767)))

(assert (=> b!1226956 (= res!815715 (= (h!28373 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226957 () Bool)

(assert (=> b!1226957 (= e!696767 (contains!7083 (t!40638 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134027 res!815716) b!1226956))

(assert (= (and b!1226956 (not res!815715)) b!1226957))

(assert (=> d!134027 m!1131899))

(declare-fun m!1131909 () Bool)

(assert (=> d!134027 m!1131909))

(declare-fun m!1131911 () Bool)

(assert (=> b!1226957 m!1131911))

(assert (=> b!1226811 d!134027))

(declare-fun c!120487 () Bool)

(declare-fun call!60796 () Bool)

(declare-fun bm!60793 () Bool)

(assert (=> bm!60793 (= call!60796 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120487 (Cons!27164 (select (arr!38217 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun d!134031 () Bool)

(declare-fun res!815735 () Bool)

(declare-fun e!696791 () Bool)

(assert (=> d!134031 (=> res!815735 e!696791)))

