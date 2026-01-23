; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502354 () Bool)

(assert start!502354)

(declare-fun b!4833287 () Bool)

(declare-fun e!3020362 () Bool)

(declare-fun tp!1363092 () Bool)

(assert (=> b!4833287 (= e!3020362 tp!1363092)))

(declare-fun tp_is_empty!34653 () Bool)

(declare-fun b!4833286 () Bool)

(declare-fun tp!1363091 () Bool)

(declare-fun e!3020361 () Bool)

(declare-fun tp_is_empty!34655 () Bool)

(assert (=> b!4833286 (= e!3020361 (and tp_is_empty!34653 tp_is_empty!34655 tp!1363091))))

(declare-fun res!2058895 () Bool)

(declare-fun e!3020363 () Bool)

(assert (=> start!502354 (=> (not res!2058895) (not e!3020363))))

(declare-datatypes ((K!16807 0))(
  ( (K!16808 (val!21751 Int)) )
))
(declare-datatypes ((V!17053 0))(
  ( (V!17054 (val!21752 Int)) )
))
(declare-datatypes ((tuple2!58406 0))(
  ( (tuple2!58407 (_1!32497 K!16807) (_2!32497 V!17053)) )
))
(declare-datatypes ((List!55224 0))(
  ( (Nil!55100) (Cons!55100 (h!61534 tuple2!58406) (t!362720 List!55224)) )
))
(declare-fun l!14180 () List!55224)

(declare-fun noDuplicateKeys!2493 (List!55224) Bool)

(assert (=> start!502354 (= res!2058895 (noDuplicateKeys!2493 l!14180))))

(assert (=> start!502354 e!3020363))

(assert (=> start!502354 e!3020361))

(declare-datatypes ((ListMap!6967 0))(
  ( (ListMap!6968 (toList!7579 List!55224)) )
))
(declare-fun acc!1183 () ListMap!6967)

(declare-fun inv!70708 (ListMap!6967) Bool)

(assert (=> start!502354 (and (inv!70708 acc!1183) e!3020362)))

(declare-fun b!4833284 () Bool)

(declare-fun res!2058894 () Bool)

(assert (=> b!4833284 (=> (not res!2058894) (not e!3020363))))

(assert (=> b!4833284 (= res!2058894 (not (is-Nil!55100 l!14180)))))

(declare-fun b!4833285 () Bool)

(assert (=> b!4833285 (= e!3020363 (not (noDuplicateKeys!2493 (t!362720 l!14180))))))

(declare-fun lt!1978832 () ListMap!6967)

(declare-fun addToMapMapFromBucket!1848 (List!55224 ListMap!6967) ListMap!6967)

(declare-fun +!2572 (ListMap!6967 tuple2!58406) ListMap!6967)

(assert (=> b!4833285 (= lt!1978832 (addToMapMapFromBucket!1848 (t!362720 l!14180) (+!2572 acc!1183 (h!61534 l!14180))))))

(assert (= (and start!502354 res!2058895) b!4833284))

(assert (= (and b!4833284 res!2058894) b!4833285))

(assert (= (and start!502354 (is-Cons!55100 l!14180)) b!4833286))

(assert (= start!502354 b!4833287))

(declare-fun m!5827726 () Bool)

(assert (=> start!502354 m!5827726))

(declare-fun m!5827728 () Bool)

(assert (=> start!502354 m!5827728))

(declare-fun m!5827730 () Bool)

(assert (=> b!4833285 m!5827730))

(declare-fun m!5827732 () Bool)

(assert (=> b!4833285 m!5827732))

(assert (=> b!4833285 m!5827732))

(declare-fun m!5827734 () Bool)

(assert (=> b!4833285 m!5827734))

(push 1)

(assert (not b!4833285))

(assert tp_is_empty!34653)

(assert (not b!4833286))

(assert (not start!502354))

(assert (not b!4833287))

(assert tp_is_empty!34655)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1549795 () Bool)

(declare-fun res!2058906 () Bool)

(declare-fun e!3020377 () Bool)

(assert (=> d!1549795 (=> res!2058906 e!3020377)))

(assert (=> d!1549795 (= res!2058906 (not (is-Cons!55100 l!14180)))))

(assert (=> d!1549795 (= (noDuplicateKeys!2493 l!14180) e!3020377)))

(declare-fun b!4833304 () Bool)

(declare-fun e!3020378 () Bool)

(assert (=> b!4833304 (= e!3020377 e!3020378)))

(declare-fun res!2058907 () Bool)

(assert (=> b!4833304 (=> (not res!2058907) (not e!3020378))))

(declare-fun containsKey!4465 (List!55224 K!16807) Bool)

(assert (=> b!4833304 (= res!2058907 (not (containsKey!4465 (t!362720 l!14180) (_1!32497 (h!61534 l!14180)))))))

(declare-fun b!4833305 () Bool)

(assert (=> b!4833305 (= e!3020378 (noDuplicateKeys!2493 (t!362720 l!14180)))))

(assert (= (and d!1549795 (not res!2058906)) b!4833304))

(assert (= (and b!4833304 res!2058907) b!4833305))

(declare-fun m!5827746 () Bool)

(assert (=> b!4833304 m!5827746))

(assert (=> b!4833305 m!5827730))

(assert (=> start!502354 d!1549795))

(declare-fun d!1549797 () Bool)

(declare-fun invariantList!1836 (List!55224) Bool)

(assert (=> d!1549797 (= (inv!70708 acc!1183) (invariantList!1836 (toList!7579 acc!1183)))))

(declare-fun bs!1167198 () Bool)

(assert (= bs!1167198 d!1549797))

(declare-fun m!5827748 () Bool)

(assert (=> bs!1167198 m!5827748))

(assert (=> start!502354 d!1549797))

(declare-fun d!1549799 () Bool)

(declare-fun res!2058908 () Bool)

(declare-fun e!3020379 () Bool)

(assert (=> d!1549799 (=> res!2058908 e!3020379)))

(assert (=> d!1549799 (= res!2058908 (not (is-Cons!55100 (t!362720 l!14180))))))

(assert (=> d!1549799 (= (noDuplicateKeys!2493 (t!362720 l!14180)) e!3020379)))

(declare-fun b!4833306 () Bool)

(declare-fun e!3020380 () Bool)

(assert (=> b!4833306 (= e!3020379 e!3020380)))

(declare-fun res!2058909 () Bool)

(assert (=> b!4833306 (=> (not res!2058909) (not e!3020380))))

(assert (=> b!4833306 (= res!2058909 (not (containsKey!4465 (t!362720 (t!362720 l!14180)) (_1!32497 (h!61534 (t!362720 l!14180))))))))

(declare-fun b!4833307 () Bool)

(assert (=> b!4833307 (= e!3020380 (noDuplicateKeys!2493 (t!362720 (t!362720 l!14180))))))

(assert (= (and d!1549799 (not res!2058908)) b!4833306))

(assert (= (and b!4833306 res!2058909) b!4833307))

(declare-fun m!5827750 () Bool)

(assert (=> b!4833306 m!5827750))

(declare-fun m!5827752 () Bool)

(assert (=> b!4833307 m!5827752))

(assert (=> b!4833285 d!1549799))

(declare-fun b!4833330 () Bool)

(assert (=> b!4833330 true))

(declare-fun bs!1167200 () Bool)

(declare-fun b!4833331 () Bool)

(assert (= bs!1167200 (and b!4833331 b!4833330)))

(declare-fun lambda!238622 () Int)

(declare-fun lambda!238621 () Int)

(assert (=> bs!1167200 (= lambda!238622 lambda!238621)))

(assert (=> b!4833331 true))

(declare-fun lt!1978894 () ListMap!6967)

(declare-fun lambda!238623 () Int)

(assert (=> bs!1167200 (= (= lt!1978894 (+!2572 acc!1183 (h!61534 l!14180))) (= lambda!238623 lambda!238621))))

(assert (=> b!4833331 (= (= lt!1978894 (+!2572 acc!1183 (h!61534 l!14180))) (= lambda!238623 lambda!238622))))

(assert (=> b!4833331 true))

(declare-fun bs!1167201 () Bool)

(declare-fun d!1549801 () Bool)

(assert (= bs!1167201 (and d!1549801 b!4833330)))

(declare-fun lt!1978893 () ListMap!6967)

(declare-fun lambda!238624 () Int)

(assert (=> bs!1167201 (= (= lt!1978893 (+!2572 acc!1183 (h!61534 l!14180))) (= lambda!238624 lambda!238621))))

(declare-fun bs!1167202 () Bool)

(assert (= bs!1167202 (and d!1549801 b!4833331)))

(assert (=> bs!1167202 (= (= lt!1978893 (+!2572 acc!1183 (h!61534 l!14180))) (= lambda!238624 lambda!238622))))

(assert (=> bs!1167202 (= (= lt!1978893 lt!1978894) (= lambda!238624 lambda!238623))))

(assert (=> d!1549801 true))

(declare-fun e!3020399 () ListMap!6967)

(assert (=> b!4833330 (= e!3020399 (+!2572 acc!1183 (h!61534 l!14180)))))

(declare-datatypes ((Unit!144157 0))(
  ( (Unit!144158) )
))
(declare-fun lt!1978898 () Unit!144157)

(declare-fun call!336816 () Unit!144157)

(assert (=> b!4833330 (= lt!1978898 call!336816)))

(declare-fun call!336815 () Bool)

(assert (=> b!4833330 call!336815))

(declare-fun lt!1978899 () Unit!144157)

(assert (=> b!4833330 (= lt!1978899 lt!1978898)))

(declare-fun call!336817 () Bool)

(assert (=> b!4833330 call!336817))

(declare-fun lt!1978890 () Unit!144157)

(declare-fun Unit!144159 () Unit!144157)

(assert (=> b!4833330 (= lt!1978890 Unit!144159)))

(assert (=> b!4833331 (= e!3020399 lt!1978894)))

(declare-fun lt!1978887 () ListMap!6967)

(assert (=> b!4833331 (= lt!1978887 (+!2572 (+!2572 acc!1183 (h!61534 l!14180)) (h!61534 (t!362720 l!14180))))))

(assert (=> b!4833331 (= lt!1978894 (addToMapMapFromBucket!1848 (t!362720 (t!362720 l!14180)) (+!2572 (+!2572 acc!1183 (h!61534 l!14180)) (h!61534 (t!362720 l!14180)))))))

(declare-fun lt!1978902 () Unit!144157)

(assert (=> b!4833331 (= lt!1978902 call!336816)))

(declare-fun forall!12695 (List!55224 Int) Bool)

(assert (=> b!4833331 (forall!12695 (toList!7579 (+!2572 acc!1183 (h!61534 l!14180))) lambda!238622)))

(declare-fun lt!1978889 () Unit!144157)

(assert (=> b!4833331 (= lt!1978889 lt!1978902)))

(assert (=> b!4833331 (forall!12695 (toList!7579 lt!1978887) lambda!238623)))

(declare-fun lt!1978885 () Unit!144157)

(declare-fun Unit!144160 () Unit!144157)

(assert (=> b!4833331 (= lt!1978885 Unit!144160)))

(assert (=> b!4833331 (forall!12695 (t!362720 (t!362720 l!14180)) lambda!238623)))

(declare-fun lt!1978884 () Unit!144157)

(declare-fun Unit!144161 () Unit!144157)

(assert (=> b!4833331 (= lt!1978884 Unit!144161)))

(declare-fun lt!1978897 () Unit!144157)

(declare-fun Unit!144162 () Unit!144157)

(assert (=> b!4833331 (= lt!1978897 Unit!144162)))

(declare-fun lt!1978892 () Unit!144157)

(declare-fun forallContained!4425 (List!55224 Int tuple2!58406) Unit!144157)

(assert (=> b!4833331 (= lt!1978892 (forallContained!4425 (toList!7579 lt!1978887) lambda!238623 (h!61534 (t!362720 l!14180))))))

(declare-fun contains!18912 (ListMap!6967 K!16807) Bool)

(assert (=> b!4833331 (contains!18912 lt!1978887 (_1!32497 (h!61534 (t!362720 l!14180))))))

(declare-fun lt!1978904 () Unit!144157)

(declare-fun Unit!144163 () Unit!144157)

(assert (=> b!4833331 (= lt!1978904 Unit!144163)))

(assert (=> b!4833331 (contains!18912 lt!1978894 (_1!32497 (h!61534 (t!362720 l!14180))))))

(declare-fun lt!1978900 () Unit!144157)

(declare-fun Unit!144164 () Unit!144157)

(assert (=> b!4833331 (= lt!1978900 Unit!144164)))

(assert (=> b!4833331 (forall!12695 (t!362720 l!14180) lambda!238623)))

(declare-fun lt!1978891 () Unit!144157)

(declare-fun Unit!144165 () Unit!144157)

(assert (=> b!4833331 (= lt!1978891 Unit!144165)))

(assert (=> b!4833331 call!336815))

(declare-fun lt!1978895 () Unit!144157)

(declare-fun Unit!144166 () Unit!144157)

(assert (=> b!4833331 (= lt!1978895 Unit!144166)))

(declare-fun lt!1978886 () Unit!144157)

(declare-fun Unit!144167 () Unit!144157)

(assert (=> b!4833331 (= lt!1978886 Unit!144167)))

(declare-fun lt!1978903 () Unit!144157)

(declare-fun addForallContainsKeyThenBeforeAdding!1012 (ListMap!6967 ListMap!6967 K!16807 V!17053) Unit!144157)

(assert (=> b!4833331 (= lt!1978903 (addForallContainsKeyThenBeforeAdding!1012 (+!2572 acc!1183 (h!61534 l!14180)) lt!1978894 (_1!32497 (h!61534 (t!362720 l!14180))) (_2!32497 (h!61534 (t!362720 l!14180)))))))

(assert (=> b!4833331 (forall!12695 (toList!7579 (+!2572 acc!1183 (h!61534 l!14180))) lambda!238623)))

(declare-fun lt!1978888 () Unit!144157)

(assert (=> b!4833331 (= lt!1978888 lt!1978903)))

(assert (=> b!4833331 (forall!12695 (toList!7579 (+!2572 acc!1183 (h!61534 l!14180))) lambda!238623)))

(declare-fun lt!1978896 () Unit!144157)

(declare-fun Unit!144168 () Unit!144157)

(assert (=> b!4833331 (= lt!1978896 Unit!144168)))

(declare-fun res!2058924 () Bool)

(assert (=> b!4833331 (= res!2058924 call!336817)))

(declare-fun e!3020397 () Bool)

(assert (=> b!4833331 (=> (not res!2058924) (not e!3020397))))

(assert (=> b!4833331 e!3020397))

(declare-fun lt!1978901 () Unit!144157)

(declare-fun Unit!144169 () Unit!144157)

(assert (=> b!4833331 (= lt!1978901 Unit!144169)))

(declare-fun b!4833332 () Bool)

(declare-fun res!2058926 () Bool)

(declare-fun e!3020398 () Bool)

(assert (=> b!4833332 (=> (not res!2058926) (not e!3020398))))

(assert (=> b!4833332 (= res!2058926 (forall!12695 (toList!7579 (+!2572 acc!1183 (h!61534 l!14180))) lambda!238624))))

(declare-fun b!4833333 () Bool)

(assert (=> b!4833333 (= e!3020398 (invariantList!1836 (toList!7579 lt!1978893)))))

(declare-fun b!4833334 () Bool)

(assert (=> b!4833334 (= e!3020397 (forall!12695 (toList!7579 (+!2572 acc!1183 (h!61534 l!14180))) lambda!238623))))

(declare-fun c!823546 () Bool)

(declare-fun bm!336810 () Bool)

(assert (=> bm!336810 (= call!336817 (forall!12695 (ite c!823546 (toList!7579 (+!2572 acc!1183 (h!61534 l!14180))) (t!362720 l!14180)) (ite c!823546 lambda!238621 lambda!238623)))))

(assert (=> d!1549801 e!3020398))

(declare-fun res!2058925 () Bool)

(assert (=> d!1549801 (=> (not res!2058925) (not e!3020398))))

(assert (=> d!1549801 (= res!2058925 (forall!12695 (t!362720 l!14180) lambda!238624))))

(assert (=> d!1549801 (= lt!1978893 e!3020399)))

(assert (=> d!1549801 (= c!823546 (is-Nil!55100 (t!362720 l!14180)))))

(assert (=> d!1549801 (noDuplicateKeys!2493 (t!362720 l!14180))))

(assert (=> d!1549801 (= (addToMapMapFromBucket!1848 (t!362720 l!14180) (+!2572 acc!1183 (h!61534 l!14180))) lt!1978893)))

(declare-fun bm!336811 () Bool)

(assert (=> bm!336811 (= call!336815 (forall!12695 (ite c!823546 (toList!7579 (+!2572 acc!1183 (h!61534 l!14180))) (toList!7579 lt!1978887)) (ite c!823546 lambda!238621 lambda!238623)))))

(declare-fun bm!336812 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1013 (ListMap!6967) Unit!144157)

(assert (=> bm!336812 (= call!336816 (lemmaContainsAllItsOwnKeys!1013 (+!2572 acc!1183 (h!61534 l!14180))))))

(assert (= (and d!1549801 c!823546) b!4833330))

(assert (= (and d!1549801 (not c!823546)) b!4833331))

(assert (= (and b!4833331 res!2058924) b!4833334))

(assert (= (or b!4833330 b!4833331) bm!336811))

(assert (= (or b!4833330 b!4833331) bm!336810))

(assert (= (or b!4833330 b!4833331) bm!336812))

(assert (= (and d!1549801 res!2058925) b!4833332))

(assert (= (and b!4833332 res!2058926) b!4833333))

(declare-fun m!5827762 () Bool)

(assert (=> b!4833333 m!5827762))

(declare-fun m!5827764 () Bool)

(assert (=> b!4833331 m!5827764))

(declare-fun m!5827766 () Bool)

(assert (=> b!4833331 m!5827766))

(declare-fun m!5827768 () Bool)

(assert (=> b!4833331 m!5827768))

(assert (=> b!4833331 m!5827764))

(declare-fun m!5827770 () Bool)

(assert (=> b!4833331 m!5827770))

(declare-fun m!5827772 () Bool)

(assert (=> b!4833331 m!5827772))

(declare-fun m!5827774 () Bool)

(assert (=> b!4833331 m!5827774))

(declare-fun m!5827776 () Bool)

(assert (=> b!4833331 m!5827776))

(declare-fun m!5827778 () Bool)

(assert (=> b!4833331 m!5827778))

(declare-fun m!5827780 () Bool)

(assert (=> b!4833331 m!5827780))

(declare-fun m!5827782 () Bool)

(assert (=> b!4833331 m!5827782))

(assert (=> b!4833331 m!5827732))

(declare-fun m!5827784 () Bool)

(assert (=> b!4833331 m!5827784))

(assert (=> b!4833331 m!5827732))

(assert (=> b!4833331 m!5827778))

(declare-fun m!5827786 () Bool)

(assert (=> d!1549801 m!5827786))

(assert (=> d!1549801 m!5827730))

(assert (=> b!4833334 m!5827764))

(declare-fun m!5827788 () Bool)

(assert (=> bm!336811 m!5827788))

(declare-fun m!5827790 () Bool)

(assert (=> b!4833332 m!5827790))

(declare-fun m!5827792 () Bool)

(assert (=> bm!336810 m!5827792))

(assert (=> bm!336812 m!5827732))

(declare-fun m!5827794 () Bool)

(assert (=> bm!336812 m!5827794))

(assert (=> b!4833285 d!1549801))

(declare-fun d!1549811 () Bool)

(declare-fun e!3020402 () Bool)

(assert (=> d!1549811 e!3020402))

(declare-fun res!2058931 () Bool)

(assert (=> d!1549811 (=> (not res!2058931) (not e!3020402))))

(declare-fun lt!1978913 () ListMap!6967)

(assert (=> d!1549811 (= res!2058931 (contains!18912 lt!1978913 (_1!32497 (h!61534 l!14180))))))

(declare-fun lt!1978915 () List!55224)

(assert (=> d!1549811 (= lt!1978913 (ListMap!6968 lt!1978915))))

(declare-fun lt!1978916 () Unit!144157)

(declare-fun lt!1978914 () Unit!144157)

(assert (=> d!1549811 (= lt!1978916 lt!1978914)))

(declare-datatypes ((Option!13540 0))(
  ( (None!13539) (Some!13539 (v!49240 V!17053)) )
))
(declare-fun getValueByKey!2667 (List!55224 K!16807) Option!13540)

(assert (=> d!1549811 (= (getValueByKey!2667 lt!1978915 (_1!32497 (h!61534 l!14180))) (Some!13539 (_2!32497 (h!61534 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1237 (List!55224 K!16807 V!17053) Unit!144157)

(assert (=> d!1549811 (= lt!1978914 (lemmaContainsTupThenGetReturnValue!1237 lt!1978915 (_1!32497 (h!61534 l!14180)) (_2!32497 (h!61534 l!14180))))))

(declare-fun insertNoDuplicatedKeys!745 (List!55224 K!16807 V!17053) List!55224)

(assert (=> d!1549811 (= lt!1978915 (insertNoDuplicatedKeys!745 (toList!7579 acc!1183) (_1!32497 (h!61534 l!14180)) (_2!32497 (h!61534 l!14180))))))

(assert (=> d!1549811 (= (+!2572 acc!1183 (h!61534 l!14180)) lt!1978913)))

(declare-fun b!4833341 () Bool)

(declare-fun res!2058932 () Bool)

(assert (=> b!4833341 (=> (not res!2058932) (not e!3020402))))

(assert (=> b!4833341 (= res!2058932 (= (getValueByKey!2667 (toList!7579 lt!1978913) (_1!32497 (h!61534 l!14180))) (Some!13539 (_2!32497 (h!61534 l!14180)))))))

(declare-fun b!4833342 () Bool)

(declare-fun contains!18913 (List!55224 tuple2!58406) Bool)

(assert (=> b!4833342 (= e!3020402 (contains!18913 (toList!7579 lt!1978913) (h!61534 l!14180)))))

(assert (= (and d!1549811 res!2058931) b!4833341))

(assert (= (and b!4833341 res!2058932) b!4833342))

(declare-fun m!5827796 () Bool)

(assert (=> d!1549811 m!5827796))

(declare-fun m!5827798 () Bool)

(assert (=> d!1549811 m!5827798))

(declare-fun m!5827800 () Bool)

(assert (=> d!1549811 m!5827800))

(declare-fun m!5827802 () Bool)

(assert (=> d!1549811 m!5827802))

(declare-fun m!5827804 () Bool)

(assert (=> b!4833341 m!5827804))

(declare-fun m!5827806 () Bool)

(assert (=> b!4833342 m!5827806))

(assert (=> b!4833285 d!1549811))

(declare-fun e!3020405 () Bool)

(declare-fun b!4833347 () Bool)

(declare-fun tp!1363101 () Bool)

(assert (=> b!4833347 (= e!3020405 (and tp_is_empty!34653 tp_is_empty!34655 tp!1363101))))

(assert (=> b!4833287 (= tp!1363092 e!3020405)))

(assert (= (and b!4833287 (is-Cons!55100 (toList!7579 acc!1183))) b!4833347))

(declare-fun e!3020406 () Bool)

(declare-fun b!4833348 () Bool)

(declare-fun tp!1363102 () Bool)

(assert (=> b!4833348 (= e!3020406 (and tp_is_empty!34653 tp_is_empty!34655 tp!1363102))))

(assert (=> b!4833286 (= tp!1363091 e!3020406)))

(assert (= (and b!4833286 (is-Cons!55100 (t!362720 l!14180))) b!4833348))

(push 1)

(assert (not b!4833307))

(assert (not bm!336812))

(assert tp_is_empty!34653)

(assert (not bm!336811))

(assert (not d!1549811))

(assert (not d!1549801))

(assert (not b!4833332))

(assert (not b!4833331))

(assert (not b!4833305))

(assert (not b!4833304))

(assert (not b!4833333))

(assert (not b!4833342))

(assert (not b!4833341))

(assert (not b!4833334))

(assert (not b!4833306))

(assert (not b!4833348))

(assert (not bm!336810))

(assert (not b!4833347))

(assert (not d!1549797))

(assert tp_is_empty!34655)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

