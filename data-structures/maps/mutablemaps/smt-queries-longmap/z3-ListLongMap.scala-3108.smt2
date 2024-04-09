; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43722 () Bool)

(assert start!43722)

(declare-fun res!288167 () Bool)

(declare-fun e!284592 () Bool)

(assert (=> start!43722 (=> (not res!288167) (not e!284592))))

(declare-datatypes ((B!1072 0))(
  ( (B!1073 (val!6988 Int)) )
))
(declare-datatypes ((tuple2!9174 0))(
  ( (tuple2!9175 (_1!4597 (_ BitVec 64)) (_2!4597 B!1072)) )
))
(declare-datatypes ((List!9287 0))(
  ( (Nil!9284) (Cons!9283 (h!10139 tuple2!9174) (t!15517 List!9287)) )
))
(declare-datatypes ((ListLongMap!8101 0))(
  ( (ListLongMap!8102 (toList!4066 List!9287)) )
))
(declare-fun thiss!180 () ListLongMap!8101)

(declare-fun isEmpty!629 (ListLongMap!8101) Bool)

(assert (=> start!43722 (= res!288167 (not (isEmpty!629 thiss!180)))))

(assert (=> start!43722 e!284592))

(declare-fun e!284593 () Bool)

(declare-fun inv!15800 (ListLongMap!8101) Bool)

(assert (=> start!43722 (and (inv!15800 thiss!180) e!284593)))

(declare-fun b!483541 () Bool)

(declare-fun tail!132 (List!9287) List!9287)

(assert (=> b!483541 (= e!284592 (not (inv!15800 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180))))))))

(declare-fun b!483542 () Bool)

(declare-fun tp!43399 () Bool)

(assert (=> b!483542 (= e!284593 tp!43399)))

(assert (= (and start!43722 res!288167) b!483541))

(assert (= start!43722 b!483542))

(declare-fun m!464511 () Bool)

(assert (=> start!43722 m!464511))

(declare-fun m!464513 () Bool)

(assert (=> start!43722 m!464513))

(declare-fun m!464515 () Bool)

(assert (=> b!483541 m!464515))

(declare-fun m!464517 () Bool)

(assert (=> b!483541 m!464517))

(check-sat (not start!43722) (not b!483541) (not b!483542))
(check-sat)
(get-model)

(declare-fun d!76845 () Bool)

(declare-fun isEmpty!632 (List!9287) Bool)

(assert (=> d!76845 (= (isEmpty!629 thiss!180) (isEmpty!632 (toList!4066 thiss!180)))))

(declare-fun bs!15380 () Bool)

(assert (= bs!15380 d!76845))

(declare-fun m!464531 () Bool)

(assert (=> bs!15380 m!464531))

(assert (=> start!43722 d!76845))

(declare-fun d!76851 () Bool)

(declare-fun isStrictlySorted!392 (List!9287) Bool)

(assert (=> d!76851 (= (inv!15800 thiss!180) (isStrictlySorted!392 (toList!4066 thiss!180)))))

(declare-fun bs!15382 () Bool)

(assert (= bs!15382 d!76851))

(declare-fun m!464535 () Bool)

(assert (=> bs!15382 m!464535))

(assert (=> start!43722 d!76851))

(declare-fun d!76855 () Bool)

(assert (=> d!76855 (= (inv!15800 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180)))) (isStrictlySorted!392 (toList!4066 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180))))))))

(declare-fun bs!15385 () Bool)

(assert (= bs!15385 d!76855))

(declare-fun m!464541 () Bool)

(assert (=> bs!15385 m!464541))

(assert (=> b!483541 d!76855))

(declare-fun d!76861 () Bool)

(assert (=> d!76861 (= (tail!132 (toList!4066 thiss!180)) (t!15517 (toList!4066 thiss!180)))))

(assert (=> b!483541 d!76861))

(declare-fun b!483562 () Bool)

(declare-fun e!284607 () Bool)

(declare-fun tp_is_empty!13881 () Bool)

(declare-fun tp!43410 () Bool)

(assert (=> b!483562 (= e!284607 (and tp_is_empty!13881 tp!43410))))

(assert (=> b!483542 (= tp!43399 e!284607)))

(get-info :version)

(assert (= (and b!483542 ((_ is Cons!9283) (toList!4066 thiss!180))) b!483562))

(check-sat (not d!76851) tp_is_empty!13881 (not d!76855) (not b!483562) (not d!76845))
(check-sat)
(get-model)

(declare-fun d!76865 () Bool)

(declare-fun res!288175 () Bool)

(declare-fun e!284613 () Bool)

(assert (=> d!76865 (=> res!288175 e!284613)))

(assert (=> d!76865 (= res!288175 (or ((_ is Nil!9284) (toList!4066 thiss!180)) ((_ is Nil!9284) (t!15517 (toList!4066 thiss!180)))))))

(assert (=> d!76865 (= (isStrictlySorted!392 (toList!4066 thiss!180)) e!284613)))

(declare-fun b!483568 () Bool)

(declare-fun e!284614 () Bool)

(assert (=> b!483568 (= e!284613 e!284614)))

(declare-fun res!288176 () Bool)

(assert (=> b!483568 (=> (not res!288176) (not e!284614))))

(assert (=> b!483568 (= res!288176 (bvslt (_1!4597 (h!10139 (toList!4066 thiss!180))) (_1!4597 (h!10139 (t!15517 (toList!4066 thiss!180))))))))

(declare-fun b!483569 () Bool)

(assert (=> b!483569 (= e!284614 (isStrictlySorted!392 (t!15517 (toList!4066 thiss!180))))))

(assert (= (and d!76865 (not res!288175)) b!483568))

(assert (= (and b!483568 res!288176) b!483569))

(declare-fun m!464545 () Bool)

(assert (=> b!483569 m!464545))

(assert (=> d!76851 d!76865))

(declare-fun d!76871 () Bool)

(declare-fun res!288177 () Bool)

(declare-fun e!284615 () Bool)

(assert (=> d!76871 (=> res!288177 e!284615)))

(assert (=> d!76871 (= res!288177 (or ((_ is Nil!9284) (toList!4066 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180))))) ((_ is Nil!9284) (t!15517 (toList!4066 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180))))))))))

(assert (=> d!76871 (= (isStrictlySorted!392 (toList!4066 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180))))) e!284615)))

(declare-fun b!483570 () Bool)

(declare-fun e!284616 () Bool)

(assert (=> b!483570 (= e!284615 e!284616)))

(declare-fun res!288178 () Bool)

(assert (=> b!483570 (=> (not res!288178) (not e!284616))))

(assert (=> b!483570 (= res!288178 (bvslt (_1!4597 (h!10139 (toList!4066 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180)))))) (_1!4597 (h!10139 (t!15517 (toList!4066 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180)))))))))))

(declare-fun b!483571 () Bool)

(assert (=> b!483571 (= e!284616 (isStrictlySorted!392 (t!15517 (toList!4066 (ListLongMap!8102 (tail!132 (toList!4066 thiss!180)))))))))

(assert (= (and d!76871 (not res!288177)) b!483570))

(assert (= (and b!483570 res!288178) b!483571))

(declare-fun m!464547 () Bool)

(assert (=> b!483571 m!464547))

(assert (=> d!76855 d!76871))

(declare-fun d!76873 () Bool)

(assert (=> d!76873 (= (isEmpty!632 (toList!4066 thiss!180)) ((_ is Nil!9284) (toList!4066 thiss!180)))))

(assert (=> d!76845 d!76873))

(declare-fun b!483572 () Bool)

(declare-fun e!284617 () Bool)

(declare-fun tp!43412 () Bool)

(assert (=> b!483572 (= e!284617 (and tp_is_empty!13881 tp!43412))))

(assert (=> b!483562 (= tp!43410 e!284617)))

(assert (= (and b!483562 ((_ is Cons!9283) (t!15517 (toList!4066 thiss!180)))) b!483572))

(check-sat (not b!483571) (not b!483569) (not b!483572) tp_is_empty!13881)
(check-sat)
