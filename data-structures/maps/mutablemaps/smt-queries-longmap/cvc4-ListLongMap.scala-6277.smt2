; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80316 () Bool)

(assert start!80316)

(declare-fun b!943022 () Bool)

(declare-fun b_free!17987 () Bool)

(declare-fun b_next!17987 () Bool)

(assert (=> b!943022 (= b_free!17987 (not b_next!17987))))

(declare-fun tp!62467 () Bool)

(declare-fun b_and!29417 () Bool)

(assert (=> b!943022 (= tp!62467 b_and!29417)))

(declare-fun b!943018 () Bool)

(declare-fun res!633768 () Bool)

(declare-fun e!530244 () Bool)

(assert (=> b!943018 (=> (not res!633768) (not e!530244))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943018 (= res!633768 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943019 () Bool)

(assert (=> b!943019 (= e!530244 false)))

(declare-fun lt!425175 () Bool)

(declare-datatypes ((V!32291 0))(
  ( (V!32292 (val!10298 Int)) )
))
(declare-datatypes ((ValueCell!9766 0))(
  ( (ValueCellFull!9766 (v!12829 V!32291)) (EmptyCell!9766) )
))
(declare-datatypes ((array!56978 0))(
  ( (array!56979 (arr!27411 (Array (_ BitVec 32) ValueCell!9766)) (size!27877 (_ BitVec 32))) )
))
(declare-datatypes ((array!56980 0))(
  ( (array!56981 (arr!27412 (Array (_ BitVec 32) (_ BitVec 64))) (size!27878 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4682 0))(
  ( (LongMapFixedSize!4683 (defaultEntry!5632 Int) (mask!27247 (_ BitVec 32)) (extraKeys!5364 (_ BitVec 32)) (zeroValue!5468 V!32291) (minValue!5468 V!32291) (_size!2396 (_ BitVec 32)) (_keys!10502 array!56980) (_values!5655 array!56978) (_vacant!2396 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4682)

(declare-datatypes ((List!19372 0))(
  ( (Nil!19369) (Cons!19368 (h!20518 (_ BitVec 64)) (t!27695 List!19372)) )
))
(declare-fun arrayNoDuplicates!0 (array!56980 (_ BitVec 32) List!19372) Bool)

(assert (=> b!943019 (= lt!425175 (arrayNoDuplicates!0 (_keys!10502 thiss!1141) #b00000000000000000000000000000000 Nil!19369))))

(declare-fun b!943020 () Bool)

(declare-fun res!633770 () Bool)

(assert (=> b!943020 (=> (not res!633770) (not e!530244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56980 (_ BitVec 32)) Bool)

(assert (=> b!943020 (= res!633770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10502 thiss!1141) (mask!27247 thiss!1141)))))

(declare-fun b!943021 () Bool)

(declare-fun res!633769 () Bool)

(assert (=> b!943021 (=> (not res!633769) (not e!530244))))

(declare-datatypes ((SeekEntryResult!9035 0))(
  ( (MissingZero!9035 (index!38510 (_ BitVec 32))) (Found!9035 (index!38511 (_ BitVec 32))) (Intermediate!9035 (undefined!9847 Bool) (index!38512 (_ BitVec 32)) (x!80973 (_ BitVec 32))) (Undefined!9035) (MissingVacant!9035 (index!38513 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56980 (_ BitVec 32)) SeekEntryResult!9035)

(assert (=> b!943021 (= res!633769 (not (is-Found!9035 (seekEntry!0 key!756 (_keys!10502 thiss!1141) (mask!27247 thiss!1141)))))))

(declare-fun e!530246 () Bool)

(declare-fun tp_is_empty!20495 () Bool)

(declare-fun e!530245 () Bool)

(declare-fun array_inv!21250 (array!56980) Bool)

(declare-fun array_inv!21251 (array!56978) Bool)

(assert (=> b!943022 (= e!530246 (and tp!62467 tp_is_empty!20495 (array_inv!21250 (_keys!10502 thiss!1141)) (array_inv!21251 (_values!5655 thiss!1141)) e!530245))))

(declare-fun b!943023 () Bool)

(declare-fun e!530241 () Bool)

(declare-fun mapRes!32564 () Bool)

(assert (=> b!943023 (= e!530245 (and e!530241 mapRes!32564))))

(declare-fun condMapEmpty!32564 () Bool)

(declare-fun mapDefault!32564 () ValueCell!9766)

