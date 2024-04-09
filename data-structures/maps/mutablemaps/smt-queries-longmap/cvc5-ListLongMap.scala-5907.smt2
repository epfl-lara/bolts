; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76454 () Bool)

(assert start!76454)

(declare-fun b!896141 () Bool)

(declare-fun b_free!15943 () Bool)

(declare-fun b_next!15943 () Bool)

(assert (=> b!896141 (= b_free!15943 (not b_next!15943))))

(declare-fun tp!55859 () Bool)

(declare-fun b_and!26253 () Bool)

(assert (=> b!896141 (= tp!55859 b_and!26253)))

(declare-fun b!896135 () Bool)

(declare-fun e!500880 () Bool)

(declare-fun tp_is_empty!18271 () Bool)

(assert (=> b!896135 (= e!500880 tp_is_empty!18271)))

(declare-fun mapIsEmpty!29021 () Bool)

(declare-fun mapRes!29021 () Bool)

(assert (=> mapIsEmpty!29021 mapRes!29021))

(declare-fun b!896136 () Bool)

(declare-fun e!500881 () Bool)

(declare-fun e!500886 () Bool)

(assert (=> b!896136 (= e!500881 (and e!500886 mapRes!29021))))

(declare-fun condMapEmpty!29021 () Bool)

(declare-datatypes ((array!52542 0))(
  ( (array!52543 (arr!25256 (Array (_ BitVec 32) (_ BitVec 64))) (size!25708 (_ BitVec 32))) )
))
(declare-datatypes ((V!29327 0))(
  ( (V!29328 (val!9186 Int)) )
))
(declare-datatypes ((ValueCell!8654 0))(
  ( (ValueCellFull!8654 (v!11673 V!29327)) (EmptyCell!8654) )
))
(declare-datatypes ((array!52544 0))(
  ( (array!52545 (arr!25257 (Array (_ BitVec 32) ValueCell!8654)) (size!25709 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4324 0))(
  ( (LongMapFixedSize!4325 (defaultEntry!5374 Int) (mask!26002 (_ BitVec 32)) (extraKeys!5074 (_ BitVec 32)) (zeroValue!5178 V!29327) (minValue!5178 V!29327) (_size!2217 (_ BitVec 32)) (_keys!10101 array!52542) (_values!5365 array!52544) (_vacant!2217 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4324)

(declare-fun mapDefault!29021 () ValueCell!8654)

