; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43618 () Bool)

(assert start!43618)

(declare-fun b_free!12345 () Bool)

(declare-fun b_next!12345 () Bool)

(assert (=> start!43618 (= b_free!12345 (not b_next!12345))))

(declare-fun tp!43324 () Bool)

(declare-fun b_and!21127 () Bool)

(assert (=> start!43618 (= tp!43324 b_and!21127)))

(declare-fun res!287861 () Bool)

(declare-fun e!284197 () Bool)

(assert (=> start!43618 (=> (not res!287861) (not e!284197))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43618 (= res!287861 (validMask!0 mask!2352))))

(assert (=> start!43618 e!284197))

(assert (=> start!43618 true))

(declare-fun tp_is_empty!13857 () Bool)

(assert (=> start!43618 tp_is_empty!13857))

(declare-datatypes ((V!19547 0))(
  ( (V!19548 (val!6976 Int)) )
))
(declare-datatypes ((ValueCell!6567 0))(
  ( (ValueCellFull!6567 (v!9267 V!19547)) (EmptyCell!6567) )
))
(declare-datatypes ((array!31341 0))(
  ( (array!31342 (arr!15068 (Array (_ BitVec 32) ValueCell!6567)) (size!15426 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31341)

(declare-fun e!284196 () Bool)

(declare-fun array_inv!10848 (array!31341) Bool)

(assert (=> start!43618 (and (array_inv!10848 _values!1516) e!284196)))

(assert (=> start!43618 tp!43324))

(declare-datatypes ((array!31343 0))(
  ( (array!31344 (arr!15069 (Array (_ BitVec 32) (_ BitVec 64))) (size!15427 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31343)

(declare-fun array_inv!10849 (array!31343) Bool)

(assert (=> start!43618 (array_inv!10849 _keys!1874)))

(declare-fun b!482901 () Bool)

(declare-fun res!287865 () Bool)

(assert (=> b!482901 (=> (not res!287865) (not e!284197))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!482901 (= res!287865 (and (= (size!15426 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15427 _keys!1874) (size!15426 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!482902 () Bool)

(declare-fun res!287866 () Bool)

(assert (=> b!482902 (=> (not res!287866) (not e!284197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31343 (_ BitVec 32)) Bool)

(assert (=> b!482902 (= res!287866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapIsEmpty!22501 () Bool)

(declare-fun mapRes!22501 () Bool)

(assert (=> mapIsEmpty!22501 mapRes!22501))

(declare-fun b!482903 () Bool)

(declare-fun e!284192 () Bool)

(assert (=> b!482903 (= e!284192 tp_is_empty!13857)))

(declare-fun b!482904 () Bool)

(declare-fun res!287863 () Bool)

(assert (=> b!482904 (=> (not res!287863) (not e!284197))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19547)

(declare-fun zeroValue!1458 () V!19547)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9158 0))(
  ( (tuple2!9159 (_1!4589 (_ BitVec 64)) (_2!4589 V!19547)) )
))
(declare-datatypes ((List!9273 0))(
  ( (Nil!9270) (Cons!9269 (h!10125 tuple2!9158) (t!15499 List!9273)) )
))
(declare-datatypes ((ListLongMap!8085 0))(
  ( (ListLongMap!8086 (toList!4058 List!9273)) )
))
(declare-fun contains!2671 (ListLongMap!8085 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2350 (array!31343 array!31341 (_ BitVec 32) (_ BitVec 32) V!19547 V!19547 (_ BitVec 32) Int) ListLongMap!8085)

(assert (=> b!482904 (= res!287863 (contains!2671 (getCurrentListMap!2350 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!482905 () Bool)

(declare-fun res!287864 () Bool)

(assert (=> b!482905 (=> (not res!287864) (not e!284197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482905 (= res!287864 (validKeyInArray!0 k0!1332))))

(declare-fun b!482906 () Bool)

(declare-fun e!284193 () Bool)

(assert (=> b!482906 (= e!284196 (and e!284193 mapRes!22501))))

(declare-fun condMapEmpty!22501 () Bool)

(declare-fun mapDefault!22501 () ValueCell!6567)

(assert (=> b!482906 (= condMapEmpty!22501 (= (arr!15068 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6567)) mapDefault!22501)))))

(declare-fun b!482907 () Bool)

(assert (=> b!482907 (= e!284193 tp_is_empty!13857)))

(declare-fun b!482908 () Bool)

(declare-fun res!287862 () Bool)

(assert (=> b!482908 (=> (not res!287862) (not e!284197))))

(declare-datatypes ((List!9274 0))(
  ( (Nil!9271) (Cons!9270 (h!10126 (_ BitVec 64)) (t!15500 List!9274)) )
))
(declare-fun arrayNoDuplicates!0 (array!31343 (_ BitVec 32) List!9274) Bool)

(assert (=> b!482908 (= res!287862 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9271))))

(declare-fun b!482909 () Bool)

(assert (=> b!482909 (= e!284197 (not true))))

(declare-fun lt!218944 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31343 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482909 (= lt!218944 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!284195 () Bool)

(assert (=> b!482909 e!284195))

(declare-fun c!57981 () Bool)

(assert (=> b!482909 (= c!57981 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14130 0))(
  ( (Unit!14131) )
))
(declare-fun lt!218945 () Unit!14130)

(declare-fun lemmaKeyInListMapIsInArray!152 (array!31343 array!31341 (_ BitVec 32) (_ BitVec 32) V!19547 V!19547 (_ BitVec 64) Int) Unit!14130)

(assert (=> b!482909 (= lt!218945 (lemmaKeyInListMapIsInArray!152 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!482910 () Bool)

(assert (=> b!482910 (= e!284195 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22501 () Bool)

(declare-fun tp!43323 () Bool)

(assert (=> mapNonEmpty!22501 (= mapRes!22501 (and tp!43323 e!284192))))

(declare-fun mapRest!22501 () (Array (_ BitVec 32) ValueCell!6567))

(declare-fun mapKey!22501 () (_ BitVec 32))

(declare-fun mapValue!22501 () ValueCell!6567)

(assert (=> mapNonEmpty!22501 (= (arr!15068 _values!1516) (store mapRest!22501 mapKey!22501 mapValue!22501))))

(declare-fun b!482911 () Bool)

(declare-fun arrayContainsKey!0 (array!31343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482911 (= e!284195 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (= (and start!43618 res!287861) b!482901))

(assert (= (and b!482901 res!287865) b!482902))

(assert (= (and b!482902 res!287866) b!482908))

(assert (= (and b!482908 res!287862) b!482904))

(assert (= (and b!482904 res!287863) b!482905))

(assert (= (and b!482905 res!287864) b!482909))

(assert (= (and b!482909 c!57981) b!482911))

(assert (= (and b!482909 (not c!57981)) b!482910))

(assert (= (and b!482906 condMapEmpty!22501) mapIsEmpty!22501))

(assert (= (and b!482906 (not condMapEmpty!22501)) mapNonEmpty!22501))

(get-info :version)

(assert (= (and mapNonEmpty!22501 ((_ is ValueCellFull!6567) mapValue!22501)) b!482903))

(assert (= (and b!482906 ((_ is ValueCellFull!6567) mapDefault!22501)) b!482907))

(assert (= start!43618 b!482906))

(declare-fun m!463995 () Bool)

(assert (=> b!482902 m!463995))

(declare-fun m!463997 () Bool)

(assert (=> b!482909 m!463997))

(declare-fun m!463999 () Bool)

(assert (=> b!482909 m!463999))

(declare-fun m!464001 () Bool)

(assert (=> start!43618 m!464001))

(declare-fun m!464003 () Bool)

(assert (=> start!43618 m!464003))

(declare-fun m!464005 () Bool)

(assert (=> start!43618 m!464005))

(declare-fun m!464007 () Bool)

(assert (=> b!482908 m!464007))

(declare-fun m!464009 () Bool)

(assert (=> b!482905 m!464009))

(declare-fun m!464011 () Bool)

(assert (=> mapNonEmpty!22501 m!464011))

(declare-fun m!464013 () Bool)

(assert (=> b!482911 m!464013))

(declare-fun m!464015 () Bool)

(assert (=> b!482904 m!464015))

(assert (=> b!482904 m!464015))

(declare-fun m!464017 () Bool)

(assert (=> b!482904 m!464017))

(check-sat (not b!482905) (not b_next!12345) (not b!482909) (not mapNonEmpty!22501) (not start!43618) (not b!482911) (not b!482908) b_and!21127 tp_is_empty!13857 (not b!482902) (not b!482904))
(check-sat b_and!21127 (not b_next!12345))
