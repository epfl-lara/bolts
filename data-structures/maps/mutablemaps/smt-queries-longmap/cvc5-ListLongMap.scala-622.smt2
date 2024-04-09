; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16092 () Bool)

(assert start!16092)

(declare-fun b!159687 () Bool)

(declare-fun b_free!3541 () Bool)

(declare-fun b_next!3541 () Bool)

(assert (=> b!159687 (= b_free!3541 (not b_next!3541))))

(declare-fun tp!13193 () Bool)

(declare-fun b_and!9973 () Bool)

(assert (=> b!159687 (= tp!13193 b_and!9973)))

(declare-fun b!159682 () Bool)

(declare-fun res!75512 () Bool)

(declare-fun e!104499 () Bool)

(assert (=> b!159682 (=> (not res!75512) (not e!104499))))

(declare-datatypes ((V!4105 0))(
  ( (V!4106 (val!1716 Int)) )
))
(declare-datatypes ((ValueCell!1328 0))(
  ( (ValueCellFull!1328 (v!3577 V!4105)) (EmptyCell!1328) )
))
(declare-datatypes ((array!5764 0))(
  ( (array!5765 (arr!2726 (Array (_ BitVec 32) (_ BitVec 64))) (size!3010 (_ BitVec 32))) )
))
(declare-datatypes ((array!5766 0))(
  ( (array!5767 (arr!2727 (Array (_ BitVec 32) ValueCell!1328)) (size!3011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1564 0))(
  ( (LongMapFixedSize!1565 (defaultEntry!3224 Int) (mask!7780 (_ BitVec 32)) (extraKeys!2965 (_ BitVec 32)) (zeroValue!3067 V!4105) (minValue!3067 V!4105) (_size!831 (_ BitVec 32)) (_keys!5025 array!5764) (_values!3207 array!5766) (_vacant!831 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1564)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2878 0))(
  ( (tuple2!2879 (_1!1449 (_ BitVec 64)) (_2!1449 V!4105)) )
))
(declare-datatypes ((List!1933 0))(
  ( (Nil!1930) (Cons!1929 (h!2542 tuple2!2878) (t!6743 List!1933)) )
))
(declare-datatypes ((ListLongMap!1887 0))(
  ( (ListLongMap!1888 (toList!959 List!1933)) )
))
(declare-fun contains!989 (ListLongMap!1887 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!619 (array!5764 array!5766 (_ BitVec 32) (_ BitVec 32) V!4105 V!4105 (_ BitVec 32) Int) ListLongMap!1887)

(assert (=> b!159682 (= res!75512 (contains!989 (getCurrentListMap!619 (_keys!5025 thiss!1248) (_values!3207 thiss!1248) (mask!7780 thiss!1248) (extraKeys!2965 thiss!1248) (zeroValue!3067 thiss!1248) (minValue!3067 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3224 thiss!1248)) key!828))))

(declare-fun b!159683 () Bool)

(declare-fun res!75511 () Bool)

(assert (=> b!159683 (=> (not res!75511) (not e!104499))))

(assert (=> b!159683 (= res!75511 (and (= (size!3011 (_values!3207 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7780 thiss!1248))) (= (size!3010 (_keys!5025 thiss!1248)) (size!3011 (_values!3207 thiss!1248))) (bvsge (mask!7780 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2965 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2965 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159685 () Bool)

(declare-fun e!104500 () Bool)

(declare-fun tp_is_empty!3343 () Bool)

(assert (=> b!159685 (= e!104500 tp_is_empty!3343)))

(declare-fun b!159686 () Bool)

(declare-fun res!75508 () Bool)

(assert (=> b!159686 (=> (not res!75508) (not e!104499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5764 (_ BitVec 32)) Bool)

(assert (=> b!159686 (= res!75508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5025 thiss!1248) (mask!7780 thiss!1248)))))

(declare-fun res!75506 () Bool)

(assert (=> start!16092 (=> (not res!75506) (not e!104499))))

(declare-fun valid!725 (LongMapFixedSize!1564) Bool)

(assert (=> start!16092 (= res!75506 (valid!725 thiss!1248))))

(assert (=> start!16092 e!104499))

(declare-fun e!104501 () Bool)

(assert (=> start!16092 e!104501))

(assert (=> start!16092 true))

(declare-fun b!159684 () Bool)

(declare-fun res!75510 () Bool)

(assert (=> b!159684 (=> (not res!75510) (not e!104499))))

(assert (=> b!159684 (= res!75510 (not (= key!828 (bvneg key!828))))))

(declare-fun e!104498 () Bool)

(declare-fun array_inv!1727 (array!5764) Bool)

(declare-fun array_inv!1728 (array!5766) Bool)

(assert (=> b!159687 (= e!104501 (and tp!13193 tp_is_empty!3343 (array_inv!1727 (_keys!5025 thiss!1248)) (array_inv!1728 (_values!3207 thiss!1248)) e!104498))))

(declare-fun mapIsEmpty!5702 () Bool)

(declare-fun mapRes!5702 () Bool)

(assert (=> mapIsEmpty!5702 mapRes!5702))

(declare-fun b!159688 () Bool)

(assert (=> b!159688 (= e!104499 false)))

(declare-fun lt!82046 () Bool)

(declare-datatypes ((List!1934 0))(
  ( (Nil!1931) (Cons!1930 (h!2543 (_ BitVec 64)) (t!6744 List!1934)) )
))
(declare-fun arrayNoDuplicates!0 (array!5764 (_ BitVec 32) List!1934) Bool)

(assert (=> b!159688 (= lt!82046 (arrayNoDuplicates!0 (_keys!5025 thiss!1248) #b00000000000000000000000000000000 Nil!1931))))

(declare-fun b!159689 () Bool)

(declare-fun res!75507 () Bool)

(assert (=> b!159689 (=> (not res!75507) (not e!104499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159689 (= res!75507 (validMask!0 (mask!7780 thiss!1248)))))

(declare-fun b!159690 () Bool)

(declare-fun e!104497 () Bool)

(assert (=> b!159690 (= e!104498 (and e!104497 mapRes!5702))))

(declare-fun condMapEmpty!5702 () Bool)

(declare-fun mapDefault!5702 () ValueCell!1328)

