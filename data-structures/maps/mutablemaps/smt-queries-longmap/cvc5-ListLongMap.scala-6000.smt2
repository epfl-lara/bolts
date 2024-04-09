; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77880 () Bool)

(assert start!77880)

(declare-fun b_free!16411 () Bool)

(declare-fun b_next!16411 () Bool)

(assert (=> start!77880 (= b_free!16411 (not b_next!16411))))

(declare-fun tp!57498 () Bool)

(declare-fun b_and!26997 () Bool)

(assert (=> start!77880 (= tp!57498 b_and!26997)))

(declare-fun mapNonEmpty!29959 () Bool)

(declare-fun mapRes!29959 () Bool)

(declare-fun tp!57499 () Bool)

(declare-fun e!509473 () Bool)

(assert (=> mapNonEmpty!29959 (= mapRes!29959 (and tp!57499 e!509473))))

(declare-datatypes ((V!30071 0))(
  ( (V!30072 (val!9465 Int)) )
))
(declare-datatypes ((ValueCell!8933 0))(
  ( (ValueCellFull!8933 (v!11972 V!30071)) (EmptyCell!8933) )
))
(declare-datatypes ((array!53680 0))(
  ( (array!53681 (arr!25794 (Array (_ BitVec 32) ValueCell!8933)) (size!26254 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53680)

(declare-fun mapKey!29959 () (_ BitVec 32))

(declare-fun mapValue!29959 () ValueCell!8933)

(declare-fun mapRest!29959 () (Array (_ BitVec 32) ValueCell!8933))

(assert (=> mapNonEmpty!29959 (= (arr!25794 _values!1152) (store mapRest!29959 mapKey!29959 mapValue!29959))))

(declare-fun b!908926 () Bool)

(declare-fun e!509474 () Bool)

(declare-fun e!509470 () Bool)

(assert (=> b!908926 (= e!509474 (and e!509470 mapRes!29959))))

(declare-fun condMapEmpty!29959 () Bool)

(declare-fun mapDefault!29959 () ValueCell!8933)

