; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430170 () Bool)

(assert start!430170)

(declare-fun e!2750320 () Bool)

(declare-fun tp!1332679 () Bool)

(declare-fun tp_is_empty!26059 () Bool)

(declare-fun b!4416868 () Bool)

(declare-fun tp_is_empty!26057 () Bool)

(assert (=> b!4416868 (= e!2750320 (and tp_is_empty!26059 tp_is_empty!26057 tp!1332679))))

(declare-fun b!4416869 () Bool)

(declare-fun e!2750318 () Bool)

(declare-fun e!2750311 () Bool)

(assert (=> b!4416869 (= e!2750318 e!2750311)))

(declare-fun res!1824674 () Bool)

(assert (=> b!4416869 (=> (not res!1824674) (not e!2750311))))

(declare-fun e!2750315 () Bool)

(assert (=> b!4416869 (= res!1824674 e!2750315)))

(declare-fun res!1824667 () Bool)

(assert (=> b!4416869 (=> res!1824667 e!2750315)))

(declare-fun e!2750313 () Bool)

(assert (=> b!4416869 (= res!1824667 e!2750313)))

(declare-fun res!1824659 () Bool)

(assert (=> b!4416869 (=> (not res!1824659) (not e!2750313))))

(declare-fun lt!1618690 () Bool)

(assert (=> b!4416869 (= res!1824659 (not lt!1618690))))

(declare-fun lt!1618688 () Bool)

(assert (=> b!4416869 (= lt!1618690 (not lt!1618688))))

(declare-datatypes ((V!11076 0))(
  ( (V!11077 (val!16935 Int)) )
))
(declare-datatypes ((K!10830 0))(
  ( (K!10831 (val!16936 Int)) )
))
(declare-datatypes ((tuple2!49190 0))(
  ( (tuple2!49191 (_1!27889 K!10830) (_2!27889 V!11076)) )
))
(declare-datatypes ((List!49593 0))(
  ( (Nil!49469) (Cons!49469 (h!55132 tuple2!49190) (t!356531 List!49593)) )
))
(declare-datatypes ((tuple2!49192 0))(
  ( (tuple2!49193 (_1!27890 (_ BitVec 64)) (_2!27890 List!49593)) )
))
(declare-datatypes ((List!49594 0))(
  ( (Nil!49470) (Cons!49470 (h!55133 tuple2!49192) (t!356532 List!49594)) )
))
(declare-datatypes ((ListLongMap!2043 0))(
  ( (ListLongMap!2044 (toList!3393 List!49594)) )
))
(declare-fun lm!1616 () ListLongMap!2043)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!11931 (ListLongMap!2043 (_ BitVec 64)) Bool)

(assert (=> b!4416869 (= lt!1618688 (contains!11931 lm!1616 hash!366))))

(declare-fun b!4416870 () Bool)

(declare-fun e!2750316 () Bool)

(declare-fun e!2750312 () Bool)

(assert (=> b!4416870 (= e!2750316 e!2750312)))

(declare-fun res!1824662 () Bool)

(assert (=> b!4416870 (=> res!1824662 e!2750312)))

(declare-fun lt!1618692 () tuple2!49190)

(declare-fun newBucket!194 () List!49593)

(declare-fun lt!1618686 () List!49593)

(assert (=> b!4416870 (= res!1824662 (not (= newBucket!194 (Cons!49469 lt!1618692 lt!1618686))))))

(declare-fun apply!11555 (ListLongMap!2043 (_ BitVec 64)) List!49593)

(assert (=> b!4416870 (= lt!1618686 (apply!11555 lm!1616 hash!366))))

(declare-fun key!3717 () K!10830)

(declare-fun newValue!93 () V!11076)

(assert (=> b!4416870 (= lt!1618692 (tuple2!49191 key!3717 newValue!93))))

(declare-fun b!4416871 () Bool)

(declare-fun e!2750319 () Bool)

(declare-fun e!2750317 () Bool)

(assert (=> b!4416871 (= e!2750319 e!2750317)))

(declare-fun res!1824666 () Bool)

(assert (=> b!4416871 (=> res!1824666 e!2750317)))

(declare-datatypes ((ListMap!2637 0))(
  ( (ListMap!2638 (toList!3394 List!49593)) )
))
(declare-fun lt!1618699 () ListMap!2637)

(declare-fun lt!1618697 () ListMap!2637)

(declare-fun eq!379 (ListMap!2637 ListMap!2637) Bool)

(assert (=> b!4416871 (= res!1824666 (not (eq!379 lt!1618699 lt!1618697)))))

(declare-fun lt!1618696 () ListMap!2637)

(assert (=> b!4416871 (eq!379 lt!1618696 lt!1618697)))

(declare-fun lt!1618693 () ListMap!2637)

(declare-fun +!1006 (ListMap!2637 tuple2!49190) ListMap!2637)

(declare-fun addToMapMapFromBucket!357 (List!49593 ListMap!2637) ListMap!2637)

(assert (=> b!4416871 (= lt!1618697 (+!1006 (addToMapMapFromBucket!357 lt!1618686 lt!1618693) lt!1618692))))

(declare-datatypes ((Unit!80991 0))(
  ( (Unit!80992) )
))
(declare-fun lt!1618695 () Unit!80991)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!174 (ListMap!2637 K!10830 V!11076 List!49593) Unit!80991)

(assert (=> b!4416871 (= lt!1618695 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!174 lt!1618693 key!3717 newValue!93 lt!1618686))))

(declare-fun b!4416872 () Bool)

(declare-fun e!2750309 () Bool)

(declare-fun tp!1332680 () Bool)

(assert (=> b!4416872 (= e!2750309 tp!1332680)))

(declare-fun b!4416873 () Bool)

(assert (=> b!4416873 (= e!2750313 (= newBucket!194 (Cons!49469 (tuple2!49191 key!3717 newValue!93) (apply!11555 lm!1616 hash!366))))))

(declare-fun b!4416875 () Bool)

(declare-fun e!2750314 () Bool)

(assert (=> b!4416875 (= e!2750311 (not e!2750314))))

(declare-fun res!1824676 () Bool)

(assert (=> b!4416875 (=> res!1824676 e!2750314)))

(declare-fun lt!1618691 () ListLongMap!2043)

(declare-fun lambda!152178 () Int)

(declare-fun forall!9488 (List!49594 Int) Bool)

(assert (=> b!4416875 (= res!1824676 (not (forall!9488 (toList!3393 lt!1618691) lambda!152178)))))

(assert (=> b!4416875 (forall!9488 (toList!3393 lt!1618691) lambda!152178)))

(declare-fun lt!1618689 () tuple2!49192)

(declare-fun +!1007 (ListLongMap!2043 tuple2!49192) ListLongMap!2043)

(assert (=> b!4416875 (= lt!1618691 (+!1007 lm!1616 lt!1618689))))

(assert (=> b!4416875 (= lt!1618689 (tuple2!49193 hash!366 newBucket!194))))

(declare-fun lt!1618687 () Unit!80991)

(declare-fun addValidProp!347 (ListLongMap!2043 Int (_ BitVec 64) List!49593) Unit!80991)

(assert (=> b!4416875 (= lt!1618687 (addValidProp!347 lm!1616 lambda!152178 hash!366 newBucket!194))))

(declare-fun b!4416876 () Bool)

(declare-fun res!1824665 () Bool)

(assert (=> b!4416876 (=> res!1824665 e!2750317)))

(declare-fun lt!1618694 () ListMap!2637)

(assert (=> b!4416876 (= res!1824665 (not (eq!379 lt!1618694 lt!1618697)))))

(declare-fun b!4416877 () Bool)

(assert (=> b!4416877 (= e!2750312 e!2750319)))

(declare-fun res!1824672 () Bool)

(assert (=> b!4416877 (=> res!1824672 e!2750319)))

(assert (=> b!4416877 (= res!1824672 (not (= lt!1618699 lt!1618696)))))

(assert (=> b!4416877 (= lt!1618696 (addToMapMapFromBucket!357 lt!1618686 (+!1006 lt!1618693 lt!1618692)))))

(declare-fun b!4416878 () Bool)

(declare-fun res!1824669 () Bool)

(declare-fun e!2750310 () Bool)

(assert (=> b!4416878 (=> (not res!1824669) (not e!2750310))))

(declare-datatypes ((Hashable!5097 0))(
  ( (HashableExt!5096 (__x!30800 Int)) )
))
(declare-fun hashF!1220 () Hashable!5097)

(declare-fun hash!2020 (Hashable!5097 K!10830) (_ BitVec 64))

(assert (=> b!4416878 (= res!1824669 (= (hash!2020 hashF!1220 key!3717) hash!366))))

(declare-fun b!4416879 () Bool)

(declare-fun res!1824673 () Bool)

(assert (=> b!4416879 (=> res!1824673 e!2750314)))

(declare-fun head!9182 (List!49594) tuple2!49192)

(assert (=> b!4416879 (= res!1824673 (not (= (head!9182 (toList!3393 lt!1618691)) lt!1618689)))))

(declare-fun b!4416880 () Bool)

(assert (=> b!4416880 (= e!2750314 e!2750316)))

(declare-fun res!1824660 () Bool)

(assert (=> b!4416880 (=> res!1824660 e!2750316)))

(assert (=> b!4416880 (= res!1824660 (not (= lt!1618694 lt!1618699)))))

(assert (=> b!4416880 (= lt!1618699 (addToMapMapFromBucket!357 newBucket!194 lt!1618693))))

(declare-fun extractMap!764 (List!49594) ListMap!2637)

(assert (=> b!4416880 (= lt!1618694 (extractMap!764 (toList!3393 lt!1618691)))))

(assert (=> b!4416880 (= lt!1618693 (extractMap!764 (t!356532 (toList!3393 lm!1616))))))

(declare-fun b!4416881 () Bool)

(declare-fun res!1824658 () Bool)

(assert (=> b!4416881 (=> (not res!1824658) (not e!2750311))))

(assert (=> b!4416881 (= res!1824658 (forall!9488 (toList!3393 lm!1616) lambda!152178))))

(declare-fun b!4416882 () Bool)

(assert (=> b!4416882 (= e!2750310 e!2750318)))

(declare-fun res!1824663 () Bool)

(assert (=> b!4416882 (=> (not res!1824663) (not e!2750318))))

(declare-fun lt!1618698 () ListMap!2637)

(declare-fun contains!11932 (ListMap!2637 K!10830) Bool)

(assert (=> b!4416882 (= res!1824663 (not (contains!11932 lt!1618698 key!3717)))))

(assert (=> b!4416882 (= lt!1618698 (extractMap!764 (toList!3393 lm!1616)))))

(declare-fun b!4416883 () Bool)

(declare-fun res!1824668 () Bool)

(assert (=> b!4416883 (=> (not res!1824668) (not e!2750310))))

(declare-fun allKeysSameHashInMap!809 (ListLongMap!2043 Hashable!5097) Bool)

(assert (=> b!4416883 (= res!1824668 (allKeysSameHashInMap!809 lm!1616 hashF!1220))))

(declare-fun b!4416884 () Bool)

(declare-fun res!1824661 () Bool)

(assert (=> b!4416884 (=> res!1824661 e!2750314)))

(declare-fun tail!7191 (List!49594) List!49594)

(assert (=> b!4416884 (= res!1824661 (not (= (tail!7191 (toList!3393 lt!1618691)) (t!356532 (toList!3393 lm!1616)))))))

(declare-fun b!4416885 () Bool)

(assert (=> b!4416885 (= e!2750317 (forall!9488 (toList!3393 lm!1616) lambda!152178))))

(declare-fun b!4416886 () Bool)

(declare-fun res!1824664 () Bool)

(assert (=> b!4416886 (=> res!1824664 e!2750317)))

(assert (=> b!4416886 (= res!1824664 (not (eq!379 lt!1618694 (+!1006 lt!1618698 lt!1618692))))))

(declare-fun b!4416887 () Bool)

(declare-fun res!1824670 () Bool)

(assert (=> b!4416887 (=> res!1824670 e!2750314)))

(get-info :version)

(assert (=> b!4416887 (= res!1824670 (or (not ((_ is Cons!49470) (toList!3393 lm!1616))) (not (= (_1!27890 (h!55133 (toList!3393 lm!1616))) hash!366)) lt!1618690))))

(declare-fun b!4416874 () Bool)

(declare-fun res!1824675 () Bool)

(assert (=> b!4416874 (=> (not res!1824675) (not e!2750310))))

(declare-fun allKeysSameHash!663 (List!49593 (_ BitVec 64) Hashable!5097) Bool)

(assert (=> b!4416874 (= res!1824675 (allKeysSameHash!663 newBucket!194 hash!366 hashF!1220))))

(declare-fun res!1824671 () Bool)

(assert (=> start!430170 (=> (not res!1824671) (not e!2750310))))

(assert (=> start!430170 (= res!1824671 (forall!9488 (toList!3393 lm!1616) lambda!152178))))

(assert (=> start!430170 e!2750310))

(assert (=> start!430170 tp_is_empty!26057))

(assert (=> start!430170 tp_is_empty!26059))

(assert (=> start!430170 e!2750320))

(declare-fun inv!65016 (ListLongMap!2043) Bool)

(assert (=> start!430170 (and (inv!65016 lm!1616) e!2750309)))

(assert (=> start!430170 true))

(declare-fun b!4416888 () Bool)

(assert (=> b!4416888 (= e!2750315 (and (not lt!1618688) (= newBucket!194 (Cons!49469 (tuple2!49191 key!3717 newValue!93) Nil!49469))))))

(declare-fun b!4416889 () Bool)

(declare-fun res!1824677 () Bool)

(assert (=> b!4416889 (=> (not res!1824677) (not e!2750311))))

(declare-fun noDuplicateKeys!703 (List!49593) Bool)

(assert (=> b!4416889 (= res!1824677 (noDuplicateKeys!703 newBucket!194))))

(assert (= (and start!430170 res!1824671) b!4416883))

(assert (= (and b!4416883 res!1824668) b!4416878))

(assert (= (and b!4416878 res!1824669) b!4416874))

(assert (= (and b!4416874 res!1824675) b!4416882))

(assert (= (and b!4416882 res!1824663) b!4416869))

(assert (= (and b!4416869 res!1824659) b!4416873))

(assert (= (and b!4416869 (not res!1824667)) b!4416888))

(assert (= (and b!4416869 res!1824674) b!4416889))

(assert (= (and b!4416889 res!1824677) b!4416881))

(assert (= (and b!4416881 res!1824658) b!4416875))

(assert (= (and b!4416875 (not res!1824676)) b!4416887))

(assert (= (and b!4416887 (not res!1824670)) b!4416879))

(assert (= (and b!4416879 (not res!1824673)) b!4416884))

(assert (= (and b!4416884 (not res!1824661)) b!4416880))

(assert (= (and b!4416880 (not res!1824660)) b!4416870))

(assert (= (and b!4416870 (not res!1824662)) b!4416877))

(assert (= (and b!4416877 (not res!1824672)) b!4416871))

(assert (= (and b!4416871 (not res!1824666)) b!4416876))

(assert (= (and b!4416876 (not res!1824665)) b!4416886))

(assert (= (and b!4416886 (not res!1824664)) b!4416885))

(assert (= (and start!430170 ((_ is Cons!49469) newBucket!194)) b!4416868))

(assert (= start!430170 b!4416872))

(declare-fun m!5093293 () Bool)

(assert (=> b!4416884 m!5093293))

(declare-fun m!5093295 () Bool)

(assert (=> b!4416870 m!5093295))

(declare-fun m!5093297 () Bool)

(assert (=> b!4416876 m!5093297))

(declare-fun m!5093299 () Bool)

(assert (=> b!4416871 m!5093299))

(declare-fun m!5093301 () Bool)

(assert (=> b!4416871 m!5093301))

(declare-fun m!5093303 () Bool)

(assert (=> b!4416871 m!5093303))

(declare-fun m!5093305 () Bool)

(assert (=> b!4416871 m!5093305))

(assert (=> b!4416871 m!5093299))

(declare-fun m!5093307 () Bool)

(assert (=> b!4416871 m!5093307))

(declare-fun m!5093309 () Bool)

(assert (=> b!4416879 m!5093309))

(declare-fun m!5093311 () Bool)

(assert (=> b!4416869 m!5093311))

(declare-fun m!5093313 () Bool)

(assert (=> b!4416883 m!5093313))

(declare-fun m!5093315 () Bool)

(assert (=> b!4416877 m!5093315))

(assert (=> b!4416877 m!5093315))

(declare-fun m!5093317 () Bool)

(assert (=> b!4416877 m!5093317))

(declare-fun m!5093319 () Bool)

(assert (=> b!4416882 m!5093319))

(declare-fun m!5093321 () Bool)

(assert (=> b!4416882 m!5093321))

(declare-fun m!5093323 () Bool)

(assert (=> b!4416880 m!5093323))

(declare-fun m!5093325 () Bool)

(assert (=> b!4416880 m!5093325))

(declare-fun m!5093327 () Bool)

(assert (=> b!4416880 m!5093327))

(declare-fun m!5093329 () Bool)

(assert (=> b!4416886 m!5093329))

(assert (=> b!4416886 m!5093329))

(declare-fun m!5093331 () Bool)

(assert (=> b!4416886 m!5093331))

(assert (=> b!4416873 m!5093295))

(declare-fun m!5093333 () Bool)

(assert (=> b!4416874 m!5093333))

(declare-fun m!5093335 () Bool)

(assert (=> b!4416885 m!5093335))

(declare-fun m!5093337 () Bool)

(assert (=> b!4416875 m!5093337))

(assert (=> b!4416875 m!5093337))

(declare-fun m!5093339 () Bool)

(assert (=> b!4416875 m!5093339))

(declare-fun m!5093341 () Bool)

(assert (=> b!4416875 m!5093341))

(assert (=> b!4416881 m!5093335))

(declare-fun m!5093343 () Bool)

(assert (=> b!4416889 m!5093343))

(declare-fun m!5093345 () Bool)

(assert (=> b!4416878 m!5093345))

(assert (=> start!430170 m!5093335))

(declare-fun m!5093347 () Bool)

(assert (=> start!430170 m!5093347))

(check-sat (not b!4416882) (not b!4416877) (not b!4416878) (not b!4416873) tp_is_empty!26059 (not b!4416869) (not b!4416874) (not b!4416889) (not b!4416872) (not b!4416876) (not b!4416886) (not b!4416875) (not b!4416884) (not b!4416871) (not b!4416880) (not b!4416870) (not start!430170) (not b!4416879) (not b!4416881) (not b!4416883) (not b!4416885) (not b!4416868) tp_is_empty!26057)
(check-sat)
