; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15708 () Bool)

(assert start!15708)

(declare-fun b!156463 () Bool)

(declare-fun b_free!3363 () Bool)

(declare-fun b_next!3363 () Bool)

(assert (=> b!156463 (= b_free!3363 (not b_next!3363))))

(declare-fun tp!12614 () Bool)

(declare-fun b_and!9795 () Bool)

(assert (=> b!156463 (= tp!12614 b_and!9795)))

(declare-fun e!102342 () Bool)

(declare-fun e!102344 () Bool)

(declare-fun tp_is_empty!3165 () Bool)

(declare-datatypes ((V!3867 0))(
  ( (V!3868 (val!1627 Int)) )
))
(declare-datatypes ((ValueCell!1239 0))(
  ( (ValueCellFull!1239 (v!3488 V!3867)) (EmptyCell!1239) )
))
(declare-datatypes ((array!5382 0))(
  ( (array!5383 (arr!2548 (Array (_ BitVec 32) (_ BitVec 64))) (size!2826 (_ BitVec 32))) )
))
(declare-datatypes ((array!5384 0))(
  ( (array!5385 (arr!2549 (Array (_ BitVec 32) ValueCell!1239)) (size!2827 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1386 0))(
  ( (LongMapFixedSize!1387 (defaultEntry!3135 Int) (mask!7588 (_ BitVec 32)) (extraKeys!2876 (_ BitVec 32)) (zeroValue!2978 V!3867) (minValue!2978 V!3867) (_size!742 (_ BitVec 32)) (_keys!4910 array!5382) (_values!3118 array!5384) (_vacant!742 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1386)

(declare-fun array_inv!1605 (array!5382) Bool)

(declare-fun array_inv!1606 (array!5384) Bool)

(assert (=> b!156463 (= e!102344 (and tp!12614 tp_is_empty!3165 (array_inv!1605 (_keys!4910 thiss!1248)) (array_inv!1606 (_values!3118 thiss!1248)) e!102342))))

(declare-fun b!156464 () Bool)

(declare-fun e!102341 () Bool)

(assert (=> b!156464 (= e!102341 false)))

(declare-fun lt!81581 () Bool)

(declare-datatypes ((List!1872 0))(
  ( (Nil!1869) (Cons!1868 (h!2477 (_ BitVec 64)) (t!6682 List!1872)) )
))
(declare-fun arrayNoDuplicates!0 (array!5382 (_ BitVec 32) List!1872) Bool)

(assert (=> b!156464 (= lt!81581 (arrayNoDuplicates!0 (_keys!4910 thiss!1248) #b00000000000000000000000000000000 Nil!1869))))

(declare-fun b!156465 () Bool)

(declare-fun res!73950 () Bool)

(assert (=> b!156465 (=> (not res!73950) (not e!102341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156465 (= res!73950 (validMask!0 (mask!7588 thiss!1248)))))

(declare-fun b!156466 () Bool)

(declare-fun res!73947 () Bool)

(assert (=> b!156466 (=> (not res!73947) (not e!102341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5382 (_ BitVec 32)) Bool)

(assert (=> b!156466 (= res!73947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4910 thiss!1248) (mask!7588 thiss!1248)))))

(declare-fun b!156467 () Bool)

(declare-fun e!102339 () Bool)

(declare-fun mapRes!5390 () Bool)

(assert (=> b!156467 (= e!102342 (and e!102339 mapRes!5390))))

(declare-fun condMapEmpty!5390 () Bool)

(declare-fun mapDefault!5390 () ValueCell!1239)

(assert (=> b!156467 (= condMapEmpty!5390 (= (arr!2549 (_values!3118 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1239)) mapDefault!5390)))))

(declare-fun b!156468 () Bool)

(assert (=> b!156468 (= e!102339 tp_is_empty!3165)))

(declare-fun b!156469 () Bool)

(declare-fun res!73951 () Bool)

(assert (=> b!156469 (=> (not res!73951) (not e!102341))))

(assert (=> b!156469 (= res!73951 (and (= (size!2827 (_values!3118 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7588 thiss!1248))) (= (size!2826 (_keys!4910 thiss!1248)) (size!2827 (_values!3118 thiss!1248))) (bvsge (mask!7588 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2876 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2876 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2876 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2876 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2876 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2876 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2876 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5390 () Bool)

(assert (=> mapIsEmpty!5390 mapRes!5390))

(declare-fun res!73949 () Bool)

(assert (=> start!15708 (=> (not res!73949) (not e!102341))))

(declare-fun valid!667 (LongMapFixedSize!1386) Bool)

(assert (=> start!15708 (= res!73949 (valid!667 thiss!1248))))

(assert (=> start!15708 e!102341))

(assert (=> start!15708 e!102344))

(assert (=> start!15708 true))

(declare-fun b!156470 () Bool)

(declare-fun e!102340 () Bool)

(assert (=> b!156470 (= e!102340 tp_is_empty!3165)))

(declare-fun mapNonEmpty!5390 () Bool)

(declare-fun tp!12613 () Bool)

(assert (=> mapNonEmpty!5390 (= mapRes!5390 (and tp!12613 e!102340))))

(declare-fun mapValue!5390 () ValueCell!1239)

(declare-fun mapKey!5390 () (_ BitVec 32))

(declare-fun mapRest!5390 () (Array (_ BitVec 32) ValueCell!1239))

(assert (=> mapNonEmpty!5390 (= (arr!2549 (_values!3118 thiss!1248)) (store mapRest!5390 mapKey!5390 mapValue!5390))))

(declare-fun b!156471 () Bool)

(declare-fun res!73948 () Bool)

(assert (=> b!156471 (=> (not res!73948) (not e!102341))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156471 (= res!73948 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!15708 res!73949) b!156471))

(assert (= (and b!156471 res!73948) b!156465))

(assert (= (and b!156465 res!73950) b!156469))

(assert (= (and b!156469 res!73951) b!156466))

(assert (= (and b!156466 res!73947) b!156464))

(assert (= (and b!156467 condMapEmpty!5390) mapIsEmpty!5390))

(assert (= (and b!156467 (not condMapEmpty!5390)) mapNonEmpty!5390))

(get-info :version)

(assert (= (and mapNonEmpty!5390 ((_ is ValueCellFull!1239) mapValue!5390)) b!156470))

(assert (= (and b!156467 ((_ is ValueCellFull!1239) mapDefault!5390)) b!156468))

(assert (= b!156463 b!156467))

(assert (= start!15708 b!156463))

(declare-fun m!190015 () Bool)

(assert (=> start!15708 m!190015))

(declare-fun m!190017 () Bool)

(assert (=> mapNonEmpty!5390 m!190017))

(declare-fun m!190019 () Bool)

(assert (=> b!156465 m!190019))

(declare-fun m!190021 () Bool)

(assert (=> b!156463 m!190021))

(declare-fun m!190023 () Bool)

(assert (=> b!156463 m!190023))

(declare-fun m!190025 () Bool)

(assert (=> b!156466 m!190025))

(declare-fun m!190027 () Bool)

(assert (=> b!156464 m!190027))

(check-sat (not b!156465) (not b_next!3363) (not b!156464) (not mapNonEmpty!5390) (not b!156466) (not start!15708) b_and!9795 (not b!156463) tp_is_empty!3165)
(check-sat b_and!9795 (not b_next!3363))
