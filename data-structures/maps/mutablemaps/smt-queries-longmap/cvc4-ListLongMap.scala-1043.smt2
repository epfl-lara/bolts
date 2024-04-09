; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21956 () Bool)

(assert start!21956)

(declare-fun b!223967 () Bool)

(declare-fun b_free!6011 () Bool)

(declare-fun b_next!6011 () Bool)

(assert (=> b!223967 (= b_free!6011 (not b_next!6011))))

(declare-fun tp!21175 () Bool)

(declare-fun b_and!12927 () Bool)

(assert (=> b!223967 (= tp!21175 b_and!12927)))

(declare-fun b!223945 () Bool)

(declare-fun res!110156 () Bool)

(declare-datatypes ((V!7477 0))(
  ( (V!7478 (val!2981 Int)) )
))
(declare-datatypes ((ValueCell!2593 0))(
  ( (ValueCellFull!2593 (v!4997 V!7477)) (EmptyCell!2593) )
))
(declare-datatypes ((array!10988 0))(
  ( (array!10989 (arr!5213 (Array (_ BitVec 32) ValueCell!2593)) (size!5546 (_ BitVec 32))) )
))
(declare-datatypes ((array!10990 0))(
  ( (array!10991 (arr!5214 (Array (_ BitVec 32) (_ BitVec 64))) (size!5547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3086 0))(
  ( (LongMapFixedSize!3087 (defaultEntry!4202 Int) (mask!10032 (_ BitVec 32)) (extraKeys!3939 (_ BitVec 32)) (zeroValue!4043 V!7477) (minValue!4043 V!7477) (_size!1592 (_ BitVec 32)) (_keys!6256 array!10990) (_values!4185 array!10988) (_vacant!1592 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3086)

(declare-datatypes ((SeekEntryResult!864 0))(
  ( (MissingZero!864 (index!5626 (_ BitVec 32))) (Found!864 (index!5627 (_ BitVec 32))) (Intermediate!864 (undefined!1676 Bool) (index!5628 (_ BitVec 32)) (x!23124 (_ BitVec 32))) (Undefined!864) (MissingVacant!864 (index!5629 (_ BitVec 32))) )
))
(declare-fun lt!113064 () SeekEntryResult!864)

(assert (=> b!223945 (= res!110156 (= (select (arr!5214 (_keys!6256 thiss!1504)) (index!5629 lt!113064)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!145440 () Bool)

(assert (=> b!223945 (=> (not res!110156) (not e!145440))))

(declare-fun b!223946 () Bool)

(declare-fun res!110150 () Bool)

(declare-fun e!145433 () Bool)

(assert (=> b!223946 (=> (not res!110150) (not e!145433))))

(declare-fun call!20866 () Bool)

(assert (=> b!223946 (= res!110150 call!20866)))

(declare-fun e!145445 () Bool)

(assert (=> b!223946 (= e!145445 e!145433)))

(declare-fun b!223947 () Bool)

(declare-fun res!110161 () Bool)

(declare-fun e!145443 () Bool)

(assert (=> b!223947 (=> (not res!110161) (not e!145443))))

(declare-fun lt!113066 () Bool)

(assert (=> b!223947 (= res!110161 (not lt!113066))))

(declare-fun b!223948 () Bool)

(declare-fun e!145447 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((List!3349 0))(
  ( (Nil!3346) (Cons!3345 (h!3993 (_ BitVec 64)) (t!8316 List!3349)) )
))
(declare-fun contains!1548 (List!3349 (_ BitVec 64)) Bool)

(assert (=> b!223948 (= e!145447 (not (contains!1548 Nil!3346 key!932)))))

(declare-fun b!223949 () Bool)

(declare-fun e!145446 () Bool)

(declare-fun e!145438 () Bool)

(assert (=> b!223949 (= e!145446 e!145438)))

(declare-fun res!110147 () Bool)

(assert (=> b!223949 (=> (not res!110147) (not e!145438))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!223949 (= res!110147 (inRange!0 index!297 (mask!10032 thiss!1504)))))

(declare-datatypes ((Unit!6732 0))(
  ( (Unit!6733) )
))
(declare-fun lt!113062 () Unit!6732)

(declare-fun e!145441 () Unit!6732)

(assert (=> b!223949 (= lt!113062 e!145441)))

(declare-fun c!37145 () Bool)

(declare-datatypes ((tuple2!4414 0))(
  ( (tuple2!4415 (_1!2217 (_ BitVec 64)) (_2!2217 V!7477)) )
))
(declare-datatypes ((List!3350 0))(
  ( (Nil!3347) (Cons!3346 (h!3994 tuple2!4414) (t!8317 List!3350)) )
))
(declare-datatypes ((ListLongMap!3341 0))(
  ( (ListLongMap!3342 (toList!1686 List!3350)) )
))
(declare-fun contains!1549 (ListLongMap!3341 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1209 (array!10990 array!10988 (_ BitVec 32) (_ BitVec 32) V!7477 V!7477 (_ BitVec 32) Int) ListLongMap!3341)

(assert (=> b!223949 (= c!37145 (contains!1549 (getCurrentListMap!1209 (_keys!6256 thiss!1504) (_values!4185 thiss!1504) (mask!10032 thiss!1504) (extraKeys!3939 thiss!1504) (zeroValue!4043 thiss!1504) (minValue!4043 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4202 thiss!1504)) key!932))))

(declare-fun b!223950 () Bool)

(declare-fun e!145439 () Bool)

(declare-fun e!145444 () Bool)

(declare-fun mapRes!9979 () Bool)

(assert (=> b!223950 (= e!145439 (and e!145444 mapRes!9979))))

(declare-fun condMapEmpty!9979 () Bool)

(declare-fun mapDefault!9979 () ValueCell!2593)

