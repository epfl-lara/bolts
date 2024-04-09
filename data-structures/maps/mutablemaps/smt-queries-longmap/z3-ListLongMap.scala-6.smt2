; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186 () Bool)

(assert start!186)

(declare-fun b_free!33 () Bool)

(declare-fun b_next!33 () Bool)

(assert (=> start!186 (= b_free!33 (not b_next!33))))

(declare-fun tp!112 () Bool)

(declare-fun b_and!63 () Bool)

(assert (=> start!186 (= tp!112 b_and!63)))

(declare-fun b!1898 () Bool)

(declare-fun e!399 () Bool)

(declare-datatypes ((B!268 0))(
  ( (B!269 (val!16 Int)) )
))
(declare-datatypes ((tuple2!32 0))(
  ( (tuple2!33 (_1!16 (_ BitVec 64)) (_2!16 B!268)) )
))
(declare-datatypes ((List!25 0))(
  ( (Nil!22) (Cons!21 (h!587 tuple2!32) (t!2050 List!25)) )
))
(declare-datatypes ((ListLongMap!37 0))(
  ( (ListLongMap!38 (toList!34 List!25)) )
))
(declare-fun lm!258 () ListLongMap!37)

(declare-fun p!318 () Int)

(declare-fun forall!18 (List!25 Int) Bool)

(declare-fun tail!33 (ListLongMap!37) ListLongMap!37)

(assert (=> b!1898 (= e!399 (not (forall!18 (toList!34 (tail!33 lm!258)) p!318)))))

(declare-fun b!1897 () Bool)

(declare-fun res!4435 () Bool)

(assert (=> b!1897 (=> (not res!4435) (not e!399))))

(declare-fun k0!394 () (_ BitVec 64))

(declare-fun head!747 (List!25) tuple2!32)

(assert (=> b!1897 (= res!4435 (not (= (_1!16 (head!747 (toList!34 lm!258))) k0!394)))))

(declare-fun res!4434 () Bool)

(assert (=> start!186 (=> (not res!4434) (not e!399))))

(assert (=> start!186 (= res!4434 (forall!18 (toList!34 lm!258) p!318))))

(assert (=> start!186 e!399))

(declare-fun e!398 () Bool)

(declare-fun inv!56 (ListLongMap!37) Bool)

(assert (=> start!186 (and (inv!56 lm!258) e!398)))

(assert (=> start!186 tp!112))

(assert (=> start!186 true))

(declare-fun b!1896 () Bool)

(declare-fun res!4436 () Bool)

(assert (=> b!1896 (=> (not res!4436) (not e!399))))

(declare-fun isEmpty!20 (ListLongMap!37) Bool)

(assert (=> b!1896 (= res!4436 (not (isEmpty!20 lm!258)))))

(declare-fun b!1899 () Bool)

(declare-fun tp!113 () Bool)

(assert (=> b!1899 (= e!398 tp!113)))

(assert (= (and start!186 res!4434) b!1896))

(assert (= (and b!1896 res!4436) b!1897))

(assert (= (and b!1897 res!4435) b!1898))

(assert (= start!186 b!1899))

(declare-fun m!543 () Bool)

(assert (=> b!1898 m!543))

(declare-fun m!545 () Bool)

(assert (=> b!1898 m!545))

(declare-fun m!547 () Bool)

(assert (=> b!1897 m!547))

(declare-fun m!549 () Bool)

(assert (=> start!186 m!549))

(declare-fun m!551 () Bool)

(assert (=> start!186 m!551))

(declare-fun m!553 () Bool)

(assert (=> b!1896 m!553))

(check-sat (not b!1898) (not b!1896) b_and!63 (not b!1899) (not b_next!33) (not start!186) (not b!1897))
(check-sat b_and!63 (not b_next!33))
(get-model)

(declare-fun d!189 () Bool)

(declare-fun res!4456 () Bool)

(declare-fun e!416 () Bool)

(assert (=> d!189 (=> res!4456 e!416)))

(get-info :version)

(assert (=> d!189 (= res!4456 ((_ is Nil!22) (toList!34 (tail!33 lm!258))))))

(assert (=> d!189 (= (forall!18 (toList!34 (tail!33 lm!258)) p!318) e!416)))

(declare-fun b!1922 () Bool)

(declare-fun e!417 () Bool)

(assert (=> b!1922 (= e!416 e!417)))

(declare-fun res!4457 () Bool)

(assert (=> b!1922 (=> (not res!4457) (not e!417))))

(declare-fun dynLambda!9 (Int tuple2!32) Bool)

(assert (=> b!1922 (= res!4457 (dynLambda!9 p!318 (h!587 (toList!34 (tail!33 lm!258)))))))

(declare-fun b!1923 () Bool)

(assert (=> b!1923 (= e!417 (forall!18 (t!2050 (toList!34 (tail!33 lm!258))) p!318))))

(assert (= (and d!189 (not res!4456)) b!1922))

(assert (= (and b!1922 res!4457) b!1923))

(declare-fun b_lambda!63 () Bool)

(assert (=> (not b_lambda!63) (not b!1922)))

(declare-fun t!2055 () Bool)

(declare-fun tb!27 () Bool)

(assert (=> (and start!186 (= p!318 p!318) t!2055) tb!27))

(declare-fun result!45 () Bool)

(assert (=> tb!27 (= result!45 true)))

(assert (=> b!1922 t!2055))

(declare-fun b_and!67 () Bool)

(assert (= b_and!63 (and (=> t!2055 result!45) b_and!67)))

(declare-fun m!569 () Bool)

(assert (=> b!1922 m!569))

(declare-fun m!573 () Bool)

(assert (=> b!1923 m!573))

(assert (=> b!1898 d!189))

(declare-fun d!193 () Bool)

(declare-fun tail!35 (List!25) List!25)

(assert (=> d!193 (= (tail!33 lm!258) (ListLongMap!38 (tail!35 (toList!34 lm!258))))))

(declare-fun bs!52 () Bool)

(assert (= bs!52 d!193))

(declare-fun m!581 () Bool)

(assert (=> bs!52 m!581))

(assert (=> b!1898 d!193))

(declare-fun d!199 () Bool)

(declare-fun res!4464 () Bool)

(declare-fun e!424 () Bool)

(assert (=> d!199 (=> res!4464 e!424)))

(assert (=> d!199 (= res!4464 ((_ is Nil!22) (toList!34 lm!258)))))

(assert (=> d!199 (= (forall!18 (toList!34 lm!258) p!318) e!424)))

(declare-fun b!1930 () Bool)

(declare-fun e!425 () Bool)

(assert (=> b!1930 (= e!424 e!425)))

(declare-fun res!4465 () Bool)

(assert (=> b!1930 (=> (not res!4465) (not e!425))))

(assert (=> b!1930 (= res!4465 (dynLambda!9 p!318 (h!587 (toList!34 lm!258))))))

(declare-fun b!1931 () Bool)

(assert (=> b!1931 (= e!425 (forall!18 (t!2050 (toList!34 lm!258)) p!318))))

(assert (= (and d!199 (not res!4464)) b!1930))

(assert (= (and b!1930 res!4465) b!1931))

(declare-fun b_lambda!67 () Bool)

(assert (=> (not b_lambda!67) (not b!1930)))

(declare-fun t!2059 () Bool)

(declare-fun tb!31 () Bool)

(assert (=> (and start!186 (= p!318 p!318) t!2059) tb!31))

(declare-fun result!49 () Bool)

(assert (=> tb!31 (= result!49 true)))

(assert (=> b!1930 t!2059))

(declare-fun b_and!73 () Bool)

(assert (= b_and!67 (and (=> t!2059 result!49) b_and!73)))

(declare-fun m!585 () Bool)

(assert (=> b!1930 m!585))

(declare-fun m!587 () Bool)

(assert (=> b!1931 m!587))

(assert (=> start!186 d!199))

(declare-fun d!203 () Bool)

(declare-fun isStrictlySorted!8 (List!25) Bool)

(assert (=> d!203 (= (inv!56 lm!258) (isStrictlySorted!8 (toList!34 lm!258)))))

(declare-fun bs!55 () Bool)

(assert (= bs!55 d!203))

(declare-fun m!597 () Bool)

(assert (=> bs!55 m!597))

(assert (=> start!186 d!203))

(declare-fun d!209 () Bool)

(assert (=> d!209 (= (head!747 (toList!34 lm!258)) (h!587 (toList!34 lm!258)))))

(assert (=> b!1897 d!209))

(declare-fun d!215 () Bool)

(declare-fun isEmpty!23 (List!25) Bool)

(assert (=> d!215 (= (isEmpty!20 lm!258) (isEmpty!23 (toList!34 lm!258)))))

(declare-fun bs!58 () Bool)

(assert (= bs!58 d!215))

(declare-fun m!605 () Bool)

(assert (=> bs!58 m!605))

(assert (=> b!1896 d!215))

(declare-fun b!1945 () Bool)

(declare-fun e!435 () Bool)

(declare-fun tp_is_empty!21 () Bool)

(declare-fun tp!125 () Bool)

(assert (=> b!1945 (= e!435 (and tp_is_empty!21 tp!125))))

(assert (=> b!1899 (= tp!113 e!435)))

(assert (= (and b!1899 ((_ is Cons!21) (toList!34 lm!258))) b!1945))

(declare-fun b_lambda!77 () Bool)

(assert (= b_lambda!63 (or (and start!186 b_free!33) b_lambda!77)))

(declare-fun b_lambda!79 () Bool)

(assert (= b_lambda!67 (or (and start!186 b_free!33) b_lambda!79)))

(check-sat tp_is_empty!21 (not b!1931) (not b!1945) (not d!193) (not d!215) (not d!203) (not b_lambda!77) (not b_lambda!79) (not b_next!33) (not b!1923) b_and!73)
(check-sat b_and!73 (not b_next!33))
(get-model)

(declare-fun d!219 () Bool)

(declare-fun res!4470 () Bool)

(declare-fun e!439 () Bool)

(assert (=> d!219 (=> res!4470 e!439)))

(assert (=> d!219 (= res!4470 ((_ is Nil!22) (t!2050 (toList!34 lm!258))))))

(assert (=> d!219 (= (forall!18 (t!2050 (toList!34 lm!258)) p!318) e!439)))

(declare-fun b!1951 () Bool)

(declare-fun e!440 () Bool)

(assert (=> b!1951 (= e!439 e!440)))

(declare-fun res!4471 () Bool)

(assert (=> b!1951 (=> (not res!4471) (not e!440))))

(assert (=> b!1951 (= res!4471 (dynLambda!9 p!318 (h!587 (t!2050 (toList!34 lm!258)))))))

(declare-fun b!1952 () Bool)

(assert (=> b!1952 (= e!440 (forall!18 (t!2050 (t!2050 (toList!34 lm!258))) p!318))))

(assert (= (and d!219 (not res!4470)) b!1951))

(assert (= (and b!1951 res!4471) b!1952))

(declare-fun b_lambda!85 () Bool)

(assert (=> (not b_lambda!85) (not b!1951)))

(declare-fun t!2065 () Bool)

(declare-fun tb!37 () Bool)

(assert (=> (and start!186 (= p!318 p!318) t!2065) tb!37))

(declare-fun result!61 () Bool)

(assert (=> tb!37 (= result!61 true)))

(assert (=> b!1951 t!2065))

(declare-fun b_and!79 () Bool)

(assert (= b_and!73 (and (=> t!2065 result!61) b_and!79)))

(declare-fun m!609 () Bool)

(assert (=> b!1951 m!609))

(declare-fun m!611 () Bool)

(assert (=> b!1952 m!611))

(assert (=> b!1931 d!219))

(declare-fun d!221 () Bool)

(declare-fun res!4476 () Bool)

(declare-fun e!445 () Bool)

(assert (=> d!221 (=> res!4476 e!445)))

(assert (=> d!221 (= res!4476 (or ((_ is Nil!22) (toList!34 lm!258)) ((_ is Nil!22) (t!2050 (toList!34 lm!258)))))))

(assert (=> d!221 (= (isStrictlySorted!8 (toList!34 lm!258)) e!445)))

(declare-fun b!1957 () Bool)

(declare-fun e!446 () Bool)

(assert (=> b!1957 (= e!445 e!446)))

(declare-fun res!4477 () Bool)

(assert (=> b!1957 (=> (not res!4477) (not e!446))))

(assert (=> b!1957 (= res!4477 (bvslt (_1!16 (h!587 (toList!34 lm!258))) (_1!16 (h!587 (t!2050 (toList!34 lm!258))))))))

(declare-fun b!1958 () Bool)

(assert (=> b!1958 (= e!446 (isStrictlySorted!8 (t!2050 (toList!34 lm!258))))))

(assert (= (and d!221 (not res!4476)) b!1957))

(assert (= (and b!1957 res!4477) b!1958))

(declare-fun m!613 () Bool)

(assert (=> b!1958 m!613))

(assert (=> d!203 d!221))

(declare-fun d!223 () Bool)

(assert (=> d!223 (= (tail!35 (toList!34 lm!258)) (t!2050 (toList!34 lm!258)))))

(assert (=> d!193 d!223))

(declare-fun d!227 () Bool)

(declare-fun res!4478 () Bool)

(declare-fun e!447 () Bool)

(assert (=> d!227 (=> res!4478 e!447)))

(assert (=> d!227 (= res!4478 ((_ is Nil!22) (t!2050 (toList!34 (tail!33 lm!258)))))))

(assert (=> d!227 (= (forall!18 (t!2050 (toList!34 (tail!33 lm!258))) p!318) e!447)))

(declare-fun b!1959 () Bool)

(declare-fun e!448 () Bool)

(assert (=> b!1959 (= e!447 e!448)))

(declare-fun res!4479 () Bool)

(assert (=> b!1959 (=> (not res!4479) (not e!448))))

(assert (=> b!1959 (= res!4479 (dynLambda!9 p!318 (h!587 (t!2050 (toList!34 (tail!33 lm!258))))))))

(declare-fun b!1960 () Bool)

(assert (=> b!1960 (= e!448 (forall!18 (t!2050 (t!2050 (toList!34 (tail!33 lm!258)))) p!318))))

(assert (= (and d!227 (not res!4478)) b!1959))

(assert (= (and b!1959 res!4479) b!1960))

(declare-fun b_lambda!87 () Bool)

(assert (=> (not b_lambda!87) (not b!1959)))

(declare-fun t!2067 () Bool)

(declare-fun tb!39 () Bool)

(assert (=> (and start!186 (= p!318 p!318) t!2067) tb!39))

(declare-fun result!63 () Bool)

(assert (=> tb!39 (= result!63 true)))

(assert (=> b!1959 t!2067))

(declare-fun b_and!81 () Bool)

(assert (= b_and!79 (and (=> t!2067 result!63) b_and!81)))

(declare-fun m!615 () Bool)

(assert (=> b!1959 m!615))

(declare-fun m!617 () Bool)

(assert (=> b!1960 m!617))

(assert (=> b!1923 d!227))

(declare-fun d!231 () Bool)

(assert (=> d!231 (= (isEmpty!23 (toList!34 lm!258)) ((_ is Nil!22) (toList!34 lm!258)))))

(assert (=> d!215 d!231))

(declare-fun b!1963 () Bool)

(declare-fun e!451 () Bool)

(declare-fun tp!129 () Bool)

(assert (=> b!1963 (= e!451 (and tp_is_empty!21 tp!129))))

(assert (=> b!1945 (= tp!125 e!451)))

(assert (= (and b!1945 ((_ is Cons!21) (t!2050 (toList!34 lm!258)))) b!1963))

(declare-fun b_lambda!91 () Bool)

(assert (= b_lambda!87 (or (and start!186 b_free!33) b_lambda!91)))

(declare-fun b_lambda!93 () Bool)

(assert (= b_lambda!85 (or (and start!186 b_free!33) b_lambda!93)))

(check-sat (not b!1958) (not b!1952) (not b_lambda!77) (not b_lambda!79) (not b_next!33) tp_is_empty!21 (not b!1960) b_and!81 (not b!1963) (not b_lambda!91) (not b_lambda!93))
(check-sat b_and!81 (not b_next!33))
