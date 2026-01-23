; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429834 () Bool)

(assert start!429834)

(declare-fun b!4414436 () Bool)

(declare-fun e!2748944 () Bool)

(declare-fun e!2748936 () Bool)

(assert (=> b!4414436 (= e!2748944 e!2748936)))

(declare-fun res!1822885 () Bool)

(assert (=> b!4414436 (=> (not res!1822885) (not e!2748936))))

(declare-fun e!2748938 () Bool)

(assert (=> b!4414436 (= res!1822885 e!2748938)))

(declare-fun res!1822888 () Bool)

(assert (=> b!4414436 (=> res!1822888 e!2748938)))

(declare-fun e!2748942 () Bool)

(assert (=> b!4414436 (= res!1822888 e!2748942)))

(declare-fun res!1822884 () Bool)

(assert (=> b!4414436 (=> (not res!1822884) (not e!2748942))))

(declare-fun lt!1616335 () Bool)

(assert (=> b!4414436 (= res!1822884 (not lt!1616335))))

(declare-fun lt!1616333 () Bool)

(assert (=> b!4414436 (= lt!1616335 (not lt!1616333))))

(declare-datatypes ((V!11016 0))(
  ( (V!11017 (val!16887 Int)) )
))
(declare-datatypes ((K!10770 0))(
  ( (K!10771 (val!16888 Int)) )
))
(declare-datatypes ((tuple2!49094 0))(
  ( (tuple2!49095 (_1!27841 K!10770) (_2!27841 V!11016)) )
))
(declare-datatypes ((List!49537 0))(
  ( (Nil!49413) (Cons!49413 (h!55068 tuple2!49094) (t!356475 List!49537)) )
))
(declare-datatypes ((tuple2!49096 0))(
  ( (tuple2!49097 (_1!27842 (_ BitVec 64)) (_2!27842 List!49537)) )
))
(declare-datatypes ((List!49538 0))(
  ( (Nil!49414) (Cons!49414 (h!55069 tuple2!49096) (t!356476 List!49538)) )
))
(declare-datatypes ((ListLongMap!1995 0))(
  ( (ListLongMap!1996 (toList!3345 List!49538)) )
))
(declare-fun lm!1616 () ListLongMap!1995)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!11859 (ListLongMap!1995 (_ BitVec 64)) Bool)

(assert (=> b!4414436 (= lt!1616333 (contains!11859 lm!1616 hash!366))))

(declare-fun b!4414437 () Bool)

(declare-fun res!1822875 () Bool)

(declare-fun e!2748937 () Bool)

(assert (=> b!4414437 (=> res!1822875 e!2748937)))

(declare-fun lt!1616327 () ListLongMap!1995)

(declare-fun lt!1616334 () tuple2!49096)

(declare-fun head!9158 (List!49538) tuple2!49096)

(assert (=> b!4414437 (= res!1822875 (not (= (head!9158 (toList!3345 lt!1616327)) lt!1616334)))))

(declare-fun b!4414438 () Bool)

(declare-fun res!1822876 () Bool)

(assert (=> b!4414438 (=> res!1822876 e!2748937)))

(declare-fun tail!7167 (List!49538) List!49538)

(assert (=> b!4414438 (= res!1822876 (not (= (tail!7167 (toList!3345 lt!1616327)) (t!356476 (toList!3345 lm!1616)))))))

(declare-fun b!4414439 () Bool)

(declare-fun res!1822889 () Bool)

(assert (=> b!4414439 (=> (not res!1822889) (not e!2748944))))

(declare-datatypes ((Hashable!5073 0))(
  ( (HashableExt!5072 (__x!30776 Int)) )
))
(declare-fun hashF!1220 () Hashable!5073)

(declare-fun allKeysSameHashInMap!785 (ListLongMap!1995 Hashable!5073) Bool)

(assert (=> b!4414439 (= res!1822889 (allKeysSameHashInMap!785 lm!1616 hashF!1220))))

(declare-fun e!2748939 () Bool)

(declare-fun tp_is_empty!25961 () Bool)

(declare-fun b!4414440 () Bool)

(declare-fun tp_is_empty!25963 () Bool)

(declare-fun tp!1332464 () Bool)

(assert (=> b!4414440 (= e!2748939 (and tp_is_empty!25963 tp_is_empty!25961 tp!1332464))))

(declare-fun b!4414441 () Bool)

(declare-fun res!1822887 () Bool)

(assert (=> b!4414441 (=> (not res!1822887) (not e!2748936))))

(declare-fun newBucket!194 () List!49537)

(declare-fun noDuplicateKeys!679 (List!49537) Bool)

(assert (=> b!4414441 (= res!1822887 (noDuplicateKeys!679 newBucket!194))))

(declare-fun newValue!93 () V!11016)

(declare-fun key!3717 () K!10770)

(declare-fun b!4414442 () Bool)

(declare-fun apply!11531 (ListLongMap!1995 (_ BitVec 64)) List!49537)

(assert (=> b!4414442 (= e!2748942 (= newBucket!194 (Cons!49413 (tuple2!49095 key!3717 newValue!93) (apply!11531 lm!1616 hash!366))))))

(declare-fun b!4414443 () Bool)

(declare-fun res!1822879 () Bool)

(assert (=> b!4414443 (=> (not res!1822879) (not e!2748936))))

(declare-fun lambda!151526 () Int)

(declare-fun forall!9456 (List!49538 Int) Bool)

(assert (=> b!4414443 (= res!1822879 (forall!9456 (toList!3345 lm!1616) lambda!151526))))

(declare-fun b!4414444 () Bool)

(declare-fun res!1822886 () Bool)

(assert (=> b!4414444 (=> (not res!1822886) (not e!2748944))))

(declare-fun hash!1988 (Hashable!5073 K!10770) (_ BitVec 64))

(assert (=> b!4414444 (= res!1822886 (= (hash!1988 hashF!1220 key!3717) hash!366))))

(declare-fun b!4414445 () Bool)

(declare-fun res!1822883 () Bool)

(assert (=> b!4414445 (=> (not res!1822883) (not e!2748944))))

(declare-datatypes ((ListMap!2589 0))(
  ( (ListMap!2590 (toList!3346 List!49537)) )
))
(declare-fun contains!11860 (ListMap!2589 K!10770) Bool)

(declare-fun extractMap!740 (List!49538) ListMap!2589)

(assert (=> b!4414445 (= res!1822883 (not (contains!11860 (extractMap!740 (toList!3345 lm!1616)) key!3717)))))

(declare-fun res!1822881 () Bool)

(assert (=> start!429834 (=> (not res!1822881) (not e!2748944))))

(assert (=> start!429834 (= res!1822881 (forall!9456 (toList!3345 lm!1616) lambda!151526))))

(assert (=> start!429834 e!2748944))

(assert (=> start!429834 tp_is_empty!25961))

(assert (=> start!429834 tp_is_empty!25963))

(assert (=> start!429834 e!2748939))

(declare-fun e!2748943 () Bool)

(declare-fun inv!64956 (ListLongMap!1995) Bool)

(assert (=> start!429834 (and (inv!64956 lm!1616) e!2748943)))

(assert (=> start!429834 true))

(declare-fun b!4414446 () Bool)

(declare-fun e!2748940 () Bool)

(declare-fun e!2748941 () Bool)

(assert (=> b!4414446 (= e!2748940 e!2748941)))

(declare-fun res!1822877 () Bool)

(assert (=> b!4414446 (=> res!1822877 e!2748941)))

(declare-fun lt!1616328 () tuple2!49094)

(declare-fun lt!1616332 () List!49537)

(assert (=> b!4414446 (= res!1822877 (not (= newBucket!194 (Cons!49413 lt!1616328 lt!1616332))))))

(assert (=> b!4414446 (= lt!1616332 (apply!11531 lm!1616 hash!366))))

(assert (=> b!4414446 (= lt!1616328 (tuple2!49095 key!3717 newValue!93))))

(declare-fun b!4414447 () Bool)

(assert (=> b!4414447 (= e!2748937 e!2748940)))

(declare-fun res!1822880 () Bool)

(assert (=> b!4414447 (=> res!1822880 e!2748940)))

(declare-fun lt!1616330 () ListMap!2589)

(declare-fun addToMapMapFromBucket!333 (List!49537 ListMap!2589) ListMap!2589)

(assert (=> b!4414447 (= res!1822880 (not (= (extractMap!740 (toList!3345 lt!1616327)) (addToMapMapFromBucket!333 newBucket!194 lt!1616330))))))

(assert (=> b!4414447 (= lt!1616330 (extractMap!740 (t!356476 (toList!3345 lm!1616))))))

(declare-fun b!4414448 () Bool)

(assert (=> b!4414448 (= e!2748936 (not e!2748937))))

(declare-fun res!1822874 () Bool)

(assert (=> b!4414448 (=> res!1822874 e!2748937)))

(assert (=> b!4414448 (= res!1822874 (not (forall!9456 (toList!3345 lt!1616327) lambda!151526)))))

(assert (=> b!4414448 (forall!9456 (toList!3345 lt!1616327) lambda!151526)))

(declare-fun +!958 (ListLongMap!1995 tuple2!49096) ListLongMap!1995)

(assert (=> b!4414448 (= lt!1616327 (+!958 lm!1616 lt!1616334))))

(assert (=> b!4414448 (= lt!1616334 (tuple2!49097 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80655 0))(
  ( (Unit!80656) )
))
(declare-fun lt!1616331 () Unit!80655)

(declare-fun addValidProp!323 (ListLongMap!1995 Int (_ BitVec 64) List!49537) Unit!80655)

(assert (=> b!4414448 (= lt!1616331 (addValidProp!323 lm!1616 lambda!151526 hash!366 newBucket!194))))

(declare-fun b!4414449 () Bool)

(declare-fun res!1822878 () Bool)

(assert (=> b!4414449 (=> res!1822878 e!2748937)))

(get-info :version)

(assert (=> b!4414449 (= res!1822878 (or (not ((_ is Cons!49414) (toList!3345 lm!1616))) (not (= (_1!27842 (h!55069 (toList!3345 lm!1616))) hash!366)) lt!1616335))))

(declare-fun b!4414450 () Bool)

(declare-fun tp!1332463 () Bool)

(assert (=> b!4414450 (= e!2748943 tp!1332463)))

(declare-fun b!4414451 () Bool)

(assert (=> b!4414451 (= e!2748938 (and (not lt!1616333) (= newBucket!194 (Cons!49413 (tuple2!49095 key!3717 newValue!93) Nil!49413))))))

(declare-fun b!4414452 () Bool)

(declare-fun res!1822882 () Bool)

(assert (=> b!4414452 (=> (not res!1822882) (not e!2748944))))

(declare-fun allKeysSameHash!639 (List!49537 (_ BitVec 64) Hashable!5073) Bool)

(assert (=> b!4414452 (= res!1822882 (allKeysSameHash!639 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4414453 () Bool)

(assert (=> b!4414453 (= e!2748941 true)))

(declare-fun lt!1616329 () ListMap!2589)

(declare-fun +!959 (ListMap!2589 tuple2!49094) ListMap!2589)

(assert (=> b!4414453 (= lt!1616329 (addToMapMapFromBucket!333 lt!1616332 (+!959 lt!1616330 lt!1616328)))))

(assert (= (and start!429834 res!1822881) b!4414439))

(assert (= (and b!4414439 res!1822889) b!4414444))

(assert (= (and b!4414444 res!1822886) b!4414452))

(assert (= (and b!4414452 res!1822882) b!4414445))

(assert (= (and b!4414445 res!1822883) b!4414436))

(assert (= (and b!4414436 res!1822884) b!4414442))

(assert (= (and b!4414436 (not res!1822888)) b!4414451))

(assert (= (and b!4414436 res!1822885) b!4414441))

(assert (= (and b!4414441 res!1822887) b!4414443))

(assert (= (and b!4414443 res!1822879) b!4414448))

(assert (= (and b!4414448 (not res!1822874)) b!4414449))

(assert (= (and b!4414449 (not res!1822878)) b!4414437))

(assert (= (and b!4414437 (not res!1822875)) b!4414438))

(assert (= (and b!4414438 (not res!1822876)) b!4414447))

(assert (= (and b!4414447 (not res!1822880)) b!4414446))

(assert (= (and b!4414446 (not res!1822877)) b!4414453))

(assert (= (and start!429834 ((_ is Cons!49413) newBucket!194)) b!4414440))

(assert (= start!429834 b!4414450))

(declare-fun m!5090163 () Bool)

(assert (=> start!429834 m!5090163))

(declare-fun m!5090165 () Bool)

(assert (=> start!429834 m!5090165))

(declare-fun m!5090167 () Bool)

(assert (=> b!4414439 m!5090167))

(declare-fun m!5090169 () Bool)

(assert (=> b!4414448 m!5090169))

(assert (=> b!4414448 m!5090169))

(declare-fun m!5090171 () Bool)

(assert (=> b!4414448 m!5090171))

(declare-fun m!5090173 () Bool)

(assert (=> b!4414448 m!5090173))

(declare-fun m!5090175 () Bool)

(assert (=> b!4414453 m!5090175))

(assert (=> b!4414453 m!5090175))

(declare-fun m!5090177 () Bool)

(assert (=> b!4414453 m!5090177))

(assert (=> b!4414443 m!5090163))

(declare-fun m!5090179 () Bool)

(assert (=> b!4414452 m!5090179))

(declare-fun m!5090181 () Bool)

(assert (=> b!4414444 m!5090181))

(declare-fun m!5090183 () Bool)

(assert (=> b!4414445 m!5090183))

(assert (=> b!4414445 m!5090183))

(declare-fun m!5090185 () Bool)

(assert (=> b!4414445 m!5090185))

(declare-fun m!5090187 () Bool)

(assert (=> b!4414438 m!5090187))

(declare-fun m!5090189 () Bool)

(assert (=> b!4414447 m!5090189))

(declare-fun m!5090191 () Bool)

(assert (=> b!4414447 m!5090191))

(declare-fun m!5090193 () Bool)

(assert (=> b!4414447 m!5090193))

(declare-fun m!5090195 () Bool)

(assert (=> b!4414437 m!5090195))

(declare-fun m!5090197 () Bool)

(assert (=> b!4414441 m!5090197))

(declare-fun m!5090199 () Bool)

(assert (=> b!4414442 m!5090199))

(declare-fun m!5090201 () Bool)

(assert (=> b!4414436 m!5090201))

(assert (=> b!4414446 m!5090199))

(check-sat (not b!4414443) (not b!4414439) (not b!4414447) (not b!4414448) (not b!4414436) (not b!4414453) (not b!4414442) (not b!4414446) (not b!4414445) (not b!4414450) (not b!4414438) (not b!4414437) (not b!4414444) tp_is_empty!25963 (not b!4414452) (not b!4414441) (not start!429834) tp_is_empty!25961 (not b!4414440))
(check-sat)
