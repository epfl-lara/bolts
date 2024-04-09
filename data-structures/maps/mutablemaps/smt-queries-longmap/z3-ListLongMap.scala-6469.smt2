; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82684 () Bool)

(assert start!82684)

(declare-fun b_free!18789 () Bool)

(declare-fun b_next!18789 () Bool)

(assert (=> start!82684 (= b_free!18789 (not b_next!18789))))

(declare-fun tp!65488 () Bool)

(declare-fun b_and!30295 () Bool)

(assert (=> start!82684 (= tp!65488 b_and!30295)))

(declare-fun b!963441 () Bool)

(declare-fun e!543253 () Bool)

(declare-fun tp_is_empty!21591 () Bool)

(assert (=> b!963441 (= e!543253 tp_is_empty!21591)))

(declare-fun b!963442 () Bool)

(declare-fun e!543249 () Bool)

(assert (=> b!963442 (= e!543249 tp_is_empty!21591)))

(declare-fun b!963443 () Bool)

(declare-fun e!543252 () Bool)

(declare-fun mapRes!34381 () Bool)

(assert (=> b!963443 (= e!543252 (and e!543249 mapRes!34381))))

(declare-fun condMapEmpty!34381 () Bool)

(declare-datatypes ((V!33771 0))(
  ( (V!33772 (val!10846 Int)) )
))
(declare-datatypes ((ValueCell!10314 0))(
  ( (ValueCellFull!10314 (v!13404 V!33771)) (EmptyCell!10314) )
))
(declare-datatypes ((array!59257 0))(
  ( (array!59258 (arr!28493 (Array (_ BitVec 32) ValueCell!10314)) (size!28973 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59257)

(declare-fun mapDefault!34381 () ValueCell!10314)

(assert (=> b!963443 (= condMapEmpty!34381 (= (arr!28493 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10314)) mapDefault!34381)))))

(declare-fun b!963444 () Bool)

(declare-fun res!644917 () Bool)

(declare-fun e!543251 () Bool)

(assert (=> b!963444 (=> (not res!644917) (not e!543251))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59259 0))(
  ( (array!59260 (arr!28494 (Array (_ BitVec 32) (_ BitVec 64))) (size!28974 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59259)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!963444 (= res!644917 (and (= (size!28973 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28974 _keys!1686) (size!28973 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963445 () Bool)

(declare-fun res!644924 () Bool)

(assert (=> b!963445 (=> (not res!644924) (not e!543251))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963445 (= res!644924 (validKeyInArray!0 (select (arr!28494 _keys!1686) i!803)))))

(declare-fun b!963446 () Bool)

(assert (=> b!963446 (= e!543251 (not true))))

(declare-fun minValue!1342 () V!33771)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33771)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14016 0))(
  ( (tuple2!14017 (_1!7018 (_ BitVec 64)) (_2!7018 V!33771)) )
))
(declare-datatypes ((List!19898 0))(
  ( (Nil!19895) (Cons!19894 (h!21056 tuple2!14016) (t!28269 List!19898)) )
))
(declare-datatypes ((ListLongMap!12727 0))(
  ( (ListLongMap!12728 (toList!6379 List!19898)) )
))
(declare-fun contains!5433 (ListLongMap!12727 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3564 (array!59259 array!59257 (_ BitVec 32) (_ BitVec 32) V!33771 V!33771 (_ BitVec 32) Int) ListLongMap!12727)

(assert (=> b!963446 (contains!5433 (getCurrentListMap!3564 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28494 _keys!1686) i!803))))

(declare-datatypes ((Unit!32217 0))(
  ( (Unit!32218) )
))
(declare-fun lt!430932 () Unit!32217)

(declare-fun lemmaInListMapFromThenInFromMinusOne!17 (array!59259 array!59257 (_ BitVec 32) (_ BitVec 32) V!33771 V!33771 (_ BitVec 32) (_ BitVec 32) Int) Unit!32217)

(assert (=> b!963446 (= lt!430932 (lemmaInListMapFromThenInFromMinusOne!17 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963447 () Bool)

(declare-fun res!644922 () Bool)

(assert (=> b!963447 (=> (not res!644922) (not e!543251))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963447 (= res!644922 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963448 () Bool)

(declare-fun res!644919 () Bool)

(assert (=> b!963448 (=> (not res!644919) (not e!543251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59259 (_ BitVec 32)) Bool)

(assert (=> b!963448 (= res!644919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!644920 () Bool)

(assert (=> start!82684 (=> (not res!644920) (not e!543251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82684 (= res!644920 (validMask!0 mask!2110))))

(assert (=> start!82684 e!543251))

(assert (=> start!82684 true))

(declare-fun array_inv!21993 (array!59257) Bool)

(assert (=> start!82684 (and (array_inv!21993 _values!1400) e!543252)))

(declare-fun array_inv!21994 (array!59259) Bool)

(assert (=> start!82684 (array_inv!21994 _keys!1686)))

(assert (=> start!82684 tp!65488))

(assert (=> start!82684 tp_is_empty!21591))

(declare-fun b!963449 () Bool)

(declare-fun res!644921 () Bool)

(assert (=> b!963449 (=> (not res!644921) (not e!543251))))

(assert (=> b!963449 (= res!644921 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28974 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28974 _keys!1686))))))

(declare-fun mapIsEmpty!34381 () Bool)

(assert (=> mapIsEmpty!34381 mapRes!34381))

(declare-fun b!963450 () Bool)

(declare-fun res!644918 () Bool)

(assert (=> b!963450 (=> (not res!644918) (not e!543251))))

(declare-datatypes ((List!19899 0))(
  ( (Nil!19896) (Cons!19895 (h!21057 (_ BitVec 64)) (t!28270 List!19899)) )
))
(declare-fun arrayNoDuplicates!0 (array!59259 (_ BitVec 32) List!19899) Bool)

(assert (=> b!963450 (= res!644918 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19896))))

(declare-fun b!963451 () Bool)

(declare-fun res!644923 () Bool)

(assert (=> b!963451 (=> (not res!644923) (not e!543251))))

(assert (=> b!963451 (= res!644923 (contains!5433 (getCurrentListMap!3564 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28494 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34381 () Bool)

(declare-fun tp!65487 () Bool)

(assert (=> mapNonEmpty!34381 (= mapRes!34381 (and tp!65487 e!543253))))

(declare-fun mapValue!34381 () ValueCell!10314)

(declare-fun mapKey!34381 () (_ BitVec 32))

(declare-fun mapRest!34381 () (Array (_ BitVec 32) ValueCell!10314))

(assert (=> mapNonEmpty!34381 (= (arr!28493 _values!1400) (store mapRest!34381 mapKey!34381 mapValue!34381))))

(assert (= (and start!82684 res!644920) b!963444))

(assert (= (and b!963444 res!644917) b!963448))

(assert (= (and b!963448 res!644919) b!963450))

(assert (= (and b!963450 res!644918) b!963449))

(assert (= (and b!963449 res!644921) b!963445))

(assert (= (and b!963445 res!644924) b!963451))

(assert (= (and b!963451 res!644923) b!963447))

(assert (= (and b!963447 res!644922) b!963446))

(assert (= (and b!963443 condMapEmpty!34381) mapIsEmpty!34381))

(assert (= (and b!963443 (not condMapEmpty!34381)) mapNonEmpty!34381))

(get-info :version)

(assert (= (and mapNonEmpty!34381 ((_ is ValueCellFull!10314) mapValue!34381)) b!963441))

(assert (= (and b!963443 ((_ is ValueCellFull!10314) mapDefault!34381)) b!963442))

(assert (= start!82684 b!963443))

(declare-fun m!892935 () Bool)

(assert (=> b!963448 m!892935))

(declare-fun m!892937 () Bool)

(assert (=> b!963446 m!892937))

(declare-fun m!892939 () Bool)

(assert (=> b!963446 m!892939))

(assert (=> b!963446 m!892937))

(assert (=> b!963446 m!892939))

(declare-fun m!892941 () Bool)

(assert (=> b!963446 m!892941))

(declare-fun m!892943 () Bool)

(assert (=> b!963446 m!892943))

(declare-fun m!892945 () Bool)

(assert (=> b!963451 m!892945))

(assert (=> b!963451 m!892939))

(assert (=> b!963451 m!892945))

(assert (=> b!963451 m!892939))

(declare-fun m!892947 () Bool)

(assert (=> b!963451 m!892947))

(assert (=> b!963445 m!892939))

(assert (=> b!963445 m!892939))

(declare-fun m!892949 () Bool)

(assert (=> b!963445 m!892949))

(declare-fun m!892951 () Bool)

(assert (=> start!82684 m!892951))

(declare-fun m!892953 () Bool)

(assert (=> start!82684 m!892953))

(declare-fun m!892955 () Bool)

(assert (=> start!82684 m!892955))

(declare-fun m!892957 () Bool)

(assert (=> b!963450 m!892957))

(declare-fun m!892959 () Bool)

(assert (=> mapNonEmpty!34381 m!892959))

(check-sat tp_is_empty!21591 (not b!963448) (not b!963446) b_and!30295 (not b!963451) (not b_next!18789) (not start!82684) (not b!963445) (not b!963450) (not mapNonEmpty!34381))
(check-sat b_and!30295 (not b_next!18789))
