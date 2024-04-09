; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8142 () Bool)

(assert start!8142)

(declare-fun b!51380 () Bool)

(declare-fun b_free!1593 () Bool)

(declare-fun b_next!1593 () Bool)

(assert (=> b!51380 (= b_free!1593 (not b_next!1593))))

(declare-fun tp!6860 () Bool)

(declare-fun b_and!2813 () Bool)

(assert (=> b!51380 (= tp!6860 b_and!2813)))

(declare-fun b!51376 () Bool)

(declare-fun b_free!1595 () Bool)

(declare-fun b_next!1595 () Bool)

(assert (=> b!51376 (= b_free!1595 (not b_next!1595))))

(declare-fun tp!6859 () Bool)

(declare-fun b_and!2815 () Bool)

(assert (=> b!51376 (= tp!6859 b_and!2815)))

(declare-fun b!51367 () Bool)

(declare-fun e!33317 () Bool)

(declare-fun e!33309 () Bool)

(declare-fun mapRes!2289 () Bool)

(assert (=> b!51367 (= e!33317 (and e!33309 mapRes!2289))))

(declare-fun condMapEmpty!2289 () Bool)

(declare-datatypes ((V!2597 0))(
  ( (V!2598 (val!1151 Int)) )
))
(declare-datatypes ((array!3342 0))(
  ( (array!3343 (arr!1596 (Array (_ BitVec 32) (_ BitVec 64))) (size!1822 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!763 0))(
  ( (ValueCellFull!763 (v!2188 V!2597)) (EmptyCell!763) )
))
(declare-datatypes ((array!3344 0))(
  ( (array!3345 (arr!1597 (Array (_ BitVec 32) ValueCell!763)) (size!1823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!434 0))(
  ( (LongMapFixedSize!435 (defaultEntry!1931 Int) (mask!5735 (_ BitVec 32)) (extraKeys!1822 (_ BitVec 32)) (zeroValue!1849 V!2597) (minValue!1849 V!2597) (_size!266 (_ BitVec 32)) (_keys!3545 array!3342) (_values!1914 array!3344) (_vacant!266 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!434)

(declare-fun mapDefault!2290 () ValueCell!763)

