; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16862 () Bool)

(assert start!16862)

(declare-fun b!169766 () Bool)

(declare-fun b_free!4169 () Bool)

(declare-fun b_next!4169 () Bool)

(assert (=> b!169766 (= b_free!4169 (not b_next!4169))))

(declare-fun tp!15112 () Bool)

(declare-fun b_and!10601 () Bool)

(assert (=> b!169766 (= tp!15112 b_and!10601)))

(declare-fun res!80724 () Bool)

(declare-fun e!111986 () Bool)

(assert (=> start!16862 (=> (not res!80724) (not e!111986))))

(declare-datatypes ((V!4901 0))(
  ( (V!4902 (val!2015 Int)) )
))
(declare-datatypes ((ValueCell!1627 0))(
  ( (ValueCellFull!1627 (v!3876 V!4901)) (EmptyCell!1627) )
))
(declare-datatypes ((array!6980 0))(
  ( (array!6981 (arr!3324 (Array (_ BitVec 32) (_ BitVec 64))) (size!3613 (_ BitVec 32))) )
))
(declare-datatypes ((array!6982 0))(
  ( (array!6983 (arr!3325 (Array (_ BitVec 32) ValueCell!1627)) (size!3614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2162 0))(
  ( (LongMapFixedSize!2163 (defaultEntry!3523 Int) (mask!8316 (_ BitVec 32)) (extraKeys!3264 (_ BitVec 32)) (zeroValue!3366 V!4901) (minValue!3366 V!4901) (_size!1130 (_ BitVec 32)) (_keys!5349 array!6980) (_values!3506 array!6982) (_vacant!1130 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2162)

(declare-fun valid!921 (LongMapFixedSize!2162) Bool)

(assert (=> start!16862 (= res!80724 (valid!921 thiss!1248))))

(assert (=> start!16862 e!111986))

(declare-fun e!111990 () Bool)

(assert (=> start!16862 e!111990))

(assert (=> start!16862 true))

(declare-fun mapIsEmpty!6679 () Bool)

(declare-fun mapRes!6679 () Bool)

(assert (=> mapIsEmpty!6679 mapRes!6679))

(declare-fun tp_is_empty!3941 () Bool)

(declare-fun e!111989 () Bool)

(declare-fun array_inv!2123 (array!6980) Bool)

(declare-fun array_inv!2124 (array!6982) Bool)

(assert (=> b!169766 (= e!111990 (and tp!15112 tp_is_empty!3941 (array_inv!2123 (_keys!5349 thiss!1248)) (array_inv!2124 (_values!3506 thiss!1248)) e!111989))))

(declare-fun b!169767 () Bool)

(assert (=> b!169767 (= e!111986 (not (= (size!3614 (_values!3506 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8316 thiss!1248)))))))

(declare-fun b!169768 () Bool)

(declare-fun res!80722 () Bool)

(assert (=> b!169768 (=> (not res!80722) (not e!111986))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169768 (= res!80722 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!169769 () Bool)

(declare-fun e!111988 () Bool)

(assert (=> b!169769 (= e!111988 tp_is_empty!3941)))

(declare-fun mapNonEmpty!6679 () Bool)

(declare-fun tp!15111 () Bool)

(assert (=> mapNonEmpty!6679 (= mapRes!6679 (and tp!15111 e!111988))))

(declare-fun mapValue!6679 () ValueCell!1627)

(declare-fun mapKey!6679 () (_ BitVec 32))

(declare-fun mapRest!6679 () (Array (_ BitVec 32) ValueCell!1627))

(assert (=> mapNonEmpty!6679 (= (arr!3325 (_values!3506 thiss!1248)) (store mapRest!6679 mapKey!6679 mapValue!6679))))

(declare-fun b!169770 () Bool)

(declare-fun res!80723 () Bool)

(assert (=> b!169770 (=> (not res!80723) (not e!111986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!169770 (= res!80723 (validMask!0 (mask!8316 thiss!1248)))))

(declare-fun b!169771 () Bool)

(declare-fun e!111987 () Bool)

(assert (=> b!169771 (= e!111989 (and e!111987 mapRes!6679))))

(declare-fun condMapEmpty!6679 () Bool)

(declare-fun mapDefault!6679 () ValueCell!1627)

