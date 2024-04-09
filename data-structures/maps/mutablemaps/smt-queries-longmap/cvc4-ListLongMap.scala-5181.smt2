; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70100 () Bool)

(assert start!70100)

(declare-fun b_free!12497 () Bool)

(declare-fun b_next!12497 () Bool)

(assert (=> start!70100 (= b_free!12497 (not b_next!12497))))

(declare-fun tp!44205 () Bool)

(declare-fun b_and!21287 () Bool)

(assert (=> start!70100 (= tp!44205 b_and!21287)))

(declare-fun mapNonEmpty!22891 () Bool)

(declare-fun mapRes!22891 () Bool)

(declare-fun tp!44206 () Bool)

(declare-fun e!451354 () Bool)

(assert (=> mapNonEmpty!22891 (= mapRes!22891 (and tp!44206 e!451354))))

(declare-datatypes ((V!23943 0))(
  ( (V!23944 (val!7151 Int)) )
))
(declare-datatypes ((ValueCell!6688 0))(
  ( (ValueCellFull!6688 (v!9574 V!23943)) (EmptyCell!6688) )
))
(declare-fun mapValue!22891 () ValueCell!6688)

(declare-datatypes ((array!44602 0))(
  ( (array!44603 (arr!21357 (Array (_ BitVec 32) ValueCell!6688)) (size!21778 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44602)

(declare-fun mapKey!22891 () (_ BitVec 32))

(declare-fun mapRest!22891 () (Array (_ BitVec 32) ValueCell!6688))

(assert (=> mapNonEmpty!22891 (= (arr!21357 _values!788) (store mapRest!22891 mapKey!22891 mapValue!22891))))

(declare-fun mapIsEmpty!22891 () Bool)

(assert (=> mapIsEmpty!22891 mapRes!22891))

(declare-fun res!556253 () Bool)

(declare-fun e!451353 () Bool)

(assert (=> start!70100 (=> (not res!556253) (not e!451353))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70100 (= res!556253 (validMask!0 mask!1312))))

(assert (=> start!70100 e!451353))

(declare-fun tp_is_empty!14207 () Bool)

(assert (=> start!70100 tp_is_empty!14207))

(declare-datatypes ((array!44604 0))(
  ( (array!44605 (arr!21358 (Array (_ BitVec 32) (_ BitVec 64))) (size!21779 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44604)

(declare-fun array_inv!17069 (array!44604) Bool)

(assert (=> start!70100 (array_inv!17069 _keys!976)))

(assert (=> start!70100 true))

(declare-fun e!451352 () Bool)

(declare-fun array_inv!17070 (array!44602) Bool)

(assert (=> start!70100 (and (array_inv!17070 _values!788) e!451352)))

(assert (=> start!70100 tp!44205))

(declare-fun b!814214 () Bool)

(assert (=> b!814214 (= e!451353 (not true))))

(declare-datatypes ((tuple2!9378 0))(
  ( (tuple2!9379 (_1!4699 (_ BitVec 64)) (_2!4699 V!23943)) )
))
(declare-datatypes ((List!15253 0))(
  ( (Nil!15250) (Cons!15249 (h!16378 tuple2!9378) (t!21578 List!15253)) )
))
(declare-datatypes ((ListLongMap!8215 0))(
  ( (ListLongMap!8216 (toList!4123 List!15253)) )
))
(declare-fun lt!364533 () ListLongMap!8215)

(declare-fun lt!364535 () ListLongMap!8215)

(assert (=> b!814214 (= lt!364533 lt!364535)))

(declare-datatypes ((Unit!27702 0))(
  ( (Unit!27703) )
))
(declare-fun lt!364534 () Unit!27702)

(declare-fun zeroValueBefore!34 () V!23943)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23943)

(declare-fun minValue!754 () V!23943)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!288 (array!44604 array!44602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23943 V!23943 V!23943 V!23943 (_ BitVec 32) Int) Unit!27702)

(assert (=> b!814214 (= lt!364534 (lemmaNoChangeToArrayThenSameMapNoExtras!288 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2172 (array!44604 array!44602 (_ BitVec 32) (_ BitVec 32) V!23943 V!23943 (_ BitVec 32) Int) ListLongMap!8215)

(assert (=> b!814214 (= lt!364535 (getCurrentListMapNoExtraKeys!2172 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814214 (= lt!364533 (getCurrentListMapNoExtraKeys!2172 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814215 () Bool)

(declare-fun e!451355 () Bool)

(assert (=> b!814215 (= e!451355 tp_is_empty!14207)))

(declare-fun b!814216 () Bool)

(assert (=> b!814216 (= e!451352 (and e!451355 mapRes!22891))))

(declare-fun condMapEmpty!22891 () Bool)

(declare-fun mapDefault!22891 () ValueCell!6688)

