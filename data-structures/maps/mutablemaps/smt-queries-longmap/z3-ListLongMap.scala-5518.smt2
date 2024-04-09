; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72922 () Bool)

(assert start!72922)

(declare-fun b_free!13809 () Bool)

(declare-fun b_next!13809 () Bool)

(assert (=> start!72922 (= b_free!13809 (not b_next!13809))))

(declare-fun tp!48931 () Bool)

(declare-fun b_and!22913 () Bool)

(assert (=> start!72922 (= tp!48931 b_and!22913)))

(declare-fun b!846082 () Bool)

(declare-fun res!574936 () Bool)

(declare-fun e!472272 () Bool)

(assert (=> b!846082 (=> (not res!574936) (not e!472272))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846082 (= res!574936 (validKeyInArray!0 k0!854))))

(declare-fun b!846084 () Bool)

(assert (=> b!846084 (= e!472272 false)))

(declare-datatypes ((V!26307 0))(
  ( (V!26308 (val!8020 Int)) )
))
(declare-datatypes ((tuple2!10494 0))(
  ( (tuple2!10495 (_1!5257 (_ BitVec 64)) (_2!5257 V!26307)) )
))
(declare-datatypes ((List!16405 0))(
  ( (Nil!16402) (Cons!16401 (h!17532 tuple2!10494) (t!22784 List!16405)) )
))
(declare-datatypes ((ListLongMap!9277 0))(
  ( (ListLongMap!9278 (toList!4654 List!16405)) )
))
(declare-fun lt!381443 () ListLongMap!9277)

(declare-fun v!557 () V!26307)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48090 0))(
  ( (array!48091 (arr!23072 (Array (_ BitVec 32) (_ BitVec 64))) (size!23513 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48090)

(declare-datatypes ((ValueCell!7533 0))(
  ( (ValueCellFull!7533 (v!10441 V!26307)) (EmptyCell!7533) )
))
(declare-datatypes ((array!48092 0))(
  ( (array!48093 (arr!23073 (Array (_ BitVec 32) ValueCell!7533)) (size!23514 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48092)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26307)

(declare-fun zeroValue!654 () V!26307)

(declare-fun getCurrentListMapNoExtraKeys!2643 (array!48090 array!48092 (_ BitVec 32) (_ BitVec 32) V!26307 V!26307 (_ BitVec 32) Int) ListLongMap!9277)

(assert (=> b!846084 (= lt!381443 (getCurrentListMapNoExtraKeys!2643 _keys!868 (array!48093 (store (arr!23073 _values!688) i!612 (ValueCellFull!7533 v!557)) (size!23514 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381444 () ListLongMap!9277)

(assert (=> b!846084 (= lt!381444 (getCurrentListMapNoExtraKeys!2643 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846085 () Bool)

(declare-fun res!574932 () Bool)

(assert (=> b!846085 (=> (not res!574932) (not e!472272))))

(declare-datatypes ((List!16406 0))(
  ( (Nil!16403) (Cons!16402 (h!17533 (_ BitVec 64)) (t!22785 List!16406)) )
))
(declare-fun arrayNoDuplicates!0 (array!48090 (_ BitVec 32) List!16406) Bool)

(assert (=> b!846085 (= res!574932 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16403))))

(declare-fun mapIsEmpty!25517 () Bool)

(declare-fun mapRes!25517 () Bool)

(assert (=> mapIsEmpty!25517 mapRes!25517))

(declare-fun b!846086 () Bool)

(declare-fun res!574938 () Bool)

(assert (=> b!846086 (=> (not res!574938) (not e!472272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48090 (_ BitVec 32)) Bool)

(assert (=> b!846086 (= res!574938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846087 () Bool)

(declare-fun res!574931 () Bool)

(assert (=> b!846087 (=> (not res!574931) (not e!472272))))

(assert (=> b!846087 (= res!574931 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23513 _keys!868))))))

(declare-fun b!846088 () Bool)

(declare-fun res!574935 () Bool)

(assert (=> b!846088 (=> (not res!574935) (not e!472272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846088 (= res!574935 (validMask!0 mask!1196))))

(declare-fun b!846089 () Bool)

(declare-fun e!472274 () Bool)

(declare-fun tp_is_empty!15945 () Bool)

(assert (=> b!846089 (= e!472274 tp_is_empty!15945)))

(declare-fun b!846090 () Bool)

(declare-fun e!472271 () Bool)

(assert (=> b!846090 (= e!472271 tp_is_empty!15945)))

(declare-fun b!846091 () Bool)

(declare-fun e!472275 () Bool)

(assert (=> b!846091 (= e!472275 (and e!472271 mapRes!25517))))

(declare-fun condMapEmpty!25517 () Bool)

(declare-fun mapDefault!25517 () ValueCell!7533)

(assert (=> b!846091 (= condMapEmpty!25517 (= (arr!23073 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7533)) mapDefault!25517)))))

(declare-fun b!846092 () Bool)

(declare-fun res!574937 () Bool)

(assert (=> b!846092 (=> (not res!574937) (not e!472272))))

(assert (=> b!846092 (= res!574937 (and (= (size!23514 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23513 _keys!868) (size!23514 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25517 () Bool)

(declare-fun tp!48932 () Bool)

(assert (=> mapNonEmpty!25517 (= mapRes!25517 (and tp!48932 e!472274))))

(declare-fun mapValue!25517 () ValueCell!7533)

(declare-fun mapKey!25517 () (_ BitVec 32))

(declare-fun mapRest!25517 () (Array (_ BitVec 32) ValueCell!7533))

(assert (=> mapNonEmpty!25517 (= (arr!23073 _values!688) (store mapRest!25517 mapKey!25517 mapValue!25517))))

(declare-fun b!846083 () Bool)

(declare-fun res!574933 () Bool)

(assert (=> b!846083 (=> (not res!574933) (not e!472272))))

(assert (=> b!846083 (= res!574933 (and (= (select (arr!23072 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!574934 () Bool)

(assert (=> start!72922 (=> (not res!574934) (not e!472272))))

(assert (=> start!72922 (= res!574934 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23513 _keys!868))))))

(assert (=> start!72922 e!472272))

(assert (=> start!72922 tp_is_empty!15945))

(assert (=> start!72922 true))

(assert (=> start!72922 tp!48931))

(declare-fun array_inv!18312 (array!48090) Bool)

(assert (=> start!72922 (array_inv!18312 _keys!868)))

(declare-fun array_inv!18313 (array!48092) Bool)

(assert (=> start!72922 (and (array_inv!18313 _values!688) e!472275)))

(assert (= (and start!72922 res!574934) b!846088))

(assert (= (and b!846088 res!574935) b!846092))

(assert (= (and b!846092 res!574937) b!846086))

(assert (= (and b!846086 res!574938) b!846085))

(assert (= (and b!846085 res!574932) b!846087))

(assert (= (and b!846087 res!574931) b!846082))

(assert (= (and b!846082 res!574936) b!846083))

(assert (= (and b!846083 res!574933) b!846084))

(assert (= (and b!846091 condMapEmpty!25517) mapIsEmpty!25517))

(assert (= (and b!846091 (not condMapEmpty!25517)) mapNonEmpty!25517))

(get-info :version)

(assert (= (and mapNonEmpty!25517 ((_ is ValueCellFull!7533) mapValue!25517)) b!846089))

(assert (= (and b!846091 ((_ is ValueCellFull!7533) mapDefault!25517)) b!846090))

(assert (= start!72922 b!846091))

(declare-fun m!787659 () Bool)

(assert (=> b!846083 m!787659))

(declare-fun m!787661 () Bool)

(assert (=> b!846084 m!787661))

(declare-fun m!787663 () Bool)

(assert (=> b!846084 m!787663))

(declare-fun m!787665 () Bool)

(assert (=> b!846084 m!787665))

(declare-fun m!787667 () Bool)

(assert (=> b!846086 m!787667))

(declare-fun m!787669 () Bool)

(assert (=> mapNonEmpty!25517 m!787669))

(declare-fun m!787671 () Bool)

(assert (=> b!846082 m!787671))

(declare-fun m!787673 () Bool)

(assert (=> start!72922 m!787673))

(declare-fun m!787675 () Bool)

(assert (=> start!72922 m!787675))

(declare-fun m!787677 () Bool)

(assert (=> b!846088 m!787677))

(declare-fun m!787679 () Bool)

(assert (=> b!846085 m!787679))

(check-sat (not b!846082) (not b!846085) tp_is_empty!15945 b_and!22913 (not mapNonEmpty!25517) (not b_next!13809) (not b!846086) (not b!846088) (not b!846084) (not start!72922))
(check-sat b_and!22913 (not b_next!13809))
