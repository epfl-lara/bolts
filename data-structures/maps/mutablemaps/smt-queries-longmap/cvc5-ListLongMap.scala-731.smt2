; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17000 () Bool)

(assert start!17000)

(declare-fun b!170698 () Bool)

(declare-fun b_free!4225 () Bool)

(declare-fun b_next!4225 () Bool)

(assert (=> b!170698 (= b_free!4225 (not b_next!4225))))

(declare-fun tp!15302 () Bool)

(declare-fun b_and!10657 () Bool)

(assert (=> b!170698 (= tp!15302 b_and!10657)))

(declare-fun res!81156 () Bool)

(declare-fun e!112683 () Bool)

(assert (=> start!17000 (=> (not res!81156) (not e!112683))))

(declare-datatypes ((V!4977 0))(
  ( (V!4978 (val!2043 Int)) )
))
(declare-datatypes ((ValueCell!1655 0))(
  ( (ValueCellFull!1655 (v!3904 V!4977)) (EmptyCell!1655) )
))
(declare-datatypes ((array!7104 0))(
  ( (array!7105 (arr!3380 (Array (_ BitVec 32) (_ BitVec 64))) (size!3673 (_ BitVec 32))) )
))
(declare-datatypes ((array!7106 0))(
  ( (array!7107 (arr!3381 (Array (_ BitVec 32) ValueCell!1655)) (size!3674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2218 0))(
  ( (LongMapFixedSize!2219 (defaultEntry!3551 Int) (mask!8375 (_ BitVec 32)) (extraKeys!3292 (_ BitVec 32)) (zeroValue!3394 V!4977) (minValue!3394 V!4977) (_size!1158 (_ BitVec 32)) (_keys!5382 array!7104) (_values!3534 array!7106) (_vacant!1158 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2218)

(declare-fun valid!936 (LongMapFixedSize!2218) Bool)

(assert (=> start!17000 (= res!81156 (valid!936 thiss!1248))))

(assert (=> start!17000 e!112683))

(declare-fun e!112682 () Bool)

(assert (=> start!17000 e!112682))

(assert (=> start!17000 true))

(declare-fun b!170693 () Bool)

(declare-fun res!81157 () Bool)

(assert (=> b!170693 (=> (not res!81157) (not e!112683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7104 (_ BitVec 32)) Bool)

(assert (=> b!170693 (= res!81157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5382 thiss!1248) (mask!8375 thiss!1248)))))

(declare-fun mapIsEmpty!6785 () Bool)

(declare-fun mapRes!6785 () Bool)

(assert (=> mapIsEmpty!6785 mapRes!6785))

(declare-fun b!170694 () Bool)

(declare-fun res!81159 () Bool)

(assert (=> b!170694 (=> (not res!81159) (not e!112683))))

(assert (=> b!170694 (= res!81159 (and (= (size!3674 (_values!3534 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8375 thiss!1248))) (= (size!3673 (_keys!5382 thiss!1248)) (size!3674 (_values!3534 thiss!1248))) (bvsge (mask!8375 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3292 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3292 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3292 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3292 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!3292 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!3292 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!3292 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!170695 () Bool)

(declare-fun res!81155 () Bool)

(assert (=> b!170695 (=> (not res!81155) (not e!112683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170695 (= res!81155 (validMask!0 (mask!8375 thiss!1248)))))

(declare-fun mapNonEmpty!6785 () Bool)

(declare-fun tp!15301 () Bool)

(declare-fun e!112680 () Bool)

(assert (=> mapNonEmpty!6785 (= mapRes!6785 (and tp!15301 e!112680))))

(declare-fun mapRest!6785 () (Array (_ BitVec 32) ValueCell!1655))

(declare-fun mapKey!6785 () (_ BitVec 32))

(declare-fun mapValue!6785 () ValueCell!1655)

(assert (=> mapNonEmpty!6785 (= (arr!3381 (_values!3534 thiss!1248)) (store mapRest!6785 mapKey!6785 mapValue!6785))))

(declare-fun b!170696 () Bool)

(declare-fun e!112685 () Bool)

(declare-fun tp_is_empty!3997 () Bool)

(assert (=> b!170696 (= e!112685 tp_is_empty!3997)))

(declare-fun b!170697 () Bool)

(declare-fun res!81158 () Bool)

(assert (=> b!170697 (=> (not res!81158) (not e!112683))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170697 (= res!81158 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!112681 () Bool)

(declare-fun array_inv!2151 (array!7104) Bool)

(declare-fun array_inv!2152 (array!7106) Bool)

(assert (=> b!170698 (= e!112682 (and tp!15302 tp_is_empty!3997 (array_inv!2151 (_keys!5382 thiss!1248)) (array_inv!2152 (_values!3534 thiss!1248)) e!112681))))

(declare-fun b!170699 () Bool)

(assert (=> b!170699 (= e!112680 tp_is_empty!3997)))

(declare-fun b!170700 () Bool)

(assert (=> b!170700 (= e!112681 (and e!112685 mapRes!6785))))

(declare-fun condMapEmpty!6785 () Bool)

(declare-fun mapDefault!6785 () ValueCell!1655)

