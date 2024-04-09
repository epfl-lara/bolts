; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70076 () Bool)

(assert start!70076)

(declare-fun b_free!12473 () Bool)

(declare-fun b_next!12473 () Bool)

(assert (=> start!70076 (= b_free!12473 (not b_next!12473))))

(declare-fun tp!44133 () Bool)

(declare-fun b_and!21263 () Bool)

(assert (=> start!70076 (= tp!44133 b_and!21263)))

(declare-fun b!813962 () Bool)

(declare-fun e!451173 () Bool)

(declare-fun tp_is_empty!14183 () Bool)

(assert (=> b!813962 (= e!451173 tp_is_empty!14183)))

(declare-fun b!813963 () Bool)

(declare-fun e!451174 () Bool)

(assert (=> b!813963 (= e!451174 false)))

(declare-datatypes ((array!44554 0))(
  ( (array!44555 (arr!21333 (Array (_ BitVec 32) (_ BitVec 64))) (size!21754 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44554)

(declare-datatypes ((V!23911 0))(
  ( (V!23912 (val!7139 Int)) )
))
(declare-fun zeroValueAfter!34 () V!23911)

(declare-fun minValue!754 () V!23911)

(declare-datatypes ((ValueCell!6676 0))(
  ( (ValueCellFull!6676 (v!9562 V!23911)) (EmptyCell!6676) )
))
(declare-datatypes ((array!44556 0))(
  ( (array!44557 (arr!21334 (Array (_ BitVec 32) ValueCell!6676)) (size!21755 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44556)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!9362 0))(
  ( (tuple2!9363 (_1!4691 (_ BitVec 64)) (_2!4691 V!23911)) )
))
(declare-datatypes ((List!15237 0))(
  ( (Nil!15234) (Cons!15233 (h!16362 tuple2!9362) (t!21562 List!15237)) )
))
(declare-datatypes ((ListLongMap!8199 0))(
  ( (ListLongMap!8200 (toList!4115 List!15237)) )
))
(declare-fun lt!364435 () ListLongMap!8199)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2164 (array!44554 array!44556 (_ BitVec 32) (_ BitVec 32) V!23911 V!23911 (_ BitVec 32) Int) ListLongMap!8199)

(assert (=> b!813963 (= lt!364435 (getCurrentListMapNoExtraKeys!2164 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!364436 () ListLongMap!8199)

(declare-fun zeroValueBefore!34 () V!23911)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!813963 (= lt!364436 (getCurrentListMapNoExtraKeys!2164 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813964 () Bool)

(declare-fun e!451175 () Bool)

(declare-fun e!451172 () Bool)

(declare-fun mapRes!22855 () Bool)

(assert (=> b!813964 (= e!451175 (and e!451172 mapRes!22855))))

(declare-fun condMapEmpty!22855 () Bool)

(declare-fun mapDefault!22855 () ValueCell!6676)

