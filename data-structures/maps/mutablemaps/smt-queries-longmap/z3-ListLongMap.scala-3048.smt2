; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42820 () Bool)

(assert start!42820)

(declare-fun b_free!12099 () Bool)

(declare-fun b_next!12099 () Bool)

(assert (=> start!42820 (= b_free!12099 (not b_next!12099))))

(declare-fun tp!42372 () Bool)

(declare-fun b_and!20703 () Bool)

(assert (=> start!42820 (= tp!42372 b_and!20703)))

(declare-fun res!284550 () Bool)

(declare-fun e!279941 () Bool)

(assert (=> start!42820 (=> (not res!284550) (not e!279941))))

(declare-datatypes ((B!1048 0))(
  ( (B!1049 (val!6808 Int)) )
))
(declare-datatypes ((tuple2!8986 0))(
  ( (tuple2!8987 (_1!4503 (_ BitVec 64)) (_2!4503 B!1048)) )
))
(declare-datatypes ((List!9082 0))(
  ( (Nil!9079) (Cons!9078 (h!9934 tuple2!8986) (t!15126 List!9082)) )
))
(declare-datatypes ((ListLongMap!7913 0))(
  ( (ListLongMap!7914 (toList!3972 List!9082)) )
))
(declare-fun lm!215 () ListLongMap!7913)

(declare-fun p!166 () Int)

(declare-fun forall!195 (List!9082 Int) Bool)

(assert (=> start!42820 (= res!284550 (forall!195 (toList!3972 lm!215) p!166))))

(assert (=> start!42820 e!279941))

(declare-fun e!279939 () Bool)

(declare-fun inv!15488 (ListLongMap!7913) Bool)

(assert (=> start!42820 (and (inv!15488 lm!215) e!279939)))

(assert (=> start!42820 tp!42372))

(assert (=> start!42820 true))

(declare-fun tp_is_empty!13521 () Bool)

(assert (=> start!42820 tp_is_empty!13521))

(declare-fun b!476546 () Bool)

(declare-fun e!279940 () Bool)

(assert (=> b!476546 (= e!279941 e!279940)))

(declare-fun res!284551 () Bool)

(assert (=> b!476546 (=> (not res!284551) (not e!279940))))

(declare-fun lt!217276 () ListLongMap!7913)

(assert (=> b!476546 (= res!284551 (forall!195 (toList!3972 lt!217276) p!166))))

(declare-fun tail!120 (ListLongMap!7913) ListLongMap!7913)

(assert (=> b!476546 (= lt!217276 (tail!120 lm!215))))

(declare-fun b!476547 () Bool)

(declare-fun res!284548 () Bool)

(assert (=> b!476547 (=> (not res!284548) (not e!279941))))

(declare-fun isEmpty!601 (ListLongMap!7913) Bool)

(assert (=> b!476547 (= res!284548 (not (isEmpty!601 lm!215)))))

(declare-fun b!476548 () Bool)

(declare-fun res!284549 () Bool)

(assert (=> b!476548 (=> (not res!284549) (not e!279941))))

(declare-fun a!501 () (_ BitVec 64))

(declare-fun b!85 () B!1048)

(declare-fun dynLambda!941 (Int tuple2!8986) Bool)

(assert (=> b!476548 (= res!284549 (dynLambda!941 p!166 (tuple2!8987 a!501 b!85)))))

(declare-fun b!476549 () Bool)

(declare-fun tp!42373 () Bool)

(assert (=> b!476549 (= e!279939 tp!42373)))

(declare-fun b!476550 () Bool)

(declare-fun size!15124 (List!9082) Int)

(assert (=> b!476550 (= e!279940 (>= (size!15124 (toList!3972 lt!217276)) (size!15124 (toList!3972 lm!215))))))

(assert (= (and start!42820 res!284550) b!476548))

(assert (= (and b!476548 res!284549) b!476547))

(assert (= (and b!476547 res!284548) b!476546))

(assert (= (and b!476546 res!284551) b!476550))

(assert (= start!42820 b!476549))

(declare-fun b_lambda!10487 () Bool)

(assert (=> (not b_lambda!10487) (not b!476548)))

(declare-fun t!15125 () Bool)

(declare-fun tb!4001 () Bool)

(assert (=> (and start!42820 (= p!166 p!166) t!15125) tb!4001))

(declare-fun result!7557 () Bool)

(assert (=> tb!4001 (= result!7557 true)))

(assert (=> b!476548 t!15125))

(declare-fun b_and!20705 () Bool)

(assert (= b_and!20703 (and (=> t!15125 result!7557) b_and!20705)))

(declare-fun m!458851 () Bool)

(assert (=> b!476550 m!458851))

(declare-fun m!458853 () Bool)

(assert (=> b!476550 m!458853))

(declare-fun m!458855 () Bool)

(assert (=> b!476547 m!458855))

(declare-fun m!458857 () Bool)

(assert (=> b!476548 m!458857))

(declare-fun m!458859 () Bool)

(assert (=> start!42820 m!458859))

(declare-fun m!458861 () Bool)

(assert (=> start!42820 m!458861))

(declare-fun m!458863 () Bool)

(assert (=> b!476546 m!458863))

(declare-fun m!458865 () Bool)

(assert (=> b!476546 m!458865))

(check-sat (not start!42820) tp_is_empty!13521 (not b!476550) (not b_next!12099) (not b!476549) (not b!476547) b_and!20705 (not b_lambda!10487) (not b!476546))
(check-sat b_and!20705 (not b_next!12099))
(get-model)

(declare-fun b_lambda!10491 () Bool)

(assert (= b_lambda!10487 (or (and start!42820 b_free!12099) b_lambda!10491)))

(check-sat (not start!42820) tp_is_empty!13521 (not b!476546) (not b!476550) (not b_next!12099) (not b!476549) b_and!20705 (not b!476547) (not b_lambda!10491))
(check-sat b_and!20705 (not b_next!12099))
(get-model)

(declare-fun d!75695 () Bool)

(declare-fun isEmpty!603 (List!9082) Bool)

(assert (=> d!75695 (= (isEmpty!601 lm!215) (isEmpty!603 (toList!3972 lm!215)))))

(declare-fun bs!15143 () Bool)

(assert (= bs!15143 d!75695))

(declare-fun m!458883 () Bool)

(assert (=> bs!15143 m!458883))

(assert (=> b!476547 d!75695))

(declare-fun d!75701 () Bool)

(declare-fun res!284568 () Bool)

(declare-fun e!279962 () Bool)

(assert (=> d!75701 (=> res!284568 e!279962)))

(get-info :version)

(assert (=> d!75701 (= res!284568 ((_ is Nil!9079) (toList!3972 lt!217276)))))

(assert (=> d!75701 (= (forall!195 (toList!3972 lt!217276) p!166) e!279962)))

(declare-fun b!476584 () Bool)

(declare-fun e!279963 () Bool)

(assert (=> b!476584 (= e!279962 e!279963)))

(declare-fun res!284569 () Bool)

(assert (=> b!476584 (=> (not res!284569) (not e!279963))))

(assert (=> b!476584 (= res!284569 (dynLambda!941 p!166 (h!9934 (toList!3972 lt!217276))))))

(declare-fun b!476585 () Bool)

(assert (=> b!476585 (= e!279963 (forall!195 (t!15126 (toList!3972 lt!217276)) p!166))))

(assert (= (and d!75701 (not res!284568)) b!476584))

(assert (= (and b!476584 res!284569) b!476585))

(declare-fun b_lambda!10497 () Bool)

(assert (=> (not b_lambda!10497) (not b!476584)))

(declare-fun t!15131 () Bool)

(declare-fun tb!4005 () Bool)

(assert (=> (and start!42820 (= p!166 p!166) t!15131) tb!4005))

(declare-fun result!7561 () Bool)

(assert (=> tb!4005 (= result!7561 true)))

(assert (=> b!476584 t!15131))

(declare-fun b_and!20711 () Bool)

(assert (= b_and!20705 (and (=> t!15131 result!7561) b_and!20711)))

(declare-fun m!458893 () Bool)

(assert (=> b!476584 m!458893))

(declare-fun m!458895 () Bool)

(assert (=> b!476585 m!458895))

(assert (=> b!476546 d!75701))

(declare-fun d!75711 () Bool)

(declare-fun tail!122 (List!9082) List!9082)

(assert (=> d!75711 (= (tail!120 lm!215) (ListLongMap!7914 (tail!122 (toList!3972 lm!215))))))

(declare-fun bs!15145 () Bool)

(assert (= bs!15145 d!75711))

(declare-fun m!458899 () Bool)

(assert (=> bs!15145 m!458899))

(assert (=> b!476546 d!75711))

(declare-fun d!75715 () Bool)

(declare-fun res!284574 () Bool)

(declare-fun e!279969 () Bool)

(assert (=> d!75715 (=> res!284574 e!279969)))

(assert (=> d!75715 (= res!284574 ((_ is Nil!9079) (toList!3972 lm!215)))))

(assert (=> d!75715 (= (forall!195 (toList!3972 lm!215) p!166) e!279969)))

(declare-fun b!476592 () Bool)

(declare-fun e!279970 () Bool)

(assert (=> b!476592 (= e!279969 e!279970)))

(declare-fun res!284575 () Bool)

(assert (=> b!476592 (=> (not res!284575) (not e!279970))))

(assert (=> b!476592 (= res!284575 (dynLambda!941 p!166 (h!9934 (toList!3972 lm!215))))))

(declare-fun b!476593 () Bool)

(assert (=> b!476593 (= e!279970 (forall!195 (t!15126 (toList!3972 lm!215)) p!166))))

(assert (= (and d!75715 (not res!284574)) b!476592))

(assert (= (and b!476592 res!284575) b!476593))

(declare-fun b_lambda!10499 () Bool)

(assert (=> (not b_lambda!10499) (not b!476592)))

(declare-fun t!15133 () Bool)

(declare-fun tb!4007 () Bool)

(assert (=> (and start!42820 (= p!166 p!166) t!15133) tb!4007))

(declare-fun result!7563 () Bool)

(assert (=> tb!4007 (= result!7563 true)))

(assert (=> b!476592 t!15133))

(declare-fun b_and!20713 () Bool)

(assert (= b_and!20711 (and (=> t!15133 result!7563) b_and!20713)))

(declare-fun m!458901 () Bool)

(assert (=> b!476592 m!458901))

(declare-fun m!458903 () Bool)

(assert (=> b!476593 m!458903))

(assert (=> start!42820 d!75715))

(declare-fun d!75717 () Bool)

(declare-fun isStrictlySorted!380 (List!9082) Bool)

(assert (=> d!75717 (= (inv!15488 lm!215) (isStrictlySorted!380 (toList!3972 lm!215)))))

(declare-fun bs!15147 () Bool)

(assert (= bs!15147 d!75717))

(declare-fun m!458911 () Bool)

(assert (=> bs!15147 m!458911))

(assert (=> start!42820 d!75717))

(declare-fun d!75723 () Bool)

(declare-fun lt!217290 () Int)

(assert (=> d!75723 (>= lt!217290 0)))

(declare-fun e!279985 () Int)

(assert (=> d!75723 (= lt!217290 e!279985)))

(declare-fun c!57291 () Bool)

(assert (=> d!75723 (= c!57291 ((_ is Nil!9079) (toList!3972 lt!217276)))))

(assert (=> d!75723 (= (size!15124 (toList!3972 lt!217276)) lt!217290)))

(declare-fun b!476610 () Bool)

(assert (=> b!476610 (= e!279985 0)))

(declare-fun b!476611 () Bool)

(assert (=> b!476611 (= e!279985 (+ 1 (size!15124 (t!15126 (toList!3972 lt!217276)))))))

(assert (= (and d!75723 c!57291) b!476610))

(assert (= (and d!75723 (not c!57291)) b!476611))

(declare-fun m!458929 () Bool)

(assert (=> b!476611 m!458929))

(assert (=> b!476550 d!75723))

(declare-fun d!75735 () Bool)

(declare-fun lt!217291 () Int)

(assert (=> d!75735 (>= lt!217291 0)))

(declare-fun e!279986 () Int)

(assert (=> d!75735 (= lt!217291 e!279986)))

(declare-fun c!57292 () Bool)

(assert (=> d!75735 (= c!57292 ((_ is Nil!9079) (toList!3972 lm!215)))))

(assert (=> d!75735 (= (size!15124 (toList!3972 lm!215)) lt!217291)))

(declare-fun b!476612 () Bool)

(assert (=> b!476612 (= e!279986 0)))

(declare-fun b!476613 () Bool)

(assert (=> b!476613 (= e!279986 (+ 1 (size!15124 (t!15126 (toList!3972 lm!215)))))))

(assert (= (and d!75735 c!57292) b!476612))

(assert (= (and d!75735 (not c!57292)) b!476613))

(declare-fun m!458931 () Bool)

(assert (=> b!476613 m!458931))

(assert (=> b!476550 d!75735))

(declare-fun b!476622 () Bool)

(declare-fun e!279991 () Bool)

(declare-fun tp!42384 () Bool)

(assert (=> b!476622 (= e!279991 (and tp_is_empty!13521 tp!42384))))

(assert (=> b!476549 (= tp!42373 e!279991)))

(assert (= (and b!476549 ((_ is Cons!9078) (toList!3972 lm!215))) b!476622))

(declare-fun b_lambda!10509 () Bool)

(assert (= b_lambda!10499 (or (and start!42820 b_free!12099) b_lambda!10509)))

(declare-fun b_lambda!10511 () Bool)

(assert (= b_lambda!10497 (or (and start!42820 b_free!12099) b_lambda!10511)))

(check-sat (not d!75695) (not b!476611) (not b!476585) tp_is_empty!13521 (not d!75717) (not b_lambda!10511) (not b_lambda!10509) (not b!476613) (not b_next!12099) (not b!476622) (not b!476593) b_and!20713 (not d!75711) (not b_lambda!10491))
(check-sat b_and!20713 (not b_next!12099))
(get-model)

(declare-fun d!75737 () Bool)

(assert (=> d!75737 (= (isEmpty!603 (toList!3972 lm!215)) ((_ is Nil!9079) (toList!3972 lm!215)))))

(assert (=> d!75695 d!75737))

(declare-fun d!75739 () Bool)

(declare-fun res!284588 () Bool)

(declare-fun e!279996 () Bool)

(assert (=> d!75739 (=> res!284588 e!279996)))

(assert (=> d!75739 (= res!284588 ((_ is Nil!9079) (t!15126 (toList!3972 lm!215))))))

(assert (=> d!75739 (= (forall!195 (t!15126 (toList!3972 lm!215)) p!166) e!279996)))

(declare-fun b!476629 () Bool)

(declare-fun e!279997 () Bool)

(assert (=> b!476629 (= e!279996 e!279997)))

(declare-fun res!284589 () Bool)

(assert (=> b!476629 (=> (not res!284589) (not e!279997))))

(assert (=> b!476629 (= res!284589 (dynLambda!941 p!166 (h!9934 (t!15126 (toList!3972 lm!215)))))))

(declare-fun b!476630 () Bool)

(assert (=> b!476630 (= e!279997 (forall!195 (t!15126 (t!15126 (toList!3972 lm!215))) p!166))))

(assert (= (and d!75739 (not res!284588)) b!476629))

(assert (= (and b!476629 res!284589) b!476630))

(declare-fun b_lambda!10521 () Bool)

(assert (=> (not b_lambda!10521) (not b!476629)))

(declare-fun t!15143 () Bool)

(declare-fun tb!4017 () Bool)

(assert (=> (and start!42820 (= p!166 p!166) t!15143) tb!4017))

(declare-fun result!7579 () Bool)

(assert (=> tb!4017 (= result!7579 true)))

(assert (=> b!476629 t!15143))

(declare-fun b_and!20723 () Bool)

(assert (= b_and!20713 (and (=> t!15143 result!7579) b_and!20723)))

(declare-fun m!458937 () Bool)

(assert (=> b!476629 m!458937))

(declare-fun m!458939 () Bool)

(assert (=> b!476630 m!458939))

(assert (=> b!476593 d!75739))

(declare-fun d!75741 () Bool)

(assert (=> d!75741 (= (tail!122 (toList!3972 lm!215)) (t!15126 (toList!3972 lm!215)))))

(assert (=> d!75711 d!75741))

(declare-fun d!75743 () Bool)

(declare-fun res!284594 () Bool)

(declare-fun e!280002 () Bool)

(assert (=> d!75743 (=> res!284594 e!280002)))

(assert (=> d!75743 (= res!284594 (or ((_ is Nil!9079) (toList!3972 lm!215)) ((_ is Nil!9079) (t!15126 (toList!3972 lm!215)))))))

(assert (=> d!75743 (= (isStrictlySorted!380 (toList!3972 lm!215)) e!280002)))

(declare-fun b!476635 () Bool)

(declare-fun e!280003 () Bool)

(assert (=> b!476635 (= e!280002 e!280003)))

(declare-fun res!284595 () Bool)

(assert (=> b!476635 (=> (not res!284595) (not e!280003))))

(assert (=> b!476635 (= res!284595 (bvslt (_1!4503 (h!9934 (toList!3972 lm!215))) (_1!4503 (h!9934 (t!15126 (toList!3972 lm!215))))))))

(declare-fun b!476636 () Bool)

(assert (=> b!476636 (= e!280003 (isStrictlySorted!380 (t!15126 (toList!3972 lm!215))))))

(assert (= (and d!75743 (not res!284594)) b!476635))

(assert (= (and b!476635 res!284595) b!476636))

(declare-fun m!458941 () Bool)

(assert (=> b!476636 m!458941))

(assert (=> d!75717 d!75743))

(declare-fun d!75745 () Bool)

(declare-fun lt!217292 () Int)

(assert (=> d!75745 (>= lt!217292 0)))

(declare-fun e!280004 () Int)

(assert (=> d!75745 (= lt!217292 e!280004)))

(declare-fun c!57293 () Bool)

(assert (=> d!75745 (= c!57293 ((_ is Nil!9079) (t!15126 (toList!3972 lm!215))))))

(assert (=> d!75745 (= (size!15124 (t!15126 (toList!3972 lm!215))) lt!217292)))

(declare-fun b!476637 () Bool)

(assert (=> b!476637 (= e!280004 0)))

(declare-fun b!476638 () Bool)

(assert (=> b!476638 (= e!280004 (+ 1 (size!15124 (t!15126 (t!15126 (toList!3972 lm!215))))))))

(assert (= (and d!75745 c!57293) b!476637))

(assert (= (and d!75745 (not c!57293)) b!476638))

(declare-fun m!458943 () Bool)

(assert (=> b!476638 m!458943))

(assert (=> b!476613 d!75745))

(declare-fun d!75747 () Bool)

(declare-fun lt!217293 () Int)

(assert (=> d!75747 (>= lt!217293 0)))

(declare-fun e!280005 () Int)

(assert (=> d!75747 (= lt!217293 e!280005)))

(declare-fun c!57294 () Bool)

(assert (=> d!75747 (= c!57294 ((_ is Nil!9079) (t!15126 (toList!3972 lt!217276))))))

(assert (=> d!75747 (= (size!15124 (t!15126 (toList!3972 lt!217276))) lt!217293)))

(declare-fun b!476639 () Bool)

(assert (=> b!476639 (= e!280005 0)))

(declare-fun b!476640 () Bool)

(assert (=> b!476640 (= e!280005 (+ 1 (size!15124 (t!15126 (t!15126 (toList!3972 lt!217276))))))))

(assert (= (and d!75747 c!57294) b!476639))

(assert (= (and d!75747 (not c!57294)) b!476640))

(declare-fun m!458945 () Bool)

(assert (=> b!476640 m!458945))

(assert (=> b!476611 d!75747))

(declare-fun d!75749 () Bool)

(declare-fun res!284596 () Bool)

(declare-fun e!280006 () Bool)

(assert (=> d!75749 (=> res!284596 e!280006)))

(assert (=> d!75749 (= res!284596 ((_ is Nil!9079) (t!15126 (toList!3972 lt!217276))))))

(assert (=> d!75749 (= (forall!195 (t!15126 (toList!3972 lt!217276)) p!166) e!280006)))

(declare-fun b!476641 () Bool)

(declare-fun e!280007 () Bool)

(assert (=> b!476641 (= e!280006 e!280007)))

(declare-fun res!284597 () Bool)

(assert (=> b!476641 (=> (not res!284597) (not e!280007))))

(assert (=> b!476641 (= res!284597 (dynLambda!941 p!166 (h!9934 (t!15126 (toList!3972 lt!217276)))))))

(declare-fun b!476642 () Bool)

(assert (=> b!476642 (= e!280007 (forall!195 (t!15126 (t!15126 (toList!3972 lt!217276))) p!166))))

(assert (= (and d!75749 (not res!284596)) b!476641))

(assert (= (and b!476641 res!284597) b!476642))

(declare-fun b_lambda!10523 () Bool)

(assert (=> (not b_lambda!10523) (not b!476641)))

(declare-fun t!15145 () Bool)

(declare-fun tb!4019 () Bool)

(assert (=> (and start!42820 (= p!166 p!166) t!15145) tb!4019))

(declare-fun result!7581 () Bool)

(assert (=> tb!4019 (= result!7581 true)))

(assert (=> b!476641 t!15145))

(declare-fun b_and!20725 () Bool)

(assert (= b_and!20723 (and (=> t!15145 result!7581) b_and!20725)))

(declare-fun m!458947 () Bool)

(assert (=> b!476641 m!458947))

(declare-fun m!458949 () Bool)

(assert (=> b!476642 m!458949))

(assert (=> b!476585 d!75749))

(declare-fun b!476643 () Bool)

(declare-fun e!280008 () Bool)

(declare-fun tp!42389 () Bool)

(assert (=> b!476643 (= e!280008 (and tp_is_empty!13521 tp!42389))))

(assert (=> b!476622 (= tp!42384 e!280008)))

(assert (= (and b!476622 ((_ is Cons!9078) (t!15126 (toList!3972 lm!215)))) b!476643))

(declare-fun b_lambda!10525 () Bool)

(assert (= b_lambda!10521 (or (and start!42820 b_free!12099) b_lambda!10525)))

(declare-fun b_lambda!10527 () Bool)

(assert (= b_lambda!10523 (or (and start!42820 b_free!12099) b_lambda!10527)))

(check-sat (not b!476643) (not b!476636) (not b_lambda!10527) (not b!476638) tp_is_empty!13521 (not b_lambda!10511) (not b_lambda!10509) (not b_next!12099) (not b_lambda!10525) b_and!20725 (not b_lambda!10491) (not b!476640) (not b!476642) (not b!476630))
(check-sat b_and!20725 (not b_next!12099))
