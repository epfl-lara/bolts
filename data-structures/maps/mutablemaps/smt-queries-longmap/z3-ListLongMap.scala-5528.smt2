; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72982 () Bool)

(assert start!72982)

(declare-fun b_free!13869 () Bool)

(declare-fun b_next!13869 () Bool)

(assert (=> start!72982 (= b_free!13869 (not b_next!13869))))

(declare-fun tp!49111 () Bool)

(declare-fun b_and!22973 () Bool)

(assert (=> start!72982 (= tp!49111 b_and!22973)))

(declare-fun b!847072 () Bool)

(declare-fun e!472725 () Bool)

(declare-fun e!472722 () Bool)

(declare-fun mapRes!25607 () Bool)

(assert (=> b!847072 (= e!472725 (and e!472722 mapRes!25607))))

(declare-fun condMapEmpty!25607 () Bool)

(declare-datatypes ((V!26387 0))(
  ( (V!26388 (val!8050 Int)) )
))
(declare-datatypes ((ValueCell!7563 0))(
  ( (ValueCellFull!7563 (v!10471 V!26387)) (EmptyCell!7563) )
))
(declare-datatypes ((array!48206 0))(
  ( (array!48207 (arr!23130 (Array (_ BitVec 32) ValueCell!7563)) (size!23571 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48206)

(declare-fun mapDefault!25607 () ValueCell!7563)

(assert (=> b!847072 (= condMapEmpty!25607 (= (arr!23130 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7563)) mapDefault!25607)))))

(declare-fun b!847073 () Bool)

(declare-fun e!472723 () Bool)

(declare-fun tp_is_empty!16005 () Bool)

(assert (=> b!847073 (= e!472723 tp_is_empty!16005)))

(declare-fun b!847074 () Bool)

(declare-fun res!575658 () Bool)

(declare-fun e!472724 () Bool)

(assert (=> b!847074 (=> (not res!575658) (not e!472724))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48208 0))(
  ( (array!48209 (arr!23131 (Array (_ BitVec 32) (_ BitVec 64))) (size!23572 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48208)

(assert (=> b!847074 (= res!575658 (and (= (size!23571 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23572 _keys!868) (size!23571 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847075 () Bool)

(declare-fun res!575654 () Bool)

(assert (=> b!847075 (=> (not res!575654) (not e!472724))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847075 (= res!575654 (validKeyInArray!0 k0!854))))

(declare-fun b!847076 () Bool)

(declare-fun res!575656 () Bool)

(assert (=> b!847076 (=> (not res!575656) (not e!472724))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847076 (= res!575656 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23572 _keys!868))))))

(declare-fun b!847078 () Bool)

(declare-fun res!575653 () Bool)

(assert (=> b!847078 (=> (not res!575653) (not e!472724))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!847078 (= res!575653 (and (= (select (arr!23131 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!847079 () Bool)

(assert (=> b!847079 (= e!472724 false)))

(declare-datatypes ((tuple2!10528 0))(
  ( (tuple2!10529 (_1!5274 (_ BitVec 64)) (_2!5274 V!26387)) )
))
(declare-datatypes ((List!16442 0))(
  ( (Nil!16439) (Cons!16438 (h!17569 tuple2!10528) (t!22821 List!16442)) )
))
(declare-datatypes ((ListLongMap!9311 0))(
  ( (ListLongMap!9312 (toList!4671 List!16442)) )
))
(declare-fun lt!381623 () ListLongMap!9311)

(declare-fun v!557 () V!26387)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26387)

(declare-fun zeroValue!654 () V!26387)

(declare-fun getCurrentListMapNoExtraKeys!2660 (array!48208 array!48206 (_ BitVec 32) (_ BitVec 32) V!26387 V!26387 (_ BitVec 32) Int) ListLongMap!9311)

(assert (=> b!847079 (= lt!381623 (getCurrentListMapNoExtraKeys!2660 _keys!868 (array!48207 (store (arr!23130 _values!688) i!612 (ValueCellFull!7563 v!557)) (size!23571 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381624 () ListLongMap!9311)

(assert (=> b!847079 (= lt!381624 (getCurrentListMapNoExtraKeys!2660 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847080 () Bool)

(declare-fun res!575657 () Bool)

(assert (=> b!847080 (=> (not res!575657) (not e!472724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847080 (= res!575657 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25607 () Bool)

(declare-fun tp!49112 () Bool)

(assert (=> mapNonEmpty!25607 (= mapRes!25607 (and tp!49112 e!472723))))

(declare-fun mapRest!25607 () (Array (_ BitVec 32) ValueCell!7563))

(declare-fun mapValue!25607 () ValueCell!7563)

(declare-fun mapKey!25607 () (_ BitVec 32))

(assert (=> mapNonEmpty!25607 (= (arr!23130 _values!688) (store mapRest!25607 mapKey!25607 mapValue!25607))))

(declare-fun b!847081 () Bool)

(declare-fun res!575652 () Bool)

(assert (=> b!847081 (=> (not res!575652) (not e!472724))))

(declare-datatypes ((List!16443 0))(
  ( (Nil!16440) (Cons!16439 (h!17570 (_ BitVec 64)) (t!22822 List!16443)) )
))
(declare-fun arrayNoDuplicates!0 (array!48208 (_ BitVec 32) List!16443) Bool)

(assert (=> b!847081 (= res!575652 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16440))))

(declare-fun b!847082 () Bool)

(assert (=> b!847082 (= e!472722 tp_is_empty!16005)))

(declare-fun mapIsEmpty!25607 () Bool)

(assert (=> mapIsEmpty!25607 mapRes!25607))

(declare-fun res!575651 () Bool)

(assert (=> start!72982 (=> (not res!575651) (not e!472724))))

(assert (=> start!72982 (= res!575651 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23572 _keys!868))))))

(assert (=> start!72982 e!472724))

(assert (=> start!72982 tp_is_empty!16005))

(assert (=> start!72982 true))

(assert (=> start!72982 tp!49111))

(declare-fun array_inv!18354 (array!48208) Bool)

(assert (=> start!72982 (array_inv!18354 _keys!868)))

(declare-fun array_inv!18355 (array!48206) Bool)

(assert (=> start!72982 (and (array_inv!18355 _values!688) e!472725)))

(declare-fun b!847077 () Bool)

(declare-fun res!575655 () Bool)

(assert (=> b!847077 (=> (not res!575655) (not e!472724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48208 (_ BitVec 32)) Bool)

(assert (=> b!847077 (= res!575655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72982 res!575651) b!847080))

(assert (= (and b!847080 res!575657) b!847074))

(assert (= (and b!847074 res!575658) b!847077))

(assert (= (and b!847077 res!575655) b!847081))

(assert (= (and b!847081 res!575652) b!847076))

(assert (= (and b!847076 res!575656) b!847075))

(assert (= (and b!847075 res!575654) b!847078))

(assert (= (and b!847078 res!575653) b!847079))

(assert (= (and b!847072 condMapEmpty!25607) mapIsEmpty!25607))

(assert (= (and b!847072 (not condMapEmpty!25607)) mapNonEmpty!25607))

(get-info :version)

(assert (= (and mapNonEmpty!25607 ((_ is ValueCellFull!7563) mapValue!25607)) b!847073))

(assert (= (and b!847072 ((_ is ValueCellFull!7563) mapDefault!25607)) b!847082))

(assert (= start!72982 b!847072))

(declare-fun m!788319 () Bool)

(assert (=> b!847079 m!788319))

(declare-fun m!788321 () Bool)

(assert (=> b!847079 m!788321))

(declare-fun m!788323 () Bool)

(assert (=> b!847079 m!788323))

(declare-fun m!788325 () Bool)

(assert (=> mapNonEmpty!25607 m!788325))

(declare-fun m!788327 () Bool)

(assert (=> start!72982 m!788327))

(declare-fun m!788329 () Bool)

(assert (=> start!72982 m!788329))

(declare-fun m!788331 () Bool)

(assert (=> b!847075 m!788331))

(declare-fun m!788333 () Bool)

(assert (=> b!847081 m!788333))

(declare-fun m!788335 () Bool)

(assert (=> b!847078 m!788335))

(declare-fun m!788337 () Bool)

(assert (=> b!847077 m!788337))

(declare-fun m!788339 () Bool)

(assert (=> b!847080 m!788339))

(check-sat (not b!847081) (not b!847079) b_and!22973 (not b!847077) (not start!72982) (not b!847075) (not b_next!13869) tp_is_empty!16005 (not mapNonEmpty!25607) (not b!847080))
(check-sat b_and!22973 (not b_next!13869))
