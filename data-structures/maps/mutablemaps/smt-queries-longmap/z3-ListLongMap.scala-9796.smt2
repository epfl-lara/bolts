; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116338 () Bool)

(assert start!116338)

(declare-fun b!1372924 () Bool)

(declare-fun res!916320 () Bool)

(declare-fun e!777732 () Bool)

(assert (=> b!1372924 (=> (not res!916320) (not e!777732))))

(declare-datatypes ((List!32193 0))(
  ( (Nil!32190) (Cons!32189 (h!33398 (_ BitVec 64)) (t!46894 List!32193)) )
))
(declare-fun newAcc!98 () List!32193)

(declare-fun acc!866 () List!32193)

(declare-fun subseq!1122 (List!32193 List!32193) Bool)

(assert (=> b!1372924 (= res!916320 (subseq!1122 newAcc!98 acc!866))))

(declare-fun b!1372925 () Bool)

(declare-fun res!916319 () Bool)

(declare-fun e!777731 () Bool)

(assert (=> b!1372925 (=> (not res!916319) (not e!777731))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!93078 0))(
  ( (array!93079 (arr!44945 (Array (_ BitVec 32) (_ BitVec 64))) (size!45496 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93078)

(assert (=> b!1372925 (= res!916319 (bvslt from!3239 (size!45496 a!3861)))))

(declare-fun b!1372926 () Bool)

(declare-fun res!916314 () Bool)

(assert (=> b!1372926 (=> (not res!916314) (not e!777731))))

(assert (=> b!1372926 (= res!916314 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1372927 () Bool)

(declare-fun res!916315 () Bool)

(assert (=> b!1372927 (=> (not res!916315) (not e!777732))))

(declare-fun contains!9731 (List!32193 (_ BitVec 64)) Bool)

(assert (=> b!1372927 (= res!916315 (not (contains!9731 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372928 () Bool)

(declare-fun res!916322 () Bool)

(assert (=> b!1372928 (=> (not res!916322) (not e!777731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1372928 (= res!916322 (not (validKeyInArray!0 (select (arr!44945 a!3861) from!3239))))))

(declare-fun res!916317 () Bool)

(assert (=> start!116338 (=> (not res!916317) (not e!777732))))

(assert (=> start!116338 (= res!916317 (and (bvslt (size!45496 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45496 a!3861))))))

(assert (=> start!116338 e!777732))

(declare-fun array_inv!33890 (array!93078) Bool)

(assert (=> start!116338 (array_inv!33890 a!3861)))

(assert (=> start!116338 true))

(declare-fun b!1372929 () Bool)

(declare-fun res!916323 () Bool)

(assert (=> b!1372929 (=> (not res!916323) (not e!777732))))

(assert (=> b!1372929 (= res!916323 (not (contains!9731 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372930 () Bool)

(declare-fun res!916318 () Bool)

(assert (=> b!1372930 (=> (not res!916318) (not e!777732))))

(assert (=> b!1372930 (= res!916318 (not (contains!9731 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372931 () Bool)

(declare-fun res!916313 () Bool)

(assert (=> b!1372931 (=> (not res!916313) (not e!777732))))

(assert (=> b!1372931 (= res!916313 (not (contains!9731 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372932 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93078 (_ BitVec 32) List!32193) Bool)

(assert (=> b!1372932 (= e!777731 (not (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866)))))

(declare-fun b!1372933 () Bool)

(declare-fun res!916316 () Bool)

(assert (=> b!1372933 (=> (not res!916316) (not e!777732))))

(declare-fun noDuplicate!2610 (List!32193) Bool)

(assert (=> b!1372933 (= res!916316 (noDuplicate!2610 acc!866))))

(declare-fun b!1372934 () Bool)

(assert (=> b!1372934 (= e!777732 e!777731)))

(declare-fun res!916321 () Bool)

(assert (=> b!1372934 (=> (not res!916321) (not e!777731))))

(assert (=> b!1372934 (= res!916321 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45325 0))(
  ( (Unit!45326) )
))
(declare-fun lt!602927 () Unit!45325)

(declare-fun noDuplicateSubseq!309 (List!32193 List!32193) Unit!45325)

(assert (=> b!1372934 (= lt!602927 (noDuplicateSubseq!309 newAcc!98 acc!866))))

(assert (= (and start!116338 res!916317) b!1372933))

(assert (= (and b!1372933 res!916316) b!1372927))

(assert (= (and b!1372927 res!916315) b!1372931))

(assert (= (and b!1372931 res!916313) b!1372930))

(assert (= (and b!1372930 res!916318) b!1372929))

(assert (= (and b!1372929 res!916323) b!1372924))

(assert (= (and b!1372924 res!916320) b!1372934))

(assert (= (and b!1372934 res!916321) b!1372925))

(assert (= (and b!1372925 res!916319) b!1372928))

(assert (= (and b!1372928 res!916322) b!1372926))

(assert (= (and b!1372926 res!916314) b!1372932))

(declare-fun m!1256305 () Bool)

(assert (=> b!1372929 m!1256305))

(declare-fun m!1256307 () Bool)

(assert (=> b!1372927 m!1256307))

(declare-fun m!1256309 () Bool)

(assert (=> b!1372928 m!1256309))

(assert (=> b!1372928 m!1256309))

(declare-fun m!1256311 () Bool)

(assert (=> b!1372928 m!1256311))

(declare-fun m!1256313 () Bool)

(assert (=> b!1372931 m!1256313))

(declare-fun m!1256315 () Bool)

(assert (=> b!1372930 m!1256315))

(declare-fun m!1256317 () Bool)

(assert (=> start!116338 m!1256317))

(declare-fun m!1256319 () Bool)

(assert (=> b!1372934 m!1256319))

(declare-fun m!1256321 () Bool)

(assert (=> b!1372934 m!1256321))

(declare-fun m!1256323 () Bool)

(assert (=> b!1372932 m!1256323))

(declare-fun m!1256325 () Bool)

(assert (=> b!1372924 m!1256325))

(declare-fun m!1256327 () Bool)

(assert (=> b!1372933 m!1256327))

(check-sat (not b!1372929) (not b!1372934) (not b!1372924) (not start!116338) (not b!1372927) (not b!1372930) (not b!1372932) (not b!1372928) (not b!1372933) (not b!1372931))
(check-sat)
(get-model)

(declare-fun d!147801 () Bool)

(declare-fun lt!602933 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!753 (List!32193) (InoxSet (_ BitVec 64)))

(assert (=> d!147801 (= lt!602933 (select (content!753 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777747 () Bool)

(assert (=> d!147801 (= lt!602933 e!777747)))

(declare-fun res!916361 () Bool)

(assert (=> d!147801 (=> (not res!916361) (not e!777747))))

(get-info :version)

(assert (=> d!147801 (= res!916361 ((_ is Cons!32189) newAcc!98))))

(assert (=> d!147801 (= (contains!9731 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602933)))

(declare-fun b!1372972 () Bool)

(declare-fun e!777748 () Bool)

(assert (=> b!1372972 (= e!777747 e!777748)))

(declare-fun res!916362 () Bool)

(assert (=> b!1372972 (=> res!916362 e!777748)))

(assert (=> b!1372972 (= res!916362 (= (h!33398 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372973 () Bool)

(assert (=> b!1372973 (= e!777748 (contains!9731 (t!46894 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147801 res!916361) b!1372972))

(assert (= (and b!1372972 (not res!916362)) b!1372973))

(declare-fun m!1256353 () Bool)

(assert (=> d!147801 m!1256353))

(declare-fun m!1256355 () Bool)

(assert (=> d!147801 m!1256355))

(declare-fun m!1256357 () Bool)

(assert (=> b!1372973 m!1256357))

(assert (=> b!1372930 d!147801))

(declare-fun d!147803 () Bool)

(assert (=> d!147803 (= (array_inv!33890 a!3861) (bvsge (size!45496 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116338 d!147803))

(declare-fun d!147805 () Bool)

(declare-fun lt!602934 () Bool)

(assert (=> d!147805 (= lt!602934 (select (content!753 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777749 () Bool)

(assert (=> d!147805 (= lt!602934 e!777749)))

(declare-fun res!916363 () Bool)

(assert (=> d!147805 (=> (not res!916363) (not e!777749))))

(assert (=> d!147805 (= res!916363 ((_ is Cons!32189) acc!866))))

(assert (=> d!147805 (= (contains!9731 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602934)))

(declare-fun b!1372974 () Bool)

(declare-fun e!777750 () Bool)

(assert (=> b!1372974 (= e!777749 e!777750)))

(declare-fun res!916364 () Bool)

(assert (=> b!1372974 (=> res!916364 e!777750)))

(assert (=> b!1372974 (= res!916364 (= (h!33398 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372975 () Bool)

(assert (=> b!1372975 (= e!777750 (contains!9731 (t!46894 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147805 res!916363) b!1372974))

(assert (= (and b!1372974 (not res!916364)) b!1372975))

(declare-fun m!1256359 () Bool)

(assert (=> d!147805 m!1256359))

(declare-fun m!1256361 () Bool)

(assert (=> d!147805 m!1256361))

(declare-fun m!1256363 () Bool)

(assert (=> b!1372975 m!1256363))

(assert (=> b!1372931 d!147805))

(declare-fun b!1372996 () Bool)

(declare-fun e!777769 () Bool)

(declare-fun call!65599 () Bool)

(assert (=> b!1372996 (= e!777769 call!65599)))

(declare-fun b!1372997 () Bool)

(declare-fun e!777772 () Bool)

(assert (=> b!1372997 (= e!777772 e!777769)))

(declare-fun c!127750 () Bool)

(assert (=> b!1372997 (= c!127750 (validKeyInArray!0 (select (arr!44945 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!147807 () Bool)

(declare-fun res!916382 () Bool)

(declare-fun e!777770 () Bool)

(assert (=> d!147807 (=> res!916382 e!777770)))

(assert (=> d!147807 (= res!916382 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45496 a!3861)))))

(assert (=> d!147807 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866) e!777770)))

(declare-fun b!1372998 () Bool)

(assert (=> b!1372998 (= e!777770 e!777772)))

(declare-fun res!916381 () Bool)

(assert (=> b!1372998 (=> (not res!916381) (not e!777772))))

(declare-fun e!777771 () Bool)

(assert (=> b!1372998 (= res!916381 (not e!777771))))

(declare-fun res!916383 () Bool)

(assert (=> b!1372998 (=> (not res!916383) (not e!777771))))

(assert (=> b!1372998 (= res!916383 (validKeyInArray!0 (select (arr!44945 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65596 () Bool)

(assert (=> bm!65596 (= call!65599 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127750 (Cons!32189 (select (arr!44945 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) acc!866) acc!866)))))

(declare-fun b!1372999 () Bool)

(assert (=> b!1372999 (= e!777771 (contains!9731 acc!866 (select (arr!44945 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373000 () Bool)

(assert (=> b!1373000 (= e!777769 call!65599)))

(assert (= (and d!147807 (not res!916382)) b!1372998))

(assert (= (and b!1372998 res!916383) b!1372999))

(assert (= (and b!1372998 res!916381) b!1372997))

(assert (= (and b!1372997 c!127750) b!1373000))

(assert (= (and b!1372997 (not c!127750)) b!1372996))

(assert (= (or b!1373000 b!1372996) bm!65596))

(declare-fun m!1256369 () Bool)

(assert (=> b!1372997 m!1256369))

(assert (=> b!1372997 m!1256369))

(declare-fun m!1256371 () Bool)

(assert (=> b!1372997 m!1256371))

(assert (=> b!1372998 m!1256369))

(assert (=> b!1372998 m!1256369))

(assert (=> b!1372998 m!1256371))

(assert (=> bm!65596 m!1256369))

(declare-fun m!1256377 () Bool)

(assert (=> bm!65596 m!1256377))

(assert (=> b!1372999 m!1256369))

(assert (=> b!1372999 m!1256369))

(declare-fun m!1256381 () Bool)

(assert (=> b!1372999 m!1256381))

(assert (=> b!1372932 d!147807))

(declare-fun d!147817 () Bool)

(declare-fun lt!602941 () Bool)

(assert (=> d!147817 (= lt!602941 (select (content!753 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777781 () Bool)

(assert (=> d!147817 (= lt!602941 e!777781)))

(declare-fun res!916392 () Bool)

(assert (=> d!147817 (=> (not res!916392) (not e!777781))))

(assert (=> d!147817 (= res!916392 ((_ is Cons!32189) acc!866))))

(assert (=> d!147817 (= (contains!9731 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602941)))

(declare-fun b!1373009 () Bool)

(declare-fun e!777782 () Bool)

(assert (=> b!1373009 (= e!777781 e!777782)))

(declare-fun res!916393 () Bool)

(assert (=> b!1373009 (=> res!916393 e!777782)))

(assert (=> b!1373009 (= res!916393 (= (h!33398 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373010 () Bool)

(assert (=> b!1373010 (= e!777782 (contains!9731 (t!46894 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147817 res!916392) b!1373009))

(assert (= (and b!1373009 (not res!916393)) b!1373010))

(assert (=> d!147817 m!1256359))

(declare-fun m!1256389 () Bool)

(assert (=> d!147817 m!1256389))

(declare-fun m!1256391 () Bool)

(assert (=> b!1373010 m!1256391))

(assert (=> b!1372927 d!147817))

(declare-fun d!147821 () Bool)

(declare-fun res!916402 () Bool)

(declare-fun e!777791 () Bool)

(assert (=> d!147821 (=> res!916402 e!777791)))

(assert (=> d!147821 (= res!916402 ((_ is Nil!32190) acc!866))))

(assert (=> d!147821 (= (noDuplicate!2610 acc!866) e!777791)))

(declare-fun b!1373019 () Bool)

(declare-fun e!777792 () Bool)

(assert (=> b!1373019 (= e!777791 e!777792)))

(declare-fun res!916403 () Bool)

(assert (=> b!1373019 (=> (not res!916403) (not e!777792))))

(assert (=> b!1373019 (= res!916403 (not (contains!9731 (t!46894 acc!866) (h!33398 acc!866))))))

(declare-fun b!1373020 () Bool)

(assert (=> b!1373020 (= e!777792 (noDuplicate!2610 (t!46894 acc!866)))))

(assert (= (and d!147821 (not res!916402)) b!1373019))

(assert (= (and b!1373019 res!916403) b!1373020))

(declare-fun m!1256403 () Bool)

(assert (=> b!1373019 m!1256403))

(declare-fun m!1256405 () Bool)

(assert (=> b!1373020 m!1256405))

(assert (=> b!1372933 d!147821))

(declare-fun d!147827 () Bool)

(assert (=> d!147827 (= (validKeyInArray!0 (select (arr!44945 a!3861) from!3239)) (and (not (= (select (arr!44945 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44945 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1372928 d!147827))

(declare-fun b!1373031 () Bool)

(declare-fun e!777803 () Bool)

(declare-fun call!65600 () Bool)

(assert (=> b!1373031 (= e!777803 call!65600)))

(declare-fun b!1373032 () Bool)

(declare-fun e!777808 () Bool)

(assert (=> b!1373032 (= e!777808 e!777803)))

(declare-fun c!127751 () Bool)

(assert (=> b!1373032 (= c!127751 (validKeyInArray!0 (select (arr!44945 a!3861) from!3239)))))

(declare-fun d!147829 () Bool)

(declare-fun res!916415 () Bool)

(declare-fun e!777806 () Bool)

(assert (=> d!147829 (=> res!916415 e!777806)))

(assert (=> d!147829 (= res!916415 (bvsge from!3239 (size!45496 a!3861)))))

(assert (=> d!147829 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777806)))

(declare-fun b!1373033 () Bool)

(assert (=> b!1373033 (= e!777806 e!777808)))

(declare-fun res!916414 () Bool)

(assert (=> b!1373033 (=> (not res!916414) (not e!777808))))

(declare-fun e!777807 () Bool)

(assert (=> b!1373033 (= res!916414 (not e!777807))))

(declare-fun res!916416 () Bool)

(assert (=> b!1373033 (=> (not res!916416) (not e!777807))))

(assert (=> b!1373033 (= res!916416 (validKeyInArray!0 (select (arr!44945 a!3861) from!3239)))))

(declare-fun bm!65597 () Bool)

(assert (=> bm!65597 (= call!65600 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127751 (Cons!32189 (select (arr!44945 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1373034 () Bool)

(assert (=> b!1373034 (= e!777807 (contains!9731 acc!866 (select (arr!44945 a!3861) from!3239)))))

(declare-fun b!1373035 () Bool)

(assert (=> b!1373035 (= e!777803 call!65600)))

(assert (= (and d!147829 (not res!916415)) b!1373033))

(assert (= (and b!1373033 res!916416) b!1373034))

(assert (= (and b!1373033 res!916414) b!1373032))

(assert (= (and b!1373032 c!127751) b!1373035))

(assert (= (and b!1373032 (not c!127751)) b!1373031))

(assert (= (or b!1373035 b!1373031) bm!65597))

(assert (=> b!1373032 m!1256309))

(assert (=> b!1373032 m!1256309))

(assert (=> b!1373032 m!1256311))

(assert (=> b!1373033 m!1256309))

(assert (=> b!1373033 m!1256309))

(assert (=> b!1373033 m!1256311))

(assert (=> bm!65597 m!1256309))

(declare-fun m!1256407 () Bool)

(assert (=> bm!65597 m!1256407))

(assert (=> b!1373034 m!1256309))

(assert (=> b!1373034 m!1256309))

(declare-fun m!1256409 () Bool)

(assert (=> b!1373034 m!1256409))

(assert (=> b!1372934 d!147829))

(declare-fun d!147831 () Bool)

(assert (=> d!147831 (noDuplicate!2610 newAcc!98)))

(declare-fun lt!602947 () Unit!45325)

(declare-fun choose!2031 (List!32193 List!32193) Unit!45325)

(assert (=> d!147831 (= lt!602947 (choose!2031 newAcc!98 acc!866))))

(declare-fun e!777829 () Bool)

(assert (=> d!147831 e!777829))

(declare-fun res!916436 () Bool)

(assert (=> d!147831 (=> (not res!916436) (not e!777829))))

(assert (=> d!147831 (= res!916436 (subseq!1122 newAcc!98 acc!866))))

(assert (=> d!147831 (= (noDuplicateSubseq!309 newAcc!98 acc!866) lt!602947)))

(declare-fun b!1373061 () Bool)

(assert (=> b!1373061 (= e!777829 (noDuplicate!2610 acc!866))))

(assert (= (and d!147831 res!916436) b!1373061))

(declare-fun m!1256423 () Bool)

(assert (=> d!147831 m!1256423))

(declare-fun m!1256425 () Bool)

(assert (=> d!147831 m!1256425))

(assert (=> d!147831 m!1256325))

(assert (=> b!1373061 m!1256327))

(assert (=> b!1372934 d!147831))

(declare-fun d!147841 () Bool)

(declare-fun lt!602948 () Bool)

(assert (=> d!147841 (= lt!602948 (select (content!753 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!777830 () Bool)

(assert (=> d!147841 (= lt!602948 e!777830)))

(declare-fun res!916437 () Bool)

(assert (=> d!147841 (=> (not res!916437) (not e!777830))))

(assert (=> d!147841 (= res!916437 ((_ is Cons!32189) newAcc!98))))

(assert (=> d!147841 (= (contains!9731 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602948)))

(declare-fun b!1373062 () Bool)

(declare-fun e!777831 () Bool)

(assert (=> b!1373062 (= e!777830 e!777831)))

(declare-fun res!916438 () Bool)

(assert (=> b!1373062 (=> res!916438 e!777831)))

(assert (=> b!1373062 (= res!916438 (= (h!33398 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373063 () Bool)

(assert (=> b!1373063 (= e!777831 (contains!9731 (t!46894 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147841 res!916437) b!1373062))

(assert (= (and b!1373062 (not res!916438)) b!1373063))

(assert (=> d!147841 m!1256353))

(declare-fun m!1256427 () Bool)

(assert (=> d!147841 m!1256427))

(declare-fun m!1256429 () Bool)

(assert (=> b!1373063 m!1256429))

(assert (=> b!1372929 d!147841))

(declare-fun b!1373087 () Bool)

(declare-fun e!777856 () Bool)

(declare-fun e!777854 () Bool)

(assert (=> b!1373087 (= e!777856 e!777854)))

(declare-fun res!916460 () Bool)

(assert (=> b!1373087 (=> res!916460 e!777854)))

(declare-fun e!777853 () Bool)

(assert (=> b!1373087 (= res!916460 e!777853)))

(declare-fun res!916459 () Bool)

(assert (=> b!1373087 (=> (not res!916459) (not e!777853))))

(assert (=> b!1373087 (= res!916459 (= (h!33398 newAcc!98) (h!33398 acc!866)))))

(declare-fun b!1373086 () Bool)

(declare-fun e!777855 () Bool)

(assert (=> b!1373086 (= e!777855 e!777856)))

(declare-fun res!916462 () Bool)

(assert (=> b!1373086 (=> (not res!916462) (not e!777856))))

(assert (=> b!1373086 (= res!916462 ((_ is Cons!32189) acc!866))))

(declare-fun b!1373089 () Bool)

(assert (=> b!1373089 (= e!777854 (subseq!1122 newAcc!98 (t!46894 acc!866)))))

(declare-fun d!147843 () Bool)

(declare-fun res!916461 () Bool)

(assert (=> d!147843 (=> res!916461 e!777855)))

(assert (=> d!147843 (= res!916461 ((_ is Nil!32190) newAcc!98))))

(assert (=> d!147843 (= (subseq!1122 newAcc!98 acc!866) e!777855)))

(declare-fun b!1373088 () Bool)

(assert (=> b!1373088 (= e!777853 (subseq!1122 (t!46894 newAcc!98) (t!46894 acc!866)))))

(assert (= (and d!147843 (not res!916461)) b!1373086))

(assert (= (and b!1373086 res!916462) b!1373087))

(assert (= (and b!1373087 res!916459) b!1373088))

(assert (= (and b!1373087 (not res!916460)) b!1373089))

(declare-fun m!1256451 () Bool)

(assert (=> b!1373089 m!1256451))

(declare-fun m!1256453 () Bool)

(assert (=> b!1373088 m!1256453))

(assert (=> b!1372924 d!147843))

(check-sat (not d!147831) (not b!1373089) (not b!1373061) (not b!1372997) (not b!1373020) (not b!1372998) (not bm!65597) (not b!1373088) (not b!1372999) (not b!1373019) (not d!147841) (not b!1373034) (not b!1373010) (not b!1373033) (not b!1372975) (not d!147817) (not b!1373032) (not d!147805) (not b!1372973) (not d!147801) (not b!1373063) (not bm!65596))
(check-sat)
