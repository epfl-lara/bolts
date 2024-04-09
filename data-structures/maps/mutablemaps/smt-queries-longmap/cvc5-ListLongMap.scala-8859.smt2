; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107528 () Bool)

(assert start!107528)

(declare-fun b!1272935 () Bool)

(declare-fun b_free!27697 () Bool)

(declare-fun b_next!27697 () Bool)

(assert (=> b!1272935 (= b_free!27697 (not b_next!27697))))

(declare-fun tp!97626 () Bool)

(declare-fun b_and!45763 () Bool)

(assert (=> b!1272935 (= tp!97626 b_and!45763)))

(declare-fun e!726205 () Bool)

(declare-fun tp_is_empty!33067 () Bool)

(declare-datatypes ((V!49283 0))(
  ( (V!49284 (val!16608 Int)) )
))
(declare-datatypes ((ValueCell!15680 0))(
  ( (ValueCellFull!15680 (v!19243 V!49283)) (EmptyCell!15680) )
))
(declare-datatypes ((array!83341 0))(
  ( (array!83342 (arr!40195 (Array (_ BitVec 32) ValueCell!15680)) (size!40737 (_ BitVec 32))) )
))
(declare-datatypes ((array!83343 0))(
  ( (array!83344 (arr!40196 (Array (_ BitVec 32) (_ BitVec 64))) (size!40738 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6124 0))(
  ( (LongMapFixedSize!6125 (defaultEntry!6708 Int) (mask!34470 (_ BitVec 32)) (extraKeys!6387 (_ BitVec 32)) (zeroValue!6493 V!49283) (minValue!6493 V!49283) (_size!3117 (_ BitVec 32)) (_keys!12116 array!83343) (_values!6731 array!83341) (_vacant!3117 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6124)

(declare-fun e!726206 () Bool)

(declare-fun array_inv!30513 (array!83343) Bool)

(declare-fun array_inv!30514 (array!83341) Bool)

(assert (=> b!1272935 (= e!726205 (and tp!97626 tp_is_empty!33067 (array_inv!30513 (_keys!12116 thiss!1559)) (array_inv!30514 (_values!6731 thiss!1559)) e!726206))))

(declare-fun b!1272936 () Bool)

(declare-fun e!726203 () Bool)

(assert (=> b!1272936 (= e!726203 tp_is_empty!33067)))

(declare-fun b!1272937 () Bool)

(declare-fun e!726204 () Bool)

(assert (=> b!1272937 (= e!726204 tp_is_empty!33067)))

(declare-fun b!1272938 () Bool)

(declare-fun res!846676 () Bool)

(declare-fun e!726207 () Bool)

(assert (=> b!1272938 (=> (not res!846676) (not e!726207))))

(assert (=> b!1272938 (= res!846676 (and (= (size!40737 (_values!6731 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34470 thiss!1559))) (= (size!40738 (_keys!12116 thiss!1559)) (size!40737 (_values!6731 thiss!1559))) (bvsge (mask!34470 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6387 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6387 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun res!846677 () Bool)

(assert (=> start!107528 (=> (not res!846677) (not e!726207))))

(declare-fun valid!2253 (LongMapFixedSize!6124) Bool)

(assert (=> start!107528 (= res!846677 (valid!2253 thiss!1559))))

(assert (=> start!107528 e!726207))

(assert (=> start!107528 e!726205))

(declare-fun b!1272939 () Bool)

(declare-fun res!846678 () Bool)

(assert (=> b!1272939 (=> (not res!846678) (not e!726207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272939 (= res!846678 (validMask!0 (mask!34470 thiss!1559)))))

(declare-fun mapIsEmpty!51210 () Bool)

(declare-fun mapRes!51210 () Bool)

(assert (=> mapIsEmpty!51210 mapRes!51210))

(declare-fun b!1272940 () Bool)

(assert (=> b!1272940 (= e!726206 (and e!726204 mapRes!51210))))

(declare-fun condMapEmpty!51210 () Bool)

(declare-fun mapDefault!51210 () ValueCell!15680)

