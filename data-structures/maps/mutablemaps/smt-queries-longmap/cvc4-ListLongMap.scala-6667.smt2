; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84006 () Bool)

(assert start!84006)

(declare-fun b_free!19733 () Bool)

(declare-fun b_next!19733 () Bool)

(assert (=> start!84006 (= b_free!19733 (not b_next!19733))))

(declare-fun tp!68722 () Bool)

(declare-fun b_and!31569 () Bool)

(assert (=> start!84006 (= tp!68722 b_and!31569)))

(declare-fun mapNonEmpty!36200 () Bool)

(declare-fun mapRes!36200 () Bool)

(declare-fun tp!68723 () Bool)

(declare-fun e!553194 () Bool)

(assert (=> mapNonEmpty!36200 (= mapRes!36200 (and tp!68723 e!553194))))

(declare-datatypes ((V!35357 0))(
  ( (V!35358 (val!11441 Int)) )
))
(declare-datatypes ((ValueCell!10909 0))(
  ( (ValueCellFull!10909 (v!14003 V!35357)) (EmptyCell!10909) )
))
(declare-datatypes ((array!61557 0))(
  ( (array!61558 (arr!29632 (Array (_ BitVec 32) ValueCell!10909)) (size!30112 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61557)

(declare-fun mapRest!36200 () (Array (_ BitVec 32) ValueCell!10909))

(declare-fun mapValue!36200 () ValueCell!10909)

(declare-fun mapKey!36200 () (_ BitVec 32))

(assert (=> mapNonEmpty!36200 (= (arr!29632 _values!1278) (store mapRest!36200 mapKey!36200 mapValue!36200))))

(declare-fun b!981222 () Bool)

(declare-fun e!553193 () Bool)

(declare-fun e!553196 () Bool)

(assert (=> b!981222 (= e!553193 (and e!553196 mapRes!36200))))

(declare-fun condMapEmpty!36200 () Bool)

(declare-fun mapDefault!36200 () ValueCell!10909)

