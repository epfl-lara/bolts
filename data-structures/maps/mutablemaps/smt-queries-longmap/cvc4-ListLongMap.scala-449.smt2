; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8322 () Bool)

(assert start!8322)

(declare-fun b!54509 () Bool)

(declare-fun b_free!1785 () Bool)

(declare-fun b_next!1785 () Bool)

(assert (=> b!54509 (= b_free!1785 (not b_next!1785))))

(declare-fun tp!7455 () Bool)

(declare-fun b_and!3121 () Bool)

(assert (=> b!54509 (= tp!7455 b_and!3121)))

(declare-fun b!54520 () Bool)

(declare-fun b_free!1787 () Bool)

(declare-fun b_next!1787 () Bool)

(assert (=> b!54520 (= b_free!1787 (not b_next!1787))))

(declare-fun tp!7458 () Bool)

(declare-fun b_and!3123 () Bool)

(assert (=> b!54520 (= tp!7458 b_and!3123)))

(declare-fun mapIsEmpty!2597 () Bool)

(declare-fun mapRes!2597 () Bool)

(assert (=> mapIsEmpty!2597 mapRes!2597))

(declare-fun res!30838 () Bool)

(declare-fun e!35598 () Bool)

(assert (=> start!8322 (=> (not res!30838) (not e!35598))))

(declare-datatypes ((V!2725 0))(
  ( (V!2726 (val!1199 Int)) )
))
(declare-datatypes ((array!3540 0))(
  ( (array!3541 (arr!1692 (Array (_ BitVec 32) (_ BitVec 64))) (size!1921 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!811 0))(
  ( (ValueCellFull!811 (v!2280 V!2725)) (EmptyCell!811) )
))
(declare-datatypes ((array!3542 0))(
  ( (array!3543 (arr!1693 (Array (_ BitVec 32) ValueCell!811)) (size!1922 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!530 0))(
  ( (LongMapFixedSize!531 (defaultEntry!1979 Int) (mask!5824 (_ BitVec 32)) (extraKeys!1870 (_ BitVec 32)) (zeroValue!1897 V!2725) (minValue!1897 V!2725) (_size!314 (_ BitVec 32)) (_keys!3599 array!3540) (_values!1962 array!3542) (_vacant!314 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!340 0))(
  ( (Cell!341 (v!2281 LongMapFixedSize!530)) )
))
(declare-datatypes ((LongMap!340 0))(
  ( (LongMap!341 (underlying!181 Cell!340)) )
))
(declare-fun thiss!992 () LongMap!340)

(declare-fun valid!205 (LongMap!340) Bool)

(assert (=> start!8322 (= res!30838 (valid!205 thiss!992))))

(assert (=> start!8322 e!35598))

(declare-fun e!35599 () Bool)

(assert (=> start!8322 e!35599))

(assert (=> start!8322 true))

(declare-fun e!35607 () Bool)

(assert (=> start!8322 e!35607))

(declare-fun b!54503 () Bool)

(declare-fun e!35606 () Bool)

(declare-fun e!35600 () Bool)

(assert (=> b!54503 (= e!35606 e!35600)))

(declare-fun b!54504 () Bool)

(declare-fun e!35604 () Bool)

(assert (=> b!54504 (= e!35598 e!35604)))

(declare-fun res!30830 () Bool)

(assert (=> b!54504 (=> (not res!30830) (not e!35604))))

(declare-datatypes ((tuple2!1936 0))(
  ( (tuple2!1937 (_1!978 (_ BitVec 64)) (_2!978 V!2725)) )
))
(declare-datatypes ((List!1396 0))(
  ( (Nil!1393) (Cons!1392 (h!1972 tuple2!1936) (t!4558 List!1396)) )
))
(declare-datatypes ((ListLongMap!1319 0))(
  ( (ListLongMap!1320 (toList!675 List!1396)) )
))
(declare-fun lt!21664 () ListLongMap!1319)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!21667 () ListLongMap!1319)

(assert (=> b!54504 (= res!30830 (and (= lt!21667 lt!21664) (not (= (select (arr!1692 (_keys!3599 (v!2281 (underlying!181 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1692 (_keys!3599 (v!2281 (underlying!181 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!530)

(declare-fun map!1055 (LongMapFixedSize!530) ListLongMap!1319)

(assert (=> b!54504 (= lt!21664 (map!1055 newMap!16))))

(declare-fun getCurrentListMap!379 (array!3540 array!3542 (_ BitVec 32) (_ BitVec 32) V!2725 V!2725 (_ BitVec 32) Int) ListLongMap!1319)

(assert (=> b!54504 (= lt!21667 (getCurrentListMap!379 (_keys!3599 (v!2281 (underlying!181 thiss!992))) (_values!1962 (v!2281 (underlying!181 thiss!992))) (mask!5824 (v!2281 (underlying!181 thiss!992))) (extraKeys!1870 (v!2281 (underlying!181 thiss!992))) (zeroValue!1897 (v!2281 (underlying!181 thiss!992))) (minValue!1897 (v!2281 (underlying!181 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1979 (v!2281 (underlying!181 thiss!992)))))))

(declare-fun b!54505 () Bool)

(assert (=> b!54505 (= e!35599 e!35606)))

(declare-fun b!54506 () Bool)

(declare-fun res!30835 () Bool)

(declare-fun e!35601 () Bool)

(assert (=> b!54506 (=> (not res!30835) (not e!35601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!54506 (= res!30835 (validMask!0 (mask!5824 (v!2281 (underlying!181 thiss!992)))))))

(declare-fun b!54507 () Bool)

(declare-fun e!35609 () Bool)

(declare-fun tp_is_empty!2309 () Bool)

(assert (=> b!54507 (= e!35609 tp_is_empty!2309)))

(declare-fun b!54508 () Bool)

(declare-fun res!30834 () Bool)

(assert (=> b!54508 (=> (not res!30834) (not e!35598))))

(assert (=> b!54508 (= res!30834 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1921 (_keys!3599 (v!2281 (underlying!181 thiss!992)))))))))

(declare-fun e!35605 () Bool)

(declare-fun array_inv!995 (array!3540) Bool)

(declare-fun array_inv!996 (array!3542) Bool)

(assert (=> b!54509 (= e!35600 (and tp!7455 tp_is_empty!2309 (array_inv!995 (_keys!3599 (v!2281 (underlying!181 thiss!992)))) (array_inv!996 (_values!1962 (v!2281 (underlying!181 thiss!992)))) e!35605))))

(declare-fun b!54510 () Bool)

(declare-fun res!30831 () Bool)

(assert (=> b!54510 (=> (not res!30831) (not e!35601))))

(assert (=> b!54510 (= res!30831 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1921 (_keys!3599 (v!2281 (underlying!181 thiss!992)))))))))

(declare-fun b!54511 () Bool)

(declare-fun res!30833 () Bool)

(assert (=> b!54511 (=> (not res!30833) (not e!35598))))

(assert (=> b!54511 (= res!30833 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5824 newMap!16)) (_size!314 (v!2281 (underlying!181 thiss!992)))))))

(declare-fun mapNonEmpty!2597 () Bool)

(declare-fun tp!7456 () Bool)

(declare-fun e!35597 () Bool)

(assert (=> mapNonEmpty!2597 (= mapRes!2597 (and tp!7456 e!35597))))

(declare-fun mapValue!2598 () ValueCell!811)

(declare-fun mapKey!2598 () (_ BitVec 32))

(declare-fun mapRest!2597 () (Array (_ BitVec 32) ValueCell!811))

(assert (=> mapNonEmpty!2597 (= (arr!1693 (_values!1962 newMap!16)) (store mapRest!2597 mapKey!2598 mapValue!2598))))

(declare-fun b!54512 () Bool)

(declare-fun e!35603 () Bool)

(assert (=> b!54512 (= e!35603 tp_is_empty!2309)))

(declare-fun b!54513 () Bool)

(declare-fun res!30840 () Bool)

(assert (=> b!54513 (=> (not res!30840) (not e!35598))))

(declare-fun valid!206 (LongMapFixedSize!530) Bool)

(assert (=> b!54513 (= res!30840 (valid!206 newMap!16))))

(declare-fun b!54514 () Bool)

(declare-fun e!35595 () Bool)

(assert (=> b!54514 (= e!35595 tp_is_empty!2309)))

(declare-fun b!54515 () Bool)

(assert (=> b!54515 (= e!35604 e!35601)))

(declare-fun res!30837 () Bool)

(assert (=> b!54515 (=> (not res!30837) (not e!35601))))

(declare-fun contains!646 (ListLongMap!1319 (_ BitVec 64)) Bool)

(assert (=> b!54515 (= res!30837 (contains!646 lt!21664 (select (arr!1692 (_keys!3599 (v!2281 (underlying!181 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1938 0))(
  ( (tuple2!1939 (_1!979 Bool) (_2!979 LongMapFixedSize!530)) )
))
(declare-fun lt!21666 () tuple2!1938)

(declare-fun update!58 (LongMapFixedSize!530 (_ BitVec 64) V!2725) tuple2!1938)

(declare-fun get!1019 (ValueCell!811 V!2725) V!2725)

(declare-fun dynLambda!286 (Int (_ BitVec 64)) V!2725)

(assert (=> b!54515 (= lt!21666 (update!58 newMap!16 (select (arr!1692 (_keys!3599 (v!2281 (underlying!181 thiss!992)))) from!355) (get!1019 (select (arr!1693 (_values!1962 (v!2281 (underlying!181 thiss!992)))) from!355) (dynLambda!286 (defaultEntry!1979 (v!2281 (underlying!181 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54516 () Bool)

(declare-fun res!30839 () Bool)

(assert (=> b!54516 (=> (not res!30839) (not e!35601))))

(assert (=> b!54516 (= res!30839 (and (= (size!1922 (_values!1962 (v!2281 (underlying!181 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5824 (v!2281 (underlying!181 thiss!992))))) (= (size!1921 (_keys!3599 (v!2281 (underlying!181 thiss!992)))) (size!1922 (_values!1962 (v!2281 (underlying!181 thiss!992))))) (bvsge (mask!5824 (v!2281 (underlying!181 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1870 (v!2281 (underlying!181 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1870 (v!2281 (underlying!181 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!54517 () Bool)

(declare-fun e!35596 () Bool)

(assert (=> b!54517 (= e!35596 (and e!35595 mapRes!2597))))

(declare-fun condMapEmpty!2597 () Bool)

(declare-fun mapDefault!2597 () ValueCell!811)

