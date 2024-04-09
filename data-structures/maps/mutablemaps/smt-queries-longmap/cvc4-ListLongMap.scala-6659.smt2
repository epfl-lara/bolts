; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83958 () Bool)

(assert start!83958)

(declare-fun mapNonEmpty!36128 () Bool)

(declare-fun mapRes!36128 () Bool)

(declare-fun tp!68642 () Bool)

(declare-fun e!552836 () Bool)

(assert (=> mapNonEmpty!36128 (= mapRes!36128 (and tp!68642 e!552836))))

(declare-datatypes ((V!35293 0))(
  ( (V!35294 (val!11417 Int)) )
))
(declare-datatypes ((ValueCell!10885 0))(
  ( (ValueCellFull!10885 (v!13979 V!35293)) (EmptyCell!10885) )
))
(declare-datatypes ((array!61473 0))(
  ( (array!61474 (arr!29590 (Array (_ BitVec 32) ValueCell!10885)) (size!30070 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61473)

(declare-fun mapKey!36128 () (_ BitVec 32))

(declare-fun mapValue!36128 () ValueCell!10885)

(declare-fun mapRest!36128 () (Array (_ BitVec 32) ValueCell!10885))

(assert (=> mapNonEmpty!36128 (= (arr!29590 _values!1278) (store mapRest!36128 mapKey!36128 mapValue!36128))))

(declare-fun b!980731 () Bool)

(declare-fun e!552833 () Bool)

(declare-fun e!552834 () Bool)

(assert (=> b!980731 (= e!552833 (and e!552834 mapRes!36128))))

(declare-fun condMapEmpty!36128 () Bool)

(declare-fun mapDefault!36128 () ValueCell!10885)

