; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15230 () Bool)

(assert start!15230)

(declare-fun b!146877 () Bool)

(declare-fun b_free!3141 () Bool)

(declare-fun b_next!3141 () Bool)

(assert (=> b!146877 (= b_free!3141 (not b_next!3141))))

(declare-fun tp!11927 () Bool)

(declare-fun b_and!9225 () Bool)

(assert (=> b!146877 (= tp!11927 b_and!9225)))

(declare-fun b!146893 () Bool)

(declare-fun b_free!3143 () Bool)

(declare-fun b_next!3143 () Bool)

(assert (=> b!146893 (= b_free!3143 (not b_next!3143))))

(declare-fun tp!11928 () Bool)

(declare-fun b_and!9227 () Bool)

(assert (=> b!146893 (= tp!11928 b_and!9227)))

(declare-fun b!146873 () Bool)

(declare-fun e!95908 () Bool)

(declare-fun tp_is_empty!2987 () Bool)

(assert (=> b!146873 (= e!95908 tp_is_empty!2987)))

(declare-fun b!146874 () Bool)

(declare-fun e!95898 () Bool)

(declare-fun e!95905 () Bool)

(assert (=> b!146874 (= e!95898 (not e!95905))))

(declare-fun res!69842 () Bool)

(assert (=> b!146874 (=> res!69842 e!95905)))

(declare-datatypes ((V!3629 0))(
  ( (V!3630 (val!1538 Int)) )
))
(declare-datatypes ((array!5018 0))(
  ( (array!5019 (arr!2370 (Array (_ BitVec 32) (_ BitVec 64))) (size!2646 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1150 0))(
  ( (ValueCellFull!1150 (v!3364 V!3629)) (EmptyCell!1150) )
))
(declare-datatypes ((array!5020 0))(
  ( (array!5021 (arr!2371 (Array (_ BitVec 32) ValueCell!1150)) (size!2647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1208 0))(
  ( (LongMapFixedSize!1209 (defaultEntry!3020 Int) (mask!7400 (_ BitVec 32)) (extraKeys!2765 (_ BitVec 32)) (zeroValue!2865 V!3629) (minValue!2865 V!3629) (_size!653 (_ BitVec 32)) (_keys!4789 array!5018) (_values!3003 array!5020) (_vacant!653 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!990 0))(
  ( (Cell!991 (v!3365 LongMapFixedSize!1208)) )
))
(declare-datatypes ((LongMap!990 0))(
  ( (LongMap!991 (underlying!506 Cell!990)) )
))
(declare-fun thiss!992 () LongMap!990)

(declare-datatypes ((tuple2!2758 0))(
  ( (tuple2!2759 (_1!1389 Bool) (_2!1389 LongMapFixedSize!1208)) )
))
(declare-fun lt!77378 () tuple2!2758)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2760 0))(
  ( (tuple2!2761 (_1!1390 (_ BitVec 64)) (_2!1390 V!3629)) )
))
(declare-datatypes ((List!1804 0))(
  ( (Nil!1801) (Cons!1800 (h!2408 tuple2!2760) (t!6537 List!1804)) )
))
(declare-datatypes ((ListLongMap!1787 0))(
  ( (ListLongMap!1788 (toList!909 List!1804)) )
))
(declare-fun getCurrentListMap!572 (array!5018 array!5020 (_ BitVec 32) (_ BitVec 32) V!3629 V!3629 (_ BitVec 32) Int) ListLongMap!1787)

(declare-fun map!1473 (LongMapFixedSize!1208) ListLongMap!1787)

(assert (=> b!146874 (= res!69842 (not (= (getCurrentListMap!572 (_keys!4789 (v!3365 (underlying!506 thiss!992))) (_values!3003 (v!3365 (underlying!506 thiss!992))) (mask!7400 (v!3365 (underlying!506 thiss!992))) (extraKeys!2765 (v!3365 (underlying!506 thiss!992))) (zeroValue!2865 (v!3365 (underlying!506 thiss!992))) (minValue!2865 (v!3365 (underlying!506 thiss!992))) from!355 (defaultEntry!3020 (v!3365 (underlying!506 thiss!992)))) (map!1473 (_2!1389 lt!77378)))))))

(declare-fun lt!77370 () ListLongMap!1787)

(declare-fun lt!77367 () tuple2!2760)

(declare-fun lt!77372 () ListLongMap!1787)

(declare-fun lt!77380 () tuple2!2760)

(declare-fun +!183 (ListLongMap!1787 tuple2!2760) ListLongMap!1787)

(assert (=> b!146874 (= (+!183 lt!77370 lt!77367) (+!183 (+!183 lt!77372 lt!77367) lt!77380))))

(assert (=> b!146874 (= lt!77367 (tuple2!2761 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2865 (v!3365 (underlying!506 thiss!992)))))))

(declare-fun lt!77377 () V!3629)

(declare-datatypes ((Unit!4655 0))(
  ( (Unit!4656) )
))
(declare-fun lt!77373 () Unit!4655)

(declare-fun addCommutativeForDiffKeys!76 (ListLongMap!1787 (_ BitVec 64) V!3629 (_ BitVec 64) V!3629) Unit!4655)

(assert (=> b!146874 (= lt!77373 (addCommutativeForDiffKeys!76 lt!77372 (select (arr!2370 (_keys!4789 (v!3365 (underlying!506 thiss!992)))) from!355) lt!77377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2865 (v!3365 (underlying!506 thiss!992)))))))

(declare-fun lt!77381 () ListLongMap!1787)

(assert (=> b!146874 (= lt!77381 lt!77370)))

(assert (=> b!146874 (= lt!77370 (+!183 lt!77372 lt!77380))))

(declare-fun lt!77368 () ListLongMap!1787)

(declare-fun lt!77384 () tuple2!2760)

(assert (=> b!146874 (= lt!77381 (+!183 lt!77368 lt!77384))))

(declare-fun lt!77369 () ListLongMap!1787)

(assert (=> b!146874 (= lt!77372 (+!183 lt!77369 lt!77384))))

(assert (=> b!146874 (= lt!77384 (tuple2!2761 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2865 (v!3365 (underlying!506 thiss!992)))))))

(assert (=> b!146874 (= lt!77368 (+!183 lt!77369 lt!77380))))

(assert (=> b!146874 (= lt!77380 (tuple2!2761 (select (arr!2370 (_keys!4789 (v!3365 (underlying!506 thiss!992)))) from!355) lt!77377))))

(declare-fun lt!77374 () Unit!4655)

(assert (=> b!146874 (= lt!77374 (addCommutativeForDiffKeys!76 lt!77369 (select (arr!2370 (_keys!4789 (v!3365 (underlying!506 thiss!992)))) from!355) lt!77377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2865 (v!3365 (underlying!506 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!152 (array!5018 array!5020 (_ BitVec 32) (_ BitVec 32) V!3629 V!3629 (_ BitVec 32) Int) ListLongMap!1787)

(assert (=> b!146874 (= lt!77369 (getCurrentListMapNoExtraKeys!152 (_keys!4789 (v!3365 (underlying!506 thiss!992))) (_values!3003 (v!3365 (underlying!506 thiss!992))) (mask!7400 (v!3365 (underlying!506 thiss!992))) (extraKeys!2765 (v!3365 (underlying!506 thiss!992))) (zeroValue!2865 (v!3365 (underlying!506 thiss!992))) (minValue!2865 (v!3365 (underlying!506 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3020 (v!3365 (underlying!506 thiss!992)))))))

(declare-fun mapIsEmpty!5033 () Bool)

(declare-fun mapRes!5033 () Bool)

(assert (=> mapIsEmpty!5033 mapRes!5033))

(declare-fun b!146875 () Bool)

(declare-fun e!95902 () Bool)

(assert (=> b!146875 (= e!95905 e!95902)))

(declare-fun res!69841 () Bool)

(assert (=> b!146875 (=> res!69841 e!95902)))

(declare-fun lt!77383 () tuple2!2758)

(assert (=> b!146875 (= res!69841 (not (_1!1389 lt!77383)))))

(declare-fun repackFrom!17 (LongMap!990 LongMapFixedSize!1208 (_ BitVec 32)) tuple2!2758)

(assert (=> b!146875 (= lt!77383 (repackFrom!17 thiss!992 (_2!1389 lt!77378) (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun b!146876 () Bool)

(declare-fun e!95901 () Bool)

(declare-fun e!95910 () Bool)

(assert (=> b!146876 (= e!95901 e!95910)))

(declare-fun res!69839 () Bool)

(assert (=> b!146876 (=> (not res!69839) (not e!95910))))

(assert (=> b!146876 (= res!69839 (and (not (= (select (arr!2370 (_keys!4789 (v!3365 (underlying!506 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2370 (_keys!4789 (v!3365 (underlying!506 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1583 (ValueCell!1150 V!3629) V!3629)

(declare-fun dynLambda!459 (Int (_ BitVec 64)) V!3629)

(assert (=> b!146876 (= lt!77377 (get!1583 (select (arr!2371 (_values!3003 (v!3365 (underlying!506 thiss!992)))) from!355) (dynLambda!459 (defaultEntry!3020 (v!3365 (underlying!506 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!95894 () Bool)

(declare-fun e!95906 () Bool)

(declare-fun array_inv!1473 (array!5018) Bool)

(declare-fun array_inv!1474 (array!5020) Bool)

(assert (=> b!146877 (= e!95894 (and tp!11927 tp_is_empty!2987 (array_inv!1473 (_keys!4789 (v!3365 (underlying!506 thiss!992)))) (array_inv!1474 (_values!3003 (v!3365 (underlying!506 thiss!992)))) e!95906))))

(declare-fun b!146878 () Bool)

(declare-fun e!95893 () Bool)

(assert (=> b!146878 (= e!95893 e!95894)))

(declare-fun mapNonEmpty!5033 () Bool)

(declare-fun tp!11926 () Bool)

(declare-fun e!95900 () Bool)

(assert (=> mapNonEmpty!5033 (= mapRes!5033 (and tp!11926 e!95900))))

(declare-fun mapKey!5033 () (_ BitVec 32))

(declare-fun newMap!16 () LongMapFixedSize!1208)

(declare-fun mapRest!5033 () (Array (_ BitVec 32) ValueCell!1150))

(declare-fun mapValue!5034 () ValueCell!1150)

(assert (=> mapNonEmpty!5033 (= (arr!2371 (_values!3003 newMap!16)) (store mapRest!5033 mapKey!5033 mapValue!5034))))

(declare-fun b!146879 () Bool)

(declare-fun e!95911 () Bool)

(assert (=> b!146879 (= e!95902 e!95911)))

(declare-fun res!69845 () Bool)

(assert (=> b!146879 (=> (not res!69845) (not e!95911))))

(declare-fun valid!590 (LongMapFixedSize!1208) Bool)

(assert (=> b!146879 (= res!69845 (valid!590 (_2!1389 lt!77383)))))

(declare-fun b!146880 () Bool)

(declare-fun e!95899 () Bool)

(assert (=> b!146880 (= e!95899 e!95901)))

(declare-fun res!69843 () Bool)

(assert (=> b!146880 (=> (not res!69843) (not e!95901))))

(declare-fun lt!77376 () ListLongMap!1787)

(declare-fun lt!77371 () ListLongMap!1787)

(assert (=> b!146880 (= res!69843 (= lt!77376 lt!77371))))

(assert (=> b!146880 (= lt!77371 (map!1473 newMap!16))))

(assert (=> b!146880 (= lt!77376 (getCurrentListMap!572 (_keys!4789 (v!3365 (underlying!506 thiss!992))) (_values!3003 (v!3365 (underlying!506 thiss!992))) (mask!7400 (v!3365 (underlying!506 thiss!992))) (extraKeys!2765 (v!3365 (underlying!506 thiss!992))) (zeroValue!2865 (v!3365 (underlying!506 thiss!992))) (minValue!2865 (v!3365 (underlying!506 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3020 (v!3365 (underlying!506 thiss!992)))))))

(declare-fun b!146881 () Bool)

(assert (=> b!146881 (= e!95911 (= (map!1473 (_2!1389 lt!77383)) (map!1473 (v!3365 (underlying!506 thiss!992)))))))

(declare-fun b!146882 () Bool)

(assert (=> b!146882 (= e!95900 tp_is_empty!2987)))

(declare-fun b!146883 () Bool)

(declare-fun res!69837 () Bool)

(assert (=> b!146883 (=> (not res!69837) (not e!95899))))

(assert (=> b!146883 (= res!69837 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7400 newMap!16)) (_size!653 (v!3365 (underlying!506 thiss!992)))))))

(declare-fun b!146884 () Bool)

(declare-fun mapRes!5034 () Bool)

(assert (=> b!146884 (= e!95906 (and e!95908 mapRes!5034))))

(declare-fun condMapEmpty!5033 () Bool)

(declare-fun mapDefault!5034 () ValueCell!1150)

