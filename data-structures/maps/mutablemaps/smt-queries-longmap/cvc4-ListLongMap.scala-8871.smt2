; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107728 () Bool)

(assert start!107728)

(declare-fun b!1274157 () Bool)

(declare-fun b_free!27773 () Bool)

(declare-fun b_next!27773 () Bool)

(assert (=> b!1274157 (= b_free!27773 (not b_next!27773))))

(declare-fun tp!97890 () Bool)

(declare-fun b_and!45839 () Bool)

(assert (=> b!1274157 (= tp!97890 b_and!45839)))

(declare-fun tp_is_empty!33143 () Bool)

(declare-fun e!727139 () Bool)

(declare-fun e!727141 () Bool)

(declare-datatypes ((V!49383 0))(
  ( (V!49384 (val!16646 Int)) )
))
(declare-datatypes ((ValueCell!15718 0))(
  ( (ValueCellFull!15718 (v!19281 V!49383)) (EmptyCell!15718) )
))
(declare-datatypes ((array!83515 0))(
  ( (array!83516 (arr!40271 (Array (_ BitVec 32) ValueCell!15718)) (size!40821 (_ BitVec 32))) )
))
(declare-datatypes ((array!83517 0))(
  ( (array!83518 (arr!40272 (Array (_ BitVec 32) (_ BitVec 64))) (size!40822 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6200 0))(
  ( (LongMapFixedSize!6201 (defaultEntry!6746 Int) (mask!34547 (_ BitVec 32)) (extraKeys!6425 (_ BitVec 32)) (zeroValue!6531 V!49383) (minValue!6531 V!49383) (_size!3155 (_ BitVec 32)) (_keys!12161 array!83517) (_values!6769 array!83515) (_vacant!3155 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6200)

(declare-fun array_inv!30563 (array!83517) Bool)

(declare-fun array_inv!30564 (array!83515) Bool)

(assert (=> b!1274157 (= e!727141 (and tp!97890 tp_is_empty!33143 (array_inv!30563 (_keys!12161 thiss!1551)) (array_inv!30564 (_values!6769 thiss!1551)) e!727139))))

(declare-fun mapIsEmpty!51359 () Bool)

(declare-fun mapRes!51359 () Bool)

(assert (=> mapIsEmpty!51359 mapRes!51359))

(declare-fun b!1274158 () Bool)

(declare-fun res!847210 () Bool)

(declare-fun e!727143 () Bool)

(assert (=> b!1274158 (=> (not res!847210) (not e!727143))))

(assert (=> b!1274158 (= res!847210 (and (bvsle #b00000000000000000000000000000000 (size!40822 (_keys!12161 thiss!1551))) (bvslt (size!40822 (_keys!12161 thiss!1551)) #b01111111111111111111111111111111)))))

(declare-fun b!1274159 () Bool)

(declare-fun e!727142 () Bool)

(declare-datatypes ((List!28730 0))(
  ( (Nil!28727) (Cons!28726 (h!29935 (_ BitVec 64)) (t!42270 List!28730)) )
))
(declare-fun contains!7695 (List!28730 (_ BitVec 64)) Bool)

(assert (=> b!1274159 (= e!727142 (contains!7695 Nil!28727 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1274160 () Bool)

(declare-fun e!727138 () Bool)

(assert (=> b!1274160 (= e!727138 tp_is_empty!33143)))

(declare-fun b!1274162 () Bool)

(declare-fun res!847208 () Bool)

(assert (=> b!1274162 (=> (not res!847208) (not e!727143))))

(declare-fun noDuplicate!2077 (List!28730) Bool)

(assert (=> b!1274162 (= res!847208 (noDuplicate!2077 Nil!28727))))

(declare-fun b!1274163 () Bool)

(declare-fun e!727140 () Bool)

(assert (=> b!1274163 (= e!727139 (and e!727140 mapRes!51359))))

(declare-fun condMapEmpty!51359 () Bool)

(declare-fun mapDefault!51359 () ValueCell!15718)

