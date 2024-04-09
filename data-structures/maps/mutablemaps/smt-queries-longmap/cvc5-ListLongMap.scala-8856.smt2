; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107470 () Bool)

(assert start!107470)

(declare-fun b!1272617 () Bool)

(declare-fun b_free!27679 () Bool)

(declare-fun b_next!27679 () Bool)

(assert (=> b!1272617 (= b_free!27679 (not b_next!27679))))

(declare-fun tp!97562 () Bool)

(declare-fun b_and!45745 () Bool)

(assert (=> b!1272617 (= tp!97562 b_and!45745)))

(declare-fun b!1272614 () Bool)

(declare-fun res!846540 () Bool)

(declare-fun e!725953 () Bool)

(assert (=> b!1272614 (=> (not res!846540) (not e!725953))))

(declare-datatypes ((V!49259 0))(
  ( (V!49260 (val!16599 Int)) )
))
(declare-datatypes ((ValueCell!15671 0))(
  ( (ValueCellFull!15671 (v!19234 V!49259)) (EmptyCell!15671) )
))
(declare-datatypes ((array!83299 0))(
  ( (array!83300 (arr!40177 (Array (_ BitVec 32) ValueCell!15671)) (size!40717 (_ BitVec 32))) )
))
(declare-datatypes ((array!83301 0))(
  ( (array!83302 (arr!40178 (Array (_ BitVec 32) (_ BitVec 64))) (size!40718 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6106 0))(
  ( (LongMapFixedSize!6107 (defaultEntry!6699 Int) (mask!34450 (_ BitVec 32)) (extraKeys!6378 (_ BitVec 32)) (zeroValue!6484 V!49259) (minValue!6484 V!49259) (_size!3108 (_ BitVec 32)) (_keys!12105 array!83301) (_values!6722 array!83299) (_vacant!3108 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6106)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272614 (= res!846540 (validMask!0 (mask!34450 thiss!1559)))))

(declare-fun b!1272615 () Bool)

(assert (=> b!1272615 (= e!725953 (and (= (size!40717 (_values!6722 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34450 thiss!1559))) (= (size!40718 (_keys!12105 thiss!1559)) (size!40717 (_values!6722 thiss!1559))) (bvslt (mask!34450 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun res!846539 () Bool)

(assert (=> start!107470 (=> (not res!846539) (not e!725953))))

(declare-fun valid!2246 (LongMapFixedSize!6106) Bool)

(assert (=> start!107470 (= res!846539 (valid!2246 thiss!1559))))

(assert (=> start!107470 e!725953))

(declare-fun e!725952 () Bool)

(assert (=> start!107470 e!725952))

(declare-fun b!1272616 () Bool)

(declare-fun e!725950 () Bool)

(declare-fun e!725954 () Bool)

(declare-fun mapRes!51172 () Bool)

(assert (=> b!1272616 (= e!725950 (and e!725954 mapRes!51172))))

(declare-fun condMapEmpty!51172 () Bool)

(declare-fun mapDefault!51172 () ValueCell!15671)

