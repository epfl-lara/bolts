; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74192 () Bool)

(assert start!74192)

(declare-fun b!872275 () Bool)

(declare-fun res!592960 () Bool)

(declare-fun e!485774 () Bool)

(assert (=> b!872275 (=> (not res!592960) (not e!485774))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872275 (= res!592960 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27407 () Bool)

(declare-fun mapRes!27407 () Bool)

(declare-fun tp!52607 () Bool)

(declare-fun e!485776 () Bool)

(assert (=> mapNonEmpty!27407 (= mapRes!27407 (and tp!52607 e!485776))))

(declare-datatypes ((V!27985 0))(
  ( (V!27986 (val!8649 Int)) )
))
(declare-datatypes ((ValueCell!8162 0))(
  ( (ValueCellFull!8162 (v!11070 V!27985)) (EmptyCell!8162) )
))
(declare-fun mapValue!27407 () ValueCell!8162)

(declare-fun mapRest!27407 () (Array (_ BitVec 32) ValueCell!8162))

(declare-fun mapKey!27407 () (_ BitVec 32))

(declare-datatypes ((array!50530 0))(
  ( (array!50531 (arr!24291 (Array (_ BitVec 32) ValueCell!8162)) (size!24732 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50530)

(assert (=> mapNonEmpty!27407 (= (arr!24291 _values!688) (store mapRest!27407 mapKey!27407 mapValue!27407))))

(declare-fun b!872276 () Bool)

(declare-fun e!485778 () Bool)

(declare-fun e!485777 () Bool)

(assert (=> b!872276 (= e!485778 (and e!485777 mapRes!27407))))

(declare-fun condMapEmpty!27407 () Bool)

(declare-fun mapDefault!27407 () ValueCell!8162)

