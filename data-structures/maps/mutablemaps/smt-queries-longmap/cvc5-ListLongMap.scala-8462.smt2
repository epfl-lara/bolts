; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102944 () Bool)

(assert start!102944)

(declare-fun b!1236707 () Bool)

(declare-fun res!824800 () Bool)

(declare-fun e!700935 () Bool)

(assert (=> b!1236707 (=> (not res!824800) (not e!700935))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79730 0))(
  ( (array!79731 (arr!38469 (Array (_ BitVec 32) (_ BitVec 64))) (size!39006 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79730)

(assert (=> b!1236707 (= res!824800 (not (= from!3213 (bvsub (size!39006 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236708 () Bool)

(declare-fun res!824805 () Bool)

(assert (=> b!1236708 (=> (not res!824805) (not e!700935))))

(declare-datatypes ((List!27420 0))(
  ( (Nil!27417) (Cons!27416 (h!28625 (_ BitVec 64)) (t!40890 List!27420)) )
))
(declare-fun acc!846 () List!27420)

(declare-fun arrayNoDuplicates!0 (array!79730 (_ BitVec 32) List!27420) Bool)

(assert (=> b!1236708 (= res!824805 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236709 () Bool)

(declare-fun lt!560823 () List!27420)

(declare-fun subseq!572 (List!27420 List!27420) Bool)

(assert (=> b!1236709 (= e!700935 (not (subseq!572 acc!846 lt!560823)))))

(declare-datatypes ((Unit!40976 0))(
  ( (Unit!40977) )
))
(declare-fun lt!560822 () Unit!40976)

(declare-fun subseqTail!59 (List!27420 List!27420) Unit!40976)

(assert (=> b!1236709 (= lt!560822 (subseqTail!59 lt!560823 lt!560823))))

(assert (=> b!1236709 (subseq!572 lt!560823 lt!560823)))

(declare-fun lt!560824 () Unit!40976)

(declare-fun lemmaListSubSeqRefl!0 (List!27420) Unit!40976)

(assert (=> b!1236709 (= lt!560824 (lemmaListSubSeqRefl!0 lt!560823))))

(assert (=> b!1236709 (= lt!560823 (Cons!27416 (select (arr!38469 a!3835) from!3213) acc!846))))

(declare-fun b!1236710 () Bool)

(declare-fun res!824804 () Bool)

(assert (=> b!1236710 (=> (not res!824804) (not e!700935))))

(declare-fun noDuplicate!1942 (List!27420) Bool)

(assert (=> b!1236710 (= res!824804 (noDuplicate!1942 acc!846))))

(declare-fun b!1236711 () Bool)

(declare-fun res!824807 () Bool)

(assert (=> b!1236711 (=> (not res!824807) (not e!700935))))

(declare-fun contains!7335 (List!27420 (_ BitVec 64)) Bool)

(assert (=> b!1236711 (= res!824807 (not (contains!7335 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236712 () Bool)

(declare-fun res!824802 () Bool)

(assert (=> b!1236712 (=> (not res!824802) (not e!700935))))

(assert (=> b!1236712 (= res!824802 (not (contains!7335 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236713 () Bool)

(declare-fun res!824806 () Bool)

(assert (=> b!1236713 (=> (not res!824806) (not e!700935))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236713 (= res!824806 (contains!7335 acc!846 k!2925))))

(declare-fun res!824801 () Bool)

(assert (=> start!102944 (=> (not res!824801) (not e!700935))))

(assert (=> start!102944 (= res!824801 (and (bvslt (size!39006 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39006 a!3835))))))

(assert (=> start!102944 e!700935))

(declare-fun array_inv!29245 (array!79730) Bool)

(assert (=> start!102944 (array_inv!29245 a!3835)))

(assert (=> start!102944 true))

(declare-fun b!1236714 () Bool)

(declare-fun res!824803 () Bool)

(assert (=> b!1236714 (=> (not res!824803) (not e!700935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236714 (= res!824803 (validKeyInArray!0 (select (arr!38469 a!3835) from!3213)))))

(assert (= (and start!102944 res!824801) b!1236710))

(assert (= (and b!1236710 res!824804) b!1236712))

(assert (= (and b!1236712 res!824802) b!1236711))

(assert (= (and b!1236711 res!824807) b!1236708))

(assert (= (and b!1236708 res!824805) b!1236713))

(assert (= (and b!1236713 res!824806) b!1236707))

(assert (= (and b!1236707 res!824800) b!1236714))

(assert (= (and b!1236714 res!824803) b!1236709))

(declare-fun m!1140509 () Bool)

(assert (=> b!1236710 m!1140509))

(declare-fun m!1140511 () Bool)

(assert (=> b!1236709 m!1140511))

(declare-fun m!1140513 () Bool)

(assert (=> b!1236709 m!1140513))

(declare-fun m!1140515 () Bool)

(assert (=> b!1236709 m!1140515))

(declare-fun m!1140517 () Bool)

(assert (=> b!1236709 m!1140517))

(declare-fun m!1140519 () Bool)

(assert (=> b!1236709 m!1140519))

(declare-fun m!1140521 () Bool)

(assert (=> b!1236713 m!1140521))

(declare-fun m!1140523 () Bool)

(assert (=> start!102944 m!1140523))

(assert (=> b!1236714 m!1140519))

(assert (=> b!1236714 m!1140519))

(declare-fun m!1140525 () Bool)

(assert (=> b!1236714 m!1140525))

(declare-fun m!1140527 () Bool)

(assert (=> b!1236711 m!1140527))

(declare-fun m!1140529 () Bool)

(assert (=> b!1236712 m!1140529))

(declare-fun m!1140531 () Bool)

(assert (=> b!1236708 m!1140531))

(push 1)

(assert (not b!1236708))

(assert (not b!1236714))

(assert (not start!102944))

(assert (not b!1236712))

(assert (not b!1236713))

(assert (not b!1236709))

(assert (not b!1236711))

(assert (not b!1236710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135451 () Bool)

(assert (=> d!135451 (= (validKeyInArray!0 (select (arr!38469 a!3835) from!3213)) (and (not (= (select (arr!38469 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38469 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1236714 d!135451))

(declare-fun b!1236791 () Bool)

(declare-fun e!700980 () Bool)

(declare-fun e!700977 () Bool)

(assert (=> b!1236791 (= e!700980 e!700977)))

(declare-fun res!824887 () Bool)

(assert (=> b!1236791 (=> (not res!824887) (not e!700977))))

(assert (=> b!1236791 (= res!824887 (is-Cons!27416 lt!560823))))

(declare-fun b!1236793 () Bool)

(declare-fun e!700978 () Bool)

(assert (=> b!1236793 (= e!700978 (subseq!572 (t!40890 acc!846) (t!40890 lt!560823)))))

(declare-fun d!135453 () Bool)

(declare-fun res!824886 () Bool)

(assert (=> d!135453 (=> res!824886 e!700980)))

(assert (=> d!135453 (= res!824886 (is-Nil!27417 acc!846))))

(assert (=> d!135453 (= (subseq!572 acc!846 lt!560823) e!700980)))

(declare-fun b!1236792 () Bool)

(declare-fun e!700979 () Bool)

(assert (=> b!1236792 (= e!700977 e!700979)))

(declare-fun res!824885 () Bool)

(assert (=> b!1236792 (=> res!824885 e!700979)))

(assert (=> b!1236792 (= res!824885 e!700978)))

(declare-fun res!824884 () Bool)

(assert (=> b!1236792 (=> (not res!824884) (not e!700978))))

(assert (=> b!1236792 (= res!824884 (= (h!28625 acc!846) (h!28625 lt!560823)))))

(declare-fun b!1236794 () Bool)

(assert (=> b!1236794 (= e!700979 (subseq!572 acc!846 (t!40890 lt!560823)))))

(assert (= (and d!135453 (not res!824886)) b!1236791))

(assert (= (and b!1236791 res!824887) b!1236792))

(assert (= (and b!1236792 res!824884) b!1236793))

(assert (= (and b!1236792 (not res!824885)) b!1236794))

(declare-fun m!1140595 () Bool)

(assert (=> b!1236793 m!1140595))

(declare-fun m!1140597 () Bool)

(assert (=> b!1236794 m!1140597))

(assert (=> b!1236709 d!135453))

(declare-fun b!1236850 () Bool)

(declare-fun c!120833 () Bool)

(declare-fun isEmpty!1010 (List!27420) Bool)

(assert (=> b!1236850 (= c!120833 (not (isEmpty!1010 (t!40890 lt!560823))))))

(declare-fun e!701022 () Unit!40976)

(declare-fun e!701020 () Unit!40976)

(assert (=> b!1236850 (= e!701022 e!701020)))

(declare-fun b!1236851 () Bool)

(declare-fun call!61000 () Unit!40976)

(assert (=> b!1236851 (= e!701020 call!61000)))

(declare-fun d!135459 () Bool)

(declare-fun tail!159 (List!27420) List!27420)

(assert (=> d!135459 (subseq!572 (tail!159 lt!560823) lt!560823)))

(declare-fun lt!560858 () Unit!40976)

(declare-fun e!701019 () Unit!40976)

(assert (=> d!135459 (= lt!560858 e!701019)))

(declare-fun c!120834 () Bool)

(assert (=> d!135459 (= c!120834 (and (is-Cons!27416 lt!560823) (is-Cons!27416 lt!560823)))))

(declare-fun e!701021 () Bool)

(assert (=> d!135459 e!701021))

(declare-fun res!824909 () Bool)

(assert (=> d!135459 (=> (not res!824909) (not e!701021))))

(assert (=> d!135459 (= res!824909 (not (isEmpty!1010 lt!560823)))))

(assert (=> d!135459 (= (subseqTail!59 lt!560823 lt!560823) lt!560858)))

(declare-fun b!1236852 () Bool)

(declare-fun Unit!40984 () Unit!40976)

(assert (=> b!1236852 (= e!701020 Unit!40984)))

(declare-fun b!1236853 () Bool)

(assert (=> b!1236853 (= e!701019 e!701022)))

(declare-fun c!120835 () Bool)

(assert (=> b!1236853 (= c!120835 (subseq!572 lt!560823 (t!40890 lt!560823)))))

(declare-fun b!1236854 () Bool)

(assert (=> b!1236854 (= e!701021 (subseq!572 lt!560823 lt!560823))))

(declare-fun b!1236855 () Bool)

(assert (=> b!1236855 (= e!701022 call!61000)))

(declare-fun bm!60997 () Bool)

(assert (=> bm!60997 (= call!61000 (subseqTail!59 (ite c!120835 lt!560823 (t!40890 lt!560823)) (t!40890 lt!560823)))))

(declare-fun b!1236856 () Bool)

(declare-fun Unit!40985 () Unit!40976)

(assert (=> b!1236856 (= e!701019 Unit!40985)))

(assert (= (and d!135459 res!824909) b!1236854))

(assert (= (and d!135459 c!120834) b!1236853))

(assert (= (and d!135459 (not c!120834)) b!1236856))

(assert (= (and b!1236853 c!120835) b!1236855))

(assert (= (and b!1236853 (not c!120835)) b!1236850))

(assert (= (and b!1236850 c!120833) b!1236851))

(assert (= (and b!1236850 (not c!120833)) b!1236852))

(assert (= (or b!1236855 b!1236851) bm!60997))

(declare-fun m!1140621 () Bool)

(assert (=> b!1236853 m!1140621))

(declare-fun m!1140623 () Bool)

(assert (=> b!1236850 m!1140623))

(declare-fun m!1140625 () Bool)

(assert (=> d!135459 m!1140625))

(assert (=> d!135459 m!1140625))

(declare-fun m!1140627 () Bool)

(assert (=> d!135459 m!1140627))

(declare-fun m!1140629 () Bool)

(assert (=> d!135459 m!1140629))

(assert (=> b!1236854 m!1140513))

(declare-fun m!1140631 () Bool)

(assert (=> bm!60997 m!1140631))

(assert (=> b!1236709 d!135459))

(declare-fun b!1236857 () Bool)

(declare-fun e!701026 () Bool)

(declare-fun e!701023 () Bool)

(assert (=> b!1236857 (= e!701026 e!701023)))

(declare-fun res!824913 () Bool)

(assert (=> b!1236857 (=> (not res!824913) (not e!701023))))

(assert (=> b!1236857 (= res!824913 (is-Cons!27416 lt!560823))))

(declare-fun b!1236859 () Bool)

(declare-fun e!701024 () Bool)

(assert (=> b!1236859 (= e!701024 (subseq!572 (t!40890 lt!560823) (t!40890 lt!560823)))))

(declare-fun d!135471 () Bool)

(declare-fun res!824912 () Bool)

(assert (=> d!135471 (=> res!824912 e!701026)))

(assert (=> d!135471 (= res!824912 (is-Nil!27417 lt!560823))))

(assert (=> d!135471 (= (subseq!572 lt!560823 lt!560823) e!701026)))

(declare-fun b!1236858 () Bool)

(declare-fun e!701025 () Bool)

(assert (=> b!1236858 (= e!701023 e!701025)))

(declare-fun res!824911 () Bool)

(assert (=> b!1236858 (=> res!824911 e!701025)))

(assert (=> b!1236858 (= res!824911 e!701024)))

(declare-fun res!824910 () Bool)

(assert (=> b!1236858 (=> (not res!824910) (not e!701024))))

(assert (=> b!1236858 (= res!824910 (= (h!28625 lt!560823) (h!28625 lt!560823)))))

(declare-fun b!1236860 () Bool)

(assert (=> b!1236860 (= e!701025 (subseq!572 lt!560823 (t!40890 lt!560823)))))

(assert (= (and d!135471 (not res!824912)) b!1236857))

(assert (= (and b!1236857 res!824913) b!1236858))

(assert (= (and b!1236858 res!824910) b!1236859))

(assert (= (and b!1236858 (not res!824911)) b!1236860))

(declare-fun m!1140633 () Bool)

(assert (=> b!1236859 m!1140633))

(assert (=> b!1236860 m!1140621))

(assert (=> b!1236709 d!135471))

(declare-fun d!135473 () Bool)

(assert (=> d!135473 (subseq!572 lt!560823 lt!560823)))

(declare-fun lt!560861 () Unit!40976)

(declare-fun choose!36 (List!27420) Unit!40976)

(assert (=> d!135473 (= lt!560861 (choose!36 lt!560823))))

(assert (=> d!135473 (= (lemmaListSubSeqRefl!0 lt!560823) lt!560861)))

(declare-fun bs!34776 () Bool)

(assert (= bs!34776 d!135473))

(assert (=> bs!34776 m!1140513))

(declare-fun m!1140639 () Bool)

(assert (=> bs!34776 m!1140639))

(assert (=> b!1236709 d!135473))

(declare-fun d!135475 () Bool)

(assert (=> d!135475 (= (array_inv!29245 a!3835) (bvsge (size!39006 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!102944 d!135475))

(declare-fun d!135479 () Bool)

(declare-fun lt!560866 () Bool)

(declare-fun content!590 (List!27420) (Set (_ BitVec 64)))

(assert (=> d!135479 (= lt!560866 (set.member k!2925 (content!590 acc!846)))))

(declare-fun e!701057 () Bool)

(assert (=> d!135479 (= lt!560866 e!701057)))

(declare-fun res!824941 () Bool)

(assert (=> d!135479 (=> (not res!824941) (not e!701057))))

(assert (=> d!135479 (= res!824941 (is-Cons!27416 acc!846))))

(assert (=> d!135479 (= (contains!7335 acc!846 k!2925) lt!560866)))

(declare-fun b!1236895 () Bool)

(declare-fun e!701058 () Bool)

(assert (=> b!1236895 (= e!701057 e!701058)))

(declare-fun res!824940 () Bool)

(assert (=> b!1236895 (=> res!824940 e!701058)))

(assert (=> b!1236895 (= res!824940 (= (h!28625 acc!846) k!2925))))

(declare-fun b!1236896 () Bool)

(assert (=> b!1236896 (= e!701058 (contains!7335 (t!40890 acc!846) k!2925))))

(assert (= (and d!135479 res!824941) b!1236895))

(assert (= (and b!1236895 (not res!824940)) b!1236896))

(declare-fun m!1140655 () Bool)

(assert (=> d!135479 m!1140655))

(declare-fun m!1140657 () Bool)

(assert (=> d!135479 m!1140657))

(declare-fun m!1140659 () Bool)

(assert (=> b!1236896 m!1140659))

(assert (=> b!1236713 d!135479))

(declare-fun b!1236927 () Bool)

(declare-fun e!701089 () Bool)

(declare-fun call!61007 () Bool)

(assert (=> b!1236927 (= e!701089 call!61007)))

(declare-fun c!120842 () Bool)

(declare-fun bm!61004 () Bool)

(assert (=> bm!61004 (= call!61007 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120842 (Cons!27416 (select (arr!38469 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1236928 () Bool)

(declare-fun e!701090 () Bool)

(assert (=> b!1236928 (= e!701090 e!701089)))

(assert (=> b!1236928 (= c!120842 (validKeyInArray!0 (select (arr!38469 a!3835) from!3213)))))

(declare-fun b!1236930 () Bool)

(assert (=> b!1236930 (= e!701089 call!61007)))

(declare-fun e!701088 () Bool)

(declare-fun b!1236931 () Bool)

(assert (=> b!1236931 (= e!701088 (contains!7335 acc!846 (select (arr!38469 a!3835) from!3213)))))

(declare-fun d!135487 () Bool)

(declare-fun res!824969 () Bool)

(declare-fun e!701087 () Bool)

(assert (=> d!135487 (=> res!824969 e!701087)))

(assert (=> d!135487 (= res!824969 (bvsge from!3213 (size!39006 a!3835)))))

(assert (=> d!135487 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701087)))

(declare-fun b!1236929 () Bool)

(assert (=> b!1236929 (= e!701087 e!701090)))

(declare-fun res!824968 () Bool)

(assert (=> b!1236929 (=> (not res!824968) (not e!701090))))

(assert (=> b!1236929 (= res!824968 (not e!701088))))

(declare-fun res!824970 () Bool)

(assert (=> b!1236929 (=> (not res!824970) (not e!701088))))

(assert (=> b!1236929 (= res!824970 (validKeyInArray!0 (select (arr!38469 a!3835) from!3213)))))

(assert (= (and d!135487 (not res!824969)) b!1236929))

(assert (= (and b!1236929 res!824970) b!1236931))

(assert (= (and b!1236929 res!824968) b!1236928))

(assert (= (and b!1236928 c!120842) b!1236927))

(assert (= (and b!1236928 (not c!120842)) b!1236930))

(assert (= (or b!1236927 b!1236930) bm!61004))

(assert (=> bm!61004 m!1140519))

(declare-fun m!1140675 () Bool)

(assert (=> bm!61004 m!1140675))

(assert (=> b!1236928 m!1140519))

(assert (=> b!1236928 m!1140519))

(assert (=> b!1236928 m!1140525))

(assert (=> b!1236931 m!1140519))

(assert (=> b!1236931 m!1140519))

(declare-fun m!1140677 () Bool)

(assert (=> b!1236931 m!1140677))

(assert (=> b!1236929 m!1140519))

(assert (=> b!1236929 m!1140519))

(assert (=> b!1236929 m!1140525))

(assert (=> b!1236708 d!135487))

(declare-fun d!135497 () Bool)

(declare-fun lt!560868 () Bool)

(assert (=> d!135497 (= lt!560868 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!590 acc!846)))))

(declare-fun e!701091 () Bool)

(assert (=> d!135497 (= lt!560868 e!701091)))

(declare-fun res!824972 () Bool)

(assert (=> d!135497 (=> (not res!824972) (not e!701091))))

(assert (=> d!135497 (= res!824972 (is-Cons!27416 acc!846))))

(assert (=> d!135497 (= (contains!7335 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!560868)))

(declare-fun b!1236932 () Bool)

(declare-fun e!701092 () Bool)

(assert (=> b!1236932 (= e!701091 e!701092)))

(declare-fun res!824971 () Bool)

(assert (=> b!1236932 (=> res!824971 e!701092)))

(assert (=> b!1236932 (= res!824971 (= (h!28625 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236933 () Bool)

(assert (=> b!1236933 (= e!701092 (contains!7335 (t!40890 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135497 res!824972) b!1236932))

(assert (= (and b!1236932 (not res!824971)) b!1236933))

(assert (=> d!135497 m!1140655))

(declare-fun m!1140679 () Bool)

(assert (=> d!135497 m!1140679))

(declare-fun m!1140681 () Bool)

(assert (=> b!1236933 m!1140681))

(assert (=> b!1236712 d!135497))

(declare-fun d!135499 () Bool)

(declare-fun res!824979 () Bool)

(declare-fun e!701105 () Bool)

(assert (=> d!135499 (=> res!824979 e!701105)))

(assert (=> d!135499 (= res!824979 (is-Nil!27417 acc!846))))

(assert (=> d!135499 (= (noDuplicate!1942 acc!846) e!701105)))

(declare-fun b!1236952 () Bool)

(declare-fun e!701106 () Bool)

(assert (=> b!1236952 (= e!701105 e!701106)))

(declare-fun res!824980 () Bool)

(assert (=> b!1236952 (=> (not res!824980) (not e!701106))))

(assert (=> b!1236952 (= res!824980 (not (contains!7335 (t!40890 acc!846) (h!28625 acc!846))))))

(declare-fun b!1236953 () Bool)

(assert (=> b!1236953 (= e!701106 (noDuplicate!1942 (t!40890 acc!846)))))

(assert (= (and d!135499 (not res!824979)) b!1236952))

(assert (= (and b!1236952 res!824980) b!1236953))

(declare-fun m!1140683 () Bool)

(assert (=> b!1236952 m!1140683))

(declare-fun m!1140685 () Bool)

(assert (=> b!1236953 m!1140685))

(assert (=> b!1236710 d!135499))

(declare-fun d!135501 () Bool)

(declare-fun lt!560871 () Bool)

(assert (=> d!135501 (= lt!560871 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!590 acc!846)))))

(declare-fun e!701107 () Bool)

(assert (=> d!135501 (= lt!560871 e!701107)))

(declare-fun res!824982 () Bool)

(assert (=> d!135501 (=> (not res!824982) (not e!701107))))

(assert (=> d!135501 (= res!824982 (is-Cons!27416 acc!846))))

(assert (=> d!135501 (= (contains!7335 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!560871)))

(declare-fun b!1236954 () Bool)

(declare-fun e!701108 () Bool)

(assert (=> b!1236954 (= e!701107 e!701108)))

(declare-fun res!824981 () Bool)

(assert (=> b!1236954 (=> res!824981 e!701108)))

(assert (=> b!1236954 (= res!824981 (= (h!28625 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236955 () Bool)

(assert (=> b!1236955 (= e!701108 (contains!7335 (t!40890 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135501 res!824982) b!1236954))

(assert (= (and b!1236954 (not res!824981)) b!1236955))

(assert (=> d!135501 m!1140655))

(declare-fun m!1140687 () Bool)

(assert (=> d!135501 m!1140687))

(declare-fun m!1140689 () Bool)

(assert (=> b!1236955 m!1140689))

(assert (=> b!1236711 d!135501))

(push 1)

(assert (not b!1236955))

(assert (not b!1236860))

(assert (not b!1236933))

(assert (not b!1236931))

(assert (not b!1236953))

(assert (not b!1236794))

(assert (not d!135479))

(assert (not d!135501))

(assert (not b!1236854))

(assert (not d!135459))

(assert (not b!1236896))

(assert (not b!1236850))

(assert (not b!1236853))

(assert (not b!1236928))

(assert (not b!1236793))

(assert (not d!135497))

(assert (not b!1236929))

(assert (not b!1236952))

(assert (not b!1236859))

(assert (not bm!60997))

(assert (not bm!61004))

(assert (not d!135473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!1236929 d!135451))

(declare-fun b!1237017 () Bool)

(declare-fun e!701163 () Bool)

(declare-fun e!701160 () Bool)

(assert (=> b!1237017 (= e!701163 e!701160)))

(declare-fun res!825027 () Bool)

(assert (=> b!1237017 (=> (not res!825027) (not e!701160))))

(assert (=> b!1237017 (= res!825027 (is-Cons!27416 (t!40890 lt!560823)))))

(declare-fun b!1237019 () Bool)

(declare-fun e!701161 () Bool)

(assert (=> b!1237019 (= e!701161 (subseq!572 (t!40890 lt!560823) (t!40890 (t!40890 lt!560823))))))

(declare-fun d!135545 () Bool)

(declare-fun res!825026 () Bool)

(assert (=> d!135545 (=> res!825026 e!701163)))

(assert (=> d!135545 (= res!825026 (is-Nil!27417 lt!560823))))

(assert (=> d!135545 (= (subseq!572 lt!560823 (t!40890 lt!560823)) e!701163)))

(declare-fun b!1237018 () Bool)

(declare-fun e!701162 () Bool)

(assert (=> b!1237018 (= e!701160 e!701162)))

(declare-fun res!825025 () Bool)

(assert (=> b!1237018 (=> res!825025 e!701162)))

(assert (=> b!1237018 (= res!825025 e!701161)))

(declare-fun res!825024 () Bool)

(assert (=> b!1237018 (=> (not res!825024) (not e!701161))))

(assert (=> b!1237018 (= res!825024 (= (h!28625 lt!560823) (h!28625 (t!40890 lt!560823))))))

(declare-fun b!1237020 () Bool)

(assert (=> b!1237020 (= e!701162 (subseq!572 lt!560823 (t!40890 (t!40890 lt!560823))))))

(assert (= (and d!135545 (not res!825026)) b!1237017))

(assert (= (and b!1237017 res!825027) b!1237018))

(assert (= (and b!1237018 res!825024) b!1237019))

(assert (= (and b!1237018 (not res!825025)) b!1237020))

(declare-fun m!1140773 () Bool)

(assert (=> b!1237019 m!1140773))

(declare-fun m!1140775 () Bool)

(assert (=> b!1237020 m!1140775))

(assert (=> b!1236860 d!135545))

(assert (=> b!1236928 d!135451))

(declare-fun d!135547 () Bool)

(declare-fun lt!560882 () Bool)

(assert (=> d!135547 (= lt!560882 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!590 (t!40890 acc!846))))))

(declare-fun e!701164 () Bool)

(assert (=> d!135547 (= lt!560882 e!701164)))

(declare-fun res!825029 () Bool)

(assert (=> d!135547 (=> (not res!825029) (not e!701164))))

(assert (=> d!135547 (= res!825029 (is-Cons!27416 (t!40890 acc!846)))))

(assert (=> d!135547 (= (contains!7335 (t!40890 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000) lt!560882)))

(declare-fun b!1237021 () Bool)

(declare-fun e!701165 () Bool)

(assert (=> b!1237021 (= e!701164 e!701165)))

(declare-fun res!825028 () Bool)

(assert (=> b!1237021 (=> res!825028 e!701165)))

(assert (=> b!1237021 (= res!825028 (= (h!28625 (t!40890 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237022 () Bool)

(assert (=> b!1237022 (= e!701165 (contains!7335 (t!40890 (t!40890 acc!846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135547 res!825029) b!1237021))

(assert (= (and b!1237021 (not res!825028)) b!1237022))

(declare-fun m!1140777 () Bool)

(assert (=> d!135547 m!1140777))

(declare-fun m!1140779 () Bool)

(assert (=> d!135547 m!1140779))

(declare-fun m!1140781 () Bool)

(assert (=> b!1237022 m!1140781))

(assert (=> b!1236955 d!135547))

(assert (=> b!1236853 d!135545))

(declare-fun d!135549 () Bool)

(declare-fun lt!560883 () Bool)

(assert (=> d!135549 (= lt!560883 (set.member k!2925 (content!590 (t!40890 acc!846))))))

(declare-fun e!701166 () Bool)

(assert (=> d!135549 (= lt!560883 e!701166)))

(declare-fun res!825031 () Bool)

(assert (=> d!135549 (=> (not res!825031) (not e!701166))))

(assert (=> d!135549 (= res!825031 (is-Cons!27416 (t!40890 acc!846)))))

(assert (=> d!135549 (= (contains!7335 (t!40890 acc!846) k!2925) lt!560883)))

(declare-fun b!1237023 () Bool)

(declare-fun e!701167 () Bool)

(assert (=> b!1237023 (= e!701166 e!701167)))

(declare-fun res!825030 () Bool)

(assert (=> b!1237023 (=> res!825030 e!701167)))

(assert (=> b!1237023 (= res!825030 (= (h!28625 (t!40890 acc!846)) k!2925))))

(declare-fun b!1237024 () Bool)

(assert (=> b!1237024 (= e!701167 (contains!7335 (t!40890 (t!40890 acc!846)) k!2925))))

(assert (= (and d!135549 res!825031) b!1237023))

(assert (= (and b!1237023 (not res!825030)) b!1237024))

(assert (=> d!135549 m!1140777))

(declare-fun m!1140783 () Bool)

(assert (=> d!135549 m!1140783))

(declare-fun m!1140785 () Bool)

(assert (=> b!1237024 m!1140785))

(assert (=> b!1236896 d!135549))

(declare-fun d!135551 () Bool)

(declare-fun c!120861 () Bool)

(assert (=> d!135551 (= c!120861 (is-Nil!27417 acc!846))))

(declare-fun e!701170 () (Set (_ BitVec 64)))

(assert (=> d!135551 (= (content!590 acc!846) e!701170)))

(declare-fun b!1237029 () Bool)

(assert (=> b!1237029 (= e!701170 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1237030 () Bool)

(assert (=> b!1237030 (= e!701170 (set.union (set.insert (h!28625 acc!846) (as set.empty (Set (_ BitVec 64)))) (content!590 (t!40890 acc!846))))))

(assert (= (and d!135551 c!120861) b!1237029))

(assert (= (and d!135551 (not c!120861)) b!1237030))

(declare-fun m!1140787 () Bool)

(assert (=> b!1237030 m!1140787))

(assert (=> b!1237030 m!1140777))

(assert (=> d!135497 d!135551))

(declare-fun d!135553 () Bool)

(declare-fun res!825032 () Bool)

(declare-fun e!701171 () Bool)

(assert (=> d!135553 (=> res!825032 e!701171)))

(assert (=> d!135553 (= res!825032 (is-Nil!27417 (t!40890 acc!846)))))

(assert (=> d!135553 (= (noDuplicate!1942 (t!40890 acc!846)) e!701171)))

(declare-fun b!1237031 () Bool)

(declare-fun e!701172 () Bool)

(assert (=> b!1237031 (= e!701171 e!701172)))

(declare-fun res!825033 () Bool)

(assert (=> b!1237031 (=> (not res!825033) (not e!701172))))

(assert (=> b!1237031 (= res!825033 (not (contains!7335 (t!40890 (t!40890 acc!846)) (h!28625 (t!40890 acc!846)))))))

(declare-fun b!1237032 () Bool)

(assert (=> b!1237032 (= e!701172 (noDuplicate!1942 (t!40890 (t!40890 acc!846))))))

(assert (= (and d!135553 (not res!825032)) b!1237031))

(assert (= (and b!1237031 res!825033) b!1237032))

(declare-fun m!1140789 () Bool)

(assert (=> b!1237031 m!1140789))

(declare-fun m!1140791 () Bool)

(assert (=> b!1237032 m!1140791))

(assert (=> b!1236953 d!135553))

(assert (=> d!135479 d!135551))

(declare-fun d!135555 () Bool)

(assert (=> d!135555 (= (isEmpty!1010 (t!40890 lt!560823)) (is-Nil!27417 (t!40890 lt!560823)))))

(assert (=> b!1236850 d!135555))

(declare-fun b!1237033 () Bool)

(declare-fun e!701176 () Bool)

(declare-fun e!701173 () Bool)

(assert (=> b!1237033 (= e!701176 e!701173)))

(declare-fun res!825037 () Bool)

(assert (=> b!1237033 (=> (not res!825037) (not e!701173))))

(assert (=> b!1237033 (= res!825037 (is-Cons!27416 (t!40890 lt!560823)))))

(declare-fun b!1237035 () Bool)

(declare-fun e!701174 () Bool)

(assert (=> b!1237035 (= e!701174 (subseq!572 (t!40890 (t!40890 lt!560823)) (t!40890 (t!40890 lt!560823))))))

(declare-fun d!135557 () Bool)

(declare-fun res!825036 () Bool)

(assert (=> d!135557 (=> res!825036 e!701176)))

(assert (=> d!135557 (= res!825036 (is-Nil!27417 (t!40890 lt!560823)))))

(assert (=> d!135557 (= (subseq!572 (t!40890 lt!560823) (t!40890 lt!560823)) e!701176)))

(declare-fun b!1237034 () Bool)

(declare-fun e!701175 () Bool)

(assert (=> b!1237034 (= e!701173 e!701175)))

(declare-fun res!825035 () Bool)

(assert (=> b!1237034 (=> res!825035 e!701175)))

(assert (=> b!1237034 (= res!825035 e!701174)))

(declare-fun res!825034 () Bool)

(assert (=> b!1237034 (=> (not res!825034) (not e!701174))))

(assert (=> b!1237034 (= res!825034 (= (h!28625 (t!40890 lt!560823)) (h!28625 (t!40890 lt!560823))))))

(declare-fun b!1237036 () Bool)

(assert (=> b!1237036 (= e!701175 (subseq!572 (t!40890 lt!560823) (t!40890 (t!40890 lt!560823))))))

(assert (= (and d!135557 (not res!825036)) b!1237033))

(assert (= (and b!1237033 res!825037) b!1237034))

(assert (= (and b!1237034 res!825034) b!1237035))

