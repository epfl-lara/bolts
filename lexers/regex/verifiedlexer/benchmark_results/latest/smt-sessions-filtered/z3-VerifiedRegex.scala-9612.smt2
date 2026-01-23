; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!505312 () Bool)

(assert start!505312)

(declare-fun b!4848123 () Bool)

(declare-fun e!3030365 () Bool)

(declare-fun e!3030366 () Bool)

(assert (=> b!4848123 (= e!3030365 (not e!3030366))))

(declare-fun res!2068638 () Bool)

(assert (=> b!4848123 (=> res!2068638 e!3030366)))

(declare-datatypes ((K!17349 0))(
  ( (K!17350 (val!22185 Int)) )
))
(declare-datatypes ((V!17595 0))(
  ( (V!17596 (val!22186 Int)) )
))
(declare-datatypes ((tuple2!59242 0))(
  ( (tuple2!59243 (_1!32915 K!17349) (_2!32915 V!17595)) )
))
(declare-datatypes ((List!55678 0))(
  ( (Nil!55554) (Cons!55554 (h!61991 tuple2!59242) (t!363174 List!55678)) )
))
(declare-fun lt!1988880 () List!55678)

(declare-fun key!6445 () K!17349)

(declare-datatypes ((Option!13669 0))(
  ( (None!13668) (Some!13668 (v!49432 tuple2!59242)) )
))
(declare-fun isDefined!10761 (Option!13669) Bool)

(declare-fun getPair!1088 (List!55678 K!17349) Option!13669)

(assert (=> b!4848123 (= res!2068638 (not (isDefined!10761 (getPair!1088 lt!1988880 key!6445))))))

(declare-fun lambda!242538 () Int)

(declare-datatypes ((tuple2!59244 0))(
  ( (tuple2!59245 (_1!32916 (_ BitVec 64)) (_2!32916 List!55678)) )
))
(declare-datatypes ((List!55679 0))(
  ( (Nil!55555) (Cons!55555 (h!61992 tuple2!59244) (t!363175 List!55679)) )
))
(declare-datatypes ((ListLongMap!6459 0))(
  ( (ListLongMap!6460 (toList!7858 List!55679)) )
))
(declare-fun lm!2646 () ListLongMap!6459)

(declare-fun lt!1988882 () tuple2!59244)

(declare-datatypes ((Unit!145688 0))(
  ( (Unit!145689) )
))
(declare-fun lt!1988878 () Unit!145688)

(declare-fun forallContained!4539 (List!55679 Int tuple2!59244) Unit!145688)

(assert (=> b!4848123 (= lt!1988878 (forallContained!4539 (toList!7858 lm!2646) lambda!242538 lt!1988882))))

(declare-fun contains!19209 (List!55679 tuple2!59244) Bool)

(assert (=> b!4848123 (contains!19209 (toList!7858 lm!2646) lt!1988882)))

(declare-fun lt!1988881 () (_ BitVec 64))

(assert (=> b!4848123 (= lt!1988882 (tuple2!59245 lt!1988881 lt!1988880))))

(declare-fun lt!1988879 () Unit!145688)

(declare-fun lemmaGetValueImpliesTupleContained!765 (ListLongMap!6459 (_ BitVec 64) List!55678) Unit!145688)

(assert (=> b!4848123 (= lt!1988879 (lemmaGetValueImpliesTupleContained!765 lm!2646 lt!1988881 lt!1988880))))

(declare-fun apply!13441 (ListLongMap!6459 (_ BitVec 64)) List!55678)

(assert (=> b!4848123 (= lt!1988880 (apply!13441 lm!2646 lt!1988881))))

(declare-fun b!4848124 () Bool)

(declare-fun e!3030364 () Bool)

(assert (=> b!4848124 (= e!3030364 e!3030365)))

(declare-fun res!2068639 () Bool)

(assert (=> b!4848124 (=> (not res!2068639) (not e!3030365))))

(declare-fun contains!19210 (ListLongMap!6459 (_ BitVec 64)) Bool)

(assert (=> b!4848124 (= res!2068639 (contains!19210 lm!2646 lt!1988881))))

(declare-datatypes ((Hashable!7498 0))(
  ( (HashableExt!7497 (__x!33773 Int)) )
))
(declare-fun hashF!1641 () Hashable!7498)

(declare-fun hash!5586 (Hashable!7498 K!17349) (_ BitVec 64))

(assert (=> b!4848124 (= lt!1988881 (hash!5586 hashF!1641 key!6445))))

(declare-fun b!4848125 () Bool)

(declare-fun e!3030363 () Bool)

(declare-fun tp!1364640 () Bool)

(assert (=> b!4848125 (= e!3030363 tp!1364640)))

(declare-fun res!2068641 () Bool)

(assert (=> start!505312 (=> (not res!2068641) (not e!3030364))))

(declare-fun forall!12951 (List!55679 Int) Bool)

(assert (=> start!505312 (= res!2068641 (forall!12951 (toList!7858 lm!2646) lambda!242538))))

(assert (=> start!505312 e!3030364))

(declare-fun inv!71235 (ListLongMap!6459) Bool)

(assert (=> start!505312 (and (inv!71235 lm!2646) e!3030363)))

(assert (=> start!505312 true))

(declare-fun tp_is_empty!35183 () Bool)

(assert (=> start!505312 tp_is_empty!35183))

(declare-fun b!4848126 () Bool)

(assert (=> b!4848126 (= e!3030366 true)))

(declare-fun b!4848127 () Bool)

(declare-fun res!2068640 () Bool)

(assert (=> b!4848127 (=> (not res!2068640) (not e!3030364))))

(declare-fun allKeysSameHashInMap!2814 (ListLongMap!6459 Hashable!7498) Bool)

(assert (=> b!4848127 (= res!2068640 (allKeysSameHashInMap!2814 lm!2646 hashF!1641))))

(assert (= (and start!505312 res!2068641) b!4848127))

(assert (= (and b!4848127 res!2068640) b!4848124))

(assert (= (and b!4848124 res!2068639) b!4848123))

(assert (= (and b!4848123 (not res!2068638)) b!4848126))

(assert (= start!505312 b!4848125))

(declare-fun m!5846194 () Bool)

(assert (=> b!4848123 m!5846194))

(declare-fun m!5846196 () Bool)

(assert (=> b!4848123 m!5846196))

(declare-fun m!5846198 () Bool)

(assert (=> b!4848123 m!5846198))

(declare-fun m!5846200 () Bool)

(assert (=> b!4848123 m!5846200))

(assert (=> b!4848123 m!5846198))

(declare-fun m!5846202 () Bool)

(assert (=> b!4848123 m!5846202))

(declare-fun m!5846204 () Bool)

(assert (=> b!4848123 m!5846204))

(declare-fun m!5846206 () Bool)

(assert (=> b!4848124 m!5846206))

(declare-fun m!5846208 () Bool)

(assert (=> b!4848124 m!5846208))

(declare-fun m!5846210 () Bool)

(assert (=> start!505312 m!5846210))

(declare-fun m!5846212 () Bool)

(assert (=> start!505312 m!5846212))

(declare-fun m!5846214 () Bool)

(assert (=> b!4848127 m!5846214))

(check-sat (not b!4848123) (not b!4848124) (not b!4848125) (not b!4848127) tp_is_empty!35183 (not start!505312))
(check-sat)
