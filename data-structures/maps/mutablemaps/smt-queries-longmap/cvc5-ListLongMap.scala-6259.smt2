; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80048 () Bool)

(assert start!80048)

(declare-fun b!940656 () Bool)

(declare-fun b_free!17875 () Bool)

(declare-fun b_next!17875 () Bool)

(assert (=> b!940656 (= b_free!17875 (not b_next!17875))))

(declare-fun tp!62101 () Bool)

(declare-fun b_and!29305 () Bool)

(assert (=> b!940656 (= tp!62101 b_and!29305)))

(declare-fun mapNonEmpty!32365 () Bool)

(declare-fun mapRes!32365 () Bool)

(declare-fun tp!62100 () Bool)

(declare-fun e!528739 () Bool)

(assert (=> mapNonEmpty!32365 (= mapRes!32365 (and tp!62100 e!528739))))

(declare-datatypes ((V!32143 0))(
  ( (V!32144 (val!10242 Int)) )
))
(declare-datatypes ((ValueCell!9710 0))(
  ( (ValueCellFull!9710 (v!12773 V!32143)) (EmptyCell!9710) )
))
(declare-fun mapRest!32365 () (Array (_ BitVec 32) ValueCell!9710))

(declare-fun mapValue!32365 () ValueCell!9710)

(declare-fun mapKey!32365 () (_ BitVec 32))

(declare-datatypes ((array!56736 0))(
  ( (array!56737 (arr!27299 (Array (_ BitVec 32) ValueCell!9710)) (size!27761 (_ BitVec 32))) )
))
(declare-datatypes ((array!56738 0))(
  ( (array!56739 (arr!27300 (Array (_ BitVec 32) (_ BitVec 64))) (size!27762 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4570 0))(
  ( (LongMapFixedSize!4571 (defaultEntry!5576 Int) (mask!27118 (_ BitVec 32)) (extraKeys!5308 (_ BitVec 32)) (zeroValue!5412 V!32143) (minValue!5412 V!32143) (_size!2340 (_ BitVec 32)) (_keys!10422 array!56738) (_values!5599 array!56736) (_vacant!2340 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4570)

(assert (=> mapNonEmpty!32365 (= (arr!27299 (_values!5599 thiss!1141)) (store mapRest!32365 mapKey!32365 mapValue!32365))))

(declare-fun b!940657 () Bool)

(declare-fun e!528744 () Bool)

(declare-fun tp_is_empty!20383 () Bool)

(assert (=> b!940657 (= e!528744 tp_is_empty!20383)))

(declare-fun b!940658 () Bool)

(declare-fun res!632585 () Bool)

(declare-fun e!528738 () Bool)

(assert (=> b!940658 (=> (not res!632585) (not e!528738))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!940658 (= res!632585 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940659 () Bool)

(declare-fun e!528737 () Bool)

(assert (=> b!940659 (= e!528738 e!528737)))

(declare-fun res!632583 () Bool)

(assert (=> b!940659 (=> (not res!632583) (not e!528737))))

(declare-datatypes ((SeekEntryResult!8999 0))(
  ( (MissingZero!8999 (index!38366 (_ BitVec 32))) (Found!8999 (index!38367 (_ BitVec 32))) (Intermediate!8999 (undefined!9811 Bool) (index!38368 (_ BitVec 32)) (x!80685 (_ BitVec 32))) (Undefined!8999) (MissingVacant!8999 (index!38369 (_ BitVec 32))) )
))
(declare-fun lt!424767 () SeekEntryResult!8999)

(assert (=> b!940659 (= res!632583 (is-Found!8999 lt!424767))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56738 (_ BitVec 32)) SeekEntryResult!8999)

(assert (=> b!940659 (= lt!424767 (seekEntry!0 key!756 (_keys!10422 thiss!1141) (mask!27118 thiss!1141)))))

(declare-fun mapIsEmpty!32365 () Bool)

(assert (=> mapIsEmpty!32365 mapRes!32365))

(declare-fun b!940660 () Bool)

(declare-fun e!528742 () Bool)

(assert (=> b!940660 (= e!528742 true)))

(declare-fun lt!424765 () Bool)

(declare-datatypes ((List!19330 0))(
  ( (Nil!19327) (Cons!19326 (h!20472 (_ BitVec 64)) (t!27653 List!19330)) )
))
(declare-fun arrayNoDuplicates!0 (array!56738 (_ BitVec 32) List!19330) Bool)

(assert (=> b!940660 (= lt!424765 (arrayNoDuplicates!0 (_keys!10422 thiss!1141) #b00000000000000000000000000000000 Nil!19327))))

(declare-fun b!940661 () Bool)

(declare-fun e!528741 () Bool)

(assert (=> b!940661 (= e!528741 (and e!528744 mapRes!32365))))

(declare-fun condMapEmpty!32365 () Bool)

(declare-fun mapDefault!32365 () ValueCell!9710)

