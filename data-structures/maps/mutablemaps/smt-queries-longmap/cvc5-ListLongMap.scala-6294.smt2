; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80470 () Bool)

(assert start!80470)

(declare-fun b!944881 () Bool)

(declare-fun b_free!18085 () Bool)

(declare-fun b_next!18085 () Bool)

(assert (=> b!944881 (= b_free!18085 (not b_next!18085))))

(declare-fun tp!62765 () Bool)

(declare-fun b_and!29521 () Bool)

(assert (=> b!944881 (= tp!62765 b_and!29521)))

(declare-fun b!944878 () Bool)

(declare-fun res!634824 () Bool)

(declare-fun e!531416 () Bool)

(assert (=> b!944878 (=> (not res!634824) (not e!531416))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!944878 (= res!634824 (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!944879 () Bool)

(declare-fun e!531418 () Bool)

(declare-fun tp_is_empty!20593 () Bool)

(assert (=> b!944879 (= e!531418 tp_is_empty!20593)))

(declare-fun b!944880 () Bool)

(declare-datatypes ((V!32423 0))(
  ( (V!32424 (val!10347 Int)) )
))
(declare-datatypes ((ValueCell!9815 0))(
  ( (ValueCellFull!9815 (v!12879 V!32423)) (EmptyCell!9815) )
))
(declare-datatypes ((array!57176 0))(
  ( (array!57177 (arr!27509 (Array (_ BitVec 32) ValueCell!9815)) (size!27976 (_ BitVec 32))) )
))
(declare-datatypes ((array!57178 0))(
  ( (array!57179 (arr!27510 (Array (_ BitVec 32) (_ BitVec 64))) (size!27977 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4780 0))(
  ( (LongMapFixedSize!4781 (defaultEntry!5685 Int) (mask!27340 (_ BitVec 32)) (extraKeys!5417 (_ BitVec 32)) (zeroValue!5521 V!32423) (minValue!5521 V!32423) (_size!2445 (_ BitVec 32)) (_keys!10559 array!57178) (_values!5708 array!57176) (_vacant!2445 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4780)

(declare-datatypes ((tuple2!13598 0))(
  ( (tuple2!13599 (_1!6809 (_ BitVec 64)) (_2!6809 V!32423)) )
))
(declare-datatypes ((List!19413 0))(
  ( (Nil!19410) (Cons!19409 (h!20560 tuple2!13598) (t!27738 List!19413)) )
))
(declare-datatypes ((ListLongMap!12309 0))(
  ( (ListLongMap!12310 (toList!6170 List!19413)) )
))
(declare-fun contains!5193 (ListLongMap!12309 (_ BitVec 64)) Bool)

(declare-fun map!13032 (LongMapFixedSize!4780) ListLongMap!12309)

(assert (=> b!944880 (= e!531416 (not (= (not (= (bvand (extraKeys!5417 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (contains!5193 (map!13032 thiss!1141) key!756))))))

(declare-fun mapIsEmpty!32715 () Bool)

(declare-fun mapRes!32715 () Bool)

(assert (=> mapIsEmpty!32715 mapRes!32715))

(declare-fun res!634825 () Bool)

(assert (=> start!80470 (=> (not res!634825) (not e!531416))))

(declare-fun valid!1803 (LongMapFixedSize!4780) Bool)

(assert (=> start!80470 (= res!634825 (valid!1803 thiss!1141))))

(assert (=> start!80470 e!531416))

(declare-fun e!531420 () Bool)

(assert (=> start!80470 e!531420))

(assert (=> start!80470 true))

(declare-fun e!531417 () Bool)

(declare-fun array_inv!21316 (array!57178) Bool)

(declare-fun array_inv!21317 (array!57176) Bool)

(assert (=> b!944881 (= e!531420 (and tp!62765 tp_is_empty!20593 (array_inv!21316 (_keys!10559 thiss!1141)) (array_inv!21317 (_values!5708 thiss!1141)) e!531417))))

(declare-fun b!944882 () Bool)

(declare-fun e!531415 () Bool)

(assert (=> b!944882 (= e!531415 tp_is_empty!20593)))

(declare-fun mapNonEmpty!32715 () Bool)

(declare-fun tp!62766 () Bool)

(assert (=> mapNonEmpty!32715 (= mapRes!32715 (and tp!62766 e!531415))))

(declare-fun mapRest!32715 () (Array (_ BitVec 32) ValueCell!9815))

(declare-fun mapKey!32715 () (_ BitVec 32))

(declare-fun mapValue!32715 () ValueCell!9815)

(assert (=> mapNonEmpty!32715 (= (arr!27509 (_values!5708 thiss!1141)) (store mapRest!32715 mapKey!32715 mapValue!32715))))

(declare-fun b!944883 () Bool)

(assert (=> b!944883 (= e!531417 (and e!531418 mapRes!32715))))

(declare-fun condMapEmpty!32715 () Bool)

(declare-fun mapDefault!32715 () ValueCell!9815)

