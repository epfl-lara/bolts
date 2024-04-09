; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8028 () Bool)

(assert start!8028)

(declare-fun b!50408 () Bool)

(declare-fun b_free!1545 () Bool)

(declare-fun b_next!1545 () Bool)

(assert (=> b!50408 (= b_free!1545 (not b_next!1545))))

(declare-fun tp!6693 () Bool)

(declare-fun b_and!2765 () Bool)

(assert (=> b!50408 (= tp!6693 b_and!2765)))

(declare-fun b!50407 () Bool)

(declare-fun b_free!1547 () Bool)

(declare-fun b_next!1547 () Bool)

(assert (=> b!50407 (= b_free!1547 (not b_next!1547))))

(declare-fun tp!6692 () Bool)

(declare-fun b_and!2767 () Bool)

(assert (=> b!50407 (= tp!6692 b_and!2767)))

(declare-fun b!50404 () Bool)

(declare-fun e!32575 () Bool)

(declare-fun e!32574 () Bool)

(declare-fun mapRes!2194 () Bool)

(assert (=> b!50404 (= e!32575 (and e!32574 mapRes!2194))))

(declare-fun condMapEmpty!2193 () Bool)

(declare-datatypes ((V!2565 0))(
  ( (V!2566 (val!1139 Int)) )
))
(declare-datatypes ((array!3288 0))(
  ( (array!3289 (arr!1572 (Array (_ BitVec 32) (_ BitVec 64))) (size!1795 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!751 0))(
  ( (ValueCellFull!751 (v!2162 V!2565)) (EmptyCell!751) )
))
(declare-datatypes ((array!3290 0))(
  ( (array!3291 (arr!1573 (Array (_ BitVec 32) ValueCell!751)) (size!1796 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!410 0))(
  ( (LongMapFixedSize!411 (defaultEntry!1919 Int) (mask!5706 (_ BitVec 32)) (extraKeys!1810 (_ BitVec 32)) (zeroValue!1837 V!2565) (minValue!1837 V!2565) (_size!254 (_ BitVec 32)) (_keys!3527 array!3288) (_values!1902 array!3290) (_vacant!254 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!410)

(declare-fun mapDefault!2193 () ValueCell!751)

