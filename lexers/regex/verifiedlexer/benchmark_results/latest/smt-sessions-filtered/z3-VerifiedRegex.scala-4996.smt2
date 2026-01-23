; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252736 () Bool)

(assert start!252736)

(declare-fun b!2600613 () Bool)

(assert (=> b!2600613 true))

(declare-fun res!1095469 () Bool)

(declare-fun e!1641575 () Bool)

(assert (=> start!252736 (=> (not res!1095469) (not e!1641575))))

(declare-datatypes ((B!2405 0))(
  ( (B!2406 (val!9670 Int)) )
))
(declare-datatypes ((List!30103 0))(
  ( (Nil!30003) (Cons!30003 (h!35423 B!2405) (t!213152 List!30103)) )
))
(declare-fun refL!9 () List!30103)

(declare-fun isEmpty!17156 (List!30103) Bool)

(assert (=> start!252736 (= res!1095469 (not (isEmpty!17156 refL!9)))))

(assert (=> start!252736 e!1641575))

(declare-fun e!1641577 () Bool)

(assert (=> start!252736 e!1641577))

(declare-fun e!1641576 () Bool)

(assert (=> start!252736 e!1641576))

(declare-fun tp_is_empty!13685 () Bool)

(assert (=> start!252736 tp_is_empty!13685))

(declare-fun b!2600606 () Bool)

(declare-fun tp!823924 () Bool)

(assert (=> b!2600606 (= e!1641576 (and tp_is_empty!13685 tp!823924))))

(declare-fun b!2600607 () Bool)

(declare-fun res!1095466 () Bool)

(assert (=> b!2600607 (=> (not res!1095466) (not e!1641575))))

(declare-fun refHd!9 () B!2405)

(declare-fun head!5924 (List!30103) B!2405)

(assert (=> b!2600607 (= res!1095466 (= refHd!9 (head!5924 refL!9)))))

(declare-fun b!2600608 () Bool)

(declare-fun res!1095468 () Bool)

(assert (=> b!2600608 (=> (not res!1095468) (not e!1641575))))

(declare-fun l!3766 () List!30103)

(declare-fun contains!5547 (List!30103 B!2405) Bool)

(assert (=> b!2600608 (= res!1095468 (not (contains!5547 l!3766 refHd!9)))))

(declare-fun b!2600609 () Bool)

(declare-fun res!1095467 () Bool)

(assert (=> b!2600609 (=> (not res!1095467) (not e!1641575))))

(declare-fun lambda!97282 () Int)

(declare-fun forall!6182 (List!30103 Int) Bool)

(assert (=> b!2600609 (= res!1095467 (forall!6182 (t!213152 l!3766) lambda!97282))))

(declare-fun b!2600610 () Bool)

(declare-fun res!1095470 () Bool)

(assert (=> b!2600610 (=> (not res!1095470) (not e!1641575))))

(get-info :version)

(assert (=> b!2600610 (= res!1095470 (not ((_ is Nil!30003) l!3766)))))

(declare-fun b!2600611 () Bool)

(assert (=> b!2600611 (= e!1641575 (contains!5547 (t!213152 l!3766) refHd!9))))

(declare-fun b!2600612 () Bool)

(declare-fun tp!823923 () Bool)

(assert (=> b!2600612 (= e!1641577 (and tp_is_empty!13685 tp!823923))))

(declare-fun res!1095471 () Bool)

(assert (=> b!2600613 (=> (not res!1095471) (not e!1641575))))

(assert (=> b!2600613 (= res!1095471 (forall!6182 l!3766 lambda!97282))))

(assert (= (and start!252736 res!1095469) b!2600613))

(assert (= (and b!2600613 res!1095471) b!2600607))

(assert (= (and b!2600607 res!1095466) b!2600608))

(assert (= (and b!2600608 res!1095468) b!2600610))

(assert (= (and b!2600610 res!1095470) b!2600609))

(assert (= (and b!2600609 res!1095467) b!2600611))

(assert (= (and start!252736 ((_ is Cons!30003) refL!9)) b!2600612))

(assert (= (and start!252736 ((_ is Cons!30003) l!3766)) b!2600606))

(declare-fun m!2935885 () Bool)

(assert (=> b!2600611 m!2935885))

(declare-fun m!2935887 () Bool)

(assert (=> b!2600607 m!2935887))

(declare-fun m!2935889 () Bool)

(assert (=> b!2600609 m!2935889))

(declare-fun m!2935891 () Bool)

(assert (=> start!252736 m!2935891))

(declare-fun m!2935893 () Bool)

(assert (=> b!2600608 m!2935893))

(declare-fun m!2935895 () Bool)

(assert (=> b!2600613 m!2935895))

(check-sat (not b!2600613) (not b!2600612) tp_is_empty!13685 (not b!2600607) (not b!2600609) (not b!2600608) (not b!2600611) (not b!2600606) (not start!252736))
(check-sat)
(get-model)

(declare-fun d!736749 () Bool)

(declare-fun res!1095492 () Bool)

(declare-fun e!1641602 () Bool)

(assert (=> d!736749 (=> res!1095492 e!1641602)))

(assert (=> d!736749 (= res!1095492 ((_ is Nil!30003) l!3766))))

(assert (=> d!736749 (= (forall!6182 l!3766 lambda!97282) e!1641602)))

(declare-fun b!2600642 () Bool)

(declare-fun e!1641603 () Bool)

(assert (=> b!2600642 (= e!1641602 e!1641603)))

(declare-fun res!1095493 () Bool)

(assert (=> b!2600642 (=> (not res!1095493) (not e!1641603))))

(declare-fun dynLambda!12687 (Int B!2405) Bool)

(assert (=> b!2600642 (= res!1095493 (dynLambda!12687 lambda!97282 (h!35423 l!3766)))))

(declare-fun b!2600643 () Bool)

(assert (=> b!2600643 (= e!1641603 (forall!6182 (t!213152 l!3766) lambda!97282))))

(assert (= (and d!736749 (not res!1095492)) b!2600642))

(assert (= (and b!2600642 res!1095493) b!2600643))

(declare-fun b_lambda!77843 () Bool)

(assert (=> (not b_lambda!77843) (not b!2600642)))

(declare-fun m!2935917 () Bool)

(assert (=> b!2600642 m!2935917))

(assert (=> b!2600643 m!2935889))

(assert (=> b!2600613 d!736749))

(declare-fun d!736763 () Bool)

(declare-fun lt!915294 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4257 (List!30103) (InoxSet B!2405))

(assert (=> d!736763 (= lt!915294 (select (content!4257 l!3766) refHd!9))))

(declare-fun e!1641609 () Bool)

(assert (=> d!736763 (= lt!915294 e!1641609)))

(declare-fun res!1095499 () Bool)

(assert (=> d!736763 (=> (not res!1095499) (not e!1641609))))

(assert (=> d!736763 (= res!1095499 ((_ is Cons!30003) l!3766))))

(assert (=> d!736763 (= (contains!5547 l!3766 refHd!9) lt!915294)))

(declare-fun b!2600648 () Bool)

(declare-fun e!1641608 () Bool)

(assert (=> b!2600648 (= e!1641609 e!1641608)))

(declare-fun res!1095498 () Bool)

(assert (=> b!2600648 (=> res!1095498 e!1641608)))

(assert (=> b!2600648 (= res!1095498 (= (h!35423 l!3766) refHd!9))))

(declare-fun b!2600649 () Bool)

(assert (=> b!2600649 (= e!1641608 (contains!5547 (t!213152 l!3766) refHd!9))))

(assert (= (and d!736763 res!1095499) b!2600648))

(assert (= (and b!2600648 (not res!1095498)) b!2600649))

(declare-fun m!2935919 () Bool)

(assert (=> d!736763 m!2935919))

(declare-fun m!2935921 () Bool)

(assert (=> d!736763 m!2935921))

(assert (=> b!2600649 m!2935885))

(assert (=> b!2600608 d!736763))

(declare-fun d!736765 () Bool)

(assert (=> d!736765 (= (head!5924 refL!9) (h!35423 refL!9))))

(assert (=> b!2600607 d!736765))

(declare-fun d!736767 () Bool)

(declare-fun lt!915295 () Bool)

(assert (=> d!736767 (= lt!915295 (select (content!4257 (t!213152 l!3766)) refHd!9))))

(declare-fun e!1641611 () Bool)

(assert (=> d!736767 (= lt!915295 e!1641611)))

(declare-fun res!1095501 () Bool)

(assert (=> d!736767 (=> (not res!1095501) (not e!1641611))))

(assert (=> d!736767 (= res!1095501 ((_ is Cons!30003) (t!213152 l!3766)))))

(assert (=> d!736767 (= (contains!5547 (t!213152 l!3766) refHd!9) lt!915295)))

(declare-fun b!2600650 () Bool)

(declare-fun e!1641610 () Bool)

(assert (=> b!2600650 (= e!1641611 e!1641610)))

(declare-fun res!1095500 () Bool)

(assert (=> b!2600650 (=> res!1095500 e!1641610)))

(assert (=> b!2600650 (= res!1095500 (= (h!35423 (t!213152 l!3766)) refHd!9))))

(declare-fun b!2600651 () Bool)

(assert (=> b!2600651 (= e!1641610 (contains!5547 (t!213152 (t!213152 l!3766)) refHd!9))))

(assert (= (and d!736767 res!1095501) b!2600650))

(assert (= (and b!2600650 (not res!1095500)) b!2600651))

(declare-fun m!2935923 () Bool)

(assert (=> d!736767 m!2935923))

(declare-fun m!2935925 () Bool)

(assert (=> d!736767 m!2935925))

(declare-fun m!2935927 () Bool)

(assert (=> b!2600651 m!2935927))

(assert (=> b!2600611 d!736767))

(declare-fun d!736769 () Bool)

(declare-fun res!1095502 () Bool)

(declare-fun e!1641612 () Bool)

(assert (=> d!736769 (=> res!1095502 e!1641612)))

(assert (=> d!736769 (= res!1095502 ((_ is Nil!30003) (t!213152 l!3766)))))

(assert (=> d!736769 (= (forall!6182 (t!213152 l!3766) lambda!97282) e!1641612)))

(declare-fun b!2600652 () Bool)

(declare-fun e!1641613 () Bool)

(assert (=> b!2600652 (= e!1641612 e!1641613)))

(declare-fun res!1095503 () Bool)

(assert (=> b!2600652 (=> (not res!1095503) (not e!1641613))))

(assert (=> b!2600652 (= res!1095503 (dynLambda!12687 lambda!97282 (h!35423 (t!213152 l!3766))))))

(declare-fun b!2600653 () Bool)

(assert (=> b!2600653 (= e!1641613 (forall!6182 (t!213152 (t!213152 l!3766)) lambda!97282))))

(assert (= (and d!736769 (not res!1095502)) b!2600652))

(assert (= (and b!2600652 res!1095503) b!2600653))

(declare-fun b_lambda!77845 () Bool)

(assert (=> (not b_lambda!77845) (not b!2600652)))

(declare-fun m!2935929 () Bool)

(assert (=> b!2600652 m!2935929))

(declare-fun m!2935931 () Bool)

(assert (=> b!2600653 m!2935931))

(assert (=> b!2600609 d!736769))

(declare-fun d!736771 () Bool)

(assert (=> d!736771 (= (isEmpty!17156 refL!9) ((_ is Nil!30003) refL!9))))

(assert (=> start!252736 d!736771))

(declare-fun b!2600658 () Bool)

(declare-fun e!1641616 () Bool)

(declare-fun tp!823931 () Bool)

(assert (=> b!2600658 (= e!1641616 (and tp_is_empty!13685 tp!823931))))

(assert (=> b!2600606 (= tp!823924 e!1641616)))

(assert (= (and b!2600606 ((_ is Cons!30003) (t!213152 l!3766))) b!2600658))

(declare-fun b!2600659 () Bool)

(declare-fun e!1641617 () Bool)

(declare-fun tp!823932 () Bool)

(assert (=> b!2600659 (= e!1641617 (and tp_is_empty!13685 tp!823932))))

(assert (=> b!2600612 (= tp!823923 e!1641617)))

(assert (= (and b!2600612 ((_ is Cons!30003) (t!213152 refL!9))) b!2600659))

(declare-fun b_lambda!77847 () Bool)

(assert (= b_lambda!77845 (or b!2600613 b_lambda!77847)))

(declare-fun bs!473177 () Bool)

(declare-fun d!736773 () Bool)

(assert (= bs!473177 (and d!736773 b!2600613)))

(assert (=> bs!473177 (= (dynLambda!12687 lambda!97282 (h!35423 (t!213152 l!3766))) (contains!5547 refL!9 (h!35423 (t!213152 l!3766))))))

(declare-fun m!2935933 () Bool)

(assert (=> bs!473177 m!2935933))

(assert (=> b!2600652 d!736773))

(declare-fun b_lambda!77849 () Bool)

(assert (= b_lambda!77843 (or b!2600613 b_lambda!77849)))

(declare-fun bs!473178 () Bool)

(declare-fun d!736775 () Bool)

(assert (= bs!473178 (and d!736775 b!2600613)))

(assert (=> bs!473178 (= (dynLambda!12687 lambda!97282 (h!35423 l!3766)) (contains!5547 refL!9 (h!35423 l!3766)))))

(declare-fun m!2935935 () Bool)

(assert (=> bs!473178 m!2935935))

(assert (=> b!2600642 d!736775))

(check-sat (not bs!473178) (not d!736767) (not b!2600651) (not d!736763) (not b_lambda!77847) (not b!2600658) (not b!2600643) (not bs!473177) (not b!2600659) (not b_lambda!77849) (not b!2600649) tp_is_empty!13685 (not b!2600653))
(check-sat)
