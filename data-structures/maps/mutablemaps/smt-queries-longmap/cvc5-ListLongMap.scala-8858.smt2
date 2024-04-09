; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107506 () Bool)

(assert start!107506)

(declare-fun b!1272809 () Bool)

(declare-fun b_free!27691 () Bool)

(declare-fun b_next!27691 () Bool)

(assert (=> b!1272809 (= b_free!27691 (not b_next!27691))))

(declare-fun tp!97604 () Bool)

(declare-fun b_and!45757 () Bool)

(assert (=> b!1272809 (= tp!97604 b_and!45757)))

(declare-fun res!846620 () Bool)

(declare-fun e!726109 () Bool)

(assert (=> start!107506 (=> (not res!846620) (not e!726109))))

(declare-datatypes ((V!49275 0))(
  ( (V!49276 (val!16605 Int)) )
))
(declare-datatypes ((ValueCell!15677 0))(
  ( (ValueCellFull!15677 (v!19240 V!49275)) (EmptyCell!15677) )
))
(declare-datatypes ((array!83327 0))(
  ( (array!83328 (arr!40189 (Array (_ BitVec 32) ValueCell!15677)) (size!40730 (_ BitVec 32))) )
))
(declare-datatypes ((array!83329 0))(
  ( (array!83330 (arr!40190 (Array (_ BitVec 32) (_ BitVec 64))) (size!40731 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6118 0))(
  ( (LongMapFixedSize!6119 (defaultEntry!6705 Int) (mask!34463 (_ BitVec 32)) (extraKeys!6384 (_ BitVec 32)) (zeroValue!6490 V!49275) (minValue!6490 V!49275) (_size!3114 (_ BitVec 32)) (_keys!12112 array!83329) (_values!6728 array!83327) (_vacant!3114 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6118)

(declare-fun valid!2250 (LongMapFixedSize!6118) Bool)

(assert (=> start!107506 (= res!846620 (valid!2250 thiss!1559))))

(assert (=> start!107506 e!726109))

(declare-fun e!726113 () Bool)

(assert (=> start!107506 e!726113))

(declare-fun tp_is_empty!33061 () Bool)

(declare-fun e!726112 () Bool)

(declare-fun array_inv!30507 (array!83329) Bool)

(declare-fun array_inv!30508 (array!83327) Bool)

(assert (=> b!1272809 (= e!726113 (and tp!97604 tp_is_empty!33061 (array_inv!30507 (_keys!12112 thiss!1559)) (array_inv!30508 (_values!6728 thiss!1559)) e!726112))))

(declare-fun mapIsEmpty!51197 () Bool)

(declare-fun mapRes!51197 () Bool)

(assert (=> mapIsEmpty!51197 mapRes!51197))

(declare-fun b!1272810 () Bool)

(assert (=> b!1272810 (= e!726109 (and (= (size!40730 (_values!6728 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34463 thiss!1559))) (= (size!40731 (_keys!12112 thiss!1559)) (size!40730 (_values!6728 thiss!1559))) (bvsge (mask!34463 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6384 thiss!1559) #b00000000000000000000000000000000) (bvsgt (extraKeys!6384 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun b!1272811 () Bool)

(declare-fun res!846621 () Bool)

(assert (=> b!1272811 (=> (not res!846621) (not e!726109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272811 (= res!846621 (validMask!0 (mask!34463 thiss!1559)))))

(declare-fun b!1272812 () Bool)

(declare-fun e!726110 () Bool)

(assert (=> b!1272812 (= e!726110 tp_is_empty!33061)))

(declare-fun b!1272813 () Bool)

(assert (=> b!1272813 (= e!726112 (and e!726110 mapRes!51197))))

(declare-fun condMapEmpty!51197 () Bool)

(declare-fun mapDefault!51197 () ValueCell!15677)

