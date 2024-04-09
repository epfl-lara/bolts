; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89092 () Bool)

(assert start!89092)

(declare-fun b!1021031 () Bool)

(declare-fun b_free!20117 () Bool)

(declare-fun b_next!20117 () Bool)

(assert (=> b!1021031 (= b_free!20117 (not b_next!20117))))

(declare-fun tp!71380 () Bool)

(declare-fun b_and!32323 () Bool)

(assert (=> b!1021031 (= tp!71380 b_and!32323)))

(declare-fun res!684384 () Bool)

(declare-fun e!574964 () Bool)

(assert (=> start!89092 (=> (not res!684384) (not e!574964))))

(declare-datatypes ((V!36655 0))(
  ( (V!36656 (val!11969 Int)) )
))
(declare-datatypes ((array!63698 0))(
  ( (array!63699 (arr!30659 (Array (_ BitVec 32) (_ BitVec 64))) (size!31171 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11215 0))(
  ( (ValueCellFull!11215 (v!14526 V!36655)) (EmptyCell!11215) )
))
(declare-datatypes ((array!63700 0))(
  ( (array!63701 (arr!30660 (Array (_ BitVec 32) ValueCell!11215)) (size!31172 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5024 0))(
  ( (LongMapFixedSize!5025 (defaultEntry!5864 Int) (mask!29420 (_ BitVec 32)) (extraKeys!5596 (_ BitVec 32)) (zeroValue!5700 V!36655) (minValue!5700 V!36655) (_size!2567 (_ BitVec 32)) (_keys!11006 array!63698) (_values!5887 array!63700) (_vacant!2567 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1092 0))(
  ( (Cell!1093 (v!14527 LongMapFixedSize!5024)) )
))
(declare-datatypes ((LongMap!1092 0))(
  ( (LongMap!1093 (underlying!557 Cell!1092)) )
))
(declare-fun thiss!908 () LongMap!1092)

(declare-fun valid!1881 (LongMap!1092) Bool)

(assert (=> start!89092 (= res!684384 (valid!1881 thiss!908))))

(assert (=> start!89092 e!574964))

(declare-fun e!574960 () Bool)

(assert (=> start!89092 e!574960))

(assert (=> start!89092 true))

(declare-fun b!1021027 () Bool)

(declare-fun e!574962 () Bool)

(assert (=> b!1021027 (= e!574960 e!574962)))

(declare-fun b!1021028 () Bool)

(assert (=> b!1021028 (= e!574964 false)))

(declare-fun lt!449956 () Bool)

(declare-fun key!697 () (_ BitVec 64))

(declare-datatypes ((tuple2!15562 0))(
  ( (tuple2!15563 (_1!7791 Bool) (_2!7791 LongMapFixedSize!5024)) )
))
(declare-fun remove!4 (LongMapFixedSize!5024 (_ BitVec 64)) tuple2!15562)

(assert (=> b!1021028 (= lt!449956 (valid!1881 (LongMap!1093 (Cell!1093 (_2!7791 (remove!4 (v!14527 (underlying!557 thiss!908)) key!697))))))))

(declare-fun mapIsEmpty!37167 () Bool)

(declare-fun mapRes!37167 () Bool)

(assert (=> mapIsEmpty!37167 mapRes!37167))

(declare-fun mapNonEmpty!37167 () Bool)

(declare-fun tp!71381 () Bool)

(declare-fun e!574966 () Bool)

(assert (=> mapNonEmpty!37167 (= mapRes!37167 (and tp!71381 e!574966))))

(declare-fun mapKey!37167 () (_ BitVec 32))

(declare-fun mapRest!37167 () (Array (_ BitVec 32) ValueCell!11215))

(declare-fun mapValue!37167 () ValueCell!11215)

(assert (=> mapNonEmpty!37167 (= (arr!30660 (_values!5887 (v!14527 (underlying!557 thiss!908)))) (store mapRest!37167 mapKey!37167 mapValue!37167))))

(declare-fun b!1021029 () Bool)

(declare-fun e!574961 () Bool)

(declare-fun e!574965 () Bool)

(assert (=> b!1021029 (= e!574961 (and e!574965 mapRes!37167))))

(declare-fun condMapEmpty!37167 () Bool)

(declare-fun mapDefault!37167 () ValueCell!11215)

