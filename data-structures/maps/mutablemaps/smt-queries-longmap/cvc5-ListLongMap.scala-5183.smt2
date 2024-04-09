; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70108 () Bool)

(assert start!70108)

(declare-fun b_free!12505 () Bool)

(declare-fun b_next!12505 () Bool)

(assert (=> start!70108 (= b_free!12505 (not b_next!12505))))

(declare-fun tp!44229 () Bool)

(declare-fun b_and!21295 () Bool)

(assert (=> start!70108 (= tp!44229 b_and!21295)))

(declare-fun b!814298 () Bool)

(declare-fun e!451415 () Bool)

(assert (=> b!814298 (= e!451415 (not true))))

(declare-datatypes ((V!23955 0))(
  ( (V!23956 (val!7155 Int)) )
))
(declare-datatypes ((tuple2!9384 0))(
  ( (tuple2!9385 (_1!4702 (_ BitVec 64)) (_2!4702 V!23955)) )
))
(declare-datatypes ((List!15258 0))(
  ( (Nil!15255) (Cons!15254 (h!16383 tuple2!9384) (t!21583 List!15258)) )
))
(declare-datatypes ((ListLongMap!8221 0))(
  ( (ListLongMap!8222 (toList!4126 List!15258)) )
))
(declare-fun lt!364569 () ListLongMap!8221)

(declare-fun lt!364570 () ListLongMap!8221)

(assert (=> b!814298 (= lt!364569 lt!364570)))

(declare-fun zeroValueBefore!34 () V!23955)

(declare-datatypes ((Unit!27708 0))(
  ( (Unit!27709) )
))
(declare-fun lt!364571 () Unit!27708)

(declare-datatypes ((array!44618 0))(
  ( (array!44619 (arr!21365 (Array (_ BitVec 32) (_ BitVec 64))) (size!21786 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44618)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23955)

(declare-fun minValue!754 () V!23955)

(declare-datatypes ((ValueCell!6692 0))(
  ( (ValueCellFull!6692 (v!9578 V!23955)) (EmptyCell!6692) )
))
(declare-datatypes ((array!44620 0))(
  ( (array!44621 (arr!21366 (Array (_ BitVec 32) ValueCell!6692)) (size!21787 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44620)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!291 (array!44618 array!44620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23955 V!23955 V!23955 V!23955 (_ BitVec 32) Int) Unit!27708)

(assert (=> b!814298 (= lt!364571 (lemmaNoChangeToArrayThenSameMapNoExtras!291 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2175 (array!44618 array!44620 (_ BitVec 32) (_ BitVec 32) V!23955 V!23955 (_ BitVec 32) Int) ListLongMap!8221)

(assert (=> b!814298 (= lt!364570 (getCurrentListMapNoExtraKeys!2175 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814298 (= lt!364569 (getCurrentListMapNoExtraKeys!2175 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814299 () Bool)

(declare-fun e!451414 () Bool)

(declare-fun e!451412 () Bool)

(declare-fun mapRes!22903 () Bool)

(assert (=> b!814299 (= e!451414 (and e!451412 mapRes!22903))))

(declare-fun condMapEmpty!22903 () Bool)

(declare-fun mapDefault!22903 () ValueCell!6692)

