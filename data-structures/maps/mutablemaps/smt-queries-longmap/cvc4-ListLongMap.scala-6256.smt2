; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80034 () Bool)

(assert start!80034)

(declare-fun b!940450 () Bool)

(declare-fun b_free!17861 () Bool)

(declare-fun b_next!17861 () Bool)

(assert (=> b!940450 (= b_free!17861 (not b_next!17861))))

(declare-fun tp!62059 () Bool)

(declare-fun b_and!29291 () Bool)

(assert (=> b!940450 (= tp!62059 b_and!29291)))

(declare-fun mapNonEmpty!32344 () Bool)

(declare-fun mapRes!32344 () Bool)

(declare-fun tp!62058 () Bool)

(declare-fun e!528574 () Bool)

(assert (=> mapNonEmpty!32344 (= mapRes!32344 (and tp!62058 e!528574))))

(declare-datatypes ((V!32123 0))(
  ( (V!32124 (val!10235 Int)) )
))
(declare-datatypes ((ValueCell!9703 0))(
  ( (ValueCellFull!9703 (v!12766 V!32123)) (EmptyCell!9703) )
))
(declare-fun mapValue!32344 () ValueCell!9703)

(declare-datatypes ((array!56708 0))(
  ( (array!56709 (arr!27285 (Array (_ BitVec 32) ValueCell!9703)) (size!27747 (_ BitVec 32))) )
))
(declare-datatypes ((array!56710 0))(
  ( (array!56711 (arr!27286 (Array (_ BitVec 32) (_ BitVec 64))) (size!27748 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4556 0))(
  ( (LongMapFixedSize!4557 (defaultEntry!5569 Int) (mask!27105 (_ BitVec 32)) (extraKeys!5301 (_ BitVec 32)) (zeroValue!5405 V!32123) (minValue!5405 V!32123) (_size!2333 (_ BitVec 32)) (_keys!10415 array!56710) (_values!5592 array!56708) (_vacant!2333 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4556)

(declare-fun mapKey!32344 () (_ BitVec 32))

(declare-fun mapRest!32344 () (Array (_ BitVec 32) ValueCell!9703))

(assert (=> mapNonEmpty!32344 (= (arr!27285 (_values!5592 thiss!1141)) (store mapRest!32344 mapKey!32344 mapValue!32344))))

(declare-fun b!940446 () Bool)

(declare-fun res!632457 () Bool)

(declare-fun e!528571 () Bool)

(assert (=> b!940446 (=> (not res!632457) (not e!528571))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!940446 (= res!632457 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32344 () Bool)

(assert (=> mapIsEmpty!32344 mapRes!32344))

(declare-fun b!940447 () Bool)

(declare-fun res!632460 () Bool)

(declare-fun e!528570 () Bool)

(assert (=> b!940447 (=> res!632460 e!528570)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56710 (_ BitVec 32)) Bool)

(assert (=> b!940447 (= res!632460 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10415 thiss!1141) (mask!27105 thiss!1141))))))

(declare-fun b!940448 () Bool)

(declare-fun e!528573 () Bool)

(assert (=> b!940448 (= e!528571 e!528573)))

(declare-fun res!632462 () Bool)

(assert (=> b!940448 (=> (not res!632462) (not e!528573))))

(declare-datatypes ((SeekEntryResult!8993 0))(
  ( (MissingZero!8993 (index!38342 (_ BitVec 32))) (Found!8993 (index!38343 (_ BitVec 32))) (Intermediate!8993 (undefined!9805 Bool) (index!38344 (_ BitVec 32)) (x!80655 (_ BitVec 32))) (Undefined!8993) (MissingVacant!8993 (index!38345 (_ BitVec 32))) )
))
(declare-fun lt!424704 () SeekEntryResult!8993)

(assert (=> b!940448 (= res!632462 (is-Found!8993 lt!424704))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56710 (_ BitVec 32)) SeekEntryResult!8993)

(assert (=> b!940448 (= lt!424704 (seekEntry!0 key!756 (_keys!10415 thiss!1141) (mask!27105 thiss!1141)))))

(declare-fun b!940449 () Bool)

(declare-fun e!528576 () Bool)

(declare-fun e!528575 () Bool)

(assert (=> b!940449 (= e!528576 (and e!528575 mapRes!32344))))

(declare-fun condMapEmpty!32344 () Bool)

(declare-fun mapDefault!32344 () ValueCell!9703)

