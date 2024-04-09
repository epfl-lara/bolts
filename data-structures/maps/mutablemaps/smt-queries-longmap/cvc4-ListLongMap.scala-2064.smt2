; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35564 () Bool)

(assert start!35564)

(declare-fun mapNonEmpty!13521 () Bool)

(declare-fun mapRes!13521 () Bool)

(declare-fun tp!27498 () Bool)

(declare-fun e!218254 () Bool)

(assert (=> mapNonEmpty!13521 (= mapRes!13521 (and tp!27498 e!218254))))

(declare-datatypes ((V!11655 0))(
  ( (V!11656 (val!4049 Int)) )
))
(declare-datatypes ((ValueCell!3661 0))(
  ( (ValueCellFull!3661 (v!6239 V!11655)) (EmptyCell!3661) )
))
(declare-fun mapValue!13521 () ValueCell!3661)

(declare-fun mapRest!13521 () (Array (_ BitVec 32) ValueCell!3661))

(declare-fun mapKey!13521 () (_ BitVec 32))

(declare-datatypes ((array!19557 0))(
  ( (array!19558 (arr!9269 (Array (_ BitVec 32) ValueCell!3661)) (size!9621 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19557)

(assert (=> mapNonEmpty!13521 (= (arr!9269 _values!1208) (store mapRest!13521 mapKey!13521 mapValue!13521))))

(declare-fun b!356158 () Bool)

(declare-fun e!218253 () Bool)

(declare-fun tp_is_empty!8009 () Bool)

(assert (=> b!356158 (= e!218253 tp_is_empty!8009)))

(declare-fun mapIsEmpty!13521 () Bool)

(assert (=> mapIsEmpty!13521 mapRes!13521))

(declare-fun b!356159 () Bool)

(assert (=> b!356159 (= e!218254 tp_is_empty!8009)))

(declare-fun b!356160 () Bool)

(declare-fun res!197685 () Bool)

(declare-fun e!218255 () Bool)

(assert (=> b!356160 (=> (not res!197685) (not e!218255))))

(declare-datatypes ((array!19559 0))(
  ( (array!19560 (arr!9270 (Array (_ BitVec 32) (_ BitVec 64))) (size!9622 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19559)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19559 (_ BitVec 32)) Bool)

(assert (=> b!356160 (= res!197685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356161 () Bool)

(declare-fun e!218251 () Bool)

(assert (=> b!356161 (= e!218251 (and e!218253 mapRes!13521))))

(declare-fun condMapEmpty!13521 () Bool)

(declare-fun mapDefault!13521 () ValueCell!3661)

