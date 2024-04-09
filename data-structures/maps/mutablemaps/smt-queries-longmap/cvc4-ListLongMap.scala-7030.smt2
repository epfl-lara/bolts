; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89232 () Bool)

(assert start!89232)

(declare-fun b!1022604 () Bool)

(declare-fun b_free!20237 () Bool)

(declare-fun b_next!20237 () Bool)

(assert (=> b!1022604 (= b_free!20237 (not b_next!20237))))

(declare-fun tp!71746 () Bool)

(declare-fun b_and!32475 () Bool)

(assert (=> b!1022604 (= tp!71746 b_and!32475)))

(declare-fun b!1022601 () Bool)

(declare-fun e!576179 () Bool)

(assert (=> b!1022601 (= e!576179 (not true))))

(declare-fun lt!450296 () Bool)

(declare-datatypes ((V!36815 0))(
  ( (V!36816 (val!12029 Int)) )
))
(declare-datatypes ((ValueCell!11275 0))(
  ( (ValueCellFull!11275 (v!14599 V!36815)) (EmptyCell!11275) )
))
(declare-datatypes ((array!63942 0))(
  ( (array!63943 (arr!30779 (Array (_ BitVec 32) (_ BitVec 64))) (size!31291 (_ BitVec 32))) )
))
(declare-datatypes ((array!63944 0))(
  ( (array!63945 (arr!30780 (Array (_ BitVec 32) ValueCell!11275)) (size!31292 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5144 0))(
  ( (LongMapFixedSize!5145 (defaultEntry!5924 Int) (mask!29520 (_ BitVec 32)) (extraKeys!5656 (_ BitVec 32)) (zeroValue!5760 V!36815) (minValue!5760 V!36815) (_size!2627 (_ BitVec 32)) (_keys!11066 array!63942) (_values!5947 array!63944) (_vacant!2627 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5144)

(declare-fun lt!450297 () V!36815)

(declare-fun valid!1923 (LongMapFixedSize!5144) Bool)

(assert (=> b!1022601 (= lt!450296 (valid!1923 (LongMapFixedSize!5145 (defaultEntry!5924 thiss!1427) (mask!29520 thiss!1427) (bvand (extraKeys!5656 thiss!1427) #b00000000000000000000000000000010) lt!450297 (minValue!5760 thiss!1427) (_size!2627 thiss!1427) (_keys!11066 thiss!1427) (_values!5947 thiss!1427) (_vacant!2627 thiss!1427))))))

(declare-datatypes ((tuple2!15596 0))(
  ( (tuple2!15597 (_1!7808 (_ BitVec 64)) (_2!7808 V!36815)) )
))
(declare-datatypes ((List!21798 0))(
  ( (Nil!21795) (Cons!21794 (h!22992 tuple2!15596) (t!30843 List!21798)) )
))
(declare-datatypes ((ListLongMap!13755 0))(
  ( (ListLongMap!13756 (toList!6893 List!21798)) )
))
(declare-fun -!469 (ListLongMap!13755 (_ BitVec 64)) ListLongMap!13755)

(declare-fun getCurrentListMap!3900 (array!63942 array!63944 (_ BitVec 32) (_ BitVec 32) V!36815 V!36815 (_ BitVec 32) Int) ListLongMap!13755)

(assert (=> b!1022601 (= (-!469 (getCurrentListMap!3900 (_keys!11066 thiss!1427) (_values!5947 thiss!1427) (mask!29520 thiss!1427) (extraKeys!5656 thiss!1427) (zeroValue!5760 thiss!1427) (minValue!5760 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5924 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3900 (_keys!11066 thiss!1427) (_values!5947 thiss!1427) (mask!29520 thiss!1427) (bvand (extraKeys!5656 thiss!1427) #b00000000000000000000000000000010) lt!450297 (minValue!5760 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5924 thiss!1427)))))

(declare-datatypes ((Unit!33290 0))(
  ( (Unit!33291) )
))
(declare-fun lt!450298 () Unit!33290)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!9 (array!63942 array!63944 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36815 V!36815 V!36815 Int) Unit!33290)

(assert (=> b!1022601 (= lt!450298 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!9 (_keys!11066 thiss!1427) (_values!5947 thiss!1427) (mask!29520 thiss!1427) (extraKeys!5656 thiss!1427) (bvand (extraKeys!5656 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5760 thiss!1427) lt!450297 (minValue!5760 thiss!1427) (defaultEntry!5924 thiss!1427)))))

(declare-fun dynLambda!1944 (Int (_ BitVec 64)) V!36815)

(assert (=> b!1022601 (= lt!450297 (dynLambda!1944 (defaultEntry!5924 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1022602 () Bool)

(declare-fun e!576177 () Bool)

(declare-fun e!576181 () Bool)

(declare-fun mapRes!37353 () Bool)

(assert (=> b!1022602 (= e!576177 (and e!576181 mapRes!37353))))

(declare-fun condMapEmpty!37353 () Bool)

(declare-fun mapDefault!37353 () ValueCell!11275)

