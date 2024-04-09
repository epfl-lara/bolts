; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89268 () Bool)

(assert start!89268)

(declare-fun b!1023087 () Bool)

(declare-fun b_free!20273 () Bool)

(declare-fun b_next!20273 () Bool)

(assert (=> b!1023087 (= b_free!20273 (not b_next!20273))))

(declare-fun tp!71855 () Bool)

(declare-fun b_and!32513 () Bool)

(assert (=> b!1023087 (= tp!71855 b_and!32513)))

(declare-fun mapNonEmpty!37407 () Bool)

(declare-fun mapRes!37407 () Bool)

(declare-fun tp!71854 () Bool)

(declare-fun e!576504 () Bool)

(assert (=> mapNonEmpty!37407 (= mapRes!37407 (and tp!71854 e!576504))))

(declare-datatypes ((V!36863 0))(
  ( (V!36864 (val!12047 Int)) )
))
(declare-datatypes ((ValueCell!11293 0))(
  ( (ValueCellFull!11293 (v!14617 V!36863)) (EmptyCell!11293) )
))
(declare-fun mapValue!37407 () ValueCell!11293)

(declare-fun mapRest!37407 () (Array (_ BitVec 32) ValueCell!11293))

(declare-datatypes ((array!64014 0))(
  ( (array!64015 (arr!30815 (Array (_ BitVec 32) (_ BitVec 64))) (size!31327 (_ BitVec 32))) )
))
(declare-datatypes ((array!64016 0))(
  ( (array!64017 (arr!30816 (Array (_ BitVec 32) ValueCell!11293)) (size!31328 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5180 0))(
  ( (LongMapFixedSize!5181 (defaultEntry!5942 Int) (mask!29550 (_ BitVec 32)) (extraKeys!5674 (_ BitVec 32)) (zeroValue!5778 V!36863) (minValue!5778 V!36863) (_size!2645 (_ BitVec 32)) (_keys!11084 array!64014) (_values!5965 array!64016) (_vacant!2645 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5180)

(declare-fun mapKey!37407 () (_ BitVec 32))

(assert (=> mapNonEmpty!37407 (= (arr!30816 (_values!5965 thiss!1427)) (store mapRest!37407 mapKey!37407 mapValue!37407))))

(declare-fun b!1023086 () Bool)

(declare-fun res!685319 () Bool)

(declare-fun e!576503 () Bool)

(assert (=> b!1023086 (=> (not res!685319) (not e!576503))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023086 (= res!685319 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!576501 () Bool)

(declare-fun tp_is_empty!23993 () Bool)

(declare-fun e!576502 () Bool)

(declare-fun array_inv!23753 (array!64014) Bool)

(declare-fun array_inv!23754 (array!64016) Bool)

(assert (=> b!1023087 (= e!576502 (and tp!71855 tp_is_empty!23993 (array_inv!23753 (_keys!11084 thiss!1427)) (array_inv!23754 (_values!5965 thiss!1427)) e!576501))))

(declare-fun b!1023088 () Bool)

(assert (=> b!1023088 (= e!576503 false)))

(declare-fun lt!450352 () Bool)

(declare-datatypes ((List!21810 0))(
  ( (Nil!21807) (Cons!21806 (h!23004 (_ BitVec 64)) (t!30855 List!21810)) )
))
(declare-fun arrayNoDuplicates!0 (array!64014 (_ BitVec 32) List!21810) Bool)

(assert (=> b!1023088 (= lt!450352 (arrayNoDuplicates!0 (_keys!11084 thiss!1427) #b00000000000000000000000000000000 Nil!21807))))

(declare-fun b!1023089 () Bool)

(declare-fun e!576500 () Bool)

(assert (=> b!1023089 (= e!576500 tp_is_empty!23993)))

(declare-fun b!1023091 () Bool)

(declare-fun res!685323 () Bool)

(assert (=> b!1023091 (=> (not res!685323) (not e!576503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023091 (= res!685323 (validMask!0 (mask!29550 thiss!1427)))))

(declare-fun b!1023092 () Bool)

(declare-fun res!685321 () Bool)

(assert (=> b!1023092 (=> (not res!685321) (not e!576503))))

(assert (=> b!1023092 (= res!685321 (and (= (size!31328 (_values!5965 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29550 thiss!1427))) (= (size!31327 (_keys!11084 thiss!1427)) (size!31328 (_values!5965 thiss!1427))) (bvsge (mask!29550 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5674 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5674 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5674 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5674 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5674 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5674 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5674 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1023093 () Bool)

(assert (=> b!1023093 (= e!576501 (and e!576500 mapRes!37407))))

(declare-fun condMapEmpty!37407 () Bool)

(declare-fun mapDefault!37407 () ValueCell!11293)

