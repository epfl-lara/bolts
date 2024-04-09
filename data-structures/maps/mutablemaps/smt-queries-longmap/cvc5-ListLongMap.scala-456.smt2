; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8360 () Bool)

(assert start!8360)

(declare-fun b!55576 () Bool)

(declare-fun b_free!1861 () Bool)

(declare-fun b_next!1861 () Bool)

(assert (=> b!55576 (= b_free!1861 (not b_next!1861))))

(declare-fun tp!7685 () Bool)

(declare-fun b_and!3273 () Bool)

(assert (=> b!55576 (= tp!7685 b_and!3273)))

(declare-fun b!55565 () Bool)

(declare-fun b_free!1863 () Bool)

(declare-fun b_next!1863 () Bool)

(assert (=> b!55565 (= b_free!1863 (not b_next!1863))))

(declare-fun tp!7684 () Bool)

(declare-fun b_and!3275 () Bool)

(assert (=> b!55565 (= tp!7684 b_and!3275)))

(declare-fun b!55558 () Bool)

(declare-fun e!36513 () Bool)

(declare-fun tp_is_empty!2347 () Bool)

(assert (=> b!55558 (= e!36513 tp_is_empty!2347)))

(declare-fun mapNonEmpty!2711 () Bool)

(declare-fun mapRes!2711 () Bool)

(declare-fun tp!7686 () Bool)

(declare-fun e!36509 () Bool)

(assert (=> mapNonEmpty!2711 (= mapRes!2711 (and tp!7686 e!36509))))

(declare-datatypes ((V!2777 0))(
  ( (V!2778 (val!1218 Int)) )
))
(declare-datatypes ((ValueCell!830 0))(
  ( (ValueCellFull!830 (v!2318 V!2777)) (EmptyCell!830) )
))
(declare-fun mapValue!2711 () ValueCell!830)

(declare-fun mapRest!2711 () (Array (_ BitVec 32) ValueCell!830))

(declare-datatypes ((array!3616 0))(
  ( (array!3617 (arr!1730 (Array (_ BitVec 32) (_ BitVec 64))) (size!1959 (_ BitVec 32))) )
))
(declare-datatypes ((array!3618 0))(
  ( (array!3619 (arr!1731 (Array (_ BitVec 32) ValueCell!830)) (size!1960 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!568 0))(
  ( (LongMapFixedSize!569 (defaultEntry!1998 Int) (mask!5857 (_ BitVec 32)) (extraKeys!1889 (_ BitVec 32)) (zeroValue!1916 V!2777) (minValue!1916 V!2777) (_size!333 (_ BitVec 32)) (_keys!3618 array!3616) (_values!1981 array!3618) (_vacant!333 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!568)

(declare-fun mapKey!2712 () (_ BitVec 32))

(assert (=> mapNonEmpty!2711 (= (arr!1731 (_values!1981 newMap!16)) (store mapRest!2711 mapKey!2712 mapValue!2711))))

(declare-fun b!55559 () Bool)

(declare-fun res!31280 () Bool)

(declare-fun e!36512 () Bool)

(assert (=> b!55559 (=> res!31280 e!36512)))

(declare-datatypes ((List!1416 0))(
  ( (Nil!1413) (Cons!1412 (h!1992 (_ BitVec 64)) (t!4654 List!1416)) )
))
(declare-fun lt!21972 () List!1416)

(declare-fun contains!659 (List!1416 (_ BitVec 64)) Bool)

(assert (=> b!55559 (= res!31280 (contains!659 lt!21972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!55560 () Bool)

(declare-fun e!36520 () Bool)

(declare-fun e!36518 () Bool)

(assert (=> b!55560 (= e!36520 e!36518)))

(declare-fun b!55561 () Bool)

(assert (=> b!55561 (= e!36512 true)))

(declare-datatypes ((Cell!378 0))(
  ( (Cell!379 (v!2319 LongMapFixedSize!568)) )
))
(declare-datatypes ((LongMap!378 0))(
  ( (LongMap!379 (underlying!200 Cell!378)) )
))
(declare-fun thiss!992 () LongMap!378)

(declare-fun lt!21976 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!55561 (= lt!21976 (contains!659 lt!21972 (select (arr!1730 (_keys!3618 (v!2319 (underlying!200 thiss!992)))) from!355)))))

(declare-fun b!55562 () Bool)

(declare-fun e!36515 () Bool)

(assert (=> b!55562 (= e!36515 (and e!36513 mapRes!2711))))

(declare-fun condMapEmpty!2712 () Bool)

(declare-fun mapDefault!2711 () ValueCell!830)

