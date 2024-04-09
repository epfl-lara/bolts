; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3290 () Bool)

(assert start!3290)

(declare-fun b!20184 () Bool)

(declare-fun b_free!709 () Bool)

(declare-fun b_next!709 () Bool)

(assert (=> b!20184 (= b_free!709 (not b_next!709))))

(declare-fun tp!3355 () Bool)

(declare-fun b_and!1387 () Bool)

(assert (=> b!20184 (= tp!3355 b_and!1387)))

(declare-fun bm!978 () Bool)

(declare-datatypes ((V!1123 0))(
  ( (V!1124 (val!513 Int)) )
))
(declare-datatypes ((ValueCell!287 0))(
  ( (ValueCellFull!287 (v!1543 V!1123)) (EmptyCell!287) )
))
(declare-datatypes ((array!1163 0))(
  ( (array!1164 (arr!553 (Array (_ BitVec 32) ValueCell!287)) (size!646 (_ BitVec 32))) )
))
(declare-datatypes ((array!1165 0))(
  ( (array!1166 (arr!554 (Array (_ BitVec 32) (_ BitVec 64))) (size!647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!160 0))(
  ( (LongMapFixedSize!161 (defaultEntry!1703 Int) (mask!4665 (_ BitVec 32)) (extraKeys!1609 (_ BitVec 32)) (zeroValue!1633 V!1123) (minValue!1633 V!1123) (_size!118 (_ BitVec 32)) (_keys!3127 array!1165) (_values!1695 array!1163) (_vacant!118 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!826 0))(
  ( (tuple2!827 (_1!416 Bool) (_2!416 LongMapFixedSize!160)) )
))
(declare-fun call!981 () tuple2!826)

(declare-fun call!982 () tuple2!826)

(assert (=> bm!978 (= call!981 call!982)))

(declare-fun b!20180 () Bool)

(declare-datatypes ((Cell!160 0))(
  ( (Cell!161 (v!1544 LongMapFixedSize!160)) )
))
(declare-datatypes ((tuple2!828 0))(
  ( (tuple2!829 (_1!417 Bool) (_2!417 Cell!160)) )
))
(declare-fun e!13165 () tuple2!828)

(declare-fun lt!5865 () tuple2!826)

(assert (=> b!20180 (= e!13165 (tuple2!829 (_1!416 lt!5865) (Cell!161 (_2!416 lt!5865))))))

(assert (=> b!20180 (= lt!5865 call!981)))

(declare-fun b!20181 () Bool)

(declare-fun e!13171 () tuple2!828)

(declare-fun e!13173 () tuple2!828)

(assert (=> b!20181 (= e!13171 e!13173)))

(declare-fun c!2175 () Bool)

(declare-fun lt!5869 () Bool)

(declare-datatypes ((LongMap!160 0))(
  ( (LongMap!161 (underlying!91 Cell!160)) )
))
(declare-fun thiss!938 () LongMap!160)

(assert (=> b!20181 (= c!2175 (and (not lt!5869) (= (bvand (extraKeys!1609 (v!1544 (underlying!91 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!20182 () Bool)

(declare-fun c!2173 () Bool)

(assert (=> b!20182 (= c!2173 (and (not (= (bvand (extraKeys!1609 (v!1544 (underlying!91 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!5869))))

(assert (=> b!20182 (= e!13173 e!13165)))

(declare-fun b!20183 () Bool)

(declare-fun e!13167 () Bool)

(declare-fun e!13170 () Bool)

(assert (=> b!20183 (= e!13167 e!13170)))

(declare-fun tp_is_empty!973 () Bool)

(declare-fun e!13172 () Bool)

(declare-fun array_inv!391 (array!1165) Bool)

(declare-fun array_inv!392 (array!1163) Bool)

(assert (=> b!20184 (= e!13170 (and tp!3355 tp_is_empty!973 (array_inv!391 (_keys!3127 (v!1544 (underlying!91 thiss!938)))) (array_inv!392 (_values!1695 (v!1544 (underlying!91 thiss!938)))) e!13172))))

(declare-fun b!20185 () Bool)

(declare-fun e!13168 () Bool)

(assert (=> b!20185 (= e!13168 false)))

(declare-fun lt!5866 () tuple2!828)

(assert (=> b!20185 (= lt!5866 e!13171)))

(declare-fun c!2174 () Bool)

(assert (=> b!20185 (= c!2174 (and (not lt!5869) (not (= (bvand (extraKeys!1609 (v!1544 (underlying!91 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!20185 (= lt!5869 (= (bvand (extraKeys!1609 (v!1544 (underlying!91 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!5868 () LongMapFixedSize!160)

(declare-fun getNewLongMapFixedSize!17 ((_ BitVec 32) Int) LongMapFixedSize!160)

(declare-fun computeNewMask!14 (LongMap!160 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20185 (= lt!5868 (getNewLongMapFixedSize!17 (computeNewMask!14 thiss!938 (mask!4665 (v!1544 (underlying!91 thiss!938))) (_vacant!118 (v!1544 (underlying!91 thiss!938))) (_size!118 (v!1544 (underlying!91 thiss!938)))) (defaultEntry!1703 (v!1544 (underlying!91 thiss!938)))))))

(declare-fun res!13407 () Bool)

(assert (=> start!3290 (=> (not res!13407) (not e!13168))))

(declare-fun valid!83 (LongMap!160) Bool)

(assert (=> start!3290 (= res!13407 (valid!83 thiss!938))))

(assert (=> start!3290 e!13168))

(declare-fun e!13169 () Bool)

(assert (=> start!3290 e!13169))

(declare-fun b!20186 () Bool)

(declare-fun e!13163 () Bool)

(assert (=> b!20186 (= e!13163 tp_is_empty!973)))

(declare-fun b!20187 () Bool)

(declare-fun lt!5867 () tuple2!826)

(assert (=> b!20187 (= lt!5867 call!981)))

(assert (=> b!20187 (= e!13173 (tuple2!829 (_1!416 lt!5867) (Cell!161 (_2!416 lt!5867))))))

(declare-fun b!20188 () Bool)

(declare-fun e!13164 () Bool)

(declare-fun mapRes!931 () Bool)

(assert (=> b!20188 (= e!13172 (and e!13164 mapRes!931))))

(declare-fun condMapEmpty!931 () Bool)

(declare-fun mapDefault!931 () ValueCell!287)

