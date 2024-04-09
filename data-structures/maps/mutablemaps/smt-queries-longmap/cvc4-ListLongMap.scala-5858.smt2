; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75710 () Bool)

(assert start!75710)

(declare-fun b!889672 () Bool)

(declare-fun b_free!15653 () Bool)

(declare-fun b_next!15653 () Bool)

(assert (=> b!889672 (= b_free!15653 (not b_next!15653))))

(declare-fun tp!54928 () Bool)

(declare-fun b_and!25911 () Bool)

(assert (=> b!889672 (= tp!54928 b_and!25911)))

(declare-fun e!496033 () Bool)

(declare-datatypes ((array!51928 0))(
  ( (array!51929 (arr!24966 (Array (_ BitVec 32) (_ BitVec 64))) (size!25411 (_ BitVec 32))) )
))
(declare-datatypes ((V!28939 0))(
  ( (V!28940 (val!9041 Int)) )
))
(declare-datatypes ((ValueCell!8509 0))(
  ( (ValueCellFull!8509 (v!11513 V!28939)) (EmptyCell!8509) )
))
(declare-datatypes ((array!51930 0))(
  ( (array!51931 (arr!24967 (Array (_ BitVec 32) ValueCell!8509)) (size!25412 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4034 0))(
  ( (LongMapFixedSize!4035 (defaultEntry!5214 Int) (mask!25664 (_ BitVec 32)) (extraKeys!4908 (_ BitVec 32)) (zeroValue!5012 V!28939) (minValue!5012 V!28939) (_size!2072 (_ BitVec 32)) (_keys!9893 array!51928) (_values!5199 array!51930) (_vacant!2072 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4034)

(declare-fun e!496034 () Bool)

(declare-fun tp_is_empty!17981 () Bool)

(declare-fun array_inv!19606 (array!51928) Bool)

(declare-fun array_inv!19607 (array!51930) Bool)

(assert (=> b!889672 (= e!496033 (and tp!54928 tp_is_empty!17981 (array_inv!19606 (_keys!9893 thiss!1181)) (array_inv!19607 (_values!5199 thiss!1181)) e!496034))))

(declare-fun mapNonEmpty!28526 () Bool)

(declare-fun mapRes!28526 () Bool)

(declare-fun tp!54929 () Bool)

(declare-fun e!496032 () Bool)

(assert (=> mapNonEmpty!28526 (= mapRes!28526 (and tp!54929 e!496032))))

(declare-fun mapKey!28526 () (_ BitVec 32))

(declare-fun mapValue!28526 () ValueCell!8509)

(declare-fun mapRest!28526 () (Array (_ BitVec 32) ValueCell!8509))

(assert (=> mapNonEmpty!28526 (= (arr!24967 (_values!5199 thiss!1181)) (store mapRest!28526 mapKey!28526 mapValue!28526))))

(declare-fun b!889673 () Bool)

(declare-fun e!496031 () Bool)

(assert (=> b!889673 (= e!496031 false)))

(declare-fun lt!402063 () Bool)

(declare-datatypes ((List!17795 0))(
  ( (Nil!17792) (Cons!17791 (h!18922 (_ BitVec 64)) (t!25102 List!17795)) )
))
(declare-fun arrayNoDuplicates!0 (array!51928 (_ BitVec 32) List!17795) Bool)

(assert (=> b!889673 (= lt!402063 (arrayNoDuplicates!0 (_keys!9893 thiss!1181) #b00000000000000000000000000000000 Nil!17792))))

(declare-fun b!889674 () Bool)

(declare-fun res!603012 () Bool)

(assert (=> b!889674 (=> (not res!603012) (not e!496031))))

(assert (=> b!889674 (= res!603012 (and (= (size!25412 (_values!5199 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25664 thiss!1181))) (= (size!25411 (_keys!9893 thiss!1181)) (size!25412 (_values!5199 thiss!1181))) (bvsge (mask!25664 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4908 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4908 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun res!603010 () Bool)

(declare-fun e!496037 () Bool)

(assert (=> start!75710 (=> (not res!603010) (not e!496037))))

(declare-fun valid!1558 (LongMapFixedSize!4034) Bool)

(assert (=> start!75710 (= res!603010 (valid!1558 thiss!1181))))

(assert (=> start!75710 e!496037))

(assert (=> start!75710 e!496033))

(assert (=> start!75710 true))

(declare-fun b!889675 () Bool)

(assert (=> b!889675 (= e!496032 tp_is_empty!17981)))

(declare-fun mapIsEmpty!28526 () Bool)

(assert (=> mapIsEmpty!28526 mapRes!28526))

(declare-fun b!889676 () Bool)

(declare-fun res!603011 () Bool)

(assert (=> b!889676 (=> (not res!603011) (not e!496031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51928 (_ BitVec 32)) Bool)

(assert (=> b!889676 (= res!603011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9893 thiss!1181) (mask!25664 thiss!1181)))))

(declare-fun b!889677 () Bool)

(declare-fun e!496036 () Bool)

(assert (=> b!889677 (= e!496034 (and e!496036 mapRes!28526))))

(declare-fun condMapEmpty!28526 () Bool)

(declare-fun mapDefault!28526 () ValueCell!8509)

