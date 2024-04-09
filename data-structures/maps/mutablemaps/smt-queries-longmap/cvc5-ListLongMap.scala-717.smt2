; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16818 () Bool)

(assert start!16818)

(declare-fun b!169306 () Bool)

(declare-fun b_free!4123 () Bool)

(declare-fun b_next!4123 () Bool)

(assert (=> b!169306 (= b_free!4123 (not b_next!4123))))

(declare-fun tp!14974 () Bool)

(declare-fun b_and!10555 () Bool)

(assert (=> b!169306 (= tp!14974 b_and!10555)))

(declare-fun b!169300 () Bool)

(declare-fun b_free!4125 () Bool)

(declare-fun b_next!4125 () Bool)

(assert (=> b!169300 (= b_free!4125 (not b_next!4125))))

(declare-fun tp!14973 () Bool)

(declare-fun b_and!10557 () Bool)

(assert (=> b!169300 (= tp!14973 b_and!10557)))

(declare-fun b!169297 () Bool)

(declare-fun e!111547 () Bool)

(assert (=> b!169297 (= e!111547 false)))

(declare-fun lt!84916 () Bool)

(declare-datatypes ((V!4865 0))(
  ( (V!4866 (val!2001 Int)) )
))
(declare-datatypes ((ValueCell!1613 0))(
  ( (ValueCellFull!1613 (v!3862 V!4865)) (EmptyCell!1613) )
))
(declare-datatypes ((array!6922 0))(
  ( (array!6923 (arr!3296 (Array (_ BitVec 32) (_ BitVec 64))) (size!3584 (_ BitVec 32))) )
))
(declare-datatypes ((array!6924 0))(
  ( (array!6925 (arr!3297 (Array (_ BitVec 32) ValueCell!1613)) (size!3585 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2134 0))(
  ( (LongMapFixedSize!2135 (defaultEntry!3509 Int) (mask!8292 (_ BitVec 32)) (extraKeys!3250 (_ BitVec 32)) (zeroValue!3352 V!4865) (minValue!3352 V!4865) (_size!1116 (_ BitVec 32)) (_keys!5334 array!6922) (_values!3492 array!6924) (_vacant!1116 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3206 0))(
  ( (tuple2!3207 (_1!1613 Bool) (_2!1613 LongMapFixedSize!2134)) )
))
(declare-fun lt!84915 () tuple2!3206)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3208 0))(
  ( (tuple2!3209 (_1!1614 (_ BitVec 64)) (_2!1614 V!4865)) )
))
(declare-datatypes ((List!2201 0))(
  ( (Nil!2198) (Cons!2197 (h!2814 tuple2!3208) (t!7011 List!2201)) )
))
(declare-datatypes ((ListLongMap!2165 0))(
  ( (ListLongMap!2166 (toList!1098 List!2201)) )
))
(declare-fun contains!1134 (ListLongMap!2165 (_ BitVec 64)) Bool)

(declare-fun map!1819 (LongMapFixedSize!2134) ListLongMap!2165)

(assert (=> b!169297 (= lt!84916 (contains!1134 (map!1819 (_2!1613 lt!84915)) key!828))))

(declare-fun b!169298 () Bool)

(declare-fun e!111542 () Bool)

(declare-fun tp_is_empty!3913 () Bool)

(assert (=> b!169298 (= e!111542 tp_is_empty!3913)))

(declare-fun b!169299 () Bool)

(declare-fun e!111544 () Bool)

(declare-fun e!111545 () Bool)

(declare-fun mapRes!6608 () Bool)

(assert (=> b!169299 (= e!111544 (and e!111545 mapRes!6608))))

(declare-fun condMapEmpty!6609 () Bool)

(declare-fun thiss!1248 () LongMapFixedSize!2134)

(declare-fun mapDefault!6608 () ValueCell!1613)

