; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70098 () Bool)

(assert start!70098)

(declare-fun b_free!12495 () Bool)

(declare-fun b_next!12495 () Bool)

(assert (=> start!70098 (= b_free!12495 (not b_next!12495))))

(declare-fun tp!44200 () Bool)

(declare-fun b_and!21285 () Bool)

(assert (=> start!70098 (= tp!44200 b_and!21285)))

(declare-fun b!814193 () Bool)

(declare-fun res!556239 () Bool)

(declare-fun e!451337 () Bool)

(assert (=> b!814193 (=> (not res!556239) (not e!451337))))

(declare-datatypes ((array!44598 0))(
  ( (array!44599 (arr!21355 (Array (_ BitVec 32) (_ BitVec 64))) (size!21776 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44598)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23941 0))(
  ( (V!23942 (val!7150 Int)) )
))
(declare-datatypes ((ValueCell!6687 0))(
  ( (ValueCellFull!6687 (v!9573 V!23941)) (EmptyCell!6687) )
))
(declare-datatypes ((array!44600 0))(
  ( (array!44601 (arr!21356 (Array (_ BitVec 32) ValueCell!6687)) (size!21777 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44600)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(assert (=> b!814193 (= res!556239 (and (= (size!21777 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21776 _keys!976) (size!21777 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814194 () Bool)

(assert (=> b!814194 (= e!451337 (not true))))

(declare-datatypes ((tuple2!9376 0))(
  ( (tuple2!9377 (_1!4698 (_ BitVec 64)) (_2!4698 V!23941)) )
))
(declare-datatypes ((List!15251 0))(
  ( (Nil!15248) (Cons!15247 (h!16376 tuple2!9376) (t!21576 List!15251)) )
))
(declare-datatypes ((ListLongMap!8213 0))(
  ( (ListLongMap!8214 (toList!4122 List!15251)) )
))
(declare-fun lt!364525 () ListLongMap!8213)

(declare-fun lt!364524 () ListLongMap!8213)

(assert (=> b!814194 (= lt!364525 lt!364524)))

(declare-fun zeroValueBefore!34 () V!23941)

(declare-fun zeroValueAfter!34 () V!23941)

(declare-fun minValue!754 () V!23941)

(declare-datatypes ((Unit!27700 0))(
  ( (Unit!27701) )
))
(declare-fun lt!364526 () Unit!27700)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!287 (array!44598 array!44600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23941 V!23941 V!23941 V!23941 (_ BitVec 32) Int) Unit!27700)

(assert (=> b!814194 (= lt!364526 (lemmaNoChangeToArrayThenSameMapNoExtras!287 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2171 (array!44598 array!44600 (_ BitVec 32) (_ BitVec 32) V!23941 V!23941 (_ BitVec 32) Int) ListLongMap!8213)

(assert (=> b!814194 (= lt!364524 (getCurrentListMapNoExtraKeys!2171 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814194 (= lt!364525 (getCurrentListMapNoExtraKeys!2171 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814195 () Bool)

(declare-fun e!451336 () Bool)

(declare-fun tp_is_empty!14205 () Bool)

(assert (=> b!814195 (= e!451336 tp_is_empty!14205)))

(declare-fun mapIsEmpty!22888 () Bool)

(declare-fun mapRes!22888 () Bool)

(assert (=> mapIsEmpty!22888 mapRes!22888))

(declare-fun mapNonEmpty!22888 () Bool)

(declare-fun tp!44199 () Bool)

(declare-fun e!451339 () Bool)

(assert (=> mapNonEmpty!22888 (= mapRes!22888 (and tp!44199 e!451339))))

(declare-fun mapRest!22888 () (Array (_ BitVec 32) ValueCell!6687))

(declare-fun mapKey!22888 () (_ BitVec 32))

(declare-fun mapValue!22888 () ValueCell!6687)

(assert (=> mapNonEmpty!22888 (= (arr!21356 _values!788) (store mapRest!22888 mapKey!22888 mapValue!22888))))

(declare-fun b!814197 () Bool)

(declare-fun res!556241 () Bool)

(assert (=> b!814197 (=> (not res!556241) (not e!451337))))

(declare-datatypes ((List!15252 0))(
  ( (Nil!15249) (Cons!15248 (h!16377 (_ BitVec 64)) (t!21577 List!15252)) )
))
(declare-fun arrayNoDuplicates!0 (array!44598 (_ BitVec 32) List!15252) Bool)

(assert (=> b!814197 (= res!556241 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15249))))

(declare-fun b!814198 () Bool)

(declare-fun res!556238 () Bool)

(assert (=> b!814198 (=> (not res!556238) (not e!451337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44598 (_ BitVec 32)) Bool)

(assert (=> b!814198 (= res!556238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814199 () Bool)

(assert (=> b!814199 (= e!451339 tp_is_empty!14205)))

(declare-fun b!814196 () Bool)

(declare-fun e!451338 () Bool)

(assert (=> b!814196 (= e!451338 (and e!451336 mapRes!22888))))

(declare-fun condMapEmpty!22888 () Bool)

(declare-fun mapDefault!22888 () ValueCell!6687)

(assert (=> b!814196 (= condMapEmpty!22888 (= (arr!21356 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6687)) mapDefault!22888)))))

(declare-fun res!556240 () Bool)

(assert (=> start!70098 (=> (not res!556240) (not e!451337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70098 (= res!556240 (validMask!0 mask!1312))))

(assert (=> start!70098 e!451337))

(assert (=> start!70098 tp_is_empty!14205))

(declare-fun array_inv!17067 (array!44598) Bool)

(assert (=> start!70098 (array_inv!17067 _keys!976)))

(assert (=> start!70098 true))

(declare-fun array_inv!17068 (array!44600) Bool)

(assert (=> start!70098 (and (array_inv!17068 _values!788) e!451338)))

(assert (=> start!70098 tp!44200))

(assert (= (and start!70098 res!556240) b!814193))

(assert (= (and b!814193 res!556239) b!814198))

(assert (= (and b!814198 res!556238) b!814197))

(assert (= (and b!814197 res!556241) b!814194))

(assert (= (and b!814196 condMapEmpty!22888) mapIsEmpty!22888))

(assert (= (and b!814196 (not condMapEmpty!22888)) mapNonEmpty!22888))

(get-info :version)

(assert (= (and mapNonEmpty!22888 ((_ is ValueCellFull!6687) mapValue!22888)) b!814199))

(assert (= (and b!814196 ((_ is ValueCellFull!6687) mapDefault!22888)) b!814195))

(assert (= start!70098 b!814196))

(declare-fun m!756113 () Bool)

(assert (=> b!814198 m!756113))

(declare-fun m!756115 () Bool)

(assert (=> start!70098 m!756115))

(declare-fun m!756117 () Bool)

(assert (=> start!70098 m!756117))

(declare-fun m!756119 () Bool)

(assert (=> start!70098 m!756119))

(declare-fun m!756121 () Bool)

(assert (=> b!814197 m!756121))

(declare-fun m!756123 () Bool)

(assert (=> mapNonEmpty!22888 m!756123))

(declare-fun m!756125 () Bool)

(assert (=> b!814194 m!756125))

(declare-fun m!756127 () Bool)

(assert (=> b!814194 m!756127))

(declare-fun m!756129 () Bool)

(assert (=> b!814194 m!756129))

(check-sat (not start!70098) (not b!814198) (not b!814197) (not b_next!12495) b_and!21285 (not b!814194) tp_is_empty!14205 (not mapNonEmpty!22888))
(check-sat b_and!21285 (not b_next!12495))
