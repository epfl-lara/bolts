; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72838 () Bool)

(assert start!72838)

(declare-fun b!844820 () Bool)

(declare-fun res!574047 () Bool)

(declare-fun e!471642 () Bool)

(assert (=> b!844820 (=> (not res!574047) (not e!471642))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47932 0))(
  ( (array!47933 (arr!22993 (Array (_ BitVec 32) (_ BitVec 64))) (size!23434 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47932)

(declare-datatypes ((V!26195 0))(
  ( (V!26196 (val!7978 Int)) )
))
(declare-datatypes ((ValueCell!7491 0))(
  ( (ValueCellFull!7491 (v!10399 V!26195)) (EmptyCell!7491) )
))
(declare-datatypes ((array!47934 0))(
  ( (array!47935 (arr!22994 (Array (_ BitVec 32) ValueCell!7491)) (size!23435 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47934)

(assert (=> b!844820 (= res!574047 (and (= (size!23435 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23434 _keys!868) (size!23435 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25391 () Bool)

(declare-fun mapRes!25391 () Bool)

(assert (=> mapIsEmpty!25391 mapRes!25391))

(declare-fun b!844821 () Bool)

(declare-fun res!574049 () Bool)

(assert (=> b!844821 (=> (not res!574049) (not e!471642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844821 (= res!574049 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25391 () Bool)

(declare-fun tp!48710 () Bool)

(declare-fun e!471641 () Bool)

(assert (=> mapNonEmpty!25391 (= mapRes!25391 (and tp!48710 e!471641))))

(declare-fun mapKey!25391 () (_ BitVec 32))

(declare-fun mapValue!25391 () ValueCell!7491)

(declare-fun mapRest!25391 () (Array (_ BitVec 32) ValueCell!7491))

(assert (=> mapNonEmpty!25391 (= (arr!22994 _values!688) (store mapRest!25391 mapKey!25391 mapValue!25391))))

(declare-fun b!844822 () Bool)

(declare-fun e!471643 () Bool)

(declare-fun e!471645 () Bool)

(assert (=> b!844822 (= e!471643 (and e!471645 mapRes!25391))))

(declare-fun condMapEmpty!25391 () Bool)

(declare-fun mapDefault!25391 () ValueCell!7491)

(assert (=> b!844822 (= condMapEmpty!25391 (= (arr!22994 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7491)) mapDefault!25391)))))

(declare-fun b!844823 () Bool)

(declare-fun tp_is_empty!15861 () Bool)

(assert (=> b!844823 (= e!471645 tp_is_empty!15861)))

(declare-fun b!844824 () Bool)

(declare-fun res!574048 () Bool)

(assert (=> b!844824 (=> (not res!574048) (not e!471642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47932 (_ BitVec 32)) Bool)

(assert (=> b!844824 (= res!574048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!574050 () Bool)

(assert (=> start!72838 (=> (not res!574050) (not e!471642))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72838 (= res!574050 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23434 _keys!868))))))

(assert (=> start!72838 e!471642))

(assert (=> start!72838 true))

(declare-fun array_inv!18260 (array!47932) Bool)

(assert (=> start!72838 (array_inv!18260 _keys!868)))

(declare-fun array_inv!18261 (array!47934) Bool)

(assert (=> start!72838 (and (array_inv!18261 _values!688) e!471643)))

(declare-fun b!844825 () Bool)

(assert (=> b!844825 (= e!471642 false)))

(declare-fun lt!381303 () Bool)

(declare-datatypes ((List!16355 0))(
  ( (Nil!16352) (Cons!16351 (h!17482 (_ BitVec 64)) (t!22734 List!16355)) )
))
(declare-fun arrayNoDuplicates!0 (array!47932 (_ BitVec 32) List!16355) Bool)

(assert (=> b!844825 (= lt!381303 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16352))))

(declare-fun b!844826 () Bool)

(assert (=> b!844826 (= e!471641 tp_is_empty!15861)))

(assert (= (and start!72838 res!574050) b!844821))

(assert (= (and b!844821 res!574049) b!844820))

(assert (= (and b!844820 res!574047) b!844824))

(assert (= (and b!844824 res!574048) b!844825))

(assert (= (and b!844822 condMapEmpty!25391) mapIsEmpty!25391))

(assert (= (and b!844822 (not condMapEmpty!25391)) mapNonEmpty!25391))

(get-info :version)

(assert (= (and mapNonEmpty!25391 ((_ is ValueCellFull!7491) mapValue!25391)) b!844826))

(assert (= (and b!844822 ((_ is ValueCellFull!7491) mapDefault!25391)) b!844823))

(assert (= start!72838 b!844822))

(declare-fun m!786953 () Bool)

(assert (=> start!72838 m!786953))

(declare-fun m!786955 () Bool)

(assert (=> start!72838 m!786955))

(declare-fun m!786957 () Bool)

(assert (=> b!844825 m!786957))

(declare-fun m!786959 () Bool)

(assert (=> b!844821 m!786959))

(declare-fun m!786961 () Bool)

(assert (=> mapNonEmpty!25391 m!786961))

(declare-fun m!786963 () Bool)

(assert (=> b!844824 m!786963))

(check-sat tp_is_empty!15861 (not b!844825) (not start!72838) (not b!844821) (not mapNonEmpty!25391) (not b!844824))
(check-sat)
