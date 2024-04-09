; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16166 () Bool)

(assert start!16166)

(declare-fun b!160907 () Bool)

(declare-fun b_free!3615 () Bool)

(declare-fun b_next!3615 () Bool)

(assert (=> b!160907 (= b_free!3615 (not b_next!3615))))

(declare-fun tp!13415 () Bool)

(declare-fun b_and!10047 () Bool)

(assert (=> b!160907 (= tp!13415 b_and!10047)))

(declare-fun b!160903 () Bool)

(declare-fun e!105164 () Bool)

(assert (=> b!160903 (= e!105164 false)))

(declare-fun lt!82157 () Bool)

(declare-datatypes ((V!4203 0))(
  ( (V!4204 (val!1753 Int)) )
))
(declare-datatypes ((ValueCell!1365 0))(
  ( (ValueCellFull!1365 (v!3614 V!4203)) (EmptyCell!1365) )
))
(declare-datatypes ((array!5912 0))(
  ( (array!5913 (arr!2800 (Array (_ BitVec 32) (_ BitVec 64))) (size!3084 (_ BitVec 32))) )
))
(declare-datatypes ((array!5914 0))(
  ( (array!5915 (arr!2801 (Array (_ BitVec 32) ValueCell!1365)) (size!3085 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1638 0))(
  ( (LongMapFixedSize!1639 (defaultEntry!3261 Int) (mask!7841 (_ BitVec 32)) (extraKeys!3002 (_ BitVec 32)) (zeroValue!3104 V!4203) (minValue!3104 V!4203) (_size!868 (_ BitVec 32)) (_keys!5062 array!5912) (_values!3244 array!5914) (_vacant!868 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1638)

(declare-datatypes ((List!1982 0))(
  ( (Nil!1979) (Cons!1978 (h!2591 (_ BitVec 64)) (t!6792 List!1982)) )
))
(declare-fun arrayNoDuplicates!0 (array!5912 (_ BitVec 32) List!1982) Bool)

(assert (=> b!160903 (= lt!82157 (arrayNoDuplicates!0 (_keys!5062 thiss!1248) #b00000000000000000000000000000000 Nil!1979))))

(declare-fun b!160904 () Bool)

(declare-fun res!76285 () Bool)

(assert (=> b!160904 (=> (not res!76285) (not e!105164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5912 (_ BitVec 32)) Bool)

(assert (=> b!160904 (= res!76285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5062 thiss!1248) (mask!7841 thiss!1248)))))

(declare-fun b!160905 () Bool)

(declare-fun res!76289 () Bool)

(assert (=> b!160905 (=> (not res!76289) (not e!105164))))

(assert (=> b!160905 (= res!76289 (and (= (size!3085 (_values!3244 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7841 thiss!1248))) (= (size!3084 (_keys!5062 thiss!1248)) (size!3085 (_values!3244 thiss!1248))) (bvsge (mask!7841 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3002 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3002 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!76283 () Bool)

(assert (=> start!16166 (=> (not res!76283) (not e!105164))))

(declare-fun valid!748 (LongMapFixedSize!1638) Bool)

(assert (=> start!16166 (= res!76283 (valid!748 thiss!1248))))

(assert (=> start!16166 e!105164))

(declare-fun e!105162 () Bool)

(assert (=> start!16166 e!105162))

(assert (=> start!16166 true))

(declare-fun b!160906 () Bool)

(declare-fun e!105167 () Bool)

(declare-fun tp_is_empty!3417 () Bool)

(assert (=> b!160906 (= e!105167 tp_is_empty!3417)))

(declare-fun mapNonEmpty!5813 () Bool)

(declare-fun mapRes!5813 () Bool)

(declare-fun tp!13414 () Bool)

(assert (=> mapNonEmpty!5813 (= mapRes!5813 (and tp!13414 e!105167))))

(declare-fun mapKey!5813 () (_ BitVec 32))

(declare-fun mapValue!5813 () ValueCell!1365)

(declare-fun mapRest!5813 () (Array (_ BitVec 32) ValueCell!1365))

(assert (=> mapNonEmpty!5813 (= (arr!2801 (_values!3244 thiss!1248)) (store mapRest!5813 mapKey!5813 mapValue!5813))))

(declare-fun e!105163 () Bool)

(declare-fun array_inv!1775 (array!5912) Bool)

(declare-fun array_inv!1776 (array!5914) Bool)

(assert (=> b!160907 (= e!105162 (and tp!13415 tp_is_empty!3417 (array_inv!1775 (_keys!5062 thiss!1248)) (array_inv!1776 (_values!3244 thiss!1248)) e!105163))))

(declare-fun b!160908 () Bool)

(declare-fun res!76286 () Bool)

(assert (=> b!160908 (=> (not res!76286) (not e!105164))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2928 0))(
  ( (tuple2!2929 (_1!1474 (_ BitVec 64)) (_2!1474 V!4203)) )
))
(declare-datatypes ((List!1983 0))(
  ( (Nil!1980) (Cons!1979 (h!2592 tuple2!2928) (t!6793 List!1983)) )
))
(declare-datatypes ((ListLongMap!1937 0))(
  ( (ListLongMap!1938 (toList!984 List!1983)) )
))
(declare-fun contains!1014 (ListLongMap!1937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!644 (array!5912 array!5914 (_ BitVec 32) (_ BitVec 32) V!4203 V!4203 (_ BitVec 32) Int) ListLongMap!1937)

(assert (=> b!160908 (= res!76286 (not (contains!1014 (getCurrentListMap!644 (_keys!5062 thiss!1248) (_values!3244 thiss!1248) (mask!7841 thiss!1248) (extraKeys!3002 thiss!1248) (zeroValue!3104 thiss!1248) (minValue!3104 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3261 thiss!1248)) key!828)))))

(declare-fun mapIsEmpty!5813 () Bool)

(assert (=> mapIsEmpty!5813 mapRes!5813))

(declare-fun b!160909 () Bool)

(declare-fun res!76288 () Bool)

(assert (=> b!160909 (=> (not res!76288) (not e!105164))))

(assert (=> b!160909 (= res!76288 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160910 () Bool)

(declare-fun res!76287 () Bool)

(assert (=> b!160910 (=> (not res!76287) (not e!105164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160910 (= res!76287 (validMask!0 (mask!7841 thiss!1248)))))

(declare-fun b!160911 () Bool)

(declare-fun res!76284 () Bool)

(assert (=> b!160911 (=> (not res!76284) (not e!105164))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!351 0))(
  ( (MissingZero!351 (index!3572 (_ BitVec 32))) (Found!351 (index!3573 (_ BitVec 32))) (Intermediate!351 (undefined!1163 Bool) (index!3574 (_ BitVec 32)) (x!17767 (_ BitVec 32))) (Undefined!351) (MissingVacant!351 (index!3575 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5912 (_ BitVec 32)) SeekEntryResult!351)

(assert (=> b!160911 (= res!76284 ((_ is Undefined!351) (seekEntryOrOpen!0 key!828 (_keys!5062 thiss!1248) (mask!7841 thiss!1248))))))

(declare-fun b!160912 () Bool)

(declare-fun e!105165 () Bool)

(assert (=> b!160912 (= e!105163 (and e!105165 mapRes!5813))))

(declare-fun condMapEmpty!5813 () Bool)

(declare-fun mapDefault!5813 () ValueCell!1365)

(assert (=> b!160912 (= condMapEmpty!5813 (= (arr!2801 (_values!3244 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1365)) mapDefault!5813)))))

(declare-fun b!160913 () Bool)

(assert (=> b!160913 (= e!105165 tp_is_empty!3417)))

(assert (= (and start!16166 res!76283) b!160909))

(assert (= (and b!160909 res!76288) b!160911))

(assert (= (and b!160911 res!76284) b!160908))

(assert (= (and b!160908 res!76286) b!160910))

(assert (= (and b!160910 res!76287) b!160905))

(assert (= (and b!160905 res!76289) b!160904))

(assert (= (and b!160904 res!76285) b!160903))

(assert (= (and b!160912 condMapEmpty!5813) mapIsEmpty!5813))

(assert (= (and b!160912 (not condMapEmpty!5813)) mapNonEmpty!5813))

(assert (= (and mapNonEmpty!5813 ((_ is ValueCellFull!1365) mapValue!5813)) b!160906))

(assert (= (and b!160912 ((_ is ValueCellFull!1365) mapDefault!5813)) b!160913))

(assert (= b!160907 b!160912))

(assert (= start!16166 b!160907))

(declare-fun m!192595 () Bool)

(assert (=> mapNonEmpty!5813 m!192595))

(declare-fun m!192597 () Bool)

(assert (=> b!160911 m!192597))

(declare-fun m!192599 () Bool)

(assert (=> b!160910 m!192599))

(declare-fun m!192601 () Bool)

(assert (=> b!160903 m!192601))

(declare-fun m!192603 () Bool)

(assert (=> b!160908 m!192603))

(assert (=> b!160908 m!192603))

(declare-fun m!192605 () Bool)

(assert (=> b!160908 m!192605))

(declare-fun m!192607 () Bool)

(assert (=> b!160907 m!192607))

(declare-fun m!192609 () Bool)

(assert (=> b!160907 m!192609))

(declare-fun m!192611 () Bool)

(assert (=> start!16166 m!192611))

(declare-fun m!192613 () Bool)

(assert (=> b!160904 m!192613))

(check-sat tp_is_empty!3417 (not b!160908) (not start!16166) (not b!160907) (not b!160910) (not b!160911) (not b!160904) (not b!160903) (not b_next!3615) b_and!10047 (not mapNonEmpty!5813))
(check-sat b_and!10047 (not b_next!3615))
