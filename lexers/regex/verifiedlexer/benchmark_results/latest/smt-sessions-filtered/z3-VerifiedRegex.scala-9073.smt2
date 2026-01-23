; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486430 () Bool)

(assert start!486430)

(declare-fun res!2018105 () Bool)

(declare-fun e!2967496 () Bool)

(assert (=> start!486430 (=> (not res!2018105) (not e!2967496))))

(declare-datatypes ((K!14770 0))(
  ( (K!14771 (val!20087 Int)) )
))
(declare-datatypes ((V!15016 0))(
  ( (V!15017 (val!20088 Int)) )
))
(declare-datatypes ((tuple2!55068 0))(
  ( (tuple2!55069 (_1!30828 K!14770) (_2!30828 V!15016)) )
))
(declare-datatypes ((List!53318 0))(
  ( (Nil!53194) (Cons!53194 (h!59605 tuple2!55068) (t!360662 List!53318)) )
))
(declare-fun l!11094 () List!53318)

(declare-fun noDuplicateKeys!2242 (List!53318) Bool)

(assert (=> start!486430 (= res!2018105 (noDuplicateKeys!2242 l!11094))))

(assert (=> start!486430 e!2967496))

(declare-fun e!2967497 () Bool)

(assert (=> start!486430 e!2967497))

(declare-fun tp_is_empty!32285 () Bool)

(assert (=> start!486430 tp_is_empty!32285))

(declare-fun b!4756748 () Bool)

(declare-fun res!2018104 () Bool)

(assert (=> b!4756748 (=> (not res!2018104) (not e!2967496))))

(declare-fun key!2520 () K!14770)

(get-info :version)

(assert (=> b!4756748 (= res!2018104 (and (or (not ((_ is Cons!53194) l!11094)) (not (= (_1!30828 (h!59605 l!11094)) key!2520))) ((_ is Cons!53194) l!11094)))))

(declare-fun b!4756749 () Bool)

(declare-fun containsKey!3625 (List!53318 K!14770) Bool)

(declare-fun removePairForKey!1683 (List!53318 K!14770) List!53318)

(assert (=> b!4756749 (= e!2967496 (containsKey!3625 (Cons!53194 (h!59605 l!11094) (removePairForKey!1683 (t!360662 l!11094) key!2520)) key!2520))))

(declare-fun b!4756750 () Bool)

(declare-fun tp_is_empty!32287 () Bool)

(declare-fun tp!1351082 () Bool)

(assert (=> b!4756750 (= e!2967497 (and tp_is_empty!32285 tp_is_empty!32287 tp!1351082))))

(assert (= (and start!486430 res!2018105) b!4756748))

(assert (= (and b!4756748 res!2018104) b!4756749))

(assert (= (and start!486430 ((_ is Cons!53194) l!11094)) b!4756750))

(declare-fun m!5726611 () Bool)

(assert (=> start!486430 m!5726611))

(declare-fun m!5726613 () Bool)

(assert (=> b!4756749 m!5726613))

(declare-fun m!5726615 () Bool)

(assert (=> b!4756749 m!5726615))

(check-sat (not b!4756750) tp_is_empty!32287 (not b!4756749) (not start!486430) tp_is_empty!32285)
(check-sat)
(get-model)

(declare-fun d!1520972 () Bool)

(declare-fun res!2018116 () Bool)

(declare-fun e!2967508 () Bool)

(assert (=> d!1520972 (=> res!2018116 e!2967508)))

(assert (=> d!1520972 (= res!2018116 (not ((_ is Cons!53194) l!11094)))))

(assert (=> d!1520972 (= (noDuplicateKeys!2242 l!11094) e!2967508)))

(declare-fun b!4756761 () Bool)

(declare-fun e!2967509 () Bool)

(assert (=> b!4756761 (= e!2967508 e!2967509)))

(declare-fun res!2018117 () Bool)

(assert (=> b!4756761 (=> (not res!2018117) (not e!2967509))))

(assert (=> b!4756761 (= res!2018117 (not (containsKey!3625 (t!360662 l!11094) (_1!30828 (h!59605 l!11094)))))))

(declare-fun b!4756762 () Bool)

(assert (=> b!4756762 (= e!2967509 (noDuplicateKeys!2242 (t!360662 l!11094)))))

(assert (= (and d!1520972 (not res!2018116)) b!4756761))

(assert (= (and b!4756761 res!2018117) b!4756762))

(declare-fun m!5726619 () Bool)

(assert (=> b!4756761 m!5726619))

(declare-fun m!5726621 () Bool)

(assert (=> b!4756762 m!5726621))

(assert (=> start!486430 d!1520972))

(declare-fun d!1520976 () Bool)

(declare-fun res!2018122 () Bool)

(declare-fun e!2967518 () Bool)

(assert (=> d!1520976 (=> res!2018122 e!2967518)))

(assert (=> d!1520976 (= res!2018122 (and ((_ is Cons!53194) (Cons!53194 (h!59605 l!11094) (removePairForKey!1683 (t!360662 l!11094) key!2520))) (= (_1!30828 (h!59605 (Cons!53194 (h!59605 l!11094) (removePairForKey!1683 (t!360662 l!11094) key!2520)))) key!2520)))))

(assert (=> d!1520976 (= (containsKey!3625 (Cons!53194 (h!59605 l!11094) (removePairForKey!1683 (t!360662 l!11094) key!2520)) key!2520) e!2967518)))

(declare-fun b!4756775 () Bool)

(declare-fun e!2967519 () Bool)

(assert (=> b!4756775 (= e!2967518 e!2967519)))

(declare-fun res!2018123 () Bool)

(assert (=> b!4756775 (=> (not res!2018123) (not e!2967519))))

(assert (=> b!4756775 (= res!2018123 ((_ is Cons!53194) (Cons!53194 (h!59605 l!11094) (removePairForKey!1683 (t!360662 l!11094) key!2520))))))

(declare-fun b!4756776 () Bool)

(assert (=> b!4756776 (= e!2967519 (containsKey!3625 (t!360662 (Cons!53194 (h!59605 l!11094) (removePairForKey!1683 (t!360662 l!11094) key!2520))) key!2520))))

(assert (= (and d!1520976 (not res!2018122)) b!4756775))

(assert (= (and b!4756775 res!2018123) b!4756776))

(declare-fun m!5726623 () Bool)

(assert (=> b!4756776 m!5726623))

(assert (=> b!4756749 d!1520976))

(declare-fun b!4756803 () Bool)

(declare-fun e!2967535 () List!53318)

(assert (=> b!4756803 (= e!2967535 Nil!53194)))

(declare-fun b!4756800 () Bool)

(declare-fun e!2967536 () List!53318)

(assert (=> b!4756800 (= e!2967536 (t!360662 (t!360662 l!11094)))))

(declare-fun b!4756802 () Bool)

(assert (=> b!4756802 (= e!2967535 (Cons!53194 (h!59605 (t!360662 l!11094)) (removePairForKey!1683 (t!360662 (t!360662 l!11094)) key!2520)))))

(declare-fun b!4756801 () Bool)

(assert (=> b!4756801 (= e!2967536 e!2967535)))

(declare-fun c!811740 () Bool)

(assert (=> b!4756801 (= c!811740 ((_ is Cons!53194) (t!360662 l!11094)))))

(declare-fun d!1520978 () Bool)

(declare-fun lt!1923041 () List!53318)

(assert (=> d!1520978 (not (containsKey!3625 lt!1923041 key!2520))))

(assert (=> d!1520978 (= lt!1923041 e!2967536)))

(declare-fun c!811741 () Bool)

(assert (=> d!1520978 (= c!811741 (and ((_ is Cons!53194) (t!360662 l!11094)) (= (_1!30828 (h!59605 (t!360662 l!11094))) key!2520)))))

(assert (=> d!1520978 (noDuplicateKeys!2242 (t!360662 l!11094))))

(assert (=> d!1520978 (= (removePairForKey!1683 (t!360662 l!11094) key!2520) lt!1923041)))

(assert (= (and d!1520978 c!811741) b!4756800))

(assert (= (and d!1520978 (not c!811741)) b!4756801))

(assert (= (and b!4756801 c!811740) b!4756802))

(assert (= (and b!4756801 (not c!811740)) b!4756803))

(declare-fun m!5726633 () Bool)

(assert (=> b!4756802 m!5726633))

(declare-fun m!5726635 () Bool)

(assert (=> d!1520978 m!5726635))

(assert (=> d!1520978 m!5726621))

(assert (=> b!4756749 d!1520978))

(declare-fun b!4756808 () Bool)

(declare-fun tp!1351088 () Bool)

(declare-fun e!2967539 () Bool)

(assert (=> b!4756808 (= e!2967539 (and tp_is_empty!32285 tp_is_empty!32287 tp!1351088))))

(assert (=> b!4756750 (= tp!1351082 e!2967539)))

(assert (= (and b!4756750 ((_ is Cons!53194) (t!360662 l!11094))) b!4756808))

(check-sat (not b!4756762) (not b!4756776) tp_is_empty!32287 (not b!4756802) (not b!4756761) (not d!1520978) (not b!4756808) tp_is_empty!32285)
(check-sat)
