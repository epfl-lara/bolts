; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81130 () Bool)

(assert start!81130)

(declare-fun b!949269 () Bool)

(declare-fun b_free!18221 () Bool)

(declare-fun b_next!18221 () Bool)

(assert (=> b!949269 (= b_free!18221 (not b_next!18221))))

(declare-fun tp!63250 () Bool)

(declare-fun b_and!29685 () Bool)

(assert (=> b!949269 (= tp!63250 b_and!29685)))

(declare-fun b!949262 () Bool)

(declare-fun res!636742 () Bool)

(declare-fun e!534449 () Bool)

(assert (=> b!949262 (=> (not res!636742) (not e!534449))))

(declare-datatypes ((V!32603 0))(
  ( (V!32604 (val!10415 Int)) )
))
(declare-datatypes ((ValueCell!9883 0))(
  ( (ValueCellFull!9883 (v!12955 V!32603)) (EmptyCell!9883) )
))
(declare-datatypes ((array!57492 0))(
  ( (array!57493 (arr!27645 (Array (_ BitVec 32) ValueCell!9883)) (size!28122 (_ BitVec 32))) )
))
(declare-datatypes ((array!57494 0))(
  ( (array!57495 (arr!27646 (Array (_ BitVec 32) (_ BitVec 64))) (size!28123 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4916 0))(
  ( (LongMapFixedSize!4917 (defaultEntry!5765 Int) (mask!27538 (_ BitVec 32)) (extraKeys!5497 (_ BitVec 32)) (zeroValue!5601 V!32603) (minValue!5601 V!32603) (_size!2513 (_ BitVec 32)) (_keys!10689 array!57494) (_values!5788 array!57492) (_vacant!2513 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4916)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13634 0))(
  ( (tuple2!13635 (_1!6827 (_ BitVec 64)) (_2!6827 V!32603)) )
))
(declare-datatypes ((List!19458 0))(
  ( (Nil!19455) (Cons!19454 (h!20613 tuple2!13634) (t!27799 List!19458)) )
))
(declare-datatypes ((ListLongMap!12345 0))(
  ( (ListLongMap!12346 (toList!6188 List!19458)) )
))
(declare-fun contains!5227 (ListLongMap!12345 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3373 (array!57494 array!57492 (_ BitVec 32) (_ BitVec 32) V!32603 V!32603 (_ BitVec 32) Int) ListLongMap!12345)

(assert (=> b!949262 (= res!636742 (contains!5227 (getCurrentListMap!3373 (_keys!10689 thiss!1141) (_values!5788 thiss!1141) (mask!27538 thiss!1141) (extraKeys!5497 thiss!1141) (zeroValue!5601 thiss!1141) (minValue!5601 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5765 thiss!1141)) key!756))))

(declare-fun b!949263 () Bool)

(assert (=> b!949263 (= e!534449 (and (= (size!28122 (_values!5788 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27538 thiss!1141))) (= (size!28123 (_keys!10689 thiss!1141)) (size!28122 (_values!5788 thiss!1141))) (bvsge (mask!27538 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5497 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5497 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!949264 () Bool)

(declare-fun res!636741 () Bool)

(assert (=> b!949264 (=> (not res!636741) (not e!534449))))

(assert (=> b!949264 (= res!636741 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!949265 () Bool)

(declare-fun e!534445 () Bool)

(declare-fun e!534446 () Bool)

(declare-fun mapRes!32995 () Bool)

(assert (=> b!949265 (= e!534445 (and e!534446 mapRes!32995))))

(declare-fun condMapEmpty!32995 () Bool)

(declare-fun mapDefault!32995 () ValueCell!9883)

