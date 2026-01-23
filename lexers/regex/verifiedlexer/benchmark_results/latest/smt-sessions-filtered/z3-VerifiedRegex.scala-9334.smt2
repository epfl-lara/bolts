; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496616 () Bool)

(assert start!496616)

(declare-fun b!4806200 () Bool)

(declare-fun b_free!129851 () Bool)

(declare-fun b_next!130641 () Bool)

(assert (=> b!4806200 (= b_free!129851 (not b_next!130641))))

(declare-fun tp!1358796 () Bool)

(declare-fun b_and!341605 () Bool)

(assert (=> b!4806200 (= tp!1358796 b_and!341605)))

(declare-fun b!4806198 () Bool)

(declare-fun b_free!129853 () Bool)

(declare-fun b_next!130643 () Bool)

(assert (=> b!4806198 (= b_free!129853 (not b_next!130643))))

(declare-fun tp!1358792 () Bool)

(declare-fun b_and!341607 () Bool)

(assert (=> b!4806198 (= tp!1358792 b_and!341607)))

(declare-fun res!2044742 () Bool)

(declare-fun e!3001648 () Bool)

(assert (=> start!496616 (=> (not res!2044742) (not e!3001648))))

(declare-datatypes ((K!15959 0))(
  ( (K!15960 (val!21073 Int)) )
))
(declare-datatypes ((array!18252 0))(
  ( (array!18253 (arr!8139 (Array (_ BitVec 32) (_ BitVec 64))) (size!36385 (_ BitVec 32))) )
))
(declare-datatypes ((V!16205 0))(
  ( (V!16206 (val!21074 Int)) )
))
(declare-datatypes ((tuple2!57110 0))(
  ( (tuple2!57111 (_1!31849 K!15959) (_2!31849 V!16205)) )
))
(declare-datatypes ((List!54508 0))(
  ( (Nil!54384) (Cons!54384 (h!60816 tuple2!57110) (t!361958 List!54508)) )
))
(declare-datatypes ((array!18254 0))(
  ( (array!18255 (arr!8140 (Array (_ BitVec 32) List!54508)) (size!36386 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9954 0))(
  ( (LongMapFixedSize!9955 (defaultEntry!5395 Int) (mask!14936 (_ BitVec 32)) (extraKeys!5252 (_ BitVec 32)) (zeroValue!5265 List!54508) (minValue!5265 List!54508) (_size!9979 (_ BitVec 32)) (_keys!5319 array!18252) (_values!5290 array!18254) (_vacant!5042 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19673 0))(
  ( (Cell!19674 (v!48588 LongMapFixedSize!9954)) )
))
(declare-datatypes ((MutLongMap!4977 0))(
  ( (LongMap!4977 (underlying!10161 Cell!19673)) (MutLongMapExt!4976 (__x!33029 Int)) )
))
(declare-datatypes ((Hashable!6988 0))(
  ( (HashableExt!6987 (__x!33030 Int)) )
))
(declare-datatypes ((Cell!19675 0))(
  ( (Cell!19676 (v!48589 MutLongMap!4977)) )
))
(declare-datatypes ((MutableMap!4861 0))(
  ( (MutableMapExt!4860 (__x!33031 Int)) (HashMap!4861 (underlying!10162 Cell!19675) (hashF!13256 Hashable!6988) (_size!9980 (_ BitVec 32)) (defaultValue!5032 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4861)

(get-info :version)

(assert (=> start!496616 (= res!2044742 ((_ is HashMap!4861) thiss!41921))))

(assert (=> start!496616 e!3001648))

(declare-fun e!3001647 () Bool)

(assert (=> start!496616 e!3001647))

(declare-fun tp_is_empty!33799 () Bool)

(assert (=> start!496616 tp_is_empty!33799))

(declare-fun mapNonEmpty!22055 () Bool)

(declare-fun mapRes!22055 () Bool)

(declare-fun tp!1358795 () Bool)

(declare-fun tp!1358794 () Bool)

(assert (=> mapNonEmpty!22055 (= mapRes!22055 (and tp!1358795 tp!1358794))))

(declare-fun mapRest!22055 () (Array (_ BitVec 32) List!54508))

(declare-fun mapValue!22055 () List!54508)

(declare-fun mapKey!22055 () (_ BitVec 32))

(assert (=> mapNonEmpty!22055 (= (arr!8140 (_values!5290 (v!48588 (underlying!10161 (v!48589 (underlying!10162 thiss!41921)))))) (store mapRest!22055 mapKey!22055 mapValue!22055))))

(declare-fun b!4806195 () Bool)

(declare-fun e!3001643 () Bool)

(assert (=> b!4806195 (= e!3001643 (not ((_ is LongMap!4977) (v!48589 (underlying!10162 thiss!41921)))))))

(declare-fun b!4806196 () Bool)

(declare-fun res!2044740 () Bool)

(assert (=> b!4806196 (=> (not res!2044740) (not e!3001648))))

(declare-fun valid!3985 (MutableMap!4861) Bool)

(assert (=> b!4806196 (= res!2044740 (valid!3985 thiss!41921))))

(declare-fun b!4806197 () Bool)

(declare-fun e!3001642 () Bool)

(declare-fun e!3001650 () Bool)

(assert (=> b!4806197 (= e!3001642 e!3001650)))

(declare-fun e!3001646 () Bool)

(assert (=> b!4806198 (= e!3001647 (and e!3001646 tp!1358792))))

(declare-fun b!4806199 () Bool)

(declare-fun res!2044739 () Bool)

(assert (=> b!4806199 (=> (not res!2044739) (not e!3001643))))

(declare-fun lt!1959906 () (_ BitVec 64))

(declare-datatypes ((tuple2!57112 0))(
  ( (tuple2!57113 (_1!31850 (_ BitVec 64)) (_2!31850 List!54508)) )
))
(declare-datatypes ((List!54509 0))(
  ( (Nil!54385) (Cons!54385 (h!60817 tuple2!57112) (t!361959 List!54509)) )
))
(declare-fun contains!18048 (List!54509 tuple2!57112) Bool)

(declare-datatypes ((ListLongMap!5467 0))(
  ( (ListLongMap!5468 (toList!7041 List!54509)) )
))
(declare-fun map!12302 (MutLongMap!4977) ListLongMap!5467)

(declare-fun apply!13062 (MutLongMap!4977 (_ BitVec 64)) List!54508)

(assert (=> b!4806199 (= res!2044739 (not (contains!18048 (toList!7041 (map!12302 (v!48589 (underlying!10162 thiss!41921)))) (tuple2!57113 lt!1959906 (apply!13062 (v!48589 (underlying!10162 thiss!41921)) lt!1959906)))))))

(declare-fun e!3001644 () Bool)

(declare-fun tp!1358798 () Bool)

(declare-fun tp!1358793 () Bool)

(declare-fun array_inv!5863 (array!18252) Bool)

(declare-fun array_inv!5864 (array!18254) Bool)

(assert (=> b!4806200 (= e!3001650 (and tp!1358796 tp!1358798 tp!1358793 (array_inv!5863 (_keys!5319 (v!48588 (underlying!10161 (v!48589 (underlying!10162 thiss!41921)))))) (array_inv!5864 (_values!5290 (v!48588 (underlying!10161 (v!48589 (underlying!10162 thiss!41921)))))) e!3001644))))

(declare-fun mapIsEmpty!22055 () Bool)

(assert (=> mapIsEmpty!22055 mapRes!22055))

(declare-fun b!4806201 () Bool)

(assert (=> b!4806201 (= e!3001648 e!3001643)))

(declare-fun res!2044741 () Bool)

(assert (=> b!4806201 (=> (not res!2044741) (not e!3001643))))

(declare-fun contains!18049 (MutLongMap!4977 (_ BitVec 64)) Bool)

(assert (=> b!4806201 (= res!2044741 (contains!18049 (v!48589 (underlying!10162 thiss!41921)) lt!1959906))))

(declare-fun key!1652 () K!15959)

(declare-fun hash!5056 (Hashable!6988 K!15959) (_ BitVec 64))

(assert (=> b!4806201 (= lt!1959906 (hash!5056 (hashF!13256 thiss!41921) key!1652))))

(declare-fun b!4806202 () Bool)

(declare-fun e!3001645 () Bool)

(assert (=> b!4806202 (= e!3001645 e!3001642)))

(declare-fun b!4806203 () Bool)

(declare-fun lt!1959907 () MutLongMap!4977)

(assert (=> b!4806203 (= e!3001646 (and e!3001645 ((_ is LongMap!4977) lt!1959907)))))

(assert (=> b!4806203 (= lt!1959907 (v!48589 (underlying!10162 thiss!41921)))))

(declare-fun b!4806204 () Bool)

(declare-fun tp!1358797 () Bool)

(assert (=> b!4806204 (= e!3001644 (and tp!1358797 mapRes!22055))))

(declare-fun condMapEmpty!22055 () Bool)

(declare-fun mapDefault!22055 () List!54508)

(assert (=> b!4806204 (= condMapEmpty!22055 (= (arr!8140 (_values!5290 (v!48588 (underlying!10161 (v!48589 (underlying!10162 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54508)) mapDefault!22055)))))

(assert (= (and start!496616 res!2044742) b!4806196))

(assert (= (and b!4806196 res!2044740) b!4806201))

(assert (= (and b!4806201 res!2044741) b!4806199))

(assert (= (and b!4806199 res!2044739) b!4806195))

(assert (= (and b!4806204 condMapEmpty!22055) mapIsEmpty!22055))

(assert (= (and b!4806204 (not condMapEmpty!22055)) mapNonEmpty!22055))

(assert (= b!4806200 b!4806204))

(assert (= b!4806197 b!4806200))

(assert (= b!4806202 b!4806197))

(assert (= (and b!4806203 ((_ is LongMap!4977) (v!48589 (underlying!10162 thiss!41921)))) b!4806202))

(assert (= b!4806198 b!4806203))

(assert (= (and start!496616 ((_ is HashMap!4861) thiss!41921)) b!4806198))

(declare-fun m!5792634 () Bool)

(assert (=> b!4806201 m!5792634))

(declare-fun m!5792636 () Bool)

(assert (=> b!4806201 m!5792636))

(declare-fun m!5792638 () Bool)

(assert (=> b!4806199 m!5792638))

(declare-fun m!5792640 () Bool)

(assert (=> b!4806199 m!5792640))

(declare-fun m!5792642 () Bool)

(assert (=> b!4806199 m!5792642))

(declare-fun m!5792644 () Bool)

(assert (=> mapNonEmpty!22055 m!5792644))

(declare-fun m!5792646 () Bool)

(assert (=> b!4806196 m!5792646))

(declare-fun m!5792648 () Bool)

(assert (=> b!4806200 m!5792648))

(declare-fun m!5792650 () Bool)

(assert (=> b!4806200 m!5792650))

(check-sat (not b!4806201) (not b!4806204) b_and!341605 (not mapNonEmpty!22055) (not b_next!130641) (not b!4806200) (not b!4806196) b_and!341607 tp_is_empty!33799 (not b_next!130643) (not b!4806199))
(check-sat b_and!341605 b_and!341607 (not b_next!130641) (not b_next!130643))
