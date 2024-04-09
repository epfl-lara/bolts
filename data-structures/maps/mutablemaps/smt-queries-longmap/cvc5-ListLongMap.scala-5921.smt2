; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76976 () Bool)

(assert start!76976)

(declare-fun b!899091 () Bool)

(declare-fun b_free!16027 () Bool)

(declare-fun b_next!16027 () Bool)

(assert (=> b!899091 (= b_free!16027 (not b_next!16027))))

(declare-fun tp!56159 () Bool)

(declare-fun b_and!26351 () Bool)

(assert (=> b!899091 (= tp!56159 b_and!26351)))

(declare-fun mapNonEmpty!29195 () Bool)

(declare-fun mapRes!29195 () Bool)

(declare-fun tp!56158 () Bool)

(declare-fun e!503070 () Bool)

(assert (=> mapNonEmpty!29195 (= mapRes!29195 (and tp!56158 e!503070))))

(declare-datatypes ((V!29439 0))(
  ( (V!29440 (val!9228 Int)) )
))
(declare-datatypes ((ValueCell!8696 0))(
  ( (ValueCellFull!8696 (v!11718 V!29439)) (EmptyCell!8696) )
))
(declare-fun mapValue!29195 () ValueCell!8696)

(declare-datatypes ((array!52738 0))(
  ( (array!52739 (arr!25340 (Array (_ BitVec 32) (_ BitVec 64))) (size!25798 (_ BitVec 32))) )
))
(declare-datatypes ((array!52740 0))(
  ( (array!52741 (arr!25341 (Array (_ BitVec 32) ValueCell!8696)) (size!25799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4408 0))(
  ( (LongMapFixedSize!4409 (defaultEntry!5426 Int) (mask!26171 (_ BitVec 32)) (extraKeys!5146 (_ BitVec 32)) (zeroValue!5250 V!29439) (minValue!5250 V!29439) (_size!2259 (_ BitVec 32)) (_keys!10209 array!52738) (_values!5437 array!52740) (_vacant!2259 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4408)

(declare-fun mapRest!29195 () (Array (_ BitVec 32) ValueCell!8696))

(declare-fun mapKey!29195 () (_ BitVec 32))

(assert (=> mapNonEmpty!29195 (= (arr!25341 (_values!5437 thiss!1181)) (store mapRest!29195 mapKey!29195 mapValue!29195))))

(declare-fun b!899088 () Bool)

(declare-fun e!503076 () Bool)

(declare-datatypes ((SeekEntryResult!8917 0))(
  ( (MissingZero!8917 (index!38038 (_ BitVec 32))) (Found!8917 (index!38039 (_ BitVec 32))) (Intermediate!8917 (undefined!9729 Bool) (index!38040 (_ BitVec 32)) (x!76609 (_ BitVec 32))) (Undefined!8917) (MissingVacant!8917 (index!38041 (_ BitVec 32))) )
))
(declare-fun lt!406042 () SeekEntryResult!8917)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!899088 (= e!503076 (inRange!0 (index!38039 lt!406042) (mask!26171 thiss!1181)))))

(declare-fun res!607529 () Bool)

(declare-fun e!503074 () Bool)

(assert (=> start!76976 (=> (not res!607529) (not e!503074))))

(declare-fun valid!1680 (LongMapFixedSize!4408) Bool)

(assert (=> start!76976 (= res!607529 (valid!1680 thiss!1181))))

(assert (=> start!76976 e!503074))

(declare-fun e!503071 () Bool)

(assert (=> start!76976 e!503071))

(assert (=> start!76976 true))

(declare-fun b!899089 () Bool)

(declare-fun res!607532 () Bool)

(assert (=> b!899089 (=> (not res!607532) (not e!503074))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!899089 (= res!607532 (not (= key!785 (bvneg key!785))))))

(declare-fun b!899090 () Bool)

(declare-fun e!503068 () Bool)

(assert (=> b!899090 (= e!503068 (or (not (= (size!25799 (_values!5437 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26171 thiss!1181)))) (not (= (size!25798 (_keys!10209 thiss!1181)) (size!25799 (_values!5437 thiss!1181)))) (bvsge (mask!26171 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun e!503073 () Bool)

(declare-fun tp_is_empty!18355 () Bool)

(declare-fun array_inv!19860 (array!52738) Bool)

(declare-fun array_inv!19861 (array!52740) Bool)

(assert (=> b!899091 (= e!503071 (and tp!56159 tp_is_empty!18355 (array_inv!19860 (_keys!10209 thiss!1181)) (array_inv!19861 (_values!5437 thiss!1181)) e!503073))))

(declare-fun b!899092 () Bool)

(assert (=> b!899092 (= e!503070 tp_is_empty!18355)))

(declare-fun mapIsEmpty!29195 () Bool)

(assert (=> mapIsEmpty!29195 mapRes!29195))

(declare-fun b!899093 () Bool)

(declare-fun e!503072 () Bool)

(assert (=> b!899093 (= e!503073 (and e!503072 mapRes!29195))))

(declare-fun condMapEmpty!29195 () Bool)

(declare-fun mapDefault!29195 () ValueCell!8696)

