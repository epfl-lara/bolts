; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110776 () Bool)

(assert start!110776)

(declare-fun b_free!29575 () Bool)

(declare-fun b_next!29575 () Bool)

(assert (=> start!110776 (= b_free!29575 (not b_next!29575))))

(declare-fun tp!104047 () Bool)

(declare-fun b_and!47793 () Bool)

(assert (=> start!110776 (= tp!104047 b_and!47793)))

(declare-fun mapNonEmpty!54586 () Bool)

(declare-fun mapRes!54586 () Bool)

(declare-fun tp!104048 () Bool)

(declare-fun e!747648 () Bool)

(assert (=> mapNonEmpty!54586 (= mapRes!54586 (and tp!104048 e!747648))))

(declare-datatypes ((V!52177 0))(
  ( (V!52178 (val!17727 Int)) )
))
(declare-datatypes ((ValueCell!16754 0))(
  ( (ValueCellFull!16754 (v!20352 V!52177)) (EmptyCell!16754) )
))
(declare-fun mapRest!54586 () (Array (_ BitVec 32) ValueCell!16754))

(declare-datatypes ((array!87565 0))(
  ( (array!87566 (arr!42258 (Array (_ BitVec 32) ValueCell!16754)) (size!42809 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87565)

(declare-fun mapKey!54586 () (_ BitVec 32))

(declare-fun mapValue!54586 () ValueCell!16754)

(assert (=> mapNonEmpty!54586 (= (arr!42258 _values!1354) (store mapRest!54586 mapKey!54586 mapValue!54586))))

(declare-fun b!1310586 () Bool)

(declare-fun tp_is_empty!35305 () Bool)

(assert (=> b!1310586 (= e!747648 tp_is_empty!35305)))

(declare-fun mapIsEmpty!54586 () Bool)

(assert (=> mapIsEmpty!54586 mapRes!54586))

(declare-fun b!1310587 () Bool)

(declare-fun e!747650 () Bool)

(declare-fun e!747647 () Bool)

(assert (=> b!1310587 (= e!747650 (and e!747647 mapRes!54586))))

(declare-fun condMapEmpty!54586 () Bool)

(declare-fun mapDefault!54586 () ValueCell!16754)

