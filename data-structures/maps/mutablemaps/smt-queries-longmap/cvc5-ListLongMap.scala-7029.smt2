; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89222 () Bool)

(assert start!89222)

(declare-fun b!1022501 () Bool)

(declare-fun b_free!20227 () Bool)

(declare-fun b_next!20227 () Bool)

(assert (=> b!1022501 (= b_free!20227 (not b_next!20227))))

(declare-fun tp!71716 () Bool)

(declare-fun b_and!32455 () Bool)

(assert (=> b!1022501 (= tp!71716 b_and!32455)))

(declare-fun tp_is_empty!23947 () Bool)

(declare-fun e!576091 () Bool)

(declare-datatypes ((V!36803 0))(
  ( (V!36804 (val!12024 Int)) )
))
(declare-datatypes ((ValueCell!11270 0))(
  ( (ValueCellFull!11270 (v!14594 V!36803)) (EmptyCell!11270) )
))
(declare-datatypes ((array!63922 0))(
  ( (array!63923 (arr!30769 (Array (_ BitVec 32) (_ BitVec 64))) (size!31281 (_ BitVec 32))) )
))
(declare-datatypes ((array!63924 0))(
  ( (array!63925 (arr!30770 (Array (_ BitVec 32) ValueCell!11270)) (size!31282 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5134 0))(
  ( (LongMapFixedSize!5135 (defaultEntry!5919 Int) (mask!29513 (_ BitVec 32)) (extraKeys!5651 (_ BitVec 32)) (zeroValue!5755 V!36803) (minValue!5755 V!36803) (_size!2622 (_ BitVec 32)) (_keys!11061 array!63922) (_values!5942 array!63924) (_vacant!2622 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5134)

(declare-fun e!576089 () Bool)

(declare-fun array_inv!23719 (array!63922) Bool)

(declare-fun array_inv!23720 (array!63924) Bool)

(assert (=> b!1022501 (= e!576089 (and tp!71716 tp_is_empty!23947 (array_inv!23719 (_keys!11061 thiss!1427)) (array_inv!23720 (_values!5942 thiss!1427)) e!576091))))

(declare-fun b!1022502 () Bool)

(declare-fun e!576088 () Bool)

(assert (=> b!1022502 (= e!576088 (not true))))

(declare-fun lt!450251 () Bool)

(declare-fun lt!450253 () V!36803)

(declare-fun valid!1920 (LongMapFixedSize!5134) Bool)

(assert (=> b!1022502 (= lt!450251 (valid!1920 (LongMapFixedSize!5135 (defaultEntry!5919 thiss!1427) (mask!29513 thiss!1427) (bvand (extraKeys!5651 thiss!1427) #b00000000000000000000000000000010) lt!450253 (minValue!5755 thiss!1427) (_size!2622 thiss!1427) (_keys!11061 thiss!1427) (_values!5942 thiss!1427) (_vacant!2622 thiss!1427))))))

(declare-datatypes ((tuple2!15590 0))(
  ( (tuple2!15591 (_1!7805 (_ BitVec 64)) (_2!7805 V!36803)) )
))
(declare-datatypes ((List!21795 0))(
  ( (Nil!21792) (Cons!21791 (h!22989 tuple2!15590) (t!30830 List!21795)) )
))
(declare-datatypes ((ListLongMap!13749 0))(
  ( (ListLongMap!13750 (toList!6890 List!21795)) )
))
(declare-fun -!466 (ListLongMap!13749 (_ BitVec 64)) ListLongMap!13749)

(declare-fun getCurrentListMap!3897 (array!63922 array!63924 (_ BitVec 32) (_ BitVec 32) V!36803 V!36803 (_ BitVec 32) Int) ListLongMap!13749)

(assert (=> b!1022502 (= (-!466 (getCurrentListMap!3897 (_keys!11061 thiss!1427) (_values!5942 thiss!1427) (mask!29513 thiss!1427) (extraKeys!5651 thiss!1427) (zeroValue!5755 thiss!1427) (minValue!5755 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5919 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3897 (_keys!11061 thiss!1427) (_values!5942 thiss!1427) (mask!29513 thiss!1427) (bvand (extraKeys!5651 thiss!1427) #b00000000000000000000000000000010) lt!450253 (minValue!5755 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5919 thiss!1427)))))

(declare-datatypes ((Unit!33284 0))(
  ( (Unit!33285) )
))
(declare-fun lt!450252 () Unit!33284)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!6 (array!63922 array!63924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36803 V!36803 V!36803 Int) Unit!33284)

(assert (=> b!1022502 (= lt!450252 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!6 (_keys!11061 thiss!1427) (_values!5942 thiss!1427) (mask!29513 thiss!1427) (extraKeys!5651 thiss!1427) (bvand (extraKeys!5651 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5755 thiss!1427) lt!450253 (minValue!5755 thiss!1427) (defaultEntry!5919 thiss!1427)))))

(declare-fun dynLambda!1941 (Int (_ BitVec 64)) V!36803)

(assert (=> b!1022502 (= lt!450253 (dynLambda!1941 (defaultEntry!5919 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1022503 () Bool)

(declare-fun e!576087 () Bool)

(assert (=> b!1022503 (= e!576087 tp_is_empty!23947)))

(declare-fun b!1022504 () Bool)

(declare-fun mapRes!37338 () Bool)

(assert (=> b!1022504 (= e!576091 (and e!576087 mapRes!37338))))

(declare-fun condMapEmpty!37338 () Bool)

(declare-fun mapDefault!37338 () ValueCell!11270)

