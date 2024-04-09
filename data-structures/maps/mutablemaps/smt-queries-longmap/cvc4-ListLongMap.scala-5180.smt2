; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70094 () Bool)

(assert start!70094)

(declare-fun b_free!12491 () Bool)

(declare-fun b_next!12491 () Bool)

(assert (=> start!70094 (= b_free!12491 (not b_next!12491))))

(declare-fun tp!44188 () Bool)

(declare-fun b_and!21281 () Bool)

(assert (=> start!70094 (= tp!44188 b_and!21281)))

(declare-fun b!814151 () Bool)

(declare-fun res!556214 () Bool)

(declare-fun e!451307 () Bool)

(assert (=> b!814151 (=> (not res!556214) (not e!451307))))

(declare-datatypes ((array!44590 0))(
  ( (array!44591 (arr!21351 (Array (_ BitVec 32) (_ BitVec 64))) (size!21772 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44590)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44590 (_ BitVec 32)) Bool)

(assert (=> b!814151 (= res!556214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814152 () Bool)

(declare-fun res!556215 () Bool)

(assert (=> b!814152 (=> (not res!556215) (not e!451307))))

(declare-datatypes ((List!15248 0))(
  ( (Nil!15245) (Cons!15244 (h!16373 (_ BitVec 64)) (t!21573 List!15248)) )
))
(declare-fun arrayNoDuplicates!0 (array!44590 (_ BitVec 32) List!15248) Bool)

(assert (=> b!814152 (= res!556215 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15245))))

(declare-fun b!814153 () Bool)

(declare-fun e!451306 () Bool)

(declare-fun tp_is_empty!14201 () Bool)

(assert (=> b!814153 (= e!451306 tp_is_empty!14201)))

(declare-fun b!814154 () Bool)

(declare-fun e!451308 () Bool)

(assert (=> b!814154 (= e!451308 tp_is_empty!14201)))

(declare-fun res!556216 () Bool)

(assert (=> start!70094 (=> (not res!556216) (not e!451307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70094 (= res!556216 (validMask!0 mask!1312))))

(assert (=> start!70094 e!451307))

(assert (=> start!70094 tp_is_empty!14201))

(declare-fun array_inv!17065 (array!44590) Bool)

(assert (=> start!70094 (array_inv!17065 _keys!976)))

(assert (=> start!70094 true))

(declare-datatypes ((V!23935 0))(
  ( (V!23936 (val!7148 Int)) )
))
(declare-datatypes ((ValueCell!6685 0))(
  ( (ValueCellFull!6685 (v!9571 V!23935)) (EmptyCell!6685) )
))
(declare-datatypes ((array!44592 0))(
  ( (array!44593 (arr!21352 (Array (_ BitVec 32) ValueCell!6685)) (size!21773 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44592)

(declare-fun e!451309 () Bool)

(declare-fun array_inv!17066 (array!44592) Bool)

(assert (=> start!70094 (and (array_inv!17066 _values!788) e!451309)))

(assert (=> start!70094 tp!44188))

(declare-fun b!814155 () Bool)

(assert (=> b!814155 (= e!451307 (not true))))

(declare-datatypes ((tuple2!9374 0))(
  ( (tuple2!9375 (_1!4697 (_ BitVec 64)) (_2!4697 V!23935)) )
))
(declare-datatypes ((List!15249 0))(
  ( (Nil!15246) (Cons!15245 (h!16374 tuple2!9374) (t!21574 List!15249)) )
))
(declare-datatypes ((ListLongMap!8211 0))(
  ( (ListLongMap!8212 (toList!4121 List!15249)) )
))
(declare-fun lt!364508 () ListLongMap!8211)

(declare-fun lt!364506 () ListLongMap!8211)

(assert (=> b!814155 (= lt!364508 lt!364506)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23935)

(declare-fun minValue!754 () V!23935)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!23935)

(declare-datatypes ((Unit!27698 0))(
  ( (Unit!27699) )
))
(declare-fun lt!364507 () Unit!27698)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!286 (array!44590 array!44592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23935 V!23935 V!23935 V!23935 (_ BitVec 32) Int) Unit!27698)

(assert (=> b!814155 (= lt!364507 (lemmaNoChangeToArrayThenSameMapNoExtras!286 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2170 (array!44590 array!44592 (_ BitVec 32) (_ BitVec 32) V!23935 V!23935 (_ BitVec 32) Int) ListLongMap!8211)

(assert (=> b!814155 (= lt!364506 (getCurrentListMapNoExtraKeys!2170 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814155 (= lt!364508 (getCurrentListMapNoExtraKeys!2170 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814156 () Bool)

(declare-fun mapRes!22882 () Bool)

(assert (=> b!814156 (= e!451309 (and e!451308 mapRes!22882))))

(declare-fun condMapEmpty!22882 () Bool)

(declare-fun mapDefault!22882 () ValueCell!6685)

