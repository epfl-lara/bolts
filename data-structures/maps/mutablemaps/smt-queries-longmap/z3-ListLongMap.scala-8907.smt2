; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108130 () Bool)

(assert start!108130)

(declare-fun b_free!27807 () Bool)

(declare-fun b_next!27807 () Bool)

(assert (=> start!108130 (= b_free!27807 (not b_next!27807))))

(declare-fun tp!98376 () Bool)

(declare-fun b_and!45873 () Bool)

(assert (=> start!108130 (= tp!98376 b_and!45873)))

(declare-fun b!1276446 () Bool)

(declare-fun res!848366 () Bool)

(declare-fun e!728936 () Bool)

(assert (=> b!1276446 (=> (not res!848366) (not e!728936))))

(declare-datatypes ((array!83759 0))(
  ( (array!83760 (arr!40386 (Array (_ BitVec 32) (_ BitVec 64))) (size!40937 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83759)

(declare-datatypes ((List!28816 0))(
  ( (Nil!28813) (Cons!28812 (h!30021 (_ BitVec 64)) (t!42359 List!28816)) )
))
(declare-fun arrayNoDuplicates!0 (array!83759 (_ BitVec 32) List!28816) Bool)

(assert (=> b!1276446 (= res!848366 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28813))))

(declare-fun b!1276447 () Bool)

(declare-fun res!848364 () Bool)

(assert (=> b!1276447 (=> (not res!848364) (not e!728936))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83759 (_ BitVec 32)) Bool)

(assert (=> b!1276447 (= res!848364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848367 () Bool)

(assert (=> start!108130 (=> (not res!848367) (not e!728936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108130 (= res!848367 (validMask!0 mask!1805))))

(assert (=> start!108130 e!728936))

(assert (=> start!108130 true))

(assert (=> start!108130 tp!98376))

(declare-fun tp_is_empty!33357 () Bool)

(assert (=> start!108130 tp_is_empty!33357))

(declare-datatypes ((V!49579 0))(
  ( (V!49580 (val!16753 Int)) )
))
(declare-datatypes ((ValueCell!15780 0))(
  ( (ValueCellFull!15780 (v!19348 V!49579)) (EmptyCell!15780) )
))
(declare-datatypes ((array!83761 0))(
  ( (array!83762 (arr!40387 (Array (_ BitVec 32) ValueCell!15780)) (size!40938 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83761)

(declare-fun e!728934 () Bool)

(declare-fun array_inv!30651 (array!83761) Bool)

(assert (=> start!108130 (and (array_inv!30651 _values!1187) e!728934)))

(declare-fun array_inv!30652 (array!83759) Bool)

(assert (=> start!108130 (array_inv!30652 _keys!1427)))

(declare-fun mapNonEmpty!51566 () Bool)

(declare-fun mapRes!51566 () Bool)

(declare-fun tp!98375 () Bool)

(declare-fun e!728935 () Bool)

(assert (=> mapNonEmpty!51566 (= mapRes!51566 (and tp!98375 e!728935))))

(declare-fun mapRest!51566 () (Array (_ BitVec 32) ValueCell!15780))

(declare-fun mapKey!51566 () (_ BitVec 32))

(declare-fun mapValue!51566 () ValueCell!15780)

(assert (=> mapNonEmpty!51566 (= (arr!40387 _values!1187) (store mapRest!51566 mapKey!51566 mapValue!51566))))

(declare-fun b!1276448 () Bool)

(declare-fun e!728932 () Bool)

(assert (=> b!1276448 (= e!728934 (and e!728932 mapRes!51566))))

(declare-fun condMapEmpty!51566 () Bool)

(declare-fun mapDefault!51566 () ValueCell!15780)

(assert (=> b!1276448 (= condMapEmpty!51566 (= (arr!40387 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15780)) mapDefault!51566)))))

(declare-fun b!1276449 () Bool)

(assert (=> b!1276449 (= e!728932 tp_is_empty!33357)))

(declare-fun b!1276450 () Bool)

(assert (=> b!1276450 (= e!728936 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49579)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun lt!575439 () Bool)

(declare-fun zeroValue!1129 () V!49579)

(declare-datatypes ((tuple2!21630 0))(
  ( (tuple2!21631 (_1!10825 (_ BitVec 64)) (_2!10825 V!49579)) )
))
(declare-datatypes ((List!28817 0))(
  ( (Nil!28814) (Cons!28813 (h!30022 tuple2!21630) (t!42360 List!28817)) )
))
(declare-datatypes ((ListLongMap!19299 0))(
  ( (ListLongMap!19300 (toList!9665 List!28817)) )
))
(declare-fun contains!7712 (ListLongMap!19299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4685 (array!83759 array!83761 (_ BitVec 32) (_ BitVec 32) V!49579 V!49579 (_ BitVec 32) Int) ListLongMap!19299)

(assert (=> b!1276450 (= lt!575439 (contains!7712 (getCurrentListMap!4685 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276451 () Bool)

(assert (=> b!1276451 (= e!728935 tp_is_empty!33357)))

(declare-fun b!1276452 () Bool)

(declare-fun res!848365 () Bool)

(assert (=> b!1276452 (=> (not res!848365) (not e!728936))))

(assert (=> b!1276452 (= res!848365 (and (= (size!40938 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40937 _keys!1427) (size!40938 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51566 () Bool)

(assert (=> mapIsEmpty!51566 mapRes!51566))

(assert (= (and start!108130 res!848367) b!1276452))

(assert (= (and b!1276452 res!848365) b!1276447))

(assert (= (and b!1276447 res!848364) b!1276446))

(assert (= (and b!1276446 res!848366) b!1276450))

(assert (= (and b!1276448 condMapEmpty!51566) mapIsEmpty!51566))

(assert (= (and b!1276448 (not condMapEmpty!51566)) mapNonEmpty!51566))

(get-info :version)

(assert (= (and mapNonEmpty!51566 ((_ is ValueCellFull!15780) mapValue!51566)) b!1276451))

(assert (= (and b!1276448 ((_ is ValueCellFull!15780) mapDefault!51566)) b!1276449))

(assert (= start!108130 b!1276448))

(declare-fun m!1172379 () Bool)

(assert (=> start!108130 m!1172379))

(declare-fun m!1172381 () Bool)

(assert (=> start!108130 m!1172381))

(declare-fun m!1172383 () Bool)

(assert (=> start!108130 m!1172383))

(declare-fun m!1172385 () Bool)

(assert (=> b!1276450 m!1172385))

(assert (=> b!1276450 m!1172385))

(declare-fun m!1172387 () Bool)

(assert (=> b!1276450 m!1172387))

(declare-fun m!1172389 () Bool)

(assert (=> b!1276446 m!1172389))

(declare-fun m!1172391 () Bool)

(assert (=> mapNonEmpty!51566 m!1172391))

(declare-fun m!1172393 () Bool)

(assert (=> b!1276447 m!1172393))

(check-sat (not b!1276446) tp_is_empty!33357 (not b_next!27807) (not b!1276447) (not mapNonEmpty!51566) (not start!108130) b_and!45873 (not b!1276450))
(check-sat b_and!45873 (not b_next!27807))
