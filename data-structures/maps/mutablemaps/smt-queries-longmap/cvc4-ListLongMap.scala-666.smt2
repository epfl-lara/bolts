; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16476 () Bool)

(assert start!16476)

(declare-fun b!163788 () Bool)

(declare-fun b_free!3809 () Bool)

(declare-fun b_next!3809 () Bool)

(assert (=> b!163788 (= b_free!3809 (not b_next!3809))))

(declare-fun tp!14018 () Bool)

(declare-fun b_and!10241 () Bool)

(assert (=> b!163788 (= tp!14018 b_and!10241)))

(declare-fun b!163781 () Bool)

(declare-fun e!107473 () Bool)

(declare-fun tp_is_empty!3611 () Bool)

(assert (=> b!163781 (= e!107473 tp_is_empty!3611)))

(declare-fun b!163782 () Bool)

(declare-fun e!107476 () Bool)

(declare-datatypes ((V!4461 0))(
  ( (V!4462 (val!1850 Int)) )
))
(declare-datatypes ((ValueCell!1462 0))(
  ( (ValueCellFull!1462 (v!3711 V!4461)) (EmptyCell!1462) )
))
(declare-datatypes ((array!6312 0))(
  ( (array!6313 (arr!2994 (Array (_ BitVec 32) (_ BitVec 64))) (size!3282 (_ BitVec 32))) )
))
(declare-datatypes ((array!6314 0))(
  ( (array!6315 (arr!2995 (Array (_ BitVec 32) ValueCell!1462)) (size!3283 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1832 0))(
  ( (LongMapFixedSize!1833 (defaultEntry!3358 Int) (mask!8030 (_ BitVec 32)) (extraKeys!3099 (_ BitVec 32)) (zeroValue!3201 V!4461) (minValue!3201 V!4461) (_size!965 (_ BitVec 32)) (_keys!5177 array!6312) (_values!3341 array!6314) (_vacant!965 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1832)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6312 (_ BitVec 32)) Bool)

(assert (=> b!163782 (= e!107476 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5177 thiss!1248) (mask!8030 thiss!1248))))))

(declare-fun b!163783 () Bool)

(declare-fun e!107475 () Bool)

(assert (=> b!163783 (= e!107475 e!107476)))

(declare-fun res!77509 () Bool)

(assert (=> b!163783 (=> (not res!77509) (not e!107476))))

(declare-datatypes ((SeekEntryResult!415 0))(
  ( (MissingZero!415 (index!3828 (_ BitVec 32))) (Found!415 (index!3829 (_ BitVec 32))) (Intermediate!415 (undefined!1227 Bool) (index!3830 (_ BitVec 32)) (x!18171 (_ BitVec 32))) (Undefined!415) (MissingVacant!415 (index!3831 (_ BitVec 32))) )
))
(declare-fun lt!82793 () SeekEntryResult!415)

(assert (=> b!163783 (= res!77509 (and (not (is-Undefined!415 lt!82793)) (not (is-MissingVacant!415 lt!82793)) (not (is-MissingZero!415 lt!82793)) (is-Found!415 lt!82793)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6312 (_ BitVec 32)) SeekEntryResult!415)

(assert (=> b!163783 (= lt!82793 (seekEntryOrOpen!0 key!828 (_keys!5177 thiss!1248) (mask!8030 thiss!1248)))))

(declare-fun b!163784 () Bool)

(declare-fun res!77507 () Bool)

(assert (=> b!163784 (=> (not res!77507) (not e!107476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163784 (= res!77507 (validMask!0 (mask!8030 thiss!1248)))))

(declare-fun mapIsEmpty!6126 () Bool)

(declare-fun mapRes!6126 () Bool)

(assert (=> mapIsEmpty!6126 mapRes!6126))

(declare-fun b!163785 () Bool)

(declare-fun res!77510 () Bool)

(assert (=> b!163785 (=> (not res!77510) (not e!107476))))

(assert (=> b!163785 (= res!77510 (and (= (size!3283 (_values!3341 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8030 thiss!1248))) (= (size!3282 (_keys!5177 thiss!1248)) (size!3283 (_values!3341 thiss!1248))) (bvsge (mask!8030 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3099 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3099 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!6126 () Bool)

(declare-fun tp!14019 () Bool)

(assert (=> mapNonEmpty!6126 (= mapRes!6126 (and tp!14019 e!107473))))

(declare-fun mapValue!6126 () ValueCell!1462)

(declare-fun mapKey!6126 () (_ BitVec 32))

(declare-fun mapRest!6126 () (Array (_ BitVec 32) ValueCell!1462))

(assert (=> mapNonEmpty!6126 (= (arr!2995 (_values!3341 thiss!1248)) (store mapRest!6126 mapKey!6126 mapValue!6126))))

(declare-fun b!163786 () Bool)

(declare-fun e!107478 () Bool)

(assert (=> b!163786 (= e!107478 tp_is_empty!3611)))

(declare-fun b!163787 () Bool)

(declare-fun e!107477 () Bool)

(assert (=> b!163787 (= e!107477 (and e!107478 mapRes!6126))))

(declare-fun condMapEmpty!6126 () Bool)

(declare-fun mapDefault!6126 () ValueCell!1462)

