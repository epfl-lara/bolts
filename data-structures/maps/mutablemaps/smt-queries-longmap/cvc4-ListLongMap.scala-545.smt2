; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14438 () Bool)

(assert start!14438)

(declare-fun b!136088 () Bool)

(declare-fun b_free!2937 () Bool)

(declare-fun b_next!2937 () Bool)

(assert (=> b!136088 (= b_free!2937 (not b_next!2937))))

(declare-fun tp!11265 () Bool)

(declare-fun b_and!8433 () Bool)

(assert (=> b!136088 (= tp!11265 b_and!8433)))

(declare-fun b!136084 () Bool)

(declare-fun b_free!2939 () Bool)

(declare-fun b_next!2939 () Bool)

(assert (=> b!136084 (= b_free!2939 (not b_next!2939))))

(declare-fun tp!11266 () Bool)

(declare-fun b_and!8435 () Bool)

(assert (=> b!136084 (= tp!11266 b_and!8435)))

(declare-fun b!136083 () Bool)

(declare-fun res!65320 () Bool)

(declare-fun e!88637 () Bool)

(assert (=> b!136083 (=> (not res!65320) (not e!88637))))

(declare-datatypes ((V!3493 0))(
  ( (V!3494 (val!1487 Int)) )
))
(declare-datatypes ((array!4798 0))(
  ( (array!4799 (arr!2268 (Array (_ BitVec 32) (_ BitVec 64))) (size!2538 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1099 0))(
  ( (ValueCellFull!1099 (v!3215 V!3493)) (EmptyCell!1099) )
))
(declare-datatypes ((array!4800 0))(
  ( (array!4801 (arr!2269 (Array (_ BitVec 32) ValueCell!1099)) (size!2539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1106 0))(
  ( (LongMapFixedSize!1107 (defaultEntry!2887 Int) (mask!7199 (_ BitVec 32)) (extraKeys!2648 (_ BitVec 32)) (zeroValue!2740 V!3493) (minValue!2740 V!3493) (_size!602 (_ BitVec 32)) (_keys!4640 array!4798) (_values!2870 array!4800) (_vacant!602 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!894 0))(
  ( (Cell!895 (v!3216 LongMapFixedSize!1106)) )
))
(declare-datatypes ((LongMap!894 0))(
  ( (LongMap!895 (underlying!458 Cell!894)) )
))
(declare-fun thiss!992 () LongMap!894)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4798 (_ BitVec 32)) Bool)

(assert (=> b!136083 (= res!65320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4640 (v!3216 (underlying!458 thiss!992))) (mask!7199 (v!3216 (underlying!458 thiss!992)))))))

(declare-fun e!88629 () Bool)

(declare-fun e!88638 () Bool)

(declare-fun tp_is_empty!2885 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1106)

(declare-fun array_inv!1397 (array!4798) Bool)

(declare-fun array_inv!1398 (array!4800) Bool)

(assert (=> b!136084 (= e!88629 (and tp!11266 tp_is_empty!2885 (array_inv!1397 (_keys!4640 newMap!16)) (array_inv!1398 (_values!2870 newMap!16)) e!88638))))

(declare-fun res!65313 () Bool)

(declare-fun e!88624 () Bool)

(assert (=> start!14438 (=> (not res!65313) (not e!88624))))

(declare-fun valid!527 (LongMap!894) Bool)

(assert (=> start!14438 (= res!65313 (valid!527 thiss!992))))

(assert (=> start!14438 e!88624))

(declare-fun e!88630 () Bool)

(assert (=> start!14438 e!88630))

(assert (=> start!14438 true))

(assert (=> start!14438 e!88629))

(declare-fun mapIsEmpty!4677 () Bool)

(declare-fun mapRes!4678 () Bool)

(assert (=> mapIsEmpty!4677 mapRes!4678))

(declare-fun b!136085 () Bool)

(declare-fun res!65310 () Bool)

(assert (=> b!136085 (=> (not res!65310) (not e!88637))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!136085 (= res!65310 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2538 (_keys!4640 (v!3216 (underlying!458 thiss!992)))))))))

(declare-fun b!136086 () Bool)

(declare-fun res!65319 () Bool)

(assert (=> b!136086 (=> (not res!65319) (not e!88637))))

(assert (=> b!136086 (= res!65319 (and (= (size!2539 (_values!2870 (v!3216 (underlying!458 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7199 (v!3216 (underlying!458 thiss!992))))) (= (size!2538 (_keys!4640 (v!3216 (underlying!458 thiss!992)))) (size!2539 (_values!2870 (v!3216 (underlying!458 thiss!992))))) (bvsge (mask!7199 (v!3216 (underlying!458 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2648 (v!3216 (underlying!458 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2648 (v!3216 (underlying!458 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!136087 () Bool)

(declare-datatypes ((tuple2!2616 0))(
  ( (tuple2!2617 (_1!1318 (_ BitVec 64)) (_2!1318 V!3493)) )
))
(declare-datatypes ((List!1739 0))(
  ( (Nil!1736) (Cons!1735 (h!2341 tuple2!2616) (t!6231 List!1739)) )
))
(declare-datatypes ((ListLongMap!1711 0))(
  ( (ListLongMap!1712 (toList!871 List!1739)) )
))
(declare-fun lt!71069 () ListLongMap!1711)

(declare-fun contains!900 (ListLongMap!1711 (_ BitVec 64)) Bool)

(assert (=> b!136087 (= e!88637 (not (contains!900 lt!71069 (select (arr!2268 (_keys!4640 (v!3216 (underlying!458 thiss!992)))) from!355))))))

(declare-fun e!88628 () Bool)

(declare-fun e!88625 () Bool)

(assert (=> b!136088 (= e!88628 (and tp!11265 tp_is_empty!2885 (array_inv!1397 (_keys!4640 (v!3216 (underlying!458 thiss!992)))) (array_inv!1398 (_values!2870 (v!3216 (underlying!458 thiss!992)))) e!88625))))

(declare-fun b!136089 () Bool)

(declare-fun e!88627 () Bool)

(assert (=> b!136089 (= e!88630 e!88627)))

(declare-fun b!136090 () Bool)

(declare-fun e!88632 () Bool)

(assert (=> b!136090 (= e!88632 e!88637)))

(declare-fun res!65311 () Bool)

(assert (=> b!136090 (=> (not res!65311) (not e!88637))))

(declare-fun lt!71068 () ListLongMap!1711)

(assert (=> b!136090 (= res!65311 (contains!900 lt!71068 (select (arr!2268 (_keys!4640 (v!3216 (underlying!458 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2618 0))(
  ( (tuple2!2619 (_1!1319 Bool) (_2!1319 LongMapFixedSize!1106)) )
))
(declare-fun lt!71070 () tuple2!2618)

(declare-fun update!194 (LongMapFixedSize!1106 (_ BitVec 64) V!3493) tuple2!2618)

(declare-fun get!1495 (ValueCell!1099 V!3493) V!3493)

(declare-fun dynLambda!427 (Int (_ BitVec 64)) V!3493)

(assert (=> b!136090 (= lt!71070 (update!194 newMap!16 (select (arr!2268 (_keys!4640 (v!3216 (underlying!458 thiss!992)))) from!355) (get!1495 (select (arr!2269 (_values!2870 (v!3216 (underlying!458 thiss!992)))) from!355) (dynLambda!427 (defaultEntry!2887 (v!3216 (underlying!458 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!136091 () Bool)

(assert (=> b!136091 (= e!88624 e!88632)))

(declare-fun res!65318 () Bool)

(assert (=> b!136091 (=> (not res!65318) (not e!88632))))

(assert (=> b!136091 (= res!65318 (and (= lt!71069 lt!71068) (not (= (select (arr!2268 (_keys!4640 (v!3216 (underlying!458 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2268 (_keys!4640 (v!3216 (underlying!458 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1409 (LongMapFixedSize!1106) ListLongMap!1711)

(assert (=> b!136091 (= lt!71068 (map!1409 newMap!16))))

(declare-fun getCurrentListMap!542 (array!4798 array!4800 (_ BitVec 32) (_ BitVec 32) V!3493 V!3493 (_ BitVec 32) Int) ListLongMap!1711)

(assert (=> b!136091 (= lt!71069 (getCurrentListMap!542 (_keys!4640 (v!3216 (underlying!458 thiss!992))) (_values!2870 (v!3216 (underlying!458 thiss!992))) (mask!7199 (v!3216 (underlying!458 thiss!992))) (extraKeys!2648 (v!3216 (underlying!458 thiss!992))) (zeroValue!2740 (v!3216 (underlying!458 thiss!992))) (minValue!2740 (v!3216 (underlying!458 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2887 (v!3216 (underlying!458 thiss!992)))))))

(declare-fun b!136092 () Bool)

(declare-fun e!88634 () Bool)

(assert (=> b!136092 (= e!88634 tp_is_empty!2885)))

(declare-fun b!136093 () Bool)

(declare-fun e!88631 () Bool)

(assert (=> b!136093 (= e!88625 (and e!88631 mapRes!4678))))

(declare-fun condMapEmpty!4678 () Bool)

(declare-fun mapDefault!4677 () ValueCell!1099)

