; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14982 () Bool)

(assert start!14982)

(declare-fun b!143979 () Bool)

(declare-fun b_free!3049 () Bool)

(declare-fun b_next!3049 () Bool)

(assert (=> b!143979 (= b_free!3049 (not b_next!3049))))

(declare-fun tp!11635 () Bool)

(declare-fun b_and!8989 () Bool)

(assert (=> b!143979 (= tp!11635 b_and!8989)))

(declare-fun b!143991 () Bool)

(declare-fun b_free!3051 () Bool)

(declare-fun b_next!3051 () Bool)

(assert (=> b!143991 (= b_free!3051 (not b_next!3051))))

(declare-fun tp!11634 () Bool)

(declare-fun b_and!8991 () Bool)

(assert (=> b!143991 (= tp!11634 b_and!8991)))

(declare-fun b!143973 () Bool)

(declare-fun e!93825 () Bool)

(declare-fun e!93826 () Bool)

(assert (=> b!143973 (= e!93825 e!93826)))

(declare-fun res!68569 () Bool)

(assert (=> b!143973 (=> (not res!68569) (not e!93826))))

(declare-datatypes ((List!1770 0))(
  ( (Nil!1767) (Cons!1766 (h!2374 (_ BitVec 64)) (t!6403 List!1770)) )
))
(declare-fun lt!75550 () List!1770)

(declare-fun contains!927 (List!1770 (_ BitVec 64)) Bool)

(assert (=> b!143973 (= res!68569 (not (contains!927 lt!75550 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!143974 () Bool)

(declare-fun e!93816 () Bool)

(declare-fun tp_is_empty!2941 () Bool)

(assert (=> b!143974 (= e!93816 tp_is_empty!2941)))

(declare-fun res!68571 () Bool)

(declare-fun e!93829 () Bool)

(assert (=> start!14982 (=> (not res!68571) (not e!93829))))

(declare-datatypes ((V!3569 0))(
  ( (V!3570 (val!1515 Int)) )
))
(declare-datatypes ((array!4920 0))(
  ( (array!4921 (arr!2324 (Array (_ BitVec 32) (_ BitVec 64))) (size!2598 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1127 0))(
  ( (ValueCellFull!1127 (v!3305 V!3569)) (EmptyCell!1127) )
))
(declare-datatypes ((array!4922 0))(
  ( (array!4923 (arr!2325 (Array (_ BitVec 32) ValueCell!1127)) (size!2599 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1162 0))(
  ( (LongMapFixedSize!1163 (defaultEntry!2975 Int) (mask!7333 (_ BitVec 32)) (extraKeys!2724 (_ BitVec 32)) (zeroValue!2822 V!3569) (minValue!2822 V!3569) (_size!630 (_ BitVec 32)) (_keys!4740 array!4920) (_values!2958 array!4922) (_vacant!630 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!948 0))(
  ( (Cell!949 (v!3306 LongMapFixedSize!1162)) )
))
(declare-datatypes ((LongMap!948 0))(
  ( (LongMap!949 (underlying!485 Cell!948)) )
))
(declare-fun thiss!992 () LongMap!948)

(declare-fun valid!560 (LongMap!948) Bool)

(assert (=> start!14982 (= res!68571 (valid!560 thiss!992))))

(assert (=> start!14982 e!93829))

(declare-fun e!93818 () Bool)

(assert (=> start!14982 e!93818))

(assert (=> start!14982 true))

(declare-fun e!93828 () Bool)

(assert (=> start!14982 e!93828))

(declare-fun b!143975 () Bool)

(declare-fun res!68576 () Bool)

(assert (=> b!143975 (=> (not res!68576) (not e!93829))))

(declare-fun newMap!16 () LongMapFixedSize!1162)

(assert (=> b!143975 (= res!68576 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7333 newMap!16)) (_size!630 (v!3306 (underlying!485 thiss!992)))))))

(declare-fun b!143976 () Bool)

(declare-fun res!68577 () Bool)

(assert (=> b!143976 (=> (not res!68577) (not e!93829))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!143976 (= res!68577 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2598 (_keys!4740 (v!3306 (underlying!485 thiss!992)))))))))

(declare-fun b!143977 () Bool)

(declare-fun res!68573 () Bool)

(assert (=> b!143977 (=> (not res!68573) (not e!93829))))

(declare-fun valid!561 (LongMapFixedSize!1162) Bool)

(assert (=> b!143977 (= res!68573 (valid!561 newMap!16))))

(declare-fun b!143978 () Bool)

(declare-fun e!93824 () Bool)

(assert (=> b!143978 (= e!93818 e!93824)))

(declare-fun e!93817 () Bool)

(declare-fun e!93831 () Bool)

(declare-fun array_inv!1439 (array!4920) Bool)

(declare-fun array_inv!1440 (array!4922) Bool)

(assert (=> b!143979 (= e!93831 (and tp!11635 tp_is_empty!2941 (array_inv!1439 (_keys!4740 (v!3306 (underlying!485 thiss!992)))) (array_inv!1440 (_values!2958 (v!3306 (underlying!485 thiss!992)))) e!93817))))

(declare-fun b!143980 () Bool)

(declare-fun e!93823 () Bool)

(declare-fun e!93830 () Bool)

(declare-fun mapRes!4879 () Bool)

(assert (=> b!143980 (= e!93823 (and e!93830 mapRes!4879))))

(declare-fun condMapEmpty!4879 () Bool)

(declare-fun mapDefault!4880 () ValueCell!1127)

