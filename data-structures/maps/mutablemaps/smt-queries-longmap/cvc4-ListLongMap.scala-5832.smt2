; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75318 () Bool)

(assert start!75318)

(declare-fun b!886891 () Bool)

(declare-fun b_free!15497 () Bool)

(declare-fun b_next!15497 () Bool)

(assert (=> b!886891 (= b_free!15497 (not b_next!15497))))

(declare-fun tp!54423 () Bool)

(declare-fun b_and!25721 () Bool)

(assert (=> b!886891 (= tp!54423 b_and!25721)))

(declare-fun b!886885 () Bool)

(declare-fun e!493810 () Bool)

(declare-datatypes ((V!28731 0))(
  ( (V!28732 (val!8963 Int)) )
))
(declare-datatypes ((ValueCell!8431 0))(
  ( (ValueCellFull!8431 (v!11402 V!28731)) (EmptyCell!8431) )
))
(declare-datatypes ((array!51594 0))(
  ( (array!51595 (arr!24810 (Array (_ BitVec 32) ValueCell!8431)) (size!25251 (_ BitVec 32))) )
))
(declare-datatypes ((array!51596 0))(
  ( (array!51597 (arr!24811 (Array (_ BitVec 32) (_ BitVec 64))) (size!25252 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3878 0))(
  ( (LongMapFixedSize!3879 (defaultEntry!5127 Int) (mask!25509 (_ BitVec 32)) (extraKeys!4820 (_ BitVec 32)) (zeroValue!4924 V!28731) (minValue!4924 V!28731) (_size!1994 (_ BitVec 32)) (_keys!9798 array!51596) (_values!5111 array!51594) (_vacant!1994 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1032 0))(
  ( (Cell!1033 (v!11403 LongMapFixedSize!3878)) )
))
(declare-datatypes ((LongMap!1032 0))(
  ( (LongMap!1033 (underlying!527 Cell!1032)) )
))
(declare-fun thiss!833 () LongMap!1032)

(declare-fun valid!1502 (LongMapFixedSize!3878) Bool)

(assert (=> b!886885 (= e!493810 (not (valid!1502 (v!11403 (underlying!527 thiss!833)))))))

(declare-fun mapIsEmpty!28254 () Bool)

(declare-fun mapRes!28254 () Bool)

(assert (=> mapIsEmpty!28254 mapRes!28254))

(declare-fun b!886886 () Bool)

(declare-fun e!493806 () Bool)

(declare-fun e!493811 () Bool)

(assert (=> b!886886 (= e!493806 (and e!493811 mapRes!28254))))

(declare-fun condMapEmpty!28254 () Bool)

(declare-fun mapDefault!28254 () ValueCell!8431)

