; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35268 () Bool)

(assert start!35268)

(declare-fun res!195935 () Bool)

(declare-fun e!216333 () Bool)

(assert (=> start!35268 (=> (not res!195935) (not e!216333))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35268 (= res!195935 (validMask!0 mask!1842))))

(assert (=> start!35268 e!216333))

(assert (=> start!35268 true))

(declare-datatypes ((V!11335 0))(
  ( (V!11336 (val!3929 Int)) )
))
(declare-datatypes ((ValueCell!3541 0))(
  ( (ValueCellFull!3541 (v!6118 V!11335)) (EmptyCell!3541) )
))
(declare-datatypes ((array!19089 0))(
  ( (array!19090 (arr!9041 (Array (_ BitVec 32) ValueCell!3541)) (size!9393 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19089)

(declare-fun e!216331 () Bool)

(declare-fun array_inv!6658 (array!19089) Bool)

(assert (=> start!35268 (and (array_inv!6658 _values!1208) e!216331)))

(declare-datatypes ((array!19091 0))(
  ( (array!19092 (arr!9042 (Array (_ BitVec 32) (_ BitVec 64))) (size!9394 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19091)

(declare-fun array_inv!6659 (array!19091) Bool)

(assert (=> start!35268 (array_inv!6659 _keys!1456)))

(declare-fun b!353250 () Bool)

(declare-fun e!216329 () Bool)

(declare-fun tp_is_empty!7769 () Bool)

(assert (=> b!353250 (= e!216329 tp_is_empty!7769)))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun b!353251 () Bool)

(assert (=> b!353251 (= e!216333 (and (= (size!9393 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9394 _keys!1456) (size!9393 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011) (not (= (size!9394 _keys!1456) (bvadd #b00000000000000000000000000000001 mask!1842)))))))

(declare-fun mapNonEmpty!13143 () Bool)

(declare-fun mapRes!13143 () Bool)

(declare-fun tp!27039 () Bool)

(declare-fun e!216332 () Bool)

(assert (=> mapNonEmpty!13143 (= mapRes!13143 (and tp!27039 e!216332))))

(declare-fun mapRest!13143 () (Array (_ BitVec 32) ValueCell!3541))

(declare-fun mapValue!13143 () ValueCell!3541)

(declare-fun mapKey!13143 () (_ BitVec 32))

(assert (=> mapNonEmpty!13143 (= (arr!9041 _values!1208) (store mapRest!13143 mapKey!13143 mapValue!13143))))

(declare-fun b!353252 () Bool)

(assert (=> b!353252 (= e!216332 tp_is_empty!7769)))

(declare-fun mapIsEmpty!13143 () Bool)

(assert (=> mapIsEmpty!13143 mapRes!13143))

(declare-fun b!353253 () Bool)

(assert (=> b!353253 (= e!216331 (and e!216329 mapRes!13143))))

(declare-fun condMapEmpty!13143 () Bool)

(declare-fun mapDefault!13143 () ValueCell!3541)

