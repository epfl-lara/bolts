; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11284 () Bool)

(assert start!11284)

(declare-fun b!93008 () Bool)

(declare-fun b_free!2369 () Bool)

(declare-fun b_next!2369 () Bool)

(assert (=> b!93008 (= b_free!2369 (not b_next!2369))))

(declare-fun tp!9366 () Bool)

(declare-fun b_and!5657 () Bool)

(assert (=> b!93008 (= tp!9366 b_and!5657)))

(declare-fun b!92998 () Bool)

(declare-fun b_free!2371 () Bool)

(declare-fun b_next!2371 () Bool)

(assert (=> b!92998 (= b_free!2371 (not b_next!2371))))

(declare-fun tp!9365 () Bool)

(declare-fun b_and!5659 () Bool)

(assert (=> b!92998 (= tp!9365 b_and!5659)))

(declare-fun b!92995 () Bool)

(declare-fun e!60725 () Bool)

(declare-fun e!60709 () Bool)

(declare-fun mapRes!3632 () Bool)

(assert (=> b!92995 (= e!60725 (and e!60709 mapRes!3632))))

(declare-fun condMapEmpty!3632 () Bool)

(declare-datatypes ((V!3115 0))(
  ( (V!3116 (val!1345 Int)) )
))
(declare-datatypes ((array!4172 0))(
  ( (array!4173 (arr!1984 (Array (_ BitVec 32) (_ BitVec 64))) (size!2232 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!957 0))(
  ( (ValueCellFull!957 (v!2746 V!3115)) (EmptyCell!957) )
))
(declare-datatypes ((array!4174 0))(
  ( (array!4175 (arr!1985 (Array (_ BitVec 32) ValueCell!957)) (size!2233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!822 0))(
  ( (LongMapFixedSize!823 (defaultEntry!2425 Int) (mask!6495 (_ BitVec 32)) (extraKeys!2254 (_ BitVec 32)) (zeroValue!2312 V!3115) (minValue!2312 V!3115) (_size!460 (_ BitVec 32)) (_keys!4107 array!4172) (_values!2408 array!4174) (_vacant!460 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!822)

(declare-fun mapDefault!3631 () ValueCell!957)

(assert (=> b!92995 (= condMapEmpty!3632 (= (arr!1985 (_values!2408 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!957)) mapDefault!3631)))))

(declare-fun b!92996 () Bool)

(declare-fun e!60716 () Bool)

(declare-fun e!60726 () Bool)

(assert (=> b!92996 (= e!60716 (not e!60726))))

(declare-fun res!47244 () Bool)

(assert (=> b!92996 (=> res!47244 e!60726)))

(declare-datatypes ((Cell!626 0))(
  ( (Cell!627 (v!2747 LongMapFixedSize!822)) )
))
(declare-datatypes ((LongMap!626 0))(
  ( (LongMap!627 (underlying!324 Cell!626)) )
))
(declare-fun thiss!992 () LongMap!626)

(declare-datatypes ((tuple2!2316 0))(
  ( (tuple2!2317 (_1!1168 Bool) (_2!1168 LongMapFixedSize!822)) )
))
(declare-fun lt!45783 () tuple2!2316)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2318 0))(
  ( (tuple2!2319 (_1!1169 (_ BitVec 64)) (_2!1169 V!3115)) )
))
(declare-datatypes ((List!1593 0))(
  ( (Nil!1590) (Cons!1589 (h!2181 tuple2!2318) (t!5475 List!1593)) )
))
(declare-datatypes ((ListLongMap!1531 0))(
  ( (ListLongMap!1532 (toList!781 List!1593)) )
))
(declare-fun getCurrentListMap!463 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 32) Int) ListLongMap!1531)

(declare-fun map!1236 (LongMapFixedSize!822) ListLongMap!1531)

(assert (=> b!92996 (= res!47244 (not (= (getCurrentListMap!463 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) from!355 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))) (map!1236 (_2!1168 lt!45783)))))))

(declare-fun lt!45780 () tuple2!2318)

(declare-fun lt!45787 () ListLongMap!1531)

(declare-fun lt!45793 () tuple2!2318)

(declare-fun lt!45784 () ListLongMap!1531)

(declare-fun +!134 (ListLongMap!1531 tuple2!2318) ListLongMap!1531)

(assert (=> b!92996 (= (+!134 lt!45784 lt!45780) (+!134 (+!134 lt!45787 lt!45780) lt!45793))))

(assert (=> b!92996 (= lt!45780 (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-datatypes ((Unit!2794 0))(
  ( (Unit!2795) )
))
(declare-fun lt!45786 () Unit!2794)

(declare-fun lt!45785 () V!3115)

(declare-fun addCommutativeForDiffKeys!53 (ListLongMap!1531 (_ BitVec 64) V!3115 (_ BitVec 64) V!3115) Unit!2794)

(assert (=> b!92996 (= lt!45786 (addCommutativeForDiffKeys!53 lt!45787 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!45779 () ListLongMap!1531)

(assert (=> b!92996 (= lt!45779 lt!45784)))

(assert (=> b!92996 (= lt!45784 (+!134 lt!45787 lt!45793))))

(declare-fun lt!45794 () ListLongMap!1531)

(declare-fun lt!45791 () tuple2!2318)

(assert (=> b!92996 (= lt!45779 (+!134 lt!45794 lt!45791))))

(declare-fun lt!45782 () ListLongMap!1531)

(assert (=> b!92996 (= lt!45787 (+!134 lt!45782 lt!45791))))

(assert (=> b!92996 (= lt!45791 (tuple2!2319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(assert (=> b!92996 (= lt!45794 (+!134 lt!45782 lt!45793))))

(assert (=> b!92996 (= lt!45793 (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785))))

(declare-fun lt!45778 () Unit!2794)

(assert (=> b!92996 (= lt!45778 (addCommutativeForDiffKeys!53 lt!45782 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!98 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 32) Int) ListLongMap!1531)

(assert (=> b!92996 (= lt!45782 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!92997 () Bool)

(declare-fun e!60720 () Bool)

(declare-fun tp_is_empty!2601 () Bool)

(assert (=> b!92997 (= e!60720 tp_is_empty!2601)))

(declare-fun e!60727 () Bool)

(declare-fun array_inv!1189 (array!4172) Bool)

(declare-fun array_inv!1190 (array!4174) Bool)

(assert (=> b!92998 (= e!60727 (and tp!9365 tp_is_empty!2601 (array_inv!1189 (_keys!4107 newMap!16)) (array_inv!1190 (_values!2408 newMap!16)) e!60725))))

(declare-fun b!92999 () Bool)

(declare-fun e!60719 () Bool)

(assert (=> b!92999 (= e!60726 e!60719)))

(declare-fun res!47243 () Bool)

(assert (=> b!92999 (=> res!47243 e!60719)))

(declare-fun lt!45795 () tuple2!2316)

(assert (=> b!92999 (= res!47243 (not (_1!1168 lt!45795)))))

(declare-fun repackFrom!11 (LongMap!626 LongMapFixedSize!822 (_ BitVec 32)) tuple2!2316)

(assert (=> b!92999 (= lt!45795 (repackFrom!11 thiss!992 (_2!1168 lt!45783) (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun res!47235 () Bool)

(declare-fun e!60723 () Bool)

(assert (=> start!11284 (=> (not res!47235) (not e!60723))))

(declare-fun valid!366 (LongMap!626) Bool)

(assert (=> start!11284 (= res!47235 (valid!366 thiss!992))))

(assert (=> start!11284 e!60723))

(declare-fun e!60721 () Bool)

(assert (=> start!11284 e!60721))

(assert (=> start!11284 true))

(assert (=> start!11284 e!60727))

(declare-fun b!93000 () Bool)

(declare-fun e!60724 () Bool)

(assert (=> b!93000 (= e!60724 tp_is_empty!2601)))

(declare-fun mapIsEmpty!3631 () Bool)

(assert (=> mapIsEmpty!3631 mapRes!3632))

(declare-fun b!93001 () Bool)

(declare-fun e!60718 () Bool)

(assert (=> b!93001 (= e!60718 e!60716)))

(declare-fun res!47239 () Bool)

(assert (=> b!93001 (=> (not res!47239) (not e!60716))))

(assert (=> b!93001 (= res!47239 (and (_1!1168 lt!45783) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!45790 () Unit!2794)

(declare-fun e!60713 () Unit!2794)

(assert (=> b!93001 (= lt!45790 e!60713)))

(declare-fun c!15459 () Bool)

(declare-fun lt!45792 () ListLongMap!1531)

(declare-fun contains!790 (ListLongMap!1531 (_ BitVec 64)) Bool)

(assert (=> b!93001 (= c!15459 (contains!790 lt!45792 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun update!138 (LongMapFixedSize!822 (_ BitVec 64) V!3115) tuple2!2316)

(assert (=> b!93001 (= lt!45783 (update!138 newMap!16 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785))))

(declare-fun b!93002 () Bool)

(declare-fun res!47237 () Bool)

(assert (=> b!93002 (=> (not res!47237) (not e!60723))))

(declare-fun valid!367 (LongMapFixedSize!822) Bool)

(assert (=> b!93002 (= res!47237 (valid!367 newMap!16))))

(declare-fun b!93003 () Bool)

(declare-fun e!60715 () Bool)

(assert (=> b!93003 (= e!60723 e!60715)))

(declare-fun res!47242 () Bool)

(assert (=> b!93003 (=> (not res!47242) (not e!60715))))

(declare-fun lt!45789 () ListLongMap!1531)

(assert (=> b!93003 (= res!47242 (= lt!45789 lt!45792))))

(assert (=> b!93003 (= lt!45792 (map!1236 newMap!16))))

(assert (=> b!93003 (= lt!45789 (getCurrentListMap!463 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun mapNonEmpty!3631 () Bool)

(declare-fun tp!9368 () Bool)

(assert (=> mapNonEmpty!3631 (= mapRes!3632 (and tp!9368 e!60720))))

(declare-fun mapKey!3632 () (_ BitVec 32))

(declare-fun mapRest!3632 () (Array (_ BitVec 32) ValueCell!957))

(declare-fun mapValue!3632 () ValueCell!957)

(assert (=> mapNonEmpty!3631 (= (arr!1985 (_values!2408 newMap!16)) (store mapRest!3632 mapKey!3632 mapValue!3632))))

(declare-fun b!93004 () Bool)

(declare-fun Unit!2796 () Unit!2794)

(assert (=> b!93004 (= e!60713 Unit!2796)))

(declare-fun lt!45788 () Unit!2794)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!90 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 64) (_ BitVec 32) Int) Unit!2794)

(assert (=> b!93004 (= lt!45788 (lemmaListMapContainsThenArrayContainsFrom!90 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!93004 (arrayContainsKey!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!45781 () Unit!2794)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4172 (_ BitVec 32) (_ BitVec 32)) Unit!2794)

(assert (=> b!93004 (= lt!45781 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1594 0))(
  ( (Nil!1591) (Cons!1590 (h!2182 (_ BitVec 64)) (t!5476 List!1594)) )
))
(declare-fun arrayNoDuplicates!0 (array!4172 (_ BitVec 32) List!1594) Bool)

(assert (=> b!93004 (arrayNoDuplicates!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) from!355 Nil!1591)))

(declare-fun lt!45777 () Unit!2794)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4172 (_ BitVec 32) (_ BitVec 64) List!1594) Unit!2794)

(assert (=> b!93004 (= lt!45777 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (Cons!1590 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) Nil!1591)))))

(assert (=> b!93004 false))

(declare-fun b!93005 () Bool)

(declare-fun e!60710 () Bool)

(assert (=> b!93005 (= e!60710 tp_is_empty!2601)))

(declare-fun b!93006 () Bool)

(declare-fun e!60711 () Bool)

(declare-fun mapRes!3631 () Bool)

(assert (=> b!93006 (= e!60711 (and e!60710 mapRes!3631))))

(declare-fun condMapEmpty!3631 () Bool)

(declare-fun mapDefault!3632 () ValueCell!957)

(assert (=> b!93006 (= condMapEmpty!3631 (= (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!957)) mapDefault!3632)))))

(declare-fun b!93007 () Bool)

(declare-fun e!60722 () Bool)

(assert (=> b!93007 (= e!60721 e!60722)))

(declare-fun e!60717 () Bool)

(assert (=> b!93008 (= e!60717 (and tp!9366 tp_is_empty!2601 (array_inv!1189 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (array_inv!1190 (_values!2408 (v!2747 (underlying!324 thiss!992)))) e!60711))))

(declare-fun b!93009 () Bool)

(assert (=> b!93009 (= e!60715 e!60718)))

(declare-fun res!47240 () Bool)

(assert (=> b!93009 (=> (not res!47240) (not e!60718))))

(assert (=> b!93009 (= res!47240 (and (not (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1268 (ValueCell!957 V!3115) V!3115)

(declare-fun dynLambda!370 (Int (_ BitVec 64)) V!3115)

(assert (=> b!93009 (= lt!45785 (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) from!355) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!93010 () Bool)

(assert (=> b!93010 (= e!60709 tp_is_empty!2601)))

(declare-fun mapIsEmpty!3632 () Bool)

(assert (=> mapIsEmpty!3632 mapRes!3631))

(declare-fun b!93011 () Bool)

(assert (=> b!93011 (= e!60722 e!60717)))

(declare-fun b!93012 () Bool)

(declare-fun Unit!2797 () Unit!2794)

(assert (=> b!93012 (= e!60713 Unit!2797)))

(declare-fun b!93013 () Bool)

(declare-fun res!47238 () Bool)

(assert (=> b!93013 (=> res!47238 e!60719)))

(assert (=> b!93013 (= res!47238 (not (valid!367 (_2!1168 lt!45795))))))

(declare-fun b!93014 () Bool)

(assert (=> b!93014 (= e!60719 (valid!367 (v!2747 (underlying!324 thiss!992))))))

(declare-fun b!93015 () Bool)

(declare-fun res!47236 () Bool)

(assert (=> b!93015 (=> (not res!47236) (not e!60723))))

(assert (=> b!93015 (= res!47236 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992)))))))))

(declare-fun b!93016 () Bool)

(declare-fun res!47241 () Bool)

(assert (=> b!93016 (=> (not res!47241) (not e!60723))))

(assert (=> b!93016 (= res!47241 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6495 newMap!16)) (_size!460 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun mapNonEmpty!3632 () Bool)

(declare-fun tp!9367 () Bool)

(assert (=> mapNonEmpty!3632 (= mapRes!3631 (and tp!9367 e!60724))))

(declare-fun mapKey!3631 () (_ BitVec 32))

(declare-fun mapValue!3631 () ValueCell!957)

(declare-fun mapRest!3631 () (Array (_ BitVec 32) ValueCell!957))

(assert (=> mapNonEmpty!3632 (= (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) (store mapRest!3631 mapKey!3631 mapValue!3631))))

(assert (= (and start!11284 res!47235) b!93015))

(assert (= (and b!93015 res!47236) b!93002))

(assert (= (and b!93002 res!47237) b!93016))

(assert (= (and b!93016 res!47241) b!93003))

(assert (= (and b!93003 res!47242) b!93009))

(assert (= (and b!93009 res!47240) b!93001))

(assert (= (and b!93001 c!15459) b!93004))

(assert (= (and b!93001 (not c!15459)) b!93012))

(assert (= (and b!93001 res!47239) b!92996))

(assert (= (and b!92996 (not res!47244)) b!92999))

(assert (= (and b!92999 (not res!47243)) b!93013))

(assert (= (and b!93013 (not res!47238)) b!93014))

(assert (= (and b!93006 condMapEmpty!3631) mapIsEmpty!3632))

(assert (= (and b!93006 (not condMapEmpty!3631)) mapNonEmpty!3632))

(get-info :version)

(assert (= (and mapNonEmpty!3632 ((_ is ValueCellFull!957) mapValue!3631)) b!93000))

(assert (= (and b!93006 ((_ is ValueCellFull!957) mapDefault!3632)) b!93005))

(assert (= b!93008 b!93006))

(assert (= b!93011 b!93008))

(assert (= b!93007 b!93011))

(assert (= start!11284 b!93007))

(assert (= (and b!92995 condMapEmpty!3632) mapIsEmpty!3631))

(assert (= (and b!92995 (not condMapEmpty!3632)) mapNonEmpty!3631))

(assert (= (and mapNonEmpty!3631 ((_ is ValueCellFull!957) mapValue!3632)) b!92997))

(assert (= (and b!92995 ((_ is ValueCellFull!957) mapDefault!3631)) b!93010))

(assert (= b!92998 b!92995))

(assert (= start!11284 b!92998))

(declare-fun b_lambda!4105 () Bool)

(assert (=> (not b_lambda!4105) (not b!93009)))

(declare-fun t!5472 () Bool)

(declare-fun tb!1849 () Bool)

(assert (=> (and b!93008 (= (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))) t!5472) tb!1849))

(declare-fun result!3151 () Bool)

(assert (=> tb!1849 (= result!3151 tp_is_empty!2601)))

(assert (=> b!93009 t!5472))

(declare-fun b_and!5661 () Bool)

(assert (= b_and!5657 (and (=> t!5472 result!3151) b_and!5661)))

(declare-fun t!5474 () Bool)

(declare-fun tb!1851 () Bool)

(assert (=> (and b!92998 (= (defaultEntry!2425 newMap!16) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))) t!5474) tb!1851))

(declare-fun result!3155 () Bool)

(assert (= result!3155 result!3151))

(assert (=> b!93009 t!5474))

(declare-fun b_and!5663 () Bool)

(assert (= b_and!5659 (and (=> t!5474 result!3155) b_and!5663)))

(declare-fun m!100141 () Bool)

(assert (=> b!92999 m!100141))

(declare-fun m!100143 () Bool)

(assert (=> b!93002 m!100143))

(declare-fun m!100145 () Bool)

(assert (=> start!11284 m!100145))

(declare-fun m!100147 () Bool)

(assert (=> mapNonEmpty!3632 m!100147))

(declare-fun m!100149 () Bool)

(assert (=> b!93003 m!100149))

(declare-fun m!100151 () Bool)

(assert (=> b!93003 m!100151))

(declare-fun m!100153 () Bool)

(assert (=> mapNonEmpty!3631 m!100153))

(declare-fun m!100155 () Bool)

(assert (=> b!93001 m!100155))

(assert (=> b!93001 m!100155))

(declare-fun m!100157 () Bool)

(assert (=> b!93001 m!100157))

(assert (=> b!93001 m!100155))

(declare-fun m!100159 () Bool)

(assert (=> b!93001 m!100159))

(assert (=> b!92996 m!100155))

(declare-fun m!100161 () Bool)

(assert (=> b!92996 m!100161))

(declare-fun m!100163 () Bool)

(assert (=> b!92996 m!100163))

(declare-fun m!100165 () Bool)

(assert (=> b!92996 m!100165))

(declare-fun m!100167 () Bool)

(assert (=> b!92996 m!100167))

(declare-fun m!100169 () Bool)

(assert (=> b!92996 m!100169))

(assert (=> b!92996 m!100155))

(assert (=> b!92996 m!100155))

(declare-fun m!100171 () Bool)

(assert (=> b!92996 m!100171))

(declare-fun m!100173 () Bool)

(assert (=> b!92996 m!100173))

(declare-fun m!100175 () Bool)

(assert (=> b!92996 m!100175))

(assert (=> b!92996 m!100175))

(declare-fun m!100177 () Bool)

(assert (=> b!92996 m!100177))

(declare-fun m!100179 () Bool)

(assert (=> b!92996 m!100179))

(declare-fun m!100181 () Bool)

(assert (=> b!92996 m!100181))

(declare-fun m!100183 () Bool)

(assert (=> b!92996 m!100183))

(declare-fun m!100185 () Bool)

(assert (=> b!93008 m!100185))

(declare-fun m!100187 () Bool)

(assert (=> b!93008 m!100187))

(declare-fun m!100189 () Bool)

(assert (=> b!92998 m!100189))

(declare-fun m!100191 () Bool)

(assert (=> b!92998 m!100191))

(declare-fun m!100193 () Bool)

(assert (=> b!93014 m!100193))

(declare-fun m!100195 () Bool)

(assert (=> b!93013 m!100195))

(declare-fun m!100197 () Bool)

(assert (=> b!93004 m!100197))

(declare-fun m!100199 () Bool)

(assert (=> b!93004 m!100199))

(assert (=> b!93004 m!100155))

(declare-fun m!100201 () Bool)

(assert (=> b!93004 m!100201))

(assert (=> b!93004 m!100155))

(assert (=> b!93004 m!100155))

(declare-fun m!100203 () Bool)

(assert (=> b!93004 m!100203))

(assert (=> b!93004 m!100155))

(declare-fun m!100205 () Bool)

(assert (=> b!93004 m!100205))

(assert (=> b!93009 m!100155))

(declare-fun m!100207 () Bool)

(assert (=> b!93009 m!100207))

(declare-fun m!100209 () Bool)

(assert (=> b!93009 m!100209))

(assert (=> b!93009 m!100207))

(assert (=> b!93009 m!100209))

(declare-fun m!100211 () Bool)

(assert (=> b!93009 m!100211))

(check-sat (not b!93002) (not b!92996) (not b!93003) b_and!5663 (not b!93008) (not b!93001) b_and!5661 (not b!93009) (not mapNonEmpty!3631) (not b_next!2371) (not b!93013) (not b_next!2369) (not start!11284) (not mapNonEmpty!3632) (not b!92999) tp_is_empty!2601 (not b!92998) (not b!93014) (not b_lambda!4105) (not b!93004))
(check-sat b_and!5661 b_and!5663 (not b_next!2369) (not b_next!2371))
(get-model)

(declare-fun b_lambda!4109 () Bool)

(assert (= b_lambda!4105 (or (and b!93008 b_free!2369) (and b!92998 b_free!2371 (= (defaultEntry!2425 newMap!16) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))))) b_lambda!4109)))

(check-sat (not b!93002) (not b!92996) (not b!93003) b_and!5663 (not b!93008) (not b!93001) b_and!5661 (not b!93009) (not b!93004) (not mapNonEmpty!3631) (not b!93013) (not b_next!2369) (not start!11284) (not mapNonEmpty!3632) (not b!92999) tp_is_empty!2601 (not b!92998) (not b!93014) (not b_lambda!4109) (not b_next!2371))
(check-sat b_and!5661 b_and!5663 (not b_next!2369) (not b_next!2371))
(get-model)

(declare-fun d!24425 () Bool)

(declare-fun res!47281 () Bool)

(declare-fun e!60787 () Bool)

(assert (=> d!24425 (=> (not res!47281) (not e!60787))))

(declare-fun simpleValid!63 (LongMapFixedSize!822) Bool)

(assert (=> d!24425 (= res!47281 (simpleValid!63 (v!2747 (underlying!324 thiss!992))))))

(assert (=> d!24425 (= (valid!367 (v!2747 (underlying!324 thiss!992))) e!60787)))

(declare-fun b!93093 () Bool)

(declare-fun res!47282 () Bool)

(assert (=> b!93093 (=> (not res!47282) (not e!60787))))

(declare-fun arrayCountValidKeys!0 (array!4172 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!93093 (= res!47282 (= (arrayCountValidKeys!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000000 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))) (_size!460 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93094 () Bool)

(declare-fun res!47283 () Bool)

(assert (=> b!93094 (=> (not res!47283) (not e!60787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4172 (_ BitVec 32)) Bool)

(assert (=> b!93094 (= res!47283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93095 () Bool)

(assert (=> b!93095 (= e!60787 (arrayNoDuplicates!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000000 Nil!1591))))

(assert (= (and d!24425 res!47281) b!93093))

(assert (= (and b!93093 res!47282) b!93094))

(assert (= (and b!93094 res!47283) b!93095))

(declare-fun m!100285 () Bool)

(assert (=> d!24425 m!100285))

(declare-fun m!100287 () Bool)

(assert (=> b!93093 m!100287))

(declare-fun m!100289 () Bool)

(assert (=> b!93094 m!100289))

(declare-fun m!100291 () Bool)

(assert (=> b!93095 m!100291))

(assert (=> b!93014 d!24425))

(declare-fun d!24427 () Bool)

(assert (=> d!24427 (= (+!134 (+!134 lt!45787 (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785)) (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992))))) (+!134 (+!134 lt!45787 (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992))))) (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785)))))

(declare-fun lt!45855 () Unit!2794)

(declare-fun choose!564 (ListLongMap!1531 (_ BitVec 64) V!3115 (_ BitVec 64) V!3115) Unit!2794)

(assert (=> d!24427 (= lt!45855 (choose!564 lt!45787 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(assert (=> d!24427 (not (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24427 (= (addCommutativeForDiffKeys!53 lt!45787 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992)))) lt!45855)))

(declare-fun bs!3831 () Bool)

(assert (= bs!3831 d!24427))

(assert (=> bs!3831 m!100155))

(declare-fun m!100293 () Bool)

(assert (=> bs!3831 m!100293))

(declare-fun m!100295 () Bool)

(assert (=> bs!3831 m!100295))

(declare-fun m!100297 () Bool)

(assert (=> bs!3831 m!100297))

(declare-fun m!100299 () Bool)

(assert (=> bs!3831 m!100299))

(assert (=> bs!3831 m!100299))

(declare-fun m!100301 () Bool)

(assert (=> bs!3831 m!100301))

(assert (=> bs!3831 m!100295))

(assert (=> b!92996 d!24427))

(declare-fun d!24429 () Bool)

(assert (=> d!24429 (= (map!1236 (_2!1168 lt!45783)) (getCurrentListMap!463 (_keys!4107 (_2!1168 lt!45783)) (_values!2408 (_2!1168 lt!45783)) (mask!6495 (_2!1168 lt!45783)) (extraKeys!2254 (_2!1168 lt!45783)) (zeroValue!2312 (_2!1168 lt!45783)) (minValue!2312 (_2!1168 lt!45783)) #b00000000000000000000000000000000 (defaultEntry!2425 (_2!1168 lt!45783))))))

(declare-fun bs!3832 () Bool)

(assert (= bs!3832 d!24429))

(declare-fun m!100303 () Bool)

(assert (=> bs!3832 m!100303))

(assert (=> b!92996 d!24429))

(declare-fun d!24431 () Bool)

(declare-fun e!60790 () Bool)

(assert (=> d!24431 e!60790))

(declare-fun res!47288 () Bool)

(assert (=> d!24431 (=> (not res!47288) (not e!60790))))

(declare-fun lt!45866 () ListLongMap!1531)

(assert (=> d!24431 (= res!47288 (contains!790 lt!45866 (_1!1169 lt!45793)))))

(declare-fun lt!45867 () List!1593)

(assert (=> d!24431 (= lt!45866 (ListLongMap!1532 lt!45867))))

(declare-fun lt!45865 () Unit!2794)

(declare-fun lt!45864 () Unit!2794)

(assert (=> d!24431 (= lt!45865 lt!45864)))

(declare-datatypes ((Option!151 0))(
  ( (Some!150 (v!2751 V!3115)) (None!149) )
))
(declare-fun getValueByKey!145 (List!1593 (_ BitVec 64)) Option!151)

(assert (=> d!24431 (= (getValueByKey!145 lt!45867 (_1!1169 lt!45793)) (Some!150 (_2!1169 lt!45793)))))

(declare-fun lemmaContainsTupThenGetReturnValue!64 (List!1593 (_ BitVec 64) V!3115) Unit!2794)

(assert (=> d!24431 (= lt!45864 (lemmaContainsTupThenGetReturnValue!64 lt!45867 (_1!1169 lt!45793) (_2!1169 lt!45793)))))

(declare-fun insertStrictlySorted!66 (List!1593 (_ BitVec 64) V!3115) List!1593)

(assert (=> d!24431 (= lt!45867 (insertStrictlySorted!66 (toList!781 (+!134 lt!45787 lt!45780)) (_1!1169 lt!45793) (_2!1169 lt!45793)))))

(assert (=> d!24431 (= (+!134 (+!134 lt!45787 lt!45780) lt!45793) lt!45866)))

(declare-fun b!93100 () Bool)

(declare-fun res!47289 () Bool)

(assert (=> b!93100 (=> (not res!47289) (not e!60790))))

(assert (=> b!93100 (= res!47289 (= (getValueByKey!145 (toList!781 lt!45866) (_1!1169 lt!45793)) (Some!150 (_2!1169 lt!45793))))))

(declare-fun b!93101 () Bool)

(declare-fun contains!791 (List!1593 tuple2!2318) Bool)

(assert (=> b!93101 (= e!60790 (contains!791 (toList!781 lt!45866) lt!45793))))

(assert (= (and d!24431 res!47288) b!93100))

(assert (= (and b!93100 res!47289) b!93101))

(declare-fun m!100305 () Bool)

(assert (=> d!24431 m!100305))

(declare-fun m!100307 () Bool)

(assert (=> d!24431 m!100307))

(declare-fun m!100309 () Bool)

(assert (=> d!24431 m!100309))

(declare-fun m!100311 () Bool)

(assert (=> d!24431 m!100311))

(declare-fun m!100313 () Bool)

(assert (=> b!93100 m!100313))

(declare-fun m!100315 () Bool)

(assert (=> b!93101 m!100315))

(assert (=> b!92996 d!24431))

(declare-fun d!24433 () Bool)

(declare-fun e!60791 () Bool)

(assert (=> d!24433 e!60791))

(declare-fun res!47290 () Bool)

(assert (=> d!24433 (=> (not res!47290) (not e!60791))))

(declare-fun lt!45870 () ListLongMap!1531)

(assert (=> d!24433 (= res!47290 (contains!790 lt!45870 (_1!1169 lt!45793)))))

(declare-fun lt!45871 () List!1593)

(assert (=> d!24433 (= lt!45870 (ListLongMap!1532 lt!45871))))

(declare-fun lt!45869 () Unit!2794)

(declare-fun lt!45868 () Unit!2794)

(assert (=> d!24433 (= lt!45869 lt!45868)))

(assert (=> d!24433 (= (getValueByKey!145 lt!45871 (_1!1169 lt!45793)) (Some!150 (_2!1169 lt!45793)))))

(assert (=> d!24433 (= lt!45868 (lemmaContainsTupThenGetReturnValue!64 lt!45871 (_1!1169 lt!45793) (_2!1169 lt!45793)))))

(assert (=> d!24433 (= lt!45871 (insertStrictlySorted!66 (toList!781 lt!45787) (_1!1169 lt!45793) (_2!1169 lt!45793)))))

(assert (=> d!24433 (= (+!134 lt!45787 lt!45793) lt!45870)))

(declare-fun b!93102 () Bool)

(declare-fun res!47291 () Bool)

(assert (=> b!93102 (=> (not res!47291) (not e!60791))))

(assert (=> b!93102 (= res!47291 (= (getValueByKey!145 (toList!781 lt!45870) (_1!1169 lt!45793)) (Some!150 (_2!1169 lt!45793))))))

(declare-fun b!93103 () Bool)

(assert (=> b!93103 (= e!60791 (contains!791 (toList!781 lt!45870) lt!45793))))

(assert (= (and d!24433 res!47290) b!93102))

(assert (= (and b!93102 res!47291) b!93103))

(declare-fun m!100317 () Bool)

(assert (=> d!24433 m!100317))

(declare-fun m!100319 () Bool)

(assert (=> d!24433 m!100319))

(declare-fun m!100321 () Bool)

(assert (=> d!24433 m!100321))

(declare-fun m!100323 () Bool)

(assert (=> d!24433 m!100323))

(declare-fun m!100325 () Bool)

(assert (=> b!93102 m!100325))

(declare-fun m!100327 () Bool)

(assert (=> b!93103 m!100327))

(assert (=> b!92996 d!24433))

(declare-fun b!93128 () Bool)

(declare-fun res!47301 () Bool)

(declare-fun e!60812 () Bool)

(assert (=> b!93128 (=> (not res!47301) (not e!60812))))

(declare-fun lt!45890 () ListLongMap!1531)

(assert (=> b!93128 (= res!47301 (not (contains!790 lt!45890 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!93130 () Bool)

(declare-fun e!60809 () Bool)

(assert (=> b!93130 (= e!60809 (= lt!45890 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun b!93131 () Bool)

(declare-fun e!60806 () Bool)

(assert (=> b!93131 (= e!60806 e!60809)))

(declare-fun c!15471 () Bool)

(assert (=> b!93131 (= c!15471 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun bm!9118 () Bool)

(declare-fun call!9121 () ListLongMap!1531)

(assert (=> bm!9118 (= call!9121 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93132 () Bool)

(declare-fun e!60811 () ListLongMap!1531)

(declare-fun e!60808 () ListLongMap!1531)

(assert (=> b!93132 (= e!60811 e!60808)))

(declare-fun c!15473 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!93132 (= c!15473 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!93133 () Bool)

(declare-fun lt!45886 () Unit!2794)

(declare-fun lt!45889 () Unit!2794)

(assert (=> b!93133 (= lt!45886 lt!45889)))

(declare-fun lt!45887 () (_ BitVec 64))

(declare-fun lt!45888 () ListLongMap!1531)

(declare-fun lt!45891 () V!3115)

(declare-fun lt!45892 () (_ BitVec 64))

(assert (=> b!93133 (not (contains!790 (+!134 lt!45888 (tuple2!2319 lt!45887 lt!45891)) lt!45892))))

(declare-fun addStillNotContains!39 (ListLongMap!1531 (_ BitVec 64) V!3115 (_ BitVec 64)) Unit!2794)

(assert (=> b!93133 (= lt!45889 (addStillNotContains!39 lt!45888 lt!45887 lt!45891 lt!45892))))

(assert (=> b!93133 (= lt!45892 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!93133 (= lt!45891 (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!93133 (= lt!45887 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!93133 (= lt!45888 call!9121)))

(assert (=> b!93133 (= e!60808 (+!134 call!9121 (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!93134 () Bool)

(declare-fun e!60810 () Bool)

(assert (=> b!93134 (= e!60810 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!93134 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!93135 () Bool)

(declare-fun isEmpty!354 (ListLongMap!1531) Bool)

(assert (=> b!93135 (= e!60809 (isEmpty!354 lt!45890))))

(declare-fun b!93136 () Bool)

(assert (=> b!93136 (= e!60811 (ListLongMap!1532 Nil!1590))))

(declare-fun b!93129 () Bool)

(assert (=> b!93129 (= e!60812 e!60806)))

(declare-fun c!15474 () Bool)

(assert (=> b!93129 (= c!15474 e!60810)))

(declare-fun res!47303 () Bool)

(assert (=> b!93129 (=> (not res!47303) (not e!60810))))

(assert (=> b!93129 (= res!47303 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun d!24435 () Bool)

(assert (=> d!24435 e!60812))

(declare-fun res!47300 () Bool)

(assert (=> d!24435 (=> (not res!47300) (not e!60812))))

(assert (=> d!24435 (= res!47300 (not (contains!790 lt!45890 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!24435 (= lt!45890 e!60811)))

(declare-fun c!15472 () Bool)

(assert (=> d!24435 (= c!15472 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!24435 (validMask!0 (mask!6495 (v!2747 (underlying!324 thiss!992))))))

(assert (=> d!24435 (= (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))) lt!45890)))

(declare-fun b!93137 () Bool)

(assert (=> b!93137 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(assert (=> b!93137 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2233 (_values!2408 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun e!60807 () Bool)

(declare-fun apply!88 (ListLongMap!1531 (_ BitVec 64)) V!3115)

(assert (=> b!93137 (= e!60807 (= (apply!88 lt!45890 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!93138 () Bool)

(assert (=> b!93138 (= e!60806 e!60807)))

(assert (=> b!93138 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun res!47302 () Bool)

(assert (=> b!93138 (= res!47302 (contains!790 lt!45890 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!93138 (=> (not res!47302) (not e!60807))))

(declare-fun b!93139 () Bool)

(assert (=> b!93139 (= e!60808 call!9121)))

(assert (= (and d!24435 c!15472) b!93136))

(assert (= (and d!24435 (not c!15472)) b!93132))

(assert (= (and b!93132 c!15473) b!93133))

(assert (= (and b!93132 (not c!15473)) b!93139))

(assert (= (or b!93133 b!93139) bm!9118))

(assert (= (and d!24435 res!47300) b!93128))

(assert (= (and b!93128 res!47301) b!93129))

(assert (= (and b!93129 res!47303) b!93134))

(assert (= (and b!93129 c!15474) b!93138))

(assert (= (and b!93129 (not c!15474)) b!93131))

(assert (= (and b!93138 res!47302) b!93137))

(assert (= (and b!93131 c!15471) b!93130))

(assert (= (and b!93131 (not c!15471)) b!93135))

(declare-fun b_lambda!4111 () Bool)

(assert (=> (not b_lambda!4111) (not b!93133)))

(assert (=> b!93133 t!5472))

(declare-fun b_and!5673 () Bool)

(assert (= b_and!5661 (and (=> t!5472 result!3151) b_and!5673)))

(assert (=> b!93133 t!5474))

(declare-fun b_and!5675 () Bool)

(assert (= b_and!5663 (and (=> t!5474 result!3155) b_and!5675)))

(declare-fun b_lambda!4113 () Bool)

(assert (=> (not b_lambda!4113) (not b!93137)))

(assert (=> b!93137 t!5472))

(declare-fun b_and!5677 () Bool)

(assert (= b_and!5673 (and (=> t!5472 result!3151) b_and!5677)))

(assert (=> b!93137 t!5474))

(declare-fun b_and!5679 () Bool)

(assert (= b_and!5675 (and (=> t!5474 result!3155) b_and!5679)))

(declare-fun m!100329 () Bool)

(assert (=> bm!9118 m!100329))

(declare-fun m!100331 () Bool)

(assert (=> b!93137 m!100331))

(declare-fun m!100333 () Bool)

(assert (=> b!93137 m!100333))

(declare-fun m!100335 () Bool)

(assert (=> b!93137 m!100335))

(assert (=> b!93137 m!100209))

(declare-fun m!100337 () Bool)

(assert (=> b!93137 m!100337))

(assert (=> b!93137 m!100209))

(assert (=> b!93137 m!100335))

(assert (=> b!93137 m!100331))

(assert (=> b!93134 m!100331))

(assert (=> b!93134 m!100331))

(declare-fun m!100339 () Bool)

(assert (=> b!93134 m!100339))

(assert (=> b!93133 m!100209))

(declare-fun m!100341 () Bool)

(assert (=> b!93133 m!100341))

(declare-fun m!100343 () Bool)

(assert (=> b!93133 m!100343))

(declare-fun m!100345 () Bool)

(assert (=> b!93133 m!100345))

(assert (=> b!93133 m!100335))

(assert (=> b!93133 m!100331))

(declare-fun m!100347 () Bool)

(assert (=> b!93133 m!100347))

(assert (=> b!93133 m!100335))

(assert (=> b!93133 m!100209))

(assert (=> b!93133 m!100337))

(assert (=> b!93133 m!100341))

(assert (=> b!93132 m!100331))

(assert (=> b!93132 m!100331))

(assert (=> b!93132 m!100339))

(declare-fun m!100349 () Bool)

(assert (=> d!24435 m!100349))

(declare-fun m!100351 () Bool)

(assert (=> d!24435 m!100351))

(declare-fun m!100353 () Bool)

(assert (=> b!93135 m!100353))

(assert (=> b!93130 m!100329))

(declare-fun m!100355 () Bool)

(assert (=> b!93128 m!100355))

(assert (=> b!93138 m!100331))

(assert (=> b!93138 m!100331))

(declare-fun m!100357 () Bool)

(assert (=> b!93138 m!100357))

(assert (=> b!92996 d!24435))

(declare-fun b!93182 () Bool)

(declare-fun e!60846 () Bool)

(declare-fun e!60843 () Bool)

(assert (=> b!93182 (= e!60846 e!60843)))

(declare-fun res!47322 () Bool)

(declare-fun call!9139 () Bool)

(assert (=> b!93182 (= res!47322 call!9139)))

(assert (=> b!93182 (=> (not res!47322) (not e!60843))))

(declare-fun b!93183 () Bool)

(declare-fun e!60847 () ListLongMap!1531)

(declare-fun call!9140 () ListLongMap!1531)

(assert (=> b!93183 (= e!60847 call!9140)))

(declare-fun bm!9133 () Bool)

(declare-fun call!9142 () Bool)

(declare-fun lt!45948 () ListLongMap!1531)

(assert (=> bm!9133 (= call!9142 (contains!790 lt!45948 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9134 () Bool)

(declare-fun call!9138 () ListLongMap!1531)

(declare-fun call!9137 () ListLongMap!1531)

(assert (=> bm!9134 (= call!9138 call!9137)))

(declare-fun b!93184 () Bool)

(declare-fun e!60851 () ListLongMap!1531)

(assert (=> b!93184 (= e!60851 e!60847)))

(declare-fun c!15491 () Bool)

(assert (=> b!93184 (= c!15491 (and (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!93185 () Bool)

(declare-fun e!60841 () ListLongMap!1531)

(assert (=> b!93185 (= e!60841 call!9140)))

(declare-fun b!93186 () Bool)

(declare-fun e!60849 () Bool)

(declare-fun e!60845 () Bool)

(assert (=> b!93186 (= e!60849 e!60845)))

(declare-fun res!47327 () Bool)

(assert (=> b!93186 (=> (not res!47327) (not e!60845))))

(assert (=> b!93186 (= res!47327 (contains!790 lt!45948 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(assert (=> b!93186 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun bm!9135 () Bool)

(declare-fun call!9136 () ListLongMap!1531)

(assert (=> bm!9135 (= call!9140 call!9136)))

(declare-fun b!93187 () Bool)

(assert (=> b!93187 (= e!60841 call!9138)))

(declare-fun b!93189 () Bool)

(assert (=> b!93189 (= e!60846 (not call!9139))))

(declare-fun bm!9136 () Bool)

(assert (=> bm!9136 (= call!9139 (contains!790 lt!45948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93190 () Bool)

(assert (=> b!93190 (= e!60851 (+!134 call!9136 (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun b!93191 () Bool)

(declare-fun c!15490 () Bool)

(assert (=> b!93191 (= c!15490 (and (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!93191 (= e!60847 e!60841)))

(declare-fun b!93192 () Bool)

(declare-fun e!60842 () Bool)

(assert (=> b!93192 (= e!60842 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93193 () Bool)

(assert (=> b!93193 (= e!60843 (= (apply!88 lt!45948 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93194 () Bool)

(declare-fun e!60844 () Bool)

(declare-fun e!60839 () Bool)

(assert (=> b!93194 (= e!60844 e!60839)))

(declare-fun c!15488 () Bool)

(assert (=> b!93194 (= c!15488 (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!9137 () Bool)

(declare-fun call!9141 () ListLongMap!1531)

(assert (=> bm!9137 (= call!9141 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) from!355 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93195 () Bool)

(declare-fun e!60848 () Bool)

(assert (=> b!93195 (= e!60848 (= (apply!88 lt!45948 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93196 () Bool)

(declare-fun e!60840 () Bool)

(assert (=> b!93196 (= e!60840 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93197 () Bool)

(assert (=> b!93197 (= e!60845 (= (apply!88 lt!45948 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)) (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) from!355) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!93197 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2233 (_values!2408 (v!2747 (underlying!324 thiss!992))))))))

(assert (=> b!93197 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun b!93198 () Bool)

(declare-fun res!47323 () Bool)

(assert (=> b!93198 (=> (not res!47323) (not e!60844))))

(assert (=> b!93198 (= res!47323 e!60846)))

(declare-fun c!15487 () Bool)

(assert (=> b!93198 (= c!15487 (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!9138 () Bool)

(assert (=> bm!9138 (= call!9137 call!9141)))

(declare-fun b!93188 () Bool)

(declare-fun e!60850 () Unit!2794)

(declare-fun lt!45942 () Unit!2794)

(assert (=> b!93188 (= e!60850 lt!45942)))

(declare-fun lt!45951 () ListLongMap!1531)

(assert (=> b!93188 (= lt!45951 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) from!355 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!45956 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45956 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45957 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45957 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355))))

(declare-fun lt!45940 () Unit!2794)

(declare-fun addStillContains!64 (ListLongMap!1531 (_ BitVec 64) V!3115 (_ BitVec 64)) Unit!2794)

(assert (=> b!93188 (= lt!45940 (addStillContains!64 lt!45951 lt!45956 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) lt!45957))))

(assert (=> b!93188 (contains!790 (+!134 lt!45951 (tuple2!2319 lt!45956 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!45957)))

(declare-fun lt!45954 () Unit!2794)

(assert (=> b!93188 (= lt!45954 lt!45940)))

(declare-fun lt!45945 () ListLongMap!1531)

(assert (=> b!93188 (= lt!45945 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) from!355 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!45952 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45952 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45955 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45955 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355))))

(declare-fun lt!45949 () Unit!2794)

(declare-fun addApplyDifferent!64 (ListLongMap!1531 (_ BitVec 64) V!3115 (_ BitVec 64)) Unit!2794)

(assert (=> b!93188 (= lt!45949 (addApplyDifferent!64 lt!45945 lt!45952 (minValue!2312 (v!2747 (underlying!324 thiss!992))) lt!45955))))

(assert (=> b!93188 (= (apply!88 (+!134 lt!45945 (tuple2!2319 lt!45952 (minValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!45955) (apply!88 lt!45945 lt!45955))))

(declare-fun lt!45953 () Unit!2794)

(assert (=> b!93188 (= lt!45953 lt!45949)))

(declare-fun lt!45958 () ListLongMap!1531)

(assert (=> b!93188 (= lt!45958 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) from!355 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!45937 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45937 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45947 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45947 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355))))

(declare-fun lt!45944 () Unit!2794)

(assert (=> b!93188 (= lt!45944 (addApplyDifferent!64 lt!45958 lt!45937 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) lt!45947))))

(assert (=> b!93188 (= (apply!88 (+!134 lt!45958 (tuple2!2319 lt!45937 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!45947) (apply!88 lt!45958 lt!45947))))

(declare-fun lt!45950 () Unit!2794)

(assert (=> b!93188 (= lt!45950 lt!45944)))

(declare-fun lt!45941 () ListLongMap!1531)

(assert (=> b!93188 (= lt!45941 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) from!355 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!45938 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45938 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45943 () (_ BitVec 64))

(assert (=> b!93188 (= lt!45943 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355))))

(assert (=> b!93188 (= lt!45942 (addApplyDifferent!64 lt!45941 lt!45938 (minValue!2312 (v!2747 (underlying!324 thiss!992))) lt!45943))))

(assert (=> b!93188 (= (apply!88 (+!134 lt!45941 (tuple2!2319 lt!45938 (minValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!45943) (apply!88 lt!45941 lt!45943))))

(declare-fun d!24437 () Bool)

(assert (=> d!24437 e!60844))

(declare-fun res!47329 () Bool)

(assert (=> d!24437 (=> (not res!47329) (not e!60844))))

(assert (=> d!24437 (= res!47329 (or (bvsge from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))) (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))))

(declare-fun lt!45939 () ListLongMap!1531)

(assert (=> d!24437 (= lt!45948 lt!45939)))

(declare-fun lt!45946 () Unit!2794)

(assert (=> d!24437 (= lt!45946 e!60850)))

(declare-fun c!15492 () Bool)

(assert (=> d!24437 (= c!15492 e!60842)))

(declare-fun res!47326 () Bool)

(assert (=> d!24437 (=> (not res!47326) (not e!60842))))

(assert (=> d!24437 (= res!47326 (bvslt from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(assert (=> d!24437 (= lt!45939 e!60851)))

(declare-fun c!15489 () Bool)

(assert (=> d!24437 (= c!15489 (and (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24437 (validMask!0 (mask!6495 (v!2747 (underlying!324 thiss!992))))))

(assert (=> d!24437 (= (getCurrentListMap!463 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) from!355 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))) lt!45948)))

(declare-fun b!93199 () Bool)

(assert (=> b!93199 (= e!60839 e!60848)))

(declare-fun res!47324 () Bool)

(assert (=> b!93199 (= res!47324 call!9142)))

(assert (=> b!93199 (=> (not res!47324) (not e!60848))))

(declare-fun b!93200 () Bool)

(assert (=> b!93200 (= e!60839 (not call!9142))))

(declare-fun bm!9139 () Bool)

(assert (=> bm!9139 (= call!9136 (+!134 (ite c!15489 call!9141 (ite c!15491 call!9137 call!9138)) (ite (or c!15489 c!15491) (tuple2!2319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))) (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))))

(declare-fun b!93201 () Bool)

(declare-fun Unit!2801 () Unit!2794)

(assert (=> b!93201 (= e!60850 Unit!2801)))

(declare-fun b!93202 () Bool)

(declare-fun res!47325 () Bool)

(assert (=> b!93202 (=> (not res!47325) (not e!60844))))

(assert (=> b!93202 (= res!47325 e!60849)))

(declare-fun res!47328 () Bool)

(assert (=> b!93202 (=> res!47328 e!60849)))

(assert (=> b!93202 (= res!47328 (not e!60840))))

(declare-fun res!47330 () Bool)

(assert (=> b!93202 (=> (not res!47330) (not e!60840))))

(assert (=> b!93202 (= res!47330 (bvslt from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(assert (= (and d!24437 c!15489) b!93190))

(assert (= (and d!24437 (not c!15489)) b!93184))

(assert (= (and b!93184 c!15491) b!93183))

(assert (= (and b!93184 (not c!15491)) b!93191))

(assert (= (and b!93191 c!15490) b!93185))

(assert (= (and b!93191 (not c!15490)) b!93187))

(assert (= (or b!93185 b!93187) bm!9134))

(assert (= (or b!93183 bm!9134) bm!9138))

(assert (= (or b!93183 b!93185) bm!9135))

(assert (= (or b!93190 bm!9138) bm!9137))

(assert (= (or b!93190 bm!9135) bm!9139))

(assert (= (and d!24437 res!47326) b!93192))

(assert (= (and d!24437 c!15492) b!93188))

(assert (= (and d!24437 (not c!15492)) b!93201))

(assert (= (and d!24437 res!47329) b!93202))

(assert (= (and b!93202 res!47330) b!93196))

(assert (= (and b!93202 (not res!47328)) b!93186))

(assert (= (and b!93186 res!47327) b!93197))

(assert (= (and b!93202 res!47325) b!93198))

(assert (= (and b!93198 c!15487) b!93182))

(assert (= (and b!93198 (not c!15487)) b!93189))

(assert (= (and b!93182 res!47322) b!93193))

(assert (= (or b!93182 b!93189) bm!9136))

(assert (= (and b!93198 res!47323) b!93194))

(assert (= (and b!93194 c!15488) b!93199))

(assert (= (and b!93194 (not c!15488)) b!93200))

(assert (= (and b!93199 res!47324) b!93195))

(assert (= (or b!93199 b!93200) bm!9133))

(declare-fun b_lambda!4115 () Bool)

(assert (=> (not b_lambda!4115) (not b!93197)))

(assert (=> b!93197 t!5472))

(declare-fun b_and!5681 () Bool)

(assert (= b_and!5677 (and (=> t!5472 result!3151) b_and!5681)))

(assert (=> b!93197 t!5474))

(declare-fun b_and!5683 () Bool)

(assert (= b_and!5679 (and (=> t!5474 result!3155) b_and!5683)))

(assert (=> d!24437 m!100351))

(declare-fun m!100359 () Bool)

(assert (=> bm!9139 m!100359))

(assert (=> b!93196 m!100155))

(assert (=> b!93196 m!100155))

(declare-fun m!100361 () Bool)

(assert (=> b!93196 m!100361))

(declare-fun m!100363 () Bool)

(assert (=> b!93190 m!100363))

(assert (=> b!93186 m!100155))

(assert (=> b!93186 m!100155))

(declare-fun m!100365 () Bool)

(assert (=> b!93186 m!100365))

(declare-fun m!100367 () Bool)

(assert (=> bm!9137 m!100367))

(declare-fun m!100369 () Bool)

(assert (=> bm!9133 m!100369))

(declare-fun m!100371 () Bool)

(assert (=> b!93188 m!100371))

(declare-fun m!100373 () Bool)

(assert (=> b!93188 m!100373))

(declare-fun m!100375 () Bool)

(assert (=> b!93188 m!100375))

(declare-fun m!100377 () Bool)

(assert (=> b!93188 m!100377))

(declare-fun m!100379 () Bool)

(assert (=> b!93188 m!100379))

(assert (=> b!93188 m!100371))

(declare-fun m!100381 () Bool)

(assert (=> b!93188 m!100381))

(declare-fun m!100383 () Bool)

(assert (=> b!93188 m!100383))

(declare-fun m!100385 () Bool)

(assert (=> b!93188 m!100385))

(declare-fun m!100387 () Bool)

(assert (=> b!93188 m!100387))

(declare-fun m!100389 () Bool)

(assert (=> b!93188 m!100389))

(declare-fun m!100391 () Bool)

(assert (=> b!93188 m!100391))

(declare-fun m!100393 () Bool)

(assert (=> b!93188 m!100393))

(declare-fun m!100395 () Bool)

(assert (=> b!93188 m!100395))

(assert (=> b!93188 m!100367))

(assert (=> b!93188 m!100155))

(declare-fun m!100397 () Bool)

(assert (=> b!93188 m!100397))

(assert (=> b!93188 m!100391))

(declare-fun m!100399 () Bool)

(assert (=> b!93188 m!100399))

(assert (=> b!93188 m!100381))

(assert (=> b!93188 m!100387))

(assert (=> b!93197 m!100155))

(declare-fun m!100401 () Bool)

(assert (=> b!93197 m!100401))

(assert (=> b!93197 m!100155))

(assert (=> b!93197 m!100207))

(assert (=> b!93197 m!100209))

(assert (=> b!93197 m!100207))

(assert (=> b!93197 m!100209))

(assert (=> b!93197 m!100211))

(declare-fun m!100403 () Bool)

(assert (=> bm!9136 m!100403))

(declare-fun m!100405 () Bool)

(assert (=> b!93193 m!100405))

(assert (=> b!93192 m!100155))

(assert (=> b!93192 m!100155))

(assert (=> b!93192 m!100361))

(declare-fun m!100407 () Bool)

(assert (=> b!93195 m!100407))

(assert (=> b!92996 d!24437))

(declare-fun d!24439 () Bool)

(assert (=> d!24439 (= (+!134 (+!134 lt!45782 (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785)) (tuple2!2319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))))) (+!134 (+!134 lt!45782 (tuple2!2319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))))) (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785)))))

(declare-fun lt!45959 () Unit!2794)

(assert (=> d!24439 (= lt!45959 (choose!564 lt!45782 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(assert (=> d!24439 (not (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24439 (= (addCommutativeForDiffKeys!53 lt!45782 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))) lt!45959)))

(declare-fun bs!3833 () Bool)

(assert (= bs!3833 d!24439))

(assert (=> bs!3833 m!100155))

(declare-fun m!100409 () Bool)

(assert (=> bs!3833 m!100409))

(declare-fun m!100411 () Bool)

(assert (=> bs!3833 m!100411))

(declare-fun m!100413 () Bool)

(assert (=> bs!3833 m!100413))

(declare-fun m!100415 () Bool)

(assert (=> bs!3833 m!100415))

(assert (=> bs!3833 m!100415))

(declare-fun m!100417 () Bool)

(assert (=> bs!3833 m!100417))

(assert (=> bs!3833 m!100411))

(assert (=> b!92996 d!24439))

(declare-fun d!24441 () Bool)

(declare-fun e!60852 () Bool)

(assert (=> d!24441 e!60852))

(declare-fun res!47331 () Bool)

(assert (=> d!24441 (=> (not res!47331) (not e!60852))))

(declare-fun lt!45962 () ListLongMap!1531)

(assert (=> d!24441 (= res!47331 (contains!790 lt!45962 (_1!1169 lt!45780)))))

(declare-fun lt!45963 () List!1593)

(assert (=> d!24441 (= lt!45962 (ListLongMap!1532 lt!45963))))

(declare-fun lt!45961 () Unit!2794)

(declare-fun lt!45960 () Unit!2794)

(assert (=> d!24441 (= lt!45961 lt!45960)))

(assert (=> d!24441 (= (getValueByKey!145 lt!45963 (_1!1169 lt!45780)) (Some!150 (_2!1169 lt!45780)))))

(assert (=> d!24441 (= lt!45960 (lemmaContainsTupThenGetReturnValue!64 lt!45963 (_1!1169 lt!45780) (_2!1169 lt!45780)))))

(assert (=> d!24441 (= lt!45963 (insertStrictlySorted!66 (toList!781 lt!45784) (_1!1169 lt!45780) (_2!1169 lt!45780)))))

(assert (=> d!24441 (= (+!134 lt!45784 lt!45780) lt!45962)))

(declare-fun b!93203 () Bool)

(declare-fun res!47332 () Bool)

(assert (=> b!93203 (=> (not res!47332) (not e!60852))))

(assert (=> b!93203 (= res!47332 (= (getValueByKey!145 (toList!781 lt!45962) (_1!1169 lt!45780)) (Some!150 (_2!1169 lt!45780))))))

(declare-fun b!93204 () Bool)

(assert (=> b!93204 (= e!60852 (contains!791 (toList!781 lt!45962) lt!45780))))

(assert (= (and d!24441 res!47331) b!93203))

(assert (= (and b!93203 res!47332) b!93204))

(declare-fun m!100419 () Bool)

(assert (=> d!24441 m!100419))

(declare-fun m!100421 () Bool)

(assert (=> d!24441 m!100421))

(declare-fun m!100423 () Bool)

(assert (=> d!24441 m!100423))

(declare-fun m!100425 () Bool)

(assert (=> d!24441 m!100425))

(declare-fun m!100427 () Bool)

(assert (=> b!93203 m!100427))

(declare-fun m!100429 () Bool)

(assert (=> b!93204 m!100429))

(assert (=> b!92996 d!24441))

(declare-fun d!24443 () Bool)

(declare-fun e!60853 () Bool)

(assert (=> d!24443 e!60853))

(declare-fun res!47333 () Bool)

(assert (=> d!24443 (=> (not res!47333) (not e!60853))))

(declare-fun lt!45966 () ListLongMap!1531)

(assert (=> d!24443 (= res!47333 (contains!790 lt!45966 (_1!1169 lt!45780)))))

(declare-fun lt!45967 () List!1593)

(assert (=> d!24443 (= lt!45966 (ListLongMap!1532 lt!45967))))

(declare-fun lt!45965 () Unit!2794)

(declare-fun lt!45964 () Unit!2794)

(assert (=> d!24443 (= lt!45965 lt!45964)))

(assert (=> d!24443 (= (getValueByKey!145 lt!45967 (_1!1169 lt!45780)) (Some!150 (_2!1169 lt!45780)))))

(assert (=> d!24443 (= lt!45964 (lemmaContainsTupThenGetReturnValue!64 lt!45967 (_1!1169 lt!45780) (_2!1169 lt!45780)))))

(assert (=> d!24443 (= lt!45967 (insertStrictlySorted!66 (toList!781 lt!45787) (_1!1169 lt!45780) (_2!1169 lt!45780)))))

(assert (=> d!24443 (= (+!134 lt!45787 lt!45780) lt!45966)))

(declare-fun b!93205 () Bool)

(declare-fun res!47334 () Bool)

(assert (=> b!93205 (=> (not res!47334) (not e!60853))))

(assert (=> b!93205 (= res!47334 (= (getValueByKey!145 (toList!781 lt!45966) (_1!1169 lt!45780)) (Some!150 (_2!1169 lt!45780))))))

(declare-fun b!93206 () Bool)

(assert (=> b!93206 (= e!60853 (contains!791 (toList!781 lt!45966) lt!45780))))

(assert (= (and d!24443 res!47333) b!93205))

(assert (= (and b!93205 res!47334) b!93206))

(declare-fun m!100431 () Bool)

(assert (=> d!24443 m!100431))

(declare-fun m!100433 () Bool)

(assert (=> d!24443 m!100433))

(declare-fun m!100435 () Bool)

(assert (=> d!24443 m!100435))

(declare-fun m!100437 () Bool)

(assert (=> d!24443 m!100437))

(declare-fun m!100439 () Bool)

(assert (=> b!93205 m!100439))

(declare-fun m!100441 () Bool)

(assert (=> b!93206 m!100441))

(assert (=> b!92996 d!24443))

(declare-fun d!24445 () Bool)

(declare-fun e!60854 () Bool)

(assert (=> d!24445 e!60854))

(declare-fun res!47335 () Bool)

(assert (=> d!24445 (=> (not res!47335) (not e!60854))))

(declare-fun lt!45970 () ListLongMap!1531)

(assert (=> d!24445 (= res!47335 (contains!790 lt!45970 (_1!1169 lt!45793)))))

(declare-fun lt!45971 () List!1593)

(assert (=> d!24445 (= lt!45970 (ListLongMap!1532 lt!45971))))

(declare-fun lt!45969 () Unit!2794)

(declare-fun lt!45968 () Unit!2794)

(assert (=> d!24445 (= lt!45969 lt!45968)))

(assert (=> d!24445 (= (getValueByKey!145 lt!45971 (_1!1169 lt!45793)) (Some!150 (_2!1169 lt!45793)))))

(assert (=> d!24445 (= lt!45968 (lemmaContainsTupThenGetReturnValue!64 lt!45971 (_1!1169 lt!45793) (_2!1169 lt!45793)))))

(assert (=> d!24445 (= lt!45971 (insertStrictlySorted!66 (toList!781 lt!45782) (_1!1169 lt!45793) (_2!1169 lt!45793)))))

(assert (=> d!24445 (= (+!134 lt!45782 lt!45793) lt!45970)))

(declare-fun b!93207 () Bool)

(declare-fun res!47336 () Bool)

(assert (=> b!93207 (=> (not res!47336) (not e!60854))))

(assert (=> b!93207 (= res!47336 (= (getValueByKey!145 (toList!781 lt!45970) (_1!1169 lt!45793)) (Some!150 (_2!1169 lt!45793))))))

(declare-fun b!93208 () Bool)

(assert (=> b!93208 (= e!60854 (contains!791 (toList!781 lt!45970) lt!45793))))

(assert (= (and d!24445 res!47335) b!93207))

(assert (= (and b!93207 res!47336) b!93208))

(declare-fun m!100443 () Bool)

(assert (=> d!24445 m!100443))

(declare-fun m!100445 () Bool)

(assert (=> d!24445 m!100445))

(declare-fun m!100447 () Bool)

(assert (=> d!24445 m!100447))

(declare-fun m!100449 () Bool)

(assert (=> d!24445 m!100449))

(declare-fun m!100451 () Bool)

(assert (=> b!93207 m!100451))

(declare-fun m!100453 () Bool)

(assert (=> b!93208 m!100453))

(assert (=> b!92996 d!24445))

(declare-fun d!24447 () Bool)

(declare-fun e!60855 () Bool)

(assert (=> d!24447 e!60855))

(declare-fun res!47337 () Bool)

(assert (=> d!24447 (=> (not res!47337) (not e!60855))))

(declare-fun lt!45974 () ListLongMap!1531)

(assert (=> d!24447 (= res!47337 (contains!790 lt!45974 (_1!1169 lt!45791)))))

(declare-fun lt!45975 () List!1593)

(assert (=> d!24447 (= lt!45974 (ListLongMap!1532 lt!45975))))

(declare-fun lt!45973 () Unit!2794)

(declare-fun lt!45972 () Unit!2794)

(assert (=> d!24447 (= lt!45973 lt!45972)))

(assert (=> d!24447 (= (getValueByKey!145 lt!45975 (_1!1169 lt!45791)) (Some!150 (_2!1169 lt!45791)))))

(assert (=> d!24447 (= lt!45972 (lemmaContainsTupThenGetReturnValue!64 lt!45975 (_1!1169 lt!45791) (_2!1169 lt!45791)))))

(assert (=> d!24447 (= lt!45975 (insertStrictlySorted!66 (toList!781 lt!45794) (_1!1169 lt!45791) (_2!1169 lt!45791)))))

(assert (=> d!24447 (= (+!134 lt!45794 lt!45791) lt!45974)))

(declare-fun b!93209 () Bool)

(declare-fun res!47338 () Bool)

(assert (=> b!93209 (=> (not res!47338) (not e!60855))))

(assert (=> b!93209 (= res!47338 (= (getValueByKey!145 (toList!781 lt!45974) (_1!1169 lt!45791)) (Some!150 (_2!1169 lt!45791))))))

(declare-fun b!93210 () Bool)

(assert (=> b!93210 (= e!60855 (contains!791 (toList!781 lt!45974) lt!45791))))

(assert (= (and d!24447 res!47337) b!93209))

(assert (= (and b!93209 res!47338) b!93210))

(declare-fun m!100455 () Bool)

(assert (=> d!24447 m!100455))

(declare-fun m!100457 () Bool)

(assert (=> d!24447 m!100457))

(declare-fun m!100459 () Bool)

(assert (=> d!24447 m!100459))

(declare-fun m!100461 () Bool)

(assert (=> d!24447 m!100461))

(declare-fun m!100463 () Bool)

(assert (=> b!93209 m!100463))

(declare-fun m!100465 () Bool)

(assert (=> b!93210 m!100465))

(assert (=> b!92996 d!24447))

(declare-fun d!24449 () Bool)

(declare-fun e!60856 () Bool)

(assert (=> d!24449 e!60856))

(declare-fun res!47339 () Bool)

(assert (=> d!24449 (=> (not res!47339) (not e!60856))))

(declare-fun lt!45978 () ListLongMap!1531)

(assert (=> d!24449 (= res!47339 (contains!790 lt!45978 (_1!1169 lt!45791)))))

(declare-fun lt!45979 () List!1593)

(assert (=> d!24449 (= lt!45978 (ListLongMap!1532 lt!45979))))

(declare-fun lt!45977 () Unit!2794)

(declare-fun lt!45976 () Unit!2794)

(assert (=> d!24449 (= lt!45977 lt!45976)))

(assert (=> d!24449 (= (getValueByKey!145 lt!45979 (_1!1169 lt!45791)) (Some!150 (_2!1169 lt!45791)))))

(assert (=> d!24449 (= lt!45976 (lemmaContainsTupThenGetReturnValue!64 lt!45979 (_1!1169 lt!45791) (_2!1169 lt!45791)))))

(assert (=> d!24449 (= lt!45979 (insertStrictlySorted!66 (toList!781 lt!45782) (_1!1169 lt!45791) (_2!1169 lt!45791)))))

(assert (=> d!24449 (= (+!134 lt!45782 lt!45791) lt!45978)))

(declare-fun b!93211 () Bool)

(declare-fun res!47340 () Bool)

(assert (=> b!93211 (=> (not res!47340) (not e!60856))))

(assert (=> b!93211 (= res!47340 (= (getValueByKey!145 (toList!781 lt!45978) (_1!1169 lt!45791)) (Some!150 (_2!1169 lt!45791))))))

(declare-fun b!93212 () Bool)

(assert (=> b!93212 (= e!60856 (contains!791 (toList!781 lt!45978) lt!45791))))

(assert (= (and d!24449 res!47339) b!93211))

(assert (= (and b!93211 res!47340) b!93212))

(declare-fun m!100467 () Bool)

(assert (=> d!24449 m!100467))

(declare-fun m!100469 () Bool)

(assert (=> d!24449 m!100469))

(declare-fun m!100471 () Bool)

(assert (=> d!24449 m!100471))

(declare-fun m!100473 () Bool)

(assert (=> d!24449 m!100473))

(declare-fun m!100475 () Bool)

(assert (=> b!93211 m!100475))

(declare-fun m!100477 () Bool)

(assert (=> b!93212 m!100477))

(assert (=> b!92996 d!24449))

(declare-fun d!24451 () Bool)

(assert (=> d!24451 (not (arrayContainsKey!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!45982 () Unit!2794)

(declare-fun choose!68 (array!4172 (_ BitVec 32) (_ BitVec 64) List!1594) Unit!2794)

(assert (=> d!24451 (= lt!45982 (choose!68 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (Cons!1590 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) Nil!1591)))))

(assert (=> d!24451 (bvslt (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!24451 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (Cons!1590 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) Nil!1591)) lt!45982)))

(declare-fun bs!3834 () Bool)

(assert (= bs!3834 d!24451))

(assert (=> bs!3834 m!100155))

(assert (=> bs!3834 m!100203))

(assert (=> bs!3834 m!100155))

(declare-fun m!100479 () Bool)

(assert (=> bs!3834 m!100479))

(assert (=> b!93004 d!24451))

(declare-fun d!24453 () Bool)

(assert (=> d!24453 (arrayNoDuplicates!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) from!355 Nil!1591)))

(declare-fun lt!45985 () Unit!2794)

(declare-fun choose!39 (array!4172 (_ BitVec 32) (_ BitVec 32)) Unit!2794)

(assert (=> d!24453 (= lt!45985 (choose!39 (_keys!4107 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!24453 (bvslt (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!24453 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000000 from!355) lt!45985)))

(declare-fun bs!3835 () Bool)

(assert (= bs!3835 d!24453))

(assert (=> bs!3835 m!100199))

(declare-fun m!100481 () Bool)

(assert (=> bs!3835 m!100481))

(assert (=> b!93004 d!24453))

(declare-fun d!24455 () Bool)

(declare-fun res!47345 () Bool)

(declare-fun e!60861 () Bool)

(assert (=> d!24455 (=> res!47345 e!60861)))

(assert (=> d!24455 (= res!47345 (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(assert (=> d!24455 (= (arrayContainsKey!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!60861)))

(declare-fun b!93217 () Bool)

(declare-fun e!60862 () Bool)

(assert (=> b!93217 (= e!60861 e!60862)))

(declare-fun res!47346 () Bool)

(assert (=> b!93217 (=> (not res!47346) (not e!60862))))

(assert (=> b!93217 (= res!47346 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun b!93218 () Bool)

(assert (=> b!93218 (= e!60862 (arrayContainsKey!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!24455 (not res!47345)) b!93217))

(assert (= (and b!93217 res!47346) b!93218))

(assert (=> d!24455 m!100331))

(assert (=> b!93218 m!100155))

(declare-fun m!100483 () Bool)

(assert (=> b!93218 m!100483))

(assert (=> b!93004 d!24455))

(declare-fun d!24457 () Bool)

(declare-fun e!60865 () Bool)

(assert (=> d!24457 e!60865))

(declare-fun c!15495 () Bool)

(assert (=> d!24457 (= c!15495 (and (not (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!45988 () Unit!2794)

(declare-fun choose!565 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 64) (_ BitVec 32) Int) Unit!2794)

(assert (=> d!24457 (= lt!45988 (choose!565 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(assert (=> d!24457 (validMask!0 (mask!6495 (v!2747 (underlying!324 thiss!992))))))

(assert (=> d!24457 (= (lemmaListMapContainsThenArrayContainsFrom!90 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))) lt!45988)))

(declare-fun b!93223 () Bool)

(assert (=> b!93223 (= e!60865 (arrayContainsKey!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!93224 () Bool)

(assert (=> b!93224 (= e!60865 (ite (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!24457 c!15495) b!93223))

(assert (= (and d!24457 (not c!15495)) b!93224))

(assert (=> d!24457 m!100155))

(declare-fun m!100485 () Bool)

(assert (=> d!24457 m!100485))

(assert (=> d!24457 m!100351))

(assert (=> b!93223 m!100155))

(assert (=> b!93223 m!100203))

(assert (=> b!93004 d!24457))

(declare-fun c!15498 () Bool)

(declare-fun bm!9142 () Bool)

(declare-fun call!9145 () Bool)

(assert (=> bm!9142 (= call!9145 (arrayNoDuplicates!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!15498 (Cons!1590 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) Nil!1591) Nil!1591)))))

(declare-fun b!93235 () Bool)

(declare-fun e!60875 () Bool)

(declare-fun contains!792 (List!1594 (_ BitVec 64)) Bool)

(assert (=> b!93235 (= e!60875 (contains!792 Nil!1591 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93236 () Bool)

(declare-fun e!60876 () Bool)

(declare-fun e!60874 () Bool)

(assert (=> b!93236 (= e!60876 e!60874)))

(assert (=> b!93236 (= c!15498 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93238 () Bool)

(assert (=> b!93238 (= e!60874 call!9145)))

(declare-fun b!93239 () Bool)

(assert (=> b!93239 (= e!60874 call!9145)))

(declare-fun d!24459 () Bool)

(declare-fun res!47353 () Bool)

(declare-fun e!60877 () Bool)

(assert (=> d!24459 (=> res!47353 e!60877)))

(assert (=> d!24459 (= res!47353 (bvsge from!355 (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(assert (=> d!24459 (= (arrayNoDuplicates!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) from!355 Nil!1591) e!60877)))

(declare-fun b!93237 () Bool)

(assert (=> b!93237 (= e!60877 e!60876)))

(declare-fun res!47354 () Bool)

(assert (=> b!93237 (=> (not res!47354) (not e!60876))))

(assert (=> b!93237 (= res!47354 (not e!60875))))

(declare-fun res!47355 () Bool)

(assert (=> b!93237 (=> (not res!47355) (not e!60875))))

(assert (=> b!93237 (= res!47355 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(assert (= (and d!24459 (not res!47353)) b!93237))

(assert (= (and b!93237 res!47355) b!93235))

(assert (= (and b!93237 res!47354) b!93236))

(assert (= (and b!93236 c!15498) b!93239))

(assert (= (and b!93236 (not c!15498)) b!93238))

(assert (= (or b!93239 b!93238) bm!9142))

(assert (=> bm!9142 m!100155))

(declare-fun m!100487 () Bool)

(assert (=> bm!9142 m!100487))

(assert (=> b!93235 m!100155))

(assert (=> b!93235 m!100155))

(declare-fun m!100489 () Bool)

(assert (=> b!93235 m!100489))

(assert (=> b!93236 m!100155))

(assert (=> b!93236 m!100155))

(assert (=> b!93236 m!100361))

(assert (=> b!93237 m!100155))

(assert (=> b!93237 m!100155))

(assert (=> b!93237 m!100361))

(assert (=> b!93004 d!24459))

(declare-fun d!24461 () Bool)

(assert (=> d!24461 (= (map!1236 newMap!16) (getCurrentListMap!463 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2425 newMap!16)))))

(declare-fun bs!3836 () Bool)

(assert (= bs!3836 d!24461))

(declare-fun m!100491 () Bool)

(assert (=> bs!3836 m!100491))

(assert (=> b!93003 d!24461))

(declare-fun b!93240 () Bool)

(declare-fun e!60885 () Bool)

(declare-fun e!60882 () Bool)

(assert (=> b!93240 (= e!60885 e!60882)))

(declare-fun res!47356 () Bool)

(declare-fun call!9149 () Bool)

(assert (=> b!93240 (= res!47356 call!9149)))

(assert (=> b!93240 (=> (not res!47356) (not e!60882))))

(declare-fun b!93241 () Bool)

(declare-fun e!60886 () ListLongMap!1531)

(declare-fun call!9150 () ListLongMap!1531)

(assert (=> b!93241 (= e!60886 call!9150)))

(declare-fun bm!9143 () Bool)

(declare-fun call!9152 () Bool)

(declare-fun lt!46000 () ListLongMap!1531)

(assert (=> bm!9143 (= call!9152 (contains!790 lt!46000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9144 () Bool)

(declare-fun call!9148 () ListLongMap!1531)

(declare-fun call!9147 () ListLongMap!1531)

(assert (=> bm!9144 (= call!9148 call!9147)))

(declare-fun b!93242 () Bool)

(declare-fun e!60890 () ListLongMap!1531)

(assert (=> b!93242 (= e!60890 e!60886)))

(declare-fun c!15503 () Bool)

(assert (=> b!93242 (= c!15503 (and (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!93243 () Bool)

(declare-fun e!60880 () ListLongMap!1531)

(assert (=> b!93243 (= e!60880 call!9150)))

(declare-fun b!93244 () Bool)

(declare-fun e!60888 () Bool)

(declare-fun e!60884 () Bool)

(assert (=> b!93244 (= e!60888 e!60884)))

(declare-fun res!47361 () Bool)

(assert (=> b!93244 (=> (not res!47361) (not e!60884))))

(assert (=> b!93244 (= res!47361 (contains!790 lt!46000 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!93244 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun bm!9145 () Bool)

(declare-fun call!9146 () ListLongMap!1531)

(assert (=> bm!9145 (= call!9150 call!9146)))

(declare-fun b!93245 () Bool)

(assert (=> b!93245 (= e!60880 call!9148)))

(declare-fun b!93247 () Bool)

(assert (=> b!93247 (= e!60885 (not call!9149))))

(declare-fun bm!9146 () Bool)

(assert (=> bm!9146 (= call!9149 (contains!790 lt!46000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93248 () Bool)

(assert (=> b!93248 (= e!60890 (+!134 call!9146 (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun b!93249 () Bool)

(declare-fun c!15502 () Bool)

(assert (=> b!93249 (= c!15502 (and (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!93249 (= e!60886 e!60880)))

(declare-fun b!93250 () Bool)

(declare-fun e!60881 () Bool)

(assert (=> b!93250 (= e!60881 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!93251 () Bool)

(assert (=> b!93251 (= e!60882 (= (apply!88 lt!46000 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93252 () Bool)

(declare-fun e!60883 () Bool)

(declare-fun e!60878 () Bool)

(assert (=> b!93252 (= e!60883 e!60878)))

(declare-fun c!15500 () Bool)

(assert (=> b!93252 (= c!15500 (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!9147 () Bool)

(declare-fun call!9151 () ListLongMap!1531)

(assert (=> bm!9147 (= call!9151 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93253 () Bool)

(declare-fun e!60887 () Bool)

(assert (=> b!93253 (= e!60887 (= (apply!88 lt!46000 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93254 () Bool)

(declare-fun e!60879 () Bool)

(assert (=> b!93254 (= e!60879 (validKeyInArray!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!93255 () Bool)

(assert (=> b!93255 (= e!60884 (= (apply!88 lt!46000 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!93255 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2233 (_values!2408 (v!2747 (underlying!324 thiss!992))))))))

(assert (=> b!93255 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun b!93256 () Bool)

(declare-fun res!47357 () Bool)

(assert (=> b!93256 (=> (not res!47357) (not e!60883))))

(assert (=> b!93256 (= res!47357 e!60885)))

(declare-fun c!15499 () Bool)

(assert (=> b!93256 (= c!15499 (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!9148 () Bool)

(assert (=> bm!9148 (= call!9147 call!9151)))

(declare-fun b!93246 () Bool)

(declare-fun e!60889 () Unit!2794)

(declare-fun lt!45994 () Unit!2794)

(assert (=> b!93246 (= e!60889 lt!45994)))

(declare-fun lt!46003 () ListLongMap!1531)

(assert (=> b!93246 (= lt!46003 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!46008 () (_ BitVec 64))

(assert (=> b!93246 (= lt!46008 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46009 () (_ BitVec 64))

(assert (=> b!93246 (= lt!46009 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!45992 () Unit!2794)

(assert (=> b!93246 (= lt!45992 (addStillContains!64 lt!46003 lt!46008 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) lt!46009))))

(assert (=> b!93246 (contains!790 (+!134 lt!46003 (tuple2!2319 lt!46008 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!46009)))

(declare-fun lt!46006 () Unit!2794)

(assert (=> b!93246 (= lt!46006 lt!45992)))

(declare-fun lt!45997 () ListLongMap!1531)

(assert (=> b!93246 (= lt!45997 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!46004 () (_ BitVec 64))

(assert (=> b!93246 (= lt!46004 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46007 () (_ BitVec 64))

(assert (=> b!93246 (= lt!46007 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!46001 () Unit!2794)

(assert (=> b!93246 (= lt!46001 (addApplyDifferent!64 lt!45997 lt!46004 (minValue!2312 (v!2747 (underlying!324 thiss!992))) lt!46007))))

(assert (=> b!93246 (= (apply!88 (+!134 lt!45997 (tuple2!2319 lt!46004 (minValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!46007) (apply!88 lt!45997 lt!46007))))

(declare-fun lt!46005 () Unit!2794)

(assert (=> b!93246 (= lt!46005 lt!46001)))

(declare-fun lt!46010 () ListLongMap!1531)

(assert (=> b!93246 (= lt!46010 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!45989 () (_ BitVec 64))

(assert (=> b!93246 (= lt!45989 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45999 () (_ BitVec 64))

(assert (=> b!93246 (= lt!45999 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!45996 () Unit!2794)

(assert (=> b!93246 (= lt!45996 (addApplyDifferent!64 lt!46010 lt!45989 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) lt!45999))))

(assert (=> b!93246 (= (apply!88 (+!134 lt!46010 (tuple2!2319 lt!45989 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!45999) (apply!88 lt!46010 lt!45999))))

(declare-fun lt!46002 () Unit!2794)

(assert (=> b!93246 (= lt!46002 lt!45996)))

(declare-fun lt!45993 () ListLongMap!1531)

(assert (=> b!93246 (= lt!45993 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun lt!45990 () (_ BitVec 64))

(assert (=> b!93246 (= lt!45990 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45995 () (_ BitVec 64))

(assert (=> b!93246 (= lt!45995 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!93246 (= lt!45994 (addApplyDifferent!64 lt!45993 lt!45990 (minValue!2312 (v!2747 (underlying!324 thiss!992))) lt!45995))))

(assert (=> b!93246 (= (apply!88 (+!134 lt!45993 (tuple2!2319 lt!45990 (minValue!2312 (v!2747 (underlying!324 thiss!992))))) lt!45995) (apply!88 lt!45993 lt!45995))))

(declare-fun d!24463 () Bool)

(assert (=> d!24463 e!60883))

(declare-fun res!47363 () Bool)

(assert (=> d!24463 (=> (not res!47363) (not e!60883))))

(assert (=> d!24463 (= res!47363 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))))

(declare-fun lt!45991 () ListLongMap!1531)

(assert (=> d!24463 (= lt!46000 lt!45991)))

(declare-fun lt!45998 () Unit!2794)

(assert (=> d!24463 (= lt!45998 e!60889)))

(declare-fun c!15504 () Bool)

(assert (=> d!24463 (= c!15504 e!60881)))

(declare-fun res!47360 () Bool)

(assert (=> d!24463 (=> (not res!47360) (not e!60881))))

(assert (=> d!24463 (= res!47360 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(assert (=> d!24463 (= lt!45991 e!60890)))

(declare-fun c!15501 () Bool)

(assert (=> d!24463 (= c!15501 (and (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24463 (validMask!0 (mask!6495 (v!2747 (underlying!324 thiss!992))))))

(assert (=> d!24463 (= (getCurrentListMap!463 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))) lt!46000)))

(declare-fun b!93257 () Bool)

(assert (=> b!93257 (= e!60878 e!60887)))

(declare-fun res!47358 () Bool)

(assert (=> b!93257 (= res!47358 call!9152)))

(assert (=> b!93257 (=> (not res!47358) (not e!60887))))

(declare-fun b!93258 () Bool)

(assert (=> b!93258 (= e!60878 (not call!9152))))

(declare-fun bm!9149 () Bool)

(assert (=> bm!9149 (= call!9146 (+!134 (ite c!15501 call!9151 (ite c!15503 call!9147 call!9148)) (ite (or c!15501 c!15503) (tuple2!2319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))) (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))))

(declare-fun b!93259 () Bool)

(declare-fun Unit!2802 () Unit!2794)

(assert (=> b!93259 (= e!60889 Unit!2802)))

(declare-fun b!93260 () Bool)

(declare-fun res!47359 () Bool)

(assert (=> b!93260 (=> (not res!47359) (not e!60883))))

(assert (=> b!93260 (= res!47359 e!60888)))

(declare-fun res!47362 () Bool)

(assert (=> b!93260 (=> res!47362 e!60888)))

(assert (=> b!93260 (= res!47362 (not e!60879))))

(declare-fun res!47364 () Bool)

(assert (=> b!93260 (=> (not res!47364) (not e!60879))))

(assert (=> b!93260 (= res!47364 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992))))))))

(assert (= (and d!24463 c!15501) b!93248))

(assert (= (and d!24463 (not c!15501)) b!93242))

(assert (= (and b!93242 c!15503) b!93241))

(assert (= (and b!93242 (not c!15503)) b!93249))

(assert (= (and b!93249 c!15502) b!93243))

(assert (= (and b!93249 (not c!15502)) b!93245))

(assert (= (or b!93243 b!93245) bm!9144))

(assert (= (or b!93241 bm!9144) bm!9148))

(assert (= (or b!93241 b!93243) bm!9145))

(assert (= (or b!93248 bm!9148) bm!9147))

(assert (= (or b!93248 bm!9145) bm!9149))

(assert (= (and d!24463 res!47360) b!93250))

(assert (= (and d!24463 c!15504) b!93246))

(assert (= (and d!24463 (not c!15504)) b!93259))

(assert (= (and d!24463 res!47363) b!93260))

(assert (= (and b!93260 res!47364) b!93254))

(assert (= (and b!93260 (not res!47362)) b!93244))

(assert (= (and b!93244 res!47361) b!93255))

(assert (= (and b!93260 res!47359) b!93256))

(assert (= (and b!93256 c!15499) b!93240))

(assert (= (and b!93256 (not c!15499)) b!93247))

(assert (= (and b!93240 res!47356) b!93251))

(assert (= (or b!93240 b!93247) bm!9146))

(assert (= (and b!93256 res!47357) b!93252))

(assert (= (and b!93252 c!15500) b!93257))

(assert (= (and b!93252 (not c!15500)) b!93258))

(assert (= (and b!93257 res!47358) b!93253))

(assert (= (or b!93257 b!93258) bm!9143))

(declare-fun b_lambda!4117 () Bool)

(assert (=> (not b_lambda!4117) (not b!93255)))

(assert (=> b!93255 t!5472))

(declare-fun b_and!5685 () Bool)

(assert (= b_and!5681 (and (=> t!5472 result!3151) b_and!5685)))

(assert (=> b!93255 t!5474))

(declare-fun b_and!5687 () Bool)

(assert (= b_and!5683 (and (=> t!5474 result!3155) b_and!5687)))

(assert (=> d!24463 m!100351))

(declare-fun m!100493 () Bool)

(assert (=> bm!9149 m!100493))

(assert (=> b!93254 m!100331))

(assert (=> b!93254 m!100331))

(assert (=> b!93254 m!100339))

(declare-fun m!100495 () Bool)

(assert (=> b!93248 m!100495))

(assert (=> b!93244 m!100331))

(assert (=> b!93244 m!100331))

(declare-fun m!100497 () Bool)

(assert (=> b!93244 m!100497))

(assert (=> bm!9147 m!100179))

(declare-fun m!100499 () Bool)

(assert (=> bm!9143 m!100499))

(declare-fun m!100501 () Bool)

(assert (=> b!93246 m!100501))

(declare-fun m!100503 () Bool)

(assert (=> b!93246 m!100503))

(declare-fun m!100505 () Bool)

(assert (=> b!93246 m!100505))

(declare-fun m!100507 () Bool)

(assert (=> b!93246 m!100507))

(declare-fun m!100509 () Bool)

(assert (=> b!93246 m!100509))

(assert (=> b!93246 m!100501))

(declare-fun m!100511 () Bool)

(assert (=> b!93246 m!100511))

(declare-fun m!100513 () Bool)

(assert (=> b!93246 m!100513))

(declare-fun m!100515 () Bool)

(assert (=> b!93246 m!100515))

(declare-fun m!100517 () Bool)

(assert (=> b!93246 m!100517))

(declare-fun m!100519 () Bool)

(assert (=> b!93246 m!100519))

(declare-fun m!100521 () Bool)

(assert (=> b!93246 m!100521))

(declare-fun m!100523 () Bool)

(assert (=> b!93246 m!100523))

(declare-fun m!100525 () Bool)

(assert (=> b!93246 m!100525))

(assert (=> b!93246 m!100179))

(assert (=> b!93246 m!100331))

(declare-fun m!100527 () Bool)

(assert (=> b!93246 m!100527))

(assert (=> b!93246 m!100521))

(declare-fun m!100529 () Bool)

(assert (=> b!93246 m!100529))

(assert (=> b!93246 m!100511))

(assert (=> b!93246 m!100517))

(assert (=> b!93255 m!100331))

(declare-fun m!100531 () Bool)

(assert (=> b!93255 m!100531))

(assert (=> b!93255 m!100331))

(assert (=> b!93255 m!100335))

(assert (=> b!93255 m!100209))

(assert (=> b!93255 m!100335))

(assert (=> b!93255 m!100209))

(assert (=> b!93255 m!100337))

(declare-fun m!100533 () Bool)

(assert (=> bm!9146 m!100533))

(declare-fun m!100535 () Bool)

(assert (=> b!93251 m!100535))

(assert (=> b!93250 m!100331))

(assert (=> b!93250 m!100331))

(assert (=> b!93250 m!100339))

(declare-fun m!100537 () Bool)

(assert (=> b!93253 m!100537))

(assert (=> b!93003 d!24463))

(declare-fun d!24465 () Bool)

(declare-fun res!47365 () Bool)

(declare-fun e!60891 () Bool)

(assert (=> d!24465 (=> (not res!47365) (not e!60891))))

(assert (=> d!24465 (= res!47365 (simpleValid!63 newMap!16))))

(assert (=> d!24465 (= (valid!367 newMap!16) e!60891)))

(declare-fun b!93261 () Bool)

(declare-fun res!47366 () Bool)

(assert (=> b!93261 (=> (not res!47366) (not e!60891))))

(assert (=> b!93261 (= res!47366 (= (arrayCountValidKeys!0 (_keys!4107 newMap!16) #b00000000000000000000000000000000 (size!2232 (_keys!4107 newMap!16))) (_size!460 newMap!16)))))

(declare-fun b!93262 () Bool)

(declare-fun res!47367 () Bool)

(assert (=> b!93262 (=> (not res!47367) (not e!60891))))

(assert (=> b!93262 (= res!47367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4107 newMap!16) (mask!6495 newMap!16)))))

(declare-fun b!93263 () Bool)

(assert (=> b!93263 (= e!60891 (arrayNoDuplicates!0 (_keys!4107 newMap!16) #b00000000000000000000000000000000 Nil!1591))))

(assert (= (and d!24465 res!47365) b!93261))

(assert (= (and b!93261 res!47366) b!93262))

(assert (= (and b!93262 res!47367) b!93263))

(declare-fun m!100539 () Bool)

(assert (=> d!24465 m!100539))

(declare-fun m!100541 () Bool)

(assert (=> b!93261 m!100541))

(declare-fun m!100543 () Bool)

(assert (=> b!93262 m!100543))

(declare-fun m!100545 () Bool)

(assert (=> b!93263 m!100545))

(assert (=> b!93002 d!24465))

(declare-fun d!24467 () Bool)

(declare-fun res!47368 () Bool)

(declare-fun e!60892 () Bool)

(assert (=> d!24467 (=> (not res!47368) (not e!60892))))

(assert (=> d!24467 (= res!47368 (simpleValid!63 (_2!1168 lt!45795)))))

(assert (=> d!24467 (= (valid!367 (_2!1168 lt!45795)) e!60892)))

(declare-fun b!93264 () Bool)

(declare-fun res!47369 () Bool)

(assert (=> b!93264 (=> (not res!47369) (not e!60892))))

(assert (=> b!93264 (= res!47369 (= (arrayCountValidKeys!0 (_keys!4107 (_2!1168 lt!45795)) #b00000000000000000000000000000000 (size!2232 (_keys!4107 (_2!1168 lt!45795)))) (_size!460 (_2!1168 lt!45795))))))

(declare-fun b!93265 () Bool)

(declare-fun res!47370 () Bool)

(assert (=> b!93265 (=> (not res!47370) (not e!60892))))

(assert (=> b!93265 (= res!47370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4107 (_2!1168 lt!45795)) (mask!6495 (_2!1168 lt!45795))))))

(declare-fun b!93266 () Bool)

(assert (=> b!93266 (= e!60892 (arrayNoDuplicates!0 (_keys!4107 (_2!1168 lt!45795)) #b00000000000000000000000000000000 Nil!1591))))

(assert (= (and d!24467 res!47368) b!93264))

(assert (= (and b!93264 res!47369) b!93265))

(assert (= (and b!93265 res!47370) b!93266))

(declare-fun m!100547 () Bool)

(assert (=> d!24467 m!100547))

(declare-fun m!100549 () Bool)

(assert (=> b!93264 m!100549))

(declare-fun m!100551 () Bool)

(assert (=> b!93265 m!100551))

(declare-fun m!100553 () Bool)

(assert (=> b!93266 m!100553))

(assert (=> b!93013 d!24467))

(declare-fun d!24469 () Bool)

(assert (=> d!24469 (= (valid!366 thiss!992) (valid!367 (v!2747 (underlying!324 thiss!992))))))

(declare-fun bs!3837 () Bool)

(assert (= bs!3837 d!24469))

(assert (=> bs!3837 m!100193))

(assert (=> start!11284 d!24469))

(declare-fun d!24471 () Bool)

(declare-fun c!15507 () Bool)

(assert (=> d!24471 (= c!15507 ((_ is ValueCellFull!957) (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun e!60895 () V!3115)

(assert (=> d!24471 (= (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) from!355) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!60895)))

(declare-fun b!93271 () Bool)

(declare-fun get!1269 (ValueCell!957 V!3115) V!3115)

(assert (=> b!93271 (= e!60895 (get!1269 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) from!355) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!93272 () Bool)

(declare-fun get!1270 (ValueCell!957 V!3115) V!3115)

(assert (=> b!93272 (= e!60895 (get!1270 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) from!355) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24471 c!15507) b!93271))

(assert (= (and d!24471 (not c!15507)) b!93272))

(assert (=> b!93271 m!100207))

(assert (=> b!93271 m!100209))

(declare-fun m!100555 () Bool)

(assert (=> b!93271 m!100555))

(assert (=> b!93272 m!100207))

(assert (=> b!93272 m!100209))

(declare-fun m!100557 () Bool)

(assert (=> b!93272 m!100557))

(assert (=> b!93009 d!24471))

(declare-fun d!24473 () Bool)

(declare-fun e!60901 () Bool)

(assert (=> d!24473 e!60901))

(declare-fun res!47373 () Bool)

(assert (=> d!24473 (=> res!47373 e!60901)))

(declare-fun lt!46020 () Bool)

(assert (=> d!24473 (= res!47373 (not lt!46020))))

(declare-fun lt!46019 () Bool)

(assert (=> d!24473 (= lt!46020 lt!46019)))

(declare-fun lt!46021 () Unit!2794)

(declare-fun e!60900 () Unit!2794)

(assert (=> d!24473 (= lt!46021 e!60900)))

(declare-fun c!15510 () Bool)

(assert (=> d!24473 (= c!15510 lt!46019)))

(declare-fun containsKey!149 (List!1593 (_ BitVec 64)) Bool)

(assert (=> d!24473 (= lt!46019 (containsKey!149 (toList!781 lt!45792) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(assert (=> d!24473 (= (contains!790 lt!45792 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)) lt!46020)))

(declare-fun b!93279 () Bool)

(declare-fun lt!46022 () Unit!2794)

(assert (=> b!93279 (= e!60900 lt!46022)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!98 (List!1593 (_ BitVec 64)) Unit!2794)

(assert (=> b!93279 (= lt!46022 (lemmaContainsKeyImpliesGetValueByKeyDefined!98 (toList!781 lt!45792) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun isDefined!99 (Option!151) Bool)

(assert (=> b!93279 (isDefined!99 (getValueByKey!145 (toList!781 lt!45792) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93280 () Bool)

(declare-fun Unit!2803 () Unit!2794)

(assert (=> b!93280 (= e!60900 Unit!2803)))

(declare-fun b!93281 () Bool)

(assert (=> b!93281 (= e!60901 (isDefined!99 (getValueByKey!145 (toList!781 lt!45792) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355))))))

(assert (= (and d!24473 c!15510) b!93279))

(assert (= (and d!24473 (not c!15510)) b!93280))

(assert (= (and d!24473 (not res!47373)) b!93281))

(assert (=> d!24473 m!100155))

(declare-fun m!100559 () Bool)

(assert (=> d!24473 m!100559))

(assert (=> b!93279 m!100155))

(declare-fun m!100561 () Bool)

(assert (=> b!93279 m!100561))

(assert (=> b!93279 m!100155))

(declare-fun m!100563 () Bool)

(assert (=> b!93279 m!100563))

(assert (=> b!93279 m!100563))

(declare-fun m!100565 () Bool)

(assert (=> b!93279 m!100565))

(assert (=> b!93281 m!100155))

(assert (=> b!93281 m!100563))

(assert (=> b!93281 m!100563))

(assert (=> b!93281 m!100565))

(assert (=> b!93001 d!24473))

(declare-fun b!93366 () Bool)

(declare-fun lt!46077 () Unit!2794)

(declare-fun lt!46100 () Unit!2794)

(assert (=> b!93366 (= lt!46077 lt!46100)))

(declare-fun call!9202 () ListLongMap!1531)

(declare-datatypes ((SeekEntryResult!259 0))(
  ( (MissingZero!259 (index!3177 (_ BitVec 32))) (Found!259 (index!3178 (_ BitVec 32))) (Intermediate!259 (undefined!1071 Bool) (index!3179 (_ BitVec 32)) (x!12583 (_ BitVec 32))) (Undefined!259) (MissingVacant!259 (index!3180 (_ BitVec 32))) )
))
(declare-fun lt!46094 () SeekEntryResult!259)

(assert (=> b!93366 (contains!790 call!9202 (select (arr!1984 (_keys!4107 newMap!16)) (index!3178 lt!46094)))))

(declare-fun lt!46102 () array!4174)

(declare-fun lemmaValidKeyInArrayIsInListMap!95 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 32) Int) Unit!2794)

(assert (=> b!93366 (= lt!46100 (lemmaValidKeyInArrayIsInListMap!95 (_keys!4107 newMap!16) lt!46102 (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) (index!3178 lt!46094) (defaultEntry!2425 newMap!16)))))

(assert (=> b!93366 (= lt!46102 (array!4175 (store (arr!1985 (_values!2408 newMap!16)) (index!3178 lt!46094) (ValueCellFull!957 lt!45785)) (size!2233 (_values!2408 newMap!16))))))

(declare-fun lt!46080 () Unit!2794)

(declare-fun lt!46078 () Unit!2794)

(assert (=> b!93366 (= lt!46080 lt!46078)))

(declare-fun call!9201 () ListLongMap!1531)

(declare-fun call!9204 () ListLongMap!1531)

(assert (=> b!93366 (= call!9201 call!9204)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!37 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 32) (_ BitVec 64) V!3115 Int) Unit!2794)

(assert (=> b!93366 (= lt!46078 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!37 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) (index!3178 lt!46094) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 (defaultEntry!2425 newMap!16)))))

(declare-fun lt!46089 () Unit!2794)

(declare-fun e!60961 () Unit!2794)

(assert (=> b!93366 (= lt!46089 e!60961)))

(declare-fun c!15545 () Bool)

(declare-fun call!9214 () Bool)

(assert (=> b!93366 (= c!15545 call!9214)))

(declare-fun e!60950 () tuple2!2316)

(assert (=> b!93366 (= e!60950 (tuple2!2317 true (LongMapFixedSize!823 (defaultEntry!2425 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) (_size!460 newMap!16) (_keys!4107 newMap!16) (array!4175 (store (arr!1985 (_values!2408 newMap!16)) (index!3178 lt!46094) (ValueCellFull!957 lt!45785)) (size!2233 (_values!2408 newMap!16))) (_vacant!460 newMap!16))))))

(declare-fun b!93367 () Bool)

(declare-fun e!60962 () Bool)

(declare-fun call!9223 () ListLongMap!1531)

(declare-fun call!9213 () ListLongMap!1531)

(assert (=> b!93367 (= e!60962 (= call!9223 call!9213))))

(declare-fun bm!9198 () Bool)

(declare-fun call!9220 () Bool)

(declare-fun call!9206 () Bool)

(assert (=> bm!9198 (= call!9220 call!9206)))

(declare-fun bm!9199 () Bool)

(declare-fun lt!46091 () tuple2!2316)

(assert (=> bm!9199 (= call!9223 (map!1236 (_2!1168 lt!46091)))))

(declare-fun c!15539 () Bool)

(declare-fun e!60956 () ListLongMap!1531)

(declare-fun bm!9200 () Bool)

(declare-fun c!15542 () Bool)

(assert (=> bm!9200 (= call!9201 (+!134 e!60956 (ite c!15542 (ite c!15539 (tuple2!2319 #b0000000000000000000000000000000000000000000000000000000000000000 lt!45785) (tuple2!2319 #b1000000000000000000000000000000000000000000000000000000000000000 lt!45785)) (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785))))))

(declare-fun c!15550 () Bool)

(assert (=> bm!9200 (= c!15550 c!15542)))

(declare-fun b!93368 () Bool)

(declare-fun lt!46101 () tuple2!2316)

(declare-fun call!9209 () tuple2!2316)

(assert (=> b!93368 (= lt!46101 call!9209)))

(assert (=> b!93368 (= e!60950 (tuple2!2317 (_1!1168 lt!46101) (_2!1168 lt!46101)))))

(declare-fun b!93369 () Bool)

(declare-fun res!47403 () Bool)

(declare-fun e!60960 () Bool)

(assert (=> b!93369 (=> (not res!47403) (not e!60960))))

(assert (=> b!93369 (= res!47403 call!9220)))

(declare-fun e!60951 () Bool)

(assert (=> b!93369 (= e!60951 e!60960)))

(declare-fun lt!46079 () SeekEntryResult!259)

(declare-fun c!15546 () Bool)

(declare-fun lt!46099 () SeekEntryResult!259)

(declare-fun c!15549 () Bool)

(declare-fun call!9224 () Bool)

(declare-fun lt!46083 () SeekEntryResult!259)

(declare-fun c!15547 () Bool)

(declare-fun c!15548 () Bool)

(declare-fun bm!9201 () Bool)

(declare-fun lt!46085 () SeekEntryResult!259)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!9201 (= call!9224 (inRange!0 (ite c!15549 (ite c!15548 (index!3178 lt!46099) (ite c!15546 (index!3177 lt!46083) (index!3180 lt!46083))) (ite c!15545 (index!3178 lt!46079) (ite c!15547 (index!3177 lt!46085) (index!3180 lt!46085)))) (mask!6495 newMap!16)))))

(declare-fun b!93370 () Bool)

(declare-fun e!60953 () Bool)

(assert (=> b!93370 (= e!60953 e!60962)))

(declare-fun c!15544 () Bool)

(assert (=> b!93370 (= c!15544 (_1!1168 lt!46091))))

(declare-fun b!93371 () Bool)

(declare-fun lt!46084 () Unit!2794)

(declare-fun lt!46095 () Unit!2794)

(assert (=> b!93371 (= lt!46084 lt!46095)))

(declare-fun call!9215 () ListLongMap!1531)

(declare-fun call!9208 () ListLongMap!1531)

(assert (=> b!93371 (= call!9215 call!9208)))

(declare-fun lt!46097 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!37 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 V!3115 Int) Unit!2794)

(assert (=> b!93371 (= lt!46095 (lemmaChangeLongMinValueKeyThenAddPairToListMap!37 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) lt!46097 (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) lt!45785 (defaultEntry!2425 newMap!16)))))

(assert (=> b!93371 (= lt!46097 (bvor (extraKeys!2254 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!60954 () tuple2!2316)

(assert (=> b!93371 (= e!60954 (tuple2!2317 true (LongMapFixedSize!823 (defaultEntry!2425 newMap!16) (mask!6495 newMap!16) (bvor (extraKeys!2254 newMap!16) #b00000000000000000000000000000010) (zeroValue!2312 newMap!16) lt!45785 (_size!460 newMap!16) (_keys!4107 newMap!16) (_values!2408 newMap!16) (_vacant!460 newMap!16))))))

(declare-fun bm!9202 () Bool)

(declare-fun call!9207 () Bool)

(declare-fun call!9210 () Bool)

(assert (=> bm!9202 (= call!9207 call!9210)))

(declare-fun bm!9203 () Bool)

(declare-fun call!9203 () SeekEntryResult!259)

(declare-fun call!9212 () SeekEntryResult!259)

(assert (=> bm!9203 (= call!9203 call!9212)))

(declare-fun bm!9204 () Bool)

(declare-fun call!9205 () ListLongMap!1531)

(assert (=> bm!9204 (= call!9202 call!9205)))

(declare-fun c!15540 () Bool)

(declare-fun bm!9205 () Bool)

(declare-fun updateHelperNewKey!37 (LongMapFixedSize!822 (_ BitVec 64) V!3115 (_ BitVec 32)) tuple2!2316)

(assert (=> bm!9205 (= call!9209 (updateHelperNewKey!37 newMap!16 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785 (ite c!15540 (index!3180 lt!46094) (index!3177 lt!46094))))))

(declare-fun b!93372 () Bool)

(declare-fun e!60955 () Bool)

(declare-fun e!60952 () Bool)

(assert (=> b!93372 (= e!60955 e!60952)))

(declare-fun res!47408 () Bool)

(declare-fun call!9222 () Bool)

(assert (=> b!93372 (= res!47408 call!9222)))

(assert (=> b!93372 (=> (not res!47408) (not e!60952))))

(declare-fun bm!9206 () Bool)

(assert (=> bm!9206 (= call!9210 (arrayContainsKey!0 (_keys!4107 newMap!16) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!9207 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4172 (_ BitVec 32)) SeekEntryResult!259)

(assert (=> bm!9207 (= call!9212 (seekEntryOrOpen!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (_keys!4107 newMap!16) (mask!6495 newMap!16)))))

(declare-fun b!93373 () Bool)

(declare-fun lt!46103 () Unit!2794)

(assert (=> b!93373 (= e!60961 lt!46103)))

(declare-fun call!9218 () Unit!2794)

(assert (=> b!93373 (= lt!46103 call!9218)))

(assert (=> b!93373 (= lt!46079 call!9203)))

(declare-fun res!47404 () Bool)

(assert (=> b!93373 (= res!47404 ((_ is Found!259) lt!46079))))

(declare-fun e!60967 () Bool)

(assert (=> b!93373 (=> (not res!47404) (not e!60967))))

(assert (=> b!93373 e!60967))

(declare-fun b!93374 () Bool)

(declare-fun e!60957 () Unit!2794)

(declare-fun lt!46088 () Unit!2794)

(assert (=> b!93374 (= e!60957 lt!46088)))

(declare-fun call!9216 () Unit!2794)

(assert (=> b!93374 (= lt!46088 call!9216)))

(declare-fun call!9217 () SeekEntryResult!259)

(assert (=> b!93374 (= lt!46083 call!9217)))

(assert (=> b!93374 (= c!15546 ((_ is MissingZero!259) lt!46083))))

(declare-fun e!60959 () Bool)

(assert (=> b!93374 e!60959))

(declare-fun bm!9208 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!37 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 64) Int) Unit!2794)

(assert (=> bm!9208 (= call!9218 (lemmaInListMapThenSeekEntryOrOpenFindsIt!37 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (defaultEntry!2425 newMap!16)))))

(declare-fun b!93375 () Bool)

(declare-fun e!60963 () ListLongMap!1531)

(assert (=> b!93375 (= e!60963 call!9202)))

(declare-fun d!24475 () Bool)

(assert (=> d!24475 e!60953))

(declare-fun res!47415 () Bool)

(assert (=> d!24475 (=> (not res!47415) (not e!60953))))

(assert (=> d!24475 (= res!47415 (valid!367 (_2!1168 lt!46091)))))

(declare-fun e!60966 () tuple2!2316)

(assert (=> d!24475 (= lt!46091 e!60966)))

(assert (=> d!24475 (= c!15542 (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (bvneg (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355))))))

(assert (=> d!24475 (valid!367 newMap!16)))

(assert (=> d!24475 (= (update!138 newMap!16 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785) lt!46091)))

(declare-fun b!93376 () Bool)

(declare-fun c!15552 () Bool)

(assert (=> b!93376 (= c!15552 ((_ is MissingVacant!259) lt!46085))))

(declare-fun e!60965 () Bool)

(assert (=> b!93376 (= e!60951 e!60965)))

(declare-fun e!60947 () Bool)

(declare-fun b!93377 () Bool)

(assert (=> b!93377 (= e!60947 (= call!9223 (+!134 call!9213 (tuple2!2319 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) lt!45785))))))

(declare-fun bm!9209 () Bool)

(assert (=> bm!9209 (= call!9208 call!9205)))

(declare-fun bm!9210 () Bool)

(assert (=> bm!9210 (= call!9204 (getCurrentListMap!463 (_keys!4107 newMap!16) (ite c!15542 (_values!2408 newMap!16) (array!4175 (store (arr!1985 (_values!2408 newMap!16)) (index!3178 lt!46094) (ValueCellFull!957 lt!45785)) (size!2233 (_values!2408 newMap!16)))) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2425 newMap!16)))))

(declare-fun b!93378 () Bool)

(assert (=> b!93378 (= e!60963 (getCurrentListMap!463 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2425 newMap!16)))))

(declare-fun bm!9211 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!37 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 (_ BitVec 64) Int) Unit!2794)

(assert (=> bm!9211 (= call!9216 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!37 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (defaultEntry!2425 newMap!16)))))

(declare-fun b!93379 () Bool)

(declare-fun res!47402 () Bool)

(assert (=> b!93379 (= res!47402 (= (select (arr!1984 (_keys!4107 newMap!16)) (index!3180 lt!46085)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!60958 () Bool)

(assert (=> b!93379 (=> (not res!47402) (not e!60958))))

(declare-fun b!93380 () Bool)

(declare-fun e!60964 () tuple2!2316)

(assert (=> b!93380 (= e!60966 e!60964)))

(assert (=> b!93380 (= lt!46094 (seekEntryOrOpen!0 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) (_keys!4107 newMap!16) (mask!6495 newMap!16)))))

(assert (=> b!93380 (= c!15549 ((_ is Undefined!259) lt!46094))))

(declare-fun lt!46096 () (_ BitVec 32))

(declare-fun bm!9212 () Bool)

(assert (=> bm!9212 (= call!9205 (getCurrentListMap!463 (_keys!4107 newMap!16) (ite (or c!15542 c!15549) (_values!2408 newMap!16) lt!46102) (mask!6495 newMap!16) (ite c!15542 (ite c!15539 lt!46096 lt!46097) (extraKeys!2254 newMap!16)) (ite (and c!15542 c!15539) lt!45785 (zeroValue!2312 newMap!16)) (ite c!15542 (ite c!15539 (minValue!2312 newMap!16) lt!45785) (minValue!2312 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2425 newMap!16)))))

(declare-fun bm!9213 () Bool)

(declare-fun call!9211 () ListLongMap!1531)

(assert (=> bm!9213 (= call!9211 call!9204)))

(declare-fun b!93381 () Bool)

(declare-fun lt!46082 () Unit!2794)

(declare-fun lt!46092 () Unit!2794)

(assert (=> b!93381 (= lt!46082 lt!46092)))

(assert (=> b!93381 (= call!9215 call!9208)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!37 (array!4172 array!4174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3115 V!3115 V!3115 Int) Unit!2794)

(assert (=> b!93381 (= lt!46092 (lemmaChangeZeroKeyThenAddPairToListMap!37 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) lt!46096 (zeroValue!2312 newMap!16) lt!45785 (minValue!2312 newMap!16) (defaultEntry!2425 newMap!16)))))

(assert (=> b!93381 (= lt!46096 (bvor (extraKeys!2254 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!93381 (= e!60954 (tuple2!2317 true (LongMapFixedSize!823 (defaultEntry!2425 newMap!16) (mask!6495 newMap!16) (bvor (extraKeys!2254 newMap!16) #b00000000000000000000000000000001) lt!45785 (minValue!2312 newMap!16) (_size!460 newMap!16) (_keys!4107 newMap!16) (_values!2408 newMap!16) (_vacant!460 newMap!16))))))

(declare-fun b!93382 () Bool)

(declare-fun e!60946 () tuple2!2316)

(assert (=> b!93382 (= e!60946 e!60950)))

(declare-fun c!15551 () Bool)

(assert (=> b!93382 (= c!15551 ((_ is MissingZero!259) lt!46094))))

(declare-fun b!93383 () Bool)

(declare-fun call!9221 () Bool)

(assert (=> b!93383 (= e!60958 (not call!9221))))

(declare-fun b!93384 () Bool)

(assert (=> b!93384 (= e!60967 (= (select (arr!1984 (_keys!4107 newMap!16)) (index!3178 lt!46079)) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93385 () Bool)

(assert (=> b!93385 (= e!60965 e!60958)))

(declare-fun res!47410 () Bool)

(assert (=> b!93385 (= res!47410 call!9220)))

(assert (=> b!93385 (=> (not res!47410) (not e!60958))))

(declare-fun bm!9214 () Bool)

(assert (=> bm!9214 (= call!9213 (map!1236 newMap!16))))

(declare-fun bm!9215 () Bool)

(assert (=> bm!9215 (= call!9221 call!9210)))

(declare-fun b!93386 () Bool)

(assert (=> b!93386 (= e!60960 (not call!9221))))

(declare-fun b!93387 () Bool)

(declare-fun lt!46086 () tuple2!2316)

(assert (=> b!93387 (= e!60946 (tuple2!2317 (_1!1168 lt!46086) (_2!1168 lt!46086)))))

(assert (=> b!93387 (= lt!46086 call!9209)))

(declare-fun bm!9216 () Bool)

(declare-fun call!9219 () Bool)

(assert (=> bm!9216 (= call!9222 call!9219)))

(declare-fun b!93388 () Bool)

(declare-fun res!47412 () Bool)

(assert (=> b!93388 (= res!47412 call!9219)))

(declare-fun e!60948 () Bool)

(assert (=> b!93388 (=> (not res!47412) (not e!60948))))

(declare-fun b!93389 () Bool)

(declare-fun e!60949 () Bool)

(assert (=> b!93389 (= e!60949 (not call!9207))))

(declare-fun bm!9217 () Bool)

(assert (=> bm!9217 (= call!9206 call!9224)))

(declare-fun b!93390 () Bool)

(declare-fun Unit!2804 () Unit!2794)

(assert (=> b!93390 (= e!60961 Unit!2804)))

(declare-fun lt!46098 () Unit!2794)

(assert (=> b!93390 (= lt!46098 call!9216)))

(assert (=> b!93390 (= lt!46085 call!9203)))

(assert (=> b!93390 (= c!15547 ((_ is MissingZero!259) lt!46085))))

(assert (=> b!93390 e!60951))

(declare-fun lt!46093 () Unit!2794)

(assert (=> b!93390 (= lt!46093 lt!46098)))

(assert (=> b!93390 false))

(declare-fun b!93391 () Bool)

(assert (=> b!93391 (= e!60956 call!9211)))

(declare-fun b!93392 () Bool)

(assert (=> b!93392 (= e!60956 (getCurrentListMap!463 (_keys!4107 newMap!16) (_values!2408 newMap!16) (mask!6495 newMap!16) (extraKeys!2254 newMap!16) (zeroValue!2312 newMap!16) (minValue!2312 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2425 newMap!16)))))

(declare-fun bm!9218 () Bool)

(assert (=> bm!9218 (= call!9219 call!9224)))

(declare-fun b!93393 () Bool)

(declare-fun res!47405 () Bool)

(assert (=> b!93393 (=> (not res!47405) (not e!60960))))

(assert (=> b!93393 (= res!47405 (= (select (arr!1984 (_keys!4107 newMap!16)) (index!3177 lt!46085)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93394 () Bool)

(declare-fun lt!46087 () Unit!2794)

(assert (=> b!93394 (= lt!46087 e!60957)))

(assert (=> b!93394 (= c!15548 call!9214)))

(assert (=> b!93394 (= e!60964 (tuple2!2317 false newMap!16))))

(declare-fun b!93395 () Bool)

(assert (=> b!93395 (= e!60952 (not call!9207))))

(declare-fun b!93396 () Bool)

(declare-fun res!47407 () Bool)

(assert (=> b!93396 (=> (not res!47407) (not e!60949))))

(assert (=> b!93396 (= res!47407 (= (select (arr!1984 (_keys!4107 newMap!16)) (index!3177 lt!46083)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93397 () Bool)

(assert (=> b!93397 (= e!60962 e!60947)))

(declare-fun res!47409 () Bool)

(assert (=> b!93397 (= res!47409 (contains!790 call!9223 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(assert (=> b!93397 (=> (not res!47409) (not e!60947))))

(declare-fun bm!9219 () Bool)

(assert (=> bm!9219 (= call!9215 call!9201)))

(declare-fun b!93398 () Bool)

(assert (=> b!93398 (= e!60948 (= (select (arr!1984 (_keys!4107 newMap!16)) (index!3178 lt!46099)) (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93399 () Bool)

(declare-fun res!47411 () Bool)

(assert (=> b!93399 (=> (not res!47411) (not e!60949))))

(assert (=> b!93399 (= res!47411 call!9222)))

(assert (=> b!93399 (= e!60959 e!60949)))

(declare-fun bm!9220 () Bool)

(assert (=> bm!9220 (= call!9217 call!9212)))

(declare-fun bm!9221 () Bool)

(declare-fun c!15541 () Bool)

(assert (=> bm!9221 (= c!15541 c!15549)))

(assert (=> bm!9221 (= call!9214 (contains!790 e!60963 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355)))))

(declare-fun b!93400 () Bool)

(assert (=> b!93400 (= e!60966 e!60954)))

(assert (=> b!93400 (= c!15539 (= (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93401 () Bool)

(assert (=> b!93401 (= e!60955 ((_ is Undefined!259) lt!46083))))

(declare-fun b!93402 () Bool)

(declare-fun Unit!2805 () Unit!2794)

(assert (=> b!93402 (= e!60957 Unit!2805)))

(declare-fun lt!46090 () Unit!2794)

(assert (=> b!93402 (= lt!46090 call!9218)))

(assert (=> b!93402 (= lt!46099 call!9217)))

(declare-fun res!47414 () Bool)

(assert (=> b!93402 (= res!47414 ((_ is Found!259) lt!46099))))

(assert (=> b!93402 (=> (not res!47414) (not e!60948))))

(assert (=> b!93402 e!60948))

(declare-fun lt!46081 () Unit!2794)

(assert (=> b!93402 (= lt!46081 lt!46090)))

(assert (=> b!93402 false))

(declare-fun b!93403 () Bool)

(assert (=> b!93403 (= c!15540 ((_ is MissingVacant!259) lt!46094))))

(assert (=> b!93403 (= e!60964 e!60946)))

(declare-fun b!93404 () Bool)

(declare-fun res!47406 () Bool)

(assert (=> b!93404 (= res!47406 call!9206)))

(assert (=> b!93404 (=> (not res!47406) (not e!60967))))

(declare-fun b!93405 () Bool)

(assert (=> b!93405 (= e!60965 ((_ is Undefined!259) lt!46085))))

(declare-fun b!93406 () Bool)

(declare-fun res!47413 () Bool)

(assert (=> b!93406 (= res!47413 (= (select (arr!1984 (_keys!4107 newMap!16)) (index!3180 lt!46083)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!93406 (=> (not res!47413) (not e!60952))))

(declare-fun b!93407 () Bool)

(declare-fun c!15543 () Bool)

(assert (=> b!93407 (= c!15543 ((_ is MissingVacant!259) lt!46083))))

(assert (=> b!93407 (= e!60959 e!60955)))

(assert (= (and d!24475 c!15542) b!93400))

(assert (= (and d!24475 (not c!15542)) b!93380))

(assert (= (and b!93400 c!15539) b!93381))

(assert (= (and b!93400 (not c!15539)) b!93371))

(assert (= (or b!93381 b!93371) bm!9209))

(assert (= (or b!93381 b!93371) bm!9213))

(assert (= (or b!93381 b!93371) bm!9219))

(assert (= (and b!93380 c!15549) b!93394))

(assert (= (and b!93380 (not c!15549)) b!93403))

(assert (= (and b!93394 c!15548) b!93402))

(assert (= (and b!93394 (not c!15548)) b!93374))

(assert (= (and b!93402 res!47414) b!93388))

(assert (= (and b!93388 res!47412) b!93398))

(assert (= (and b!93374 c!15546) b!93399))

(assert (= (and b!93374 (not c!15546)) b!93407))

(assert (= (and b!93399 res!47411) b!93396))

(assert (= (and b!93396 res!47407) b!93389))

(assert (= (and b!93407 c!15543) b!93372))

(assert (= (and b!93407 (not c!15543)) b!93401))

(assert (= (and b!93372 res!47408) b!93406))

(assert (= (and b!93406 res!47413) b!93395))

(assert (= (or b!93399 b!93372) bm!9216))

(assert (= (or b!93389 b!93395) bm!9202))

(assert (= (or b!93388 bm!9216) bm!9218))

(assert (= (or b!93402 b!93374) bm!9220))

(assert (= (and b!93403 c!15540) b!93387))

(assert (= (and b!93403 (not c!15540)) b!93382))

(assert (= (and b!93382 c!15551) b!93368))

(assert (= (and b!93382 (not c!15551)) b!93366))

(assert (= (and b!93366 c!15545) b!93373))

(assert (= (and b!93366 (not c!15545)) b!93390))

(assert (= (and b!93373 res!47404) b!93404))

(assert (= (and b!93404 res!47406) b!93384))

(assert (= (and b!93390 c!15547) b!93369))

(assert (= (and b!93390 (not c!15547)) b!93376))

(assert (= (and b!93369 res!47403) b!93393))

(assert (= (and b!93393 res!47405) b!93386))

(assert (= (and b!93376 c!15552) b!93385))

(assert (= (and b!93376 (not c!15552)) b!93405))

(assert (= (and b!93385 res!47410) b!93379))

(assert (= (and b!93379 res!47402) b!93383))

(assert (= (or b!93369 b!93385) bm!9198))

(assert (= (or b!93386 b!93383) bm!9215))

(assert (= (or b!93404 bm!9198) bm!9217))

(assert (= (or b!93373 b!93390) bm!9203))

(assert (= (or b!93387 b!93368) bm!9205))

(assert (= (or bm!9220 bm!9203) bm!9207))

(assert (= (or b!93402 b!93373) bm!9208))

(assert (= (or b!93374 b!93390) bm!9211))

(assert (= (or bm!9202 bm!9215) bm!9206))

(assert (= (or bm!9218 bm!9217) bm!9201))

(assert (= (or b!93394 b!93366) bm!9204))

(assert (= (or b!93394 b!93366) bm!9221))

(assert (= (and bm!9221 c!15541) b!93375))

(assert (= (and bm!9221 (not c!15541)) b!93378))

(assert (= (or bm!9209 bm!9204) bm!9212))

(assert (= (or bm!9213 b!93366) bm!9210))

(assert (= (or bm!9219 b!93366) bm!9200))

(assert (= (and bm!9200 c!15550) b!93391))

(assert (= (and bm!9200 (not c!15550)) b!93392))

(assert (= (and d!24475 res!47415) b!93370))

(assert (= (and b!93370 c!15544) b!93397))

(assert (= (and b!93370 (not c!15544)) b!93367))

(assert (= (and b!93397 res!47409) b!93377))

(assert (= (or b!93377 b!93367) bm!9214))

(assert (= (or b!93397 b!93377 b!93367) bm!9199))

(declare-fun m!100567 () Bool)

(assert (=> b!93384 m!100567))

(declare-fun m!100569 () Bool)

(assert (=> b!93371 m!100569))

(declare-fun m!100571 () Bool)

(assert (=> b!93366 m!100571))

(declare-fun m!100573 () Bool)

(assert (=> b!93366 m!100573))

(declare-fun m!100575 () Bool)

(assert (=> b!93366 m!100575))

(assert (=> b!93366 m!100573))

(declare-fun m!100577 () Bool)

(assert (=> b!93366 m!100577))

(assert (=> b!93366 m!100155))

(declare-fun m!100579 () Bool)

(assert (=> b!93366 m!100579))

(assert (=> bm!9211 m!100155))

(declare-fun m!100581 () Bool)

(assert (=> bm!9211 m!100581))

(declare-fun m!100583 () Bool)

(assert (=> b!93393 m!100583))

(assert (=> bm!9205 m!100155))

(declare-fun m!100585 () Bool)

(assert (=> bm!9205 m!100585))

(assert (=> bm!9206 m!100155))

(declare-fun m!100587 () Bool)

(assert (=> bm!9206 m!100587))

(declare-fun m!100589 () Bool)

(assert (=> b!93377 m!100589))

(declare-fun m!100591 () Bool)

(assert (=> d!24475 m!100591))

(assert (=> d!24475 m!100143))

(assert (=> bm!9221 m!100155))

(declare-fun m!100593 () Bool)

(assert (=> bm!9221 m!100593))

(declare-fun m!100595 () Bool)

(assert (=> b!93381 m!100595))

(assert (=> b!93380 m!100155))

(declare-fun m!100597 () Bool)

(assert (=> b!93380 m!100597))

(assert (=> bm!9207 m!100155))

(assert (=> bm!9207 m!100597))

(declare-fun m!100599 () Bool)

(assert (=> b!93406 m!100599))

(assert (=> bm!9210 m!100575))

(declare-fun m!100601 () Bool)

(assert (=> bm!9210 m!100601))

(assert (=> bm!9214 m!100149))

(assert (=> bm!9208 m!100155))

(declare-fun m!100603 () Bool)

(assert (=> bm!9208 m!100603))

(assert (=> b!93392 m!100491))

(declare-fun m!100605 () Bool)

(assert (=> b!93379 m!100605))

(declare-fun m!100607 () Bool)

(assert (=> b!93398 m!100607))

(declare-fun m!100609 () Bool)

(assert (=> b!93396 m!100609))

(declare-fun m!100611 () Bool)

(assert (=> bm!9201 m!100611))

(declare-fun m!100613 () Bool)

(assert (=> bm!9200 m!100613))

(declare-fun m!100615 () Bool)

(assert (=> bm!9199 m!100615))

(assert (=> b!93397 m!100155))

(declare-fun m!100617 () Bool)

(assert (=> b!93397 m!100617))

(declare-fun m!100619 () Bool)

(assert (=> bm!9212 m!100619))

(assert (=> b!93378 m!100491))

(assert (=> b!93001 d!24475))

(declare-fun d!24477 () Bool)

(assert (=> d!24477 (= (array_inv!1189 (_keys!4107 newMap!16)) (bvsge (size!2232 (_keys!4107 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!92998 d!24477))

(declare-fun d!24479 () Bool)

(assert (=> d!24479 (= (array_inv!1190 (_values!2408 newMap!16)) (bvsge (size!2233 (_values!2408 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!92998 d!24479))

(declare-fun lt!46186 () V!3115)

(declare-fun call!9263 () Unit!2794)

(declare-fun lt!46170 () (_ BitVec 64))

(declare-fun lt!46193 () (_ BitVec 64))

(declare-fun lt!46172 () (_ BitVec 64))

(declare-fun c!15569 () Bool)

(declare-fun bm!9248 () Bool)

(declare-fun lt!46168 () ListLongMap!1531)

(declare-fun lt!46171 () ListLongMap!1531)

(assert (=> bm!9248 (= call!9263 (addCommutativeForDiffKeys!53 (ite c!15569 lt!46171 lt!46168) lt!46170 lt!46186 (ite c!15569 lt!46193 lt!46172) (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93436 () Bool)

(declare-fun e!60987 () tuple2!2316)

(declare-fun lt!46197 () tuple2!2316)

(assert (=> b!93436 (= e!60987 (tuple2!2317 true (_2!1168 lt!46197)))))

(declare-fun call!9257 () ListLongMap!1531)

(assert (=> b!93436 (= lt!46168 call!9257)))

(assert (=> b!93436 (= lt!46172 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46188 () Unit!2794)

(assert (=> b!93436 (= lt!46188 call!9263)))

(declare-fun call!9255 () ListLongMap!1531)

(declare-fun call!9254 () ListLongMap!1531)

(assert (=> b!93436 (= call!9255 call!9254)))

(declare-fun lt!46182 () Unit!2794)

(assert (=> b!93436 (= lt!46182 lt!46188)))

(declare-fun lt!46195 () ListLongMap!1531)

(declare-fun call!9251 () ListLongMap!1531)

(assert (=> b!93436 (= lt!46195 call!9251)))

(declare-fun lt!46169 () (_ BitVec 64))

(assert (=> b!93436 (= lt!46169 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46198 () Unit!2794)

(declare-fun call!9256 () Unit!2794)

(assert (=> b!93436 (= lt!46198 call!9256)))

(declare-fun call!9261 () ListLongMap!1531)

(declare-fun call!9262 () ListLongMap!1531)

(assert (=> b!93436 (= call!9261 call!9262)))

(declare-fun lt!46191 () Unit!2794)

(assert (=> b!93436 (= lt!46191 lt!46198)))

(declare-fun b!93437 () Bool)

(assert (=> b!93437 false))

(declare-fun lt!46199 () Unit!2794)

(declare-fun lt!46177 () Unit!2794)

(assert (=> b!93437 (= lt!46199 lt!46177)))

(declare-fun lt!46184 () (_ BitVec 32))

(assert (=> b!93437 (not (arrayContainsKey!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) lt!46170 lt!46184))))

(assert (=> b!93437 (= lt!46177 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) lt!46184 lt!46170 (Cons!1590 lt!46170 Nil!1591)))))

(assert (=> b!93437 (= lt!46184 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!46174 () Unit!2794)

(declare-fun lt!46181 () Unit!2794)

(assert (=> b!93437 (= lt!46174 lt!46181)))

(assert (=> b!93437 (arrayNoDuplicates!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (bvsub from!355 #b00000000000000000000000000000001) Nil!1591)))

(assert (=> b!93437 (= lt!46181 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000000 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun lt!46194 () Unit!2794)

(declare-fun lt!46179 () Unit!2794)

(assert (=> b!93437 (= lt!46194 lt!46179)))

(declare-fun e!60984 () Bool)

(assert (=> b!93437 e!60984))

(declare-fun c!15566 () Bool)

(assert (=> b!93437 (= c!15566 (and (not (= lt!46170 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!46170 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!46196 () (_ BitVec 32))

(assert (=> b!93437 (= lt!46179 (lemmaListMapContainsThenArrayContainsFrom!90 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) lt!46170 lt!46196 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(assert (=> b!93437 (= lt!46196 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun e!60990 () Unit!2794)

(declare-fun Unit!2806 () Unit!2794)

(assert (=> b!93437 (= e!60990 Unit!2806)))

(declare-fun bm!9250 () Bool)

(declare-fun lt!46190 () (_ BitVec 64))

(declare-fun lt!46173 () ListLongMap!1531)

(assert (=> bm!9250 (= call!9256 (addCommutativeForDiffKeys!53 (ite c!15569 lt!46173 lt!46195) lt!46170 lt!46186 (ite c!15569 lt!46190 lt!46169) (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93438 () Bool)

(assert (=> b!93438 (= c!15569 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun e!60986 () tuple2!2316)

(assert (=> b!93438 (= e!60986 e!60987)))

(declare-fun bm!9251 () Bool)

(declare-fun call!9259 () ListLongMap!1531)

(assert (=> bm!9251 (= call!9259 (+!134 (ite c!15569 lt!46173 lt!46195) (ite c!15569 (tuple2!2319 lt!46170 lt!46186) (tuple2!2319 lt!46169 (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))))

(declare-fun b!93439 () Bool)

(assert (=> b!93439 (= e!60986 (tuple2!2317 false (_2!1168 lt!46197)))))

(declare-fun b!93440 () Bool)

(declare-fun e!60985 () tuple2!2316)

(declare-fun e!60989 () tuple2!2316)

(assert (=> b!93440 (= e!60985 e!60989)))

(declare-fun c!15567 () Bool)

(assert (=> b!93440 (= c!15567 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!9252 () Bool)

(declare-fun call!9253 () ListLongMap!1531)

(assert (=> bm!9252 (= call!9253 (+!134 (ite c!15569 lt!46171 lt!46168) (ite c!15569 (tuple2!2319 lt!46193 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))) (tuple2!2319 lt!46170 lt!46186))))))

(declare-fun b!93441 () Bool)

(assert (=> b!93441 (= e!60985 e!60986)))

(assert (=> b!93441 (= lt!46197 (update!138 (_2!1168 lt!45783) lt!46170 lt!46186))))

(declare-fun c!15568 () Bool)

(declare-fun lt!46183 () ListLongMap!1531)

(assert (=> b!93441 (= c!15568 (contains!790 lt!46183 lt!46170))))

(declare-fun lt!46185 () Unit!2794)

(assert (=> b!93441 (= lt!46185 e!60990)))

(declare-fun c!15570 () Bool)

(assert (=> b!93441 (= c!15570 (_1!1168 lt!46197))))

(declare-fun call!9252 () ListLongMap!1531)

(declare-fun bm!9253 () Bool)

(assert (=> bm!9253 (= call!9252 (+!134 (ite c!15569 lt!46173 lt!46168) (ite c!15569 (tuple2!2319 lt!46190 (minValue!2312 (v!2747 (underlying!324 thiss!992)))) (tuple2!2319 lt!46172 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))))

(declare-fun bm!9254 () Bool)

(declare-fun call!9258 () tuple2!2316)

(declare-fun c!15565 () Bool)

(assert (=> bm!9254 (= call!9258 (repackFrom!11 thiss!992 (ite c!15565 (_2!1168 lt!46197) (_2!1168 lt!45783)) (bvsub (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun bm!9255 () Bool)

(assert (=> bm!9255 (= call!9257 (getCurrentListMapNoExtraKeys!98 (_keys!4107 (v!2747 (underlying!324 thiss!992))) (_values!2408 (v!2747 (underlying!324 thiss!992))) (mask!6495 (v!2747 (underlying!324 thiss!992))) (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) (zeroValue!2312 (v!2747 (underlying!324 thiss!992))) (minValue!2312 (v!2747 (underlying!324 thiss!992))) (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun d!24481 () Bool)

(declare-fun e!60988 () Bool)

(assert (=> d!24481 e!60988))

(declare-fun res!47420 () Bool)

(assert (=> d!24481 (=> res!47420 e!60988)))

(declare-fun lt!46187 () tuple2!2316)

(assert (=> d!24481 (= res!47420 (not (_1!1168 lt!46187)))))

(assert (=> d!24481 (= lt!46187 e!60985)))

(assert (=> d!24481 (= c!15565 (and (not (= lt!46170 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!46170 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!24481 (= lt!46183 (map!1236 (_2!1168 lt!45783)))))

(assert (=> d!24481 (= lt!46186 (get!1268 (select (arr!1985 (_values!2408 (v!2747 (underlying!324 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)) (dynLambda!370 (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!24481 (= lt!46170 (select (arr!1984 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)))))

(assert (=> d!24481 (valid!366 thiss!992)))

(assert (=> d!24481 (= (repackFrom!11 thiss!992 (_2!1168 lt!45783) (bvsub from!355 #b00000000000000000000000000000001)) lt!46187)))

(declare-fun call!9260 () ListLongMap!1531)

(declare-fun bm!9249 () Bool)

(assert (=> bm!9249 (= call!9261 (+!134 (ite c!15569 call!9252 call!9260) (ite c!15569 (tuple2!2319 lt!46170 lt!46186) (tuple2!2319 lt!46169 (minValue!2312 (v!2747 (underlying!324 thiss!992)))))))))

(declare-fun b!93442 () Bool)

(assert (=> b!93442 (= e!60989 (tuple2!2317 true (_2!1168 lt!45783)))))

(declare-fun bm!9256 () Bool)

(assert (=> bm!9256 (= call!9255 (+!134 (ite c!15569 call!9259 call!9253) (ite c!15569 (tuple2!2319 lt!46190 (minValue!2312 (v!2747 (underlying!324 thiss!992)))) (tuple2!2319 lt!46172 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))))))))

(declare-fun b!93443 () Bool)

(assert (=> b!93443 (= e!60984 (ite (= lt!46170 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2254 (v!2747 (underlying!324 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!9257 () Bool)

(assert (=> bm!9257 (= call!9262 (+!134 (ite c!15569 call!9253 call!9259) (tuple2!2319 lt!46170 lt!46186)))))

(declare-fun b!93444 () Bool)

(declare-fun lt!46176 () tuple2!2316)

(assert (=> b!93444 (= lt!46176 call!9258)))

(assert (=> b!93444 (= e!60989 (tuple2!2317 (_1!1168 lt!46176) (_2!1168 lt!46176)))))

(declare-fun b!93445 () Bool)

(declare-fun e!60991 () Bool)

(assert (=> b!93445 (= e!60991 (= (map!1236 (_2!1168 lt!46187)) (map!1236 (v!2747 (underlying!324 thiss!992)))))))

(declare-fun b!93446 () Bool)

(declare-fun Unit!2807 () Unit!2794)

(assert (=> b!93446 (= e!60990 Unit!2807)))

(declare-fun bm!9258 () Bool)

(assert (=> bm!9258 (= call!9251 (+!134 call!9257 (tuple2!2319 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2312 (v!2747 (underlying!324 thiss!992))))))))

(declare-fun b!93447 () Bool)

(assert (=> b!93447 (= e!60988 e!60991)))

(declare-fun res!47421 () Bool)

(assert (=> b!93447 (=> (not res!47421) (not e!60991))))

(assert (=> b!93447 (= res!47421 (valid!367 (_2!1168 lt!46187)))))

(declare-fun b!93448 () Bool)

(assert (=> b!93448 (= e!60984 (arrayContainsKey!0 (_keys!4107 (v!2747 (underlying!324 thiss!992))) lt!46170 lt!46196))))

(declare-fun b!93449 () Bool)

(declare-fun lt!46178 () tuple2!2316)

(assert (=> b!93449 (= e!60987 (tuple2!2317 (_1!1168 lt!46178) (_2!1168 lt!46178)))))

(assert (=> b!93449 (= lt!46171 call!9257)))

(assert (=> b!93449 (= lt!46193 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46175 () Unit!2794)

(assert (=> b!93449 (= lt!46175 call!9263)))

(assert (=> b!93449 (= call!9254 call!9262)))

(declare-fun lt!46192 () Unit!2794)

(assert (=> b!93449 (= lt!46192 lt!46175)))

(assert (=> b!93449 (= lt!46173 call!9251)))

(assert (=> b!93449 (= lt!46190 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46189 () Unit!2794)

(assert (=> b!93449 (= lt!46189 call!9256)))

(assert (=> b!93449 (= call!9255 call!9261)))

(declare-fun lt!46180 () Unit!2794)

(assert (=> b!93449 (= lt!46180 lt!46189)))

(assert (=> b!93449 (= lt!46178 call!9258)))

(declare-fun bm!9259 () Bool)

(assert (=> bm!9259 (= call!9254 (+!134 (ite c!15569 call!9260 call!9252) (ite c!15569 (tuple2!2319 lt!46193 (zeroValue!2312 (v!2747 (underlying!324 thiss!992)))) (tuple2!2319 lt!46170 lt!46186))))))

(declare-fun bm!9260 () Bool)

(assert (=> bm!9260 (= call!9260 (+!134 (ite c!15569 lt!46171 lt!46195) (tuple2!2319 lt!46170 lt!46186)))))

(assert (= (and d!24481 c!15565) b!93441))

(assert (= (and d!24481 (not c!15565)) b!93440))

(assert (= (and b!93441 c!15568) b!93437))

(assert (= (and b!93441 (not c!15568)) b!93446))

(assert (= (and b!93437 c!15566) b!93448))

(assert (= (and b!93437 (not c!15566)) b!93443))

(assert (= (and b!93441 c!15570) b!93438))

(assert (= (and b!93441 (not c!15570)) b!93439))

(assert (= (and b!93438 c!15569) b!93449))

(assert (= (and b!93438 (not c!15569)) b!93436))

(assert (= (or b!93449 b!93436) bm!9251))

(assert (= (or b!93449 b!93436) bm!9250))

(assert (= (or b!93449 b!93436) bm!9253))

(assert (= (or b!93449 b!93436) bm!9260))

(assert (= (or b!93449 b!93436) bm!9252))

(assert (= (or b!93449 b!93436) bm!9255))

(assert (= (or b!93449 b!93436) bm!9248))

(assert (= (or b!93449 b!93436) bm!9249))

(assert (= (or b!93449 b!93436) bm!9258))

(assert (= (or b!93449 b!93436) bm!9259))

(assert (= (or b!93449 b!93436) bm!9256))

(assert (= (or b!93449 b!93436) bm!9257))

(assert (= (and b!93440 c!15567) b!93444))

(assert (= (and b!93440 (not c!15567)) b!93442))

(assert (= (or b!93449 b!93444) bm!9254))

(assert (= (and d!24481 (not res!47420)) b!93447))

(assert (= (and b!93447 res!47421) b!93445))

(declare-fun b_lambda!4119 () Bool)

(assert (=> (not b_lambda!4119) (not d!24481)))

(assert (=> d!24481 t!5472))

(declare-fun b_and!5689 () Bool)

(assert (= b_and!5685 (and (=> t!5472 result!3151) b_and!5689)))

(assert (=> d!24481 t!5474))

(declare-fun b_and!5691 () Bool)

(assert (= b_and!5687 (and (=> t!5474 result!3155) b_and!5691)))

(declare-fun m!100621 () Bool)

(assert (=> b!93437 m!100621))

(declare-fun m!100623 () Bool)

(assert (=> b!93437 m!100623))

(declare-fun m!100625 () Bool)

(assert (=> b!93437 m!100625))

(declare-fun m!100627 () Bool)

(assert (=> b!93437 m!100627))

(declare-fun m!100629 () Bool)

(assert (=> b!93437 m!100629))

(declare-fun m!100631 () Bool)

(assert (=> bm!9253 m!100631))

(declare-fun m!100633 () Bool)

(assert (=> bm!9251 m!100633))

(declare-fun m!100635 () Bool)

(assert (=> bm!9258 m!100635))

(declare-fun m!100637 () Bool)

(assert (=> b!93447 m!100637))

(declare-fun m!100639 () Bool)

(assert (=> bm!9257 m!100639))

(declare-fun m!100641 () Bool)

(assert (=> bm!9254 m!100641))

(declare-fun m!100643 () Bool)

(assert (=> bm!9250 m!100643))

(declare-fun m!100645 () Bool)

(assert (=> b!93448 m!100645))

(declare-fun m!100647 () Bool)

(assert (=> bm!9260 m!100647))

(declare-fun m!100649 () Bool)

(assert (=> d!24481 m!100649))

(assert (=> d!24481 m!100209))

(declare-fun m!100651 () Bool)

(assert (=> d!24481 m!100651))

(declare-fun m!100653 () Bool)

(assert (=> d!24481 m!100653))

(assert (=> d!24481 m!100145))

(assert (=> d!24481 m!100209))

(assert (=> d!24481 m!100649))

(assert (=> d!24481 m!100165))

(declare-fun m!100655 () Bool)

(assert (=> bm!9256 m!100655))

(declare-fun m!100657 () Bool)

(assert (=> b!93445 m!100657))

(declare-fun m!100659 () Bool)

(assert (=> b!93445 m!100659))

(declare-fun m!100661 () Bool)

(assert (=> b!93441 m!100661))

(declare-fun m!100663 () Bool)

(assert (=> b!93441 m!100663))

(declare-fun m!100665 () Bool)

(assert (=> bm!9248 m!100665))

(declare-fun m!100667 () Bool)

(assert (=> bm!9249 m!100667))

(declare-fun m!100669 () Bool)

(assert (=> bm!9259 m!100669))

(declare-fun m!100671 () Bool)

(assert (=> bm!9252 m!100671))

(declare-fun m!100673 () Bool)

(assert (=> bm!9255 m!100673))

(assert (=> b!92999 d!24481))

(declare-fun d!24483 () Bool)

(assert (=> d!24483 (= (array_inv!1189 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) (bvsge (size!2232 (_keys!4107 (v!2747 (underlying!324 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!93008 d!24483))

(declare-fun d!24485 () Bool)

(assert (=> d!24485 (= (array_inv!1190 (_values!2408 (v!2747 (underlying!324 thiss!992)))) (bvsge (size!2233 (_values!2408 (v!2747 (underlying!324 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!93008 d!24485))

(declare-fun b!93456 () Bool)

(declare-fun e!60996 () Bool)

(assert (=> b!93456 (= e!60996 tp_is_empty!2601)))

(declare-fun mapIsEmpty!3641 () Bool)

(declare-fun mapRes!3641 () Bool)

(assert (=> mapIsEmpty!3641 mapRes!3641))

(declare-fun b!93457 () Bool)

(declare-fun e!60997 () Bool)

(assert (=> b!93457 (= e!60997 tp_is_empty!2601)))

(declare-fun condMapEmpty!3641 () Bool)

(declare-fun mapDefault!3641 () ValueCell!957)

(assert (=> mapNonEmpty!3632 (= condMapEmpty!3641 (= mapRest!3631 ((as const (Array (_ BitVec 32) ValueCell!957)) mapDefault!3641)))))

(assert (=> mapNonEmpty!3632 (= tp!9367 (and e!60997 mapRes!3641))))

(declare-fun mapNonEmpty!3641 () Bool)

(declare-fun tp!9383 () Bool)

(assert (=> mapNonEmpty!3641 (= mapRes!3641 (and tp!9383 e!60996))))

(declare-fun mapRest!3641 () (Array (_ BitVec 32) ValueCell!957))

(declare-fun mapKey!3641 () (_ BitVec 32))

(declare-fun mapValue!3641 () ValueCell!957)

(assert (=> mapNonEmpty!3641 (= mapRest!3631 (store mapRest!3641 mapKey!3641 mapValue!3641))))

(assert (= (and mapNonEmpty!3632 condMapEmpty!3641) mapIsEmpty!3641))

(assert (= (and mapNonEmpty!3632 (not condMapEmpty!3641)) mapNonEmpty!3641))

(assert (= (and mapNonEmpty!3641 ((_ is ValueCellFull!957) mapValue!3641)) b!93456))

(assert (= (and mapNonEmpty!3632 ((_ is ValueCellFull!957) mapDefault!3641)) b!93457))

(declare-fun m!100675 () Bool)

(assert (=> mapNonEmpty!3641 m!100675))

(declare-fun b!93458 () Bool)

(declare-fun e!60998 () Bool)

(assert (=> b!93458 (= e!60998 tp_is_empty!2601)))

(declare-fun mapIsEmpty!3642 () Bool)

(declare-fun mapRes!3642 () Bool)

(assert (=> mapIsEmpty!3642 mapRes!3642))

(declare-fun b!93459 () Bool)

(declare-fun e!60999 () Bool)

(assert (=> b!93459 (= e!60999 tp_is_empty!2601)))

(declare-fun condMapEmpty!3642 () Bool)

(declare-fun mapDefault!3642 () ValueCell!957)

(assert (=> mapNonEmpty!3631 (= condMapEmpty!3642 (= mapRest!3632 ((as const (Array (_ BitVec 32) ValueCell!957)) mapDefault!3642)))))

(assert (=> mapNonEmpty!3631 (= tp!9368 (and e!60999 mapRes!3642))))

(declare-fun mapNonEmpty!3642 () Bool)

(declare-fun tp!9384 () Bool)

(assert (=> mapNonEmpty!3642 (= mapRes!3642 (and tp!9384 e!60998))))

(declare-fun mapKey!3642 () (_ BitVec 32))

(declare-fun mapRest!3642 () (Array (_ BitVec 32) ValueCell!957))

(declare-fun mapValue!3642 () ValueCell!957)

(assert (=> mapNonEmpty!3642 (= mapRest!3632 (store mapRest!3642 mapKey!3642 mapValue!3642))))

(assert (= (and mapNonEmpty!3631 condMapEmpty!3642) mapIsEmpty!3642))

(assert (= (and mapNonEmpty!3631 (not condMapEmpty!3642)) mapNonEmpty!3642))

(assert (= (and mapNonEmpty!3642 ((_ is ValueCellFull!957) mapValue!3642)) b!93458))

(assert (= (and mapNonEmpty!3631 ((_ is ValueCellFull!957) mapDefault!3642)) b!93459))

(declare-fun m!100677 () Bool)

(assert (=> mapNonEmpty!3642 m!100677))

(declare-fun b_lambda!4121 () Bool)

(assert (= b_lambda!4113 (or (and b!93008 b_free!2369) (and b!92998 b_free!2371 (= (defaultEntry!2425 newMap!16) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))))) b_lambda!4121)))

(declare-fun b_lambda!4123 () Bool)

(assert (= b_lambda!4115 (or (and b!93008 b_free!2369) (and b!92998 b_free!2371 (= (defaultEntry!2425 newMap!16) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))))) b_lambda!4123)))

(declare-fun b_lambda!4125 () Bool)

(assert (= b_lambda!4119 (or (and b!93008 b_free!2369) (and b!92998 b_free!2371 (= (defaultEntry!2425 newMap!16) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))))) b_lambda!4125)))

(declare-fun b_lambda!4127 () Bool)

(assert (= b_lambda!4117 (or (and b!93008 b_free!2369) (and b!92998 b_free!2371 (= (defaultEntry!2425 newMap!16) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))))) b_lambda!4127)))

(declare-fun b_lambda!4129 () Bool)

(assert (= b_lambda!4111 (or (and b!93008 b_free!2369) (and b!92998 b_free!2371 (= (defaultEntry!2425 newMap!16) (defaultEntry!2425 (v!2747 (underlying!324 thiss!992))))) b_lambda!4129)))

(check-sat b_and!5691 (not b!93381) (not b!93192) (not bm!9199) (not b!93212) (not d!24445) (not d!24437) (not d!24425) tp_is_empty!2601 (not bm!9221) (not b!93397) (not bm!9210) (not d!24481) (not b!93197) (not b!93236) (not b!93196) (not b!93235) (not bm!9146) (not b_lambda!4127) (not bm!9207) (not bm!9149) (not d!24429) (not b!93130) (not b!93441) (not b_lambda!4123) (not bm!9250) (not d!24449) (not d!24441) (not bm!9259) (not b!93094) (not b!93137) (not bm!9133) (not bm!9257) (not b!93437) (not b!93102) (not bm!9255) (not bm!9206) (not b!93093) (not b!93138) (not b_lambda!4121) (not b!93223) b_and!5689 (not bm!9201) (not bm!9248) (not d!24467) (not b!93188) (not d!24431) (not b!93447) (not d!24463) (not b!93207) (not bm!9200) (not bm!9118) (not b!93264) (not b!93392) (not b!93366) (not bm!9139) (not b_lambda!4125) (not b!93261) (not b!93371) (not b!93103) (not mapNonEmpty!3641) (not b!93101) (not b!93186) (not mapNonEmpty!3642) (not d!24439) (not b!93237) (not b!93448) (not d!24451) (not bm!9251) (not b!93205) (not d!24427) (not b!93195) (not b!93445) (not bm!9253) (not b!93248) (not bm!9252) (not b!93100) (not b!93210) (not b!93132) (not b!93218) (not bm!9137) (not b!93380) (not d!24435) (not bm!9256) (not bm!9258) (not b!93208) (not d!24469) (not bm!9205) (not b!93203) (not d!24457) (not d!24475) (not b_lambda!4109) (not b!93135) (not d!24453) (not b!93271) (not d!24461) (not b_next!2371) (not d!24433) (not bm!9249) (not b!93265) (not b!93244) (not b!93253) (not b!93254) (not bm!9214) (not b!93211) (not d!24447) (not b!93255) (not d!24473) (not d!24465) (not b!93133) (not bm!9211) (not bm!9143) (not b!93250) (not b!93266) (not b!93128) (not b!93263) (not bm!9142) (not b!93281) (not b!93262) (not b!93204) (not bm!9136) (not bm!9147) (not d!24443) (not b!93251) (not b!93193) (not bm!9254) (not b!93209) (not b!93134) (not b_lambda!4129) (not b!93377) (not b!93272) (not bm!9260) (not b!93378) (not b_next!2369) (not b!93279) (not b!93246) (not b!93190) (not b!93206) (not bm!9212) (not b!93095) (not bm!9208))
(check-sat b_and!5689 b_and!5691 (not b_next!2369) (not b_next!2371))
