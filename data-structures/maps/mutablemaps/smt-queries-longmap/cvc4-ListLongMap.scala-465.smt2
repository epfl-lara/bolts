; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8732 () Bool)

(assert start!8732)

(declare-fun b!60506 () Bool)

(declare-fun b_free!1977 () Bool)

(declare-fun b_next!1977 () Bool)

(assert (=> b!60506 (= b_free!1977 (not b_next!1977))))

(declare-fun tp!8051 () Bool)

(declare-fun b_and!3677 () Bool)

(assert (=> b!60506 (= tp!8051 b_and!3677)))

(declare-fun b!60501 () Bool)

(declare-fun b_free!1979 () Bool)

(declare-fun b_next!1979 () Bool)

(assert (=> b!60501 (= b_free!1979 (not b_next!1979))))

(declare-fun tp!8054 () Bool)

(declare-fun b_and!3679 () Bool)

(assert (=> b!60501 (= tp!8054 b_and!3679)))

(declare-fun b!60488 () Bool)

(declare-fun e!39771 () Bool)

(declare-fun tp_is_empty!2405 () Bool)

(assert (=> b!60488 (= e!39771 tp_is_empty!2405)))

(declare-fun b!60489 () Bool)

(declare-fun e!39775 () Bool)

(declare-fun e!39774 () Bool)

(assert (=> b!60489 (= e!39775 e!39774)))

(declare-fun b!60490 () Bool)

(declare-fun res!33443 () Bool)

(declare-fun e!39770 () Bool)

(assert (=> b!60490 (=> (not res!33443) (not e!39770))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2853 0))(
  ( (V!2854 (val!1247 Int)) )
))
(declare-datatypes ((array!3738 0))(
  ( (array!3739 (arr!1788 (Array (_ BitVec 32) (_ BitVec 64))) (size!2019 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!859 0))(
  ( (ValueCellFull!859 (v!2398 V!2853)) (EmptyCell!859) )
))
(declare-datatypes ((array!3740 0))(
  ( (array!3741 (arr!1789 (Array (_ BitVec 32) ValueCell!859)) (size!2020 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!626 0))(
  ( (LongMapFixedSize!627 (defaultEntry!2065 Int) (mask!5959 (_ BitVec 32)) (extraKeys!1948 (_ BitVec 32)) (zeroValue!1979 V!2853) (minValue!1979 V!2853) (_size!362 (_ BitVec 32)) (_keys!3693 array!3738) (_values!2048 array!3740) (_vacant!362 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!436 0))(
  ( (Cell!437 (v!2399 LongMapFixedSize!626)) )
))
(declare-datatypes ((LongMap!436 0))(
  ( (LongMap!437 (underlying!229 Cell!436)) )
))
(declare-fun thiss!992 () LongMap!436)

(assert (=> b!60490 (= res!33443 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2019 (_keys!3693 (v!2399 (underlying!229 thiss!992)))))))))

(declare-fun b!60491 () Bool)

(declare-fun e!39769 () Bool)

(assert (=> b!60491 (= e!39770 e!39769)))

(declare-fun res!33437 () Bool)

(assert (=> b!60491 (=> (not res!33437) (not e!39769))))

(declare-datatypes ((tuple2!2054 0))(
  ( (tuple2!2055 (_1!1037 (_ BitVec 64)) (_2!1037 V!2853)) )
))
(declare-datatypes ((List!1457 0))(
  ( (Nil!1454) (Cons!1453 (h!2035 tuple2!2054) (t!4827 List!1457)) )
))
(declare-datatypes ((ListLongMap!1381 0))(
  ( (ListLongMap!1382 (toList!706 List!1457)) )
))
(declare-fun lt!24743 () ListLongMap!1381)

(declare-fun lt!24739 () ListLongMap!1381)

(assert (=> b!60491 (= res!33437 (and (= lt!24743 lt!24739) (not (= (select (arr!1788 (_keys!3693 (v!2399 (underlying!229 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1788 (_keys!3693 (v!2399 (underlying!229 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!626)

(declare-fun map!1111 (LongMapFixedSize!626) ListLongMap!1381)

(assert (=> b!60491 (= lt!24739 (map!1111 newMap!16))))

(declare-fun getCurrentListMap!403 (array!3738 array!3740 (_ BitVec 32) (_ BitVec 32) V!2853 V!2853 (_ BitVec 32) Int) ListLongMap!1381)

(assert (=> b!60491 (= lt!24743 (getCurrentListMap!403 (_keys!3693 (v!2399 (underlying!229 thiss!992))) (_values!2048 (v!2399 (underlying!229 thiss!992))) (mask!5959 (v!2399 (underlying!229 thiss!992))) (extraKeys!1948 (v!2399 (underlying!229 thiss!992))) (zeroValue!1979 (v!2399 (underlying!229 thiss!992))) (minValue!1979 (v!2399 (underlying!229 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2065 (v!2399 (underlying!229 thiss!992)))))))

(declare-fun res!33439 () Bool)

(assert (=> start!8732 (=> (not res!33439) (not e!39770))))

(declare-fun valid!256 (LongMap!436) Bool)

(assert (=> start!8732 (= res!33439 (valid!256 thiss!992))))

(assert (=> start!8732 e!39770))

(assert (=> start!8732 e!39775))

(assert (=> start!8732 true))

(declare-fun e!39766 () Bool)

(assert (=> start!8732 e!39766))

(declare-fun b!60492 () Bool)

(declare-fun e!39777 () Bool)

(assert (=> b!60492 (= e!39777 tp_is_empty!2405)))

(declare-fun b!60493 () Bool)

(declare-fun res!33442 () Bool)

(declare-fun e!39765 () Bool)

(assert (=> b!60493 (=> (not res!33442) (not e!39765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!60493 (= res!33442 (validMask!0 (mask!5959 (v!2399 (underlying!229 thiss!992)))))))

(declare-fun b!60494 () Bool)

(declare-fun e!39776 () Bool)

(declare-fun mapRes!2906 () Bool)

(assert (=> b!60494 (= e!39776 (and e!39771 mapRes!2906))))

(declare-fun condMapEmpty!2905 () Bool)

(declare-fun mapDefault!2905 () ValueCell!859)

