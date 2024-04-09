; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102946 () Bool)

(assert start!102946)

(declare-fun b!1236731 () Bool)

(declare-fun e!700942 () Bool)

(declare-datatypes ((List!27421 0))(
  ( (Nil!27418) (Cons!27417 (h!28626 (_ BitVec 64)) (t!40891 List!27421)) )
))
(declare-fun acc!846 () List!27421)

(declare-fun lt!560831 () List!27421)

(declare-fun subseq!573 (List!27421 List!27421) Bool)

(assert (=> b!1236731 (= e!700942 (not (subseq!573 acc!846 lt!560831)))))

(declare-datatypes ((Unit!40978 0))(
  ( (Unit!40979) )
))
(declare-fun lt!560833 () Unit!40978)

(declare-fun subseqTail!60 (List!27421 List!27421) Unit!40978)

(assert (=> b!1236731 (= lt!560833 (subseqTail!60 lt!560831 lt!560831))))

(assert (=> b!1236731 (subseq!573 lt!560831 lt!560831)))

(declare-fun lt!560832 () Unit!40978)

(declare-fun lemmaListSubSeqRefl!0 (List!27421) Unit!40978)

(assert (=> b!1236731 (= lt!560832 (lemmaListSubSeqRefl!0 lt!560831))))

(declare-datatypes ((array!79732 0))(
  ( (array!79733 (arr!38470 (Array (_ BitVec 32) (_ BitVec 64))) (size!39007 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79732)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1236731 (= lt!560831 (Cons!27417 (select (arr!38470 a!3835) from!3213) acc!846))))

(declare-fun b!1236733 () Bool)

(declare-fun res!824828 () Bool)

(assert (=> b!1236733 (=> (not res!824828) (not e!700942))))

(declare-fun contains!7336 (List!27421 (_ BitVec 64)) Bool)

(assert (=> b!1236733 (= res!824828 (not (contains!7336 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236734 () Bool)

(declare-fun res!824830 () Bool)

(assert (=> b!1236734 (=> (not res!824830) (not e!700942))))

(assert (=> b!1236734 (= res!824830 (not (= from!3213 (bvsub (size!39007 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236735 () Bool)

(declare-fun res!824825 () Bool)

(assert (=> b!1236735 (=> (not res!824825) (not e!700942))))

(assert (=> b!1236735 (= res!824825 (not (contains!7336 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236736 () Bool)

(declare-fun res!824824 () Bool)

(assert (=> b!1236736 (=> (not res!824824) (not e!700942))))

(declare-fun arrayNoDuplicates!0 (array!79732 (_ BitVec 32) List!27421) Bool)

(assert (=> b!1236736 (= res!824824 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236737 () Bool)

(declare-fun res!824827 () Bool)

(assert (=> b!1236737 (=> (not res!824827) (not e!700942))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1236737 (= res!824827 (contains!7336 acc!846 k0!2925))))

(declare-fun b!1236738 () Bool)

(declare-fun res!824826 () Bool)

(assert (=> b!1236738 (=> (not res!824826) (not e!700942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236738 (= res!824826 (validKeyInArray!0 (select (arr!38470 a!3835) from!3213)))))

(declare-fun res!824831 () Bool)

(assert (=> start!102946 (=> (not res!824831) (not e!700942))))

(assert (=> start!102946 (= res!824831 (and (bvslt (size!39007 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39007 a!3835))))))

(assert (=> start!102946 e!700942))

(declare-fun array_inv!29246 (array!79732) Bool)

(assert (=> start!102946 (array_inv!29246 a!3835)))

(assert (=> start!102946 true))

(declare-fun b!1236732 () Bool)

(declare-fun res!824829 () Bool)

(assert (=> b!1236732 (=> (not res!824829) (not e!700942))))

(declare-fun noDuplicate!1943 (List!27421) Bool)

(assert (=> b!1236732 (= res!824829 (noDuplicate!1943 acc!846))))

(assert (= (and start!102946 res!824831) b!1236732))

(assert (= (and b!1236732 res!824829) b!1236733))

(assert (= (and b!1236733 res!824828) b!1236735))

(assert (= (and b!1236735 res!824825) b!1236736))

(assert (= (and b!1236736 res!824824) b!1236737))

(assert (= (and b!1236737 res!824827) b!1236734))

(assert (= (and b!1236734 res!824830) b!1236738))

(assert (= (and b!1236738 res!824826) b!1236731))

(declare-fun m!1140533 () Bool)

(assert (=> b!1236738 m!1140533))

(assert (=> b!1236738 m!1140533))

(declare-fun m!1140535 () Bool)

(assert (=> b!1236738 m!1140535))

(declare-fun m!1140537 () Bool)

(assert (=> b!1236732 m!1140537))

(declare-fun m!1140539 () Bool)

(assert (=> b!1236737 m!1140539))

(declare-fun m!1140541 () Bool)

(assert (=> b!1236731 m!1140541))

(declare-fun m!1140543 () Bool)

(assert (=> b!1236731 m!1140543))

(declare-fun m!1140545 () Bool)

(assert (=> b!1236731 m!1140545))

(declare-fun m!1140547 () Bool)

(assert (=> b!1236731 m!1140547))

(assert (=> b!1236731 m!1140533))

(declare-fun m!1140549 () Bool)

(assert (=> b!1236736 m!1140549))

(declare-fun m!1140551 () Bool)

(assert (=> b!1236735 m!1140551))

(declare-fun m!1140553 () Bool)

(assert (=> b!1236733 m!1140553))

(declare-fun m!1140555 () Bool)

(assert (=> start!102946 m!1140555))

(check-sat (not b!1236731) (not start!102946) (not b!1236735) (not b!1236737) (not b!1236733) (not b!1236732) (not b!1236736) (not b!1236738))
(check-sat)
(get-model)

(declare-fun d!135443 () Bool)

(declare-fun lt!560845 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!588 (List!27421) (InoxSet (_ BitVec 64)))

(assert (=> d!135443 (= lt!560845 (select (content!588 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!700954 () Bool)

(assert (=> d!135443 (= lt!560845 e!700954)))

(declare-fun res!824861 () Bool)

(assert (=> d!135443 (=> (not res!824861) (not e!700954))))

(get-info :version)

(assert (=> d!135443 (= res!824861 ((_ is Cons!27417) acc!846))))

(assert (=> d!135443 (= (contains!7336 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!560845)))

(declare-fun b!1236767 () Bool)

(declare-fun e!700953 () Bool)

(assert (=> b!1236767 (= e!700954 e!700953)))

(declare-fun res!824860 () Bool)

(assert (=> b!1236767 (=> res!824860 e!700953)))

(assert (=> b!1236767 (= res!824860 (= (h!28626 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236768 () Bool)

(assert (=> b!1236768 (= e!700953 (contains!7336 (t!40891 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135443 res!824861) b!1236767))

(assert (= (and b!1236767 (not res!824860)) b!1236768))

(declare-fun m!1140581 () Bool)

(assert (=> d!135443 m!1140581))

(declare-fun m!1140583 () Bool)

(assert (=> d!135443 m!1140583))

(declare-fun m!1140585 () Bool)

(assert (=> b!1236768 m!1140585))

(assert (=> b!1236733 d!135443))

(declare-fun d!135445 () Bool)

(declare-fun lt!560846 () Bool)

(assert (=> d!135445 (= lt!560846 (select (content!588 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!700956 () Bool)

(assert (=> d!135445 (= lt!560846 e!700956)))

(declare-fun res!824863 () Bool)

(assert (=> d!135445 (=> (not res!824863) (not e!700956))))

(assert (=> d!135445 (= res!824863 ((_ is Cons!27417) acc!846))))

(assert (=> d!135445 (= (contains!7336 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!560846)))

(declare-fun b!1236769 () Bool)

(declare-fun e!700955 () Bool)

(assert (=> b!1236769 (= e!700956 e!700955)))

(declare-fun res!824862 () Bool)

(assert (=> b!1236769 (=> res!824862 e!700955)))

(assert (=> b!1236769 (= res!824862 (= (h!28626 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236770 () Bool)

(assert (=> b!1236770 (= e!700955 (contains!7336 (t!40891 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135445 res!824863) b!1236769))

(assert (= (and b!1236769 (not res!824862)) b!1236770))

(assert (=> d!135445 m!1140581))

(declare-fun m!1140587 () Bool)

(assert (=> d!135445 m!1140587))

(declare-fun m!1140589 () Bool)

(assert (=> b!1236770 m!1140589))

(assert (=> b!1236735 d!135445))

(declare-fun d!135447 () Bool)

(assert (=> d!135447 (= (array_inv!29246 a!3835) (bvsge (size!39007 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!102946 d!135447))

(declare-fun b!1236780 () Bool)

(declare-fun e!700967 () Bool)

(declare-fun e!700965 () Bool)

(assert (=> b!1236780 (= e!700967 e!700965)))

(declare-fun res!824874 () Bool)

(assert (=> b!1236780 (=> res!824874 e!700965)))

(declare-fun e!700968 () Bool)

(assert (=> b!1236780 (= res!824874 e!700968)))

(declare-fun res!824873 () Bool)

(assert (=> b!1236780 (=> (not res!824873) (not e!700968))))

(assert (=> b!1236780 (= res!824873 (= (h!28626 acc!846) (h!28626 lt!560831)))))

(declare-fun b!1236781 () Bool)

(assert (=> b!1236781 (= e!700968 (subseq!573 (t!40891 acc!846) (t!40891 lt!560831)))))

(declare-fun b!1236782 () Bool)

(assert (=> b!1236782 (= e!700965 (subseq!573 acc!846 (t!40891 lt!560831)))))

(declare-fun d!135449 () Bool)

(declare-fun res!824875 () Bool)

(declare-fun e!700966 () Bool)

(assert (=> d!135449 (=> res!824875 e!700966)))

(assert (=> d!135449 (= res!824875 ((_ is Nil!27418) acc!846))))

(assert (=> d!135449 (= (subseq!573 acc!846 lt!560831) e!700966)))

(declare-fun b!1236779 () Bool)

(assert (=> b!1236779 (= e!700966 e!700967)))

(declare-fun res!824872 () Bool)

(assert (=> b!1236779 (=> (not res!824872) (not e!700967))))

(assert (=> b!1236779 (= res!824872 ((_ is Cons!27417) lt!560831))))

(assert (= (and d!135449 (not res!824875)) b!1236779))

(assert (= (and b!1236779 res!824872) b!1236780))

(assert (= (and b!1236780 res!824873) b!1236781))

(assert (= (and b!1236780 (not res!824874)) b!1236782))

(declare-fun m!1140591 () Bool)

(assert (=> b!1236781 m!1140591))

(declare-fun m!1140593 () Bool)

(assert (=> b!1236782 m!1140593))

(assert (=> b!1236731 d!135449))

(declare-fun d!135455 () Bool)

(declare-fun tail!158 (List!27421) List!27421)

(assert (=> d!135455 (subseq!573 (tail!158 lt!560831) lt!560831)))

(declare-fun lt!560854 () Unit!40978)

(declare-fun e!701005 () Unit!40978)

(assert (=> d!135455 (= lt!560854 e!701005)))

(declare-fun c!120828 () Bool)

(assert (=> d!135455 (= c!120828 (and ((_ is Cons!27417) lt!560831) ((_ is Cons!27417) lt!560831)))))

(declare-fun e!701006 () Bool)

(assert (=> d!135455 e!701006))

(declare-fun res!824898 () Bool)

(assert (=> d!135455 (=> (not res!824898) (not e!701006))))

(declare-fun isEmpty!1009 (List!27421) Bool)

(assert (=> d!135455 (= res!824898 (not (isEmpty!1009 lt!560831)))))

(assert (=> d!135455 (= (subseqTail!60 lt!560831 lt!560831) lt!560854)))

(declare-fun b!1236829 () Bool)

(assert (=> b!1236829 (= e!701006 (subseq!573 lt!560831 lt!560831))))

(declare-fun b!1236830 () Bool)

(declare-fun Unit!40982 () Unit!40978)

(assert (=> b!1236830 (= e!701005 Unit!40982)))

(declare-fun b!1236831 () Bool)

(declare-fun e!701003 () Unit!40978)

(declare-fun call!60997 () Unit!40978)

(assert (=> b!1236831 (= e!701003 call!60997)))

(declare-fun b!1236832 () Bool)

(declare-fun Unit!40983 () Unit!40978)

(assert (=> b!1236832 (= e!701003 Unit!40983)))

(declare-fun bm!60994 () Bool)

(declare-fun c!120829 () Bool)

(assert (=> bm!60994 (= call!60997 (subseqTail!60 (ite c!120829 lt!560831 (t!40891 lt!560831)) (t!40891 lt!560831)))))

(declare-fun b!1236833 () Bool)

(declare-fun c!120830 () Bool)

(assert (=> b!1236833 (= c!120830 (not (isEmpty!1009 (t!40891 lt!560831))))))

(declare-fun e!701004 () Unit!40978)

(assert (=> b!1236833 (= e!701004 e!701003)))

(declare-fun b!1236834 () Bool)

(assert (=> b!1236834 (= e!701005 e!701004)))

(assert (=> b!1236834 (= c!120829 (subseq!573 lt!560831 (t!40891 lt!560831)))))

(declare-fun b!1236835 () Bool)

(assert (=> b!1236835 (= e!701004 call!60997)))

(assert (= (and d!135455 res!824898) b!1236829))

(assert (= (and d!135455 c!120828) b!1236834))

(assert (= (and d!135455 (not c!120828)) b!1236830))

(assert (= (and b!1236834 c!120829) b!1236835))

(assert (= (and b!1236834 (not c!120829)) b!1236833))

(assert (= (and b!1236833 c!120830) b!1236831))

(assert (= (and b!1236833 (not c!120830)) b!1236832))

(assert (= (or b!1236835 b!1236831) bm!60994))

(declare-fun m!1140605 () Bool)

(assert (=> d!135455 m!1140605))

(assert (=> d!135455 m!1140605))

(declare-fun m!1140607 () Bool)

(assert (=> d!135455 m!1140607))

(declare-fun m!1140609 () Bool)

(assert (=> d!135455 m!1140609))

(declare-fun m!1140611 () Bool)

(assert (=> bm!60994 m!1140611))

(assert (=> b!1236829 m!1140541))

(declare-fun m!1140613 () Bool)

(assert (=> b!1236833 m!1140613))

(declare-fun m!1140615 () Bool)

(assert (=> b!1236834 m!1140615))

(assert (=> b!1236731 d!135455))

(declare-fun b!1236837 () Bool)

(declare-fun e!701009 () Bool)

(declare-fun e!701007 () Bool)

(assert (=> b!1236837 (= e!701009 e!701007)))

(declare-fun res!824901 () Bool)

(assert (=> b!1236837 (=> res!824901 e!701007)))

(declare-fun e!701010 () Bool)

(assert (=> b!1236837 (= res!824901 e!701010)))

(declare-fun res!824900 () Bool)

(assert (=> b!1236837 (=> (not res!824900) (not e!701010))))

(assert (=> b!1236837 (= res!824900 (= (h!28626 lt!560831) (h!28626 lt!560831)))))

(declare-fun b!1236838 () Bool)

(assert (=> b!1236838 (= e!701010 (subseq!573 (t!40891 lt!560831) (t!40891 lt!560831)))))

(declare-fun b!1236839 () Bool)

(assert (=> b!1236839 (= e!701007 (subseq!573 lt!560831 (t!40891 lt!560831)))))

(declare-fun d!135465 () Bool)

(declare-fun res!824902 () Bool)

(declare-fun e!701008 () Bool)

(assert (=> d!135465 (=> res!824902 e!701008)))

(assert (=> d!135465 (= res!824902 ((_ is Nil!27418) lt!560831))))

(assert (=> d!135465 (= (subseq!573 lt!560831 lt!560831) e!701008)))

(declare-fun b!1236836 () Bool)

(assert (=> b!1236836 (= e!701008 e!701009)))

(declare-fun res!824899 () Bool)

(assert (=> b!1236836 (=> (not res!824899) (not e!701009))))

(assert (=> b!1236836 (= res!824899 ((_ is Cons!27417) lt!560831))))

(assert (= (and d!135465 (not res!824902)) b!1236836))

(assert (= (and b!1236836 res!824899) b!1236837))

(assert (= (and b!1236837 res!824900) b!1236838))

(assert (= (and b!1236837 (not res!824901)) b!1236839))

(declare-fun m!1140617 () Bool)

(assert (=> b!1236838 m!1140617))

(assert (=> b!1236839 m!1140615))

(assert (=> b!1236731 d!135465))

(declare-fun d!135467 () Bool)

(assert (=> d!135467 (subseq!573 lt!560831 lt!560831)))

(declare-fun lt!560857 () Unit!40978)

(declare-fun choose!36 (List!27421) Unit!40978)

(assert (=> d!135467 (= lt!560857 (choose!36 lt!560831))))

(assert (=> d!135467 (= (lemmaListSubSeqRefl!0 lt!560831) lt!560857)))

(declare-fun bs!34775 () Bool)

(assert (= bs!34775 d!135467))

(assert (=> bs!34775 m!1140541))

(declare-fun m!1140619 () Bool)

(assert (=> bs!34775 m!1140619))

(assert (=> b!1236731 d!135467))

(declare-fun b!1236890 () Bool)

(declare-fun e!701054 () Bool)

(declare-fun e!701056 () Bool)

(assert (=> b!1236890 (= e!701054 e!701056)))

(declare-fun c!120839 () Bool)

(assert (=> b!1236890 (= c!120839 (validKeyInArray!0 (select (arr!38470 a!3835) from!3213)))))

(declare-fun d!135469 () Bool)

(declare-fun res!824938 () Bool)

(declare-fun e!701055 () Bool)

(assert (=> d!135469 (=> res!824938 e!701055)))

(assert (=> d!135469 (= res!824938 (bvsge from!3213 (size!39007 a!3835)))))

(assert (=> d!135469 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701055)))

(declare-fun b!1236891 () Bool)

(declare-fun call!61004 () Bool)

(assert (=> b!1236891 (= e!701056 call!61004)))

(declare-fun e!701053 () Bool)

(declare-fun b!1236892 () Bool)

(assert (=> b!1236892 (= e!701053 (contains!7336 acc!846 (select (arr!38470 a!3835) from!3213)))))

(declare-fun b!1236893 () Bool)

(assert (=> b!1236893 (= e!701055 e!701054)))

(declare-fun res!824939 () Bool)

(assert (=> b!1236893 (=> (not res!824939) (not e!701054))))

(assert (=> b!1236893 (= res!824939 (not e!701053))))

(declare-fun res!824937 () Bool)

(assert (=> b!1236893 (=> (not res!824937) (not e!701053))))

(assert (=> b!1236893 (= res!824937 (validKeyInArray!0 (select (arr!38470 a!3835) from!3213)))))

(declare-fun b!1236894 () Bool)

(assert (=> b!1236894 (= e!701056 call!61004)))

(declare-fun bm!61001 () Bool)

(assert (=> bm!61001 (= call!61004 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120839 (Cons!27417 (select (arr!38470 a!3835) from!3213) acc!846) acc!846)))))

(assert (= (and d!135469 (not res!824938)) b!1236893))

(assert (= (and b!1236893 res!824937) b!1236892))

(assert (= (and b!1236893 res!824939) b!1236890))

(assert (= (and b!1236890 c!120839) b!1236894))

(assert (= (and b!1236890 (not c!120839)) b!1236891))

(assert (= (or b!1236894 b!1236891) bm!61001))

(assert (=> b!1236890 m!1140533))

(assert (=> b!1236890 m!1140533))

(assert (=> b!1236890 m!1140535))

(assert (=> b!1236892 m!1140533))

(assert (=> b!1236892 m!1140533))

(declare-fun m!1140653 () Bool)

(assert (=> b!1236892 m!1140653))

(assert (=> b!1236893 m!1140533))

(assert (=> b!1236893 m!1140533))

(assert (=> b!1236893 m!1140535))

(assert (=> bm!61001 m!1140533))

(declare-fun m!1140661 () Bool)

(assert (=> bm!61001 m!1140661))

(assert (=> b!1236736 d!135469))

(declare-fun d!135489 () Bool)

(assert (=> d!135489 (= (validKeyInArray!0 (select (arr!38470 a!3835) from!3213)) (and (not (= (select (arr!38470 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38470 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1236738 d!135489))

(declare-fun d!135491 () Bool)

(declare-fun res!824964 () Bool)

(declare-fun e!701081 () Bool)

(assert (=> d!135491 (=> res!824964 e!701081)))

(assert (=> d!135491 (= res!824964 ((_ is Nil!27418) acc!846))))

(assert (=> d!135491 (= (noDuplicate!1943 acc!846) e!701081)))

(declare-fun b!1236921 () Bool)

(declare-fun e!701082 () Bool)

(assert (=> b!1236921 (= e!701081 e!701082)))

(declare-fun res!824965 () Bool)

(assert (=> b!1236921 (=> (not res!824965) (not e!701082))))

(assert (=> b!1236921 (= res!824965 (not (contains!7336 (t!40891 acc!846) (h!28626 acc!846))))))

(declare-fun b!1236922 () Bool)

(assert (=> b!1236922 (= e!701082 (noDuplicate!1943 (t!40891 acc!846)))))

(assert (= (and d!135491 (not res!824964)) b!1236921))

(assert (= (and b!1236921 res!824965) b!1236922))

(declare-fun m!1140663 () Bool)

(assert (=> b!1236921 m!1140663))

(declare-fun m!1140665 () Bool)

(assert (=> b!1236922 m!1140665))

(assert (=> b!1236732 d!135491))

(declare-fun d!135493 () Bool)

(declare-fun lt!560867 () Bool)

(assert (=> d!135493 (= lt!560867 (select (content!588 acc!846) k0!2925))))

(declare-fun e!701086 () Bool)

(assert (=> d!135493 (= lt!560867 e!701086)))

(declare-fun res!824967 () Bool)

(assert (=> d!135493 (=> (not res!824967) (not e!701086))))

(assert (=> d!135493 (= res!824967 ((_ is Cons!27417) acc!846))))

(assert (=> d!135493 (= (contains!7336 acc!846 k0!2925) lt!560867)))

(declare-fun b!1236925 () Bool)

(declare-fun e!701085 () Bool)

(assert (=> b!1236925 (= e!701086 e!701085)))

(declare-fun res!824966 () Bool)

(assert (=> b!1236925 (=> res!824966 e!701085)))

(assert (=> b!1236925 (= res!824966 (= (h!28626 acc!846) k0!2925))))

(declare-fun b!1236926 () Bool)

(assert (=> b!1236926 (= e!701085 (contains!7336 (t!40891 acc!846) k0!2925))))

(assert (= (and d!135493 res!824967) b!1236925))

(assert (= (and b!1236925 (not res!824966)) b!1236926))

(assert (=> d!135493 m!1140581))

(declare-fun m!1140671 () Bool)

(assert (=> d!135493 m!1140671))

(declare-fun m!1140673 () Bool)

(assert (=> b!1236926 m!1140673))

(assert (=> b!1236737 d!135493))

(check-sat (not b!1236833) (not bm!61001) (not b!1236770) (not b!1236892) (not d!135445) (not b!1236922) (not b!1236781) (not b!1236834) (not d!135455) (not b!1236768) (not b!1236838) (not d!135493) (not bm!60994) (not b!1236782) (not b!1236926) (not b!1236893) (not b!1236839) (not b!1236921) (not d!135443) (not d!135467) (not b!1236890) (not b!1236829))
(check-sat)
(get-model)

(declare-fun d!135509 () Bool)

(declare-fun lt!560876 () Bool)

(assert (=> d!135509 (= lt!560876 (select (content!588 (t!40891 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701118 () Bool)

(assert (=> d!135509 (= lt!560876 e!701118)))

(declare-fun res!824989 () Bool)

(assert (=> d!135509 (=> (not res!824989) (not e!701118))))

(assert (=> d!135509 (= res!824989 ((_ is Cons!27417) (t!40891 acc!846)))))

(assert (=> d!135509 (= (contains!7336 (t!40891 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000) lt!560876)))

(declare-fun b!1236967 () Bool)

(declare-fun e!701117 () Bool)

(assert (=> b!1236967 (= e!701118 e!701117)))

(declare-fun res!824988 () Bool)

(assert (=> b!1236967 (=> res!824988 e!701117)))

(assert (=> b!1236967 (= res!824988 (= (h!28626 (t!40891 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236968 () Bool)

(assert (=> b!1236968 (= e!701117 (contains!7336 (t!40891 (t!40891 acc!846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135509 res!824989) b!1236967))

(assert (= (and b!1236967 (not res!824988)) b!1236968))

(declare-fun m!1140707 () Bool)

(assert (=> d!135509 m!1140707))

(declare-fun m!1140709 () Bool)

(assert (=> d!135509 m!1140709))

(declare-fun m!1140711 () Bool)

(assert (=> b!1236968 m!1140711))

(assert (=> b!1236768 d!135509))

(assert (=> b!1236829 d!135465))

(declare-fun b!1236970 () Bool)

(declare-fun e!701121 () Bool)

(declare-fun e!701119 () Bool)

(assert (=> b!1236970 (= e!701121 e!701119)))

(declare-fun res!824992 () Bool)

(assert (=> b!1236970 (=> res!824992 e!701119)))

(declare-fun e!701122 () Bool)

(assert (=> b!1236970 (= res!824992 e!701122)))

(declare-fun res!824991 () Bool)

(assert (=> b!1236970 (=> (not res!824991) (not e!701122))))

(assert (=> b!1236970 (= res!824991 (= (h!28626 (t!40891 lt!560831)) (h!28626 (t!40891 lt!560831))))))

(declare-fun b!1236971 () Bool)

(assert (=> b!1236971 (= e!701122 (subseq!573 (t!40891 (t!40891 lt!560831)) (t!40891 (t!40891 lt!560831))))))

(declare-fun b!1236972 () Bool)

(assert (=> b!1236972 (= e!701119 (subseq!573 (t!40891 lt!560831) (t!40891 (t!40891 lt!560831))))))

(declare-fun d!135511 () Bool)

(declare-fun res!824993 () Bool)

(declare-fun e!701120 () Bool)

(assert (=> d!135511 (=> res!824993 e!701120)))

(assert (=> d!135511 (= res!824993 ((_ is Nil!27418) (t!40891 lt!560831)))))

(assert (=> d!135511 (= (subseq!573 (t!40891 lt!560831) (t!40891 lt!560831)) e!701120)))

(declare-fun b!1236969 () Bool)

(assert (=> b!1236969 (= e!701120 e!701121)))

(declare-fun res!824990 () Bool)

(assert (=> b!1236969 (=> (not res!824990) (not e!701121))))

(assert (=> b!1236969 (= res!824990 ((_ is Cons!27417) (t!40891 lt!560831)))))

(assert (= (and d!135511 (not res!824993)) b!1236969))

(assert (= (and b!1236969 res!824990) b!1236970))

(assert (= (and b!1236970 res!824991) b!1236971))

(assert (= (and b!1236970 (not res!824992)) b!1236972))

(declare-fun m!1140713 () Bool)

(assert (=> b!1236971 m!1140713))

(declare-fun m!1140715 () Bool)

(assert (=> b!1236972 m!1140715))

(assert (=> b!1236838 d!135511))

(assert (=> d!135467 d!135465))

(declare-fun d!135513 () Bool)

(assert (=> d!135513 (subseq!573 lt!560831 lt!560831)))

(assert (=> d!135513 true))

(declare-fun _$69!47 () Unit!40978)

(assert (=> d!135513 (= (choose!36 lt!560831) _$69!47)))

(declare-fun bs!34778 () Bool)

(assert (= bs!34778 d!135513))

(assert (=> bs!34778 m!1140541))

(assert (=> d!135467 d!135513))

(declare-fun b!1236974 () Bool)

(declare-fun e!701125 () Bool)

(declare-fun e!701123 () Bool)

(assert (=> b!1236974 (= e!701125 e!701123)))

(declare-fun res!824996 () Bool)

(assert (=> b!1236974 (=> res!824996 e!701123)))

(declare-fun e!701126 () Bool)

(assert (=> b!1236974 (= res!824996 e!701126)))

(declare-fun res!824995 () Bool)

(assert (=> b!1236974 (=> (not res!824995) (not e!701126))))

(assert (=> b!1236974 (= res!824995 (= (h!28626 lt!560831) (h!28626 (t!40891 lt!560831))))))

(declare-fun b!1236975 () Bool)

(assert (=> b!1236975 (= e!701126 (subseq!573 (t!40891 lt!560831) (t!40891 (t!40891 lt!560831))))))

(declare-fun b!1236976 () Bool)

(assert (=> b!1236976 (= e!701123 (subseq!573 lt!560831 (t!40891 (t!40891 lt!560831))))))

(declare-fun d!135515 () Bool)

(declare-fun res!824997 () Bool)

(declare-fun e!701124 () Bool)

(assert (=> d!135515 (=> res!824997 e!701124)))

(assert (=> d!135515 (= res!824997 ((_ is Nil!27418) lt!560831))))

(assert (=> d!135515 (= (subseq!573 lt!560831 (t!40891 lt!560831)) e!701124)))

(declare-fun b!1236973 () Bool)

(assert (=> b!1236973 (= e!701124 e!701125)))

(declare-fun res!824994 () Bool)

(assert (=> b!1236973 (=> (not res!824994) (not e!701125))))

(assert (=> b!1236973 (= res!824994 ((_ is Cons!27417) (t!40891 lt!560831)))))

(assert (= (and d!135515 (not res!824997)) b!1236973))

(assert (= (and b!1236973 res!824994) b!1236974))

(assert (= (and b!1236974 res!824995) b!1236975))

(assert (= (and b!1236974 (not res!824996)) b!1236976))

(assert (=> b!1236975 m!1140715))

(declare-fun m!1140717 () Bool)

(assert (=> b!1236976 m!1140717))

(assert (=> b!1236839 d!135515))

(assert (=> b!1236890 d!135489))

(declare-fun d!135517 () Bool)

(declare-fun c!120854 () Bool)

(assert (=> d!135517 (= c!120854 ((_ is Nil!27418) acc!846))))

(declare-fun e!701129 () (InoxSet (_ BitVec 64)))

(assert (=> d!135517 (= (content!588 acc!846) e!701129)))

(declare-fun b!1236981 () Bool)

(assert (=> b!1236981 (= e!701129 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1236982 () Bool)

(assert (=> b!1236982 (= e!701129 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28626 acc!846) true) (content!588 (t!40891 acc!846))))))

(assert (= (and d!135517 c!120854) b!1236981))

(assert (= (and d!135517 (not c!120854)) b!1236982))

(declare-fun m!1140719 () Bool)

(assert (=> b!1236982 m!1140719))

(assert (=> b!1236982 m!1140707))

(assert (=> d!135445 d!135517))

(declare-fun b!1236984 () Bool)

(declare-fun e!701132 () Bool)

(declare-fun e!701130 () Bool)

(assert (=> b!1236984 (= e!701132 e!701130)))

(declare-fun res!825000 () Bool)

(assert (=> b!1236984 (=> res!825000 e!701130)))

(declare-fun e!701133 () Bool)

(assert (=> b!1236984 (= res!825000 e!701133)))

(declare-fun res!824999 () Bool)

(assert (=> b!1236984 (=> (not res!824999) (not e!701133))))

(assert (=> b!1236984 (= res!824999 (= (h!28626 (t!40891 acc!846)) (h!28626 (t!40891 lt!560831))))))

(declare-fun b!1236985 () Bool)

(assert (=> b!1236985 (= e!701133 (subseq!573 (t!40891 (t!40891 acc!846)) (t!40891 (t!40891 lt!560831))))))

(declare-fun b!1236986 () Bool)

(assert (=> b!1236986 (= e!701130 (subseq!573 (t!40891 acc!846) (t!40891 (t!40891 lt!560831))))))

(declare-fun d!135519 () Bool)

(declare-fun res!825001 () Bool)

(declare-fun e!701131 () Bool)

(assert (=> d!135519 (=> res!825001 e!701131)))

(assert (=> d!135519 (= res!825001 ((_ is Nil!27418) (t!40891 acc!846)))))

(assert (=> d!135519 (= (subseq!573 (t!40891 acc!846) (t!40891 lt!560831)) e!701131)))

(declare-fun b!1236983 () Bool)

(assert (=> b!1236983 (= e!701131 e!701132)))

(declare-fun res!824998 () Bool)

(assert (=> b!1236983 (=> (not res!824998) (not e!701132))))

(assert (=> b!1236983 (= res!824998 ((_ is Cons!27417) (t!40891 lt!560831)))))

(assert (= (and d!135519 (not res!825001)) b!1236983))

(assert (= (and b!1236983 res!824998) b!1236984))

(assert (= (and b!1236984 res!824999) b!1236985))

(assert (= (and b!1236984 (not res!825000)) b!1236986))

(declare-fun m!1140721 () Bool)

(assert (=> b!1236985 m!1140721))

(declare-fun m!1140723 () Bool)

(assert (=> b!1236986 m!1140723))

(assert (=> b!1236781 d!135519))

(declare-fun d!135521 () Bool)

(declare-fun lt!560877 () Bool)

(assert (=> d!135521 (= lt!560877 (select (content!588 (t!40891 acc!846)) k0!2925))))

(declare-fun e!701135 () Bool)

(assert (=> d!135521 (= lt!560877 e!701135)))

(declare-fun res!825003 () Bool)

(assert (=> d!135521 (=> (not res!825003) (not e!701135))))

(assert (=> d!135521 (= res!825003 ((_ is Cons!27417) (t!40891 acc!846)))))

(assert (=> d!135521 (= (contains!7336 (t!40891 acc!846) k0!2925) lt!560877)))

(declare-fun b!1236987 () Bool)

(declare-fun e!701134 () Bool)

(assert (=> b!1236987 (= e!701135 e!701134)))

(declare-fun res!825002 () Bool)

(assert (=> b!1236987 (=> res!825002 e!701134)))

(assert (=> b!1236987 (= res!825002 (= (h!28626 (t!40891 acc!846)) k0!2925))))

(declare-fun b!1236988 () Bool)

(assert (=> b!1236988 (= e!701134 (contains!7336 (t!40891 (t!40891 acc!846)) k0!2925))))

(assert (= (and d!135521 res!825003) b!1236987))

(assert (= (and b!1236987 (not res!825002)) b!1236988))

(assert (=> d!135521 m!1140707))

(declare-fun m!1140725 () Bool)

(assert (=> d!135521 m!1140725))

(declare-fun m!1140727 () Bool)

(assert (=> b!1236988 m!1140727))

(assert (=> b!1236926 d!135521))

(assert (=> d!135493 d!135517))

(assert (=> d!135443 d!135517))

(declare-fun b!1236990 () Bool)

(declare-fun e!701138 () Bool)

(declare-fun e!701136 () Bool)

(assert (=> b!1236990 (= e!701138 e!701136)))

(declare-fun res!825006 () Bool)

(assert (=> b!1236990 (=> res!825006 e!701136)))

(declare-fun e!701139 () Bool)

(assert (=> b!1236990 (= res!825006 e!701139)))

(declare-fun res!825005 () Bool)

(assert (=> b!1236990 (=> (not res!825005) (not e!701139))))

(assert (=> b!1236990 (= res!825005 (= (h!28626 acc!846) (h!28626 (t!40891 lt!560831))))))

(declare-fun b!1236991 () Bool)

(assert (=> b!1236991 (= e!701139 (subseq!573 (t!40891 acc!846) (t!40891 (t!40891 lt!560831))))))

(declare-fun b!1236992 () Bool)

(assert (=> b!1236992 (= e!701136 (subseq!573 acc!846 (t!40891 (t!40891 lt!560831))))))

(declare-fun d!135523 () Bool)

(declare-fun res!825007 () Bool)

(declare-fun e!701137 () Bool)

(assert (=> d!135523 (=> res!825007 e!701137)))

(assert (=> d!135523 (= res!825007 ((_ is Nil!27418) acc!846))))

(assert (=> d!135523 (= (subseq!573 acc!846 (t!40891 lt!560831)) e!701137)))

(declare-fun b!1236989 () Bool)

(assert (=> b!1236989 (= e!701137 e!701138)))

(declare-fun res!825004 () Bool)

(assert (=> b!1236989 (=> (not res!825004) (not e!701138))))

(assert (=> b!1236989 (= res!825004 ((_ is Cons!27417) (t!40891 lt!560831)))))

(assert (= (and d!135523 (not res!825007)) b!1236989))

(assert (= (and b!1236989 res!825004) b!1236990))

(assert (= (and b!1236990 res!825005) b!1236991))

(assert (= (and b!1236990 (not res!825006)) b!1236992))

(assert (=> b!1236991 m!1140723))

(declare-fun m!1140729 () Bool)

(assert (=> b!1236992 m!1140729))

(assert (=> b!1236782 d!135523))

(declare-fun d!135525 () Bool)

(declare-fun lt!560878 () Bool)

(assert (=> d!135525 (= lt!560878 (select (content!588 (t!40891 acc!846)) (h!28626 acc!846)))))

(declare-fun e!701141 () Bool)

(assert (=> d!135525 (= lt!560878 e!701141)))

(declare-fun res!825009 () Bool)

(assert (=> d!135525 (=> (not res!825009) (not e!701141))))

(assert (=> d!135525 (= res!825009 ((_ is Cons!27417) (t!40891 acc!846)))))

(assert (=> d!135525 (= (contains!7336 (t!40891 acc!846) (h!28626 acc!846)) lt!560878)))

(declare-fun b!1236993 () Bool)

(declare-fun e!701140 () Bool)

(assert (=> b!1236993 (= e!701141 e!701140)))

(declare-fun res!825008 () Bool)

(assert (=> b!1236993 (=> res!825008 e!701140)))

(assert (=> b!1236993 (= res!825008 (= (h!28626 (t!40891 acc!846)) (h!28626 acc!846)))))

(declare-fun b!1236994 () Bool)

(assert (=> b!1236994 (= e!701140 (contains!7336 (t!40891 (t!40891 acc!846)) (h!28626 acc!846)))))

(assert (= (and d!135525 res!825009) b!1236993))

(assert (= (and b!1236993 (not res!825008)) b!1236994))

(assert (=> d!135525 m!1140707))

(declare-fun m!1140731 () Bool)

(assert (=> d!135525 m!1140731))

(declare-fun m!1140733 () Bool)

(assert (=> b!1236994 m!1140733))

(assert (=> b!1236921 d!135525))

(declare-fun d!135527 () Bool)

(assert (=> d!135527 (= (isEmpty!1009 (t!40891 lt!560831)) ((_ is Nil!27418) (t!40891 lt!560831)))))

(assert (=> b!1236833 d!135527))

(declare-fun d!135529 () Bool)

(declare-fun lt!560879 () Bool)

(assert (=> d!135529 (= lt!560879 (select (content!588 (t!40891 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701143 () Bool)

(assert (=> d!135529 (= lt!560879 e!701143)))

(declare-fun res!825011 () Bool)

(assert (=> d!135529 (=> (not res!825011) (not e!701143))))

(assert (=> d!135529 (= res!825011 ((_ is Cons!27417) (t!40891 acc!846)))))

(assert (=> d!135529 (= (contains!7336 (t!40891 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000) lt!560879)))

(declare-fun b!1236995 () Bool)

(declare-fun e!701142 () Bool)

(assert (=> b!1236995 (= e!701143 e!701142)))

(declare-fun res!825010 () Bool)

(assert (=> b!1236995 (=> res!825010 e!701142)))

(assert (=> b!1236995 (= res!825010 (= (h!28626 (t!40891 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236996 () Bool)

(assert (=> b!1236996 (= e!701142 (contains!7336 (t!40891 (t!40891 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135529 res!825011) b!1236995))

(assert (= (and b!1236995 (not res!825010)) b!1236996))

(assert (=> d!135529 m!1140707))

(declare-fun m!1140735 () Bool)

(assert (=> d!135529 m!1140735))

(declare-fun m!1140737 () Bool)

(assert (=> b!1236996 m!1140737))

(assert (=> b!1236770 d!135529))

(declare-fun b!1236998 () Bool)

(declare-fun e!701146 () Bool)

(declare-fun e!701144 () Bool)

(assert (=> b!1236998 (= e!701146 e!701144)))

(declare-fun res!825014 () Bool)

(assert (=> b!1236998 (=> res!825014 e!701144)))

(declare-fun e!701147 () Bool)

(assert (=> b!1236998 (= res!825014 e!701147)))

(declare-fun res!825013 () Bool)

(assert (=> b!1236998 (=> (not res!825013) (not e!701147))))

(assert (=> b!1236998 (= res!825013 (= (h!28626 (tail!158 lt!560831)) (h!28626 lt!560831)))))

(declare-fun b!1236999 () Bool)

(assert (=> b!1236999 (= e!701147 (subseq!573 (t!40891 (tail!158 lt!560831)) (t!40891 lt!560831)))))

(declare-fun b!1237000 () Bool)

(assert (=> b!1237000 (= e!701144 (subseq!573 (tail!158 lt!560831) (t!40891 lt!560831)))))

(declare-fun d!135531 () Bool)

(declare-fun res!825015 () Bool)

(declare-fun e!701145 () Bool)

(assert (=> d!135531 (=> res!825015 e!701145)))

(assert (=> d!135531 (= res!825015 ((_ is Nil!27418) (tail!158 lt!560831)))))

(assert (=> d!135531 (= (subseq!573 (tail!158 lt!560831) lt!560831) e!701145)))

(declare-fun b!1236997 () Bool)

(assert (=> b!1236997 (= e!701145 e!701146)))

(declare-fun res!825012 () Bool)

(assert (=> b!1236997 (=> (not res!825012) (not e!701146))))

(assert (=> b!1236997 (= res!825012 ((_ is Cons!27417) lt!560831))))

(assert (= (and d!135531 (not res!825015)) b!1236997))

(assert (= (and b!1236997 res!825012) b!1236998))

(assert (= (and b!1236998 res!825013) b!1236999))

(assert (= (and b!1236998 (not res!825014)) b!1237000))

(declare-fun m!1140739 () Bool)

(assert (=> b!1236999 m!1140739))

(assert (=> b!1237000 m!1140605))

(declare-fun m!1140741 () Bool)

(assert (=> b!1237000 m!1140741))

(assert (=> d!135455 d!135531))

(declare-fun d!135533 () Bool)

(assert (=> d!135533 (= (tail!158 lt!560831) (t!40891 lt!560831))))

(assert (=> d!135455 d!135533))

(declare-fun d!135535 () Bool)

(assert (=> d!135535 (= (isEmpty!1009 lt!560831) ((_ is Nil!27418) lt!560831))))

(assert (=> d!135455 d!135535))

(declare-fun d!135537 () Bool)

(declare-fun res!825016 () Bool)

(declare-fun e!701148 () Bool)

(assert (=> d!135537 (=> res!825016 e!701148)))

(assert (=> d!135537 (= res!825016 ((_ is Nil!27418) (t!40891 acc!846)))))

(assert (=> d!135537 (= (noDuplicate!1943 (t!40891 acc!846)) e!701148)))

(declare-fun b!1237001 () Bool)

(declare-fun e!701149 () Bool)

(assert (=> b!1237001 (= e!701148 e!701149)))

(declare-fun res!825017 () Bool)

(assert (=> b!1237001 (=> (not res!825017) (not e!701149))))

(assert (=> b!1237001 (= res!825017 (not (contains!7336 (t!40891 (t!40891 acc!846)) (h!28626 (t!40891 acc!846)))))))

(declare-fun b!1237002 () Bool)

(assert (=> b!1237002 (= e!701149 (noDuplicate!1943 (t!40891 (t!40891 acc!846))))))

(assert (= (and d!135537 (not res!825016)) b!1237001))

(assert (= (and b!1237001 res!825017) b!1237002))

(declare-fun m!1140743 () Bool)

(assert (=> b!1237001 m!1140743))

(declare-fun m!1140745 () Bool)

(assert (=> b!1237002 m!1140745))

(assert (=> b!1236922 d!135537))

(assert (=> b!1236834 d!135515))

(declare-fun b!1237003 () Bool)

(declare-fun e!701151 () Bool)

(declare-fun e!701153 () Bool)

(assert (=> b!1237003 (= e!701151 e!701153)))

(declare-fun c!120855 () Bool)

(assert (=> b!1237003 (= c!120855 (validKeyInArray!0 (select (arr!38470 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun d!135539 () Bool)

(declare-fun res!825019 () Bool)

(declare-fun e!701152 () Bool)

(assert (=> d!135539 (=> res!825019 e!701152)))

(assert (=> d!135539 (= res!825019 (bvsge (bvadd from!3213 #b00000000000000000000000000000001) (size!39007 a!3835)))))

(assert (=> d!135539 (= (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120839 (Cons!27417 (select (arr!38470 a!3835) from!3213) acc!846) acc!846)) e!701152)))

(declare-fun b!1237004 () Bool)

(declare-fun call!61011 () Bool)

(assert (=> b!1237004 (= e!701153 call!61011)))

(declare-fun b!1237005 () Bool)

(declare-fun e!701150 () Bool)

(assert (=> b!1237005 (= e!701150 (contains!7336 (ite c!120839 (Cons!27417 (select (arr!38470 a!3835) from!3213) acc!846) acc!846) (select (arr!38470 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun b!1237006 () Bool)

(assert (=> b!1237006 (= e!701152 e!701151)))

(declare-fun res!825020 () Bool)

(assert (=> b!1237006 (=> (not res!825020) (not e!701151))))

(assert (=> b!1237006 (= res!825020 (not e!701150))))

(declare-fun res!825018 () Bool)

(assert (=> b!1237006 (=> (not res!825018) (not e!701150))))

(assert (=> b!1237006 (= res!825018 (validKeyInArray!0 (select (arr!38470 a!3835) (bvadd from!3213 #b00000000000000000000000000000001))))))

(declare-fun b!1237007 () Bool)

(assert (=> b!1237007 (= e!701153 call!61011)))

(declare-fun bm!61008 () Bool)

(assert (=> bm!61008 (= call!61011 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120855 (Cons!27417 (select (arr!38470 a!3835) (bvadd from!3213 #b00000000000000000000000000000001)) (ite c!120839 (Cons!27417 (select (arr!38470 a!3835) from!3213) acc!846) acc!846)) (ite c!120839 (Cons!27417 (select (arr!38470 a!3835) from!3213) acc!846) acc!846))))))

(assert (= (and d!135539 (not res!825019)) b!1237006))

(assert (= (and b!1237006 res!825018) b!1237005))

(assert (= (and b!1237006 res!825020) b!1237003))

(assert (= (and b!1237003 c!120855) b!1237007))

(assert (= (and b!1237003 (not c!120855)) b!1237004))

(assert (= (or b!1237007 b!1237004) bm!61008))

(declare-fun m!1140747 () Bool)

(assert (=> b!1237003 m!1140747))

(assert (=> b!1237003 m!1140747))

(declare-fun m!1140749 () Bool)

(assert (=> b!1237003 m!1140749))

(assert (=> b!1237005 m!1140747))

(assert (=> b!1237005 m!1140747))

(declare-fun m!1140751 () Bool)

(assert (=> b!1237005 m!1140751))

(assert (=> b!1237006 m!1140747))

(assert (=> b!1237006 m!1140747))

(assert (=> b!1237006 m!1140749))

(assert (=> bm!61008 m!1140747))

(declare-fun m!1140753 () Bool)

(assert (=> bm!61008 m!1140753))

(assert (=> bm!61001 d!135539))

(declare-fun d!135541 () Bool)

(declare-fun lt!560880 () Bool)

(assert (=> d!135541 (= lt!560880 (select (content!588 acc!846) (select (arr!38470 a!3835) from!3213)))))

(declare-fun e!701155 () Bool)

(assert (=> d!135541 (= lt!560880 e!701155)))

(declare-fun res!825022 () Bool)

(assert (=> d!135541 (=> (not res!825022) (not e!701155))))

(assert (=> d!135541 (= res!825022 ((_ is Cons!27417) acc!846))))

(assert (=> d!135541 (= (contains!7336 acc!846 (select (arr!38470 a!3835) from!3213)) lt!560880)))

(declare-fun b!1237008 () Bool)

(declare-fun e!701154 () Bool)

(assert (=> b!1237008 (= e!701155 e!701154)))

(declare-fun res!825021 () Bool)

(assert (=> b!1237008 (=> res!825021 e!701154)))

(assert (=> b!1237008 (= res!825021 (= (h!28626 acc!846) (select (arr!38470 a!3835) from!3213)))))

(declare-fun b!1237009 () Bool)

(assert (=> b!1237009 (= e!701154 (contains!7336 (t!40891 acc!846) (select (arr!38470 a!3835) from!3213)))))

(assert (= (and d!135541 res!825022) b!1237008))

(assert (= (and b!1237008 (not res!825021)) b!1237009))

(assert (=> d!135541 m!1140581))

(assert (=> d!135541 m!1140533))

(declare-fun m!1140755 () Bool)

(assert (=> d!135541 m!1140755))

(assert (=> b!1237009 m!1140533))

(declare-fun m!1140757 () Bool)

(assert (=> b!1237009 m!1140757))

(assert (=> b!1236892 d!135541))

(declare-fun d!135543 () Bool)

(assert (=> d!135543 (subseq!573 (tail!158 (ite c!120829 lt!560831 (t!40891 lt!560831))) (t!40891 lt!560831))))

(declare-fun lt!560881 () Unit!40978)

(declare-fun e!701158 () Unit!40978)

(assert (=> d!135543 (= lt!560881 e!701158)))

(declare-fun c!120856 () Bool)

(assert (=> d!135543 (= c!120856 (and ((_ is Cons!27417) (ite c!120829 lt!560831 (t!40891 lt!560831))) ((_ is Cons!27417) (t!40891 lt!560831))))))

(declare-fun e!701159 () Bool)

(assert (=> d!135543 e!701159))

(declare-fun res!825023 () Bool)

(assert (=> d!135543 (=> (not res!825023) (not e!701159))))

(assert (=> d!135543 (= res!825023 (not (isEmpty!1009 (ite c!120829 lt!560831 (t!40891 lt!560831)))))))

(assert (=> d!135543 (= (subseqTail!60 (ite c!120829 lt!560831 (t!40891 lt!560831)) (t!40891 lt!560831)) lt!560881)))

(declare-fun b!1237010 () Bool)

(assert (=> b!1237010 (= e!701159 (subseq!573 (ite c!120829 lt!560831 (t!40891 lt!560831)) (t!40891 lt!560831)))))

(declare-fun b!1237011 () Bool)

(declare-fun Unit!40988 () Unit!40978)

(assert (=> b!1237011 (= e!701158 Unit!40988)))

(declare-fun b!1237012 () Bool)

(declare-fun e!701156 () Unit!40978)

(declare-fun call!61012 () Unit!40978)

(assert (=> b!1237012 (= e!701156 call!61012)))

(declare-fun b!1237013 () Bool)

(declare-fun Unit!40989 () Unit!40978)

(assert (=> b!1237013 (= e!701156 Unit!40989)))

(declare-fun c!120857 () Bool)

(declare-fun bm!61009 () Bool)

(assert (=> bm!61009 (= call!61012 (subseqTail!60 (ite c!120857 (ite c!120829 lt!560831 (t!40891 lt!560831)) (t!40891 (ite c!120829 lt!560831 (t!40891 lt!560831)))) (t!40891 (t!40891 lt!560831))))))

(declare-fun b!1237014 () Bool)

(declare-fun c!120858 () Bool)

(assert (=> b!1237014 (= c!120858 (not (isEmpty!1009 (t!40891 (ite c!120829 lt!560831 (t!40891 lt!560831))))))))

(declare-fun e!701157 () Unit!40978)

(assert (=> b!1237014 (= e!701157 e!701156)))

(declare-fun b!1237015 () Bool)

(assert (=> b!1237015 (= e!701158 e!701157)))

(assert (=> b!1237015 (= c!120857 (subseq!573 (ite c!120829 lt!560831 (t!40891 lt!560831)) (t!40891 (t!40891 lt!560831))))))

(declare-fun b!1237016 () Bool)

(assert (=> b!1237016 (= e!701157 call!61012)))

(assert (= (and d!135543 res!825023) b!1237010))

(assert (= (and d!135543 c!120856) b!1237015))

(assert (= (and d!135543 (not c!120856)) b!1237011))

(assert (= (and b!1237015 c!120857) b!1237016))

(assert (= (and b!1237015 (not c!120857)) b!1237014))

(assert (= (and b!1237014 c!120858) b!1237012))

(assert (= (and b!1237014 (not c!120858)) b!1237013))

(assert (= (or b!1237016 b!1237012) bm!61009))

(declare-fun m!1140759 () Bool)

(assert (=> d!135543 m!1140759))

(assert (=> d!135543 m!1140759))

(declare-fun m!1140761 () Bool)

(assert (=> d!135543 m!1140761))

(declare-fun m!1140763 () Bool)

(assert (=> d!135543 m!1140763))

(declare-fun m!1140765 () Bool)

(assert (=> bm!61009 m!1140765))

(declare-fun m!1140767 () Bool)

(assert (=> b!1237010 m!1140767))

(declare-fun m!1140769 () Bool)

(assert (=> b!1237014 m!1140769))

(declare-fun m!1140771 () Bool)

(assert (=> b!1237015 m!1140771))

(assert (=> bm!60994 d!135543))

(assert (=> b!1236893 d!135489))

(check-sat (not b!1236976) (not bm!61008) (not b!1236996) (not b!1236999) (not d!135543) (not b!1237010) (not d!135541) (not b!1236991) (not b!1236992) (not b!1236968) (not b!1236975) (not b!1236982) (not b!1236994) (not b!1237002) (not bm!61009) (not b!1237009) (not d!135513) (not b!1237000) (not b!1236986) (not b!1237001) (not d!135525) (not b!1236972) (not d!135529) (not b!1237014) (not d!135509) (not b!1236985) (not b!1237003) (not b!1237015) (not d!135521) (not b!1237006) (not b!1236971) (not b!1237005) (not b!1236988))
(check-sat)
