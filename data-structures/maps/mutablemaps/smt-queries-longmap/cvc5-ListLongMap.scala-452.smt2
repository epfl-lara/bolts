; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8336 () Bool)

(assert start!8336)

(declare-fun b!54882 () Bool)

(declare-fun b_free!1813 () Bool)

(declare-fun b_next!1813 () Bool)

(assert (=> b!54882 (= b_free!1813 (not b_next!1813))))

(declare-fun tp!7540 () Bool)

(declare-fun b_and!3177 () Bool)

(assert (=> b!54882 (= tp!7540 b_and!3177)))

(declare-fun b!54886 () Bool)

(declare-fun b_free!1815 () Bool)

(declare-fun b_next!1815 () Bool)

(assert (=> b!54886 (= b_free!1815 (not b_next!1815))))

(declare-fun tp!7541 () Bool)

(declare-fun b_and!3179 () Bool)

(assert (=> b!54886 (= tp!7541 b_and!3179)))

(declare-fun b!54878 () Bool)

(declare-fun e!35940 () Bool)

(declare-fun e!35931 () Bool)

(assert (=> b!54878 (= e!35940 e!35931)))

(declare-fun res!30985 () Bool)

(assert (=> b!54878 (=> (not res!30985) (not e!35931))))

(declare-datatypes ((V!2745 0))(
  ( (V!2746 (val!1206 Int)) )
))
(declare-datatypes ((array!3568 0))(
  ( (array!3569 (arr!1706 (Array (_ BitVec 32) (_ BitVec 64))) (size!1935 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!818 0))(
  ( (ValueCellFull!818 (v!2294 V!2745)) (EmptyCell!818) )
))
(declare-datatypes ((array!3570 0))(
  ( (array!3571 (arr!1707 (Array (_ BitVec 32) ValueCell!818)) (size!1936 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!544 0))(
  ( (LongMapFixedSize!545 (defaultEntry!1986 Int) (mask!5837 (_ BitVec 32)) (extraKeys!1877 (_ BitVec 32)) (zeroValue!1904 V!2745) (minValue!1904 V!2745) (_size!321 (_ BitVec 32)) (_keys!3606 array!3568) (_values!1969 array!3570) (_vacant!321 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!354 0))(
  ( (Cell!355 (v!2295 LongMapFixedSize!544)) )
))
(declare-datatypes ((LongMap!354 0))(
  ( (LongMap!355 (underlying!188 Cell!354)) )
))
(declare-fun thiss!992 () LongMap!354)

(declare-datatypes ((tuple2!1956 0))(
  ( (tuple2!1957 (_1!988 (_ BitVec 64)) (_2!988 V!2745)) )
))
(declare-datatypes ((List!1404 0))(
  ( (Nil!1401) (Cons!1400 (h!1980 tuple2!1956) (t!4594 List!1404)) )
))
(declare-datatypes ((ListLongMap!1329 0))(
  ( (ListLongMap!1330 (toList!680 List!1404)) )
))
(declare-fun lt!21768 () ListLongMap!1329)

(declare-fun lt!21772 () ListLongMap!1329)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!54878 (= res!30985 (and (= lt!21772 lt!21768) (not (= (select (arr!1706 (_keys!3606 (v!2295 (underlying!188 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1706 (_keys!3606 (v!2295 (underlying!188 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!544)

(declare-fun map!1065 (LongMapFixedSize!544) ListLongMap!1329)

(assert (=> b!54878 (= lt!21768 (map!1065 newMap!16))))

(declare-fun getCurrentListMap!383 (array!3568 array!3570 (_ BitVec 32) (_ BitVec 32) V!2745 V!2745 (_ BitVec 32) Int) ListLongMap!1329)

(assert (=> b!54878 (= lt!21772 (getCurrentListMap!383 (_keys!3606 (v!2295 (underlying!188 thiss!992))) (_values!1969 (v!2295 (underlying!188 thiss!992))) (mask!5837 (v!2295 (underlying!188 thiss!992))) (extraKeys!1877 (v!2295 (underlying!188 thiss!992))) (zeroValue!1904 (v!2295 (underlying!188 thiss!992))) (minValue!1904 (v!2295 (underlying!188 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1986 (v!2295 (underlying!188 thiss!992)))))))

(declare-fun b!54879 () Bool)

(declare-fun e!35935 () Bool)

(declare-fun e!35938 () Bool)

(assert (=> b!54879 (= e!35935 e!35938)))

(declare-fun b!54880 () Bool)

(declare-fun e!35936 () Bool)

(assert (=> b!54880 (= e!35938 e!35936)))

(declare-fun b!54881 () Bool)

(declare-fun e!35939 () Bool)

(declare-fun e!35945 () Bool)

(declare-fun mapRes!2639 () Bool)

(assert (=> b!54881 (= e!35939 (and e!35945 mapRes!2639))))

(declare-fun condMapEmpty!2639 () Bool)

(declare-fun mapDefault!2640 () ValueCell!818)

