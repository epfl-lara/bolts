; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2610 () Bool)

(assert start!2610)

(declare-fun b_free!531 () Bool)

(declare-fun b_next!531 () Bool)

(assert (=> start!2610 (= b_free!531 (not b_next!531))))

(declare-fun tp!2711 () Bool)

(declare-fun b_and!1013 () Bool)

(assert (=> start!2610 (= tp!2711 b_and!1013)))

(declare-fun res!11838 () Bool)

(declare-fun e!9607 () Bool)

(assert (=> start!2610 (=> (not res!11838) (not e!9607))))

(declare-datatypes ((B!652 0))(
  ( (B!653 (val!424 Int)) )
))
(declare-datatypes ((tuple2!630 0))(
  ( (tuple2!631 (_1!315 (_ BitVec 64)) (_2!315 B!652)) )
))
(declare-datatypes ((List!502 0))(
  ( (Nil!499) (Cons!498 (h!1064 tuple2!630) (t!2976 List!502)) )
))
(declare-datatypes ((ListLongMap!461 0))(
  ( (ListLongMap!462 (toList!246 List!502)) )
))
(declare-fun lm!238 () ListLongMap!461)

(declare-fun p!262 () Int)

(declare-fun forall!129 (List!502 Int) Bool)

(assert (=> start!2610 (= res!11838 (forall!129 (toList!246 lm!238) p!262))))

(assert (=> start!2610 e!9607))

(declare-fun e!9606 () Bool)

(declare-fun inv!841 (ListLongMap!461) Bool)

(assert (=> start!2610 (and (inv!841 lm!238) e!9606)))

(assert (=> start!2610 tp!2711))

(assert (=> start!2610 true))

(declare-fun b!15747 () Bool)

(declare-fun res!11839 () Bool)

(assert (=> b!15747 (=> (not res!11839) (not e!9607))))

(declare-datatypes ((List!503 0))(
  ( (Nil!500) (Cons!499 (h!1065 (_ BitVec 64)) (t!2977 List!503)) )
))
(declare-fun l!1612 () List!503)

(declare-fun isEmpty!139 (List!503) Bool)

(assert (=> b!15747 (= res!11839 (isEmpty!139 l!1612))))

(declare-fun b!15748 () Bool)

(declare-fun --!8 (ListLongMap!461 List!503) ListLongMap!461)

(assert (=> b!15748 (= e!9607 (not (forall!129 (toList!246 (--!8 lm!238 l!1612)) p!262)))))

(declare-fun b!15749 () Bool)

(declare-fun tp!2710 () Bool)

(assert (=> b!15749 (= e!9606 tp!2710)))

(assert (= (and start!2610 res!11838) b!15747))

(assert (= (and b!15747 res!11839) b!15748))

(assert (= start!2610 b!15749))

(declare-fun m!10787 () Bool)

(assert (=> start!2610 m!10787))

(declare-fun m!10789 () Bool)

(assert (=> start!2610 m!10789))

(declare-fun m!10791 () Bool)

(assert (=> b!15747 m!10791))

(declare-fun m!10793 () Bool)

(assert (=> b!15748 m!10793))

(declare-fun m!10795 () Bool)

(assert (=> b!15748 m!10795))

(check-sat (not start!2610) (not b!15747) (not b_next!531) (not b!15749) b_and!1013 (not b!15748))
(check-sat b_and!1013 (not b_next!531))
(get-model)

(declare-fun d!2833 () Bool)

(declare-fun res!11862 () Bool)

(declare-fun e!9630 () Bool)

(assert (=> d!2833 (=> res!11862 e!9630)))

(get-info :version)

(assert (=> d!2833 (= res!11862 ((_ is Nil!499) (toList!246 (--!8 lm!238 l!1612))))))

(assert (=> d!2833 (= (forall!129 (toList!246 (--!8 lm!238 l!1612)) p!262) e!9630)))

(declare-fun b!15775 () Bool)

(declare-fun e!9631 () Bool)

(assert (=> b!15775 (= e!9630 e!9631)))

(declare-fun res!11863 () Bool)

(assert (=> b!15775 (=> (not res!11863) (not e!9631))))

(declare-fun dynLambda!116 (Int tuple2!630) Bool)

(assert (=> b!15775 (= res!11863 (dynLambda!116 p!262 (h!1064 (toList!246 (--!8 lm!238 l!1612)))))))

(declare-fun b!15776 () Bool)

(assert (=> b!15776 (= e!9631 (forall!129 (t!2976 (toList!246 (--!8 lm!238 l!1612))) p!262))))

(assert (= (and d!2833 (not res!11862)) b!15775))

(assert (= (and b!15775 res!11863) b!15776))

(declare-fun b_lambda!1119 () Bool)

(assert (=> (not b_lambda!1119) (not b!15775)))

(declare-fun t!2985 () Bool)

(declare-fun tb!469 () Bool)

(assert (=> (and start!2610 (= p!262 p!262) t!2985) tb!469))

(declare-fun result!811 () Bool)

(assert (=> tb!469 (= result!811 true)))

(assert (=> b!15775 t!2985))

(declare-fun b_and!1021 () Bool)

(assert (= b_and!1013 (and (=> t!2985 result!811) b_and!1021)))

(declare-fun m!10815 () Bool)

(assert (=> b!15775 m!10815))

(declare-fun m!10819 () Bool)

(assert (=> b!15776 m!10819))

(assert (=> b!15748 d!2833))

(declare-fun d!2841 () Bool)

(declare-fun c!1492 () Bool)

(assert (=> d!2841 (= c!1492 ((_ is Nil!500) l!1612))))

(declare-fun e!9644 () ListLongMap!461)

(assert (=> d!2841 (= (--!8 lm!238 l!1612) e!9644)))

(declare-fun b!15798 () Bool)

(assert (=> b!15798 (= e!9644 lm!238)))

(declare-fun b!15800 () Bool)

(declare-fun -!27 (ListLongMap!461 (_ BitVec 64)) ListLongMap!461)

(assert (=> b!15800 (= e!9644 (--!8 (-!27 lm!238 (h!1065 l!1612)) (t!2977 l!1612)))))

(assert (= (and d!2841 c!1492) b!15798))

(assert (= (and d!2841 (not c!1492)) b!15800))

(declare-fun m!10831 () Bool)

(assert (=> b!15800 m!10831))

(assert (=> b!15800 m!10831))

(declare-fun m!10835 () Bool)

(assert (=> b!15800 m!10835))

(assert (=> b!15748 d!2841))

(declare-fun d!2847 () Bool)

(assert (=> d!2847 (= (isEmpty!139 l!1612) ((_ is Nil!500) l!1612))))

(assert (=> b!15747 d!2847))

(declare-fun d!2849 () Bool)

(declare-fun res!11868 () Bool)

(declare-fun e!9648 () Bool)

(assert (=> d!2849 (=> res!11868 e!9648)))

(assert (=> d!2849 (= res!11868 ((_ is Nil!499) (toList!246 lm!238)))))

(assert (=> d!2849 (= (forall!129 (toList!246 lm!238) p!262) e!9648)))

(declare-fun b!15804 () Bool)

(declare-fun e!9649 () Bool)

(assert (=> b!15804 (= e!9648 e!9649)))

(declare-fun res!11869 () Bool)

(assert (=> b!15804 (=> (not res!11869) (not e!9649))))

(assert (=> b!15804 (= res!11869 (dynLambda!116 p!262 (h!1064 (toList!246 lm!238))))))

(declare-fun b!15805 () Bool)

(assert (=> b!15805 (= e!9649 (forall!129 (t!2976 (toList!246 lm!238)) p!262))))

(assert (= (and d!2849 (not res!11868)) b!15804))

(assert (= (and b!15804 res!11869) b!15805))

(declare-fun b_lambda!1129 () Bool)

(assert (=> (not b_lambda!1129) (not b!15804)))

(declare-fun t!2991 () Bool)

(declare-fun tb!475 () Bool)

(assert (=> (and start!2610 (= p!262 p!262) t!2991) tb!475))

(declare-fun result!819 () Bool)

(assert (=> tb!475 (= result!819 true)))

(assert (=> b!15804 t!2991))

(declare-fun b_and!1027 () Bool)

(assert (= b_and!1021 (and (=> t!2991 result!819) b_and!1027)))

(declare-fun m!10841 () Bool)

(assert (=> b!15804 m!10841))

(declare-fun m!10843 () Bool)

(assert (=> b!15805 m!10843))

(assert (=> start!2610 d!2849))

(declare-fun d!2853 () Bool)

(declare-fun isStrictlySorted!151 (List!502) Bool)

(assert (=> d!2853 (= (inv!841 lm!238) (isStrictlySorted!151 (toList!246 lm!238)))))

(declare-fun bs!718 () Bool)

(assert (= bs!718 d!2853))

(declare-fun m!10847 () Bool)

(assert (=> bs!718 m!10847))

(assert (=> start!2610 d!2853))

(declare-fun b!15815 () Bool)

(declare-fun e!9655 () Bool)

(declare-fun tp_is_empty!809 () Bool)

(declare-fun tp!2726 () Bool)

(assert (=> b!15815 (= e!9655 (and tp_is_empty!809 tp!2726))))

(assert (=> b!15749 (= tp!2710 e!9655)))

(assert (= (and b!15749 ((_ is Cons!498) (toList!246 lm!238))) b!15815))

(declare-fun b_lambda!1135 () Bool)

(assert (= b_lambda!1129 (or (and start!2610 b_free!531) b_lambda!1135)))

(declare-fun b_lambda!1137 () Bool)

(assert (= b_lambda!1119 (or (and start!2610 b_free!531) b_lambda!1137)))

(check-sat (not d!2853) (not b!15805) (not b!15800) (not b!15815) (not b!15776) (not b_next!531) (not b_lambda!1135) tp_is_empty!809 (not b_lambda!1137) b_and!1027)
(check-sat b_and!1027 (not b_next!531))
