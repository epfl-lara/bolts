; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108142 () Bool)

(assert start!108142)

(declare-fun b_free!27819 () Bool)

(declare-fun b_next!27819 () Bool)

(assert (=> start!108142 (= b_free!27819 (not b_next!27819))))

(declare-fun tp!98411 () Bool)

(declare-fun b_and!45885 () Bool)

(assert (=> start!108142 (= tp!98411 b_and!45885)))

(declare-fun mapIsEmpty!51584 () Bool)

(declare-fun mapRes!51584 () Bool)

(assert (=> mapIsEmpty!51584 mapRes!51584))

(declare-fun res!848439 () Bool)

(declare-fun e!729026 () Bool)

(assert (=> start!108142 (=> (not res!848439) (not e!729026))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108142 (= res!848439 (validMask!0 mask!1805))))

(assert (=> start!108142 e!729026))

(assert (=> start!108142 true))

(assert (=> start!108142 tp!98411))

(declare-fun tp_is_empty!33369 () Bool)

(assert (=> start!108142 tp_is_empty!33369))

(declare-datatypes ((V!49595 0))(
  ( (V!49596 (val!16759 Int)) )
))
(declare-datatypes ((ValueCell!15786 0))(
  ( (ValueCellFull!15786 (v!19354 V!49595)) (EmptyCell!15786) )
))
(declare-datatypes ((array!83783 0))(
  ( (array!83784 (arr!40398 (Array (_ BitVec 32) ValueCell!15786)) (size!40949 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83783)

(declare-fun e!729025 () Bool)

(declare-fun array_inv!30661 (array!83783) Bool)

(assert (=> start!108142 (and (array_inv!30661 _values!1187) e!729025)))

(declare-datatypes ((array!83785 0))(
  ( (array!83786 (arr!40399 (Array (_ BitVec 32) (_ BitVec 64))) (size!40950 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83785)

(declare-fun array_inv!30662 (array!83785) Bool)

(assert (=> start!108142 (array_inv!30662 _keys!1427)))

(declare-fun b!1276572 () Bool)

(declare-fun e!729023 () Bool)

(assert (=> b!1276572 (= e!729023 tp_is_empty!33369)))

(declare-fun b!1276573 () Bool)

(declare-fun res!848438 () Bool)

(assert (=> b!1276573 (=> (not res!848438) (not e!729026))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276573 (= res!848438 (and (= (size!40949 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40950 _keys!1427) (size!40949 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51584 () Bool)

(declare-fun tp!98412 () Bool)

(declare-fun e!729024 () Bool)

(assert (=> mapNonEmpty!51584 (= mapRes!51584 (and tp!98412 e!729024))))

(declare-fun mapKey!51584 () (_ BitVec 32))

(declare-fun mapValue!51584 () ValueCell!15786)

(declare-fun mapRest!51584 () (Array (_ BitVec 32) ValueCell!15786))

(assert (=> mapNonEmpty!51584 (= (arr!40398 _values!1187) (store mapRest!51584 mapKey!51584 mapValue!51584))))

(declare-fun b!1276574 () Bool)

(declare-fun res!848436 () Bool)

(assert (=> b!1276574 (=> (not res!848436) (not e!729026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83785 (_ BitVec 32)) Bool)

(assert (=> b!1276574 (= res!848436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276575 () Bool)

(declare-fun res!848437 () Bool)

(assert (=> b!1276575 (=> (not res!848437) (not e!729026))))

(declare-datatypes ((List!28828 0))(
  ( (Nil!28825) (Cons!28824 (h!30033 (_ BitVec 64)) (t!42371 List!28828)) )
))
(declare-fun arrayNoDuplicates!0 (array!83785 (_ BitVec 32) List!28828) Bool)

(assert (=> b!1276575 (= res!848437 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28825))))

(declare-fun b!1276576 () Bool)

(assert (=> b!1276576 (= e!729025 (and e!729023 mapRes!51584))))

(declare-fun condMapEmpty!51584 () Bool)

(declare-fun mapDefault!51584 () ValueCell!15786)

(assert (=> b!1276576 (= condMapEmpty!51584 (= (arr!40398 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15786)) mapDefault!51584)))))

(declare-fun b!1276577 () Bool)

(assert (=> b!1276577 (= e!729024 tp_is_empty!33369)))

(declare-fun b!1276578 () Bool)

(assert (=> b!1276578 (= e!729026 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575457 () Bool)

(declare-fun minValue!1129 () V!49595)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49595)

(declare-datatypes ((tuple2!21642 0))(
  ( (tuple2!21643 (_1!10831 (_ BitVec 64)) (_2!10831 V!49595)) )
))
(declare-datatypes ((List!28829 0))(
  ( (Nil!28826) (Cons!28825 (h!30034 tuple2!21642) (t!42372 List!28829)) )
))
(declare-datatypes ((ListLongMap!19311 0))(
  ( (ListLongMap!19312 (toList!9671 List!28829)) )
))
(declare-fun contains!7718 (ListLongMap!19311 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4691 (array!83785 array!83783 (_ BitVec 32) (_ BitVec 32) V!49595 V!49595 (_ BitVec 32) Int) ListLongMap!19311)

(assert (=> b!1276578 (= lt!575457 (contains!7718 (getCurrentListMap!4691 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(assert (= (and start!108142 res!848439) b!1276573))

(assert (= (and b!1276573 res!848438) b!1276574))

(assert (= (and b!1276574 res!848436) b!1276575))

(assert (= (and b!1276575 res!848437) b!1276578))

(assert (= (and b!1276576 condMapEmpty!51584) mapIsEmpty!51584))

(assert (= (and b!1276576 (not condMapEmpty!51584)) mapNonEmpty!51584))

(get-info :version)

(assert (= (and mapNonEmpty!51584 ((_ is ValueCellFull!15786) mapValue!51584)) b!1276577))

(assert (= (and b!1276576 ((_ is ValueCellFull!15786) mapDefault!51584)) b!1276572))

(assert (= start!108142 b!1276576))

(declare-fun m!1172475 () Bool)

(assert (=> b!1276575 m!1172475))

(declare-fun m!1172477 () Bool)

(assert (=> b!1276578 m!1172477))

(assert (=> b!1276578 m!1172477))

(declare-fun m!1172479 () Bool)

(assert (=> b!1276578 m!1172479))

(declare-fun m!1172481 () Bool)

(assert (=> b!1276574 m!1172481))

(declare-fun m!1172483 () Bool)

(assert (=> mapNonEmpty!51584 m!1172483))

(declare-fun m!1172485 () Bool)

(assert (=> start!108142 m!1172485))

(declare-fun m!1172487 () Bool)

(assert (=> start!108142 m!1172487))

(declare-fun m!1172489 () Bool)

(assert (=> start!108142 m!1172489))

(check-sat (not b_next!27819) (not b!1276575) tp_is_empty!33369 (not mapNonEmpty!51584) (not start!108142) (not b!1276578) (not b!1276574) b_and!45885)
(check-sat b_and!45885 (not b_next!27819))
