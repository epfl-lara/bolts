; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16124 () Bool)

(assert start!16124)

(declare-fun b!160211 () Bool)

(declare-fun b_free!3573 () Bool)

(declare-fun b_next!3573 () Bool)

(assert (=> b!160211 (= b_free!3573 (not b_next!3573))))

(declare-fun tp!13289 () Bool)

(declare-fun b_and!10005 () Bool)

(assert (=> b!160211 (= tp!13289 b_and!10005)))

(declare-fun b!160210 () Bool)

(declare-fun e!104788 () Bool)

(assert (=> b!160210 (= e!104788 false)))

(declare-fun lt!82094 () Bool)

(declare-datatypes ((V!4147 0))(
  ( (V!4148 (val!1732 Int)) )
))
(declare-datatypes ((ValueCell!1344 0))(
  ( (ValueCellFull!1344 (v!3593 V!4147)) (EmptyCell!1344) )
))
(declare-datatypes ((array!5828 0))(
  ( (array!5829 (arr!2758 (Array (_ BitVec 32) (_ BitVec 64))) (size!3042 (_ BitVec 32))) )
))
(declare-datatypes ((array!5830 0))(
  ( (array!5831 (arr!2759 (Array (_ BitVec 32) ValueCell!1344)) (size!3043 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1596 0))(
  ( (LongMapFixedSize!1597 (defaultEntry!3240 Int) (mask!7806 (_ BitVec 32)) (extraKeys!2981 (_ BitVec 32)) (zeroValue!3083 V!4147) (minValue!3083 V!4147) (_size!847 (_ BitVec 32)) (_keys!5041 array!5828) (_values!3223 array!5830) (_vacant!847 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1596)

(declare-datatypes ((List!1956 0))(
  ( (Nil!1953) (Cons!1952 (h!2565 (_ BitVec 64)) (t!6766 List!1956)) )
))
(declare-fun arrayNoDuplicates!0 (array!5828 (_ BitVec 32) List!1956) Bool)

(assert (=> b!160210 (= lt!82094 (arrayNoDuplicates!0 (_keys!5041 thiss!1248) #b00000000000000000000000000000000 Nil!1953))))

(declare-fun e!104784 () Bool)

(declare-fun e!104785 () Bool)

(declare-fun tp_is_empty!3375 () Bool)

(declare-fun array_inv!1751 (array!5828) Bool)

(declare-fun array_inv!1752 (array!5830) Bool)

(assert (=> b!160211 (= e!104784 (and tp!13289 tp_is_empty!3375 (array_inv!1751 (_keys!5041 thiss!1248)) (array_inv!1752 (_values!3223 thiss!1248)) e!104785))))

(declare-fun b!160212 () Bool)

(declare-fun res!75846 () Bool)

(assert (=> b!160212 (=> (not res!75846) (not e!104788))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160212 (= res!75846 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!5750 () Bool)

(declare-fun mapRes!5750 () Bool)

(assert (=> mapIsEmpty!5750 mapRes!5750))

(declare-fun b!160213 () Bool)

(declare-fun res!75848 () Bool)

(assert (=> b!160213 (=> (not res!75848) (not e!104788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160213 (= res!75848 (validMask!0 (mask!7806 thiss!1248)))))

(declare-fun b!160214 () Bool)

(declare-fun e!104789 () Bool)

(assert (=> b!160214 (= e!104789 tp_is_empty!3375)))

(declare-fun b!160215 () Bool)

(declare-fun res!75847 () Bool)

(assert (=> b!160215 (=> (not res!75847) (not e!104788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5828 (_ BitVec 32)) Bool)

(assert (=> b!160215 (= res!75847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5041 thiss!1248) (mask!7806 thiss!1248)))))

(declare-fun b!160216 () Bool)

(declare-fun res!75842 () Bool)

(assert (=> b!160216 (=> (not res!75842) (not e!104788))))

(assert (=> b!160216 (= res!75842 (and (= (size!3043 (_values!3223 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7806 thiss!1248))) (= (size!3042 (_keys!5041 thiss!1248)) (size!3043 (_values!3223 thiss!1248))) (bvsge (mask!7806 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2981 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2981 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!5750 () Bool)

(declare-fun tp!13288 () Bool)

(assert (=> mapNonEmpty!5750 (= mapRes!5750 (and tp!13288 e!104789))))

(declare-fun mapKey!5750 () (_ BitVec 32))

(declare-fun mapRest!5750 () (Array (_ BitVec 32) ValueCell!1344))

(declare-fun mapValue!5750 () ValueCell!1344)

(assert (=> mapNonEmpty!5750 (= (arr!2759 (_values!3223 thiss!1248)) (store mapRest!5750 mapKey!5750 mapValue!5750))))

(declare-fun b!160217 () Bool)

(declare-fun e!104786 () Bool)

(assert (=> b!160217 (= e!104785 (and e!104786 mapRes!5750))))

(declare-fun condMapEmpty!5750 () Bool)

(declare-fun mapDefault!5750 () ValueCell!1344)

(assert (=> b!160217 (= condMapEmpty!5750 (= (arr!2759 (_values!3223 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1344)) mapDefault!5750)))))

(declare-fun b!160218 () Bool)

(assert (=> b!160218 (= e!104786 tp_is_empty!3375)))

(declare-fun res!75843 () Bool)

(assert (=> start!16124 (=> (not res!75843) (not e!104788))))

(declare-fun valid!736 (LongMapFixedSize!1596) Bool)

(assert (=> start!16124 (= res!75843 (valid!736 thiss!1248))))

(assert (=> start!16124 e!104788))

(assert (=> start!16124 e!104784))

(assert (=> start!16124 true))

(declare-fun b!160219 () Bool)

(declare-fun res!75845 () Bool)

(assert (=> b!160219 (=> (not res!75845) (not e!104788))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!337 0))(
  ( (MissingZero!337 (index!3516 (_ BitVec 32))) (Found!337 (index!3517 (_ BitVec 32))) (Intermediate!337 (undefined!1149 Bool) (index!3518 (_ BitVec 32)) (x!17697 (_ BitVec 32))) (Undefined!337) (MissingVacant!337 (index!3519 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5828 (_ BitVec 32)) SeekEntryResult!337)

(assert (=> b!160219 (= res!75845 ((_ is Undefined!337) (seekEntryOrOpen!0 key!828 (_keys!5041 thiss!1248) (mask!7806 thiss!1248))))))

(declare-fun b!160220 () Bool)

(declare-fun res!75844 () Bool)

(assert (=> b!160220 (=> (not res!75844) (not e!104788))))

(declare-datatypes ((tuple2!2900 0))(
  ( (tuple2!2901 (_1!1460 (_ BitVec 64)) (_2!1460 V!4147)) )
))
(declare-datatypes ((List!1957 0))(
  ( (Nil!1954) (Cons!1953 (h!2566 tuple2!2900) (t!6767 List!1957)) )
))
(declare-datatypes ((ListLongMap!1909 0))(
  ( (ListLongMap!1910 (toList!970 List!1957)) )
))
(declare-fun contains!1000 (ListLongMap!1909 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!630 (array!5828 array!5830 (_ BitVec 32) (_ BitVec 32) V!4147 V!4147 (_ BitVec 32) Int) ListLongMap!1909)

(assert (=> b!160220 (= res!75844 (not (contains!1000 (getCurrentListMap!630 (_keys!5041 thiss!1248) (_values!3223 thiss!1248) (mask!7806 thiss!1248) (extraKeys!2981 thiss!1248) (zeroValue!3083 thiss!1248) (minValue!3083 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3240 thiss!1248)) key!828)))))

(assert (= (and start!16124 res!75843) b!160212))

(assert (= (and b!160212 res!75846) b!160219))

(assert (= (and b!160219 res!75845) b!160220))

(assert (= (and b!160220 res!75844) b!160213))

(assert (= (and b!160213 res!75848) b!160216))

(assert (= (and b!160216 res!75842) b!160215))

(assert (= (and b!160215 res!75847) b!160210))

(assert (= (and b!160217 condMapEmpty!5750) mapIsEmpty!5750))

(assert (= (and b!160217 (not condMapEmpty!5750)) mapNonEmpty!5750))

(assert (= (and mapNonEmpty!5750 ((_ is ValueCellFull!1344) mapValue!5750)) b!160214))

(assert (= (and b!160217 ((_ is ValueCellFull!1344) mapDefault!5750)) b!160218))

(assert (= b!160211 b!160217))

(assert (= start!16124 b!160211))

(declare-fun m!192175 () Bool)

(assert (=> b!160213 m!192175))

(declare-fun m!192177 () Bool)

(assert (=> b!160211 m!192177))

(declare-fun m!192179 () Bool)

(assert (=> b!160211 m!192179))

(declare-fun m!192181 () Bool)

(assert (=> b!160210 m!192181))

(declare-fun m!192183 () Bool)

(assert (=> b!160215 m!192183))

(declare-fun m!192185 () Bool)

(assert (=> b!160219 m!192185))

(declare-fun m!192187 () Bool)

(assert (=> mapNonEmpty!5750 m!192187))

(declare-fun m!192189 () Bool)

(assert (=> b!160220 m!192189))

(assert (=> b!160220 m!192189))

(declare-fun m!192191 () Bool)

(assert (=> b!160220 m!192191))

(declare-fun m!192193 () Bool)

(assert (=> start!16124 m!192193))

(check-sat (not start!16124) (not b_next!3573) (not b!160210) b_and!10005 tp_is_empty!3375 (not b!160211) (not b!160213) (not mapNonEmpty!5750) (not b!160220) (not b!160215) (not b!160219))
(check-sat b_and!10005 (not b_next!3573))
