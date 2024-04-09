; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3026 () Bool)

(assert start!3026)

(declare-fun b!17977 () Bool)

(declare-fun b_free!635 () Bool)

(declare-fun b_next!635 () Bool)

(assert (=> b!17977 (= b_free!635 (not b_next!635))))

(declare-fun tp!3095 () Bool)

(declare-fun b_and!1285 () Bool)

(assert (=> b!17977 (= tp!3095 b_and!1285)))

(declare-fun b!17969 () Bool)

(declare-fun e!11446 () Bool)

(assert (=> b!17969 (= e!11446 false)))

(declare-fun lt!4649 () Bool)

(declare-datatypes ((V!1023 0))(
  ( (V!1024 (val!476 Int)) )
))
(declare-datatypes ((ValueCell!250 0))(
  ( (ValueCellFull!250 (v!1456 V!1023)) (EmptyCell!250) )
))
(declare-datatypes ((array!995 0))(
  ( (array!996 (arr!479 (Array (_ BitVec 32) ValueCell!250)) (size!569 (_ BitVec 32))) )
))
(declare-datatypes ((array!997 0))(
  ( (array!998 (arr!480 (Array (_ BitVec 32) (_ BitVec 64))) (size!570 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!86 0))(
  ( (LongMapFixedSize!87 (defaultEntry!1654 Int) (mask!4581 (_ BitVec 32)) (extraKeys!1567 (_ BitVec 32)) (zeroValue!1590 V!1023) (minValue!1590 V!1023) (_size!75 (_ BitVec 32)) (_keys!3079 array!997) (_values!1651 array!995) (_vacant!75 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!86 0))(
  ( (Cell!87 (v!1457 LongMapFixedSize!86)) )
))
(declare-datatypes ((LongMap!86 0))(
  ( (LongMap!87 (underlying!54 Cell!86)) )
))
(declare-datatypes ((tuple2!758 0))(
  ( (tuple2!759 (_1!380 Bool) (_2!380 LongMap!86)) )
))
(declare-fun lt!4650 () tuple2!758)

(declare-fun valid!45 (LongMap!86) Bool)

(assert (=> b!17969 (= lt!4649 (valid!45 (_2!380 lt!4650)))))

(declare-fun b!17970 () Bool)

(declare-fun e!11451 () Bool)

(declare-fun tp_is_empty!899 () Bool)

(assert (=> b!17970 (= e!11451 tp_is_empty!899)))

(declare-fun b!17971 () Bool)

(declare-fun e!11447 () tuple2!758)

(declare-fun thiss!848 () LongMap!86)

(declare-fun repack!18 (LongMap!86) tuple2!758)

(assert (=> b!17971 (= e!11447 (repack!18 thiss!848))))

(declare-fun b!17972 () Bool)

(declare-fun e!11450 () Bool)

(declare-fun mapRes!783 () Bool)

(assert (=> b!17972 (= e!11450 (and e!11451 mapRes!783))))

(declare-fun condMapEmpty!783 () Bool)

(declare-fun mapDefault!783 () ValueCell!250)

