; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434332 () Bool)

(assert start!434332)

(declare-fun b!4439861 () Bool)

(declare-fun e!2764533 () Bool)

(declare-fun e!2764538 () Bool)

(assert (=> b!4439861 (= e!2764533 e!2764538)))

(declare-fun res!1838081 () Bool)

(assert (=> b!4439861 (=> (not res!1838081) (not e!2764538))))

(declare-fun e!2764530 () Bool)

(assert (=> b!4439861 (= res!1838081 e!2764530)))

(declare-fun res!1838075 () Bool)

(assert (=> b!4439861 (=> res!1838075 e!2764530)))

(declare-fun e!2764529 () Bool)

(assert (=> b!4439861 (= res!1838075 e!2764529)))

(declare-fun res!1838066 () Bool)

(assert (=> b!4439861 (=> (not res!1838066) (not e!2764529))))

(declare-fun lt!1636190 () Bool)

(assert (=> b!4439861 (= res!1838066 (not lt!1636190))))

(declare-fun lt!1636201 () Bool)

(assert (=> b!4439861 (= lt!1636190 (not lt!1636201))))

(declare-datatypes ((V!11376 0))(
  ( (V!11377 (val!17175 Int)) )
))
(declare-datatypes ((K!11130 0))(
  ( (K!11131 (val!17176 Int)) )
))
(declare-datatypes ((tuple2!49670 0))(
  ( (tuple2!49671 (_1!28129 K!11130) (_2!28129 V!11376)) )
))
(declare-datatypes ((List!49888 0))(
  ( (Nil!49764) (Cons!49764 (h!55485 tuple2!49670) (t!356830 List!49888)) )
))
(declare-datatypes ((tuple2!49672 0))(
  ( (tuple2!49673 (_1!28130 (_ BitVec 64)) (_2!28130 List!49888)) )
))
(declare-datatypes ((List!49889 0))(
  ( (Nil!49765) (Cons!49765 (h!55486 tuple2!49672) (t!356831 List!49889)) )
))
(declare-datatypes ((ListLongMap!2283 0))(
  ( (ListLongMap!2284 (toList!3633 List!49889)) )
))
(declare-fun lm!1616 () ListLongMap!2283)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12330 (ListLongMap!2283 (_ BitVec 64)) Bool)

(assert (=> b!4439861 (= lt!1636201 (contains!12330 lm!1616 hash!366))))

(declare-fun b!4439862 () Bool)

(declare-fun e!2764540 () Bool)

(declare-fun e!2764537 () Bool)

(assert (=> b!4439862 (= e!2764540 e!2764537)))

(declare-fun res!1838073 () Bool)

(assert (=> b!4439862 (=> res!1838073 e!2764537)))

(declare-fun newBucket!194 () List!49888)

(declare-fun lt!1636189 () tuple2!49670)

(declare-fun lt!1636200 () List!49888)

(assert (=> b!4439862 (= res!1838073 (not (= newBucket!194 (Cons!49764 lt!1636189 lt!1636200))))))

(declare-fun apply!11675 (ListLongMap!2283 (_ BitVec 64)) List!49888)

(assert (=> b!4439862 (= lt!1636200 (apply!11675 lm!1616 hash!366))))

(declare-fun key!3717 () K!11130)

(declare-fun newValue!93 () V!11376)

(assert (=> b!4439862 (= lt!1636189 (tuple2!49671 key!3717 newValue!93))))

(declare-fun b!4439863 () Bool)

(declare-fun res!1838064 () Bool)

(declare-fun e!2764535 () Bool)

(assert (=> b!4439863 (=> res!1838064 e!2764535)))

(declare-datatypes ((ListMap!2877 0))(
  ( (ListMap!2878 (toList!3634 List!49888)) )
))
(declare-fun lt!1636191 () ListMap!2877)

(declare-fun lt!1636195 () ListMap!2877)

(declare-fun eq!447 (ListMap!2877 ListMap!2877) Bool)

(assert (=> b!4439863 (= res!1838064 (not (eq!447 lt!1636191 lt!1636195)))))

(declare-fun b!4439864 () Bool)

(declare-fun res!1838080 () Bool)

(assert (=> b!4439864 (=> (not res!1838080) (not e!2764538))))

(declare-fun noDuplicateKeys!823 (List!49888) Bool)

(assert (=> b!4439864 (= res!1838080 (noDuplicateKeys!823 newBucket!194))))

(declare-fun b!4439865 () Bool)

(declare-fun res!1838078 () Bool)

(declare-fun e!2764539 () Bool)

(assert (=> b!4439865 (=> res!1838078 e!2764539)))

(declare-fun lt!1636194 () ListLongMap!2283)

(declare-fun tail!7355 (List!49889) List!49889)

(assert (=> b!4439865 (= res!1838078 (not (= (tail!7355 (toList!3633 lt!1636194)) (t!356831 (toList!3633 lm!1616)))))))

(declare-fun b!4439866 () Bool)

(declare-fun e!2764534 () Bool)

(assert (=> b!4439866 (= e!2764534 e!2764533)))

(declare-fun res!1838072 () Bool)

(assert (=> b!4439866 (=> (not res!1838072) (not e!2764533))))

(declare-fun lt!1636202 () ListMap!2877)

(declare-fun contains!12331 (ListMap!2877 K!11130) Bool)

(assert (=> b!4439866 (= res!1838072 (not (contains!12331 lt!1636202 key!3717)))))

(declare-fun extractMap!884 (List!49889) ListMap!2877)

(assert (=> b!4439866 (= lt!1636202 (extractMap!884 (toList!3633 lm!1616)))))

(declare-fun b!4439867 () Bool)

(assert (=> b!4439867 (= e!2764535 true)))

(declare-fun lt!1636192 () Bool)

(declare-fun +!1204 (ListMap!2877 tuple2!49670) ListMap!2877)

(assert (=> b!4439867 (= lt!1636192 (eq!447 lt!1636191 (+!1204 lt!1636202 lt!1636189)))))

(declare-fun b!4439869 () Bool)

(declare-fun e!2764536 () Bool)

(assert (=> b!4439869 (= e!2764536 e!2764535)))

(declare-fun res!1838063 () Bool)

(assert (=> b!4439869 (=> res!1838063 e!2764535)))

(declare-fun lt!1636198 () ListMap!2877)

(assert (=> b!4439869 (= res!1838063 (not (eq!447 lt!1636198 lt!1636195)))))

(declare-fun lt!1636197 () ListMap!2877)

(assert (=> b!4439869 (eq!447 lt!1636197 lt!1636195)))

(declare-fun lt!1636203 () ListMap!2877)

(declare-fun addToMapMapFromBucket!441 (List!49888 ListMap!2877) ListMap!2877)

(assert (=> b!4439869 (= lt!1636195 (+!1204 (addToMapMapFromBucket!441 lt!1636200 lt!1636203) lt!1636189))))

(declare-datatypes ((Unit!83846 0))(
  ( (Unit!83847) )
))
(declare-fun lt!1636196 () Unit!83846)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!210 (ListMap!2877 K!11130 V!11376 List!49888) Unit!83846)

(assert (=> b!4439869 (= lt!1636196 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!210 lt!1636203 key!3717 newValue!93 lt!1636200))))

(declare-fun b!4439870 () Bool)

(assert (=> b!4439870 (= e!2764529 (= newBucket!194 (Cons!49764 (tuple2!49671 key!3717 newValue!93) (apply!11675 lm!1616 hash!366))))))

(declare-fun e!2764531 () Bool)

(declare-fun tp_is_empty!26537 () Bool)

(declare-fun b!4439871 () Bool)

(declare-fun tp!1334045 () Bool)

(declare-fun tp_is_empty!26539 () Bool)

(assert (=> b!4439871 (= e!2764531 (and tp_is_empty!26539 tp_is_empty!26537 tp!1334045))))

(declare-fun b!4439872 () Bool)

(declare-fun res!1838069 () Bool)

(assert (=> b!4439872 (=> res!1838069 e!2764539)))

(get-info :version)

(assert (=> b!4439872 (= res!1838069 (or (not ((_ is Cons!49765) (toList!3633 lm!1616))) (not (= (_1!28130 (h!55486 (toList!3633 lm!1616))) hash!366)) lt!1636190))))

(declare-fun b!4439873 () Bool)

(declare-fun res!1838067 () Bool)

(assert (=> b!4439873 (=> (not res!1838067) (not e!2764534))))

(declare-datatypes ((Hashable!5217 0))(
  ( (HashableExt!5216 (__x!30920 Int)) )
))
(declare-fun hashF!1220 () Hashable!5217)

(declare-fun allKeysSameHash!783 (List!49888 (_ BitVec 64) Hashable!5217) Bool)

(assert (=> b!4439873 (= res!1838067 (allKeysSameHash!783 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4439874 () Bool)

(declare-fun res!1838079 () Bool)

(assert (=> b!4439874 (=> (not res!1838079) (not e!2764534))))

(declare-fun allKeysSameHashInMap!929 (ListLongMap!2283 Hashable!5217) Bool)

(assert (=> b!4439874 (= res!1838079 (allKeysSameHashInMap!929 lm!1616 hashF!1220))))

(declare-fun b!4439875 () Bool)

(assert (=> b!4439875 (= e!2764537 e!2764536)))

(declare-fun res!1838068 () Bool)

(assert (=> b!4439875 (=> res!1838068 e!2764536)))

(assert (=> b!4439875 (= res!1838068 (not (= lt!1636198 lt!1636197)))))

(assert (=> b!4439875 (= lt!1636197 (addToMapMapFromBucket!441 lt!1636200 (+!1204 lt!1636203 lt!1636189)))))

(declare-fun b!4439876 () Bool)

(declare-fun e!2764532 () Bool)

(declare-fun tp!1334046 () Bool)

(assert (=> b!4439876 (= e!2764532 tp!1334046)))

(declare-fun b!4439877 () Bool)

(assert (=> b!4439877 (= e!2764530 (and (not lt!1636201) (= newBucket!194 (Cons!49764 (tuple2!49671 key!3717 newValue!93) Nil!49764))))))

(declare-fun b!4439878 () Bool)

(declare-fun res!1838070 () Bool)

(assert (=> b!4439878 (=> (not res!1838070) (not e!2764534))))

(declare-fun hash!2273 (Hashable!5217 K!11130) (_ BitVec 64))

(assert (=> b!4439878 (= res!1838070 (= (hash!2273 hashF!1220 key!3717) hash!366))))

(declare-fun b!4439879 () Bool)

(assert (=> b!4439879 (= e!2764538 (not e!2764539))))

(declare-fun res!1838065 () Bool)

(assert (=> b!4439879 (=> res!1838065 e!2764539)))

(declare-fun lambda!157070 () Int)

(declare-fun forall!9686 (List!49889 Int) Bool)

(assert (=> b!4439879 (= res!1838065 (not (forall!9686 (toList!3633 lt!1636194) lambda!157070)))))

(assert (=> b!4439879 (forall!9686 (toList!3633 lt!1636194) lambda!157070)))

(declare-fun lt!1636199 () tuple2!49672)

(declare-fun +!1205 (ListLongMap!2283 tuple2!49672) ListLongMap!2283)

(assert (=> b!4439879 (= lt!1636194 (+!1205 lm!1616 lt!1636199))))

(assert (=> b!4439879 (= lt!1636199 (tuple2!49673 hash!366 newBucket!194))))

(declare-fun lt!1636193 () Unit!83846)

(declare-fun addValidProp!461 (ListLongMap!2283 Int (_ BitVec 64) List!49888) Unit!83846)

(assert (=> b!4439879 (= lt!1636193 (addValidProp!461 lm!1616 lambda!157070 hash!366 newBucket!194))))

(declare-fun b!4439880 () Bool)

(assert (=> b!4439880 (= e!2764539 e!2764540)))

(declare-fun res!1838076 () Bool)

(assert (=> b!4439880 (=> res!1838076 e!2764540)))

(assert (=> b!4439880 (= res!1838076 (not (= lt!1636191 lt!1636198)))))

(assert (=> b!4439880 (= lt!1636198 (addToMapMapFromBucket!441 newBucket!194 lt!1636203))))

(assert (=> b!4439880 (= lt!1636191 (extractMap!884 (toList!3633 lt!1636194)))))

(assert (=> b!4439880 (= lt!1636203 (extractMap!884 (t!356831 (toList!3633 lm!1616))))))

(declare-fun b!4439881 () Bool)

(declare-fun res!1838074 () Bool)

(assert (=> b!4439881 (=> res!1838074 e!2764539)))

(declare-fun head!9286 (List!49889) tuple2!49672)

(assert (=> b!4439881 (= res!1838074 (not (= (head!9286 (toList!3633 lt!1636194)) lt!1636199)))))

(declare-fun res!1838071 () Bool)

(assert (=> start!434332 (=> (not res!1838071) (not e!2764534))))

(assert (=> start!434332 (= res!1838071 (forall!9686 (toList!3633 lm!1616) lambda!157070))))

(assert (=> start!434332 e!2764534))

(assert (=> start!434332 tp_is_empty!26537))

(assert (=> start!434332 tp_is_empty!26539))

(assert (=> start!434332 e!2764531))

(declare-fun inv!65316 (ListLongMap!2283) Bool)

(assert (=> start!434332 (and (inv!65316 lm!1616) e!2764532)))

(assert (=> start!434332 true))

(declare-fun b!4439868 () Bool)

(declare-fun res!1838077 () Bool)

(assert (=> b!4439868 (=> (not res!1838077) (not e!2764538))))

(assert (=> b!4439868 (= res!1838077 (forall!9686 (toList!3633 lm!1616) lambda!157070))))

(assert (= (and start!434332 res!1838071) b!4439874))

(assert (= (and b!4439874 res!1838079) b!4439878))

(assert (= (and b!4439878 res!1838070) b!4439873))

(assert (= (and b!4439873 res!1838067) b!4439866))

(assert (= (and b!4439866 res!1838072) b!4439861))

(assert (= (and b!4439861 res!1838066) b!4439870))

(assert (= (and b!4439861 (not res!1838075)) b!4439877))

(assert (= (and b!4439861 res!1838081) b!4439864))

(assert (= (and b!4439864 res!1838080) b!4439868))

(assert (= (and b!4439868 res!1838077) b!4439879))

(assert (= (and b!4439879 (not res!1838065)) b!4439872))

(assert (= (and b!4439872 (not res!1838069)) b!4439881))

(assert (= (and b!4439881 (not res!1838074)) b!4439865))

(assert (= (and b!4439865 (not res!1838078)) b!4439880))

(assert (= (and b!4439880 (not res!1838076)) b!4439862))

(assert (= (and b!4439862 (not res!1838073)) b!4439875))

(assert (= (and b!4439875 (not res!1838068)) b!4439869))

(assert (= (and b!4439869 (not res!1838063)) b!4439863))

(assert (= (and b!4439863 (not res!1838064)) b!4439867))

(assert (= (and start!434332 ((_ is Cons!49764) newBucket!194)) b!4439871))

(assert (= start!434332 b!4439876))

(declare-fun m!5128463 () Bool)

(assert (=> b!4439867 m!5128463))

(assert (=> b!4439867 m!5128463))

(declare-fun m!5128465 () Bool)

(assert (=> b!4439867 m!5128465))

(declare-fun m!5128467 () Bool)

(assert (=> b!4439863 m!5128467))

(declare-fun m!5128469 () Bool)

(assert (=> b!4439866 m!5128469))

(declare-fun m!5128471 () Bool)

(assert (=> b!4439866 m!5128471))

(declare-fun m!5128473 () Bool)

(assert (=> b!4439875 m!5128473))

(assert (=> b!4439875 m!5128473))

(declare-fun m!5128475 () Bool)

(assert (=> b!4439875 m!5128475))

(declare-fun m!5128477 () Bool)

(assert (=> b!4439862 m!5128477))

(assert (=> b!4439870 m!5128477))

(declare-fun m!5128479 () Bool)

(assert (=> b!4439868 m!5128479))

(declare-fun m!5128481 () Bool)

(assert (=> b!4439880 m!5128481))

(declare-fun m!5128483 () Bool)

(assert (=> b!4439880 m!5128483))

(declare-fun m!5128485 () Bool)

(assert (=> b!4439880 m!5128485))

(declare-fun m!5128487 () Bool)

(assert (=> b!4439865 m!5128487))

(assert (=> start!434332 m!5128479))

(declare-fun m!5128489 () Bool)

(assert (=> start!434332 m!5128489))

(declare-fun m!5128491 () Bool)

(assert (=> b!4439873 m!5128491))

(declare-fun m!5128493 () Bool)

(assert (=> b!4439879 m!5128493))

(assert (=> b!4439879 m!5128493))

(declare-fun m!5128495 () Bool)

(assert (=> b!4439879 m!5128495))

(declare-fun m!5128497 () Bool)

(assert (=> b!4439879 m!5128497))

(declare-fun m!5128499 () Bool)

(assert (=> b!4439869 m!5128499))

(declare-fun m!5128501 () Bool)

(assert (=> b!4439869 m!5128501))

(declare-fun m!5128503 () Bool)

(assert (=> b!4439869 m!5128503))

(declare-fun m!5128505 () Bool)

(assert (=> b!4439869 m!5128505))

(declare-fun m!5128507 () Bool)

(assert (=> b!4439869 m!5128507))

(assert (=> b!4439869 m!5128503))

(declare-fun m!5128509 () Bool)

(assert (=> b!4439864 m!5128509))

(declare-fun m!5128511 () Bool)

(assert (=> b!4439874 m!5128511))

(declare-fun m!5128513 () Bool)

(assert (=> b!4439878 m!5128513))

(declare-fun m!5128515 () Bool)

(assert (=> b!4439881 m!5128515))

(declare-fun m!5128517 () Bool)

(assert (=> b!4439861 m!5128517))

(check-sat (not b!4439873) (not b!4439868) (not b!4439878) (not b!4439871) (not b!4439880) (not b!4439874) (not b!4439870) tp_is_empty!26537 (not b!4439879) (not b!4439869) (not b!4439866) (not b!4439861) tp_is_empty!26539 (not b!4439875) (not b!4439863) (not b!4439862) (not start!434332) (not b!4439865) (not b!4439876) (not b!4439881) (not b!4439864) (not b!4439867))
(check-sat)
