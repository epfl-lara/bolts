; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16530 () Bool)

(assert start!16530)

(declare-fun b!164175 () Bool)

(declare-fun b_free!3823 () Bool)

(declare-fun b_next!3823 () Bool)

(assert (=> b!164175 (= b_free!3823 (not b_next!3823))))

(declare-fun tp!14069 () Bool)

(declare-fun b_and!10255 () Bool)

(assert (=> b!164175 (= tp!14069 b_and!10255)))

(declare-fun b!164172 () Bool)

(declare-fun res!77707 () Bool)

(declare-fun e!107729 () Bool)

(assert (=> b!164172 (=> (not res!77707) (not e!107729))))

(declare-datatypes ((V!4481 0))(
  ( (V!4482 (val!1857 Int)) )
))
(declare-datatypes ((ValueCell!1469 0))(
  ( (ValueCellFull!1469 (v!3718 V!4481)) (EmptyCell!1469) )
))
(declare-datatypes ((array!6346 0))(
  ( (array!6347 (arr!3008 (Array (_ BitVec 32) (_ BitVec 64))) (size!3296 (_ BitVec 32))) )
))
(declare-datatypes ((array!6348 0))(
  ( (array!6349 (arr!3009 (Array (_ BitVec 32) ValueCell!1469)) (size!3297 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1846 0))(
  ( (LongMapFixedSize!1847 (defaultEntry!3365 Int) (mask!8052 (_ BitVec 32)) (extraKeys!3106 (_ BitVec 32)) (zeroValue!3208 V!4481) (minValue!3208 V!4481) (_size!972 (_ BitVec 32)) (_keys!5190 array!6346) (_values!3348 array!6348) (_vacant!972 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1846)

(assert (=> b!164172 (= res!77707 (and (= (size!3297 (_values!3348 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8052 thiss!1248))) (= (size!3296 (_keys!5190 thiss!1248)) (size!3297 (_values!3348 thiss!1248))) (bvsge (mask!8052 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3106 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3106 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164173 () Bool)

(declare-fun res!77709 () Bool)

(declare-fun e!107725 () Bool)

(assert (=> b!164173 (=> (not res!77709) (not e!107725))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!164173 (= res!77709 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6156 () Bool)

(declare-fun mapRes!6156 () Bool)

(declare-fun tp!14070 () Bool)

(declare-fun e!107726 () Bool)

(assert (=> mapNonEmpty!6156 (= mapRes!6156 (and tp!14070 e!107726))))

(declare-fun mapKey!6156 () (_ BitVec 32))

(declare-fun mapValue!6156 () ValueCell!1469)

(declare-fun mapRest!6156 () (Array (_ BitVec 32) ValueCell!1469))

(assert (=> mapNonEmpty!6156 (= (arr!3009 (_values!3348 thiss!1248)) (store mapRest!6156 mapKey!6156 mapValue!6156))))

(declare-fun b!164174 () Bool)

(declare-fun e!107727 () Bool)

(declare-fun tp_is_empty!3625 () Bool)

(assert (=> b!164174 (= e!107727 tp_is_empty!3625)))

(declare-fun e!107731 () Bool)

(declare-fun e!107728 () Bool)

(declare-fun array_inv!1915 (array!6346) Bool)

(declare-fun array_inv!1916 (array!6348) Bool)

(assert (=> b!164175 (= e!107728 (and tp!14069 tp_is_empty!3625 (array_inv!1915 (_keys!5190 thiss!1248)) (array_inv!1916 (_values!3348 thiss!1248)) e!107731))))

(declare-fun mapIsEmpty!6156 () Bool)

(assert (=> mapIsEmpty!6156 mapRes!6156))

(declare-fun b!164176 () Bool)

(assert (=> b!164176 (= e!107726 tp_is_empty!3625)))

(declare-fun b!164177 () Bool)

(declare-fun res!77706 () Bool)

(assert (=> b!164177 (=> (not res!77706) (not e!107729))))

(declare-datatypes ((tuple2!3010 0))(
  ( (tuple2!3011 (_1!1515 (_ BitVec 64)) (_2!1515 V!4481)) )
))
(declare-datatypes ((List!2017 0))(
  ( (Nil!2014) (Cons!2013 (h!2630 tuple2!3010) (t!6827 List!2017)) )
))
(declare-datatypes ((ListLongMap!1979 0))(
  ( (ListLongMap!1980 (toList!1005 List!2017)) )
))
(declare-fun contains!1041 (ListLongMap!1979 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!658 (array!6346 array!6348 (_ BitVec 32) (_ BitVec 32) V!4481 V!4481 (_ BitVec 32) Int) ListLongMap!1979)

(assert (=> b!164177 (= res!77706 (contains!1041 (getCurrentListMap!658 (_keys!5190 thiss!1248) (_values!3348 thiss!1248) (mask!8052 thiss!1248) (extraKeys!3106 thiss!1248) (zeroValue!3208 thiss!1248) (minValue!3208 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3365 thiss!1248)) key!828))))

(declare-fun b!164178 () Bool)

(assert (=> b!164178 (= e!107731 (and e!107727 mapRes!6156))))

(declare-fun condMapEmpty!6156 () Bool)

(declare-fun mapDefault!6156 () ValueCell!1469)

