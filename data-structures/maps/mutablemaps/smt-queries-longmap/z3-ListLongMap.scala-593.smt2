; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15714 () Bool)

(assert start!15714)

(declare-fun b!156546 () Bool)

(declare-fun b_free!3369 () Bool)

(declare-fun b_next!3369 () Bool)

(assert (=> b!156546 (= b_free!3369 (not b_next!3369))))

(declare-fun tp!12631 () Bool)

(declare-fun b_and!9801 () Bool)

(assert (=> b!156546 (= tp!12631 b_and!9801)))

(declare-fun b!156544 () Bool)

(declare-fun res!73995 () Bool)

(declare-fun e!102394 () Bool)

(assert (=> b!156544 (=> (not res!73995) (not e!102394))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156544 (= res!73995 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5399 () Bool)

(declare-fun mapRes!5399 () Bool)

(assert (=> mapIsEmpty!5399 mapRes!5399))

(declare-fun b!156545 () Bool)

(declare-fun res!73994 () Bool)

(assert (=> b!156545 (=> (not res!73994) (not e!102394))))

(declare-datatypes ((V!3875 0))(
  ( (V!3876 (val!1630 Int)) )
))
(declare-datatypes ((ValueCell!1242 0))(
  ( (ValueCellFull!1242 (v!3491 V!3875)) (EmptyCell!1242) )
))
(declare-datatypes ((array!5394 0))(
  ( (array!5395 (arr!2554 (Array (_ BitVec 32) (_ BitVec 64))) (size!2832 (_ BitVec 32))) )
))
(declare-datatypes ((array!5396 0))(
  ( (array!5397 (arr!2555 (Array (_ BitVec 32) ValueCell!1242)) (size!2833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1392 0))(
  ( (LongMapFixedSize!1393 (defaultEntry!3138 Int) (mask!7593 (_ BitVec 32)) (extraKeys!2879 (_ BitVec 32)) (zeroValue!2981 V!3875) (minValue!2981 V!3875) (_size!745 (_ BitVec 32)) (_keys!4913 array!5394) (_values!3121 array!5396) (_vacant!745 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1392)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156545 (= res!73994 (validMask!0 (mask!7593 thiss!1248)))))

(declare-fun res!73993 () Bool)

(assert (=> start!15714 (=> (not res!73993) (not e!102394))))

(declare-fun valid!669 (LongMapFixedSize!1392) Bool)

(assert (=> start!15714 (= res!73993 (valid!669 thiss!1248))))

(assert (=> start!15714 e!102394))

(declare-fun e!102398 () Bool)

(assert (=> start!15714 e!102398))

(assert (=> start!15714 true))

(declare-fun tp_is_empty!3171 () Bool)

(declare-fun e!102393 () Bool)

(declare-fun array_inv!1611 (array!5394) Bool)

(declare-fun array_inv!1612 (array!5396) Bool)

(assert (=> b!156546 (= e!102398 (and tp!12631 tp_is_empty!3171 (array_inv!1611 (_keys!4913 thiss!1248)) (array_inv!1612 (_values!3121 thiss!1248)) e!102393))))

(declare-fun b!156547 () Bool)

(declare-fun e!102397 () Bool)

(assert (=> b!156547 (= e!102397 tp_is_empty!3171)))

(declare-fun b!156548 () Bool)

(assert (=> b!156548 (= e!102394 false)))

(declare-fun lt!81590 () Bool)

(declare-datatypes ((List!1874 0))(
  ( (Nil!1871) (Cons!1870 (h!2479 (_ BitVec 64)) (t!6684 List!1874)) )
))
(declare-fun arrayNoDuplicates!0 (array!5394 (_ BitVec 32) List!1874) Bool)

(assert (=> b!156548 (= lt!81590 (arrayNoDuplicates!0 (_keys!4913 thiss!1248) #b00000000000000000000000000000000 Nil!1871))))

(declare-fun b!156549 () Bool)

(declare-fun res!73996 () Bool)

(assert (=> b!156549 (=> (not res!73996) (not e!102394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5394 (_ BitVec 32)) Bool)

(assert (=> b!156549 (= res!73996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4913 thiss!1248) (mask!7593 thiss!1248)))))

(declare-fun b!156550 () Bool)

(declare-fun res!73992 () Bool)

(assert (=> b!156550 (=> (not res!73992) (not e!102394))))

(assert (=> b!156550 (= res!73992 (and (= (size!2833 (_values!3121 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7593 thiss!1248))) (= (size!2832 (_keys!4913 thiss!1248)) (size!2833 (_values!3121 thiss!1248))) (bvsge (mask!7593 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2879 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2879 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2879 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2879 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2879 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2879 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2879 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156551 () Bool)

(declare-fun e!102396 () Bool)

(assert (=> b!156551 (= e!102396 tp_is_empty!3171)))

(declare-fun b!156552 () Bool)

(assert (=> b!156552 (= e!102393 (and e!102396 mapRes!5399))))

(declare-fun condMapEmpty!5399 () Bool)

(declare-fun mapDefault!5399 () ValueCell!1242)

(assert (=> b!156552 (= condMapEmpty!5399 (= (arr!2555 (_values!3121 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1242)) mapDefault!5399)))))

(declare-fun mapNonEmpty!5399 () Bool)

(declare-fun tp!12632 () Bool)

(assert (=> mapNonEmpty!5399 (= mapRes!5399 (and tp!12632 e!102397))))

(declare-fun mapKey!5399 () (_ BitVec 32))

(declare-fun mapValue!5399 () ValueCell!1242)

(declare-fun mapRest!5399 () (Array (_ BitVec 32) ValueCell!1242))

(assert (=> mapNonEmpty!5399 (= (arr!2555 (_values!3121 thiss!1248)) (store mapRest!5399 mapKey!5399 mapValue!5399))))

(assert (= (and start!15714 res!73993) b!156544))

(assert (= (and b!156544 res!73995) b!156545))

(assert (= (and b!156545 res!73994) b!156550))

(assert (= (and b!156550 res!73992) b!156549))

(assert (= (and b!156549 res!73996) b!156548))

(assert (= (and b!156552 condMapEmpty!5399) mapIsEmpty!5399))

(assert (= (and b!156552 (not condMapEmpty!5399)) mapNonEmpty!5399))

(get-info :version)

(assert (= (and mapNonEmpty!5399 ((_ is ValueCellFull!1242) mapValue!5399)) b!156547))

(assert (= (and b!156552 ((_ is ValueCellFull!1242) mapDefault!5399)) b!156551))

(assert (= b!156546 b!156552))

(assert (= start!15714 b!156546))

(declare-fun m!190057 () Bool)

(assert (=> b!156548 m!190057))

(declare-fun m!190059 () Bool)

(assert (=> start!15714 m!190059))

(declare-fun m!190061 () Bool)

(assert (=> b!156545 m!190061))

(declare-fun m!190063 () Bool)

(assert (=> mapNonEmpty!5399 m!190063))

(declare-fun m!190065 () Bool)

(assert (=> b!156546 m!190065))

(declare-fun m!190067 () Bool)

(assert (=> b!156546 m!190067))

(declare-fun m!190069 () Bool)

(assert (=> b!156549 m!190069))

(check-sat b_and!9801 (not b!156548) (not b_next!3369) (not start!15714) (not mapNonEmpty!5399) (not b!156545) (not b!156549) (not b!156546) tp_is_empty!3171)
(check-sat b_and!9801 (not b_next!3369))
