; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89234 () Bool)

(assert start!89234)

(declare-fun b!1022632 () Bool)

(declare-fun b_free!20239 () Bool)

(declare-fun b_next!20239 () Bool)

(assert (=> b!1022632 (= b_free!20239 (not b_next!20239))))

(declare-fun tp!71753 () Bool)

(declare-fun b_and!32479 () Bool)

(assert (=> b!1022632 (= tp!71753 b_and!32479)))

(declare-fun b!1022627 () Bool)

(declare-fun res!685065 () Bool)

(declare-fun e!576196 () Bool)

(assert (=> b!1022627 (=> (not res!685065) (not e!576196))))

(declare-datatypes ((V!36819 0))(
  ( (V!36820 (val!12030 Int)) )
))
(declare-datatypes ((ValueCell!11276 0))(
  ( (ValueCellFull!11276 (v!14600 V!36819)) (EmptyCell!11276) )
))
(declare-datatypes ((array!63946 0))(
  ( (array!63947 (arr!30781 (Array (_ BitVec 32) (_ BitVec 64))) (size!31293 (_ BitVec 32))) )
))
(declare-datatypes ((array!63948 0))(
  ( (array!63949 (arr!30782 (Array (_ BitVec 32) ValueCell!11276)) (size!31294 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5146 0))(
  ( (LongMapFixedSize!5147 (defaultEntry!5925 Int) (mask!29523 (_ BitVec 32)) (extraKeys!5657 (_ BitVec 32)) (zeroValue!5761 V!36819) (minValue!5761 V!36819) (_size!2628 (_ BitVec 32)) (_keys!11067 array!63946) (_values!5948 array!63948) (_vacant!2628 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5146)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63946 (_ BitVec 32)) Bool)

(assert (=> b!1022627 (= res!685065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11067 thiss!1427) (mask!29523 thiss!1427)))))

(declare-fun mapIsEmpty!37356 () Bool)

(declare-fun mapRes!37356 () Bool)

(assert (=> mapIsEmpty!37356 mapRes!37356))

(declare-fun mapNonEmpty!37356 () Bool)

(declare-fun tp!71752 () Bool)

(declare-fun e!576197 () Bool)

(assert (=> mapNonEmpty!37356 (= mapRes!37356 (and tp!71752 e!576197))))

(declare-fun mapKey!37356 () (_ BitVec 32))

(declare-fun mapRest!37356 () (Array (_ BitVec 32) ValueCell!11276))

(declare-fun mapValue!37356 () ValueCell!11276)

(assert (=> mapNonEmpty!37356 (= (arr!30782 (_values!5948 thiss!1427)) (store mapRest!37356 mapKey!37356 mapValue!37356))))

(declare-fun b!1022628 () Bool)

(declare-fun res!685066 () Bool)

(assert (=> b!1022628 (=> (not res!685066) (not e!576196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022628 (= res!685066 (validMask!0 (mask!29523 thiss!1427)))))

(declare-fun b!1022629 () Bool)

(declare-fun e!576195 () Bool)

(declare-fun tp_is_empty!23959 () Bool)

(assert (=> b!1022629 (= e!576195 tp_is_empty!23959)))

(declare-fun b!1022630 () Bool)

(assert (=> b!1022630 (= e!576196 false)))

(declare-fun lt!450301 () Bool)

(declare-datatypes ((List!21799 0))(
  ( (Nil!21796) (Cons!21795 (h!22993 (_ BitVec 64)) (t!30844 List!21799)) )
))
(declare-fun arrayNoDuplicates!0 (array!63946 (_ BitVec 32) List!21799) Bool)

(assert (=> b!1022630 (= lt!450301 (arrayNoDuplicates!0 (_keys!11067 thiss!1427) #b00000000000000000000000000000000 Nil!21796))))

(declare-fun b!1022631 () Bool)

(assert (=> b!1022631 (= e!576197 tp_is_empty!23959)))

(declare-fun e!576198 () Bool)

(declare-fun e!576199 () Bool)

(declare-fun array_inv!23725 (array!63946) Bool)

(declare-fun array_inv!23726 (array!63948) Bool)

(assert (=> b!1022632 (= e!576198 (and tp!71753 tp_is_empty!23959 (array_inv!23725 (_keys!11067 thiss!1427)) (array_inv!23726 (_values!5948 thiss!1427)) e!576199))))

(declare-fun res!685064 () Bool)

(assert (=> start!89234 (=> (not res!685064) (not e!576196))))

(declare-fun valid!1924 (LongMapFixedSize!5146) Bool)

(assert (=> start!89234 (= res!685064 (valid!1924 thiss!1427))))

(assert (=> start!89234 e!576196))

(assert (=> start!89234 e!576198))

(assert (=> start!89234 true))

(declare-fun b!1022633 () Bool)

(assert (=> b!1022633 (= e!576199 (and e!576195 mapRes!37356))))

(declare-fun condMapEmpty!37356 () Bool)

(declare-fun mapDefault!37356 () ValueCell!11276)

