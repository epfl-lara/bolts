; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107426 () Bool)

(assert start!107426)

(declare-fun b!1272369 () Bool)

(declare-fun b_free!27667 () Bool)

(declare-fun b_next!27667 () Bool)

(assert (=> b!1272369 (= b_free!27667 (not b_next!27667))))

(declare-fun tp!97518 () Bool)

(declare-fun b_and!45733 () Bool)

(assert (=> b!1272369 (= tp!97518 b_and!45733)))

(declare-fun res!846431 () Bool)

(declare-fun e!725760 () Bool)

(assert (=> start!107426 (=> (not res!846431) (not e!725760))))

(declare-datatypes ((V!49243 0))(
  ( (V!49244 (val!16593 Int)) )
))
(declare-datatypes ((ValueCell!15665 0))(
  ( (ValueCellFull!15665 (v!19228 V!49243)) (EmptyCell!15665) )
))
(declare-datatypes ((array!83271 0))(
  ( (array!83272 (arr!40165 (Array (_ BitVec 32) ValueCell!15665)) (size!40703 (_ BitVec 32))) )
))
(declare-datatypes ((array!83273 0))(
  ( (array!83274 (arr!40166 (Array (_ BitVec 32) (_ BitVec 64))) (size!40704 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6094 0))(
  ( (LongMapFixedSize!6095 (defaultEntry!6693 Int) (mask!34436 (_ BitVec 32)) (extraKeys!6372 (_ BitVec 32)) (zeroValue!6478 V!49243) (minValue!6478 V!49243) (_size!3102 (_ BitVec 32)) (_keys!12097 array!83273) (_values!6716 array!83271) (_vacant!3102 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6094)

(declare-fun valid!2242 (LongMapFixedSize!6094) Bool)

(assert (=> start!107426 (= res!846431 (valid!2242 thiss!1559))))

(assert (=> start!107426 e!725760))

(declare-fun e!725761 () Bool)

(assert (=> start!107426 e!725761))

(declare-fun b!1272366 () Bool)

(declare-fun e!725762 () Bool)

(declare-fun tp_is_empty!33037 () Bool)

(assert (=> b!1272366 (= e!725762 tp_is_empty!33037)))

(declare-fun mapNonEmpty!51146 () Bool)

(declare-fun mapRes!51146 () Bool)

(declare-fun tp!97517 () Bool)

(assert (=> mapNonEmpty!51146 (= mapRes!51146 (and tp!97517 e!725762))))

(declare-fun mapKey!51146 () (_ BitVec 32))

(declare-fun mapRest!51146 () (Array (_ BitVec 32) ValueCell!15665))

(declare-fun mapValue!51146 () ValueCell!15665)

(assert (=> mapNonEmpty!51146 (= (arr!40165 (_values!6716 thiss!1559)) (store mapRest!51146 mapKey!51146 mapValue!51146))))

(declare-fun b!1272367 () Bool)

(declare-fun e!725764 () Bool)

(declare-fun e!725765 () Bool)

(assert (=> b!1272367 (= e!725764 (and e!725765 mapRes!51146))))

(declare-fun condMapEmpty!51146 () Bool)

(declare-fun mapDefault!51146 () ValueCell!15665)

