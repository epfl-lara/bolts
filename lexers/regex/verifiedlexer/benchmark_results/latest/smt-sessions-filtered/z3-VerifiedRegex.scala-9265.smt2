; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!491898 () Bool)

(assert start!491898)

(declare-fun res!2032441 () Bool)

(declare-fun e!2987587 () Bool)

(assert (=> start!491898 (=> (not res!2032441) (not e!2987587))))

(declare-datatypes ((K!15614 0))(
  ( (K!15615 (val!20797 Int)) )
))
(declare-datatypes ((V!15860 0))(
  ( (V!15861 (val!20798 Int)) )
))
(declare-datatypes ((tuple2!56568 0))(
  ( (tuple2!56569 (_1!31578 K!15614) (_2!31578 V!15860)) )
))
(declare-datatypes ((List!54177 0))(
  ( (Nil!54053) (Cons!54053 (h!60473 tuple2!56568) (t!361627 List!54177)) )
))
(declare-datatypes ((tuple2!56570 0))(
  ( (tuple2!56571 (_1!31579 (_ BitVec 64)) (_2!31579 List!54177)) )
))
(declare-datatypes ((List!54178 0))(
  ( (Nil!54054) (Cons!54054 (h!60474 tuple2!56570) (t!361628 List!54178)) )
))
(declare-datatypes ((ListLongMap!5201 0))(
  ( (ListLongMap!5202 (toList!6779 List!54178)) )
))
(declare-fun lm!2473 () ListLongMap!5201)

(declare-fun lambda!229055 () Int)

(declare-fun forall!12150 (List!54178 Int) Bool)

(assert (=> start!491898 (= res!2032441 (forall!12150 (toList!6779 lm!2473) lambda!229055))))

(assert (=> start!491898 e!2987587))

(declare-fun e!2987588 () Bool)

(declare-fun inv!69640 (ListLongMap!5201) Bool)

(assert (=> start!491898 (and (inv!69640 lm!2473) e!2987588)))

(assert (=> start!491898 true))

(declare-fun tp_is_empty!33295 () Bool)

(assert (=> start!491898 tp_is_empty!33295))

(declare-fun b!4785059 () Bool)

(declare-fun tp!1357612 () Bool)

(assert (=> b!4785059 (= e!2987588 tp!1357612)))

(declare-fun b!4785060 () Bool)

(declare-fun res!2032444 () Bool)

(assert (=> b!4785060 (=> (not res!2032444) (not e!2987587))))

(declare-fun key!5896 () K!15614)

(declare-datatypes ((ListMap!6251 0))(
  ( (ListMap!6252 (toList!6780 List!54177)) )
))
(declare-fun contains!17619 (ListMap!6251 K!15614) Bool)

(declare-fun extractMap!2377 (List!54178) ListMap!6251)

(assert (=> b!4785060 (= res!2032444 (contains!17619 (extractMap!2377 (toList!6779 lm!2473)) key!5896))))

(declare-fun e!2987586 () Bool)

(declare-fun b!4785061 () Bool)

(declare-fun lt!1946850 () (_ BitVec 64))

(declare-datatypes ((Option!12982 0))(
  ( (None!12981) (Some!12981 (v!48230 tuple2!56568)) )
))
(declare-fun isDefined!10125 (Option!12982) Bool)

(declare-fun getPair!822 (List!54177 K!15614) Option!12982)

(declare-fun apply!12905 (ListLongMap!5201 (_ BitVec 64)) List!54177)

(assert (=> b!4785061 (= e!2987586 (isDefined!10125 (getPair!822 (apply!12905 lm!2473 lt!1946850) key!5896)))))

(declare-fun b!4785062 () Bool)

(declare-fun res!2032443 () Bool)

(declare-fun e!2987590 () Bool)

(assert (=> b!4785062 (=> res!2032443 e!2987590)))

(declare-fun lt!1946852 () Bool)

(assert (=> b!4785062 (= res!2032443 lt!1946852)))

(declare-fun b!4785063 () Bool)

(declare-fun e!2987589 () Bool)

(assert (=> b!4785063 (= e!2987590 e!2987589)))

(declare-fun res!2032442 () Bool)

(assert (=> b!4785063 (=> res!2032442 e!2987589)))

(declare-fun lt!1946855 () List!54177)

(assert (=> b!4785063 (= res!2032442 (not (isDefined!10125 (getPair!822 lt!1946855 key!5896))))))

(declare-datatypes ((Unit!139455 0))(
  ( (Unit!139456) )
))
(declare-fun lt!1946853 () Unit!139455)

(declare-fun lt!1946851 () tuple2!56570)

(declare-fun forallContained!4094 (List!54178 Int tuple2!56570) Unit!139455)

(assert (=> b!4785063 (= lt!1946853 (forallContained!4094 (toList!6779 lm!2473) lambda!229055 lt!1946851))))

(declare-fun contains!17620 (List!54178 tuple2!56570) Bool)

(assert (=> b!4785063 (contains!17620 (toList!6779 lm!2473) lt!1946851)))

(assert (=> b!4785063 (= lt!1946851 (tuple2!56571 lt!1946850 lt!1946855))))

(declare-fun lt!1946849 () Unit!139455)

(declare-fun lemmaGetValueImpliesTupleContained!629 (ListLongMap!5201 (_ BitVec 64) List!54177) Unit!139455)

(assert (=> b!4785063 (= lt!1946849 (lemmaGetValueImpliesTupleContained!629 lm!2473 lt!1946850 lt!1946855))))

(assert (=> b!4785063 (= lt!1946855 (apply!12905 lm!2473 lt!1946850))))

(declare-fun b!4785064 () Bool)

(assert (=> b!4785064 (= e!2987589 true)))

(declare-fun b!4785065 () Bool)

(assert (=> b!4785065 (= e!2987587 (not e!2987590))))

(declare-fun res!2032445 () Bool)

(assert (=> b!4785065 (=> res!2032445 e!2987590)))

(assert (=> b!4785065 (= res!2032445 (not (forall!12150 (toList!6779 lm!2473) lambda!229055)))))

(assert (=> b!4785065 e!2987586))

(declare-fun res!2032446 () Bool)

(assert (=> b!4785065 (=> (not res!2032446) (not e!2987586))))

(assert (=> b!4785065 (= res!2032446 (not lt!1946852))))

(declare-fun contains!17621 (ListLongMap!5201 (_ BitVec 64)) Bool)

(assert (=> b!4785065 (= lt!1946852 (not (contains!17621 lm!2473 lt!1946850)))))

(declare-datatypes ((Hashable!6850 0))(
  ( (HashableExt!6849 (__x!32873 Int)) )
))
(declare-fun hashF!1559 () Hashable!6850)

(declare-fun hash!4866 (Hashable!6850 K!15614) (_ BitVec 64))

(assert (=> b!4785065 (= lt!1946850 (hash!4866 hashF!1559 key!5896))))

(declare-fun lt!1946854 () Unit!139455)

(declare-fun lemmaInGenericMapThenInLongMap!254 (ListLongMap!5201 K!15614 Hashable!6850) Unit!139455)

(assert (=> b!4785065 (= lt!1946854 (lemmaInGenericMapThenInLongMap!254 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4785066 () Bool)

(declare-fun res!2032440 () Bool)

(assert (=> b!4785066 (=> (not res!2032440) (not e!2987587))))

(declare-fun allKeysSameHashInMap!2255 (ListLongMap!5201 Hashable!6850) Bool)

(assert (=> b!4785066 (= res!2032440 (allKeysSameHashInMap!2255 lm!2473 hashF!1559))))

(assert (= (and start!491898 res!2032441) b!4785066))

(assert (= (and b!4785066 res!2032440) b!4785060))

(assert (= (and b!4785060 res!2032444) b!4785065))

(assert (= (and b!4785065 res!2032446) b!4785061))

(assert (= (and b!4785065 (not res!2032445)) b!4785062))

(assert (= (and b!4785062 (not res!2032443)) b!4785063))

(assert (= (and b!4785063 (not res!2032442)) b!4785064))

(assert (= start!491898 b!4785059))

(declare-fun m!5764018 () Bool)

(assert (=> b!4785066 m!5764018))

(declare-fun m!5764020 () Bool)

(assert (=> b!4785063 m!5764020))

(declare-fun m!5764022 () Bool)

(assert (=> b!4785063 m!5764022))

(declare-fun m!5764024 () Bool)

(assert (=> b!4785063 m!5764024))

(assert (=> b!4785063 m!5764024))

(declare-fun m!5764026 () Bool)

(assert (=> b!4785063 m!5764026))

(declare-fun m!5764028 () Bool)

(assert (=> b!4785063 m!5764028))

(declare-fun m!5764030 () Bool)

(assert (=> b!4785063 m!5764030))

(declare-fun m!5764032 () Bool)

(assert (=> b!4785060 m!5764032))

(assert (=> b!4785060 m!5764032))

(declare-fun m!5764034 () Bool)

(assert (=> b!4785060 m!5764034))

(declare-fun m!5764036 () Bool)

(assert (=> b!4785065 m!5764036))

(declare-fun m!5764038 () Bool)

(assert (=> b!4785065 m!5764038))

(declare-fun m!5764040 () Bool)

(assert (=> b!4785065 m!5764040))

(declare-fun m!5764042 () Bool)

(assert (=> b!4785065 m!5764042))

(assert (=> b!4785061 m!5764020))

(assert (=> b!4785061 m!5764020))

(declare-fun m!5764044 () Bool)

(assert (=> b!4785061 m!5764044))

(assert (=> b!4785061 m!5764044))

(declare-fun m!5764046 () Bool)

(assert (=> b!4785061 m!5764046))

(assert (=> start!491898 m!5764036))

(declare-fun m!5764048 () Bool)

(assert (=> start!491898 m!5764048))

(check-sat (not b!4785063) (not b!4785066) (not start!491898) (not b!4785060) (not b!4785065) (not b!4785061) tp_is_empty!33295 (not b!4785059))
(check-sat)
