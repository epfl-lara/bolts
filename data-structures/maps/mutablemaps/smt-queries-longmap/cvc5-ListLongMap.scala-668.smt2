; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16510 () Bool)

(assert start!16510)

(declare-fun b!164013 () Bool)

(declare-fun b_free!3817 () Bool)

(declare-fun b_next!3817 () Bool)

(assert (=> b!164013 (= b_free!3817 (not b_next!3817))))

(declare-fun tp!14049 () Bool)

(declare-fun b_and!10249 () Bool)

(assert (=> b!164013 (= tp!14049 b_and!10249)))

(declare-fun b!164011 () Bool)

(declare-fun e!107624 () Bool)

(declare-datatypes ((V!4473 0))(
  ( (V!4474 (val!1854 Int)) )
))
(declare-datatypes ((ValueCell!1466 0))(
  ( (ValueCellFull!1466 (v!3715 V!4473)) (EmptyCell!1466) )
))
(declare-datatypes ((array!6332 0))(
  ( (array!6333 (arr!3002 (Array (_ BitVec 32) (_ BitVec 64))) (size!3290 (_ BitVec 32))) )
))
(declare-datatypes ((array!6334 0))(
  ( (array!6335 (arr!3003 (Array (_ BitVec 32) ValueCell!1466)) (size!3291 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1840 0))(
  ( (LongMapFixedSize!1841 (defaultEntry!3362 Int) (mask!8044 (_ BitVec 32)) (extraKeys!3103 (_ BitVec 32)) (zeroValue!3205 V!4473) (minValue!3205 V!4473) (_size!969 (_ BitVec 32)) (_keys!5185 array!6332) (_values!3345 array!6334) (_vacant!969 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1840)

(assert (=> b!164011 (= e!107624 (bvsgt #b00000000000000000000000000000000 (size!3290 (_keys!5185 thiss!1248))))))

(declare-fun b!164012 () Bool)

(declare-fun res!77623 () Bool)

(declare-fun e!107625 () Bool)

(assert (=> b!164012 (=> (not res!77623) (not e!107625))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!164012 (= res!77623 (not (= key!828 (bvneg key!828))))))

(declare-fun e!107623 () Bool)

(declare-fun e!107627 () Bool)

(declare-fun tp_is_empty!3619 () Bool)

(declare-fun array_inv!1911 (array!6332) Bool)

(declare-fun array_inv!1912 (array!6334) Bool)

(assert (=> b!164013 (= e!107623 (and tp!14049 tp_is_empty!3619 (array_inv!1911 (_keys!5185 thiss!1248)) (array_inv!1912 (_values!3345 thiss!1248)) e!107627))))

(declare-fun b!164014 () Bool)

(declare-fun e!107626 () Bool)

(assert (=> b!164014 (= e!107626 tp_is_empty!3619)))

(declare-fun res!77620 () Bool)

(assert (=> start!16510 (=> (not res!77620) (not e!107625))))

(declare-fun valid!813 (LongMapFixedSize!1840) Bool)

(assert (=> start!16510 (= res!77620 (valid!813 thiss!1248))))

(assert (=> start!16510 e!107625))

(assert (=> start!16510 e!107623))

(assert (=> start!16510 true))

(declare-fun b!164015 () Bool)

(assert (=> b!164015 (= e!107625 e!107624)))

(declare-fun res!77619 () Bool)

(assert (=> b!164015 (=> (not res!77619) (not e!107624))))

(declare-datatypes ((SeekEntryResult!419 0))(
  ( (MissingZero!419 (index!3844 (_ BitVec 32))) (Found!419 (index!3845 (_ BitVec 32))) (Intermediate!419 (undefined!1231 Bool) (index!3846 (_ BitVec 32)) (x!18207 (_ BitVec 32))) (Undefined!419) (MissingVacant!419 (index!3847 (_ BitVec 32))) )
))
(declare-fun lt!82841 () SeekEntryResult!419)

(assert (=> b!164015 (= res!77619 (and (not (is-Undefined!419 lt!82841)) (not (is-MissingVacant!419 lt!82841)) (not (is-MissingZero!419 lt!82841)) (is-Found!419 lt!82841)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6332 (_ BitVec 32)) SeekEntryResult!419)

(assert (=> b!164015 (= lt!82841 (seekEntryOrOpen!0 key!828 (_keys!5185 thiss!1248) (mask!8044 thiss!1248)))))

(declare-fun b!164016 () Bool)

(declare-fun res!77621 () Bool)

(assert (=> b!164016 (=> (not res!77621) (not e!107624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6332 (_ BitVec 32)) Bool)

(assert (=> b!164016 (= res!77621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5185 thiss!1248) (mask!8044 thiss!1248)))))

(declare-fun mapNonEmpty!6144 () Bool)

(declare-fun mapRes!6144 () Bool)

(declare-fun tp!14048 () Bool)

(declare-fun e!107629 () Bool)

(assert (=> mapNonEmpty!6144 (= mapRes!6144 (and tp!14048 e!107629))))

(declare-fun mapRest!6144 () (Array (_ BitVec 32) ValueCell!1466))

(declare-fun mapValue!6144 () ValueCell!1466)

(declare-fun mapKey!6144 () (_ BitVec 32))

(assert (=> mapNonEmpty!6144 (= (arr!3003 (_values!3345 thiss!1248)) (store mapRest!6144 mapKey!6144 mapValue!6144))))

(declare-fun b!164017 () Bool)

(assert (=> b!164017 (= e!107627 (and e!107626 mapRes!6144))))

(declare-fun condMapEmpty!6144 () Bool)

(declare-fun mapDefault!6144 () ValueCell!1466)

