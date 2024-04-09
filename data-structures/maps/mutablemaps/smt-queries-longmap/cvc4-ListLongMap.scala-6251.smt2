; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80004 () Bool)

(assert start!80004)

(declare-fun b!940002 () Bool)

(declare-fun b_free!17831 () Bool)

(declare-fun b_next!17831 () Bool)

(assert (=> b!940002 (= b_free!17831 (not b_next!17831))))

(declare-fun tp!61968 () Bool)

(declare-fun b_and!29261 () Bool)

(assert (=> b!940002 (= tp!61968 b_and!29261)))

(declare-fun b!940000 () Bool)

(declare-fun e!528216 () Bool)

(declare-fun tp_is_empty!20339 () Bool)

(assert (=> b!940000 (= e!528216 tp_is_empty!20339)))

(declare-fun b!940001 () Bool)

(declare-fun e!528214 () Bool)

(assert (=> b!940001 (= e!528214 false)))

(declare-datatypes ((SeekEntryResult!8979 0))(
  ( (MissingZero!8979 (index!38286 (_ BitVec 32))) (Found!8979 (index!38287 (_ BitVec 32))) (Intermediate!8979 (undefined!9791 Bool) (index!38288 (_ BitVec 32)) (x!80601 (_ BitVec 32))) (Undefined!8979) (MissingVacant!8979 (index!38289 (_ BitVec 32))) )
))
(declare-fun lt!424569 () SeekEntryResult!8979)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32083 0))(
  ( (V!32084 (val!10220 Int)) )
))
(declare-datatypes ((ValueCell!9688 0))(
  ( (ValueCellFull!9688 (v!12751 V!32083)) (EmptyCell!9688) )
))
(declare-datatypes ((array!56648 0))(
  ( (array!56649 (arr!27255 (Array (_ BitVec 32) ValueCell!9688)) (size!27717 (_ BitVec 32))) )
))
(declare-datatypes ((array!56650 0))(
  ( (array!56651 (arr!27256 (Array (_ BitVec 32) (_ BitVec 64))) (size!27718 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4526 0))(
  ( (LongMapFixedSize!4527 (defaultEntry!5554 Int) (mask!27080 (_ BitVec 32)) (extraKeys!5286 (_ BitVec 32)) (zeroValue!5390 V!32083) (minValue!5390 V!32083) (_size!2318 (_ BitVec 32)) (_keys!10400 array!56650) (_values!5577 array!56648) (_vacant!2318 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4526)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56650 (_ BitVec 32)) SeekEntryResult!8979)

(assert (=> b!940001 (= lt!424569 (seekEntry!0 key!756 (_keys!10400 thiss!1141) (mask!27080 thiss!1141)))))

(declare-fun e!528211 () Bool)

(declare-fun e!528215 () Bool)

(declare-fun array_inv!21142 (array!56650) Bool)

(declare-fun array_inv!21143 (array!56648) Bool)

(assert (=> b!940002 (= e!528215 (and tp!61968 tp_is_empty!20339 (array_inv!21142 (_keys!10400 thiss!1141)) (array_inv!21143 (_values!5577 thiss!1141)) e!528211))))

(declare-fun mapIsEmpty!32299 () Bool)

(declare-fun mapRes!32299 () Bool)

(assert (=> mapIsEmpty!32299 mapRes!32299))

(declare-fun b!940003 () Bool)

(assert (=> b!940003 (= e!528211 (and e!528216 mapRes!32299))))

(declare-fun condMapEmpty!32299 () Bool)

(declare-fun mapDefault!32299 () ValueCell!9688)

