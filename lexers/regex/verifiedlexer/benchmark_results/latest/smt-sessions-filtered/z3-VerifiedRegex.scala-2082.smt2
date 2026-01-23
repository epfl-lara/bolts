; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105740 () Bool)

(assert start!105740)

(declare-fun res!537679 () Bool)

(declare-fun e!765174 () Bool)

(assert (=> start!105740 (=> (not res!537679) (not e!765174))))

(declare-datatypes ((B!1285 0))(
  ( (B!1286 (val!3828 Int)) )
))
(declare-datatypes ((List!12012 0))(
  ( (Nil!11988) (Cons!11988 (h!17389 B!1285) (t!112218 List!12012)) )
))
(declare-fun l!2965 () List!12012)

(declare-fun i!770 () Int)

(get-info :version)

(assert (=> start!105740 (= res!537679 (and (not ((_ is Nil!11988) l!2965)) (> i!770 0)))))

(assert (=> start!105740 e!765174))

(declare-fun e!765175 () Bool)

(assert (=> start!105740 e!765175))

(assert (=> start!105740 true))

(declare-fun b!1190184 () Bool)

(declare-fun ListPrimitiveSize!74 (List!12012) Int)

(assert (=> b!1190184 (= e!765174 (>= (ListPrimitiveSize!74 (t!112218 l!2965)) (ListPrimitiveSize!74 l!2965)))))

(declare-fun b!1190185 () Bool)

(declare-fun tp_is_empty!5875 () Bool)

(declare-fun tp!339676 () Bool)

(assert (=> b!1190185 (= e!765175 (and tp_is_empty!5875 tp!339676))))

(assert (= (and start!105740 res!537679) b!1190184))

(assert (= (and start!105740 ((_ is Cons!11988) l!2965)) b!1190185))

(declare-fun m!1365321 () Bool)

(assert (=> b!1190184 m!1365321))

(declare-fun m!1365323 () Bool)

(assert (=> b!1190184 m!1365323))

(check-sat (not b!1190184) (not b!1190185) tp_is_empty!5875)
(check-sat)
(get-model)

(declare-fun d!340153 () Bool)

(declare-fun lt!409151 () Int)

(assert (=> d!340153 (>= lt!409151 0)))

(declare-fun e!765182 () Int)

(assert (=> d!340153 (= lt!409151 e!765182)))

(declare-fun c!197551 () Bool)

(assert (=> d!340153 (= c!197551 ((_ is Nil!11988) (t!112218 l!2965)))))

(assert (=> d!340153 (= (ListPrimitiveSize!74 (t!112218 l!2965)) lt!409151)))

(declare-fun b!1190198 () Bool)

(assert (=> b!1190198 (= e!765182 0)))

(declare-fun b!1190199 () Bool)

(assert (=> b!1190199 (= e!765182 (+ 1 (ListPrimitiveSize!74 (t!112218 (t!112218 l!2965)))))))

(assert (= (and d!340153 c!197551) b!1190198))

(assert (= (and d!340153 (not c!197551)) b!1190199))

(declare-fun m!1365327 () Bool)

(assert (=> b!1190199 m!1365327))

(assert (=> b!1190184 d!340153))

(declare-fun d!340159 () Bool)

(declare-fun lt!409152 () Int)

(assert (=> d!340159 (>= lt!409152 0)))

(declare-fun e!765185 () Int)

(assert (=> d!340159 (= lt!409152 e!765185)))

(declare-fun c!197552 () Bool)

(assert (=> d!340159 (= c!197552 ((_ is Nil!11988) l!2965))))

(assert (=> d!340159 (= (ListPrimitiveSize!74 l!2965) lt!409152)))

(declare-fun b!1190204 () Bool)

(assert (=> b!1190204 (= e!765185 0)))

(declare-fun b!1190205 () Bool)

(assert (=> b!1190205 (= e!765185 (+ 1 (ListPrimitiveSize!74 (t!112218 l!2965))))))

(assert (= (and d!340159 c!197552) b!1190204))

(assert (= (and d!340159 (not c!197552)) b!1190205))

(assert (=> b!1190205 m!1365321))

(assert (=> b!1190184 d!340159))

(declare-fun b!1190211 () Bool)

(declare-fun e!765189 () Bool)

(declare-fun tp!339682 () Bool)

(assert (=> b!1190211 (= e!765189 (and tp_is_empty!5875 tp!339682))))

(assert (=> b!1190185 (= tp!339676 e!765189)))

(assert (= (and b!1190185 ((_ is Cons!11988) (t!112218 l!2965))) b!1190211))

(check-sat (not b!1190199) (not b!1190205) (not b!1190211) tp_is_empty!5875)
(check-sat)
