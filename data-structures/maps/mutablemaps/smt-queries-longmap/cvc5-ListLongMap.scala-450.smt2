; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8324 () Bool)

(assert start!8324)

(declare-fun b!54565 () Bool)

(declare-fun b_free!1789 () Bool)

(declare-fun b_next!1789 () Bool)

(assert (=> b!54565 (= b_free!1789 (not b_next!1789))))

(declare-fun tp!7470 () Bool)

(declare-fun b_and!3129 () Bool)

(assert (=> b!54565 (= tp!7470 b_and!3129)))

(declare-fun b!54575 () Bool)

(declare-fun b_free!1791 () Bool)

(declare-fun b_next!1791 () Bool)

(assert (=> b!54575 (= b_free!1791 (not b_next!1791))))

(declare-fun tp!7468 () Bool)

(declare-fun b_and!3131 () Bool)

(assert (=> b!54575 (= tp!7468 b_and!3131)))

(declare-fun b!54560 () Bool)

(declare-fun res!30855 () Bool)

(declare-fun e!35646 () Bool)

(assert (=> b!54560 (=> (not res!30855) (not e!35646))))

(declare-datatypes ((V!2729 0))(
  ( (V!2730 (val!1200 Int)) )
))
(declare-datatypes ((array!3544 0))(
  ( (array!3545 (arr!1694 (Array (_ BitVec 32) (_ BitVec 64))) (size!1923 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!812 0))(
  ( (ValueCellFull!812 (v!2282 V!2729)) (EmptyCell!812) )
))
(declare-datatypes ((array!3546 0))(
  ( (array!3547 (arr!1695 (Array (_ BitVec 32) ValueCell!812)) (size!1924 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!532 0))(
  ( (LongMapFixedSize!533 (defaultEntry!1980 Int) (mask!5827 (_ BitVec 32)) (extraKeys!1871 (_ BitVec 32)) (zeroValue!1898 V!2729) (minValue!1898 V!2729) (_size!315 (_ BitVec 32)) (_keys!3600 array!3544) (_values!1963 array!3546) (_vacant!315 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!532)

(declare-datatypes ((Cell!342 0))(
  ( (Cell!343 (v!2283 LongMapFixedSize!532)) )
))
(declare-datatypes ((LongMap!342 0))(
  ( (LongMap!343 (underlying!182 Cell!342)) )
))
(declare-fun thiss!992 () LongMap!342)

(assert (=> b!54560 (= res!30855 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5827 newMap!16)) (_size!315 (v!2283 (underlying!182 thiss!992)))))))

(declare-fun b!54561 () Bool)

(declare-fun e!35652 () Bool)

(declare-fun e!35648 () Bool)

(assert (=> b!54561 (= e!35652 e!35648)))

(declare-fun b!54562 () Bool)

(declare-fun e!35642 () Bool)

(declare-fun e!35653 () Bool)

(declare-fun mapRes!2603 () Bool)

(assert (=> b!54562 (= e!35642 (and e!35653 mapRes!2603))))

(declare-fun condMapEmpty!2604 () Bool)

(declare-fun mapDefault!2603 () ValueCell!812)

