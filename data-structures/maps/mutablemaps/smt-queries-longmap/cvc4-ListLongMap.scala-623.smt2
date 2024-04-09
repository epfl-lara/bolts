; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16102 () Bool)

(assert start!16102)

(declare-fun b!159853 () Bool)

(declare-fun b_free!3551 () Bool)

(declare-fun b_next!3551 () Bool)

(assert (=> b!159853 (= b_free!3551 (not b_next!3551))))

(declare-fun tp!13222 () Bool)

(declare-fun b_and!9983 () Bool)

(assert (=> b!159853 (= tp!13222 b_and!9983)))

(declare-fun b!159847 () Bool)

(declare-fun res!75614 () Bool)

(declare-fun e!104588 () Bool)

(assert (=> b!159847 (=> (not res!75614) (not e!104588))))

(declare-datatypes ((V!4117 0))(
  ( (V!4118 (val!1721 Int)) )
))
(declare-datatypes ((ValueCell!1333 0))(
  ( (ValueCellFull!1333 (v!3582 V!4117)) (EmptyCell!1333) )
))
(declare-datatypes ((array!5784 0))(
  ( (array!5785 (arr!2736 (Array (_ BitVec 32) (_ BitVec 64))) (size!3020 (_ BitVec 32))) )
))
(declare-datatypes ((array!5786 0))(
  ( (array!5787 (arr!2737 (Array (_ BitVec 32) ValueCell!1333)) (size!3021 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1574 0))(
  ( (LongMapFixedSize!1575 (defaultEntry!3229 Int) (mask!7787 (_ BitVec 32)) (extraKeys!2970 (_ BitVec 32)) (zeroValue!3072 V!4117) (minValue!3072 V!4117) (_size!836 (_ BitVec 32)) (_keys!5030 array!5784) (_values!3212 array!5786) (_vacant!836 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1574)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2886 0))(
  ( (tuple2!2887 (_1!1453 (_ BitVec 64)) (_2!1453 V!4117)) )
))
(declare-datatypes ((List!1941 0))(
  ( (Nil!1938) (Cons!1937 (h!2550 tuple2!2886) (t!6751 List!1941)) )
))
(declare-datatypes ((ListLongMap!1895 0))(
  ( (ListLongMap!1896 (toList!963 List!1941)) )
))
(declare-fun contains!993 (ListLongMap!1895 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!623 (array!5784 array!5786 (_ BitVec 32) (_ BitVec 32) V!4117 V!4117 (_ BitVec 32) Int) ListLongMap!1895)

(assert (=> b!159847 (= res!75614 (contains!993 (getCurrentListMap!623 (_keys!5030 thiss!1248) (_values!3212 thiss!1248) (mask!7787 thiss!1248) (extraKeys!2970 thiss!1248) (zeroValue!3072 thiss!1248) (minValue!3072 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3229 thiss!1248)) key!828))))

(declare-fun b!159848 () Bool)

(declare-fun e!104590 () Bool)

(declare-fun tp_is_empty!3353 () Bool)

(assert (=> b!159848 (= e!104590 tp_is_empty!3353)))

(declare-fun b!159849 () Bool)

(assert (=> b!159849 (= e!104588 false)))

(declare-fun lt!82061 () Bool)

(declare-datatypes ((List!1942 0))(
  ( (Nil!1939) (Cons!1938 (h!2551 (_ BitVec 64)) (t!6752 List!1942)) )
))
(declare-fun arrayNoDuplicates!0 (array!5784 (_ BitVec 32) List!1942) Bool)

(assert (=> b!159849 (= lt!82061 (arrayNoDuplicates!0 (_keys!5030 thiss!1248) #b00000000000000000000000000000000 Nil!1939))))

(declare-fun b!159850 () Bool)

(declare-fun res!75617 () Bool)

(assert (=> b!159850 (=> (not res!75617) (not e!104588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5784 (_ BitVec 32)) Bool)

(assert (=> b!159850 (= res!75617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5030 thiss!1248) (mask!7787 thiss!1248)))))

(declare-fun mapNonEmpty!5717 () Bool)

(declare-fun mapRes!5717 () Bool)

(declare-fun tp!13223 () Bool)

(assert (=> mapNonEmpty!5717 (= mapRes!5717 (and tp!13223 e!104590))))

(declare-fun mapValue!5717 () ValueCell!1333)

(declare-fun mapKey!5717 () (_ BitVec 32))

(declare-fun mapRest!5717 () (Array (_ BitVec 32) ValueCell!1333))

(assert (=> mapNonEmpty!5717 (= (arr!2737 (_values!3212 thiss!1248)) (store mapRest!5717 mapKey!5717 mapValue!5717))))

(declare-fun b!159851 () Bool)

(declare-fun res!75615 () Bool)

(assert (=> b!159851 (=> (not res!75615) (not e!104588))))

(declare-datatypes ((SeekEntryResult!331 0))(
  ( (MissingZero!331 (index!3492 (_ BitVec 32))) (Found!331 (index!3493 (_ BitVec 32))) (Intermediate!331 (undefined!1143 Bool) (index!3494 (_ BitVec 32)) (x!17659 (_ BitVec 32))) (Undefined!331) (MissingVacant!331 (index!3495 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5784 (_ BitVec 32)) SeekEntryResult!331)

(assert (=> b!159851 (= res!75615 (is-Undefined!331 (seekEntryOrOpen!0 key!828 (_keys!5030 thiss!1248) (mask!7787 thiss!1248))))))

(declare-fun b!159852 () Bool)

(declare-fun res!75611 () Bool)

(assert (=> b!159852 (=> (not res!75611) (not e!104588))))

(assert (=> b!159852 (= res!75611 (and (= (size!3021 (_values!3212 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7787 thiss!1248))) (= (size!3020 (_keys!5030 thiss!1248)) (size!3021 (_values!3212 thiss!1248))) (bvsge (mask!7787 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2970 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2970 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!5717 () Bool)

(assert (=> mapIsEmpty!5717 mapRes!5717))

(declare-fun e!104591 () Bool)

(declare-fun e!104586 () Bool)

(declare-fun array_inv!1735 (array!5784) Bool)

(declare-fun array_inv!1736 (array!5786) Bool)

(assert (=> b!159853 (= e!104586 (and tp!13222 tp_is_empty!3353 (array_inv!1735 (_keys!5030 thiss!1248)) (array_inv!1736 (_values!3212 thiss!1248)) e!104591))))

(declare-fun b!159854 () Bool)

(declare-fun res!75613 () Bool)

(assert (=> b!159854 (=> (not res!75613) (not e!104588))))

(assert (=> b!159854 (= res!75613 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159856 () Bool)

(declare-fun res!75616 () Bool)

(assert (=> b!159856 (=> (not res!75616) (not e!104588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159856 (= res!75616 (validMask!0 (mask!7787 thiss!1248)))))

(declare-fun b!159857 () Bool)

(declare-fun e!104587 () Bool)

(assert (=> b!159857 (= e!104587 tp_is_empty!3353)))

(declare-fun res!75612 () Bool)

(assert (=> start!16102 (=> (not res!75612) (not e!104588))))

(declare-fun valid!729 (LongMapFixedSize!1574) Bool)

(assert (=> start!16102 (= res!75612 (valid!729 thiss!1248))))

(assert (=> start!16102 e!104588))

(assert (=> start!16102 e!104586))

(assert (=> start!16102 true))

(declare-fun b!159855 () Bool)

(assert (=> b!159855 (= e!104591 (and e!104587 mapRes!5717))))

(declare-fun condMapEmpty!5717 () Bool)

(declare-fun mapDefault!5717 () ValueCell!1333)

