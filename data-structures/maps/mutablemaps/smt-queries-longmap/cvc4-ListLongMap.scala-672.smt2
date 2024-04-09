; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16552 () Bool)

(assert start!16552)

(declare-fun b!164545 () Bool)

(declare-fun b_free!3845 () Bool)

(declare-fun b_next!3845 () Bool)

(assert (=> b!164545 (= b_free!3845 (not b_next!3845))))

(declare-fun tp!14136 () Bool)

(declare-fun b_and!10277 () Bool)

(assert (=> b!164545 (= tp!14136 b_and!10277)))

(declare-fun res!77940 () Bool)

(declare-fun e!107960 () Bool)

(assert (=> start!16552 (=> (not res!77940) (not e!107960))))

(declare-datatypes ((V!4509 0))(
  ( (V!4510 (val!1868 Int)) )
))
(declare-datatypes ((ValueCell!1480 0))(
  ( (ValueCellFull!1480 (v!3729 V!4509)) (EmptyCell!1480) )
))
(declare-datatypes ((array!6390 0))(
  ( (array!6391 (arr!3030 (Array (_ BitVec 32) (_ BitVec 64))) (size!3318 (_ BitVec 32))) )
))
(declare-datatypes ((array!6392 0))(
  ( (array!6393 (arr!3031 (Array (_ BitVec 32) ValueCell!1480)) (size!3319 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1868 0))(
  ( (LongMapFixedSize!1869 (defaultEntry!3376 Int) (mask!8069 (_ BitVec 32)) (extraKeys!3117 (_ BitVec 32)) (zeroValue!3219 V!4509) (minValue!3219 V!4509) (_size!983 (_ BitVec 32)) (_keys!5201 array!6390) (_values!3359 array!6392) (_vacant!983 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1868)

(declare-fun valid!824 (LongMapFixedSize!1868) Bool)

(assert (=> start!16552 (= res!77940 (valid!824 thiss!1248))))

(assert (=> start!16552 e!107960))

(declare-fun e!107957 () Bool)

(assert (=> start!16552 e!107957))

(assert (=> start!16552 true))

(declare-fun mapNonEmpty!6189 () Bool)

(declare-fun mapRes!6189 () Bool)

(declare-fun tp!14135 () Bool)

(declare-fun e!107962 () Bool)

(assert (=> mapNonEmpty!6189 (= mapRes!6189 (and tp!14135 e!107962))))

(declare-fun mapRest!6189 () (Array (_ BitVec 32) ValueCell!1480))

(declare-fun mapKey!6189 () (_ BitVec 32))

(declare-fun mapValue!6189 () ValueCell!1480)

(assert (=> mapNonEmpty!6189 (= (arr!3031 (_values!3359 thiss!1248)) (store mapRest!6189 mapKey!6189 mapValue!6189))))

(declare-fun b!164535 () Bool)

(declare-fun res!77941 () Bool)

(declare-fun e!107958 () Bool)

(assert (=> b!164535 (=> (not res!77941) (not e!107958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164535 (= res!77941 (validMask!0 (mask!8069 thiss!1248)))))

(declare-fun b!164536 () Bool)

(declare-fun res!77939 () Bool)

(assert (=> b!164536 (=> (not res!77939) (not e!107958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6390 (_ BitVec 32)) Bool)

(assert (=> b!164536 (= res!77939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5201 thiss!1248) (mask!8069 thiss!1248)))))

(declare-fun b!164537 () Bool)

(declare-fun e!107959 () Bool)

(declare-fun tp_is_empty!3647 () Bool)

(assert (=> b!164537 (= e!107959 tp_is_empty!3647)))

(declare-fun b!164538 () Bool)

(declare-fun e!107961 () Bool)

(assert (=> b!164538 (= e!107961 (and e!107959 mapRes!6189))))

(declare-fun condMapEmpty!6189 () Bool)

(declare-fun mapDefault!6189 () ValueCell!1480)

