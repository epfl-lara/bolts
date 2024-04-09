; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77182 () Bool)

(assert start!77182)

(declare-fun b!900326 () Bool)

(declare-fun b_free!16051 () Bool)

(declare-fun b_next!16051 () Bool)

(assert (=> b!900326 (= b_free!16051 (not b_next!16051))))

(declare-fun tp!56244 () Bool)

(declare-fun b_and!26391 () Bool)

(assert (=> b!900326 (= tp!56244 b_and!26391)))

(declare-fun mapIsEmpty!29245 () Bool)

(declare-fun mapRes!29245 () Bool)

(assert (=> mapIsEmpty!29245 mapRes!29245))

(declare-fun b!900323 () Bool)

(declare-fun res!608114 () Bool)

(declare-fun e!503944 () Bool)

(assert (=> b!900323 (=> res!608114 e!503944)))

(declare-datatypes ((array!52794 0))(
  ( (array!52795 (arr!25364 (Array (_ BitVec 32) (_ BitVec 64))) (size!25824 (_ BitVec 32))) )
))
(declare-datatypes ((V!29471 0))(
  ( (V!29472 (val!9240 Int)) )
))
(declare-datatypes ((ValueCell!8708 0))(
  ( (ValueCellFull!8708 (v!11734 V!29471)) (EmptyCell!8708) )
))
(declare-datatypes ((array!52796 0))(
  ( (array!52797 (arr!25365 (Array (_ BitVec 32) ValueCell!8708)) (size!25825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4432 0))(
  ( (LongMapFixedSize!4433 (defaultEntry!5450 Int) (mask!26230 (_ BitVec 32)) (extraKeys!5176 (_ BitVec 32)) (zeroValue!5280 V!29471) (minValue!5280 V!29471) (_size!2271 (_ BitVec 32)) (_keys!10250 array!52794) (_values!5467 array!52796) (_vacant!2271 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4432)

(assert (=> b!900323 (= res!608114 (or (not (= (size!25825 (_values!5467 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26230 thiss!1181)))) (not (= (size!25824 (_keys!10250 thiss!1181)) (size!25825 (_values!5467 thiss!1181)))) (bvslt (mask!26230 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5176 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5176 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!900324 () Bool)

(declare-fun res!608112 () Bool)

(declare-fun e!503951 () Bool)

(assert (=> b!900324 (=> (not res!608112) (not e!503951))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!900324 (= res!608112 (not (= key!785 (bvneg key!785))))))

(declare-fun res!608110 () Bool)

(assert (=> start!77182 (=> (not res!608110) (not e!503951))))

(declare-fun valid!1687 (LongMapFixedSize!4432) Bool)

(assert (=> start!77182 (= res!608110 (valid!1687 thiss!1181))))

(assert (=> start!77182 e!503951))

(declare-fun e!503949 () Bool)

(assert (=> start!77182 e!503949))

(assert (=> start!77182 true))

(declare-fun b!900325 () Bool)

(declare-fun res!608111 () Bool)

(assert (=> b!900325 (=> res!608111 e!503944)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52794 (_ BitVec 32)) Bool)

(assert (=> b!900325 (= res!608111 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10250 thiss!1181) (mask!26230 thiss!1181))))))

(declare-fun tp_is_empty!18379 () Bool)

(declare-fun e!503946 () Bool)

(declare-fun array_inv!19876 (array!52794) Bool)

(declare-fun array_inv!19877 (array!52796) Bool)

(assert (=> b!900326 (= e!503949 (and tp!56244 tp_is_empty!18379 (array_inv!19876 (_keys!10250 thiss!1181)) (array_inv!19877 (_values!5467 thiss!1181)) e!503946))))

(declare-fun b!900327 () Bool)

(declare-fun e!503948 () Bool)

(assert (=> b!900327 (= e!503948 tp_is_empty!18379)))

(declare-fun b!900328 () Bool)

(declare-datatypes ((List!17932 0))(
  ( (Nil!17929) (Cons!17928 (h!19074 (_ BitVec 64)) (t!25293 List!17932)) )
))
(declare-fun arrayNoDuplicates!0 (array!52794 (_ BitVec 32) List!17932) Bool)

(assert (=> b!900328 (= e!503944 (arrayNoDuplicates!0 (_keys!10250 thiss!1181) #b00000000000000000000000000000000 Nil!17929))))

(declare-fun b!900329 () Bool)

(declare-fun e!503947 () Bool)

(assert (=> b!900329 (= e!503951 (not e!503947))))

(declare-fun res!608109 () Bool)

(assert (=> b!900329 (=> res!608109 e!503947)))

(declare-datatypes ((SeekEntryResult!8926 0))(
  ( (MissingZero!8926 (index!38074 (_ BitVec 32))) (Found!8926 (index!38075 (_ BitVec 32))) (Intermediate!8926 (undefined!9738 Bool) (index!38076 (_ BitVec 32)) (x!76706 (_ BitVec 32))) (Undefined!8926) (MissingVacant!8926 (index!38077 (_ BitVec 32))) )
))
(declare-fun lt!406828 () SeekEntryResult!8926)

(assert (=> b!900329 (= res!608109 (not (is-Found!8926 lt!406828)))))

(declare-fun e!503945 () Bool)

(assert (=> b!900329 e!503945))

(declare-fun res!608108 () Bool)

(assert (=> b!900329 (=> res!608108 e!503945)))

(assert (=> b!900329 (= res!608108 (not (is-Found!8926 lt!406828)))))

(declare-datatypes ((Unit!30559 0))(
  ( (Unit!30560) )
))
(declare-fun lt!406826 () Unit!30559)

(declare-fun lemmaSeekEntryGivesInRangeIndex!107 (array!52794 array!52796 (_ BitVec 32) (_ BitVec 32) V!29471 V!29471 (_ BitVec 64)) Unit!30559)

(assert (=> b!900329 (= lt!406826 (lemmaSeekEntryGivesInRangeIndex!107 (_keys!10250 thiss!1181) (_values!5467 thiss!1181) (mask!26230 thiss!1181) (extraKeys!5176 thiss!1181) (zeroValue!5280 thiss!1181) (minValue!5280 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52794 (_ BitVec 32)) SeekEntryResult!8926)

(assert (=> b!900329 (= lt!406828 (seekEntry!0 key!785 (_keys!10250 thiss!1181) (mask!26230 thiss!1181)))))

(declare-fun b!900330 () Bool)

(declare-fun e!503950 () Bool)

(assert (=> b!900330 (= e!503950 tp_is_empty!18379)))

(declare-fun b!900331 () Bool)

(assert (=> b!900331 (= e!503946 (and e!503950 mapRes!29245))))

(declare-fun condMapEmpty!29245 () Bool)

(declare-fun mapDefault!29245 () ValueCell!8708)

