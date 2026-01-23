; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461232 () Bool)

(assert start!461232)

(declare-fun b!4611327 () Bool)

(declare-fun e!2876470 () Bool)

(declare-datatypes ((K!12630 0))(
  ( (K!12631 (val!18375 Int)) )
))
(declare-datatypes ((V!12876 0))(
  ( (V!12877 (val!18376 Int)) )
))
(declare-datatypes ((tuple2!52014 0))(
  ( (tuple2!52015 (_1!29301 K!12630) (_2!29301 V!12876)) )
))
(declare-datatypes ((List!51379 0))(
  ( (Nil!51255) (Cons!51255 (h!57253 tuple2!52014) (t!358373 List!51379)) )
))
(declare-fun oldBucket!40 () List!51379)

(assert (=> b!4611327 (= e!2876470 (not (= oldBucket!40 Nil!51255)))))

(declare-fun b!4611328 () Bool)

(declare-fun res!1930811 () Bool)

(declare-fun e!2876468 () Bool)

(assert (=> b!4611328 (=> (not res!1930811) (not e!2876468))))

(declare-fun newBucket!224 () List!51379)

(declare-fun noDuplicateKeys!1392 (List!51379) Bool)

(assert (=> b!4611328 (= res!1930811 (noDuplicateKeys!1392 newBucket!224))))

(declare-fun b!4611329 () Bool)

(declare-fun res!1930807 () Bool)

(assert (=> b!4611329 (=> (not res!1930807) (not e!2876468))))

(declare-datatypes ((Hashable!5789 0))(
  ( (HashableExt!5788 (__x!31492 Int)) )
))
(declare-fun hashF!1389 () Hashable!5789)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1246 (List!51379 (_ BitVec 64) Hashable!5789) Bool)

(assert (=> b!4611329 (= res!1930807 (allKeysSameHash!1246 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4611330 () Bool)

(declare-fun res!1930814 () Bool)

(assert (=> b!4611330 (=> res!1930814 e!2876470)))

(declare-fun tail!8039 (List!51379) List!51379)

(assert (=> b!4611330 (= res!1930814 (not (= (tail!8039 oldBucket!40) newBucket!224)))))

(declare-fun b!4611332 () Bool)

(declare-fun res!1930813 () Bool)

(declare-fun e!2876469 () Bool)

(assert (=> b!4611332 (=> (not res!1930813) (not e!2876469))))

(assert (=> b!4611332 (= res!1930813 (allKeysSameHash!1246 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4611333 () Bool)

(assert (=> b!4611333 (= e!2876469 (not e!2876470))))

(declare-fun res!1930810 () Bool)

(assert (=> b!4611333 (=> res!1930810 e!2876470)))

(declare-fun key!4968 () K!12630)

(get-info :version)

(assert (=> b!4611333 (= res!1930810 (or (not ((_ is Cons!51255) oldBucket!40)) (not (= (_1!29301 (h!57253 oldBucket!40)) key!4968))))))

(declare-fun e!2876467 () Bool)

(assert (=> b!4611333 e!2876467))

(declare-fun res!1930816 () Bool)

(assert (=> b!4611333 (=> (not res!1930816) (not e!2876467))))

(declare-datatypes ((ListMap!4053 0))(
  ( (ListMap!4054 (toList!4780 List!51379)) )
))
(declare-fun lt!1767216 () ListMap!4053)

(declare-fun lt!1767217 () ListMap!4053)

(declare-fun addToMapMapFromBucket!853 (List!51379 ListMap!4053) ListMap!4053)

(assert (=> b!4611333 (= res!1930816 (= lt!1767217 (addToMapMapFromBucket!853 oldBucket!40 lt!1767216)))))

(declare-datatypes ((tuple2!52016 0))(
  ( (tuple2!52017 (_1!29302 (_ BitVec 64)) (_2!29302 List!51379)) )
))
(declare-datatypes ((List!51380 0))(
  ( (Nil!51256) (Cons!51256 (h!57254 tuple2!52016) (t!358374 List!51380)) )
))
(declare-fun extractMap!1448 (List!51380) ListMap!4053)

(assert (=> b!4611333 (= lt!1767216 (extractMap!1448 Nil!51256))))

(assert (=> b!4611333 true))

(declare-fun b!4611334 () Bool)

(declare-fun res!1930809 () Bool)

(assert (=> b!4611334 (=> (not res!1930809) (not e!2876468))))

(declare-fun removePairForKey!1015 (List!51379 K!12630) List!51379)

(assert (=> b!4611334 (= res!1930809 (= (removePairForKey!1015 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4611335 () Bool)

(declare-fun res!1930815 () Bool)

(assert (=> b!4611335 (=> (not res!1930815) (not e!2876469))))

(declare-fun hash!3333 (Hashable!5789 K!12630) (_ BitVec 64))

(assert (=> b!4611335 (= res!1930815 (= (hash!3333 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611336 () Bool)

(assert (=> b!4611336 (= e!2876468 e!2876469)))

(declare-fun res!1930812 () Bool)

(assert (=> b!4611336 (=> (not res!1930812) (not e!2876469))))

(declare-fun contains!14254 (ListMap!4053 K!12630) Bool)

(assert (=> b!4611336 (= res!1930812 (contains!14254 lt!1767217 key!4968))))

(assert (=> b!4611336 (= lt!1767217 (extractMap!1448 (Cons!51256 (tuple2!52017 hash!414 oldBucket!40) Nil!51256)))))

(declare-fun res!1930808 () Bool)

(assert (=> start!461232 (=> (not res!1930808) (not e!2876468))))

(assert (=> start!461232 (= res!1930808 (noDuplicateKeys!1392 oldBucket!40))))

(assert (=> start!461232 e!2876468))

(assert (=> start!461232 true))

(declare-fun e!2876466 () Bool)

(assert (=> start!461232 e!2876466))

(declare-fun tp_is_empty!28861 () Bool)

(assert (=> start!461232 tp_is_empty!28861))

(declare-fun e!2876465 () Bool)

(assert (=> start!461232 e!2876465))

(declare-fun b!4611331 () Bool)

(assert (=> b!4611331 (= e!2876467 (= lt!1767216 (ListMap!4054 Nil!51255)))))

(declare-fun tp_is_empty!28863 () Bool)

(declare-fun tp!1341215 () Bool)

(declare-fun b!4611337 () Bool)

(assert (=> b!4611337 (= e!2876466 (and tp_is_empty!28861 tp_is_empty!28863 tp!1341215))))

(declare-fun tp!1341214 () Bool)

(declare-fun b!4611338 () Bool)

(assert (=> b!4611338 (= e!2876465 (and tp_is_empty!28861 tp_is_empty!28863 tp!1341214))))

(assert (= (and start!461232 res!1930808) b!4611328))

(assert (= (and b!4611328 res!1930811) b!4611334))

(assert (= (and b!4611334 res!1930809) b!4611329))

(assert (= (and b!4611329 res!1930807) b!4611336))

(assert (= (and b!4611336 res!1930812) b!4611335))

(assert (= (and b!4611335 res!1930815) b!4611332))

(assert (= (and b!4611332 res!1930813) b!4611333))

(assert (= (and b!4611333 res!1930816) b!4611331))

(assert (= (and b!4611333 (not res!1930810)) b!4611330))

(assert (= (and b!4611330 (not res!1930814)) b!4611327))

(assert (= (and start!461232 ((_ is Cons!51255) oldBucket!40)) b!4611337))

(assert (= (and start!461232 ((_ is Cons!51255) newBucket!224)) b!4611338))

(declare-fun m!5442773 () Bool)

(assert (=> b!4611328 m!5442773))

(declare-fun m!5442775 () Bool)

(assert (=> b!4611332 m!5442775))

(declare-fun m!5442777 () Bool)

(assert (=> b!4611336 m!5442777))

(declare-fun m!5442779 () Bool)

(assert (=> b!4611336 m!5442779))

(declare-fun m!5442781 () Bool)

(assert (=> b!4611330 m!5442781))

(declare-fun m!5442783 () Bool)

(assert (=> b!4611335 m!5442783))

(declare-fun m!5442785 () Bool)

(assert (=> start!461232 m!5442785))

(declare-fun m!5442787 () Bool)

(assert (=> b!4611329 m!5442787))

(declare-fun m!5442789 () Bool)

(assert (=> b!4611333 m!5442789))

(declare-fun m!5442791 () Bool)

(assert (=> b!4611333 m!5442791))

(declare-fun m!5442793 () Bool)

(assert (=> b!4611334 m!5442793))

(check-sat (not b!4611337) (not b!4611328) tp_is_empty!28863 (not start!461232) (not b!4611334) (not b!4611332) (not b!4611333) (not b!4611335) (not b!4611338) (not b!4611336) (not b!4611330) tp_is_empty!28861 (not b!4611329))
(check-sat)
