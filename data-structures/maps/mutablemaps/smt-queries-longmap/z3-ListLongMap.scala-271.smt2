; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4452 () Bool)

(assert start!4452)

(declare-fun b_free!1215 () Bool)

(declare-fun b_next!1215 () Bool)

(assert (=> start!4452 (= b_free!1215 (not b_next!1215))))

(declare-fun tp!5083 () Bool)

(declare-fun b_and!2039 () Bool)

(assert (=> start!4452 (= tp!5083 b_and!2039)))

(declare-fun b!34470 () Bool)

(declare-fun res!20890 () Bool)

(declare-fun e!21867 () Bool)

(assert (=> b!34470 (=> (not res!20890) (not e!21867))))

(declare-datatypes ((array!2343 0))(
  ( (array!2344 (arr!1119 (Array (_ BitVec 32) (_ BitVec 64))) (size!1220 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2343)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34470 (= res!20890 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34471 () Bool)

(declare-fun res!20896 () Bool)

(assert (=> b!34471 (=> (not res!20896) (not e!21867))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2343 (_ BitVec 32)) Bool)

(assert (=> b!34471 (= res!20896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34472 () Bool)

(declare-fun res!20892 () Bool)

(assert (=> b!34472 (=> (not res!20892) (not e!21867))))

(declare-datatypes ((V!1917 0))(
  ( (V!1918 (val!811 Int)) )
))
(declare-datatypes ((ValueCell!585 0))(
  ( (ValueCellFull!585 (v!1906 V!1917)) (EmptyCell!585) )
))
(declare-datatypes ((array!2345 0))(
  ( (array!2346 (arr!1120 (Array (_ BitVec 32) ValueCell!585)) (size!1221 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2345)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!34472 (= res!20892 (and (= (size!1221 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1220 _keys!1833) (size!1221 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34474 () Bool)

(declare-fun res!20894 () Bool)

(assert (=> b!34474 (=> (not res!20894) (not e!21867))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1917)

(declare-fun minValue!1443 () V!1917)

(declare-datatypes ((tuple2!1304 0))(
  ( (tuple2!1305 (_1!662 (_ BitVec 64)) (_2!662 V!1917)) )
))
(declare-datatypes ((List!908 0))(
  ( (Nil!905) (Cons!904 (h!1471 tuple2!1304) (t!3615 List!908)) )
))
(declare-datatypes ((ListLongMap!885 0))(
  ( (ListLongMap!886 (toList!458 List!908)) )
))
(declare-fun contains!401 (ListLongMap!885 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!279 (array!2343 array!2345 (_ BitVec 32) (_ BitVec 32) V!1917 V!1917 (_ BitVec 32) Int) ListLongMap!885)

(assert (=> b!34474 (= res!20894 (not (contains!401 (getCurrentListMap!279 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!34475 () Bool)

(declare-fun e!21863 () Bool)

(declare-fun tp_is_empty!1569 () Bool)

(assert (=> b!34475 (= e!21863 tp_is_empty!1569)))

(declare-fun b!34476 () Bool)

(declare-fun res!20895 () Bool)

(assert (=> b!34476 (=> (not res!20895) (not e!21867))))

(declare-datatypes ((List!909 0))(
  ( (Nil!906) (Cons!905 (h!1472 (_ BitVec 64)) (t!3616 List!909)) )
))
(declare-fun arrayNoDuplicates!0 (array!2343 (_ BitVec 32) List!909) Bool)

(assert (=> b!34476 (= res!20895 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!906))))

(declare-fun b!34477 () Bool)

(declare-fun e!21865 () Bool)

(declare-fun mapRes!1900 () Bool)

(assert (=> b!34477 (= e!21865 (and e!21863 mapRes!1900))))

(declare-fun condMapEmpty!1900 () Bool)

(declare-fun mapDefault!1900 () ValueCell!585)

(assert (=> b!34477 (= condMapEmpty!1900 (= (arr!1120 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!585)) mapDefault!1900)))))

(declare-fun b!34478 () Bool)

(assert (=> b!34478 (= e!21867 false)))

(declare-datatypes ((SeekEntryResult!149 0))(
  ( (MissingZero!149 (index!2718 (_ BitVec 32))) (Found!149 (index!2719 (_ BitVec 32))) (Intermediate!149 (undefined!961 Bool) (index!2720 (_ BitVec 32)) (x!6919 (_ BitVec 32))) (Undefined!149) (MissingVacant!149 (index!2721 (_ BitVec 32))) )
))
(declare-fun lt!12790 () SeekEntryResult!149)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2343 (_ BitVec 32)) SeekEntryResult!149)

(assert (=> b!34478 (= lt!12790 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!34479 () Bool)

(declare-fun e!21864 () Bool)

(assert (=> b!34479 (= e!21864 tp_is_empty!1569)))

(declare-fun mapNonEmpty!1900 () Bool)

(declare-fun tp!5082 () Bool)

(assert (=> mapNonEmpty!1900 (= mapRes!1900 (and tp!5082 e!21864))))

(declare-fun mapKey!1900 () (_ BitVec 32))

(declare-fun mapRest!1900 () (Array (_ BitVec 32) ValueCell!585))

(declare-fun mapValue!1900 () ValueCell!585)

(assert (=> mapNonEmpty!1900 (= (arr!1120 _values!1501) (store mapRest!1900 mapKey!1900 mapValue!1900))))

(declare-fun mapIsEmpty!1900 () Bool)

(assert (=> mapIsEmpty!1900 mapRes!1900))

(declare-fun b!34473 () Bool)

(declare-fun res!20891 () Bool)

(assert (=> b!34473 (=> (not res!20891) (not e!21867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34473 (= res!20891 (validKeyInArray!0 k0!1304))))

(declare-fun res!20893 () Bool)

(assert (=> start!4452 (=> (not res!20893) (not e!21867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4452 (= res!20893 (validMask!0 mask!2294))))

(assert (=> start!4452 e!21867))

(assert (=> start!4452 true))

(assert (=> start!4452 tp!5083))

(declare-fun array_inv!745 (array!2345) Bool)

(assert (=> start!4452 (and (array_inv!745 _values!1501) e!21865)))

(declare-fun array_inv!746 (array!2343) Bool)

(assert (=> start!4452 (array_inv!746 _keys!1833)))

(assert (=> start!4452 tp_is_empty!1569))

(assert (= (and start!4452 res!20893) b!34472))

(assert (= (and b!34472 res!20892) b!34471))

(assert (= (and b!34471 res!20896) b!34476))

(assert (= (and b!34476 res!20895) b!34473))

(assert (= (and b!34473 res!20891) b!34474))

(assert (= (and b!34474 res!20894) b!34470))

(assert (= (and b!34470 res!20890) b!34478))

(assert (= (and b!34477 condMapEmpty!1900) mapIsEmpty!1900))

(assert (= (and b!34477 (not condMapEmpty!1900)) mapNonEmpty!1900))

(get-info :version)

(assert (= (and mapNonEmpty!1900 ((_ is ValueCellFull!585) mapValue!1900)) b!34479))

(assert (= (and b!34477 ((_ is ValueCellFull!585) mapDefault!1900)) b!34475))

(assert (= start!4452 b!34477))

(declare-fun m!27801 () Bool)

(assert (=> b!34474 m!27801))

(assert (=> b!34474 m!27801))

(declare-fun m!27803 () Bool)

(assert (=> b!34474 m!27803))

(declare-fun m!27805 () Bool)

(assert (=> b!34471 m!27805))

(declare-fun m!27807 () Bool)

(assert (=> b!34476 m!27807))

(declare-fun m!27809 () Bool)

(assert (=> b!34470 m!27809))

(declare-fun m!27811 () Bool)

(assert (=> mapNonEmpty!1900 m!27811))

(declare-fun m!27813 () Bool)

(assert (=> b!34473 m!27813))

(declare-fun m!27815 () Bool)

(assert (=> start!4452 m!27815))

(declare-fun m!27817 () Bool)

(assert (=> start!4452 m!27817))

(declare-fun m!27819 () Bool)

(assert (=> start!4452 m!27819))

(declare-fun m!27821 () Bool)

(assert (=> b!34478 m!27821))

(check-sat (not b!34473) (not b!34471) (not b!34478) (not start!4452) (not mapNonEmpty!1900) (not b!34476) b_and!2039 (not b!34474) tp_is_empty!1569 (not b_next!1215) (not b!34470))
(check-sat b_and!2039 (not b_next!1215))
