; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92914 () Bool)

(assert start!92914)

(declare-fun b!1054770 () Bool)

(declare-fun e!599366 () Bool)

(declare-fun e!599364 () Bool)

(assert (=> b!1054770 (= e!599366 e!599364)))

(declare-fun res!703819 () Bool)

(assert (=> b!1054770 (=> (not res!703819) (not e!599364))))

(declare-fun lt!465551 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054770 (= res!703819 (not (= lt!465551 i!1381)))))

(declare-datatypes ((array!66522 0))(
  ( (array!66523 (arr!31989 (Array (_ BitVec 32) (_ BitVec 64))) (size!32526 (_ BitVec 32))) )
))
(declare-fun lt!465550 () array!66522)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66522 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054770 (= lt!465551 (arrayScanForKey!0 lt!465550 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054771 () Bool)

(declare-fun a!3488 () array!66522)

(declare-fun e!599361 () Bool)

(declare-fun arrayContainsKey!0 (array!66522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054771 (= e!599361 (arrayContainsKey!0 a!3488 k!2747 lt!465551))))

(declare-fun b!1054772 () Bool)

(declare-fun res!703826 () Bool)

(declare-fun e!599363 () Bool)

(assert (=> b!1054772 (=> (not res!703826) (not e!599363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054772 (= res!703826 (validKeyInArray!0 k!2747))))

(declare-fun b!1054773 () Bool)

(assert (=> b!1054773 (= e!599363 e!599366)))

(declare-fun res!703822 () Bool)

(assert (=> b!1054773 (=> (not res!703822) (not e!599366))))

(assert (=> b!1054773 (= res!703822 (arrayContainsKey!0 lt!465550 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054773 (= lt!465550 (array!66523 (store (arr!31989 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32526 a!3488)))))

(declare-fun b!1054774 () Bool)

(declare-fun e!599360 () Bool)

(assert (=> b!1054774 (= e!599360 e!599361)))

(declare-fun res!703821 () Bool)

(assert (=> b!1054774 (=> res!703821 e!599361)))

(assert (=> b!1054774 (= res!703821 (bvsle lt!465551 i!1381))))

(declare-fun b!1054775 () Bool)

(declare-fun e!599362 () Bool)

(assert (=> b!1054775 (= e!599364 (not e!599362))))

(declare-fun res!703825 () Bool)

(assert (=> b!1054775 (=> res!703825 e!599362)))

(assert (=> b!1054775 (= res!703825 (bvsle lt!465551 i!1381))))

(assert (=> b!1054775 e!599360))

(declare-fun res!703820 () Bool)

(assert (=> b!1054775 (=> (not res!703820) (not e!599360))))

(assert (=> b!1054775 (= res!703820 (= (select (store (arr!31989 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465551) k!2747))))

(declare-fun b!1054776 () Bool)

(assert (=> b!1054776 (= e!599362 (bvslt (bvadd #b00000000000000000000000000000001 i!1381) (size!32526 a!3488)))))

(assert (=> b!1054776 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34545 0))(
  ( (Unit!34546) )
))
(declare-fun lt!465553 () Unit!34545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34545)

(assert (=> b!1054776 (= lt!465553 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465551 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22432 0))(
  ( (Nil!22429) (Cons!22428 (h!23637 (_ BitVec 64)) (t!31746 List!22432)) )
))
(declare-fun arrayNoDuplicates!0 (array!66522 (_ BitVec 32) List!22432) Bool)

(assert (=> b!1054776 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22429)))

(declare-fun lt!465552 () Unit!34545)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66522 (_ BitVec 32) (_ BitVec 32)) Unit!34545)

(assert (=> b!1054776 (= lt!465552 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!703823 () Bool)

(assert (=> start!92914 (=> (not res!703823) (not e!599363))))

(assert (=> start!92914 (= res!703823 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32526 a!3488)) (bvslt (size!32526 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92914 e!599363))

(assert (=> start!92914 true))

(declare-fun array_inv!24611 (array!66522) Bool)

(assert (=> start!92914 (array_inv!24611 a!3488)))

(declare-fun b!1054777 () Bool)

(declare-fun res!703824 () Bool)

(assert (=> b!1054777 (=> (not res!703824) (not e!599363))))

(assert (=> b!1054777 (= res!703824 (= (select (arr!31989 a!3488) i!1381) k!2747))))

(declare-fun b!1054778 () Bool)

(declare-fun res!703827 () Bool)

(assert (=> b!1054778 (=> (not res!703827) (not e!599363))))

(assert (=> b!1054778 (= res!703827 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22429))))

(assert (= (and start!92914 res!703823) b!1054778))

(assert (= (and b!1054778 res!703827) b!1054772))

(assert (= (and b!1054772 res!703826) b!1054777))

(assert (= (and b!1054777 res!703824) b!1054773))

(assert (= (and b!1054773 res!703822) b!1054770))

(assert (= (and b!1054770 res!703819) b!1054775))

(assert (= (and b!1054775 res!703820) b!1054774))

(assert (= (and b!1054774 (not res!703821)) b!1054771))

(assert (= (and b!1054775 (not res!703825)) b!1054776))

(declare-fun m!974953 () Bool)

(assert (=> b!1054770 m!974953))

(declare-fun m!974955 () Bool)

(assert (=> b!1054772 m!974955))

(declare-fun m!974957 () Bool)

(assert (=> start!92914 m!974957))

(declare-fun m!974959 () Bool)

(assert (=> b!1054773 m!974959))

(declare-fun m!974961 () Bool)

(assert (=> b!1054773 m!974961))

(declare-fun m!974963 () Bool)

(assert (=> b!1054777 m!974963))

(declare-fun m!974965 () Bool)

(assert (=> b!1054778 m!974965))

(declare-fun m!974967 () Bool)

(assert (=> b!1054771 m!974967))

(declare-fun m!974969 () Bool)

(assert (=> b!1054776 m!974969))

(declare-fun m!974971 () Bool)

(assert (=> b!1054776 m!974971))

(declare-fun m!974973 () Bool)

(assert (=> b!1054776 m!974973))

(declare-fun m!974975 () Bool)

(assert (=> b!1054776 m!974975))

(assert (=> b!1054775 m!974961))

(declare-fun m!974977 () Bool)

(assert (=> b!1054775 m!974977))

(push 1)

(assert (not b!1054773))

(assert (not b!1054778))

(assert (not b!1054771))

(assert (not b!1054772))

(assert (not b!1054770))

(assert (not b!1054776))

(assert (not start!92914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127987 () Bool)

(assert (=> d!127987 (= (array_inv!24611 a!3488) (bvsge (size!32526 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92914 d!127987))

(declare-fun d!127989 () Bool)

(declare-fun res!703852 () Bool)

(declare-fun e!599396 () Bool)

(assert (=> d!127989 (=> res!703852 e!599396)))

(assert (=> d!127989 (= res!703852 (= (select (arr!31989 a!3488) lt!465551) k!2747))))

(assert (=> d!127989 (= (arrayContainsKey!0 a!3488 k!2747 lt!465551) e!599396)))

(declare-fun b!1054813 () Bool)

(declare-fun e!599397 () Bool)

(assert (=> b!1054813 (= e!599396 e!599397)))

(declare-fun res!703853 () Bool)

(assert (=> b!1054813 (=> (not res!703853) (not e!599397))))

(assert (=> b!1054813 (= res!703853 (bvslt (bvadd lt!465551 #b00000000000000000000000000000001) (size!32526 a!3488)))))

(declare-fun b!1054814 () Bool)

(assert (=> b!1054814 (= e!599397 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!465551 #b00000000000000000000000000000001)))))

(assert (= (and d!127989 (not res!703852)) b!1054813))

(assert (= (and b!1054813 res!703853) b!1054814))

(declare-fun m!975001 () Bool)

(assert (=> d!127989 m!975001))

(declare-fun m!975003 () Bool)

(assert (=> b!1054814 m!975003))

(assert (=> b!1054771 d!127989))

(declare-fun d!127993 () Bool)

(declare-fun res!703854 () Bool)

(declare-fun e!599398 () Bool)

(assert (=> d!127993 (=> res!703854 e!599398)))

(assert (=> d!127993 (= res!703854 (= (select (arr!31989 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k!2747))))

(assert (=> d!127993 (= (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599398)))

(declare-fun b!1054815 () Bool)

(declare-fun e!599399 () Bool)

(assert (=> b!1054815 (= e!599398 e!599399)))

(declare-fun res!703855 () Bool)

(assert (=> b!1054815 (=> (not res!703855) (not e!599399))))

(assert (=> b!1054815 (= res!703855 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32526 a!3488)))))

(declare-fun b!1054816 () Bool)

(assert (=> b!1054816 (= e!599399 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!127993 (not res!703854)) b!1054815))

(assert (= (and b!1054815 res!703855) b!1054816))

(declare-fun m!975005 () Bool)

(assert (=> d!127993 m!975005))

(declare-fun m!975007 () Bool)

(assert (=> b!1054816 m!975007))

(assert (=> b!1054776 d!127993))

(declare-fun d!127995 () Bool)

(assert (=> d!127995 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465565 () Unit!34545)

(declare-fun choose!114 (array!66522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34545)

(assert (=> d!127995 (= lt!465565 (choose!114 a!3488 k!2747 lt!465551 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> d!127995 (bvsge lt!465551 #b00000000000000000000000000000000)))

(assert (=> d!127995 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465551 (bvadd #b00000000000000000000000000000001 i!1381)) lt!465565)))

(declare-fun bs!30911 () Bool)

(assert (= bs!30911 d!127995))

(assert (=> bs!30911 m!974969))

(declare-fun m!975015 () Bool)

(assert (=> bs!30911 m!975015))

(assert (=> b!1054776 d!127995))

(declare-fun b!1054856 () Bool)

(declare-fun e!599434 () Bool)

(declare-fun e!599435 () Bool)

(assert (=> b!1054856 (= e!599434 e!599435)))

(declare-fun res!703882 () Bool)

(assert (=> b!1054856 (=> (not res!703882) (not e!599435))))

(declare-fun e!599432 () Bool)

(assert (=> b!1054856 (= res!703882 (not e!599432))))

(declare-fun res!703883 () Bool)

(assert (=> b!1054856 (=> (not res!703883) (not e!599432))))

(assert (=> b!1054856 (= res!703883 (validKeyInArray!0 (select (arr!31989 a!3488) i!1381)))))

(declare-fun call!44781 () Bool)

(declare-fun c!106950 () Bool)

(declare-fun bm!44778 () Bool)

(assert (=> bm!44778 (= call!44781 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106950 (Cons!22428 (select (arr!31989 a!3488) i!1381) Nil!22429) Nil!22429)))))

(declare-fun b!1054857 () Bool)

(declare-fun e!599433 () Bool)

(assert (=> b!1054857 (= e!599433 call!44781)))

(declare-fun d!127999 () Bool)

(declare-fun res!703881 () Bool)

(assert (=> d!127999 (=> res!703881 e!599434)))

(assert (=> d!127999 (= res!703881 (bvsge i!1381 (size!32526 a!3488)))))

(assert (=> d!127999 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22429) e!599434)))

(declare-fun b!1054858 () Bool)

(declare-fun contains!6194 (List!22432 (_ BitVec 64)) Bool)

(assert (=> b!1054858 (= e!599432 (contains!6194 Nil!22429 (select (arr!31989 a!3488) i!1381)))))

(declare-fun b!1054859 () Bool)

(assert (=> b!1054859 (= e!599435 e!599433)))

(assert (=> b!1054859 (= c!106950 (validKeyInArray!0 (select (arr!31989 a!3488) i!1381)))))

(declare-fun b!1054860 () Bool)

(assert (=> b!1054860 (= e!599433 call!44781)))

(assert (= (and d!127999 (not res!703881)) b!1054856))

(assert (= (and b!1054856 res!703883) b!1054858))

(assert (= (and b!1054856 res!703882) b!1054859))

(assert (= (and b!1054859 c!106950) b!1054857))

(assert (= (and b!1054859 (not c!106950)) b!1054860))

(assert (= (or b!1054857 b!1054860) bm!44778))

(assert (=> b!1054856 m!974963))

(assert (=> b!1054856 m!974963))

(declare-fun m!975041 () Bool)

(assert (=> b!1054856 m!975041))

(assert (=> bm!44778 m!974963))

(declare-fun m!975043 () Bool)

(assert (=> bm!44778 m!975043))

(assert (=> b!1054858 m!974963))

(assert (=> b!1054858 m!974963))

(declare-fun m!975045 () Bool)

(assert (=> b!1054858 m!975045))

(assert (=> b!1054859 m!974963))

(assert (=> b!1054859 m!974963))

(assert (=> b!1054859 m!975041))

(assert (=> b!1054776 d!127999))

(declare-fun d!128015 () Bool)

(assert (=> d!128015 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22429)))

(declare-fun lt!465574 () Unit!34545)

(declare-fun choose!39 (array!66522 (_ BitVec 32) (_ BitVec 32)) Unit!34545)

(assert (=> d!128015 (= lt!465574 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!128015 (bvslt (size!32526 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128015 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465574)))

(declare-fun bs!30914 () Bool)

(assert (= bs!30914 d!128015))

(assert (=> bs!30914 m!974973))

(declare-fun m!975055 () Bool)

(assert (=> bs!30914 m!975055))

(assert (=> b!1054776 d!128015))

(declare-fun d!128021 () Bool)

(declare-fun lt!465580 () (_ BitVec 32))

(assert (=> d!128021 (and (or (bvslt lt!465580 #b00000000000000000000000000000000) (bvsge lt!465580 (size!32526 lt!465550)) (and (bvsge lt!465580 #b00000000000000000000000000000000) (bvslt lt!465580 (size!32526 lt!465550)))) (bvsge lt!465580 #b00000000000000000000000000000000) (bvslt lt!465580 (size!32526 lt!465550)) (= (select (arr!31989 lt!465550) lt!465580) k!2747))))

(declare-fun e!599447 () (_ BitVec 32))

(assert (=> d!128021 (= lt!465580 e!599447)))

(declare-fun c!106957 () Bool)

(assert (=> d!128021 (= c!106957 (= (select (arr!31989 lt!465550) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128021 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32526 lt!465550)) (bvslt (size!32526 lt!465550) #b01111111111111111111111111111111))))

(assert (=> d!128021 (= (arrayScanForKey!0 lt!465550 k!2747 #b00000000000000000000000000000000) lt!465580)))

(declare-fun b!1054878 () Bool)

(assert (=> b!1054878 (= e!599447 #b00000000000000000000000000000000)))

(declare-fun b!1054879 () Bool)

(assert (=> b!1054879 (= e!599447 (arrayScanForKey!0 lt!465550 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128021 c!106957) b!1054878))

(assert (= (and d!128021 (not c!106957)) b!1054879))

(declare-fun m!975065 () Bool)

(assert (=> d!128021 m!975065))

(declare-fun m!975067 () Bool)

(assert (=> d!128021 m!975067))

(declare-fun m!975069 () Bool)

(assert (=> b!1054879 m!975069))

(assert (=> b!1054770 d!128021))

(declare-fun d!128025 () Bool)

(assert (=> d!128025 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1054772 d!128025))

(declare-fun d!128027 () Bool)

(declare-fun res!703889 () Bool)

(declare-fun e!599448 () Bool)

(assert (=> d!128027 (=> res!703889 e!599448)))

(assert (=> d!128027 (= res!703889 (= (select (arr!31989 lt!465550) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128027 (= (arrayContainsKey!0 lt!465550 k!2747 #b00000000000000000000000000000000) e!599448)))

(declare-fun b!1054880 () Bool)

(declare-fun e!599449 () Bool)

(assert (=> b!1054880 (= e!599448 e!599449)))

(declare-fun res!703890 () Bool)

(assert (=> b!1054880 (=> (not res!703890) (not e!599449))))

(assert (=> b!1054880 (= res!703890 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32526 lt!465550)))))

(declare-fun b!1054881 () Bool)

(assert (=> b!1054881 (= e!599449 (arrayContainsKey!0 lt!465550 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128027 (not res!703889)) b!1054880))

(assert (= (and b!1054880 res!703890) b!1054881))

(assert (=> d!128027 m!975067))

(declare-fun m!975071 () Bool)

(assert (=> b!1054881 m!975071))

(assert (=> b!1054773 d!128027))

(declare-fun b!1054882 () Bool)

(declare-fun e!599452 () Bool)

(declare-fun e!599453 () Bool)

(assert (=> b!1054882 (= e!599452 e!599453)))

(declare-fun res!703892 () Bool)

(assert (=> b!1054882 (=> (not res!703892) (not e!599453))))

(declare-fun e!599450 () Bool)

(assert (=> b!1054882 (= res!703892 (not e!599450))))

(declare-fun res!703893 () Bool)

(assert (=> b!1054882 (=> (not res!703893) (not e!599450))))

(assert (=> b!1054882 (= res!703893 (validKeyInArray!0 (select (arr!31989 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44780 () Bool)

(declare-fun call!44783 () Bool)

(declare-fun c!106958 () Bool)

(assert (=> bm!44780 (= call!44783 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106958 (Cons!22428 (select (arr!31989 a!3488) #b00000000000000000000000000000000) Nil!22429) Nil!22429)))))

(declare-fun b!1054883 () Bool)

(declare-fun e!599451 () Bool)

(assert (=> b!1054883 (= e!599451 call!44783)))

(declare-fun d!128029 () Bool)

(declare-fun res!703891 () Bool)

(assert (=> d!128029 (=> res!703891 e!599452)))

(assert (=> d!128029 (= res!703891 (bvsge #b00000000000000000000000000000000 (size!32526 a!3488)))))

(assert (=> d!128029 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22429) e!599452)))

(declare-fun b!1054884 () Bool)

(assert (=> b!1054884 (= e!599450 (contains!6194 Nil!22429 (select (arr!31989 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054885 () Bool)

(assert (=> b!1054885 (= e!599453 e!599451)))

(assert (=> b!1054885 (= c!106958 (validKeyInArray!0 (select (arr!31989 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054886 () Bool)

(assert (=> b!1054886 (= e!599451 call!44783)))

(assert (= (and d!128029 (not res!703891)) b!1054882))

(assert (= (and b!1054882 res!703893) b!1054884))

(assert (= (and b!1054882 res!703892) b!1054885))

(assert (= (and b!1054885 c!106958) b!1054883))

(assert (= (and b!1054885 (not c!106958)) b!1054886))

(assert (= (or b!1054883 b!1054886) bm!44780))

(declare-fun m!975073 () Bool)

(assert (=> b!1054882 m!975073))

(assert (=> b!1054882 m!975073))

(declare-fun m!975075 () Bool)

(assert (=> b!1054882 m!975075))

(assert (=> bm!44780 m!975073))

(declare-fun m!975077 () Bool)

(assert (=> bm!44780 m!975077))

(assert (=> b!1054884 m!975073))

(assert (=> b!1054884 m!975073))

(declare-fun m!975079 () Bool)

(assert (=> b!1054884 m!975079))

(assert (=> b!1054885 m!975073))

(assert (=> b!1054885 m!975073))

(assert (=> b!1054885 m!975075))

(assert (=> b!1054778 d!128029))

(push 1)

(assert (not b!1054856))

(assert (not d!127995))

(assert (not b!1054858))

(assert (not b!1054885))

(assert (not b!1054879))

(assert (not b!1054859))

(assert (not b!1054881))

(assert (not b!1054882))

(assert (not b!1054814))

(assert (not d!128015))

(assert (not bm!44780))

(assert (not b!1054816))

(assert (not b!1054884))

(assert (not bm!44778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

