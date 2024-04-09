; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16252 () Bool)

(assert start!16252)

(declare-fun b!161990 () Bool)

(declare-fun b_free!3701 () Bool)

(declare-fun b_next!3701 () Bool)

(assert (=> b!161990 (= b_free!3701 (not b_next!3701))))

(declare-fun tp!13673 () Bool)

(declare-fun b_and!10133 () Bool)

(assert (=> b!161990 (= tp!13673 b_and!10133)))

(declare-fun b!161982 () Bool)

(declare-fun res!76757 () Bool)

(declare-fun e!106027 () Bool)

(assert (=> b!161982 (=> (not res!76757) (not e!106027))))

(declare-datatypes ((V!4317 0))(
  ( (V!4318 (val!1796 Int)) )
))
(declare-datatypes ((ValueCell!1408 0))(
  ( (ValueCellFull!1408 (v!3657 V!4317)) (EmptyCell!1408) )
))
(declare-datatypes ((array!6084 0))(
  ( (array!6085 (arr!2886 (Array (_ BitVec 32) (_ BitVec 64))) (size!3170 (_ BitVec 32))) )
))
(declare-datatypes ((array!6086 0))(
  ( (array!6087 (arr!2887 (Array (_ BitVec 32) ValueCell!1408)) (size!3171 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1724 0))(
  ( (LongMapFixedSize!1725 (defaultEntry!3304 Int) (mask!7912 (_ BitVec 32)) (extraKeys!3045 (_ BitVec 32)) (zeroValue!3147 V!4317) (minValue!3147 V!4317) (_size!911 (_ BitVec 32)) (_keys!5105 array!6084) (_values!3287 array!6086) (_vacant!911 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2974 0))(
  ( (tuple2!2975 (_1!1497 Bool) (_2!1497 LongMapFixedSize!1724)) )
))
(declare-fun lt!82375 () tuple2!2974)

(assert (=> b!161982 (= res!76757 (_1!1497 lt!82375))))

(declare-fun mapIsEmpty!5942 () Bool)

(declare-fun mapRes!5942 () Bool)

(assert (=> mapIsEmpty!5942 mapRes!5942))

(declare-fun mapNonEmpty!5942 () Bool)

(declare-fun tp!13672 () Bool)

(declare-fun e!106031 () Bool)

(assert (=> mapNonEmpty!5942 (= mapRes!5942 (and tp!13672 e!106031))))

(declare-fun mapValue!5942 () ValueCell!1408)

(declare-fun thiss!1248 () LongMapFixedSize!1724)

(declare-fun mapKey!5942 () (_ BitVec 32))

(declare-fun mapRest!5942 () (Array (_ BitVec 32) ValueCell!1408))

(assert (=> mapNonEmpty!5942 (= (arr!2887 (_values!3287 thiss!1248)) (store mapRest!5942 mapKey!5942 mapValue!5942))))

(declare-fun b!161983 () Bool)

(declare-fun e!106025 () Bool)

(declare-fun e!106026 () Bool)

(assert (=> b!161983 (= e!106025 e!106026)))

(declare-fun res!76758 () Bool)

(assert (=> b!161983 (=> (not res!76758) (not e!106026))))

(declare-datatypes ((SeekEntryResult!377 0))(
  ( (MissingZero!377 (index!3676 (_ BitVec 32))) (Found!377 (index!3677 (_ BitVec 32))) (Intermediate!377 (undefined!1189 Bool) (index!3678 (_ BitVec 32)) (x!17905 (_ BitVec 32))) (Undefined!377) (MissingVacant!377 (index!3679 (_ BitVec 32))) )
))
(declare-fun lt!82376 () SeekEntryResult!377)

(assert (=> b!161983 (= res!76758 (and (not (is-Undefined!377 lt!82376)) (is-MissingVacant!377 lt!82376)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6084 (_ BitVec 32)) SeekEntryResult!377)

(assert (=> b!161983 (= lt!82376 (seekEntryOrOpen!0 key!828 (_keys!5105 thiss!1248) (mask!7912 thiss!1248)))))

(declare-fun b!161984 () Bool)

(declare-fun e!106029 () Bool)

(declare-fun tp_is_empty!3503 () Bool)

(assert (=> b!161984 (= e!106029 tp_is_empty!3503)))

(declare-fun b!161985 () Bool)

(assert (=> b!161985 (= e!106027 false)))

(declare-fun lt!82374 () Bool)

(declare-datatypes ((tuple2!2976 0))(
  ( (tuple2!2977 (_1!1498 (_ BitVec 64)) (_2!1498 V!4317)) )
))
(declare-datatypes ((List!2003 0))(
  ( (Nil!2000) (Cons!1999 (h!2612 tuple2!2976) (t!6813 List!2003)) )
))
(declare-datatypes ((ListLongMap!1971 0))(
  ( (ListLongMap!1972 (toList!1001 List!2003)) )
))
(declare-fun contains!1031 (ListLongMap!1971 (_ BitVec 64)) Bool)

(declare-fun map!1669 (LongMapFixedSize!1724) ListLongMap!1971)

(assert (=> b!161985 (= lt!82374 (contains!1031 (map!1669 (_2!1497 lt!82375)) key!828))))

(declare-fun b!161987 () Bool)

(assert (=> b!161987 (= e!106031 tp_is_empty!3503)))

(declare-fun b!161988 () Bool)

(declare-fun res!76759 () Bool)

(assert (=> b!161988 (=> (not res!76759) (not e!106025))))

(assert (=> b!161988 (= res!76759 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161989 () Bool)

(assert (=> b!161989 (= e!106026 e!106027)))

(declare-fun res!76756 () Bool)

(assert (=> b!161989 (=> (not res!76756) (not e!106027))))

(declare-fun valid!775 (LongMapFixedSize!1724) Bool)

(assert (=> b!161989 (= res!76756 (valid!775 (_2!1497 lt!82375)))))

(declare-fun v!309 () V!4317)

(declare-fun updateHelperNewKey!76 (LongMapFixedSize!1724 (_ BitVec 64) V!4317 (_ BitVec 32)) tuple2!2974)

(assert (=> b!161989 (= lt!82375 (updateHelperNewKey!76 thiss!1248 key!828 v!309 (index!3679 lt!82376)))))

(declare-fun e!106030 () Bool)

(declare-fun e!106028 () Bool)

(declare-fun array_inv!1837 (array!6084) Bool)

(declare-fun array_inv!1838 (array!6086) Bool)

(assert (=> b!161990 (= e!106028 (and tp!13673 tp_is_empty!3503 (array_inv!1837 (_keys!5105 thiss!1248)) (array_inv!1838 (_values!3287 thiss!1248)) e!106030))))

(declare-fun res!76760 () Bool)

(assert (=> start!16252 (=> (not res!76760) (not e!106025))))

(assert (=> start!16252 (= res!76760 (valid!775 thiss!1248))))

(assert (=> start!16252 e!106025))

(assert (=> start!16252 e!106028))

(assert (=> start!16252 true))

(assert (=> start!16252 tp_is_empty!3503))

(declare-fun b!161986 () Bool)

(assert (=> b!161986 (= e!106030 (and e!106029 mapRes!5942))))

(declare-fun condMapEmpty!5942 () Bool)

(declare-fun mapDefault!5942 () ValueCell!1408)

