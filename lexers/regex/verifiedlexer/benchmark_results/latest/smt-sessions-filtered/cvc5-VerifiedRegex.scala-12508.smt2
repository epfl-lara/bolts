; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695434 () Bool)

(assert start!695434)

(declare-fun b!7136531 () Bool)

(assert (=> b!7136531 true))

(declare-fun bs!1887595 () Bool)

(declare-fun b!7136532 () Bool)

(declare-fun b!7136526 () Bool)

(assert (= bs!1887595 (and b!7136532 b!7136526)))

(declare-fun lambda!433671 () Int)

(declare-fun lambda!433669 () Int)

(assert (=> bs!1887595 (not (= lambda!433671 lambda!433669))))

(declare-fun e!4289000 () Bool)

(declare-fun e!4288997 () Bool)

(assert (=> b!7136526 (= e!4289000 (not e!4288997))))

(declare-fun res!2911851 () Bool)

(assert (=> b!7136526 (=> res!2911851 e!4288997)))

(declare-fun lt!2565870 () Bool)

(declare-datatypes ((C!36522 0))(
  ( (C!36523 (val!28209 Int)) )
))
(declare-datatypes ((Regex!18124 0))(
  ( (ElementMatch!18124 (c!1330873 C!36522)) (Concat!26969 (regOne!36760 Regex!18124) (regTwo!36760 Regex!18124)) (EmptyExpr!18124) (Star!18124 (reg!18453 Regex!18124)) (EmptyLang!18124) (Union!18124 (regOne!36761 Regex!18124) (regTwo!36761 Regex!18124)) )
))
(declare-datatypes ((List!69326 0))(
  ( (Nil!69202) (Cons!69202 (h!75650 Regex!18124) (t!383343 List!69326)) )
))
(declare-fun lt!2565867 () List!69326)

(declare-fun exists!3861 (List!69326 Int) Bool)

(assert (=> b!7136526 (= res!2911851 (not (= lt!2565870 (exists!3861 lt!2565867 lambda!433669))))))

(assert (=> b!7136526 (= lt!2565870 (exists!3861 lt!2565867 lambda!433669))))

(declare-fun lt!2565866 () Regex!18124)

(declare-fun nullable!7644 (Regex!18124) Bool)

(assert (=> b!7136526 (= lt!2565870 (nullable!7644 lt!2565866))))

(declare-datatypes ((Unit!163106 0))(
  ( (Unit!163107) )
))
(declare-fun lt!2565868 () Unit!163106)

(declare-fun nullableGenUnionSpec!13 (Regex!18124 List!69326) Unit!163106)

(assert (=> b!7136526 (= lt!2565868 (nullableGenUnionSpec!13 lt!2565866 lt!2565867))))

(declare-fun b!7136527 () Bool)

(declare-fun e!4288996 () Bool)

(declare-fun tp_is_empty!45885 () Bool)

(assert (=> b!7136527 (= e!4288996 tp_is_empty!45885)))

(declare-fun b!7136528 () Bool)

(declare-fun e!4288998 () Bool)

(declare-fun e!4288999 () Bool)

(assert (=> b!7136528 (= e!4288998 e!4288999)))

(declare-fun res!2911858 () Bool)

(assert (=> b!7136528 (=> (not res!2911858) (not e!4288999))))

(declare-fun r!11483 () Regex!18124)

(declare-datatypes ((Context!14236 0))(
  ( (Context!14237 (exprs!7618 List!69326)) )
))
(declare-datatypes ((List!69327 0))(
  ( (Nil!69203) (Cons!69203 (h!75651 Context!14236) (t!383344 List!69327)) )
))
(declare-fun lt!2565865 () List!69327)

(declare-fun unfocusZipper!2472 (List!69327) Regex!18124)

(assert (=> b!7136528 (= res!2911858 (= r!11483 (unfocusZipper!2472 lt!2565865)))))

(declare-fun z!3189 () (Set Context!14236))

(declare-fun toList!11155 ((Set Context!14236)) List!69327)

(assert (=> b!7136528 (= lt!2565865 (toList!11155 z!3189))))

(declare-fun res!2911853 () Bool)

(assert (=> start!695434 (=> (not res!2911853) (not e!4288998))))

(declare-fun validRegex!9291 (Regex!18124) Bool)

(assert (=> start!695434 (= res!2911853 (validRegex!9291 r!11483))))

(assert (=> start!695434 e!4288998))

(assert (=> start!695434 e!4288996))

(declare-fun condSetEmpty!52366 () Bool)

(assert (=> start!695434 (= condSetEmpty!52366 (= z!3189 (as set.empty (Set Context!14236))))))

(declare-fun setRes!52366 () Bool)

(assert (=> start!695434 setRes!52366))

(declare-fun b!7136529 () Bool)

(declare-fun tp!1967658 () Bool)

(declare-fun tp!1967660 () Bool)

(assert (=> b!7136529 (= e!4288996 (and tp!1967658 tp!1967660))))

(declare-fun b!7136530 () Bool)

(declare-fun res!2911848 () Bool)

(assert (=> b!7136530 (=> res!2911848 e!4288997)))

(assert (=> b!7136530 (= res!2911848 (not lt!2565870))))

(declare-fun e!4288995 () Bool)

(declare-fun e!4289002 () Bool)

(assert (=> b!7136531 (= e!4288995 e!4289002)))

(declare-fun res!2911857 () Bool)

(assert (=> b!7136531 (=> res!2911857 e!4289002)))

(declare-fun lambda!433670 () Int)

(declare-fun exists!3862 ((Set Context!14236) Int) Bool)

(assert (=> b!7136531 (= res!2911857 (not (exists!3862 z!3189 lambda!433670)))))

(declare-fun exists!3863 (List!69327 Int) Bool)

(assert (=> b!7136531 (exists!3863 lt!2565865 lambda!433670)))

(declare-fun lt!2565869 () Unit!163106)

(declare-fun lt!2565871 () Regex!18124)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!9 (List!69327 Regex!18124) Unit!163106)

(assert (=> b!7136531 (= lt!2565869 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!9 lt!2565865 lt!2565871))))

(declare-fun e!4289001 () Bool)

(declare-fun lt!2565872 () Context!14236)

(declare-fun forall!16969 (List!69326 Int) Bool)

(assert (=> b!7136532 (= e!4289001 (forall!16969 (exprs!7618 lt!2565872) lambda!433671))))

(declare-fun b!7136533 () Bool)

(declare-fun res!2911856 () Bool)

(assert (=> b!7136533 (=> res!2911856 e!4289001)))

(declare-fun generalisedConcat!2319 (List!69326) Regex!18124)

(assert (=> b!7136533 (= res!2911856 (not (= (generalisedConcat!2319 (exprs!7618 lt!2565872)) lt!2565871)))))

(declare-fun setIsEmpty!52366 () Bool)

(assert (=> setIsEmpty!52366 setRes!52366))

(declare-fun b!7136534 () Bool)

(declare-fun tp!1967661 () Bool)

(assert (=> b!7136534 (= e!4288996 tp!1967661)))

(declare-fun b!7136535 () Bool)

(declare-fun res!2911854 () Bool)

(assert (=> b!7136535 (=> res!2911854 e!4288995)))

(declare-fun contains!20566 (List!69326 Regex!18124) Bool)

(assert (=> b!7136535 (= res!2911854 (not (contains!20566 lt!2565867 lt!2565871)))))

(declare-fun b!7136536 () Bool)

(declare-fun e!4289003 () Bool)

(declare-fun tp!1967656 () Bool)

(assert (=> b!7136536 (= e!4289003 tp!1967656)))

(declare-fun b!7136537 () Bool)

(declare-fun tp!1967657 () Bool)

(declare-fun tp!1967659 () Bool)

(assert (=> b!7136537 (= e!4288996 (and tp!1967657 tp!1967659))))

(declare-fun b!7136538 () Bool)

(assert (=> b!7136538 (= e!4288997 e!4288995)))

(declare-fun res!2911855 () Bool)

(assert (=> b!7136538 (=> res!2911855 e!4288995)))

(assert (=> b!7136538 (= res!2911855 (not (nullable!7644 lt!2565871)))))

(declare-fun getWitness!1877 (List!69326 Int) Regex!18124)

(assert (=> b!7136538 (= lt!2565871 (getWitness!1877 lt!2565867 lambda!433669))))

(declare-fun b!7136539 () Bool)

(declare-fun res!2911852 () Bool)

(assert (=> b!7136539 (=> res!2911852 e!4288997)))

(assert (=> b!7136539 (= res!2911852 (not (exists!3861 lt!2565867 lambda!433669)))))

(declare-fun tp!1967662 () Bool)

(declare-fun setElem!52366 () Context!14236)

(declare-fun setNonEmpty!52366 () Bool)

(declare-fun inv!88375 (Context!14236) Bool)

(assert (=> setNonEmpty!52366 (= setRes!52366 (and tp!1967662 (inv!88375 setElem!52366) e!4289003))))

(declare-fun setRest!52366 () (Set Context!14236))

(assert (=> setNonEmpty!52366 (= z!3189 (set.union (set.insert setElem!52366 (as set.empty (Set Context!14236))) setRest!52366))))

(declare-fun b!7136540 () Bool)

(assert (=> b!7136540 (= e!4288999 e!4289000)))

(declare-fun res!2911849 () Bool)

(assert (=> b!7136540 (=> (not res!2911849) (not e!4289000))))

(assert (=> b!7136540 (= res!2911849 (= r!11483 lt!2565866))))

(declare-fun generalisedUnion!2629 (List!69326) Regex!18124)

(assert (=> b!7136540 (= lt!2565866 (generalisedUnion!2629 lt!2565867))))

(declare-fun unfocusZipperList!2165 (List!69327) List!69326)

(assert (=> b!7136540 (= lt!2565867 (unfocusZipperList!2165 lt!2565865))))

(declare-fun b!7136541 () Bool)

(assert (=> b!7136541 (= e!4289002 e!4289001)))

(declare-fun res!2911850 () Bool)

(assert (=> b!7136541 (=> res!2911850 e!4289001)))

(assert (=> b!7136541 (= res!2911850 (not (set.member lt!2565872 z!3189)))))

(declare-fun getWitness!1878 ((Set Context!14236) Int) Context!14236)

(assert (=> b!7136541 (= lt!2565872 (getWitness!1878 z!3189 lambda!433670))))

(assert (= (and start!695434 res!2911853) b!7136528))

(assert (= (and b!7136528 res!2911858) b!7136540))

(assert (= (and b!7136540 res!2911849) b!7136526))

(assert (= (and b!7136526 (not res!2911851)) b!7136530))

(assert (= (and b!7136530 (not res!2911848)) b!7136539))

(assert (= (and b!7136539 (not res!2911852)) b!7136538))

(assert (= (and b!7136538 (not res!2911855)) b!7136535))

(assert (= (and b!7136535 (not res!2911854)) b!7136531))

(assert (= (and b!7136531 (not res!2911857)) b!7136541))

(assert (= (and b!7136541 (not res!2911850)) b!7136533))

(assert (= (and b!7136533 (not res!2911856)) b!7136532))

(assert (= (and start!695434 (is-ElementMatch!18124 r!11483)) b!7136527))

(assert (= (and start!695434 (is-Concat!26969 r!11483)) b!7136529))

(assert (= (and start!695434 (is-Star!18124 r!11483)) b!7136534))

(assert (= (and start!695434 (is-Union!18124 r!11483)) b!7136537))

(assert (= (and start!695434 condSetEmpty!52366) setIsEmpty!52366))

(assert (= (and start!695434 (not condSetEmpty!52366)) setNonEmpty!52366))

(assert (= setNonEmpty!52366 b!7136536))

(declare-fun m!7852566 () Bool)

(assert (=> b!7136533 m!7852566))

(declare-fun m!7852568 () Bool)

(assert (=> start!695434 m!7852568))

(declare-fun m!7852570 () Bool)

(assert (=> b!7136535 m!7852570))

(declare-fun m!7852572 () Bool)

(assert (=> b!7136539 m!7852572))

(declare-fun m!7852574 () Bool)

(assert (=> b!7136528 m!7852574))

(declare-fun m!7852576 () Bool)

(assert (=> b!7136528 m!7852576))

(declare-fun m!7852578 () Bool)

(assert (=> b!7136531 m!7852578))

(declare-fun m!7852580 () Bool)

(assert (=> b!7136531 m!7852580))

(declare-fun m!7852582 () Bool)

(assert (=> b!7136531 m!7852582))

(declare-fun m!7852584 () Bool)

(assert (=> b!7136538 m!7852584))

(declare-fun m!7852586 () Bool)

(assert (=> b!7136538 m!7852586))

(declare-fun m!7852588 () Bool)

(assert (=> b!7136532 m!7852588))

(declare-fun m!7852590 () Bool)

(assert (=> setNonEmpty!52366 m!7852590))

(declare-fun m!7852592 () Bool)

(assert (=> b!7136540 m!7852592))

(declare-fun m!7852594 () Bool)

(assert (=> b!7136540 m!7852594))

(assert (=> b!7136526 m!7852572))

(assert (=> b!7136526 m!7852572))

(declare-fun m!7852596 () Bool)

(assert (=> b!7136526 m!7852596))

(declare-fun m!7852598 () Bool)

(assert (=> b!7136526 m!7852598))

(declare-fun m!7852600 () Bool)

(assert (=> b!7136541 m!7852600))

(declare-fun m!7852602 () Bool)

(assert (=> b!7136541 m!7852602))

(push 1)

(assert (not b!7136535))

(assert (not b!7136537))

(assert (not b!7136538))

(assert (not b!7136526))

(assert (not b!7136532))

(assert (not b!7136529))

(assert tp_is_empty!45885)

(assert (not b!7136536))

(assert (not start!695434))

(assert (not b!7136539))

(assert (not b!7136528))

(assert (not b!7136540))

(assert (not setNonEmpty!52366))

(assert (not b!7136533))

(assert (not b!7136534))

(assert (not b!7136541))

(assert (not b!7136531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2226629 () Bool)

(declare-fun lt!2565899 () Bool)

(declare-fun content!14167 (List!69326) (Set Regex!18124))

(assert (=> d!2226629 (= lt!2565899 (set.member lt!2565871 (content!14167 lt!2565867)))))

(declare-fun e!4289036 () Bool)

(assert (=> d!2226629 (= lt!2565899 e!4289036)))

(declare-fun res!2911897 () Bool)

(assert (=> d!2226629 (=> (not res!2911897) (not e!4289036))))

(assert (=> d!2226629 (= res!2911897 (is-Cons!69202 lt!2565867))))

(assert (=> d!2226629 (= (contains!20566 lt!2565867 lt!2565871) lt!2565899)))

(declare-fun b!7136598 () Bool)

(declare-fun e!4289035 () Bool)

(assert (=> b!7136598 (= e!4289036 e!4289035)))

(declare-fun res!2911896 () Bool)

(assert (=> b!7136598 (=> res!2911896 e!4289035)))

(assert (=> b!7136598 (= res!2911896 (= (h!75650 lt!2565867) lt!2565871))))

(declare-fun b!7136599 () Bool)

(assert (=> b!7136599 (= e!4289035 (contains!20566 (t!383343 lt!2565867) lt!2565871))))

(assert (= (and d!2226629 res!2911897) b!7136598))

(assert (= (and b!7136598 (not res!2911896)) b!7136599))

(declare-fun m!7852642 () Bool)

(assert (=> d!2226629 m!7852642))

(declare-fun m!7852644 () Bool)

(assert (=> d!2226629 m!7852644))

(declare-fun m!7852646 () Bool)

(assert (=> b!7136599 m!7852646))

(assert (=> b!7136535 d!2226629))

(declare-fun d!2226631 () Bool)

(declare-fun nullableFct!2972 (Regex!18124) Bool)

(assert (=> d!2226631 (= (nullable!7644 lt!2565871) (nullableFct!2972 lt!2565871))))

(declare-fun bs!1887597 () Bool)

(assert (= bs!1887597 d!2226631))

(declare-fun m!7852648 () Bool)

(assert (=> bs!1887597 m!7852648))

(assert (=> b!7136538 d!2226631))

(declare-fun b!7136612 () Bool)

(declare-fun e!4289047 () Regex!18124)

(assert (=> b!7136612 (= e!4289047 (getWitness!1877 (t!383343 lt!2565867) lambda!433669))))

(declare-fun d!2226633 () Bool)

(declare-fun e!4289048 () Bool)

(assert (=> d!2226633 e!4289048))

(declare-fun res!2911903 () Bool)

(assert (=> d!2226633 (=> (not res!2911903) (not e!4289048))))

(declare-fun lt!2565904 () Regex!18124)

(declare-fun dynLambda!28150 (Int Regex!18124) Bool)

(assert (=> d!2226633 (= res!2911903 (dynLambda!28150 lambda!433669 lt!2565904))))

(declare-fun e!4289046 () Regex!18124)

(assert (=> d!2226633 (= lt!2565904 e!4289046)))

(declare-fun c!1330885 () Bool)

(declare-fun e!4289045 () Bool)

(assert (=> d!2226633 (= c!1330885 e!4289045)))

(declare-fun res!2911902 () Bool)

(assert (=> d!2226633 (=> (not res!2911902) (not e!4289045))))

(assert (=> d!2226633 (= res!2911902 (is-Cons!69202 lt!2565867))))

(assert (=> d!2226633 (exists!3861 lt!2565867 lambda!433669)))

(assert (=> d!2226633 (= (getWitness!1877 lt!2565867 lambda!433669) lt!2565904)))

(declare-fun b!7136613 () Bool)

(assert (=> b!7136613 (= e!4289048 (contains!20566 lt!2565867 lt!2565904))))

(declare-fun b!7136614 () Bool)

(declare-fun lt!2565905 () Unit!163106)

(declare-fun Unit!163110 () Unit!163106)

(assert (=> b!7136614 (= lt!2565905 Unit!163110)))

(assert (=> b!7136614 false))

(declare-fun head!14489 (List!69326) Regex!18124)

(assert (=> b!7136614 (= e!4289047 (head!14489 lt!2565867))))

(declare-fun b!7136615 () Bool)

(assert (=> b!7136615 (= e!4289045 (dynLambda!28150 lambda!433669 (h!75650 lt!2565867)))))

(declare-fun b!7136616 () Bool)

(assert (=> b!7136616 (= e!4289046 e!4289047)))

(declare-fun c!1330886 () Bool)

(assert (=> b!7136616 (= c!1330886 (is-Cons!69202 lt!2565867))))

(declare-fun b!7136617 () Bool)

(assert (=> b!7136617 (= e!4289046 (h!75650 lt!2565867))))

(assert (= (and d!2226633 res!2911902) b!7136615))

(assert (= (and d!2226633 c!1330885) b!7136617))

(assert (= (and d!2226633 (not c!1330885)) b!7136616))

(assert (= (and b!7136616 c!1330886) b!7136612))

(assert (= (and b!7136616 (not c!1330886)) b!7136614))

(assert (= (and d!2226633 res!2911903) b!7136613))

(declare-fun b_lambda!272381 () Bool)

(assert (=> (not b_lambda!272381) (not d!2226633)))

(declare-fun b_lambda!272383 () Bool)

(assert (=> (not b_lambda!272383) (not b!7136615)))

(declare-fun m!7852650 () Bool)

(assert (=> d!2226633 m!7852650))

(assert (=> d!2226633 m!7852572))

(declare-fun m!7852652 () Bool)

(assert (=> b!7136612 m!7852652))

(declare-fun m!7852654 () Bool)

(assert (=> b!7136613 m!7852654))

(declare-fun m!7852656 () Bool)

(assert (=> b!7136615 m!7852656))

(declare-fun m!7852658 () Bool)

(assert (=> b!7136614 m!7852658))

(assert (=> b!7136538 d!2226633))

(declare-fun d!2226637 () Bool)

(declare-fun lt!2565908 () Regex!18124)

(assert (=> d!2226637 (validRegex!9291 lt!2565908)))

(assert (=> d!2226637 (= lt!2565908 (generalisedUnion!2629 (unfocusZipperList!2165 lt!2565865)))))

(assert (=> d!2226637 (= (unfocusZipper!2472 lt!2565865) lt!2565908)))

(declare-fun bs!1887598 () Bool)

(assert (= bs!1887598 d!2226637))

(declare-fun m!7852660 () Bool)

(assert (=> bs!1887598 m!7852660))

(assert (=> bs!1887598 m!7852594))

(assert (=> bs!1887598 m!7852594))

(declare-fun m!7852662 () Bool)

(assert (=> bs!1887598 m!7852662))

(assert (=> b!7136528 d!2226637))

(declare-fun d!2226639 () Bool)

(declare-fun e!4289055 () Bool)

(assert (=> d!2226639 e!4289055))

(declare-fun res!2911910 () Bool)

(assert (=> d!2226639 (=> (not res!2911910) (not e!4289055))))

(declare-fun lt!2565911 () List!69327)

(declare-fun noDuplicate!2811 (List!69327) Bool)

(assert (=> d!2226639 (= res!2911910 (noDuplicate!2811 lt!2565911))))

(declare-fun choose!55165 ((Set Context!14236)) List!69327)

(assert (=> d!2226639 (= lt!2565911 (choose!55165 z!3189))))

(assert (=> d!2226639 (= (toList!11155 z!3189) lt!2565911)))

(declare-fun b!7136624 () Bool)

(declare-fun content!14168 (List!69327) (Set Context!14236))

(assert (=> b!7136624 (= e!4289055 (= (content!14168 lt!2565911) z!3189))))

(assert (= (and d!2226639 res!2911910) b!7136624))

(declare-fun m!7852664 () Bool)

(assert (=> d!2226639 m!7852664))

(declare-fun m!7852666 () Bool)

(assert (=> d!2226639 m!7852666))

(declare-fun m!7852668 () Bool)

(assert (=> b!7136624 m!7852668))

(assert (=> b!7136528 d!2226639))

(declare-fun bs!1887599 () Bool)

(declare-fun d!2226641 () Bool)

(assert (= bs!1887599 (and d!2226641 b!7136526)))

(declare-fun lambda!433693 () Int)

(assert (=> bs!1887599 (not (= lambda!433693 lambda!433669))))

(declare-fun bs!1887600 () Bool)

(assert (= bs!1887600 (and d!2226641 b!7136532)))

(assert (=> bs!1887600 (not (= lambda!433693 lambda!433671))))

(assert (=> d!2226641 true))

(declare-fun order!28511 () Int)

(declare-fun dynLambda!28151 (Int Int) Int)

(assert (=> d!2226641 (< (dynLambda!28151 order!28511 lambda!433669) (dynLambda!28151 order!28511 lambda!433693))))

(assert (=> d!2226641 (= (exists!3861 lt!2565867 lambda!433669) (not (forall!16969 lt!2565867 lambda!433693)))))

(declare-fun bs!1887601 () Bool)

(assert (= bs!1887601 d!2226641))

(declare-fun m!7852672 () Bool)

(assert (=> bs!1887601 m!7852672))

(assert (=> b!7136526 d!2226641))

(declare-fun d!2226643 () Bool)

(assert (=> d!2226643 (= (nullable!7644 lt!2565866) (nullableFct!2972 lt!2565866))))

(declare-fun bs!1887602 () Bool)

(assert (= bs!1887602 d!2226643))

(declare-fun m!7852676 () Bool)

(assert (=> bs!1887602 m!7852676))

(assert (=> b!7136526 d!2226643))

(declare-fun bs!1887603 () Bool)

(declare-fun d!2226645 () Bool)

(assert (= bs!1887603 (and d!2226645 b!7136526)))

(declare-fun lambda!433698 () Int)

(assert (=> bs!1887603 (not (= lambda!433698 lambda!433669))))

(declare-fun bs!1887604 () Bool)

(assert (= bs!1887604 (and d!2226645 b!7136532)))

(assert (=> bs!1887604 (= lambda!433698 lambda!433671)))

(declare-fun bs!1887605 () Bool)

(assert (= bs!1887605 (and d!2226645 d!2226641)))

(assert (=> bs!1887605 (not (= lambda!433698 lambda!433693))))

(declare-fun lambda!433699 () Int)

(assert (=> bs!1887603 (= lambda!433699 lambda!433669)))

(assert (=> bs!1887604 (not (= lambda!433699 lambda!433671))))

(assert (=> bs!1887605 (not (= lambda!433699 lambda!433693))))

(declare-fun bs!1887606 () Bool)

(assert (= bs!1887606 d!2226645))

(assert (=> bs!1887606 (not (= lambda!433699 lambda!433698))))

(assert (=> d!2226645 (= (nullable!7644 lt!2565866) (exists!3861 lt!2565867 lambda!433699))))

(declare-fun lt!2565914 () Unit!163106)

(declare-fun choose!55166 (Regex!18124 List!69326) Unit!163106)

(assert (=> d!2226645 (= lt!2565914 (choose!55166 lt!2565866 lt!2565867))))

(assert (=> d!2226645 (forall!16969 lt!2565867 lambda!433698)))

(assert (=> d!2226645 (= (nullableGenUnionSpec!13 lt!2565866 lt!2565867) lt!2565914)))

(assert (=> bs!1887606 m!7852596))

(declare-fun m!7852678 () Bool)

(assert (=> bs!1887606 m!7852678))

(declare-fun m!7852680 () Bool)

(assert (=> bs!1887606 m!7852680))

(declare-fun m!7852682 () Bool)

(assert (=> bs!1887606 m!7852682))

(assert (=> b!7136526 d!2226645))

(declare-fun d!2226649 () Bool)

(declare-fun lt!2565917 () Bool)

(assert (=> d!2226649 (= lt!2565917 (exists!3863 (toList!11155 z!3189) lambda!433670))))

(declare-fun choose!55167 ((Set Context!14236) Int) Bool)

(assert (=> d!2226649 (= lt!2565917 (choose!55167 z!3189 lambda!433670))))

(assert (=> d!2226649 (= (exists!3862 z!3189 lambda!433670) lt!2565917)))

(declare-fun bs!1887607 () Bool)

(assert (= bs!1887607 d!2226649))

(assert (=> bs!1887607 m!7852576))

(assert (=> bs!1887607 m!7852576))

(declare-fun m!7852684 () Bool)

(assert (=> bs!1887607 m!7852684))

(declare-fun m!7852686 () Bool)

(assert (=> bs!1887607 m!7852686))

(assert (=> b!7136531 d!2226649))

(declare-fun bs!1887608 () Bool)

(declare-fun d!2226651 () Bool)

(assert (= bs!1887608 (and d!2226651 b!7136531)))

(declare-fun lambda!433702 () Int)

(assert (=> bs!1887608 (not (= lambda!433702 lambda!433670))))

(assert (=> d!2226651 true))

(declare-fun order!28513 () Int)

(declare-fun dynLambda!28152 (Int Int) Int)

(assert (=> d!2226651 (< (dynLambda!28152 order!28513 lambda!433670) (dynLambda!28152 order!28513 lambda!433702))))

(declare-fun forall!16971 (List!69327 Int) Bool)

(assert (=> d!2226651 (= (exists!3863 lt!2565865 lambda!433670) (not (forall!16971 lt!2565865 lambda!433702)))))

(declare-fun bs!1887609 () Bool)

(assert (= bs!1887609 d!2226651))

(declare-fun m!7852688 () Bool)

(assert (=> bs!1887609 m!7852688))

(assert (=> b!7136531 d!2226651))

(declare-fun bs!1887610 () Bool)

(declare-fun d!2226653 () Bool)

(assert (= bs!1887610 (and d!2226653 b!7136531)))

(declare-fun lambda!433707 () Int)

(assert (=> bs!1887610 (= lambda!433707 lambda!433670)))

(declare-fun bs!1887611 () Bool)

(assert (= bs!1887611 (and d!2226653 d!2226651)))

(assert (=> bs!1887611 (not (= lambda!433707 lambda!433702))))

(assert (=> d!2226653 true))

(assert (=> d!2226653 (exists!3863 lt!2565865 lambda!433707)))

(declare-fun lt!2565920 () Unit!163106)

(declare-fun choose!55168 (List!69327 Regex!18124) Unit!163106)

(assert (=> d!2226653 (= lt!2565920 (choose!55168 lt!2565865 lt!2565871))))

(assert (=> d!2226653 (contains!20566 (unfocusZipperList!2165 lt!2565865) lt!2565871)))

(assert (=> d!2226653 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!9 lt!2565865 lt!2565871) lt!2565920)))

(declare-fun bs!1887612 () Bool)

(assert (= bs!1887612 d!2226653))

(declare-fun m!7852690 () Bool)

(assert (=> bs!1887612 m!7852690))

(declare-fun m!7852692 () Bool)

(assert (=> bs!1887612 m!7852692))

(assert (=> bs!1887612 m!7852594))

(assert (=> bs!1887612 m!7852594))

(declare-fun m!7852694 () Bool)

(assert (=> bs!1887612 m!7852694))

(assert (=> b!7136531 d!2226653))

(declare-fun bs!1887613 () Bool)

(declare-fun d!2226655 () Bool)

(assert (= bs!1887613 (and d!2226655 d!2226641)))

(declare-fun lambda!433710 () Int)

(assert (=> bs!1887613 (not (= lambda!433710 lambda!433693))))

(declare-fun bs!1887614 () Bool)

(assert (= bs!1887614 (and d!2226655 d!2226645)))

(assert (=> bs!1887614 (= lambda!433710 lambda!433698)))

(declare-fun bs!1887615 () Bool)

(assert (= bs!1887615 (and d!2226655 b!7136526)))

(assert (=> bs!1887615 (not (= lambda!433710 lambda!433669))))

(assert (=> bs!1887614 (not (= lambda!433710 lambda!433699))))

(declare-fun bs!1887616 () Bool)

(assert (= bs!1887616 (and d!2226655 b!7136532)))

(assert (=> bs!1887616 (= lambda!433710 lambda!433671)))

(assert (=> d!2226655 (= (inv!88375 setElem!52366) (forall!16969 (exprs!7618 setElem!52366) lambda!433710))))

(declare-fun bs!1887617 () Bool)

(assert (= bs!1887617 d!2226655))

(declare-fun m!7852696 () Bool)

(assert (=> bs!1887617 m!7852696))

(assert (=> setNonEmpty!52366 d!2226655))

(declare-fun b!7136669 () Bool)

(declare-fun e!4289088 () Bool)

(declare-fun e!4289084 () Bool)

(assert (=> b!7136669 (= e!4289088 e!4289084)))

(declare-fun res!2911927 () Bool)

(assert (=> b!7136669 (= res!2911927 (not (nullable!7644 (reg!18453 r!11483))))))

(assert (=> b!7136669 (=> (not res!2911927) (not e!4289084))))

(declare-fun b!7136670 () Bool)

(declare-fun e!4289090 () Bool)

(declare-fun e!4289085 () Bool)

(assert (=> b!7136670 (= e!4289090 e!4289085)))

(declare-fun res!2911931 () Bool)

(assert (=> b!7136670 (=> (not res!2911931) (not e!4289085))))

(declare-fun call!651017 () Bool)

(assert (=> b!7136670 (= res!2911931 call!651017)))

(declare-fun bm!651012 () Bool)

(declare-fun c!1330902 () Bool)

(declare-fun c!1330901 () Bool)

(declare-fun call!651019 () Bool)

(assert (=> bm!651012 (= call!651019 (validRegex!9291 (ite c!1330901 (reg!18453 r!11483) (ite c!1330902 (regOne!36761 r!11483) (regOne!36760 r!11483)))))))

(declare-fun b!7136671 () Bool)

(assert (=> b!7136671 (= e!4289084 call!651019)))

(declare-fun bm!651013 () Bool)

(declare-fun call!651018 () Bool)

(assert (=> bm!651013 (= call!651018 (validRegex!9291 (ite c!1330902 (regTwo!36761 r!11483) (regTwo!36760 r!11483))))))

(declare-fun bm!651014 () Bool)

(assert (=> bm!651014 (= call!651017 call!651019)))

(declare-fun b!7136672 () Bool)

(declare-fun res!2911930 () Bool)

(declare-fun e!4289089 () Bool)

(assert (=> b!7136672 (=> (not res!2911930) (not e!4289089))))

(assert (=> b!7136672 (= res!2911930 call!651017)))

(declare-fun e!4289086 () Bool)

(assert (=> b!7136672 (= e!4289086 e!4289089)))

(declare-fun b!7136673 () Bool)

(assert (=> b!7136673 (= e!4289089 call!651018)))

(declare-fun b!7136674 () Bool)

(declare-fun res!2911928 () Bool)

(assert (=> b!7136674 (=> res!2911928 e!4289090)))

(assert (=> b!7136674 (= res!2911928 (not (is-Concat!26969 r!11483)))))

(assert (=> b!7136674 (= e!4289086 e!4289090)))

(declare-fun d!2226657 () Bool)

(declare-fun res!2911929 () Bool)

(declare-fun e!4289087 () Bool)

(assert (=> d!2226657 (=> res!2911929 e!4289087)))

(assert (=> d!2226657 (= res!2911929 (is-ElementMatch!18124 r!11483))))

(assert (=> d!2226657 (= (validRegex!9291 r!11483) e!4289087)))

(declare-fun b!7136675 () Bool)

(assert (=> b!7136675 (= e!4289085 call!651018)))

(declare-fun b!7136676 () Bool)

(assert (=> b!7136676 (= e!4289088 e!4289086)))

(assert (=> b!7136676 (= c!1330902 (is-Union!18124 r!11483))))

(declare-fun b!7136677 () Bool)

(assert (=> b!7136677 (= e!4289087 e!4289088)))

(assert (=> b!7136677 (= c!1330901 (is-Star!18124 r!11483))))

(assert (= (and d!2226657 (not res!2911929)) b!7136677))

(assert (= (and b!7136677 c!1330901) b!7136669))

(assert (= (and b!7136677 (not c!1330901)) b!7136676))

(assert (= (and b!7136669 res!2911927) b!7136671))

(assert (= (and b!7136676 c!1330902) b!7136672))

(assert (= (and b!7136676 (not c!1330902)) b!7136674))

(assert (= (and b!7136672 res!2911930) b!7136673))

(assert (= (and b!7136674 (not res!2911928)) b!7136670))

(assert (= (and b!7136670 res!2911931) b!7136675))

(assert (= (or b!7136673 b!7136675) bm!651013))

(assert (= (or b!7136672 b!7136670) bm!651014))

(assert (= (or b!7136671 bm!651014) bm!651012))

(declare-fun m!7852698 () Bool)

(assert (=> b!7136669 m!7852698))

(declare-fun m!7852700 () Bool)

(assert (=> bm!651012 m!7852700))

(declare-fun m!7852702 () Bool)

(assert (=> bm!651013 m!7852702))

(assert (=> start!695434 d!2226657))

(assert (=> b!7136539 d!2226641))

(declare-fun bs!1887620 () Bool)

(declare-fun d!2226659 () Bool)

(assert (= bs!1887620 (and d!2226659 d!2226641)))

(declare-fun lambda!433714 () Int)

(assert (=> bs!1887620 (not (= lambda!433714 lambda!433693))))

(declare-fun bs!1887621 () Bool)

(assert (= bs!1887621 (and d!2226659 d!2226655)))

(assert (=> bs!1887621 (= lambda!433714 lambda!433710)))

(declare-fun bs!1887622 () Bool)

(assert (= bs!1887622 (and d!2226659 d!2226645)))

(assert (=> bs!1887622 (= lambda!433714 lambda!433698)))

(declare-fun bs!1887623 () Bool)

(assert (= bs!1887623 (and d!2226659 b!7136526)))

(assert (=> bs!1887623 (not (= lambda!433714 lambda!433669))))

(assert (=> bs!1887622 (not (= lambda!433714 lambda!433699))))

(declare-fun bs!1887624 () Bool)

(assert (= bs!1887624 (and d!2226659 b!7136532)))

(assert (=> bs!1887624 (= lambda!433714 lambda!433671)))

(declare-fun b!7136708 () Bool)

(declare-fun e!4289110 () Bool)

(declare-fun e!4289113 () Bool)

(assert (=> b!7136708 (= e!4289110 e!4289113)))

(declare-fun c!1330918 () Bool)

(declare-fun isEmpty!40048 (List!69326) Bool)

(assert (=> b!7136708 (= c!1330918 (isEmpty!40048 (exprs!7618 lt!2565872)))))

(declare-fun b!7136709 () Bool)

(declare-fun e!4289114 () Regex!18124)

(assert (=> b!7136709 (= e!4289114 (h!75650 (exprs!7618 lt!2565872)))))

(declare-fun b!7136710 () Bool)

(declare-fun e!4289109 () Bool)

(declare-fun lt!2565926 () Regex!18124)

(assert (=> b!7136710 (= e!4289109 (= lt!2565926 (head!14489 (exprs!7618 lt!2565872))))))

(declare-fun b!7136711 () Bool)

(declare-fun e!4289112 () Regex!18124)

(assert (=> b!7136711 (= e!4289112 (Concat!26969 (h!75650 (exprs!7618 lt!2565872)) (generalisedConcat!2319 (t!383343 (exprs!7618 lt!2565872)))))))

(declare-fun b!7136712 () Bool)

(declare-fun isConcat!1550 (Regex!18124) Bool)

(assert (=> b!7136712 (= e!4289109 (isConcat!1550 lt!2565926))))

(assert (=> d!2226659 e!4289110))

(declare-fun res!2911938 () Bool)

(assert (=> d!2226659 (=> (not res!2911938) (not e!4289110))))

(assert (=> d!2226659 (= res!2911938 (validRegex!9291 lt!2565926))))

(assert (=> d!2226659 (= lt!2565926 e!4289114)))

(declare-fun c!1330917 () Bool)

(declare-fun e!4289111 () Bool)

(assert (=> d!2226659 (= c!1330917 e!4289111)))

(declare-fun res!2911939 () Bool)

(assert (=> d!2226659 (=> (not res!2911939) (not e!4289111))))

(assert (=> d!2226659 (= res!2911939 (is-Cons!69202 (exprs!7618 lt!2565872)))))

(assert (=> d!2226659 (forall!16969 (exprs!7618 lt!2565872) lambda!433714)))

(assert (=> d!2226659 (= (generalisedConcat!2319 (exprs!7618 lt!2565872)) lt!2565926)))

(declare-fun b!7136713 () Bool)

(declare-fun isEmptyExpr!2027 (Regex!18124) Bool)

(assert (=> b!7136713 (= e!4289113 (isEmptyExpr!2027 lt!2565926))))

(declare-fun b!7136714 () Bool)

(assert (=> b!7136714 (= e!4289114 e!4289112)))

(declare-fun c!1330916 () Bool)

(assert (=> b!7136714 (= c!1330916 (is-Cons!69202 (exprs!7618 lt!2565872)))))

(declare-fun b!7136715 () Bool)

(assert (=> b!7136715 (= e!4289111 (isEmpty!40048 (t!383343 (exprs!7618 lt!2565872))))))

(declare-fun b!7136716 () Bool)

(assert (=> b!7136716 (= e!4289112 EmptyExpr!18124)))

(declare-fun b!7136717 () Bool)

(assert (=> b!7136717 (= e!4289113 e!4289109)))

(declare-fun c!1330915 () Bool)

(declare-fun tail!13959 (List!69326) List!69326)

(assert (=> b!7136717 (= c!1330915 (isEmpty!40048 (tail!13959 (exprs!7618 lt!2565872))))))

(assert (= (and d!2226659 res!2911939) b!7136715))

(assert (= (and d!2226659 c!1330917) b!7136709))

(assert (= (and d!2226659 (not c!1330917)) b!7136714))

(assert (= (and b!7136714 c!1330916) b!7136711))

(assert (= (and b!7136714 (not c!1330916)) b!7136716))

(assert (= (and d!2226659 res!2911938) b!7136708))

(assert (= (and b!7136708 c!1330918) b!7136713))

(assert (= (and b!7136708 (not c!1330918)) b!7136717))

(assert (= (and b!7136717 c!1330915) b!7136710))

(assert (= (and b!7136717 (not c!1330915)) b!7136712))

(declare-fun m!7852724 () Bool)

(assert (=> d!2226659 m!7852724))

(declare-fun m!7852726 () Bool)

(assert (=> d!2226659 m!7852726))

(declare-fun m!7852728 () Bool)

(assert (=> b!7136715 m!7852728))

(declare-fun m!7852730 () Bool)

(assert (=> b!7136717 m!7852730))

(assert (=> b!7136717 m!7852730))

(declare-fun m!7852732 () Bool)

(assert (=> b!7136717 m!7852732))

(declare-fun m!7852734 () Bool)

(assert (=> b!7136710 m!7852734))

(declare-fun m!7852736 () Bool)

(assert (=> b!7136708 m!7852736))

(declare-fun m!7852738 () Bool)

(assert (=> b!7136712 m!7852738))

(declare-fun m!7852740 () Bool)

(assert (=> b!7136713 m!7852740))

(declare-fun m!7852742 () Bool)

(assert (=> b!7136711 m!7852742))

(assert (=> b!7136533 d!2226659))

(declare-fun d!2226663 () Bool)

(declare-fun e!4289119 () Bool)

(assert (=> d!2226663 e!4289119))

(declare-fun res!2911942 () Bool)

(assert (=> d!2226663 (=> (not res!2911942) (not e!4289119))))

(declare-fun lt!2565931 () Context!14236)

(declare-fun dynLambda!28153 (Int Context!14236) Bool)

(assert (=> d!2226663 (= res!2911942 (dynLambda!28153 lambda!433670 lt!2565931))))

(declare-fun getWitness!1881 (List!69327 Int) Context!14236)

(assert (=> d!2226663 (= lt!2565931 (getWitness!1881 (toList!11155 z!3189) lambda!433670))))

(assert (=> d!2226663 (exists!3862 z!3189 lambda!433670)))

(assert (=> d!2226663 (= (getWitness!1878 z!3189 lambda!433670) lt!2565931)))

(declare-fun b!7136724 () Bool)

(assert (=> b!7136724 (= e!4289119 (set.member lt!2565931 z!3189))))

(assert (= (and d!2226663 res!2911942) b!7136724))

(declare-fun b_lambda!272387 () Bool)

(assert (=> (not b_lambda!272387) (not d!2226663)))

(declare-fun m!7852744 () Bool)

(assert (=> d!2226663 m!7852744))

(assert (=> d!2226663 m!7852576))

(assert (=> d!2226663 m!7852576))

(declare-fun m!7852746 () Bool)

(assert (=> d!2226663 m!7852746))

(assert (=> d!2226663 m!7852578))

(declare-fun m!7852748 () Bool)

(assert (=> b!7136724 m!7852748))

(assert (=> b!7136541 d!2226663))

(declare-fun d!2226665 () Bool)

(declare-fun res!2911947 () Bool)

(declare-fun e!4289125 () Bool)

(assert (=> d!2226665 (=> res!2911947 e!4289125)))

(assert (=> d!2226665 (= res!2911947 (is-Nil!69202 (exprs!7618 lt!2565872)))))

(assert (=> d!2226665 (= (forall!16969 (exprs!7618 lt!2565872) lambda!433671) e!4289125)))

(declare-fun b!7136731 () Bool)

(declare-fun e!4289126 () Bool)

(assert (=> b!7136731 (= e!4289125 e!4289126)))

(declare-fun res!2911948 () Bool)

(assert (=> b!7136731 (=> (not res!2911948) (not e!4289126))))

(assert (=> b!7136731 (= res!2911948 (dynLambda!28150 lambda!433671 (h!75650 (exprs!7618 lt!2565872))))))

(declare-fun b!7136732 () Bool)

(assert (=> b!7136732 (= e!4289126 (forall!16969 (t!383343 (exprs!7618 lt!2565872)) lambda!433671))))

(assert (= (and d!2226665 (not res!2911947)) b!7136731))

(assert (= (and b!7136731 res!2911948) b!7136732))

(declare-fun b_lambda!272389 () Bool)

(assert (=> (not b_lambda!272389) (not b!7136731)))

(declare-fun m!7852750 () Bool)

(assert (=> b!7136731 m!7852750))

(declare-fun m!7852752 () Bool)

(assert (=> b!7136732 m!7852752))

(assert (=> b!7136532 d!2226665))

(declare-fun bs!1887628 () Bool)

(declare-fun d!2226667 () Bool)

(assert (= bs!1887628 (and d!2226667 d!2226641)))

(declare-fun lambda!433720 () Int)

(assert (=> bs!1887628 (not (= lambda!433720 lambda!433693))))

(declare-fun bs!1887629 () Bool)

(assert (= bs!1887629 (and d!2226667 d!2226655)))

(assert (=> bs!1887629 (= lambda!433720 lambda!433710)))

(declare-fun bs!1887630 () Bool)

(assert (= bs!1887630 (and d!2226667 d!2226659)))

(assert (=> bs!1887630 (= lambda!433720 lambda!433714)))

(declare-fun bs!1887631 () Bool)

(assert (= bs!1887631 (and d!2226667 d!2226645)))

(assert (=> bs!1887631 (= lambda!433720 lambda!433698)))

(declare-fun bs!1887632 () Bool)

(assert (= bs!1887632 (and d!2226667 b!7136526)))

(assert (=> bs!1887632 (not (= lambda!433720 lambda!433669))))

(assert (=> bs!1887631 (not (= lambda!433720 lambda!433699))))

(declare-fun bs!1887633 () Bool)

(assert (= bs!1887633 (and d!2226667 b!7136532)))

(assert (=> bs!1887633 (= lambda!433720 lambda!433671)))

(declare-fun b!7136759 () Bool)

(declare-fun e!4289150 () Bool)

(assert (=> b!7136759 (= e!4289150 (isEmpty!40048 (t!383343 lt!2565867)))))

(declare-fun b!7136760 () Bool)

(declare-fun e!4289147 () Bool)

(declare-fun lt!2565938 () Regex!18124)

(declare-fun isEmptyLang!2080 (Regex!18124) Bool)

(assert (=> b!7136760 (= e!4289147 (isEmptyLang!2080 lt!2565938))))

(declare-fun b!7136761 () Bool)

(declare-fun e!4289149 () Bool)

(assert (=> b!7136761 (= e!4289147 e!4289149)))

(declare-fun c!1330932 () Bool)

(assert (=> b!7136761 (= c!1330932 (isEmpty!40048 (tail!13959 lt!2565867)))))

(declare-fun b!7136762 () Bool)

(declare-fun e!4289148 () Regex!18124)

(assert (=> b!7136762 (= e!4289148 EmptyLang!18124)))

(declare-fun b!7136763 () Bool)

(assert (=> b!7136763 (= e!4289148 (Union!18124 (h!75650 lt!2565867) (generalisedUnion!2629 (t!383343 lt!2565867))))))

(declare-fun b!7136764 () Bool)

(declare-fun e!4289146 () Bool)

(assert (=> b!7136764 (= e!4289146 e!4289147)))

(declare-fun c!1330931 () Bool)

(assert (=> b!7136764 (= c!1330931 (isEmpty!40048 lt!2565867))))

(declare-fun b!7136765 () Bool)

(assert (=> b!7136765 (= e!4289149 (= lt!2565938 (head!14489 lt!2565867)))))

(assert (=> d!2226667 e!4289146))

(declare-fun res!2911960 () Bool)

(assert (=> d!2226667 (=> (not res!2911960) (not e!4289146))))

(assert (=> d!2226667 (= res!2911960 (validRegex!9291 lt!2565938))))

(declare-fun e!4289145 () Regex!18124)

(assert (=> d!2226667 (= lt!2565938 e!4289145)))

(declare-fun c!1330933 () Bool)

(assert (=> d!2226667 (= c!1330933 e!4289150)))

(declare-fun res!2911959 () Bool)

(assert (=> d!2226667 (=> (not res!2911959) (not e!4289150))))

(assert (=> d!2226667 (= res!2911959 (is-Cons!69202 lt!2565867))))

(assert (=> d!2226667 (forall!16969 lt!2565867 lambda!433720)))

(assert (=> d!2226667 (= (generalisedUnion!2629 lt!2565867) lt!2565938)))

(declare-fun b!7136766 () Bool)

(declare-fun isUnion!1508 (Regex!18124) Bool)

(assert (=> b!7136766 (= e!4289149 (isUnion!1508 lt!2565938))))

(declare-fun b!7136767 () Bool)

(assert (=> b!7136767 (= e!4289145 (h!75650 lt!2565867))))

(declare-fun b!7136768 () Bool)

(assert (=> b!7136768 (= e!4289145 e!4289148)))

(declare-fun c!1330930 () Bool)

(assert (=> b!7136768 (= c!1330930 (is-Cons!69202 lt!2565867))))

(assert (= (and d!2226667 res!2911959) b!7136759))

(assert (= (and d!2226667 c!1330933) b!7136767))

(assert (= (and d!2226667 (not c!1330933)) b!7136768))

(assert (= (and b!7136768 c!1330930) b!7136763))

(assert (= (and b!7136768 (not c!1330930)) b!7136762))

(assert (= (and d!2226667 res!2911960) b!7136764))

(assert (= (and b!7136764 c!1330931) b!7136760))

(assert (= (and b!7136764 (not c!1330931)) b!7136761))

(assert (= (and b!7136761 c!1330932) b!7136765))

(assert (= (and b!7136761 (not c!1330932)) b!7136766))

(declare-fun m!7852766 () Bool)

(assert (=> b!7136763 m!7852766))

(declare-fun m!7852768 () Bool)

(assert (=> b!7136759 m!7852768))

(assert (=> b!7136765 m!7852658))

(declare-fun m!7852770 () Bool)

(assert (=> b!7136760 m!7852770))

(declare-fun m!7852772 () Bool)

(assert (=> b!7136761 m!7852772))

(assert (=> b!7136761 m!7852772))

(declare-fun m!7852774 () Bool)

(assert (=> b!7136761 m!7852774))

(declare-fun m!7852776 () Bool)

(assert (=> b!7136766 m!7852776))

(declare-fun m!7852778 () Bool)

(assert (=> b!7136764 m!7852778))

(declare-fun m!7852780 () Bool)

(assert (=> d!2226667 m!7852780))

(declare-fun m!7852782 () Bool)

(assert (=> d!2226667 m!7852782))

(assert (=> b!7136540 d!2226667))

(declare-fun bs!1887634 () Bool)

(declare-fun d!2226673 () Bool)

(assert (= bs!1887634 (and d!2226673 d!2226667)))

(declare-fun lambda!433723 () Int)

(assert (=> bs!1887634 (= lambda!433723 lambda!433720)))

(declare-fun bs!1887635 () Bool)

(assert (= bs!1887635 (and d!2226673 d!2226641)))

(assert (=> bs!1887635 (not (= lambda!433723 lambda!433693))))

(declare-fun bs!1887636 () Bool)

(assert (= bs!1887636 (and d!2226673 d!2226655)))

(assert (=> bs!1887636 (= lambda!433723 lambda!433710)))

(declare-fun bs!1887637 () Bool)

(assert (= bs!1887637 (and d!2226673 d!2226659)))

(assert (=> bs!1887637 (= lambda!433723 lambda!433714)))

(declare-fun bs!1887638 () Bool)

(assert (= bs!1887638 (and d!2226673 d!2226645)))

(assert (=> bs!1887638 (= lambda!433723 lambda!433698)))

(declare-fun bs!1887639 () Bool)

(assert (= bs!1887639 (and d!2226673 b!7136526)))

(assert (=> bs!1887639 (not (= lambda!433723 lambda!433669))))

(assert (=> bs!1887638 (not (= lambda!433723 lambda!433699))))

(declare-fun bs!1887640 () Bool)

(assert (= bs!1887640 (and d!2226673 b!7136532)))

(assert (=> bs!1887640 (= lambda!433723 lambda!433671)))

(declare-fun lt!2565941 () List!69326)

(assert (=> d!2226673 (forall!16969 lt!2565941 lambda!433723)))

(declare-fun e!4289165 () List!69326)

(assert (=> d!2226673 (= lt!2565941 e!4289165)))

(declare-fun c!1330940 () Bool)

(assert (=> d!2226673 (= c!1330940 (is-Cons!69203 lt!2565865))))

(assert (=> d!2226673 (= (unfocusZipperList!2165 lt!2565865) lt!2565941)))

(declare-fun b!7136789 () Bool)

(assert (=> b!7136789 (= e!4289165 (Cons!69202 (generalisedConcat!2319 (exprs!7618 (h!75651 lt!2565865))) (unfocusZipperList!2165 (t!383344 lt!2565865))))))

(declare-fun b!7136790 () Bool)

(assert (=> b!7136790 (= e!4289165 Nil!69202)))

(assert (= (and d!2226673 c!1330940) b!7136789))

(assert (= (and d!2226673 (not c!1330940)) b!7136790))

(declare-fun m!7852784 () Bool)

(assert (=> d!2226673 m!7852784))

(declare-fun m!7852786 () Bool)

(assert (=> b!7136789 m!7852786))

(declare-fun m!7852788 () Bool)

(assert (=> b!7136789 m!7852788))

(assert (=> b!7136540 d!2226673))

(declare-fun condSetEmpty!52372 () Bool)

(assert (=> setNonEmpty!52366 (= condSetEmpty!52372 (= setRest!52366 (as set.empty (Set Context!14236))))))

(declare-fun setRes!52372 () Bool)

(assert (=> setNonEmpty!52366 (= tp!1967662 setRes!52372)))

(declare-fun setIsEmpty!52372 () Bool)

(assert (=> setIsEmpty!52372 setRes!52372))

(declare-fun tp!1967688 () Bool)

(declare-fun e!4289170 () Bool)

(declare-fun setNonEmpty!52372 () Bool)

(declare-fun setElem!52372 () Context!14236)

(assert (=> setNonEmpty!52372 (= setRes!52372 (and tp!1967688 (inv!88375 setElem!52372) e!4289170))))

(declare-fun setRest!52372 () (Set Context!14236))

(assert (=> setNonEmpty!52372 (= setRest!52366 (set.union (set.insert setElem!52372 (as set.empty (Set Context!14236))) setRest!52372))))

(declare-fun b!7136797 () Bool)

(declare-fun tp!1967689 () Bool)

(assert (=> b!7136797 (= e!4289170 tp!1967689)))

(assert (= (and setNonEmpty!52366 condSetEmpty!52372) setIsEmpty!52372))

(assert (= (and setNonEmpty!52366 (not condSetEmpty!52372)) setNonEmpty!52372))

(assert (= setNonEmpty!52372 b!7136797))

(declare-fun m!7852790 () Bool)

(assert (=> setNonEmpty!52372 m!7852790))

(declare-fun b!7136811 () Bool)

(declare-fun e!4289173 () Bool)

(declare-fun tp!1967702 () Bool)

(declare-fun tp!1967703 () Bool)

(assert (=> b!7136811 (= e!4289173 (and tp!1967702 tp!1967703))))

(declare-fun b!7136810 () Bool)

(declare-fun tp!1967700 () Bool)

(assert (=> b!7136810 (= e!4289173 tp!1967700)))

(assert (=> b!7136534 (= tp!1967661 e!4289173)))

(declare-fun b!7136808 () Bool)

(assert (=> b!7136808 (= e!4289173 tp_is_empty!45885)))

(declare-fun b!7136809 () Bool)

(declare-fun tp!1967704 () Bool)

(declare-fun tp!1967701 () Bool)

(assert (=> b!7136809 (= e!4289173 (and tp!1967704 tp!1967701))))

(assert (= (and b!7136534 (is-ElementMatch!18124 (reg!18453 r!11483))) b!7136808))

(assert (= (and b!7136534 (is-Concat!26969 (reg!18453 r!11483))) b!7136809))

(assert (= (and b!7136534 (is-Star!18124 (reg!18453 r!11483))) b!7136810))

(assert (= (and b!7136534 (is-Union!18124 (reg!18453 r!11483))) b!7136811))

(declare-fun b!7136815 () Bool)

(declare-fun e!4289174 () Bool)

(declare-fun tp!1967707 () Bool)

(declare-fun tp!1967708 () Bool)

(assert (=> b!7136815 (= e!4289174 (and tp!1967707 tp!1967708))))

(declare-fun b!7136814 () Bool)

(declare-fun tp!1967705 () Bool)

(assert (=> b!7136814 (= e!4289174 tp!1967705)))

(assert (=> b!7136529 (= tp!1967658 e!4289174)))

(declare-fun b!7136812 () Bool)

(assert (=> b!7136812 (= e!4289174 tp_is_empty!45885)))

(declare-fun b!7136813 () Bool)

(declare-fun tp!1967709 () Bool)

(declare-fun tp!1967706 () Bool)

(assert (=> b!7136813 (= e!4289174 (and tp!1967709 tp!1967706))))

(assert (= (and b!7136529 (is-ElementMatch!18124 (regOne!36760 r!11483))) b!7136812))

(assert (= (and b!7136529 (is-Concat!26969 (regOne!36760 r!11483))) b!7136813))

(assert (= (and b!7136529 (is-Star!18124 (regOne!36760 r!11483))) b!7136814))

(assert (= (and b!7136529 (is-Union!18124 (regOne!36760 r!11483))) b!7136815))

(declare-fun b!7136819 () Bool)

(declare-fun e!4289175 () Bool)

(declare-fun tp!1967712 () Bool)

(declare-fun tp!1967713 () Bool)

(assert (=> b!7136819 (= e!4289175 (and tp!1967712 tp!1967713))))

(declare-fun b!7136818 () Bool)

(declare-fun tp!1967710 () Bool)

(assert (=> b!7136818 (= e!4289175 tp!1967710)))

(assert (=> b!7136529 (= tp!1967660 e!4289175)))

(declare-fun b!7136816 () Bool)

(assert (=> b!7136816 (= e!4289175 tp_is_empty!45885)))

(declare-fun b!7136817 () Bool)

(declare-fun tp!1967714 () Bool)

(declare-fun tp!1967711 () Bool)

(assert (=> b!7136817 (= e!4289175 (and tp!1967714 tp!1967711))))

(assert (= (and b!7136529 (is-ElementMatch!18124 (regTwo!36760 r!11483))) b!7136816))

(assert (= (and b!7136529 (is-Concat!26969 (regTwo!36760 r!11483))) b!7136817))

(assert (= (and b!7136529 (is-Star!18124 (regTwo!36760 r!11483))) b!7136818))

(assert (= (and b!7136529 (is-Union!18124 (regTwo!36760 r!11483))) b!7136819))

(declare-fun b!7136823 () Bool)

(declare-fun e!4289176 () Bool)

(declare-fun tp!1967717 () Bool)

(declare-fun tp!1967718 () Bool)

(assert (=> b!7136823 (= e!4289176 (and tp!1967717 tp!1967718))))

(declare-fun b!7136822 () Bool)

(declare-fun tp!1967715 () Bool)

(assert (=> b!7136822 (= e!4289176 tp!1967715)))

(assert (=> b!7136537 (= tp!1967657 e!4289176)))

(declare-fun b!7136820 () Bool)

(assert (=> b!7136820 (= e!4289176 tp_is_empty!45885)))

(declare-fun b!7136821 () Bool)

(declare-fun tp!1967719 () Bool)

(declare-fun tp!1967716 () Bool)

(assert (=> b!7136821 (= e!4289176 (and tp!1967719 tp!1967716))))

(assert (= (and b!7136537 (is-ElementMatch!18124 (regOne!36761 r!11483))) b!7136820))

(assert (= (and b!7136537 (is-Concat!26969 (regOne!36761 r!11483))) b!7136821))

(assert (= (and b!7136537 (is-Star!18124 (regOne!36761 r!11483))) b!7136822))

(assert (= (and b!7136537 (is-Union!18124 (regOne!36761 r!11483))) b!7136823))

(declare-fun b!7136827 () Bool)

(declare-fun e!4289177 () Bool)

(declare-fun tp!1967722 () Bool)

(declare-fun tp!1967723 () Bool)

(assert (=> b!7136827 (= e!4289177 (and tp!1967722 tp!1967723))))

(declare-fun b!7136826 () Bool)

(declare-fun tp!1967720 () Bool)

(assert (=> b!7136826 (= e!4289177 tp!1967720)))

(assert (=> b!7136537 (= tp!1967659 e!4289177)))

(declare-fun b!7136824 () Bool)

(assert (=> b!7136824 (= e!4289177 tp_is_empty!45885)))

(declare-fun b!7136825 () Bool)

(declare-fun tp!1967724 () Bool)

(declare-fun tp!1967721 () Bool)

(assert (=> b!7136825 (= e!4289177 (and tp!1967724 tp!1967721))))

(assert (= (and b!7136537 (is-ElementMatch!18124 (regTwo!36761 r!11483))) b!7136824))

(assert (= (and b!7136537 (is-Concat!26969 (regTwo!36761 r!11483))) b!7136825))

(assert (= (and b!7136537 (is-Star!18124 (regTwo!36761 r!11483))) b!7136826))

(assert (= (and b!7136537 (is-Union!18124 (regTwo!36761 r!11483))) b!7136827))

(declare-fun b!7136832 () Bool)

(declare-fun e!4289180 () Bool)

(declare-fun tp!1967729 () Bool)

(declare-fun tp!1967730 () Bool)

(assert (=> b!7136832 (= e!4289180 (and tp!1967729 tp!1967730))))

(assert (=> b!7136536 (= tp!1967656 e!4289180)))

(assert (= (and b!7136536 (is-Cons!69202 (exprs!7618 setElem!52366))) b!7136832))

(declare-fun b_lambda!272391 () Bool)

(assert (= b_lambda!272387 (or b!7136531 b_lambda!272391)))

(declare-fun bs!1887641 () Bool)

(declare-fun d!2226675 () Bool)

(assert (= bs!1887641 (and d!2226675 b!7136531)))

(assert (=> bs!1887641 (= (dynLambda!28153 lambda!433670 lt!2565931) (= (generalisedConcat!2319 (exprs!7618 lt!2565931)) lt!2565871))))

(declare-fun m!7852792 () Bool)

(assert (=> bs!1887641 m!7852792))

(assert (=> d!2226663 d!2226675))

(declare-fun b_lambda!272393 () Bool)

(assert (= b_lambda!272389 (or b!7136532 b_lambda!272393)))

(declare-fun bs!1887642 () Bool)

(declare-fun d!2226677 () Bool)

(assert (= bs!1887642 (and d!2226677 b!7136532)))

(assert (=> bs!1887642 (= (dynLambda!28150 lambda!433671 (h!75650 (exprs!7618 lt!2565872))) (validRegex!9291 (h!75650 (exprs!7618 lt!2565872))))))

(declare-fun m!7852794 () Bool)

(assert (=> bs!1887642 m!7852794))

(assert (=> b!7136731 d!2226677))

(declare-fun b_lambda!272395 () Bool)

(assert (= b_lambda!272383 (or b!7136526 b_lambda!272395)))

(declare-fun bs!1887643 () Bool)

(declare-fun d!2226679 () Bool)

(assert (= bs!1887643 (and d!2226679 b!7136526)))

(assert (=> bs!1887643 (= (dynLambda!28150 lambda!433669 (h!75650 lt!2565867)) (nullable!7644 (h!75650 lt!2565867)))))

(declare-fun m!7852796 () Bool)

(assert (=> bs!1887643 m!7852796))

(assert (=> b!7136615 d!2226679))

(declare-fun b_lambda!272397 () Bool)

(assert (= b_lambda!272381 (or b!7136526 b_lambda!272397)))

(declare-fun bs!1887644 () Bool)

(declare-fun d!2226681 () Bool)

(assert (= bs!1887644 (and d!2226681 b!7136526)))

(assert (=> bs!1887644 (= (dynLambda!28150 lambda!433669 lt!2565904) (nullable!7644 lt!2565904))))

(declare-fun m!7852798 () Bool)

(assert (=> bs!1887644 m!7852798))

(assert (=> d!2226633 d!2226681))

(push 1)

(assert (not d!2226667))

(assert (not d!2226653))

(assert (not b!7136761))

(assert (not b!7136825))

(assert (not b!7136797))

(assert (not bm!651013))

(assert (not b!7136760))

(assert (not b!7136766))

(assert (not b!7136822))

(assert (not b!7136810))

(assert (not setNonEmpty!52372))

(assert (not b!7136818))

(assert (not b!7136614))

(assert (not b!7136713))

(assert (not d!2226655))

(assert (not d!2226629))

(assert (not d!2226641))

(assert (not b!7136811))

(assert (not b!7136715))

(assert (not d!2226637))

(assert (not d!2226633))

(assert (not b!7136613))

(assert (not b!7136765))

(assert (not b_lambda!272397))

(assert (not b!7136809))

(assert (not b!7136814))

(assert (not d!2226631))

(assert (not b!7136624))

(assert (not b!7136826))

(assert (not b_lambda!272391))

(assert (not d!2226651))

(assert (not d!2226663))

(assert (not b!7136832))

(assert (not b!7136599))

(assert (not b!7136717))

(assert (not b!7136669))

(assert (not b!7136764))

(assert (not d!2226673))

(assert (not b!7136789))

(assert (not b!7136732))

(assert (not bs!1887641))

(assert (not bs!1887642))

(assert (not b!7136708))

(assert (not d!2226649))

(assert (not b_lambda!272395))

(assert (not b!7136813))

(assert (not d!2226643))

(assert (not b!7136827))

(assert (not d!2226659))

(assert (not b!7136815))

(assert (not b!7136823))

(assert (not b!7136711))

(assert (not b!7136821))

(assert (not b!7136819))

(assert (not b!7136712))

(assert (not bm!651012))

(assert (not b_lambda!272393))

(assert (not d!2226639))

(assert (not b!7136759))

(assert (not b!7136817))

(assert tp_is_empty!45885)

(assert (not bs!1887643))

(assert (not d!2226645))

(assert (not bs!1887644))

(assert (not b!7136710))

(assert (not b!7136763))

(assert (not b!7136612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

