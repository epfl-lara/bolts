; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70034 () Bool)

(assert start!70034)

(declare-fun b_free!12431 () Bool)

(declare-fun b_next!12431 () Bool)

(assert (=> start!70034 (= b_free!12431 (not b_next!12431))))

(declare-fun tp!44008 () Bool)

(declare-fun b_and!21221 () Bool)

(assert (=> start!70034 (= tp!44008 b_and!21221)))

(declare-fun mapNonEmpty!22792 () Bool)

(declare-fun mapRes!22792 () Bool)

(declare-fun tp!44007 () Bool)

(declare-fun e!450857 () Bool)

(assert (=> mapNonEmpty!22792 (= mapRes!22792 (and tp!44007 e!450857))))

(declare-fun mapKey!22792 () (_ BitVec 32))

(declare-datatypes ((V!23855 0))(
  ( (V!23856 (val!7118 Int)) )
))
(declare-datatypes ((ValueCell!6655 0))(
  ( (ValueCellFull!6655 (v!9541 V!23855)) (EmptyCell!6655) )
))
(declare-datatypes ((array!44472 0))(
  ( (array!44473 (arr!21292 (Array (_ BitVec 32) ValueCell!6655)) (size!21713 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44472)

(declare-fun mapRest!22792 () (Array (_ BitVec 32) ValueCell!6655))

(declare-fun mapValue!22792 () ValueCell!6655)

(assert (=> mapNonEmpty!22792 (= (arr!21292 _values!788) (store mapRest!22792 mapKey!22792 mapValue!22792))))

(declare-fun b!813521 () Bool)

(declare-fun e!450858 () Bool)

(declare-fun tp_is_empty!14141 () Bool)

(assert (=> b!813521 (= e!450858 tp_is_empty!14141)))

(declare-fun b!813522 () Bool)

(assert (=> b!813522 (= e!450857 tp_is_empty!14141)))

(declare-fun mapIsEmpty!22792 () Bool)

(assert (=> mapIsEmpty!22792 mapRes!22792))

(declare-fun b!813524 () Bool)

(declare-fun e!450860 () Bool)

(assert (=> b!813524 (= e!450860 false)))

(declare-datatypes ((array!44474 0))(
  ( (array!44475 (arr!21293 (Array (_ BitVec 32) (_ BitVec 64))) (size!21714 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44474)

(declare-fun zeroValueAfter!34 () V!23855)

(declare-fun minValue!754 () V!23855)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!9328 0))(
  ( (tuple2!9329 (_1!4674 (_ BitVec 64)) (_2!4674 V!23855)) )
))
(declare-datatypes ((List!15203 0))(
  ( (Nil!15200) (Cons!15199 (h!16328 tuple2!9328) (t!21528 List!15203)) )
))
(declare-datatypes ((ListLongMap!8165 0))(
  ( (ListLongMap!8166 (toList!4098 List!15203)) )
))
(declare-fun lt!364309 () ListLongMap!8165)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2147 (array!44474 array!44472 (_ BitVec 32) (_ BitVec 32) V!23855 V!23855 (_ BitVec 32) Int) ListLongMap!8165)

(assert (=> b!813524 (= lt!364309 (getCurrentListMapNoExtraKeys!2147 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364310 () ListLongMap!8165)

(declare-fun zeroValueBefore!34 () V!23855)

(assert (=> b!813524 (= lt!364310 (getCurrentListMapNoExtraKeys!2147 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813525 () Bool)

(declare-fun res!555854 () Bool)

(assert (=> b!813525 (=> (not res!555854) (not e!450860))))

(declare-datatypes ((List!15204 0))(
  ( (Nil!15201) (Cons!15200 (h!16329 (_ BitVec 64)) (t!21529 List!15204)) )
))
(declare-fun arrayNoDuplicates!0 (array!44474 (_ BitVec 32) List!15204) Bool)

(assert (=> b!813525 (= res!555854 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15201))))

(declare-fun b!813523 () Bool)

(declare-fun e!450859 () Bool)

(assert (=> b!813523 (= e!450859 (and e!450858 mapRes!22792))))

(declare-fun condMapEmpty!22792 () Bool)

(declare-fun mapDefault!22792 () ValueCell!6655)

