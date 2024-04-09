; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84324 () Bool)

(assert start!84324)

(declare-fun mapNonEmpty!36677 () Bool)

(declare-fun mapRes!36677 () Bool)

(declare-fun tp!69533 () Bool)

(declare-fun e!555904 () Bool)

(assert (=> mapNonEmpty!36677 (= mapRes!36677 (and tp!69533 e!555904))))

(declare-datatypes ((V!35781 0))(
  ( (V!35782 (val!11600 Int)) )
))
(declare-datatypes ((ValueCell!11068 0))(
  ( (ValueCellFull!11068 (v!14162 V!35781)) (EmptyCell!11068) )
))
(declare-datatypes ((array!62155 0))(
  ( (array!62156 (arr!29931 (Array (_ BitVec 32) ValueCell!11068)) (size!30411 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62155)

(declare-fun mapValue!36677 () ValueCell!11068)

(declare-fun mapKey!36677 () (_ BitVec 32))

(declare-fun mapRest!36677 () (Array (_ BitVec 32) ValueCell!11068))

(assert (=> mapNonEmpty!36677 (= (arr!29931 _values!1278) (store mapRest!36677 mapKey!36677 mapValue!36677))))

(declare-fun mapIsEmpty!36677 () Bool)

(assert (=> mapIsEmpty!36677 mapRes!36677))

(declare-fun b!985987 () Bool)

(declare-fun e!555903 () Bool)

(declare-fun e!555901 () Bool)

(assert (=> b!985987 (= e!555903 (and e!555901 mapRes!36677))))

(declare-fun condMapEmpty!36677 () Bool)

(declare-fun mapDefault!36677 () ValueCell!11068)

