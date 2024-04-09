; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72916 () Bool)

(assert start!72916)

(declare-fun b_free!13803 () Bool)

(declare-fun b_next!13803 () Bool)

(assert (=> start!72916 (= b_free!13803 (not b_next!13803))))

(declare-fun tp!48914 () Bool)

(declare-fun b_and!22907 () Bool)

(assert (=> start!72916 (= tp!48914 b_and!22907)))

(declare-fun mapNonEmpty!25508 () Bool)

(declare-fun mapRes!25508 () Bool)

(declare-fun tp!48913 () Bool)

(declare-fun e!472226 () Bool)

(assert (=> mapNonEmpty!25508 (= mapRes!25508 (and tp!48913 e!472226))))

(declare-datatypes ((V!26299 0))(
  ( (V!26300 (val!8017 Int)) )
))
(declare-datatypes ((ValueCell!7530 0))(
  ( (ValueCellFull!7530 (v!10438 V!26299)) (EmptyCell!7530) )
))
(declare-fun mapValue!25508 () ValueCell!7530)

(declare-fun mapKey!25508 () (_ BitVec 32))

(declare-fun mapRest!25508 () (Array (_ BitVec 32) ValueCell!7530))

(declare-datatypes ((array!48078 0))(
  ( (array!48079 (arr!23066 (Array (_ BitVec 32) ValueCell!7530)) (size!23507 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48078)

(assert (=> mapNonEmpty!25508 (= (arr!23066 _values!688) (store mapRest!25508 mapKey!25508 mapValue!25508))))

(declare-fun b!845983 () Bool)

(declare-fun res!574864 () Bool)

(declare-fun e!472230 () Bool)

(assert (=> b!845983 (=> (not res!574864) (not e!472230))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48080 0))(
  ( (array!48081 (arr!23067 (Array (_ BitVec 32) (_ BitVec 64))) (size!23508 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48080)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!845983 (= res!574864 (and (= (select (arr!23067 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!845984 () Bool)

(declare-fun tp_is_empty!15939 () Bool)

(assert (=> b!845984 (= e!472226 tp_is_empty!15939)))

(declare-fun res!574863 () Bool)

(assert (=> start!72916 (=> (not res!574863) (not e!472230))))

(assert (=> start!72916 (= res!574863 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23508 _keys!868))))))

(assert (=> start!72916 e!472230))

(assert (=> start!72916 tp_is_empty!15939))

(assert (=> start!72916 true))

(assert (=> start!72916 tp!48914))

(declare-fun array_inv!18306 (array!48080) Bool)

(assert (=> start!72916 (array_inv!18306 _keys!868)))

(declare-fun e!472227 () Bool)

(declare-fun array_inv!18307 (array!48078) Bool)

(assert (=> start!72916 (and (array_inv!18307 _values!688) e!472227)))

(declare-fun b!845985 () Bool)

(declare-fun res!574859 () Bool)

(assert (=> b!845985 (=> (not res!574859) (not e!472230))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48080 (_ BitVec 32)) Bool)

(assert (=> b!845985 (= res!574859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845986 () Bool)

(declare-fun e!472228 () Bool)

(assert (=> b!845986 (= e!472227 (and e!472228 mapRes!25508))))

(declare-fun condMapEmpty!25508 () Bool)

(declare-fun mapDefault!25508 () ValueCell!7530)

(assert (=> b!845986 (= condMapEmpty!25508 (= (arr!23066 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7530)) mapDefault!25508)))))

(declare-fun b!845987 () Bool)

(assert (=> b!845987 (= e!472230 false)))

(declare-datatypes ((tuple2!10490 0))(
  ( (tuple2!10491 (_1!5255 (_ BitVec 64)) (_2!5255 V!26299)) )
))
(declare-datatypes ((List!16401 0))(
  ( (Nil!16398) (Cons!16397 (h!17528 tuple2!10490) (t!22780 List!16401)) )
))
(declare-datatypes ((ListLongMap!9273 0))(
  ( (ListLongMap!9274 (toList!4652 List!16401)) )
))
(declare-fun lt!381425 () ListLongMap!9273)

(declare-fun v!557 () V!26299)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26299)

(declare-fun zeroValue!654 () V!26299)

(declare-fun getCurrentListMapNoExtraKeys!2641 (array!48080 array!48078 (_ BitVec 32) (_ BitVec 32) V!26299 V!26299 (_ BitVec 32) Int) ListLongMap!9273)

(assert (=> b!845987 (= lt!381425 (getCurrentListMapNoExtraKeys!2641 _keys!868 (array!48079 (store (arr!23066 _values!688) i!612 (ValueCellFull!7530 v!557)) (size!23507 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381426 () ListLongMap!9273)

(assert (=> b!845987 (= lt!381426 (getCurrentListMapNoExtraKeys!2641 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845988 () Bool)

(assert (=> b!845988 (= e!472228 tp_is_empty!15939)))

(declare-fun b!845989 () Bool)

(declare-fun res!574865 () Bool)

(assert (=> b!845989 (=> (not res!574865) (not e!472230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845989 (= res!574865 (validKeyInArray!0 k0!854))))

(declare-fun b!845990 () Bool)

(declare-fun res!574862 () Bool)

(assert (=> b!845990 (=> (not res!574862) (not e!472230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845990 (= res!574862 (validMask!0 mask!1196))))

(declare-fun b!845991 () Bool)

(declare-fun res!574860 () Bool)

(assert (=> b!845991 (=> (not res!574860) (not e!472230))))

(assert (=> b!845991 (= res!574860 (and (= (size!23507 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23508 _keys!868) (size!23507 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845992 () Bool)

(declare-fun res!574861 () Bool)

(assert (=> b!845992 (=> (not res!574861) (not e!472230))))

(assert (=> b!845992 (= res!574861 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23508 _keys!868))))))

(declare-fun b!845993 () Bool)

(declare-fun res!574866 () Bool)

(assert (=> b!845993 (=> (not res!574866) (not e!472230))))

(declare-datatypes ((List!16402 0))(
  ( (Nil!16399) (Cons!16398 (h!17529 (_ BitVec 64)) (t!22781 List!16402)) )
))
(declare-fun arrayNoDuplicates!0 (array!48080 (_ BitVec 32) List!16402) Bool)

(assert (=> b!845993 (= res!574866 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16399))))

(declare-fun mapIsEmpty!25508 () Bool)

(assert (=> mapIsEmpty!25508 mapRes!25508))

(assert (= (and start!72916 res!574863) b!845990))

(assert (= (and b!845990 res!574862) b!845991))

(assert (= (and b!845991 res!574860) b!845985))

(assert (= (and b!845985 res!574859) b!845993))

(assert (= (and b!845993 res!574866) b!845992))

(assert (= (and b!845992 res!574861) b!845989))

(assert (= (and b!845989 res!574865) b!845983))

(assert (= (and b!845983 res!574864) b!845987))

(assert (= (and b!845986 condMapEmpty!25508) mapIsEmpty!25508))

(assert (= (and b!845986 (not condMapEmpty!25508)) mapNonEmpty!25508))

(get-info :version)

(assert (= (and mapNonEmpty!25508 ((_ is ValueCellFull!7530) mapValue!25508)) b!845984))

(assert (= (and b!845986 ((_ is ValueCellFull!7530) mapDefault!25508)) b!845988))

(assert (= start!72916 b!845986))

(declare-fun m!787593 () Bool)

(assert (=> b!845987 m!787593))

(declare-fun m!787595 () Bool)

(assert (=> b!845987 m!787595))

(declare-fun m!787597 () Bool)

(assert (=> b!845987 m!787597))

(declare-fun m!787599 () Bool)

(assert (=> b!845985 m!787599))

(declare-fun m!787601 () Bool)

(assert (=> b!845983 m!787601))

(declare-fun m!787603 () Bool)

(assert (=> b!845993 m!787603))

(declare-fun m!787605 () Bool)

(assert (=> b!845989 m!787605))

(declare-fun m!787607 () Bool)

(assert (=> b!845990 m!787607))

(declare-fun m!787609 () Bool)

(assert (=> start!72916 m!787609))

(declare-fun m!787611 () Bool)

(assert (=> start!72916 m!787611))

(declare-fun m!787613 () Bool)

(assert (=> mapNonEmpty!25508 m!787613))

(check-sat (not b_next!13803) (not b!845987) (not start!72916) (not b!845989) (not mapNonEmpty!25508) (not b!845985) b_and!22907 (not b!845990) (not b!845993) tp_is_empty!15939)
(check-sat b_and!22907 (not b_next!13803))
