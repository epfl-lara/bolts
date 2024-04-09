; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81568 () Bool)

(assert start!81568)

(declare-fun b!952535 () Bool)

(declare-fun b_free!18295 () Bool)

(declare-fun b_next!18295 () Bool)

(assert (=> b!952535 (= b_free!18295 (not b_next!18295))))

(declare-fun tp!63510 () Bool)

(declare-fun b_and!29795 () Bool)

(assert (=> b!952535 (= tp!63510 b_and!29795)))

(declare-fun b!952531 () Bool)

(declare-fun res!638199 () Bool)

(declare-fun e!536493 () Bool)

(assert (=> b!952531 (=> res!638199 e!536493)))

(declare-datatypes ((V!32703 0))(
  ( (V!32704 (val!10452 Int)) )
))
(declare-datatypes ((ValueCell!9920 0))(
  ( (ValueCellFull!9920 (v!13004 V!32703)) (EmptyCell!9920) )
))
(declare-datatypes ((array!57664 0))(
  ( (array!57665 (arr!27719 (Array (_ BitVec 32) ValueCell!9920)) (size!28199 (_ BitVec 32))) )
))
(declare-datatypes ((array!57666 0))(
  ( (array!57667 (arr!27720 (Array (_ BitVec 32) (_ BitVec 64))) (size!28200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4990 0))(
  ( (LongMapFixedSize!4991 (defaultEntry!5828 Int) (mask!27675 (_ BitVec 32)) (extraKeys!5560 (_ BitVec 32)) (zeroValue!5664 V!32703) (minValue!5664 V!32703) (_size!2550 (_ BitVec 32)) (_keys!10780 array!57666) (_values!5851 array!57664) (_vacant!2550 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4990)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57666 (_ BitVec 32)) Bool)

(assert (=> b!952531 (= res!638199 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10780 thiss!1141) (mask!27675 thiss!1141))))))

(declare-fun b!952532 () Bool)

(declare-fun e!536494 () Bool)

(declare-fun tp_is_empty!20803 () Bool)

(assert (=> b!952532 (= e!536494 tp_is_empty!20803)))

(declare-fun b!952533 () Bool)

(declare-fun e!536490 () Bool)

(assert (=> b!952533 (= e!536490 tp_is_empty!20803)))

(declare-fun mapIsEmpty!33145 () Bool)

(declare-fun mapRes!33145 () Bool)

(assert (=> mapIsEmpty!33145 mapRes!33145))

(declare-fun b!952534 () Bool)

(declare-fun res!638196 () Bool)

(declare-fun e!536495 () Bool)

(assert (=> b!952534 (=> (not res!638196) (not e!536495))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13678 0))(
  ( (tuple2!13679 (_1!6849 (_ BitVec 64)) (_2!6849 V!32703)) )
))
(declare-datatypes ((List!19496 0))(
  ( (Nil!19493) (Cons!19492 (h!20654 tuple2!13678) (t!27861 List!19496)) )
))
(declare-datatypes ((ListLongMap!12389 0))(
  ( (ListLongMap!12390 (toList!6210 List!19496)) )
))
(declare-fun contains!5256 (ListLongMap!12389 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3395 (array!57666 array!57664 (_ BitVec 32) (_ BitVec 32) V!32703 V!32703 (_ BitVec 32) Int) ListLongMap!12389)

(assert (=> b!952534 (= res!638196 (contains!5256 (getCurrentListMap!3395 (_keys!10780 thiss!1141) (_values!5851 thiss!1141) (mask!27675 thiss!1141) (extraKeys!5560 thiss!1141) (zeroValue!5664 thiss!1141) (minValue!5664 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5828 thiss!1141)) key!756))))

(declare-fun e!536491 () Bool)

(declare-fun e!536489 () Bool)

(declare-fun array_inv!21456 (array!57666) Bool)

(declare-fun array_inv!21457 (array!57664) Bool)

(assert (=> b!952535 (= e!536491 (and tp!63510 tp_is_empty!20803 (array_inv!21456 (_keys!10780 thiss!1141)) (array_inv!21457 (_values!5851 thiss!1141)) e!536489))))

(declare-fun res!638197 () Bool)

(assert (=> start!81568 (=> (not res!638197) (not e!536495))))

(declare-fun valid!1868 (LongMapFixedSize!4990) Bool)

(assert (=> start!81568 (= res!638197 (valid!1868 thiss!1141))))

(assert (=> start!81568 e!536495))

(assert (=> start!81568 e!536491))

(assert (=> start!81568 true))

(declare-fun b!952536 () Bool)

(declare-fun res!638201 () Bool)

(assert (=> b!952536 (=> (not res!638201) (not e!536495))))

(assert (=> b!952536 (= res!638201 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952537 () Bool)

(declare-fun res!638198 () Bool)

(assert (=> b!952537 (=> (not res!638198) (not e!536495))))

(declare-datatypes ((SeekEntryResult!9149 0))(
  ( (MissingZero!9149 (index!38966 (_ BitVec 32))) (Found!9149 (index!38967 (_ BitVec 32))) (Intermediate!9149 (undefined!9961 Bool) (index!38968 (_ BitVec 32)) (x!81938 (_ BitVec 32))) (Undefined!9149) (MissingVacant!9149 (index!38969 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57666 (_ BitVec 32)) SeekEntryResult!9149)

(assert (=> b!952537 (= res!638198 (not (is-Found!9149 (seekEntry!0 key!756 (_keys!10780 thiss!1141) (mask!27675 thiss!1141)))))))

(declare-fun b!952538 () Bool)

(assert (=> b!952538 (= e!536495 (not e!536493))))

(declare-fun res!638200 () Bool)

(assert (=> b!952538 (=> res!638200 e!536493)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!952538 (= res!638200 (not (validMask!0 (mask!27675 thiss!1141))))))

(declare-fun lt!429247 () (_ BitVec 32))

(assert (=> b!952538 (arrayForallSeekEntryOrOpenFound!0 lt!429247 (_keys!10780 thiss!1141) (mask!27675 thiss!1141))))

(declare-datatypes ((Unit!32044 0))(
  ( (Unit!32045) )
))
(declare-fun lt!429246 () Unit!32044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32044)

(assert (=> b!952538 (= lt!429246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10780 thiss!1141) (mask!27675 thiss!1141) #b00000000000000000000000000000000 lt!429247))))

(declare-fun arrayScanForKey!0 (array!57666 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952538 (= lt!429247 (arrayScanForKey!0 (_keys!10780 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952538 (arrayContainsKey!0 (_keys!10780 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429248 () Unit!32044)

(declare-fun lemmaKeyInListMapIsInArray!340 (array!57666 array!57664 (_ BitVec 32) (_ BitVec 32) V!32703 V!32703 (_ BitVec 64) Int) Unit!32044)

(assert (=> b!952538 (= lt!429248 (lemmaKeyInListMapIsInArray!340 (_keys!10780 thiss!1141) (_values!5851 thiss!1141) (mask!27675 thiss!1141) (extraKeys!5560 thiss!1141) (zeroValue!5664 thiss!1141) (minValue!5664 thiss!1141) key!756 (defaultEntry!5828 thiss!1141)))))

(declare-fun b!952539 () Bool)

(assert (=> b!952539 (= e!536489 (and e!536490 mapRes!33145))))

(declare-fun condMapEmpty!33145 () Bool)

(declare-fun mapDefault!33145 () ValueCell!9920)

