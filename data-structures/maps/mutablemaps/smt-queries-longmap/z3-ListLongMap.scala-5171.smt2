; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70038 () Bool)

(assert start!70038)

(declare-fun b_free!12435 () Bool)

(declare-fun b_next!12435 () Bool)

(assert (=> start!70038 (= b_free!12435 (not b_next!12435))))

(declare-fun tp!44019 () Bool)

(declare-fun b_and!21225 () Bool)

(assert (=> start!70038 (= tp!44019 b_and!21225)))

(declare-fun res!555879 () Bool)

(declare-fun e!450887 () Bool)

(assert (=> start!70038 (=> (not res!555879) (not e!450887))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70038 (= res!555879 (validMask!0 mask!1312))))

(assert (=> start!70038 e!450887))

(declare-fun tp_is_empty!14145 () Bool)

(assert (=> start!70038 tp_is_empty!14145))

(declare-datatypes ((array!44480 0))(
  ( (array!44481 (arr!21296 (Array (_ BitVec 32) (_ BitVec 64))) (size!21717 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44480)

(declare-fun array_inv!17033 (array!44480) Bool)

(assert (=> start!70038 (array_inv!17033 _keys!976)))

(assert (=> start!70038 true))

(declare-datatypes ((V!23861 0))(
  ( (V!23862 (val!7120 Int)) )
))
(declare-datatypes ((ValueCell!6657 0))(
  ( (ValueCellFull!6657 (v!9543 V!23861)) (EmptyCell!6657) )
))
(declare-datatypes ((array!44482 0))(
  ( (array!44483 (arr!21297 (Array (_ BitVec 32) ValueCell!6657)) (size!21718 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44482)

(declare-fun e!450888 () Bool)

(declare-fun array_inv!17034 (array!44482) Bool)

(assert (=> start!70038 (and (array_inv!17034 _values!788) e!450888)))

(assert (=> start!70038 tp!44019))

(declare-fun mapIsEmpty!22798 () Bool)

(declare-fun mapRes!22798 () Bool)

(assert (=> mapIsEmpty!22798 mapRes!22798))

(declare-fun b!813563 () Bool)

(assert (=> b!813563 (= e!450887 false)))

(declare-datatypes ((tuple2!9332 0))(
  ( (tuple2!9333 (_1!4676 (_ BitVec 64)) (_2!4676 V!23861)) )
))
(declare-datatypes ((List!15206 0))(
  ( (Nil!15203) (Cons!15202 (h!16331 tuple2!9332) (t!21531 List!15206)) )
))
(declare-datatypes ((ListLongMap!8169 0))(
  ( (ListLongMap!8170 (toList!4100 List!15206)) )
))
(declare-fun lt!364321 () ListLongMap!8169)

(declare-fun zeroValueAfter!34 () V!23861)

(declare-fun minValue!754 () V!23861)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2149 (array!44480 array!44482 (_ BitVec 32) (_ BitVec 32) V!23861 V!23861 (_ BitVec 32) Int) ListLongMap!8169)

(assert (=> b!813563 (= lt!364321 (getCurrentListMapNoExtraKeys!2149 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23861)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364322 () ListLongMap!8169)

(assert (=> b!813563 (= lt!364322 (getCurrentListMapNoExtraKeys!2149 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813564 () Bool)

(declare-fun e!450886 () Bool)

(assert (=> b!813564 (= e!450888 (and e!450886 mapRes!22798))))

(declare-fun condMapEmpty!22798 () Bool)

(declare-fun mapDefault!22798 () ValueCell!6657)

(assert (=> b!813564 (= condMapEmpty!22798 (= (arr!21297 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6657)) mapDefault!22798)))))

(declare-fun b!813565 () Bool)

(declare-fun res!555878 () Bool)

(assert (=> b!813565 (=> (not res!555878) (not e!450887))))

(assert (=> b!813565 (= res!555878 (and (= (size!21718 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21717 _keys!976) (size!21718 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813566 () Bool)

(declare-fun e!450890 () Bool)

(assert (=> b!813566 (= e!450890 tp_is_empty!14145)))

(declare-fun b!813567 () Bool)

(declare-fun res!555881 () Bool)

(assert (=> b!813567 (=> (not res!555881) (not e!450887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44480 (_ BitVec 32)) Bool)

(assert (=> b!813567 (= res!555881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22798 () Bool)

(declare-fun tp!44020 () Bool)

(assert (=> mapNonEmpty!22798 (= mapRes!22798 (and tp!44020 e!450890))))

(declare-fun mapValue!22798 () ValueCell!6657)

(declare-fun mapKey!22798 () (_ BitVec 32))

(declare-fun mapRest!22798 () (Array (_ BitVec 32) ValueCell!6657))

(assert (=> mapNonEmpty!22798 (= (arr!21297 _values!788) (store mapRest!22798 mapKey!22798 mapValue!22798))))

(declare-fun b!813568 () Bool)

(assert (=> b!813568 (= e!450886 tp_is_empty!14145)))

(declare-fun b!813569 () Bool)

(declare-fun res!555880 () Bool)

(assert (=> b!813569 (=> (not res!555880) (not e!450887))))

(declare-datatypes ((List!15207 0))(
  ( (Nil!15204) (Cons!15203 (h!16332 (_ BitVec 64)) (t!21532 List!15207)) )
))
(declare-fun arrayNoDuplicates!0 (array!44480 (_ BitVec 32) List!15207) Bool)

(assert (=> b!813569 (= res!555880 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15204))))

(assert (= (and start!70038 res!555879) b!813565))

(assert (= (and b!813565 res!555878) b!813567))

(assert (= (and b!813567 res!555881) b!813569))

(assert (= (and b!813569 res!555880) b!813563))

(assert (= (and b!813564 condMapEmpty!22798) mapIsEmpty!22798))

(assert (= (and b!813564 (not condMapEmpty!22798)) mapNonEmpty!22798))

(get-info :version)

(assert (= (and mapNonEmpty!22798 ((_ is ValueCellFull!6657) mapValue!22798)) b!813566))

(assert (= (and b!813564 ((_ is ValueCellFull!6657) mapDefault!22798)) b!813568))

(assert (= start!70038 b!813564))

(declare-fun m!755619 () Bool)

(assert (=> b!813567 m!755619))

(declare-fun m!755621 () Bool)

(assert (=> mapNonEmpty!22798 m!755621))

(declare-fun m!755623 () Bool)

(assert (=> start!70038 m!755623))

(declare-fun m!755625 () Bool)

(assert (=> start!70038 m!755625))

(declare-fun m!755627 () Bool)

(assert (=> start!70038 m!755627))

(declare-fun m!755629 () Bool)

(assert (=> b!813563 m!755629))

(declare-fun m!755631 () Bool)

(assert (=> b!813563 m!755631))

(declare-fun m!755633 () Bool)

(assert (=> b!813569 m!755633))

(check-sat b_and!21225 (not b_next!12435) (not start!70038) (not b!813563) (not b!813567) tp_is_empty!14145 (not mapNonEmpty!22798) (not b!813569))
(check-sat b_and!21225 (not b_next!12435))
