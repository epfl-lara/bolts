; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80428 () Bool)

(assert start!80428)

(declare-fun b!944176 () Bool)

(declare-fun b_free!18043 () Bool)

(declare-fun b_next!18043 () Bool)

(assert (=> b!944176 (= b_free!18043 (not b_next!18043))))

(declare-fun tp!62639 () Bool)

(declare-fun b_and!29479 () Bool)

(assert (=> b!944176 (= tp!62639 b_and!29479)))

(declare-fun b!944175 () Bool)

(declare-fun res!634395 () Bool)

(declare-fun e!530982 () Bool)

(assert (=> b!944175 (=> (not res!634395) (not e!530982))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32367 0))(
  ( (V!32368 (val!10326 Int)) )
))
(declare-datatypes ((ValueCell!9794 0))(
  ( (ValueCellFull!9794 (v!12858 V!32367)) (EmptyCell!9794) )
))
(declare-datatypes ((array!57092 0))(
  ( (array!57093 (arr!27467 (Array (_ BitVec 32) ValueCell!9794)) (size!27934 (_ BitVec 32))) )
))
(declare-datatypes ((array!57094 0))(
  ( (array!57095 (arr!27468 (Array (_ BitVec 32) (_ BitVec 64))) (size!27935 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4738 0))(
  ( (LongMapFixedSize!4739 (defaultEntry!5664 Int) (mask!27305 (_ BitVec 32)) (extraKeys!5396 (_ BitVec 32)) (zeroValue!5500 V!32367) (minValue!5500 V!32367) (_size!2424 (_ BitVec 32)) (_keys!10538 array!57094) (_values!5687 array!57092) (_vacant!2424 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4738)

(declare-datatypes ((SeekEntryResult!9055 0))(
  ( (MissingZero!9055 (index!38590 (_ BitVec 32))) (Found!9055 (index!38591 (_ BitVec 32))) (Intermediate!9055 (undefined!9867 Bool) (index!38592 (_ BitVec 32)) (x!81091 (_ BitVec 32))) (Undefined!9055) (MissingVacant!9055 (index!38593 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57094 (_ BitVec 32)) SeekEntryResult!9055)

(assert (=> b!944175 (= res!634395 (not (is-Found!9055 (seekEntry!0 key!756 (_keys!10538 thiss!1141) (mask!27305 thiss!1141)))))))

(declare-fun mapIsEmpty!32652 () Bool)

(declare-fun mapRes!32652 () Bool)

(assert (=> mapIsEmpty!32652 mapRes!32652))

(declare-fun e!530977 () Bool)

(declare-fun e!530980 () Bool)

(declare-fun tp_is_empty!20551 () Bool)

(declare-fun array_inv!21286 (array!57094) Bool)

(declare-fun array_inv!21287 (array!57092) Bool)

(assert (=> b!944176 (= e!530977 (and tp!62639 tp_is_empty!20551 (array_inv!21286 (_keys!10538 thiss!1141)) (array_inv!21287 (_values!5687 thiss!1141)) e!530980))))

(declare-fun b!944177 () Bool)

(declare-fun e!530978 () Bool)

(assert (=> b!944177 (= e!530978 tp_is_empty!20551)))

(declare-fun b!944178 () Bool)

(declare-fun e!530979 () Bool)

(assert (=> b!944178 (= e!530982 (not e!530979))))

(declare-fun res!634393 () Bool)

(assert (=> b!944178 (=> res!634393 e!530979)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944178 (= res!634393 (not (validMask!0 (mask!27305 thiss!1141))))))

(declare-fun lt!425538 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57094 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944178 (= lt!425538 (arrayScanForKey!0 (_keys!10538 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944178 (arrayContainsKey!0 (_keys!10538 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31843 0))(
  ( (Unit!31844) )
))
(declare-fun lt!425540 () Unit!31843)

(declare-fun lemmaKeyInListMapIsInArray!305 (array!57094 array!57092 (_ BitVec 32) (_ BitVec 32) V!32367 V!32367 (_ BitVec 64) Int) Unit!31843)

(assert (=> b!944178 (= lt!425540 (lemmaKeyInListMapIsInArray!305 (_keys!10538 thiss!1141) (_values!5687 thiss!1141) (mask!27305 thiss!1141) (extraKeys!5396 thiss!1141) (zeroValue!5500 thiss!1141) (minValue!5500 thiss!1141) key!756 (defaultEntry!5664 thiss!1141)))))

(declare-fun b!944179 () Bool)

(declare-fun res!634392 () Bool)

(assert (=> b!944179 (=> (not res!634392) (not e!530982))))

(declare-datatypes ((tuple2!13574 0))(
  ( (tuple2!13575 (_1!6797 (_ BitVec 64)) (_2!6797 V!32367)) )
))
(declare-datatypes ((List!19401 0))(
  ( (Nil!19398) (Cons!19397 (h!20548 tuple2!13574) (t!27726 List!19401)) )
))
(declare-datatypes ((ListLongMap!12285 0))(
  ( (ListLongMap!12286 (toList!6158 List!19401)) )
))
(declare-fun contains!5181 (ListLongMap!12285 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3346 (array!57094 array!57092 (_ BitVec 32) (_ BitVec 32) V!32367 V!32367 (_ BitVec 32) Int) ListLongMap!12285)

(assert (=> b!944179 (= res!634392 (contains!5181 (getCurrentListMap!3346 (_keys!10538 thiss!1141) (_values!5687 thiss!1141) (mask!27305 thiss!1141) (extraKeys!5396 thiss!1141) (zeroValue!5500 thiss!1141) (minValue!5500 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5664 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!32652 () Bool)

(declare-fun tp!62640 () Bool)

(declare-fun e!530976 () Bool)

(assert (=> mapNonEmpty!32652 (= mapRes!32652 (and tp!62640 e!530976))))

(declare-fun mapKey!32652 () (_ BitVec 32))

(declare-fun mapRest!32652 () (Array (_ BitVec 32) ValueCell!9794))

(declare-fun mapValue!32652 () ValueCell!9794)

(assert (=> mapNonEmpty!32652 (= (arr!27467 (_values!5687 thiss!1141)) (store mapRest!32652 mapKey!32652 mapValue!32652))))

(declare-fun b!944180 () Bool)

(assert (=> b!944180 (= e!530976 tp_is_empty!20551)))

(declare-fun res!634391 () Bool)

(assert (=> start!80428 (=> (not res!634391) (not e!530982))))

(declare-fun valid!1789 (LongMapFixedSize!4738) Bool)

(assert (=> start!80428 (= res!634391 (valid!1789 thiss!1141))))

(assert (=> start!80428 e!530982))

(assert (=> start!80428 e!530977))

(assert (=> start!80428 true))

(declare-fun b!944181 () Bool)

(assert (=> b!944181 (= e!530980 (and e!530978 mapRes!32652))))

(declare-fun condMapEmpty!32652 () Bool)

(declare-fun mapDefault!32652 () ValueCell!9794)

