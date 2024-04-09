; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76806 () Bool)

(assert start!76806)

(declare-fun b!898136 () Bool)

(declare-fun b_free!16013 () Bool)

(declare-fun b_next!16013 () Bool)

(assert (=> b!898136 (= b_free!16013 (not b_next!16013))))

(declare-fun tp!56106 () Bool)

(declare-fun b_and!26323 () Bool)

(assert (=> b!898136 (= tp!56106 b_and!26323)))

(declare-fun b!898135 () Bool)

(declare-fun res!607099 () Bool)

(declare-fun e!502419 () Bool)

(assert (=> b!898135 (=> (not res!607099) (not e!502419))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!898135 (= res!607099 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!29163 () Bool)

(declare-fun mapRes!29163 () Bool)

(declare-fun tp!56105 () Bool)

(declare-fun e!502418 () Bool)

(assert (=> mapNonEmpty!29163 (= mapRes!29163 (and tp!56105 e!502418))))

(declare-datatypes ((V!29419 0))(
  ( (V!29420 (val!9221 Int)) )
))
(declare-datatypes ((ValueCell!8689 0))(
  ( (ValueCellFull!8689 (v!11708 V!29419)) (EmptyCell!8689) )
))
(declare-fun mapRest!29163 () (Array (_ BitVec 32) ValueCell!8689))

(declare-fun mapKey!29163 () (_ BitVec 32))

(declare-fun mapValue!29163 () ValueCell!8689)

(declare-datatypes ((array!52704 0))(
  ( (array!52705 (arr!25326 (Array (_ BitVec 32) (_ BitVec 64))) (size!25782 (_ BitVec 32))) )
))
(declare-datatypes ((array!52706 0))(
  ( (array!52707 (arr!25327 (Array (_ BitVec 32) ValueCell!8689)) (size!25783 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4394 0))(
  ( (LongMapFixedSize!4395 (defaultEntry!5409 Int) (mask!26126 (_ BitVec 32)) (extraKeys!5124 (_ BitVec 32)) (zeroValue!5228 V!29419) (minValue!5228 V!29419) (_size!2252 (_ BitVec 32)) (_keys!10178 array!52704) (_values!5415 array!52706) (_vacant!2252 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4394)

(assert (=> mapNonEmpty!29163 (= (arr!25327 (_values!5415 thiss!1181)) (store mapRest!29163 mapKey!29163 mapValue!29163))))

(declare-fun e!502420 () Bool)

(declare-fun tp_is_empty!18341 () Bool)

(declare-fun e!502413 () Bool)

(declare-fun array_inv!19850 (array!52704) Bool)

(declare-fun array_inv!19851 (array!52706) Bool)

(assert (=> b!898136 (= e!502413 (and tp!56106 tp_is_empty!18341 (array_inv!19850 (_keys!10178 thiss!1181)) (array_inv!19851 (_values!5415 thiss!1181)) e!502420))))

(declare-fun mapIsEmpty!29163 () Bool)

(assert (=> mapIsEmpty!29163 mapRes!29163))

(declare-fun b!898137 () Bool)

(assert (=> b!898137 (= e!502418 tp_is_empty!18341)))

(declare-fun b!898139 () Bool)

(declare-fun e!502415 () Bool)

(assert (=> b!898139 (= e!502419 (not e!502415))))

(declare-fun res!607096 () Bool)

(assert (=> b!898139 (=> res!607096 e!502415)))

(declare-datatypes ((SeekEntryResult!8911 0))(
  ( (MissingZero!8911 (index!38014 (_ BitVec 32))) (Found!8911 (index!38015 (_ BitVec 32))) (Intermediate!8911 (undefined!9723 Bool) (index!38016 (_ BitVec 32)) (x!76533 (_ BitVec 32))) (Undefined!8911) (MissingVacant!8911 (index!38017 (_ BitVec 32))) )
))
(declare-fun lt!405426 () SeekEntryResult!8911)

(assert (=> b!898139 (= res!607096 (not (is-Found!8911 lt!405426)))))

(declare-fun e!502416 () Bool)

(assert (=> b!898139 e!502416))

(declare-fun res!607097 () Bool)

(assert (=> b!898139 (=> res!607097 e!502416)))

(assert (=> b!898139 (= res!607097 (not (is-Found!8911 lt!405426)))))

(declare-datatypes ((Unit!30503 0))(
  ( (Unit!30504) )
))
(declare-fun lt!405424 () Unit!30503)

(declare-fun lemmaSeekEntryGivesInRangeIndex!96 (array!52704 array!52706 (_ BitVec 32) (_ BitVec 32) V!29419 V!29419 (_ BitVec 64)) Unit!30503)

(assert (=> b!898139 (= lt!405424 (lemmaSeekEntryGivesInRangeIndex!96 (_keys!10178 thiss!1181) (_values!5415 thiss!1181) (mask!26126 thiss!1181) (extraKeys!5124 thiss!1181) (zeroValue!5228 thiss!1181) (minValue!5228 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52704 (_ BitVec 32)) SeekEntryResult!8911)

(assert (=> b!898139 (= lt!405426 (seekEntry!0 key!785 (_keys!10178 thiss!1181) (mask!26126 thiss!1181)))))

(declare-fun b!898140 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!898140 (= e!502416 (inRange!0 (index!38015 lt!405426) (mask!26126 thiss!1181)))))

(declare-fun res!607098 () Bool)

(assert (=> start!76806 (=> (not res!607098) (not e!502419))))

(declare-fun valid!1676 (LongMapFixedSize!4394) Bool)

(assert (=> start!76806 (= res!607098 (valid!1676 thiss!1181))))

(assert (=> start!76806 e!502419))

(assert (=> start!76806 e!502413))

(assert (=> start!76806 true))

(declare-fun b!898138 () Bool)

(declare-fun e!502414 () Bool)

(assert (=> b!898138 (= e!502420 (and e!502414 mapRes!29163))))

(declare-fun condMapEmpty!29163 () Bool)

(declare-fun mapDefault!29163 () ValueCell!8689)

