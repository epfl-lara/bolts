; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10960 () Bool)

(assert start!10960)

(declare-fun b!88775 () Bool)

(declare-fun b_free!2261 () Bool)

(declare-fun b_next!2261 () Bool)

(assert (=> b!88775 (= b_free!2261 (not b_next!2261))))

(declare-fun tp!9022 () Bool)

(declare-fun b_and!5329 () Bool)

(assert (=> b!88775 (= tp!9022 b_and!5329)))

(declare-fun b!88759 () Bool)

(declare-fun b_free!2263 () Bool)

(declare-fun b_next!2263 () Bool)

(assert (=> b!88759 (= b_free!2263 (not b_next!2263))))

(declare-fun tp!9024 () Bool)

(declare-fun b_and!5331 () Bool)

(assert (=> b!88759 (= tp!9024 b_and!5331)))

(declare-fun mapIsEmpty!3449 () Bool)

(declare-fun mapRes!3449 () Bool)

(assert (=> mapIsEmpty!3449 mapRes!3449))

(declare-fun b!88755 () Bool)

(declare-fun res!45417 () Bool)

(declare-fun e!57821 () Bool)

(assert (=> b!88755 (=> (not res!45417) (not e!57821))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3043 0))(
  ( (V!3044 (val!1318 Int)) )
))
(declare-datatypes ((array!4056 0))(
  ( (array!4057 (arr!1930 (Array (_ BitVec 32) (_ BitVec 64))) (size!2176 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!930 0))(
  ( (ValueCellFull!930 (v!2675 V!3043)) (EmptyCell!930) )
))
(declare-datatypes ((array!4058 0))(
  ( (array!4059 (arr!1931 (Array (_ BitVec 32) ValueCell!930)) (size!2177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!768 0))(
  ( (LongMapFixedSize!769 (defaultEntry!2372 Int) (mask!6416 (_ BitVec 32)) (extraKeys!2205 (_ BitVec 32)) (zeroValue!2261 V!3043) (minValue!2261 V!3043) (_size!433 (_ BitVec 32)) (_keys!4050 array!4056) (_values!2355 array!4058) (_vacant!433 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!574 0))(
  ( (Cell!575 (v!2676 LongMapFixedSize!768)) )
))
(declare-datatypes ((LongMap!574 0))(
  ( (LongMap!575 (underlying!298 Cell!574)) )
))
(declare-fun thiss!992 () LongMap!574)

(assert (=> b!88755 (= res!45417 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun b!88756 () Bool)

(declare-fun e!57818 () Bool)

(declare-fun e!57808 () Bool)

(declare-fun mapRes!3450 () Bool)

(assert (=> b!88756 (= e!57818 (and e!57808 mapRes!3450))))

(declare-fun condMapEmpty!3449 () Bool)

(declare-fun mapDefault!3450 () ValueCell!930)

(assert (=> b!88756 (= condMapEmpty!3449 (= (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!930)) mapDefault!3450)))))

(declare-fun b!88757 () Bool)

(declare-fun e!57813 () Bool)

(declare-fun e!57824 () Bool)

(assert (=> b!88757 (= e!57813 (and e!57824 mapRes!3449))))

(declare-fun condMapEmpty!3450 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!768)

(declare-fun mapDefault!3449 () ValueCell!930)

(assert (=> b!88757 (= condMapEmpty!3450 (= (arr!1931 (_values!2355 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!930)) mapDefault!3449)))))

(declare-fun b!88758 () Bool)

(declare-fun e!57819 () Bool)

(declare-fun e!57811 () Bool)

(assert (=> b!88758 (= e!57819 e!57811)))

(declare-fun mapIsEmpty!3450 () Bool)

(assert (=> mapIsEmpty!3450 mapRes!3450))

(declare-fun res!45421 () Bool)

(assert (=> start!10960 (=> (not res!45421) (not e!57821))))

(declare-fun valid!334 (LongMap!574) Bool)

(assert (=> start!10960 (= res!45421 (valid!334 thiss!992))))

(assert (=> start!10960 e!57821))

(declare-fun e!57815 () Bool)

(assert (=> start!10960 e!57815))

(assert (=> start!10960 true))

(declare-fun e!57822 () Bool)

(assert (=> start!10960 e!57822))

(declare-fun tp_is_empty!2547 () Bool)

(declare-fun array_inv!1155 (array!4056) Bool)

(declare-fun array_inv!1156 (array!4058) Bool)

(assert (=> b!88759 (= e!57822 (and tp!9024 tp_is_empty!2547 (array_inv!1155 (_keys!4050 newMap!16)) (array_inv!1156 (_values!2355 newMap!16)) e!57813))))

(declare-fun b!88760 () Bool)

(declare-fun res!45424 () Bool)

(assert (=> b!88760 (=> (not res!45424) (not e!57821))))

(declare-fun valid!335 (LongMapFixedSize!768) Bool)

(assert (=> b!88760 (= res!45424 (valid!335 newMap!16))))

(declare-fun b!88761 () Bool)

(declare-fun e!57814 () Bool)

(assert (=> b!88761 (= e!57814 tp_is_empty!2547)))

(declare-fun b!88762 () Bool)

(declare-datatypes ((Unit!2654 0))(
  ( (Unit!2655) )
))
(declare-fun e!57810 () Unit!2654)

(declare-fun Unit!2656 () Unit!2654)

(assert (=> b!88762 (= e!57810 Unit!2656)))

(declare-fun lt!42407 () Unit!2654)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!76 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 64) (_ BitVec 32) Int) Unit!2654)

(assert (=> b!88762 (= lt!42407 (lemmaListMapContainsThenArrayContainsFrom!76 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!88762 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!42411 () Unit!2654)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4056 (_ BitVec 32) (_ BitVec 32)) Unit!2654)

(assert (=> b!88762 (= lt!42411 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1559 0))(
  ( (Nil!1556) (Cons!1555 (h!2147 (_ BitVec 64)) (t!5321 List!1559)) )
))
(declare-fun arrayNoDuplicates!0 (array!4056 (_ BitVec 32) List!1559) Bool)

(assert (=> b!88762 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) from!355 Nil!1556)))

(declare-fun lt!42409 () Unit!2654)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4056 (_ BitVec 32) (_ BitVec 64) List!1559) Unit!2654)

(assert (=> b!88762 (= lt!42409 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556)))))

(assert (=> b!88762 false))

(declare-fun mapNonEmpty!3449 () Bool)

(declare-fun tp!9021 () Bool)

(declare-fun e!57809 () Bool)

(assert (=> mapNonEmpty!3449 (= mapRes!3450 (and tp!9021 e!57809))))

(declare-fun mapRest!3449 () (Array (_ BitVec 32) ValueCell!930))

(declare-fun mapKey!3449 () (_ BitVec 32))

(declare-fun mapValue!3449 () ValueCell!930)

(assert (=> mapNonEmpty!3449 (= (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (store mapRest!3449 mapKey!3449 mapValue!3449))))

(declare-fun b!88763 () Bool)

(declare-fun res!45418 () Bool)

(declare-fun e!57820 () Bool)

(assert (=> b!88763 (=> res!45418 e!57820)))

(assert (=> b!88763 (= res!45418 (or (not (= (size!2177 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6416 (v!2676 (underlying!298 thiss!992)))))) (not (= (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (size!2177 (_values!2355 (v!2676 (underlying!298 thiss!992)))))) (bvslt (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!88764 () Bool)

(declare-fun res!45426 () Bool)

(assert (=> b!88764 (=> res!45426 e!57820)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4056 (_ BitVec 32)) Bool)

(assert (=> b!88764 (= res!45426 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!88765 () Bool)

(declare-fun e!57817 () Bool)

(assert (=> b!88765 (= e!57821 e!57817)))

(declare-fun res!45422 () Bool)

(assert (=> b!88765 (=> (not res!45422) (not e!57817))))

(declare-datatypes ((tuple2!2244 0))(
  ( (tuple2!2245 (_1!1132 (_ BitVec 64)) (_2!1132 V!3043)) )
))
(declare-datatypes ((List!1560 0))(
  ( (Nil!1557) (Cons!1556 (h!2148 tuple2!2244) (t!5322 List!1560)) )
))
(declare-datatypes ((ListLongMap!1493 0))(
  ( (ListLongMap!1494 (toList!762 List!1560)) )
))
(declare-fun lt!42404 () ListLongMap!1493)

(declare-fun lt!42410 () ListLongMap!1493)

(assert (=> b!88765 (= res!45422 (= lt!42404 lt!42410))))

(declare-fun map!1201 (LongMapFixedSize!768) ListLongMap!1493)

(assert (=> b!88765 (= lt!42410 (map!1201 newMap!16))))

(declare-fun getCurrentListMap!445 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 32) Int) ListLongMap!1493)

(assert (=> b!88765 (= lt!42404 (getCurrentListMap!445 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!88766 () Bool)

(assert (=> b!88766 (= e!57809 tp_is_empty!2547)))

(declare-fun b!88767 () Bool)

(declare-fun e!57823 () Bool)

(assert (=> b!88767 (= e!57823 (not e!57820))))

(declare-fun res!45423 () Bool)

(assert (=> b!88767 (=> res!45423 e!57820)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!88767 (= res!45423 (not (validMask!0 (mask!6416 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun lt!42401 () ListLongMap!1493)

(declare-fun lt!42399 () ListLongMap!1493)

(declare-fun lt!42400 () tuple2!2244)

(declare-fun lt!42402 () tuple2!2244)

(declare-fun +!119 (ListLongMap!1493 tuple2!2244) ListLongMap!1493)

(assert (=> b!88767 (= (+!119 lt!42401 lt!42402) (+!119 (+!119 lt!42399 lt!42402) lt!42400))))

(assert (=> b!88767 (= lt!42402 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun lt!42405 () Unit!2654)

(declare-fun lt!42403 () V!3043)

(declare-fun addCommutativeForDiffKeys!38 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64) V!3043) Unit!2654)

(assert (=> b!88767 (= lt!42405 (addCommutativeForDiffKeys!38 lt!42399 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun lt!42396 () ListLongMap!1493)

(assert (=> b!88767 (= lt!42396 lt!42401)))

(assert (=> b!88767 (= lt!42401 (+!119 lt!42399 lt!42400))))

(declare-fun lt!42406 () ListLongMap!1493)

(declare-fun lt!42413 () tuple2!2244)

(assert (=> b!88767 (= lt!42396 (+!119 lt!42406 lt!42413))))

(declare-fun lt!42398 () ListLongMap!1493)

(assert (=> b!88767 (= lt!42399 (+!119 lt!42398 lt!42413))))

(assert (=> b!88767 (= lt!42413 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(assert (=> b!88767 (= lt!42406 (+!119 lt!42398 lt!42400))))

(assert (=> b!88767 (= lt!42400 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))

(declare-fun lt!42397 () Unit!2654)

(assert (=> b!88767 (= lt!42397 (addCommutativeForDiffKeys!38 lt!42398 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!83 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 32) Int) ListLongMap!1493)

(assert (=> b!88767 (= lt!42398 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!88768 () Bool)

(declare-fun e!57816 () Bool)

(assert (=> b!88768 (= e!57817 e!57816)))

(declare-fun res!45419 () Bool)

(assert (=> b!88768 (=> (not res!45419) (not e!57816))))

(assert (=> b!88768 (= res!45419 (and (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1225 (ValueCell!930 V!3043) V!3043)

(declare-fun dynLambda!355 (Int (_ BitVec 64)) V!3043)

(assert (=> b!88768 (= lt!42403 (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!88769 () Bool)

(assert (=> b!88769 (= e!57816 e!57823)))

(declare-fun res!45420 () Bool)

(assert (=> b!88769 (=> (not res!45420) (not e!57823))))

(declare-datatypes ((tuple2!2246 0))(
  ( (tuple2!2247 (_1!1133 Bool) (_2!1133 LongMapFixedSize!768)) )
))
(declare-fun lt!42408 () tuple2!2246)

(assert (=> b!88769 (= res!45420 (and (_1!1133 lt!42408) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!42412 () Unit!2654)

(assert (=> b!88769 (= lt!42412 e!57810)))

(declare-fun c!14707 () Bool)

(declare-fun contains!769 (ListLongMap!1493 (_ BitVec 64)) Bool)

(assert (=> b!88769 (= c!14707 (contains!769 lt!42410 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun update!125 (LongMapFixedSize!768 (_ BitVec 64) V!3043) tuple2!2246)

(assert (=> b!88769 (= lt!42408 (update!125 newMap!16 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))

(declare-fun b!88770 () Bool)

(declare-fun res!45425 () Bool)

(assert (=> b!88770 (=> (not res!45425) (not e!57821))))

(assert (=> b!88770 (= res!45425 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6416 newMap!16)) (_size!433 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!88771 () Bool)

(declare-fun Unit!2657 () Unit!2654)

(assert (=> b!88771 (= e!57810 Unit!2657)))

(declare-fun b!88772 () Bool)

(assert (=> b!88772 (= e!57824 tp_is_empty!2547)))

(declare-fun b!88773 () Bool)

(assert (=> b!88773 (= e!57820 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 Nil!1556))))

(declare-fun b!88774 () Bool)

(assert (=> b!88774 (= e!57808 tp_is_empty!2547)))

(assert (=> b!88775 (= e!57811 (and tp!9022 tp_is_empty!2547 (array_inv!1155 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (array_inv!1156 (_values!2355 (v!2676 (underlying!298 thiss!992)))) e!57818))))

(declare-fun b!88776 () Bool)

(assert (=> b!88776 (= e!57815 e!57819)))

(declare-fun mapNonEmpty!3450 () Bool)

(declare-fun tp!9023 () Bool)

(assert (=> mapNonEmpty!3450 (= mapRes!3449 (and tp!9023 e!57814))))

(declare-fun mapValue!3450 () ValueCell!930)

(declare-fun mapKey!3450 () (_ BitVec 32))

(declare-fun mapRest!3450 () (Array (_ BitVec 32) ValueCell!930))

(assert (=> mapNonEmpty!3450 (= (arr!1931 (_values!2355 newMap!16)) (store mapRest!3450 mapKey!3450 mapValue!3450))))

(assert (= (and start!10960 res!45421) b!88755))

(assert (= (and b!88755 res!45417) b!88760))

(assert (= (and b!88760 res!45424) b!88770))

(assert (= (and b!88770 res!45425) b!88765))

(assert (= (and b!88765 res!45422) b!88768))

(assert (= (and b!88768 res!45419) b!88769))

(assert (= (and b!88769 c!14707) b!88762))

(assert (= (and b!88769 (not c!14707)) b!88771))

(assert (= (and b!88769 res!45420) b!88767))

(assert (= (and b!88767 (not res!45423)) b!88763))

(assert (= (and b!88763 (not res!45418)) b!88764))

(assert (= (and b!88764 (not res!45426)) b!88773))

(assert (= (and b!88756 condMapEmpty!3449) mapIsEmpty!3450))

(assert (= (and b!88756 (not condMapEmpty!3449)) mapNonEmpty!3449))

(get-info :version)

(assert (= (and mapNonEmpty!3449 ((_ is ValueCellFull!930) mapValue!3449)) b!88766))

(assert (= (and b!88756 ((_ is ValueCellFull!930) mapDefault!3450)) b!88774))

(assert (= b!88775 b!88756))

(assert (= b!88758 b!88775))

(assert (= b!88776 b!88758))

(assert (= start!10960 b!88776))

(assert (= (and b!88757 condMapEmpty!3450) mapIsEmpty!3449))

(assert (= (and b!88757 (not condMapEmpty!3450)) mapNonEmpty!3450))

(assert (= (and mapNonEmpty!3450 ((_ is ValueCellFull!930) mapValue!3450)) b!88761))

(assert (= (and b!88757 ((_ is ValueCellFull!930) mapDefault!3449)) b!88772))

(assert (= b!88759 b!88757))

(assert (= start!10960 b!88759))

(declare-fun b_lambda!3933 () Bool)

(assert (=> (not b_lambda!3933) (not b!88768)))

(declare-fun t!5318 () Bool)

(declare-fun tb!1729 () Bool)

(assert (=> (and b!88775 (= (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))) t!5318) tb!1729))

(declare-fun result!2969 () Bool)

(assert (=> tb!1729 (= result!2969 tp_is_empty!2547)))

(assert (=> b!88768 t!5318))

(declare-fun b_and!5333 () Bool)

(assert (= b_and!5329 (and (=> t!5318 result!2969) b_and!5333)))

(declare-fun t!5320 () Bool)

(declare-fun tb!1731 () Bool)

(assert (=> (and b!88759 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))) t!5320) tb!1731))

(declare-fun result!2973 () Bool)

(assert (= result!2973 result!2969))

(assert (=> b!88768 t!5320))

(declare-fun b_and!5335 () Bool)

(assert (= b_and!5331 (and (=> t!5320 result!2973) b_and!5335)))

(declare-fun m!94793 () Bool)

(assert (=> start!10960 m!94793))

(declare-fun m!94795 () Bool)

(assert (=> b!88775 m!94795))

(declare-fun m!94797 () Bool)

(assert (=> b!88775 m!94797))

(declare-fun m!94799 () Bool)

(assert (=> mapNonEmpty!3449 m!94799))

(declare-fun m!94801 () Bool)

(assert (=> b!88762 m!94801))

(declare-fun m!94803 () Bool)

(assert (=> b!88762 m!94803))

(declare-fun m!94805 () Bool)

(assert (=> b!88762 m!94805))

(declare-fun m!94807 () Bool)

(assert (=> b!88762 m!94807))

(assert (=> b!88762 m!94805))

(assert (=> b!88762 m!94805))

(declare-fun m!94809 () Bool)

(assert (=> b!88762 m!94809))

(assert (=> b!88762 m!94805))

(declare-fun m!94811 () Bool)

(assert (=> b!88762 m!94811))

(declare-fun m!94813 () Bool)

(assert (=> b!88764 m!94813))

(declare-fun m!94815 () Bool)

(assert (=> b!88759 m!94815))

(declare-fun m!94817 () Bool)

(assert (=> b!88759 m!94817))

(declare-fun m!94819 () Bool)

(assert (=> b!88767 m!94819))

(declare-fun m!94821 () Bool)

(assert (=> b!88767 m!94821))

(declare-fun m!94823 () Bool)

(assert (=> b!88767 m!94823))

(declare-fun m!94825 () Bool)

(assert (=> b!88767 m!94825))

(declare-fun m!94827 () Bool)

(assert (=> b!88767 m!94827))

(assert (=> b!88767 m!94805))

(assert (=> b!88767 m!94805))

(declare-fun m!94829 () Bool)

(assert (=> b!88767 m!94829))

(declare-fun m!94831 () Bool)

(assert (=> b!88767 m!94831))

(declare-fun m!94833 () Bool)

(assert (=> b!88767 m!94833))

(declare-fun m!94835 () Bool)

(assert (=> b!88767 m!94835))

(declare-fun m!94837 () Bool)

(assert (=> b!88767 m!94837))

(assert (=> b!88767 m!94805))

(declare-fun m!94839 () Bool)

(assert (=> b!88767 m!94839))

(assert (=> b!88767 m!94825))

(declare-fun m!94841 () Bool)

(assert (=> mapNonEmpty!3450 m!94841))

(assert (=> b!88768 m!94805))

(declare-fun m!94843 () Bool)

(assert (=> b!88768 m!94843))

(declare-fun m!94845 () Bool)

(assert (=> b!88768 m!94845))

(assert (=> b!88768 m!94843))

(assert (=> b!88768 m!94845))

(declare-fun m!94847 () Bool)

(assert (=> b!88768 m!94847))

(assert (=> b!88769 m!94805))

(assert (=> b!88769 m!94805))

(declare-fun m!94849 () Bool)

(assert (=> b!88769 m!94849))

(assert (=> b!88769 m!94805))

(declare-fun m!94851 () Bool)

(assert (=> b!88769 m!94851))

(declare-fun m!94853 () Bool)

(assert (=> b!88760 m!94853))

(declare-fun m!94855 () Bool)

(assert (=> b!88773 m!94855))

(declare-fun m!94857 () Bool)

(assert (=> b!88765 m!94857))

(declare-fun m!94859 () Bool)

(assert (=> b!88765 m!94859))

(check-sat (not start!10960) b_and!5333 (not b!88775) (not b!88767) (not b!88760) (not mapNonEmpty!3449) (not b!88765) (not b_lambda!3933) (not mapNonEmpty!3450) (not b!88768) (not b!88764) tp_is_empty!2547 (not b!88773) (not b!88759) b_and!5335 (not b_next!2263) (not b_next!2261) (not b!88762) (not b!88769))
(check-sat b_and!5333 b_and!5335 (not b_next!2261) (not b_next!2263))
(get-model)

(declare-fun b_lambda!3937 () Bool)

(assert (= b_lambda!3933 (or (and b!88775 b_free!2261) (and b!88759 b_free!2263 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))) b_lambda!3937)))

(check-sat (not start!10960) b_and!5333 (not b!88775) (not b!88767) (not b!88760) (not mapNonEmpty!3449) (not b!88765) (not b!88768) (not b!88764) tp_is_empty!2547 (not b!88773) (not b!88759) b_and!5335 (not b_next!2263) (not b_next!2261) (not mapNonEmpty!3450) (not b_lambda!3937) (not b!88762) (not b!88769))
(check-sat b_and!5333 b_and!5335 (not b_next!2261) (not b_next!2263))
(get-model)

(declare-fun b!88857 () Bool)

(declare-fun e!57887 () Bool)

(declare-fun e!57888 () Bool)

(assert (=> b!88857 (= e!57887 e!57888)))

(declare-fun c!14713 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!88857 (= c!14713 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!88858 () Bool)

(declare-fun call!8539 () Bool)

(assert (=> b!88858 (= e!57888 call!8539)))

(declare-fun d!23603 () Bool)

(declare-fun res!45465 () Bool)

(declare-fun e!57890 () Bool)

(assert (=> d!23603 (=> res!45465 e!57890)))

(assert (=> d!23603 (= res!45465 (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23603 (= (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 Nil!1556) e!57890)))

(declare-fun b!88859 () Bool)

(assert (=> b!88859 (= e!57890 e!57887)))

(declare-fun res!45463 () Bool)

(assert (=> b!88859 (=> (not res!45463) (not e!57887))))

(declare-fun e!57889 () Bool)

(assert (=> b!88859 (= res!45463 (not e!57889))))

(declare-fun res!45464 () Bool)

(assert (=> b!88859 (=> (not res!45464) (not e!57889))))

(assert (=> b!88859 (= res!45464 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!8536 () Bool)

(assert (=> bm!8536 (= call!8539 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!14713 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) Nil!1556) Nil!1556)))))

(declare-fun b!88860 () Bool)

(declare-fun contains!770 (List!1559 (_ BitVec 64)) Bool)

(assert (=> b!88860 (= e!57889 (contains!770 Nil!1556 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!88861 () Bool)

(assert (=> b!88861 (= e!57888 call!8539)))

(assert (= (and d!23603 (not res!45465)) b!88859))

(assert (= (and b!88859 res!45464) b!88860))

(assert (= (and b!88859 res!45463) b!88857))

(assert (= (and b!88857 c!14713) b!88858))

(assert (= (and b!88857 (not c!14713)) b!88861))

(assert (= (or b!88858 b!88861) bm!8536))

(declare-fun m!94929 () Bool)

(assert (=> b!88857 m!94929))

(assert (=> b!88857 m!94929))

(declare-fun m!94931 () Bool)

(assert (=> b!88857 m!94931))

(assert (=> b!88859 m!94929))

(assert (=> b!88859 m!94929))

(assert (=> b!88859 m!94931))

(assert (=> bm!8536 m!94929))

(declare-fun m!94933 () Bool)

(assert (=> bm!8536 m!94933))

(assert (=> b!88860 m!94929))

(assert (=> b!88860 m!94929))

(declare-fun m!94935 () Bool)

(assert (=> b!88860 m!94935))

(assert (=> b!88773 d!23603))

(declare-fun b!88870 () Bool)

(declare-fun e!57899 () Bool)

(declare-fun call!8542 () Bool)

(assert (=> b!88870 (= e!57899 call!8542)))

(declare-fun b!88871 () Bool)

(declare-fun e!57898 () Bool)

(declare-fun e!57897 () Bool)

(assert (=> b!88871 (= e!57898 e!57897)))

(declare-fun c!14716 () Bool)

(assert (=> b!88871 (= c!14716 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!8539 () Bool)

(assert (=> bm!8539 (= call!8542 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!88872 () Bool)

(assert (=> b!88872 (= e!57897 call!8542)))

(declare-fun d!23605 () Bool)

(declare-fun res!45470 () Bool)

(assert (=> d!23605 (=> res!45470 e!57898)))

(assert (=> d!23605 (= res!45470 (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23605 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))) e!57898)))

(declare-fun b!88873 () Bool)

(assert (=> b!88873 (= e!57897 e!57899)))

(declare-fun lt!42475 () (_ BitVec 64))

(assert (=> b!88873 (= lt!42475 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!42476 () Unit!2654)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4056 (_ BitVec 64) (_ BitVec 32)) Unit!2654)

(assert (=> b!88873 (= lt!42476 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!42475 #b00000000000000000000000000000000))))

(assert (=> b!88873 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!42475 #b00000000000000000000000000000000)))

(declare-fun lt!42474 () Unit!2654)

(assert (=> b!88873 (= lt!42474 lt!42476)))

(declare-fun res!45471 () Bool)

(declare-datatypes ((SeekEntryResult!255 0))(
  ( (MissingZero!255 (index!3159 (_ BitVec 32))) (Found!255 (index!3160 (_ BitVec 32))) (Intermediate!255 (undefined!1067 Bool) (index!3161 (_ BitVec 32)) (x!12241 (_ BitVec 32))) (Undefined!255) (MissingVacant!255 (index!3162 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4056 (_ BitVec 32)) SeekEntryResult!255)

(assert (=> b!88873 (= res!45471 (= (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))) (Found!255 #b00000000000000000000000000000000)))))

(assert (=> b!88873 (=> (not res!45471) (not e!57899))))

(assert (= (and d!23605 (not res!45470)) b!88871))

(assert (= (and b!88871 c!14716) b!88873))

(assert (= (and b!88871 (not c!14716)) b!88872))

(assert (= (and b!88873 res!45471) b!88870))

(assert (= (or b!88870 b!88872) bm!8539))

(assert (=> b!88871 m!94929))

(assert (=> b!88871 m!94929))

(assert (=> b!88871 m!94931))

(declare-fun m!94937 () Bool)

(assert (=> bm!8539 m!94937))

(assert (=> b!88873 m!94929))

(declare-fun m!94939 () Bool)

(assert (=> b!88873 m!94939))

(declare-fun m!94941 () Bool)

(assert (=> b!88873 m!94941))

(assert (=> b!88873 m!94929))

(declare-fun m!94943 () Bool)

(assert (=> b!88873 m!94943))

(assert (=> b!88764 d!23605))

(declare-fun d!23607 () Bool)

(assert (=> d!23607 (= (valid!334 thiss!992) (valid!335 (v!2676 (underlying!298 thiss!992))))))

(declare-fun bs!3727 () Bool)

(assert (= bs!3727 d!23607))

(declare-fun m!94945 () Bool)

(assert (=> bs!3727 m!94945))

(assert (=> start!10960 d!23607))

(declare-fun d!23609 () Bool)

(assert (=> d!23609 (= (array_inv!1155 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvsge (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!88775 d!23609))

(declare-fun d!23611 () Bool)

(assert (=> d!23611 (= (array_inv!1156 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvsge (size!2177 (_values!2355 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!88775 d!23611))

(declare-fun d!23613 () Bool)

(assert (=> d!23613 (= (map!1201 newMap!16) (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun bs!3728 () Bool)

(assert (= bs!3728 d!23613))

(declare-fun m!94947 () Bool)

(assert (=> bs!3728 m!94947))

(assert (=> b!88765 d!23613))

(declare-fun b!88916 () Bool)

(declare-fun e!57930 () Bool)

(declare-fun call!8560 () Bool)

(assert (=> b!88916 (= e!57930 (not call!8560))))

(declare-fun bm!8554 () Bool)

(declare-fun call!8563 () Bool)

(declare-fun lt!42530 () ListLongMap!1493)

(assert (=> bm!8554 (= call!8563 (contains!769 lt!42530 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!23615 () Bool)

(declare-fun e!57931 () Bool)

(assert (=> d!23615 e!57931))

(declare-fun res!45496 () Bool)

(assert (=> d!23615 (=> (not res!45496) (not e!57931))))

(assert (=> d!23615 (= res!45496 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun lt!42537 () ListLongMap!1493)

(assert (=> d!23615 (= lt!42530 lt!42537)))

(declare-fun lt!42521 () Unit!2654)

(declare-fun e!57933 () Unit!2654)

(assert (=> d!23615 (= lt!42521 e!57933)))

(declare-fun c!14734 () Bool)

(declare-fun e!57934 () Bool)

(assert (=> d!23615 (= c!14734 e!57934)))

(declare-fun res!45497 () Bool)

(assert (=> d!23615 (=> (not res!45497) (not e!57934))))

(assert (=> d!23615 (= res!45497 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun e!57937 () ListLongMap!1493)

(assert (=> d!23615 (= lt!42537 e!57937)))

(declare-fun c!14733 () Bool)

(assert (=> d!23615 (= c!14733 (and (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23615 (validMask!0 (mask!6416 (v!2676 (underlying!298 thiss!992))))))

(assert (=> d!23615 (= (getCurrentListMap!445 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))) lt!42530)))

(declare-fun b!88917 () Bool)

(declare-fun call!8559 () ListLongMap!1493)

(assert (=> b!88917 (= e!57937 (+!119 call!8559 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun bm!8555 () Bool)

(declare-fun call!8562 () ListLongMap!1493)

(declare-fun call!8561 () ListLongMap!1493)

(assert (=> bm!8555 (= call!8562 call!8561)))

(declare-fun b!88918 () Bool)

(declare-fun e!57932 () Bool)

(declare-fun e!57928 () Bool)

(assert (=> b!88918 (= e!57932 e!57928)))

(declare-fun res!45492 () Bool)

(assert (=> b!88918 (=> (not res!45492) (not e!57928))))

(assert (=> b!88918 (= res!45492 (contains!769 lt!42530 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!88918 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!88919 () Bool)

(declare-fun e!57936 () Bool)

(assert (=> b!88919 (= e!57936 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!88920 () Bool)

(declare-fun Unit!2658 () Unit!2654)

(assert (=> b!88920 (= e!57933 Unit!2658)))

(declare-fun bm!8556 () Bool)

(declare-fun call!8557 () ListLongMap!1493)

(assert (=> bm!8556 (= call!8561 call!8557)))

(declare-fun b!88921 () Bool)

(declare-fun e!57926 () Bool)

(assert (=> b!88921 (= e!57930 e!57926)))

(declare-fun res!45493 () Bool)

(assert (=> b!88921 (= res!45493 call!8560)))

(assert (=> b!88921 (=> (not res!45493) (not e!57926))))

(declare-fun b!88922 () Bool)

(declare-fun e!57927 () Bool)

(declare-fun apply!84 (ListLongMap!1493 (_ BitVec 64)) V!3043)

(assert (=> b!88922 (= e!57927 (= (apply!84 lt!42530 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun bm!8557 () Bool)

(assert (=> bm!8557 (= call!8560 (contains!769 lt!42530 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88923 () Bool)

(assert (=> b!88923 (= e!57926 (= (apply!84 lt!42530 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!88924 () Bool)

(declare-fun e!57938 () Bool)

(assert (=> b!88924 (= e!57938 e!57927)))

(declare-fun res!45495 () Bool)

(assert (=> b!88924 (= res!45495 call!8563)))

(assert (=> b!88924 (=> (not res!45495) (not e!57927))))

(declare-fun b!88925 () Bool)

(assert (=> b!88925 (= e!57928 (= (apply!84 lt!42530 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!88925 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2177 (_values!2355 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> b!88925 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!88926 () Bool)

(assert (=> b!88926 (= e!57934 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!88927 () Bool)

(declare-fun c!14729 () Bool)

(assert (=> b!88927 (= c!14729 (and (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!57935 () ListLongMap!1493)

(declare-fun e!57929 () ListLongMap!1493)

(assert (=> b!88927 (= e!57935 e!57929)))

(declare-fun b!88928 () Bool)

(declare-fun lt!42538 () Unit!2654)

(assert (=> b!88928 (= e!57933 lt!42538)))

(declare-fun lt!42536 () ListLongMap!1493)

(assert (=> b!88928 (= lt!42536 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun lt!42535 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42535 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42525 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42525 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!42527 () Unit!2654)

(declare-fun addStillContains!60 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64)) Unit!2654)

(assert (=> b!88928 (= lt!42527 (addStillContains!60 lt!42536 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42525))))

(assert (=> b!88928 (contains!769 (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42525)))

(declare-fun lt!42539 () Unit!2654)

(assert (=> b!88928 (= lt!42539 lt!42527)))

(declare-fun lt!42524 () ListLongMap!1493)

(assert (=> b!88928 (= lt!42524 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun lt!42541 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42541 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42528 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42528 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!42529 () Unit!2654)

(declare-fun addApplyDifferent!60 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64)) Unit!2654)

(assert (=> b!88928 (= lt!42529 (addApplyDifferent!60 lt!42524 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42528))))

(assert (=> b!88928 (= (apply!84 (+!119 lt!42524 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42528) (apply!84 lt!42524 lt!42528))))

(declare-fun lt!42531 () Unit!2654)

(assert (=> b!88928 (= lt!42531 lt!42529)))

(declare-fun lt!42523 () ListLongMap!1493)

(assert (=> b!88928 (= lt!42523 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun lt!42542 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42542 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42526 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42526 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!42540 () Unit!2654)

(assert (=> b!88928 (= lt!42540 (addApplyDifferent!60 lt!42523 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42526))))

(assert (=> b!88928 (= (apply!84 (+!119 lt!42523 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42526) (apply!84 lt!42523 lt!42526))))

(declare-fun lt!42532 () Unit!2654)

(assert (=> b!88928 (= lt!42532 lt!42540)))

(declare-fun lt!42522 () ListLongMap!1493)

(assert (=> b!88928 (= lt!42522 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun lt!42534 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42534 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42533 () (_ BitVec 64))

(assert (=> b!88928 (= lt!42533 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!88928 (= lt!42538 (addApplyDifferent!60 lt!42522 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42533))))

(assert (=> b!88928 (= (apply!84 (+!119 lt!42522 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42533) (apply!84 lt!42522 lt!42533))))

(declare-fun b!88929 () Bool)

(assert (=> b!88929 (= e!57931 e!57930)))

(declare-fun c!14730 () Bool)

(assert (=> b!88929 (= c!14730 (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!88930 () Bool)

(declare-fun res!45498 () Bool)

(assert (=> b!88930 (=> (not res!45498) (not e!57931))))

(assert (=> b!88930 (= res!45498 e!57932)))

(declare-fun res!45491 () Bool)

(assert (=> b!88930 (=> res!45491 e!57932)))

(assert (=> b!88930 (= res!45491 (not e!57936))))

(declare-fun res!45490 () Bool)

(assert (=> b!88930 (=> (not res!45490) (not e!57936))))

(assert (=> b!88930 (= res!45490 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!88931 () Bool)

(assert (=> b!88931 (= e!57938 (not call!8563))))

(declare-fun b!88932 () Bool)

(assert (=> b!88932 (= e!57929 call!8562)))

(declare-fun b!88933 () Bool)

(assert (=> b!88933 (= e!57937 e!57935)))

(declare-fun c!14731 () Bool)

(assert (=> b!88933 (= c!14731 (and (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!88934 () Bool)

(declare-fun call!8558 () ListLongMap!1493)

(assert (=> b!88934 (= e!57935 call!8558)))

(declare-fun bm!8558 () Bool)

(assert (=> bm!8558 (= call!8557 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun bm!8559 () Bool)

(assert (=> bm!8559 (= call!8559 (+!119 (ite c!14733 call!8557 (ite c!14731 call!8561 call!8562)) (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun b!88935 () Bool)

(declare-fun res!45494 () Bool)

(assert (=> b!88935 (=> (not res!45494) (not e!57931))))

(assert (=> b!88935 (= res!45494 e!57938)))

(declare-fun c!14732 () Bool)

(assert (=> b!88935 (= c!14732 (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!88936 () Bool)

(assert (=> b!88936 (= e!57929 call!8558)))

(declare-fun bm!8560 () Bool)

(assert (=> bm!8560 (= call!8558 call!8559)))

(assert (= (and d!23615 c!14733) b!88917))

(assert (= (and d!23615 (not c!14733)) b!88933))

(assert (= (and b!88933 c!14731) b!88934))

(assert (= (and b!88933 (not c!14731)) b!88927))

(assert (= (and b!88927 c!14729) b!88936))

(assert (= (and b!88927 (not c!14729)) b!88932))

(assert (= (or b!88936 b!88932) bm!8555))

(assert (= (or b!88934 bm!8555) bm!8556))

(assert (= (or b!88934 b!88936) bm!8560))

(assert (= (or b!88917 bm!8556) bm!8558))

(assert (= (or b!88917 bm!8560) bm!8559))

(assert (= (and d!23615 res!45497) b!88926))

(assert (= (and d!23615 c!14734) b!88928))

(assert (= (and d!23615 (not c!14734)) b!88920))

(assert (= (and d!23615 res!45496) b!88930))

(assert (= (and b!88930 res!45490) b!88919))

(assert (= (and b!88930 (not res!45491)) b!88918))

(assert (= (and b!88918 res!45492) b!88925))

(assert (= (and b!88930 res!45498) b!88935))

(assert (= (and b!88935 c!14732) b!88924))

(assert (= (and b!88935 (not c!14732)) b!88931))

(assert (= (and b!88924 res!45495) b!88922))

(assert (= (or b!88924 b!88931) bm!8554))

(assert (= (and b!88935 res!45494) b!88929))

(assert (= (and b!88929 c!14730) b!88921))

(assert (= (and b!88929 (not c!14730)) b!88916))

(assert (= (and b!88921 res!45493) b!88923))

(assert (= (or b!88921 b!88916) bm!8557))

(declare-fun b_lambda!3939 () Bool)

(assert (=> (not b_lambda!3939) (not b!88925)))

(assert (=> b!88925 t!5318))

(declare-fun b_and!5345 () Bool)

(assert (= b_and!5333 (and (=> t!5318 result!2969) b_and!5345)))

(assert (=> b!88925 t!5320))

(declare-fun b_and!5347 () Bool)

(assert (= b_and!5335 (and (=> t!5320 result!2973) b_and!5347)))

(declare-fun m!94949 () Bool)

(assert (=> b!88919 m!94949))

(assert (=> b!88919 m!94949))

(declare-fun m!94951 () Bool)

(assert (=> b!88919 m!94951))

(declare-fun m!94953 () Bool)

(assert (=> b!88925 m!94953))

(assert (=> b!88925 m!94845))

(declare-fun m!94955 () Bool)

(assert (=> b!88925 m!94955))

(assert (=> b!88925 m!94953))

(assert (=> b!88925 m!94949))

(declare-fun m!94957 () Bool)

(assert (=> b!88925 m!94957))

(assert (=> b!88925 m!94949))

(assert (=> b!88925 m!94845))

(declare-fun m!94959 () Bool)

(assert (=> bm!8559 m!94959))

(declare-fun m!94961 () Bool)

(assert (=> bm!8554 m!94961))

(declare-fun m!94963 () Bool)

(assert (=> b!88923 m!94963))

(declare-fun m!94965 () Bool)

(assert (=> bm!8557 m!94965))

(declare-fun m!94967 () Bool)

(assert (=> b!88917 m!94967))

(assert (=> bm!8558 m!94837))

(assert (=> b!88926 m!94949))

(assert (=> b!88926 m!94949))

(assert (=> b!88926 m!94951))

(declare-fun m!94969 () Bool)

(assert (=> b!88928 m!94969))

(declare-fun m!94971 () Bool)

(assert (=> b!88928 m!94971))

(declare-fun m!94973 () Bool)

(assert (=> b!88928 m!94973))

(declare-fun m!94975 () Bool)

(assert (=> b!88928 m!94975))

(declare-fun m!94977 () Bool)

(assert (=> b!88928 m!94977))

(declare-fun m!94979 () Bool)

(assert (=> b!88928 m!94979))

(declare-fun m!94981 () Bool)

(assert (=> b!88928 m!94981))

(declare-fun m!94983 () Bool)

(assert (=> b!88928 m!94983))

(declare-fun m!94985 () Bool)

(assert (=> b!88928 m!94985))

(assert (=> b!88928 m!94949))

(assert (=> b!88928 m!94981))

(assert (=> b!88928 m!94977))

(declare-fun m!94987 () Bool)

(assert (=> b!88928 m!94987))

(assert (=> b!88928 m!94973))

(declare-fun m!94989 () Bool)

(assert (=> b!88928 m!94989))

(declare-fun m!94991 () Bool)

(assert (=> b!88928 m!94991))

(assert (=> b!88928 m!94837))

(declare-fun m!94993 () Bool)

(assert (=> b!88928 m!94993))

(declare-fun m!94995 () Bool)

(assert (=> b!88928 m!94995))

(assert (=> b!88928 m!94985))

(declare-fun m!94997 () Bool)

(assert (=> b!88928 m!94997))

(assert (=> d!23615 m!94821))

(declare-fun m!94999 () Bool)

(assert (=> b!88922 m!94999))

(assert (=> b!88918 m!94949))

(assert (=> b!88918 m!94949))

(declare-fun m!95001 () Bool)

(assert (=> b!88918 m!95001))

(assert (=> b!88765 d!23615))

(declare-fun d!23617 () Bool)

(declare-fun c!14737 () Bool)

(assert (=> d!23617 (= c!14737 ((_ is ValueCellFull!930) (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun e!57941 () V!3043)

(assert (=> d!23617 (= (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!57941)))

(declare-fun b!88941 () Bool)

(declare-fun get!1226 (ValueCell!930 V!3043) V!3043)

(assert (=> b!88941 (= e!57941 (get!1226 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!88942 () Bool)

(declare-fun get!1227 (ValueCell!930 V!3043) V!3043)

(assert (=> b!88942 (= e!57941 (get!1227 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23617 c!14737) b!88941))

(assert (= (and d!23617 (not c!14737)) b!88942))

(assert (=> b!88941 m!94843))

(assert (=> b!88941 m!94845))

(declare-fun m!95003 () Bool)

(assert (=> b!88941 m!95003))

(assert (=> b!88942 m!94843))

(assert (=> b!88942 m!94845))

(declare-fun m!95005 () Bool)

(assert (=> b!88942 m!95005))

(assert (=> b!88768 d!23617))

(declare-fun d!23619 () Bool)

(assert (=> d!23619 (= (array_inv!1155 (_keys!4050 newMap!16)) (bvsge (size!2176 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!88759 d!23619))

(declare-fun d!23621 () Bool)

(assert (=> d!23621 (= (array_inv!1156 (_values!2355 newMap!16)) (bvsge (size!2177 (_values!2355 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!88759 d!23621))

(declare-fun d!23623 () Bool)

(declare-fun e!57946 () Bool)

(assert (=> d!23623 e!57946))

(declare-fun res!45501 () Bool)

(assert (=> d!23623 (=> res!45501 e!57946)))

(declare-fun lt!42554 () Bool)

(assert (=> d!23623 (= res!45501 (not lt!42554))))

(declare-fun lt!42553 () Bool)

(assert (=> d!23623 (= lt!42554 lt!42553)))

(declare-fun lt!42552 () Unit!2654)

(declare-fun e!57947 () Unit!2654)

(assert (=> d!23623 (= lt!42552 e!57947)))

(declare-fun c!14740 () Bool)

(assert (=> d!23623 (= c!14740 lt!42553)))

(declare-fun containsKey!145 (List!1560 (_ BitVec 64)) Bool)

(assert (=> d!23623 (= lt!42553 (containsKey!145 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> d!23623 (= (contains!769 lt!42410 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) lt!42554)))

(declare-fun b!88949 () Bool)

(declare-fun lt!42551 () Unit!2654)

(assert (=> b!88949 (= e!57947 lt!42551)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!94 (List!1560 (_ BitVec 64)) Unit!2654)

(assert (=> b!88949 (= lt!42551 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-datatypes ((Option!147 0))(
  ( (Some!146 (v!2680 V!3043)) (None!145) )
))
(declare-fun isDefined!95 (Option!147) Bool)

(declare-fun getValueByKey!141 (List!1560 (_ BitVec 64)) Option!147)

(assert (=> b!88949 (isDefined!95 (getValueByKey!141 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!88950 () Bool)

(declare-fun Unit!2659 () Unit!2654)

(assert (=> b!88950 (= e!57947 Unit!2659)))

(declare-fun b!88951 () Bool)

(assert (=> b!88951 (= e!57946 (isDefined!95 (getValueByKey!141 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))))

(assert (= (and d!23623 c!14740) b!88949))

(assert (= (and d!23623 (not c!14740)) b!88950))

(assert (= (and d!23623 (not res!45501)) b!88951))

(assert (=> d!23623 m!94805))

(declare-fun m!95007 () Bool)

(assert (=> d!23623 m!95007))

(assert (=> b!88949 m!94805))

(declare-fun m!95009 () Bool)

(assert (=> b!88949 m!95009))

(assert (=> b!88949 m!94805))

(declare-fun m!95011 () Bool)

(assert (=> b!88949 m!95011))

(assert (=> b!88949 m!95011))

(declare-fun m!95013 () Bool)

(assert (=> b!88949 m!95013))

(assert (=> b!88951 m!94805))

(assert (=> b!88951 m!95011))

(assert (=> b!88951 m!95011))

(assert (=> b!88951 m!95013))

(assert (=> b!88769 d!23623))

(declare-fun bm!8609 () Bool)

(declare-fun call!8626 () ListLongMap!1493)

(declare-fun call!8618 () ListLongMap!1493)

(assert (=> bm!8609 (= call!8626 call!8618)))

(declare-fun b!89032 () Bool)

(declare-fun res!45536 () Bool)

(declare-fun e!57993 () Bool)

(assert (=> b!89032 (=> (not res!45536) (not e!57993))))

(declare-fun call!8628 () Bool)

(assert (=> b!89032 (= res!45536 call!8628)))

(declare-fun e!58001 () Bool)

(assert (=> b!89032 (= e!58001 e!57993)))

(declare-fun b!89033 () Bool)

(declare-fun c!14770 () Bool)

(declare-fun lt!42631 () SeekEntryResult!255)

(assert (=> b!89033 (= c!14770 ((_ is MissingVacant!255) lt!42631))))

(declare-fun e!57990 () tuple2!2246)

(declare-fun e!57998 () tuple2!2246)

(assert (=> b!89033 (= e!57990 e!57998)))

(declare-fun bm!8610 () Bool)

(declare-fun call!8616 () SeekEntryResult!255)

(declare-fun call!8614 () SeekEntryResult!255)

(assert (=> bm!8610 (= call!8616 call!8614)))

(declare-fun b!89034 () Bool)

(declare-fun e!58007 () ListLongMap!1493)

(assert (=> b!89034 (= e!58007 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun b!89035 () Bool)

(declare-fun e!58002 () Bool)

(declare-fun lt!42633 () SeekEntryResult!255)

(assert (=> b!89035 (= e!58002 ((_ is Undefined!255) lt!42633))))

(declare-fun e!58000 () Bool)

(declare-fun call!8620 () ListLongMap!1493)

(declare-fun call!8629 () ListLongMap!1493)

(declare-fun b!89036 () Bool)

(assert (=> b!89036 (= e!58000 (= call!8629 (+!119 call!8620 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun bm!8611 () Bool)

(declare-fun call!8632 () SeekEntryResult!255)

(assert (=> bm!8611 (= call!8632 call!8614)))

(declare-fun b!89037 () Bool)

(declare-fun e!57997 () Bool)

(assert (=> b!89037 (= e!58002 e!57997)))

(declare-fun res!45538 () Bool)

(declare-fun call!8627 () Bool)

(assert (=> b!89037 (= res!45538 call!8627)))

(assert (=> b!89037 (=> (not res!45538) (not e!57997))))

(declare-fun b!89038 () Bool)

(declare-fun lt!42620 () SeekEntryResult!255)

(declare-fun e!58009 () Bool)

(assert (=> b!89038 (= e!58009 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42620)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89039 () Bool)

(declare-fun e!57994 () Unit!2654)

(declare-fun Unit!2660 () Unit!2654)

(assert (=> b!89039 (= e!57994 Unit!2660)))

(declare-fun lt!42610 () Unit!2654)

(declare-fun call!8612 () Unit!2654)

(assert (=> b!89039 (= lt!42610 call!8612)))

(declare-fun lt!42616 () SeekEntryResult!255)

(assert (=> b!89039 (= lt!42616 call!8616)))

(declare-fun res!45541 () Bool)

(assert (=> b!89039 (= res!45541 ((_ is Found!255) lt!42616))))

(declare-fun e!58008 () Bool)

(assert (=> b!89039 (=> (not res!45541) (not e!58008))))

(assert (=> b!89039 e!58008))

(declare-fun lt!42632 () Unit!2654)

(assert (=> b!89039 (= lt!42632 lt!42610)))

(assert (=> b!89039 false))

(declare-fun call!8635 () Unit!2654)

(declare-fun bm!8612 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!33 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 64) Int) Unit!2654)

(assert (=> bm!8612 (= call!8635 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)))))

(declare-fun b!89040 () Bool)

(declare-fun res!45531 () Bool)

(assert (=> b!89040 (=> (not res!45531) (not e!57993))))

(declare-fun lt!42626 () SeekEntryResult!255)

(assert (=> b!89040 (= res!45531 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3159 lt!42626)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8613 () Bool)

(declare-fun call!8624 () Bool)

(assert (=> bm!8613 (= call!8627 call!8624)))

(declare-fun b!89041 () Bool)

(declare-fun e!58005 () tuple2!2246)

(assert (=> b!89041 (= e!57998 e!58005)))

(declare-fun c!14767 () Bool)

(assert (=> b!89041 (= c!14767 ((_ is MissingZero!255) lt!42631))))

(declare-fun b!89042 () Bool)

(declare-fun call!8634 () ListLongMap!1493)

(assert (=> b!89042 (= e!58007 call!8634)))

(declare-fun b!89043 () Bool)

(declare-fun lt!42621 () Unit!2654)

(assert (=> b!89043 (= lt!42621 e!57994)))

(declare-fun c!14775 () Bool)

(declare-fun call!8621 () Bool)

(assert (=> b!89043 (= c!14775 call!8621)))

(assert (=> b!89043 (= e!57990 (tuple2!2247 false newMap!16))))

(declare-fun b!89044 () Bool)

(declare-fun lt!42628 () Unit!2654)

(declare-fun lt!42614 () Unit!2654)

(assert (=> b!89044 (= lt!42628 lt!42614)))

(declare-fun call!8625 () ListLongMap!1493)

(assert (=> b!89044 (= call!8625 call!8626)))

(declare-fun lt!42627 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!33 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 V!3043 Int) Unit!2654)

(assert (=> b!89044 (= lt!42614 (lemmaChangeZeroKeyThenAddPairToListMap!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) lt!42627 (zeroValue!2261 newMap!16) lt!42403 (minValue!2261 newMap!16) (defaultEntry!2372 newMap!16)))))

(assert (=> b!89044 (= lt!42627 (bvor (extraKeys!2205 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!57995 () tuple2!2246)

(assert (=> b!89044 (= e!57995 (tuple2!2247 true (LongMapFixedSize!769 (defaultEntry!2372 newMap!16) (mask!6416 newMap!16) (bvor (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) lt!42403 (minValue!2261 newMap!16) (_size!433 newMap!16) (_keys!4050 newMap!16) (_values!2355 newMap!16) (_vacant!433 newMap!16))))))

(declare-fun bm!8614 () Bool)

(declare-fun call!8630 () Bool)

(assert (=> bm!8614 (= call!8628 call!8630)))

(declare-fun b!89045 () Bool)

(declare-fun c!14773 () Bool)

(assert (=> b!89045 (= c!14773 ((_ is MissingVacant!255) lt!42626))))

(declare-fun e!57999 () Bool)

(assert (=> b!89045 (= e!58001 e!57999)))

(declare-fun bm!8615 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!33 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 64) Int) Unit!2654)

(assert (=> bm!8615 (= call!8612 (lemmaInListMapThenSeekEntryOrOpenFindsIt!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)))))

(declare-fun bm!8616 () Bool)

(declare-fun call!8613 () ListLongMap!1493)

(assert (=> bm!8616 (= call!8634 call!8613)))

(declare-fun b!89046 () Bool)

(declare-fun call!8622 () Bool)

(assert (=> b!89046 (= e!57997 (not call!8622))))

(declare-fun b!89047 () Bool)

(declare-fun call!8631 () Bool)

(assert (=> b!89047 (= e!57993 (not call!8631))))

(declare-fun b!89048 () Bool)

(declare-fun e!57992 () Bool)

(assert (=> b!89048 (= e!57992 e!58000)))

(declare-fun res!45534 () Bool)

(assert (=> b!89048 (= res!45534 (contains!769 call!8629 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> b!89048 (=> (not res!45534) (not e!58000))))

(declare-fun b!89049 () Bool)

(declare-fun e!57991 () Bool)

(assert (=> b!89049 (= e!57991 (not call!8631))))

(declare-fun b!89050 () Bool)

(declare-fun res!45537 () Bool)

(assert (=> b!89050 (= res!45537 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3162 lt!42633)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89050 (=> (not res!45537) (not e!57997))))

(declare-fun b!89051 () Bool)

(declare-fun e!58006 () Bool)

(assert (=> b!89051 (= e!58006 e!57992)))

(declare-fun c!14777 () Bool)

(declare-fun lt!42617 () tuple2!2246)

(assert (=> b!89051 (= c!14777 (_1!1133 lt!42617))))

(declare-fun b!89052 () Bool)

(assert (=> b!89052 (= e!58008 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42616)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun bm!8617 () Bool)

(assert (=> bm!8617 (= call!8620 (map!1201 newMap!16))))

(declare-fun b!89053 () Bool)

(declare-fun e!58003 () tuple2!2246)

(assert (=> b!89053 (= e!58003 e!57995)))

(declare-fun c!14769 () Bool)

(assert (=> b!89053 (= c!14769 (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8618 () Bool)

(declare-fun call!8615 () Bool)

(assert (=> bm!8618 (= call!8622 call!8615)))

(declare-fun c!14768 () Bool)

(declare-fun bm!8619 () Bool)

(declare-fun call!8619 () ListLongMap!1493)

(assert (=> bm!8619 (= call!8619 (+!119 e!58007 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun c!14772 () Bool)

(assert (=> bm!8619 (= c!14772 c!14768)))

(declare-fun b!89054 () Bool)

(declare-fun lt!42630 () Unit!2654)

(declare-fun lt!42615 () Unit!2654)

(assert (=> b!89054 (= lt!42630 lt!42615)))

(assert (=> b!89054 call!8621))

(declare-fun lt!42618 () array!4058)

(declare-fun lemmaValidKeyInArrayIsInListMap!91 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 32) Int) Unit!2654)

(assert (=> b!89054 (= lt!42615 (lemmaValidKeyInArrayIsInListMap!91 (_keys!4050 newMap!16) lt!42618 (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (index!3160 lt!42631) (defaultEntry!2372 newMap!16)))))

(assert (=> b!89054 (= lt!42618 (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16))))))

(declare-fun lt!42629 () Unit!2654)

(declare-fun lt!42622 () Unit!2654)

(assert (=> b!89054 (= lt!42629 lt!42622)))

(assert (=> b!89054 (= call!8619 call!8618)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!33 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 32) (_ BitVec 64) V!3043 Int) Unit!2654)

(assert (=> b!89054 (= lt!42622 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (index!3160 lt!42631) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42635 () Unit!2654)

(declare-fun e!57996 () Unit!2654)

(assert (=> b!89054 (= lt!42635 e!57996)))

(declare-fun c!14776 () Bool)

(assert (=> b!89054 (= c!14776 (contains!769 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> b!89054 (= e!58005 (tuple2!2247 true (LongMapFixedSize!769 (defaultEntry!2372 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (_size!433 newMap!16) (_keys!4050 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16))) (_vacant!433 newMap!16))))))

(declare-fun c!14774 () Bool)

(declare-fun bm!8620 () Bool)

(declare-fun c!14771 () Bool)

(declare-fun call!8617 () Bool)

(declare-fun c!14779 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!8620 (= call!8617 (inRange!0 (ite c!14771 (ite c!14775 (index!3160 lt!42616) (ite c!14779 (index!3159 lt!42633) (index!3162 lt!42633))) (ite c!14776 (index!3160 lt!42620) (ite c!14774 (index!3159 lt!42626) (index!3162 lt!42626)))) (mask!6416 newMap!16)))))

(declare-fun call!8623 () ListLongMap!1493)

(declare-fun bm!8621 () Bool)

(assert (=> bm!8621 (= call!8621 (contains!769 call!8623 (ite c!14771 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42631)))))))

(declare-fun b!89055 () Bool)

(declare-fun res!45542 () Bool)

(assert (=> b!89055 (= res!45542 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3162 lt!42626)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89055 (=> (not res!45542) (not e!57991))))

(declare-fun d!23625 () Bool)

(assert (=> d!23625 e!58006))

(declare-fun res!45535 () Bool)

(assert (=> d!23625 (=> (not res!45535) (not e!58006))))

(assert (=> d!23625 (= res!45535 (valid!335 (_2!1133 lt!42617)))))

(assert (=> d!23625 (= lt!42617 e!58003)))

(assert (=> d!23625 (= c!14768 (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvneg (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))))

(assert (=> d!23625 (valid!335 newMap!16)))

(assert (=> d!23625 (= (update!125 newMap!16 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403) lt!42617)))

(declare-fun bm!8622 () Bool)

(assert (=> bm!8622 (= call!8624 call!8617)))

(declare-fun b!89056 () Bool)

(assert (=> b!89056 (= e!58003 e!57990)))

(assert (=> b!89056 (= lt!42631 (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(assert (=> b!89056 (= c!14771 ((_ is Undefined!255) lt!42631))))

(declare-fun b!89057 () Bool)

(declare-fun c!14778 () Bool)

(assert (=> b!89057 (= c!14778 ((_ is MissingVacant!255) lt!42633))))

(declare-fun e!58004 () Bool)

(assert (=> b!89057 (= e!58004 e!58002)))

(declare-fun b!89058 () Bool)

(declare-fun lt!42624 () Unit!2654)

(declare-fun lt!42623 () Unit!2654)

(assert (=> b!89058 (= lt!42624 lt!42623)))

(assert (=> b!89058 (= call!8625 call!8626)))

(declare-fun lt!42611 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!33 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 V!3043 Int) Unit!2654)

(assert (=> b!89058 (= lt!42623 (lemmaChangeLongMinValueKeyThenAddPairToListMap!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) lt!42611 (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) lt!42403 (defaultEntry!2372 newMap!16)))))

(assert (=> b!89058 (= lt!42611 (bvor (extraKeys!2205 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!89058 (= e!57995 (tuple2!2247 true (LongMapFixedSize!769 (defaultEntry!2372 newMap!16) (mask!6416 newMap!16) (bvor (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) (zeroValue!2261 newMap!16) lt!42403 (_size!433 newMap!16) (_keys!4050 newMap!16) (_values!2355 newMap!16) (_vacant!433 newMap!16))))))

(declare-fun b!89059 () Bool)

(declare-fun res!45533 () Bool)

(declare-fun e!58010 () Bool)

(assert (=> b!89059 (=> (not res!45533) (not e!58010))))

(assert (=> b!89059 (= res!45533 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3159 lt!42633)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8623 () Bool)

(assert (=> bm!8623 (= call!8623 call!8613)))

(declare-fun b!89060 () Bool)

(declare-fun res!45532 () Bool)

(assert (=> b!89060 (=> (not res!45532) (not e!58010))))

(assert (=> b!89060 (= res!45532 call!8627)))

(assert (=> b!89060 (= e!58004 e!58010)))

(declare-fun bm!8624 () Bool)

(assert (=> bm!8624 (= call!8618 (getCurrentListMap!445 (_keys!4050 newMap!16) (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))) (mask!6416 newMap!16) (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun bm!8625 () Bool)

(assert (=> bm!8625 (= call!8630 call!8617)))

(declare-fun b!89061 () Bool)

(declare-fun Unit!2661 () Unit!2654)

(assert (=> b!89061 (= e!57996 Unit!2661)))

(declare-fun lt!42612 () Unit!2654)

(assert (=> b!89061 (= lt!42612 call!8635)))

(assert (=> b!89061 (= lt!42626 call!8632)))

(assert (=> b!89061 (= c!14774 ((_ is MissingZero!255) lt!42626))))

(assert (=> b!89061 e!58001))

(declare-fun lt!42613 () Unit!2654)

(assert (=> b!89061 (= lt!42613 lt!42612)))

(assert (=> b!89061 false))

(declare-fun bm!8626 () Bool)

(assert (=> bm!8626 (= call!8631 call!8615)))

(declare-fun b!89062 () Bool)

(declare-fun lt!42634 () tuple2!2246)

(assert (=> b!89062 (= e!57998 (tuple2!2247 (_1!1133 lt!42634) (_2!1133 lt!42634)))))

(declare-fun call!8633 () tuple2!2246)

(assert (=> b!89062 (= lt!42634 call!8633)))

(declare-fun b!89063 () Bool)

(assert (=> b!89063 (= e!57999 ((_ is Undefined!255) lt!42626))))

(declare-fun b!89064 () Bool)

(assert (=> b!89064 (= e!57992 (= call!8629 call!8620))))

(declare-fun bm!8627 () Bool)

(assert (=> bm!8627 (= call!8629 (map!1201 (_2!1133 lt!42617)))))

(declare-fun bm!8628 () Bool)

(assert (=> bm!8628 (= call!8613 (getCurrentListMap!445 (_keys!4050 newMap!16) (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun b!89065 () Bool)

(declare-fun res!45540 () Bool)

(assert (=> b!89065 (= res!45540 call!8624)))

(assert (=> b!89065 (=> (not res!45540) (not e!58008))))

(declare-fun b!89066 () Bool)

(declare-fun lt!42625 () Unit!2654)

(assert (=> b!89066 (= e!57996 lt!42625)))

(assert (=> b!89066 (= lt!42625 call!8612)))

(assert (=> b!89066 (= lt!42620 call!8632)))

(declare-fun res!45543 () Bool)

(assert (=> b!89066 (= res!45543 ((_ is Found!255) lt!42620))))

(assert (=> b!89066 (=> (not res!45543) (not e!58009))))

(assert (=> b!89066 e!58009))

(declare-fun b!89067 () Bool)

(assert (=> b!89067 (= e!58010 (not call!8622))))

(declare-fun b!89068 () Bool)

(assert (=> b!89068 (= e!57999 e!57991)))

(declare-fun res!45539 () Bool)

(assert (=> b!89068 (= res!45539 call!8628)))

(assert (=> b!89068 (=> (not res!45539) (not e!57991))))

(declare-fun b!89069 () Bool)

(declare-fun lt!42609 () Unit!2654)

(assert (=> b!89069 (= e!57994 lt!42609)))

(assert (=> b!89069 (= lt!42609 call!8635)))

(assert (=> b!89069 (= lt!42633 call!8616)))

(assert (=> b!89069 (= c!14779 ((_ is MissingZero!255) lt!42633))))

(assert (=> b!89069 e!58004))

(declare-fun bm!8629 () Bool)

(assert (=> bm!8629 (= call!8625 call!8619)))

(declare-fun bm!8630 () Bool)

(declare-fun updateHelperNewKey!33 (LongMapFixedSize!768 (_ BitVec 64) V!3043 (_ BitVec 32)) tuple2!2246)

(assert (=> bm!8630 (= call!8633 (updateHelperNewKey!33 newMap!16 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631))))))

(declare-fun b!89070 () Bool)

(declare-fun res!45530 () Bool)

(assert (=> b!89070 (= res!45530 call!8630)))

(assert (=> b!89070 (=> (not res!45530) (not e!58009))))

(declare-fun bm!8631 () Bool)

(assert (=> bm!8631 (= call!8615 (arrayContainsKey!0 (_keys!4050 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!89071 () Bool)

(declare-fun lt!42619 () tuple2!2246)

(assert (=> b!89071 (= lt!42619 call!8633)))

(assert (=> b!89071 (= e!58005 (tuple2!2247 (_1!1133 lt!42619) (_2!1133 lt!42619)))))

(declare-fun bm!8632 () Bool)

(assert (=> bm!8632 (= call!8614 (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(assert (= (and d!23625 c!14768) b!89053))

(assert (= (and d!23625 (not c!14768)) b!89056))

(assert (= (and b!89053 c!14769) b!89044))

(assert (= (and b!89053 (not c!14769)) b!89058))

(assert (= (or b!89044 b!89058) bm!8616))

(assert (= (or b!89044 b!89058) bm!8609))

(assert (= (or b!89044 b!89058) bm!8629))

(assert (= (and b!89056 c!14771) b!89043))

(assert (= (and b!89056 (not c!14771)) b!89033))

(assert (= (and b!89043 c!14775) b!89039))

(assert (= (and b!89043 (not c!14775)) b!89069))

(assert (= (and b!89039 res!45541) b!89065))

(assert (= (and b!89065 res!45540) b!89052))

(assert (= (and b!89069 c!14779) b!89060))

(assert (= (and b!89069 (not c!14779)) b!89057))

(assert (= (and b!89060 res!45532) b!89059))

(assert (= (and b!89059 res!45533) b!89067))

(assert (= (and b!89057 c!14778) b!89037))

(assert (= (and b!89057 (not c!14778)) b!89035))

(assert (= (and b!89037 res!45538) b!89050))

(assert (= (and b!89050 res!45537) b!89046))

(assert (= (or b!89060 b!89037) bm!8613))

(assert (= (or b!89067 b!89046) bm!8618))

(assert (= (or b!89065 bm!8613) bm!8622))

(assert (= (or b!89039 b!89069) bm!8610))

(assert (= (and b!89033 c!14770) b!89062))

(assert (= (and b!89033 (not c!14770)) b!89041))

(assert (= (and b!89041 c!14767) b!89071))

(assert (= (and b!89041 (not c!14767)) b!89054))

(assert (= (and b!89054 c!14776) b!89066))

(assert (= (and b!89054 (not c!14776)) b!89061))

(assert (= (and b!89066 res!45543) b!89070))

(assert (= (and b!89070 res!45530) b!89038))

(assert (= (and b!89061 c!14774) b!89032))

(assert (= (and b!89061 (not c!14774)) b!89045))

(assert (= (and b!89032 res!45536) b!89040))

(assert (= (and b!89040 res!45531) b!89047))

(assert (= (and b!89045 c!14773) b!89068))

(assert (= (and b!89045 (not c!14773)) b!89063))

(assert (= (and b!89068 res!45539) b!89055))

(assert (= (and b!89055 res!45542) b!89049))

(assert (= (or b!89032 b!89068) bm!8614))

(assert (= (or b!89047 b!89049) bm!8626))

(assert (= (or b!89070 bm!8614) bm!8625))

(assert (= (or b!89066 b!89061) bm!8611))

(assert (= (or b!89062 b!89071) bm!8630))

(assert (= (or b!89043 b!89054) bm!8623))

(assert (= (or bm!8610 bm!8611) bm!8632))

(assert (= (or bm!8618 bm!8626) bm!8631))

(assert (= (or b!89069 b!89061) bm!8612))

(assert (= (or b!89039 b!89066) bm!8615))

(assert (= (or bm!8622 bm!8625) bm!8620))

(assert (= (or b!89043 b!89054) bm!8621))

(assert (= (or bm!8616 bm!8623) bm!8628))

(assert (= (or bm!8609 b!89054) bm!8624))

(assert (= (or bm!8629 b!89054) bm!8619))

(assert (= (and bm!8619 c!14772) b!89042))

(assert (= (and bm!8619 (not c!14772)) b!89034))

(assert (= (and d!23625 res!45535) b!89051))

(assert (= (and b!89051 c!14777) b!89048))

(assert (= (and b!89051 (not c!14777)) b!89064))

(assert (= (and b!89048 res!45534) b!89036))

(assert (= (or b!89036 b!89064) bm!8617))

(assert (= (or b!89048 b!89036 b!89064) bm!8627))

(assert (=> bm!8612 m!94805))

(declare-fun m!95015 () Bool)

(assert (=> bm!8612 m!95015))

(declare-fun m!95017 () Bool)

(assert (=> bm!8628 m!95017))

(assert (=> bm!8632 m!94805))

(declare-fun m!95019 () Bool)

(assert (=> bm!8632 m!95019))

(assert (=> b!89034 m!94947))

(assert (=> b!89056 m!94805))

(assert (=> b!89056 m!95019))

(declare-fun m!95021 () Bool)

(assert (=> bm!8621 m!95021))

(declare-fun m!95023 () Bool)

(assert (=> bm!8621 m!95023))

(assert (=> b!89048 m!94805))

(declare-fun m!95025 () Bool)

(assert (=> b!89048 m!95025))

(assert (=> bm!8631 m!94805))

(declare-fun m!95027 () Bool)

(assert (=> bm!8631 m!95027))

(declare-fun m!95029 () Bool)

(assert (=> bm!8619 m!95029))

(assert (=> bm!8615 m!94805))

(declare-fun m!95031 () Bool)

(assert (=> bm!8615 m!95031))

(declare-fun m!95033 () Bool)

(assert (=> b!89038 m!95033))

(declare-fun m!95035 () Bool)

(assert (=> b!89052 m!95035))

(declare-fun m!95037 () Bool)

(assert (=> bm!8624 m!95037))

(declare-fun m!95039 () Bool)

(assert (=> bm!8624 m!95039))

(assert (=> bm!8630 m!94805))

(declare-fun m!95041 () Bool)

(assert (=> bm!8630 m!95041))

(declare-fun m!95043 () Bool)

(assert (=> bm!8627 m!95043))

(declare-fun m!95045 () Bool)

(assert (=> d!23625 m!95045))

(assert (=> d!23625 m!94853))

(declare-fun m!95047 () Bool)

(assert (=> b!89036 m!95047))

(declare-fun m!95049 () Bool)

(assert (=> bm!8620 m!95049))

(declare-fun m!95051 () Bool)

(assert (=> b!89040 m!95051))

(declare-fun m!95053 () Bool)

(assert (=> b!89050 m!95053))

(declare-fun m!95055 () Bool)

(assert (=> b!89058 m!95055))

(assert (=> bm!8617 m!94857))

(declare-fun m!95057 () Bool)

(assert (=> b!89054 m!95057))

(assert (=> b!89054 m!95037))

(assert (=> b!89054 m!94947))

(assert (=> b!89054 m!94947))

(assert (=> b!89054 m!94805))

(declare-fun m!95059 () Bool)

(assert (=> b!89054 m!95059))

(assert (=> b!89054 m!94805))

(declare-fun m!95061 () Bool)

(assert (=> b!89054 m!95061))

(declare-fun m!95063 () Bool)

(assert (=> b!89055 m!95063))

(declare-fun m!95065 () Bool)

(assert (=> b!89059 m!95065))

(declare-fun m!95067 () Bool)

(assert (=> b!89044 m!95067))

(assert (=> b!88769 d!23625))

(declare-fun b!89096 () Bool)

(declare-fun res!45555 () Bool)

(declare-fun e!58031 () Bool)

(assert (=> b!89096 (=> (not res!45555) (not e!58031))))

(declare-fun lt!42652 () ListLongMap!1493)

(assert (=> b!89096 (= res!45555 (not (contains!769 lt!42652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!23627 () Bool)

(assert (=> d!23627 e!58031))

(declare-fun res!45554 () Bool)

(assert (=> d!23627 (=> (not res!45554) (not e!58031))))

(assert (=> d!23627 (= res!45554 (not (contains!769 lt!42652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!58026 () ListLongMap!1493)

(assert (=> d!23627 (= lt!42652 e!58026)))

(declare-fun c!14788 () Bool)

(assert (=> d!23627 (= c!14788 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23627 (validMask!0 (mask!6416 (v!2676 (underlying!298 thiss!992))))))

(assert (=> d!23627 (= (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))) lt!42652)))

(declare-fun b!89097 () Bool)

(declare-fun lt!42651 () Unit!2654)

(declare-fun lt!42654 () Unit!2654)

(assert (=> b!89097 (= lt!42651 lt!42654)))

(declare-fun lt!42653 () ListLongMap!1493)

(declare-fun lt!42650 () (_ BitVec 64))

(declare-fun lt!42655 () V!3043)

(declare-fun lt!42656 () (_ BitVec 64))

(assert (=> b!89097 (not (contains!769 (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655)) lt!42650))))

(declare-fun addStillNotContains!35 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64)) Unit!2654)

(assert (=> b!89097 (= lt!42654 (addStillNotContains!35 lt!42653 lt!42656 lt!42655 lt!42650))))

(assert (=> b!89097 (= lt!42650 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!89097 (= lt!42655 (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!89097 (= lt!42656 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!8638 () ListLongMap!1493)

(assert (=> b!89097 (= lt!42653 call!8638)))

(declare-fun e!58027 () ListLongMap!1493)

(assert (=> b!89097 (= e!58027 (+!119 call!8638 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!89098 () Bool)

(assert (=> b!89098 (= e!58026 e!58027)))

(declare-fun c!14789 () Bool)

(assert (=> b!89098 (= c!14789 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!89099 () Bool)

(declare-fun e!58030 () Bool)

(declare-fun e!58029 () Bool)

(assert (=> b!89099 (= e!58030 e!58029)))

(declare-fun c!14791 () Bool)

(assert (=> b!89099 (= c!14791 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun bm!8635 () Bool)

(assert (=> bm!8635 (= call!8638 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!89100 () Bool)

(assert (=> b!89100 (= e!58029 (= lt!42652 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!89101 () Bool)

(declare-fun e!58028 () Bool)

(assert (=> b!89101 (= e!58030 e!58028)))

(assert (=> b!89101 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun res!45552 () Bool)

(assert (=> b!89101 (= res!45552 (contains!769 lt!42652 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!89101 (=> (not res!45552) (not e!58028))))

(declare-fun b!89102 () Bool)

(assert (=> b!89102 (= e!58027 call!8638)))

(declare-fun b!89103 () Bool)

(declare-fun isEmpty!346 (ListLongMap!1493) Bool)

(assert (=> b!89103 (= e!58029 (isEmpty!346 lt!42652))))

(declare-fun b!89104 () Bool)

(assert (=> b!89104 (= e!58031 e!58030)))

(declare-fun c!14790 () Bool)

(declare-fun e!58025 () Bool)

(assert (=> b!89104 (= c!14790 e!58025)))

(declare-fun res!45553 () Bool)

(assert (=> b!89104 (=> (not res!45553) (not e!58025))))

(assert (=> b!89104 (= res!45553 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!89105 () Bool)

(assert (=> b!89105 (= e!58026 (ListLongMap!1494 Nil!1557))))

(declare-fun b!89106 () Bool)

(assert (=> b!89106 (= e!58025 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!89106 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!89107 () Bool)

(assert (=> b!89107 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> b!89107 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2177 (_values!2355 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> b!89107 (= e!58028 (= (apply!84 lt!42652 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!23627 c!14788) b!89105))

(assert (= (and d!23627 (not c!14788)) b!89098))

(assert (= (and b!89098 c!14789) b!89097))

(assert (= (and b!89098 (not c!14789)) b!89102))

(assert (= (or b!89097 b!89102) bm!8635))

(assert (= (and d!23627 res!45554) b!89096))

(assert (= (and b!89096 res!45555) b!89104))

(assert (= (and b!89104 res!45553) b!89106))

(assert (= (and b!89104 c!14790) b!89101))

(assert (= (and b!89104 (not c!14790)) b!89099))

(assert (= (and b!89101 res!45552) b!89107))

(assert (= (and b!89099 c!14791) b!89100))

(assert (= (and b!89099 (not c!14791)) b!89103))

(declare-fun b_lambda!3941 () Bool)

(assert (=> (not b_lambda!3941) (not b!89097)))

(assert (=> b!89097 t!5318))

(declare-fun b_and!5349 () Bool)

(assert (= b_and!5345 (and (=> t!5318 result!2969) b_and!5349)))

(assert (=> b!89097 t!5320))

(declare-fun b_and!5351 () Bool)

(assert (= b_and!5347 (and (=> t!5320 result!2973) b_and!5351)))

(declare-fun b_lambda!3943 () Bool)

(assert (=> (not b_lambda!3943) (not b!89107)))

(assert (=> b!89107 t!5318))

(declare-fun b_and!5353 () Bool)

(assert (= b_and!5349 (and (=> t!5318 result!2969) b_and!5353)))

(assert (=> b!89107 t!5320))

(declare-fun b_and!5355 () Bool)

(assert (= b_and!5351 (and (=> t!5320 result!2973) b_and!5355)))

(assert (=> b!89101 m!94949))

(assert (=> b!89101 m!94949))

(declare-fun m!95069 () Bool)

(assert (=> b!89101 m!95069))

(assert (=> b!89106 m!94949))

(assert (=> b!89106 m!94949))

(assert (=> b!89106 m!94951))

(declare-fun m!95071 () Bool)

(assert (=> b!89097 m!95071))

(declare-fun m!95073 () Bool)

(assert (=> b!89097 m!95073))

(assert (=> b!89097 m!94845))

(declare-fun m!95075 () Bool)

(assert (=> b!89097 m!95075))

(assert (=> b!89097 m!94953))

(assert (=> b!89097 m!94953))

(assert (=> b!89097 m!94845))

(assert (=> b!89097 m!94955))

(assert (=> b!89097 m!95071))

(declare-fun m!95077 () Bool)

(assert (=> b!89097 m!95077))

(assert (=> b!89097 m!94949))

(declare-fun m!95079 () Bool)

(assert (=> b!89096 m!95079))

(declare-fun m!95081 () Bool)

(assert (=> bm!8635 m!95081))

(declare-fun m!95083 () Bool)

(assert (=> b!89103 m!95083))

(assert (=> b!89107 m!94845))

(assert (=> b!89107 m!94949))

(assert (=> b!89107 m!94953))

(assert (=> b!89107 m!94953))

(assert (=> b!89107 m!94845))

(assert (=> b!89107 m!94955))

(assert (=> b!89107 m!94949))

(declare-fun m!95085 () Bool)

(assert (=> b!89107 m!95085))

(assert (=> b!89100 m!95081))

(declare-fun m!95087 () Bool)

(assert (=> d!23627 m!95087))

(assert (=> d!23627 m!94821))

(assert (=> b!89098 m!94949))

(assert (=> b!89098 m!94949))

(assert (=> b!89098 m!94951))

(assert (=> b!88767 d!23627))

(declare-fun d!23629 () Bool)

(declare-fun e!58034 () Bool)

(assert (=> d!23629 e!58034))

(declare-fun res!45560 () Bool)

(assert (=> d!23629 (=> (not res!45560) (not e!58034))))

(declare-fun lt!42667 () ListLongMap!1493)

(assert (=> d!23629 (= res!45560 (contains!769 lt!42667 (_1!1132 lt!42400)))))

(declare-fun lt!42665 () List!1560)

(assert (=> d!23629 (= lt!42667 (ListLongMap!1494 lt!42665))))

(declare-fun lt!42666 () Unit!2654)

(declare-fun lt!42668 () Unit!2654)

(assert (=> d!23629 (= lt!42666 lt!42668)))

(assert (=> d!23629 (= (getValueByKey!141 lt!42665 (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400)))))

(declare-fun lemmaContainsTupThenGetReturnValue!60 (List!1560 (_ BitVec 64) V!3043) Unit!2654)

(assert (=> d!23629 (= lt!42668 (lemmaContainsTupThenGetReturnValue!60 lt!42665 (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(declare-fun insertStrictlySorted!62 (List!1560 (_ BitVec 64) V!3043) List!1560)

(assert (=> d!23629 (= lt!42665 (insertStrictlySorted!62 (toList!762 (+!119 lt!42399 lt!42402)) (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(assert (=> d!23629 (= (+!119 (+!119 lt!42399 lt!42402) lt!42400) lt!42667)))

(declare-fun b!89112 () Bool)

(declare-fun res!45561 () Bool)

(assert (=> b!89112 (=> (not res!45561) (not e!58034))))

(assert (=> b!89112 (= res!45561 (= (getValueByKey!141 (toList!762 lt!42667) (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400))))))

(declare-fun b!89113 () Bool)

(declare-fun contains!771 (List!1560 tuple2!2244) Bool)

(assert (=> b!89113 (= e!58034 (contains!771 (toList!762 lt!42667) lt!42400))))

(assert (= (and d!23629 res!45560) b!89112))

(assert (= (and b!89112 res!45561) b!89113))

(declare-fun m!95089 () Bool)

(assert (=> d!23629 m!95089))

(declare-fun m!95091 () Bool)

(assert (=> d!23629 m!95091))

(declare-fun m!95093 () Bool)

(assert (=> d!23629 m!95093))

(declare-fun m!95095 () Bool)

(assert (=> d!23629 m!95095))

(declare-fun m!95097 () Bool)

(assert (=> b!89112 m!95097))

(declare-fun m!95099 () Bool)

(assert (=> b!89113 m!95099))

(assert (=> b!88767 d!23629))

(declare-fun d!23631 () Bool)

(declare-fun e!58035 () Bool)

(assert (=> d!23631 e!58035))

(declare-fun res!45562 () Bool)

(assert (=> d!23631 (=> (not res!45562) (not e!58035))))

(declare-fun lt!42671 () ListLongMap!1493)

(assert (=> d!23631 (= res!45562 (contains!769 lt!42671 (_1!1132 lt!42402)))))

(declare-fun lt!42669 () List!1560)

(assert (=> d!23631 (= lt!42671 (ListLongMap!1494 lt!42669))))

(declare-fun lt!42670 () Unit!2654)

(declare-fun lt!42672 () Unit!2654)

(assert (=> d!23631 (= lt!42670 lt!42672)))

(assert (=> d!23631 (= (getValueByKey!141 lt!42669 (_1!1132 lt!42402)) (Some!146 (_2!1132 lt!42402)))))

(assert (=> d!23631 (= lt!42672 (lemmaContainsTupThenGetReturnValue!60 lt!42669 (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(assert (=> d!23631 (= lt!42669 (insertStrictlySorted!62 (toList!762 lt!42401) (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(assert (=> d!23631 (= (+!119 lt!42401 lt!42402) lt!42671)))

(declare-fun b!89114 () Bool)

(declare-fun res!45563 () Bool)

(assert (=> b!89114 (=> (not res!45563) (not e!58035))))

(assert (=> b!89114 (= res!45563 (= (getValueByKey!141 (toList!762 lt!42671) (_1!1132 lt!42402)) (Some!146 (_2!1132 lt!42402))))))

(declare-fun b!89115 () Bool)

(assert (=> b!89115 (= e!58035 (contains!771 (toList!762 lt!42671) lt!42402))))

(assert (= (and d!23631 res!45562) b!89114))

(assert (= (and b!89114 res!45563) b!89115))

(declare-fun m!95101 () Bool)

(assert (=> d!23631 m!95101))

(declare-fun m!95103 () Bool)

(assert (=> d!23631 m!95103))

(declare-fun m!95105 () Bool)

(assert (=> d!23631 m!95105))

(declare-fun m!95107 () Bool)

(assert (=> d!23631 m!95107))

(declare-fun m!95109 () Bool)

(assert (=> b!89114 m!95109))

(declare-fun m!95111 () Bool)

(assert (=> b!89115 m!95111))

(assert (=> b!88767 d!23631))

(declare-fun d!23633 () Bool)

(assert (=> d!23633 (= (+!119 (+!119 lt!42399 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (+!119 (+!119 lt!42399 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(declare-fun lt!42675 () Unit!2654)

(declare-fun choose!534 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64) V!3043) Unit!2654)

(assert (=> d!23633 (= lt!42675 (choose!534 lt!42399 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(assert (=> d!23633 (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23633 (= (addCommutativeForDiffKeys!38 lt!42399 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))) lt!42675)))

(declare-fun bs!3729 () Bool)

(assert (= bs!3729 d!23633))

(declare-fun m!95113 () Bool)

(assert (=> bs!3729 m!95113))

(declare-fun m!95115 () Bool)

(assert (=> bs!3729 m!95115))

(assert (=> bs!3729 m!94805))

(declare-fun m!95117 () Bool)

(assert (=> bs!3729 m!95117))

(assert (=> bs!3729 m!95113))

(declare-fun m!95119 () Bool)

(assert (=> bs!3729 m!95119))

(assert (=> bs!3729 m!95115))

(declare-fun m!95121 () Bool)

(assert (=> bs!3729 m!95121))

(assert (=> b!88767 d!23633))

(declare-fun d!23635 () Bool)

(assert (=> d!23635 (= (+!119 (+!119 lt!42398 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (+!119 (+!119 lt!42398 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(declare-fun lt!42676 () Unit!2654)

(assert (=> d!23635 (= lt!42676 (choose!534 lt!42398 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))

(assert (=> d!23635 (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23635 (= (addCommutativeForDiffKeys!38 lt!42398 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) lt!42676)))

(declare-fun bs!3730 () Bool)

(assert (= bs!3730 d!23635))

(declare-fun m!95123 () Bool)

(assert (=> bs!3730 m!95123))

(declare-fun m!95125 () Bool)

(assert (=> bs!3730 m!95125))

(assert (=> bs!3730 m!94805))

(declare-fun m!95127 () Bool)

(assert (=> bs!3730 m!95127))

(assert (=> bs!3730 m!95123))

(declare-fun m!95129 () Bool)

(assert (=> bs!3730 m!95129))

(assert (=> bs!3730 m!95125))

(declare-fun m!95131 () Bool)

(assert (=> bs!3730 m!95131))

(assert (=> b!88767 d!23635))

(declare-fun d!23637 () Bool)

(declare-fun e!58036 () Bool)

(assert (=> d!23637 e!58036))

(declare-fun res!45564 () Bool)

(assert (=> d!23637 (=> (not res!45564) (not e!58036))))

(declare-fun lt!42679 () ListLongMap!1493)

(assert (=> d!23637 (= res!45564 (contains!769 lt!42679 (_1!1132 lt!42400)))))

(declare-fun lt!42677 () List!1560)

(assert (=> d!23637 (= lt!42679 (ListLongMap!1494 lt!42677))))

(declare-fun lt!42678 () Unit!2654)

(declare-fun lt!42680 () Unit!2654)

(assert (=> d!23637 (= lt!42678 lt!42680)))

(assert (=> d!23637 (= (getValueByKey!141 lt!42677 (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400)))))

(assert (=> d!23637 (= lt!42680 (lemmaContainsTupThenGetReturnValue!60 lt!42677 (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(assert (=> d!23637 (= lt!42677 (insertStrictlySorted!62 (toList!762 lt!42398) (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(assert (=> d!23637 (= (+!119 lt!42398 lt!42400) lt!42679)))

(declare-fun b!89116 () Bool)

(declare-fun res!45565 () Bool)

(assert (=> b!89116 (=> (not res!45565) (not e!58036))))

(assert (=> b!89116 (= res!45565 (= (getValueByKey!141 (toList!762 lt!42679) (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400))))))

(declare-fun b!89117 () Bool)

(assert (=> b!89117 (= e!58036 (contains!771 (toList!762 lt!42679) lt!42400))))

(assert (= (and d!23637 res!45564) b!89116))

(assert (= (and b!89116 res!45565) b!89117))

(declare-fun m!95133 () Bool)

(assert (=> d!23637 m!95133))

(declare-fun m!95135 () Bool)

(assert (=> d!23637 m!95135))

(declare-fun m!95137 () Bool)

(assert (=> d!23637 m!95137))

(declare-fun m!95139 () Bool)

(assert (=> d!23637 m!95139))

(declare-fun m!95141 () Bool)

(assert (=> b!89116 m!95141))

(declare-fun m!95143 () Bool)

(assert (=> b!89117 m!95143))

(assert (=> b!88767 d!23637))

(declare-fun d!23639 () Bool)

(declare-fun e!58037 () Bool)

(assert (=> d!23639 e!58037))

(declare-fun res!45566 () Bool)

(assert (=> d!23639 (=> (not res!45566) (not e!58037))))

(declare-fun lt!42683 () ListLongMap!1493)

(assert (=> d!23639 (= res!45566 (contains!769 lt!42683 (_1!1132 lt!42400)))))

(declare-fun lt!42681 () List!1560)

(assert (=> d!23639 (= lt!42683 (ListLongMap!1494 lt!42681))))

(declare-fun lt!42682 () Unit!2654)

(declare-fun lt!42684 () Unit!2654)

(assert (=> d!23639 (= lt!42682 lt!42684)))

(assert (=> d!23639 (= (getValueByKey!141 lt!42681 (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400)))))

(assert (=> d!23639 (= lt!42684 (lemmaContainsTupThenGetReturnValue!60 lt!42681 (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(assert (=> d!23639 (= lt!42681 (insertStrictlySorted!62 (toList!762 lt!42399) (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(assert (=> d!23639 (= (+!119 lt!42399 lt!42400) lt!42683)))

(declare-fun b!89118 () Bool)

(declare-fun res!45567 () Bool)

(assert (=> b!89118 (=> (not res!45567) (not e!58037))))

(assert (=> b!89118 (= res!45567 (= (getValueByKey!141 (toList!762 lt!42683) (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400))))))

(declare-fun b!89119 () Bool)

(assert (=> b!89119 (= e!58037 (contains!771 (toList!762 lt!42683) lt!42400))))

(assert (= (and d!23639 res!45566) b!89118))

(assert (= (and b!89118 res!45567) b!89119))

(declare-fun m!95145 () Bool)

(assert (=> d!23639 m!95145))

(declare-fun m!95147 () Bool)

(assert (=> d!23639 m!95147))

(declare-fun m!95149 () Bool)

(assert (=> d!23639 m!95149))

(declare-fun m!95151 () Bool)

(assert (=> d!23639 m!95151))

(declare-fun m!95153 () Bool)

(assert (=> b!89118 m!95153))

(declare-fun m!95155 () Bool)

(assert (=> b!89119 m!95155))

(assert (=> b!88767 d!23639))

(declare-fun d!23641 () Bool)

(declare-fun e!58038 () Bool)

(assert (=> d!23641 e!58038))

(declare-fun res!45568 () Bool)

(assert (=> d!23641 (=> (not res!45568) (not e!58038))))

(declare-fun lt!42687 () ListLongMap!1493)

(assert (=> d!23641 (= res!45568 (contains!769 lt!42687 (_1!1132 lt!42413)))))

(declare-fun lt!42685 () List!1560)

(assert (=> d!23641 (= lt!42687 (ListLongMap!1494 lt!42685))))

(declare-fun lt!42686 () Unit!2654)

(declare-fun lt!42688 () Unit!2654)

(assert (=> d!23641 (= lt!42686 lt!42688)))

(assert (=> d!23641 (= (getValueByKey!141 lt!42685 (_1!1132 lt!42413)) (Some!146 (_2!1132 lt!42413)))))

(assert (=> d!23641 (= lt!42688 (lemmaContainsTupThenGetReturnValue!60 lt!42685 (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(assert (=> d!23641 (= lt!42685 (insertStrictlySorted!62 (toList!762 lt!42406) (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(assert (=> d!23641 (= (+!119 lt!42406 lt!42413) lt!42687)))

(declare-fun b!89120 () Bool)

(declare-fun res!45569 () Bool)

(assert (=> b!89120 (=> (not res!45569) (not e!58038))))

(assert (=> b!89120 (= res!45569 (= (getValueByKey!141 (toList!762 lt!42687) (_1!1132 lt!42413)) (Some!146 (_2!1132 lt!42413))))))

(declare-fun b!89121 () Bool)

(assert (=> b!89121 (= e!58038 (contains!771 (toList!762 lt!42687) lt!42413))))

(assert (= (and d!23641 res!45568) b!89120))

(assert (= (and b!89120 res!45569) b!89121))

(declare-fun m!95157 () Bool)

(assert (=> d!23641 m!95157))

(declare-fun m!95159 () Bool)

(assert (=> d!23641 m!95159))

(declare-fun m!95161 () Bool)

(assert (=> d!23641 m!95161))

(declare-fun m!95163 () Bool)

(assert (=> d!23641 m!95163))

(declare-fun m!95165 () Bool)

(assert (=> b!89120 m!95165))

(declare-fun m!95167 () Bool)

(assert (=> b!89121 m!95167))

(assert (=> b!88767 d!23641))

(declare-fun d!23643 () Bool)

(declare-fun e!58039 () Bool)

(assert (=> d!23643 e!58039))

(declare-fun res!45570 () Bool)

(assert (=> d!23643 (=> (not res!45570) (not e!58039))))

(declare-fun lt!42691 () ListLongMap!1493)

(assert (=> d!23643 (= res!45570 (contains!769 lt!42691 (_1!1132 lt!42402)))))

(declare-fun lt!42689 () List!1560)

(assert (=> d!23643 (= lt!42691 (ListLongMap!1494 lt!42689))))

(declare-fun lt!42690 () Unit!2654)

(declare-fun lt!42692 () Unit!2654)

(assert (=> d!23643 (= lt!42690 lt!42692)))

(assert (=> d!23643 (= (getValueByKey!141 lt!42689 (_1!1132 lt!42402)) (Some!146 (_2!1132 lt!42402)))))

(assert (=> d!23643 (= lt!42692 (lemmaContainsTupThenGetReturnValue!60 lt!42689 (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(assert (=> d!23643 (= lt!42689 (insertStrictlySorted!62 (toList!762 lt!42399) (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(assert (=> d!23643 (= (+!119 lt!42399 lt!42402) lt!42691)))

(declare-fun b!89122 () Bool)

(declare-fun res!45571 () Bool)

(assert (=> b!89122 (=> (not res!45571) (not e!58039))))

(assert (=> b!89122 (= res!45571 (= (getValueByKey!141 (toList!762 lt!42691) (_1!1132 lt!42402)) (Some!146 (_2!1132 lt!42402))))))

(declare-fun b!89123 () Bool)

(assert (=> b!89123 (= e!58039 (contains!771 (toList!762 lt!42691) lt!42402))))

(assert (= (and d!23643 res!45570) b!89122))

(assert (= (and b!89122 res!45571) b!89123))

(declare-fun m!95169 () Bool)

(assert (=> d!23643 m!95169))

(declare-fun m!95171 () Bool)

(assert (=> d!23643 m!95171))

(declare-fun m!95173 () Bool)

(assert (=> d!23643 m!95173))

(declare-fun m!95175 () Bool)

(assert (=> d!23643 m!95175))

(declare-fun m!95177 () Bool)

(assert (=> b!89122 m!95177))

(declare-fun m!95179 () Bool)

(assert (=> b!89123 m!95179))

(assert (=> b!88767 d!23643))

(declare-fun d!23645 () Bool)

(assert (=> d!23645 (= (validMask!0 (mask!6416 (v!2676 (underlying!298 thiss!992)))) (and (or (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000001111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000011111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000001111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000011111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000001111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000011111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000001111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000011111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000000111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000001111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000011111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000000111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000001111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000011111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000000111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000001111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000011111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000000111111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000001111111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000011111111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00000111111111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00001111111111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00011111111111111111111111111111) (= (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6416 (v!2676 (underlying!298 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!88767 d!23645))

(declare-fun d!23647 () Bool)

(declare-fun e!58040 () Bool)

(assert (=> d!23647 e!58040))

(declare-fun res!45572 () Bool)

(assert (=> d!23647 (=> (not res!45572) (not e!58040))))

(declare-fun lt!42695 () ListLongMap!1493)

(assert (=> d!23647 (= res!45572 (contains!769 lt!42695 (_1!1132 lt!42413)))))

(declare-fun lt!42693 () List!1560)

(assert (=> d!23647 (= lt!42695 (ListLongMap!1494 lt!42693))))

(declare-fun lt!42694 () Unit!2654)

(declare-fun lt!42696 () Unit!2654)

(assert (=> d!23647 (= lt!42694 lt!42696)))

(assert (=> d!23647 (= (getValueByKey!141 lt!42693 (_1!1132 lt!42413)) (Some!146 (_2!1132 lt!42413)))))

(assert (=> d!23647 (= lt!42696 (lemmaContainsTupThenGetReturnValue!60 lt!42693 (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(assert (=> d!23647 (= lt!42693 (insertStrictlySorted!62 (toList!762 lt!42398) (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(assert (=> d!23647 (= (+!119 lt!42398 lt!42413) lt!42695)))

(declare-fun b!89124 () Bool)

(declare-fun res!45573 () Bool)

(assert (=> b!89124 (=> (not res!45573) (not e!58040))))

(assert (=> b!89124 (= res!45573 (= (getValueByKey!141 (toList!762 lt!42695) (_1!1132 lt!42413)) (Some!146 (_2!1132 lt!42413))))))

(declare-fun b!89125 () Bool)

(assert (=> b!89125 (= e!58040 (contains!771 (toList!762 lt!42695) lt!42413))))

(assert (= (and d!23647 res!45572) b!89124))

(assert (= (and b!89124 res!45573) b!89125))

(declare-fun m!95181 () Bool)

(assert (=> d!23647 m!95181))

(declare-fun m!95183 () Bool)

(assert (=> d!23647 m!95183))

(declare-fun m!95185 () Bool)

(assert (=> d!23647 m!95185))

(declare-fun m!95187 () Bool)

(assert (=> d!23647 m!95187))

(declare-fun m!95189 () Bool)

(assert (=> b!89124 m!95189))

(declare-fun m!95191 () Bool)

(assert (=> b!89125 m!95191))

(assert (=> b!88767 d!23647))

(declare-fun d!23649 () Bool)

(assert (=> d!23649 (not (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!42699 () Unit!2654)

(declare-fun choose!68 (array!4056 (_ BitVec 32) (_ BitVec 64) List!1559) Unit!2654)

(assert (=> d!23649 (= lt!42699 (choose!68 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556)))))

(assert (=> d!23649 (bvslt (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23649 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556)) lt!42699)))

(declare-fun bs!3731 () Bool)

(assert (= bs!3731 d!23649))

(assert (=> bs!3731 m!94805))

(assert (=> bs!3731 m!94809))

(assert (=> bs!3731 m!94805))

(declare-fun m!95193 () Bool)

(assert (=> bs!3731 m!95193))

(assert (=> b!88762 d!23649))

(declare-fun d!23651 () Bool)

(assert (=> d!23651 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) from!355 Nil!1556)))

(declare-fun lt!42702 () Unit!2654)

(declare-fun choose!39 (array!4056 (_ BitVec 32) (_ BitVec 32)) Unit!2654)

(assert (=> d!23651 (= lt!42702 (choose!39 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!23651 (bvslt (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23651 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 from!355) lt!42702)))

(declare-fun bs!3732 () Bool)

(assert (= bs!3732 d!23651))

(assert (=> bs!3732 m!94803))

(declare-fun m!95195 () Bool)

(assert (=> bs!3732 m!95195))

(assert (=> b!88762 d!23651))

(declare-fun d!23653 () Bool)

(declare-fun res!45578 () Bool)

(declare-fun e!58045 () Bool)

(assert (=> d!23653 (=> res!45578 e!58045)))

(assert (=> d!23653 (= res!45578 (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> d!23653 (= (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!58045)))

(declare-fun b!89130 () Bool)

(declare-fun e!58046 () Bool)

(assert (=> b!89130 (= e!58045 e!58046)))

(declare-fun res!45579 () Bool)

(assert (=> b!89130 (=> (not res!45579) (not e!58046))))

(assert (=> b!89130 (= res!45579 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!89131 () Bool)

(assert (=> b!89131 (= e!58046 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!23653 (not res!45578)) b!89130))

(assert (= (and b!89130 res!45579) b!89131))

(assert (=> d!23653 m!94949))

(assert (=> b!89131 m!94805))

(declare-fun m!95197 () Bool)

(assert (=> b!89131 m!95197))

(assert (=> b!88762 d!23653))

(declare-fun d!23655 () Bool)

(declare-fun e!58049 () Bool)

(assert (=> d!23655 e!58049))

(declare-fun c!14794 () Bool)

(assert (=> d!23655 (= c!14794 (and (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!42705 () Unit!2654)

(declare-fun choose!535 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 64) (_ BitVec 32) Int) Unit!2654)

(assert (=> d!23655 (= lt!42705 (choose!535 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(assert (=> d!23655 (validMask!0 (mask!6416 (v!2676 (underlying!298 thiss!992))))))

(assert (=> d!23655 (= (lemmaListMapContainsThenArrayContainsFrom!76 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))) lt!42705)))

(declare-fun b!89136 () Bool)

(assert (=> b!89136 (= e!58049 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!89137 () Bool)

(assert (=> b!89137 (= e!58049 (ite (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!23655 c!14794) b!89136))

(assert (= (and d!23655 (not c!14794)) b!89137))

(assert (=> d!23655 m!94805))

(declare-fun m!95199 () Bool)

(assert (=> d!23655 m!95199))

(assert (=> d!23655 m!94821))

(assert (=> b!89136 m!94805))

(assert (=> b!89136 m!94809))

(assert (=> b!88762 d!23655))

(declare-fun b!89138 () Bool)

(declare-fun e!58050 () Bool)

(declare-fun e!58051 () Bool)

(assert (=> b!89138 (= e!58050 e!58051)))

(declare-fun c!14795 () Bool)

(assert (=> b!89138 (= c!14795 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89139 () Bool)

(declare-fun call!8639 () Bool)

(assert (=> b!89139 (= e!58051 call!8639)))

(declare-fun d!23657 () Bool)

(declare-fun res!45582 () Bool)

(declare-fun e!58053 () Bool)

(assert (=> d!23657 (=> res!45582 e!58053)))

(assert (=> d!23657 (= res!45582 (bvsge from!355 (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23657 (= (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) from!355 Nil!1556) e!58053)))

(declare-fun b!89140 () Bool)

(assert (=> b!89140 (= e!58053 e!58050)))

(declare-fun res!45580 () Bool)

(assert (=> b!89140 (=> (not res!45580) (not e!58050))))

(declare-fun e!58052 () Bool)

(assert (=> b!89140 (= res!45580 (not e!58052))))

(declare-fun res!45581 () Bool)

(assert (=> b!89140 (=> (not res!45581) (not e!58052))))

(assert (=> b!89140 (= res!45581 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun bm!8636 () Bool)

(assert (=> bm!8636 (= call!8639 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!14795 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556) Nil!1556)))))

(declare-fun b!89141 () Bool)

(assert (=> b!89141 (= e!58052 (contains!770 Nil!1556 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89142 () Bool)

(assert (=> b!89142 (= e!58051 call!8639)))

(assert (= (and d!23657 (not res!45582)) b!89140))

(assert (= (and b!89140 res!45581) b!89141))

(assert (= (and b!89140 res!45580) b!89138))

(assert (= (and b!89138 c!14795) b!89139))

(assert (= (and b!89138 (not c!14795)) b!89142))

(assert (= (or b!89139 b!89142) bm!8636))

(assert (=> b!89138 m!94805))

(assert (=> b!89138 m!94805))

(declare-fun m!95201 () Bool)

(assert (=> b!89138 m!95201))

(assert (=> b!89140 m!94805))

(assert (=> b!89140 m!94805))

(assert (=> b!89140 m!95201))

(assert (=> bm!8636 m!94805))

(declare-fun m!95203 () Bool)

(assert (=> bm!8636 m!95203))

(assert (=> b!89141 m!94805))

(assert (=> b!89141 m!94805))

(declare-fun m!95205 () Bool)

(assert (=> b!89141 m!95205))

(assert (=> b!88762 d!23657))

(declare-fun d!23659 () Bool)

(declare-fun res!45589 () Bool)

(declare-fun e!58056 () Bool)

(assert (=> d!23659 (=> (not res!45589) (not e!58056))))

(declare-fun simpleValid!59 (LongMapFixedSize!768) Bool)

(assert (=> d!23659 (= res!45589 (simpleValid!59 newMap!16))))

(assert (=> d!23659 (= (valid!335 newMap!16) e!58056)))

(declare-fun b!89149 () Bool)

(declare-fun res!45590 () Bool)

(assert (=> b!89149 (=> (not res!45590) (not e!58056))))

(declare-fun arrayCountValidKeys!0 (array!4056 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!89149 (= res!45590 (= (arrayCountValidKeys!0 (_keys!4050 newMap!16) #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) (_size!433 newMap!16)))))

(declare-fun b!89150 () Bool)

(declare-fun res!45591 () Bool)

(assert (=> b!89150 (=> (not res!45591) (not e!58056))))

(assert (=> b!89150 (= res!45591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(declare-fun b!89151 () Bool)

(assert (=> b!89151 (= e!58056 (arrayNoDuplicates!0 (_keys!4050 newMap!16) #b00000000000000000000000000000000 Nil!1556))))

(assert (= (and d!23659 res!45589) b!89149))

(assert (= (and b!89149 res!45590) b!89150))

(assert (= (and b!89150 res!45591) b!89151))

(declare-fun m!95207 () Bool)

(assert (=> d!23659 m!95207))

(declare-fun m!95209 () Bool)

(assert (=> b!89149 m!95209))

(declare-fun m!95211 () Bool)

(assert (=> b!89150 m!95211))

(declare-fun m!95213 () Bool)

(assert (=> b!89151 m!95213))

(assert (=> b!88760 d!23659))

(declare-fun mapNonEmpty!3459 () Bool)

(declare-fun mapRes!3459 () Bool)

(declare-fun tp!9039 () Bool)

(declare-fun e!58062 () Bool)

(assert (=> mapNonEmpty!3459 (= mapRes!3459 (and tp!9039 e!58062))))

(declare-fun mapValue!3459 () ValueCell!930)

(declare-fun mapKey!3459 () (_ BitVec 32))

(declare-fun mapRest!3459 () (Array (_ BitVec 32) ValueCell!930))

(assert (=> mapNonEmpty!3459 (= mapRest!3449 (store mapRest!3459 mapKey!3459 mapValue!3459))))

(declare-fun mapIsEmpty!3459 () Bool)

(assert (=> mapIsEmpty!3459 mapRes!3459))

(declare-fun b!89158 () Bool)

(assert (=> b!89158 (= e!58062 tp_is_empty!2547)))

(declare-fun condMapEmpty!3459 () Bool)

(declare-fun mapDefault!3459 () ValueCell!930)

(assert (=> mapNonEmpty!3449 (= condMapEmpty!3459 (= mapRest!3449 ((as const (Array (_ BitVec 32) ValueCell!930)) mapDefault!3459)))))

(declare-fun e!58061 () Bool)

(assert (=> mapNonEmpty!3449 (= tp!9021 (and e!58061 mapRes!3459))))

(declare-fun b!89159 () Bool)

(assert (=> b!89159 (= e!58061 tp_is_empty!2547)))

(assert (= (and mapNonEmpty!3449 condMapEmpty!3459) mapIsEmpty!3459))

(assert (= (and mapNonEmpty!3449 (not condMapEmpty!3459)) mapNonEmpty!3459))

(assert (= (and mapNonEmpty!3459 ((_ is ValueCellFull!930) mapValue!3459)) b!89158))

(assert (= (and mapNonEmpty!3449 ((_ is ValueCellFull!930) mapDefault!3459)) b!89159))

(declare-fun m!95215 () Bool)

(assert (=> mapNonEmpty!3459 m!95215))

(declare-fun mapNonEmpty!3460 () Bool)

(declare-fun mapRes!3460 () Bool)

(declare-fun tp!9040 () Bool)

(declare-fun e!58064 () Bool)

(assert (=> mapNonEmpty!3460 (= mapRes!3460 (and tp!9040 e!58064))))

(declare-fun mapRest!3460 () (Array (_ BitVec 32) ValueCell!930))

(declare-fun mapValue!3460 () ValueCell!930)

(declare-fun mapKey!3460 () (_ BitVec 32))

(assert (=> mapNonEmpty!3460 (= mapRest!3450 (store mapRest!3460 mapKey!3460 mapValue!3460))))

(declare-fun mapIsEmpty!3460 () Bool)

(assert (=> mapIsEmpty!3460 mapRes!3460))

(declare-fun b!89160 () Bool)

(assert (=> b!89160 (= e!58064 tp_is_empty!2547)))

(declare-fun condMapEmpty!3460 () Bool)

(declare-fun mapDefault!3460 () ValueCell!930)

(assert (=> mapNonEmpty!3450 (= condMapEmpty!3460 (= mapRest!3450 ((as const (Array (_ BitVec 32) ValueCell!930)) mapDefault!3460)))))

(declare-fun e!58063 () Bool)

(assert (=> mapNonEmpty!3450 (= tp!9023 (and e!58063 mapRes!3460))))

(declare-fun b!89161 () Bool)

(assert (=> b!89161 (= e!58063 tp_is_empty!2547)))

(assert (= (and mapNonEmpty!3450 condMapEmpty!3460) mapIsEmpty!3460))

(assert (= (and mapNonEmpty!3450 (not condMapEmpty!3460)) mapNonEmpty!3460))

(assert (= (and mapNonEmpty!3460 ((_ is ValueCellFull!930) mapValue!3460)) b!89160))

(assert (= (and mapNonEmpty!3450 ((_ is ValueCellFull!930) mapDefault!3460)) b!89161))

(declare-fun m!95217 () Bool)

(assert (=> mapNonEmpty!3460 m!95217))

(declare-fun b_lambda!3945 () Bool)

(assert (= b_lambda!3943 (or (and b!88775 b_free!2261) (and b!88759 b_free!2263 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))) b_lambda!3945)))

(declare-fun b_lambda!3947 () Bool)

(assert (= b_lambda!3939 (or (and b!88775 b_free!2261) (and b!88759 b_free!2263 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))) b_lambda!3947)))

(declare-fun b_lambda!3949 () Bool)

(assert (= b_lambda!3941 (or (and b!88775 b_free!2261) (and b!88759 b_free!2263 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))) b_lambda!3949)))

(check-sat (not bm!8636) (not b!89125) (not bm!8612) (not d!23613) (not bm!8554) (not d!23631) (not b!89113) tp_is_empty!2547 (not b!89034) (not b!89141) (not d!23627) (not bm!8557) b_and!5353 (not bm!8559) (not bm!8620) (not bm!8628) (not b!88859) (not b_lambda!3945) (not b!89103) (not b!89118) (not d!23635) (not b!88941) (not bm!8630) (not bm!8621) (not b!89124) (not b!89054) (not b!88926) (not d!23651) (not d!23633) (not bm!8624) (not b!89123) (not b!89058) (not d!23643) (not b!89106) b_and!5355 (not b!89131) (not b!88871) (not b!89140) (not bm!8617) (not b!89122) (not b!89136) (not b!89119) (not bm!8635) (not d!23637) (not mapNonEmpty!3460) (not b!89100) (not bm!8631) (not b!88942) (not b!89048) (not b!88860) (not d!23615) (not bm!8619) (not b!89120) (not b!89036) (not bm!8615) (not b!89112) (not mapNonEmpty!3459) (not b!89149) (not b_lambda!3949) (not d!23625) (not d!23629) (not b!88951) (not b_next!2263) (not b_next!2261) (not bm!8536) (not d!23607) (not b!88923) (not b_lambda!3937) (not bm!8627) (not b!88949) (not b!89056) (not d!23623) (not b!89117) (not b!89097) (not b!89151) (not b!89150) (not b!89098) (not b!89101) (not b!89121) (not b!88919) (not b_lambda!3947) (not d!23659) (not d!23647) (not bm!8632) (not b!89138) (not d!23639) (not b!88922) (not bm!8558) (not d!23649) (not b!89115) (not b!88928) (not b!89044) (not b!88857) (not b!88917) (not b!88918) (not b!89096) (not b!89116) (not b!89114) (not b!88873) (not b!88925) (not d!23641) (not d!23655) (not b!89107) (not bm!8539))
(check-sat b_and!5353 b_and!5355 (not b_next!2261) (not b_next!2263))
(get-model)

(declare-fun d!23661 () Bool)

(declare-fun e!58065 () Bool)

(assert (=> d!23661 e!58065))

(declare-fun res!45592 () Bool)

(assert (=> d!23661 (=> res!45592 e!58065)))

(declare-fun lt!42709 () Bool)

(assert (=> d!23661 (= res!45592 (not lt!42709))))

(declare-fun lt!42708 () Bool)

(assert (=> d!23661 (= lt!42709 lt!42708)))

(declare-fun lt!42707 () Unit!2654)

(declare-fun e!58066 () Unit!2654)

(assert (=> d!23661 (= lt!42707 e!58066)))

(declare-fun c!14796 () Bool)

(assert (=> d!23661 (= c!14796 lt!42708)))

(assert (=> d!23661 (= lt!42708 (containsKey!145 (toList!762 lt!42691) (_1!1132 lt!42402)))))

(assert (=> d!23661 (= (contains!769 lt!42691 (_1!1132 lt!42402)) lt!42709)))

(declare-fun b!89162 () Bool)

(declare-fun lt!42706 () Unit!2654)

(assert (=> b!89162 (= e!58066 lt!42706)))

(assert (=> b!89162 (= lt!42706 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42691) (_1!1132 lt!42402)))))

(assert (=> b!89162 (isDefined!95 (getValueByKey!141 (toList!762 lt!42691) (_1!1132 lt!42402)))))

(declare-fun b!89163 () Bool)

(declare-fun Unit!2662 () Unit!2654)

(assert (=> b!89163 (= e!58066 Unit!2662)))

(declare-fun b!89164 () Bool)

(assert (=> b!89164 (= e!58065 (isDefined!95 (getValueByKey!141 (toList!762 lt!42691) (_1!1132 lt!42402))))))

(assert (= (and d!23661 c!14796) b!89162))

(assert (= (and d!23661 (not c!14796)) b!89163))

(assert (= (and d!23661 (not res!45592)) b!89164))

(declare-fun m!95219 () Bool)

(assert (=> d!23661 m!95219))

(declare-fun m!95221 () Bool)

(assert (=> b!89162 m!95221))

(assert (=> b!89162 m!95177))

(assert (=> b!89162 m!95177))

(declare-fun m!95223 () Bool)

(assert (=> b!89162 m!95223))

(assert (=> b!89164 m!95177))

(assert (=> b!89164 m!95177))

(assert (=> b!89164 m!95223))

(assert (=> d!23643 d!23661))

(declare-fun d!23663 () Bool)

(declare-fun c!14801 () Bool)

(assert (=> d!23663 (= c!14801 (and ((_ is Cons!1556) lt!42689) (= (_1!1132 (h!2148 lt!42689)) (_1!1132 lt!42402))))))

(declare-fun e!58071 () Option!147)

(assert (=> d!23663 (= (getValueByKey!141 lt!42689 (_1!1132 lt!42402)) e!58071)))

(declare-fun b!89175 () Bool)

(declare-fun e!58072 () Option!147)

(assert (=> b!89175 (= e!58072 (getValueByKey!141 (t!5322 lt!42689) (_1!1132 lt!42402)))))

(declare-fun b!89173 () Bool)

(assert (=> b!89173 (= e!58071 (Some!146 (_2!1132 (h!2148 lt!42689))))))

(declare-fun b!89174 () Bool)

(assert (=> b!89174 (= e!58071 e!58072)))

(declare-fun c!14802 () Bool)

(assert (=> b!89174 (= c!14802 (and ((_ is Cons!1556) lt!42689) (not (= (_1!1132 (h!2148 lt!42689)) (_1!1132 lt!42402)))))))

(declare-fun b!89176 () Bool)

(assert (=> b!89176 (= e!58072 None!145)))

(assert (= (and d!23663 c!14801) b!89173))

(assert (= (and d!23663 (not c!14801)) b!89174))

(assert (= (and b!89174 c!14802) b!89175))

(assert (= (and b!89174 (not c!14802)) b!89176))

(declare-fun m!95225 () Bool)

(assert (=> b!89175 m!95225))

(assert (=> d!23643 d!23663))

(declare-fun d!23665 () Bool)

(assert (=> d!23665 (= (getValueByKey!141 lt!42689 (_1!1132 lt!42402)) (Some!146 (_2!1132 lt!42402)))))

(declare-fun lt!42712 () Unit!2654)

(declare-fun choose!536 (List!1560 (_ BitVec 64) V!3043) Unit!2654)

(assert (=> d!23665 (= lt!42712 (choose!536 lt!42689 (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(declare-fun e!58075 () Bool)

(assert (=> d!23665 e!58075))

(declare-fun res!45597 () Bool)

(assert (=> d!23665 (=> (not res!45597) (not e!58075))))

(declare-fun isStrictlySorted!295 (List!1560) Bool)

(assert (=> d!23665 (= res!45597 (isStrictlySorted!295 lt!42689))))

(assert (=> d!23665 (= (lemmaContainsTupThenGetReturnValue!60 lt!42689 (_1!1132 lt!42402) (_2!1132 lt!42402)) lt!42712)))

(declare-fun b!89181 () Bool)

(declare-fun res!45598 () Bool)

(assert (=> b!89181 (=> (not res!45598) (not e!58075))))

(assert (=> b!89181 (= res!45598 (containsKey!145 lt!42689 (_1!1132 lt!42402)))))

(declare-fun b!89182 () Bool)

(assert (=> b!89182 (= e!58075 (contains!771 lt!42689 (tuple2!2245 (_1!1132 lt!42402) (_2!1132 lt!42402))))))

(assert (= (and d!23665 res!45597) b!89181))

(assert (= (and b!89181 res!45598) b!89182))

(assert (=> d!23665 m!95171))

(declare-fun m!95227 () Bool)

(assert (=> d!23665 m!95227))

(declare-fun m!95229 () Bool)

(assert (=> d!23665 m!95229))

(declare-fun m!95231 () Bool)

(assert (=> b!89181 m!95231))

(declare-fun m!95233 () Bool)

(assert (=> b!89182 m!95233))

(assert (=> d!23643 d!23665))

(declare-fun bm!8643 () Bool)

(declare-fun call!8648 () List!1560)

(declare-fun call!8647 () List!1560)

(assert (=> bm!8643 (= call!8648 call!8647)))

(declare-fun b!89203 () Bool)

(declare-fun e!58087 () List!1560)

(declare-fun call!8646 () List!1560)

(assert (=> b!89203 (= e!58087 call!8646)))

(declare-fun b!89204 () Bool)

(declare-fun c!14812 () Bool)

(assert (=> b!89204 (= c!14812 (and ((_ is Cons!1556) (toList!762 lt!42399)) (bvsgt (_1!1132 (h!2148 (toList!762 lt!42399))) (_1!1132 lt!42402))))))

(declare-fun e!58086 () List!1560)

(assert (=> b!89204 (= e!58086 e!58087)))

(declare-fun b!89205 () Bool)

(assert (=> b!89205 (= e!58087 call!8646)))

(declare-fun bm!8644 () Bool)

(assert (=> bm!8644 (= call!8646 call!8648)))

(declare-fun bm!8645 () Bool)

(declare-fun e!58088 () List!1560)

(declare-fun c!14814 () Bool)

(declare-fun $colon$colon!73 (List!1560 tuple2!2244) List!1560)

(assert (=> bm!8645 (= call!8647 ($colon$colon!73 e!58088 (ite c!14814 (h!2148 (toList!762 lt!42399)) (tuple2!2245 (_1!1132 lt!42402) (_2!1132 lt!42402)))))))

(declare-fun c!14811 () Bool)

(assert (=> bm!8645 (= c!14811 c!14814)))

(declare-fun b!89207 () Bool)

(declare-fun res!45604 () Bool)

(declare-fun e!58089 () Bool)

(assert (=> b!89207 (=> (not res!45604) (not e!58089))))

(declare-fun lt!42715 () List!1560)

(assert (=> b!89207 (= res!45604 (containsKey!145 lt!42715 (_1!1132 lt!42402)))))

(declare-fun b!89208 () Bool)

(assert (=> b!89208 (= e!58088 (insertStrictlySorted!62 (t!5322 (toList!762 lt!42399)) (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(declare-fun b!89209 () Bool)

(declare-fun e!58090 () List!1560)

(assert (=> b!89209 (= e!58090 e!58086)))

(declare-fun c!14813 () Bool)

(assert (=> b!89209 (= c!14813 (and ((_ is Cons!1556) (toList!762 lt!42399)) (= (_1!1132 (h!2148 (toList!762 lt!42399))) (_1!1132 lt!42402))))))

(declare-fun b!89210 () Bool)

(assert (=> b!89210 (= e!58088 (ite c!14813 (t!5322 (toList!762 lt!42399)) (ite c!14812 (Cons!1556 (h!2148 (toList!762 lt!42399)) (t!5322 (toList!762 lt!42399))) Nil!1557)))))

(declare-fun b!89211 () Bool)

(assert (=> b!89211 (= e!58086 call!8648)))

(declare-fun b!89212 () Bool)

(assert (=> b!89212 (= e!58089 (contains!771 lt!42715 (tuple2!2245 (_1!1132 lt!42402) (_2!1132 lt!42402))))))

(declare-fun d!23667 () Bool)

(assert (=> d!23667 e!58089))

(declare-fun res!45603 () Bool)

(assert (=> d!23667 (=> (not res!45603) (not e!58089))))

(assert (=> d!23667 (= res!45603 (isStrictlySorted!295 lt!42715))))

(assert (=> d!23667 (= lt!42715 e!58090)))

(assert (=> d!23667 (= c!14814 (and ((_ is Cons!1556) (toList!762 lt!42399)) (bvslt (_1!1132 (h!2148 (toList!762 lt!42399))) (_1!1132 lt!42402))))))

(assert (=> d!23667 (isStrictlySorted!295 (toList!762 lt!42399))))

(assert (=> d!23667 (= (insertStrictlySorted!62 (toList!762 lt!42399) (_1!1132 lt!42402) (_2!1132 lt!42402)) lt!42715)))

(declare-fun b!89206 () Bool)

(assert (=> b!89206 (= e!58090 call!8647)))

(assert (= (and d!23667 c!14814) b!89206))

(assert (= (and d!23667 (not c!14814)) b!89209))

(assert (= (and b!89209 c!14813) b!89211))

(assert (= (and b!89209 (not c!14813)) b!89204))

(assert (= (and b!89204 c!14812) b!89203))

(assert (= (and b!89204 (not c!14812)) b!89205))

(assert (= (or b!89203 b!89205) bm!8644))

(assert (= (or b!89211 bm!8644) bm!8643))

(assert (= (or b!89206 bm!8643) bm!8645))

(assert (= (and bm!8645 c!14811) b!89208))

(assert (= (and bm!8645 (not c!14811)) b!89210))

(assert (= (and d!23667 res!45603) b!89207))

(assert (= (and b!89207 res!45604) b!89212))

(declare-fun m!95235 () Bool)

(assert (=> b!89208 m!95235))

(declare-fun m!95237 () Bool)

(assert (=> b!89212 m!95237))

(declare-fun m!95239 () Bool)

(assert (=> b!89207 m!95239))

(declare-fun m!95241 () Bool)

(assert (=> d!23667 m!95241))

(declare-fun m!95243 () Bool)

(assert (=> d!23667 m!95243))

(declare-fun m!95245 () Bool)

(assert (=> bm!8645 m!95245))

(assert (=> d!23643 d!23667))

(declare-fun d!23669 () Bool)

(declare-fun e!58091 () Bool)

(assert (=> d!23669 e!58091))

(declare-fun res!45605 () Bool)

(assert (=> d!23669 (=> res!45605 e!58091)))

(declare-fun lt!42719 () Bool)

(assert (=> d!23669 (= res!45605 (not lt!42719))))

(declare-fun lt!42718 () Bool)

(assert (=> d!23669 (= lt!42719 lt!42718)))

(declare-fun lt!42717 () Unit!2654)

(declare-fun e!58092 () Unit!2654)

(assert (=> d!23669 (= lt!42717 e!58092)))

(declare-fun c!14815 () Bool)

(assert (=> d!23669 (= c!14815 lt!42718)))

(assert (=> d!23669 (= lt!42718 (containsKey!145 (toList!762 lt!42652) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!23669 (= (contains!769 lt!42652 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!42719)))

(declare-fun b!89213 () Bool)

(declare-fun lt!42716 () Unit!2654)

(assert (=> b!89213 (= e!58092 lt!42716)))

(assert (=> b!89213 (= lt!42716 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42652) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!89213 (isDefined!95 (getValueByKey!141 (toList!762 lt!42652) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!89214 () Bool)

(declare-fun Unit!2663 () Unit!2654)

(assert (=> b!89214 (= e!58092 Unit!2663)))

(declare-fun b!89215 () Bool)

(assert (=> b!89215 (= e!58091 (isDefined!95 (getValueByKey!141 (toList!762 lt!42652) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!23669 c!14815) b!89213))

(assert (= (and d!23669 (not c!14815)) b!89214))

(assert (= (and d!23669 (not res!45605)) b!89215))

(assert (=> d!23669 m!94949))

(declare-fun m!95247 () Bool)

(assert (=> d!23669 m!95247))

(assert (=> b!89213 m!94949))

(declare-fun m!95249 () Bool)

(assert (=> b!89213 m!95249))

(assert (=> b!89213 m!94949))

(declare-fun m!95251 () Bool)

(assert (=> b!89213 m!95251))

(assert (=> b!89213 m!95251))

(declare-fun m!95253 () Bool)

(assert (=> b!89213 m!95253))

(assert (=> b!89215 m!94949))

(assert (=> b!89215 m!95251))

(assert (=> b!89215 m!95251))

(assert (=> b!89215 m!95253))

(assert (=> b!89101 d!23669))

(declare-fun d!23671 () Bool)

(declare-fun lt!42722 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!92 (List!1559) (InoxSet (_ BitVec 64)))

(assert (=> d!23671 (= lt!42722 (select (content!92 Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun e!58098 () Bool)

(assert (=> d!23671 (= lt!42722 e!58098)))

(declare-fun res!45610 () Bool)

(assert (=> d!23671 (=> (not res!45610) (not e!58098))))

(assert (=> d!23671 (= res!45610 ((_ is Cons!1555) Nil!1556))))

(assert (=> d!23671 (= (contains!770 Nil!1556 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) lt!42722)))

(declare-fun b!89220 () Bool)

(declare-fun e!58097 () Bool)

(assert (=> b!89220 (= e!58098 e!58097)))

(declare-fun res!45611 () Bool)

(assert (=> b!89220 (=> res!45611 e!58097)))

(assert (=> b!89220 (= res!45611 (= (h!2147 Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89221 () Bool)

(assert (=> b!89221 (= e!58097 (contains!770 (t!5321 Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (= (and d!23671 res!45610) b!89220))

(assert (= (and b!89220 (not res!45611)) b!89221))

(declare-fun m!95255 () Bool)

(assert (=> d!23671 m!95255))

(assert (=> d!23671 m!94805))

(declare-fun m!95257 () Bool)

(assert (=> d!23671 m!95257))

(assert (=> b!89221 m!94805))

(declare-fun m!95259 () Bool)

(assert (=> b!89221 m!95259))

(assert (=> b!89141 d!23671))

(declare-fun d!23673 () Bool)

(declare-fun isEmpty!347 (List!1560) Bool)

(assert (=> d!23673 (= (isEmpty!346 lt!42652) (isEmpty!347 (toList!762 lt!42652)))))

(declare-fun bs!3733 () Bool)

(assert (= bs!3733 d!23673))

(declare-fun m!95261 () Bool)

(assert (=> bs!3733 m!95261))

(assert (=> b!89103 d!23673))

(declare-fun d!23675 () Bool)

(declare-fun e!58101 () Bool)

(assert (=> d!23675 e!58101))

(declare-fun res!45616 () Bool)

(assert (=> d!23675 (=> (not res!45616) (not e!58101))))

(declare-fun lt!42727 () SeekEntryResult!255)

(assert (=> d!23675 (= res!45616 ((_ is Found!255) lt!42727))))

(assert (=> d!23675 (= lt!42727 (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(declare-fun lt!42728 () Unit!2654)

(declare-fun choose!537 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 64) Int) Unit!2654)

(assert (=> d!23675 (= lt!42728 (choose!537 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)))))

(assert (=> d!23675 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23675 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)) lt!42728)))

(declare-fun b!89226 () Bool)

(declare-fun res!45617 () Bool)

(assert (=> b!89226 (=> (not res!45617) (not e!58101))))

(assert (=> b!89226 (= res!45617 (inRange!0 (index!3160 lt!42727) (mask!6416 newMap!16)))))

(declare-fun b!89227 () Bool)

(assert (=> b!89227 (= e!58101 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42727)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> b!89227 (and (bvsge (index!3160 lt!42727) #b00000000000000000000000000000000) (bvslt (index!3160 lt!42727) (size!2176 (_keys!4050 newMap!16))))))

(assert (= (and d!23675 res!45616) b!89226))

(assert (= (and b!89226 res!45617) b!89227))

(assert (=> d!23675 m!94805))

(assert (=> d!23675 m!95019))

(assert (=> d!23675 m!94805))

(declare-fun m!95263 () Bool)

(assert (=> d!23675 m!95263))

(declare-fun m!95265 () Bool)

(assert (=> d!23675 m!95265))

(declare-fun m!95267 () Bool)

(assert (=> b!89226 m!95267))

(declare-fun m!95269 () Bool)

(assert (=> b!89227 m!95269))

(assert (=> bm!8615 d!23675))

(assert (=> d!23651 d!23657))

(declare-fun d!23677 () Bool)

(assert (=> d!23677 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) from!355 Nil!1556)))

(assert (=> d!23677 true))

(declare-fun _$71!120 () Unit!2654)

(assert (=> d!23677 (= (choose!39 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!120)))

(declare-fun bs!3734 () Bool)

(assert (= bs!3734 d!23677))

(assert (=> bs!3734 m!94803))

(assert (=> d!23651 d!23677))

(declare-fun d!23679 () Bool)

(declare-fun c!14816 () Bool)

(assert (=> d!23679 (= c!14816 (and ((_ is Cons!1556) (toList!762 lt!42679)) (= (_1!1132 (h!2148 (toList!762 lt!42679))) (_1!1132 lt!42400))))))

(declare-fun e!58102 () Option!147)

(assert (=> d!23679 (= (getValueByKey!141 (toList!762 lt!42679) (_1!1132 lt!42400)) e!58102)))

(declare-fun b!89230 () Bool)

(declare-fun e!58103 () Option!147)

(assert (=> b!89230 (= e!58103 (getValueByKey!141 (t!5322 (toList!762 lt!42679)) (_1!1132 lt!42400)))))

(declare-fun b!89228 () Bool)

(assert (=> b!89228 (= e!58102 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42679)))))))

(declare-fun b!89229 () Bool)

(assert (=> b!89229 (= e!58102 e!58103)))

(declare-fun c!14817 () Bool)

(assert (=> b!89229 (= c!14817 (and ((_ is Cons!1556) (toList!762 lt!42679)) (not (= (_1!1132 (h!2148 (toList!762 lt!42679))) (_1!1132 lt!42400)))))))

(declare-fun b!89231 () Bool)

(assert (=> b!89231 (= e!58103 None!145)))

(assert (= (and d!23679 c!14816) b!89228))

(assert (= (and d!23679 (not c!14816)) b!89229))

(assert (= (and b!89229 c!14817) b!89230))

(assert (= (and b!89229 (not c!14817)) b!89231))

(declare-fun m!95271 () Bool)

(assert (=> b!89230 m!95271))

(assert (=> b!89116 d!23679))

(assert (=> b!89136 d!23653))

(declare-fun d!23681 () Bool)

(declare-fun e!58104 () Bool)

(assert (=> d!23681 e!58104))

(declare-fun res!45618 () Bool)

(assert (=> d!23681 (=> res!45618 e!58104)))

(declare-fun lt!42732 () Bool)

(assert (=> d!23681 (= res!45618 (not lt!42732))))

(declare-fun lt!42731 () Bool)

(assert (=> d!23681 (= lt!42732 lt!42731)))

(declare-fun lt!42730 () Unit!2654)

(declare-fun e!58105 () Unit!2654)

(assert (=> d!23681 (= lt!42730 e!58105)))

(declare-fun c!14818 () Bool)

(assert (=> d!23681 (= c!14818 lt!42731)))

(assert (=> d!23681 (= lt!42731 (containsKey!145 (toList!762 lt!42679) (_1!1132 lt!42400)))))

(assert (=> d!23681 (= (contains!769 lt!42679 (_1!1132 lt!42400)) lt!42732)))

(declare-fun b!89232 () Bool)

(declare-fun lt!42729 () Unit!2654)

(assert (=> b!89232 (= e!58105 lt!42729)))

(assert (=> b!89232 (= lt!42729 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42679) (_1!1132 lt!42400)))))

(assert (=> b!89232 (isDefined!95 (getValueByKey!141 (toList!762 lt!42679) (_1!1132 lt!42400)))))

(declare-fun b!89233 () Bool)

(declare-fun Unit!2664 () Unit!2654)

(assert (=> b!89233 (= e!58105 Unit!2664)))

(declare-fun b!89234 () Bool)

(assert (=> b!89234 (= e!58104 (isDefined!95 (getValueByKey!141 (toList!762 lt!42679) (_1!1132 lt!42400))))))

(assert (= (and d!23681 c!14818) b!89232))

(assert (= (and d!23681 (not c!14818)) b!89233))

(assert (= (and d!23681 (not res!45618)) b!89234))

(declare-fun m!95273 () Bool)

(assert (=> d!23681 m!95273))

(declare-fun m!95275 () Bool)

(assert (=> b!89232 m!95275))

(assert (=> b!89232 m!95141))

(assert (=> b!89232 m!95141))

(declare-fun m!95277 () Bool)

(assert (=> b!89232 m!95277))

(assert (=> b!89234 m!95141))

(assert (=> b!89234 m!95141))

(assert (=> b!89234 m!95277))

(assert (=> d!23637 d!23681))

(declare-fun d!23683 () Bool)

(declare-fun c!14819 () Bool)

(assert (=> d!23683 (= c!14819 (and ((_ is Cons!1556) lt!42677) (= (_1!1132 (h!2148 lt!42677)) (_1!1132 lt!42400))))))

(declare-fun e!58106 () Option!147)

(assert (=> d!23683 (= (getValueByKey!141 lt!42677 (_1!1132 lt!42400)) e!58106)))

(declare-fun b!89237 () Bool)

(declare-fun e!58107 () Option!147)

(assert (=> b!89237 (= e!58107 (getValueByKey!141 (t!5322 lt!42677) (_1!1132 lt!42400)))))

(declare-fun b!89235 () Bool)

(assert (=> b!89235 (= e!58106 (Some!146 (_2!1132 (h!2148 lt!42677))))))

(declare-fun b!89236 () Bool)

(assert (=> b!89236 (= e!58106 e!58107)))

(declare-fun c!14820 () Bool)

(assert (=> b!89236 (= c!14820 (and ((_ is Cons!1556) lt!42677) (not (= (_1!1132 (h!2148 lt!42677)) (_1!1132 lt!42400)))))))

(declare-fun b!89238 () Bool)

(assert (=> b!89238 (= e!58107 None!145)))

(assert (= (and d!23683 c!14819) b!89235))

(assert (= (and d!23683 (not c!14819)) b!89236))

(assert (= (and b!89236 c!14820) b!89237))

(assert (= (and b!89236 (not c!14820)) b!89238))

(declare-fun m!95279 () Bool)

(assert (=> b!89237 m!95279))

(assert (=> d!23637 d!23683))

(declare-fun d!23685 () Bool)

(assert (=> d!23685 (= (getValueByKey!141 lt!42677 (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400)))))

(declare-fun lt!42733 () Unit!2654)

(assert (=> d!23685 (= lt!42733 (choose!536 lt!42677 (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(declare-fun e!58108 () Bool)

(assert (=> d!23685 e!58108))

(declare-fun res!45619 () Bool)

(assert (=> d!23685 (=> (not res!45619) (not e!58108))))

(assert (=> d!23685 (= res!45619 (isStrictlySorted!295 lt!42677))))

(assert (=> d!23685 (= (lemmaContainsTupThenGetReturnValue!60 lt!42677 (_1!1132 lt!42400) (_2!1132 lt!42400)) lt!42733)))

(declare-fun b!89239 () Bool)

(declare-fun res!45620 () Bool)

(assert (=> b!89239 (=> (not res!45620) (not e!58108))))

(assert (=> b!89239 (= res!45620 (containsKey!145 lt!42677 (_1!1132 lt!42400)))))

(declare-fun b!89240 () Bool)

(assert (=> b!89240 (= e!58108 (contains!771 lt!42677 (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400))))))

(assert (= (and d!23685 res!45619) b!89239))

(assert (= (and b!89239 res!45620) b!89240))

(assert (=> d!23685 m!95135))

(declare-fun m!95281 () Bool)

(assert (=> d!23685 m!95281))

(declare-fun m!95283 () Bool)

(assert (=> d!23685 m!95283))

(declare-fun m!95285 () Bool)

(assert (=> b!89239 m!95285))

(declare-fun m!95287 () Bool)

(assert (=> b!89240 m!95287))

(assert (=> d!23637 d!23685))

(declare-fun bm!8646 () Bool)

(declare-fun call!8651 () List!1560)

(declare-fun call!8650 () List!1560)

(assert (=> bm!8646 (= call!8651 call!8650)))

(declare-fun b!89241 () Bool)

(declare-fun e!58110 () List!1560)

(declare-fun call!8649 () List!1560)

(assert (=> b!89241 (= e!58110 call!8649)))

(declare-fun b!89242 () Bool)

(declare-fun c!14822 () Bool)

(assert (=> b!89242 (= c!14822 (and ((_ is Cons!1556) (toList!762 lt!42398)) (bvsgt (_1!1132 (h!2148 (toList!762 lt!42398))) (_1!1132 lt!42400))))))

(declare-fun e!58109 () List!1560)

(assert (=> b!89242 (= e!58109 e!58110)))

(declare-fun b!89243 () Bool)

(assert (=> b!89243 (= e!58110 call!8649)))

(declare-fun bm!8647 () Bool)

(assert (=> bm!8647 (= call!8649 call!8651)))

(declare-fun c!14824 () Bool)

(declare-fun e!58111 () List!1560)

(declare-fun bm!8648 () Bool)

(assert (=> bm!8648 (= call!8650 ($colon$colon!73 e!58111 (ite c!14824 (h!2148 (toList!762 lt!42398)) (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400)))))))

(declare-fun c!14821 () Bool)

(assert (=> bm!8648 (= c!14821 c!14824)))

(declare-fun b!89245 () Bool)

(declare-fun res!45622 () Bool)

(declare-fun e!58112 () Bool)

(assert (=> b!89245 (=> (not res!45622) (not e!58112))))

(declare-fun lt!42734 () List!1560)

(assert (=> b!89245 (= res!45622 (containsKey!145 lt!42734 (_1!1132 lt!42400)))))

(declare-fun b!89246 () Bool)

(assert (=> b!89246 (= e!58111 (insertStrictlySorted!62 (t!5322 (toList!762 lt!42398)) (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(declare-fun b!89247 () Bool)

(declare-fun e!58113 () List!1560)

(assert (=> b!89247 (= e!58113 e!58109)))

(declare-fun c!14823 () Bool)

(assert (=> b!89247 (= c!14823 (and ((_ is Cons!1556) (toList!762 lt!42398)) (= (_1!1132 (h!2148 (toList!762 lt!42398))) (_1!1132 lt!42400))))))

(declare-fun b!89248 () Bool)

(assert (=> b!89248 (= e!58111 (ite c!14823 (t!5322 (toList!762 lt!42398)) (ite c!14822 (Cons!1556 (h!2148 (toList!762 lt!42398)) (t!5322 (toList!762 lt!42398))) Nil!1557)))))

(declare-fun b!89249 () Bool)

(assert (=> b!89249 (= e!58109 call!8651)))

(declare-fun b!89250 () Bool)

(assert (=> b!89250 (= e!58112 (contains!771 lt!42734 (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400))))))

(declare-fun d!23687 () Bool)

(assert (=> d!23687 e!58112))

(declare-fun res!45621 () Bool)

(assert (=> d!23687 (=> (not res!45621) (not e!58112))))

(assert (=> d!23687 (= res!45621 (isStrictlySorted!295 lt!42734))))

(assert (=> d!23687 (= lt!42734 e!58113)))

(assert (=> d!23687 (= c!14824 (and ((_ is Cons!1556) (toList!762 lt!42398)) (bvslt (_1!1132 (h!2148 (toList!762 lt!42398))) (_1!1132 lt!42400))))))

(assert (=> d!23687 (isStrictlySorted!295 (toList!762 lt!42398))))

(assert (=> d!23687 (= (insertStrictlySorted!62 (toList!762 lt!42398) (_1!1132 lt!42400) (_2!1132 lt!42400)) lt!42734)))

(declare-fun b!89244 () Bool)

(assert (=> b!89244 (= e!58113 call!8650)))

(assert (= (and d!23687 c!14824) b!89244))

(assert (= (and d!23687 (not c!14824)) b!89247))

(assert (= (and b!89247 c!14823) b!89249))

(assert (= (and b!89247 (not c!14823)) b!89242))

(assert (= (and b!89242 c!14822) b!89241))

(assert (= (and b!89242 (not c!14822)) b!89243))

(assert (= (or b!89241 b!89243) bm!8647))

(assert (= (or b!89249 bm!8647) bm!8646))

(assert (= (or b!89244 bm!8646) bm!8648))

(assert (= (and bm!8648 c!14821) b!89246))

(assert (= (and bm!8648 (not c!14821)) b!89248))

(assert (= (and d!23687 res!45621) b!89245))

(assert (= (and b!89245 res!45622) b!89250))

(declare-fun m!95289 () Bool)

(assert (=> b!89246 m!95289))

(declare-fun m!95291 () Bool)

(assert (=> b!89250 m!95291))

(declare-fun m!95293 () Bool)

(assert (=> b!89245 m!95293))

(declare-fun m!95295 () Bool)

(assert (=> d!23687 m!95295))

(declare-fun m!95297 () Bool)

(assert (=> d!23687 m!95297))

(declare-fun m!95299 () Bool)

(assert (=> bm!8648 m!95299))

(assert (=> d!23637 d!23687))

(declare-fun d!23689 () Bool)

(declare-fun get!1228 (Option!147) V!3043)

(assert (=> d!23689 (= (apply!84 lt!42530 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1228 (getValueByKey!141 (toList!762 lt!42530) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3735 () Bool)

(assert (= bs!3735 d!23689))

(declare-fun m!95301 () Bool)

(assert (=> bs!3735 m!95301))

(assert (=> bs!3735 m!95301))

(declare-fun m!95303 () Bool)

(assert (=> bs!3735 m!95303))

(assert (=> b!88922 d!23689))

(declare-fun d!23691 () Bool)

(declare-fun res!45623 () Bool)

(declare-fun e!58114 () Bool)

(assert (=> d!23691 (=> res!45623 e!58114)))

(assert (=> d!23691 (= res!45623 (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> d!23691 (= (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!58114)))

(declare-fun b!89251 () Bool)

(declare-fun e!58115 () Bool)

(assert (=> b!89251 (= e!58114 e!58115)))

(declare-fun res!45624 () Bool)

(assert (=> b!89251 (=> (not res!45624) (not e!58115))))

(assert (=> b!89251 (= res!45624 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!89252 () Bool)

(assert (=> b!89252 (= e!58115 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!23691 (not res!45623)) b!89251))

(assert (= (and b!89251 res!45624) b!89252))

(declare-fun m!95305 () Bool)

(assert (=> d!23691 m!95305))

(assert (=> b!89252 m!94805))

(declare-fun m!95307 () Bool)

(assert (=> b!89252 m!95307))

(assert (=> b!89131 d!23691))

(declare-fun d!23693 () Bool)

(declare-fun e!58116 () Bool)

(assert (=> d!23693 e!58116))

(declare-fun res!45625 () Bool)

(assert (=> d!23693 (=> res!45625 e!58116)))

(declare-fun lt!42738 () Bool)

(assert (=> d!23693 (= res!45625 (not lt!42738))))

(declare-fun lt!42737 () Bool)

(assert (=> d!23693 (= lt!42738 lt!42737)))

(declare-fun lt!42736 () Unit!2654)

(declare-fun e!58117 () Unit!2654)

(assert (=> d!23693 (= lt!42736 e!58117)))

(declare-fun c!14825 () Bool)

(assert (=> d!23693 (= c!14825 lt!42737)))

(assert (=> d!23693 (= lt!42737 (containsKey!145 (toList!762 call!8623) (ite c!14771 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42631)))))))

(assert (=> d!23693 (= (contains!769 call!8623 (ite c!14771 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42631)))) lt!42738)))

(declare-fun b!89253 () Bool)

(declare-fun lt!42735 () Unit!2654)

(assert (=> b!89253 (= e!58117 lt!42735)))

(assert (=> b!89253 (= lt!42735 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 call!8623) (ite c!14771 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42631)))))))

(assert (=> b!89253 (isDefined!95 (getValueByKey!141 (toList!762 call!8623) (ite c!14771 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42631)))))))

(declare-fun b!89254 () Bool)

(declare-fun Unit!2665 () Unit!2654)

(assert (=> b!89254 (= e!58117 Unit!2665)))

(declare-fun b!89255 () Bool)

(assert (=> b!89255 (= e!58116 (isDefined!95 (getValueByKey!141 (toList!762 call!8623) (ite c!14771 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42631))))))))

(assert (= (and d!23693 c!14825) b!89253))

(assert (= (and d!23693 (not c!14825)) b!89254))

(assert (= (and d!23693 (not res!45625)) b!89255))

(declare-fun m!95309 () Bool)

(assert (=> d!23693 m!95309))

(declare-fun m!95311 () Bool)

(assert (=> b!89253 m!95311))

(declare-fun m!95313 () Bool)

(assert (=> b!89253 m!95313))

(assert (=> b!89253 m!95313))

(declare-fun m!95315 () Bool)

(assert (=> b!89253 m!95315))

(assert (=> b!89255 m!95313))

(assert (=> b!89255 m!95313))

(assert (=> b!89255 m!95315))

(assert (=> bm!8621 d!23693))

(declare-fun d!23695 () Bool)

(assert (=> d!23695 (= (apply!84 lt!42530 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1228 (getValueByKey!141 (toList!762 lt!42530) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3736 () Bool)

(assert (= bs!3736 d!23695))

(declare-fun m!95317 () Bool)

(assert (=> bs!3736 m!95317))

(assert (=> bs!3736 m!95317))

(declare-fun m!95319 () Bool)

(assert (=> bs!3736 m!95319))

(assert (=> b!88923 d!23695))

(declare-fun d!23697 () Bool)

(assert (=> d!23697 (= (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!89098 d!23697))

(declare-fun d!23699 () Bool)

(assert (=> d!23699 (= (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (and (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!89138 d!23699))

(declare-fun d!23701 () Bool)

(declare-fun res!45626 () Bool)

(declare-fun e!58118 () Bool)

(assert (=> d!23701 (=> (not res!45626) (not e!58118))))

(assert (=> d!23701 (= res!45626 (simpleValid!59 (_2!1133 lt!42617)))))

(assert (=> d!23701 (= (valid!335 (_2!1133 lt!42617)) e!58118)))

(declare-fun b!89256 () Bool)

(declare-fun res!45627 () Bool)

(assert (=> b!89256 (=> (not res!45627) (not e!58118))))

(assert (=> b!89256 (= res!45627 (= (arrayCountValidKeys!0 (_keys!4050 (_2!1133 lt!42617)) #b00000000000000000000000000000000 (size!2176 (_keys!4050 (_2!1133 lt!42617)))) (_size!433 (_2!1133 lt!42617))))))

(declare-fun b!89257 () Bool)

(declare-fun res!45628 () Bool)

(assert (=> b!89257 (=> (not res!45628) (not e!58118))))

(assert (=> b!89257 (= res!45628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4050 (_2!1133 lt!42617)) (mask!6416 (_2!1133 lt!42617))))))

(declare-fun b!89258 () Bool)

(assert (=> b!89258 (= e!58118 (arrayNoDuplicates!0 (_keys!4050 (_2!1133 lt!42617)) #b00000000000000000000000000000000 Nil!1556))))

(assert (= (and d!23701 res!45626) b!89256))

(assert (= (and b!89256 res!45627) b!89257))

(assert (= (and b!89257 res!45628) b!89258))

(declare-fun m!95321 () Bool)

(assert (=> d!23701 m!95321))

(declare-fun m!95323 () Bool)

(assert (=> b!89256 m!95323))

(declare-fun m!95325 () Bool)

(assert (=> b!89257 m!95325))

(declare-fun m!95327 () Bool)

(assert (=> b!89258 m!95327))

(assert (=> d!23625 d!23701))

(assert (=> d!23625 d!23659))

(declare-fun b!89259 () Bool)

(declare-fun res!45632 () Bool)

(declare-fun e!58125 () Bool)

(assert (=> b!89259 (=> (not res!45632) (not e!58125))))

(declare-fun lt!42741 () ListLongMap!1493)

(assert (=> b!89259 (= res!45632 (not (contains!769 lt!42741 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!23703 () Bool)

(assert (=> d!23703 e!58125))

(declare-fun res!45631 () Bool)

(assert (=> d!23703 (=> (not res!45631) (not e!58125))))

(assert (=> d!23703 (= res!45631 (not (contains!769 lt!42741 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!58120 () ListLongMap!1493)

(assert (=> d!23703 (= lt!42741 e!58120)))

(declare-fun c!14826 () Bool)

(assert (=> d!23703 (= c!14826 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23703 (validMask!0 (mask!6416 (v!2676 (underlying!298 thiss!992))))))

(assert (=> d!23703 (= (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))) lt!42741)))

(declare-fun b!89260 () Bool)

(declare-fun lt!42740 () Unit!2654)

(declare-fun lt!42743 () Unit!2654)

(assert (=> b!89260 (= lt!42740 lt!42743)))

(declare-fun lt!42742 () ListLongMap!1493)

(declare-fun lt!42744 () V!3043)

(declare-fun lt!42745 () (_ BitVec 64))

(declare-fun lt!42739 () (_ BitVec 64))

(assert (=> b!89260 (not (contains!769 (+!119 lt!42742 (tuple2!2245 lt!42745 lt!42744)) lt!42739))))

(assert (=> b!89260 (= lt!42743 (addStillNotContains!35 lt!42742 lt!42745 lt!42744 lt!42739))))

(assert (=> b!89260 (= lt!42739 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!89260 (= lt!42744 (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!89260 (= lt!42745 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(declare-fun call!8652 () ListLongMap!1493)

(assert (=> b!89260 (= lt!42742 call!8652)))

(declare-fun e!58121 () ListLongMap!1493)

(assert (=> b!89260 (= e!58121 (+!119 call!8652 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!89261 () Bool)

(assert (=> b!89261 (= e!58120 e!58121)))

(declare-fun c!14827 () Bool)

(assert (=> b!89261 (= c!14827 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!89262 () Bool)

(declare-fun e!58124 () Bool)

(declare-fun e!58123 () Bool)

(assert (=> b!89262 (= e!58124 e!58123)))

(declare-fun c!14829 () Bool)

(assert (=> b!89262 (= c!14829 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun bm!8649 () Bool)

(assert (=> bm!8649 (= call!8652 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!89263 () Bool)

(assert (=> b!89263 (= e!58123 (= lt!42741 (getCurrentListMapNoExtraKeys!83 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!89264 () Bool)

(declare-fun e!58122 () Bool)

(assert (=> b!89264 (= e!58124 e!58122)))

(assert (=> b!89264 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun res!45629 () Bool)

(assert (=> b!89264 (= res!45629 (contains!769 lt!42741 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!89264 (=> (not res!45629) (not e!58122))))

(declare-fun b!89265 () Bool)

(assert (=> b!89265 (= e!58121 call!8652)))

(declare-fun b!89266 () Bool)

(assert (=> b!89266 (= e!58123 (isEmpty!346 lt!42741))))

(declare-fun b!89267 () Bool)

(assert (=> b!89267 (= e!58125 e!58124)))

(declare-fun c!14828 () Bool)

(declare-fun e!58119 () Bool)

(assert (=> b!89267 (= c!14828 e!58119)))

(declare-fun res!45630 () Bool)

(assert (=> b!89267 (=> (not res!45630) (not e!58119))))

(assert (=> b!89267 (= res!45630 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!89268 () Bool)

(assert (=> b!89268 (= e!58120 (ListLongMap!1494 Nil!1557))))

(declare-fun b!89269 () Bool)

(assert (=> b!89269 (= e!58119 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!89269 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!89270 () Bool)

(assert (=> b!89270 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> b!89270 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2177 (_values!2355 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> b!89270 (= e!58122 (= (apply!84 lt!42741 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!23703 c!14826) b!89268))

(assert (= (and d!23703 (not c!14826)) b!89261))

(assert (= (and b!89261 c!14827) b!89260))

(assert (= (and b!89261 (not c!14827)) b!89265))

(assert (= (or b!89260 b!89265) bm!8649))

(assert (= (and d!23703 res!45631) b!89259))

(assert (= (and b!89259 res!45632) b!89267))

(assert (= (and b!89267 res!45630) b!89269))

(assert (= (and b!89267 c!14828) b!89264))

(assert (= (and b!89267 (not c!14828)) b!89262))

(assert (= (and b!89264 res!45629) b!89270))

(assert (= (and b!89262 c!14829) b!89263))

(assert (= (and b!89262 (not c!14829)) b!89266))

(declare-fun b_lambda!3951 () Bool)

(assert (=> (not b_lambda!3951) (not b!89260)))

(assert (=> b!89260 t!5318))

(declare-fun b_and!5357 () Bool)

(assert (= b_and!5353 (and (=> t!5318 result!2969) b_and!5357)))

(assert (=> b!89260 t!5320))

(declare-fun b_and!5359 () Bool)

(assert (= b_and!5355 (and (=> t!5320 result!2973) b_and!5359)))

(declare-fun b_lambda!3953 () Bool)

(assert (=> (not b_lambda!3953) (not b!89270)))

(assert (=> b!89270 t!5318))

(declare-fun b_and!5361 () Bool)

(assert (= b_and!5357 (and (=> t!5318 result!2969) b_and!5361)))

(assert (=> b!89270 t!5320))

(declare-fun b_and!5363 () Bool)

(assert (= b_and!5359 (and (=> t!5320 result!2973) b_and!5363)))

(assert (=> b!89264 m!95305))

(assert (=> b!89264 m!95305))

(declare-fun m!95329 () Bool)

(assert (=> b!89264 m!95329))

(assert (=> b!89269 m!95305))

(assert (=> b!89269 m!95305))

(declare-fun m!95331 () Bool)

(assert (=> b!89269 m!95331))

(declare-fun m!95333 () Bool)

(assert (=> b!89260 m!95333))

(declare-fun m!95335 () Bool)

(assert (=> b!89260 m!95335))

(assert (=> b!89260 m!94845))

(declare-fun m!95337 () Bool)

(assert (=> b!89260 m!95337))

(declare-fun m!95339 () Bool)

(assert (=> b!89260 m!95339))

(assert (=> b!89260 m!95339))

(assert (=> b!89260 m!94845))

(declare-fun m!95341 () Bool)

(assert (=> b!89260 m!95341))

(assert (=> b!89260 m!95333))

(declare-fun m!95343 () Bool)

(assert (=> b!89260 m!95343))

(assert (=> b!89260 m!95305))

(declare-fun m!95345 () Bool)

(assert (=> b!89259 m!95345))

(declare-fun m!95347 () Bool)

(assert (=> bm!8649 m!95347))

(declare-fun m!95349 () Bool)

(assert (=> b!89266 m!95349))

(assert (=> b!89270 m!94845))

(assert (=> b!89270 m!95305))

(assert (=> b!89270 m!95339))

(assert (=> b!89270 m!95339))

(assert (=> b!89270 m!94845))

(assert (=> b!89270 m!95341))

(assert (=> b!89270 m!95305))

(declare-fun m!95351 () Bool)

(assert (=> b!89270 m!95351))

(assert (=> b!89263 m!95347))

(declare-fun m!95353 () Bool)

(assert (=> d!23703 m!95353))

(assert (=> d!23703 m!94821))

(assert (=> b!89261 m!95305))

(assert (=> b!89261 m!95305))

(assert (=> b!89261 m!95331))

(assert (=> bm!8635 d!23703))

(assert (=> b!89140 d!23699))

(declare-fun d!23705 () Bool)

(declare-fun e!58126 () Bool)

(assert (=> d!23705 e!58126))

(declare-fun res!45633 () Bool)

(assert (=> d!23705 (=> res!45633 e!58126)))

(declare-fun lt!42749 () Bool)

(assert (=> d!23705 (= res!45633 (not lt!42749))))

(declare-fun lt!42748 () Bool)

(assert (=> d!23705 (= lt!42749 lt!42748)))

(declare-fun lt!42747 () Unit!2654)

(declare-fun e!58127 () Unit!2654)

(assert (=> d!23705 (= lt!42747 e!58127)))

(declare-fun c!14830 () Bool)

(assert (=> d!23705 (= c!14830 lt!42748)))

(assert (=> d!23705 (= lt!42748 (containsKey!145 (toList!762 lt!42683) (_1!1132 lt!42400)))))

(assert (=> d!23705 (= (contains!769 lt!42683 (_1!1132 lt!42400)) lt!42749)))

(declare-fun b!89271 () Bool)

(declare-fun lt!42746 () Unit!2654)

(assert (=> b!89271 (= e!58127 lt!42746)))

(assert (=> b!89271 (= lt!42746 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42683) (_1!1132 lt!42400)))))

(assert (=> b!89271 (isDefined!95 (getValueByKey!141 (toList!762 lt!42683) (_1!1132 lt!42400)))))

(declare-fun b!89272 () Bool)

(declare-fun Unit!2666 () Unit!2654)

(assert (=> b!89272 (= e!58127 Unit!2666)))

(declare-fun b!89273 () Bool)

(assert (=> b!89273 (= e!58126 (isDefined!95 (getValueByKey!141 (toList!762 lt!42683) (_1!1132 lt!42400))))))

(assert (= (and d!23705 c!14830) b!89271))

(assert (= (and d!23705 (not c!14830)) b!89272))

(assert (= (and d!23705 (not res!45633)) b!89273))

(declare-fun m!95355 () Bool)

(assert (=> d!23705 m!95355))

(declare-fun m!95357 () Bool)

(assert (=> b!89271 m!95357))

(assert (=> b!89271 m!95153))

(assert (=> b!89271 m!95153))

(declare-fun m!95359 () Bool)

(assert (=> b!89271 m!95359))

(assert (=> b!89273 m!95153))

(assert (=> b!89273 m!95153))

(assert (=> b!89273 m!95359))

(assert (=> d!23639 d!23705))

(declare-fun d!23707 () Bool)

(declare-fun c!14831 () Bool)

(assert (=> d!23707 (= c!14831 (and ((_ is Cons!1556) lt!42681) (= (_1!1132 (h!2148 lt!42681)) (_1!1132 lt!42400))))))

(declare-fun e!58128 () Option!147)

(assert (=> d!23707 (= (getValueByKey!141 lt!42681 (_1!1132 lt!42400)) e!58128)))

(declare-fun b!89276 () Bool)

(declare-fun e!58129 () Option!147)

(assert (=> b!89276 (= e!58129 (getValueByKey!141 (t!5322 lt!42681) (_1!1132 lt!42400)))))

(declare-fun b!89274 () Bool)

(assert (=> b!89274 (= e!58128 (Some!146 (_2!1132 (h!2148 lt!42681))))))

(declare-fun b!89275 () Bool)

(assert (=> b!89275 (= e!58128 e!58129)))

(declare-fun c!14832 () Bool)

(assert (=> b!89275 (= c!14832 (and ((_ is Cons!1556) lt!42681) (not (= (_1!1132 (h!2148 lt!42681)) (_1!1132 lt!42400)))))))

(declare-fun b!89277 () Bool)

(assert (=> b!89277 (= e!58129 None!145)))

(assert (= (and d!23707 c!14831) b!89274))

(assert (= (and d!23707 (not c!14831)) b!89275))

(assert (= (and b!89275 c!14832) b!89276))

(assert (= (and b!89275 (not c!14832)) b!89277))

(declare-fun m!95361 () Bool)

(assert (=> b!89276 m!95361))

(assert (=> d!23639 d!23707))

(declare-fun d!23709 () Bool)

(assert (=> d!23709 (= (getValueByKey!141 lt!42681 (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400)))))

(declare-fun lt!42750 () Unit!2654)

(assert (=> d!23709 (= lt!42750 (choose!536 lt!42681 (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(declare-fun e!58130 () Bool)

(assert (=> d!23709 e!58130))

(declare-fun res!45634 () Bool)

(assert (=> d!23709 (=> (not res!45634) (not e!58130))))

(assert (=> d!23709 (= res!45634 (isStrictlySorted!295 lt!42681))))

(assert (=> d!23709 (= (lemmaContainsTupThenGetReturnValue!60 lt!42681 (_1!1132 lt!42400) (_2!1132 lt!42400)) lt!42750)))

(declare-fun b!89278 () Bool)

(declare-fun res!45635 () Bool)

(assert (=> b!89278 (=> (not res!45635) (not e!58130))))

(assert (=> b!89278 (= res!45635 (containsKey!145 lt!42681 (_1!1132 lt!42400)))))

(declare-fun b!89279 () Bool)

(assert (=> b!89279 (= e!58130 (contains!771 lt!42681 (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400))))))

(assert (= (and d!23709 res!45634) b!89278))

(assert (= (and b!89278 res!45635) b!89279))

(assert (=> d!23709 m!95147))

(declare-fun m!95363 () Bool)

(assert (=> d!23709 m!95363))

(declare-fun m!95365 () Bool)

(assert (=> d!23709 m!95365))

(declare-fun m!95367 () Bool)

(assert (=> b!89278 m!95367))

(declare-fun m!95369 () Bool)

(assert (=> b!89279 m!95369))

(assert (=> d!23639 d!23709))

(declare-fun bm!8650 () Bool)

(declare-fun call!8655 () List!1560)

(declare-fun call!8654 () List!1560)

(assert (=> bm!8650 (= call!8655 call!8654)))

(declare-fun b!89280 () Bool)

(declare-fun e!58132 () List!1560)

(declare-fun call!8653 () List!1560)

(assert (=> b!89280 (= e!58132 call!8653)))

(declare-fun b!89281 () Bool)

(declare-fun c!14834 () Bool)

(assert (=> b!89281 (= c!14834 (and ((_ is Cons!1556) (toList!762 lt!42399)) (bvsgt (_1!1132 (h!2148 (toList!762 lt!42399))) (_1!1132 lt!42400))))))

(declare-fun e!58131 () List!1560)

(assert (=> b!89281 (= e!58131 e!58132)))

(declare-fun b!89282 () Bool)

(assert (=> b!89282 (= e!58132 call!8653)))

(declare-fun bm!8651 () Bool)

(assert (=> bm!8651 (= call!8653 call!8655)))

(declare-fun bm!8652 () Bool)

(declare-fun c!14836 () Bool)

(declare-fun e!58133 () List!1560)

(assert (=> bm!8652 (= call!8654 ($colon$colon!73 e!58133 (ite c!14836 (h!2148 (toList!762 lt!42399)) (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400)))))))

(declare-fun c!14833 () Bool)

(assert (=> bm!8652 (= c!14833 c!14836)))

(declare-fun b!89284 () Bool)

(declare-fun res!45637 () Bool)

(declare-fun e!58134 () Bool)

(assert (=> b!89284 (=> (not res!45637) (not e!58134))))

(declare-fun lt!42751 () List!1560)

(assert (=> b!89284 (= res!45637 (containsKey!145 lt!42751 (_1!1132 lt!42400)))))

(declare-fun b!89285 () Bool)

(assert (=> b!89285 (= e!58133 (insertStrictlySorted!62 (t!5322 (toList!762 lt!42399)) (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(declare-fun b!89286 () Bool)

(declare-fun e!58135 () List!1560)

(assert (=> b!89286 (= e!58135 e!58131)))

(declare-fun c!14835 () Bool)

(assert (=> b!89286 (= c!14835 (and ((_ is Cons!1556) (toList!762 lt!42399)) (= (_1!1132 (h!2148 (toList!762 lt!42399))) (_1!1132 lt!42400))))))

(declare-fun b!89287 () Bool)

(assert (=> b!89287 (= e!58133 (ite c!14835 (t!5322 (toList!762 lt!42399)) (ite c!14834 (Cons!1556 (h!2148 (toList!762 lt!42399)) (t!5322 (toList!762 lt!42399))) Nil!1557)))))

(declare-fun b!89288 () Bool)

(assert (=> b!89288 (= e!58131 call!8655)))

(declare-fun b!89289 () Bool)

(assert (=> b!89289 (= e!58134 (contains!771 lt!42751 (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400))))))

(declare-fun d!23711 () Bool)

(assert (=> d!23711 e!58134))

(declare-fun res!45636 () Bool)

(assert (=> d!23711 (=> (not res!45636) (not e!58134))))

(assert (=> d!23711 (= res!45636 (isStrictlySorted!295 lt!42751))))

(assert (=> d!23711 (= lt!42751 e!58135)))

(assert (=> d!23711 (= c!14836 (and ((_ is Cons!1556) (toList!762 lt!42399)) (bvslt (_1!1132 (h!2148 (toList!762 lt!42399))) (_1!1132 lt!42400))))))

(assert (=> d!23711 (isStrictlySorted!295 (toList!762 lt!42399))))

(assert (=> d!23711 (= (insertStrictlySorted!62 (toList!762 lt!42399) (_1!1132 lt!42400) (_2!1132 lt!42400)) lt!42751)))

(declare-fun b!89283 () Bool)

(assert (=> b!89283 (= e!58135 call!8654)))

(assert (= (and d!23711 c!14836) b!89283))

(assert (= (and d!23711 (not c!14836)) b!89286))

(assert (= (and b!89286 c!14835) b!89288))

(assert (= (and b!89286 (not c!14835)) b!89281))

(assert (= (and b!89281 c!14834) b!89280))

(assert (= (and b!89281 (not c!14834)) b!89282))

(assert (= (or b!89280 b!89282) bm!8651))

(assert (= (or b!89288 bm!8651) bm!8650))

(assert (= (or b!89283 bm!8650) bm!8652))

(assert (= (and bm!8652 c!14833) b!89285))

(assert (= (and bm!8652 (not c!14833)) b!89287))

(assert (= (and d!23711 res!45636) b!89284))

(assert (= (and b!89284 res!45637) b!89289))

(declare-fun m!95371 () Bool)

(assert (=> b!89285 m!95371))

(declare-fun m!95373 () Bool)

(assert (=> b!89289 m!95373))

(declare-fun m!95375 () Bool)

(assert (=> b!89284 m!95375))

(declare-fun m!95377 () Bool)

(assert (=> d!23711 m!95377))

(assert (=> d!23711 m!95243))

(declare-fun m!95379 () Bool)

(assert (=> bm!8652 m!95379))

(assert (=> d!23639 d!23711))

(declare-fun d!23713 () Bool)

(declare-fun e!58136 () Bool)

(assert (=> d!23713 e!58136))

(declare-fun res!45638 () Bool)

(assert (=> d!23713 (=> res!45638 e!58136)))

(declare-fun lt!42755 () Bool)

(assert (=> d!23713 (= res!45638 (not lt!42755))))

(declare-fun lt!42754 () Bool)

(assert (=> d!23713 (= lt!42755 lt!42754)))

(declare-fun lt!42753 () Unit!2654)

(declare-fun e!58137 () Unit!2654)

(assert (=> d!23713 (= lt!42753 e!58137)))

(declare-fun c!14837 () Bool)

(assert (=> d!23713 (= c!14837 lt!42754)))

(assert (=> d!23713 (= lt!42754 (containsKey!145 (toList!762 lt!42667) (_1!1132 lt!42400)))))

(assert (=> d!23713 (= (contains!769 lt!42667 (_1!1132 lt!42400)) lt!42755)))

(declare-fun b!89290 () Bool)

(declare-fun lt!42752 () Unit!2654)

(assert (=> b!89290 (= e!58137 lt!42752)))

(assert (=> b!89290 (= lt!42752 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42667) (_1!1132 lt!42400)))))

(assert (=> b!89290 (isDefined!95 (getValueByKey!141 (toList!762 lt!42667) (_1!1132 lt!42400)))))

(declare-fun b!89291 () Bool)

(declare-fun Unit!2667 () Unit!2654)

(assert (=> b!89291 (= e!58137 Unit!2667)))

(declare-fun b!89292 () Bool)

(assert (=> b!89292 (= e!58136 (isDefined!95 (getValueByKey!141 (toList!762 lt!42667) (_1!1132 lt!42400))))))

(assert (= (and d!23713 c!14837) b!89290))

(assert (= (and d!23713 (not c!14837)) b!89291))

(assert (= (and d!23713 (not res!45638)) b!89292))

(declare-fun m!95381 () Bool)

(assert (=> d!23713 m!95381))

(declare-fun m!95383 () Bool)

(assert (=> b!89290 m!95383))

(assert (=> b!89290 m!95097))

(assert (=> b!89290 m!95097))

(declare-fun m!95385 () Bool)

(assert (=> b!89290 m!95385))

(assert (=> b!89292 m!95097))

(assert (=> b!89292 m!95097))

(assert (=> b!89292 m!95385))

(assert (=> d!23629 d!23713))

(declare-fun d!23715 () Bool)

(declare-fun c!14838 () Bool)

(assert (=> d!23715 (= c!14838 (and ((_ is Cons!1556) lt!42665) (= (_1!1132 (h!2148 lt!42665)) (_1!1132 lt!42400))))))

(declare-fun e!58138 () Option!147)

(assert (=> d!23715 (= (getValueByKey!141 lt!42665 (_1!1132 lt!42400)) e!58138)))

(declare-fun b!89295 () Bool)

(declare-fun e!58139 () Option!147)

(assert (=> b!89295 (= e!58139 (getValueByKey!141 (t!5322 lt!42665) (_1!1132 lt!42400)))))

(declare-fun b!89293 () Bool)

(assert (=> b!89293 (= e!58138 (Some!146 (_2!1132 (h!2148 lt!42665))))))

(declare-fun b!89294 () Bool)

(assert (=> b!89294 (= e!58138 e!58139)))

(declare-fun c!14839 () Bool)

(assert (=> b!89294 (= c!14839 (and ((_ is Cons!1556) lt!42665) (not (= (_1!1132 (h!2148 lt!42665)) (_1!1132 lt!42400)))))))

(declare-fun b!89296 () Bool)

(assert (=> b!89296 (= e!58139 None!145)))

(assert (= (and d!23715 c!14838) b!89293))

(assert (= (and d!23715 (not c!14838)) b!89294))

(assert (= (and b!89294 c!14839) b!89295))

(assert (= (and b!89294 (not c!14839)) b!89296))

(declare-fun m!95387 () Bool)

(assert (=> b!89295 m!95387))

(assert (=> d!23629 d!23715))

(declare-fun d!23717 () Bool)

(assert (=> d!23717 (= (getValueByKey!141 lt!42665 (_1!1132 lt!42400)) (Some!146 (_2!1132 lt!42400)))))

(declare-fun lt!42756 () Unit!2654)

(assert (=> d!23717 (= lt!42756 (choose!536 lt!42665 (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(declare-fun e!58140 () Bool)

(assert (=> d!23717 e!58140))

(declare-fun res!45639 () Bool)

(assert (=> d!23717 (=> (not res!45639) (not e!58140))))

(assert (=> d!23717 (= res!45639 (isStrictlySorted!295 lt!42665))))

(assert (=> d!23717 (= (lemmaContainsTupThenGetReturnValue!60 lt!42665 (_1!1132 lt!42400) (_2!1132 lt!42400)) lt!42756)))

(declare-fun b!89297 () Bool)

(declare-fun res!45640 () Bool)

(assert (=> b!89297 (=> (not res!45640) (not e!58140))))

(assert (=> b!89297 (= res!45640 (containsKey!145 lt!42665 (_1!1132 lt!42400)))))

(declare-fun b!89298 () Bool)

(assert (=> b!89298 (= e!58140 (contains!771 lt!42665 (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400))))))

(assert (= (and d!23717 res!45639) b!89297))

(assert (= (and b!89297 res!45640) b!89298))

(assert (=> d!23717 m!95091))

(declare-fun m!95389 () Bool)

(assert (=> d!23717 m!95389))

(declare-fun m!95391 () Bool)

(assert (=> d!23717 m!95391))

(declare-fun m!95393 () Bool)

(assert (=> b!89297 m!95393))

(declare-fun m!95395 () Bool)

(assert (=> b!89298 m!95395))

(assert (=> d!23629 d!23717))

(declare-fun bm!8653 () Bool)

(declare-fun call!8658 () List!1560)

(declare-fun call!8657 () List!1560)

(assert (=> bm!8653 (= call!8658 call!8657)))

(declare-fun b!89299 () Bool)

(declare-fun e!58142 () List!1560)

(declare-fun call!8656 () List!1560)

(assert (=> b!89299 (= e!58142 call!8656)))

(declare-fun b!89300 () Bool)

(declare-fun c!14841 () Bool)

(assert (=> b!89300 (= c!14841 (and ((_ is Cons!1556) (toList!762 (+!119 lt!42399 lt!42402))) (bvsgt (_1!1132 (h!2148 (toList!762 (+!119 lt!42399 lt!42402)))) (_1!1132 lt!42400))))))

(declare-fun e!58141 () List!1560)

(assert (=> b!89300 (= e!58141 e!58142)))

(declare-fun b!89301 () Bool)

(assert (=> b!89301 (= e!58142 call!8656)))

(declare-fun bm!8654 () Bool)

(assert (=> bm!8654 (= call!8656 call!8658)))

(declare-fun c!14843 () Bool)

(declare-fun bm!8655 () Bool)

(declare-fun e!58143 () List!1560)

(assert (=> bm!8655 (= call!8657 ($colon$colon!73 e!58143 (ite c!14843 (h!2148 (toList!762 (+!119 lt!42399 lt!42402))) (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400)))))))

(declare-fun c!14840 () Bool)

(assert (=> bm!8655 (= c!14840 c!14843)))

(declare-fun b!89303 () Bool)

(declare-fun res!45642 () Bool)

(declare-fun e!58144 () Bool)

(assert (=> b!89303 (=> (not res!45642) (not e!58144))))

(declare-fun lt!42757 () List!1560)

(assert (=> b!89303 (= res!45642 (containsKey!145 lt!42757 (_1!1132 lt!42400)))))

(declare-fun b!89304 () Bool)

(assert (=> b!89304 (= e!58143 (insertStrictlySorted!62 (t!5322 (toList!762 (+!119 lt!42399 lt!42402))) (_1!1132 lt!42400) (_2!1132 lt!42400)))))

(declare-fun b!89305 () Bool)

(declare-fun e!58145 () List!1560)

(assert (=> b!89305 (= e!58145 e!58141)))

(declare-fun c!14842 () Bool)

(assert (=> b!89305 (= c!14842 (and ((_ is Cons!1556) (toList!762 (+!119 lt!42399 lt!42402))) (= (_1!1132 (h!2148 (toList!762 (+!119 lt!42399 lt!42402)))) (_1!1132 lt!42400))))))

(declare-fun b!89306 () Bool)

(assert (=> b!89306 (= e!58143 (ite c!14842 (t!5322 (toList!762 (+!119 lt!42399 lt!42402))) (ite c!14841 (Cons!1556 (h!2148 (toList!762 (+!119 lt!42399 lt!42402))) (t!5322 (toList!762 (+!119 lt!42399 lt!42402)))) Nil!1557)))))

(declare-fun b!89307 () Bool)

(assert (=> b!89307 (= e!58141 call!8658)))

(declare-fun b!89308 () Bool)

(assert (=> b!89308 (= e!58144 (contains!771 lt!42757 (tuple2!2245 (_1!1132 lt!42400) (_2!1132 lt!42400))))))

(declare-fun d!23719 () Bool)

(assert (=> d!23719 e!58144))

(declare-fun res!45641 () Bool)

(assert (=> d!23719 (=> (not res!45641) (not e!58144))))

(assert (=> d!23719 (= res!45641 (isStrictlySorted!295 lt!42757))))

(assert (=> d!23719 (= lt!42757 e!58145)))

(assert (=> d!23719 (= c!14843 (and ((_ is Cons!1556) (toList!762 (+!119 lt!42399 lt!42402))) (bvslt (_1!1132 (h!2148 (toList!762 (+!119 lt!42399 lt!42402)))) (_1!1132 lt!42400))))))

(assert (=> d!23719 (isStrictlySorted!295 (toList!762 (+!119 lt!42399 lt!42402)))))

(assert (=> d!23719 (= (insertStrictlySorted!62 (toList!762 (+!119 lt!42399 lt!42402)) (_1!1132 lt!42400) (_2!1132 lt!42400)) lt!42757)))

(declare-fun b!89302 () Bool)

(assert (=> b!89302 (= e!58145 call!8657)))

(assert (= (and d!23719 c!14843) b!89302))

(assert (= (and d!23719 (not c!14843)) b!89305))

(assert (= (and b!89305 c!14842) b!89307))

(assert (= (and b!89305 (not c!14842)) b!89300))

(assert (= (and b!89300 c!14841) b!89299))

(assert (= (and b!89300 (not c!14841)) b!89301))

(assert (= (or b!89299 b!89301) bm!8654))

(assert (= (or b!89307 bm!8654) bm!8653))

(assert (= (or b!89302 bm!8653) bm!8655))

(assert (= (and bm!8655 c!14840) b!89304))

(assert (= (and bm!8655 (not c!14840)) b!89306))

(assert (= (and d!23719 res!45641) b!89303))

(assert (= (and b!89303 res!45642) b!89308))

(declare-fun m!95397 () Bool)

(assert (=> b!89304 m!95397))

(declare-fun m!95399 () Bool)

(assert (=> b!89308 m!95399))

(declare-fun m!95401 () Bool)

(assert (=> b!89303 m!95401))

(declare-fun m!95403 () Bool)

(assert (=> d!23719 m!95403))

(declare-fun m!95405 () Bool)

(assert (=> d!23719 m!95405))

(declare-fun m!95407 () Bool)

(assert (=> bm!8655 m!95407))

(assert (=> d!23629 d!23719))

(declare-fun d!23721 () Bool)

(declare-fun res!45643 () Bool)

(declare-fun e!58146 () Bool)

(assert (=> d!23721 (=> (not res!45643) (not e!58146))))

(assert (=> d!23721 (= res!45643 (simpleValid!59 (v!2676 (underlying!298 thiss!992))))))

(assert (=> d!23721 (= (valid!335 (v!2676 (underlying!298 thiss!992))) e!58146)))

(declare-fun b!89309 () Bool)

(declare-fun res!45644 () Bool)

(assert (=> b!89309 (=> (not res!45644) (not e!58146))))

(assert (=> b!89309 (= res!45644 (= (arrayCountValidKeys!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))) (_size!433 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!89310 () Bool)

(declare-fun res!45645 () Bool)

(assert (=> b!89310 (=> (not res!45645) (not e!58146))))

(assert (=> b!89310 (= res!45645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!89311 () Bool)

(assert (=> b!89311 (= e!58146 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000000 Nil!1556))))

(assert (= (and d!23721 res!45643) b!89309))

(assert (= (and b!89309 res!45644) b!89310))

(assert (= (and b!89310 res!45645) b!89311))

(declare-fun m!95409 () Bool)

(assert (=> d!23721 m!95409))

(declare-fun m!95411 () Bool)

(assert (=> b!89309 m!95411))

(assert (=> b!89310 m!94813))

(assert (=> b!89311 m!94855))

(assert (=> d!23607 d!23721))

(declare-fun d!23723 () Bool)

(assert (=> d!23723 (= (apply!84 lt!42530 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1228 (getValueByKey!141 (toList!762 lt!42530) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3737 () Bool)

(assert (= bs!3737 d!23723))

(assert (=> bs!3737 m!94949))

(declare-fun m!95413 () Bool)

(assert (=> bs!3737 m!95413))

(assert (=> bs!3737 m!95413))

(declare-fun m!95415 () Bool)

(assert (=> bs!3737 m!95415))

(assert (=> b!88925 d!23723))

(declare-fun d!23725 () Bool)

(declare-fun c!14844 () Bool)

(assert (=> d!23725 (= c!14844 ((_ is ValueCellFull!930) (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!58147 () V!3043)

(assert (=> d!23725 (= (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!58147)))

(declare-fun b!89312 () Bool)

(assert (=> b!89312 (= e!58147 (get!1226 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!89313 () Bool)

(assert (=> b!89313 (= e!58147 (get!1227 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23725 c!14844) b!89312))

(assert (= (and d!23725 (not c!14844)) b!89313))

(assert (=> b!89312 m!94953))

(assert (=> b!89312 m!94845))

(declare-fun m!95417 () Bool)

(assert (=> b!89312 m!95417))

(assert (=> b!89313 m!94953))

(assert (=> b!89313 m!94845))

(declare-fun m!95419 () Bool)

(assert (=> b!89313 m!95419))

(assert (=> b!88925 d!23725))

(declare-fun d!23727 () Bool)

(declare-fun e!58148 () Bool)

(assert (=> d!23727 e!58148))

(declare-fun res!45646 () Bool)

(assert (=> d!23727 (=> res!45646 e!58148)))

(declare-fun lt!42761 () Bool)

(assert (=> d!23727 (= res!45646 (not lt!42761))))

(declare-fun lt!42760 () Bool)

(assert (=> d!23727 (= lt!42761 lt!42760)))

(declare-fun lt!42759 () Unit!2654)

(declare-fun e!58149 () Unit!2654)

(assert (=> d!23727 (= lt!42759 e!58149)))

(declare-fun c!14845 () Bool)

(assert (=> d!23727 (= c!14845 lt!42760)))

(assert (=> d!23727 (= lt!42760 (containsKey!145 (toList!762 lt!42687) (_1!1132 lt!42413)))))

(assert (=> d!23727 (= (contains!769 lt!42687 (_1!1132 lt!42413)) lt!42761)))

(declare-fun b!89314 () Bool)

(declare-fun lt!42758 () Unit!2654)

(assert (=> b!89314 (= e!58149 lt!42758)))

(assert (=> b!89314 (= lt!42758 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42687) (_1!1132 lt!42413)))))

(assert (=> b!89314 (isDefined!95 (getValueByKey!141 (toList!762 lt!42687) (_1!1132 lt!42413)))))

(declare-fun b!89315 () Bool)

(declare-fun Unit!2668 () Unit!2654)

(assert (=> b!89315 (= e!58149 Unit!2668)))

(declare-fun b!89316 () Bool)

(assert (=> b!89316 (= e!58148 (isDefined!95 (getValueByKey!141 (toList!762 lt!42687) (_1!1132 lt!42413))))))

(assert (= (and d!23727 c!14845) b!89314))

(assert (= (and d!23727 (not c!14845)) b!89315))

(assert (= (and d!23727 (not res!45646)) b!89316))

(declare-fun m!95421 () Bool)

(assert (=> d!23727 m!95421))

(declare-fun m!95423 () Bool)

(assert (=> b!89314 m!95423))

(assert (=> b!89314 m!95165))

(assert (=> b!89314 m!95165))

(declare-fun m!95425 () Bool)

(assert (=> b!89314 m!95425))

(assert (=> b!89316 m!95165))

(assert (=> b!89316 m!95165))

(assert (=> b!89316 m!95425))

(assert (=> d!23641 d!23727))

(declare-fun d!23729 () Bool)

(declare-fun c!14846 () Bool)

(assert (=> d!23729 (= c!14846 (and ((_ is Cons!1556) lt!42685) (= (_1!1132 (h!2148 lt!42685)) (_1!1132 lt!42413))))))

(declare-fun e!58150 () Option!147)

(assert (=> d!23729 (= (getValueByKey!141 lt!42685 (_1!1132 lt!42413)) e!58150)))

(declare-fun b!89319 () Bool)

(declare-fun e!58151 () Option!147)

(assert (=> b!89319 (= e!58151 (getValueByKey!141 (t!5322 lt!42685) (_1!1132 lt!42413)))))

(declare-fun b!89317 () Bool)

(assert (=> b!89317 (= e!58150 (Some!146 (_2!1132 (h!2148 lt!42685))))))

(declare-fun b!89318 () Bool)

(assert (=> b!89318 (= e!58150 e!58151)))

(declare-fun c!14847 () Bool)

(assert (=> b!89318 (= c!14847 (and ((_ is Cons!1556) lt!42685) (not (= (_1!1132 (h!2148 lt!42685)) (_1!1132 lt!42413)))))))

(declare-fun b!89320 () Bool)

(assert (=> b!89320 (= e!58151 None!145)))

(assert (= (and d!23729 c!14846) b!89317))

(assert (= (and d!23729 (not c!14846)) b!89318))

(assert (= (and b!89318 c!14847) b!89319))

(assert (= (and b!89318 (not c!14847)) b!89320))

(declare-fun m!95427 () Bool)

(assert (=> b!89319 m!95427))

(assert (=> d!23641 d!23729))

(declare-fun d!23731 () Bool)

(assert (=> d!23731 (= (getValueByKey!141 lt!42685 (_1!1132 lt!42413)) (Some!146 (_2!1132 lt!42413)))))

(declare-fun lt!42762 () Unit!2654)

(assert (=> d!23731 (= lt!42762 (choose!536 lt!42685 (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(declare-fun e!58152 () Bool)

(assert (=> d!23731 e!58152))

(declare-fun res!45647 () Bool)

(assert (=> d!23731 (=> (not res!45647) (not e!58152))))

(assert (=> d!23731 (= res!45647 (isStrictlySorted!295 lt!42685))))

(assert (=> d!23731 (= (lemmaContainsTupThenGetReturnValue!60 lt!42685 (_1!1132 lt!42413) (_2!1132 lt!42413)) lt!42762)))

(declare-fun b!89321 () Bool)

(declare-fun res!45648 () Bool)

(assert (=> b!89321 (=> (not res!45648) (not e!58152))))

(assert (=> b!89321 (= res!45648 (containsKey!145 lt!42685 (_1!1132 lt!42413)))))

(declare-fun b!89322 () Bool)

(assert (=> b!89322 (= e!58152 (contains!771 lt!42685 (tuple2!2245 (_1!1132 lt!42413) (_2!1132 lt!42413))))))

(assert (= (and d!23731 res!45647) b!89321))

(assert (= (and b!89321 res!45648) b!89322))

(assert (=> d!23731 m!95159))

(declare-fun m!95429 () Bool)

(assert (=> d!23731 m!95429))

(declare-fun m!95431 () Bool)

(assert (=> d!23731 m!95431))

(declare-fun m!95433 () Bool)

(assert (=> b!89321 m!95433))

(declare-fun m!95435 () Bool)

(assert (=> b!89322 m!95435))

(assert (=> d!23641 d!23731))

(declare-fun bm!8656 () Bool)

(declare-fun call!8661 () List!1560)

(declare-fun call!8660 () List!1560)

(assert (=> bm!8656 (= call!8661 call!8660)))

(declare-fun b!89323 () Bool)

(declare-fun e!58154 () List!1560)

(declare-fun call!8659 () List!1560)

(assert (=> b!89323 (= e!58154 call!8659)))

(declare-fun b!89324 () Bool)

(declare-fun c!14849 () Bool)

(assert (=> b!89324 (= c!14849 (and ((_ is Cons!1556) (toList!762 lt!42406)) (bvsgt (_1!1132 (h!2148 (toList!762 lt!42406))) (_1!1132 lt!42413))))))

(declare-fun e!58153 () List!1560)

(assert (=> b!89324 (= e!58153 e!58154)))

(declare-fun b!89325 () Bool)

(assert (=> b!89325 (= e!58154 call!8659)))

(declare-fun bm!8657 () Bool)

(assert (=> bm!8657 (= call!8659 call!8661)))

(declare-fun bm!8658 () Bool)

(declare-fun c!14851 () Bool)

(declare-fun e!58155 () List!1560)

(assert (=> bm!8658 (= call!8660 ($colon$colon!73 e!58155 (ite c!14851 (h!2148 (toList!762 lt!42406)) (tuple2!2245 (_1!1132 lt!42413) (_2!1132 lt!42413)))))))

(declare-fun c!14848 () Bool)

(assert (=> bm!8658 (= c!14848 c!14851)))

(declare-fun b!89327 () Bool)

(declare-fun res!45650 () Bool)

(declare-fun e!58156 () Bool)

(assert (=> b!89327 (=> (not res!45650) (not e!58156))))

(declare-fun lt!42763 () List!1560)

(assert (=> b!89327 (= res!45650 (containsKey!145 lt!42763 (_1!1132 lt!42413)))))

(declare-fun b!89328 () Bool)

(assert (=> b!89328 (= e!58155 (insertStrictlySorted!62 (t!5322 (toList!762 lt!42406)) (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(declare-fun b!89329 () Bool)

(declare-fun e!58157 () List!1560)

(assert (=> b!89329 (= e!58157 e!58153)))

(declare-fun c!14850 () Bool)

(assert (=> b!89329 (= c!14850 (and ((_ is Cons!1556) (toList!762 lt!42406)) (= (_1!1132 (h!2148 (toList!762 lt!42406))) (_1!1132 lt!42413))))))

(declare-fun b!89330 () Bool)

(assert (=> b!89330 (= e!58155 (ite c!14850 (t!5322 (toList!762 lt!42406)) (ite c!14849 (Cons!1556 (h!2148 (toList!762 lt!42406)) (t!5322 (toList!762 lt!42406))) Nil!1557)))))

(declare-fun b!89331 () Bool)

(assert (=> b!89331 (= e!58153 call!8661)))

(declare-fun b!89332 () Bool)

(assert (=> b!89332 (= e!58156 (contains!771 lt!42763 (tuple2!2245 (_1!1132 lt!42413) (_2!1132 lt!42413))))))

(declare-fun d!23733 () Bool)

(assert (=> d!23733 e!58156))

(declare-fun res!45649 () Bool)

(assert (=> d!23733 (=> (not res!45649) (not e!58156))))

(assert (=> d!23733 (= res!45649 (isStrictlySorted!295 lt!42763))))

(assert (=> d!23733 (= lt!42763 e!58157)))

(assert (=> d!23733 (= c!14851 (and ((_ is Cons!1556) (toList!762 lt!42406)) (bvslt (_1!1132 (h!2148 (toList!762 lt!42406))) (_1!1132 lt!42413))))))

(assert (=> d!23733 (isStrictlySorted!295 (toList!762 lt!42406))))

(assert (=> d!23733 (= (insertStrictlySorted!62 (toList!762 lt!42406) (_1!1132 lt!42413) (_2!1132 lt!42413)) lt!42763)))

(declare-fun b!89326 () Bool)

(assert (=> b!89326 (= e!58157 call!8660)))

(assert (= (and d!23733 c!14851) b!89326))

(assert (= (and d!23733 (not c!14851)) b!89329))

(assert (= (and b!89329 c!14850) b!89331))

(assert (= (and b!89329 (not c!14850)) b!89324))

(assert (= (and b!89324 c!14849) b!89323))

(assert (= (and b!89324 (not c!14849)) b!89325))

(assert (= (or b!89323 b!89325) bm!8657))

(assert (= (or b!89331 bm!8657) bm!8656))

(assert (= (or b!89326 bm!8656) bm!8658))

(assert (= (and bm!8658 c!14848) b!89328))

(assert (= (and bm!8658 (not c!14848)) b!89330))

(assert (= (and d!23733 res!45649) b!89327))

(assert (= (and b!89327 res!45650) b!89332))

(declare-fun m!95437 () Bool)

(assert (=> b!89328 m!95437))

(declare-fun m!95439 () Bool)

(assert (=> b!89332 m!95439))

(declare-fun m!95441 () Bool)

(assert (=> b!89327 m!95441))

(declare-fun m!95443 () Bool)

(assert (=> d!23733 m!95443))

(declare-fun m!95445 () Bool)

(assert (=> d!23733 m!95445))

(declare-fun m!95447 () Bool)

(assert (=> bm!8658 m!95447))

(assert (=> d!23641 d!23733))

(declare-fun d!23735 () Bool)

(declare-fun e!58160 () Bool)

(assert (=> d!23735 e!58160))

(declare-fun c!14854 () Bool)

(assert (=> d!23735 (= c!14854 (and (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!23735 true))

(declare-fun _$29!114 () Unit!2654)

(assert (=> d!23735 (= (choose!535 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (_values!2355 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992))) (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) (minValue!2261 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992)))) _$29!114)))

(declare-fun b!89337 () Bool)

(assert (=> b!89337 (= e!58160 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!89338 () Bool)

(assert (=> b!89338 (= e!58160 (ite (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2205 (v!2676 (underlying!298 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!23735 c!14854) b!89337))

(assert (= (and d!23735 (not c!14854)) b!89338))

(assert (=> b!89337 m!94805))

(assert (=> b!89337 m!94809))

(assert (=> d!23655 d!23735))

(assert (=> d!23655 d!23645))

(declare-fun d!23737 () Bool)

(declare-fun e!58161 () Bool)

(assert (=> d!23737 e!58161))

(declare-fun res!45651 () Bool)

(assert (=> d!23737 (=> res!45651 e!58161)))

(declare-fun lt!42767 () Bool)

(assert (=> d!23737 (= res!45651 (not lt!42767))))

(declare-fun lt!42766 () Bool)

(assert (=> d!23737 (= lt!42767 lt!42766)))

(declare-fun lt!42765 () Unit!2654)

(declare-fun e!58162 () Unit!2654)

(assert (=> d!23737 (= lt!42765 e!58162)))

(declare-fun c!14855 () Bool)

(assert (=> d!23737 (= c!14855 lt!42766)))

(assert (=> d!23737 (= lt!42766 (containsKey!145 (toList!762 lt!42530) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!23737 (= (contains!769 lt!42530 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!42767)))

(declare-fun b!89339 () Bool)

(declare-fun lt!42764 () Unit!2654)

(assert (=> b!89339 (= e!58162 lt!42764)))

(assert (=> b!89339 (= lt!42764 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42530) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!89339 (isDefined!95 (getValueByKey!141 (toList!762 lt!42530) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!89340 () Bool)

(declare-fun Unit!2669 () Unit!2654)

(assert (=> b!89340 (= e!58162 Unit!2669)))

(declare-fun b!89341 () Bool)

(assert (=> b!89341 (= e!58161 (isDefined!95 (getValueByKey!141 (toList!762 lt!42530) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!23737 c!14855) b!89339))

(assert (= (and d!23737 (not c!14855)) b!89340))

(assert (= (and d!23737 (not res!45651)) b!89341))

(assert (=> d!23737 m!94949))

(declare-fun m!95449 () Bool)

(assert (=> d!23737 m!95449))

(assert (=> b!89339 m!94949))

(declare-fun m!95451 () Bool)

(assert (=> b!89339 m!95451))

(assert (=> b!89339 m!94949))

(assert (=> b!89339 m!95413))

(assert (=> b!89339 m!95413))

(declare-fun m!95453 () Bool)

(assert (=> b!89339 m!95453))

(assert (=> b!89341 m!94949))

(assert (=> b!89341 m!95413))

(assert (=> b!89341 m!95413))

(assert (=> b!89341 m!95453))

(assert (=> b!88918 d!23737))

(declare-fun d!23739 () Bool)

(assert (=> d!23739 (= (map!1201 (_2!1133 lt!42617)) (getCurrentListMap!445 (_keys!4050 (_2!1133 lt!42617)) (_values!2355 (_2!1133 lt!42617)) (mask!6416 (_2!1133 lt!42617)) (extraKeys!2205 (_2!1133 lt!42617)) (zeroValue!2261 (_2!1133 lt!42617)) (minValue!2261 (_2!1133 lt!42617)) #b00000000000000000000000000000000 (defaultEntry!2372 (_2!1133 lt!42617))))))

(declare-fun bs!3738 () Bool)

(assert (= bs!3738 d!23739))

(declare-fun m!95455 () Bool)

(assert (=> bs!3738 m!95455))

(assert (=> bm!8627 d!23739))

(declare-fun b!89342 () Bool)

(declare-fun e!58163 () Bool)

(declare-fun e!58164 () Bool)

(assert (=> b!89342 (= e!58163 e!58164)))

(declare-fun c!14856 () Bool)

(assert (=> b!89342 (= c!14856 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!89343 () Bool)

(declare-fun call!8662 () Bool)

(assert (=> b!89343 (= e!58164 call!8662)))

(declare-fun d!23741 () Bool)

(declare-fun res!45654 () Bool)

(declare-fun e!58166 () Bool)

(assert (=> d!23741 (=> res!45654 e!58166)))

(assert (=> d!23741 (= res!45654 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23741 (= (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!14713 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) Nil!1556) Nil!1556)) e!58166)))

(declare-fun b!89344 () Bool)

(assert (=> b!89344 (= e!58166 e!58163)))

(declare-fun res!45652 () Bool)

(assert (=> b!89344 (=> (not res!45652) (not e!58163))))

(declare-fun e!58165 () Bool)

(assert (=> b!89344 (= res!45652 (not e!58165))))

(declare-fun res!45653 () Bool)

(assert (=> b!89344 (=> (not res!45653) (not e!58165))))

(assert (=> b!89344 (= res!45653 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!8659 () Bool)

(assert (=> bm!8659 (= call!8662 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!14856 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!14713 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) Nil!1556) Nil!1556)) (ite c!14713 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) Nil!1556) Nil!1556))))))

(declare-fun b!89345 () Bool)

(assert (=> b!89345 (= e!58165 (contains!770 (ite c!14713 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) Nil!1556) Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!89346 () Bool)

(assert (=> b!89346 (= e!58164 call!8662)))

(assert (= (and d!23741 (not res!45654)) b!89344))

(assert (= (and b!89344 res!45653) b!89345))

(assert (= (and b!89344 res!45652) b!89342))

(assert (= (and b!89342 c!14856) b!89343))

(assert (= (and b!89342 (not c!14856)) b!89346))

(assert (= (or b!89343 b!89346) bm!8659))

(declare-fun m!95457 () Bool)

(assert (=> b!89342 m!95457))

(assert (=> b!89342 m!95457))

(declare-fun m!95459 () Bool)

(assert (=> b!89342 m!95459))

(assert (=> b!89344 m!95457))

(assert (=> b!89344 m!95457))

(assert (=> b!89344 m!95459))

(assert (=> bm!8659 m!95457))

(declare-fun m!95461 () Bool)

(assert (=> bm!8659 m!95461))

(assert (=> b!89345 m!95457))

(assert (=> b!89345 m!95457))

(declare-fun m!95463 () Bool)

(assert (=> b!89345 m!95463))

(assert (=> bm!8536 d!23741))

(declare-fun b!89347 () Bool)

(declare-fun e!58167 () Bool)

(declare-fun e!58168 () Bool)

(assert (=> b!89347 (= e!58167 e!58168)))

(declare-fun c!14857 () Bool)

(assert (=> b!89347 (= c!14857 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89348 () Bool)

(declare-fun call!8663 () Bool)

(assert (=> b!89348 (= e!58168 call!8663)))

(declare-fun d!23743 () Bool)

(declare-fun res!45657 () Bool)

(declare-fun e!58170 () Bool)

(assert (=> d!23743 (=> res!45657 e!58170)))

(assert (=> d!23743 (= res!45657 (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(assert (=> d!23743 (= (arrayNoDuplicates!0 (_keys!4050 newMap!16) #b00000000000000000000000000000000 Nil!1556) e!58170)))

(declare-fun b!89349 () Bool)

(assert (=> b!89349 (= e!58170 e!58167)))

(declare-fun res!45655 () Bool)

(assert (=> b!89349 (=> (not res!45655) (not e!58167))))

(declare-fun e!58169 () Bool)

(assert (=> b!89349 (= res!45655 (not e!58169))))

(declare-fun res!45656 () Bool)

(assert (=> b!89349 (=> (not res!45656) (not e!58169))))

(assert (=> b!89349 (= res!45656 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!8660 () Bool)

(assert (=> bm!8660 (= call!8663 (arrayNoDuplicates!0 (_keys!4050 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!14857 (Cons!1555 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000) Nil!1556) Nil!1556)))))

(declare-fun b!89350 () Bool)

(assert (=> b!89350 (= e!58169 (contains!770 Nil!1556 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89351 () Bool)

(assert (=> b!89351 (= e!58168 call!8663)))

(assert (= (and d!23743 (not res!45657)) b!89349))

(assert (= (and b!89349 res!45656) b!89350))

(assert (= (and b!89349 res!45655) b!89347))

(assert (= (and b!89347 c!14857) b!89348))

(assert (= (and b!89347 (not c!14857)) b!89351))

(assert (= (or b!89348 b!89351) bm!8660))

(declare-fun m!95465 () Bool)

(assert (=> b!89347 m!95465))

(assert (=> b!89347 m!95465))

(declare-fun m!95467 () Bool)

(assert (=> b!89347 m!95467))

(assert (=> b!89349 m!95465))

(assert (=> b!89349 m!95465))

(assert (=> b!89349 m!95467))

(assert (=> bm!8660 m!95465))

(declare-fun m!95469 () Bool)

(assert (=> bm!8660 m!95469))

(assert (=> b!89350 m!95465))

(assert (=> b!89350 m!95465))

(declare-fun m!95471 () Bool)

(assert (=> b!89350 m!95471))

(assert (=> b!89151 d!23743))

(declare-fun d!23745 () Bool)

(declare-fun e!58171 () Bool)

(assert (=> d!23745 e!58171))

(declare-fun res!45658 () Bool)

(assert (=> d!23745 (=> (not res!45658) (not e!58171))))

(declare-fun lt!42770 () ListLongMap!1493)

(assert (=> d!23745 (= res!45658 (contains!769 lt!42770 (_1!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(declare-fun lt!42768 () List!1560)

(assert (=> d!23745 (= lt!42770 (ListLongMap!1494 lt!42768))))

(declare-fun lt!42769 () Unit!2654)

(declare-fun lt!42771 () Unit!2654)

(assert (=> d!23745 (= lt!42769 lt!42771)))

(assert (=> d!23745 (= (getValueByKey!141 lt!42768 (_1!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))) (Some!146 (_2!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(assert (=> d!23745 (= lt!42771 (lemmaContainsTupThenGetReturnValue!60 lt!42768 (_1!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (_2!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(assert (=> d!23745 (= lt!42768 (insertStrictlySorted!62 (toList!762 e!58007) (_1!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (_2!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(assert (=> d!23745 (= (+!119 e!58007 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) lt!42770)))

(declare-fun b!89352 () Bool)

(declare-fun res!45659 () Bool)

(assert (=> b!89352 (=> (not res!45659) (not e!58171))))

(assert (=> b!89352 (= res!45659 (= (getValueByKey!141 (toList!762 lt!42770) (_1!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))) (Some!146 (_2!1132 (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))))

(declare-fun b!89353 () Bool)

(assert (=> b!89353 (= e!58171 (contains!771 (toList!762 lt!42770) (ite c!14768 (ite c!14769 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (= (and d!23745 res!45658) b!89352))

(assert (= (and b!89352 res!45659) b!89353))

(declare-fun m!95473 () Bool)

(assert (=> d!23745 m!95473))

(declare-fun m!95475 () Bool)

(assert (=> d!23745 m!95475))

(declare-fun m!95477 () Bool)

(assert (=> d!23745 m!95477))

(declare-fun m!95479 () Bool)

(assert (=> d!23745 m!95479))

(declare-fun m!95481 () Bool)

(assert (=> b!89352 m!95481))

(declare-fun m!95483 () Bool)

(assert (=> b!89353 m!95483))

(assert (=> bm!8619 d!23745))

(declare-fun b!89370 () Bool)

(declare-fun e!58180 () Bool)

(declare-fun e!58183 () Bool)

(assert (=> b!89370 (= e!58180 e!58183)))

(declare-fun res!45670 () Bool)

(declare-fun call!8668 () Bool)

(assert (=> b!89370 (= res!45670 call!8668)))

(assert (=> b!89370 (=> (not res!45670) (not e!58183))))

(declare-fun b!89371 () Bool)

(declare-fun e!58182 () Bool)

(declare-fun call!8669 () Bool)

(assert (=> b!89371 (= e!58182 (not call!8669))))

(declare-fun b!89372 () Bool)

(declare-fun e!58181 () Bool)

(declare-fun lt!42776 () SeekEntryResult!255)

(assert (=> b!89372 (= e!58181 ((_ is Undefined!255) lt!42776))))

(declare-fun bm!8665 () Bool)

(assert (=> bm!8665 (= call!8669 (arrayContainsKey!0 (_keys!4050 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!89374 () Bool)

(declare-fun res!45669 () Bool)

(assert (=> b!89374 (=> (not res!45669) (not e!58182))))

(assert (=> b!89374 (= res!45669 call!8668)))

(assert (=> b!89374 (= e!58181 e!58182)))

(declare-fun b!89375 () Bool)

(assert (=> b!89375 (and (bvsge (index!3159 lt!42776) #b00000000000000000000000000000000) (bvslt (index!3159 lt!42776) (size!2176 (_keys!4050 newMap!16))))))

(declare-fun res!45671 () Bool)

(assert (=> b!89375 (= res!45671 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3159 lt!42776)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89375 (=> (not res!45671) (not e!58183))))

(declare-fun b!89376 () Bool)

(declare-fun res!45668 () Bool)

(assert (=> b!89376 (=> (not res!45668) (not e!58182))))

(assert (=> b!89376 (= res!45668 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3162 lt!42776)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89376 (and (bvsge (index!3162 lt!42776) #b00000000000000000000000000000000) (bvslt (index!3162 lt!42776) (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89377 () Bool)

(assert (=> b!89377 (= e!58180 e!58181)))

(declare-fun c!14862 () Bool)

(assert (=> b!89377 (= c!14862 ((_ is MissingVacant!255) lt!42776))))

(declare-fun bm!8666 () Bool)

(declare-fun c!14863 () Bool)

(assert (=> bm!8666 (= call!8668 (inRange!0 (ite c!14863 (index!3159 lt!42776) (index!3162 lt!42776)) (mask!6416 newMap!16)))))

(declare-fun d!23747 () Bool)

(assert (=> d!23747 e!58180))

(assert (=> d!23747 (= c!14863 ((_ is MissingZero!255) lt!42776))))

(assert (=> d!23747 (= lt!42776 (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(declare-fun lt!42777 () Unit!2654)

(declare-fun choose!538 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 64) Int) Unit!2654)

(assert (=> d!23747 (= lt!42777 (choose!538 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)))))

(assert (=> d!23747 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23747 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)) lt!42777)))

(declare-fun b!89373 () Bool)

(assert (=> b!89373 (= e!58183 (not call!8669))))

(assert (= (and d!23747 c!14863) b!89370))

(assert (= (and d!23747 (not c!14863)) b!89377))

(assert (= (and b!89370 res!45670) b!89375))

(assert (= (and b!89375 res!45671) b!89373))

(assert (= (and b!89377 c!14862) b!89374))

(assert (= (and b!89377 (not c!14862)) b!89372))

(assert (= (and b!89374 res!45669) b!89376))

(assert (= (and b!89376 res!45668) b!89371))

(assert (= (or b!89370 b!89374) bm!8666))

(assert (= (or b!89373 b!89371) bm!8665))

(declare-fun m!95485 () Bool)

(assert (=> b!89375 m!95485))

(declare-fun m!95487 () Bool)

(assert (=> bm!8666 m!95487))

(assert (=> d!23747 m!94805))

(assert (=> d!23747 m!95019))

(assert (=> d!23747 m!94805))

(declare-fun m!95489 () Bool)

(assert (=> d!23747 m!95489))

(assert (=> d!23747 m!95265))

(assert (=> bm!8665 m!94805))

(assert (=> bm!8665 m!95027))

(declare-fun m!95491 () Bool)

(assert (=> b!89376 m!95491))

(assert (=> bm!8612 d!23747))

(declare-fun d!23749 () Bool)

(assert (=> d!23749 (= (inRange!0 (ite c!14771 (ite c!14775 (index!3160 lt!42616) (ite c!14779 (index!3159 lt!42633) (index!3162 lt!42633))) (ite c!14776 (index!3160 lt!42620) (ite c!14774 (index!3159 lt!42626) (index!3162 lt!42626)))) (mask!6416 newMap!16)) (and (bvsge (ite c!14771 (ite c!14775 (index!3160 lt!42616) (ite c!14779 (index!3159 lt!42633) (index!3162 lt!42633))) (ite c!14776 (index!3160 lt!42620) (ite c!14774 (index!3159 lt!42626) (index!3162 lt!42626)))) #b00000000000000000000000000000000) (bvslt (ite c!14771 (ite c!14775 (index!3160 lt!42616) (ite c!14779 (index!3159 lt!42633) (index!3162 lt!42633))) (ite c!14776 (index!3160 lt!42620) (ite c!14774 (index!3159 lt!42626) (index!3162 lt!42626)))) (bvadd (mask!6416 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!8620 d!23749))

(declare-fun d!23751 () Bool)

(declare-fun res!45676 () Bool)

(declare-fun e!58188 () Bool)

(assert (=> d!23751 (=> res!45676 e!58188)))

(assert (=> d!23751 (= res!45676 (and ((_ is Cons!1556) (toList!762 lt!42410)) (= (_1!1132 (h!2148 (toList!762 lt!42410))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))))

(assert (=> d!23751 (= (containsKey!145 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) e!58188)))

(declare-fun b!89382 () Bool)

(declare-fun e!58189 () Bool)

(assert (=> b!89382 (= e!58188 e!58189)))

(declare-fun res!45677 () Bool)

(assert (=> b!89382 (=> (not res!45677) (not e!58189))))

(assert (=> b!89382 (= res!45677 (and (or (not ((_ is Cons!1556) (toList!762 lt!42410))) (bvsle (_1!1132 (h!2148 (toList!762 lt!42410))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))) ((_ is Cons!1556) (toList!762 lt!42410)) (bvslt (_1!1132 (h!2148 (toList!762 lt!42410))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))))

(declare-fun b!89383 () Bool)

(assert (=> b!89383 (= e!58189 (containsKey!145 (t!5322 (toList!762 lt!42410)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (= (and d!23751 (not res!45676)) b!89382))

(assert (= (and b!89382 res!45677) b!89383))

(assert (=> b!89383 m!94805))

(declare-fun m!95493 () Bool)

(assert (=> b!89383 m!95493))

(assert (=> d!23623 d!23751))

(declare-fun d!23753 () Bool)

(assert (=> d!23753 (= (apply!84 lt!42652 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1228 (getValueByKey!141 (toList!762 lt!42652) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3739 () Bool)

(assert (= bs!3739 d!23753))

(assert (=> bs!3739 m!94949))

(assert (=> bs!3739 m!95251))

(assert (=> bs!3739 m!95251))

(declare-fun m!95495 () Bool)

(assert (=> bs!3739 m!95495))

(assert (=> b!89107 d!23753))

(assert (=> b!89107 d!23725))

(declare-fun d!23755 () Bool)

(declare-fun c!14864 () Bool)

(assert (=> d!23755 (= c!14864 (and ((_ is Cons!1556) (toList!762 lt!42683)) (= (_1!1132 (h!2148 (toList!762 lt!42683))) (_1!1132 lt!42400))))))

(declare-fun e!58190 () Option!147)

(assert (=> d!23755 (= (getValueByKey!141 (toList!762 lt!42683) (_1!1132 lt!42400)) e!58190)))

(declare-fun b!89386 () Bool)

(declare-fun e!58191 () Option!147)

(assert (=> b!89386 (= e!58191 (getValueByKey!141 (t!5322 (toList!762 lt!42683)) (_1!1132 lt!42400)))))

(declare-fun b!89384 () Bool)

(assert (=> b!89384 (= e!58190 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42683)))))))

(declare-fun b!89385 () Bool)

(assert (=> b!89385 (= e!58190 e!58191)))

(declare-fun c!14865 () Bool)

(assert (=> b!89385 (= c!14865 (and ((_ is Cons!1556) (toList!762 lt!42683)) (not (= (_1!1132 (h!2148 (toList!762 lt!42683))) (_1!1132 lt!42400)))))))

(declare-fun b!89387 () Bool)

(assert (=> b!89387 (= e!58191 None!145)))

(assert (= (and d!23755 c!14864) b!89384))

(assert (= (and d!23755 (not c!14864)) b!89385))

(assert (= (and b!89385 c!14865) b!89386))

(assert (= (and b!89385 (not c!14865)) b!89387))

(declare-fun m!95497 () Bool)

(assert (=> b!89386 m!95497))

(assert (=> b!89118 d!23755))

(declare-fun d!23757 () Bool)

(declare-fun e!58192 () Bool)

(assert (=> d!23757 e!58192))

(declare-fun res!45678 () Bool)

(assert (=> d!23757 (=> res!45678 e!58192)))

(declare-fun lt!42781 () Bool)

(assert (=> d!23757 (= res!45678 (not lt!42781))))

(declare-fun lt!42780 () Bool)

(assert (=> d!23757 (= lt!42781 lt!42780)))

(declare-fun lt!42779 () Unit!2654)

(declare-fun e!58193 () Unit!2654)

(assert (=> d!23757 (= lt!42779 e!58193)))

(declare-fun c!14866 () Bool)

(assert (=> d!23757 (= c!14866 lt!42780)))

(assert (=> d!23757 (= lt!42780 (containsKey!145 (toList!762 call!8629) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> d!23757 (= (contains!769 call!8629 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) lt!42781)))

(declare-fun b!89388 () Bool)

(declare-fun lt!42778 () Unit!2654)

(assert (=> b!89388 (= e!58193 lt!42778)))

(assert (=> b!89388 (= lt!42778 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 call!8629) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> b!89388 (isDefined!95 (getValueByKey!141 (toList!762 call!8629) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89389 () Bool)

(declare-fun Unit!2670 () Unit!2654)

(assert (=> b!89389 (= e!58193 Unit!2670)))

(declare-fun b!89390 () Bool)

(assert (=> b!89390 (= e!58192 (isDefined!95 (getValueByKey!141 (toList!762 call!8629) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))))

(assert (= (and d!23757 c!14866) b!89388))

(assert (= (and d!23757 (not c!14866)) b!89389))

(assert (= (and d!23757 (not res!45678)) b!89390))

(assert (=> d!23757 m!94805))

(declare-fun m!95499 () Bool)

(assert (=> d!23757 m!95499))

(assert (=> b!89388 m!94805))

(declare-fun m!95501 () Bool)

(assert (=> b!89388 m!95501))

(assert (=> b!89388 m!94805))

(declare-fun m!95503 () Bool)

(assert (=> b!89388 m!95503))

(assert (=> b!89388 m!95503))

(declare-fun m!95505 () Bool)

(assert (=> b!89388 m!95505))

(assert (=> b!89390 m!94805))

(assert (=> b!89390 m!95503))

(assert (=> b!89390 m!95503))

(assert (=> b!89390 m!95505))

(assert (=> b!89048 d!23757))

(declare-fun d!23759 () Bool)

(assert (=> d!23759 (= (get!1227 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88942 d!23759))

(declare-fun d!23761 () Bool)

(assert (=> d!23761 (= (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!88871 d!23761))

(declare-fun d!23763 () Bool)

(declare-fun c!14867 () Bool)

(assert (=> d!23763 (= c!14867 (and ((_ is Cons!1556) (toList!762 lt!42687)) (= (_1!1132 (h!2148 (toList!762 lt!42687))) (_1!1132 lt!42413))))))

(declare-fun e!58194 () Option!147)

(assert (=> d!23763 (= (getValueByKey!141 (toList!762 lt!42687) (_1!1132 lt!42413)) e!58194)))

(declare-fun b!89393 () Bool)

(declare-fun e!58195 () Option!147)

(assert (=> b!89393 (= e!58195 (getValueByKey!141 (t!5322 (toList!762 lt!42687)) (_1!1132 lt!42413)))))

(declare-fun b!89391 () Bool)

(assert (=> b!89391 (= e!58194 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42687)))))))

(declare-fun b!89392 () Bool)

(assert (=> b!89392 (= e!58194 e!58195)))

(declare-fun c!14868 () Bool)

(assert (=> b!89392 (= c!14868 (and ((_ is Cons!1556) (toList!762 lt!42687)) (not (= (_1!1132 (h!2148 (toList!762 lt!42687))) (_1!1132 lt!42413)))))))

(declare-fun b!89394 () Bool)

(assert (=> b!89394 (= e!58195 None!145)))

(assert (= (and d!23763 c!14867) b!89391))

(assert (= (and d!23763 (not c!14867)) b!89392))

(assert (= (and b!89392 c!14868) b!89393))

(assert (= (and b!89392 (not c!14868)) b!89394))

(declare-fun m!95507 () Bool)

(assert (=> b!89393 m!95507))

(assert (=> b!89120 d!23763))

(declare-fun d!23765 () Bool)

(declare-fun lt!42784 () Bool)

(declare-fun content!93 (List!1560) (InoxSet tuple2!2244))

(assert (=> d!23765 (= lt!42784 (select (content!93 (toList!762 lt!42667)) lt!42400))))

(declare-fun e!58201 () Bool)

(assert (=> d!23765 (= lt!42784 e!58201)))

(declare-fun res!45684 () Bool)

(assert (=> d!23765 (=> (not res!45684) (not e!58201))))

(assert (=> d!23765 (= res!45684 ((_ is Cons!1556) (toList!762 lt!42667)))))

(assert (=> d!23765 (= (contains!771 (toList!762 lt!42667) lt!42400) lt!42784)))

(declare-fun b!89399 () Bool)

(declare-fun e!58200 () Bool)

(assert (=> b!89399 (= e!58201 e!58200)))

(declare-fun res!45683 () Bool)

(assert (=> b!89399 (=> res!45683 e!58200)))

(assert (=> b!89399 (= res!45683 (= (h!2148 (toList!762 lt!42667)) lt!42400))))

(declare-fun b!89400 () Bool)

(assert (=> b!89400 (= e!58200 (contains!771 (t!5322 (toList!762 lt!42667)) lt!42400))))

(assert (= (and d!23765 res!45684) b!89399))

(assert (= (and b!89399 (not res!45683)) b!89400))

(declare-fun m!95509 () Bool)

(assert (=> d!23765 m!95509))

(declare-fun m!95511 () Bool)

(assert (=> d!23765 m!95511))

(declare-fun m!95513 () Bool)

(assert (=> b!89400 m!95513))

(assert (=> b!89113 d!23765))

(declare-fun d!23767 () Bool)

(declare-fun e!58202 () Bool)

(assert (=> d!23767 e!58202))

(declare-fun res!45685 () Bool)

(assert (=> d!23767 (=> (not res!45685) (not e!58202))))

(declare-fun lt!42787 () ListLongMap!1493)

(assert (=> d!23767 (= res!45685 (contains!769 lt!42787 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42785 () List!1560)

(assert (=> d!23767 (= lt!42787 (ListLongMap!1494 lt!42785))))

(declare-fun lt!42786 () Unit!2654)

(declare-fun lt!42788 () Unit!2654)

(assert (=> d!23767 (= lt!42786 lt!42788)))

(assert (=> d!23767 (= (getValueByKey!141 lt!42785 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23767 (= lt!42788 (lemmaContainsTupThenGetReturnValue!60 lt!42785 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23767 (= lt!42785 (insertStrictlySorted!62 (toList!762 call!8559) (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23767 (= (+!119 call!8559 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42787)))

(declare-fun b!89401 () Bool)

(declare-fun res!45686 () Bool)

(assert (=> b!89401 (=> (not res!45686) (not e!58202))))

(assert (=> b!89401 (= res!45686 (= (getValueByKey!141 (toList!762 lt!42787) (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89402 () Bool)

(assert (=> b!89402 (= e!58202 (contains!771 (toList!762 lt!42787) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23767 res!45685) b!89401))

(assert (= (and b!89401 res!45686) b!89402))

(declare-fun m!95515 () Bool)

(assert (=> d!23767 m!95515))

(declare-fun m!95517 () Bool)

(assert (=> d!23767 m!95517))

(declare-fun m!95519 () Bool)

(assert (=> d!23767 m!95519))

(declare-fun m!95521 () Bool)

(assert (=> d!23767 m!95521))

(declare-fun m!95523 () Bool)

(assert (=> b!89401 m!95523))

(declare-fun m!95525 () Bool)

(assert (=> b!89402 m!95525))

(assert (=> b!88917 d!23767))

(declare-fun d!23769 () Bool)

(declare-fun c!14869 () Bool)

(assert (=> d!23769 (= c!14869 (and ((_ is Cons!1556) (toList!762 lt!42691)) (= (_1!1132 (h!2148 (toList!762 lt!42691))) (_1!1132 lt!42402))))))

(declare-fun e!58203 () Option!147)

(assert (=> d!23769 (= (getValueByKey!141 (toList!762 lt!42691) (_1!1132 lt!42402)) e!58203)))

(declare-fun b!89405 () Bool)

(declare-fun e!58204 () Option!147)

(assert (=> b!89405 (= e!58204 (getValueByKey!141 (t!5322 (toList!762 lt!42691)) (_1!1132 lt!42402)))))

(declare-fun b!89403 () Bool)

(assert (=> b!89403 (= e!58203 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42691)))))))

(declare-fun b!89404 () Bool)

(assert (=> b!89404 (= e!58203 e!58204)))

(declare-fun c!14870 () Bool)

(assert (=> b!89404 (= c!14870 (and ((_ is Cons!1556) (toList!762 lt!42691)) (not (= (_1!1132 (h!2148 (toList!762 lt!42691))) (_1!1132 lt!42402)))))))

(declare-fun b!89406 () Bool)

(assert (=> b!89406 (= e!58204 None!145)))

(assert (= (and d!23769 c!14869) b!89403))

(assert (= (and d!23769 (not c!14869)) b!89404))

(assert (= (and b!89404 c!14870) b!89405))

(assert (= (and b!89404 (not c!14870)) b!89406))

(declare-fun m!95527 () Bool)

(assert (=> b!89405 m!95527))

(assert (=> b!89122 d!23769))

(declare-fun d!23771 () Bool)

(declare-fun lt!42789 () Bool)

(assert (=> d!23771 (= lt!42789 (select (content!93 (toList!762 lt!42671)) lt!42402))))

(declare-fun e!58206 () Bool)

(assert (=> d!23771 (= lt!42789 e!58206)))

(declare-fun res!45688 () Bool)

(assert (=> d!23771 (=> (not res!45688) (not e!58206))))

(assert (=> d!23771 (= res!45688 ((_ is Cons!1556) (toList!762 lt!42671)))))

(assert (=> d!23771 (= (contains!771 (toList!762 lt!42671) lt!42402) lt!42789)))

(declare-fun b!89407 () Bool)

(declare-fun e!58205 () Bool)

(assert (=> b!89407 (= e!58206 e!58205)))

(declare-fun res!45687 () Bool)

(assert (=> b!89407 (=> res!45687 e!58205)))

(assert (=> b!89407 (= res!45687 (= (h!2148 (toList!762 lt!42671)) lt!42402))))

(declare-fun b!89408 () Bool)

(assert (=> b!89408 (= e!58205 (contains!771 (t!5322 (toList!762 lt!42671)) lt!42402))))

(assert (= (and d!23771 res!45688) b!89407))

(assert (= (and b!89407 (not res!45687)) b!89408))

(declare-fun m!95529 () Bool)

(assert (=> d!23771 m!95529))

(declare-fun m!95531 () Bool)

(assert (=> d!23771 m!95531))

(declare-fun m!95533 () Bool)

(assert (=> b!89408 m!95533))

(assert (=> b!89115 d!23771))

(assert (=> bm!8558 d!23627))

(declare-fun bm!8669 () Bool)

(declare-fun call!8672 () (_ BitVec 32))

(assert (=> bm!8669 (= call!8672 (arrayCountValidKeys!0 (_keys!4050 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89417 () Bool)

(declare-fun e!58211 () (_ BitVec 32))

(assert (=> b!89417 (= e!58211 (bvadd #b00000000000000000000000000000001 call!8672))))

(declare-fun b!89418 () Bool)

(assert (=> b!89418 (= e!58211 call!8672)))

(declare-fun b!89419 () Bool)

(declare-fun e!58212 () (_ BitVec 32))

(assert (=> b!89419 (= e!58212 #b00000000000000000000000000000000)))

(declare-fun b!89420 () Bool)

(assert (=> b!89420 (= e!58212 e!58211)))

(declare-fun c!14876 () Bool)

(assert (=> b!89420 (= c!14876 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!23773 () Bool)

(declare-fun lt!42792 () (_ BitVec 32))

(assert (=> d!23773 (and (bvsge lt!42792 #b00000000000000000000000000000000) (bvsle lt!42792 (bvsub (size!2176 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!23773 (= lt!42792 e!58212)))

(declare-fun c!14875 () Bool)

(assert (=> d!23773 (= c!14875 (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(assert (=> d!23773 (and (bvsle #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2176 (_keys!4050 newMap!16)) (size!2176 (_keys!4050 newMap!16))))))

(assert (=> d!23773 (= (arrayCountValidKeys!0 (_keys!4050 newMap!16) #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) lt!42792)))

(assert (= (and d!23773 c!14875) b!89419))

(assert (= (and d!23773 (not c!14875)) b!89420))

(assert (= (and b!89420 c!14876) b!89417))

(assert (= (and b!89420 (not c!14876)) b!89418))

(assert (= (or b!89417 b!89418) bm!8669))

(declare-fun m!95535 () Bool)

(assert (=> bm!8669 m!95535))

(assert (=> b!89420 m!95465))

(assert (=> b!89420 m!95465))

(assert (=> b!89420 m!95467))

(assert (=> b!89149 d!23773))

(declare-fun d!23775 () Bool)

(assert (=> d!23775 (= (+!119 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) lt!42611 (zeroValue!2261 newMap!16) lt!42403 #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42795 () Unit!2654)

(declare-fun choose!539 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 V!3043 Int) Unit!2654)

(assert (=> d!23775 (= lt!42795 (choose!539 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) lt!42611 (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) lt!42403 (defaultEntry!2372 newMap!16)))))

(assert (=> d!23775 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23775 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) lt!42611 (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) lt!42403 (defaultEntry!2372 newMap!16)) lt!42795)))

(declare-fun bs!3740 () Bool)

(assert (= bs!3740 d!23775))

(assert (=> bs!3740 m!94947))

(declare-fun m!95537 () Bool)

(assert (=> bs!3740 m!95537))

(assert (=> bs!3740 m!94947))

(declare-fun m!95539 () Bool)

(assert (=> bs!3740 m!95539))

(declare-fun m!95541 () Bool)

(assert (=> bs!3740 m!95541))

(assert (=> bs!3740 m!95265))

(assert (=> b!89058 d!23775))

(declare-fun d!23777 () Bool)

(assert (=> d!23777 (= (apply!84 lt!42523 lt!42526) (get!1228 (getValueByKey!141 (toList!762 lt!42523) lt!42526)))))

(declare-fun bs!3741 () Bool)

(assert (= bs!3741 d!23777))

(declare-fun m!95543 () Bool)

(assert (=> bs!3741 m!95543))

(assert (=> bs!3741 m!95543))

(declare-fun m!95545 () Bool)

(assert (=> bs!3741 m!95545))

(assert (=> b!88928 d!23777))

(declare-fun d!23779 () Bool)

(assert (=> d!23779 (= (apply!84 (+!119 lt!42522 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42533) (apply!84 lt!42522 lt!42533))))

(declare-fun lt!42798 () Unit!2654)

(declare-fun choose!540 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64)) Unit!2654)

(assert (=> d!23779 (= lt!42798 (choose!540 lt!42522 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42533))))

(declare-fun e!58215 () Bool)

(assert (=> d!23779 e!58215))

(declare-fun res!45691 () Bool)

(assert (=> d!23779 (=> (not res!45691) (not e!58215))))

(assert (=> d!23779 (= res!45691 (contains!769 lt!42522 lt!42533))))

(assert (=> d!23779 (= (addApplyDifferent!60 lt!42522 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42533) lt!42798)))

(declare-fun b!89424 () Bool)

(assert (=> b!89424 (= e!58215 (not (= lt!42533 lt!42534)))))

(assert (= (and d!23779 res!45691) b!89424))

(assert (=> d!23779 m!94985))

(declare-fun m!95547 () Bool)

(assert (=> d!23779 m!95547))

(assert (=> d!23779 m!94985))

(assert (=> d!23779 m!94997))

(declare-fun m!95549 () Bool)

(assert (=> d!23779 m!95549))

(assert (=> d!23779 m!94969))

(assert (=> b!88928 d!23779))

(declare-fun d!23781 () Bool)

(assert (=> d!23781 (contains!769 (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42525)))

(declare-fun lt!42801 () Unit!2654)

(declare-fun choose!541 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64)) Unit!2654)

(assert (=> d!23781 (= lt!42801 (choose!541 lt!42536 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42525))))

(assert (=> d!23781 (contains!769 lt!42536 lt!42525)))

(assert (=> d!23781 (= (addStillContains!60 lt!42536 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42525) lt!42801)))

(declare-fun bs!3742 () Bool)

(assert (= bs!3742 d!23781))

(assert (=> bs!3742 m!94981))

(assert (=> bs!3742 m!94981))

(assert (=> bs!3742 m!94983))

(declare-fun m!95551 () Bool)

(assert (=> bs!3742 m!95551))

(declare-fun m!95553 () Bool)

(assert (=> bs!3742 m!95553))

(assert (=> b!88928 d!23781))

(assert (=> b!88928 d!23627))

(declare-fun d!23783 () Bool)

(declare-fun e!58216 () Bool)

(assert (=> d!23783 e!58216))

(declare-fun res!45692 () Bool)

(assert (=> d!23783 (=> (not res!45692) (not e!58216))))

(declare-fun lt!42804 () ListLongMap!1493)

(assert (=> d!23783 (= res!45692 (contains!769 lt!42804 (_1!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42802 () List!1560)

(assert (=> d!23783 (= lt!42804 (ListLongMap!1494 lt!42802))))

(declare-fun lt!42803 () Unit!2654)

(declare-fun lt!42805 () Unit!2654)

(assert (=> d!23783 (= lt!42803 lt!42805)))

(assert (=> d!23783 (= (getValueByKey!141 lt!42802 (_1!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23783 (= lt!42805 (lemmaContainsTupThenGetReturnValue!60 lt!42802 (_1!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23783 (= lt!42802 (insertStrictlySorted!62 (toList!762 lt!42522) (_1!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23783 (= (+!119 lt!42522 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42804)))

(declare-fun b!89426 () Bool)

(declare-fun res!45693 () Bool)

(assert (=> b!89426 (=> (not res!45693) (not e!58216))))

(assert (=> b!89426 (= res!45693 (= (getValueByKey!141 (toList!762 lt!42804) (_1!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89427 () Bool)

(assert (=> b!89427 (= e!58216 (contains!771 (toList!762 lt!42804) (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23783 res!45692) b!89426))

(assert (= (and b!89426 res!45693) b!89427))

(declare-fun m!95555 () Bool)

(assert (=> d!23783 m!95555))

(declare-fun m!95557 () Bool)

(assert (=> d!23783 m!95557))

(declare-fun m!95559 () Bool)

(assert (=> d!23783 m!95559))

(declare-fun m!95561 () Bool)

(assert (=> d!23783 m!95561))

(declare-fun m!95563 () Bool)

(assert (=> b!89426 m!95563))

(declare-fun m!95565 () Bool)

(assert (=> b!89427 m!95565))

(assert (=> b!88928 d!23783))

(declare-fun d!23785 () Bool)

(assert (=> d!23785 (= (apply!84 (+!119 lt!42523 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42526) (get!1228 (getValueByKey!141 (toList!762 (+!119 lt!42523 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!42526)))))

(declare-fun bs!3743 () Bool)

(assert (= bs!3743 d!23785))

(declare-fun m!95567 () Bool)

(assert (=> bs!3743 m!95567))

(assert (=> bs!3743 m!95567))

(declare-fun m!95569 () Bool)

(assert (=> bs!3743 m!95569))

(assert (=> b!88928 d!23785))

(declare-fun d!23787 () Bool)

(declare-fun e!58217 () Bool)

(assert (=> d!23787 e!58217))

(declare-fun res!45694 () Bool)

(assert (=> d!23787 (=> (not res!45694) (not e!58217))))

(declare-fun lt!42808 () ListLongMap!1493)

(assert (=> d!23787 (= res!45694 (contains!769 lt!42808 (_1!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42806 () List!1560)

(assert (=> d!23787 (= lt!42808 (ListLongMap!1494 lt!42806))))

(declare-fun lt!42807 () Unit!2654)

(declare-fun lt!42809 () Unit!2654)

(assert (=> d!23787 (= lt!42807 lt!42809)))

(assert (=> d!23787 (= (getValueByKey!141 lt!42806 (_1!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23787 (= lt!42809 (lemmaContainsTupThenGetReturnValue!60 lt!42806 (_1!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23787 (= lt!42806 (insertStrictlySorted!62 (toList!762 lt!42536) (_1!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23787 (= (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42808)))

(declare-fun b!89428 () Bool)

(declare-fun res!45695 () Bool)

(assert (=> b!89428 (=> (not res!45695) (not e!58217))))

(assert (=> b!89428 (= res!45695 (= (getValueByKey!141 (toList!762 lt!42808) (_1!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89429 () Bool)

(assert (=> b!89429 (= e!58217 (contains!771 (toList!762 lt!42808) (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23787 res!45694) b!89428))

(assert (= (and b!89428 res!45695) b!89429))

(declare-fun m!95571 () Bool)

(assert (=> d!23787 m!95571))

(declare-fun m!95573 () Bool)

(assert (=> d!23787 m!95573))

(declare-fun m!95575 () Bool)

(assert (=> d!23787 m!95575))

(declare-fun m!95577 () Bool)

(assert (=> d!23787 m!95577))

(declare-fun m!95579 () Bool)

(assert (=> b!89428 m!95579))

(declare-fun m!95581 () Bool)

(assert (=> b!89429 m!95581))

(assert (=> b!88928 d!23787))

(declare-fun d!23789 () Bool)

(assert (=> d!23789 (= (apply!84 (+!119 lt!42524 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42528) (apply!84 lt!42524 lt!42528))))

(declare-fun lt!42810 () Unit!2654)

(assert (=> d!23789 (= lt!42810 (choose!540 lt!42524 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42528))))

(declare-fun e!58218 () Bool)

(assert (=> d!23789 e!58218))

(declare-fun res!45696 () Bool)

(assert (=> d!23789 (=> (not res!45696) (not e!58218))))

(assert (=> d!23789 (= res!45696 (contains!769 lt!42524 lt!42528))))

(assert (=> d!23789 (= (addApplyDifferent!60 lt!42524 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42528) lt!42810)))

(declare-fun b!89430 () Bool)

(assert (=> b!89430 (= e!58218 (not (= lt!42528 lt!42541)))))

(assert (= (and d!23789 res!45696) b!89430))

(assert (=> d!23789 m!94973))

(declare-fun m!95583 () Bool)

(assert (=> d!23789 m!95583))

(assert (=> d!23789 m!94973))

(assert (=> d!23789 m!94989))

(declare-fun m!95585 () Bool)

(assert (=> d!23789 m!95585))

(assert (=> d!23789 m!94987))

(assert (=> b!88928 d!23789))

(declare-fun d!23791 () Bool)

(assert (=> d!23791 (= (apply!84 (+!119 lt!42523 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42526) (apply!84 lt!42523 lt!42526))))

(declare-fun lt!42811 () Unit!2654)

(assert (=> d!23791 (= lt!42811 (choose!540 lt!42523 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42526))))

(declare-fun e!58219 () Bool)

(assert (=> d!23791 e!58219))

(declare-fun res!45697 () Bool)

(assert (=> d!23791 (=> (not res!45697) (not e!58219))))

(assert (=> d!23791 (= res!45697 (contains!769 lt!42523 lt!42526))))

(assert (=> d!23791 (= (addApplyDifferent!60 lt!42523 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))) lt!42526) lt!42811)))

(declare-fun b!89431 () Bool)

(assert (=> b!89431 (= e!58219 (not (= lt!42526 lt!42542)))))

(assert (= (and d!23791 res!45697) b!89431))

(assert (=> d!23791 m!94977))

(declare-fun m!95587 () Bool)

(assert (=> d!23791 m!95587))

(assert (=> d!23791 m!94977))

(assert (=> d!23791 m!94979))

(declare-fun m!95589 () Bool)

(assert (=> d!23791 m!95589))

(assert (=> d!23791 m!94993))

(assert (=> b!88928 d!23791))

(declare-fun d!23793 () Bool)

(assert (=> d!23793 (= (apply!84 lt!42524 lt!42528) (get!1228 (getValueByKey!141 (toList!762 lt!42524) lt!42528)))))

(declare-fun bs!3744 () Bool)

(assert (= bs!3744 d!23793))

(declare-fun m!95591 () Bool)

(assert (=> bs!3744 m!95591))

(assert (=> bs!3744 m!95591))

(declare-fun m!95593 () Bool)

(assert (=> bs!3744 m!95593))

(assert (=> b!88928 d!23793))

(declare-fun d!23795 () Bool)

(declare-fun e!58220 () Bool)

(assert (=> d!23795 e!58220))

(declare-fun res!45698 () Bool)

(assert (=> d!23795 (=> (not res!45698) (not e!58220))))

(declare-fun lt!42814 () ListLongMap!1493)

(assert (=> d!23795 (= res!45698 (contains!769 lt!42814 (_1!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42812 () List!1560)

(assert (=> d!23795 (= lt!42814 (ListLongMap!1494 lt!42812))))

(declare-fun lt!42813 () Unit!2654)

(declare-fun lt!42815 () Unit!2654)

(assert (=> d!23795 (= lt!42813 lt!42815)))

(assert (=> d!23795 (= (getValueByKey!141 lt!42812 (_1!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23795 (= lt!42815 (lemmaContainsTupThenGetReturnValue!60 lt!42812 (_1!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23795 (= lt!42812 (insertStrictlySorted!62 (toList!762 lt!42523) (_1!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23795 (= (+!119 lt!42523 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42814)))

(declare-fun b!89432 () Bool)

(declare-fun res!45699 () Bool)

(assert (=> b!89432 (=> (not res!45699) (not e!58220))))

(assert (=> b!89432 (= res!45699 (= (getValueByKey!141 (toList!762 lt!42814) (_1!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89433 () Bool)

(assert (=> b!89433 (= e!58220 (contains!771 (toList!762 lt!42814) (tuple2!2245 lt!42542 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23795 res!45698) b!89432))

(assert (= (and b!89432 res!45699) b!89433))

(declare-fun m!95595 () Bool)

(assert (=> d!23795 m!95595))

(declare-fun m!95597 () Bool)

(assert (=> d!23795 m!95597))

(declare-fun m!95599 () Bool)

(assert (=> d!23795 m!95599))

(declare-fun m!95601 () Bool)

(assert (=> d!23795 m!95601))

(declare-fun m!95603 () Bool)

(assert (=> b!89432 m!95603))

(declare-fun m!95605 () Bool)

(assert (=> b!89433 m!95605))

(assert (=> b!88928 d!23795))

(declare-fun d!23797 () Bool)

(assert (=> d!23797 (= (apply!84 (+!119 lt!42522 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42533) (get!1228 (getValueByKey!141 (toList!762 (+!119 lt!42522 (tuple2!2245 lt!42534 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!42533)))))

(declare-fun bs!3745 () Bool)

(assert (= bs!3745 d!23797))

(declare-fun m!95607 () Bool)

(assert (=> bs!3745 m!95607))

(assert (=> bs!3745 m!95607))

(declare-fun m!95609 () Bool)

(assert (=> bs!3745 m!95609))

(assert (=> b!88928 d!23797))

(declare-fun d!23799 () Bool)

(assert (=> d!23799 (= (apply!84 (+!119 lt!42524 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42528) (get!1228 (getValueByKey!141 (toList!762 (+!119 lt!42524 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!42528)))))

(declare-fun bs!3746 () Bool)

(assert (= bs!3746 d!23799))

(declare-fun m!95611 () Bool)

(assert (=> bs!3746 m!95611))

(assert (=> bs!3746 m!95611))

(declare-fun m!95613 () Bool)

(assert (=> bs!3746 m!95613))

(assert (=> b!88928 d!23799))

(declare-fun d!23801 () Bool)

(assert (=> d!23801 (= (apply!84 lt!42522 lt!42533) (get!1228 (getValueByKey!141 (toList!762 lt!42522) lt!42533)))))

(declare-fun bs!3747 () Bool)

(assert (= bs!3747 d!23801))

(declare-fun m!95615 () Bool)

(assert (=> bs!3747 m!95615))

(assert (=> bs!3747 m!95615))

(declare-fun m!95617 () Bool)

(assert (=> bs!3747 m!95617))

(assert (=> b!88928 d!23801))

(declare-fun d!23803 () Bool)

(declare-fun e!58221 () Bool)

(assert (=> d!23803 e!58221))

(declare-fun res!45700 () Bool)

(assert (=> d!23803 (=> (not res!45700) (not e!58221))))

(declare-fun lt!42818 () ListLongMap!1493)

(assert (=> d!23803 (= res!45700 (contains!769 lt!42818 (_1!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42816 () List!1560)

(assert (=> d!23803 (= lt!42818 (ListLongMap!1494 lt!42816))))

(declare-fun lt!42817 () Unit!2654)

(declare-fun lt!42819 () Unit!2654)

(assert (=> d!23803 (= lt!42817 lt!42819)))

(assert (=> d!23803 (= (getValueByKey!141 lt!42816 (_1!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23803 (= lt!42819 (lemmaContainsTupThenGetReturnValue!60 lt!42816 (_1!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23803 (= lt!42816 (insertStrictlySorted!62 (toList!762 lt!42524) (_1!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23803 (= (+!119 lt!42524 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42818)))

(declare-fun b!89434 () Bool)

(declare-fun res!45701 () Bool)

(assert (=> b!89434 (=> (not res!45701) (not e!58221))))

(assert (=> b!89434 (= res!45701 (= (getValueByKey!141 (toList!762 lt!42818) (_1!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89435 () Bool)

(assert (=> b!89435 (= e!58221 (contains!771 (toList!762 lt!42818) (tuple2!2245 lt!42541 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23803 res!45700) b!89434))

(assert (= (and b!89434 res!45701) b!89435))

(declare-fun m!95619 () Bool)

(assert (=> d!23803 m!95619))

(declare-fun m!95621 () Bool)

(assert (=> d!23803 m!95621))

(declare-fun m!95623 () Bool)

(assert (=> d!23803 m!95623))

(declare-fun m!95625 () Bool)

(assert (=> d!23803 m!95625))

(declare-fun m!95627 () Bool)

(assert (=> b!89434 m!95627))

(declare-fun m!95629 () Bool)

(assert (=> b!89435 m!95629))

(assert (=> b!88928 d!23803))

(declare-fun d!23805 () Bool)

(declare-fun e!58222 () Bool)

(assert (=> d!23805 e!58222))

(declare-fun res!45702 () Bool)

(assert (=> d!23805 (=> res!45702 e!58222)))

(declare-fun lt!42823 () Bool)

(assert (=> d!23805 (= res!45702 (not lt!42823))))

(declare-fun lt!42822 () Bool)

(assert (=> d!23805 (= lt!42823 lt!42822)))

(declare-fun lt!42821 () Unit!2654)

(declare-fun e!58223 () Unit!2654)

(assert (=> d!23805 (= lt!42821 e!58223)))

(declare-fun c!14877 () Bool)

(assert (=> d!23805 (= c!14877 lt!42822)))

(assert (=> d!23805 (= lt!42822 (containsKey!145 (toList!762 (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!42525))))

(assert (=> d!23805 (= (contains!769 (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42525) lt!42823)))

(declare-fun b!89436 () Bool)

(declare-fun lt!42820 () Unit!2654)

(assert (=> b!89436 (= e!58223 lt!42820)))

(assert (=> b!89436 (= lt!42820 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!42525))))

(assert (=> b!89436 (isDefined!95 (getValueByKey!141 (toList!762 (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!42525))))

(declare-fun b!89437 () Bool)

(declare-fun Unit!2671 () Unit!2654)

(assert (=> b!89437 (= e!58223 Unit!2671)))

(declare-fun b!89438 () Bool)

(assert (=> b!89438 (= e!58222 (isDefined!95 (getValueByKey!141 (toList!762 (+!119 lt!42536 (tuple2!2245 lt!42535 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!42525)))))

(assert (= (and d!23805 c!14877) b!89436))

(assert (= (and d!23805 (not c!14877)) b!89437))

(assert (= (and d!23805 (not res!45702)) b!89438))

(declare-fun m!95631 () Bool)

(assert (=> d!23805 m!95631))

(declare-fun m!95633 () Bool)

(assert (=> b!89436 m!95633))

(declare-fun m!95635 () Bool)

(assert (=> b!89436 m!95635))

(assert (=> b!89436 m!95635))

(declare-fun m!95637 () Bool)

(assert (=> b!89436 m!95637))

(assert (=> b!89438 m!95635))

(assert (=> b!89438 m!95635))

(assert (=> b!89438 m!95637))

(assert (=> b!88928 d!23805))

(declare-fun d!23807 () Bool)

(declare-fun e!58224 () Bool)

(assert (=> d!23807 e!58224))

(declare-fun res!45703 () Bool)

(assert (=> d!23807 (=> (not res!45703) (not e!58224))))

(declare-fun lt!42826 () ListLongMap!1493)

(assert (=> d!23807 (= res!45703 (contains!769 lt!42826 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42824 () List!1560)

(assert (=> d!23807 (= lt!42826 (ListLongMap!1494 lt!42824))))

(declare-fun lt!42825 () Unit!2654)

(declare-fun lt!42827 () Unit!2654)

(assert (=> d!23807 (= lt!42825 lt!42827)))

(assert (=> d!23807 (= (getValueByKey!141 lt!42824 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23807 (= lt!42827 (lemmaContainsTupThenGetReturnValue!60 lt!42824 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23807 (= lt!42824 (insertStrictlySorted!62 (toList!762 lt!42399) (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23807 (= (+!119 lt!42399 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42826)))

(declare-fun b!89439 () Bool)

(declare-fun res!45704 () Bool)

(assert (=> b!89439 (=> (not res!45704) (not e!58224))))

(assert (=> b!89439 (= res!45704 (= (getValueByKey!141 (toList!762 lt!42826) (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89440 () Bool)

(assert (=> b!89440 (= e!58224 (contains!771 (toList!762 lt!42826) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23807 res!45703) b!89439))

(assert (= (and b!89439 res!45704) b!89440))

(declare-fun m!95639 () Bool)

(assert (=> d!23807 m!95639))

(declare-fun m!95641 () Bool)

(assert (=> d!23807 m!95641))

(declare-fun m!95643 () Bool)

(assert (=> d!23807 m!95643))

(declare-fun m!95645 () Bool)

(assert (=> d!23807 m!95645))

(declare-fun m!95647 () Bool)

(assert (=> b!89439 m!95647))

(declare-fun m!95649 () Bool)

(assert (=> b!89440 m!95649))

(assert (=> d!23633 d!23807))

(declare-fun d!23809 () Bool)

(declare-fun e!58225 () Bool)

(assert (=> d!23809 e!58225))

(declare-fun res!45705 () Bool)

(assert (=> d!23809 (=> (not res!45705) (not e!58225))))

(declare-fun lt!42830 () ListLongMap!1493)

(assert (=> d!23809 (= res!45705 (contains!769 lt!42830 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun lt!42828 () List!1560)

(assert (=> d!23809 (= lt!42830 (ListLongMap!1494 lt!42828))))

(declare-fun lt!42829 () Unit!2654)

(declare-fun lt!42831 () Unit!2654)

(assert (=> d!23809 (= lt!42829 lt!42831)))

(assert (=> d!23809 (= (getValueByKey!141 lt!42828 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23809 (= lt!42831 (lemmaContainsTupThenGetReturnValue!60 lt!42828 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23809 (= lt!42828 (insertStrictlySorted!62 (toList!762 (+!119 lt!42399 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23809 (= (+!119 (+!119 lt!42399 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) lt!42830)))

(declare-fun b!89441 () Bool)

(declare-fun res!45706 () Bool)

(assert (=> b!89441 (=> (not res!45706) (not e!58225))))

(assert (=> b!89441 (= res!45706 (= (getValueByKey!141 (toList!762 lt!42830) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(declare-fun b!89442 () Bool)

(assert (=> b!89442 (= e!58225 (contains!771 (toList!762 lt!42830) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(assert (= (and d!23809 res!45705) b!89441))

(assert (= (and b!89441 res!45706) b!89442))

(declare-fun m!95651 () Bool)

(assert (=> d!23809 m!95651))

(declare-fun m!95653 () Bool)

(assert (=> d!23809 m!95653))

(declare-fun m!95655 () Bool)

(assert (=> d!23809 m!95655))

(declare-fun m!95657 () Bool)

(assert (=> d!23809 m!95657))

(declare-fun m!95659 () Bool)

(assert (=> b!89441 m!95659))

(declare-fun m!95661 () Bool)

(assert (=> b!89442 m!95661))

(assert (=> d!23633 d!23809))

(declare-fun d!23811 () Bool)

(assert (=> d!23811 (= (+!119 (+!119 lt!42399 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (+!119 (+!119 lt!42399 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(assert (=> d!23811 true))

(declare-fun _$28!150 () Unit!2654)

(assert (=> d!23811 (= (choose!534 lt!42399 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))) _$28!150)))

(declare-fun bs!3748 () Bool)

(assert (= bs!3748 d!23811))

(assert (=> bs!3748 m!95113))

(assert (=> bs!3748 m!95113))

(assert (=> bs!3748 m!95119))

(assert (=> bs!3748 m!95115))

(assert (=> bs!3748 m!95115))

(assert (=> bs!3748 m!95121))

(assert (=> d!23633 d!23811))

(declare-fun d!23813 () Bool)

(declare-fun e!58226 () Bool)

(assert (=> d!23813 e!58226))

(declare-fun res!45707 () Bool)

(assert (=> d!23813 (=> (not res!45707) (not e!58226))))

(declare-fun lt!42834 () ListLongMap!1493)

(assert (=> d!23813 (= res!45707 (contains!769 lt!42834 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun lt!42832 () List!1560)

(assert (=> d!23813 (= lt!42834 (ListLongMap!1494 lt!42832))))

(declare-fun lt!42833 () Unit!2654)

(declare-fun lt!42835 () Unit!2654)

(assert (=> d!23813 (= lt!42833 lt!42835)))

(assert (=> d!23813 (= (getValueByKey!141 lt!42832 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23813 (= lt!42835 (lemmaContainsTupThenGetReturnValue!60 lt!42832 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23813 (= lt!42832 (insertStrictlySorted!62 (toList!762 lt!42399) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23813 (= (+!119 lt!42399 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) lt!42834)))

(declare-fun b!89443 () Bool)

(declare-fun res!45708 () Bool)

(assert (=> b!89443 (=> (not res!45708) (not e!58226))))

(assert (=> b!89443 (= res!45708 (= (getValueByKey!141 (toList!762 lt!42834) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(declare-fun b!89444 () Bool)

(assert (=> b!89444 (= e!58226 (contains!771 (toList!762 lt!42834) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(assert (= (and d!23813 res!45707) b!89443))

(assert (= (and b!89443 res!45708) b!89444))

(declare-fun m!95663 () Bool)

(assert (=> d!23813 m!95663))

(declare-fun m!95665 () Bool)

(assert (=> d!23813 m!95665))

(declare-fun m!95667 () Bool)

(assert (=> d!23813 m!95667))

(declare-fun m!95669 () Bool)

(assert (=> d!23813 m!95669))

(declare-fun m!95671 () Bool)

(assert (=> b!89443 m!95671))

(declare-fun m!95673 () Bool)

(assert (=> b!89444 m!95673))

(assert (=> d!23633 d!23813))

(declare-fun d!23815 () Bool)

(declare-fun e!58227 () Bool)

(assert (=> d!23815 e!58227))

(declare-fun res!45709 () Bool)

(assert (=> d!23815 (=> (not res!45709) (not e!58227))))

(declare-fun lt!42838 () ListLongMap!1493)

(assert (=> d!23815 (= res!45709 (contains!769 lt!42838 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42836 () List!1560)

(assert (=> d!23815 (= lt!42838 (ListLongMap!1494 lt!42836))))

(declare-fun lt!42837 () Unit!2654)

(declare-fun lt!42839 () Unit!2654)

(assert (=> d!23815 (= lt!42837 lt!42839)))

(assert (=> d!23815 (= (getValueByKey!141 lt!42836 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23815 (= lt!42839 (lemmaContainsTupThenGetReturnValue!60 lt!42836 (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23815 (= lt!42836 (insertStrictlySorted!62 (toList!762 (+!119 lt!42399 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23815 (= (+!119 (+!119 lt!42399 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42838)))

(declare-fun b!89445 () Bool)

(declare-fun res!45710 () Bool)

(assert (=> b!89445 (=> (not res!45710) (not e!58227))))

(assert (=> b!89445 (= res!45710 (= (getValueByKey!141 (toList!762 lt!42838) (_1!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89446 () Bool)

(assert (=> b!89446 (= e!58227 (contains!771 (toList!762 lt!42838) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23815 res!45709) b!89445))

(assert (= (and b!89445 res!45710) b!89446))

(declare-fun m!95675 () Bool)

(assert (=> d!23815 m!95675))

(declare-fun m!95677 () Bool)

(assert (=> d!23815 m!95677))

(declare-fun m!95679 () Bool)

(assert (=> d!23815 m!95679))

(declare-fun m!95681 () Bool)

(assert (=> d!23815 m!95681))

(declare-fun m!95683 () Bool)

(assert (=> b!89445 m!95683))

(declare-fun m!95685 () Bool)

(assert (=> b!89446 m!95685))

(assert (=> d!23633 d!23815))

(declare-fun b!89459 () Bool)

(declare-fun e!58236 () SeekEntryResult!255)

(assert (=> b!89459 (= e!58236 Undefined!255)))

(declare-fun b!89460 () Bool)

(declare-fun e!58234 () SeekEntryResult!255)

(declare-fun lt!42847 () SeekEntryResult!255)

(assert (=> b!89460 (= e!58234 (Found!255 (index!3161 lt!42847)))))

(declare-fun b!89461 () Bool)

(assert (=> b!89461 (= e!58236 e!58234)))

(declare-fun lt!42846 () (_ BitVec 64))

(assert (=> b!89461 (= lt!42846 (select (arr!1930 (_keys!4050 newMap!16)) (index!3161 lt!42847)))))

(declare-fun c!14884 () Bool)

(assert (=> b!89461 (= c!14884 (= lt!42846 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89462 () Bool)

(declare-fun e!58235 () SeekEntryResult!255)

(assert (=> b!89462 (= e!58235 (MissingZero!255 (index!3161 lt!42847)))))

(declare-fun b!89463 () Bool)

(declare-fun c!14885 () Bool)

(assert (=> b!89463 (= c!14885 (= lt!42846 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89463 (= e!58234 e!58235)))

(declare-fun d!23817 () Bool)

(declare-fun lt!42848 () SeekEntryResult!255)

(assert (=> d!23817 (and (or ((_ is Undefined!255) lt!42848) (not ((_ is Found!255) lt!42848)) (and (bvsge (index!3160 lt!42848) #b00000000000000000000000000000000) (bvslt (index!3160 lt!42848) (size!2176 (_keys!4050 newMap!16))))) (or ((_ is Undefined!255) lt!42848) ((_ is Found!255) lt!42848) (not ((_ is MissingZero!255) lt!42848)) (and (bvsge (index!3159 lt!42848) #b00000000000000000000000000000000) (bvslt (index!3159 lt!42848) (size!2176 (_keys!4050 newMap!16))))) (or ((_ is Undefined!255) lt!42848) ((_ is Found!255) lt!42848) ((_ is MissingZero!255) lt!42848) (not ((_ is MissingVacant!255) lt!42848)) (and (bvsge (index!3162 lt!42848) #b00000000000000000000000000000000) (bvslt (index!3162 lt!42848) (size!2176 (_keys!4050 newMap!16))))) (or ((_ is Undefined!255) lt!42848) (ite ((_ is Found!255) lt!42848) (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42848)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (ite ((_ is MissingZero!255) lt!42848) (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3159 lt!42848)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!255) lt!42848) (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3162 lt!42848)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23817 (= lt!42848 e!58236)))

(declare-fun c!14886 () Bool)

(assert (=> d!23817 (= c!14886 (and ((_ is Intermediate!255) lt!42847) (undefined!1067 lt!42847)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4056 (_ BitVec 32)) SeekEntryResult!255)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!23817 (= lt!42847 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (mask!6416 newMap!16)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(assert (=> d!23817 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23817 (= (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)) lt!42848)))

(declare-fun b!89464 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4056 (_ BitVec 32)) SeekEntryResult!255)

(assert (=> b!89464 (= e!58235 (seekKeyOrZeroReturnVacant!0 (x!12241 lt!42847) (index!3161 lt!42847) (index!3161 lt!42847) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(assert (= (and d!23817 c!14886) b!89459))

(assert (= (and d!23817 (not c!14886)) b!89461))

(assert (= (and b!89461 c!14884) b!89460))

(assert (= (and b!89461 (not c!14884)) b!89463))

(assert (= (and b!89463 c!14885) b!89462))

(assert (= (and b!89463 (not c!14885)) b!89464))

(declare-fun m!95687 () Bool)

(assert (=> b!89461 m!95687))

(declare-fun m!95689 () Bool)

(assert (=> d!23817 m!95689))

(declare-fun m!95691 () Bool)

(assert (=> d!23817 m!95691))

(assert (=> d!23817 m!95265))

(assert (=> d!23817 m!94805))

(declare-fun m!95693 () Bool)

(assert (=> d!23817 m!95693))

(declare-fun m!95695 () Bool)

(assert (=> d!23817 m!95695))

(assert (=> d!23817 m!95693))

(assert (=> d!23817 m!94805))

(declare-fun m!95697 () Bool)

(assert (=> d!23817 m!95697))

(assert (=> b!89464 m!94805))

(declare-fun m!95699 () Bool)

(assert (=> b!89464 m!95699))

(assert (=> bm!8632 d!23817))

(assert (=> d!23615 d!23645))

(declare-fun d!23819 () Bool)

(declare-fun e!58237 () Bool)

(assert (=> d!23819 e!58237))

(declare-fun res!45711 () Bool)

(assert (=> d!23819 (=> (not res!45711) (not e!58237))))

(declare-fun lt!42851 () ListLongMap!1493)

(assert (=> d!23819 (= res!45711 (contains!769 lt!42851 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun lt!42849 () List!1560)

(assert (=> d!23819 (= lt!42851 (ListLongMap!1494 lt!42849))))

(declare-fun lt!42850 () Unit!2654)

(declare-fun lt!42852 () Unit!2654)

(assert (=> d!23819 (= lt!42850 lt!42852)))

(assert (=> d!23819 (= (getValueByKey!141 lt!42849 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23819 (= lt!42852 (lemmaContainsTupThenGetReturnValue!60 lt!42849 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23819 (= lt!42849 (insertStrictlySorted!62 (toList!762 (+!119 lt!42398 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23819 (= (+!119 (+!119 lt!42398 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) lt!42851)))

(declare-fun b!89465 () Bool)

(declare-fun res!45712 () Bool)

(assert (=> b!89465 (=> (not res!45712) (not e!58237))))

(assert (=> b!89465 (= res!45712 (= (getValueByKey!141 (toList!762 lt!42851) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(declare-fun b!89466 () Bool)

(assert (=> b!89466 (= e!58237 (contains!771 (toList!762 lt!42851) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(assert (= (and d!23819 res!45711) b!89465))

(assert (= (and b!89465 res!45712) b!89466))

(declare-fun m!95701 () Bool)

(assert (=> d!23819 m!95701))

(declare-fun m!95703 () Bool)

(assert (=> d!23819 m!95703))

(declare-fun m!95705 () Bool)

(assert (=> d!23819 m!95705))

(declare-fun m!95707 () Bool)

(assert (=> d!23819 m!95707))

(declare-fun m!95709 () Bool)

(assert (=> b!89465 m!95709))

(declare-fun m!95711 () Bool)

(assert (=> b!89466 m!95711))

(assert (=> d!23635 d!23819))

(declare-fun d!23821 () Bool)

(assert (=> d!23821 (= (+!119 (+!119 lt!42398 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (+!119 (+!119 lt!42398 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(assert (=> d!23821 true))

(declare-fun _$28!151 () Unit!2654)

(assert (=> d!23821 (= (choose!534 lt!42398 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) _$28!151)))

(declare-fun bs!3749 () Bool)

(assert (= bs!3749 d!23821))

(assert (=> bs!3749 m!95123))

(assert (=> bs!3749 m!95123))

(assert (=> bs!3749 m!95129))

(assert (=> bs!3749 m!95125))

(assert (=> bs!3749 m!95125))

(assert (=> bs!3749 m!95131))

(assert (=> d!23635 d!23821))

(declare-fun d!23823 () Bool)

(declare-fun e!58238 () Bool)

(assert (=> d!23823 e!58238))

(declare-fun res!45713 () Bool)

(assert (=> d!23823 (=> (not res!45713) (not e!58238))))

(declare-fun lt!42855 () ListLongMap!1493)

(assert (=> d!23823 (= res!45713 (contains!769 lt!42855 (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42853 () List!1560)

(assert (=> d!23823 (= lt!42855 (ListLongMap!1494 lt!42853))))

(declare-fun lt!42854 () Unit!2654)

(declare-fun lt!42856 () Unit!2654)

(assert (=> d!23823 (= lt!42854 lt!42856)))

(assert (=> d!23823 (= (getValueByKey!141 lt!42853 (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23823 (= lt!42856 (lemmaContainsTupThenGetReturnValue!60 lt!42853 (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23823 (= lt!42853 (insertStrictlySorted!62 (toList!762 (+!119 lt!42398 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23823 (= (+!119 (+!119 lt!42398 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42855)))

(declare-fun b!89467 () Bool)

(declare-fun res!45714 () Bool)

(assert (=> b!89467 (=> (not res!45714) (not e!58238))))

(assert (=> b!89467 (= res!45714 (= (getValueByKey!141 (toList!762 lt!42855) (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89468 () Bool)

(assert (=> b!89468 (= e!58238 (contains!771 (toList!762 lt!42855) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23823 res!45713) b!89467))

(assert (= (and b!89467 res!45714) b!89468))

(declare-fun m!95713 () Bool)

(assert (=> d!23823 m!95713))

(declare-fun m!95715 () Bool)

(assert (=> d!23823 m!95715))

(declare-fun m!95717 () Bool)

(assert (=> d!23823 m!95717))

(declare-fun m!95719 () Bool)

(assert (=> d!23823 m!95719))

(declare-fun m!95721 () Bool)

(assert (=> b!89467 m!95721))

(declare-fun m!95723 () Bool)

(assert (=> b!89468 m!95723))

(assert (=> d!23635 d!23823))

(declare-fun d!23825 () Bool)

(declare-fun e!58239 () Bool)

(assert (=> d!23825 e!58239))

(declare-fun res!45715 () Bool)

(assert (=> d!23825 (=> (not res!45715) (not e!58239))))

(declare-fun lt!42859 () ListLongMap!1493)

(assert (=> d!23825 (= res!45715 (contains!769 lt!42859 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun lt!42857 () List!1560)

(assert (=> d!23825 (= lt!42859 (ListLongMap!1494 lt!42857))))

(declare-fun lt!42858 () Unit!2654)

(declare-fun lt!42860 () Unit!2654)

(assert (=> d!23825 (= lt!42858 lt!42860)))

(assert (=> d!23825 (= (getValueByKey!141 lt!42857 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23825 (= lt!42860 (lemmaContainsTupThenGetReturnValue!60 lt!42857 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23825 (= lt!42857 (insertStrictlySorted!62 (toList!762 lt!42398) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23825 (= (+!119 lt!42398 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) lt!42859)))

(declare-fun b!89469 () Bool)

(declare-fun res!45716 () Bool)

(assert (=> b!89469 (=> (not res!45716) (not e!58239))))

(assert (=> b!89469 (= res!45716 (= (getValueByKey!141 (toList!762 lt!42859) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(declare-fun b!89470 () Bool)

(assert (=> b!89470 (= e!58239 (contains!771 (toList!762 lt!42859) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(assert (= (and d!23825 res!45715) b!89469))

(assert (= (and b!89469 res!45716) b!89470))

(declare-fun m!95725 () Bool)

(assert (=> d!23825 m!95725))

(declare-fun m!95727 () Bool)

(assert (=> d!23825 m!95727))

(declare-fun m!95729 () Bool)

(assert (=> d!23825 m!95729))

(declare-fun m!95731 () Bool)

(assert (=> d!23825 m!95731))

(declare-fun m!95733 () Bool)

(assert (=> b!89469 m!95733))

(declare-fun m!95735 () Bool)

(assert (=> b!89470 m!95735))

(assert (=> d!23635 d!23825))

(declare-fun d!23827 () Bool)

(declare-fun e!58240 () Bool)

(assert (=> d!23827 e!58240))

(declare-fun res!45717 () Bool)

(assert (=> d!23827 (=> (not res!45717) (not e!58240))))

(declare-fun lt!42863 () ListLongMap!1493)

(assert (=> d!23827 (= res!45717 (contains!769 lt!42863 (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(declare-fun lt!42861 () List!1560)

(assert (=> d!23827 (= lt!42863 (ListLongMap!1494 lt!42861))))

(declare-fun lt!42862 () Unit!2654)

(declare-fun lt!42864 () Unit!2654)

(assert (=> d!23827 (= lt!42862 lt!42864)))

(assert (=> d!23827 (= (getValueByKey!141 lt!42861 (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23827 (= lt!42864 (lemmaContainsTupThenGetReturnValue!60 lt!42861 (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23827 (= lt!42861 (insertStrictlySorted!62 (toList!762 lt!42398) (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (=> d!23827 (= (+!119 lt!42398 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))) lt!42863)))

(declare-fun b!89471 () Bool)

(declare-fun res!45718 () Bool)

(assert (=> b!89471 (=> (not res!45718) (not e!58240))))

(assert (=> b!89471 (= res!45718 (= (getValueByKey!141 (toList!762 lt!42863) (_1!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))))) (Some!146 (_2!1132 (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun b!89472 () Bool)

(assert (=> b!89472 (= e!58240 (contains!771 (toList!762 lt!42863) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992))))))))

(assert (= (and d!23827 res!45717) b!89471))

(assert (= (and b!89471 res!45718) b!89472))

(declare-fun m!95737 () Bool)

(assert (=> d!23827 m!95737))

(declare-fun m!95739 () Bool)

(assert (=> d!23827 m!95739))

(declare-fun m!95741 () Bool)

(assert (=> d!23827 m!95741))

(declare-fun m!95743 () Bool)

(assert (=> d!23827 m!95743))

(declare-fun m!95745 () Bool)

(assert (=> b!89471 m!95745))

(declare-fun m!95747 () Bool)

(assert (=> b!89472 m!95747))

(assert (=> d!23635 d!23827))

(declare-fun d!23829 () Bool)

(declare-fun lt!42865 () Bool)

(assert (=> d!23829 (= lt!42865 (select (content!93 (toList!762 lt!42679)) lt!42400))))

(declare-fun e!58242 () Bool)

(assert (=> d!23829 (= lt!42865 e!58242)))

(declare-fun res!45720 () Bool)

(assert (=> d!23829 (=> (not res!45720) (not e!58242))))

(assert (=> d!23829 (= res!45720 ((_ is Cons!1556) (toList!762 lt!42679)))))

(assert (=> d!23829 (= (contains!771 (toList!762 lt!42679) lt!42400) lt!42865)))

(declare-fun b!89473 () Bool)

(declare-fun e!58241 () Bool)

(assert (=> b!89473 (= e!58242 e!58241)))

(declare-fun res!45719 () Bool)

(assert (=> b!89473 (=> res!45719 e!58241)))

(assert (=> b!89473 (= res!45719 (= (h!2148 (toList!762 lt!42679)) lt!42400))))

(declare-fun b!89474 () Bool)

(assert (=> b!89474 (= e!58241 (contains!771 (t!5322 (toList!762 lt!42679)) lt!42400))))

(assert (= (and d!23829 res!45720) b!89473))

(assert (= (and b!89473 (not res!45719)) b!89474))

(declare-fun m!95749 () Bool)

(assert (=> d!23829 m!95749))

(declare-fun m!95751 () Bool)

(assert (=> d!23829 m!95751))

(declare-fun m!95753 () Bool)

(assert (=> b!89474 m!95753))

(assert (=> b!89117 d!23829))

(assert (=> b!89106 d!23697))

(declare-fun d!23831 () Bool)

(assert (=> d!23831 (= (get!1226 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2675 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> b!88941 d!23831))

(declare-fun b!89475 () Bool)

(declare-fun e!58247 () Bool)

(declare-fun call!8676 () Bool)

(assert (=> b!89475 (= e!58247 (not call!8676))))

(declare-fun bm!8670 () Bool)

(declare-fun call!8679 () Bool)

(declare-fun lt!42875 () ListLongMap!1493)

(assert (=> bm!8670 (= call!8679 (contains!769 lt!42875 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!23833 () Bool)

(declare-fun e!58248 () Bool)

(assert (=> d!23833 e!58248))

(declare-fun res!45727 () Bool)

(assert (=> d!23833 (=> (not res!45727) (not e!58248))))

(assert (=> d!23833 (= res!45727 (or (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))))

(declare-fun lt!42882 () ListLongMap!1493)

(assert (=> d!23833 (= lt!42875 lt!42882)))

(declare-fun lt!42866 () Unit!2654)

(declare-fun e!58250 () Unit!2654)

(assert (=> d!23833 (= lt!42866 e!58250)))

(declare-fun c!14892 () Bool)

(declare-fun e!58251 () Bool)

(assert (=> d!23833 (= c!14892 e!58251)))

(declare-fun res!45728 () Bool)

(assert (=> d!23833 (=> (not res!45728) (not e!58251))))

(assert (=> d!23833 (= res!45728 (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun e!58254 () ListLongMap!1493)

(assert (=> d!23833 (= lt!42882 e!58254)))

(declare-fun c!14891 () Bool)

(assert (=> d!23833 (= c!14891 (and (not (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23833 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23833 (= (getCurrentListMap!445 (_keys!4050 newMap!16) (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))) (mask!6416 newMap!16) (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) lt!42875)))

(declare-fun call!8675 () ListLongMap!1493)

(declare-fun b!89476 () Bool)

(assert (=> b!89476 (= e!58254 (+!119 call!8675 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)))))))

(declare-fun bm!8671 () Bool)

(declare-fun call!8678 () ListLongMap!1493)

(declare-fun call!8677 () ListLongMap!1493)

(assert (=> bm!8671 (= call!8678 call!8677)))

(declare-fun b!89477 () Bool)

(declare-fun e!58249 () Bool)

(declare-fun e!58245 () Bool)

(assert (=> b!89477 (= e!58249 e!58245)))

(declare-fun res!45723 () Bool)

(assert (=> b!89477 (=> (not res!45723) (not e!58245))))

(assert (=> b!89477 (= res!45723 (contains!769 lt!42875 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!89477 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89478 () Bool)

(declare-fun e!58253 () Bool)

(assert (=> b!89478 (= e!58253 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89479 () Bool)

(declare-fun Unit!2672 () Unit!2654)

(assert (=> b!89479 (= e!58250 Unit!2672)))

(declare-fun bm!8672 () Bool)

(declare-fun call!8673 () ListLongMap!1493)

(assert (=> bm!8672 (= call!8677 call!8673)))

(declare-fun b!89480 () Bool)

(declare-fun e!58243 () Bool)

(assert (=> b!89480 (= e!58247 e!58243)))

(declare-fun res!45724 () Bool)

(assert (=> b!89480 (= res!45724 call!8676)))

(assert (=> b!89480 (=> (not res!45724) (not e!58243))))

(declare-fun b!89481 () Bool)

(declare-fun e!58244 () Bool)

(assert (=> b!89481 (= e!58244 (= (apply!84 lt!42875 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16))))))

(declare-fun bm!8673 () Bool)

(assert (=> bm!8673 (= call!8676 (contains!769 lt!42875 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89482 () Bool)

(assert (=> b!89482 (= e!58243 (= (apply!84 lt!42875 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16))))))

(declare-fun b!89483 () Bool)

(declare-fun e!58255 () Bool)

(assert (=> b!89483 (= e!58255 e!58244)))

(declare-fun res!45726 () Bool)

(assert (=> b!89483 (= res!45726 call!8679)))

(assert (=> b!89483 (=> (not res!45726) (not e!58244))))

(declare-fun b!89484 () Bool)

(assert (=> b!89484 (= e!58245 (= (apply!84 lt!42875 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)) (get!1225 (select (arr!1931 (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!355 (defaultEntry!2372 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!89484 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2177 (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))))))))

(assert (=> b!89484 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89485 () Bool)

(assert (=> b!89485 (= e!58251 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89486 () Bool)

(declare-fun c!14887 () Bool)

(assert (=> b!89486 (= c!14887 (and (not (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!58252 () ListLongMap!1493)

(declare-fun e!58246 () ListLongMap!1493)

(assert (=> b!89486 (= e!58252 e!58246)))

(declare-fun b!89487 () Bool)

(declare-fun lt!42883 () Unit!2654)

(assert (=> b!89487 (= e!58250 lt!42883)))

(declare-fun lt!42881 () ListLongMap!1493)

(assert (=> b!89487 (= lt!42881 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))) (mask!6416 newMap!16) (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42880 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42880 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42870 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42870 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42872 () Unit!2654)

(assert (=> b!89487 (= lt!42872 (addStillContains!60 lt!42881 lt!42880 (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) lt!42870))))

(assert (=> b!89487 (contains!769 (+!119 lt!42881 (tuple2!2245 lt!42880 (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)))) lt!42870)))

(declare-fun lt!42884 () Unit!2654)

(assert (=> b!89487 (= lt!42884 lt!42872)))

(declare-fun lt!42869 () ListLongMap!1493)

(assert (=> b!89487 (= lt!42869 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))) (mask!6416 newMap!16) (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42886 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42886 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42873 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42873 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42874 () Unit!2654)

(assert (=> b!89487 (= lt!42874 (addApplyDifferent!60 lt!42869 lt!42886 (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) lt!42873))))

(assert (=> b!89487 (= (apply!84 (+!119 lt!42869 (tuple2!2245 lt!42886 (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)))) lt!42873) (apply!84 lt!42869 lt!42873))))

(declare-fun lt!42876 () Unit!2654)

(assert (=> b!89487 (= lt!42876 lt!42874)))

(declare-fun lt!42868 () ListLongMap!1493)

(assert (=> b!89487 (= lt!42868 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))) (mask!6416 newMap!16) (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42887 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42887 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42871 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42871 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42885 () Unit!2654)

(assert (=> b!89487 (= lt!42885 (addApplyDifferent!60 lt!42868 lt!42887 (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) lt!42871))))

(assert (=> b!89487 (= (apply!84 (+!119 lt!42868 (tuple2!2245 lt!42887 (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)))) lt!42871) (apply!84 lt!42868 lt!42871))))

(declare-fun lt!42877 () Unit!2654)

(assert (=> b!89487 (= lt!42877 lt!42885)))

(declare-fun lt!42867 () ListLongMap!1493)

(assert (=> b!89487 (= lt!42867 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))) (mask!6416 newMap!16) (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42879 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42879 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42878 () (_ BitVec 64))

(assert (=> b!89487 (= lt!42878 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!89487 (= lt!42883 (addApplyDifferent!60 lt!42867 lt!42879 (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) lt!42878))))

(assert (=> b!89487 (= (apply!84 (+!119 lt!42867 (tuple2!2245 lt!42879 (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)))) lt!42878) (apply!84 lt!42867 lt!42878))))

(declare-fun b!89488 () Bool)

(assert (=> b!89488 (= e!58248 e!58247)))

(declare-fun c!14888 () Bool)

(assert (=> b!89488 (= c!14888 (not (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!89489 () Bool)

(declare-fun res!45729 () Bool)

(assert (=> b!89489 (=> (not res!45729) (not e!58248))))

(assert (=> b!89489 (= res!45729 e!58249)))

(declare-fun res!45722 () Bool)

(assert (=> b!89489 (=> res!45722 e!58249)))

(assert (=> b!89489 (= res!45722 (not e!58253))))

(declare-fun res!45721 () Bool)

(assert (=> b!89489 (=> (not res!45721) (not e!58253))))

(assert (=> b!89489 (= res!45721 (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89490 () Bool)

(assert (=> b!89490 (= e!58255 (not call!8679))))

(declare-fun b!89491 () Bool)

(assert (=> b!89491 (= e!58246 call!8678)))

(declare-fun b!89492 () Bool)

(assert (=> b!89492 (= e!58254 e!58252)))

(declare-fun c!14889 () Bool)

(assert (=> b!89492 (= c!14889 (and (not (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!89493 () Bool)

(declare-fun call!8674 () ListLongMap!1493)

(assert (=> b!89493 (= e!58252 call!8674)))

(declare-fun bm!8674 () Bool)

(assert (=> bm!8674 (= call!8673 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite c!14768 (_values!2355 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16)))) (mask!6416 newMap!16) (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16)) (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun bm!8675 () Bool)

(assert (=> bm!8675 (= call!8675 (+!119 (ite c!14891 call!8673 (ite c!14889 call!8677 call!8678)) (ite (or c!14891 c!14889) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!14768 c!14769) lt!42403 (zeroValue!2261 newMap!16))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!14768 (ite c!14769 (minValue!2261 newMap!16) lt!42403) (minValue!2261 newMap!16))))))))

(declare-fun b!89494 () Bool)

(declare-fun res!45725 () Bool)

(assert (=> b!89494 (=> (not res!45725) (not e!58248))))

(assert (=> b!89494 (= res!45725 e!58255)))

(declare-fun c!14890 () Bool)

(assert (=> b!89494 (= c!14890 (not (= (bvand (ite c!14768 (ite c!14769 lt!42627 lt!42611) (extraKeys!2205 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!89495 () Bool)

(assert (=> b!89495 (= e!58246 call!8674)))

(declare-fun bm!8676 () Bool)

(assert (=> bm!8676 (= call!8674 call!8675)))

(assert (= (and d!23833 c!14891) b!89476))

(assert (= (and d!23833 (not c!14891)) b!89492))

(assert (= (and b!89492 c!14889) b!89493))

(assert (= (and b!89492 (not c!14889)) b!89486))

(assert (= (and b!89486 c!14887) b!89495))

(assert (= (and b!89486 (not c!14887)) b!89491))

(assert (= (or b!89495 b!89491) bm!8671))

(assert (= (or b!89493 bm!8671) bm!8672))

(assert (= (or b!89493 b!89495) bm!8676))

(assert (= (or b!89476 bm!8672) bm!8674))

(assert (= (or b!89476 bm!8676) bm!8675))

(assert (= (and d!23833 res!45728) b!89485))

(assert (= (and d!23833 c!14892) b!89487))

(assert (= (and d!23833 (not c!14892)) b!89479))

(assert (= (and d!23833 res!45727) b!89489))

(assert (= (and b!89489 res!45721) b!89478))

(assert (= (and b!89489 (not res!45722)) b!89477))

(assert (= (and b!89477 res!45723) b!89484))

(assert (= (and b!89489 res!45729) b!89494))

(assert (= (and b!89494 c!14890) b!89483))

(assert (= (and b!89494 (not c!14890)) b!89490))

(assert (= (and b!89483 res!45726) b!89481))

(assert (= (or b!89483 b!89490) bm!8670))

(assert (= (and b!89494 res!45725) b!89488))

(assert (= (and b!89488 c!14888) b!89480))

(assert (= (and b!89488 (not c!14888)) b!89475))

(assert (= (and b!89480 res!45724) b!89482))

(assert (= (or b!89480 b!89475) bm!8673))

(declare-fun b_lambda!3955 () Bool)

(assert (=> (not b_lambda!3955) (not b!89484)))

(declare-fun tb!1737 () Bool)

(declare-fun t!5328 () Bool)

(assert (=> (and b!88775 (= (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) (defaultEntry!2372 newMap!16)) t!5328) tb!1737))

(declare-fun result!2983 () Bool)

(assert (=> tb!1737 (= result!2983 tp_is_empty!2547)))

(assert (=> b!89484 t!5328))

(declare-fun b_and!5365 () Bool)

(assert (= b_and!5361 (and (=> t!5328 result!2983) b_and!5365)))

(declare-fun t!5330 () Bool)

(declare-fun tb!1739 () Bool)

(assert (=> (and b!88759 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 newMap!16)) t!5330) tb!1739))

(declare-fun result!2985 () Bool)

(assert (= result!2985 result!2983))

(assert (=> b!89484 t!5330))

(declare-fun b_and!5367 () Bool)

(assert (= b_and!5363 (and (=> t!5330 result!2985) b_and!5367)))

(assert (=> b!89478 m!95465))

(assert (=> b!89478 m!95465))

(assert (=> b!89478 m!95467))

(declare-fun m!95755 () Bool)

(assert (=> b!89484 m!95755))

(declare-fun m!95757 () Bool)

(assert (=> b!89484 m!95757))

(declare-fun m!95759 () Bool)

(assert (=> b!89484 m!95759))

(assert (=> b!89484 m!95755))

(assert (=> b!89484 m!95465))

(declare-fun m!95761 () Bool)

(assert (=> b!89484 m!95761))

(assert (=> b!89484 m!95465))

(assert (=> b!89484 m!95757))

(declare-fun m!95763 () Bool)

(assert (=> bm!8675 m!95763))

(declare-fun m!95765 () Bool)

(assert (=> bm!8670 m!95765))

(declare-fun m!95767 () Bool)

(assert (=> b!89482 m!95767))

(declare-fun m!95769 () Bool)

(assert (=> bm!8673 m!95769))

(declare-fun m!95771 () Bool)

(assert (=> b!89476 m!95771))

(declare-fun m!95773 () Bool)

(assert (=> bm!8674 m!95773))

(assert (=> b!89485 m!95465))

(assert (=> b!89485 m!95465))

(assert (=> b!89485 m!95467))

(declare-fun m!95775 () Bool)

(assert (=> b!89487 m!95775))

(declare-fun m!95777 () Bool)

(assert (=> b!89487 m!95777))

(declare-fun m!95779 () Bool)

(assert (=> b!89487 m!95779))

(declare-fun m!95781 () Bool)

(assert (=> b!89487 m!95781))

(declare-fun m!95783 () Bool)

(assert (=> b!89487 m!95783))

(declare-fun m!95785 () Bool)

(assert (=> b!89487 m!95785))

(declare-fun m!95787 () Bool)

(assert (=> b!89487 m!95787))

(declare-fun m!95789 () Bool)

(assert (=> b!89487 m!95789))

(declare-fun m!95791 () Bool)

(assert (=> b!89487 m!95791))

(assert (=> b!89487 m!95465))

(assert (=> b!89487 m!95787))

(assert (=> b!89487 m!95783))

(declare-fun m!95793 () Bool)

(assert (=> b!89487 m!95793))

(assert (=> b!89487 m!95779))

(declare-fun m!95795 () Bool)

(assert (=> b!89487 m!95795))

(declare-fun m!95797 () Bool)

(assert (=> b!89487 m!95797))

(assert (=> b!89487 m!95773))

(declare-fun m!95799 () Bool)

(assert (=> b!89487 m!95799))

(declare-fun m!95801 () Bool)

(assert (=> b!89487 m!95801))

(assert (=> b!89487 m!95791))

(declare-fun m!95803 () Bool)

(assert (=> b!89487 m!95803))

(assert (=> d!23833 m!95265))

(declare-fun m!95805 () Bool)

(assert (=> b!89481 m!95805))

(assert (=> b!89477 m!95465))

(assert (=> b!89477 m!95465))

(declare-fun m!95807 () Bool)

(assert (=> b!89477 m!95807))

(assert (=> bm!8624 d!23833))

(declare-fun d!23835 () Bool)

(declare-fun e!58256 () Bool)

(assert (=> d!23835 e!58256))

(declare-fun res!45730 () Bool)

(assert (=> d!23835 (=> res!45730 e!58256)))

(declare-fun lt!42891 () Bool)

(assert (=> d!23835 (= res!45730 (not lt!42891))))

(declare-fun lt!42890 () Bool)

(assert (=> d!23835 (= lt!42891 lt!42890)))

(declare-fun lt!42889 () Unit!2654)

(declare-fun e!58257 () Unit!2654)

(assert (=> d!23835 (= lt!42889 e!58257)))

(declare-fun c!14893 () Bool)

(assert (=> d!23835 (= c!14893 lt!42890)))

(assert (=> d!23835 (= lt!42890 (containsKey!145 (toList!762 lt!42530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23835 (= (contains!769 lt!42530 #b1000000000000000000000000000000000000000000000000000000000000000) lt!42891)))

(declare-fun b!89496 () Bool)

(declare-fun lt!42888 () Unit!2654)

(assert (=> b!89496 (= e!58257 lt!42888)))

(assert (=> b!89496 (= lt!42888 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89496 (isDefined!95 (getValueByKey!141 (toList!762 lt!42530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89497 () Bool)

(declare-fun Unit!2673 () Unit!2654)

(assert (=> b!89497 (= e!58257 Unit!2673)))

(declare-fun b!89498 () Bool)

(assert (=> b!89498 (= e!58256 (isDefined!95 (getValueByKey!141 (toList!762 lt!42530) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23835 c!14893) b!89496))

(assert (= (and d!23835 (not c!14893)) b!89497))

(assert (= (and d!23835 (not res!45730)) b!89498))

(declare-fun m!95809 () Bool)

(assert (=> d!23835 m!95809))

(declare-fun m!95811 () Bool)

(assert (=> b!89496 m!95811))

(assert (=> b!89496 m!95317))

(assert (=> b!89496 m!95317))

(declare-fun m!95813 () Bool)

(assert (=> b!89496 m!95813))

(assert (=> b!89498 m!95317))

(assert (=> b!89498 m!95317))

(assert (=> b!89498 m!95813))

(assert (=> bm!8557 d!23835))

(declare-fun b!89499 () Bool)

(declare-fun e!58262 () Bool)

(declare-fun call!8683 () Bool)

(assert (=> b!89499 (= e!58262 (not call!8683))))

(declare-fun bm!8677 () Bool)

(declare-fun call!8686 () Bool)

(declare-fun lt!42901 () ListLongMap!1493)

(assert (=> bm!8677 (= call!8686 (contains!769 lt!42901 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!23837 () Bool)

(declare-fun e!58263 () Bool)

(assert (=> d!23837 e!58263))

(declare-fun res!45737 () Bool)

(assert (=> d!23837 (=> (not res!45737) (not e!58263))))

(assert (=> d!23837 (= res!45737 (or (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))))

(declare-fun lt!42908 () ListLongMap!1493)

(assert (=> d!23837 (= lt!42901 lt!42908)))

(declare-fun lt!42892 () Unit!2654)

(declare-fun e!58265 () Unit!2654)

(assert (=> d!23837 (= lt!42892 e!58265)))

(declare-fun c!14899 () Bool)

(declare-fun e!58266 () Bool)

(assert (=> d!23837 (= c!14899 e!58266)))

(declare-fun res!45738 () Bool)

(assert (=> d!23837 (=> (not res!45738) (not e!58266))))

(assert (=> d!23837 (= res!45738 (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun e!58269 () ListLongMap!1493)

(assert (=> d!23837 (= lt!42908 e!58269)))

(declare-fun c!14898 () Bool)

(assert (=> d!23837 (= c!14898 (and (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23837 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23837 (= (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) lt!42901)))

(declare-fun b!89500 () Bool)

(declare-fun call!8682 () ListLongMap!1493)

(assert (=> b!89500 (= e!58269 (+!119 call!8682 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 newMap!16))))))

(declare-fun bm!8678 () Bool)

(declare-fun call!8685 () ListLongMap!1493)

(declare-fun call!8684 () ListLongMap!1493)

(assert (=> bm!8678 (= call!8685 call!8684)))

(declare-fun b!89501 () Bool)

(declare-fun e!58264 () Bool)

(declare-fun e!58260 () Bool)

(assert (=> b!89501 (= e!58264 e!58260)))

(declare-fun res!45733 () Bool)

(assert (=> b!89501 (=> (not res!45733) (not e!58260))))

(assert (=> b!89501 (= res!45733 (contains!769 lt!42901 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!89501 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89502 () Bool)

(declare-fun e!58268 () Bool)

(assert (=> b!89502 (= e!58268 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89503 () Bool)

(declare-fun Unit!2674 () Unit!2654)

(assert (=> b!89503 (= e!58265 Unit!2674)))

(declare-fun bm!8679 () Bool)

(declare-fun call!8680 () ListLongMap!1493)

(assert (=> bm!8679 (= call!8684 call!8680)))

(declare-fun b!89504 () Bool)

(declare-fun e!58258 () Bool)

(assert (=> b!89504 (= e!58262 e!58258)))

(declare-fun res!45734 () Bool)

(assert (=> b!89504 (= res!45734 call!8683)))

(assert (=> b!89504 (=> (not res!45734) (not e!58258))))

(declare-fun b!89505 () Bool)

(declare-fun e!58259 () Bool)

(assert (=> b!89505 (= e!58259 (= (apply!84 lt!42901 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2261 newMap!16)))))

(declare-fun bm!8680 () Bool)

(assert (=> bm!8680 (= call!8683 (contains!769 lt!42901 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89506 () Bool)

(assert (=> b!89506 (= e!58258 (= (apply!84 lt!42901 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2261 newMap!16)))))

(declare-fun b!89507 () Bool)

(declare-fun e!58270 () Bool)

(assert (=> b!89507 (= e!58270 e!58259)))

(declare-fun res!45736 () Bool)

(assert (=> b!89507 (= res!45736 call!8686)))

(assert (=> b!89507 (=> (not res!45736) (not e!58259))))

(declare-fun b!89508 () Bool)

(assert (=> b!89508 (= e!58260 (= (apply!84 lt!42901 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)) (get!1225 (select (arr!1931 (_values!2355 newMap!16)) #b00000000000000000000000000000000) (dynLambda!355 (defaultEntry!2372 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!89508 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2177 (_values!2355 newMap!16))))))

(assert (=> b!89508 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89509 () Bool)

(assert (=> b!89509 (= e!58266 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89510 () Bool)

(declare-fun c!14894 () Bool)

(assert (=> b!89510 (= c!14894 (and (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!58267 () ListLongMap!1493)

(declare-fun e!58261 () ListLongMap!1493)

(assert (=> b!89510 (= e!58267 e!58261)))

(declare-fun b!89511 () Bool)

(declare-fun lt!42909 () Unit!2654)

(assert (=> b!89511 (= e!58265 lt!42909)))

(declare-fun lt!42907 () ListLongMap!1493)

(assert (=> b!89511 (= lt!42907 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42906 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42906 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42896 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42896 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42898 () Unit!2654)

(assert (=> b!89511 (= lt!42898 (addStillContains!60 lt!42907 lt!42906 (zeroValue!2261 newMap!16) lt!42896))))

(assert (=> b!89511 (contains!769 (+!119 lt!42907 (tuple2!2245 lt!42906 (zeroValue!2261 newMap!16))) lt!42896)))

(declare-fun lt!42910 () Unit!2654)

(assert (=> b!89511 (= lt!42910 lt!42898)))

(declare-fun lt!42895 () ListLongMap!1493)

(assert (=> b!89511 (= lt!42895 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42912 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42912 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42899 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42899 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42900 () Unit!2654)

(assert (=> b!89511 (= lt!42900 (addApplyDifferent!60 lt!42895 lt!42912 (minValue!2261 newMap!16) lt!42899))))

(assert (=> b!89511 (= (apply!84 (+!119 lt!42895 (tuple2!2245 lt!42912 (minValue!2261 newMap!16))) lt!42899) (apply!84 lt!42895 lt!42899))))

(declare-fun lt!42902 () Unit!2654)

(assert (=> b!89511 (= lt!42902 lt!42900)))

(declare-fun lt!42894 () ListLongMap!1493)

(assert (=> b!89511 (= lt!42894 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42913 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42913 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42897 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42897 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42911 () Unit!2654)

(assert (=> b!89511 (= lt!42911 (addApplyDifferent!60 lt!42894 lt!42913 (zeroValue!2261 newMap!16) lt!42897))))

(assert (=> b!89511 (= (apply!84 (+!119 lt!42894 (tuple2!2245 lt!42913 (zeroValue!2261 newMap!16))) lt!42897) (apply!84 lt!42894 lt!42897))))

(declare-fun lt!42903 () Unit!2654)

(assert (=> b!89511 (= lt!42903 lt!42911)))

(declare-fun lt!42893 () ListLongMap!1493)

(assert (=> b!89511 (= lt!42893 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42905 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42905 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42904 () (_ BitVec 64))

(assert (=> b!89511 (= lt!42904 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!89511 (= lt!42909 (addApplyDifferent!60 lt!42893 lt!42905 (minValue!2261 newMap!16) lt!42904))))

(assert (=> b!89511 (= (apply!84 (+!119 lt!42893 (tuple2!2245 lt!42905 (minValue!2261 newMap!16))) lt!42904) (apply!84 lt!42893 lt!42904))))

(declare-fun b!89512 () Bool)

(assert (=> b!89512 (= e!58263 e!58262)))

(declare-fun c!14895 () Bool)

(assert (=> b!89512 (= c!14895 (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!89513 () Bool)

(declare-fun res!45739 () Bool)

(assert (=> b!89513 (=> (not res!45739) (not e!58263))))

(assert (=> b!89513 (= res!45739 e!58264)))

(declare-fun res!45732 () Bool)

(assert (=> b!89513 (=> res!45732 e!58264)))

(assert (=> b!89513 (= res!45732 (not e!58268))))

(declare-fun res!45731 () Bool)

(assert (=> b!89513 (=> (not res!45731) (not e!58268))))

(assert (=> b!89513 (= res!45731 (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89514 () Bool)

(assert (=> b!89514 (= e!58270 (not call!8686))))

(declare-fun b!89515 () Bool)

(assert (=> b!89515 (= e!58261 call!8685)))

(declare-fun b!89516 () Bool)

(assert (=> b!89516 (= e!58269 e!58267)))

(declare-fun c!14896 () Bool)

(assert (=> b!89516 (= c!14896 (and (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!89517 () Bool)

(declare-fun call!8681 () ListLongMap!1493)

(assert (=> b!89517 (= e!58267 call!8681)))

(declare-fun bm!8681 () Bool)

(assert (=> bm!8681 (= call!8680 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun bm!8682 () Bool)

(assert (=> bm!8682 (= call!8682 (+!119 (ite c!14898 call!8680 (ite c!14896 call!8684 call!8685)) (ite (or c!14898 c!14896) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 newMap!16)) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 newMap!16)))))))

(declare-fun b!89518 () Bool)

(declare-fun res!45735 () Bool)

(assert (=> b!89518 (=> (not res!45735) (not e!58263))))

(assert (=> b!89518 (= res!45735 e!58270)))

(declare-fun c!14897 () Bool)

(assert (=> b!89518 (= c!14897 (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!89519 () Bool)

(assert (=> b!89519 (= e!58261 call!8681)))

(declare-fun bm!8683 () Bool)

(assert (=> bm!8683 (= call!8681 call!8682)))

(assert (= (and d!23837 c!14898) b!89500))

(assert (= (and d!23837 (not c!14898)) b!89516))

(assert (= (and b!89516 c!14896) b!89517))

(assert (= (and b!89516 (not c!14896)) b!89510))

(assert (= (and b!89510 c!14894) b!89519))

(assert (= (and b!89510 (not c!14894)) b!89515))

(assert (= (or b!89519 b!89515) bm!8678))

(assert (= (or b!89517 bm!8678) bm!8679))

(assert (= (or b!89517 b!89519) bm!8683))

(assert (= (or b!89500 bm!8679) bm!8681))

(assert (= (or b!89500 bm!8683) bm!8682))

(assert (= (and d!23837 res!45738) b!89509))

(assert (= (and d!23837 c!14899) b!89511))

(assert (= (and d!23837 (not c!14899)) b!89503))

(assert (= (and d!23837 res!45737) b!89513))

(assert (= (and b!89513 res!45731) b!89502))

(assert (= (and b!89513 (not res!45732)) b!89501))

(assert (= (and b!89501 res!45733) b!89508))

(assert (= (and b!89513 res!45739) b!89518))

(assert (= (and b!89518 c!14897) b!89507))

(assert (= (and b!89518 (not c!14897)) b!89514))

(assert (= (and b!89507 res!45736) b!89505))

(assert (= (or b!89507 b!89514) bm!8677))

(assert (= (and b!89518 res!45735) b!89512))

(assert (= (and b!89512 c!14895) b!89504))

(assert (= (and b!89512 (not c!14895)) b!89499))

(assert (= (and b!89504 res!45734) b!89506))

(assert (= (or b!89504 b!89499) bm!8680))

(declare-fun b_lambda!3957 () Bool)

(assert (=> (not b_lambda!3957) (not b!89508)))

(assert (=> b!89508 t!5328))

(declare-fun b_and!5369 () Bool)

(assert (= b_and!5365 (and (=> t!5328 result!2983) b_and!5369)))

(assert (=> b!89508 t!5330))

(declare-fun b_and!5371 () Bool)

(assert (= b_and!5367 (and (=> t!5330 result!2985) b_and!5371)))

(assert (=> b!89502 m!95465))

(assert (=> b!89502 m!95465))

(assert (=> b!89502 m!95467))

(declare-fun m!95815 () Bool)

(assert (=> b!89508 m!95815))

(assert (=> b!89508 m!95757))

(declare-fun m!95817 () Bool)

(assert (=> b!89508 m!95817))

(assert (=> b!89508 m!95815))

(assert (=> b!89508 m!95465))

(declare-fun m!95819 () Bool)

(assert (=> b!89508 m!95819))

(assert (=> b!89508 m!95465))

(assert (=> b!89508 m!95757))

(declare-fun m!95821 () Bool)

(assert (=> bm!8682 m!95821))

(declare-fun m!95823 () Bool)

(assert (=> bm!8677 m!95823))

(declare-fun m!95825 () Bool)

(assert (=> b!89506 m!95825))

(declare-fun m!95827 () Bool)

(assert (=> bm!8680 m!95827))

(declare-fun m!95829 () Bool)

(assert (=> b!89500 m!95829))

(declare-fun m!95831 () Bool)

(assert (=> bm!8681 m!95831))

(assert (=> b!89509 m!95465))

(assert (=> b!89509 m!95465))

(assert (=> b!89509 m!95467))

(declare-fun m!95833 () Bool)

(assert (=> b!89511 m!95833))

(declare-fun m!95835 () Bool)

(assert (=> b!89511 m!95835))

(declare-fun m!95837 () Bool)

(assert (=> b!89511 m!95837))

(declare-fun m!95839 () Bool)

(assert (=> b!89511 m!95839))

(declare-fun m!95841 () Bool)

(assert (=> b!89511 m!95841))

(declare-fun m!95843 () Bool)

(assert (=> b!89511 m!95843))

(declare-fun m!95845 () Bool)

(assert (=> b!89511 m!95845))

(declare-fun m!95847 () Bool)

(assert (=> b!89511 m!95847))

(declare-fun m!95849 () Bool)

(assert (=> b!89511 m!95849))

(assert (=> b!89511 m!95465))

(assert (=> b!89511 m!95845))

(assert (=> b!89511 m!95841))

(declare-fun m!95851 () Bool)

(assert (=> b!89511 m!95851))

(assert (=> b!89511 m!95837))

(declare-fun m!95853 () Bool)

(assert (=> b!89511 m!95853))

(declare-fun m!95855 () Bool)

(assert (=> b!89511 m!95855))

(assert (=> b!89511 m!95831))

(declare-fun m!95857 () Bool)

(assert (=> b!89511 m!95857))

(declare-fun m!95859 () Bool)

(assert (=> b!89511 m!95859))

(assert (=> b!89511 m!95849))

(declare-fun m!95861 () Bool)

(assert (=> b!89511 m!95861))

(assert (=> d!23837 m!95265))

(declare-fun m!95863 () Bool)

(assert (=> b!89505 m!95863))

(assert (=> b!89501 m!95465))

(assert (=> b!89501 m!95465))

(declare-fun m!95865 () Bool)

(assert (=> b!89501 m!95865))

(assert (=> d!23613 d!23837))

(declare-fun d!23839 () Bool)

(declare-fun lt!42914 () Bool)

(assert (=> d!23839 (= lt!42914 (select (content!93 (toList!762 lt!42695)) lt!42413))))

(declare-fun e!58272 () Bool)

(assert (=> d!23839 (= lt!42914 e!58272)))

(declare-fun res!45741 () Bool)

(assert (=> d!23839 (=> (not res!45741) (not e!58272))))

(assert (=> d!23839 (= res!45741 ((_ is Cons!1556) (toList!762 lt!42695)))))

(assert (=> d!23839 (= (contains!771 (toList!762 lt!42695) lt!42413) lt!42914)))

(declare-fun b!89520 () Bool)

(declare-fun e!58271 () Bool)

(assert (=> b!89520 (= e!58272 e!58271)))

(declare-fun res!45740 () Bool)

(assert (=> b!89520 (=> res!45740 e!58271)))

(assert (=> b!89520 (= res!45740 (= (h!2148 (toList!762 lt!42695)) lt!42413))))

(declare-fun b!89521 () Bool)

(assert (=> b!89521 (= e!58271 (contains!771 (t!5322 (toList!762 lt!42695)) lt!42413))))

(assert (= (and d!23839 res!45741) b!89520))

(assert (= (and b!89520 (not res!45740)) b!89521))

(declare-fun m!95867 () Bool)

(assert (=> d!23839 m!95867))

(declare-fun m!95869 () Bool)

(assert (=> d!23839 m!95869))

(declare-fun m!95871 () Bool)

(assert (=> b!89521 m!95871))

(assert (=> b!89125 d!23839))

(assert (=> b!89097 d!23725))

(declare-fun d!23841 () Bool)

(declare-fun e!58273 () Bool)

(assert (=> d!23841 e!58273))

(declare-fun res!45742 () Bool)

(assert (=> d!23841 (=> (not res!45742) (not e!58273))))

(declare-fun lt!42917 () ListLongMap!1493)

(assert (=> d!23841 (= res!45742 (contains!769 lt!42917 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!42915 () List!1560)

(assert (=> d!23841 (= lt!42917 (ListLongMap!1494 lt!42915))))

(declare-fun lt!42916 () Unit!2654)

(declare-fun lt!42918 () Unit!2654)

(assert (=> d!23841 (= lt!42916 lt!42918)))

(assert (=> d!23841 (= (getValueByKey!141 lt!42915 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23841 (= lt!42918 (lemmaContainsTupThenGetReturnValue!60 lt!42915 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23841 (= lt!42915 (insertStrictlySorted!62 (toList!762 call!8638) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23841 (= (+!119 call!8638 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!42917)))

(declare-fun b!89522 () Bool)

(declare-fun res!45743 () Bool)

(assert (=> b!89522 (=> (not res!45743) (not e!58273))))

(assert (=> b!89522 (= res!45743 (= (getValueByKey!141 (toList!762 lt!42917) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!89523 () Bool)

(assert (=> b!89523 (= e!58273 (contains!771 (toList!762 lt!42917) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1225 (select (arr!1931 (_values!2355 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!355 (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!23841 res!45742) b!89522))

(assert (= (and b!89522 res!45743) b!89523))

(declare-fun m!95873 () Bool)

(assert (=> d!23841 m!95873))

(declare-fun m!95875 () Bool)

(assert (=> d!23841 m!95875))

(declare-fun m!95877 () Bool)

(assert (=> d!23841 m!95877))

(declare-fun m!95879 () Bool)

(assert (=> d!23841 m!95879))

(declare-fun m!95881 () Bool)

(assert (=> b!89522 m!95881))

(declare-fun m!95883 () Bool)

(assert (=> b!89523 m!95883))

(assert (=> b!89097 d!23841))

(declare-fun d!23843 () Bool)

(declare-fun e!58274 () Bool)

(assert (=> d!23843 e!58274))

(declare-fun res!45744 () Bool)

(assert (=> d!23843 (=> (not res!45744) (not e!58274))))

(declare-fun lt!42921 () ListLongMap!1493)

(assert (=> d!23843 (= res!45744 (contains!769 lt!42921 (_1!1132 (tuple2!2245 lt!42656 lt!42655))))))

(declare-fun lt!42919 () List!1560)

(assert (=> d!23843 (= lt!42921 (ListLongMap!1494 lt!42919))))

(declare-fun lt!42920 () Unit!2654)

(declare-fun lt!42922 () Unit!2654)

(assert (=> d!23843 (= lt!42920 lt!42922)))

(assert (=> d!23843 (= (getValueByKey!141 lt!42919 (_1!1132 (tuple2!2245 lt!42656 lt!42655))) (Some!146 (_2!1132 (tuple2!2245 lt!42656 lt!42655))))))

(assert (=> d!23843 (= lt!42922 (lemmaContainsTupThenGetReturnValue!60 lt!42919 (_1!1132 (tuple2!2245 lt!42656 lt!42655)) (_2!1132 (tuple2!2245 lt!42656 lt!42655))))))

(assert (=> d!23843 (= lt!42919 (insertStrictlySorted!62 (toList!762 lt!42653) (_1!1132 (tuple2!2245 lt!42656 lt!42655)) (_2!1132 (tuple2!2245 lt!42656 lt!42655))))))

(assert (=> d!23843 (= (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655)) lt!42921)))

(declare-fun b!89524 () Bool)

(declare-fun res!45745 () Bool)

(assert (=> b!89524 (=> (not res!45745) (not e!58274))))

(assert (=> b!89524 (= res!45745 (= (getValueByKey!141 (toList!762 lt!42921) (_1!1132 (tuple2!2245 lt!42656 lt!42655))) (Some!146 (_2!1132 (tuple2!2245 lt!42656 lt!42655)))))))

(declare-fun b!89525 () Bool)

(assert (=> b!89525 (= e!58274 (contains!771 (toList!762 lt!42921) (tuple2!2245 lt!42656 lt!42655)))))

(assert (= (and d!23843 res!45744) b!89524))

(assert (= (and b!89524 res!45745) b!89525))

(declare-fun m!95885 () Bool)

(assert (=> d!23843 m!95885))

(declare-fun m!95887 () Bool)

(assert (=> d!23843 m!95887))

(declare-fun m!95889 () Bool)

(assert (=> d!23843 m!95889))

(declare-fun m!95891 () Bool)

(assert (=> d!23843 m!95891))

(declare-fun m!95893 () Bool)

(assert (=> b!89524 m!95893))

(declare-fun m!95895 () Bool)

(assert (=> b!89525 m!95895))

(assert (=> b!89097 d!23843))

(declare-fun d!23845 () Bool)

(declare-fun e!58275 () Bool)

(assert (=> d!23845 e!58275))

(declare-fun res!45746 () Bool)

(assert (=> d!23845 (=> res!45746 e!58275)))

(declare-fun lt!42926 () Bool)

(assert (=> d!23845 (= res!45746 (not lt!42926))))

(declare-fun lt!42925 () Bool)

(assert (=> d!23845 (= lt!42926 lt!42925)))

(declare-fun lt!42924 () Unit!2654)

(declare-fun e!58276 () Unit!2654)

(assert (=> d!23845 (= lt!42924 e!58276)))

(declare-fun c!14900 () Bool)

(assert (=> d!23845 (= c!14900 lt!42925)))

(assert (=> d!23845 (= lt!42925 (containsKey!145 (toList!762 (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655))) lt!42650))))

(assert (=> d!23845 (= (contains!769 (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655)) lt!42650) lt!42926)))

(declare-fun b!89526 () Bool)

(declare-fun lt!42923 () Unit!2654)

(assert (=> b!89526 (= e!58276 lt!42923)))

(assert (=> b!89526 (= lt!42923 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655))) lt!42650))))

(assert (=> b!89526 (isDefined!95 (getValueByKey!141 (toList!762 (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655))) lt!42650))))

(declare-fun b!89527 () Bool)

(declare-fun Unit!2675 () Unit!2654)

(assert (=> b!89527 (= e!58276 Unit!2675)))

(declare-fun b!89528 () Bool)

(assert (=> b!89528 (= e!58275 (isDefined!95 (getValueByKey!141 (toList!762 (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655))) lt!42650)))))

(assert (= (and d!23845 c!14900) b!89526))

(assert (= (and d!23845 (not c!14900)) b!89527))

(assert (= (and d!23845 (not res!45746)) b!89528))

(declare-fun m!95897 () Bool)

(assert (=> d!23845 m!95897))

(declare-fun m!95899 () Bool)

(assert (=> b!89526 m!95899))

(declare-fun m!95901 () Bool)

(assert (=> b!89526 m!95901))

(assert (=> b!89526 m!95901))

(declare-fun m!95903 () Bool)

(assert (=> b!89526 m!95903))

(assert (=> b!89528 m!95901))

(assert (=> b!89528 m!95901))

(assert (=> b!89528 m!95903))

(assert (=> b!89097 d!23845))

(declare-fun d!23847 () Bool)

(assert (=> d!23847 (not (contains!769 (+!119 lt!42653 (tuple2!2245 lt!42656 lt!42655)) lt!42650))))

(declare-fun lt!42929 () Unit!2654)

(declare-fun choose!542 (ListLongMap!1493 (_ BitVec 64) V!3043 (_ BitVec 64)) Unit!2654)

(assert (=> d!23847 (= lt!42929 (choose!542 lt!42653 lt!42656 lt!42655 lt!42650))))

(declare-fun e!58279 () Bool)

(assert (=> d!23847 e!58279))

(declare-fun res!45749 () Bool)

(assert (=> d!23847 (=> (not res!45749) (not e!58279))))

(assert (=> d!23847 (= res!45749 (not (contains!769 lt!42653 lt!42650)))))

(assert (=> d!23847 (= (addStillNotContains!35 lt!42653 lt!42656 lt!42655 lt!42650) lt!42929)))

(declare-fun b!89532 () Bool)

(assert (=> b!89532 (= e!58279 (not (= lt!42656 lt!42650)))))

(assert (= (and d!23847 res!45749) b!89532))

(assert (=> d!23847 m!95071))

(assert (=> d!23847 m!95071))

(assert (=> d!23847 m!95073))

(declare-fun m!95905 () Bool)

(assert (=> d!23847 m!95905))

(declare-fun m!95907 () Bool)

(assert (=> d!23847 m!95907))

(assert (=> b!89097 d!23847))

(assert (=> b!89056 d!23817))

(declare-fun d!23849 () Bool)

(assert (=> d!23849 (= (+!119 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 lt!42403)) (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) lt!42627 lt!42403 (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!42932 () Unit!2654)

(declare-fun choose!543 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 V!3043 Int) Unit!2654)

(assert (=> d!23849 (= lt!42932 (choose!543 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) lt!42627 (zeroValue!2261 newMap!16) lt!42403 (minValue!2261 newMap!16) (defaultEntry!2372 newMap!16)))))

(assert (=> d!23849 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23849 (= (lemmaChangeZeroKeyThenAddPairToListMap!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) lt!42627 (zeroValue!2261 newMap!16) lt!42403 (minValue!2261 newMap!16) (defaultEntry!2372 newMap!16)) lt!42932)))

(declare-fun bs!3750 () Bool)

(assert (= bs!3750 d!23849))

(assert (=> bs!3750 m!95265))

(declare-fun m!95909 () Bool)

(assert (=> bs!3750 m!95909))

(declare-fun m!95911 () Bool)

(assert (=> bs!3750 m!95911))

(assert (=> bs!3750 m!94947))

(assert (=> bs!3750 m!94947))

(declare-fun m!95913 () Bool)

(assert (=> bs!3750 m!95913))

(assert (=> b!89044 d!23849))

(declare-fun b!89567 () Bool)

(declare-fun res!45769 () Bool)

(declare-fun e!58303 () Bool)

(assert (=> b!89567 (=> (not res!45769) (not e!58303))))

(declare-fun lt!43008 () SeekEntryResult!255)

(assert (=> b!89567 (= res!45769 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3159 lt!43008)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89568 () Bool)

(declare-fun res!45770 () Bool)

(declare-fun call!8696 () Bool)

(assert (=> b!89568 (= res!45770 call!8696)))

(declare-fun e!58301 () Bool)

(assert (=> b!89568 (=> (not res!45770) (not e!58301))))

(declare-fun b!89569 () Bool)

(declare-fun e!58297 () Unit!2654)

(declare-fun Unit!2676 () Unit!2654)

(assert (=> b!89569 (= e!58297 Unit!2676)))

(declare-fun lt!43011 () Unit!2654)

(assert (=> b!89569 (= lt!43011 (lemmaInListMapThenSeekEntryOrOpenFindsIt!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)))))

(declare-fun lt!43004 () SeekEntryResult!255)

(declare-fun call!8698 () SeekEntryResult!255)

(assert (=> b!89569 (= lt!43004 call!8698)))

(declare-fun res!45768 () Bool)

(assert (=> b!89569 (= res!45768 ((_ is Found!255) lt!43004))))

(assert (=> b!89569 (=> (not res!45768) (not e!58301))))

(assert (=> b!89569 e!58301))

(declare-fun lt!42994 () Unit!2654)

(assert (=> b!89569 (= lt!42994 lt!43011)))

(assert (=> b!89569 false))

(declare-fun bm!8692 () Bool)

(declare-fun call!8697 () Bool)

(assert (=> bm!8692 (= call!8697 call!8696)))

(declare-fun b!89570 () Bool)

(assert (=> b!89570 (= e!58301 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!43004)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89571 () Bool)

(declare-fun lt!43002 () Unit!2654)

(assert (=> b!89571 (= e!58297 lt!43002)))

(assert (=> b!89571 (= lt!43002 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (defaultEntry!2372 newMap!16)))))

(assert (=> b!89571 (= lt!43008 call!8698)))

(declare-fun c!14910 () Bool)

(assert (=> b!89571 (= c!14910 ((_ is MissingZero!255) lt!43008))))

(declare-fun e!58299 () Bool)

(assert (=> b!89571 e!58299))

(declare-fun b!89572 () Bool)

(declare-fun e!58302 () Bool)

(declare-fun call!8695 () Bool)

(assert (=> b!89572 (= e!58302 (not call!8695))))

(declare-fun b!89573 () Bool)

(declare-fun e!58296 () Unit!2654)

(declare-fun Unit!2677 () Unit!2654)

(assert (=> b!89573 (= e!58296 Unit!2677)))

(declare-fun lt!43007 () Unit!2654)

(declare-fun lemmaArrayContainsKeyThenInListMap!21 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 64) (_ BitVec 32) Int) Unit!2654)

(assert (=> b!89573 (= lt!43007 (lemmaArrayContainsKeyThenInListMap!21 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(assert (=> b!89573 (contains!769 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))

(declare-fun lt!42998 () Unit!2654)

(assert (=> b!89573 (= lt!42998 lt!43007)))

(assert (=> b!89573 false))

(declare-fun b!89574 () Bool)

(declare-fun e!58300 () Bool)

(assert (=> b!89574 (= e!58300 e!58302)))

(declare-fun res!45771 () Bool)

(assert (=> b!89574 (= res!45771 call!8697)))

(assert (=> b!89574 (=> (not res!45771) (not e!58302))))

(declare-fun b!89576 () Bool)

(declare-fun lt!43006 () tuple2!2246)

(declare-fun e!58298 () Bool)

(assert (=> b!89576 (= e!58298 (= (map!1201 (_2!1133 lt!43006)) (+!119 (map!1201 newMap!16) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun b!89577 () Bool)

(declare-fun c!14912 () Bool)

(assert (=> b!89577 (= c!14912 ((_ is MissingVacant!255) lt!43008))))

(assert (=> b!89577 (= e!58299 e!58300)))

(declare-fun b!89578 () Bool)

(declare-fun res!45773 () Bool)

(assert (=> b!89578 (=> (not res!45773) (not e!58298))))

(assert (=> b!89578 (= res!45773 (contains!769 (map!1201 (_2!1133 lt!43006)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89579 () Bool)

(assert (=> b!89579 (= e!58303 (not call!8695))))

(declare-fun bm!8693 () Bool)

(assert (=> bm!8693 (= call!8698 (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(declare-fun b!89580 () Bool)

(declare-fun res!45776 () Bool)

(assert (=> b!89580 (= res!45776 (= (select (arr!1930 (_keys!4050 newMap!16)) (index!3162 lt!43008)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89580 (=> (not res!45776) (not e!58302))))

(declare-fun bm!8694 () Bool)

(declare-fun c!14911 () Bool)

(assert (=> bm!8694 (= call!8696 (inRange!0 (ite c!14911 (index!3160 lt!43004) (ite c!14910 (index!3159 lt!43008) (index!3162 lt!43008))) (mask!6416 newMap!16)))))

(declare-fun b!89581 () Bool)

(declare-fun res!45774 () Bool)

(assert (=> b!89581 (=> (not res!45774) (not e!58303))))

(assert (=> b!89581 (= res!45774 call!8697)))

(assert (=> b!89581 (= e!58299 e!58303)))

(declare-fun b!89582 () Bool)

(declare-fun Unit!2678 () Unit!2654)

(assert (=> b!89582 (= e!58296 Unit!2678)))

(declare-fun bm!8695 () Bool)

(assert (=> bm!8695 (= call!8695 (arrayContainsKey!0 (_keys!4050 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!89583 () Bool)

(assert (=> b!89583 (= e!58300 ((_ is Undefined!255) lt!43008))))

(declare-fun b!89575 () Bool)

(declare-fun res!45775 () Bool)

(assert (=> b!89575 (=> (not res!45775) (not e!58298))))

(assert (=> b!89575 (= res!45775 (valid!335 (_2!1133 lt!43006)))))

(declare-fun d!23851 () Bool)

(assert (=> d!23851 e!58298))

(declare-fun res!45772 () Bool)

(assert (=> d!23851 (=> (not res!45772) (not e!58298))))

(assert (=> d!23851 (= res!45772 (_1!1133 lt!43006))))

(assert (=> d!23851 (= lt!43006 (tuple2!2247 true (LongMapFixedSize!769 (defaultEntry!2372 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (bvadd (_size!433 newMap!16) #b00000000000000000000000000000001) (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16))) (_vacant!433 newMap!16))))))

(declare-fun lt!42997 () Unit!2654)

(declare-fun lt!42996 () Unit!2654)

(assert (=> d!23851 (= lt!42997 lt!42996)))

(declare-fun lt!43015 () array!4058)

(declare-fun lt!43022 () array!4056)

(assert (=> d!23851 (contains!769 (getCurrentListMap!445 lt!43022 lt!43015 (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (select (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631))))))

(assert (=> d!23851 (= lt!42996 (lemmaValidKeyInArrayIsInListMap!91 lt!43022 lt!43015 (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (defaultEntry!2372 newMap!16)))))

(assert (=> d!23851 (= lt!43015 (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16))))))

(assert (=> d!23851 (= lt!43022 (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))))))

(declare-fun lt!43012 () Unit!2654)

(declare-fun lt!43010 () Unit!2654)

(assert (=> d!23851 (= lt!43012 lt!43010)))

(declare-fun lt!43018 () array!4056)

(assert (=> d!23851 (= (arrayCountValidKeys!0 lt!43018 (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (bvadd (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4056 (_ BitVec 32)) Unit!2654)

(assert (=> d!23851 (= lt!43010 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!43018 (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631))))))

(assert (=> d!23851 (= lt!43018 (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))))))

(declare-fun lt!43009 () Unit!2654)

(declare-fun lt!42999 () Unit!2654)

(assert (=> d!23851 (= lt!43009 lt!42999)))

(declare-fun lt!43019 () array!4056)

(assert (=> d!23851 (arrayContainsKey!0 lt!43019 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!23851 (= lt!42999 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!43019 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631))))))

(assert (=> d!23851 (= lt!43019 (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))))))

(declare-fun lt!43021 () Unit!2654)

(declare-fun lt!43020 () Unit!2654)

(assert (=> d!23851 (= lt!43021 lt!43020)))

(assert (=> d!23851 (= (+!119 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (getCurrentListMap!445 (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16))) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!21 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 32) (_ BitVec 64) V!3043 Int) Unit!2654)

(assert (=> d!23851 (= lt!43020 (lemmaAddValidKeyToArrayThenAddPairToListMap!21 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!43001 () Unit!2654)

(declare-fun lt!43000 () Unit!2654)

(assert (=> d!23851 (= lt!43001 lt!43000)))

(assert (=> d!23851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))) (mask!6416 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4056 (_ BitVec 32) (_ BitVec 32)) Unit!2654)

(assert (=> d!23851 (= lt!43000 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (_keys!4050 newMap!16) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (mask!6416 newMap!16)))))

(declare-fun lt!43016 () Unit!2654)

(declare-fun lt!43005 () Unit!2654)

(assert (=> d!23851 (= lt!43016 lt!43005)))

(assert (=> d!23851 (= (arrayCountValidKeys!0 (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))) #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4050 newMap!16) #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4056 (_ BitVec 32) (_ BitVec 64)) Unit!2654)

(assert (=> d!23851 (= lt!43005 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4050 newMap!16) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun lt!43003 () Unit!2654)

(declare-fun lt!42993 () Unit!2654)

(assert (=> d!23851 (= lt!43003 lt!42993)))

(declare-fun lt!42995 () List!1559)

(declare-fun lt!43013 () (_ BitVec 32))

(assert (=> d!23851 (arrayNoDuplicates!0 (array!4057 (store (arr!1930 (_keys!4050 newMap!16)) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) (size!2176 (_keys!4050 newMap!16))) lt!43013 lt!42995)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4056 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1559) Unit!2654)

(assert (=> d!23851 (= lt!42993 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4050 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631)) lt!43013 lt!42995))))

(assert (=> d!23851 (= lt!42995 Nil!1556)))

(assert (=> d!23851 (= lt!43013 #b00000000000000000000000000000000)))

(declare-fun lt!43017 () Unit!2654)

(assert (=> d!23851 (= lt!43017 e!58296)))

(declare-fun c!14909 () Bool)

(assert (=> d!23851 (= c!14909 (arrayContainsKey!0 (_keys!4050 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!43014 () Unit!2654)

(assert (=> d!23851 (= lt!43014 e!58297)))

(assert (=> d!23851 (= c!14911 (contains!769 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> d!23851 (valid!335 newMap!16)))

(assert (=> d!23851 (= (updateHelperNewKey!33 newMap!16 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 (ite c!14770 (index!3162 lt!42631) (index!3159 lt!42631))) lt!43006)))

(assert (= (and d!23851 c!14911) b!89569))

(assert (= (and d!23851 (not c!14911)) b!89571))

(assert (= (and b!89569 res!45768) b!89568))

(assert (= (and b!89568 res!45770) b!89570))

(assert (= (and b!89571 c!14910) b!89581))

(assert (= (and b!89571 (not c!14910)) b!89577))

(assert (= (and b!89581 res!45774) b!89567))

(assert (= (and b!89567 res!45769) b!89579))

(assert (= (and b!89577 c!14912) b!89574))

(assert (= (and b!89577 (not c!14912)) b!89583))

(assert (= (and b!89574 res!45771) b!89580))

(assert (= (and b!89580 res!45776) b!89572))

(assert (= (or b!89581 b!89574) bm!8692))

(assert (= (or b!89579 b!89572) bm!8695))

(assert (= (or b!89568 bm!8692) bm!8694))

(assert (= (or b!89569 b!89571) bm!8693))

(assert (= (and d!23851 c!14909) b!89573))

(assert (= (and d!23851 (not c!14909)) b!89582))

(assert (= (and d!23851 res!45772) b!89575))

(assert (= (and b!89575 res!45775) b!89578))

(assert (= (and b!89578 res!45773) b!89576))

(declare-fun m!95915 () Bool)

(assert (=> d!23851 m!95915))

(assert (=> d!23851 m!94805))

(declare-fun m!95917 () Bool)

(assert (=> d!23851 m!95917))

(assert (=> d!23851 m!94853))

(declare-fun m!95919 () Bool)

(assert (=> d!23851 m!95919))

(declare-fun m!95921 () Bool)

(assert (=> d!23851 m!95921))

(assert (=> d!23851 m!94805))

(declare-fun m!95923 () Bool)

(assert (=> d!23851 m!95923))

(assert (=> d!23851 m!94805))

(assert (=> d!23851 m!95027))

(assert (=> d!23851 m!94805))

(declare-fun m!95925 () Bool)

(assert (=> d!23851 m!95925))

(declare-fun m!95927 () Bool)

(assert (=> d!23851 m!95927))

(declare-fun m!95929 () Bool)

(assert (=> d!23851 m!95929))

(declare-fun m!95931 () Bool)

(assert (=> d!23851 m!95931))

(assert (=> d!23851 m!94805))

(declare-fun m!95933 () Bool)

(assert (=> d!23851 m!95933))

(declare-fun m!95935 () Bool)

(assert (=> d!23851 m!95935))

(declare-fun m!95937 () Bool)

(assert (=> d!23851 m!95937))

(declare-fun m!95939 () Bool)

(assert (=> d!23851 m!95939))

(declare-fun m!95941 () Bool)

(assert (=> d!23851 m!95941))

(assert (=> d!23851 m!95921))

(assert (=> d!23851 m!95929))

(declare-fun m!95943 () Bool)

(assert (=> d!23851 m!95943))

(assert (=> d!23851 m!95209))

(assert (=> d!23851 m!94947))

(assert (=> d!23851 m!94805))

(declare-fun m!95945 () Bool)

(assert (=> d!23851 m!95945))

(assert (=> d!23851 m!94805))

(declare-fun m!95947 () Bool)

(assert (=> d!23851 m!95947))

(assert (=> d!23851 m!94947))

(declare-fun m!95949 () Bool)

(assert (=> d!23851 m!95949))

(declare-fun m!95951 () Bool)

(assert (=> d!23851 m!95951))

(assert (=> d!23851 m!94947))

(assert (=> d!23851 m!94805))

(assert (=> d!23851 m!95059))

(declare-fun m!95953 () Bool)

(assert (=> b!89567 m!95953))

(declare-fun m!95955 () Bool)

(assert (=> b!89576 m!95955))

(assert (=> b!89576 m!94857))

(assert (=> b!89576 m!94857))

(declare-fun m!95957 () Bool)

(assert (=> b!89576 m!95957))

(declare-fun m!95959 () Bool)

(assert (=> b!89580 m!95959))

(assert (=> b!89573 m!94805))

(declare-fun m!95961 () Bool)

(assert (=> b!89573 m!95961))

(assert (=> b!89573 m!94947))

(assert (=> b!89573 m!94947))

(assert (=> b!89573 m!94805))

(assert (=> b!89573 m!95059))

(declare-fun m!95963 () Bool)

(assert (=> bm!8694 m!95963))

(declare-fun m!95965 () Bool)

(assert (=> b!89570 m!95965))

(assert (=> b!89571 m!94805))

(assert (=> b!89571 m!95015))

(assert (=> bm!8695 m!94805))

(assert (=> bm!8695 m!95027))

(assert (=> b!89569 m!94805))

(assert (=> b!89569 m!95031))

(declare-fun m!95967 () Bool)

(assert (=> b!89575 m!95967))

(assert (=> bm!8693 m!94805))

(assert (=> bm!8693 m!95019))

(assert (=> b!89578 m!95955))

(assert (=> b!89578 m!95955))

(assert (=> b!89578 m!94805))

(declare-fun m!95969 () Bool)

(assert (=> b!89578 m!95969))

(assert (=> bm!8630 d!23851))

(assert (=> b!88926 d!23697))

(declare-fun b!89584 () Bool)

(declare-fun e!58304 () Bool)

(declare-fun e!58305 () Bool)

(assert (=> b!89584 (= e!58304 e!58305)))

(declare-fun c!14913 () Bool)

(assert (=> b!89584 (= c!14913 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!89585 () Bool)

(declare-fun call!8699 () Bool)

(assert (=> b!89585 (= e!58305 call!8699)))

(declare-fun d!23853 () Bool)

(declare-fun res!45779 () Bool)

(declare-fun e!58307 () Bool)

(assert (=> d!23853 (=> res!45779 e!58307)))

(assert (=> d!23853 (= res!45779 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23853 (= (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!14795 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556) Nil!1556)) e!58307)))

(declare-fun b!89586 () Bool)

(assert (=> b!89586 (= e!58307 e!58304)))

(declare-fun res!45777 () Bool)

(assert (=> b!89586 (=> (not res!45777) (not e!58304))))

(declare-fun e!58306 () Bool)

(assert (=> b!89586 (= res!45777 (not e!58306))))

(declare-fun res!45778 () Bool)

(assert (=> b!89586 (=> (not res!45778) (not e!58306))))

(assert (=> b!89586 (= res!45778 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun bm!8696 () Bool)

(assert (=> bm!8696 (= call!8699 (arrayNoDuplicates!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!14913 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!14795 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556) Nil!1556)) (ite c!14795 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556) Nil!1556))))))

(declare-fun b!89587 () Bool)

(assert (=> b!89587 (= e!58306 (contains!770 (ite c!14795 (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556) Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!89588 () Bool)

(assert (=> b!89588 (= e!58305 call!8699)))

(assert (= (and d!23853 (not res!45779)) b!89586))

(assert (= (and b!89586 res!45778) b!89587))

(assert (= (and b!89586 res!45777) b!89584))

(assert (= (and b!89584 c!14913) b!89585))

(assert (= (and b!89584 (not c!14913)) b!89588))

(assert (= (or b!89585 b!89588) bm!8696))

(declare-fun m!95971 () Bool)

(assert (=> b!89584 m!95971))

(assert (=> b!89584 m!95971))

(declare-fun m!95973 () Bool)

(assert (=> b!89584 m!95973))

(assert (=> b!89586 m!95971))

(assert (=> b!89586 m!95971))

(assert (=> b!89586 m!95973))

(assert (=> bm!8696 m!95971))

(declare-fun m!95975 () Bool)

(assert (=> bm!8696 m!95975))

(assert (=> b!89587 m!95971))

(assert (=> b!89587 m!95971))

(declare-fun m!95977 () Bool)

(assert (=> b!89587 m!95977))

(assert (=> bm!8636 d!23853))

(declare-fun d!23855 () Bool)

(declare-fun e!58308 () Bool)

(assert (=> d!23855 e!58308))

(declare-fun res!45780 () Bool)

(assert (=> d!23855 (=> res!45780 e!58308)))

(declare-fun lt!43026 () Bool)

(assert (=> d!23855 (= res!45780 (not lt!43026))))

(declare-fun lt!43025 () Bool)

(assert (=> d!23855 (= lt!43026 lt!43025)))

(declare-fun lt!43024 () Unit!2654)

(declare-fun e!58309 () Unit!2654)

(assert (=> d!23855 (= lt!43024 e!58309)))

(declare-fun c!14914 () Bool)

(assert (=> d!23855 (= c!14914 lt!43025)))

(assert (=> d!23855 (= lt!43025 (containsKey!145 (toList!762 lt!42671) (_1!1132 lt!42402)))))

(assert (=> d!23855 (= (contains!769 lt!42671 (_1!1132 lt!42402)) lt!43026)))

(declare-fun b!89589 () Bool)

(declare-fun lt!43023 () Unit!2654)

(assert (=> b!89589 (= e!58309 lt!43023)))

(assert (=> b!89589 (= lt!43023 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42671) (_1!1132 lt!42402)))))

(assert (=> b!89589 (isDefined!95 (getValueByKey!141 (toList!762 lt!42671) (_1!1132 lt!42402)))))

(declare-fun b!89590 () Bool)

(declare-fun Unit!2679 () Unit!2654)

(assert (=> b!89590 (= e!58309 Unit!2679)))

(declare-fun b!89591 () Bool)

(assert (=> b!89591 (= e!58308 (isDefined!95 (getValueByKey!141 (toList!762 lt!42671) (_1!1132 lt!42402))))))

(assert (= (and d!23855 c!14914) b!89589))

(assert (= (and d!23855 (not c!14914)) b!89590))

(assert (= (and d!23855 (not res!45780)) b!89591))

(declare-fun m!95979 () Bool)

(assert (=> d!23855 m!95979))

(declare-fun m!95981 () Bool)

(assert (=> b!89589 m!95981))

(assert (=> b!89589 m!95109))

(assert (=> b!89589 m!95109))

(declare-fun m!95983 () Bool)

(assert (=> b!89589 m!95983))

(assert (=> b!89591 m!95109))

(assert (=> b!89591 m!95109))

(assert (=> b!89591 m!95983))

(assert (=> d!23631 d!23855))

(declare-fun d!23857 () Bool)

(declare-fun c!14915 () Bool)

(assert (=> d!23857 (= c!14915 (and ((_ is Cons!1556) lt!42669) (= (_1!1132 (h!2148 lt!42669)) (_1!1132 lt!42402))))))

(declare-fun e!58310 () Option!147)

(assert (=> d!23857 (= (getValueByKey!141 lt!42669 (_1!1132 lt!42402)) e!58310)))

(declare-fun b!89594 () Bool)

(declare-fun e!58311 () Option!147)

(assert (=> b!89594 (= e!58311 (getValueByKey!141 (t!5322 lt!42669) (_1!1132 lt!42402)))))

(declare-fun b!89592 () Bool)

(assert (=> b!89592 (= e!58310 (Some!146 (_2!1132 (h!2148 lt!42669))))))

(declare-fun b!89593 () Bool)

(assert (=> b!89593 (= e!58310 e!58311)))

(declare-fun c!14916 () Bool)

(assert (=> b!89593 (= c!14916 (and ((_ is Cons!1556) lt!42669) (not (= (_1!1132 (h!2148 lt!42669)) (_1!1132 lt!42402)))))))

(declare-fun b!89595 () Bool)

(assert (=> b!89595 (= e!58311 None!145)))

(assert (= (and d!23857 c!14915) b!89592))

(assert (= (and d!23857 (not c!14915)) b!89593))

(assert (= (and b!89593 c!14916) b!89594))

(assert (= (and b!89593 (not c!14916)) b!89595))

(declare-fun m!95985 () Bool)

(assert (=> b!89594 m!95985))

(assert (=> d!23631 d!23857))

(declare-fun d!23859 () Bool)

(assert (=> d!23859 (= (getValueByKey!141 lt!42669 (_1!1132 lt!42402)) (Some!146 (_2!1132 lt!42402)))))

(declare-fun lt!43027 () Unit!2654)

(assert (=> d!23859 (= lt!43027 (choose!536 lt!42669 (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(declare-fun e!58312 () Bool)

(assert (=> d!23859 e!58312))

(declare-fun res!45781 () Bool)

(assert (=> d!23859 (=> (not res!45781) (not e!58312))))

(assert (=> d!23859 (= res!45781 (isStrictlySorted!295 lt!42669))))

(assert (=> d!23859 (= (lemmaContainsTupThenGetReturnValue!60 lt!42669 (_1!1132 lt!42402) (_2!1132 lt!42402)) lt!43027)))

(declare-fun b!89596 () Bool)

(declare-fun res!45782 () Bool)

(assert (=> b!89596 (=> (not res!45782) (not e!58312))))

(assert (=> b!89596 (= res!45782 (containsKey!145 lt!42669 (_1!1132 lt!42402)))))

(declare-fun b!89597 () Bool)

(assert (=> b!89597 (= e!58312 (contains!771 lt!42669 (tuple2!2245 (_1!1132 lt!42402) (_2!1132 lt!42402))))))

(assert (= (and d!23859 res!45781) b!89596))

(assert (= (and b!89596 res!45782) b!89597))

(assert (=> d!23859 m!95103))

(declare-fun m!95987 () Bool)

(assert (=> d!23859 m!95987))

(declare-fun m!95989 () Bool)

(assert (=> d!23859 m!95989))

(declare-fun m!95991 () Bool)

(assert (=> b!89596 m!95991))

(declare-fun m!95993 () Bool)

(assert (=> b!89597 m!95993))

(assert (=> d!23631 d!23859))

(declare-fun bm!8697 () Bool)

(declare-fun call!8702 () List!1560)

(declare-fun call!8701 () List!1560)

(assert (=> bm!8697 (= call!8702 call!8701)))

(declare-fun b!89598 () Bool)

(declare-fun e!58314 () List!1560)

(declare-fun call!8700 () List!1560)

(assert (=> b!89598 (= e!58314 call!8700)))

(declare-fun b!89599 () Bool)

(declare-fun c!14918 () Bool)

(assert (=> b!89599 (= c!14918 (and ((_ is Cons!1556) (toList!762 lt!42401)) (bvsgt (_1!1132 (h!2148 (toList!762 lt!42401))) (_1!1132 lt!42402))))))

(declare-fun e!58313 () List!1560)

(assert (=> b!89599 (= e!58313 e!58314)))

(declare-fun b!89600 () Bool)

(assert (=> b!89600 (= e!58314 call!8700)))

(declare-fun bm!8698 () Bool)

(assert (=> bm!8698 (= call!8700 call!8702)))

(declare-fun e!58315 () List!1560)

(declare-fun c!14920 () Bool)

(declare-fun bm!8699 () Bool)

(assert (=> bm!8699 (= call!8701 ($colon$colon!73 e!58315 (ite c!14920 (h!2148 (toList!762 lt!42401)) (tuple2!2245 (_1!1132 lt!42402) (_2!1132 lt!42402)))))))

(declare-fun c!14917 () Bool)

(assert (=> bm!8699 (= c!14917 c!14920)))

(declare-fun b!89602 () Bool)

(declare-fun res!45784 () Bool)

(declare-fun e!58316 () Bool)

(assert (=> b!89602 (=> (not res!45784) (not e!58316))))

(declare-fun lt!43028 () List!1560)

(assert (=> b!89602 (= res!45784 (containsKey!145 lt!43028 (_1!1132 lt!42402)))))

(declare-fun b!89603 () Bool)

(assert (=> b!89603 (= e!58315 (insertStrictlySorted!62 (t!5322 (toList!762 lt!42401)) (_1!1132 lt!42402) (_2!1132 lt!42402)))))

(declare-fun b!89604 () Bool)

(declare-fun e!58317 () List!1560)

(assert (=> b!89604 (= e!58317 e!58313)))

(declare-fun c!14919 () Bool)

(assert (=> b!89604 (= c!14919 (and ((_ is Cons!1556) (toList!762 lt!42401)) (= (_1!1132 (h!2148 (toList!762 lt!42401))) (_1!1132 lt!42402))))))

(declare-fun b!89605 () Bool)

(assert (=> b!89605 (= e!58315 (ite c!14919 (t!5322 (toList!762 lt!42401)) (ite c!14918 (Cons!1556 (h!2148 (toList!762 lt!42401)) (t!5322 (toList!762 lt!42401))) Nil!1557)))))

(declare-fun b!89606 () Bool)

(assert (=> b!89606 (= e!58313 call!8702)))

(declare-fun b!89607 () Bool)

(assert (=> b!89607 (= e!58316 (contains!771 lt!43028 (tuple2!2245 (_1!1132 lt!42402) (_2!1132 lt!42402))))))

(declare-fun d!23861 () Bool)

(assert (=> d!23861 e!58316))

(declare-fun res!45783 () Bool)

(assert (=> d!23861 (=> (not res!45783) (not e!58316))))

(assert (=> d!23861 (= res!45783 (isStrictlySorted!295 lt!43028))))

(assert (=> d!23861 (= lt!43028 e!58317)))

(assert (=> d!23861 (= c!14920 (and ((_ is Cons!1556) (toList!762 lt!42401)) (bvslt (_1!1132 (h!2148 (toList!762 lt!42401))) (_1!1132 lt!42402))))))

(assert (=> d!23861 (isStrictlySorted!295 (toList!762 lt!42401))))

(assert (=> d!23861 (= (insertStrictlySorted!62 (toList!762 lt!42401) (_1!1132 lt!42402) (_2!1132 lt!42402)) lt!43028)))

(declare-fun b!89601 () Bool)

(assert (=> b!89601 (= e!58317 call!8701)))

(assert (= (and d!23861 c!14920) b!89601))

(assert (= (and d!23861 (not c!14920)) b!89604))

(assert (= (and b!89604 c!14919) b!89606))

(assert (= (and b!89604 (not c!14919)) b!89599))

(assert (= (and b!89599 c!14918) b!89598))

(assert (= (and b!89599 (not c!14918)) b!89600))

(assert (= (or b!89598 b!89600) bm!8698))

(assert (= (or b!89606 bm!8698) bm!8697))

(assert (= (or b!89601 bm!8697) bm!8699))

(assert (= (and bm!8699 c!14917) b!89603))

(assert (= (and bm!8699 (not c!14917)) b!89605))

(assert (= (and d!23861 res!45783) b!89602))

(assert (= (and b!89602 res!45784) b!89607))

(declare-fun m!95995 () Bool)

(assert (=> b!89603 m!95995))

(declare-fun m!95997 () Bool)

(assert (=> b!89607 m!95997))

(declare-fun m!95999 () Bool)

(assert (=> b!89602 m!95999))

(declare-fun m!96001 () Bool)

(assert (=> d!23861 m!96001))

(declare-fun m!96003 () Bool)

(assert (=> d!23861 m!96003))

(declare-fun m!96005 () Bool)

(assert (=> bm!8699 m!96005))

(assert (=> d!23631 d!23861))

(declare-fun d!23863 () Bool)

(declare-fun res!45785 () Bool)

(declare-fun e!58318 () Bool)

(assert (=> d!23863 (=> res!45785 e!58318)))

(assert (=> d!23863 (= res!45785 (= (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> d!23863 (= (arrayContainsKey!0 (_keys!4050 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) #b00000000000000000000000000000000) e!58318)))

(declare-fun b!89608 () Bool)

(declare-fun e!58319 () Bool)

(assert (=> b!89608 (= e!58318 e!58319)))

(declare-fun res!45786 () Bool)

(assert (=> b!89608 (=> (not res!45786) (not e!58319))))

(assert (=> b!89608 (= res!45786 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89609 () Bool)

(assert (=> b!89609 (= e!58319 (arrayContainsKey!0 (_keys!4050 newMap!16) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!23863 (not res!45785)) b!89608))

(assert (= (and b!89608 res!45786) b!89609))

(assert (=> d!23863 m!95465))

(assert (=> b!89609 m!94805))

(declare-fun m!96007 () Bool)

(assert (=> b!89609 m!96007))

(assert (=> bm!8631 d!23863))

(assert (=> b!89100 d!23703))

(assert (=> b!88859 d!23761))

(declare-fun b!89610 () Bool)

(declare-fun e!58322 () Bool)

(declare-fun call!8703 () Bool)

(assert (=> b!89610 (= e!58322 call!8703)))

(declare-fun b!89611 () Bool)

(declare-fun e!58321 () Bool)

(declare-fun e!58320 () Bool)

(assert (=> b!89611 (= e!58321 e!58320)))

(declare-fun c!14921 () Bool)

(assert (=> b!89611 (= c!14921 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!8700 () Bool)

(assert (=> bm!8700 (= call!8703 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4050 newMap!16) (mask!6416 newMap!16)))))

(declare-fun b!89612 () Bool)

(assert (=> b!89612 (= e!58320 call!8703)))

(declare-fun d!23865 () Bool)

(declare-fun res!45787 () Bool)

(assert (=> d!23865 (=> res!45787 e!58321)))

(assert (=> d!23865 (= res!45787 (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(assert (=> d!23865 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4050 newMap!16) (mask!6416 newMap!16)) e!58321)))

(declare-fun b!89613 () Bool)

(assert (=> b!89613 (= e!58320 e!58322)))

(declare-fun lt!43030 () (_ BitVec 64))

(assert (=> b!89613 (= lt!43030 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!43031 () Unit!2654)

(assert (=> b!89613 (= lt!43031 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4050 newMap!16) lt!43030 #b00000000000000000000000000000000))))

(assert (=> b!89613 (arrayContainsKey!0 (_keys!4050 newMap!16) lt!43030 #b00000000000000000000000000000000)))

(declare-fun lt!43029 () Unit!2654)

(assert (=> b!89613 (= lt!43029 lt!43031)))

(declare-fun res!45788 () Bool)

(assert (=> b!89613 (= res!45788 (= (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000) (_keys!4050 newMap!16) (mask!6416 newMap!16)) (Found!255 #b00000000000000000000000000000000)))))

(assert (=> b!89613 (=> (not res!45788) (not e!58322))))

(assert (= (and d!23865 (not res!45787)) b!89611))

(assert (= (and b!89611 c!14921) b!89613))

(assert (= (and b!89611 (not c!14921)) b!89612))

(assert (= (and b!89613 res!45788) b!89610))

(assert (= (or b!89610 b!89612) bm!8700))

(assert (=> b!89611 m!95465))

(assert (=> b!89611 m!95465))

(assert (=> b!89611 m!95467))

(declare-fun m!96009 () Bool)

(assert (=> bm!8700 m!96009))

(assert (=> b!89613 m!95465))

(declare-fun m!96011 () Bool)

(assert (=> b!89613 m!96011))

(declare-fun m!96013 () Bool)

(assert (=> b!89613 m!96013))

(assert (=> b!89613 m!95465))

(declare-fun m!96015 () Bool)

(assert (=> b!89613 m!96015))

(assert (=> b!89150 d!23865))

(declare-fun b!89614 () Bool)

(declare-fun e!58327 () Bool)

(declare-fun call!8707 () Bool)

(assert (=> b!89614 (= e!58327 (not call!8707))))

(declare-fun bm!8701 () Bool)

(declare-fun call!8710 () Bool)

(declare-fun lt!43041 () ListLongMap!1493)

(assert (=> bm!8701 (= call!8710 (contains!769 lt!43041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!23867 () Bool)

(declare-fun e!58328 () Bool)

(assert (=> d!23867 e!58328))

(declare-fun res!45795 () Bool)

(assert (=> d!23867 (=> (not res!45795) (not e!58328))))

(assert (=> d!23867 (= res!45795 (or (bvsge #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))))

(declare-fun lt!43048 () ListLongMap!1493)

(assert (=> d!23867 (= lt!43041 lt!43048)))

(declare-fun lt!43032 () Unit!2654)

(declare-fun e!58330 () Unit!2654)

(assert (=> d!23867 (= lt!43032 e!58330)))

(declare-fun c!14927 () Bool)

(declare-fun e!58331 () Bool)

(assert (=> d!23867 (= c!14927 e!58331)))

(declare-fun res!45796 () Bool)

(assert (=> d!23867 (=> (not res!45796) (not e!58331))))

(assert (=> d!23867 (= res!45796 (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun e!58334 () ListLongMap!1493)

(assert (=> d!23867 (= lt!43048 e!58334)))

(declare-fun c!14926 () Bool)

(assert (=> d!23867 (= c!14926 (and (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23867 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23867 (= (getCurrentListMap!445 (_keys!4050 newMap!16) (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) lt!43041)))

(declare-fun b!89615 () Bool)

(declare-fun call!8706 () ListLongMap!1493)

(assert (=> b!89615 (= e!58334 (+!119 call!8706 (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 newMap!16))))))

(declare-fun bm!8702 () Bool)

(declare-fun call!8709 () ListLongMap!1493)

(declare-fun call!8708 () ListLongMap!1493)

(assert (=> bm!8702 (= call!8709 call!8708)))

(declare-fun b!89616 () Bool)

(declare-fun e!58329 () Bool)

(declare-fun e!58325 () Bool)

(assert (=> b!89616 (= e!58329 e!58325)))

(declare-fun res!45791 () Bool)

(assert (=> b!89616 (=> (not res!45791) (not e!58325))))

(assert (=> b!89616 (= res!45791 (contains!769 lt!43041 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!89616 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89617 () Bool)

(declare-fun e!58333 () Bool)

(assert (=> b!89617 (= e!58333 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89618 () Bool)

(declare-fun Unit!2680 () Unit!2654)

(assert (=> b!89618 (= e!58330 Unit!2680)))

(declare-fun bm!8703 () Bool)

(declare-fun call!8704 () ListLongMap!1493)

(assert (=> bm!8703 (= call!8708 call!8704)))

(declare-fun b!89619 () Bool)

(declare-fun e!58323 () Bool)

(assert (=> b!89619 (= e!58327 e!58323)))

(declare-fun res!45792 () Bool)

(assert (=> b!89619 (= res!45792 call!8707)))

(assert (=> b!89619 (=> (not res!45792) (not e!58323))))

(declare-fun b!89620 () Bool)

(declare-fun e!58324 () Bool)

(assert (=> b!89620 (= e!58324 (= (apply!84 lt!43041 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2261 newMap!16)))))

(declare-fun bm!8704 () Bool)

(assert (=> bm!8704 (= call!8707 (contains!769 lt!43041 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89621 () Bool)

(assert (=> b!89621 (= e!58323 (= (apply!84 lt!43041 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2261 newMap!16)))))

(declare-fun b!89622 () Bool)

(declare-fun e!58335 () Bool)

(assert (=> b!89622 (= e!58335 e!58324)))

(declare-fun res!45794 () Bool)

(assert (=> b!89622 (= res!45794 call!8710)))

(assert (=> b!89622 (=> (not res!45794) (not e!58324))))

(declare-fun b!89623 () Bool)

(assert (=> b!89623 (= e!58325 (= (apply!84 lt!43041 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)) (get!1225 (select (arr!1931 (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618)) #b00000000000000000000000000000000) (dynLambda!355 (defaultEntry!2372 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!89623 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2177 (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618))))))

(assert (=> b!89623 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89624 () Bool)

(assert (=> b!89624 (= e!58331 (validKeyInArray!0 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!89625 () Bool)

(declare-fun c!14922 () Bool)

(assert (=> b!89625 (= c!14922 (and (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!58332 () ListLongMap!1493)

(declare-fun e!58326 () ListLongMap!1493)

(assert (=> b!89625 (= e!58332 e!58326)))

(declare-fun b!89626 () Bool)

(declare-fun lt!43049 () Unit!2654)

(assert (=> b!89626 (= e!58330 lt!43049)))

(declare-fun lt!43047 () ListLongMap!1493)

(assert (=> b!89626 (= lt!43047 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!43046 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43046 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43036 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43036 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!43038 () Unit!2654)

(assert (=> b!89626 (= lt!43038 (addStillContains!60 lt!43047 lt!43046 (zeroValue!2261 newMap!16) lt!43036))))

(assert (=> b!89626 (contains!769 (+!119 lt!43047 (tuple2!2245 lt!43046 (zeroValue!2261 newMap!16))) lt!43036)))

(declare-fun lt!43050 () Unit!2654)

(assert (=> b!89626 (= lt!43050 lt!43038)))

(declare-fun lt!43035 () ListLongMap!1493)

(assert (=> b!89626 (= lt!43035 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!43052 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43052 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43039 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43039 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!43040 () Unit!2654)

(assert (=> b!89626 (= lt!43040 (addApplyDifferent!60 lt!43035 lt!43052 (minValue!2261 newMap!16) lt!43039))))

(assert (=> b!89626 (= (apply!84 (+!119 lt!43035 (tuple2!2245 lt!43052 (minValue!2261 newMap!16))) lt!43039) (apply!84 lt!43035 lt!43039))))

(declare-fun lt!43042 () Unit!2654)

(assert (=> b!89626 (= lt!43042 lt!43040)))

(declare-fun lt!43034 () ListLongMap!1493)

(assert (=> b!89626 (= lt!43034 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!43053 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43053 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43037 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43037 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!43051 () Unit!2654)

(assert (=> b!89626 (= lt!43051 (addApplyDifferent!60 lt!43034 lt!43053 (zeroValue!2261 newMap!16) lt!43037))))

(assert (=> b!89626 (= (apply!84 (+!119 lt!43034 (tuple2!2245 lt!43053 (zeroValue!2261 newMap!16))) lt!43037) (apply!84 lt!43034 lt!43037))))

(declare-fun lt!43043 () Unit!2654)

(assert (=> b!89626 (= lt!43043 lt!43051)))

(declare-fun lt!43033 () ListLongMap!1493)

(assert (=> b!89626 (= lt!43033 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun lt!43045 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43045 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43044 () (_ BitVec 64))

(assert (=> b!89626 (= lt!43044 (select (arr!1930 (_keys!4050 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!89626 (= lt!43049 (addApplyDifferent!60 lt!43033 lt!43045 (minValue!2261 newMap!16) lt!43044))))

(assert (=> b!89626 (= (apply!84 (+!119 lt!43033 (tuple2!2245 lt!43045 (minValue!2261 newMap!16))) lt!43044) (apply!84 lt!43033 lt!43044))))

(declare-fun b!89627 () Bool)

(assert (=> b!89627 (= e!58328 e!58327)))

(declare-fun c!14923 () Bool)

(assert (=> b!89627 (= c!14923 (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!89628 () Bool)

(declare-fun res!45797 () Bool)

(assert (=> b!89628 (=> (not res!45797) (not e!58328))))

(assert (=> b!89628 (= res!45797 e!58329)))

(declare-fun res!45790 () Bool)

(assert (=> b!89628 (=> res!45790 e!58329)))

(assert (=> b!89628 (= res!45790 (not e!58333))))

(declare-fun res!45789 () Bool)

(assert (=> b!89628 (=> (not res!45789) (not e!58333))))

(assert (=> b!89628 (= res!45789 (bvslt #b00000000000000000000000000000000 (size!2176 (_keys!4050 newMap!16))))))

(declare-fun b!89629 () Bool)

(assert (=> b!89629 (= e!58335 (not call!8710))))

(declare-fun b!89630 () Bool)

(assert (=> b!89630 (= e!58326 call!8709)))

(declare-fun b!89631 () Bool)

(assert (=> b!89631 (= e!58334 e!58332)))

(declare-fun c!14924 () Bool)

(assert (=> b!89631 (= c!14924 (and (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!89632 () Bool)

(declare-fun call!8705 () ListLongMap!1493)

(assert (=> b!89632 (= e!58332 call!8705)))

(declare-fun bm!8705 () Bool)

(assert (=> bm!8705 (= call!8704 (getCurrentListMapNoExtraKeys!83 (_keys!4050 newMap!16) (ite (or c!14768 c!14771) (_values!2355 newMap!16) lt!42618) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)))))

(declare-fun bm!8706 () Bool)

(assert (=> bm!8706 (= call!8706 (+!119 (ite c!14926 call!8704 (ite c!14924 call!8708 call!8709)) (ite (or c!14926 c!14924) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 newMap!16)) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 newMap!16)))))))

(declare-fun b!89633 () Bool)

(declare-fun res!45793 () Bool)

(assert (=> b!89633 (=> (not res!45793) (not e!58328))))

(assert (=> b!89633 (= res!45793 e!58335)))

(declare-fun c!14925 () Bool)

(assert (=> b!89633 (= c!14925 (not (= (bvand (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!89634 () Bool)

(assert (=> b!89634 (= e!58326 call!8705)))

(declare-fun bm!8707 () Bool)

(assert (=> bm!8707 (= call!8705 call!8706)))

(assert (= (and d!23867 c!14926) b!89615))

(assert (= (and d!23867 (not c!14926)) b!89631))

(assert (= (and b!89631 c!14924) b!89632))

(assert (= (and b!89631 (not c!14924)) b!89625))

(assert (= (and b!89625 c!14922) b!89634))

(assert (= (and b!89625 (not c!14922)) b!89630))

(assert (= (or b!89634 b!89630) bm!8702))

(assert (= (or b!89632 bm!8702) bm!8703))

(assert (= (or b!89632 b!89634) bm!8707))

(assert (= (or b!89615 bm!8703) bm!8705))

(assert (= (or b!89615 bm!8707) bm!8706))

(assert (= (and d!23867 res!45796) b!89624))

(assert (= (and d!23867 c!14927) b!89626))

(assert (= (and d!23867 (not c!14927)) b!89618))

(assert (= (and d!23867 res!45795) b!89628))

(assert (= (and b!89628 res!45789) b!89617))

(assert (= (and b!89628 (not res!45790)) b!89616))

(assert (= (and b!89616 res!45791) b!89623))

(assert (= (and b!89628 res!45797) b!89633))

(assert (= (and b!89633 c!14925) b!89622))

(assert (= (and b!89633 (not c!14925)) b!89629))

(assert (= (and b!89622 res!45794) b!89620))

(assert (= (or b!89622 b!89629) bm!8701))

(assert (= (and b!89633 res!45793) b!89627))

(assert (= (and b!89627 c!14923) b!89619))

(assert (= (and b!89627 (not c!14923)) b!89614))

(assert (= (and b!89619 res!45792) b!89621))

(assert (= (or b!89619 b!89614) bm!8704))

(declare-fun b_lambda!3959 () Bool)

(assert (=> (not b_lambda!3959) (not b!89623)))

(assert (=> b!89623 t!5328))

(declare-fun b_and!5373 () Bool)

(assert (= b_and!5369 (and (=> t!5328 result!2983) b_and!5373)))

(assert (=> b!89623 t!5330))

(declare-fun b_and!5375 () Bool)

(assert (= b_and!5371 (and (=> t!5330 result!2985) b_and!5375)))

(assert (=> b!89617 m!95465))

(assert (=> b!89617 m!95465))

(assert (=> b!89617 m!95467))

(declare-fun m!96017 () Bool)

(assert (=> b!89623 m!96017))

(assert (=> b!89623 m!95757))

(declare-fun m!96019 () Bool)

(assert (=> b!89623 m!96019))

(assert (=> b!89623 m!96017))

(assert (=> b!89623 m!95465))

(declare-fun m!96021 () Bool)

(assert (=> b!89623 m!96021))

(assert (=> b!89623 m!95465))

(assert (=> b!89623 m!95757))

(declare-fun m!96023 () Bool)

(assert (=> bm!8706 m!96023))

(declare-fun m!96025 () Bool)

(assert (=> bm!8701 m!96025))

(declare-fun m!96027 () Bool)

(assert (=> b!89621 m!96027))

(declare-fun m!96029 () Bool)

(assert (=> bm!8704 m!96029))

(declare-fun m!96031 () Bool)

(assert (=> b!89615 m!96031))

(declare-fun m!96033 () Bool)

(assert (=> bm!8705 m!96033))

(assert (=> b!89624 m!95465))

(assert (=> b!89624 m!95465))

(assert (=> b!89624 m!95467))

(declare-fun m!96035 () Bool)

(assert (=> b!89626 m!96035))

(declare-fun m!96037 () Bool)

(assert (=> b!89626 m!96037))

(declare-fun m!96039 () Bool)

(assert (=> b!89626 m!96039))

(declare-fun m!96041 () Bool)

(assert (=> b!89626 m!96041))

(declare-fun m!96043 () Bool)

(assert (=> b!89626 m!96043))

(declare-fun m!96045 () Bool)

(assert (=> b!89626 m!96045))

(declare-fun m!96047 () Bool)

(assert (=> b!89626 m!96047))

(declare-fun m!96049 () Bool)

(assert (=> b!89626 m!96049))

(declare-fun m!96051 () Bool)

(assert (=> b!89626 m!96051))

(assert (=> b!89626 m!95465))

(assert (=> b!89626 m!96047))

(assert (=> b!89626 m!96043))

(declare-fun m!96053 () Bool)

(assert (=> b!89626 m!96053))

(assert (=> b!89626 m!96039))

(declare-fun m!96055 () Bool)

(assert (=> b!89626 m!96055))

(declare-fun m!96057 () Bool)

(assert (=> b!89626 m!96057))

(assert (=> b!89626 m!96033))

(declare-fun m!96059 () Bool)

(assert (=> b!89626 m!96059))

(declare-fun m!96061 () Bool)

(assert (=> b!89626 m!96061))

(assert (=> b!89626 m!96051))

(declare-fun m!96063 () Bool)

(assert (=> b!89626 m!96063))

(assert (=> d!23867 m!95265))

(declare-fun m!96065 () Bool)

(assert (=> b!89620 m!96065))

(assert (=> b!89616 m!95465))

(assert (=> b!89616 m!95465))

(declare-fun m!96067 () Bool)

(assert (=> b!89616 m!96067))

(assert (=> bm!8628 d!23867))

(assert (=> b!88919 d!23697))

(declare-fun d!23869 () Bool)

(declare-fun e!58338 () Bool)

(assert (=> d!23869 e!58338))

(declare-fun res!45800 () Bool)

(assert (=> d!23869 (=> (not res!45800) (not e!58338))))

(assert (=> d!23869 (= res!45800 (and (bvsge (index!3160 lt!42631) #b00000000000000000000000000000000) (bvslt (index!3160 lt!42631) (size!2176 (_keys!4050 newMap!16)))))))

(declare-fun lt!43056 () Unit!2654)

(declare-fun choose!544 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 32) Int) Unit!2654)

(assert (=> d!23869 (= lt!43056 (choose!544 (_keys!4050 newMap!16) lt!42618 (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (index!3160 lt!42631) (defaultEntry!2372 newMap!16)))))

(assert (=> d!23869 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23869 (= (lemmaValidKeyInArrayIsInListMap!91 (_keys!4050 newMap!16) lt!42618 (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (index!3160 lt!42631) (defaultEntry!2372 newMap!16)) lt!43056)))

(declare-fun b!89637 () Bool)

(assert (=> b!89637 (= e!58338 (contains!769 (getCurrentListMap!445 (_keys!4050 newMap!16) lt!42618 (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (select (arr!1930 (_keys!4050 newMap!16)) (index!3160 lt!42631))))))

(assert (= (and d!23869 res!45800) b!89637))

(declare-fun m!96069 () Bool)

(assert (=> d!23869 m!96069))

(assert (=> d!23869 m!95265))

(declare-fun m!96071 () Bool)

(assert (=> b!89637 m!96071))

(assert (=> b!89637 m!95021))

(assert (=> b!89637 m!96071))

(assert (=> b!89637 m!95021))

(declare-fun m!96073 () Bool)

(assert (=> b!89637 m!96073))

(assert (=> b!89054 d!23869))

(declare-fun d!23871 () Bool)

(declare-fun e!58341 () Bool)

(assert (=> d!23871 e!58341))

(declare-fun res!45803 () Bool)

(assert (=> d!23871 (=> (not res!45803) (not e!58341))))

(assert (=> d!23871 (= res!45803 (and (bvsge (index!3160 lt!42631) #b00000000000000000000000000000000) (bvslt (index!3160 lt!42631) (size!2177 (_values!2355 newMap!16)))))))

(declare-fun lt!43059 () Unit!2654)

(declare-fun choose!545 (array!4056 array!4058 (_ BitVec 32) (_ BitVec 32) V!3043 V!3043 (_ BitVec 32) (_ BitVec 64) V!3043 Int) Unit!2654)

(assert (=> d!23871 (= lt!43059 (choose!545 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (index!3160 lt!42631) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 (defaultEntry!2372 newMap!16)))))

(assert (=> d!23871 (validMask!0 (mask!6416 newMap!16))))

(assert (=> d!23871 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!33 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) (index!3160 lt!42631) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403 (defaultEntry!2372 newMap!16)) lt!43059)))

(declare-fun b!89640 () Bool)

(assert (=> b!89640 (= e!58341 (= (+!119 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (getCurrentListMap!445 (_keys!4050 newMap!16) (array!4059 (store (arr!1931 (_values!2355 newMap!16)) (index!3160 lt!42631) (ValueCellFull!930 lt!42403)) (size!2177 (_values!2355 newMap!16))) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16))))))

(assert (= (and d!23871 res!45803) b!89640))

(assert (=> d!23871 m!94805))

(declare-fun m!96075 () Bool)

(assert (=> d!23871 m!96075))

(assert (=> d!23871 m!95265))

(assert (=> b!89640 m!94947))

(assert (=> b!89640 m!94947))

(assert (=> b!89640 m!95949))

(assert (=> b!89640 m!95037))

(declare-fun m!96077 () Bool)

(assert (=> b!89640 m!96077))

(assert (=> b!89054 d!23871))

(declare-fun d!23873 () Bool)

(declare-fun e!58342 () Bool)

(assert (=> d!23873 e!58342))

(declare-fun res!45804 () Bool)

(assert (=> d!23873 (=> res!45804 e!58342)))

(declare-fun lt!43063 () Bool)

(assert (=> d!23873 (= res!45804 (not lt!43063))))

(declare-fun lt!43062 () Bool)

(assert (=> d!23873 (= lt!43063 lt!43062)))

(declare-fun lt!43061 () Unit!2654)

(declare-fun e!58343 () Unit!2654)

(assert (=> d!23873 (= lt!43061 e!58343)))

(declare-fun c!14928 () Bool)

(assert (=> d!23873 (= c!14928 lt!43062)))

(assert (=> d!23873 (= lt!43062 (containsKey!145 (toList!762 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> d!23873 (= (contains!769 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) lt!43063)))

(declare-fun b!89641 () Bool)

(declare-fun lt!43060 () Unit!2654)

(assert (=> b!89641 (= e!58343 lt!43060)))

(assert (=> b!89641 (= lt!43060 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (=> b!89641 (isDefined!95 (getValueByKey!141 (toList!762 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89642 () Bool)

(declare-fun Unit!2681 () Unit!2654)

(assert (=> b!89642 (= e!58343 Unit!2681)))

(declare-fun b!89643 () Bool)

(assert (=> b!89643 (= e!58342 (isDefined!95 (getValueByKey!141 (toList!762 (getCurrentListMap!445 (_keys!4050 newMap!16) (_values!2355 newMap!16) (mask!6416 newMap!16) (extraKeys!2205 newMap!16) (zeroValue!2261 newMap!16) (minValue!2261 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2372 newMap!16))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))))

(assert (= (and d!23873 c!14928) b!89641))

(assert (= (and d!23873 (not c!14928)) b!89642))

(assert (= (and d!23873 (not res!45804)) b!89643))

(assert (=> d!23873 m!94805))

(declare-fun m!96079 () Bool)

(assert (=> d!23873 m!96079))

(assert (=> b!89641 m!94805))

(declare-fun m!96081 () Bool)

(assert (=> b!89641 m!96081))

(assert (=> b!89641 m!94805))

(declare-fun m!96083 () Bool)

(assert (=> b!89641 m!96083))

(assert (=> b!89641 m!96083))

(declare-fun m!96085 () Bool)

(assert (=> b!89641 m!96085))

(assert (=> b!89643 m!94805))

(assert (=> b!89643 m!96083))

(assert (=> b!89643 m!96083))

(assert (=> b!89643 m!96085))

(assert (=> b!89054 d!23873))

(assert (=> b!89054 d!23837))

(declare-fun d!23875 () Bool)

(declare-fun lt!43064 () Bool)

(assert (=> d!23875 (= lt!43064 (select (content!92 Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!58345 () Bool)

(assert (=> d!23875 (= lt!43064 e!58345)))

(declare-fun res!45805 () Bool)

(assert (=> d!23875 (=> (not res!45805) (not e!58345))))

(assert (=> d!23875 (= res!45805 ((_ is Cons!1555) Nil!1556))))

(assert (=> d!23875 (= (contains!770 Nil!1556 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)) lt!43064)))

(declare-fun b!89644 () Bool)

(declare-fun e!58344 () Bool)

(assert (=> b!89644 (= e!58345 e!58344)))

(declare-fun res!45806 () Bool)

(assert (=> b!89644 (=> res!45806 e!58344)))

(assert (=> b!89644 (= res!45806 (= (h!2147 Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!89645 () Bool)

(assert (=> b!89645 (= e!58344 (contains!770 (t!5321 Nil!1556) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!23875 res!45805) b!89644))

(assert (= (and b!89644 (not res!45806)) b!89645))

(assert (=> d!23875 m!95255))

(assert (=> d!23875 m!94929))

(declare-fun m!96087 () Bool)

(assert (=> d!23875 m!96087))

(assert (=> b!89645 m!94929))

(declare-fun m!96089 () Bool)

(assert (=> b!89645 m!96089))

(assert (=> b!88860 d!23875))

(declare-fun d!23877 () Bool)

(declare-fun c!14929 () Bool)

(assert (=> d!23877 (= c!14929 (and ((_ is Cons!1556) (toList!762 lt!42695)) (= (_1!1132 (h!2148 (toList!762 lt!42695))) (_1!1132 lt!42413))))))

(declare-fun e!58346 () Option!147)

(assert (=> d!23877 (= (getValueByKey!141 (toList!762 lt!42695) (_1!1132 lt!42413)) e!58346)))

(declare-fun b!89648 () Bool)

(declare-fun e!58347 () Option!147)

(assert (=> b!89648 (= e!58347 (getValueByKey!141 (t!5322 (toList!762 lt!42695)) (_1!1132 lt!42413)))))

(declare-fun b!89646 () Bool)

(assert (=> b!89646 (= e!58346 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42695)))))))

(declare-fun b!89647 () Bool)

(assert (=> b!89647 (= e!58346 e!58347)))

(declare-fun c!14930 () Bool)

(assert (=> b!89647 (= c!14930 (and ((_ is Cons!1556) (toList!762 lt!42695)) (not (= (_1!1132 (h!2148 (toList!762 lt!42695))) (_1!1132 lt!42413)))))))

(declare-fun b!89649 () Bool)

(assert (=> b!89649 (= e!58347 None!145)))

(assert (= (and d!23877 c!14929) b!89646))

(assert (= (and d!23877 (not c!14929)) b!89647))

(assert (= (and b!89647 c!14930) b!89648))

(assert (= (and b!89647 (not c!14930)) b!89649))

(declare-fun m!96091 () Bool)

(assert (=> b!89648 m!96091))

(assert (=> b!89124 d!23877))

(declare-fun d!23879 () Bool)

(declare-fun e!58348 () Bool)

(assert (=> d!23879 e!58348))

(declare-fun res!45807 () Bool)

(assert (=> d!23879 (=> res!45807 e!58348)))

(declare-fun lt!43068 () Bool)

(assert (=> d!23879 (= res!45807 (not lt!43068))))

(declare-fun lt!43067 () Bool)

(assert (=> d!23879 (= lt!43068 lt!43067)))

(declare-fun lt!43066 () Unit!2654)

(declare-fun e!58349 () Unit!2654)

(assert (=> d!23879 (= lt!43066 e!58349)))

(declare-fun c!14931 () Bool)

(assert (=> d!23879 (= c!14931 lt!43067)))

(assert (=> d!23879 (= lt!43067 (containsKey!145 (toList!762 lt!42652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23879 (= (contains!769 lt!42652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!43068)))

(declare-fun b!89650 () Bool)

(declare-fun lt!43065 () Unit!2654)

(assert (=> b!89650 (= e!58349 lt!43065)))

(assert (=> b!89650 (= lt!43065 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89650 (isDefined!95 (getValueByKey!141 (toList!762 lt!42652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89651 () Bool)

(declare-fun Unit!2682 () Unit!2654)

(assert (=> b!89651 (= e!58349 Unit!2682)))

(declare-fun b!89652 () Bool)

(assert (=> b!89652 (= e!58348 (isDefined!95 (getValueByKey!141 (toList!762 lt!42652) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23879 c!14931) b!89650))

(assert (= (and d!23879 (not c!14931)) b!89651))

(assert (= (and d!23879 (not res!45807)) b!89652))

(declare-fun m!96093 () Bool)

(assert (=> d!23879 m!96093))

(declare-fun m!96095 () Bool)

(assert (=> b!89650 m!96095))

(declare-fun m!96097 () Bool)

(assert (=> b!89650 m!96097))

(assert (=> b!89650 m!96097))

(declare-fun m!96099 () Bool)

(assert (=> b!89650 m!96099))

(assert (=> b!89652 m!96097))

(assert (=> b!89652 m!96097))

(assert (=> b!89652 m!96099))

(assert (=> b!89096 d!23879))

(declare-fun d!23881 () Bool)

(declare-fun e!58350 () Bool)

(assert (=> d!23881 e!58350))

(declare-fun res!45808 () Bool)

(assert (=> d!23881 (=> res!45808 e!58350)))

(declare-fun lt!43072 () Bool)

(assert (=> d!23881 (= res!45808 (not lt!43072))))

(declare-fun lt!43071 () Bool)

(assert (=> d!23881 (= lt!43072 lt!43071)))

(declare-fun lt!43070 () Unit!2654)

(declare-fun e!58351 () Unit!2654)

(assert (=> d!23881 (= lt!43070 e!58351)))

(declare-fun c!14932 () Bool)

(assert (=> d!23881 (= c!14932 lt!43071)))

(assert (=> d!23881 (= lt!43071 (containsKey!145 (toList!762 lt!42652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23881 (= (contains!769 lt!42652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!43072)))

(declare-fun b!89653 () Bool)

(declare-fun lt!43069 () Unit!2654)

(assert (=> b!89653 (= e!58351 lt!43069)))

(assert (=> b!89653 (= lt!43069 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89653 (isDefined!95 (getValueByKey!141 (toList!762 lt!42652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89654 () Bool)

(declare-fun Unit!2683 () Unit!2654)

(assert (=> b!89654 (= e!58351 Unit!2683)))

(declare-fun b!89655 () Bool)

(assert (=> b!89655 (= e!58350 (isDefined!95 (getValueByKey!141 (toList!762 lt!42652) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23881 c!14932) b!89653))

(assert (= (and d!23881 (not c!14932)) b!89654))

(assert (= (and d!23881 (not res!45808)) b!89655))

(declare-fun m!96101 () Bool)

(assert (=> d!23881 m!96101))

(declare-fun m!96103 () Bool)

(assert (=> b!89653 m!96103))

(declare-fun m!96105 () Bool)

(assert (=> b!89653 m!96105))

(assert (=> b!89653 m!96105))

(declare-fun m!96107 () Bool)

(assert (=> b!89653 m!96107))

(assert (=> b!89655 m!96105))

(assert (=> b!89655 m!96105))

(assert (=> b!89655 m!96107))

(assert (=> d!23627 d!23881))

(assert (=> d!23627 d!23645))

(declare-fun d!23883 () Bool)

(declare-fun c!14933 () Bool)

(assert (=> d!23883 (= c!14933 (and ((_ is Cons!1556) (toList!762 lt!42667)) (= (_1!1132 (h!2148 (toList!762 lt!42667))) (_1!1132 lt!42400))))))

(declare-fun e!58352 () Option!147)

(assert (=> d!23883 (= (getValueByKey!141 (toList!762 lt!42667) (_1!1132 lt!42400)) e!58352)))

(declare-fun b!89658 () Bool)

(declare-fun e!58353 () Option!147)

(assert (=> b!89658 (= e!58353 (getValueByKey!141 (t!5322 (toList!762 lt!42667)) (_1!1132 lt!42400)))))

(declare-fun b!89656 () Bool)

(assert (=> b!89656 (= e!58352 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42667)))))))

(declare-fun b!89657 () Bool)

(assert (=> b!89657 (= e!58352 e!58353)))

(declare-fun c!14934 () Bool)

(assert (=> b!89657 (= c!14934 (and ((_ is Cons!1556) (toList!762 lt!42667)) (not (= (_1!1132 (h!2148 (toList!762 lt!42667))) (_1!1132 lt!42400)))))))

(declare-fun b!89659 () Bool)

(assert (=> b!89659 (= e!58353 None!145)))

(assert (= (and d!23883 c!14933) b!89656))

(assert (= (and d!23883 (not c!14933)) b!89657))

(assert (= (and b!89657 c!14934) b!89658))

(assert (= (and b!89657 (not c!14934)) b!89659))

(declare-fun m!96109 () Bool)

(assert (=> b!89658 m!96109))

(assert (=> b!89112 d!23883))

(declare-fun d!23885 () Bool)

(declare-fun lt!43073 () Bool)

(assert (=> d!23885 (= lt!43073 (select (content!93 (toList!762 lt!42683)) lt!42400))))

(declare-fun e!58355 () Bool)

(assert (=> d!23885 (= lt!43073 e!58355)))

(declare-fun res!45810 () Bool)

(assert (=> d!23885 (=> (not res!45810) (not e!58355))))

(assert (=> d!23885 (= res!45810 ((_ is Cons!1556) (toList!762 lt!42683)))))

(assert (=> d!23885 (= (contains!771 (toList!762 lt!42683) lt!42400) lt!43073)))

(declare-fun b!89660 () Bool)

(declare-fun e!58354 () Bool)

(assert (=> b!89660 (= e!58355 e!58354)))

(declare-fun res!45809 () Bool)

(assert (=> b!89660 (=> res!45809 e!58354)))

(assert (=> b!89660 (= res!45809 (= (h!2148 (toList!762 lt!42683)) lt!42400))))

(declare-fun b!89661 () Bool)

(assert (=> b!89661 (= e!58354 (contains!771 (t!5322 (toList!762 lt!42683)) lt!42400))))

(assert (= (and d!23885 res!45810) b!89660))

(assert (= (and b!89660 (not res!45809)) b!89661))

(declare-fun m!96111 () Bool)

(assert (=> d!23885 m!96111))

(declare-fun m!96113 () Bool)

(assert (=> d!23885 m!96113))

(declare-fun m!96115 () Bool)

(assert (=> b!89661 m!96115))

(assert (=> b!89119 d!23885))

(declare-fun d!23887 () Bool)

(assert (=> d!23887 (isDefined!95 (getValueByKey!141 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun lt!43076 () Unit!2654)

(declare-fun choose!546 (List!1560 (_ BitVec 64)) Unit!2654)

(assert (=> d!23887 (= lt!43076 (choose!546 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun e!58358 () Bool)

(assert (=> d!23887 e!58358))

(declare-fun res!45813 () Bool)

(assert (=> d!23887 (=> (not res!45813) (not e!58358))))

(assert (=> d!23887 (= res!45813 (isStrictlySorted!295 (toList!762 lt!42410)))))

(assert (=> d!23887 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) lt!43076)))

(declare-fun b!89664 () Bool)

(assert (=> b!89664 (= e!58358 (containsKey!145 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(assert (= (and d!23887 res!45813) b!89664))

(assert (=> d!23887 m!94805))

(assert (=> d!23887 m!95011))

(assert (=> d!23887 m!95011))

(assert (=> d!23887 m!95013))

(assert (=> d!23887 m!94805))

(declare-fun m!96117 () Bool)

(assert (=> d!23887 m!96117))

(declare-fun m!96119 () Bool)

(assert (=> d!23887 m!96119))

(assert (=> b!89664 m!94805))

(assert (=> b!89664 m!95007))

(assert (=> b!88949 d!23887))

(declare-fun d!23889 () Bool)

(declare-fun isEmpty!348 (Option!147) Bool)

(assert (=> d!23889 (= (isDefined!95 (getValueByKey!141 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))) (not (isEmpty!348 (getValueByKey!141 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))))

(declare-fun bs!3751 () Bool)

(assert (= bs!3751 d!23889))

(assert (=> bs!3751 m!95011))

(declare-fun m!96121 () Bool)

(assert (=> bs!3751 m!96121))

(assert (=> b!88949 d!23889))

(declare-fun d!23891 () Bool)

(declare-fun c!14935 () Bool)

(assert (=> d!23891 (= c!14935 (and ((_ is Cons!1556) (toList!762 lt!42410)) (= (_1!1132 (h!2148 (toList!762 lt!42410))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355))))))

(declare-fun e!58359 () Option!147)

(assert (=> d!23891 (= (getValueByKey!141 (toList!762 lt!42410) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)) e!58359)))

(declare-fun b!89667 () Bool)

(declare-fun e!58360 () Option!147)

(assert (=> b!89667 (= e!58360 (getValueByKey!141 (t!5322 (toList!762 lt!42410)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))

(declare-fun b!89665 () Bool)

(assert (=> b!89665 (= e!58359 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42410)))))))

(declare-fun b!89666 () Bool)

(assert (=> b!89666 (= e!58359 e!58360)))

(declare-fun c!14936 () Bool)

(assert (=> b!89666 (= c!14936 (and ((_ is Cons!1556) (toList!762 lt!42410)) (not (= (_1!1132 (h!2148 (toList!762 lt!42410))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355)))))))

(declare-fun b!89668 () Bool)

(assert (=> b!89668 (= e!58360 None!145)))

(assert (= (and d!23891 c!14935) b!89665))

(assert (= (and d!23891 (not c!14935)) b!89666))

(assert (= (and b!89666 c!14936) b!89667))

(assert (= (and b!89666 (not c!14936)) b!89668))

(assert (=> b!89667 m!94805))

(declare-fun m!96123 () Bool)

(assert (=> b!89667 m!96123))

(assert (=> b!88949 d!23891))

(declare-fun d!23893 () Bool)

(declare-fun e!58361 () Bool)

(assert (=> d!23893 e!58361))

(declare-fun res!45814 () Bool)

(assert (=> d!23893 (=> res!45814 e!58361)))

(declare-fun lt!43080 () Bool)

(assert (=> d!23893 (= res!45814 (not lt!43080))))

(declare-fun lt!43079 () Bool)

(assert (=> d!23893 (= lt!43080 lt!43079)))

(declare-fun lt!43078 () Unit!2654)

(declare-fun e!58362 () Unit!2654)

(assert (=> d!23893 (= lt!43078 e!58362)))

(declare-fun c!14937 () Bool)

(assert (=> d!23893 (= c!14937 lt!43079)))

(assert (=> d!23893 (= lt!43079 (containsKey!145 (toList!762 lt!42695) (_1!1132 lt!42413)))))

(assert (=> d!23893 (= (contains!769 lt!42695 (_1!1132 lt!42413)) lt!43080)))

(declare-fun b!89669 () Bool)

(declare-fun lt!43077 () Unit!2654)

(assert (=> b!89669 (= e!58362 lt!43077)))

(assert (=> b!89669 (= lt!43077 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42695) (_1!1132 lt!42413)))))

(assert (=> b!89669 (isDefined!95 (getValueByKey!141 (toList!762 lt!42695) (_1!1132 lt!42413)))))

(declare-fun b!89670 () Bool)

(declare-fun Unit!2684 () Unit!2654)

(assert (=> b!89670 (= e!58362 Unit!2684)))

(declare-fun b!89671 () Bool)

(assert (=> b!89671 (= e!58361 (isDefined!95 (getValueByKey!141 (toList!762 lt!42695) (_1!1132 lt!42413))))))

(assert (= (and d!23893 c!14937) b!89669))

(assert (= (and d!23893 (not c!14937)) b!89670))

(assert (= (and d!23893 (not res!45814)) b!89671))

(declare-fun m!96125 () Bool)

(assert (=> d!23893 m!96125))

(declare-fun m!96127 () Bool)

(assert (=> b!89669 m!96127))

(assert (=> b!89669 m!95189))

(assert (=> b!89669 m!95189))

(declare-fun m!96129 () Bool)

(assert (=> b!89669 m!96129))

(assert (=> b!89671 m!95189))

(assert (=> b!89671 m!95189))

(assert (=> b!89671 m!96129))

(assert (=> d!23647 d!23893))

(declare-fun d!23895 () Bool)

(declare-fun c!14938 () Bool)

(assert (=> d!23895 (= c!14938 (and ((_ is Cons!1556) lt!42693) (= (_1!1132 (h!2148 lt!42693)) (_1!1132 lt!42413))))))

(declare-fun e!58363 () Option!147)

(assert (=> d!23895 (= (getValueByKey!141 lt!42693 (_1!1132 lt!42413)) e!58363)))

(declare-fun b!89674 () Bool)

(declare-fun e!58364 () Option!147)

(assert (=> b!89674 (= e!58364 (getValueByKey!141 (t!5322 lt!42693) (_1!1132 lt!42413)))))

(declare-fun b!89672 () Bool)

(assert (=> b!89672 (= e!58363 (Some!146 (_2!1132 (h!2148 lt!42693))))))

(declare-fun b!89673 () Bool)

(assert (=> b!89673 (= e!58363 e!58364)))

(declare-fun c!14939 () Bool)

(assert (=> b!89673 (= c!14939 (and ((_ is Cons!1556) lt!42693) (not (= (_1!1132 (h!2148 lt!42693)) (_1!1132 lt!42413)))))))

(declare-fun b!89675 () Bool)

(assert (=> b!89675 (= e!58364 None!145)))

(assert (= (and d!23895 c!14938) b!89672))

(assert (= (and d!23895 (not c!14938)) b!89673))

(assert (= (and b!89673 c!14939) b!89674))

(assert (= (and b!89673 (not c!14939)) b!89675))

(declare-fun m!96131 () Bool)

(assert (=> b!89674 m!96131))

(assert (=> d!23647 d!23895))

(declare-fun d!23897 () Bool)

(assert (=> d!23897 (= (getValueByKey!141 lt!42693 (_1!1132 lt!42413)) (Some!146 (_2!1132 lt!42413)))))

(declare-fun lt!43081 () Unit!2654)

(assert (=> d!23897 (= lt!43081 (choose!536 lt!42693 (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(declare-fun e!58365 () Bool)

(assert (=> d!23897 e!58365))

(declare-fun res!45815 () Bool)

(assert (=> d!23897 (=> (not res!45815) (not e!58365))))

(assert (=> d!23897 (= res!45815 (isStrictlySorted!295 lt!42693))))

(assert (=> d!23897 (= (lemmaContainsTupThenGetReturnValue!60 lt!42693 (_1!1132 lt!42413) (_2!1132 lt!42413)) lt!43081)))

(declare-fun b!89676 () Bool)

(declare-fun res!45816 () Bool)

(assert (=> b!89676 (=> (not res!45816) (not e!58365))))

(assert (=> b!89676 (= res!45816 (containsKey!145 lt!42693 (_1!1132 lt!42413)))))

(declare-fun b!89677 () Bool)

(assert (=> b!89677 (= e!58365 (contains!771 lt!42693 (tuple2!2245 (_1!1132 lt!42413) (_2!1132 lt!42413))))))

(assert (= (and d!23897 res!45815) b!89676))

(assert (= (and b!89676 res!45816) b!89677))

(assert (=> d!23897 m!95183))

(declare-fun m!96133 () Bool)

(assert (=> d!23897 m!96133))

(declare-fun m!96135 () Bool)

(assert (=> d!23897 m!96135))

(declare-fun m!96137 () Bool)

(assert (=> b!89676 m!96137))

(declare-fun m!96139 () Bool)

(assert (=> b!89677 m!96139))

(assert (=> d!23647 d!23897))

(declare-fun bm!8708 () Bool)

(declare-fun call!8713 () List!1560)

(declare-fun call!8712 () List!1560)

(assert (=> bm!8708 (= call!8713 call!8712)))

(declare-fun b!89678 () Bool)

(declare-fun e!58367 () List!1560)

(declare-fun call!8711 () List!1560)

(assert (=> b!89678 (= e!58367 call!8711)))

(declare-fun b!89679 () Bool)

(declare-fun c!14941 () Bool)

(assert (=> b!89679 (= c!14941 (and ((_ is Cons!1556) (toList!762 lt!42398)) (bvsgt (_1!1132 (h!2148 (toList!762 lt!42398))) (_1!1132 lt!42413))))))

(declare-fun e!58366 () List!1560)

(assert (=> b!89679 (= e!58366 e!58367)))

(declare-fun b!89680 () Bool)

(assert (=> b!89680 (= e!58367 call!8711)))

(declare-fun bm!8709 () Bool)

(assert (=> bm!8709 (= call!8711 call!8713)))

(declare-fun c!14943 () Bool)

(declare-fun bm!8710 () Bool)

(declare-fun e!58368 () List!1560)

(assert (=> bm!8710 (= call!8712 ($colon$colon!73 e!58368 (ite c!14943 (h!2148 (toList!762 lt!42398)) (tuple2!2245 (_1!1132 lt!42413) (_2!1132 lt!42413)))))))

(declare-fun c!14940 () Bool)

(assert (=> bm!8710 (= c!14940 c!14943)))

(declare-fun b!89682 () Bool)

(declare-fun res!45818 () Bool)

(declare-fun e!58369 () Bool)

(assert (=> b!89682 (=> (not res!45818) (not e!58369))))

(declare-fun lt!43082 () List!1560)

(assert (=> b!89682 (= res!45818 (containsKey!145 lt!43082 (_1!1132 lt!42413)))))

(declare-fun b!89683 () Bool)

(assert (=> b!89683 (= e!58368 (insertStrictlySorted!62 (t!5322 (toList!762 lt!42398)) (_1!1132 lt!42413) (_2!1132 lt!42413)))))

(declare-fun b!89684 () Bool)

(declare-fun e!58370 () List!1560)

(assert (=> b!89684 (= e!58370 e!58366)))

(declare-fun c!14942 () Bool)

(assert (=> b!89684 (= c!14942 (and ((_ is Cons!1556) (toList!762 lt!42398)) (= (_1!1132 (h!2148 (toList!762 lt!42398))) (_1!1132 lt!42413))))))

(declare-fun b!89685 () Bool)

(assert (=> b!89685 (= e!58368 (ite c!14942 (t!5322 (toList!762 lt!42398)) (ite c!14941 (Cons!1556 (h!2148 (toList!762 lt!42398)) (t!5322 (toList!762 lt!42398))) Nil!1557)))))

(declare-fun b!89686 () Bool)

(assert (=> b!89686 (= e!58366 call!8713)))

(declare-fun b!89687 () Bool)

(assert (=> b!89687 (= e!58369 (contains!771 lt!43082 (tuple2!2245 (_1!1132 lt!42413) (_2!1132 lt!42413))))))

(declare-fun d!23899 () Bool)

(assert (=> d!23899 e!58369))

(declare-fun res!45817 () Bool)

(assert (=> d!23899 (=> (not res!45817) (not e!58369))))

(assert (=> d!23899 (= res!45817 (isStrictlySorted!295 lt!43082))))

(assert (=> d!23899 (= lt!43082 e!58370)))

(assert (=> d!23899 (= c!14943 (and ((_ is Cons!1556) (toList!762 lt!42398)) (bvslt (_1!1132 (h!2148 (toList!762 lt!42398))) (_1!1132 lt!42413))))))

(assert (=> d!23899 (isStrictlySorted!295 (toList!762 lt!42398))))

(assert (=> d!23899 (= (insertStrictlySorted!62 (toList!762 lt!42398) (_1!1132 lt!42413) (_2!1132 lt!42413)) lt!43082)))

(declare-fun b!89681 () Bool)

(assert (=> b!89681 (= e!58370 call!8712)))

(assert (= (and d!23899 c!14943) b!89681))

(assert (= (and d!23899 (not c!14943)) b!89684))

(assert (= (and b!89684 c!14942) b!89686))

(assert (= (and b!89684 (not c!14942)) b!89679))

(assert (= (and b!89679 c!14941) b!89678))

(assert (= (and b!89679 (not c!14941)) b!89680))

(assert (= (or b!89678 b!89680) bm!8709))

(assert (= (or b!89686 bm!8709) bm!8708))

(assert (= (or b!89681 bm!8708) bm!8710))

(assert (= (and bm!8710 c!14940) b!89683))

(assert (= (and bm!8710 (not c!14940)) b!89685))

(assert (= (and d!23899 res!45817) b!89682))

(assert (= (and b!89682 res!45818) b!89687))

(declare-fun m!96141 () Bool)

(assert (=> b!89683 m!96141))

(declare-fun m!96143 () Bool)

(assert (=> b!89687 m!96143))

(declare-fun m!96145 () Bool)

(assert (=> b!89682 m!96145))

(declare-fun m!96147 () Bool)

(assert (=> d!23899 m!96147))

(assert (=> d!23899 m!95297))

(declare-fun m!96149 () Bool)

(assert (=> bm!8710 m!96149))

(assert (=> d!23647 d!23899))

(declare-fun d!23901 () Bool)

(declare-fun c!14944 () Bool)

(assert (=> d!23901 (= c!14944 (and ((_ is Cons!1556) (toList!762 lt!42671)) (= (_1!1132 (h!2148 (toList!762 lt!42671))) (_1!1132 lt!42402))))))

(declare-fun e!58371 () Option!147)

(assert (=> d!23901 (= (getValueByKey!141 (toList!762 lt!42671) (_1!1132 lt!42402)) e!58371)))

(declare-fun b!89690 () Bool)

(declare-fun e!58372 () Option!147)

(assert (=> b!89690 (= e!58372 (getValueByKey!141 (t!5322 (toList!762 lt!42671)) (_1!1132 lt!42402)))))

(declare-fun b!89688 () Bool)

(assert (=> b!89688 (= e!58371 (Some!146 (_2!1132 (h!2148 (toList!762 lt!42671)))))))

(declare-fun b!89689 () Bool)

(assert (=> b!89689 (= e!58371 e!58372)))

(declare-fun c!14945 () Bool)

(assert (=> b!89689 (= c!14945 (and ((_ is Cons!1556) (toList!762 lt!42671)) (not (= (_1!1132 (h!2148 (toList!762 lt!42671))) (_1!1132 lt!42402)))))))

(declare-fun b!89691 () Bool)

(assert (=> b!89691 (= e!58372 None!145)))

(assert (= (and d!23901 c!14944) b!89688))

(assert (= (and d!23901 (not c!14944)) b!89689))

(assert (= (and b!89689 c!14945) b!89690))

(assert (= (and b!89689 (not c!14945)) b!89691))

(declare-fun m!96151 () Bool)

(assert (=> b!89690 m!96151))

(assert (=> b!89114 d!23901))

(assert (=> b!89034 d!23837))

(declare-fun d!23903 () Bool)

(declare-fun e!58373 () Bool)

(assert (=> d!23903 e!58373))

(declare-fun res!45819 () Bool)

(assert (=> d!23903 (=> (not res!45819) (not e!58373))))

(declare-fun lt!43085 () ListLongMap!1493)

(assert (=> d!23903 (= res!45819 (contains!769 lt!43085 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(declare-fun lt!43083 () List!1560)

(assert (=> d!23903 (= lt!43085 (ListLongMap!1494 lt!43083))))

(declare-fun lt!43084 () Unit!2654)

(declare-fun lt!43086 () Unit!2654)

(assert (=> d!23903 (= lt!43084 lt!43086)))

(assert (=> d!23903 (= (getValueByKey!141 lt!43083 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23903 (= lt!43086 (lemmaContainsTupThenGetReturnValue!60 lt!43083 (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23903 (= lt!43083 (insertStrictlySorted!62 (toList!762 call!8620) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))))))

(assert (=> d!23903 (= (+!119 call!8620 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)) lt!43085)))

(declare-fun b!89692 () Bool)

(declare-fun res!45820 () Bool)

(assert (=> b!89692 (=> (not res!45820) (not e!58373))))

(assert (=> b!89692 (= res!45820 (= (getValueByKey!141 (toList!762 lt!43085) (_1!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403))) (Some!146 (_2!1132 (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))))

(declare-fun b!89693 () Bool)

(assert (=> b!89693 (= e!58373 (contains!771 (toList!762 lt!43085) (tuple2!2245 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) lt!42403)))))

(assert (= (and d!23903 res!45819) b!89692))

(assert (= (and b!89692 res!45820) b!89693))

(declare-fun m!96153 () Bool)

(assert (=> d!23903 m!96153))

(declare-fun m!96155 () Bool)

(assert (=> d!23903 m!96155))

(declare-fun m!96157 () Bool)

(assert (=> d!23903 m!96157))

(declare-fun m!96159 () Bool)

(assert (=> d!23903 m!96159))

(declare-fun m!96161 () Bool)

(assert (=> b!89692 m!96161))

(declare-fun m!96163 () Bool)

(assert (=> b!89693 m!96163))

(assert (=> b!89036 d!23903))

(assert (=> d!23649 d!23653))

(declare-fun d!23905 () Bool)

(assert (=> d!23905 (not (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!23905 true))

(declare-fun _$68!79 () Unit!2654)

(assert (=> d!23905 (= (choose!68 (_keys!4050 (v!2676 (underlying!298 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) (Cons!1555 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) from!355) Nil!1556)) _$68!79)))

(declare-fun bs!3752 () Bool)

(assert (= bs!3752 d!23905))

(assert (=> bs!3752 m!94805))

(assert (=> bs!3752 m!94809))

(assert (=> d!23649 d!23905))

(declare-fun b!89694 () Bool)

(declare-fun e!58376 () Bool)

(declare-fun call!8714 () Bool)

(assert (=> b!89694 (= e!58376 call!8714)))

(declare-fun b!89695 () Bool)

(declare-fun e!58375 () Bool)

(declare-fun e!58374 () Bool)

(assert (=> b!89695 (= e!58375 e!58374)))

(declare-fun c!14946 () Bool)

(assert (=> b!89695 (= c!14946 (validKeyInArray!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!8711 () Bool)

(assert (=> bm!8711 (= call!8714 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))))))

(declare-fun b!89696 () Bool)

(assert (=> b!89696 (= e!58374 call!8714)))

(declare-fun d!23907 () Bool)

(declare-fun res!45821 () Bool)

(assert (=> d!23907 (=> res!45821 e!58375)))

(assert (=> d!23907 (= res!45821 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(assert (=> d!23907 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))) e!58375)))

(declare-fun b!89697 () Bool)

(assert (=> b!89697 (= e!58374 e!58376)))

(declare-fun lt!43088 () (_ BitVec 64))

(assert (=> b!89697 (= lt!43088 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!43089 () Unit!2654)

(assert (=> b!89697 (= lt!43089 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!43088 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!89697 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!43088 #b00000000000000000000000000000000)))

(declare-fun lt!43087 () Unit!2654)

(assert (=> b!89697 (= lt!43087 lt!43089)))

(declare-fun res!45822 () Bool)

(assert (=> b!89697 (= res!45822 (= (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))) (Found!255 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!89697 (=> (not res!45822) (not e!58376))))

(assert (= (and d!23907 (not res!45821)) b!89695))

(assert (= (and b!89695 c!14946) b!89697))

(assert (= (and b!89695 (not c!14946)) b!89696))

(assert (= (and b!89697 res!45822) b!89694))

(assert (= (or b!89694 b!89696) bm!8711))

(assert (=> b!89695 m!95457))

(assert (=> b!89695 m!95457))

(assert (=> b!89695 m!95459))

(declare-fun m!96165 () Bool)

(assert (=> bm!8711 m!96165))

(assert (=> b!89697 m!95457))

(declare-fun m!96167 () Bool)

(assert (=> b!89697 m!96167))

(declare-fun m!96169 () Bool)

(assert (=> b!89697 m!96169))

(assert (=> b!89697 m!95457))

(declare-fun m!96171 () Bool)

(assert (=> b!89697 m!96171))

(assert (=> bm!8539 d!23907))

(declare-fun d!23909 () Bool)

(declare-fun lt!43090 () Bool)

(assert (=> d!23909 (= lt!43090 (select (content!93 (toList!762 lt!42687)) lt!42413))))

(declare-fun e!58378 () Bool)

(assert (=> d!23909 (= lt!43090 e!58378)))

(declare-fun res!45824 () Bool)

(assert (=> d!23909 (=> (not res!45824) (not e!58378))))

(assert (=> d!23909 (= res!45824 ((_ is Cons!1556) (toList!762 lt!42687)))))

(assert (=> d!23909 (= (contains!771 (toList!762 lt!42687) lt!42413) lt!43090)))

(declare-fun b!89698 () Bool)

(declare-fun e!58377 () Bool)

(assert (=> b!89698 (= e!58378 e!58377)))

(declare-fun res!45823 () Bool)

(assert (=> b!89698 (=> res!45823 e!58377)))

(assert (=> b!89698 (= res!45823 (= (h!2148 (toList!762 lt!42687)) lt!42413))))

(declare-fun b!89699 () Bool)

(assert (=> b!89699 (= e!58377 (contains!771 (t!5322 (toList!762 lt!42687)) lt!42413))))

(assert (= (and d!23909 res!45824) b!89698))

(assert (= (and b!89698 (not res!45823)) b!89699))

(declare-fun m!96173 () Bool)

(assert (=> d!23909 m!96173))

(declare-fun m!96175 () Bool)

(assert (=> d!23909 m!96175))

(declare-fun m!96177 () Bool)

(assert (=> b!89699 m!96177))

(assert (=> b!89121 d!23909))

(declare-fun d!23911 () Bool)

(declare-fun e!58379 () Bool)

(assert (=> d!23911 e!58379))

(declare-fun res!45825 () Bool)

(assert (=> d!23911 (=> res!45825 e!58379)))

(declare-fun lt!43094 () Bool)

(assert (=> d!23911 (= res!45825 (not lt!43094))))

(declare-fun lt!43093 () Bool)

(assert (=> d!23911 (= lt!43094 lt!43093)))

(declare-fun lt!43092 () Unit!2654)

(declare-fun e!58380 () Unit!2654)

(assert (=> d!23911 (= lt!43092 e!58380)))

(declare-fun c!14947 () Bool)

(assert (=> d!23911 (= c!14947 lt!43093)))

(assert (=> d!23911 (= lt!43093 (containsKey!145 (toList!762 lt!42530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23911 (= (contains!769 lt!42530 #b0000000000000000000000000000000000000000000000000000000000000000) lt!43094)))

(declare-fun b!89700 () Bool)

(declare-fun lt!43091 () Unit!2654)

(assert (=> b!89700 (= e!58380 lt!43091)))

(assert (=> b!89700 (= lt!43091 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!762 lt!42530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89700 (isDefined!95 (getValueByKey!141 (toList!762 lt!42530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!89701 () Bool)

(declare-fun Unit!2685 () Unit!2654)

(assert (=> b!89701 (= e!58380 Unit!2685)))

(declare-fun b!89702 () Bool)

(assert (=> b!89702 (= e!58379 (isDefined!95 (getValueByKey!141 (toList!762 lt!42530) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23911 c!14947) b!89700))

(assert (= (and d!23911 (not c!14947)) b!89701))

(assert (= (and d!23911 (not res!45825)) b!89702))

(declare-fun m!96179 () Bool)

(assert (=> d!23911 m!96179))

(declare-fun m!96181 () Bool)

(assert (=> b!89700 m!96181))

(assert (=> b!89700 m!95301))

(assert (=> b!89700 m!95301))

(declare-fun m!96183 () Bool)

(assert (=> b!89700 m!96183))

(assert (=> b!89702 m!95301))

(assert (=> b!89702 m!95301))

(assert (=> b!89702 m!96183))

(assert (=> bm!8554 d!23911))

(declare-fun d!23913 () Bool)

(assert (=> d!23913 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!42475 #b00000000000000000000000000000000)))

(declare-fun lt!43097 () Unit!2654)

(declare-fun choose!13 (array!4056 (_ BitVec 64) (_ BitVec 32)) Unit!2654)

(assert (=> d!23913 (= lt!43097 (choose!13 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!42475 #b00000000000000000000000000000000))))

(assert (=> d!23913 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!23913 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!42475 #b00000000000000000000000000000000) lt!43097)))

(declare-fun bs!3753 () Bool)

(assert (= bs!3753 d!23913))

(assert (=> bs!3753 m!94941))

(declare-fun m!96185 () Bool)

(assert (=> bs!3753 m!96185))

(assert (=> b!88873 d!23913))

(declare-fun d!23915 () Bool)

(declare-fun res!45826 () Bool)

(declare-fun e!58381 () Bool)

(assert (=> d!23915 (=> res!45826 e!58381)))

(assert (=> d!23915 (= res!45826 (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) lt!42475))))

(assert (=> d!23915 (= (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!42475 #b00000000000000000000000000000000) e!58381)))

(declare-fun b!89703 () Bool)

(declare-fun e!58382 () Bool)

(assert (=> b!89703 (= e!58381 e!58382)))

(declare-fun res!45827 () Bool)

(assert (=> b!89703 (=> (not res!45827) (not e!58382))))

(assert (=> b!89703 (= res!45827 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))))

(declare-fun b!89704 () Bool)

(assert (=> b!89704 (= e!58382 (arrayContainsKey!0 (_keys!4050 (v!2676 (underlying!298 thiss!992))) lt!42475 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!23915 (not res!45826)) b!89703))

(assert (= (and b!89703 res!45827) b!89704))

(assert (=> d!23915 m!94929))

(declare-fun m!96187 () Bool)

(assert (=> b!89704 m!96187))

(assert (=> b!88873 d!23915))

(declare-fun b!89705 () Bool)

(declare-fun e!58385 () SeekEntryResult!255)

(assert (=> b!89705 (= e!58385 Undefined!255)))

(declare-fun b!89706 () Bool)

(declare-fun e!58383 () SeekEntryResult!255)

(declare-fun lt!43099 () SeekEntryResult!255)

(assert (=> b!89706 (= e!58383 (Found!255 (index!3161 lt!43099)))))

(declare-fun b!89707 () Bool)

(assert (=> b!89707 (= e!58385 e!58383)))

(declare-fun lt!43098 () (_ BitVec 64))

(assert (=> b!89707 (= lt!43098 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (index!3161 lt!43099)))))

(declare-fun c!14948 () Bool)

(assert (=> b!89707 (= c!14948 (= lt!43098 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!89708 () Bool)

(declare-fun e!58384 () SeekEntryResult!255)

(assert (=> b!89708 (= e!58384 (MissingZero!255 (index!3161 lt!43099)))))

(declare-fun b!89709 () Bool)

(declare-fun c!14949 () Bool)

(assert (=> b!89709 (= c!14949 (= lt!43098 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!89709 (= e!58383 e!58384)))

(declare-fun d!23917 () Bool)

(declare-fun lt!43100 () SeekEntryResult!255)

(assert (=> d!23917 (and (or ((_ is Undefined!255) lt!43100) (not ((_ is Found!255) lt!43100)) (and (bvsge (index!3160 lt!43100) #b00000000000000000000000000000000) (bvslt (index!3160 lt!43100) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))) (or ((_ is Undefined!255) lt!43100) ((_ is Found!255) lt!43100) (not ((_ is MissingZero!255) lt!43100)) (and (bvsge (index!3159 lt!43100) #b00000000000000000000000000000000) (bvslt (index!3159 lt!43100) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))) (or ((_ is Undefined!255) lt!43100) ((_ is Found!255) lt!43100) ((_ is MissingZero!255) lt!43100) (not ((_ is MissingVacant!255) lt!43100)) (and (bvsge (index!3162 lt!43100) #b00000000000000000000000000000000) (bvslt (index!3162 lt!43100) (size!2176 (_keys!4050 (v!2676 (underlying!298 thiss!992))))))) (or ((_ is Undefined!255) lt!43100) (ite ((_ is Found!255) lt!43100) (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (index!3160 lt!43100)) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!255) lt!43100) (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (index!3159 lt!43100)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!255) lt!43100) (= (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) (index!3162 lt!43100)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23917 (= lt!43100 e!58385)))

(declare-fun c!14950 () Bool)

(assert (=> d!23917 (= c!14950 (and ((_ is Intermediate!255) lt!43099) (undefined!1067 lt!43099)))))

(assert (=> d!23917 (= lt!43099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) (mask!6416 (v!2676 (underlying!298 thiss!992)))) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))))))

(assert (=> d!23917 (validMask!0 (mask!6416 (v!2676 (underlying!298 thiss!992))))))

(assert (=> d!23917 (= (seekEntryOrOpen!0 (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))) lt!43100)))

(declare-fun b!89710 () Bool)

(assert (=> b!89710 (= e!58384 (seekKeyOrZeroReturnVacant!0 (x!12241 lt!43099) (index!3161 lt!43099) (index!3161 lt!43099) (select (arr!1930 (_keys!4050 (v!2676 (underlying!298 thiss!992)))) #b00000000000000000000000000000000) (_keys!4050 (v!2676 (underlying!298 thiss!992))) (mask!6416 (v!2676 (underlying!298 thiss!992)))))))

(assert (= (and d!23917 c!14950) b!89705))

(assert (= (and d!23917 (not c!14950)) b!89707))

(assert (= (and b!89707 c!14948) b!89706))

(assert (= (and b!89707 (not c!14948)) b!89709))

(assert (= (and b!89709 c!14949) b!89708))

(assert (= (and b!89709 (not c!14949)) b!89710))

(declare-fun m!96189 () Bool)

(assert (=> b!89707 m!96189))

(declare-fun m!96191 () Bool)

(assert (=> d!23917 m!96191))

(declare-fun m!96193 () Bool)

(assert (=> d!23917 m!96193))

(assert (=> d!23917 m!94821))

(assert (=> d!23917 m!94929))

(declare-fun m!96195 () Bool)

(assert (=> d!23917 m!96195))

(declare-fun m!96197 () Bool)

(assert (=> d!23917 m!96197))

(assert (=> d!23917 m!96195))

(assert (=> d!23917 m!94929))

(declare-fun m!96199 () Bool)

(assert (=> d!23917 m!96199))

(assert (=> b!89710 m!94929))

(declare-fun m!96201 () Bool)

(assert (=> b!89710 m!96201))

(assert (=> b!88873 d!23917))

(assert (=> bm!8617 d!23613))

(assert (=> b!88951 d!23889))

(assert (=> b!88951 d!23891))

(declare-fun d!23919 () Bool)

(declare-fun e!58386 () Bool)

(assert (=> d!23919 e!58386))

(declare-fun res!45828 () Bool)

(assert (=> d!23919 (=> (not res!45828) (not e!58386))))

(declare-fun lt!43103 () ListLongMap!1493)

(assert (=> d!23919 (= res!45828 (contains!769 lt!43103 (_1!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(declare-fun lt!43101 () List!1560)

(assert (=> d!23919 (= lt!43103 (ListLongMap!1494 lt!43101))))

(declare-fun lt!43102 () Unit!2654)

(declare-fun lt!43104 () Unit!2654)

(assert (=> d!23919 (= lt!43102 lt!43104)))

(assert (=> d!23919 (= (getValueByKey!141 lt!43101 (_1!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))) (Some!146 (_2!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(assert (=> d!23919 (= lt!43104 (lemmaContainsTupThenGetReturnValue!60 lt!43101 (_1!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (_2!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(assert (=> d!23919 (= lt!43101 (insertStrictlySorted!62 (toList!762 (ite c!14733 call!8557 (ite c!14731 call!8561 call!8562))) (_1!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) (_2!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))))))

(assert (=> d!23919 (= (+!119 (ite c!14733 call!8557 (ite c!14731 call!8561 call!8562)) (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))) lt!43103)))

(declare-fun b!89711 () Bool)

(declare-fun res!45829 () Bool)

(assert (=> b!89711 (=> (not res!45829) (not e!58386))))

(assert (=> b!89711 (= res!45829 (= (getValueByKey!141 (toList!762 lt!43103) (_1!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992))))))) (Some!146 (_2!1132 (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))))

(declare-fun b!89712 () Bool)

(assert (=> b!89712 (= e!58386 (contains!771 (toList!762 lt!43103) (ite (or c!14733 c!14731) (tuple2!2245 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2261 (v!2676 (underlying!298 thiss!992)))) (tuple2!2245 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2261 (v!2676 (underlying!298 thiss!992)))))))))

(assert (= (and d!23919 res!45828) b!89711))

(assert (= (and b!89711 res!45829) b!89712))

(declare-fun m!96203 () Bool)

(assert (=> d!23919 m!96203))

(declare-fun m!96205 () Bool)

(assert (=> d!23919 m!96205))

(declare-fun m!96207 () Bool)

(assert (=> d!23919 m!96207))

(declare-fun m!96209 () Bool)

(assert (=> d!23919 m!96209))

(declare-fun m!96211 () Bool)

(assert (=> b!89711 m!96211))

(declare-fun m!96213 () Bool)

(assert (=> b!89712 m!96213))

(assert (=> bm!8559 d!23919))

(declare-fun b!89721 () Bool)

(declare-fun res!45840 () Bool)

(declare-fun e!58389 () Bool)

(assert (=> b!89721 (=> (not res!45840) (not e!58389))))

(assert (=> b!89721 (= res!45840 (and (= (size!2177 (_values!2355 newMap!16)) (bvadd (mask!6416 newMap!16) #b00000000000000000000000000000001)) (= (size!2176 (_keys!4050 newMap!16)) (size!2177 (_values!2355 newMap!16))) (bvsge (_size!433 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!433 newMap!16) (bvadd (mask!6416 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!89722 () Bool)

(declare-fun res!45839 () Bool)

(assert (=> b!89722 (=> (not res!45839) (not e!58389))))

(declare-fun size!2180 (LongMapFixedSize!768) (_ BitVec 32))

(assert (=> b!89722 (= res!45839 (bvsge (size!2180 newMap!16) (_size!433 newMap!16)))))

(declare-fun b!89724 () Bool)

(assert (=> b!89724 (= e!58389 (and (bvsge (extraKeys!2205 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2205 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!433 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!23921 () Bool)

(declare-fun res!45841 () Bool)

(assert (=> d!23921 (=> (not res!45841) (not e!58389))))

(assert (=> d!23921 (= res!45841 (validMask!0 (mask!6416 newMap!16)))))

(assert (=> d!23921 (= (simpleValid!59 newMap!16) e!58389)))

(declare-fun b!89723 () Bool)

(declare-fun res!45838 () Bool)

(assert (=> b!89723 (=> (not res!45838) (not e!58389))))

(assert (=> b!89723 (= res!45838 (= (size!2180 newMap!16) (bvadd (_size!433 newMap!16) (bvsdiv (bvadd (extraKeys!2205 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!23921 res!45841) b!89721))

(assert (= (and b!89721 res!45840) b!89722))

(assert (= (and b!89722 res!45839) b!89723))

(assert (= (and b!89723 res!45838) b!89724))

(declare-fun m!96215 () Bool)

(assert (=> b!89722 m!96215))

(assert (=> d!23921 m!95265))

(assert (=> b!89723 m!96215))

(assert (=> d!23659 d!23921))

(assert (=> b!88857 d!23761))

(declare-fun d!23923 () Bool)

(declare-fun lt!43105 () Bool)

(assert (=> d!23923 (= lt!43105 (select (content!93 (toList!762 lt!42691)) lt!42402))))

(declare-fun e!58391 () Bool)

(assert (=> d!23923 (= lt!43105 e!58391)))

(declare-fun res!45843 () Bool)

(assert (=> d!23923 (=> (not res!45843) (not e!58391))))

(assert (=> d!23923 (= res!45843 ((_ is Cons!1556) (toList!762 lt!42691)))))

(assert (=> d!23923 (= (contains!771 (toList!762 lt!42691) lt!42402) lt!43105)))

(declare-fun b!89725 () Bool)

(declare-fun e!58390 () Bool)

(assert (=> b!89725 (= e!58391 e!58390)))

(declare-fun res!45842 () Bool)

(assert (=> b!89725 (=> res!45842 e!58390)))

(assert (=> b!89725 (= res!45842 (= (h!2148 (toList!762 lt!42691)) lt!42402))))

(declare-fun b!89726 () Bool)

(assert (=> b!89726 (= e!58390 (contains!771 (t!5322 (toList!762 lt!42691)) lt!42402))))

(assert (= (and d!23923 res!45843) b!89725))

(assert (= (and b!89725 (not res!45842)) b!89726))

(declare-fun m!96217 () Bool)

(assert (=> d!23923 m!96217))

(declare-fun m!96219 () Bool)

(assert (=> d!23923 m!96219))

(declare-fun m!96221 () Bool)

(assert (=> b!89726 m!96221))

(assert (=> b!89123 d!23923))

(declare-fun mapNonEmpty!3461 () Bool)

(declare-fun mapRes!3461 () Bool)

(declare-fun tp!9041 () Bool)

(declare-fun e!58393 () Bool)

(assert (=> mapNonEmpty!3461 (= mapRes!3461 (and tp!9041 e!58393))))

(declare-fun mapRest!3461 () (Array (_ BitVec 32) ValueCell!930))

(declare-fun mapValue!3461 () ValueCell!930)

(declare-fun mapKey!3461 () (_ BitVec 32))

(assert (=> mapNonEmpty!3461 (= mapRest!3460 (store mapRest!3461 mapKey!3461 mapValue!3461))))

(declare-fun mapIsEmpty!3461 () Bool)

(assert (=> mapIsEmpty!3461 mapRes!3461))

(declare-fun b!89727 () Bool)

(assert (=> b!89727 (= e!58393 tp_is_empty!2547)))

(declare-fun condMapEmpty!3461 () Bool)

(declare-fun mapDefault!3461 () ValueCell!930)

(assert (=> mapNonEmpty!3460 (= condMapEmpty!3461 (= mapRest!3460 ((as const (Array (_ BitVec 32) ValueCell!930)) mapDefault!3461)))))

(declare-fun e!58392 () Bool)

(assert (=> mapNonEmpty!3460 (= tp!9040 (and e!58392 mapRes!3461))))

(declare-fun b!89728 () Bool)

(assert (=> b!89728 (= e!58392 tp_is_empty!2547)))

(assert (= (and mapNonEmpty!3460 condMapEmpty!3461) mapIsEmpty!3461))

(assert (= (and mapNonEmpty!3460 (not condMapEmpty!3461)) mapNonEmpty!3461))

(assert (= (and mapNonEmpty!3461 ((_ is ValueCellFull!930) mapValue!3461)) b!89727))

(assert (= (and mapNonEmpty!3460 ((_ is ValueCellFull!930) mapDefault!3461)) b!89728))

(declare-fun m!96223 () Bool)

(assert (=> mapNonEmpty!3461 m!96223))

(declare-fun mapNonEmpty!3462 () Bool)

(declare-fun mapRes!3462 () Bool)

(declare-fun tp!9042 () Bool)

(declare-fun e!58395 () Bool)

(assert (=> mapNonEmpty!3462 (= mapRes!3462 (and tp!9042 e!58395))))

(declare-fun mapRest!3462 () (Array (_ BitVec 32) ValueCell!930))

(declare-fun mapValue!3462 () ValueCell!930)

(declare-fun mapKey!3462 () (_ BitVec 32))

(assert (=> mapNonEmpty!3462 (= mapRest!3459 (store mapRest!3462 mapKey!3462 mapValue!3462))))

(declare-fun mapIsEmpty!3462 () Bool)

(assert (=> mapIsEmpty!3462 mapRes!3462))

(declare-fun b!89729 () Bool)

(assert (=> b!89729 (= e!58395 tp_is_empty!2547)))

(declare-fun condMapEmpty!3462 () Bool)

(declare-fun mapDefault!3462 () ValueCell!930)

(assert (=> mapNonEmpty!3459 (= condMapEmpty!3462 (= mapRest!3459 ((as const (Array (_ BitVec 32) ValueCell!930)) mapDefault!3462)))))

(declare-fun e!58394 () Bool)

(assert (=> mapNonEmpty!3459 (= tp!9039 (and e!58394 mapRes!3462))))

(declare-fun b!89730 () Bool)

(assert (=> b!89730 (= e!58394 tp_is_empty!2547)))

(assert (= (and mapNonEmpty!3459 condMapEmpty!3462) mapIsEmpty!3462))

(assert (= (and mapNonEmpty!3459 (not condMapEmpty!3462)) mapNonEmpty!3462))

(assert (= (and mapNonEmpty!3462 ((_ is ValueCellFull!930) mapValue!3462)) b!89729))

(assert (= (and mapNonEmpty!3459 ((_ is ValueCellFull!930) mapDefault!3462)) b!89730))

(declare-fun m!96225 () Bool)

(assert (=> mapNonEmpty!3462 m!96225))

(declare-fun b_lambda!3961 () Bool)

(assert (= b_lambda!3957 (or (and b!88775 b_free!2261 (= (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) (defaultEntry!2372 newMap!16))) (and b!88759 b_free!2263) b_lambda!3961)))

(declare-fun b_lambda!3963 () Bool)

(assert (= b_lambda!3955 (or (and b!88775 b_free!2261 (= (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) (defaultEntry!2372 newMap!16))) (and b!88759 b_free!2263) b_lambda!3963)))

(declare-fun b_lambda!3965 () Bool)

(assert (= b_lambda!3951 (or (and b!88775 b_free!2261) (and b!88759 b_free!2263 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))) b_lambda!3965)))

(declare-fun b_lambda!3967 () Bool)

(assert (= b_lambda!3959 (or (and b!88775 b_free!2261 (= (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))) (defaultEntry!2372 newMap!16))) (and b!88759 b_free!2263) b_lambda!3967)))

(declare-fun b_lambda!3969 () Bool)

(assert (= b_lambda!3953 (or (and b!88775 b_free!2261) (and b!88759 b_free!2263 (= (defaultEntry!2372 newMap!16) (defaultEntry!2372 (v!2676 (underlying!298 thiss!992))))) b_lambda!3969)))

(check-sat (not d!23799) (not d!23889) (not bm!8645) (not bm!8673) (not b!89347) (not b!89207) (not b!89465) (not b!89304) (not d!23819) (not b!89436) (not d!23917) (not d!23687) (not b!89292) (not b!89440) (not b!89597) (not bm!8695) (not d!23803) tp_is_empty!2547 (not b!89289) (not bm!8677) (not b!89690) (not b!89285) (not bm!8705) (not b!89279) (not d!23849) (not b!89443) (not d!23829) (not b!89230) (not b!89240) (not d!23753) (not b!89298) (not b!89420) (not b!89528) (not b!89402) (not b!89428) (not b!89474) (not b!89271) (not b_lambda!3945) (not b!89653) (not b!89637) (not bm!8700) (not b!89303) (not b!89245) (not b!89345) (not d!23709) (not b!89263) (not d!23919) (not b!89464) (not d!23875) (not b!89435) (not b!89676) (not b!89237) (not b!89215) (not d!23721) (not b!89677) (not b!89576) (not b_lambda!3967) (not b!89246) (not b_lambda!3965) (not b!89297) (not d!23897) (not bm!8681) (not b!89405) (not b!89613) (not b!89650) (not b!89255) (not d!23777) (not b!89522) (not d!23667) (not b!89682) (not d!23669) (not b!89252) (not b!89429) (not d!23841) (not b!89226) (not b!89509) (not d!23801) (not b!89213) (not b!89589) (not d!23913) (not b!89594) (not b!89393) (not b!89671) (not b!89208) (not b!89309) (not b!89596) (not b!89584) (not b!89617) (not d!23745) (not b!89571) (not d!23695) (not b!89667) (not b!89723) (not b!89669) (not bm!8675) (not d!23845) (not b!89658) (not b!89344) (not bm!8648) (not bm!8693) (not b!89652) (not d!23789) (not b!89502) (not d!23701) (not b!89181) (not b!89496) (not bm!8680) (not d!23727) (not d!23705) (not b!89256) (not d!23793) (not d!23739) (not b!89327) (not b!89661) (not b!89700) (not b!89290) (not bm!8660) (not b!89591) (not d!23781) (not b!89446) (not d!23825) (not b!89269) (not b!89314) (not b!89641) (not b!89321) (not b!89683) (not b!89258) (not d!23779) (not d!23757) (not b!89476) (not b!89175) (not bm!8696) (not b!89239) (not b!89253) (not d!23733) (not b!89260) (not d!23765) (not d!23881) (not d!23713) (not d!23809) (not b!89521) (not b!89276) (not b!89626) (not b!89471) (not b!89250) (not b!89350) (not b!89640) (not b!89257) (not b!89400) (not d!23859) (not d!23673) (not d!23737) (not d!23909) b_and!5375 (not b!89270) (not b!89693) (not b!89316) (not b!89234) (not d!23839) (not b!89353) (not bm!8711) (not b_lambda!3963) (not b!89295) (not d!23827) (not d!23689) (not d!23717) (not b!89602) (not b!89388) (not b!89427) (not b!89695) (not b!89586) (not b!89273) (not b!89212) (not bm!8710) (not bm!8694) (not d!23821) (not b!89511) (not bm!8699) (not bm!8652) (not b!89609) (not d!23843) (not b!89467) (not b!89487) (not b!89466) (not b_lambda!3969) (not b!89498) (not bm!8655) (not b!89523) (not b!89702) (not d!23675) (not d!23703) (not mapNonEmpty!3461) (not b!89308) (not d!23719) (not d!23723) (not b!89432) (not d!23661) (not b!89469) (not b!89611) (not d!23847) (not d!23869) (not d!23903) (not d!23817) (not b_lambda!3949) (not b!89342) (not b!89264) (not b!89442) (not b!89284) (not d!23671) (not d!23887) (not b!89349) (not b!89390) b_and!5373 (not b!89312) (not b_next!2261) (not d!23711) (not b!89477) (not bm!8706) (not b_next!2263) (not b!89439) (not b_lambda!3961) (not bm!8659) (not b!89722) (not b!89569) (not b!89704) (not b!89221) (not d!23823) (not bm!8669) (not b!89699) (not b!89445) (not d!23815) (not b!89525) (not b!89472) (not b!89322) (not b_lambda!3937) (not d!23787) (not b!89645) (not b!89311) (not b!89726) (not b!89408) (not b!89232) (not d!23885) (not bm!8658) (not d!23923) (not b!89575) (not b!89444) (not d!23813) (not b!89643) (not b!89484) (not b!89386) (not b!89426) (not b!89341) (not b!89339) (not b!89401) (not b!89162) (not b!89501) (not b!89674) (not d!23771) (not d!23783) (not d!23677) (not b!89352) (not bm!8665) (not d!23899) (not b!89478) (not b!89711) (not b!89687) (not b!89505) (not d!23685) (not d!23855) (not bm!8682) (not d!23791) (not d!23731) (not b!89624) (not b!89182) (not mapNonEmpty!3462) (not b!89620) (not b!89310) (not d!23693) (not b!89587) (not bm!8701) (not d!23861) (not b!89470) (not b!89332) (not b_lambda!3947) (not b!89712) (not b!89621) (not b!89482) (not d!23747) (not d!23835) (not d!23785) (not bm!8704) (not b!89526) (not d!23893) (not b!89623) (not d!23871) (not b!89259) (not b!89578) (not b!89266) (not b!89164) (not b!89692) (not b!89603) (not b!89710) (not b!89434) (not b!89506) (not b!89573) (not b!89328) (not b!89313) (not b!89261) (not d!23811) (not b!89383) (not d!23797) (not d!23867) (not d!23807) (not b!89433) (not b!89607) (not b!89615) (not d!23873) (not bm!8674) (not d!23905) (not d!23805) (not b!89655) (not d!23795) (not d!23767) (not b!89616) (not d!23775) (not d!23833) (not d!23851) (not bm!8649) (not b!89697) (not b!89485) (not b!89648) (not b!89319) (not d!23911) (not bm!8666) (not d!23665) (not b!89664) (not d!23921) (not b!89500) (not d!23681) (not b!89441) (not b!89481) (not bm!8670) (not b!89278) (not b!89438) (not d!23879) (not b!89524) (not b!89468) (not d!23837) (not b!89337) (not b!89508))
(check-sat b_and!5373 b_and!5375 (not b_next!2261) (not b_next!2263))
