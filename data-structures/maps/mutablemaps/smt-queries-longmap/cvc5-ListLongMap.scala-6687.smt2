; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84122 () Bool)

(assert start!84122)

(declare-fun mapNonEmpty!36374 () Bool)

(declare-fun mapRes!36374 () Bool)

(declare-fun tp!69059 () Bool)

(declare-fun e!554225 () Bool)

(assert (=> mapNonEmpty!36374 (= mapRes!36374 (and tp!69059 e!554225))))

(declare-datatypes ((V!35513 0))(
  ( (V!35514 (val!11499 Int)) )
))
(declare-datatypes ((ValueCell!10967 0))(
  ( (ValueCellFull!10967 (v!14061 V!35513)) (EmptyCell!10967) )
))
(declare-datatypes ((array!61777 0))(
  ( (array!61778 (arr!29742 (Array (_ BitVec 32) ValueCell!10967)) (size!30222 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61777)

(declare-fun mapRest!36374 () (Array (_ BitVec 32) ValueCell!10967))

(declare-fun mapKey!36374 () (_ BitVec 32))

(declare-fun mapValue!36374 () ValueCell!10967)

(assert (=> mapNonEmpty!36374 (= (arr!29742 _values!1278) (store mapRest!36374 mapKey!36374 mapValue!36374))))

(declare-fun b!983188 () Bool)

(declare-fun e!554228 () Bool)

(declare-fun e!554224 () Bool)

(assert (=> b!983188 (= e!554228 (and e!554224 mapRes!36374))))

(declare-fun condMapEmpty!36374 () Bool)

(declare-fun mapDefault!36374 () ValueCell!10967)

