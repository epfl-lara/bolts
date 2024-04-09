; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70112 () Bool)

(assert start!70112)

(declare-fun b_free!12509 () Bool)

(declare-fun b_next!12509 () Bool)

(assert (=> start!70112 (= b_free!12509 (not b_next!12509))))

(declare-fun tp!44241 () Bool)

(declare-fun b_and!21299 () Bool)

(assert (=> start!70112 (= tp!44241 b_and!21299)))

(declare-fun b!814340 () Bool)

(declare-fun res!556322 () Bool)

(declare-fun e!451441 () Bool)

(assert (=> b!814340 (=> (not res!556322) (not e!451441))))

(declare-datatypes ((array!44626 0))(
  ( (array!44627 (arr!21369 (Array (_ BitVec 32) (_ BitVec 64))) (size!21790 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44626)

(declare-datatypes ((List!15261 0))(
  ( (Nil!15258) (Cons!15257 (h!16386 (_ BitVec 64)) (t!21586 List!15261)) )
))
(declare-fun arrayNoDuplicates!0 (array!44626 (_ BitVec 32) List!15261) Bool)

(assert (=> b!814340 (= res!556322 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15258))))

(declare-fun b!814341 () Bool)

(declare-fun e!451444 () Bool)

(declare-fun tp_is_empty!14219 () Bool)

(assert (=> b!814341 (= e!451444 tp_is_empty!14219)))

(declare-fun b!814342 () Bool)

(declare-fun e!451442 () Bool)

(assert (=> b!814342 (= e!451442 tp_is_empty!14219)))

(declare-fun mapIsEmpty!22909 () Bool)

(declare-fun mapRes!22909 () Bool)

(assert (=> mapIsEmpty!22909 mapRes!22909))

(declare-fun b!814344 () Bool)

(declare-fun res!556325 () Bool)

(assert (=> b!814344 (=> (not res!556325) (not e!451441))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23959 0))(
  ( (V!23960 (val!7157 Int)) )
))
(declare-datatypes ((ValueCell!6694 0))(
  ( (ValueCellFull!6694 (v!9580 V!23959)) (EmptyCell!6694) )
))
(declare-datatypes ((array!44628 0))(
  ( (array!44629 (arr!21370 (Array (_ BitVec 32) ValueCell!6694)) (size!21791 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44628)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814344 (= res!556325 (and (= (size!21791 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21790 _keys!976) (size!21791 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22909 () Bool)

(declare-fun tp!44242 () Bool)

(assert (=> mapNonEmpty!22909 (= mapRes!22909 (and tp!44242 e!451444))))

(declare-fun mapValue!22909 () ValueCell!6694)

(declare-fun mapKey!22909 () (_ BitVec 32))

(declare-fun mapRest!22909 () (Array (_ BitVec 32) ValueCell!6694))

(assert (=> mapNonEmpty!22909 (= (arr!21370 _values!788) (store mapRest!22909 mapKey!22909 mapValue!22909))))

(declare-fun b!814345 () Bool)

(assert (=> b!814345 (= e!451441 (not true))))

(declare-datatypes ((tuple2!9388 0))(
  ( (tuple2!9389 (_1!4704 (_ BitVec 64)) (_2!4704 V!23959)) )
))
(declare-datatypes ((List!15262 0))(
  ( (Nil!15259) (Cons!15258 (h!16387 tuple2!9388) (t!21587 List!15262)) )
))
(declare-datatypes ((ListLongMap!8225 0))(
  ( (ListLongMap!8226 (toList!4128 List!15262)) )
))
(declare-fun lt!364587 () ListLongMap!8225)

(declare-fun lt!364588 () ListLongMap!8225)

(assert (=> b!814345 (= lt!364587 lt!364588)))

(declare-fun zeroValueBefore!34 () V!23959)

(declare-fun zeroValueAfter!34 () V!23959)

(declare-fun minValue!754 () V!23959)

(declare-datatypes ((Unit!27712 0))(
  ( (Unit!27713) )
))
(declare-fun lt!364589 () Unit!27712)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!293 (array!44626 array!44628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23959 V!23959 V!23959 V!23959 (_ BitVec 32) Int) Unit!27712)

(assert (=> b!814345 (= lt!364589 (lemmaNoChangeToArrayThenSameMapNoExtras!293 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2177 (array!44626 array!44628 (_ BitVec 32) (_ BitVec 32) V!23959 V!23959 (_ BitVec 32) Int) ListLongMap!8225)

(assert (=> b!814345 (= lt!364588 (getCurrentListMapNoExtraKeys!2177 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814345 (= lt!364587 (getCurrentListMapNoExtraKeys!2177 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814346 () Bool)

(declare-fun e!451445 () Bool)

(assert (=> b!814346 (= e!451445 (and e!451442 mapRes!22909))))

(declare-fun condMapEmpty!22909 () Bool)

(declare-fun mapDefault!22909 () ValueCell!6694)

