; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70070 () Bool)

(assert start!70070)

(declare-fun b_free!12467 () Bool)

(declare-fun b_next!12467 () Bool)

(assert (=> start!70070 (= b_free!12467 (not b_next!12467))))

(declare-fun tp!44116 () Bool)

(declare-fun b_and!21257 () Bool)

(assert (=> start!70070 (= tp!44116 b_and!21257)))

(declare-fun b!813899 () Bool)

(declare-fun res!556070 () Bool)

(declare-fun e!451127 () Bool)

(assert (=> b!813899 (=> (not res!556070) (not e!451127))))

(declare-datatypes ((array!44542 0))(
  ( (array!44543 (arr!21327 (Array (_ BitVec 32) (_ BitVec 64))) (size!21748 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44542)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44542 (_ BitVec 32)) Bool)

(assert (=> b!813899 (= res!556070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813900 () Bool)

(declare-fun res!556072 () Bool)

(assert (=> b!813900 (=> (not res!556072) (not e!451127))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23903 0))(
  ( (V!23904 (val!7136 Int)) )
))
(declare-datatypes ((ValueCell!6673 0))(
  ( (ValueCellFull!6673 (v!9559 V!23903)) (EmptyCell!6673) )
))
(declare-datatypes ((array!44544 0))(
  ( (array!44545 (arr!21328 (Array (_ BitVec 32) ValueCell!6673)) (size!21749 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44544)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813900 (= res!556072 (and (= (size!21749 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21748 _keys!976) (size!21749 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813901 () Bool)

(declare-fun e!451128 () Bool)

(declare-fun tp_is_empty!14177 () Bool)

(assert (=> b!813901 (= e!451128 tp_is_empty!14177)))

(declare-fun b!813902 () Bool)

(assert (=> b!813902 (= e!451127 false)))

(declare-fun zeroValueAfter!34 () V!23903)

(declare-fun minValue!754 () V!23903)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9356 0))(
  ( (tuple2!9357 (_1!4688 (_ BitVec 64)) (_2!4688 V!23903)) )
))
(declare-datatypes ((List!15232 0))(
  ( (Nil!15229) (Cons!15228 (h!16357 tuple2!9356) (t!21557 List!15232)) )
))
(declare-datatypes ((ListLongMap!8193 0))(
  ( (ListLongMap!8194 (toList!4112 List!15232)) )
))
(declare-fun lt!364418 () ListLongMap!8193)

(declare-fun getCurrentListMapNoExtraKeys!2161 (array!44542 array!44544 (_ BitVec 32) (_ BitVec 32) V!23903 V!23903 (_ BitVec 32) Int) ListLongMap!8193)

(assert (=> b!813902 (= lt!364418 (getCurrentListMapNoExtraKeys!2161 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23903)

(declare-fun lt!364417 () ListLongMap!8193)

(assert (=> b!813902 (= lt!364417 (getCurrentListMapNoExtraKeys!2161 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!22846 () Bool)

(declare-fun mapRes!22846 () Bool)

(declare-fun tp!44115 () Bool)

(assert (=> mapNonEmpty!22846 (= mapRes!22846 (and tp!44115 e!451128))))

(declare-fun mapValue!22846 () ValueCell!6673)

(declare-fun mapRest!22846 () (Array (_ BitVec 32) ValueCell!6673))

(declare-fun mapKey!22846 () (_ BitVec 32))

(assert (=> mapNonEmpty!22846 (= (arr!21328 _values!788) (store mapRest!22846 mapKey!22846 mapValue!22846))))

(declare-fun b!813903 () Bool)

(declare-fun e!451130 () Bool)

(declare-fun e!451126 () Bool)

(assert (=> b!813903 (= e!451130 (and e!451126 mapRes!22846))))

(declare-fun condMapEmpty!22846 () Bool)

(declare-fun mapDefault!22846 () ValueCell!6673)

