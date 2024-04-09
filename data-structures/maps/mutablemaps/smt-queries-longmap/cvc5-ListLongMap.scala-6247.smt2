; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79966 () Bool)

(assert start!79966)

(declare-fun b!939723 () Bool)

(declare-fun b_free!17803 () Bool)

(declare-fun b_next!17803 () Bool)

(assert (=> b!939723 (= b_free!17803 (not b_next!17803))))

(declare-fun tp!61882 () Bool)

(declare-fun b_and!29233 () Bool)

(assert (=> b!939723 (= tp!61882 b_and!29233)))

(declare-fun b!939717 () Bool)

(declare-fun e!527950 () Bool)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939717 (= e!527950 (not (validKeyInArray!0 key!756)))))

(declare-fun b!939718 () Bool)

(declare-fun e!527955 () Bool)

(declare-fun tp_is_empty!20311 () Bool)

(assert (=> b!939718 (= e!527955 tp_is_empty!20311)))

(declare-fun b!939719 () Bool)

(declare-fun e!527951 () Bool)

(declare-fun mapRes!32254 () Bool)

(assert (=> b!939719 (= e!527951 (and e!527955 mapRes!32254))))

(declare-fun condMapEmpty!32254 () Bool)

(declare-datatypes ((V!32047 0))(
  ( (V!32048 (val!10206 Int)) )
))
(declare-datatypes ((ValueCell!9674 0))(
  ( (ValueCellFull!9674 (v!12737 V!32047)) (EmptyCell!9674) )
))
(declare-datatypes ((array!56590 0))(
  ( (array!56591 (arr!27227 (Array (_ BitVec 32) ValueCell!9674)) (size!27689 (_ BitVec 32))) )
))
(declare-datatypes ((array!56592 0))(
  ( (array!56593 (arr!27228 (Array (_ BitVec 32) (_ BitVec 64))) (size!27690 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4498 0))(
  ( (LongMapFixedSize!4499 (defaultEntry!5540 Int) (mask!27057 (_ BitVec 32)) (extraKeys!5272 (_ BitVec 32)) (zeroValue!5376 V!32047) (minValue!5376 V!32047) (_size!2304 (_ BitVec 32)) (_keys!10386 array!56592) (_values!5563 array!56590) (_vacant!2304 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4498)

(declare-fun mapDefault!32254 () ValueCell!9674)

