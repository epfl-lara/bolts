; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72664 () Bool)

(assert start!72664)

(declare-fun b!842993 () Bool)

(declare-fun e!470337 () Bool)

(declare-fun tp_is_empty!15687 () Bool)

(assert (=> b!842993 (= e!470337 tp_is_empty!15687)))

(declare-fun b!842994 () Bool)

(declare-fun e!470338 () Bool)

(assert (=> b!842994 (= e!470338 false)))

(declare-fun lt!381042 () Bool)

(declare-datatypes ((array!47612 0))(
  ( (array!47613 (arr!22833 (Array (_ BitVec 32) (_ BitVec 64))) (size!23274 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47612)

(declare-datatypes ((List!16295 0))(
  ( (Nil!16292) (Cons!16291 (h!17422 (_ BitVec 64)) (t!22674 List!16295)) )
))
(declare-fun arrayNoDuplicates!0 (array!47612 (_ BitVec 32) List!16295) Bool)

(assert (=> b!842994 (= lt!381042 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16292))))

(declare-fun b!842995 () Bool)

(declare-fun e!470336 () Bool)

(declare-fun e!470339 () Bool)

(declare-fun mapRes!25130 () Bool)

(assert (=> b!842995 (= e!470336 (and e!470339 mapRes!25130))))

(declare-fun condMapEmpty!25130 () Bool)

(declare-datatypes ((V!25963 0))(
  ( (V!25964 (val!7891 Int)) )
))
(declare-datatypes ((ValueCell!7404 0))(
  ( (ValueCellFull!7404 (v!10312 V!25963)) (EmptyCell!7404) )
))
(declare-datatypes ((array!47614 0))(
  ( (array!47615 (arr!22834 (Array (_ BitVec 32) ValueCell!7404)) (size!23275 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47614)

(declare-fun mapDefault!25130 () ValueCell!7404)

(assert (=> b!842995 (= condMapEmpty!25130 (= (arr!22834 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7404)) mapDefault!25130)))))

(declare-fun b!842996 () Bool)

(declare-fun res!573005 () Bool)

(assert (=> b!842996 (=> (not res!573005) (not e!470338))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47612 (_ BitVec 32)) Bool)

(assert (=> b!842996 (= res!573005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842997 () Bool)

(assert (=> b!842997 (= e!470339 tp_is_empty!15687)))

(declare-fun b!842998 () Bool)

(declare-fun res!573003 () Bool)

(assert (=> b!842998 (=> (not res!573003) (not e!470338))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842998 (= res!573003 (and (= (size!23275 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23274 _keys!868) (size!23275 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25130 () Bool)

(assert (=> mapIsEmpty!25130 mapRes!25130))

(declare-fun res!573004 () Bool)

(assert (=> start!72664 (=> (not res!573004) (not e!470338))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72664 (= res!573004 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23274 _keys!868))))))

(assert (=> start!72664 e!470338))

(assert (=> start!72664 true))

(declare-fun array_inv!18152 (array!47612) Bool)

(assert (=> start!72664 (array_inv!18152 _keys!868)))

(declare-fun array_inv!18153 (array!47614) Bool)

(assert (=> start!72664 (and (array_inv!18153 _values!688) e!470336)))

(declare-fun mapNonEmpty!25130 () Bool)

(declare-fun tp!48449 () Bool)

(assert (=> mapNonEmpty!25130 (= mapRes!25130 (and tp!48449 e!470337))))

(declare-fun mapKey!25130 () (_ BitVec 32))

(declare-fun mapRest!25130 () (Array (_ BitVec 32) ValueCell!7404))

(declare-fun mapValue!25130 () ValueCell!7404)

(assert (=> mapNonEmpty!25130 (= (arr!22834 _values!688) (store mapRest!25130 mapKey!25130 mapValue!25130))))

(declare-fun b!842999 () Bool)

(declare-fun res!573006 () Bool)

(assert (=> b!842999 (=> (not res!573006) (not e!470338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842999 (= res!573006 (validMask!0 mask!1196))))

(assert (= (and start!72664 res!573004) b!842999))

(assert (= (and b!842999 res!573006) b!842998))

(assert (= (and b!842998 res!573003) b!842996))

(assert (= (and b!842996 res!573005) b!842994))

(assert (= (and b!842995 condMapEmpty!25130) mapIsEmpty!25130))

(assert (= (and b!842995 (not condMapEmpty!25130)) mapNonEmpty!25130))

(get-info :version)

(assert (= (and mapNonEmpty!25130 ((_ is ValueCellFull!7404) mapValue!25130)) b!842993))

(assert (= (and b!842995 ((_ is ValueCellFull!7404) mapDefault!25130)) b!842997))

(assert (= start!72664 b!842995))

(declare-fun m!785909 () Bool)

(assert (=> b!842994 m!785909))

(declare-fun m!785911 () Bool)

(assert (=> start!72664 m!785911))

(declare-fun m!785913 () Bool)

(assert (=> start!72664 m!785913))

(declare-fun m!785915 () Bool)

(assert (=> b!842999 m!785915))

(declare-fun m!785917 () Bool)

(assert (=> b!842996 m!785917))

(declare-fun m!785919 () Bool)

(assert (=> mapNonEmpty!25130 m!785919))

(check-sat (not b!842999) (not b!842996) tp_is_empty!15687 (not mapNonEmpty!25130) (not b!842994) (not start!72664))
(check-sat)
