; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81920 () Bool)

(assert start!81920)

(declare-fun b_free!18387 () Bool)

(declare-fun b_next!18387 () Bool)

(assert (=> start!81920 (= b_free!18387 (not b_next!18387))))

(declare-fun tp!63861 () Bool)

(declare-fun b_and!29891 () Bool)

(assert (=> start!81920 (= tp!63861 b_and!29891)))

(declare-fun b!954957 () Bool)

(declare-fun res!639601 () Bool)

(declare-fun e!538037 () Bool)

(assert (=> b!954957 (=> (not res!639601) (not e!538037))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57987 0))(
  ( (array!57988 (arr!27869 (Array (_ BitVec 32) (_ BitVec 64))) (size!28349 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57987)

(assert (=> b!954957 (= res!639601 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28349 _keys!1441))))))

(declare-fun b!954958 () Bool)

(declare-fun res!639598 () Bool)

(assert (=> b!954958 (=> (not res!639598) (not e!538037))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32891 0))(
  ( (V!32892 (val!10516 Int)) )
))
(declare-fun zeroValue!1139 () V!32891)

(declare-datatypes ((ValueCell!9984 0))(
  ( (ValueCellFull!9984 (v!13071 V!32891)) (EmptyCell!9984) )
))
(declare-datatypes ((array!57989 0))(
  ( (array!57990 (arr!27870 (Array (_ BitVec 32) ValueCell!9984)) (size!28350 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57989)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32891)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13748 0))(
  ( (tuple2!13749 (_1!6884 (_ BitVec 64)) (_2!6884 V!32891)) )
))
(declare-datatypes ((List!19565 0))(
  ( (Nil!19562) (Cons!19561 (h!20723 tuple2!13748) (t!27934 List!19565)) )
))
(declare-datatypes ((ListLongMap!12459 0))(
  ( (ListLongMap!12460 (toList!6245 List!19565)) )
))
(declare-fun contains!5295 (ListLongMap!12459 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3430 (array!57987 array!57989 (_ BitVec 32) (_ BitVec 32) V!32891 V!32891 (_ BitVec 32) Int) ListLongMap!12459)

(assert (=> b!954958 (= res!639598 (contains!5295 (getCurrentListMap!3430 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27869 _keys!1441) i!735)))))

(declare-fun mapIsEmpty!33358 () Bool)

(declare-fun mapRes!33358 () Bool)

(assert (=> mapIsEmpty!33358 mapRes!33358))

(declare-fun b!954960 () Bool)

(declare-fun res!639595 () Bool)

(assert (=> b!954960 (=> (not res!639595) (not e!538037))))

(assert (=> b!954960 (= res!639595 (and (= (size!28350 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28349 _keys!1441) (size!28350 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954961 () Bool)

(declare-fun res!639600 () Bool)

(assert (=> b!954961 (=> (not res!639600) (not e!538037))))

(declare-datatypes ((List!19566 0))(
  ( (Nil!19563) (Cons!19562 (h!20724 (_ BitVec 64)) (t!27935 List!19566)) )
))
(declare-fun arrayNoDuplicates!0 (array!57987 (_ BitVec 32) List!19566) Bool)

(assert (=> b!954961 (= res!639600 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19563))))

(declare-fun b!954962 () Bool)

(assert (=> b!954962 (= e!538037 (not true))))

(assert (=> b!954962 (contains!5295 (getCurrentListMap!3430 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27869 _keys!1441) i!735))))

(declare-datatypes ((Unit!32091 0))(
  ( (Unit!32092) )
))
(declare-fun lt!429919 () Unit!32091)

(declare-fun lemmaInListMapFromThenFromZero!2 (array!57987 array!57989 (_ BitVec 32) (_ BitVec 32) V!32891 V!32891 (_ BitVec 32) (_ BitVec 32) Int) Unit!32091)

(assert (=> b!954962 (= lt!429919 (lemmaInListMapFromThenFromZero!2 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!954963 () Bool)

(declare-fun e!538041 () Bool)

(declare-fun tp_is_empty!20931 () Bool)

(assert (=> b!954963 (= e!538041 tp_is_empty!20931)))

(declare-fun b!954964 () Bool)

(declare-fun e!538040 () Bool)

(assert (=> b!954964 (= e!538040 tp_is_empty!20931)))

(declare-fun mapNonEmpty!33358 () Bool)

(declare-fun tp!63862 () Bool)

(assert (=> mapNonEmpty!33358 (= mapRes!33358 (and tp!63862 e!538041))))

(declare-fun mapValue!33358 () ValueCell!9984)

(declare-fun mapRest!33358 () (Array (_ BitVec 32) ValueCell!9984))

(declare-fun mapKey!33358 () (_ BitVec 32))

(assert (=> mapNonEmpty!33358 (= (arr!27870 _values!1197) (store mapRest!33358 mapKey!33358 mapValue!33358))))

(declare-fun res!639596 () Bool)

(assert (=> start!81920 (=> (not res!639596) (not e!538037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81920 (= res!639596 (validMask!0 mask!1823))))

(assert (=> start!81920 e!538037))

(assert (=> start!81920 true))

(assert (=> start!81920 tp_is_empty!20931))

(declare-fun array_inv!21579 (array!57987) Bool)

(assert (=> start!81920 (array_inv!21579 _keys!1441)))

(declare-fun e!538039 () Bool)

(declare-fun array_inv!21580 (array!57989) Bool)

(assert (=> start!81920 (and (array_inv!21580 _values!1197) e!538039)))

(assert (=> start!81920 tp!63861))

(declare-fun b!954959 () Bool)

(assert (=> b!954959 (= e!538039 (and e!538040 mapRes!33358))))

(declare-fun condMapEmpty!33358 () Bool)

(declare-fun mapDefault!33358 () ValueCell!9984)

(assert (=> b!954959 (= condMapEmpty!33358 (= (arr!27870 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9984)) mapDefault!33358)))))

(declare-fun b!954965 () Bool)

(declare-fun res!639599 () Bool)

(assert (=> b!954965 (=> (not res!639599) (not e!538037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57987 (_ BitVec 32)) Bool)

(assert (=> b!954965 (= res!639599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954966 () Bool)

(declare-fun res!639597 () Bool)

(assert (=> b!954966 (=> (not res!639597) (not e!538037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954966 (= res!639597 (validKeyInArray!0 (select (arr!27869 _keys!1441) i!735)))))

(assert (= (and start!81920 res!639596) b!954960))

(assert (= (and b!954960 res!639595) b!954965))

(assert (= (and b!954965 res!639599) b!954961))

(assert (= (and b!954961 res!639600) b!954957))

(assert (= (and b!954957 res!639601) b!954966))

(assert (= (and b!954966 res!639597) b!954958))

(assert (= (and b!954958 res!639598) b!954962))

(assert (= (and b!954959 condMapEmpty!33358) mapIsEmpty!33358))

(assert (= (and b!954959 (not condMapEmpty!33358)) mapNonEmpty!33358))

(get-info :version)

(assert (= (and mapNonEmpty!33358 ((_ is ValueCellFull!9984) mapValue!33358)) b!954963))

(assert (= (and b!954959 ((_ is ValueCellFull!9984) mapDefault!33358)) b!954964))

(assert (= start!81920 b!954959))

(declare-fun m!886625 () Bool)

(assert (=> b!954966 m!886625))

(assert (=> b!954966 m!886625))

(declare-fun m!886627 () Bool)

(assert (=> b!954966 m!886627))

(declare-fun m!886629 () Bool)

(assert (=> start!81920 m!886629))

(declare-fun m!886631 () Bool)

(assert (=> start!81920 m!886631))

(declare-fun m!886633 () Bool)

(assert (=> start!81920 m!886633))

(declare-fun m!886635 () Bool)

(assert (=> b!954962 m!886635))

(assert (=> b!954962 m!886625))

(assert (=> b!954962 m!886635))

(assert (=> b!954962 m!886625))

(declare-fun m!886637 () Bool)

(assert (=> b!954962 m!886637))

(declare-fun m!886639 () Bool)

(assert (=> b!954962 m!886639))

(declare-fun m!886641 () Bool)

(assert (=> b!954958 m!886641))

(assert (=> b!954958 m!886625))

(assert (=> b!954958 m!886641))

(assert (=> b!954958 m!886625))

(declare-fun m!886643 () Bool)

(assert (=> b!954958 m!886643))

(declare-fun m!886645 () Bool)

(assert (=> b!954961 m!886645))

(declare-fun m!886647 () Bool)

(assert (=> mapNonEmpty!33358 m!886647))

(declare-fun m!886649 () Bool)

(assert (=> b!954965 m!886649))

(check-sat (not b!954966) tp_is_empty!20931 (not b!954961) (not b!954958) (not b_next!18387) (not mapNonEmpty!33358) (not b!954965) b_and!29891 (not b!954962) (not start!81920))
(check-sat b_and!29891 (not b_next!18387))
