; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73342 () Bool)

(assert start!73342)

(declare-fun b_free!14229 () Bool)

(declare-fun b_next!14229 () Bool)

(assert (=> start!73342 (= b_free!14229 (not b_next!14229))))

(declare-fun tp!50191 () Bool)

(declare-fun b_and!23603 () Bool)

(assert (=> start!73342 (= tp!50191 b_and!23603)))

(declare-fun b!855154 () Bool)

(declare-fun res!580876 () Bool)

(declare-fun e!476810 () Bool)

(assert (=> b!855154 (=> (not res!580876) (not e!476810))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48906 0))(
  ( (array!48907 (arr!23480 (Array (_ BitVec 32) (_ BitVec 64))) (size!23921 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48906)

(assert (=> b!855154 (= res!580876 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23921 _keys!868))))))

(declare-fun b!855155 () Bool)

(declare-fun e!476807 () Bool)

(declare-fun tp_is_empty!16365 () Bool)

(assert (=> b!855155 (= e!476807 tp_is_empty!16365)))

(declare-fun b!855156 () Bool)

(assert (=> b!855156 (= e!476810 false)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26867 0))(
  ( (V!26868 (val!8230 Int)) )
))
(declare-datatypes ((tuple2!10832 0))(
  ( (tuple2!10833 (_1!5426 (_ BitVec 64)) (_2!5426 V!26867)) )
))
(declare-datatypes ((List!16709 0))(
  ( (Nil!16706) (Cons!16705 (h!17836 tuple2!10832) (t!23358 List!16709)) )
))
(declare-datatypes ((ListLongMap!9615 0))(
  ( (ListLongMap!9616 (toList!4823 List!16709)) )
))
(declare-fun lt!385619 () ListLongMap!9615)

(declare-datatypes ((ValueCell!7743 0))(
  ( (ValueCellFull!7743 (v!10651 V!26867)) (EmptyCell!7743) )
))
(declare-datatypes ((array!48908 0))(
  ( (array!48909 (arr!23481 (Array (_ BitVec 32) ValueCell!7743)) (size!23922 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48908)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26867)

(declare-fun zeroValue!654 () V!26867)

(declare-fun v!557 () V!26867)

(declare-fun getCurrentListMapNoExtraKeys!2805 (array!48906 array!48908 (_ BitVec 32) (_ BitVec 32) V!26867 V!26867 (_ BitVec 32) Int) ListLongMap!9615)

(assert (=> b!855156 (= lt!385619 (getCurrentListMapNoExtraKeys!2805 _keys!868 (array!48909 (store (arr!23481 _values!688) i!612 (ValueCellFull!7743 v!557)) (size!23922 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385620 () ListLongMap!9615)

(assert (=> b!855156 (= lt!385620 (getCurrentListMapNoExtraKeys!2805 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!580872 () Bool)

(assert (=> start!73342 (=> (not res!580872) (not e!476810))))

(assert (=> start!73342 (= res!580872 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23921 _keys!868))))))

(assert (=> start!73342 e!476810))

(assert (=> start!73342 tp_is_empty!16365))

(assert (=> start!73342 true))

(assert (=> start!73342 tp!50191))

(declare-fun array_inv!18592 (array!48906) Bool)

(assert (=> start!73342 (array_inv!18592 _keys!868)))

(declare-fun e!476809 () Bool)

(declare-fun array_inv!18593 (array!48908) Bool)

(assert (=> start!73342 (and (array_inv!18593 _values!688) e!476809)))

(declare-fun b!855157 () Bool)

(declare-fun e!476808 () Bool)

(declare-fun mapRes!26147 () Bool)

(assert (=> b!855157 (= e!476809 (and e!476808 mapRes!26147))))

(declare-fun condMapEmpty!26147 () Bool)

(declare-fun mapDefault!26147 () ValueCell!7743)

(assert (=> b!855157 (= condMapEmpty!26147 (= (arr!23481 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7743)) mapDefault!26147)))))

(declare-fun b!855158 () Bool)

(declare-fun res!580874 () Bool)

(assert (=> b!855158 (=> (not res!580874) (not e!476810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855158 (= res!580874 (validMask!0 mask!1196))))

(declare-fun b!855159 () Bool)

(declare-fun res!580878 () Bool)

(assert (=> b!855159 (=> (not res!580878) (not e!476810))))

(declare-datatypes ((List!16710 0))(
  ( (Nil!16707) (Cons!16706 (h!17837 (_ BitVec 64)) (t!23359 List!16710)) )
))
(declare-fun arrayNoDuplicates!0 (array!48906 (_ BitVec 32) List!16710) Bool)

(assert (=> b!855159 (= res!580878 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16707))))

(declare-fun mapIsEmpty!26147 () Bool)

(assert (=> mapIsEmpty!26147 mapRes!26147))

(declare-fun b!855160 () Bool)

(declare-fun res!580871 () Bool)

(assert (=> b!855160 (=> (not res!580871) (not e!476810))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855160 (= res!580871 (validKeyInArray!0 k0!854))))

(declare-fun b!855161 () Bool)

(declare-fun res!580877 () Bool)

(assert (=> b!855161 (=> (not res!580877) (not e!476810))))

(assert (=> b!855161 (= res!580877 (and (= (select (arr!23480 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26147 () Bool)

(declare-fun tp!50192 () Bool)

(assert (=> mapNonEmpty!26147 (= mapRes!26147 (and tp!50192 e!476807))))

(declare-fun mapValue!26147 () ValueCell!7743)

(declare-fun mapRest!26147 () (Array (_ BitVec 32) ValueCell!7743))

(declare-fun mapKey!26147 () (_ BitVec 32))

(assert (=> mapNonEmpty!26147 (= (arr!23481 _values!688) (store mapRest!26147 mapKey!26147 mapValue!26147))))

(declare-fun b!855162 () Bool)

(declare-fun res!580875 () Bool)

(assert (=> b!855162 (=> (not res!580875) (not e!476810))))

(assert (=> b!855162 (= res!580875 (and (= (size!23922 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23921 _keys!868) (size!23922 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855163 () Bool)

(declare-fun res!580873 () Bool)

(assert (=> b!855163 (=> (not res!580873) (not e!476810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48906 (_ BitVec 32)) Bool)

(assert (=> b!855163 (= res!580873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855164 () Bool)

(assert (=> b!855164 (= e!476808 tp_is_empty!16365)))

(assert (= (and start!73342 res!580872) b!855158))

(assert (= (and b!855158 res!580874) b!855162))

(assert (= (and b!855162 res!580875) b!855163))

(assert (= (and b!855163 res!580873) b!855159))

(assert (= (and b!855159 res!580878) b!855154))

(assert (= (and b!855154 res!580876) b!855160))

(assert (= (and b!855160 res!580871) b!855161))

(assert (= (and b!855161 res!580877) b!855156))

(assert (= (and b!855157 condMapEmpty!26147) mapIsEmpty!26147))

(assert (= (and b!855157 (not condMapEmpty!26147)) mapNonEmpty!26147))

(get-info :version)

(assert (= (and mapNonEmpty!26147 ((_ is ValueCellFull!7743) mapValue!26147)) b!855155))

(assert (= (and b!855157 ((_ is ValueCellFull!7743) mapDefault!26147)) b!855164))

(assert (= start!73342 b!855157))

(declare-fun m!796505 () Bool)

(assert (=> b!855163 m!796505))

(declare-fun m!796507 () Bool)

(assert (=> start!73342 m!796507))

(declare-fun m!796509 () Bool)

(assert (=> start!73342 m!796509))

(declare-fun m!796511 () Bool)

(assert (=> b!855159 m!796511))

(declare-fun m!796513 () Bool)

(assert (=> b!855156 m!796513))

(declare-fun m!796515 () Bool)

(assert (=> b!855156 m!796515))

(declare-fun m!796517 () Bool)

(assert (=> b!855156 m!796517))

(declare-fun m!796519 () Bool)

(assert (=> b!855160 m!796519))

(declare-fun m!796521 () Bool)

(assert (=> mapNonEmpty!26147 m!796521))

(declare-fun m!796523 () Bool)

(assert (=> b!855161 m!796523))

(declare-fun m!796525 () Bool)

(assert (=> b!855158 m!796525))

(check-sat (not b_next!14229) b_and!23603 (not b!855159) (not b!855163) (not start!73342) (not b!855160) (not b!855158) tp_is_empty!16365 (not b!855156) (not mapNonEmpty!26147))
(check-sat b_and!23603 (not b_next!14229))
