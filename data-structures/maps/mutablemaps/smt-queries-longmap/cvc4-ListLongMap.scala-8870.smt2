; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107710 () Bool)

(assert start!107710)

(declare-fun b!1274021 () Bool)

(declare-fun b_free!27767 () Bool)

(declare-fun b_next!27767 () Bool)

(assert (=> b!1274021 (= b_free!27767 (not b_next!27767))))

(declare-fun tp!97869 () Bool)

(declare-fun b_and!45833 () Bool)

(assert (=> b!1274021 (= tp!97869 b_and!45833)))

(declare-fun b!1274019 () Bool)

(declare-fun res!847131 () Bool)

(declare-fun e!727047 () Bool)

(assert (=> b!1274019 (=> (not res!847131) (not e!727047))))

(declare-datatypes ((V!49375 0))(
  ( (V!49376 (val!16643 Int)) )
))
(declare-datatypes ((ValueCell!15715 0))(
  ( (ValueCellFull!15715 (v!19278 V!49375)) (EmptyCell!15715) )
))
(declare-datatypes ((array!83501 0))(
  ( (array!83502 (arr!40265 (Array (_ BitVec 32) ValueCell!15715)) (size!40814 (_ BitVec 32))) )
))
(declare-datatypes ((array!83503 0))(
  ( (array!83504 (arr!40266 (Array (_ BitVec 32) (_ BitVec 64))) (size!40815 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6194 0))(
  ( (LongMapFixedSize!6195 (defaultEntry!6743 Int) (mask!34541 (_ BitVec 32)) (extraKeys!6422 (_ BitVec 32)) (zeroValue!6528 V!49375) (minValue!6528 V!49375) (_size!3152 (_ BitVec 32)) (_keys!12157 array!83503) (_values!6766 array!83501) (_vacant!3152 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6194)

(assert (=> b!1274019 (= res!847131 (and (bvsle #b00000000000000000000000000000000 (size!40815 (_keys!12157 thiss!1551))) (bvslt (size!40815 (_keys!12157 thiss!1551)) #b01111111111111111111111111111111)))))

(declare-fun b!1274020 () Bool)

(declare-fun res!847133 () Bool)

(assert (=> b!1274020 (=> (not res!847133) (not e!727047))))

(declare-fun arrayCountValidKeys!0 (array!83503 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1274020 (= res!847133 (= (arrayCountValidKeys!0 (_keys!12157 thiss!1551) #b00000000000000000000000000000000 (size!40815 (_keys!12157 thiss!1551))) (_size!3152 thiss!1551)))))

(declare-fun mapNonEmpty!51347 () Bool)

(declare-fun mapRes!51347 () Bool)

(declare-fun tp!97868 () Bool)

(declare-fun e!727049 () Bool)

(assert (=> mapNonEmpty!51347 (= mapRes!51347 (and tp!97868 e!727049))))

(declare-fun mapRest!51347 () (Array (_ BitVec 32) ValueCell!15715))

(declare-fun mapKey!51347 () (_ BitVec 32))

(declare-fun mapValue!51347 () ValueCell!15715)

(assert (=> mapNonEmpty!51347 (= (arr!40265 (_values!6766 thiss!1551)) (store mapRest!51347 mapKey!51347 mapValue!51347))))

(declare-fun tp_is_empty!33137 () Bool)

(declare-fun e!727050 () Bool)

(declare-fun e!727048 () Bool)

(declare-fun array_inv!30557 (array!83503) Bool)

(declare-fun array_inv!30558 (array!83501) Bool)

(assert (=> b!1274021 (= e!727048 (and tp!97869 tp_is_empty!33137 (array_inv!30557 (_keys!12157 thiss!1551)) (array_inv!30558 (_values!6766 thiss!1551)) e!727050))))

(declare-fun b!1274022 () Bool)

(declare-fun res!847130 () Bool)

(assert (=> b!1274022 (=> (not res!847130) (not e!727047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83503 (_ BitVec 32)) Bool)

(assert (=> b!1274022 (= res!847130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12157 thiss!1551) (mask!34541 thiss!1551)))))

(declare-fun b!1274023 () Bool)

(declare-fun e!727051 () Bool)

(assert (=> b!1274023 (= e!727051 tp_is_empty!33137)))

(declare-fun b!1274024 () Bool)

(declare-datatypes ((List!28727 0))(
  ( (Nil!28724) (Cons!28723 (h!29932 (_ BitVec 64)) (t!42267 List!28727)) )
))
(declare-fun noDuplicate!2074 (List!28727) Bool)

(assert (=> b!1274024 (= e!727047 (not (noDuplicate!2074 Nil!28724)))))

(declare-fun mapIsEmpty!51347 () Bool)

(assert (=> mapIsEmpty!51347 mapRes!51347))

(declare-fun res!847132 () Bool)

(assert (=> start!107710 (=> (not res!847132) (not e!727047))))

(declare-fun simpleValid!478 (LongMapFixedSize!6194) Bool)

(assert (=> start!107710 (= res!847132 (simpleValid!478 thiss!1551))))

(assert (=> start!107710 e!727047))

(assert (=> start!107710 e!727048))

(declare-fun b!1274025 () Bool)

(assert (=> b!1274025 (= e!727050 (and e!727051 mapRes!51347))))

(declare-fun condMapEmpty!51347 () Bool)

(declare-fun mapDefault!51347 () ValueCell!15715)

