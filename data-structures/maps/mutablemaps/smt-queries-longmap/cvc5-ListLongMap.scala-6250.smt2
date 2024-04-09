; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79994 () Bool)

(assert start!79994)

(declare-fun b!939915 () Bool)

(declare-fun b_free!17821 () Bool)

(declare-fun b_next!17821 () Bool)

(assert (=> b!939915 (= b_free!17821 (not b_next!17821))))

(declare-fun tp!61938 () Bool)

(declare-fun b_and!29251 () Bool)

(assert (=> b!939915 (= tp!61938 b_and!29251)))

(declare-fun b!939910 () Bool)

(declare-fun e!528122 () Bool)

(declare-fun tp_is_empty!20329 () Bool)

(assert (=> b!939910 (= e!528122 tp_is_empty!20329)))

(declare-fun b!939911 () Bool)

(declare-fun e!528121 () Bool)

(assert (=> b!939911 (= e!528121 false)))

(declare-datatypes ((SeekEntryResult!8976 0))(
  ( (MissingZero!8976 (index!38274 (_ BitVec 32))) (Found!8976 (index!38275 (_ BitVec 32))) (Intermediate!8976 (undefined!9788 Bool) (index!38276 (_ BitVec 32)) (x!80590 (_ BitVec 32))) (Undefined!8976) (MissingVacant!8976 (index!38277 (_ BitVec 32))) )
))
(declare-fun lt!424554 () SeekEntryResult!8976)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32071 0))(
  ( (V!32072 (val!10215 Int)) )
))
(declare-datatypes ((ValueCell!9683 0))(
  ( (ValueCellFull!9683 (v!12746 V!32071)) (EmptyCell!9683) )
))
(declare-datatypes ((array!56628 0))(
  ( (array!56629 (arr!27245 (Array (_ BitVec 32) ValueCell!9683)) (size!27707 (_ BitVec 32))) )
))
(declare-datatypes ((array!56630 0))(
  ( (array!56631 (arr!27246 (Array (_ BitVec 32) (_ BitVec 64))) (size!27708 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4516 0))(
  ( (LongMapFixedSize!4517 (defaultEntry!5549 Int) (mask!27073 (_ BitVec 32)) (extraKeys!5281 (_ BitVec 32)) (zeroValue!5385 V!32071) (minValue!5385 V!32071) (_size!2313 (_ BitVec 32)) (_keys!10395 array!56630) (_values!5572 array!56628) (_vacant!2313 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4516)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56630 (_ BitVec 32)) SeekEntryResult!8976)

(assert (=> b!939911 (= lt!424554 (seekEntry!0 key!756 (_keys!10395 thiss!1141) (mask!27073 thiss!1141)))))

(declare-fun res!632161 () Bool)

(assert (=> start!79994 (=> (not res!632161) (not e!528121))))

(declare-fun valid!1717 (LongMapFixedSize!4516) Bool)

(assert (=> start!79994 (= res!632161 (valid!1717 thiss!1141))))

(assert (=> start!79994 e!528121))

(declare-fun e!528125 () Bool)

(assert (=> start!79994 e!528125))

(assert (=> start!79994 true))

(declare-fun mapIsEmpty!32284 () Bool)

(declare-fun mapRes!32284 () Bool)

(assert (=> mapIsEmpty!32284 mapRes!32284))

(declare-fun mapNonEmpty!32284 () Bool)

(declare-fun tp!61939 () Bool)

(declare-fun e!528124 () Bool)

(assert (=> mapNonEmpty!32284 (= mapRes!32284 (and tp!61939 e!528124))))

(declare-fun mapRest!32284 () (Array (_ BitVec 32) ValueCell!9683))

(declare-fun mapValue!32284 () ValueCell!9683)

(declare-fun mapKey!32284 () (_ BitVec 32))

(assert (=> mapNonEmpty!32284 (= (arr!27245 (_values!5572 thiss!1141)) (store mapRest!32284 mapKey!32284 mapValue!32284))))

(declare-fun b!939912 () Bool)

(declare-fun e!528123 () Bool)

(assert (=> b!939912 (= e!528123 (and e!528122 mapRes!32284))))

(declare-fun condMapEmpty!32284 () Bool)

(declare-fun mapDefault!32284 () ValueCell!9683)

