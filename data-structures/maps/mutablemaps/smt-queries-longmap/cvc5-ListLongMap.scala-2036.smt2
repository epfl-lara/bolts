; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35392 () Bool)

(assert start!35392)

(declare-fun res!196336 () Bool)

(declare-fun e!216965 () Bool)

(assert (=> start!35392 (=> (not res!196336) (not e!216965))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35392 (= res!196336 (validMask!0 mask!1842))))

(assert (=> start!35392 e!216965))

(assert (=> start!35392 true))

(declare-datatypes ((V!11427 0))(
  ( (V!11428 (val!3963 Int)) )
))
(declare-datatypes ((ValueCell!3575 0))(
  ( (ValueCellFull!3575 (v!6153 V!11427)) (EmptyCell!3575) )
))
(declare-datatypes ((array!19231 0))(
  ( (array!19232 (arr!9106 (Array (_ BitVec 32) ValueCell!3575)) (size!9458 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19231)

(declare-fun e!216964 () Bool)

(declare-fun array_inv!6700 (array!19231) Bool)

(assert (=> start!35392 (and (array_inv!6700 _values!1208) e!216964)))

(declare-datatypes ((array!19233 0))(
  ( (array!19234 (arr!9107 (Array (_ BitVec 32) (_ BitVec 64))) (size!9459 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19233)

(declare-fun array_inv!6701 (array!19233) Bool)

(assert (=> start!35392 (array_inv!6701 _keys!1456)))

(declare-fun b!354039 () Bool)

(declare-fun e!216962 () Bool)

(declare-fun tp_is_empty!7837 () Bool)

(assert (=> b!354039 (= e!216962 tp_is_empty!7837)))

(declare-fun b!354040 () Bool)

(declare-fun e!216961 () Bool)

(assert (=> b!354040 (= e!216961 tp_is_empty!7837)))

(declare-fun mapNonEmpty!13263 () Bool)

(declare-fun mapRes!13263 () Bool)

(declare-fun tp!27159 () Bool)

(assert (=> mapNonEmpty!13263 (= mapRes!13263 (and tp!27159 e!216961))))

(declare-fun mapKey!13263 () (_ BitVec 32))

(declare-fun mapRest!13263 () (Array (_ BitVec 32) ValueCell!3575))

(declare-fun mapValue!13263 () ValueCell!3575)

(assert (=> mapNonEmpty!13263 (= (arr!9106 _values!1208) (store mapRest!13263 mapKey!13263 mapValue!13263))))

(declare-fun b!354041 () Bool)

(assert (=> b!354041 (= e!216964 (and e!216962 mapRes!13263))))

(declare-fun condMapEmpty!13263 () Bool)

(declare-fun mapDefault!13263 () ValueCell!3575)

