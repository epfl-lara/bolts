; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70104 () Bool)

(assert start!70104)

(declare-fun b_free!12501 () Bool)

(declare-fun b_next!12501 () Bool)

(assert (=> start!70104 (= b_free!12501 (not b_next!12501))))

(declare-fun tp!44218 () Bool)

(declare-fun b_and!21291 () Bool)

(assert (=> start!70104 (= tp!44218 b_and!21291)))

(declare-fun b!814256 () Bool)

(declare-fun res!556277 () Bool)

(declare-fun e!451381 () Bool)

(assert (=> b!814256 (=> (not res!556277) (not e!451381))))

(declare-datatypes ((array!44610 0))(
  ( (array!44611 (arr!21361 (Array (_ BitVec 32) (_ BitVec 64))) (size!21782 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44610)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44610 (_ BitVec 32)) Bool)

(assert (=> b!814256 (= res!556277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814257 () Bool)

(declare-fun e!451382 () Bool)

(declare-fun tp_is_empty!14211 () Bool)

(assert (=> b!814257 (= e!451382 tp_is_empty!14211)))

(declare-fun b!814258 () Bool)

(declare-fun e!451384 () Bool)

(declare-fun e!451385 () Bool)

(declare-fun mapRes!22897 () Bool)

(assert (=> b!814258 (= e!451384 (and e!451385 mapRes!22897))))

(declare-fun condMapEmpty!22897 () Bool)

(declare-datatypes ((V!23949 0))(
  ( (V!23950 (val!7153 Int)) )
))
(declare-datatypes ((ValueCell!6690 0))(
  ( (ValueCellFull!6690 (v!9576 V!23949)) (EmptyCell!6690) )
))
(declare-datatypes ((array!44612 0))(
  ( (array!44613 (arr!21362 (Array (_ BitVec 32) ValueCell!6690)) (size!21783 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44612)

(declare-fun mapDefault!22897 () ValueCell!6690)

(assert (=> b!814258 (= condMapEmpty!22897 (= (arr!21362 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6690)) mapDefault!22897)))))

(declare-fun res!556276 () Bool)

(assert (=> start!70104 (=> (not res!556276) (not e!451381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70104 (= res!556276 (validMask!0 mask!1312))))

(assert (=> start!70104 e!451381))

(assert (=> start!70104 tp_is_empty!14211))

(declare-fun array_inv!17071 (array!44610) Bool)

(assert (=> start!70104 (array_inv!17071 _keys!976)))

(assert (=> start!70104 true))

(declare-fun array_inv!17072 (array!44612) Bool)

(assert (=> start!70104 (and (array_inv!17072 _values!788) e!451384)))

(assert (=> start!70104 tp!44218))

(declare-fun b!814259 () Bool)

(declare-fun res!556275 () Bool)

(assert (=> b!814259 (=> (not res!556275) (not e!451381))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814259 (= res!556275 (and (= (size!21783 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21782 _keys!976) (size!21783 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22897 () Bool)

(assert (=> mapIsEmpty!22897 mapRes!22897))

(declare-fun b!814260 () Bool)

(declare-fun res!556274 () Bool)

(assert (=> b!814260 (=> (not res!556274) (not e!451381))))

(declare-datatypes ((List!15255 0))(
  ( (Nil!15252) (Cons!15251 (h!16380 (_ BitVec 64)) (t!21580 List!15255)) )
))
(declare-fun arrayNoDuplicates!0 (array!44610 (_ BitVec 32) List!15255) Bool)

(assert (=> b!814260 (= res!556274 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15252))))

(declare-fun b!814261 () Bool)

(assert (=> b!814261 (= e!451385 tp_is_empty!14211)))

(declare-fun b!814262 () Bool)

(assert (=> b!814262 (= e!451381 (not true))))

(declare-datatypes ((tuple2!9382 0))(
  ( (tuple2!9383 (_1!4701 (_ BitVec 64)) (_2!4701 V!23949)) )
))
(declare-datatypes ((List!15256 0))(
  ( (Nil!15253) (Cons!15252 (h!16381 tuple2!9382) (t!21581 List!15256)) )
))
(declare-datatypes ((ListLongMap!8219 0))(
  ( (ListLongMap!8220 (toList!4125 List!15256)) )
))
(declare-fun lt!364552 () ListLongMap!8219)

(declare-fun lt!364553 () ListLongMap!8219)

(assert (=> b!814262 (= lt!364552 lt!364553)))

(declare-datatypes ((Unit!27706 0))(
  ( (Unit!27707) )
))
(declare-fun lt!364551 () Unit!27706)

(declare-fun zeroValueBefore!34 () V!23949)

(declare-fun zeroValueAfter!34 () V!23949)

(declare-fun minValue!754 () V!23949)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!290 (array!44610 array!44612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23949 V!23949 V!23949 V!23949 (_ BitVec 32) Int) Unit!27706)

(assert (=> b!814262 (= lt!364551 (lemmaNoChangeToArrayThenSameMapNoExtras!290 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2174 (array!44610 array!44612 (_ BitVec 32) (_ BitVec 32) V!23949 V!23949 (_ BitVec 32) Int) ListLongMap!8219)

(assert (=> b!814262 (= lt!364553 (getCurrentListMapNoExtraKeys!2174 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814262 (= lt!364552 (getCurrentListMapNoExtraKeys!2174 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!22897 () Bool)

(declare-fun tp!44217 () Bool)

(assert (=> mapNonEmpty!22897 (= mapRes!22897 (and tp!44217 e!451382))))

(declare-fun mapKey!22897 () (_ BitVec 32))

(declare-fun mapValue!22897 () ValueCell!6690)

(declare-fun mapRest!22897 () (Array (_ BitVec 32) ValueCell!6690))

(assert (=> mapNonEmpty!22897 (= (arr!21362 _values!788) (store mapRest!22897 mapKey!22897 mapValue!22897))))

(assert (= (and start!70104 res!556276) b!814259))

(assert (= (and b!814259 res!556275) b!814256))

(assert (= (and b!814256 res!556277) b!814260))

(assert (= (and b!814260 res!556274) b!814262))

(assert (= (and b!814258 condMapEmpty!22897) mapIsEmpty!22897))

(assert (= (and b!814258 (not condMapEmpty!22897)) mapNonEmpty!22897))

(get-info :version)

(assert (= (and mapNonEmpty!22897 ((_ is ValueCellFull!6690) mapValue!22897)) b!814257))

(assert (= (and b!814258 ((_ is ValueCellFull!6690) mapDefault!22897)) b!814261))

(assert (= start!70104 b!814258))

(declare-fun m!756167 () Bool)

(assert (=> b!814262 m!756167))

(declare-fun m!756169 () Bool)

(assert (=> b!814262 m!756169))

(declare-fun m!756171 () Bool)

(assert (=> b!814262 m!756171))

(declare-fun m!756173 () Bool)

(assert (=> b!814260 m!756173))

(declare-fun m!756175 () Bool)

(assert (=> b!814256 m!756175))

(declare-fun m!756177 () Bool)

(assert (=> start!70104 m!756177))

(declare-fun m!756179 () Bool)

(assert (=> start!70104 m!756179))

(declare-fun m!756181 () Bool)

(assert (=> start!70104 m!756181))

(declare-fun m!756183 () Bool)

(assert (=> mapNonEmpty!22897 m!756183))

(check-sat tp_is_empty!14211 b_and!21291 (not b!814260) (not start!70104) (not b_next!12501) (not b!814262) (not b!814256) (not mapNonEmpty!22897))
(check-sat b_and!21291 (not b_next!12501))
