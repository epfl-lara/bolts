; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107548 () Bool)

(assert start!107548)

(declare-fun b!1273080 () Bool)

(declare-fun b_free!27707 () Bool)

(declare-fun b_next!27707 () Bool)

(assert (=> b!1273080 (= b_free!27707 (not b_next!27707))))

(declare-fun tp!97660 () Bool)

(declare-fun b_and!45773 () Bool)

(assert (=> b!1273080 (= tp!97660 b_and!45773)))

(declare-fun res!846746 () Bool)

(declare-fun e!726315 () Bool)

(assert (=> start!107548 (=> (not res!846746) (not e!726315))))

(declare-datatypes ((V!49295 0))(
  ( (V!49296 (val!16613 Int)) )
))
(declare-datatypes ((ValueCell!15685 0))(
  ( (ValueCellFull!15685 (v!19248 V!49295)) (EmptyCell!15685) )
))
(declare-datatypes ((array!83363 0))(
  ( (array!83364 (arr!40205 (Array (_ BitVec 32) ValueCell!15685)) (size!40747 (_ BitVec 32))) )
))
(declare-datatypes ((array!83365 0))(
  ( (array!83366 (arr!40206 (Array (_ BitVec 32) (_ BitVec 64))) (size!40748 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6134 0))(
  ( (LongMapFixedSize!6135 (defaultEntry!6713 Int) (mask!34479 (_ BitVec 32)) (extraKeys!6392 (_ BitVec 32)) (zeroValue!6498 V!49295) (minValue!6498 V!49295) (_size!3122 (_ BitVec 32)) (_keys!12122 array!83365) (_values!6736 array!83363) (_vacant!3122 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6134)

(declare-fun valid!2258 (LongMapFixedSize!6134) Bool)

(assert (=> start!107548 (= res!846746 (valid!2258 thiss!1559))))

(assert (=> start!107548 e!726315))

(declare-fun e!726313 () Bool)

(assert (=> start!107548 e!726313))

(declare-fun b!1273077 () Bool)

(declare-datatypes ((List!28724 0))(
  ( (Nil!28721) (Cons!28720 (h!29929 (_ BitVec 64)) (t!42264 List!28724)) )
))
(declare-fun arrayNoDuplicates!0 (array!83365 (_ BitVec 32) List!28724) Bool)

(assert (=> b!1273077 (= e!726315 (not (arrayNoDuplicates!0 (_keys!12122 thiss!1559) #b00000000000000000000000000000000 Nil!28721)))))

(declare-fun b!1273078 () Bool)

(declare-fun res!846747 () Bool)

(assert (=> b!1273078 (=> (not res!846747) (not e!726315))))

(assert (=> b!1273078 (= res!846747 (and (= (size!40747 (_values!6736 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34479 thiss!1559))) (= (size!40748 (_keys!12122 thiss!1559)) (size!40747 (_values!6736 thiss!1559))) (bvsge (mask!34479 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6392 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6392 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun b!1273079 () Bool)

(declare-fun res!846744 () Bool)

(assert (=> b!1273079 (=> (not res!846744) (not e!726315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273079 (= res!846744 (validMask!0 (mask!34479 thiss!1559)))))

(declare-fun tp_is_empty!33077 () Bool)

(declare-fun e!726311 () Bool)

(declare-fun array_inv!30521 (array!83365) Bool)

(declare-fun array_inv!30522 (array!83363) Bool)

(assert (=> b!1273080 (= e!726313 (and tp!97660 tp_is_empty!33077 (array_inv!30521 (_keys!12122 thiss!1559)) (array_inv!30522 (_values!6736 thiss!1559)) e!726311))))

(declare-fun b!1273081 () Bool)

(declare-fun e!726314 () Bool)

(declare-fun mapRes!51228 () Bool)

(assert (=> b!1273081 (= e!726311 (and e!726314 mapRes!51228))))

(declare-fun condMapEmpty!51228 () Bool)

(declare-fun mapDefault!51228 () ValueCell!15685)

