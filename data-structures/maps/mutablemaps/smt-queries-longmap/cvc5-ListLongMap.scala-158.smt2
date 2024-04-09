; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3016 () Bool)

(assert start!3016)

(declare-fun b!17826 () Bool)

(declare-fun b_free!625 () Bool)

(declare-fun b_next!625 () Bool)

(assert (=> b!17826 (= b_free!625 (not b_next!625))))

(declare-fun tp!3066 () Bool)

(declare-fun b_and!1275 () Bool)

(assert (=> b!17826 (= tp!3066 b_and!1275)))

(declare-fun mapIsEmpty!768 () Bool)

(declare-fun mapRes!768 () Bool)

(assert (=> mapIsEmpty!768 mapRes!768))

(declare-fun mapNonEmpty!768 () Bool)

(declare-fun tp!3065 () Bool)

(declare-fun e!11294 () Bool)

(assert (=> mapNonEmpty!768 (= mapRes!768 (and tp!3065 e!11294))))

(declare-datatypes ((V!1011 0))(
  ( (V!1012 (val!471 Int)) )
))
(declare-datatypes ((ValueCell!245 0))(
  ( (ValueCellFull!245 (v!1446 V!1011)) (EmptyCell!245) )
))
(declare-fun mapRest!768 () (Array (_ BitVec 32) ValueCell!245))

(declare-fun mapValue!768 () ValueCell!245)

(declare-datatypes ((array!975 0))(
  ( (array!976 (arr!469 (Array (_ BitVec 32) ValueCell!245)) (size!559 (_ BitVec 32))) )
))
(declare-datatypes ((array!977 0))(
  ( (array!978 (arr!470 (Array (_ BitVec 32) (_ BitVec 64))) (size!560 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!76 0))(
  ( (LongMapFixedSize!77 (defaultEntry!1649 Int) (mask!4574 (_ BitVec 32)) (extraKeys!1562 (_ BitVec 32)) (zeroValue!1585 V!1011) (minValue!1585 V!1011) (_size!70 (_ BitVec 32)) (_keys!3074 array!977) (_values!1646 array!975) (_vacant!70 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!76 0))(
  ( (Cell!77 (v!1447 LongMapFixedSize!76)) )
))
(declare-datatypes ((LongMap!76 0))(
  ( (LongMap!77 (underlying!49 Cell!76)) )
))
(declare-fun thiss!848 () LongMap!76)

(declare-fun mapKey!768 () (_ BitVec 32))

(assert (=> mapNonEmpty!768 (= (arr!469 (_values!1646 (v!1447 (underlying!49 thiss!848)))) (store mapRest!768 mapKey!768 mapValue!768))))

(declare-fun b!17819 () Bool)

(declare-datatypes ((tuple2!748 0))(
  ( (tuple2!749 (_1!375 Bool) (_2!375 LongMap!76)) )
))
(declare-fun e!11297 () tuple2!748)

(declare-fun repack!14 (LongMap!76) tuple2!748)

(assert (=> b!17819 (= e!11297 (repack!14 thiss!848))))

(declare-fun b!17820 () Bool)

(declare-fun e!11298 () Bool)

(declare-fun e!11300 () Bool)

(assert (=> b!17820 (= e!11298 e!11300)))

(declare-fun res!12669 () Bool)

(declare-fun e!11302 () Bool)

(assert (=> start!3016 (=> (not res!12669) (not e!11302))))

(declare-fun valid!41 (LongMap!76) Bool)

(assert (=> start!3016 (= res!12669 (valid!41 thiss!848))))

(assert (=> start!3016 e!11302))

(declare-fun e!11296 () Bool)

(assert (=> start!3016 e!11296))

(declare-fun b!17821 () Bool)

(declare-fun e!11303 () Bool)

(declare-fun e!11301 () Bool)

(assert (=> b!17821 (= e!11303 (and e!11301 mapRes!768))))

(declare-fun condMapEmpty!768 () Bool)

(declare-fun mapDefault!768 () ValueCell!245)

