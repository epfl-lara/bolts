; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80724 () Bool)

(assert start!80724)

(declare-fun b!946433 () Bool)

(declare-fun b_free!18145 () Bool)

(declare-fun b_next!18145 () Bool)

(assert (=> b!946433 (= b_free!18145 (not b_next!18145))))

(declare-fun tp!62981 () Bool)

(declare-fun b_and!29585 () Bool)

(assert (=> b!946433 (= tp!62981 b_and!29585)))

(declare-fun b!946432 () Bool)

(declare-fun e!532580 () Bool)

(declare-fun tp_is_empty!20653 () Bool)

(assert (=> b!946432 (= e!532580 tp_is_empty!20653)))

(declare-datatypes ((V!32503 0))(
  ( (V!32504 (val!10377 Int)) )
))
(declare-datatypes ((ValueCell!9845 0))(
  ( (ValueCellFull!9845 (v!12911 V!32503)) (EmptyCell!9845) )
))
(declare-datatypes ((array!57316 0))(
  ( (array!57317 (arr!27569 (Array (_ BitVec 32) ValueCell!9845)) (size!28041 (_ BitVec 32))) )
))
(declare-datatypes ((array!57318 0))(
  ( (array!57319 (arr!27570 (Array (_ BitVec 32) (_ BitVec 64))) (size!28042 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4840 0))(
  ( (LongMapFixedSize!4841 (defaultEntry!5717 Int) (mask!27419 (_ BitVec 32)) (extraKeys!5449 (_ BitVec 32)) (zeroValue!5553 V!32503) (minValue!5553 V!32503) (_size!2475 (_ BitVec 32)) (_keys!10610 array!57318) (_values!5740 array!57316) (_vacant!2475 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4840)

(declare-fun e!532586 () Bool)

(declare-fun e!532583 () Bool)

(declare-fun array_inv!21354 (array!57318) Bool)

(declare-fun array_inv!21355 (array!57316) Bool)

(assert (=> b!946433 (= e!532583 (and tp!62981 tp_is_empty!20653 (array_inv!21354 (_keys!10610 thiss!1141)) (array_inv!21355 (_values!5740 thiss!1141)) e!532586))))

(declare-fun res!635448 () Bool)

(declare-fun e!532584 () Bool)

(assert (=> start!80724 (=> (not res!635448) (not e!532584))))

(declare-fun valid!1825 (LongMapFixedSize!4840) Bool)

(assert (=> start!80724 (= res!635448 (valid!1825 thiss!1141))))

(assert (=> start!80724 e!532584))

(assert (=> start!80724 e!532583))

(assert (=> start!80724 true))

(declare-fun mapIsEmpty!32840 () Bool)

(declare-fun mapRes!32840 () Bool)

(assert (=> mapIsEmpty!32840 mapRes!32840))

(declare-fun b!946434 () Bool)

(declare-fun e!532581 () Bool)

(assert (=> b!946434 (= e!532584 e!532581)))

(declare-fun res!635450 () Bool)

(assert (=> b!946434 (=> (not res!635450) (not e!532581))))

(declare-datatypes ((SeekEntryResult!9094 0))(
  ( (MissingZero!9094 (index!38746 (_ BitVec 32))) (Found!9094 (index!38747 (_ BitVec 32))) (Intermediate!9094 (undefined!9906 Bool) (index!38748 (_ BitVec 32)) (x!81389 (_ BitVec 32))) (Undefined!9094) (MissingVacant!9094 (index!38749 (_ BitVec 32))) )
))
(declare-fun lt!426281 () SeekEntryResult!9094)

(assert (=> b!946434 (= res!635450 (is-Found!9094 lt!426281))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57318 (_ BitVec 32)) SeekEntryResult!9094)

(assert (=> b!946434 (= lt!426281 (seekEntry!0 key!756 (_keys!10610 thiss!1141) (mask!27419 thiss!1141)))))

(declare-fun b!946435 () Bool)

(declare-fun e!532582 () Bool)

(assert (=> b!946435 (= e!532582 tp_is_empty!20653)))

(declare-fun mapNonEmpty!32840 () Bool)

(declare-fun tp!62980 () Bool)

(assert (=> mapNonEmpty!32840 (= mapRes!32840 (and tp!62980 e!532580))))

(declare-fun mapKey!32840 () (_ BitVec 32))

(declare-fun mapRest!32840 () (Array (_ BitVec 32) ValueCell!9845))

(declare-fun mapValue!32840 () ValueCell!9845)

(assert (=> mapNonEmpty!32840 (= (arr!27569 (_values!5740 thiss!1141)) (store mapRest!32840 mapKey!32840 mapValue!32840))))

(declare-fun b!946436 () Bool)

(declare-fun res!635449 () Bool)

(assert (=> b!946436 (=> (not res!635449) (not e!532584))))

(assert (=> b!946436 (= res!635449 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!946437 () Bool)

(assert (=> b!946437 (= e!532586 (and e!532582 mapRes!32840))))

(declare-fun condMapEmpty!32840 () Bool)

(declare-fun mapDefault!32840 () ValueCell!9845)

