; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42818 () Bool)

(assert start!42818)

(declare-fun b_free!12097 () Bool)

(declare-fun b_next!12097 () Bool)

(assert (=> start!42818 (= b_free!12097 (not b_next!12097))))

(declare-fun tp!42366 () Bool)

(declare-fun b_and!20699 () Bool)

(assert (=> start!42818 (= tp!42366 b_and!20699)))

(declare-fun res!284537 () Bool)

(declare-fun e!279931 () Bool)

(assert (=> start!42818 (=> (not res!284537) (not e!279931))))

(declare-datatypes ((B!1046 0))(
  ( (B!1047 (val!6807 Int)) )
))
(declare-datatypes ((tuple2!8984 0))(
  ( (tuple2!8985 (_1!4502 (_ BitVec 64)) (_2!4502 B!1046)) )
))
(declare-datatypes ((List!9081 0))(
  ( (Nil!9078) (Cons!9077 (h!9933 tuple2!8984) (t!15123 List!9081)) )
))
(declare-datatypes ((ListLongMap!7911 0))(
  ( (ListLongMap!7912 (toList!3971 List!9081)) )
))
(declare-fun lm!215 () ListLongMap!7911)

(declare-fun p!166 () Int)

(declare-fun forall!194 (List!9081 Int) Bool)

(assert (=> start!42818 (= res!284537 (forall!194 (toList!3971 lm!215) p!166))))

(assert (=> start!42818 e!279931))

(declare-fun e!279930 () Bool)

(declare-fun inv!15487 (ListLongMap!7911) Bool)

(assert (=> start!42818 (and (inv!15487 lm!215) e!279930)))

(assert (=> start!42818 tp!42366))

(assert (=> start!42818 true))

(declare-fun tp_is_empty!13519 () Bool)

(assert (=> start!42818 tp_is_empty!13519))

(declare-fun b!476531 () Bool)

(declare-fun res!284538 () Bool)

(assert (=> b!476531 (=> (not res!284538) (not e!279931))))

(declare-fun b!85 () B!1046)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!940 (Int tuple2!8984) Bool)

(assert (=> b!476531 (= res!284538 (dynLambda!940 p!166 (tuple2!8985 a!501 b!85)))))

(declare-fun b!476532 () Bool)

(declare-fun tp!42367 () Bool)

(assert (=> b!476532 (= e!279930 tp!42367)))

(declare-fun b!476533 () Bool)

(declare-fun e!279932 () Bool)

(assert (=> b!476533 (= e!279931 e!279932)))

(declare-fun res!284539 () Bool)

(assert (=> b!476533 (=> (not res!284539) (not e!279932))))

(declare-fun lt!217273 () ListLongMap!7911)

(assert (=> b!476533 (= res!284539 (forall!194 (toList!3971 lt!217273) p!166))))

(declare-fun tail!119 (ListLongMap!7911) ListLongMap!7911)

(assert (=> b!476533 (= lt!217273 (tail!119 lm!215))))

(declare-fun b!476534 () Bool)

(declare-fun size!15123 (List!9081) Int)

(assert (=> b!476534 (= e!279932 (>= (size!15123 (toList!3971 lt!217273)) (size!15123 (toList!3971 lm!215))))))

(declare-fun b!476535 () Bool)

(declare-fun res!284536 () Bool)

(assert (=> b!476535 (=> (not res!284536) (not e!279931))))

(declare-fun isEmpty!600 (ListLongMap!7911) Bool)

(assert (=> b!476535 (= res!284536 (not (isEmpty!600 lm!215)))))

(assert (= (and start!42818 res!284537) b!476531))

(assert (= (and b!476531 res!284538) b!476535))

(assert (= (and b!476535 res!284536) b!476533))

(assert (= (and b!476533 res!284539) b!476534))

(assert (= start!42818 b!476532))

(declare-fun b_lambda!10485 () Bool)

(assert (=> (not b_lambda!10485) (not b!476531)))

(declare-fun t!15122 () Bool)

(declare-fun tb!3999 () Bool)

(assert (=> (and start!42818 (= p!166 p!166) t!15122) tb!3999))

(declare-fun result!7555 () Bool)

(assert (=> tb!3999 (= result!7555 true)))

(assert (=> b!476531 t!15122))

(declare-fun b_and!20701 () Bool)

(assert (= b_and!20699 (and (=> t!15122 result!7555) b_and!20701)))

(declare-fun m!458835 () Bool)

(assert (=> start!42818 m!458835))

(declare-fun m!458837 () Bool)

(assert (=> start!42818 m!458837))

(declare-fun m!458839 () Bool)

(assert (=> b!476535 m!458839))

(declare-fun m!458841 () Bool)

(assert (=> b!476533 m!458841))

(declare-fun m!458843 () Bool)

(assert (=> b!476533 m!458843))

(declare-fun m!458845 () Bool)

(assert (=> b!476531 m!458845))

(declare-fun m!458847 () Bool)

(assert (=> b!476534 m!458847))

(declare-fun m!458849 () Bool)

(assert (=> b!476534 m!458849))

(push 1)

(assert (not b!476534))

(assert (not start!42818))

(assert tp_is_empty!13519)

(assert (not b_lambda!10485))

(assert (not b_next!12097))

(assert b_and!20701)

(assert (not b!476532))

(assert (not b!476535))

(assert (not b!476533))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20701)

(assert (not b_next!12097))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10493 () Bool)

(assert (= b_lambda!10485 (or (and start!42818 b_free!12097) b_lambda!10493)))

(push 1)

(assert (not b!476534))

(assert (not start!42818))

(assert tp_is_empty!13519)

(assert (not b_next!12097))

(assert b_and!20701)

(assert (not b_lambda!10493))

(assert (not b!476532))

(assert (not b!476535))

(assert (not b!476533))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20701)

(assert (not b_next!12097))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75697 () Bool)

(declare-fun lt!217284 () Int)

(assert (=> d!75697 (>= lt!217284 0)))

(declare-fun e!279959 () Int)

(assert (=> d!75697 (= lt!217284 e!279959)))

(declare-fun c!57285 () Bool)

(assert (=> d!75697 (= c!57285 (is-Nil!9078 (toList!3971 lt!217273)))))

(assert (=> d!75697 (= (size!15123 (toList!3971 lt!217273)) lt!217284)))

(declare-fun b!476578 () Bool)

(assert (=> b!476578 (= e!279959 0)))

(declare-fun b!476579 () Bool)

(assert (=> b!476579 (= e!279959 (+ 1 (size!15123 (t!15123 (toList!3971 lt!217273)))))))

(assert (= (and d!75697 c!57285) b!476578))

(assert (= (and d!75697 (not c!57285)) b!476579))

(declare-fun m!458885 () Bool)

(assert (=> b!476579 m!458885))

(assert (=> b!476534 d!75697))

(declare-fun d!75703 () Bool)

(declare-fun lt!217286 () Int)

(assert (=> d!75703 (>= lt!217286 0)))

(declare-fun e!279961 () Int)

(assert (=> d!75703 (= lt!217286 e!279961)))

(declare-fun c!57287 () Bool)

(assert (=> d!75703 (= c!57287 (is-Nil!9078 (toList!3971 lm!215)))))

(assert (=> d!75703 (= (size!15123 (toList!3971 lm!215)) lt!217286)))

(declare-fun b!476582 () Bool)

(assert (=> b!476582 (= e!279961 0)))

(declare-fun b!476583 () Bool)

(assert (=> b!476583 (= e!279961 (+ 1 (size!15123 (t!15123 (toList!3971 lm!215)))))))

(assert (= (and d!75703 c!57287) b!476582))

(assert (= (and d!75703 (not c!57287)) b!476583))

(declare-fun m!458889 () Bool)

(assert (=> b!476583 m!458889))

(assert (=> b!476534 d!75703))

(declare-fun d!75707 () Bool)

(declare-fun res!284576 () Bool)

(declare-fun e!279971 () Bool)

(assert (=> d!75707 (=> res!284576 e!279971)))

(assert (=> d!75707 (= res!284576 (is-Nil!9078 (toList!3971 lt!217273)))))

(assert (=> d!75707 (= (forall!194 (toList!3971 lt!217273) p!166) e!279971)))

(declare-fun b!476594 () Bool)

(declare-fun e!279972 () Bool)

(assert (=> b!476594 (= e!279971 e!279972)))

(declare-fun res!284577 () Bool)

(assert (=> b!476594 (=> (not res!284577) (not e!279972))))

(assert (=> b!476594 (= res!284577 (dynLambda!940 p!166 (h!9933 (toList!3971 lt!217273))))))

(declare-fun b!476595 () Bool)

(assert (=> b!476595 (= e!279972 (forall!194 (t!15123 (toList!3971 lt!217273)) p!166))))

(assert (= (and d!75707 (not res!284576)) b!476594))

(assert (= (and b!476594 res!284577) b!476595))

(declare-fun b_lambda!10501 () Bool)

(assert (=> (not b_lambda!10501) (not b!476594)))

(declare-fun t!15135 () Bool)

(declare-fun tb!4009 () Bool)

(assert (=> (and start!42818 (= p!166 p!166) t!15135) tb!4009))

(declare-fun result!7565 () Bool)

(assert (=> tb!4009 (= result!7565 true)))

(assert (=> b!476594 t!15135))

(declare-fun b_and!20715 () Bool)

(assert (= b_and!20701 (and (=> t!15135 result!7565) b_and!20715)))

(declare-fun m!458905 () Bool)

(assert (=> b!476594 m!458905))

(declare-fun m!458907 () Bool)

(assert (=> b!476595 m!458907))

(assert (=> b!476533 d!75707))

(declare-fun d!75719 () Bool)

(declare-fun tail!123 (List!9081) List!9081)

(assert (=> d!75719 (= (tail!119 lm!215) (ListLongMap!7912 (tail!123 (toList!3971 lm!215))))))

(declare-fun bs!15146 () Bool)

(assert (= bs!15146 d!75719))

(declare-fun m!458909 () Bool)

(assert (=> bs!15146 m!458909))

(assert (=> b!476533 d!75719))

(declare-fun d!75721 () Bool)

(declare-fun res!284584 () Bool)

(declare-fun e!279979 () Bool)

(assert (=> d!75721 (=> res!284584 e!279979)))

(assert (=> d!75721 (= res!284584 (is-Nil!9078 (toList!3971 lm!215)))))

(assert (=> d!75721 (= (forall!194 (toList!3971 lm!215) p!166) e!279979)))

(declare-fun b!476602 () Bool)

(declare-fun e!279980 () Bool)

(assert (=> b!476602 (= e!279979 e!279980)))

(declare-fun res!284585 () Bool)

(assert (=> b!476602 (=> (not res!284585) (not e!279980))))

(assert (=> b!476602 (= res!284585 (dynLambda!940 p!166 (h!9933 (toList!3971 lm!215))))))

(declare-fun b!476603 () Bool)

(assert (=> b!476603 (= e!279980 (forall!194 (t!15123 (toList!3971 lm!215)) p!166))))

(assert (= (and d!75721 (not res!284584)) b!476602))

(assert (= (and b!476602 res!284585) b!476603))

(declare-fun b_lambda!10505 () Bool)

(assert (=> (not b_lambda!10505) (not b!476602)))

(declare-fun t!15139 () Bool)

(declare-fun tb!4013 () Bool)

(assert (=> (and start!42818 (= p!166 p!166) t!15139) tb!4013))

(declare-fun result!7569 () Bool)

(assert (=> tb!4013 (= result!7569 true)))

(assert (=> b!476602 t!15139))

(declare-fun b_and!20719 () Bool)

(assert (= b_and!20715 (and (=> t!15139 result!7569) b_and!20719)))

(declare-fun m!458917 () Bool)

(assert (=> b!476602 m!458917))

(declare-fun m!458919 () Bool)

(assert (=> b!476603 m!458919))

(assert (=> start!42818 d!75721))

(declare-fun d!75727 () Bool)

(declare-fun isStrictlySorted!382 (List!9081) Bool)

(assert (=> d!75727 (= (inv!15487 lm!215) (isStrictlySorted!382 (toList!3971 lm!215)))))

(declare-fun bs!15149 () Bool)

(assert (= bs!15149 d!75727))

(declare-fun m!458923 () Bool)

(assert (=> bs!15149 m!458923))

(assert (=> start!42818 d!75727))

(declare-fun d!75731 () Bool)

(declare-fun isEmpty!605 (List!9081) Bool)

(assert (=> d!75731 (= (isEmpty!600 lm!215) (isEmpty!605 (toList!3971 lm!215)))))

(declare-fun bs!15150 () Bool)

(assert (= bs!15150 d!75731))

(declare-fun m!458933 () Bool)

(assert (=> bs!15150 m!458933))

(assert (=> b!476535 d!75731))

(declare-fun b!476627 () Bool)

(declare-fun e!279994 () Bool)

(declare-fun tp!42387 () Bool)

(assert (=> b!476627 (= e!279994 (and tp_is_empty!13519 tp!42387))))

(assert (=> b!476532 (= tp!42367 e!279994)))

(assert (= (and b!476532 (is-Cons!9077 (toList!3971 lm!215))) b!476627))

(declare-fun b_lambda!10513 () Bool)

(assert (= b_lambda!10501 (or (and start!42818 b_free!12097) b_lambda!10513)))

(declare-fun b_lambda!10515 () Bool)

(assert (= b_lambda!10505 (or (and start!42818 b_free!12097) b_lambda!10515)))

(push 1)

(assert (not b!476595))

(assert (not b!476603))

(assert tp_is_empty!13519)

(assert (not b!476583))

(assert (not d!75727))

(assert (not b_lambda!10513))

(assert (not b!476627))

(assert b_and!20719)

(assert (not b!476579))

(assert (not d!75731))

(assert (not b_next!12097))

(assert (not b_lambda!10515))

(assert (not d!75719))

(assert (not b_lambda!10493))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20719)

(assert (not b_next!12097))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75751 () Bool)

(declare-fun lt!217294 () Int)

(assert (=> d!75751 (>= lt!217294 0)))

(declare-fun e!280009 () Int)

(assert (=> d!75751 (= lt!217294 e!280009)))

(declare-fun c!57295 () Bool)

(assert (=> d!75751 (= c!57295 (is-Nil!9078 (t!15123 (toList!3971 lt!217273))))))

(assert (=> d!75751 (= (size!15123 (t!15123 (toList!3971 lt!217273))) lt!217294)))

(declare-fun b!476644 () Bool)

(assert (=> b!476644 (= e!280009 0)))

(declare-fun b!476645 () Bool)

(assert (=> b!476645 (= e!280009 (+ 1 (size!15123 (t!15123 (t!15123 (toList!3971 lt!217273))))))))

(assert (= (and d!75751 c!57295) b!476644))

(assert (= (and d!75751 (not c!57295)) b!476645))

(declare-fun m!458951 () Bool)

(assert (=> b!476645 m!458951))

(assert (=> b!476579 d!75751))

(declare-fun d!75753 () Bool)

(declare-fun res!284598 () Bool)

(declare-fun e!280010 () Bool)

(assert (=> d!75753 (=> res!284598 e!280010)))

(assert (=> d!75753 (= res!284598 (is-Nil!9078 (t!15123 (toList!3971 lm!215))))))

(assert (=> d!75753 (= (forall!194 (t!15123 (toList!3971 lm!215)) p!166) e!280010)))

(declare-fun b!476646 () Bool)

(declare-fun e!280011 () Bool)

(assert (=> b!476646 (= e!280010 e!280011)))

(declare-fun res!284599 () Bool)

(assert (=> b!476646 (=> (not res!284599) (not e!280011))))

(assert (=> b!476646 (= res!284599 (dynLambda!940 p!166 (h!9933 (t!15123 (toList!3971 lm!215)))))))

(declare-fun b!476647 () Bool)

(assert (=> b!476647 (= e!280011 (forall!194 (t!15123 (t!15123 (toList!3971 lm!215))) p!166))))

(assert (= (and d!75753 (not res!284598)) b!476646))

(assert (= (and b!476646 res!284599) b!476647))

(declare-fun b_lambda!10529 () Bool)

(assert (=> (not b_lambda!10529) (not b!476646)))

(declare-fun t!15147 () Bool)

(declare-fun tb!4021 () Bool)

(assert (=> (and start!42818 (= p!166 p!166) t!15147) tb!4021))

(declare-fun result!7583 () Bool)

(assert (=> tb!4021 (= result!7583 true)))

(assert (=> b!476646 t!15147))

(declare-fun b_and!20727 () Bool)

(assert (= b_and!20719 (and (=> t!15147 result!7583) b_and!20727)))

(declare-fun m!458953 () Bool)

(assert (=> b!476646 m!458953))

(declare-fun m!458955 () Bool)

(assert (=> b!476647 m!458955))

(assert (=> b!476603 d!75753))

(declare-fun d!75755 () Bool)

(declare-fun res!284600 () Bool)

(declare-fun e!280012 () Bool)

(assert (=> d!75755 (=> res!284600 e!280012)))

(assert (=> d!75755 (= res!284600 (is-Nil!9078 (t!15123 (toList!3971 lt!217273))))))

(assert (=> d!75755 (= (forall!194 (t!15123 (toList!3971 lt!217273)) p!166) e!280012)))

