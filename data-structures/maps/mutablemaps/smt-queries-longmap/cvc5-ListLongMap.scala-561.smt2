; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15220 () Bool)

(assert start!15220)

(declare-fun b!146551 () Bool)

(declare-fun b_free!3121 () Bool)

(declare-fun b_next!3121 () Bool)

(assert (=> b!146551 (= b_free!3121 (not b_next!3121))))

(declare-fun tp!11866 () Bool)

(declare-fun b_and!9185 () Bool)

(assert (=> b!146551 (= tp!11866 b_and!9185)))

(declare-fun b!146561 () Bool)

(declare-fun b_free!3123 () Bool)

(declare-fun b_next!3123 () Bool)

(assert (=> b!146561 (= b_free!3123 (not b_next!3123))))

(declare-fun tp!11868 () Bool)

(declare-fun b_and!9187 () Bool)

(assert (=> b!146561 (= tp!11868 b_and!9187)))

(declare-fun b!146547 () Bool)

(declare-fun res!69704 () Bool)

(declare-fun e!95609 () Bool)

(assert (=> b!146547 (=> (not res!69704) (not e!95609))))

(declare-datatypes ((V!3617 0))(
  ( (V!3618 (val!1533 Int)) )
))
(declare-datatypes ((array!4998 0))(
  ( (array!4999 (arr!2360 (Array (_ BitVec 32) (_ BitVec 64))) (size!2636 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1145 0))(
  ( (ValueCellFull!1145 (v!3354 V!3617)) (EmptyCell!1145) )
))
(declare-datatypes ((array!5000 0))(
  ( (array!5001 (arr!2361 (Array (_ BitVec 32) ValueCell!1145)) (size!2637 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1198 0))(
  ( (LongMapFixedSize!1199 (defaultEntry!3015 Int) (mask!7393 (_ BitVec 32)) (extraKeys!2760 (_ BitVec 32)) (zeroValue!2860 V!3617) (minValue!2860 V!3617) (_size!648 (_ BitVec 32)) (_keys!4784 array!4998) (_values!2998 array!5000) (_vacant!648 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1198)

(declare-fun valid!583 (LongMapFixedSize!1198) Bool)

(assert (=> b!146547 (= res!69704 (valid!583 newMap!16))))

(declare-fun b!146548 () Bool)

(declare-fun e!95622 () Bool)

(declare-fun e!95616 () Bool)

(assert (=> b!146548 (= e!95622 e!95616)))

(declare-fun res!69701 () Bool)

(assert (=> b!146548 (=> (not res!69701) (not e!95616))))

(declare-datatypes ((tuple2!2746 0))(
  ( (tuple2!2747 (_1!1383 Bool) (_2!1383 LongMapFixedSize!1198)) )
))
(declare-fun lt!77093 () tuple2!2746)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!146548 (= res!69701 (and (_1!1383 lt!77093) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!4639 0))(
  ( (Unit!4640) )
))
(declare-fun lt!77089 () Unit!4639)

(declare-fun e!95607 () Unit!4639)

(assert (=> b!146548 (= lt!77089 e!95607)))

(declare-datatypes ((tuple2!2748 0))(
  ( (tuple2!2749 (_1!1384 (_ BitVec 64)) (_2!1384 V!3617)) )
))
(declare-datatypes ((List!1797 0))(
  ( (Nil!1794) (Cons!1793 (h!2401 tuple2!2748) (t!6510 List!1797)) )
))
(declare-datatypes ((ListLongMap!1781 0))(
  ( (ListLongMap!1782 (toList!906 List!1797)) )
))
(declare-fun lt!77103 () ListLongMap!1781)

(declare-datatypes ((Cell!980 0))(
  ( (Cell!981 (v!3355 LongMapFixedSize!1198)) )
))
(declare-datatypes ((LongMap!980 0))(
  ( (LongMap!981 (underlying!501 Cell!980)) )
))
(declare-fun thiss!992 () LongMap!980)

(declare-fun c!27695 () Bool)

(declare-fun contains!947 (ListLongMap!1781 (_ BitVec 64)) Bool)

(assert (=> b!146548 (= c!27695 (contains!947 lt!77103 (select (arr!2360 (_keys!4784 (v!3355 (underlying!501 thiss!992)))) from!355)))))

(declare-fun lt!77091 () V!3617)

(declare-fun update!224 (LongMapFixedSize!1198 (_ BitVec 64) V!3617) tuple2!2746)

(assert (=> b!146548 (= lt!77093 (update!224 newMap!16 (select (arr!2360 (_keys!4784 (v!3355 (underlying!501 thiss!992)))) from!355) lt!77091))))

(declare-fun b!146549 () Bool)

(declare-fun e!95614 () Bool)

(declare-fun e!95623 () Bool)

(declare-fun mapRes!5004 () Bool)

(assert (=> b!146549 (= e!95614 (and e!95623 mapRes!5004))))

(declare-fun condMapEmpty!5004 () Bool)

(declare-fun mapDefault!5003 () ValueCell!1145)

