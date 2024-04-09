; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110716 () Bool)

(assert start!110716)

(declare-fun b_free!29515 () Bool)

(declare-fun b_next!29515 () Bool)

(assert (=> start!110716 (= b_free!29515 (not b_next!29515))))

(declare-fun tp!103868 () Bool)

(declare-fun b_and!47733 () Bool)

(assert (=> start!110716 (= tp!103868 b_and!47733)))

(declare-fun mapIsEmpty!54496 () Bool)

(declare-fun mapRes!54496 () Bool)

(assert (=> mapIsEmpty!54496 mapRes!54496))

(declare-fun b!1309542 () Bool)

(declare-fun e!747198 () Bool)

(declare-fun tp_is_empty!35245 () Bool)

(assert (=> b!1309542 (= e!747198 tp_is_empty!35245)))

(declare-fun mapNonEmpty!54496 () Bool)

(declare-fun tp!103867 () Bool)

(declare-fun e!747200 () Bool)

(assert (=> mapNonEmpty!54496 (= mapRes!54496 (and tp!103867 e!747200))))

(declare-fun mapKey!54496 () (_ BitVec 32))

(declare-datatypes ((V!52097 0))(
  ( (V!52098 (val!17697 Int)) )
))
(declare-datatypes ((ValueCell!16724 0))(
  ( (ValueCellFull!16724 (v!20322 V!52097)) (EmptyCell!16724) )
))
(declare-fun mapRest!54496 () (Array (_ BitVec 32) ValueCell!16724))

(declare-datatypes ((array!87447 0))(
  ( (array!87448 (arr!42199 (Array (_ BitVec 32) ValueCell!16724)) (size!42750 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87447)

(declare-fun mapValue!54496 () ValueCell!16724)

(assert (=> mapNonEmpty!54496 (= (arr!42199 _values!1354) (store mapRest!54496 mapKey!54496 mapValue!54496))))

(declare-fun b!1309543 () Bool)

(declare-fun res!869389 () Bool)

(declare-fun e!747199 () Bool)

(assert (=> b!1309543 (=> (not res!869389) (not e!747199))))

(declare-datatypes ((array!87449 0))(
  ( (array!87450 (arr!42200 (Array (_ BitVec 32) (_ BitVec 64))) (size!42751 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87449)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309543 (= res!869389 (and (= (size!42750 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42751 _keys!1628) (size!42750 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309544 () Bool)

(declare-fun e!747196 () Bool)

(assert (=> b!1309544 (= e!747196 (and e!747198 mapRes!54496))))

(declare-fun condMapEmpty!54496 () Bool)

(declare-fun mapDefault!54496 () ValueCell!16724)

