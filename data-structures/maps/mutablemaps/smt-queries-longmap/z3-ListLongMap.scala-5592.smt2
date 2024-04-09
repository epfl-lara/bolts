; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73366 () Bool)

(assert start!73366)

(declare-fun b_free!14253 () Bool)

(declare-fun b_next!14253 () Bool)

(assert (=> start!73366 (= b_free!14253 (not b_next!14253))))

(declare-fun tp!50263 () Bool)

(declare-fun b_and!23627 () Bool)

(assert (=> start!73366 (= tp!50263 b_and!23627)))

(declare-fun b!855550 () Bool)

(declare-fun e!476988 () Bool)

(declare-fun e!476990 () Bool)

(declare-fun mapRes!26183 () Bool)

(assert (=> b!855550 (= e!476988 (and e!476990 mapRes!26183))))

(declare-fun condMapEmpty!26183 () Bool)

(declare-datatypes ((V!26899 0))(
  ( (V!26900 (val!8242 Int)) )
))
(declare-datatypes ((ValueCell!7755 0))(
  ( (ValueCellFull!7755 (v!10663 V!26899)) (EmptyCell!7755) )
))
(declare-datatypes ((array!48954 0))(
  ( (array!48955 (arr!23504 (Array (_ BitVec 32) ValueCell!7755)) (size!23945 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48954)

(declare-fun mapDefault!26183 () ValueCell!7755)

(assert (=> b!855550 (= condMapEmpty!26183 (= (arr!23504 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7755)) mapDefault!26183)))))

(declare-fun b!855551 () Bool)

(declare-fun res!581166 () Bool)

(declare-fun e!476991 () Bool)

(assert (=> b!855551 (=> (not res!581166) (not e!476991))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48956 0))(
  ( (array!48957 (arr!23505 (Array (_ BitVec 32) (_ BitVec 64))) (size!23946 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48956)

(assert (=> b!855551 (= res!581166 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23946 _keys!868))))))

(declare-fun b!855552 () Bool)

(declare-fun e!476987 () Bool)

(declare-fun tp_is_empty!16389 () Bool)

(assert (=> b!855552 (= e!476987 tp_is_empty!16389)))

(declare-fun b!855553 () Bool)

(declare-fun res!581164 () Bool)

(assert (=> b!855553 (=> (not res!581164) (not e!476991))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!855553 (= res!581164 (and (= (size!23945 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23946 _keys!868) (size!23945 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26183 () Bool)

(declare-fun tp!50264 () Bool)

(assert (=> mapNonEmpty!26183 (= mapRes!26183 (and tp!50264 e!476987))))

(declare-fun mapRest!26183 () (Array (_ BitVec 32) ValueCell!7755))

(declare-fun mapKey!26183 () (_ BitVec 32))

(declare-fun mapValue!26183 () ValueCell!7755)

(assert (=> mapNonEmpty!26183 (= (arr!23504 _values!688) (store mapRest!26183 mapKey!26183 mapValue!26183))))

(declare-fun b!855554 () Bool)

(declare-fun res!581165 () Bool)

(assert (=> b!855554 (=> (not res!581165) (not e!476991))))

(declare-datatypes ((List!16729 0))(
  ( (Nil!16726) (Cons!16725 (h!17856 (_ BitVec 64)) (t!23378 List!16729)) )
))
(declare-fun arrayNoDuplicates!0 (array!48956 (_ BitVec 32) List!16729) Bool)

(assert (=> b!855554 (= res!581165 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16726))))

(declare-fun b!855555 () Bool)

(assert (=> b!855555 (= e!476990 tp_is_empty!16389)))

(declare-fun b!855556 () Bool)

(declare-fun res!581159 () Bool)

(assert (=> b!855556 (=> (not res!581159) (not e!476991))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855556 (= res!581159 (validKeyInArray!0 k0!854))))

(declare-fun b!855558 () Bool)

(declare-fun res!581161 () Bool)

(assert (=> b!855558 (=> (not res!581161) (not e!476991))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!855558 (= res!581161 (and (= (select (arr!23505 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26183 () Bool)

(assert (=> mapIsEmpty!26183 mapRes!26183))

(declare-fun b!855557 () Bool)

(declare-fun res!581160 () Bool)

(assert (=> b!855557 (=> (not res!581160) (not e!476991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855557 (= res!581160 (validMask!0 mask!1196))))

(declare-fun res!581163 () Bool)

(assert (=> start!73366 (=> (not res!581163) (not e!476991))))

(assert (=> start!73366 (= res!581163 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23946 _keys!868))))))

(assert (=> start!73366 e!476991))

(assert (=> start!73366 tp_is_empty!16389))

(assert (=> start!73366 true))

(assert (=> start!73366 tp!50263))

(declare-fun array_inv!18608 (array!48956) Bool)

(assert (=> start!73366 (array_inv!18608 _keys!868)))

(declare-fun array_inv!18609 (array!48954) Bool)

(assert (=> start!73366 (and (array_inv!18609 _values!688) e!476988)))

(declare-fun b!855559 () Bool)

(assert (=> b!855559 (= e!476991 false)))

(declare-datatypes ((tuple2!10854 0))(
  ( (tuple2!10855 (_1!5437 (_ BitVec 64)) (_2!5437 V!26899)) )
))
(declare-datatypes ((List!16730 0))(
  ( (Nil!16727) (Cons!16726 (h!17857 tuple2!10854) (t!23379 List!16730)) )
))
(declare-datatypes ((ListLongMap!9637 0))(
  ( (ListLongMap!9638 (toList!4834 List!16730)) )
))
(declare-fun lt!385692 () ListLongMap!9637)

(declare-fun v!557 () V!26899)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26899)

(declare-fun zeroValue!654 () V!26899)

(declare-fun getCurrentListMapNoExtraKeys!2816 (array!48956 array!48954 (_ BitVec 32) (_ BitVec 32) V!26899 V!26899 (_ BitVec 32) Int) ListLongMap!9637)

(assert (=> b!855559 (= lt!385692 (getCurrentListMapNoExtraKeys!2816 _keys!868 (array!48955 (store (arr!23504 _values!688) i!612 (ValueCellFull!7755 v!557)) (size!23945 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385691 () ListLongMap!9637)

(assert (=> b!855559 (= lt!385691 (getCurrentListMapNoExtraKeys!2816 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855560 () Bool)

(declare-fun res!581162 () Bool)

(assert (=> b!855560 (=> (not res!581162) (not e!476991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48956 (_ BitVec 32)) Bool)

(assert (=> b!855560 (= res!581162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73366 res!581163) b!855557))

(assert (= (and b!855557 res!581160) b!855553))

(assert (= (and b!855553 res!581164) b!855560))

(assert (= (and b!855560 res!581162) b!855554))

(assert (= (and b!855554 res!581165) b!855551))

(assert (= (and b!855551 res!581166) b!855556))

(assert (= (and b!855556 res!581159) b!855558))

(assert (= (and b!855558 res!581161) b!855559))

(assert (= (and b!855550 condMapEmpty!26183) mapIsEmpty!26183))

(assert (= (and b!855550 (not condMapEmpty!26183)) mapNonEmpty!26183))

(get-info :version)

(assert (= (and mapNonEmpty!26183 ((_ is ValueCellFull!7755) mapValue!26183)) b!855552))

(assert (= (and b!855550 ((_ is ValueCellFull!7755) mapDefault!26183)) b!855555))

(assert (= start!73366 b!855550))

(declare-fun m!796769 () Bool)

(assert (=> b!855557 m!796769))

(declare-fun m!796771 () Bool)

(assert (=> b!855558 m!796771))

(declare-fun m!796773 () Bool)

(assert (=> start!73366 m!796773))

(declare-fun m!796775 () Bool)

(assert (=> start!73366 m!796775))

(declare-fun m!796777 () Bool)

(assert (=> mapNonEmpty!26183 m!796777))

(declare-fun m!796779 () Bool)

(assert (=> b!855556 m!796779))

(declare-fun m!796781 () Bool)

(assert (=> b!855554 m!796781))

(declare-fun m!796783 () Bool)

(assert (=> b!855560 m!796783))

(declare-fun m!796785 () Bool)

(assert (=> b!855559 m!796785))

(declare-fun m!796787 () Bool)

(assert (=> b!855559 m!796787))

(declare-fun m!796789 () Bool)

(assert (=> b!855559 m!796789))

(check-sat (not mapNonEmpty!26183) (not b!855559) (not b_next!14253) (not b!855560) tp_is_empty!16389 b_and!23627 (not start!73366) (not b!855557) (not b!855556) (not b!855554))
(check-sat b_and!23627 (not b_next!14253))
