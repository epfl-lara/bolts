; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1614 () Bool)

(assert start!1614)

(declare-fun b_free!457 () Bool)

(declare-fun b_next!457 () Bool)

(assert (=> start!1614 (= b_free!457 (not b_next!457))))

(declare-fun tp!1935 () Bool)

(declare-fun b_and!837 () Bool)

(assert (=> start!1614 (= tp!1935 b_and!837)))

(declare-fun b!11683 () Bool)

(declare-fun res!9686 () Bool)

(declare-fun e!6933 () Bool)

(assert (=> b!11683 (=> (not res!9686) (not e!6933))))

(declare-datatypes ((B!398 0))(
  ( (B!399 (val!294 Int)) )
))
(declare-datatypes ((tuple2!370 0))(
  ( (tuple2!371 (_1!185 (_ BitVec 64)) (_2!185 B!398)) )
))
(declare-datatypes ((List!341 0))(
  ( (Nil!338) (Cons!337 (h!903 tuple2!370) (t!2710 List!341)) )
))
(declare-fun kvs!4 () List!341)

(declare-fun p!216 () Int)

(declare-fun forall!65 (List!341 Int) Bool)

(assert (=> b!11683 (= res!9686 (forall!65 kvs!4 p!216))))

(declare-fun res!9688 () Bool)

(assert (=> start!1614 (=> (not res!9688) (not e!6933))))

(declare-datatypes ((ListLongMap!351 0))(
  ( (ListLongMap!352 (toList!191 List!341)) )
))
(declare-fun lm!227 () ListLongMap!351)

(assert (=> start!1614 (= res!9688 (forall!65 (toList!191 lm!227) p!216))))

(assert (=> start!1614 e!6933))

(declare-fun e!6934 () Bool)

(declare-fun inv!574 (ListLongMap!351) Bool)

(assert (=> start!1614 (and (inv!574 lm!227) e!6934)))

(assert (=> start!1614 tp!1935))

(declare-fun e!6935 () Bool)

(assert (=> start!1614 e!6935))

(declare-fun b!11684 () Bool)

(declare-fun ++!7 (ListLongMap!351 List!341) ListLongMap!351)

(assert (=> b!11684 (= e!6933 (not (forall!65 (toList!191 (++!7 lm!227 kvs!4)) p!216)))))

(declare-fun b!11685 () Bool)

(declare-fun res!9687 () Bool)

(assert (=> b!11685 (=> (not res!9687) (not e!6933))))

(declare-fun isEmpty!72 (List!341) Bool)

(assert (=> b!11685 (= res!9687 (isEmpty!72 kvs!4))))

(declare-fun b!11686 () Bool)

(declare-fun tp_is_empty!571 () Bool)

(declare-fun tp!1937 () Bool)

(assert (=> b!11686 (= e!6935 (and tp_is_empty!571 tp!1937))))

(declare-fun b!11687 () Bool)

(declare-fun tp!1936 () Bool)

(assert (=> b!11687 (= e!6934 tp!1936)))

(assert (= (and start!1614 res!9688) b!11683))

(assert (= (and b!11683 res!9686) b!11685))

(assert (= (and b!11685 res!9687) b!11684))

(assert (= start!1614 b!11687))

(assert (= (and start!1614 (is-Cons!337 kvs!4)) b!11686))

(declare-fun m!8135 () Bool)

(assert (=> b!11683 m!8135))

(declare-fun m!8137 () Bool)

(assert (=> start!1614 m!8137))

(declare-fun m!8139 () Bool)

(assert (=> start!1614 m!8139))

(declare-fun m!8141 () Bool)

(assert (=> b!11684 m!8141))

(declare-fun m!8143 () Bool)

(assert (=> b!11684 m!8143))

(declare-fun m!8145 () Bool)

(assert (=> b!11685 m!8145))

(push 1)

(assert (not b!11686))

(assert (not b_next!457))

(assert (not b!11687))

(assert (not b!11685))

(assert (not start!1614))

(assert (not b!11684))

(assert (not b!11683))

(assert b_and!837)

(assert tp_is_empty!571)

(check-sat)

(pop 1)

(push 1)

(assert b_and!837)

(assert (not b_next!457))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1597 () Bool)

(assert (=> d!1597 (= (isEmpty!72 kvs!4) (is-Nil!338 kvs!4))))

(assert (=> b!11685 d!1597))

(declare-fun d!1601 () Bool)

(declare-fun res!9719 () Bool)

(declare-fun e!6966 () Bool)

(assert (=> d!1601 (=> res!9719 e!6966)))

(assert (=> d!1601 (= res!9719 (is-Nil!338 (toList!191 lm!227)))))

(assert (=> d!1601 (= (forall!65 (toList!191 lm!227) p!216) e!6966)))

(declare-fun b!11730 () Bool)

(declare-fun e!6967 () Bool)

(assert (=> b!11730 (= e!6966 e!6967)))

(declare-fun res!9720 () Bool)

(assert (=> b!11730 (=> (not res!9720) (not e!6967))))

(declare-fun dynLambda!77 (Int tuple2!370) Bool)

(assert (=> b!11730 (= res!9720 (dynLambda!77 p!216 (h!903 (toList!191 lm!227))))))

(declare-fun b!11731 () Bool)

(assert (=> b!11731 (= e!6967 (forall!65 (t!2710 (toList!191 lm!227)) p!216))))

(assert (= (and d!1601 (not res!9719)) b!11730))

(assert (= (and b!11730 res!9720) b!11731))

(declare-fun b_lambda!803 () Bool)

(assert (=> (not b_lambda!803) (not b!11730)))

(declare-fun t!2716 () Bool)

(declare-fun tb!371 () Bool)

(assert (=> (and start!1614 (= p!216 p!216) t!2716) tb!371))

(declare-fun result!551 () Bool)

(assert (=> tb!371 (= result!551 true)))

(assert (=> b!11730 t!2716))

(declare-fun b_and!845 () Bool)

(assert (= b_and!837 (and (=> t!2716 result!551) b_and!845)))

(declare-fun m!8173 () Bool)

(assert (=> b!11730 m!8173))

(declare-fun m!8177 () Bool)

(assert (=> b!11731 m!8177))

(assert (=> start!1614 d!1601))

(declare-fun d!1605 () Bool)

(declare-fun isStrictlySorted!48 (List!341) Bool)

(assert (=> d!1605 (= (inv!574 lm!227) (isStrictlySorted!48 (toList!191 lm!227)))))

(declare-fun bs!444 () Bool)

(assert (= bs!444 d!1605))

(declare-fun m!8187 () Bool)

(assert (=> bs!444 m!8187))

(assert (=> start!1614 d!1605))

(declare-fun d!1613 () Bool)

(declare-fun res!9727 () Bool)

(declare-fun e!6974 () Bool)

(assert (=> d!1613 (=> res!9727 e!6974)))

(assert (=> d!1613 (= res!9727 (is-Nil!338 (toList!191 (++!7 lm!227 kvs!4))))))

(assert (=> d!1613 (= (forall!65 (toList!191 (++!7 lm!227 kvs!4)) p!216) e!6974)))

(declare-fun b!11738 () Bool)

(declare-fun e!6975 () Bool)

(assert (=> b!11738 (= e!6974 e!6975)))

(declare-fun res!9728 () Bool)

(assert (=> b!11738 (=> (not res!9728) (not e!6975))))

(assert (=> b!11738 (= res!9728 (dynLambda!77 p!216 (h!903 (toList!191 (++!7 lm!227 kvs!4)))))))

(declare-fun b!11739 () Bool)

(assert (=> b!11739 (= e!6975 (forall!65 (t!2710 (toList!191 (++!7 lm!227 kvs!4))) p!216))))

(assert (= (and d!1613 (not res!9727)) b!11738))

(assert (= (and b!11738 res!9728) b!11739))

(declare-fun b_lambda!811 () Bool)

(assert (=> (not b_lambda!811) (not b!11738)))

(declare-fun t!2722 () Bool)

(declare-fun tb!377 () Bool)

(assert (=> (and start!1614 (= p!216 p!216) t!2722) tb!377))

(declare-fun result!557 () Bool)

(assert (=> tb!377 (= result!557 true)))

(assert (=> b!11738 t!2722))

(declare-fun b_and!851 () Bool)

(assert (= b_and!845 (and (=> t!2722 result!557) b_and!851)))

(declare-fun m!8191 () Bool)

(assert (=> b!11738 m!8191))

(declare-fun m!8193 () Bool)

(assert (=> b!11739 m!8193))

(assert (=> b!11684 d!1613))

(declare-fun d!1617 () Bool)

(declare-fun c!983 () Bool)

(assert (=> d!1617 (= c!983 (is-Nil!338 kvs!4))))

(declare-fun e!6985 () ListLongMap!351)

(assert (=> d!1617 (= (++!7 lm!227 kvs!4) e!6985)))

(declare-fun b!11754 () Bool)

(assert (=> b!11754 (= e!6985 lm!227)))

(declare-fun b!11755 () Bool)

(declare-fun +!33 (ListLongMap!351 tuple2!370) ListLongMap!351)

(assert (=> b!11755 (= e!6985 (++!7 (+!33 lm!227 (h!903 kvs!4)) (t!2710 kvs!4)))))

(assert (= (and d!1617 c!983) b!11754))

(assert (= (and d!1617 (not c!983)) b!11755))

(declare-fun m!8207 () Bool)

(assert (=> b!11755 m!8207))

(assert (=> b!11755 m!8207))

(declare-fun m!8209 () Bool)

(assert (=> b!11755 m!8209))

(assert (=> b!11684 d!1617))

(declare-fun d!1627 () Bool)

(declare-fun res!9735 () Bool)

(declare-fun e!6990 () Bool)

(assert (=> d!1627 (=> res!9735 e!6990)))

(assert (=> d!1627 (= res!9735 (is-Nil!338 kvs!4))))

(assert (=> d!1627 (= (forall!65 kvs!4 p!216) e!6990)))

(declare-fun b!11762 () Bool)

(declare-fun e!6991 () Bool)

(assert (=> b!11762 (= e!6990 e!6991)))

(declare-fun res!9736 () Bool)

(assert (=> b!11762 (=> (not res!9736) (not e!6991))))

(assert (=> b!11762 (= res!9736 (dynLambda!77 p!216 (h!903 kvs!4)))))

(declare-fun b!11763 () Bool)

(assert (=> b!11763 (= e!6991 (forall!65 (t!2710 kvs!4) p!216))))

(assert (= (and d!1627 (not res!9735)) b!11762))

(assert (= (and b!11762 res!9736) b!11763))

(declare-fun b_lambda!819 () Bool)

(assert (=> (not b_lambda!819) (not b!11762)))

(declare-fun t!2730 () Bool)

(declare-fun tb!385 () Bool)

(assert (=> (and start!1614 (= p!216 p!216) t!2730) tb!385))

(declare-fun result!565 () Bool)

(assert (=> tb!385 (= result!565 true)))

(assert (=> b!11762 t!2730))

(declare-fun b_and!859 () Bool)

(assert (= b_and!851 (and (=> t!2730 result!565) b_and!859)))

(declare-fun m!8215 () Bool)

(assert (=> b!11762 m!8215))

(declare-fun m!8217 () Bool)

(assert (=> b!11763 m!8217))

(assert (=> b!11683 d!1627))

(declare-fun b!11774 () Bool)

(declare-fun e!6997 () Bool)

(declare-fun tp!1958 () Bool)

(assert (=> b!11774 (= e!6997 (and tp_is_empty!571 tp!1958))))

(assert (=> b!11686 (= tp!1937 e!6997)))

(assert (= (and b!11686 (is-Cons!337 (t!2710 kvs!4))) b!11774))

(declare-fun b!11775 () Bool)

(declare-fun e!6998 () Bool)

(declare-fun tp!1961 () Bool)

(assert (=> b!11775 (= e!6998 (and tp_is_empty!571 tp!1961))))

(assert (=> b!11687 (= tp!1936 e!6998)))

(assert (= (and b!11687 (is-Cons!337 (toList!191 lm!227))) b!11775))

(declare-fun b_lambda!821 () Bool)

(assert (= b_lambda!803 (or (and start!1614 b_free!457) b_lambda!821)))

(declare-fun b_lambda!823 () Bool)

(assert (= b_lambda!811 (or (and start!1614 b_free!457) b_lambda!823)))

(declare-fun b_lambda!825 () Bool)

(assert (= b_lambda!819 (or (and start!1614 b_free!457) b_lambda!825)))

(push 1)

