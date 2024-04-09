; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72850 () Bool)

(assert start!72850)

(declare-fun b!844946 () Bool)

(declare-fun res!574119 () Bool)

(declare-fun e!471732 () Bool)

(assert (=> b!844946 (=> (not res!574119) (not e!471732))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844946 (= res!574119 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25409 () Bool)

(declare-fun mapRes!25409 () Bool)

(assert (=> mapIsEmpty!25409 mapRes!25409))

(declare-fun mapNonEmpty!25409 () Bool)

(declare-fun tp!48728 () Bool)

(declare-fun e!471733 () Bool)

(assert (=> mapNonEmpty!25409 (= mapRes!25409 (and tp!48728 e!471733))))

(declare-datatypes ((V!26211 0))(
  ( (V!26212 (val!7984 Int)) )
))
(declare-datatypes ((ValueCell!7497 0))(
  ( (ValueCellFull!7497 (v!10405 V!26211)) (EmptyCell!7497) )
))
(declare-fun mapValue!25409 () ValueCell!7497)

(declare-fun mapKey!25409 () (_ BitVec 32))

(declare-fun mapRest!25409 () (Array (_ BitVec 32) ValueCell!7497))

(declare-datatypes ((array!47950 0))(
  ( (array!47951 (arr!23002 (Array (_ BitVec 32) ValueCell!7497)) (size!23443 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47950)

(assert (=> mapNonEmpty!25409 (= (arr!23002 _values!688) (store mapRest!25409 mapKey!25409 mapValue!25409))))

(declare-fun b!844947 () Bool)

(declare-fun res!574122 () Bool)

(assert (=> b!844947 (=> (not res!574122) (not e!471732))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!47952 0))(
  ( (array!47953 (arr!23003 (Array (_ BitVec 32) (_ BitVec 64))) (size!23444 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47952)

(assert (=> b!844947 (= res!574122 (and (= (size!23443 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23444 _keys!868) (size!23443 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844948 () Bool)

(declare-fun e!471731 () Bool)

(declare-fun e!471734 () Bool)

(assert (=> b!844948 (= e!471731 (and e!471734 mapRes!25409))))

(declare-fun condMapEmpty!25409 () Bool)

(declare-fun mapDefault!25409 () ValueCell!7497)

(assert (=> b!844948 (= condMapEmpty!25409 (= (arr!23002 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7497)) mapDefault!25409)))))

(declare-fun b!844949 () Bool)

(declare-fun tp_is_empty!15873 () Bool)

(assert (=> b!844949 (= e!471734 tp_is_empty!15873)))

(declare-fun res!574121 () Bool)

(assert (=> start!72850 (=> (not res!574121) (not e!471732))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72850 (= res!574121 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23444 _keys!868))))))

(assert (=> start!72850 e!471732))

(assert (=> start!72850 true))

(declare-fun array_inv!18266 (array!47952) Bool)

(assert (=> start!72850 (array_inv!18266 _keys!868)))

(declare-fun array_inv!18267 (array!47950) Bool)

(assert (=> start!72850 (and (array_inv!18267 _values!688) e!471731)))

(declare-fun b!844950 () Bool)

(declare-fun res!574120 () Bool)

(assert (=> b!844950 (=> (not res!574120) (not e!471732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47952 (_ BitVec 32)) Bool)

(assert (=> b!844950 (= res!574120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844951 () Bool)

(assert (=> b!844951 (= e!471733 tp_is_empty!15873)))

(declare-fun b!844952 () Bool)

(assert (=> b!844952 (= e!471732 false)))

(declare-fun lt!381321 () Bool)

(declare-datatypes ((List!16357 0))(
  ( (Nil!16354) (Cons!16353 (h!17484 (_ BitVec 64)) (t!22736 List!16357)) )
))
(declare-fun arrayNoDuplicates!0 (array!47952 (_ BitVec 32) List!16357) Bool)

(assert (=> b!844952 (= lt!381321 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16354))))

(assert (= (and start!72850 res!574121) b!844946))

(assert (= (and b!844946 res!574119) b!844947))

(assert (= (and b!844947 res!574122) b!844950))

(assert (= (and b!844950 res!574120) b!844952))

(assert (= (and b!844948 condMapEmpty!25409) mapIsEmpty!25409))

(assert (= (and b!844948 (not condMapEmpty!25409)) mapNonEmpty!25409))

(get-info :version)

(assert (= (and mapNonEmpty!25409 ((_ is ValueCellFull!7497) mapValue!25409)) b!844951))

(assert (= (and b!844948 ((_ is ValueCellFull!7497) mapDefault!25409)) b!844949))

(assert (= start!72850 b!844948))

(declare-fun m!787025 () Bool)

(assert (=> b!844950 m!787025))

(declare-fun m!787027 () Bool)

(assert (=> b!844952 m!787027))

(declare-fun m!787029 () Bool)

(assert (=> b!844946 m!787029))

(declare-fun m!787031 () Bool)

(assert (=> mapNonEmpty!25409 m!787031))

(declare-fun m!787033 () Bool)

(assert (=> start!72850 m!787033))

(declare-fun m!787035 () Bool)

(assert (=> start!72850 m!787035))

(check-sat (not b!844950) (not mapNonEmpty!25409) (not start!72850) (not b!844952) (not b!844946) tp_is_empty!15873)
(check-sat)
