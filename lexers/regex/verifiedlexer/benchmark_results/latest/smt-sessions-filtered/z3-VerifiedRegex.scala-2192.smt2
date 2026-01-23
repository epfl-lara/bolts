; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108038 () Bool)

(assert start!108038)

(declare-fun res!544744 () Bool)

(declare-fun e!776981 () Bool)

(assert (=> start!108038 (=> (not res!544744) (not e!776981))))

(declare-datatypes ((B!1381 0))(
  ( (B!1382 (val!4048 Int)) )
))
(declare-datatypes ((List!12295 0))(
  ( (Nil!12237) (Cons!12237 (h!17638 B!1381) (t!112679 List!12295)) )
))
(declare-fun l!3821 () List!12295)

(declare-fun e!9491 () B!1381)

(declare-fun contains!2054 (List!12295 B!1381) Bool)

(assert (=> start!108038 (= res!544744 (contains!2054 l!3821 e!9491))))

(assert (=> start!108038 e!776981))

(declare-fun e!776982 () Bool)

(assert (=> start!108038 e!776982))

(declare-fun tp_is_empty!6239 () Bool)

(assert (=> start!108038 tp_is_empty!6239))

(declare-fun b!1211117 () Bool)

(declare-fun res!544745 () Bool)

(assert (=> b!1211117 (=> (not res!544745) (not e!776981))))

(get-info :version)

(assert (=> b!1211117 (= res!544745 (and (or (not ((_ is Cons!12237) l!3821)) (not (= (h!17638 l!3821) e!9491))) ((_ is Cons!12237) l!3821)))))

(declare-fun b!1211118 () Bool)

(assert (=> b!1211118 (= e!776981 (not (contains!2054 (t!112679 l!3821) e!9491)))))

(declare-fun b!1211119 () Bool)

(declare-fun tp!342963 () Bool)

(assert (=> b!1211119 (= e!776982 (and tp_is_empty!6239 tp!342963))))

(assert (= (and start!108038 res!544744) b!1211117))

(assert (= (and b!1211117 res!544745) b!1211118))

(assert (= (and start!108038 ((_ is Cons!12237) l!3821)) b!1211119))

(declare-fun m!1386863 () Bool)

(assert (=> start!108038 m!1386863))

(declare-fun m!1386865 () Bool)

(assert (=> b!1211118 m!1386865))

(check-sat (not start!108038) (not b!1211118) (not b!1211119) tp_is_empty!6239)
(check-sat)
(get-model)

(declare-fun d!346471 () Bool)

(declare-fun lt!414527 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1751 (List!12295) (InoxSet B!1381))

(assert (=> d!346471 (= lt!414527 (select (content!1751 l!3821) e!9491))))

(declare-fun e!776994 () Bool)

(assert (=> d!346471 (= lt!414527 e!776994)))

(declare-fun res!544757 () Bool)

(assert (=> d!346471 (=> (not res!544757) (not e!776994))))

(assert (=> d!346471 (= res!544757 ((_ is Cons!12237) l!3821))))

(assert (=> d!346471 (= (contains!2054 l!3821 e!9491) lt!414527)))

(declare-fun b!1211130 () Bool)

(declare-fun e!776993 () Bool)

(assert (=> b!1211130 (= e!776994 e!776993)))

(declare-fun res!544756 () Bool)

(assert (=> b!1211130 (=> res!544756 e!776993)))

(assert (=> b!1211130 (= res!544756 (= (h!17638 l!3821) e!9491))))

(declare-fun b!1211131 () Bool)

(assert (=> b!1211131 (= e!776993 (contains!2054 (t!112679 l!3821) e!9491))))

(assert (= (and d!346471 res!544757) b!1211130))

(assert (= (and b!1211130 (not res!544756)) b!1211131))

(declare-fun m!1386877 () Bool)

(assert (=> d!346471 m!1386877))

(declare-fun m!1386879 () Bool)

(assert (=> d!346471 m!1386879))

(assert (=> b!1211131 m!1386865))

(assert (=> start!108038 d!346471))

(declare-fun d!346477 () Bool)

(declare-fun lt!414529 () Bool)

(assert (=> d!346477 (= lt!414529 (select (content!1751 (t!112679 l!3821)) e!9491))))

(declare-fun e!777000 () Bool)

(assert (=> d!346477 (= lt!414529 e!777000)))

(declare-fun res!544761 () Bool)

(assert (=> d!346477 (=> (not res!544761) (not e!777000))))

(assert (=> d!346477 (= res!544761 ((_ is Cons!12237) (t!112679 l!3821)))))

(assert (=> d!346477 (= (contains!2054 (t!112679 l!3821) e!9491) lt!414529)))

(declare-fun b!1211138 () Bool)

(declare-fun e!776999 () Bool)

(assert (=> b!1211138 (= e!777000 e!776999)))

(declare-fun res!544760 () Bool)

(assert (=> b!1211138 (=> res!544760 e!776999)))

(assert (=> b!1211138 (= res!544760 (= (h!17638 (t!112679 l!3821)) e!9491))))

(declare-fun b!1211139 () Bool)

(assert (=> b!1211139 (= e!776999 (contains!2054 (t!112679 (t!112679 l!3821)) e!9491))))

(assert (= (and d!346477 res!544761) b!1211138))

(assert (= (and b!1211138 (not res!544760)) b!1211139))

(declare-fun m!1386881 () Bool)

(assert (=> d!346477 m!1386881))

(declare-fun m!1386883 () Bool)

(assert (=> d!346477 m!1386883))

(declare-fun m!1386885 () Bool)

(assert (=> b!1211139 m!1386885))

(assert (=> b!1211118 d!346477))

(declare-fun b!1211145 () Bool)

(declare-fun e!777004 () Bool)

(declare-fun tp!342969 () Bool)

(assert (=> b!1211145 (= e!777004 (and tp_is_empty!6239 tp!342969))))

(assert (=> b!1211119 (= tp!342963 e!777004)))

(assert (= (and b!1211119 ((_ is Cons!12237) (t!112679 l!3821))) b!1211145))

(check-sat (not b!1211139) (not d!346471) (not b!1211131) tp_is_empty!6239 (not b!1211145) (not d!346477))
(check-sat)
