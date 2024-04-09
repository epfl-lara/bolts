; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16248 () Bool)

(assert start!16248)

(declare-fun b!161928 () Bool)

(declare-fun b_free!3697 () Bool)

(declare-fun b_next!3697 () Bool)

(assert (=> b!161928 (= b_free!3697 (not b_next!3697))))

(declare-fun tp!13661 () Bool)

(declare-fun b_and!10129 () Bool)

(assert (=> b!161928 (= tp!13661 b_and!10129)))

(declare-fun tp_is_empty!3499 () Bool)

(declare-fun e!105976 () Bool)

(declare-datatypes ((V!4313 0))(
  ( (V!4314 (val!1794 Int)) )
))
(declare-datatypes ((ValueCell!1406 0))(
  ( (ValueCellFull!1406 (v!3655 V!4313)) (EmptyCell!1406) )
))
(declare-datatypes ((array!6076 0))(
  ( (array!6077 (arr!2882 (Array (_ BitVec 32) (_ BitVec 64))) (size!3166 (_ BitVec 32))) )
))
(declare-datatypes ((array!6078 0))(
  ( (array!6079 (arr!2883 (Array (_ BitVec 32) ValueCell!1406)) (size!3167 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1720 0))(
  ( (LongMapFixedSize!1721 (defaultEntry!3302 Int) (mask!7910 (_ BitVec 32)) (extraKeys!3043 (_ BitVec 32)) (zeroValue!3145 V!4313) (minValue!3145 V!4313) (_size!909 (_ BitVec 32)) (_keys!5103 array!6076) (_values!3285 array!6078) (_vacant!909 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1720)

(declare-fun e!105978 () Bool)

(declare-fun array_inv!1833 (array!6076) Bool)

(declare-fun array_inv!1834 (array!6078) Bool)

(assert (=> b!161928 (= e!105978 (and tp!13661 tp_is_empty!3499 (array_inv!1833 (_keys!5103 thiss!1248)) (array_inv!1834 (_values!3285 thiss!1248)) e!105976))))

(declare-fun b!161929 () Bool)

(declare-fun e!105979 () Bool)

(assert (=> b!161929 (= e!105979 false)))

(declare-fun lt!82357 () Bool)

(declare-datatypes ((tuple2!2966 0))(
  ( (tuple2!2967 (_1!1493 Bool) (_2!1493 LongMapFixedSize!1720)) )
))
(declare-fun lt!82356 () tuple2!2966)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2968 0))(
  ( (tuple2!2969 (_1!1494 (_ BitVec 64)) (_2!1494 V!4313)) )
))
(declare-datatypes ((List!2001 0))(
  ( (Nil!1998) (Cons!1997 (h!2610 tuple2!2968) (t!6811 List!2001)) )
))
(declare-datatypes ((ListLongMap!1967 0))(
  ( (ListLongMap!1968 (toList!999 List!2001)) )
))
(declare-fun contains!1029 (ListLongMap!1967 (_ BitVec 64)) Bool)

(declare-fun map!1667 (LongMapFixedSize!1720) ListLongMap!1967)

(assert (=> b!161929 (= lt!82357 (contains!1029 (map!1667 (_2!1493 lt!82356)) key!828))))

(declare-fun b!161930 () Bool)

(declare-fun e!105983 () Bool)

(declare-fun mapRes!5936 () Bool)

(assert (=> b!161930 (= e!105976 (and e!105983 mapRes!5936))))

(declare-fun condMapEmpty!5936 () Bool)

(declare-fun mapDefault!5936 () ValueCell!1406)

