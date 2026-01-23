; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461324 () Bool)

(assert start!461324)

(declare-fun b!4612051 () Bool)

(declare-fun e!2876891 () Bool)

(declare-fun e!2876889 () Bool)

(assert (=> b!4612051 (= e!2876891 e!2876889)))

(declare-fun res!1931256 () Bool)

(assert (=> b!4612051 (=> res!1931256 e!2876889)))

(declare-datatypes ((K!12655 0))(
  ( (K!12656 (val!18395 Int)) )
))
(declare-datatypes ((V!12901 0))(
  ( (V!12902 (val!18396 Int)) )
))
(declare-datatypes ((tuple2!52054 0))(
  ( (tuple2!52055 (_1!29321 K!12655) (_2!29321 V!12901)) )
))
(declare-datatypes ((List!51403 0))(
  ( (Nil!51279) (Cons!51279 (h!57281 tuple2!52054) (t!358397 List!51403)) )
))
(declare-fun lt!1767685 () List!51403)

(declare-fun newBucket!224 () List!51403)

(assert (=> b!4612051 (= res!1931256 (not (= lt!1767685 newBucket!224)))))

(declare-fun oldBucket!40 () List!51403)

(declare-fun tail!8049 (List!51403) List!51403)

(assert (=> b!4612051 (= lt!1767685 (tail!8049 oldBucket!40))))

(declare-fun res!1931248 () Bool)

(declare-fun e!2876894 () Bool)

(assert (=> start!461324 (=> (not res!1931248) (not e!2876894))))

(declare-fun noDuplicateKeys!1402 (List!51403) Bool)

(assert (=> start!461324 (= res!1931248 (noDuplicateKeys!1402 oldBucket!40))))

(assert (=> start!461324 e!2876894))

(assert (=> start!461324 true))

(declare-fun e!2876893 () Bool)

(assert (=> start!461324 e!2876893))

(declare-fun tp_is_empty!28901 () Bool)

(assert (=> start!461324 tp_is_empty!28901))

(declare-fun e!2876890 () Bool)

(assert (=> start!461324 e!2876890))

(declare-fun tp!1341291 () Bool)

(declare-fun tp_is_empty!28903 () Bool)

(declare-fun b!4612052 () Bool)

(assert (=> b!4612052 (= e!2876893 (and tp_is_empty!28901 tp_is_empty!28903 tp!1341291))))

(declare-fun b!4612053 () Bool)

(declare-fun tp!1341290 () Bool)

(assert (=> b!4612053 (= e!2876890 (and tp_is_empty!28901 tp_is_empty!28903 tp!1341290))))

(declare-fun b!4612054 () Bool)

(declare-fun e!2876892 () Bool)

(assert (=> b!4612054 (= e!2876892 (not e!2876891))))

(declare-fun res!1931250 () Bool)

(assert (=> b!4612054 (=> res!1931250 e!2876891)))

(declare-fun key!4968 () K!12655)

(get-info :version)

(assert (=> b!4612054 (= res!1931250 (or (not ((_ is Cons!51279) oldBucket!40)) (not (= (_1!29321 (h!57281 oldBucket!40)) key!4968))))))

(declare-fun e!2876888 () Bool)

(assert (=> b!4612054 e!2876888))

(declare-fun res!1931249 () Bool)

(assert (=> b!4612054 (=> (not res!1931249) (not e!2876888))))

(declare-datatypes ((ListMap!4073 0))(
  ( (ListMap!4074 (toList!4790 List!51403)) )
))
(declare-fun lt!1767689 () ListMap!4073)

(declare-fun lt!1767686 () ListMap!4073)

(declare-fun addToMapMapFromBucket!863 (List!51403 ListMap!4073) ListMap!4073)

(assert (=> b!4612054 (= res!1931249 (= lt!1767689 (addToMapMapFromBucket!863 oldBucket!40 lt!1767686)))))

(declare-datatypes ((tuple2!52056 0))(
  ( (tuple2!52057 (_1!29322 (_ BitVec 64)) (_2!29322 List!51403)) )
))
(declare-datatypes ((List!51404 0))(
  ( (Nil!51280) (Cons!51280 (h!57282 tuple2!52056) (t!358398 List!51404)) )
))
(declare-fun extractMap!1458 (List!51404) ListMap!4073)

(assert (=> b!4612054 (= lt!1767686 (extractMap!1458 Nil!51280))))

(assert (=> b!4612054 true))

(declare-fun b!4612055 () Bool)

(declare-fun res!1931252 () Bool)

(assert (=> b!4612055 (=> (not res!1931252) (not e!2876894))))

(declare-datatypes ((Hashable!5799 0))(
  ( (HashableExt!5798 (__x!31502 Int)) )
))
(declare-fun hashF!1389 () Hashable!5799)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1256 (List!51403 (_ BitVec 64) Hashable!5799) Bool)

(assert (=> b!4612055 (= res!1931252 (allKeysSameHash!1256 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612056 () Bool)

(assert (=> b!4612056 (= e!2876894 e!2876892)))

(declare-fun res!1931255 () Bool)

(assert (=> b!4612056 (=> (not res!1931255) (not e!2876892))))

(declare-fun contains!14268 (ListMap!4073 K!12655) Bool)

(assert (=> b!4612056 (= res!1931255 (contains!14268 lt!1767689 key!4968))))

(assert (=> b!4612056 (= lt!1767689 (extractMap!1458 (Cons!51280 (tuple2!52057 hash!414 oldBucket!40) Nil!51280)))))

(declare-fun b!4612057 () Bool)

(assert (=> b!4612057 (= e!2876889 true)))

(declare-fun lt!1767688 () ListMap!4073)

(assert (=> b!4612057 (= lt!1767688 (extractMap!1458 (Cons!51280 (tuple2!52057 hash!414 newBucket!224) Nil!51280)))))

(declare-fun lt!1767687 () ListMap!4073)

(assert (=> b!4612057 (= lt!1767687 (extractMap!1458 (Cons!51280 (tuple2!52057 hash!414 lt!1767685) Nil!51280)))))

(declare-fun b!4612058 () Bool)

(declare-fun res!1931254 () Bool)

(assert (=> b!4612058 (=> (not res!1931254) (not e!2876892))))

(assert (=> b!4612058 (= res!1931254 (allKeysSameHash!1256 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4612059 () Bool)

(declare-fun res!1931247 () Bool)

(assert (=> b!4612059 (=> (not res!1931247) (not e!2876892))))

(declare-fun hash!3345 (Hashable!5799 K!12655) (_ BitVec 64))

(assert (=> b!4612059 (= res!1931247 (= (hash!3345 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612060 () Bool)

(declare-fun res!1931253 () Bool)

(assert (=> b!4612060 (=> (not res!1931253) (not e!2876894))))

(declare-fun removePairForKey!1025 (List!51403 K!12655) List!51403)

(assert (=> b!4612060 (= res!1931253 (= (removePairForKey!1025 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4612061 () Bool)

(declare-fun res!1931251 () Bool)

(assert (=> b!4612061 (=> (not res!1931251) (not e!2876894))))

(assert (=> b!4612061 (= res!1931251 (noDuplicateKeys!1402 newBucket!224))))

(declare-fun b!4612062 () Bool)

(assert (=> b!4612062 (= e!2876888 (= lt!1767686 (ListMap!4074 Nil!51279)))))

(assert (= (and start!461324 res!1931248) b!4612061))

(assert (= (and b!4612061 res!1931251) b!4612060))

(assert (= (and b!4612060 res!1931253) b!4612055))

(assert (= (and b!4612055 res!1931252) b!4612056))

(assert (= (and b!4612056 res!1931255) b!4612059))

(assert (= (and b!4612059 res!1931247) b!4612058))

(assert (= (and b!4612058 res!1931254) b!4612054))

(assert (= (and b!4612054 res!1931249) b!4612062))

(assert (= (and b!4612054 (not res!1931250)) b!4612051))

(assert (= (and b!4612051 (not res!1931256)) b!4612057))

(assert (= (and start!461324 ((_ is Cons!51279) oldBucket!40)) b!4612052))

(assert (= (and start!461324 ((_ is Cons!51279) newBucket!224)) b!4612053))

(declare-fun m!5443399 () Bool)

(assert (=> b!4612051 m!5443399))

(declare-fun m!5443401 () Bool)

(assert (=> start!461324 m!5443401))

(declare-fun m!5443403 () Bool)

(assert (=> b!4612055 m!5443403))

(declare-fun m!5443405 () Bool)

(assert (=> b!4612059 m!5443405))

(declare-fun m!5443407 () Bool)

(assert (=> b!4612054 m!5443407))

(declare-fun m!5443409 () Bool)

(assert (=> b!4612054 m!5443409))

(declare-fun m!5443411 () Bool)

(assert (=> b!4612060 m!5443411))

(declare-fun m!5443413 () Bool)

(assert (=> b!4612056 m!5443413))

(declare-fun m!5443415 () Bool)

(assert (=> b!4612056 m!5443415))

(declare-fun m!5443417 () Bool)

(assert (=> b!4612057 m!5443417))

(declare-fun m!5443419 () Bool)

(assert (=> b!4612057 m!5443419))

(declare-fun m!5443421 () Bool)

(assert (=> b!4612061 m!5443421))

(declare-fun m!5443423 () Bool)

(assert (=> b!4612058 m!5443423))

(check-sat (not b!4612056) (not b!4612052) tp_is_empty!28903 (not b!4612051) (not b!4612061) (not b!4612053) (not b!4612058) (not b!4612054) (not b!4612055) (not start!461324) (not b!4612060) (not b!4612057) (not b!4612059) tp_is_empty!28901)
(check-sat)
