; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15472 () Bool)

(assert start!15472)

(declare-fun b!153660 () Bool)

(declare-fun b_free!3205 () Bool)

(declare-fun b_next!3205 () Bool)

(assert (=> b!153660 (= b_free!3205 (not b_next!3205))))

(declare-fun tp!12132 () Bool)

(declare-fun b_and!9585 () Bool)

(assert (=> b!153660 (= tp!12132 b_and!9585)))

(declare-fun b!153668 () Bool)

(declare-fun b_free!3207 () Bool)

(declare-fun b_next!3207 () Bool)

(assert (=> b!153668 (= b_free!3207 (not b_next!3207))))

(declare-fun tp!12131 () Bool)

(declare-fun b_and!9587 () Bool)

(assert (=> b!153668 (= tp!12131 b_and!9587)))

(declare-datatypes ((V!3673 0))(
  ( (V!3674 (val!1554 Int)) )
))
(declare-datatypes ((array!5086 0))(
  ( (array!5087 (arr!2402 (Array (_ BitVec 32) (_ BitVec 64))) (size!2679 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1166 0))(
  ( (ValueCellFull!1166 (v!3407 V!3673)) (EmptyCell!1166) )
))
(declare-datatypes ((array!5088 0))(
  ( (array!5089 (arr!2403 (Array (_ BitVec 32) ValueCell!1166)) (size!2680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1240 0))(
  ( (LongMapFixedSize!1241 (defaultEntry!3059 Int) (mask!7461 (_ BitVec 32)) (extraKeys!2800 (_ BitVec 32)) (zeroValue!2902 V!3673) (minValue!2902 V!3673) (_size!669 (_ BitVec 32)) (_keys!4832 array!5086) (_values!3042 array!5088) (_vacant!669 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1018 0))(
  ( (Cell!1019 (v!3408 LongMapFixedSize!1240)) )
))
(declare-datatypes ((LongMap!1018 0))(
  ( (LongMap!1019 (underlying!520 Cell!1018)) )
))
(declare-fun thiss!992 () LongMap!1018)

(declare-fun e!100387 () Bool)

(declare-fun tp_is_empty!3019 () Bool)

(declare-fun e!100379 () Bool)

(declare-fun array_inv!1491 (array!5086) Bool)

(declare-fun array_inv!1492 (array!5088) Bool)

(assert (=> b!153660 (= e!100379 (and tp!12132 tp_is_empty!3019 (array_inv!1491 (_keys!4832 (v!3408 (underlying!520 thiss!992)))) (array_inv!1492 (_values!3042 (v!3408 (underlying!520 thiss!992)))) e!100387))))

(declare-fun b!153661 () Bool)

(declare-fun res!72617 () Bool)

(declare-fun e!100378 () Bool)

(assert (=> b!153661 (=> (not res!72617) (not e!100378))))

(declare-fun newMap!16 () LongMapFixedSize!1240)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2792 0))(
  ( (tuple2!2793 (_1!1406 (_ BitVec 64)) (_2!1406 V!3673)) )
))
(declare-datatypes ((List!1818 0))(
  ( (Nil!1815) (Cons!1814 (h!2423 tuple2!2792) (t!6616 List!1818)) )
))
(declare-datatypes ((ListLongMap!1807 0))(
  ( (ListLongMap!1808 (toList!919 List!1818)) )
))
(declare-fun getCurrentListMap!581 (array!5086 array!5088 (_ BitVec 32) (_ BitVec 32) V!3673 V!3673 (_ BitVec 32) Int) ListLongMap!1807)

(declare-fun map!1494 (LongMapFixedSize!1240) ListLongMap!1807)

(assert (=> b!153661 (= res!72617 (= (getCurrentListMap!581 (_keys!4832 (v!3408 (underlying!520 thiss!992))) (_values!3042 (v!3408 (underlying!520 thiss!992))) (mask!7461 (v!3408 (underlying!520 thiss!992))) (extraKeys!2800 (v!3408 (underlying!520 thiss!992))) (zeroValue!2902 (v!3408 (underlying!520 thiss!992))) (minValue!2902 (v!3408 (underlying!520 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3059 (v!3408 (underlying!520 thiss!992)))) (map!1494 newMap!16)))))

(declare-fun b!153662 () Bool)

(declare-fun e!100382 () Bool)

(assert (=> b!153662 (= e!100382 tp_is_empty!3019)))

(declare-fun b!153663 () Bool)

(declare-fun e!100373 () Bool)

(declare-datatypes ((tuple2!2794 0))(
  ( (tuple2!2795 (_1!1407 Bool) (_2!1407 LongMapFixedSize!1240)) )
))
(declare-fun lt!80692 () tuple2!2794)

(assert (=> b!153663 (= e!100373 (not (= (map!1494 (_2!1407 lt!80692)) (map!1494 (v!3408 (underlying!520 thiss!992))))))))

(declare-fun b!153664 () Bool)

(declare-fun e!100386 () Bool)

(assert (=> b!153664 (= e!100386 tp_is_empty!3019)))

(declare-fun b!153665 () Bool)

(declare-fun e!100380 () Bool)

(declare-fun mapRes!5143 () Bool)

(assert (=> b!153665 (= e!100387 (and e!100380 mapRes!5143))))

(declare-fun condMapEmpty!5144 () Bool)

(declare-fun mapDefault!5144 () ValueCell!1166)

