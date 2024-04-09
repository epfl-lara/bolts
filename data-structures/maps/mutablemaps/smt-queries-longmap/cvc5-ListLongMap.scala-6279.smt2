; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80324 () Bool)

(assert start!80324)

(declare-fun b!943157 () Bool)

(declare-fun b_free!17995 () Bool)

(declare-fun b_next!17995 () Bool)

(assert (=> b!943157 (= b_free!17995 (not b_next!17995))))

(declare-fun tp!62491 () Bool)

(declare-fun b_and!29425 () Bool)

(assert (=> b!943157 (= tp!62491 b_and!29425)))

(declare-fun b!943150 () Bool)

(declare-fun res!633854 () Bool)

(declare-fun e!530313 () Bool)

(assert (=> b!943150 (=> (not res!633854) (not e!530313))))

(declare-datatypes ((V!32303 0))(
  ( (V!32304 (val!10302 Int)) )
))
(declare-datatypes ((ValueCell!9770 0))(
  ( (ValueCellFull!9770 (v!12833 V!32303)) (EmptyCell!9770) )
))
(declare-datatypes ((array!56994 0))(
  ( (array!56995 (arr!27419 (Array (_ BitVec 32) ValueCell!9770)) (size!27885 (_ BitVec 32))) )
))
(declare-datatypes ((array!56996 0))(
  ( (array!56997 (arr!27420 (Array (_ BitVec 32) (_ BitVec 64))) (size!27886 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4690 0))(
  ( (LongMapFixedSize!4691 (defaultEntry!5636 Int) (mask!27255 (_ BitVec 32)) (extraKeys!5368 (_ BitVec 32)) (zeroValue!5472 V!32303) (minValue!5472 V!32303) (_size!2400 (_ BitVec 32)) (_keys!10506 array!56996) (_values!5659 array!56994) (_vacant!2400 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4690)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56996 (_ BitVec 32)) Bool)

(assert (=> b!943150 (= res!633854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10506 thiss!1141) (mask!27255 thiss!1141)))))

(declare-fun mapIsEmpty!32576 () Bool)

(declare-fun mapRes!32576 () Bool)

(assert (=> mapIsEmpty!32576 mapRes!32576))

(declare-fun b!943151 () Bool)

(declare-fun e!530317 () Bool)

(declare-fun tp_is_empty!20503 () Bool)

(assert (=> b!943151 (= e!530317 tp_is_empty!20503)))

(declare-fun b!943152 () Bool)

(declare-fun res!633850 () Bool)

(assert (=> b!943152 (=> (not res!633850) (not e!530313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943152 (= res!633850 (validMask!0 (mask!27255 thiss!1141)))))

(declare-fun b!943153 () Bool)

(declare-fun res!633851 () Bool)

(assert (=> b!943153 (=> (not res!633851) (not e!530313))))

(assert (=> b!943153 (= res!633851 (and (= (size!27885 (_values!5659 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27255 thiss!1141))) (= (size!27886 (_keys!10506 thiss!1141)) (size!27885 (_values!5659 thiss!1141))) (bvsge (mask!27255 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5368 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5368 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!32576 () Bool)

(declare-fun tp!62492 () Bool)

(assert (=> mapNonEmpty!32576 (= mapRes!32576 (and tp!62492 e!530317))))

(declare-fun mapValue!32576 () ValueCell!9770)

(declare-fun mapKey!32576 () (_ BitVec 32))

(declare-fun mapRest!32576 () (Array (_ BitVec 32) ValueCell!9770))

(assert (=> mapNonEmpty!32576 (= (arr!27419 (_values!5659 thiss!1141)) (store mapRest!32576 mapKey!32576 mapValue!32576))))

(declare-fun b!943155 () Bool)

(declare-fun res!633853 () Bool)

(assert (=> b!943155 (=> (not res!633853) (not e!530313))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943155 (= res!633853 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943156 () Bool)

(declare-fun res!633855 () Bool)

(assert (=> b!943156 (=> (not res!633855) (not e!530313))))

(declare-datatypes ((SeekEntryResult!9039 0))(
  ( (MissingZero!9039 (index!38526 (_ BitVec 32))) (Found!9039 (index!38527 (_ BitVec 32))) (Intermediate!9039 (undefined!9851 Bool) (index!38528 (_ BitVec 32)) (x!80993 (_ BitVec 32))) (Undefined!9039) (MissingVacant!9039 (index!38529 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56996 (_ BitVec 32)) SeekEntryResult!9039)

(assert (=> b!943156 (= res!633855 (not (is-Found!9039 (seekEntry!0 key!756 (_keys!10506 thiss!1141) (mask!27255 thiss!1141)))))))

(declare-fun e!530318 () Bool)

(declare-fun e!530316 () Bool)

(declare-fun array_inv!21258 (array!56996) Bool)

(declare-fun array_inv!21259 (array!56994) Bool)

(assert (=> b!943157 (= e!530316 (and tp!62491 tp_is_empty!20503 (array_inv!21258 (_keys!10506 thiss!1141)) (array_inv!21259 (_values!5659 thiss!1141)) e!530318))))

(declare-fun b!943158 () Bool)

(assert (=> b!943158 (= e!530313 false)))

(declare-fun lt!425187 () Bool)

(declare-datatypes ((List!19379 0))(
  ( (Nil!19376) (Cons!19375 (h!20525 (_ BitVec 64)) (t!27702 List!19379)) )
))
(declare-fun arrayNoDuplicates!0 (array!56996 (_ BitVec 32) List!19379) Bool)

(assert (=> b!943158 (= lt!425187 (arrayNoDuplicates!0 (_keys!10506 thiss!1141) #b00000000000000000000000000000000 Nil!19376))))

(declare-fun b!943159 () Bool)

(declare-fun e!530315 () Bool)

(assert (=> b!943159 (= e!530318 (and e!530315 mapRes!32576))))

(declare-fun condMapEmpty!32576 () Bool)

(declare-fun mapDefault!32576 () ValueCell!9770)

