; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10148 () Bool)

(assert start!10148)

(declare-fun b!77123 () Bool)

(declare-fun b_free!2161 () Bool)

(declare-fun b_next!2161 () Bool)

(assert (=> b!77123 (= b_free!2161 (not b_next!2161))))

(declare-fun tp!8680 () Bool)

(declare-fun b_and!4717 () Bool)

(assert (=> b!77123 (= tp!8680 b_and!4717)))

(declare-fun b!77138 () Bool)

(declare-fun b_free!2163 () Bool)

(declare-fun b_next!2163 () Bool)

(assert (=> b!77138 (= b_free!2163 (not b_next!2163))))

(declare-fun tp!8682 () Bool)

(declare-fun b_and!4719 () Bool)

(assert (=> b!77138 (= tp!8682 b_and!4719)))

(declare-datatypes ((V!2977 0))(
  ( (V!2978 (val!1293 Int)) )
))
(declare-datatypes ((array!3944 0))(
  ( (array!3945 (arr!1880 (Array (_ BitVec 32) (_ BitVec 64))) (size!2121 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!905 0))(
  ( (ValueCellFull!905 (v!2577 V!2977)) (EmptyCell!905) )
))
(declare-datatypes ((array!3946 0))(
  ( (array!3947 (arr!1881 (Array (_ BitVec 32) ValueCell!905)) (size!2122 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!718 0))(
  ( (LongMapFixedSize!719 (defaultEntry!2262 Int) (mask!6253 (_ BitVec 32)) (extraKeys!2113 (_ BitVec 32)) (zeroValue!2160 V!2977) (minValue!2160 V!2977) (_size!408 (_ BitVec 32)) (_keys!3922 array!3944) (_values!2245 array!3946) (_vacant!408 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!526 0))(
  ( (Cell!527 (v!2578 LongMapFixedSize!718)) )
))
(declare-datatypes ((LongMap!526 0))(
  ( (LongMap!527 (underlying!274 Cell!526)) )
))
(declare-fun thiss!992 () LongMap!526)

(declare-fun e!50380 () Bool)

(declare-fun e!50379 () Bool)

(declare-fun tp_is_empty!2497 () Bool)

(declare-fun array_inv!1117 (array!3944) Bool)

(declare-fun array_inv!1118 (array!3946) Bool)

(assert (=> b!77123 (= e!50379 (and tp!8680 tp_is_empty!2497 (array_inv!1117 (_keys!3922 (v!2578 (underlying!274 thiss!992)))) (array_inv!1118 (_values!2245 (v!2578 (underlying!274 thiss!992)))) e!50380))))

(declare-fun res!40528 () Bool)

(declare-fun e!50378 () Bool)

(assert (=> start!10148 (=> (not res!40528) (not e!50378))))

(declare-fun valid!305 (LongMap!526) Bool)

(assert (=> start!10148 (= res!40528 (valid!305 thiss!992))))

(assert (=> start!10148 e!50378))

(declare-fun e!50381 () Bool)

(assert (=> start!10148 e!50381))

(assert (=> start!10148 true))

(declare-fun e!50392 () Bool)

(assert (=> start!10148 e!50392))

(declare-fun b!77124 () Bool)

(declare-fun res!40529 () Bool)

(assert (=> b!77124 (=> (not res!40529) (not e!50378))))

(declare-fun newMap!16 () LongMapFixedSize!718)

(declare-fun valid!306 (LongMapFixedSize!718) Bool)

(assert (=> b!77124 (= res!40529 (valid!306 newMap!16))))

(declare-fun mapIsEmpty!3257 () Bool)

(declare-fun mapRes!3258 () Bool)

(assert (=> mapIsEmpty!3257 mapRes!3258))

(declare-fun b!77125 () Bool)

(declare-fun e!50383 () Bool)

(declare-fun mapRes!3257 () Bool)

(assert (=> b!77125 (= e!50380 (and e!50383 mapRes!3257))))

(declare-fun condMapEmpty!3257 () Bool)

(declare-fun mapDefault!3258 () ValueCell!905)

