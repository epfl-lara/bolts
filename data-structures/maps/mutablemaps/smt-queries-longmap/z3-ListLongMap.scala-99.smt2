; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1616 () Bool)

(assert start!1616)

(declare-fun b_free!459 () Bool)

(declare-fun b_next!459 () Bool)

(assert (=> start!1616 (= b_free!459 (not b_next!459))))

(declare-fun tp!1946 () Bool)

(declare-fun b_and!839 () Bool)

(assert (=> start!1616 (= tp!1946 b_and!839)))

(declare-fun b!11698 () Bool)

(declare-fun e!6942 () Bool)

(declare-fun tp!1945 () Bool)

(assert (=> b!11698 (= e!6942 tp!1945)))

(declare-fun e!6943 () Bool)

(declare-datatypes ((B!400 0))(
  ( (B!401 (val!295 Int)) )
))
(declare-datatypes ((tuple2!372 0))(
  ( (tuple2!373 (_1!186 (_ BitVec 64)) (_2!186 B!400)) )
))
(declare-datatypes ((List!342 0))(
  ( (Nil!339) (Cons!338 (h!904 tuple2!372) (t!2711 List!342)) )
))
(declare-fun kvs!4 () List!342)

(declare-datatypes ((ListLongMap!353 0))(
  ( (ListLongMap!354 (toList!192 List!342)) )
))
(declare-fun lm!227 () ListLongMap!353)

(declare-fun p!216 () Int)

(declare-fun b!11699 () Bool)

(declare-fun forall!66 (List!342 Int) Bool)

(declare-fun ++!8 (ListLongMap!353 List!342) ListLongMap!353)

(assert (=> b!11699 (= e!6943 (not (forall!66 (toList!192 (++!8 lm!227 kvs!4)) p!216)))))

(declare-fun b!11700 () Bool)

(declare-fun e!6944 () Bool)

(declare-fun tp_is_empty!573 () Bool)

(declare-fun tp!1944 () Bool)

(assert (=> b!11700 (= e!6944 (and tp_is_empty!573 tp!1944))))

(declare-fun res!9696 () Bool)

(assert (=> start!1616 (=> (not res!9696) (not e!6943))))

(assert (=> start!1616 (= res!9696 (forall!66 (toList!192 lm!227) p!216))))

(assert (=> start!1616 e!6943))

(declare-fun inv!575 (ListLongMap!353) Bool)

(assert (=> start!1616 (and (inv!575 lm!227) e!6942)))

(assert (=> start!1616 tp!1946))

(assert (=> start!1616 e!6944))

(declare-fun b!11701 () Bool)

(declare-fun res!9697 () Bool)

(assert (=> b!11701 (=> (not res!9697) (not e!6943))))

(declare-fun isEmpty!73 (List!342) Bool)

(assert (=> b!11701 (= res!9697 (isEmpty!73 kvs!4))))

(declare-fun b!11702 () Bool)

(declare-fun res!9695 () Bool)

(assert (=> b!11702 (=> (not res!9695) (not e!6943))))

(assert (=> b!11702 (= res!9695 (forall!66 kvs!4 p!216))))

(assert (= (and start!1616 res!9696) b!11702))

(assert (= (and b!11702 res!9695) b!11701))

(assert (= (and b!11701 res!9697) b!11699))

(assert (= start!1616 b!11698))

(get-info :version)

(assert (= (and start!1616 ((_ is Cons!338) kvs!4)) b!11700))

(declare-fun m!8147 () Bool)

(assert (=> b!11699 m!8147))

(declare-fun m!8149 () Bool)

(assert (=> b!11699 m!8149))

(declare-fun m!8151 () Bool)

(assert (=> start!1616 m!8151))

(declare-fun m!8153 () Bool)

(assert (=> start!1616 m!8153))

(declare-fun m!8155 () Bool)

(assert (=> b!11701 m!8155))

(declare-fun m!8157 () Bool)

(assert (=> b!11702 m!8157))

(check-sat tp_is_empty!573 (not b!11702) (not b!11699) (not start!1616) (not b!11701) (not b!11700) b_and!839 (not b!11698) (not b_next!459))
(check-sat b_and!839 (not b_next!459))
(get-model)

(declare-fun d!1603 () Bool)

(declare-fun res!9721 () Bool)

(declare-fun e!6968 () Bool)

(assert (=> d!1603 (=> res!9721 e!6968)))

(assert (=> d!1603 (= res!9721 ((_ is Nil!339) kvs!4))))

(assert (=> d!1603 (= (forall!66 kvs!4 p!216) e!6968)))

(declare-fun b!11732 () Bool)

(declare-fun e!6969 () Bool)

(assert (=> b!11732 (= e!6968 e!6969)))

(declare-fun res!9722 () Bool)

(assert (=> b!11732 (=> (not res!9722) (not e!6969))))

(declare-fun dynLambda!76 (Int tuple2!372) Bool)

(assert (=> b!11732 (= res!9722 (dynLambda!76 p!216 (h!904 kvs!4)))))

(declare-fun b!11733 () Bool)

(assert (=> b!11733 (= e!6969 (forall!66 (t!2711 kvs!4) p!216))))

(assert (= (and d!1603 (not res!9721)) b!11732))

(assert (= (and b!11732 res!9722) b!11733))

(declare-fun b_lambda!805 () Bool)

(assert (=> (not b_lambda!805) (not b!11732)))

(declare-fun t!2715 () Bool)

(declare-fun tb!370 () Bool)

(assert (=> (and start!1616 (= p!216 p!216) t!2715) tb!370))

(declare-fun result!549 () Bool)

(assert (=> tb!370 (= result!549 true)))

(assert (=> b!11732 t!2715))

(declare-fun b_and!843 () Bool)

(assert (= b_and!839 (and (=> t!2715 result!549) b_and!843)))

(declare-fun m!8171 () Bool)

(assert (=> b!11732 m!8171))

(declare-fun m!8176 () Bool)

(assert (=> b!11733 m!8176))

(assert (=> b!11702 d!1603))

(declare-fun d!1607 () Bool)

(declare-fun res!9725 () Bool)

(declare-fun e!6972 () Bool)

(assert (=> d!1607 (=> res!9725 e!6972)))

(assert (=> d!1607 (= res!9725 ((_ is Nil!339) (toList!192 lm!227)))))

(assert (=> d!1607 (= (forall!66 (toList!192 lm!227) p!216) e!6972)))

(declare-fun b!11736 () Bool)

(declare-fun e!6973 () Bool)

(assert (=> b!11736 (= e!6972 e!6973)))

(declare-fun res!9726 () Bool)

(assert (=> b!11736 (=> (not res!9726) (not e!6973))))

(assert (=> b!11736 (= res!9726 (dynLambda!76 p!216 (h!904 (toList!192 lm!227))))))

(declare-fun b!11737 () Bool)

(assert (=> b!11737 (= e!6973 (forall!66 (t!2711 (toList!192 lm!227)) p!216))))

(assert (= (and d!1607 (not res!9725)) b!11736))

(assert (= (and b!11736 res!9726) b!11737))

(declare-fun b_lambda!809 () Bool)

(assert (=> (not b_lambda!809) (not b!11736)))

(declare-fun t!2720 () Bool)

(declare-fun tb!375 () Bool)

(assert (=> (and start!1616 (= p!216 p!216) t!2720) tb!375))

(declare-fun result!555 () Bool)

(assert (=> tb!375 (= result!555 true)))

(assert (=> b!11736 t!2720))

(declare-fun b_and!849 () Bool)

(assert (= b_and!843 (and (=> t!2720 result!555) b_and!849)))

(declare-fun m!8183 () Bool)

(assert (=> b!11736 m!8183))

(declare-fun m!8185 () Bool)

(assert (=> b!11737 m!8185))

(assert (=> start!1616 d!1607))

(declare-fun d!1611 () Bool)

(declare-fun isStrictlySorted!49 (List!342) Bool)

(assert (=> d!1611 (= (inv!575 lm!227) (isStrictlySorted!49 (toList!192 lm!227)))))

(declare-fun bs!445 () Bool)

(assert (= bs!445 d!1611))

(declare-fun m!8189 () Bool)

(assert (=> bs!445 m!8189))

(assert (=> start!1616 d!1611))

(declare-fun d!1615 () Bool)

(assert (=> d!1615 (= (isEmpty!73 kvs!4) ((_ is Nil!339) kvs!4))))

(assert (=> b!11701 d!1615))

(declare-fun d!1619 () Bool)

(declare-fun res!9729 () Bool)

(declare-fun e!6976 () Bool)

(assert (=> d!1619 (=> res!9729 e!6976)))

(assert (=> d!1619 (= res!9729 ((_ is Nil!339) (toList!192 (++!8 lm!227 kvs!4))))))

(assert (=> d!1619 (= (forall!66 (toList!192 (++!8 lm!227 kvs!4)) p!216) e!6976)))

(declare-fun b!11740 () Bool)

(declare-fun e!6977 () Bool)

(assert (=> b!11740 (= e!6976 e!6977)))

(declare-fun res!9730 () Bool)

(assert (=> b!11740 (=> (not res!9730) (not e!6977))))

(assert (=> b!11740 (= res!9730 (dynLambda!76 p!216 (h!904 (toList!192 (++!8 lm!227 kvs!4)))))))

(declare-fun b!11741 () Bool)

(assert (=> b!11741 (= e!6977 (forall!66 (t!2711 (toList!192 (++!8 lm!227 kvs!4))) p!216))))

(assert (= (and d!1619 (not res!9729)) b!11740))

(assert (= (and b!11740 res!9730) b!11741))

(declare-fun b_lambda!813 () Bool)

(assert (=> (not b_lambda!813) (not b!11740)))

(declare-fun t!2724 () Bool)

(declare-fun tb!379 () Bool)

(assert (=> (and start!1616 (= p!216 p!216) t!2724) tb!379))

(declare-fun result!559 () Bool)

(assert (=> tb!379 (= result!559 true)))

(assert (=> b!11740 t!2724))

(declare-fun b_and!853 () Bool)

(assert (= b_and!849 (and (=> t!2724 result!559) b_and!853)))

(declare-fun m!8195 () Bool)

(assert (=> b!11740 m!8195))

(declare-fun m!8197 () Bool)

(assert (=> b!11741 m!8197))

(assert (=> b!11699 d!1619))

(declare-fun d!1621 () Bool)

(declare-fun c!986 () Bool)

(assert (=> d!1621 (= c!986 ((_ is Nil!339) kvs!4))))

(declare-fun e!6992 () ListLongMap!353)

(assert (=> d!1621 (= (++!8 lm!227 kvs!4) e!6992)))

(declare-fun b!11764 () Bool)

(assert (=> b!11764 (= e!6992 lm!227)))

(declare-fun b!11765 () Bool)

(declare-fun +!34 (ListLongMap!353 tuple2!372) ListLongMap!353)

(assert (=> b!11765 (= e!6992 (++!8 (+!34 lm!227 (h!904 kvs!4)) (t!2711 kvs!4)))))

(assert (= (and d!1621 c!986) b!11764))

(assert (= (and d!1621 (not c!986)) b!11765))

(declare-fun m!8219 () Bool)

(assert (=> b!11765 m!8219))

(assert (=> b!11765 m!8219))

(declare-fun m!8221 () Bool)

(assert (=> b!11765 m!8221))

(assert (=> b!11699 d!1621))

(declare-fun b!11776 () Bool)

(declare-fun e!6999 () Bool)

(declare-fun tp!1962 () Bool)

(assert (=> b!11776 (= e!6999 (and tp_is_empty!573 tp!1962))))

(assert (=> b!11700 (= tp!1944 e!6999)))

(assert (= (and b!11700 ((_ is Cons!338) (t!2711 kvs!4))) b!11776))

(declare-fun b!11777 () Bool)

(declare-fun e!7000 () Bool)

(declare-fun tp!1963 () Bool)

(assert (=> b!11777 (= e!7000 (and tp_is_empty!573 tp!1963))))

(assert (=> b!11698 (= tp!1945 e!7000)))

(assert (= (and b!11698 ((_ is Cons!338) (toList!192 lm!227))) b!11777))

(declare-fun b_lambda!827 () Bool)

(assert (= b_lambda!809 (or (and start!1616 b_free!459) b_lambda!827)))

(declare-fun b_lambda!829 () Bool)

(assert (= b_lambda!813 (or (and start!1616 b_free!459) b_lambda!829)))

(declare-fun b_lambda!831 () Bool)

(assert (= b_lambda!805 (or (and start!1616 b_free!459) b_lambda!831)))

(check-sat b_and!853 (not b_lambda!827) (not b!11765) (not b_lambda!829) (not d!1611) (not b!11776) (not b_next!459) tp_is_empty!573 (not b!11733) (not b!11737) (not b_lambda!831) (not b!11741) (not b!11777))
(check-sat b_and!853 (not b_next!459))
