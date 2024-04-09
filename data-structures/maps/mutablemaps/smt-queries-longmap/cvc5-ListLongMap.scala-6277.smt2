; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80312 () Bool)

(assert start!80312)

(declare-fun b!942952 () Bool)

(declare-fun b_free!17983 () Bool)

(declare-fun b_next!17983 () Bool)

(assert (=> b!942952 (= b_free!17983 (not b_next!17983))))

(declare-fun tp!62456 () Bool)

(declare-fun b_and!29413 () Bool)

(assert (=> b!942952 (= tp!62456 b_and!29413)))

(declare-fun tp_is_empty!20491 () Bool)

(declare-fun e!530208 () Bool)

(declare-datatypes ((V!32287 0))(
  ( (V!32288 (val!10296 Int)) )
))
(declare-datatypes ((ValueCell!9764 0))(
  ( (ValueCellFull!9764 (v!12827 V!32287)) (EmptyCell!9764) )
))
(declare-datatypes ((array!56970 0))(
  ( (array!56971 (arr!27407 (Array (_ BitVec 32) ValueCell!9764)) (size!27873 (_ BitVec 32))) )
))
(declare-datatypes ((array!56972 0))(
  ( (array!56973 (arr!27408 (Array (_ BitVec 32) (_ BitVec 64))) (size!27874 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4678 0))(
  ( (LongMapFixedSize!4679 (defaultEntry!5630 Int) (mask!27245 (_ BitVec 32)) (extraKeys!5362 (_ BitVec 32)) (zeroValue!5466 V!32287) (minValue!5466 V!32287) (_size!2394 (_ BitVec 32)) (_keys!10500 array!56972) (_values!5653 array!56970) (_vacant!2394 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4678)

(declare-fun e!530210 () Bool)

(declare-fun array_inv!21246 (array!56972) Bool)

(declare-fun array_inv!21247 (array!56970) Bool)

(assert (=> b!942952 (= e!530208 (and tp!62456 tp_is_empty!20491 (array_inv!21246 (_keys!10500 thiss!1141)) (array_inv!21247 (_values!5653 thiss!1141)) e!530210))))

(declare-fun mapNonEmpty!32558 () Bool)

(declare-fun mapRes!32558 () Bool)

(declare-fun tp!62455 () Bool)

(declare-fun e!530205 () Bool)

(assert (=> mapNonEmpty!32558 (= mapRes!32558 (and tp!62455 e!530205))))

(declare-fun mapRest!32558 () (Array (_ BitVec 32) ValueCell!9764))

(declare-fun mapValue!32558 () ValueCell!9764)

(declare-fun mapKey!32558 () (_ BitVec 32))

(assert (=> mapNonEmpty!32558 (= (arr!27407 (_values!5653 thiss!1141)) (store mapRest!32558 mapKey!32558 mapValue!32558))))

(declare-fun b!942953 () Bool)

(declare-fun res!633727 () Bool)

(declare-fun e!530207 () Bool)

(assert (=> b!942953 (=> (not res!633727) (not e!530207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56972 (_ BitVec 32)) Bool)

(assert (=> b!942953 (= res!633727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10500 thiss!1141) (mask!27245 thiss!1141)))))

(declare-fun b!942954 () Bool)

(declare-fun res!633724 () Bool)

(assert (=> b!942954 (=> (not res!633724) (not e!530207))))

(assert (=> b!942954 (= res!633724 (and (= (size!27873 (_values!5653 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27245 thiss!1141))) (= (size!27874 (_keys!10500 thiss!1141)) (size!27873 (_values!5653 thiss!1141))) (bvsge (mask!27245 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5362 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5362 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!633723 () Bool)

(assert (=> start!80312 (=> (not res!633723) (not e!530207))))

(declare-fun valid!1769 (LongMapFixedSize!4678) Bool)

(assert (=> start!80312 (= res!633723 (valid!1769 thiss!1141))))

(assert (=> start!80312 e!530207))

(assert (=> start!80312 e!530208))

(assert (=> start!80312 true))

(declare-fun b!942955 () Bool)

(declare-fun res!633729 () Bool)

(assert (=> b!942955 (=> (not res!633729) (not e!530207))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9033 0))(
  ( (MissingZero!9033 (index!38502 (_ BitVec 32))) (Found!9033 (index!38503 (_ BitVec 32))) (Intermediate!9033 (undefined!9845 Bool) (index!38504 (_ BitVec 32)) (x!80971 (_ BitVec 32))) (Undefined!9033) (MissingVacant!9033 (index!38505 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56972 (_ BitVec 32)) SeekEntryResult!9033)

(assert (=> b!942955 (= res!633729 (not (is-Found!9033 (seekEntry!0 key!756 (_keys!10500 thiss!1141) (mask!27245 thiss!1141)))))))

(declare-fun b!942956 () Bool)

(declare-fun e!530206 () Bool)

(assert (=> b!942956 (= e!530210 (and e!530206 mapRes!32558))))

(declare-fun condMapEmpty!32558 () Bool)

(declare-fun mapDefault!32558 () ValueCell!9764)

