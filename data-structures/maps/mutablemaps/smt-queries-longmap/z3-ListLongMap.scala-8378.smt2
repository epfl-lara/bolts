; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101910 () Bool)

(assert start!101910)

(declare-fun b!1226841 () Bool)

(declare-fun res!815612 () Bool)

(declare-fun e!696688 () Bool)

(assert (=> b!1226841 (=> (not res!815612) (not e!696688))))

(declare-datatypes ((array!79192 0))(
  ( (array!79193 (arr!38218 (Array (_ BitVec 32) (_ BitVec 64))) (size!38755 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79192)

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226841 (= res!815612 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226842 () Bool)

(declare-datatypes ((List!27169 0))(
  ( (Nil!27166) (Cons!27165 (h!28374 (_ BitVec 64)) (t!40639 List!27169)) )
))
(declare-fun acc!823 () List!27169)

(declare-fun noDuplicate!1691 (List!27169) Bool)

(assert (=> b!1226842 (= e!696688 (not (noDuplicate!1691 (Cons!27165 (select (arr!38218 a!3806) from!3184) acc!823))))))

(declare-fun b!1226843 () Bool)

(declare-fun res!815607 () Bool)

(assert (=> b!1226843 (=> (not res!815607) (not e!696688))))

(declare-fun arrayNoDuplicates!0 (array!79192 (_ BitVec 32) List!27169) Bool)

(assert (=> b!1226843 (= res!815607 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!815606 () Bool)

(assert (=> start!101910 (=> (not res!815606) (not e!696688))))

(assert (=> start!101910 (= res!815606 (bvslt (size!38755 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101910 e!696688))

(declare-fun array_inv!28994 (array!79192) Bool)

(assert (=> start!101910 (array_inv!28994 a!3806)))

(assert (=> start!101910 true))

(declare-fun b!1226844 () Bool)

(declare-fun res!815610 () Bool)

(assert (=> b!1226844 (=> (not res!815610) (not e!696688))))

(declare-fun contains!7084 (List!27169 (_ BitVec 64)) Bool)

(assert (=> b!1226844 (= res!815610 (not (contains!7084 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226845 () Bool)

(declare-fun res!815608 () Bool)

(assert (=> b!1226845 (=> (not res!815608) (not e!696688))))

(assert (=> b!1226845 (= res!815608 (not (contains!7084 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226846 () Bool)

(declare-fun res!815613 () Bool)

(assert (=> b!1226846 (=> (not res!815613) (not e!696688))))

(assert (=> b!1226846 (= res!815613 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38755 a!3806)) (bvslt from!3184 (size!38755 a!3806))))))

(declare-fun b!1226847 () Bool)

(declare-fun res!815614 () Bool)

(assert (=> b!1226847 (=> (not res!815614) (not e!696688))))

(assert (=> b!1226847 (= res!815614 (noDuplicate!1691 acc!823))))

(declare-fun b!1226848 () Bool)

(declare-fun res!815615 () Bool)

(assert (=> b!1226848 (=> (not res!815615) (not e!696688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226848 (= res!815615 (validKeyInArray!0 (select (arr!38218 a!3806) from!3184)))))

(declare-fun b!1226849 () Bool)

(declare-fun res!815609 () Bool)

(assert (=> b!1226849 (=> (not res!815609) (not e!696688))))

(assert (=> b!1226849 (= res!815609 (validKeyInArray!0 k0!2913))))

(declare-fun b!1226850 () Bool)

(declare-fun res!815611 () Bool)

(assert (=> b!1226850 (=> (not res!815611) (not e!696688))))

(assert (=> b!1226850 (= res!815611 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (= (and start!101910 res!815606) b!1226849))

(assert (= (and b!1226849 res!815609) b!1226846))

(assert (= (and b!1226846 res!815613) b!1226847))

(assert (= (and b!1226847 res!815614) b!1226844))

(assert (= (and b!1226844 res!815610) b!1226845))

(assert (= (and b!1226845 res!815608) b!1226841))

(assert (= (and b!1226841 res!815612) b!1226843))

(assert (= (and b!1226843 res!815607) b!1226848))

(assert (= (and b!1226848 res!815615) b!1226850))

(assert (= (and b!1226850 res!815611) b!1226842))

(declare-fun m!1131811 () Bool)

(assert (=> b!1226847 m!1131811))

(declare-fun m!1131813 () Bool)

(assert (=> b!1226849 m!1131813))

(declare-fun m!1131815 () Bool)

(assert (=> b!1226844 m!1131815))

(declare-fun m!1131817 () Bool)

(assert (=> b!1226845 m!1131817))

(declare-fun m!1131819 () Bool)

(assert (=> b!1226848 m!1131819))

(assert (=> b!1226848 m!1131819))

(declare-fun m!1131821 () Bool)

(assert (=> b!1226848 m!1131821))

(assert (=> b!1226842 m!1131819))

(declare-fun m!1131823 () Bool)

(assert (=> b!1226842 m!1131823))

(declare-fun m!1131825 () Bool)

(assert (=> start!101910 m!1131825))

(declare-fun m!1131827 () Bool)

(assert (=> b!1226841 m!1131827))

(declare-fun m!1131829 () Bool)

(assert (=> b!1226843 m!1131829))

(check-sat (not b!1226842) (not b!1226845) (not b!1226849) (not b!1226847) (not b!1226843) (not start!101910) (not b!1226841) (not b!1226844) (not b!1226848))
(check-sat)
(get-model)

(declare-fun d!133987 () Bool)

(declare-fun res!815650 () Bool)

(declare-fun e!696699 () Bool)

(assert (=> d!133987 (=> res!815650 e!696699)))

(assert (=> d!133987 (= res!815650 (= (select (arr!38218 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!133987 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!696699)))

(declare-fun b!1226885 () Bool)

(declare-fun e!696700 () Bool)

(assert (=> b!1226885 (= e!696699 e!696700)))

(declare-fun res!815651 () Bool)

(assert (=> b!1226885 (=> (not res!815651) (not e!696700))))

(assert (=> b!1226885 (= res!815651 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38755 a!3806)))))

(declare-fun b!1226886 () Bool)

(assert (=> b!1226886 (= e!696700 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!133987 (not res!815650)) b!1226885))

(assert (= (and b!1226885 res!815651) b!1226886))

(declare-fun m!1131851 () Bool)

(assert (=> d!133987 m!1131851))

(declare-fun m!1131853 () Bool)

(assert (=> b!1226886 m!1131853))

(assert (=> b!1226841 d!133987))

(declare-fun d!133989 () Bool)

(declare-fun lt!558806 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!552 (List!27169) (InoxSet (_ BitVec 64)))

(assert (=> d!133989 (= lt!558806 (select (content!552 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!696706 () Bool)

(assert (=> d!133989 (= lt!558806 e!696706)))

(declare-fun res!815657 () Bool)

(assert (=> d!133989 (=> (not res!815657) (not e!696706))))

(get-info :version)

(assert (=> d!133989 (= res!815657 ((_ is Cons!27165) acc!823))))

(assert (=> d!133989 (= (contains!7084 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558806)))

(declare-fun b!1226891 () Bool)

(declare-fun e!696705 () Bool)

(assert (=> b!1226891 (= e!696706 e!696705)))

(declare-fun res!815656 () Bool)

(assert (=> b!1226891 (=> res!815656 e!696705)))

(assert (=> b!1226891 (= res!815656 (= (h!28374 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226892 () Bool)

(assert (=> b!1226892 (= e!696705 (contains!7084 (t!40639 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!133989 res!815657) b!1226891))

(assert (= (and b!1226891 (not res!815656)) b!1226892))

(declare-fun m!1131855 () Bool)

(assert (=> d!133989 m!1131855))

(declare-fun m!1131857 () Bool)

(assert (=> d!133989 m!1131857))

(declare-fun m!1131859 () Bool)

(assert (=> b!1226892 m!1131859))

(assert (=> b!1226844 d!133989))

(declare-fun d!133991 () Bool)

(declare-fun lt!558807 () Bool)

(assert (=> d!133991 (= lt!558807 (select (content!552 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!696708 () Bool)

(assert (=> d!133991 (= lt!558807 e!696708)))

(declare-fun res!815659 () Bool)

(assert (=> d!133991 (=> (not res!815659) (not e!696708))))

(assert (=> d!133991 (= res!815659 ((_ is Cons!27165) acc!823))))

(assert (=> d!133991 (= (contains!7084 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558807)))

(declare-fun b!1226893 () Bool)

(declare-fun e!696707 () Bool)

(assert (=> b!1226893 (= e!696708 e!696707)))

(declare-fun res!815658 () Bool)

(assert (=> b!1226893 (=> res!815658 e!696707)))

(assert (=> b!1226893 (= res!815658 (= (h!28374 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226894 () Bool)

(assert (=> b!1226894 (= e!696707 (contains!7084 (t!40639 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!133991 res!815659) b!1226893))

(assert (= (and b!1226893 (not res!815658)) b!1226894))

(assert (=> d!133991 m!1131855))

(declare-fun m!1131861 () Bool)

(assert (=> d!133991 m!1131861))

(declare-fun m!1131863 () Bool)

(assert (=> b!1226894 m!1131863))

(assert (=> b!1226845 d!133991))

(declare-fun b!1226925 () Bool)

(declare-fun e!696738 () Bool)

(declare-fun call!60791 () Bool)

(assert (=> b!1226925 (= e!696738 call!60791)))

(declare-fun b!1226926 () Bool)

(declare-fun e!696739 () Bool)

(assert (=> b!1226926 (= e!696739 (contains!7084 acc!823 (select (arr!38218 a!3806) from!3184)))))

(declare-fun c!120482 () Bool)

(declare-fun bm!60788 () Bool)

(assert (=> bm!60788 (= call!60791 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120482 (Cons!27165 (select (arr!38218 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun d!133995 () Bool)

(declare-fun res!815687 () Bool)

(declare-fun e!696737 () Bool)

(assert (=> d!133995 (=> res!815687 e!696737)))

(assert (=> d!133995 (= res!815687 (bvsge from!3184 (size!38755 a!3806)))))

(assert (=> d!133995 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!696737)))

(declare-fun b!1226927 () Bool)

(declare-fun e!696740 () Bool)

(assert (=> b!1226927 (= e!696740 e!696738)))

(assert (=> b!1226927 (= c!120482 (validKeyInArray!0 (select (arr!38218 a!3806) from!3184)))))

(declare-fun b!1226928 () Bool)

(assert (=> b!1226928 (= e!696738 call!60791)))

(declare-fun b!1226929 () Bool)

(assert (=> b!1226929 (= e!696737 e!696740)))

(declare-fun res!815686 () Bool)

(assert (=> b!1226929 (=> (not res!815686) (not e!696740))))

(assert (=> b!1226929 (= res!815686 (not e!696739))))

(declare-fun res!815688 () Bool)

(assert (=> b!1226929 (=> (not res!815688) (not e!696739))))

(assert (=> b!1226929 (= res!815688 (validKeyInArray!0 (select (arr!38218 a!3806) from!3184)))))

(assert (= (and d!133995 (not res!815687)) b!1226929))

(assert (= (and b!1226929 res!815688) b!1226926))

(assert (= (and b!1226929 res!815686) b!1226927))

(assert (= (and b!1226927 c!120482) b!1226925))

(assert (= (and b!1226927 (not c!120482)) b!1226928))

(assert (= (or b!1226925 b!1226928) bm!60788))

(assert (=> b!1226926 m!1131819))

(assert (=> b!1226926 m!1131819))

(declare-fun m!1131883 () Bool)

(assert (=> b!1226926 m!1131883))

(assert (=> bm!60788 m!1131819))

(declare-fun m!1131885 () Bool)

(assert (=> bm!60788 m!1131885))

(assert (=> b!1226927 m!1131819))

(assert (=> b!1226927 m!1131819))

(assert (=> b!1226927 m!1131821))

(assert (=> b!1226929 m!1131819))

(assert (=> b!1226929 m!1131819))

(assert (=> b!1226929 m!1131821))

(assert (=> b!1226843 d!133995))

(declare-fun d!134009 () Bool)

(assert (=> d!134009 (= (array_inv!28994 a!3806) (bvsge (size!38755 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!101910 d!134009))

(declare-fun d!134015 () Bool)

(assert (=> d!134015 (= (validKeyInArray!0 (select (arr!38218 a!3806) from!3184)) (and (not (= (select (arr!38218 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38218 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1226848 d!134015))

(declare-fun d!134021 () Bool)

(assert (=> d!134021 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1226849 d!134021))

(declare-fun d!134023 () Bool)

(declare-fun res!815713 () Bool)

(declare-fun e!696765 () Bool)

(assert (=> d!134023 (=> res!815713 e!696765)))

(assert (=> d!134023 (= res!815713 ((_ is Nil!27166) acc!823))))

(assert (=> d!134023 (= (noDuplicate!1691 acc!823) e!696765)))

(declare-fun b!1226954 () Bool)

(declare-fun e!696766 () Bool)

(assert (=> b!1226954 (= e!696765 e!696766)))

(declare-fun res!815714 () Bool)

(assert (=> b!1226954 (=> (not res!815714) (not e!696766))))

(assert (=> b!1226954 (= res!815714 (not (contains!7084 (t!40639 acc!823) (h!28374 acc!823))))))

(declare-fun b!1226955 () Bool)

(assert (=> b!1226955 (= e!696766 (noDuplicate!1691 (t!40639 acc!823)))))

(assert (= (and d!134023 (not res!815713)) b!1226954))

(assert (= (and b!1226954 res!815714) b!1226955))

(declare-fun m!1131905 () Bool)

(assert (=> b!1226954 m!1131905))

(declare-fun m!1131907 () Bool)

(assert (=> b!1226955 m!1131907))

(assert (=> b!1226847 d!134023))

(declare-fun d!134029 () Bool)

(declare-fun res!815717 () Bool)

(declare-fun e!696769 () Bool)

(assert (=> d!134029 (=> res!815717 e!696769)))

(assert (=> d!134029 (= res!815717 ((_ is Nil!27166) (Cons!27165 (select (arr!38218 a!3806) from!3184) acc!823)))))

(assert (=> d!134029 (= (noDuplicate!1691 (Cons!27165 (select (arr!38218 a!3806) from!3184) acc!823)) e!696769)))

(declare-fun b!1226958 () Bool)

(declare-fun e!696770 () Bool)

(assert (=> b!1226958 (= e!696769 e!696770)))

(declare-fun res!815718 () Bool)

(assert (=> b!1226958 (=> (not res!815718) (not e!696770))))

(assert (=> b!1226958 (= res!815718 (not (contains!7084 (t!40639 (Cons!27165 (select (arr!38218 a!3806) from!3184) acc!823)) (h!28374 (Cons!27165 (select (arr!38218 a!3806) from!3184) acc!823)))))))

(declare-fun b!1226959 () Bool)

(assert (=> b!1226959 (= e!696770 (noDuplicate!1691 (t!40639 (Cons!27165 (select (arr!38218 a!3806) from!3184) acc!823))))))

(assert (= (and d!134029 (not res!815717)) b!1226958))

(assert (= (and b!1226958 res!815718) b!1226959))

(declare-fun m!1131913 () Bool)

(assert (=> b!1226958 m!1131913))

(declare-fun m!1131915 () Bool)

(assert (=> b!1226959 m!1131915))

(assert (=> b!1226842 d!134029))

(check-sat (not d!133991) (not b!1226886) (not b!1226959) (not d!133989) (not b!1226894) (not b!1226892) (not b!1226926) (not b!1226955) (not b!1226927) (not b!1226954) (not bm!60788) (not b!1226958) (not b!1226929))
(check-sat)
