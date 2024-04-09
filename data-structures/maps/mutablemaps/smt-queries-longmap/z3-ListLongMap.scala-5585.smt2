; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73324 () Bool)

(assert start!73324)

(declare-fun b_free!14211 () Bool)

(declare-fun b_next!14211 () Bool)

(assert (=> start!73324 (= b_free!14211 (not b_next!14211))))

(declare-fun tp!50137 () Bool)

(declare-fun b_and!23585 () Bool)

(assert (=> start!73324 (= tp!50137 b_and!23585)))

(declare-fun b!854857 () Bool)

(declare-fun res!580661 () Bool)

(declare-fun e!476673 () Bool)

(assert (=> b!854857 (=> (not res!580661) (not e!476673))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48872 0))(
  ( (array!48873 (arr!23463 (Array (_ BitVec 32) (_ BitVec 64))) (size!23904 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48872)

(declare-datatypes ((V!26843 0))(
  ( (V!26844 (val!8221 Int)) )
))
(declare-datatypes ((ValueCell!7734 0))(
  ( (ValueCellFull!7734 (v!10642 V!26843)) (EmptyCell!7734) )
))
(declare-datatypes ((array!48874 0))(
  ( (array!48875 (arr!23464 (Array (_ BitVec 32) ValueCell!7734)) (size!23905 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48874)

(assert (=> b!854857 (= res!580661 (and (= (size!23905 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23904 _keys!868) (size!23905 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854858 () Bool)

(declare-fun res!580657 () Bool)

(assert (=> b!854858 (=> (not res!580657) (not e!476673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854858 (= res!580657 (validMask!0 mask!1196))))

(declare-fun b!854859 () Bool)

(declare-fun e!476675 () Bool)

(declare-fun tp_is_empty!16347 () Bool)

(assert (=> b!854859 (= e!476675 tp_is_empty!16347)))

(declare-fun b!854860 () Bool)

(assert (=> b!854860 (= e!476673 false)))

(declare-fun v!557 () V!26843)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10824 0))(
  ( (tuple2!10825 (_1!5422 (_ BitVec 64)) (_2!5422 V!26843)) )
))
(declare-datatypes ((List!16698 0))(
  ( (Nil!16695) (Cons!16694 (h!17825 tuple2!10824) (t!23347 List!16698)) )
))
(declare-datatypes ((ListLongMap!9607 0))(
  ( (ListLongMap!9608 (toList!4819 List!16698)) )
))
(declare-fun lt!385565 () ListLongMap!9607)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26843)

(declare-fun zeroValue!654 () V!26843)

(declare-fun getCurrentListMapNoExtraKeys!2801 (array!48872 array!48874 (_ BitVec 32) (_ BitVec 32) V!26843 V!26843 (_ BitVec 32) Int) ListLongMap!9607)

(assert (=> b!854860 (= lt!385565 (getCurrentListMapNoExtraKeys!2801 _keys!868 (array!48875 (store (arr!23464 _values!688) i!612 (ValueCellFull!7734 v!557)) (size!23905 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385566 () ListLongMap!9607)

(assert (=> b!854860 (= lt!385566 (getCurrentListMapNoExtraKeys!2801 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854861 () Bool)

(declare-fun res!580656 () Bool)

(assert (=> b!854861 (=> (not res!580656) (not e!476673))))

(assert (=> b!854861 (= res!580656 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23904 _keys!868))))))

(declare-fun b!854862 () Bool)

(declare-fun res!580658 () Bool)

(assert (=> b!854862 (=> (not res!580658) (not e!476673))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854862 (= res!580658 (validKeyInArray!0 k0!854))))

(declare-fun res!580662 () Bool)

(assert (=> start!73324 (=> (not res!580662) (not e!476673))))

(assert (=> start!73324 (= res!580662 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23904 _keys!868))))))

(assert (=> start!73324 e!476673))

(assert (=> start!73324 tp_is_empty!16347))

(assert (=> start!73324 true))

(assert (=> start!73324 tp!50137))

(declare-fun array_inv!18578 (array!48872) Bool)

(assert (=> start!73324 (array_inv!18578 _keys!868)))

(declare-fun e!476676 () Bool)

(declare-fun array_inv!18579 (array!48874) Bool)

(assert (=> start!73324 (and (array_inv!18579 _values!688) e!476676)))

(declare-fun b!854863 () Bool)

(declare-fun res!580659 () Bool)

(assert (=> b!854863 (=> (not res!580659) (not e!476673))))

(assert (=> b!854863 (= res!580659 (and (= (select (arr!23463 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854864 () Bool)

(declare-fun res!580660 () Bool)

(assert (=> b!854864 (=> (not res!580660) (not e!476673))))

(declare-datatypes ((List!16699 0))(
  ( (Nil!16696) (Cons!16695 (h!17826 (_ BitVec 64)) (t!23348 List!16699)) )
))
(declare-fun arrayNoDuplicates!0 (array!48872 (_ BitVec 32) List!16699) Bool)

(assert (=> b!854864 (= res!580660 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16696))))

(declare-fun b!854865 () Bool)

(declare-fun mapRes!26120 () Bool)

(assert (=> b!854865 (= e!476676 (and e!476675 mapRes!26120))))

(declare-fun condMapEmpty!26120 () Bool)

(declare-fun mapDefault!26120 () ValueCell!7734)

(assert (=> b!854865 (= condMapEmpty!26120 (= (arr!23464 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7734)) mapDefault!26120)))))

(declare-fun b!854866 () Bool)

(declare-fun e!476674 () Bool)

(assert (=> b!854866 (= e!476674 tp_is_empty!16347)))

(declare-fun mapNonEmpty!26120 () Bool)

(declare-fun tp!50138 () Bool)

(assert (=> mapNonEmpty!26120 (= mapRes!26120 (and tp!50138 e!476674))))

(declare-fun mapValue!26120 () ValueCell!7734)

(declare-fun mapKey!26120 () (_ BitVec 32))

(declare-fun mapRest!26120 () (Array (_ BitVec 32) ValueCell!7734))

(assert (=> mapNonEmpty!26120 (= (arr!23464 _values!688) (store mapRest!26120 mapKey!26120 mapValue!26120))))

(declare-fun b!854867 () Bool)

(declare-fun res!580655 () Bool)

(assert (=> b!854867 (=> (not res!580655) (not e!476673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48872 (_ BitVec 32)) Bool)

(assert (=> b!854867 (= res!580655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26120 () Bool)

(assert (=> mapIsEmpty!26120 mapRes!26120))

(assert (= (and start!73324 res!580662) b!854858))

(assert (= (and b!854858 res!580657) b!854857))

(assert (= (and b!854857 res!580661) b!854867))

(assert (= (and b!854867 res!580655) b!854864))

(assert (= (and b!854864 res!580660) b!854861))

(assert (= (and b!854861 res!580656) b!854862))

(assert (= (and b!854862 res!580658) b!854863))

(assert (= (and b!854863 res!580659) b!854860))

(assert (= (and b!854865 condMapEmpty!26120) mapIsEmpty!26120))

(assert (= (and b!854865 (not condMapEmpty!26120)) mapNonEmpty!26120))

(get-info :version)

(assert (= (and mapNonEmpty!26120 ((_ is ValueCellFull!7734) mapValue!26120)) b!854866))

(assert (= (and b!854865 ((_ is ValueCellFull!7734) mapDefault!26120)) b!854859))

(assert (= start!73324 b!854865))

(declare-fun m!796307 () Bool)

(assert (=> b!854867 m!796307))

(declare-fun m!796309 () Bool)

(assert (=> b!854862 m!796309))

(declare-fun m!796311 () Bool)

(assert (=> start!73324 m!796311))

(declare-fun m!796313 () Bool)

(assert (=> start!73324 m!796313))

(declare-fun m!796315 () Bool)

(assert (=> b!854864 m!796315))

(declare-fun m!796317 () Bool)

(assert (=> b!854860 m!796317))

(declare-fun m!796319 () Bool)

(assert (=> b!854860 m!796319))

(declare-fun m!796321 () Bool)

(assert (=> b!854860 m!796321))

(declare-fun m!796323 () Bool)

(assert (=> b!854858 m!796323))

(declare-fun m!796325 () Bool)

(assert (=> b!854863 m!796325))

(declare-fun m!796327 () Bool)

(assert (=> mapNonEmpty!26120 m!796327))

(check-sat (not b!854864) (not start!73324) b_and!23585 (not mapNonEmpty!26120) (not b!854858) (not b_next!14211) (not b!854860) (not b!854862) tp_is_empty!16347 (not b!854867))
(check-sat b_and!23585 (not b_next!14211))
