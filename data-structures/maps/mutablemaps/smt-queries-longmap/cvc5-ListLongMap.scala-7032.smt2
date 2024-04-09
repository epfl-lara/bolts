; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89240 () Bool)

(assert start!89240)

(declare-fun b!1022710 () Bool)

(declare-fun b_free!20245 () Bool)

(declare-fun b_next!20245 () Bool)

(assert (=> b!1022710 (= b_free!20245 (not b_next!20245))))

(declare-fun tp!71771 () Bool)

(declare-fun b_and!32485 () Bool)

(assert (=> b!1022710 (= tp!71771 b_and!32485)))

(declare-fun b!1022708 () Bool)

(declare-fun res!685111 () Bool)

(declare-fun e!576252 () Bool)

(assert (=> b!1022708 (=> (not res!685111) (not e!576252))))

(declare-datatypes ((V!36827 0))(
  ( (V!36828 (val!12033 Int)) )
))
(declare-datatypes ((ValueCell!11279 0))(
  ( (ValueCellFull!11279 (v!14603 V!36827)) (EmptyCell!11279) )
))
(declare-datatypes ((array!63958 0))(
  ( (array!63959 (arr!30787 (Array (_ BitVec 32) (_ BitVec 64))) (size!31299 (_ BitVec 32))) )
))
(declare-datatypes ((array!63960 0))(
  ( (array!63961 (arr!30788 (Array (_ BitVec 32) ValueCell!11279)) (size!31300 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5152 0))(
  ( (LongMapFixedSize!5153 (defaultEntry!5928 Int) (mask!29528 (_ BitVec 32)) (extraKeys!5660 (_ BitVec 32)) (zeroValue!5764 V!36827) (minValue!5764 V!36827) (_size!2631 (_ BitVec 32)) (_keys!11070 array!63958) (_values!5951 array!63960) (_vacant!2631 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5152)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63958 (_ BitVec 32)) Bool)

(assert (=> b!1022708 (= res!685111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11070 thiss!1427) (mask!29528 thiss!1427)))))

(declare-fun b!1022709 () Bool)

(assert (=> b!1022709 (= e!576252 false)))

(declare-fun lt!450310 () Bool)

(declare-datatypes ((List!21801 0))(
  ( (Nil!21798) (Cons!21797 (h!22995 (_ BitVec 64)) (t!30846 List!21801)) )
))
(declare-fun arrayNoDuplicates!0 (array!63958 (_ BitVec 32) List!21801) Bool)

(assert (=> b!1022709 (= lt!450310 (arrayNoDuplicates!0 (_keys!11070 thiss!1427) #b00000000000000000000000000000000 Nil!21798))))

(declare-fun mapIsEmpty!37365 () Bool)

(declare-fun mapRes!37365 () Bool)

(assert (=> mapIsEmpty!37365 mapRes!37365))

(declare-fun e!576253 () Bool)

(declare-fun e!576249 () Bool)

(declare-fun tp_is_empty!23965 () Bool)

(declare-fun array_inv!23729 (array!63958) Bool)

(declare-fun array_inv!23730 (array!63960) Bool)

(assert (=> b!1022710 (= e!576249 (and tp!71771 tp_is_empty!23965 (array_inv!23729 (_keys!11070 thiss!1427)) (array_inv!23730 (_values!5951 thiss!1427)) e!576253))))

(declare-fun b!1022711 () Bool)

(declare-fun res!685110 () Bool)

(assert (=> b!1022711 (=> (not res!685110) (not e!576252))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022711 (= res!685110 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!685112 () Bool)

(assert (=> start!89240 (=> (not res!685112) (not e!576252))))

(declare-fun valid!1926 (LongMapFixedSize!5152) Bool)

(assert (=> start!89240 (= res!685112 (valid!1926 thiss!1427))))

(assert (=> start!89240 e!576252))

(assert (=> start!89240 e!576249))

(assert (=> start!89240 true))

(declare-fun b!1022712 () Bool)

(declare-fun res!685109 () Bool)

(assert (=> b!1022712 (=> (not res!685109) (not e!576252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022712 (= res!685109 (validMask!0 (mask!29528 thiss!1427)))))

(declare-fun mapNonEmpty!37365 () Bool)

(declare-fun tp!71770 () Bool)

(declare-fun e!576248 () Bool)

(assert (=> mapNonEmpty!37365 (= mapRes!37365 (and tp!71770 e!576248))))

(declare-fun mapKey!37365 () (_ BitVec 32))

(declare-fun mapValue!37365 () ValueCell!11279)

(declare-fun mapRest!37365 () (Array (_ BitVec 32) ValueCell!11279))

(assert (=> mapNonEmpty!37365 (= (arr!30788 (_values!5951 thiss!1427)) (store mapRest!37365 mapKey!37365 mapValue!37365))))

(declare-fun b!1022713 () Bool)

(assert (=> b!1022713 (= e!576248 tp_is_empty!23965)))

(declare-fun b!1022714 () Bool)

(declare-fun e!576250 () Bool)

(assert (=> b!1022714 (= e!576250 tp_is_empty!23965)))

(declare-fun b!1022715 () Bool)

(declare-fun res!685113 () Bool)

(assert (=> b!1022715 (=> (not res!685113) (not e!576252))))

(assert (=> b!1022715 (= res!685113 (and (= (size!31300 (_values!5951 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29528 thiss!1427))) (= (size!31299 (_keys!11070 thiss!1427)) (size!31300 (_values!5951 thiss!1427))) (bvsge (mask!29528 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5660 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5660 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5660 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5660 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5660 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5660 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5660 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1022716 () Bool)

(assert (=> b!1022716 (= e!576253 (and e!576250 mapRes!37365))))

(declare-fun condMapEmpty!37365 () Bool)

(declare-fun mapDefault!37365 () ValueCell!11279)

