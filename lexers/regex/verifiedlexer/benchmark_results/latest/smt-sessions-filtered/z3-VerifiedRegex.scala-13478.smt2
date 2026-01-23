; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727896 () Bool)

(assert start!727896)

(declare-fun b_free!134421 () Bool)

(declare-fun b_next!135211 () Bool)

(assert (=> start!727896 (= b_free!134421 (not b_next!135211))))

(declare-fun tp!2184207 () Bool)

(declare-fun b_and!352181 () Bool)

(assert (=> start!727896 (= tp!2184207 b_and!352181)))

(declare-fun b!7519996 () Bool)

(declare-fun e!4482795 () Bool)

(declare-fun p!2194 () Int)

(declare-datatypes ((B!3957 0))(
  ( (B!3958 (val!30354 Int)) )
))
(declare-datatypes ((List!72662 0))(
  ( (Nil!72538) (Cons!72538 (h!78986 B!3957) (t!387327 List!72662)) )
))
(declare-fun l!3837 () List!72662)

(declare-fun dynLambda!29868 (Int B!3957) Bool)

(assert (=> b!7519996 (= e!4482795 (dynLambda!29868 p!2194 (h!78986 l!3837)))))

(declare-fun b!7519997 () Bool)

(declare-fun res!3014231 () Bool)

(declare-fun e!4482796 () Bool)

(assert (=> b!7519997 (=> (not res!3014231) (not e!4482796))))

(assert (=> b!7519997 (= res!3014231 e!4482795)))

(declare-fun res!3014235 () Bool)

(assert (=> b!7519997 (=> res!3014235 e!4482795)))

(get-info :version)

(assert (=> b!7519997 (= res!3014235 (not ((_ is Cons!72538) l!3837)))))

(declare-fun b!7519998 () Bool)

(declare-fun res!3014234 () Bool)

(assert (=> b!7519998 (=> (not res!3014234) (not e!4482796))))

(assert (=> b!7519998 (= res!3014234 (dynLambda!29868 p!2194 (h!78986 l!3837)))))

(declare-fun b!7519999 () Bool)

(declare-fun forall!18392 (List!72662 Int) Bool)

(assert (=> b!7519999 (= e!4482796 (forall!18392 (t!387327 l!3837) p!2194))))

(declare-fun res!3014233 () Bool)

(assert (=> start!727896 (=> (not res!3014233) (not e!4482796))))

(assert (=> start!727896 (= res!3014233 (not (forall!18392 l!3837 p!2194)))))

(assert (=> start!727896 e!4482796))

(declare-fun e!4482797 () Bool)

(assert (=> start!727896 e!4482797))

(assert (=> start!727896 tp!2184207))

(declare-fun b!7520000 () Bool)

(declare-fun res!3014232 () Bool)

(assert (=> b!7520000 (=> (not res!3014232) (not e!4482796))))

(assert (=> b!7520000 (= res!3014232 ((_ is Cons!72538) l!3837))))

(declare-fun b!7520001 () Bool)

(declare-fun tp_is_empty!49867 () Bool)

(declare-fun tp!2184208 () Bool)

(assert (=> b!7520001 (= e!4482797 (and tp_is_empty!49867 tp!2184208))))

(assert (= (and start!727896 res!3014233) b!7519997))

(assert (= (and b!7519997 (not res!3014235)) b!7519996))

(assert (= (and b!7519997 res!3014231) b!7520000))

(assert (= (and b!7520000 res!3014232) b!7519998))

(assert (= (and b!7519998 res!3014234) b!7519999))

(assert (= (and start!727896 ((_ is Cons!72538) l!3837)) b!7520001))

(declare-fun b_lambda!288589 () Bool)

(assert (=> (not b_lambda!288589) (not b!7519996)))

(declare-fun t!387326 () Bool)

(declare-fun tb!262545 () Bool)

(assert (=> (and start!727896 (= p!2194 p!2194) t!387326) tb!262545))

(declare-fun result!356390 () Bool)

(assert (=> tb!262545 (= result!356390 true)))

(assert (=> b!7519996 t!387326))

(declare-fun b_and!352183 () Bool)

(assert (= b_and!352181 (and (=> t!387326 result!356390) b_and!352183)))

(declare-fun b_lambda!288591 () Bool)

(assert (=> (not b_lambda!288591) (not b!7519998)))

(assert (=> b!7519998 t!387326))

(declare-fun b_and!352185 () Bool)

(assert (= b_and!352183 (and (=> t!387326 result!356390) b_and!352185)))

(declare-fun m!8099822 () Bool)

(assert (=> b!7519996 m!8099822))

(assert (=> b!7519998 m!8099822))

(declare-fun m!8099824 () Bool)

(assert (=> b!7519999 m!8099824))

(declare-fun m!8099826 () Bool)

(assert (=> start!727896 m!8099826))

(check-sat (not b!7519999) (not b!7520001) tp_is_empty!49867 b_and!352185 (not b_next!135211) (not start!727896) (not b_lambda!288591) (not b_lambda!288589))
(check-sat b_and!352185 (not b_next!135211))
(get-model)

(declare-fun b_lambda!288597 () Bool)

(assert (= b_lambda!288589 (or (and start!727896 b_free!134421) b_lambda!288597)))

(declare-fun b_lambda!288599 () Bool)

(assert (= b_lambda!288591 (or (and start!727896 b_free!134421) b_lambda!288599)))

(check-sat (not b!7519999) (not b!7520001) (not b_lambda!288597) tp_is_empty!49867 (not b_next!135211) (not start!727896) (not b_lambda!288599) b_and!352185)
(check-sat b_and!352185 (not b_next!135211))
(get-model)

(declare-fun d!2308751 () Bool)

(declare-fun res!3014248 () Bool)

(declare-fun e!4482813 () Bool)

(assert (=> d!2308751 (=> res!3014248 e!4482813)))

(assert (=> d!2308751 (= res!3014248 ((_ is Nil!72538) l!3837))))

(assert (=> d!2308751 (= (forall!18392 l!3837 p!2194) e!4482813)))

(declare-fun b!7520019 () Bool)

(declare-fun e!4482814 () Bool)

(assert (=> b!7520019 (= e!4482813 e!4482814)))

(declare-fun res!3014249 () Bool)

(assert (=> b!7520019 (=> (not res!3014249) (not e!4482814))))

(assert (=> b!7520019 (= res!3014249 (dynLambda!29868 p!2194 (h!78986 l!3837)))))

(declare-fun b!7520020 () Bool)

(assert (=> b!7520020 (= e!4482814 (forall!18392 (t!387327 l!3837) p!2194))))

(assert (= (and d!2308751 (not res!3014248)) b!7520019))

(assert (= (and b!7520019 res!3014249) b!7520020))

(declare-fun b_lambda!288609 () Bool)

(assert (=> (not b_lambda!288609) (not b!7520019)))

(assert (=> b!7520019 t!387326))

(declare-fun b_and!352191 () Bool)

(assert (= b_and!352185 (and (=> t!387326 result!356390) b_and!352191)))

(assert (=> b!7520019 m!8099822))

(assert (=> b!7520020 m!8099824))

(assert (=> start!727896 d!2308751))

(declare-fun d!2308755 () Bool)

(declare-fun res!3014250 () Bool)

(declare-fun e!4482815 () Bool)

(assert (=> d!2308755 (=> res!3014250 e!4482815)))

(assert (=> d!2308755 (= res!3014250 ((_ is Nil!72538) (t!387327 l!3837)))))

(assert (=> d!2308755 (= (forall!18392 (t!387327 l!3837) p!2194) e!4482815)))

(declare-fun b!7520021 () Bool)

(declare-fun e!4482816 () Bool)

(assert (=> b!7520021 (= e!4482815 e!4482816)))

(declare-fun res!3014251 () Bool)

(assert (=> b!7520021 (=> (not res!3014251) (not e!4482816))))

(assert (=> b!7520021 (= res!3014251 (dynLambda!29868 p!2194 (h!78986 (t!387327 l!3837))))))

(declare-fun b!7520022 () Bool)

(assert (=> b!7520022 (= e!4482816 (forall!18392 (t!387327 (t!387327 l!3837)) p!2194))))

(assert (= (and d!2308755 (not res!3014250)) b!7520021))

(assert (= (and b!7520021 res!3014251) b!7520022))

(declare-fun b_lambda!288611 () Bool)

(assert (=> (not b_lambda!288611) (not b!7520021)))

(declare-fun t!387331 () Bool)

(declare-fun tb!262549 () Bool)

(assert (=> (and start!727896 (= p!2194 p!2194) t!387331) tb!262549))

(declare-fun result!356396 () Bool)

(assert (=> tb!262549 (= result!356396 true)))

(assert (=> b!7520021 t!387331))

(declare-fun b_and!352193 () Bool)

(assert (= b_and!352191 (and (=> t!387331 result!356396) b_and!352193)))

(declare-fun m!8099832 () Bool)

(assert (=> b!7520021 m!8099832))

(declare-fun m!8099834 () Bool)

(assert (=> b!7520022 m!8099834))

(assert (=> b!7519999 d!2308755))

(declare-fun b!7520027 () Bool)

(declare-fun e!4482819 () Bool)

(declare-fun tp!2184214 () Bool)

(assert (=> b!7520027 (= e!4482819 (and tp_is_empty!49867 tp!2184214))))

(assert (=> b!7520001 (= tp!2184208 e!4482819)))

(assert (= (and b!7520001 ((_ is Cons!72538) (t!387327 l!3837))) b!7520027))

(declare-fun b_lambda!288613 () Bool)

(assert (= b_lambda!288609 (or (and start!727896 b_free!134421) b_lambda!288613)))

(declare-fun b_lambda!288615 () Bool)

(assert (= b_lambda!288611 (or (and start!727896 b_free!134421) b_lambda!288615)))

(check-sat (not b!7520027) (not b!7520022) (not b_lambda!288613) (not b_lambda!288597) tp_is_empty!49867 (not b_lambda!288615) (not b_lambda!288599) (not b!7520020) (not b_next!135211) b_and!352193)
(check-sat b_and!352193 (not b_next!135211))
