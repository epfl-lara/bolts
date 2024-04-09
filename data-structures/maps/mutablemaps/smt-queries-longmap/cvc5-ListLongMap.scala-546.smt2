; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14440 () Bool)

(assert start!14440)

(declare-fun b!136144 () Bool)

(declare-fun b_free!2941 () Bool)

(declare-fun b_next!2941 () Bool)

(assert (=> b!136144 (= b_free!2941 (not b_next!2941))))

(declare-fun tp!11277 () Bool)

(declare-fun b_and!8441 () Bool)

(assert (=> b!136144 (= tp!11277 b_and!8441)))

(declare-fun b!136148 () Bool)

(declare-fun b_free!2943 () Bool)

(declare-fun b_next!2943 () Bool)

(assert (=> b!136148 (= b_free!2943 (not b_next!2943))))

(declare-fun tp!11276 () Bool)

(declare-fun b_and!8443 () Bool)

(assert (=> b!136148 (= tp!11276 b_and!8443)))

(declare-fun mapNonEmpty!4683 () Bool)

(declare-fun mapRes!4684 () Bool)

(declare-fun tp!11278 () Bool)

(declare-fun e!88674 () Bool)

(assert (=> mapNonEmpty!4683 (= mapRes!4684 (and tp!11278 e!88674))))

(declare-datatypes ((V!3497 0))(
  ( (V!3498 (val!1488 Int)) )
))
(declare-datatypes ((ValueCell!1100 0))(
  ( (ValueCellFull!1100 (v!3217 V!3497)) (EmptyCell!1100) )
))
(declare-fun mapRest!4683 () (Array (_ BitVec 32) ValueCell!1100))

(declare-datatypes ((array!4802 0))(
  ( (array!4803 (arr!2270 (Array (_ BitVec 32) (_ BitVec 64))) (size!2540 (_ BitVec 32))) )
))
(declare-datatypes ((array!4804 0))(
  ( (array!4805 (arr!2271 (Array (_ BitVec 32) ValueCell!1100)) (size!2541 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1108 0))(
  ( (LongMapFixedSize!1109 (defaultEntry!2888 Int) (mask!7202 (_ BitVec 32)) (extraKeys!2649 (_ BitVec 32)) (zeroValue!2741 V!3497) (minValue!2741 V!3497) (_size!603 (_ BitVec 32)) (_keys!4641 array!4802) (_values!2871 array!4804) (_vacant!603 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!896 0))(
  ( (Cell!897 (v!3218 LongMapFixedSize!1108)) )
))
(declare-datatypes ((LongMap!896 0))(
  ( (LongMap!897 (underlying!459 Cell!896)) )
))
(declare-fun thiss!992 () LongMap!896)

(declare-fun mapKey!4683 () (_ BitVec 32))

(declare-fun mapValue!4684 () ValueCell!1100)

(assert (=> mapNonEmpty!4683 (= (arr!2271 (_values!2871 (v!3218 (underlying!459 thiss!992)))) (store mapRest!4683 mapKey!4683 mapValue!4684))))

(declare-fun b!136139 () Bool)

(declare-fun res!65336 () Bool)

(declare-fun e!88676 () Bool)

(assert (=> b!136139 (=> (not res!65336) (not e!88676))))

(declare-fun newMap!16 () LongMapFixedSize!1108)

(assert (=> b!136139 (= res!65336 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7202 newMap!16)) (_size!603 (v!3218 (underlying!459 thiss!992)))))))

(declare-fun b!136140 () Bool)

(declare-fun tp_is_empty!2887 () Bool)

(assert (=> b!136140 (= e!88674 tp_is_empty!2887)))

(declare-fun b!136141 () Bool)

(declare-fun e!88673 () Bool)

(assert (=> b!136141 (= e!88673 tp_is_empty!2887)))

(declare-fun b!136142 () Bool)

(declare-fun e!88671 () Bool)

(assert (=> b!136142 (= e!88676 e!88671)))

(declare-fun res!65337 () Bool)

(assert (=> b!136142 (=> (not res!65337) (not e!88671))))

(declare-datatypes ((tuple2!2620 0))(
  ( (tuple2!2621 (_1!1320 (_ BitVec 64)) (_2!1320 V!3497)) )
))
(declare-datatypes ((List!1740 0))(
  ( (Nil!1737) (Cons!1736 (h!2342 tuple2!2620) (t!6236 List!1740)) )
))
(declare-datatypes ((ListLongMap!1713 0))(
  ( (ListLongMap!1714 (toList!872 List!1740)) )
))
(declare-fun lt!71079 () ListLongMap!1713)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!71082 () ListLongMap!1713)

(assert (=> b!136142 (= res!65337 (and (= lt!71082 lt!71079) (not (= (select (arr!2270 (_keys!4641 (v!3218 (underlying!459 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2270 (_keys!4641 (v!3218 (underlying!459 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1412 (LongMapFixedSize!1108) ListLongMap!1713)

(assert (=> b!136142 (= lt!71079 (map!1412 newMap!16))))

(declare-fun getCurrentListMap!543 (array!4802 array!4804 (_ BitVec 32) (_ BitVec 32) V!3497 V!3497 (_ BitVec 32) Int) ListLongMap!1713)

(assert (=> b!136142 (= lt!71082 (getCurrentListMap!543 (_keys!4641 (v!3218 (underlying!459 thiss!992))) (_values!2871 (v!3218 (underlying!459 thiss!992))) (mask!7202 (v!3218 (underlying!459 thiss!992))) (extraKeys!2649 (v!3218 (underlying!459 thiss!992))) (zeroValue!2741 (v!3218 (underlying!459 thiss!992))) (minValue!2741 (v!3218 (underlying!459 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2888 (v!3218 (underlying!459 thiss!992)))))))

(declare-fun b!136143 () Bool)

(declare-fun res!65334 () Bool)

(assert (=> b!136143 (=> (not res!65334) (not e!88676))))

(declare-fun valid!528 (LongMapFixedSize!1108) Bool)

(assert (=> b!136143 (= res!65334 (valid!528 newMap!16))))

(declare-fun e!88675 () Bool)

(declare-fun e!88680 () Bool)

(declare-fun array_inv!1399 (array!4802) Bool)

(declare-fun array_inv!1400 (array!4804) Bool)

(assert (=> b!136144 (= e!88680 (and tp!11277 tp_is_empty!2887 (array_inv!1399 (_keys!4641 (v!3218 (underlying!459 thiss!992)))) (array_inv!1400 (_values!2871 (v!3218 (underlying!459 thiss!992)))) e!88675))))

(declare-fun b!136145 () Bool)

(declare-fun e!88678 () Bool)

(assert (=> b!136145 (= e!88675 (and e!88678 mapRes!4684))))

(declare-fun condMapEmpty!4683 () Bool)

(declare-fun mapDefault!4683 () ValueCell!1100)

