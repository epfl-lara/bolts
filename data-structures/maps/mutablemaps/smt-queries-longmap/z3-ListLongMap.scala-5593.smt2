; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73372 () Bool)

(assert start!73372)

(declare-fun b_free!14259 () Bool)

(declare-fun b_next!14259 () Bool)

(assert (=> start!73372 (= b_free!14259 (not b_next!14259))))

(declare-fun tp!50281 () Bool)

(declare-fun b_and!23633 () Bool)

(assert (=> start!73372 (= tp!50281 b_and!23633)))

(declare-fun b!855649 () Bool)

(declare-fun e!477035 () Bool)

(declare-fun e!477032 () Bool)

(declare-fun mapRes!26192 () Bool)

(assert (=> b!855649 (= e!477035 (and e!477032 mapRes!26192))))

(declare-fun condMapEmpty!26192 () Bool)

(declare-datatypes ((V!26907 0))(
  ( (V!26908 (val!8245 Int)) )
))
(declare-datatypes ((ValueCell!7758 0))(
  ( (ValueCellFull!7758 (v!10666 V!26907)) (EmptyCell!7758) )
))
(declare-datatypes ((array!48962 0))(
  ( (array!48963 (arr!23508 (Array (_ BitVec 32) ValueCell!7758)) (size!23949 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48962)

(declare-fun mapDefault!26192 () ValueCell!7758)

(assert (=> b!855649 (= condMapEmpty!26192 (= (arr!23508 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7758)) mapDefault!26192)))))

(declare-fun b!855650 () Bool)

(declare-fun res!581232 () Bool)

(declare-fun e!477033 () Bool)

(assert (=> b!855650 (=> (not res!581232) (not e!477033))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48964 0))(
  ( (array!48965 (arr!23509 (Array (_ BitVec 32) (_ BitVec 64))) (size!23950 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48964)

(assert (=> b!855650 (= res!581232 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23950 _keys!868))))))

(declare-fun b!855651 () Bool)

(declare-fun e!477036 () Bool)

(declare-fun tp_is_empty!16395 () Bool)

(assert (=> b!855651 (= e!477036 tp_is_empty!16395)))

(declare-fun res!581237 () Bool)

(assert (=> start!73372 (=> (not res!581237) (not e!477033))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73372 (= res!581237 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23950 _keys!868))))))

(assert (=> start!73372 e!477033))

(assert (=> start!73372 tp_is_empty!16395))

(assert (=> start!73372 true))

(assert (=> start!73372 tp!50281))

(declare-fun array_inv!18610 (array!48964) Bool)

(assert (=> start!73372 (array_inv!18610 _keys!868)))

(declare-fun array_inv!18611 (array!48962) Bool)

(assert (=> start!73372 (and (array_inv!18611 _values!688) e!477035)))

(declare-fun b!855652 () Bool)

(assert (=> b!855652 (= e!477033 false)))

(declare-fun v!557 () V!26907)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10856 0))(
  ( (tuple2!10857 (_1!5438 (_ BitVec 64)) (_2!5438 V!26907)) )
))
(declare-datatypes ((List!16731 0))(
  ( (Nil!16728) (Cons!16727 (h!17858 tuple2!10856) (t!23380 List!16731)) )
))
(declare-datatypes ((ListLongMap!9639 0))(
  ( (ListLongMap!9640 (toList!4835 List!16731)) )
))
(declare-fun lt!385710 () ListLongMap!9639)

(declare-fun minValue!654 () V!26907)

(declare-fun zeroValue!654 () V!26907)

(declare-fun getCurrentListMapNoExtraKeys!2817 (array!48964 array!48962 (_ BitVec 32) (_ BitVec 32) V!26907 V!26907 (_ BitVec 32) Int) ListLongMap!9639)

(assert (=> b!855652 (= lt!385710 (getCurrentListMapNoExtraKeys!2817 _keys!868 (array!48963 (store (arr!23508 _values!688) i!612 (ValueCellFull!7758 v!557)) (size!23949 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385709 () ListLongMap!9639)

(assert (=> b!855652 (= lt!385709 (getCurrentListMapNoExtraKeys!2817 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855653 () Bool)

(declare-fun res!581234 () Bool)

(assert (=> b!855653 (=> (not res!581234) (not e!477033))))

(assert (=> b!855653 (= res!581234 (and (= (size!23949 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23950 _keys!868) (size!23949 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855654 () Bool)

(declare-fun res!581231 () Bool)

(assert (=> b!855654 (=> (not res!581231) (not e!477033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48964 (_ BitVec 32)) Bool)

(assert (=> b!855654 (= res!581231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855655 () Bool)

(declare-fun res!581236 () Bool)

(assert (=> b!855655 (=> (not res!581236) (not e!477033))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!855655 (= res!581236 (and (= (select (arr!23509 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!855656 () Bool)

(declare-fun res!581235 () Bool)

(assert (=> b!855656 (=> (not res!581235) (not e!477033))))

(declare-datatypes ((List!16732 0))(
  ( (Nil!16729) (Cons!16728 (h!17859 (_ BitVec 64)) (t!23381 List!16732)) )
))
(declare-fun arrayNoDuplicates!0 (array!48964 (_ BitVec 32) List!16732) Bool)

(assert (=> b!855656 (= res!581235 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16729))))

(declare-fun mapIsEmpty!26192 () Bool)

(assert (=> mapIsEmpty!26192 mapRes!26192))

(declare-fun b!855657 () Bool)

(declare-fun res!581238 () Bool)

(assert (=> b!855657 (=> (not res!581238) (not e!477033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855657 (= res!581238 (validKeyInArray!0 k0!854))))

(declare-fun b!855658 () Bool)

(declare-fun res!581233 () Bool)

(assert (=> b!855658 (=> (not res!581233) (not e!477033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855658 (= res!581233 (validMask!0 mask!1196))))

(declare-fun b!855659 () Bool)

(assert (=> b!855659 (= e!477032 tp_is_empty!16395)))

(declare-fun mapNonEmpty!26192 () Bool)

(declare-fun tp!50282 () Bool)

(assert (=> mapNonEmpty!26192 (= mapRes!26192 (and tp!50282 e!477036))))

(declare-fun mapRest!26192 () (Array (_ BitVec 32) ValueCell!7758))

(declare-fun mapValue!26192 () ValueCell!7758)

(declare-fun mapKey!26192 () (_ BitVec 32))

(assert (=> mapNonEmpty!26192 (= (arr!23508 _values!688) (store mapRest!26192 mapKey!26192 mapValue!26192))))

(assert (= (and start!73372 res!581237) b!855658))

(assert (= (and b!855658 res!581233) b!855653))

(assert (= (and b!855653 res!581234) b!855654))

(assert (= (and b!855654 res!581231) b!855656))

(assert (= (and b!855656 res!581235) b!855650))

(assert (= (and b!855650 res!581232) b!855657))

(assert (= (and b!855657 res!581238) b!855655))

(assert (= (and b!855655 res!581236) b!855652))

(assert (= (and b!855649 condMapEmpty!26192) mapIsEmpty!26192))

(assert (= (and b!855649 (not condMapEmpty!26192)) mapNonEmpty!26192))

(get-info :version)

(assert (= (and mapNonEmpty!26192 ((_ is ValueCellFull!7758) mapValue!26192)) b!855651))

(assert (= (and b!855649 ((_ is ValueCellFull!7758) mapDefault!26192)) b!855659))

(assert (= start!73372 b!855649))

(declare-fun m!796835 () Bool)

(assert (=> b!855654 m!796835))

(declare-fun m!796837 () Bool)

(assert (=> b!855652 m!796837))

(declare-fun m!796839 () Bool)

(assert (=> b!855652 m!796839))

(declare-fun m!796841 () Bool)

(assert (=> b!855652 m!796841))

(declare-fun m!796843 () Bool)

(assert (=> b!855657 m!796843))

(declare-fun m!796845 () Bool)

(assert (=> mapNonEmpty!26192 m!796845))

(declare-fun m!796847 () Bool)

(assert (=> b!855656 m!796847))

(declare-fun m!796849 () Bool)

(assert (=> b!855658 m!796849))

(declare-fun m!796851 () Bool)

(assert (=> start!73372 m!796851))

(declare-fun m!796853 () Bool)

(assert (=> start!73372 m!796853))

(declare-fun m!796855 () Bool)

(assert (=> b!855655 m!796855))

(check-sat (not start!73372) (not b_next!14259) b_and!23633 (not b!855654) (not b!855652) (not mapNonEmpty!26192) (not b!855658) (not b!855657) (not b!855656) tp_is_empty!16395)
(check-sat b_and!23633 (not b_next!14259))
