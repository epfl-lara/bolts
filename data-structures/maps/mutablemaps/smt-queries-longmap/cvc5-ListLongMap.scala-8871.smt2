; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107724 () Bool)

(assert start!107724)

(declare-fun b!1274100 () Bool)

(declare-fun b_free!27769 () Bool)

(declare-fun b_next!27769 () Bool)

(assert (=> b!1274100 (= b_free!27769 (not b_next!27769))))

(declare-fun tp!97878 () Bool)

(declare-fun b_and!45835 () Bool)

(assert (=> b!1274100 (= tp!97878 b_and!45835)))

(declare-fun b!1274097 () Bool)

(declare-fun e!727098 () Bool)

(declare-fun tp_is_empty!33139 () Bool)

(assert (=> b!1274097 (= e!727098 tp_is_empty!33139)))

(declare-fun b!1274098 () Bool)

(declare-fun res!847172 () Bool)

(declare-fun e!727101 () Bool)

(assert (=> b!1274098 (=> (not res!847172) (not e!727101))))

(declare-datatypes ((List!28728 0))(
  ( (Nil!28725) (Cons!28724 (h!29933 (_ BitVec 64)) (t!42268 List!28728)) )
))
(declare-fun noDuplicate!2075 (List!28728) Bool)

(assert (=> b!1274098 (= res!847172 (noDuplicate!2075 Nil!28725))))

(declare-fun mapIsEmpty!51353 () Bool)

(declare-fun mapRes!51353 () Bool)

(assert (=> mapIsEmpty!51353 mapRes!51353))

(declare-fun b!1274099 () Bool)

(declare-fun res!847174 () Bool)

(assert (=> b!1274099 (=> (not res!847174) (not e!727101))))

(declare-datatypes ((V!49379 0))(
  ( (V!49380 (val!16644 Int)) )
))
(declare-datatypes ((ValueCell!15716 0))(
  ( (ValueCellFull!15716 (v!19279 V!49379)) (EmptyCell!15716) )
))
(declare-datatypes ((array!83507 0))(
  ( (array!83508 (arr!40267 (Array (_ BitVec 32) ValueCell!15716)) (size!40817 (_ BitVec 32))) )
))
(declare-datatypes ((array!83509 0))(
  ( (array!83510 (arr!40268 (Array (_ BitVec 32) (_ BitVec 64))) (size!40818 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6196 0))(
  ( (LongMapFixedSize!6197 (defaultEntry!6744 Int) (mask!34545 (_ BitVec 32)) (extraKeys!6423 (_ BitVec 32)) (zeroValue!6529 V!49379) (minValue!6529 V!49379) (_size!3153 (_ BitVec 32)) (_keys!12159 array!83509) (_values!6767 array!83507) (_vacant!3153 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6196)

(declare-fun arrayCountValidKeys!0 (array!83509 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1274099 (= res!847174 (= (arrayCountValidKeys!0 (_keys!12159 thiss!1551) #b00000000000000000000000000000000 (size!40818 (_keys!12159 thiss!1551))) (_size!3153 thiss!1551)))))

(declare-fun e!727100 () Bool)

(declare-fun e!727097 () Bool)

(declare-fun array_inv!30559 (array!83509) Bool)

(declare-fun array_inv!30560 (array!83507) Bool)

(assert (=> b!1274100 (= e!727097 (and tp!97878 tp_is_empty!33139 (array_inv!30559 (_keys!12159 thiss!1551)) (array_inv!30560 (_values!6767 thiss!1551)) e!727100))))

(declare-fun b!1274101 () Bool)

(declare-fun e!727096 () Bool)

(assert (=> b!1274101 (= e!727096 tp_is_empty!33139)))

(declare-fun b!1274102 () Bool)

(assert (=> b!1274102 (= e!727100 (and e!727096 mapRes!51353))))

(declare-fun condMapEmpty!51353 () Bool)

(declare-fun mapDefault!51353 () ValueCell!15716)

