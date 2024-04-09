; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80800 () Bool)

(assert start!80800)

(declare-fun b!946922 () Bool)

(declare-fun b_free!18161 () Bool)

(declare-fun b_next!18161 () Bool)

(assert (=> b!946922 (= b_free!18161 (not b_next!18161))))

(declare-fun tp!63036 () Bool)

(declare-fun b_and!29601 () Bool)

(assert (=> b!946922 (= tp!63036 b_and!29601)))

(declare-fun b!946914 () Bool)

(declare-fun e!532938 () Bool)

(declare-fun e!532941 () Bool)

(assert (=> b!946914 (= e!532938 e!532941)))

(declare-fun res!635662 () Bool)

(assert (=> b!946914 (=> (not res!635662) (not e!532941))))

(declare-datatypes ((SeekEntryResult!9101 0))(
  ( (MissingZero!9101 (index!38774 (_ BitVec 32))) (Found!9101 (index!38775 (_ BitVec 32))) (Intermediate!9101 (undefined!9913 Bool) (index!38776 (_ BitVec 32)) (x!81446 (_ BitVec 32))) (Undefined!9101) (MissingVacant!9101 (index!38777 (_ BitVec 32))) )
))
(declare-fun lt!426419 () SeekEntryResult!9101)

(assert (=> b!946914 (= res!635662 (is-Found!9101 lt!426419))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32523 0))(
  ( (V!32524 (val!10385 Int)) )
))
(declare-datatypes ((ValueCell!9853 0))(
  ( (ValueCellFull!9853 (v!12919 V!32523)) (EmptyCell!9853) )
))
(declare-datatypes ((array!57352 0))(
  ( (array!57353 (arr!27585 (Array (_ BitVec 32) ValueCell!9853)) (size!28059 (_ BitVec 32))) )
))
(declare-datatypes ((array!57354 0))(
  ( (array!57355 (arr!27586 (Array (_ BitVec 32) (_ BitVec 64))) (size!28060 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4856 0))(
  ( (LongMapFixedSize!4857 (defaultEntry!5725 Int) (mask!27443 (_ BitVec 32)) (extraKeys!5457 (_ BitVec 32)) (zeroValue!5561 V!32523) (minValue!5561 V!32523) (_size!2483 (_ BitVec 32)) (_keys!10626 array!57354) (_values!5748 array!57352) (_vacant!2483 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4856)

(declare-fun seekEntry!0 ((_ BitVec 64) array!57354 (_ BitVec 32)) SeekEntryResult!9101)

(assert (=> b!946914 (= lt!426419 (seekEntry!0 key!756 (_keys!10626 thiss!1141) (mask!27443 thiss!1141)))))

(declare-fun mapNonEmpty!32872 () Bool)

(declare-fun mapRes!32872 () Bool)

(declare-fun tp!63037 () Bool)

(declare-fun e!532936 () Bool)

(assert (=> mapNonEmpty!32872 (= mapRes!32872 (and tp!63037 e!532936))))

(declare-fun mapRest!32872 () (Array (_ BitVec 32) ValueCell!9853))

(declare-fun mapKey!32872 () (_ BitVec 32))

(declare-fun mapValue!32872 () ValueCell!9853)

(assert (=> mapNonEmpty!32872 (= (arr!27585 (_values!5748 thiss!1141)) (store mapRest!32872 mapKey!32872 mapValue!32872))))

(declare-fun b!946915 () Bool)

(declare-fun e!532939 () Bool)

(declare-fun e!532942 () Bool)

(assert (=> b!946915 (= e!532939 (and e!532942 mapRes!32872))))

(declare-fun condMapEmpty!32872 () Bool)

(declare-fun mapDefault!32872 () ValueCell!9853)

