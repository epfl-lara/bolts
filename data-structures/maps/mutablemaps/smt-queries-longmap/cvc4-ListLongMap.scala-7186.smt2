; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92036 () Bool)

(assert start!92036)

(declare-fun b!1046288 () Bool)

(declare-fun b_free!21173 () Bool)

(declare-fun b_next!21173 () Bool)

(assert (=> b!1046288 (= b_free!21173 (not b_next!21173))))

(declare-fun tp!74782 () Bool)

(declare-fun b_and!33859 () Bool)

(assert (=> b!1046288 (= tp!74782 b_and!33859)))

(declare-fun e!593275 () Bool)

(declare-fun b!1046286 () Bool)

(declare-datatypes ((V!38063 0))(
  ( (V!38064 (val!12497 Int)) )
))
(declare-datatypes ((ValueCell!11743 0))(
  ( (ValueCellFull!11743 (v!15095 V!38063)) (EmptyCell!11743) )
))
(declare-datatypes ((Unit!34202 0))(
  ( (Unit!34203) )
))
(declare-datatypes ((array!65948 0))(
  ( (array!65949 (arr!31715 (Array (_ BitVec 32) (_ BitVec 64))) (size!32251 (_ BitVec 32))) )
))
(declare-datatypes ((array!65950 0))(
  ( (array!65951 (arr!31716 (Array (_ BitVec 32) ValueCell!11743)) (size!32252 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6080 0))(
  ( (LongMapFixedSize!6081 (defaultEntry!6438 Int) (mask!30578 (_ BitVec 32)) (extraKeys!6166 (_ BitVec 32)) (zeroValue!6272 V!38063) (minValue!6272 V!38063) (_size!3095 (_ BitVec 32)) (_keys!11709 array!65948) (_values!6461 array!65950) (_vacant!3095 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15942 0))(
  ( (tuple2!15943 (_1!7981 Unit!34202) (_2!7981 LongMapFixedSize!6080)) )
))
(declare-fun lt!462227 () tuple2!15942)

(declare-fun thiss!1427 () LongMapFixedSize!6080)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15944 0))(
  ( (tuple2!15945 (_1!7982 (_ BitVec 64)) (_2!7982 V!38063)) )
))
(declare-datatypes ((List!22166 0))(
  ( (Nil!22163) (Cons!22162 (h!23370 tuple2!15944) (t!31477 List!22166)) )
))
(declare-datatypes ((ListLongMap!13925 0))(
  ( (ListLongMap!13926 (toList!6978 List!22166)) )
))
(declare-fun map!14835 (LongMapFixedSize!6080) ListLongMap!13925)

(declare-fun -!554 (ListLongMap!13925 (_ BitVec 64)) ListLongMap!13925)

(assert (=> b!1046286 (= e!593275 (= (map!14835 (_2!7981 lt!462227)) (-!554 (map!14835 thiss!1427) key!909)))))

(declare-fun b!1046287 () Bool)

(declare-fun e!593270 () Unit!34202)

(declare-fun Unit!34204 () Unit!34202)

(assert (=> b!1046287 (= e!593270 Unit!34204)))

(declare-fun lt!462229 () Unit!34202)

(declare-fun lemmaKeyInListMapIsInArray!361 (array!65948 array!65950 (_ BitVec 32) (_ BitVec 32) V!38063 V!38063 (_ BitVec 64) Int) Unit!34202)

(assert (=> b!1046287 (= lt!462229 (lemmaKeyInListMapIsInArray!361 (_keys!11709 (_2!7981 lt!462227)) (_values!6461 (_2!7981 lt!462227)) (mask!30578 (_2!7981 lt!462227)) (extraKeys!6166 (_2!7981 lt!462227)) (zeroValue!6272 (_2!7981 lt!462227)) (minValue!6272 (_2!7981 lt!462227)) key!909 (defaultEntry!6438 (_2!7981 lt!462227))))))

(declare-fun c!106336 () Bool)

(assert (=> b!1046287 (= c!106336 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!696599 () Bool)

(declare-fun e!593271 () Bool)

(assert (=> b!1046287 (= res!696599 e!593271)))

(declare-fun e!593274 () Bool)

(assert (=> b!1046287 (=> (not res!696599) (not e!593274))))

(assert (=> b!1046287 e!593274))

(declare-fun e!593267 () Bool)

(declare-fun e!593268 () Bool)

(declare-fun tp_is_empty!24893 () Bool)

(declare-fun array_inv!24339 (array!65948) Bool)

(declare-fun array_inv!24340 (array!65950) Bool)

(assert (=> b!1046288 (= e!593268 (and tp!74782 tp_is_empty!24893 (array_inv!24339 (_keys!11709 thiss!1427)) (array_inv!24340 (_values!6461 thiss!1427)) e!593267))))

(declare-fun b!1046289 () Bool)

(declare-fun Unit!34205 () Unit!34202)

(assert (=> b!1046289 (= e!593270 Unit!34205)))

(declare-fun b!1046290 () Bool)

(declare-fun e!593265 () Bool)

(declare-fun mapRes!38984 () Bool)

(assert (=> b!1046290 (= e!593267 (and e!593265 mapRes!38984))))

(declare-fun condMapEmpty!38984 () Bool)

(declare-fun mapDefault!38984 () ValueCell!11743)

