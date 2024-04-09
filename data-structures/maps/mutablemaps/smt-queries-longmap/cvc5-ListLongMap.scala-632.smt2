; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16152 () Bool)

(assert start!16152)

(declare-fun b!160682 () Bool)

(declare-fun b_free!3601 () Bool)

(declare-fun b_next!3601 () Bool)

(assert (=> b!160682 (= b_free!3601 (not b_next!3601))))

(declare-fun tp!13372 () Bool)

(declare-fun b_and!10033 () Bool)

(assert (=> b!160682 (= tp!13372 b_and!10033)))

(declare-fun b!160672 () Bool)

(declare-fun e!105038 () Bool)

(declare-fun tp_is_empty!3403 () Bool)

(assert (=> b!160672 (= e!105038 tp_is_empty!3403)))

(declare-fun b!160673 () Bool)

(declare-fun res!76136 () Bool)

(declare-fun e!105036 () Bool)

(assert (=> b!160673 (=> (not res!76136) (not e!105036))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160673 (= res!76136 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!5792 () Bool)

(declare-fun mapRes!5792 () Bool)

(assert (=> mapIsEmpty!5792 mapRes!5792))

(declare-fun b!160675 () Bool)

(declare-fun res!76139 () Bool)

(assert (=> b!160675 (=> (not res!76139) (not e!105036))))

(declare-datatypes ((V!4185 0))(
  ( (V!4186 (val!1746 Int)) )
))
(declare-datatypes ((ValueCell!1358 0))(
  ( (ValueCellFull!1358 (v!3607 V!4185)) (EmptyCell!1358) )
))
(declare-datatypes ((array!5884 0))(
  ( (array!5885 (arr!2786 (Array (_ BitVec 32) (_ BitVec 64))) (size!3070 (_ BitVec 32))) )
))
(declare-datatypes ((array!5886 0))(
  ( (array!5887 (arr!2787 (Array (_ BitVec 32) ValueCell!1358)) (size!3071 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1624 0))(
  ( (LongMapFixedSize!1625 (defaultEntry!3254 Int) (mask!7830 (_ BitVec 32)) (extraKeys!2995 (_ BitVec 32)) (zeroValue!3097 V!4185) (minValue!3097 V!4185) (_size!861 (_ BitVec 32)) (_keys!5055 array!5884) (_values!3237 array!5886) (_vacant!861 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1624)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5884 (_ BitVec 32)) Bool)

(assert (=> b!160675 (= res!76139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5055 thiss!1248) (mask!7830 thiss!1248)))))

(declare-fun b!160676 () Bool)

(declare-fun res!76142 () Bool)

(assert (=> b!160676 (=> (not res!76142) (not e!105036))))

(declare-datatypes ((SeekEntryResult!347 0))(
  ( (MissingZero!347 (index!3556 (_ BitVec 32))) (Found!347 (index!3557 (_ BitVec 32))) (Intermediate!347 (undefined!1159 Bool) (index!3558 (_ BitVec 32)) (x!17747 (_ BitVec 32))) (Undefined!347) (MissingVacant!347 (index!3559 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5884 (_ BitVec 32)) SeekEntryResult!347)

(assert (=> b!160676 (= res!76142 (is-Undefined!347 (seekEntryOrOpen!0 key!828 (_keys!5055 thiss!1248) (mask!7830 thiss!1248))))))

(declare-fun b!160677 () Bool)

(declare-fun res!76140 () Bool)

(assert (=> b!160677 (=> (not res!76140) (not e!105036))))

(assert (=> b!160677 (= res!76140 (and (= (size!3071 (_values!3237 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7830 thiss!1248))) (= (size!3070 (_keys!5055 thiss!1248)) (size!3071 (_values!3237 thiss!1248))) (bvsge (mask!7830 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2995 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2995 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160678 () Bool)

(declare-fun res!76137 () Bool)

(assert (=> b!160678 (=> (not res!76137) (not e!105036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160678 (= res!76137 (validMask!0 (mask!7830 thiss!1248)))))

(declare-fun b!160679 () Bool)

(assert (=> b!160679 (= e!105036 false)))

(declare-fun lt!82136 () Bool)

(declare-datatypes ((List!1973 0))(
  ( (Nil!1970) (Cons!1969 (h!2582 (_ BitVec 64)) (t!6783 List!1973)) )
))
(declare-fun arrayNoDuplicates!0 (array!5884 (_ BitVec 32) List!1973) Bool)

(assert (=> b!160679 (= lt!82136 (arrayNoDuplicates!0 (_keys!5055 thiss!1248) #b00000000000000000000000000000000 Nil!1970))))

(declare-fun b!160674 () Bool)

(declare-fun res!76138 () Bool)

(assert (=> b!160674 (=> (not res!76138) (not e!105036))))

(declare-datatypes ((tuple2!2918 0))(
  ( (tuple2!2919 (_1!1469 (_ BitVec 64)) (_2!1469 V!4185)) )
))
(declare-datatypes ((List!1974 0))(
  ( (Nil!1971) (Cons!1970 (h!2583 tuple2!2918) (t!6784 List!1974)) )
))
(declare-datatypes ((ListLongMap!1927 0))(
  ( (ListLongMap!1928 (toList!979 List!1974)) )
))
(declare-fun contains!1009 (ListLongMap!1927 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!639 (array!5884 array!5886 (_ BitVec 32) (_ BitVec 32) V!4185 V!4185 (_ BitVec 32) Int) ListLongMap!1927)

(assert (=> b!160674 (= res!76138 (not (contains!1009 (getCurrentListMap!639 (_keys!5055 thiss!1248) (_values!3237 thiss!1248) (mask!7830 thiss!1248) (extraKeys!2995 thiss!1248) (zeroValue!3097 thiss!1248) (minValue!3097 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3254 thiss!1248)) key!828)))))

(declare-fun res!76141 () Bool)

(assert (=> start!16152 (=> (not res!76141) (not e!105036))))

(declare-fun valid!745 (LongMapFixedSize!1624) Bool)

(assert (=> start!16152 (= res!76141 (valid!745 thiss!1248))))

(assert (=> start!16152 e!105036))

(declare-fun e!105037 () Bool)

(assert (=> start!16152 e!105037))

(assert (=> start!16152 true))

(declare-fun b!160680 () Bool)

(declare-fun e!105039 () Bool)

(assert (=> b!160680 (= e!105039 tp_is_empty!3403)))

(declare-fun b!160681 () Bool)

(declare-fun e!105041 () Bool)

(assert (=> b!160681 (= e!105041 (and e!105039 mapRes!5792))))

(declare-fun condMapEmpty!5792 () Bool)

(declare-fun mapDefault!5792 () ValueCell!1358)

