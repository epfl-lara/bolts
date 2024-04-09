; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80440 () Bool)

(assert start!80440)

(declare-fun b!944387 () Bool)

(declare-fun b_free!18055 () Bool)

(declare-fun b_next!18055 () Bool)

(assert (=> b!944387 (= b_free!18055 (not b_next!18055))))

(declare-fun tp!62676 () Bool)

(declare-fun b_and!29491 () Bool)

(assert (=> b!944387 (= tp!62676 b_and!29491)))

(declare-fun mapNonEmpty!32670 () Bool)

(declare-fun mapRes!32670 () Bool)

(declare-fun tp!62675 () Bool)

(declare-fun e!531103 () Bool)

(assert (=> mapNonEmpty!32670 (= mapRes!32670 (and tp!62675 e!531103))))

(declare-datatypes ((V!32383 0))(
  ( (V!32384 (val!10332 Int)) )
))
(declare-datatypes ((ValueCell!9800 0))(
  ( (ValueCellFull!9800 (v!12864 V!32383)) (EmptyCell!9800) )
))
(declare-fun mapRest!32670 () (Array (_ BitVec 32) ValueCell!9800))

(declare-datatypes ((array!57116 0))(
  ( (array!57117 (arr!27479 (Array (_ BitVec 32) ValueCell!9800)) (size!27946 (_ BitVec 32))) )
))
(declare-datatypes ((array!57118 0))(
  ( (array!57119 (arr!27480 (Array (_ BitVec 32) (_ BitVec 64))) (size!27947 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4750 0))(
  ( (LongMapFixedSize!4751 (defaultEntry!5670 Int) (mask!27315 (_ BitVec 32)) (extraKeys!5402 (_ BitVec 32)) (zeroValue!5506 V!32383) (minValue!5506 V!32383) (_size!2430 (_ BitVec 32)) (_keys!10544 array!57118) (_values!5693 array!57116) (_vacant!2430 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4750)

(declare-fun mapKey!32670 () (_ BitVec 32))

(declare-fun mapValue!32670 () ValueCell!9800)

(assert (=> mapNonEmpty!32670 (= (arr!27479 (_values!5693 thiss!1141)) (store mapRest!32670 mapKey!32670 mapValue!32670))))

(declare-fun res!634524 () Bool)

(declare-fun e!531105 () Bool)

(assert (=> start!80440 (=> (not res!634524) (not e!531105))))

(declare-fun valid!1792 (LongMapFixedSize!4750) Bool)

(assert (=> start!80440 (= res!634524 (valid!1792 thiss!1141))))

(assert (=> start!80440 e!531105))

(declare-fun e!531108 () Bool)

(assert (=> start!80440 e!531108))

(assert (=> start!80440 true))

(declare-fun b!944377 () Bool)

(declare-fun e!531104 () Bool)

(declare-fun e!531107 () Bool)

(assert (=> b!944377 (= e!531104 (and e!531107 mapRes!32670))))

(declare-fun condMapEmpty!32670 () Bool)

(declare-fun mapDefault!32670 () ValueCell!9800)

