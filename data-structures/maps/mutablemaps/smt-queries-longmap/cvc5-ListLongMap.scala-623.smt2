; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16098 () Bool)

(assert start!16098)

(declare-fun b!159781 () Bool)

(declare-fun b_free!3547 () Bool)

(declare-fun b_next!3547 () Bool)

(assert (=> b!159781 (= b_free!3547 (not b_next!3547))))

(declare-fun tp!13210 () Bool)

(declare-fun b_and!9979 () Bool)

(assert (=> b!159781 (= tp!13210 b_and!9979)))

(declare-fun tp_is_empty!3349 () Bool)

(declare-fun e!104550 () Bool)

(declare-datatypes ((V!4113 0))(
  ( (V!4114 (val!1719 Int)) )
))
(declare-datatypes ((ValueCell!1331 0))(
  ( (ValueCellFull!1331 (v!3580 V!4113)) (EmptyCell!1331) )
))
(declare-datatypes ((array!5776 0))(
  ( (array!5777 (arr!2732 (Array (_ BitVec 32) (_ BitVec 64))) (size!3016 (_ BitVec 32))) )
))
(declare-datatypes ((array!5778 0))(
  ( (array!5779 (arr!2733 (Array (_ BitVec 32) ValueCell!1331)) (size!3017 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1570 0))(
  ( (LongMapFixedSize!1571 (defaultEntry!3227 Int) (mask!7785 (_ BitVec 32)) (extraKeys!2968 (_ BitVec 32)) (zeroValue!3070 V!4113) (minValue!3070 V!4113) (_size!834 (_ BitVec 32)) (_keys!5028 array!5776) (_values!3210 array!5778) (_vacant!834 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1570)

(declare-fun e!104552 () Bool)

(declare-fun array_inv!1731 (array!5776) Bool)

(declare-fun array_inv!1732 (array!5778) Bool)

(assert (=> b!159781 (= e!104552 (and tp!13210 tp_is_empty!3349 (array_inv!1731 (_keys!5028 thiss!1248)) (array_inv!1732 (_values!3210 thiss!1248)) e!104550))))

(declare-fun b!159782 () Bool)

(declare-fun e!104554 () Bool)

(assert (=> b!159782 (= e!104554 tp_is_empty!3349)))

(declare-fun mapIsEmpty!5711 () Bool)

(declare-fun mapRes!5711 () Bool)

(assert (=> mapIsEmpty!5711 mapRes!5711))

(declare-fun b!159783 () Bool)

(declare-fun res!75572 () Bool)

(declare-fun e!104551 () Bool)

(assert (=> b!159783 (=> (not res!75572) (not e!104551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159783 (= res!75572 (validMask!0 (mask!7785 thiss!1248)))))

(declare-fun b!159784 () Bool)

(assert (=> b!159784 (= e!104551 false)))

(declare-fun lt!82055 () Bool)

(declare-datatypes ((List!1937 0))(
  ( (Nil!1934) (Cons!1933 (h!2546 (_ BitVec 64)) (t!6747 List!1937)) )
))
(declare-fun arrayNoDuplicates!0 (array!5776 (_ BitVec 32) List!1937) Bool)

(assert (=> b!159784 (= lt!82055 (arrayNoDuplicates!0 (_keys!5028 thiss!1248) #b00000000000000000000000000000000 Nil!1934))))

(declare-fun b!159785 () Bool)

(declare-fun res!75574 () Bool)

(assert (=> b!159785 (=> (not res!75574) (not e!104551))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159785 (= res!75574 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159786 () Bool)

(declare-fun e!104555 () Bool)

(assert (=> b!159786 (= e!104555 tp_is_empty!3349)))

(declare-fun b!159787 () Bool)

(declare-fun res!75573 () Bool)

(assert (=> b!159787 (=> (not res!75573) (not e!104551))))

(assert (=> b!159787 (= res!75573 (and (= (size!3017 (_values!3210 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7785 thiss!1248))) (= (size!3016 (_keys!5028 thiss!1248)) (size!3017 (_values!3210 thiss!1248))) (bvsge (mask!7785 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2968 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2968 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159788 () Bool)

(declare-fun res!75575 () Bool)

(assert (=> b!159788 (=> (not res!75575) (not e!104551))))

(declare-datatypes ((tuple2!2882 0))(
  ( (tuple2!2883 (_1!1451 (_ BitVec 64)) (_2!1451 V!4113)) )
))
(declare-datatypes ((List!1938 0))(
  ( (Nil!1935) (Cons!1934 (h!2547 tuple2!2882) (t!6748 List!1938)) )
))
(declare-datatypes ((ListLongMap!1891 0))(
  ( (ListLongMap!1892 (toList!961 List!1938)) )
))
(declare-fun contains!991 (ListLongMap!1891 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!621 (array!5776 array!5778 (_ BitVec 32) (_ BitVec 32) V!4113 V!4113 (_ BitVec 32) Int) ListLongMap!1891)

(assert (=> b!159788 (= res!75575 (contains!991 (getCurrentListMap!621 (_keys!5028 thiss!1248) (_values!3210 thiss!1248) (mask!7785 thiss!1248) (extraKeys!2968 thiss!1248) (zeroValue!3070 thiss!1248) (minValue!3070 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3227 thiss!1248)) key!828))))

(declare-fun res!75571 () Bool)

(assert (=> start!16098 (=> (not res!75571) (not e!104551))))

(declare-fun valid!727 (LongMapFixedSize!1570) Bool)

(assert (=> start!16098 (= res!75571 (valid!727 thiss!1248))))

(assert (=> start!16098 e!104551))

(assert (=> start!16098 e!104552))

(assert (=> start!16098 true))

(declare-fun mapNonEmpty!5711 () Bool)

(declare-fun tp!13211 () Bool)

(assert (=> mapNonEmpty!5711 (= mapRes!5711 (and tp!13211 e!104555))))

(declare-fun mapRest!5711 () (Array (_ BitVec 32) ValueCell!1331))

(declare-fun mapValue!5711 () ValueCell!1331)

(declare-fun mapKey!5711 () (_ BitVec 32))

(assert (=> mapNonEmpty!5711 (= (arr!2733 (_values!3210 thiss!1248)) (store mapRest!5711 mapKey!5711 mapValue!5711))))

(declare-fun b!159789 () Bool)

(declare-fun res!75570 () Bool)

(assert (=> b!159789 (=> (not res!75570) (not e!104551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5776 (_ BitVec 32)) Bool)

(assert (=> b!159789 (= res!75570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5028 thiss!1248) (mask!7785 thiss!1248)))))

(declare-fun b!159790 () Bool)

(assert (=> b!159790 (= e!104550 (and e!104554 mapRes!5711))))

(declare-fun condMapEmpty!5711 () Bool)

(declare-fun mapDefault!5711 () ValueCell!1331)

