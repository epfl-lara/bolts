; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76174 () Bool)

(assert start!76174)

(declare-fun b!894382 () Bool)

(declare-fun b_free!15875 () Bool)

(declare-fun b_next!15875 () Bool)

(assert (=> b!894382 (= b_free!15875 (not b_next!15875))))

(declare-fun tp!55614 () Bool)

(declare-fun b_and!26185 () Bool)

(assert (=> b!894382 (= tp!55614 b_and!26185)))

(declare-fun mapNonEmpty!28878 () Bool)

(declare-fun mapRes!28878 () Bool)

(declare-fun tp!55613 () Bool)

(declare-fun e!499610 () Bool)

(assert (=> mapNonEmpty!28878 (= mapRes!28878 (and tp!55613 e!499610))))

(declare-datatypes ((V!29235 0))(
  ( (V!29236 (val!9152 Int)) )
))
(declare-datatypes ((ValueCell!8620 0))(
  ( (ValueCellFull!8620 (v!11639 V!29235)) (EmptyCell!8620) )
))
(declare-fun mapValue!28878 () ValueCell!8620)

(declare-datatypes ((array!52382 0))(
  ( (array!52383 (arr!25188 (Array (_ BitVec 32) (_ BitVec 64))) (size!25635 (_ BitVec 32))) )
))
(declare-datatypes ((array!52384 0))(
  ( (array!52385 (arr!25189 (Array (_ BitVec 32) ValueCell!8620)) (size!25636 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4256 0))(
  ( (LongMapFixedSize!4257 (defaultEntry!5340 Int) (mask!25892 (_ BitVec 32)) (extraKeys!5036 (_ BitVec 32)) (zeroValue!5140 V!29235) (minValue!5140 V!29235) (_size!2183 (_ BitVec 32)) (_keys!10033 array!52382) (_values!5327 array!52384) (_vacant!2183 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4256)

(declare-fun mapRest!28878 () (Array (_ BitVec 32) ValueCell!8620))

(declare-fun mapKey!28878 () (_ BitVec 32))

(assert (=> mapNonEmpty!28878 (= (arr!25189 (_values!5327 thiss!1181)) (store mapRest!28878 mapKey!28878 mapValue!28878))))

(declare-fun b!894378 () Bool)

(declare-fun tp_is_empty!18203 () Bool)

(assert (=> b!894378 (= e!499610 tp_is_empty!18203)))

(declare-fun mapIsEmpty!28878 () Bool)

(assert (=> mapIsEmpty!28878 mapRes!28878))

(declare-fun b!894379 () Bool)

(declare-fun e!499609 () Bool)

(assert (=> b!894379 (= e!499609 tp_is_empty!18203)))

(declare-fun res!605387 () Bool)

(declare-fun e!499605 () Bool)

(assert (=> start!76174 (=> (not res!605387) (not e!499605))))

(declare-fun valid!1635 (LongMapFixedSize!4256) Bool)

(assert (=> start!76174 (= res!605387 (valid!1635 thiss!1181))))

(assert (=> start!76174 e!499605))

(declare-fun e!499608 () Bool)

(assert (=> start!76174 e!499608))

(assert (=> start!76174 true))

(declare-fun b!894380 () Bool)

(declare-fun e!499606 () Bool)

(assert (=> b!894380 (= e!499606 (and e!499609 mapRes!28878))))

(declare-fun condMapEmpty!28878 () Bool)

(declare-fun mapDefault!28878 () ValueCell!8620)

