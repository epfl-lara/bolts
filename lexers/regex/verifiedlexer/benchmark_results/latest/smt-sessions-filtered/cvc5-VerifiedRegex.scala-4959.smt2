; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252218 () Bool)

(assert start!252218)

(declare-fun res!1093873 () Bool)

(declare-fun e!1639855 () Bool)

(assert (=> start!252218 (=> (not res!1093873) (not e!1639855))))

(declare-datatypes ((B!2255 0))(
  ( (B!2256 (val!9595 Int)) )
))
(declare-datatypes ((List!30028 0))(
  ( (Nil!29928) (Cons!29928 (h!35348 B!2255) (t!213041 List!30028)) )
))
(declare-fun l!3770 () List!30028)

(declare-fun noDuplicate!476 (List!30028) Bool)

(assert (=> start!252218 (= res!1093873 (noDuplicate!476 l!3770))))

(assert (=> start!252218 e!1639855))

(declare-fun e!1639854 () Bool)

(assert (=> start!252218 e!1639854))

(declare-fun tp_is_empty!13535 () Bool)

(assert (=> start!252218 tp_is_empty!13535))

(declare-fun b!2598076 () Bool)

(declare-fun res!1093872 () Bool)

(assert (=> b!2598076 (=> (not res!1093872) (not e!1639855))))

(assert (=> b!2598076 (= res!1093872 (not (is-Nil!29928 l!3770)))))

(declare-fun b!2598077 () Bool)

(declare-fun e!9448 () B!2255)

(declare-fun -!191 (List!30028 B!2255) List!30028)

(assert (=> b!2598077 (= e!1639855 (not (noDuplicate!476 (-!191 l!3770 e!9448))))))

(declare-datatypes ((Unit!43985 0))(
  ( (Unit!43986) )
))
(declare-fun lt!914878 () Unit!43985)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!55 (List!30028 B!2255) Unit!43985)

(assert (=> b!2598077 (= lt!914878 (lemmaRemoveElmtMaintainsNoDuplicate!55 (t!213041 l!3770) e!9448))))

(declare-fun b!2598078 () Bool)

(declare-fun tp!823451 () Bool)

(assert (=> b!2598078 (= e!1639854 (and tp_is_empty!13535 tp!823451))))

(assert (= (and start!252218 res!1093873) b!2598076))

(assert (= (and b!2598076 res!1093872) b!2598077))

(assert (= (and start!252218 (is-Cons!29928 l!3770)) b!2598078))

(declare-fun m!2934237 () Bool)

(assert (=> start!252218 m!2934237))

(declare-fun m!2934239 () Bool)

(assert (=> b!2598077 m!2934239))

(assert (=> b!2598077 m!2934239))

(declare-fun m!2934241 () Bool)

(assert (=> b!2598077 m!2934241))

(declare-fun m!2934243 () Bool)

(assert (=> b!2598077 m!2934243))

(push 1)

(assert (not start!252218))

(assert (not b!2598077))

(assert (not b!2598078))

(assert tp_is_empty!13535)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736180 () Bool)

(declare-fun res!1093884 () Bool)

(declare-fun e!1639866 () Bool)

(assert (=> d!736180 (=> res!1093884 e!1639866)))

(assert (=> d!736180 (= res!1093884 (is-Nil!29928 l!3770))))

(assert (=> d!736180 (= (noDuplicate!476 l!3770) e!1639866)))

(declare-fun b!2598092 () Bool)

(declare-fun e!1639867 () Bool)

(assert (=> b!2598092 (= e!1639866 e!1639867)))

(declare-fun res!1093885 () Bool)

(assert (=> b!2598092 (=> (not res!1093885) (not e!1639867))))

(declare-fun contains!5476 (List!30028 B!2255) Bool)

(assert (=> b!2598092 (= res!1093885 (not (contains!5476 (t!213041 l!3770) (h!35348 l!3770))))))

(declare-fun b!2598093 () Bool)

(assert (=> b!2598093 (= e!1639867 (noDuplicate!476 (t!213041 l!3770)))))

(assert (= (and d!736180 (not res!1093884)) b!2598092))

(assert (= (and b!2598092 res!1093885) b!2598093))

(declare-fun m!2934253 () Bool)

(assert (=> b!2598092 m!2934253))

(declare-fun m!2934255 () Bool)

(assert (=> b!2598093 m!2934255))

(assert (=> start!252218 d!736180))

(declare-fun d!736182 () Bool)

(declare-fun res!1093886 () Bool)

(declare-fun e!1639868 () Bool)

(assert (=> d!736182 (=> res!1093886 e!1639868)))

(assert (=> d!736182 (= res!1093886 (is-Nil!29928 (-!191 l!3770 e!9448)))))

(assert (=> d!736182 (= (noDuplicate!476 (-!191 l!3770 e!9448)) e!1639868)))

(declare-fun b!2598094 () Bool)

(declare-fun e!1639869 () Bool)

(assert (=> b!2598094 (= e!1639868 e!1639869)))

(declare-fun res!1093887 () Bool)

(assert (=> b!2598094 (=> (not res!1093887) (not e!1639869))))

(assert (=> b!2598094 (= res!1093887 (not (contains!5476 (t!213041 (-!191 l!3770 e!9448)) (h!35348 (-!191 l!3770 e!9448)))))))

(declare-fun b!2598095 () Bool)

(assert (=> b!2598095 (= e!1639869 (noDuplicate!476 (t!213041 (-!191 l!3770 e!9448))))))

(assert (= (and d!736182 (not res!1093886)) b!2598094))

(assert (= (and b!2598094 res!1093887) b!2598095))

(declare-fun m!2934257 () Bool)

(assert (=> b!2598094 m!2934257))

(declare-fun m!2934259 () Bool)

(assert (=> b!2598095 m!2934259))

(assert (=> b!2598077 d!736182))

(declare-fun b!2598108 () Bool)

(declare-fun e!1639881 () Bool)

(declare-fun lt!914884 () List!30028)

(declare-fun content!4215 (List!30028) (Set B!2255))

(assert (=> b!2598108 (= e!1639881 (= (content!4215 lt!914884) (set.minus (content!4215 l!3770) (set.insert e!9448 (as set.empty (Set B!2255))))))))

(declare-fun b!2598109 () Bool)

(declare-fun e!1639880 () List!30028)

(declare-fun e!1639879 () List!30028)

(assert (=> b!2598109 (= e!1639880 e!1639879)))

(declare-fun c!418471 () Bool)

(assert (=> b!2598109 (= c!418471 (= e!9448 (h!35348 l!3770)))))

(declare-fun b!2598110 () Bool)

(declare-fun call!167367 () List!30028)

(assert (=> b!2598110 (= e!1639879 call!167367)))

(declare-fun bm!167362 () Bool)

(assert (=> bm!167362 (= call!167367 (-!191 (t!213041 l!3770) e!9448))))

(declare-fun b!2598112 () Bool)

(assert (=> b!2598112 (= e!1639879 (Cons!29928 (h!35348 l!3770) call!167367))))

(declare-fun d!736184 () Bool)

(assert (=> d!736184 e!1639881))

(declare-fun res!1093892 () Bool)

(assert (=> d!736184 (=> (not res!1093892) (not e!1639881))))

(declare-fun size!23229 (List!30028) Int)

(assert (=> d!736184 (= res!1093892 (<= (size!23229 lt!914884) (size!23229 l!3770)))))

(assert (=> d!736184 (= lt!914884 e!1639880)))

(declare-fun c!418472 () Bool)

(assert (=> d!736184 (= c!418472 (is-Cons!29928 l!3770))))

(assert (=> d!736184 (= (-!191 l!3770 e!9448) lt!914884)))

(declare-fun b!2598111 () Bool)

(assert (=> b!2598111 (= e!1639880 Nil!29928)))

(assert (= (and d!736184 c!418472) b!2598109))

(assert (= (and d!736184 (not c!418472)) b!2598111))

(assert (= (and b!2598109 c!418471) b!2598110))

(assert (= (and b!2598109 (not c!418471)) b!2598112))

(assert (= (or b!2598110 b!2598112) bm!167362))

(assert (= (and d!736184 res!1093892) b!2598108))

(declare-fun m!2934261 () Bool)

(assert (=> b!2598108 m!2934261))

(declare-fun m!2934263 () Bool)

(assert (=> b!2598108 m!2934263))

(declare-fun m!2934265 () Bool)

(assert (=> b!2598108 m!2934265))

(declare-fun m!2934267 () Bool)

(assert (=> bm!167362 m!2934267))

(declare-fun m!2934269 () Bool)

(assert (=> d!736184 m!2934269))

(declare-fun m!2934271 () Bool)

(assert (=> d!736184 m!2934271))

(assert (=> b!2598077 d!736184))

(declare-fun d!736188 () Bool)

(assert (=> d!736188 (noDuplicate!476 (-!191 (t!213041 l!3770) e!9448))))

(declare-fun lt!914887 () Unit!43985)

(declare-fun choose!15447 (List!30028 B!2255) Unit!43985)

(assert (=> d!736188 (= lt!914887 (choose!15447 (t!213041 l!3770) e!9448))))

(assert (=> d!736188 (noDuplicate!476 (t!213041 l!3770))))

(assert (=> d!736188 (= (lemmaRemoveElmtMaintainsNoDuplicate!55 (t!213041 l!3770) e!9448) lt!914887)))

(declare-fun bs!473077 () Bool)

(assert (= bs!473077 d!736188))

(assert (=> bs!473077 m!2934267))

(assert (=> bs!473077 m!2934267))

(declare-fun m!2934273 () Bool)

(assert (=> bs!473077 m!2934273))

(declare-fun m!2934275 () Bool)

(assert (=> bs!473077 m!2934275))

(assert (=> bs!473077 m!2934255))

(assert (=> b!2598077 d!736188))

(declare-fun b!2598121 () Bool)

(declare-fun e!1639889 () Bool)

(declare-fun tp!823457 () Bool)

(assert (=> b!2598121 (= e!1639889 (and tp_is_empty!13535 tp!823457))))

(assert (=> b!2598078 (= tp!823451 e!1639889)))

(assert (= (and b!2598078 (is-Cons!29928 (t!213041 l!3770))) b!2598121))

(push 1)

(assert (not d!736188))

(assert (not b!2598092))

(assert (not b!2598095))

(assert (not b!2598108))

(assert (not b!2598121))

(assert (not d!736184))

(assert tp_is_empty!13535)

(assert (not b!2598093))

(assert (not b!2598094))

(assert (not bm!167362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2598144 () Bool)

(declare-fun e!1639908 () Bool)

(declare-fun lt!914894 () List!30028)

(assert (=> b!2598144 (= e!1639908 (= (content!4215 lt!914894) (set.minus (content!4215 (t!213041 l!3770)) (set.insert e!9448 (as set.empty (Set B!2255))))))))

(declare-fun b!2598145 () Bool)

(declare-fun e!1639907 () List!30028)

(declare-fun e!1639906 () List!30028)

(assert (=> b!2598145 (= e!1639907 e!1639906)))

(declare-fun c!418479 () Bool)

(assert (=> b!2598145 (= c!418479 (= e!9448 (h!35348 (t!213041 l!3770))))))

(declare-fun b!2598146 () Bool)

(declare-fun call!167371 () List!30028)

(assert (=> b!2598146 (= e!1639906 call!167371)))

(declare-fun bm!167366 () Bool)

(assert (=> bm!167366 (= call!167371 (-!191 (t!213041 (t!213041 l!3770)) e!9448))))

(declare-fun b!2598148 () Bool)

(assert (=> b!2598148 (= e!1639906 (Cons!29928 (h!35348 (t!213041 l!3770)) call!167371))))

(declare-fun d!736196 () Bool)

(assert (=> d!736196 e!1639908))

(declare-fun res!1093902 () Bool)

(assert (=> d!736196 (=> (not res!1093902) (not e!1639908))))

(assert (=> d!736196 (= res!1093902 (<= (size!23229 lt!914894) (size!23229 (t!213041 l!3770))))))

(assert (=> d!736196 (= lt!914894 e!1639907)))

(declare-fun c!418480 () Bool)

(assert (=> d!736196 (= c!418480 (is-Cons!29928 (t!213041 l!3770)))))

(assert (=> d!736196 (= (-!191 (t!213041 l!3770) e!9448) lt!914894)))

(declare-fun b!2598147 () Bool)

(assert (=> b!2598147 (= e!1639907 Nil!29928)))

(assert (= (and d!736196 c!418480) b!2598145))

(assert (= (and d!736196 (not c!418480)) b!2598147))

(assert (= (and b!2598145 c!418479) b!2598146))

(assert (= (and b!2598145 (not c!418479)) b!2598148))

(assert (= (or b!2598146 b!2598148) bm!167366))

(assert (= (and d!736196 res!1093902) b!2598144))

(declare-fun m!2934301 () Bool)

(assert (=> b!2598144 m!2934301))

(declare-fun m!2934303 () Bool)

(assert (=> b!2598144 m!2934303))

(assert (=> b!2598144 m!2934265))

(declare-fun m!2934305 () Bool)

(assert (=> bm!167366 m!2934305))

(declare-fun m!2934307 () Bool)

(assert (=> d!736196 m!2934307))

(declare-fun m!2934309 () Bool)

(assert (=> d!736196 m!2934309))

(assert (=> bm!167362 d!736196))

(declare-fun d!736198 () Bool)

(declare-fun res!1093903 () Bool)

(declare-fun e!1639909 () Bool)

(assert (=> d!736198 (=> res!1093903 e!1639909)))

(assert (=> d!736198 (= res!1093903 (is-Nil!29928 (-!191 (t!213041 l!3770) e!9448)))))

(assert (=> d!736198 (= (noDuplicate!476 (-!191 (t!213041 l!3770) e!9448)) e!1639909)))

(declare-fun b!2598149 () Bool)

(declare-fun e!1639910 () Bool)

(assert (=> b!2598149 (= e!1639909 e!1639910)))

(declare-fun res!1093904 () Bool)

(assert (=> b!2598149 (=> (not res!1093904) (not e!1639910))))

(assert (=> b!2598149 (= res!1093904 (not (contains!5476 (t!213041 (-!191 (t!213041 l!3770) e!9448)) (h!35348 (-!191 (t!213041 l!3770) e!9448)))))))

(declare-fun b!2598150 () Bool)

(assert (=> b!2598150 (= e!1639910 (noDuplicate!476 (t!213041 (-!191 (t!213041 l!3770) e!9448))))))

(assert (= (and d!736198 (not res!1093903)) b!2598149))

(assert (= (and b!2598149 res!1093904) b!2598150))

(declare-fun m!2934311 () Bool)

(assert (=> b!2598149 m!2934311))

(declare-fun m!2934313 () Bool)

(assert (=> b!2598150 m!2934313))

(assert (=> d!736188 d!736198))

(assert (=> d!736188 d!736196))

(declare-fun d!736200 () Bool)

(assert (=> d!736200 (noDuplicate!476 (-!191 (t!213041 l!3770) e!9448))))

(assert (=> d!736200 true))

(declare-fun _$92!354 () Unit!43985)

(assert (=> d!736200 (= (choose!15447 (t!213041 l!3770) e!9448) _$92!354)))

(declare-fun bs!473079 () Bool)

(assert (= bs!473079 d!736200))

(assert (=> bs!473079 m!2934267))

(assert (=> bs!473079 m!2934267))

(assert (=> bs!473079 m!2934273))

(assert (=> d!736188 d!736200))

(declare-fun d!736202 () Bool)

(declare-fun res!1093905 () Bool)

(declare-fun e!1639912 () Bool)

(assert (=> d!736202 (=> res!1093905 e!1639912)))

(assert (=> d!736202 (= res!1093905 (is-Nil!29928 (t!213041 l!3770)))))

(assert (=> d!736202 (= (noDuplicate!476 (t!213041 l!3770)) e!1639912)))

(declare-fun b!2598151 () Bool)

(declare-fun e!1639913 () Bool)

(assert (=> b!2598151 (= e!1639912 e!1639913)))

(declare-fun res!1093906 () Bool)

(assert (=> b!2598151 (=> (not res!1093906) (not e!1639913))))

(assert (=> b!2598151 (= res!1093906 (not (contains!5476 (t!213041 (t!213041 l!3770)) (h!35348 (t!213041 l!3770)))))))

(declare-fun b!2598152 () Bool)

(assert (=> b!2598152 (= e!1639913 (noDuplicate!476 (t!213041 (t!213041 l!3770))))))

(assert (= (and d!736202 (not res!1093905)) b!2598151))

(assert (= (and b!2598151 res!1093906) b!2598152))

(declare-fun m!2934315 () Bool)

(assert (=> b!2598151 m!2934315))

(declare-fun m!2934317 () Bool)

(assert (=> b!2598152 m!2934317))

(assert (=> d!736188 d!736202))

(declare-fun d!736204 () Bool)

(declare-fun lt!914897 () Bool)

(assert (=> d!736204 (= lt!914897 (set.member (h!35348 l!3770) (content!4215 (t!213041 l!3770))))))

(declare-fun e!1639918 () Bool)

(assert (=> d!736204 (= lt!914897 e!1639918)))

(declare-fun res!1093911 () Bool)

(assert (=> d!736204 (=> (not res!1093911) (not e!1639918))))

(assert (=> d!736204 (= res!1093911 (is-Cons!29928 (t!213041 l!3770)))))

(assert (=> d!736204 (= (contains!5476 (t!213041 l!3770) (h!35348 l!3770)) lt!914897)))

(declare-fun b!2598157 () Bool)

(declare-fun e!1639919 () Bool)

(assert (=> b!2598157 (= e!1639918 e!1639919)))

(declare-fun res!1093912 () Bool)

(assert (=> b!2598157 (=> res!1093912 e!1639919)))

(assert (=> b!2598157 (= res!1093912 (= (h!35348 (t!213041 l!3770)) (h!35348 l!3770)))))

(declare-fun b!2598158 () Bool)

(assert (=> b!2598158 (= e!1639919 (contains!5476 (t!213041 (t!213041 l!3770)) (h!35348 l!3770)))))

(assert (= (and d!736204 res!1093911) b!2598157))

(assert (= (and b!2598157 (not res!1093912)) b!2598158))

(assert (=> d!736204 m!2934303))

(declare-fun m!2934319 () Bool)

(assert (=> d!736204 m!2934319))

(declare-fun m!2934321 () Bool)

(assert (=> b!2598158 m!2934321))

(assert (=> b!2598092 d!736204))

(assert (=> b!2598093 d!736202))

(declare-fun d!736206 () Bool)

(declare-fun c!418483 () Bool)

(assert (=> d!736206 (= c!418483 (is-Nil!29928 lt!914884))))

(declare-fun e!1639922 () (Set B!2255))

(assert (=> d!736206 (= (content!4215 lt!914884) e!1639922)))

(declare-fun b!2598163 () Bool)

(assert (=> b!2598163 (= e!1639922 (as set.empty (Set B!2255)))))

(declare-fun b!2598164 () Bool)

(assert (=> b!2598164 (= e!1639922 (set.union (set.insert (h!35348 lt!914884) (as set.empty (Set B!2255))) (content!4215 (t!213041 lt!914884))))))

(assert (= (and d!736206 c!418483) b!2598163))

(assert (= (and d!736206 (not c!418483)) b!2598164))

(declare-fun m!2934323 () Bool)

(assert (=> b!2598164 m!2934323))

(declare-fun m!2934325 () Bool)

(assert (=> b!2598164 m!2934325))

(assert (=> b!2598108 d!736206))

(declare-fun d!736208 () Bool)

(declare-fun c!418484 () Bool)

(assert (=> d!736208 (= c!418484 (is-Nil!29928 l!3770))))

(declare-fun e!1639923 () (Set B!2255))

(assert (=> d!736208 (= (content!4215 l!3770) e!1639923)))

(declare-fun b!2598165 () Bool)

(assert (=> b!2598165 (= e!1639923 (as set.empty (Set B!2255)))))

(declare-fun b!2598166 () Bool)

(assert (=> b!2598166 (= e!1639923 (set.union (set.insert (h!35348 l!3770) (as set.empty (Set B!2255))) (content!4215 (t!213041 l!3770))))))

(assert (= (and d!736208 c!418484) b!2598165))

(assert (= (and d!736208 (not c!418484)) b!2598166))

(declare-fun m!2934327 () Bool)

(assert (=> b!2598166 m!2934327))

(assert (=> b!2598166 m!2934303))

(assert (=> b!2598108 d!736208))

(declare-fun d!736210 () Bool)

(declare-fun lt!914898 () Bool)

(assert (=> d!736210 (= lt!914898 (set.member (h!35348 (-!191 l!3770 e!9448)) (content!4215 (t!213041 (-!191 l!3770 e!9448)))))))

(declare-fun e!1639924 () Bool)

(assert (=> d!736210 (= lt!914898 e!1639924)))

(declare-fun res!1093913 () Bool)

(assert (=> d!736210 (=> (not res!1093913) (not e!1639924))))

(assert (=> d!736210 (= res!1093913 (is-Cons!29928 (t!213041 (-!191 l!3770 e!9448))))))

(assert (=> d!736210 (= (contains!5476 (t!213041 (-!191 l!3770 e!9448)) (h!35348 (-!191 l!3770 e!9448))) lt!914898)))

(declare-fun b!2598167 () Bool)

(declare-fun e!1639925 () Bool)

(assert (=> b!2598167 (= e!1639924 e!1639925)))

(declare-fun res!1093914 () Bool)

(assert (=> b!2598167 (=> res!1093914 e!1639925)))

(assert (=> b!2598167 (= res!1093914 (= (h!35348 (t!213041 (-!191 l!3770 e!9448))) (h!35348 (-!191 l!3770 e!9448))))))

(declare-fun b!2598168 () Bool)

(assert (=> b!2598168 (= e!1639925 (contains!5476 (t!213041 (t!213041 (-!191 l!3770 e!9448))) (h!35348 (-!191 l!3770 e!9448))))))

(assert (= (and d!736210 res!1093913) b!2598167))

(assert (= (and b!2598167 (not res!1093914)) b!2598168))

(declare-fun m!2934329 () Bool)

(assert (=> d!736210 m!2934329))

(declare-fun m!2934331 () Bool)

(assert (=> d!736210 m!2934331))

(declare-fun m!2934333 () Bool)

(assert (=> b!2598168 m!2934333))

(assert (=> b!2598094 d!736210))

(declare-fun d!736212 () Bool)

(declare-fun res!1093915 () Bool)

(declare-fun e!1639926 () Bool)

(assert (=> d!736212 (=> res!1093915 e!1639926)))

(assert (=> d!736212 (= res!1093915 (is-Nil!29928 (t!213041 (-!191 l!3770 e!9448))))))

(assert (=> d!736212 (= (noDuplicate!476 (t!213041 (-!191 l!3770 e!9448))) e!1639926)))

(declare-fun b!2598169 () Bool)

(declare-fun e!1639927 () Bool)

(assert (=> b!2598169 (= e!1639926 e!1639927)))

(declare-fun res!1093916 () Bool)

(assert (=> b!2598169 (=> (not res!1093916) (not e!1639927))))

(assert (=> b!2598169 (= res!1093916 (not (contains!5476 (t!213041 (t!213041 (-!191 l!3770 e!9448))) (h!35348 (t!213041 (-!191 l!3770 e!9448))))))))

(declare-fun b!2598170 () Bool)

(assert (=> b!2598170 (= e!1639927 (noDuplicate!476 (t!213041 (t!213041 (-!191 l!3770 e!9448)))))))

(assert (= (and d!736212 (not res!1093915)) b!2598169))

(assert (= (and b!2598169 res!1093916) b!2598170))

(declare-fun m!2934335 () Bool)

(assert (=> b!2598169 m!2934335))

(declare-fun m!2934337 () Bool)

(assert (=> b!2598170 m!2934337))

(assert (=> b!2598095 d!736212))

(declare-fun d!736214 () Bool)

(declare-fun lt!914901 () Int)

(assert (=> d!736214 (>= lt!914901 0)))

(declare-fun e!1639930 () Int)

(assert (=> d!736214 (= lt!914901 e!1639930)))

(declare-fun c!418487 () Bool)

(assert (=> d!736214 (= c!418487 (is-Nil!29928 lt!914884))))

(assert (=> d!736214 (= (size!23229 lt!914884) lt!914901)))

(declare-fun b!2598175 () Bool)

(assert (=> b!2598175 (= e!1639930 0)))

(declare-fun b!2598176 () Bool)

(assert (=> b!2598176 (= e!1639930 (+ 1 (size!23229 (t!213041 lt!914884))))))

(assert (= (and d!736214 c!418487) b!2598175))

(assert (= (and d!736214 (not c!418487)) b!2598176))

(declare-fun m!2934339 () Bool)

(assert (=> b!2598176 m!2934339))

(assert (=> d!736184 d!736214))

(declare-fun d!736216 () Bool)

(declare-fun lt!914902 () Int)

(assert (=> d!736216 (>= lt!914902 0)))

(declare-fun e!1639931 () Int)

(assert (=> d!736216 (= lt!914902 e!1639931)))

(declare-fun c!418488 () Bool)

(assert (=> d!736216 (= c!418488 (is-Nil!29928 l!3770))))

(assert (=> d!736216 (= (size!23229 l!3770) lt!914902)))

(declare-fun b!2598177 () Bool)

(assert (=> b!2598177 (= e!1639931 0)))

(declare-fun b!2598178 () Bool)

(assert (=> b!2598178 (= e!1639931 (+ 1 (size!23229 (t!213041 l!3770))))))

(assert (= (and d!736216 c!418488) b!2598177))

(assert (= (and d!736216 (not c!418488)) b!2598178))

(assert (=> b!2598178 m!2934309))

(assert (=> d!736184 d!736216))

(declare-fun b!2598179 () Bool)

(declare-fun e!1639932 () Bool)

(declare-fun tp!823461 () Bool)

(assert (=> b!2598179 (= e!1639932 (and tp_is_empty!13535 tp!823461))))

(assert (=> b!2598121 (= tp!823457 e!1639932)))

(assert (= (and b!2598121 (is-Cons!29928 (t!213041 (t!213041 l!3770)))) b!2598179))

(push 1)

(assert (not d!736200))

(assert (not b!2598150))

(assert (not b!2598151))

(assert (not b!2598170))

(assert (not b!2598164))

(assert (not d!736210))

(assert (not b!2598179))

(assert (not b!2598178))

(assert (not d!736196))

(assert (not b!2598149))

(assert (not b!2598158))

(assert (not b!2598152))

(assert (not b!2598176))

(assert (not b!2598168))

(assert (not d!736204))

(assert (not b!2598166))

(assert (not bm!167366))

(assert (not b!2598169))

(assert tp_is_empty!13535)

(assert (not b!2598144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

