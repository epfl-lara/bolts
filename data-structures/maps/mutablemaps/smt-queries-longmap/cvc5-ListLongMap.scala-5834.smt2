; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75334 () Bool)

(assert start!75334)

(declare-fun b!886992 () Bool)

(declare-fun b_free!15505 () Bool)

(declare-fun b_next!15505 () Bool)

(assert (=> b!886992 (= b_free!15505 (not b_next!15505))))

(declare-fun tp!54450 () Bool)

(declare-fun b_and!25729 () Bool)

(assert (=> b!886992 (= tp!54450 b_and!25729)))

(declare-fun mapNonEmpty!28269 () Bool)

(declare-fun mapRes!28269 () Bool)

(declare-fun tp!54449 () Bool)

(declare-fun e!493909 () Bool)

(assert (=> mapNonEmpty!28269 (= mapRes!28269 (and tp!54449 e!493909))))

(declare-datatypes ((V!28743 0))(
  ( (V!28744 (val!8967 Int)) )
))
(declare-datatypes ((ValueCell!8435 0))(
  ( (ValueCellFull!8435 (v!11410 V!28743)) (EmptyCell!8435) )
))
(declare-fun mapValue!28269 () ValueCell!8435)

(declare-fun mapRest!28269 () (Array (_ BitVec 32) ValueCell!8435))

(declare-fun mapKey!28269 () (_ BitVec 32))

(declare-datatypes ((array!51612 0))(
  ( (array!51613 (arr!24818 (Array (_ BitVec 32) ValueCell!8435)) (size!25259 (_ BitVec 32))) )
))
(declare-datatypes ((array!51614 0))(
  ( (array!51615 (arr!24819 (Array (_ BitVec 32) (_ BitVec 64))) (size!25260 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3886 0))(
  ( (LongMapFixedSize!3887 (defaultEntry!5131 Int) (mask!25517 (_ BitVec 32)) (extraKeys!4824 (_ BitVec 32)) (zeroValue!4928 V!28743) (minValue!4928 V!28743) (_size!1998 (_ BitVec 32)) (_keys!9802 array!51614) (_values!5115 array!51612) (_vacant!1998 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1040 0))(
  ( (Cell!1041 (v!11411 LongMapFixedSize!3886)) )
))
(declare-datatypes ((LongMap!1040 0))(
  ( (LongMap!1041 (underlying!531 Cell!1040)) )
))
(declare-fun thiss!833 () LongMap!1040)

(assert (=> mapNonEmpty!28269 (= (arr!24818 (_values!5115 (v!11411 (underlying!531 thiss!833)))) (store mapRest!28269 mapKey!28269 mapValue!28269))))

(declare-fun b!886986 () Bool)

(declare-fun e!493915 () Bool)

(declare-fun e!493910 () Bool)

(assert (=> b!886986 (= e!493915 e!493910)))

(declare-fun b!886987 () Bool)

(declare-fun e!493912 () Bool)

(assert (=> b!886987 (= e!493912 false)))

(declare-fun lt!401141 () Bool)

(declare-fun key!673 () (_ BitVec 64))

(declare-fun contains!4297 (LongMap!1040 (_ BitVec 64)) Bool)

(assert (=> b!886987 (= lt!401141 (contains!4297 thiss!833 key!673))))

(declare-fun lt!401142 () V!28743)

(declare-fun apply!388 (LongMapFixedSize!3886 (_ BitVec 64)) V!28743)

(assert (=> b!886987 (= lt!401142 (apply!388 (v!11411 (underlying!531 thiss!833)) key!673))))

(declare-fun b!886988 () Bool)

(declare-fun e!493916 () Bool)

(declare-fun e!493911 () Bool)

(assert (=> b!886988 (= e!493916 (and e!493911 mapRes!28269))))

(declare-fun condMapEmpty!28269 () Bool)

(declare-fun mapDefault!28269 () ValueCell!8435)

