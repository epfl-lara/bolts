; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15228 () Bool)

(assert start!15228)

(declare-fun b!146806 () Bool)

(declare-fun b_free!3137 () Bool)

(declare-fun b_next!3137 () Bool)

(assert (=> b!146806 (= b_free!3137 (not b_next!3137))))

(declare-fun tp!11914 () Bool)

(declare-fun b_and!9217 () Bool)

(assert (=> b!146806 (= tp!11914 b_and!9217)))

(declare-fun b!146815 () Bool)

(declare-fun b_free!3139 () Bool)

(declare-fun b_next!3139 () Bool)

(assert (=> b!146815 (= b_free!3139 (not b_next!3139))))

(declare-fun tp!11916 () Bool)

(declare-fun b_and!9219 () Bool)

(assert (=> b!146815 (= tp!11916 b_and!9219)))

(declare-fun b!146805 () Bool)

(declare-fun e!95835 () Bool)

(declare-fun e!95832 () Bool)

(assert (=> b!146805 (= e!95835 (not e!95832))))

(declare-fun res!69813 () Bool)

(assert (=> b!146805 (=> res!69813 e!95832)))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3627 0))(
  ( (V!3628 (val!1537 Int)) )
))
(declare-datatypes ((array!5014 0))(
  ( (array!5015 (arr!2368 (Array (_ BitVec 32) (_ BitVec 64))) (size!2644 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1149 0))(
  ( (ValueCellFull!1149 (v!3362 V!3627)) (EmptyCell!1149) )
))
(declare-datatypes ((array!5016 0))(
  ( (array!5017 (arr!2369 (Array (_ BitVec 32) ValueCell!1149)) (size!2645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1206 0))(
  ( (LongMapFixedSize!1207 (defaultEntry!3019 Int) (mask!7399 (_ BitVec 32)) (extraKeys!2764 (_ BitVec 32)) (zeroValue!2864 V!3627) (minValue!2864 V!3627) (_size!652 (_ BitVec 32)) (_keys!4788 array!5014) (_values!3002 array!5016) (_vacant!652 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2754 0))(
  ( (tuple2!2755 (_1!1387 Bool) (_2!1387 LongMapFixedSize!1206)) )
))
(declare-fun lt!77314 () tuple2!2754)

(declare-datatypes ((Cell!988 0))(
  ( (Cell!989 (v!3363 LongMapFixedSize!1206)) )
))
(declare-datatypes ((LongMap!988 0))(
  ( (LongMap!989 (underlying!505 Cell!988)) )
))
(declare-fun thiss!992 () LongMap!988)

(declare-datatypes ((tuple2!2756 0))(
  ( (tuple2!2757 (_1!1388 (_ BitVec 64)) (_2!1388 V!3627)) )
))
(declare-datatypes ((List!1802 0))(
  ( (Nil!1799) (Cons!1798 (h!2406 tuple2!2756) (t!6531 List!1802)) )
))
(declare-datatypes ((ListLongMap!1785 0))(
  ( (ListLongMap!1786 (toList!908 List!1802)) )
))
(declare-fun getCurrentListMap!571 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 32) Int) ListLongMap!1785)

(declare-fun map!1472 (LongMapFixedSize!1206) ListLongMap!1785)

(assert (=> b!146805 (= res!69813 (not (= (getCurrentListMap!571 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) from!355 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))) (map!1472 (_2!1387 lt!77314)))))))

(declare-fun lt!77326 () ListLongMap!1785)

(declare-fun lt!77318 () ListLongMap!1785)

(declare-fun lt!77312 () tuple2!2756)

(declare-fun lt!77322 () tuple2!2756)

(declare-fun +!182 (ListLongMap!1785 tuple2!2756) ListLongMap!1785)

(assert (=> b!146805 (= (+!182 lt!77326 lt!77322) (+!182 (+!182 lt!77318 lt!77322) lt!77312))))

(assert (=> b!146805 (= lt!77322 (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77323 () V!3627)

(declare-datatypes ((Unit!4651 0))(
  ( (Unit!4652) )
))
(declare-fun lt!77310 () Unit!4651)

(declare-fun addCommutativeForDiffKeys!75 (ListLongMap!1785 (_ BitVec 64) V!3627 (_ BitVec 64) V!3627) Unit!4651)

(assert (=> b!146805 (= lt!77310 (addCommutativeForDiffKeys!75 lt!77318 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77319 () ListLongMap!1785)

(assert (=> b!146805 (= lt!77319 lt!77326)))

(assert (=> b!146805 (= lt!77326 (+!182 lt!77318 lt!77312))))

(declare-fun lt!77317 () ListLongMap!1785)

(declare-fun lt!77311 () tuple2!2756)

(assert (=> b!146805 (= lt!77319 (+!182 lt!77317 lt!77311))))

(declare-fun lt!77328 () ListLongMap!1785)

(assert (=> b!146805 (= lt!77318 (+!182 lt!77328 lt!77311))))

(assert (=> b!146805 (= lt!77311 (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(assert (=> b!146805 (= lt!77317 (+!182 lt!77328 lt!77312))))

(assert (=> b!146805 (= lt!77312 (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323))))

(declare-fun lt!77315 () Unit!4651)

(assert (=> b!146805 (= lt!77315 (addCommutativeForDiffKeys!75 lt!77328 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!151 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 32) Int) ListLongMap!1785)

(assert (=> b!146805 (= lt!77328 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun e!95837 () Bool)

(declare-fun tp_is_empty!2985 () Bool)

(declare-fun e!95844 () Bool)

(declare-fun array_inv!1471 (array!5014) Bool)

(declare-fun array_inv!1472 (array!5016) Bool)

(assert (=> b!146806 (= e!95844 (and tp!11914 tp_is_empty!2985 (array_inv!1471 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (array_inv!1472 (_values!3002 (v!3363 (underlying!505 thiss!992)))) e!95837))))

(declare-fun b!146807 () Bool)

(declare-fun res!69808 () Bool)

(declare-fun e!95841 () Bool)

(assert (=> b!146807 (=> (not res!69808) (not e!95841))))

(declare-fun newMap!16 () LongMapFixedSize!1206)

(assert (=> b!146807 (= res!69808 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7399 newMap!16)) (_size!652 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!146808 () Bool)

(declare-fun res!69812 () Bool)

(assert (=> b!146808 (=> (not res!69812) (not e!95841))))

(declare-fun valid!588 (LongMapFixedSize!1206) Bool)

(assert (=> b!146808 (= res!69812 (valid!588 newMap!16))))

(declare-fun b!146809 () Bool)

(declare-fun e!95848 () Bool)

(assert (=> b!146809 (= e!95848 tp_is_empty!2985)))

(declare-fun b!146810 () Bool)

(declare-fun res!69811 () Bool)

(assert (=> b!146810 (=> (not res!69811) (not e!95841))))

(assert (=> b!146810 (= res!69811 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun b!146811 () Bool)

(declare-fun e!95846 () Bool)

(assert (=> b!146811 (= e!95832 e!95846)))

(declare-fun res!69809 () Bool)

(assert (=> b!146811 (=> res!69809 e!95846)))

(declare-fun lt!77325 () tuple2!2754)

(assert (=> b!146811 (= res!69809 (not (_1!1387 lt!77325)))))

(declare-fun repackFrom!16 (LongMap!988 LongMapFixedSize!1206 (_ BitVec 32)) tuple2!2754)

(assert (=> b!146811 (= lt!77325 (repackFrom!16 thiss!992 (_2!1387 lt!77314) (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun b!146812 () Bool)

(declare-fun e!95834 () Bool)

(assert (=> b!146812 (= e!95834 (= (map!1472 (_2!1387 lt!77325)) (map!1472 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!146813 () Bool)

(declare-fun e!95833 () Bool)

(assert (=> b!146813 (= e!95833 tp_is_empty!2985)))

(declare-fun mapIsEmpty!5027 () Bool)

(declare-fun mapRes!5028 () Bool)

(assert (=> mapIsEmpty!5027 mapRes!5028))

(declare-fun mapNonEmpty!5027 () Bool)

(declare-fun tp!11915 () Bool)

(assert (=> mapNonEmpty!5027 (= mapRes!5028 (and tp!11915 e!95848))))

(declare-fun mapKey!5027 () (_ BitVec 32))

(declare-fun mapValue!5028 () ValueCell!1149)

(declare-fun mapRest!5028 () (Array (_ BitVec 32) ValueCell!1149))

(assert (=> mapNonEmpty!5027 (= (arr!2369 (_values!3002 newMap!16)) (store mapRest!5028 mapKey!5027 mapValue!5028))))

(declare-fun b!146814 () Bool)

(declare-fun e!95843 () Bool)

(declare-fun e!95851 () Bool)

(assert (=> b!146814 (= e!95843 e!95851)))

(declare-fun res!69810 () Bool)

(assert (=> b!146814 (=> (not res!69810) (not e!95851))))

(assert (=> b!146814 (= res!69810 (and (not (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1582 (ValueCell!1149 V!3627) V!3627)

(declare-fun dynLambda!458 (Int (_ BitVec 64)) V!3627)

(assert (=> b!146814 (= lt!77323 (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) from!355) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!146816 () Bool)

(declare-fun e!95836 () Bool)

(assert (=> b!146816 (= e!95836 tp_is_empty!2985)))

(declare-fun b!146817 () Bool)

(declare-fun e!95838 () Unit!4651)

(declare-fun Unit!4653 () Unit!4651)

(assert (=> b!146817 (= e!95838 Unit!4653)))

(declare-fun lt!77327 () Unit!4651)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!160 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 64) (_ BitVec 32) Int) Unit!4651)

(assert (=> b!146817 (= lt!77327 (lemmaListMapContainsThenArrayContainsFrom!160 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!5014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146817 (arrayContainsKey!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!77321 () Unit!4651)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5014 (_ BitVec 32) (_ BitVec 32)) Unit!4651)

(assert (=> b!146817 (= lt!77321 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1803 0))(
  ( (Nil!1800) (Cons!1799 (h!2407 (_ BitVec 64)) (t!6532 List!1803)) )
))
(declare-fun arrayNoDuplicates!0 (array!5014 (_ BitVec 32) List!1803) Bool)

(assert (=> b!146817 (arrayNoDuplicates!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) from!355 Nil!1800)))

(declare-fun lt!77313 () Unit!4651)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5014 (_ BitVec 32) (_ BitVec 64) List!1803) Unit!4651)

(assert (=> b!146817 (= lt!77313 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (Cons!1799 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) Nil!1800)))))

(assert (=> b!146817 false))

(declare-fun mapNonEmpty!5028 () Bool)

(declare-fun mapRes!5027 () Bool)

(declare-fun tp!11913 () Bool)

(declare-fun e!95845 () Bool)

(assert (=> mapNonEmpty!5028 (= mapRes!5027 (and tp!11913 e!95845))))

(declare-fun mapRest!5027 () (Array (_ BitVec 32) ValueCell!1149))

(declare-fun mapKey!5028 () (_ BitVec 32))

(declare-fun mapValue!5027 () ValueCell!1149)

(assert (=> mapNonEmpty!5028 (= (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) (store mapRest!5027 mapKey!5028 mapValue!5027))))

(declare-fun mapIsEmpty!5028 () Bool)

(assert (=> mapIsEmpty!5028 mapRes!5027))

(declare-fun b!146818 () Bool)

(assert (=> b!146818 (= e!95851 e!95835)))

(declare-fun res!69815 () Bool)

(assert (=> b!146818 (=> (not res!69815) (not e!95835))))

(assert (=> b!146818 (= res!69815 (and (_1!1387 lt!77314) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!77324 () Unit!4651)

(assert (=> b!146818 (= lt!77324 e!95838)))

(declare-fun lt!77320 () ListLongMap!1785)

(declare-fun c!27707 () Bool)

(declare-fun contains!949 (ListLongMap!1785 (_ BitVec 64)) Bool)

(assert (=> b!146818 (= c!27707 (contains!949 lt!77320 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun update!226 (LongMapFixedSize!1206 (_ BitVec 64) V!3627) tuple2!2754)

(assert (=> b!146818 (= lt!77314 (update!226 newMap!16 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323))))

(declare-fun b!146819 () Bool)

(assert (=> b!146819 (= e!95846 e!95834)))

(declare-fun res!69814 () Bool)

(assert (=> b!146819 (=> (not res!69814) (not e!95834))))

(assert (=> b!146819 (= res!69814 (valid!588 (_2!1387 lt!77325)))))

(declare-fun b!146820 () Bool)

(assert (=> b!146820 (= e!95841 e!95843)))

(declare-fun res!69807 () Bool)

(assert (=> b!146820 (=> (not res!69807) (not e!95843))))

(declare-fun lt!77316 () ListLongMap!1785)

(assert (=> b!146820 (= res!69807 (= lt!77316 lt!77320))))

(assert (=> b!146820 (= lt!77320 (map!1472 newMap!16))))

(assert (=> b!146820 (= lt!77316 (getCurrentListMap!571 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!146821 () Bool)

(assert (=> b!146821 (= e!95837 (and e!95836 mapRes!5027))))

(declare-fun condMapEmpty!5027 () Bool)

(declare-fun mapDefault!5027 () ValueCell!1149)

(assert (=> b!146821 (= condMapEmpty!5027 (= (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1149)) mapDefault!5027)))))

(declare-fun b!146822 () Bool)

(declare-fun e!95849 () Bool)

(declare-fun e!95850 () Bool)

(assert (=> b!146822 (= e!95849 e!95850)))

(declare-fun e!95847 () Bool)

(declare-fun e!95840 () Bool)

(assert (=> b!146815 (= e!95840 (and tp!11916 tp_is_empty!2985 (array_inv!1471 (_keys!4788 newMap!16)) (array_inv!1472 (_values!3002 newMap!16)) e!95847))))

(declare-fun res!69816 () Bool)

(assert (=> start!15228 (=> (not res!69816) (not e!95841))))

(declare-fun valid!589 (LongMap!988) Bool)

(assert (=> start!15228 (= res!69816 (valid!589 thiss!992))))

(assert (=> start!15228 e!95841))

(assert (=> start!15228 e!95849))

(assert (=> start!15228 true))

(assert (=> start!15228 e!95840))

(declare-fun b!146823 () Bool)

(assert (=> b!146823 (= e!95850 e!95844)))

(declare-fun b!146824 () Bool)

(assert (=> b!146824 (= e!95847 (and e!95833 mapRes!5028))))

(declare-fun condMapEmpty!5028 () Bool)

(declare-fun mapDefault!5028 () ValueCell!1149)

(assert (=> b!146824 (= condMapEmpty!5028 (= (arr!2369 (_values!3002 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1149)) mapDefault!5028)))))

(declare-fun b!146825 () Bool)

(declare-fun Unit!4654 () Unit!4651)

(assert (=> b!146825 (= e!95838 Unit!4654)))

(declare-fun b!146826 () Bool)

(assert (=> b!146826 (= e!95845 tp_is_empty!2985)))

(assert (= (and start!15228 res!69816) b!146810))

(assert (= (and b!146810 res!69811) b!146808))

(assert (= (and b!146808 res!69812) b!146807))

(assert (= (and b!146807 res!69808) b!146820))

(assert (= (and b!146820 res!69807) b!146814))

(assert (= (and b!146814 res!69810) b!146818))

(assert (= (and b!146818 c!27707) b!146817))

(assert (= (and b!146818 (not c!27707)) b!146825))

(assert (= (and b!146818 res!69815) b!146805))

(assert (= (and b!146805 (not res!69813)) b!146811))

(assert (= (and b!146811 (not res!69809)) b!146819))

(assert (= (and b!146819 res!69814) b!146812))

(assert (= (and b!146821 condMapEmpty!5027) mapIsEmpty!5028))

(assert (= (and b!146821 (not condMapEmpty!5027)) mapNonEmpty!5028))

(get-info :version)

(assert (= (and mapNonEmpty!5028 ((_ is ValueCellFull!1149) mapValue!5027)) b!146826))

(assert (= (and b!146821 ((_ is ValueCellFull!1149) mapDefault!5027)) b!146816))

(assert (= b!146806 b!146821))

(assert (= b!146823 b!146806))

(assert (= b!146822 b!146823))

(assert (= start!15228 b!146822))

(assert (= (and b!146824 condMapEmpty!5028) mapIsEmpty!5027))

(assert (= (and b!146824 (not condMapEmpty!5028)) mapNonEmpty!5027))

(assert (= (and mapNonEmpty!5027 ((_ is ValueCellFull!1149) mapValue!5028)) b!146809))

(assert (= (and b!146824 ((_ is ValueCellFull!1149) mapDefault!5028)) b!146813))

(assert (= b!146815 b!146824))

(assert (= start!15228 b!146815))

(declare-fun b_lambda!6599 () Bool)

(assert (=> (not b_lambda!6599) (not b!146814)))

(declare-fun t!6528 () Bool)

(declare-fun tb!2689 () Bool)

(assert (=> (and b!146806 (= (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))) t!6528) tb!2689))

(declare-fun result!4385 () Bool)

(assert (=> tb!2689 (= result!4385 tp_is_empty!2985)))

(assert (=> b!146814 t!6528))

(declare-fun b_and!9221 () Bool)

(assert (= b_and!9217 (and (=> t!6528 result!4385) b_and!9221)))

(declare-fun tb!2691 () Bool)

(declare-fun t!6530 () Bool)

(assert (=> (and b!146815 (= (defaultEntry!3019 newMap!16) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))) t!6530) tb!2691))

(declare-fun result!4389 () Bool)

(assert (= result!4389 result!4385))

(assert (=> b!146814 t!6530))

(declare-fun b_and!9223 () Bool)

(assert (= b_and!9219 (and (=> t!6530 result!4389) b_and!9223)))

(declare-fun m!176755 () Bool)

(assert (=> b!146808 m!176755))

(declare-fun m!176757 () Bool)

(assert (=> b!146819 m!176757))

(declare-fun m!176759 () Bool)

(assert (=> b!146815 m!176759))

(declare-fun m!176761 () Bool)

(assert (=> b!146815 m!176761))

(declare-fun m!176763 () Bool)

(assert (=> b!146811 m!176763))

(declare-fun m!176765 () Bool)

(assert (=> b!146817 m!176765))

(declare-fun m!176767 () Bool)

(assert (=> b!146817 m!176767))

(declare-fun m!176769 () Bool)

(assert (=> b!146817 m!176769))

(declare-fun m!176771 () Bool)

(assert (=> b!146817 m!176771))

(assert (=> b!146817 m!176769))

(assert (=> b!146817 m!176769))

(declare-fun m!176773 () Bool)

(assert (=> b!146817 m!176773))

(assert (=> b!146817 m!176769))

(declare-fun m!176775 () Bool)

(assert (=> b!146817 m!176775))

(declare-fun m!176777 () Bool)

(assert (=> b!146820 m!176777))

(declare-fun m!176779 () Bool)

(assert (=> b!146820 m!176779))

(declare-fun m!176781 () Bool)

(assert (=> start!15228 m!176781))

(assert (=> b!146818 m!176769))

(assert (=> b!146818 m!176769))

(declare-fun m!176783 () Bool)

(assert (=> b!146818 m!176783))

(assert (=> b!146818 m!176769))

(declare-fun m!176785 () Bool)

(assert (=> b!146818 m!176785))

(declare-fun m!176787 () Bool)

(assert (=> b!146806 m!176787))

(declare-fun m!176789 () Bool)

(assert (=> b!146806 m!176789))

(declare-fun m!176791 () Bool)

(assert (=> mapNonEmpty!5027 m!176791))

(declare-fun m!176793 () Bool)

(assert (=> b!146812 m!176793))

(declare-fun m!176795 () Bool)

(assert (=> b!146812 m!176795))

(declare-fun m!176797 () Bool)

(assert (=> b!146805 m!176797))

(declare-fun m!176799 () Bool)

(assert (=> b!146805 m!176799))

(declare-fun m!176801 () Bool)

(assert (=> b!146805 m!176801))

(declare-fun m!176803 () Bool)

(assert (=> b!146805 m!176803))

(declare-fun m!176805 () Bool)

(assert (=> b!146805 m!176805))

(assert (=> b!146805 m!176769))

(declare-fun m!176807 () Bool)

(assert (=> b!146805 m!176807))

(declare-fun m!176809 () Bool)

(assert (=> b!146805 m!176809))

(declare-fun m!176811 () Bool)

(assert (=> b!146805 m!176811))

(declare-fun m!176813 () Bool)

(assert (=> b!146805 m!176813))

(declare-fun m!176815 () Bool)

(assert (=> b!146805 m!176815))

(declare-fun m!176817 () Bool)

(assert (=> b!146805 m!176817))

(assert (=> b!146805 m!176801))

(assert (=> b!146805 m!176769))

(assert (=> b!146805 m!176769))

(declare-fun m!176819 () Bool)

(assert (=> b!146805 m!176819))

(declare-fun m!176821 () Bool)

(assert (=> mapNonEmpty!5028 m!176821))

(assert (=> b!146814 m!176769))

(declare-fun m!176823 () Bool)

(assert (=> b!146814 m!176823))

(declare-fun m!176825 () Bool)

(assert (=> b!146814 m!176825))

(assert (=> b!146814 m!176823))

(assert (=> b!146814 m!176825))

(declare-fun m!176827 () Bool)

(assert (=> b!146814 m!176827))

(check-sat (not mapNonEmpty!5027) (not b!146820) (not mapNonEmpty!5028) (not b!146812) (not b!146818) tp_is_empty!2985 (not b!146808) (not b!146814) (not b!146815) (not b!146805) (not b!146817) b_and!9221 (not b!146819) (not start!15228) (not b_next!3139) (not b!146806) b_and!9223 (not b_next!3137) (not b_lambda!6599) (not b!146811))
(check-sat b_and!9221 b_and!9223 (not b_next!3137) (not b_next!3139))
(get-model)

(declare-fun b_lambda!6603 () Bool)

(assert (= b_lambda!6599 (or (and b!146806 b_free!3137) (and b!146815 b_free!3139 (= (defaultEntry!3019 newMap!16) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))))) b_lambda!6603)))

(check-sat (not mapNonEmpty!5027) (not b!146820) (not mapNonEmpty!5028) (not b!146812) (not b!146818) tp_is_empty!2985 (not b!146808) (not b!146815) (not b!146805) (not b!146817) b_and!9221 (not b!146819) (not b!146811) (not start!15228) (not b_lambda!6603) (not b!146814) (not b_next!3139) (not b!146806) b_and!9223 (not b_next!3137))
(check-sat b_and!9221 b_and!9223 (not b_next!3137) (not b_next!3139))
(get-model)

(declare-fun b!146925 () Bool)

(declare-fun e!95933 () tuple2!2754)

(assert (=> b!146925 (= e!95933 (tuple2!2755 true (_2!1387 lt!77314)))))

(declare-fun b!146926 () Bool)

(declare-fun e!95931 () Bool)

(declare-fun lt!77460 () (_ BitVec 64))

(declare-fun lt!77469 () (_ BitVec 32))

(assert (=> b!146926 (= e!95931 (arrayContainsKey!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) lt!77460 lt!77469))))

(declare-fun b!146927 () Bool)

(declare-fun e!95935 () Bool)

(declare-fun lt!77451 () tuple2!2754)

(assert (=> b!146927 (= e!95935 (= (map!1472 (_2!1387 lt!77451)) (map!1472 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!146928 () Bool)

(declare-fun e!95934 () tuple2!2754)

(declare-fun lt!77457 () tuple2!2754)

(assert (=> b!146928 (= e!95934 (tuple2!2755 true (_2!1387 lt!77457)))))

(declare-fun lt!77453 () ListLongMap!1785)

(declare-fun call!16395 () ListLongMap!1785)

(assert (=> b!146928 (= lt!77453 call!16395)))

(declare-fun lt!77464 () (_ BitVec 64))

(assert (=> b!146928 (= lt!77464 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77472 () Unit!4651)

(declare-fun call!16389 () Unit!4651)

(assert (=> b!146928 (= lt!77472 call!16389)))

(declare-fun call!16388 () ListLongMap!1785)

(declare-fun call!16399 () ListLongMap!1785)

(assert (=> b!146928 (= call!16388 call!16399)))

(declare-fun lt!77467 () Unit!4651)

(assert (=> b!146928 (= lt!77467 lt!77472)))

(declare-fun lt!77455 () ListLongMap!1785)

(declare-fun call!16392 () ListLongMap!1785)

(assert (=> b!146928 (= lt!77455 call!16392)))

(declare-fun lt!77473 () (_ BitVec 64))

(assert (=> b!146928 (= lt!77473 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77450 () Unit!4651)

(declare-fun call!16400 () Unit!4651)

(assert (=> b!146928 (= lt!77450 call!16400)))

(declare-fun call!16397 () ListLongMap!1785)

(declare-fun call!16394 () ListLongMap!1785)

(assert (=> b!146928 (= call!16397 call!16394)))

(declare-fun lt!77477 () Unit!4651)

(assert (=> b!146928 (= lt!77477 lt!77450)))

(declare-fun call!16390 () ListLongMap!1785)

(declare-fun call!16391 () ListLongMap!1785)

(declare-fun c!27726 () Bool)

(declare-fun bm!16385 () Bool)

(declare-fun lt!77480 () V!3627)

(assert (=> bm!16385 (= call!16397 (+!182 (ite c!27726 call!16390 call!16391) (ite c!27726 (tuple2!2757 lt!77460 lt!77480) (tuple2!2757 lt!77473 (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun b!146929 () Bool)

(declare-fun lt!77463 () tuple2!2754)

(declare-fun call!16398 () tuple2!2754)

(assert (=> b!146929 (= lt!77463 call!16398)))

(assert (=> b!146929 (= e!95933 (tuple2!2755 (_1!1387 lt!77463) (_2!1387 lt!77463)))))

(declare-fun lt!77459 () ListLongMap!1785)

(declare-fun bm!16386 () Bool)

(declare-fun call!16393 () ListLongMap!1785)

(assert (=> bm!16386 (= call!16393 (+!182 (ite c!27726 lt!77459 lt!77453) (ite c!27726 (tuple2!2757 lt!77460 lt!77480) (tuple2!2757 lt!77464 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun b!146930 () Bool)

(declare-fun e!95928 () Unit!4651)

(declare-fun Unit!4657 () Unit!4651)

(assert (=> b!146930 (= e!95928 Unit!4657)))

(declare-fun lt!77461 () ListLongMap!1785)

(declare-fun bm!16387 () Bool)

(declare-fun lt!77466 () (_ BitVec 64))

(assert (=> bm!16387 (= call!16400 (addCommutativeForDiffKeys!75 (ite c!27726 lt!77461 lt!77455) lt!77460 lt!77480 (ite c!27726 lt!77466 lt!77473) (ite c!27726 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!146931 () Bool)

(declare-fun e!95932 () tuple2!2754)

(assert (=> b!146931 (= e!95932 (tuple2!2755 false (_2!1387 lt!77457)))))

(declare-fun b!146932 () Bool)

(assert (=> b!146932 (= e!95931 (ite (= lt!77460 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!16388 () Bool)

(declare-fun c!27725 () Bool)

(assert (=> bm!16388 (= call!16398 (repackFrom!16 thiss!992 (ite c!27725 (_2!1387 lt!77457) (_2!1387 lt!77314)) (bvsub (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun bm!16389 () Bool)

(declare-fun lt!77471 () (_ BitVec 64))

(assert (=> bm!16389 (= call!16388 (+!182 (ite c!27726 call!16393 call!16390) (ite c!27726 (tuple2!2757 lt!77471 (minValue!2864 (v!3363 (underlying!505 thiss!992)))) (tuple2!2757 lt!77464 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun b!146933 () Bool)

(declare-fun e!95930 () tuple2!2754)

(assert (=> b!146933 (= e!95930 e!95932)))

(assert (=> b!146933 (= lt!77457 (update!226 (_2!1387 lt!77314) lt!77460 lt!77480))))

(declare-fun c!27724 () Bool)

(declare-fun lt!77478 () ListLongMap!1785)

(assert (=> b!146933 (= c!27724 (contains!949 lt!77478 lt!77460))))

(declare-fun lt!77470 () Unit!4651)

(assert (=> b!146933 (= lt!77470 e!95928)))

(declare-fun c!27728 () Bool)

(assert (=> b!146933 (= c!27728 (_1!1387 lt!77457))))

(declare-fun b!146934 () Bool)

(declare-fun lt!77474 () tuple2!2754)

(assert (=> b!146934 (= e!95934 (tuple2!2755 (_1!1387 lt!77474) (_2!1387 lt!77474)))))

(assert (=> b!146934 (= lt!77461 call!16395)))

(assert (=> b!146934 (= lt!77466 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77481 () Unit!4651)

(assert (=> b!146934 (= lt!77481 call!16400)))

(assert (=> b!146934 (= call!16399 call!16392)))

(declare-fun lt!77475 () Unit!4651)

(assert (=> b!146934 (= lt!77475 lt!77481)))

(assert (=> b!146934 (= lt!77459 call!16394)))

(assert (=> b!146934 (= lt!77471 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77465 () Unit!4651)

(assert (=> b!146934 (= lt!77465 call!16389)))

(assert (=> b!146934 (= call!16388 call!16397)))

(declare-fun lt!77479 () Unit!4651)

(assert (=> b!146934 (= lt!77479 lt!77465)))

(assert (=> b!146934 (= lt!77474 call!16398)))

(declare-fun b!146935 () Bool)

(declare-fun e!95929 () Bool)

(assert (=> b!146935 (= e!95929 e!95935)))

(declare-fun res!69851 () Bool)

(assert (=> b!146935 (=> (not res!69851) (not e!95935))))

(assert (=> b!146935 (= res!69851 (valid!588 (_2!1387 lt!77451)))))

(declare-fun call!16396 () ListLongMap!1785)

(declare-fun bm!16390 () Bool)

(assert (=> bm!16390 (= call!16396 (+!182 (ite c!27726 lt!77461 lt!77455) (ite c!27726 (tuple2!2757 lt!77466 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))) (tuple2!2757 lt!77473 (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun bm!16391 () Bool)

(assert (=> bm!16391 (= call!16394 (+!182 (ite c!27726 call!16395 call!16396) (ite c!27726 (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))) (tuple2!2757 lt!77460 lt!77480))))))

(declare-fun d!46421 () Bool)

(assert (=> d!46421 e!95929))

(declare-fun res!69852 () Bool)

(assert (=> d!46421 (=> res!69852 e!95929)))

(assert (=> d!46421 (= res!69852 (not (_1!1387 lt!77451)))))

(assert (=> d!46421 (= lt!77451 e!95930)))

(assert (=> d!46421 (= c!27725 (and (not (= lt!77460 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!77460 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!46421 (= lt!77478 (map!1472 (_2!1387 lt!77314)))))

(assert (=> d!46421 (= lt!77480 (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!46421 (= lt!77460 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)))))

(assert (=> d!46421 (valid!589 thiss!992)))

(assert (=> d!46421 (= (repackFrom!16 thiss!992 (_2!1387 lt!77314) (bvsub from!355 #b00000000000000000000000000000001)) lt!77451)))

(declare-fun bm!16392 () Bool)

(assert (=> bm!16392 (= call!16392 (+!182 (ite c!27726 call!16396 call!16395) (ite c!27726 (tuple2!2757 lt!77460 lt!77480) (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun b!146936 () Bool)

(assert (=> b!146936 (= c!27726 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!146936 (= e!95932 e!95934)))

(declare-fun bm!16393 () Bool)

(assert (=> bm!16393 (= call!16391 (+!182 (ite c!27726 lt!77461 lt!77455) (tuple2!2757 lt!77460 lt!77480)))))

(declare-fun b!146937 () Bool)

(assert (=> b!146937 false))

(declare-fun lt!77456 () Unit!4651)

(declare-fun lt!77468 () Unit!4651)

(assert (=> b!146937 (= lt!77456 lt!77468)))

(declare-fun lt!77462 () (_ BitVec 32))

(assert (=> b!146937 (not (arrayContainsKey!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) lt!77460 lt!77462))))

(assert (=> b!146937 (= lt!77468 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) lt!77462 lt!77460 (Cons!1799 lt!77460 Nil!1800)))))

(assert (=> b!146937 (= lt!77462 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!77458 () Unit!4651)

(declare-fun lt!77476 () Unit!4651)

(assert (=> b!146937 (= lt!77458 lt!77476)))

(assert (=> b!146937 (arrayNoDuplicates!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (bvsub from!355 #b00000000000000000000000000000001) Nil!1800)))

(assert (=> b!146937 (= lt!77476 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000000 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun lt!77452 () Unit!4651)

(declare-fun lt!77454 () Unit!4651)

(assert (=> b!146937 (= lt!77452 lt!77454)))

(assert (=> b!146937 e!95931))

(declare-fun c!27727 () Bool)

(assert (=> b!146937 (= c!27727 (and (not (= lt!77460 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!77460 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!146937 (= lt!77454 (lemmaListMapContainsThenArrayContainsFrom!160 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77460 lt!77469 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(assert (=> b!146937 (= lt!77469 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!4658 () Unit!4651)

(assert (=> b!146937 (= e!95928 Unit!4658)))

(declare-fun bm!16394 () Bool)

(assert (=> bm!16394 (= call!16389 (addCommutativeForDiffKeys!75 (ite c!27726 lt!77459 lt!77453) lt!77460 lt!77480 (ite c!27726 lt!77471 lt!77464) (ite c!27726 (minValue!2864 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun bm!16395 () Bool)

(assert (=> bm!16395 (= call!16399 (+!182 (ite c!27726 call!16391 call!16393) (ite c!27726 (tuple2!2757 lt!77466 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))) (tuple2!2757 lt!77460 lt!77480))))))

(declare-fun bm!16396 () Bool)

(assert (=> bm!16396 (= call!16390 (+!182 (ite c!27726 lt!77459 lt!77453) (ite c!27726 (tuple2!2757 lt!77471 (minValue!2864 (v!3363 (underlying!505 thiss!992)))) (tuple2!2757 lt!77460 lt!77480))))))

(declare-fun b!146938 () Bool)

(assert (=> b!146938 (= e!95930 e!95933)))

(declare-fun c!27723 () Bool)

(assert (=> b!146938 (= c!27723 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!16397 () Bool)

(assert (=> bm!16397 (= call!16395 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(assert (= (and d!46421 c!27725) b!146933))

(assert (= (and d!46421 (not c!27725)) b!146938))

(assert (= (and b!146933 c!27724) b!146937))

(assert (= (and b!146933 (not c!27724)) b!146930))

(assert (= (and b!146937 c!27727) b!146926))

(assert (= (and b!146937 (not c!27727)) b!146932))

(assert (= (and b!146933 c!27728) b!146936))

(assert (= (and b!146933 (not c!27728)) b!146931))

(assert (= (and b!146936 c!27726) b!146934))

(assert (= (and b!146936 (not c!27726)) b!146928))

(assert (= (or b!146934 b!146928) bm!16387))

(assert (= (or b!146934 b!146928) bm!16393))

(assert (= (or b!146934 b!146928) bm!16396))

(assert (= (or b!146934 b!146928) bm!16390))

(assert (= (or b!146934 b!146928) bm!16394))

(assert (= (or b!146934 b!146928) bm!16397))

(assert (= (or b!146934 b!146928) bm!16386))

(assert (= (or b!146934 b!146928) bm!16389))

(assert (= (or b!146934 b!146928) bm!16391))

(assert (= (or b!146934 b!146928) bm!16385))

(assert (= (or b!146934 b!146928) bm!16392))

(assert (= (or b!146934 b!146928) bm!16395))

(assert (= (and b!146938 c!27723) b!146929))

(assert (= (and b!146938 (not c!27723)) b!146925))

(assert (= (or b!146934 b!146929) bm!16388))

(assert (= (and d!46421 (not res!69852)) b!146935))

(assert (= (and b!146935 res!69851) b!146927))

(declare-fun b_lambda!6605 () Bool)

(assert (=> (not b_lambda!6605) (not d!46421)))

(assert (=> d!46421 t!6528))

(declare-fun b_and!9233 () Bool)

(assert (= b_and!9221 (and (=> t!6528 result!4385) b_and!9233)))

(assert (=> d!46421 t!6530))

(declare-fun b_and!9235 () Bool)

(assert (= b_and!9223 (and (=> t!6530 result!4389) b_and!9235)))

(declare-fun m!176903 () Bool)

(assert (=> bm!16387 m!176903))

(declare-fun m!176905 () Bool)

(assert (=> bm!16393 m!176905))

(declare-fun m!176907 () Bool)

(assert (=> d!46421 m!176907))

(assert (=> d!46421 m!176907))

(assert (=> d!46421 m!176825))

(declare-fun m!176909 () Bool)

(assert (=> d!46421 m!176909))

(assert (=> d!46421 m!176825))

(declare-fun m!176911 () Bool)

(assert (=> d!46421 m!176911))

(assert (=> d!46421 m!176781))

(assert (=> d!46421 m!176815))

(declare-fun m!176913 () Bool)

(assert (=> b!146927 m!176913))

(assert (=> b!146927 m!176795))

(declare-fun m!176915 () Bool)

(assert (=> bm!16397 m!176915))

(declare-fun m!176917 () Bool)

(assert (=> bm!16388 m!176917))

(declare-fun m!176919 () Bool)

(assert (=> bm!16392 m!176919))

(declare-fun m!176921 () Bool)

(assert (=> bm!16390 m!176921))

(declare-fun m!176923 () Bool)

(assert (=> b!146935 m!176923))

(declare-fun m!176925 () Bool)

(assert (=> b!146926 m!176925))

(declare-fun m!176927 () Bool)

(assert (=> b!146937 m!176927))

(declare-fun m!176929 () Bool)

(assert (=> b!146937 m!176929))

(declare-fun m!176931 () Bool)

(assert (=> b!146937 m!176931))

(declare-fun m!176933 () Bool)

(assert (=> b!146937 m!176933))

(declare-fun m!176935 () Bool)

(assert (=> b!146937 m!176935))

(declare-fun m!176937 () Bool)

(assert (=> bm!16389 m!176937))

(declare-fun m!176939 () Bool)

(assert (=> bm!16394 m!176939))

(declare-fun m!176941 () Bool)

(assert (=> bm!16395 m!176941))

(declare-fun m!176943 () Bool)

(assert (=> bm!16386 m!176943))

(declare-fun m!176945 () Bool)

(assert (=> bm!16396 m!176945))

(declare-fun m!176947 () Bool)

(assert (=> b!146933 m!176947))

(declare-fun m!176949 () Bool)

(assert (=> b!146933 m!176949))

(declare-fun m!176951 () Bool)

(assert (=> bm!16391 m!176951))

(declare-fun m!176953 () Bool)

(assert (=> bm!16385 m!176953))

(assert (=> b!146811 d!46421))

(declare-fun d!46423 () Bool)

(assert (=> d!46423 (= (map!1472 (_2!1387 lt!77325)) (getCurrentListMap!571 (_keys!4788 (_2!1387 lt!77325)) (_values!3002 (_2!1387 lt!77325)) (mask!7399 (_2!1387 lt!77325)) (extraKeys!2764 (_2!1387 lt!77325)) (zeroValue!2864 (_2!1387 lt!77325)) (minValue!2864 (_2!1387 lt!77325)) #b00000000000000000000000000000000 (defaultEntry!3019 (_2!1387 lt!77325))))))

(declare-fun bs!6155 () Bool)

(assert (= bs!6155 d!46423))

(declare-fun m!176955 () Bool)

(assert (=> bs!6155 m!176955))

(assert (=> b!146812 d!46423))

(declare-fun d!46425 () Bool)

(assert (=> d!46425 (= (map!1472 (v!3363 (underlying!505 thiss!992))) (getCurrentListMap!571 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun bs!6156 () Bool)

(assert (= bs!6156 d!46425))

(declare-fun m!176957 () Bool)

(assert (=> bs!6156 m!176957))

(assert (=> b!146812 d!46425))

(declare-fun d!46427 () Bool)

(declare-fun res!69859 () Bool)

(declare-fun e!95938 () Bool)

(assert (=> d!46427 (=> (not res!69859) (not e!95938))))

(declare-fun simpleValid!100 (LongMapFixedSize!1206) Bool)

(assert (=> d!46427 (= res!69859 (simpleValid!100 (_2!1387 lt!77325)))))

(assert (=> d!46427 (= (valid!588 (_2!1387 lt!77325)) e!95938)))

(declare-fun b!146945 () Bool)

(declare-fun res!69860 () Bool)

(assert (=> b!146945 (=> (not res!69860) (not e!95938))))

(declare-fun arrayCountValidKeys!0 (array!5014 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!146945 (= res!69860 (= (arrayCountValidKeys!0 (_keys!4788 (_2!1387 lt!77325)) #b00000000000000000000000000000000 (size!2644 (_keys!4788 (_2!1387 lt!77325)))) (_size!652 (_2!1387 lt!77325))))))

(declare-fun b!146946 () Bool)

(declare-fun res!69861 () Bool)

(assert (=> b!146946 (=> (not res!69861) (not e!95938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5014 (_ BitVec 32)) Bool)

(assert (=> b!146946 (= res!69861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4788 (_2!1387 lt!77325)) (mask!7399 (_2!1387 lt!77325))))))

(declare-fun b!146947 () Bool)

(assert (=> b!146947 (= e!95938 (arrayNoDuplicates!0 (_keys!4788 (_2!1387 lt!77325)) #b00000000000000000000000000000000 Nil!1800))))

(assert (= (and d!46427 res!69859) b!146945))

(assert (= (and b!146945 res!69860) b!146946))

(assert (= (and b!146946 res!69861) b!146947))

(declare-fun m!176959 () Bool)

(assert (=> d!46427 m!176959))

(declare-fun m!176961 () Bool)

(assert (=> b!146945 m!176961))

(declare-fun m!176963 () Bool)

(assert (=> b!146946 m!176963))

(declare-fun m!176965 () Bool)

(assert (=> b!146947 m!176965))

(assert (=> b!146819 d!46427))

(declare-fun d!46429 () Bool)

(declare-fun e!95943 () Bool)

(assert (=> d!46429 e!95943))

(declare-fun res!69864 () Bool)

(assert (=> d!46429 (=> res!69864 e!95943)))

(declare-fun lt!77492 () Bool)

(assert (=> d!46429 (= res!69864 (not lt!77492))))

(declare-fun lt!77491 () Bool)

(assert (=> d!46429 (= lt!77492 lt!77491)))

(declare-fun lt!77493 () Unit!4651)

(declare-fun e!95944 () Unit!4651)

(assert (=> d!46429 (= lt!77493 e!95944)))

(declare-fun c!27731 () Bool)

(assert (=> d!46429 (= c!27731 lt!77491)))

(declare-fun containsKey!184 (List!1802 (_ BitVec 64)) Bool)

(assert (=> d!46429 (= lt!77491 (containsKey!184 (toList!908 lt!77320) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(assert (=> d!46429 (= (contains!949 lt!77320 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)) lt!77492)))

(declare-fun b!146954 () Bool)

(declare-fun lt!77490 () Unit!4651)

(assert (=> b!146954 (= e!95944 lt!77490)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!133 (List!1802 (_ BitVec 64)) Unit!4651)

(assert (=> b!146954 (= lt!77490 (lemmaContainsKeyImpliesGetValueByKeyDefined!133 (toList!908 lt!77320) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-datatypes ((Option!186 0))(
  ( (Some!185 (v!3367 V!3627)) (None!184) )
))
(declare-fun isDefined!134 (Option!186) Bool)

(declare-fun getValueByKey!180 (List!1802 (_ BitVec 64)) Option!186)

(assert (=> b!146954 (isDefined!134 (getValueByKey!180 (toList!908 lt!77320) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun b!146955 () Bool)

(declare-fun Unit!4659 () Unit!4651)

(assert (=> b!146955 (= e!95944 Unit!4659)))

(declare-fun b!146956 () Bool)

(assert (=> b!146956 (= e!95943 (isDefined!134 (getValueByKey!180 (toList!908 lt!77320) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355))))))

(assert (= (and d!46429 c!27731) b!146954))

(assert (= (and d!46429 (not c!27731)) b!146955))

(assert (= (and d!46429 (not res!69864)) b!146956))

(assert (=> d!46429 m!176769))

(declare-fun m!176967 () Bool)

(assert (=> d!46429 m!176967))

(assert (=> b!146954 m!176769))

(declare-fun m!176969 () Bool)

(assert (=> b!146954 m!176969))

(assert (=> b!146954 m!176769))

(declare-fun m!176971 () Bool)

(assert (=> b!146954 m!176971))

(assert (=> b!146954 m!176971))

(declare-fun m!176973 () Bool)

(assert (=> b!146954 m!176973))

(assert (=> b!146956 m!176769))

(assert (=> b!146956 m!176971))

(assert (=> b!146956 m!176971))

(assert (=> b!146956 m!176973))

(assert (=> b!146818 d!46429))

(declare-fun b!147041 () Bool)

(declare-fun lt!77549 () Unit!4651)

(declare-fun lt!77561 () Unit!4651)

(assert (=> b!147041 (= lt!77549 lt!77561)))

(declare-fun call!16456 () Bool)

(assert (=> b!147041 call!16456))

(declare-datatypes ((SeekEntryResult!294 0))(
  ( (MissingZero!294 (index!3343 (_ BitVec 32))) (Found!294 (index!3344 (_ BitVec 32))) (Intermediate!294 (undefined!1106 Bool) (index!3345 (_ BitVec 32)) (x!16720 (_ BitVec 32))) (Undefined!294) (MissingVacant!294 (index!3346 (_ BitVec 32))) )
))
(declare-fun lt!77548 () SeekEntryResult!294)

(declare-fun lt!77559 () array!5016)

(declare-fun lemmaValidKeyInArrayIsInListMap!128 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 32) Int) Unit!4651)

(assert (=> b!147041 (= lt!77561 (lemmaValidKeyInArrayIsInListMap!128 (_keys!4788 newMap!16) lt!77559 (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) (index!3344 lt!77548) (defaultEntry!3019 newMap!16)))))

(assert (=> b!147041 (= lt!77559 (array!5017 (store (arr!2369 (_values!3002 newMap!16)) (index!3344 lt!77548) (ValueCellFull!1149 lt!77323)) (size!2645 (_values!3002 newMap!16))))))

(declare-fun lt!77563 () Unit!4651)

(declare-fun lt!77557 () Unit!4651)

(assert (=> b!147041 (= lt!77563 lt!77557)))

(declare-fun call!16462 () ListLongMap!1785)

(declare-fun call!16454 () ListLongMap!1785)

(assert (=> b!147041 (= call!16462 call!16454)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!70 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 32) (_ BitVec 64) V!3627 Int) Unit!4651)

(assert (=> b!147041 (= lt!77557 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!70 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) (index!3344 lt!77548) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 (defaultEntry!3019 newMap!16)))))

(declare-fun lt!77550 () Unit!4651)

(declare-fun e!96004 () Unit!4651)

(assert (=> b!147041 (= lt!77550 e!96004)))

(declare-fun c!27773 () Bool)

(assert (=> b!147041 (= c!27773 (contains!949 (getCurrentListMap!571 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3019 newMap!16)) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun e!95991 () tuple2!2754)

(assert (=> b!147041 (= e!95991 (tuple2!2755 true (LongMapFixedSize!1207 (defaultEntry!3019 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) (_size!652 newMap!16) (_keys!4788 newMap!16) (array!5017 (store (arr!2369 (_values!3002 newMap!16)) (index!3344 lt!77548) (ValueCellFull!1149 lt!77323)) (size!2645 (_values!3002 newMap!16))) (_vacant!652 newMap!16))))))

(declare-fun bm!16446 () Bool)

(declare-fun call!16453 () Bool)

(declare-fun call!16459 () Bool)

(assert (=> bm!16446 (= call!16453 call!16459)))

(declare-fun b!147042 () Bool)

(declare-fun res!69894 () Bool)

(declare-fun lt!77560 () SeekEntryResult!294)

(assert (=> b!147042 (= res!69894 (= (select (arr!2368 (_keys!4788 newMap!16)) (index!3346 lt!77560)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!96002 () Bool)

(assert (=> b!147042 (=> (not res!69894) (not e!96002))))

(declare-fun b!147043 () Bool)

(declare-fun e!96009 () ListLongMap!1785)

(declare-fun call!16455 () ListLongMap!1785)

(assert (=> b!147043 (= e!96009 call!16455)))

(declare-fun b!147044 () Bool)

(declare-fun res!69898 () Bool)

(declare-fun call!16451 () Bool)

(assert (=> b!147044 (= res!69898 call!16451)))

(declare-fun e!95990 () Bool)

(assert (=> b!147044 (=> (not res!69898) (not e!95990))))

(declare-fun b!147045 () Bool)

(declare-fun res!69901 () Bool)

(declare-fun call!16468 () Bool)

(assert (=> b!147045 (= res!69901 call!16468)))

(declare-fun e!95993 () Bool)

(assert (=> b!147045 (=> (not res!69901) (not e!95993))))

(declare-fun lt!77564 () SeekEntryResult!294)

(declare-fun c!27772 () Bool)

(declare-fun bm!16447 () Bool)

(declare-fun lt!77569 () SeekEntryResult!294)

(declare-fun c!27769 () Bool)

(declare-fun lt!77565 () SeekEntryResult!294)

(declare-fun call!16461 () Bool)

(declare-fun c!27763 () Bool)

(declare-fun c!27767 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!16447 (= call!16461 (inRange!0 (ite c!27769 (ite c!27763 (index!3344 lt!77564) (ite c!27772 (index!3343 lt!77565) (index!3346 lt!77565))) (ite c!27773 (index!3344 lt!77569) (ite c!27767 (index!3343 lt!77560) (index!3346 lt!77560)))) (mask!7399 newMap!16)))))

(declare-fun bm!16448 () Bool)

(declare-fun call!16449 () ListLongMap!1785)

(declare-fun lt!77553 () tuple2!2754)

(assert (=> bm!16448 (= call!16449 (map!1472 (_2!1387 lt!77553)))))

(declare-fun b!147046 () Bool)

(declare-fun e!95999 () Bool)

(declare-fun call!16458 () Bool)

(assert (=> b!147046 (= e!95999 (not call!16458))))

(declare-fun b!147047 () Bool)

(declare-fun e!95996 () Bool)

(assert (=> b!147047 (= e!95996 (not call!16453))))

(declare-fun b!147048 () Bool)

(declare-fun e!95997 () Bool)

(declare-fun e!95994 () Bool)

(assert (=> b!147048 (= e!95997 e!95994)))

(declare-fun res!69902 () Bool)

(assert (=> b!147048 (= res!69902 (contains!949 call!16449 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(assert (=> b!147048 (=> (not res!69902) (not e!95994))))

(declare-fun b!147049 () Bool)

(declare-fun e!96010 () tuple2!2754)

(declare-fun e!95995 () tuple2!2754)

(assert (=> b!147049 (= e!96010 e!95995)))

(declare-fun c!27771 () Bool)

(assert (=> b!147049 (= c!27771 (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16449 () Bool)

(declare-fun call!16452 () SeekEntryResult!294)

(declare-fun call!16465 () SeekEntryResult!294)

(assert (=> bm!16449 (= call!16452 call!16465)))

(declare-fun b!147050 () Bool)

(declare-fun res!69904 () Bool)

(declare-fun e!96005 () Bool)

(assert (=> b!147050 (=> (not res!69904) (not e!96005))))

(assert (=> b!147050 (= res!69904 (= (select (arr!2368 (_keys!4788 newMap!16)) (index!3343 lt!77565)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!147051 () Bool)

(declare-fun lt!77571 () Unit!4651)

(declare-fun lt!77558 () Unit!4651)

(assert (=> b!147051 (= lt!77571 lt!77558)))

(declare-fun call!16463 () ListLongMap!1785)

(declare-fun call!16457 () ListLongMap!1785)

(assert (=> b!147051 (= call!16463 call!16457)))

(declare-fun lt!77566 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!70 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 V!3627 Int) Unit!4651)

(assert (=> b!147051 (= lt!77558 (lemmaChangeLongMinValueKeyThenAddPairToListMap!70 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) lt!77566 (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) lt!77323 (defaultEntry!3019 newMap!16)))))

(assert (=> b!147051 (= lt!77566 (bvor (extraKeys!2764 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!147051 (= e!95995 (tuple2!2755 true (LongMapFixedSize!1207 (defaultEntry!3019 newMap!16) (mask!7399 newMap!16) (bvor (extraKeys!2764 newMap!16) #b00000000000000000000000000000010) (zeroValue!2864 newMap!16) lt!77323 (_size!652 newMap!16) (_keys!4788 newMap!16) (_values!3002 newMap!16) (_vacant!652 newMap!16))))))

(declare-fun bm!16450 () Bool)

(declare-fun c!27766 () Bool)

(assert (=> bm!16450 (= c!27766 c!27769)))

(assert (=> bm!16450 (= call!16456 (contains!949 e!96009 (ite c!27769 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (select (arr!2368 (_keys!4788 newMap!16)) (index!3344 lt!77548)))))))

(declare-fun bm!16451 () Bool)

(declare-fun call!16469 () ListLongMap!1785)

(assert (=> bm!16451 (= call!16457 call!16469)))

(declare-fun b!147052 () Bool)

(declare-fun res!69897 () Bool)

(assert (=> b!147052 (=> (not res!69897) (not e!96005))))

(declare-fun call!16470 () Bool)

(assert (=> b!147052 (= res!69897 call!16470)))

(declare-fun e!96003 () Bool)

(assert (=> b!147052 (= e!96003 e!96005)))

(declare-fun b!147053 () Bool)

(declare-fun e!95998 () Bool)

(assert (=> b!147053 (= e!95998 e!95997)))

(declare-fun c!27761 () Bool)

(assert (=> b!147053 (= c!27761 (_1!1387 lt!77553))))

(declare-fun b!147054 () Bool)

(declare-fun e!96008 () Bool)

(assert (=> b!147054 (= e!96008 e!95999)))

(declare-fun res!69905 () Bool)

(assert (=> b!147054 (= res!69905 call!16470)))

(assert (=> b!147054 (=> (not res!69905) (not e!95999))))

(declare-fun call!16466 () ListLongMap!1785)

(declare-fun b!147055 () Bool)

(assert (=> b!147055 (= e!95994 (= call!16449 (+!182 call!16466 (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323))))))

(declare-fun b!147056 () Bool)

(assert (=> b!147056 (= e!96009 call!16454)))

(declare-fun b!147057 () Bool)

(declare-fun res!69896 () Bool)

(assert (=> b!147057 (=> (not res!69896) (not e!95996))))

(assert (=> b!147057 (= res!69896 (= (select (arr!2368 (_keys!4788 newMap!16)) (index!3343 lt!77560)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!16472 () tuple2!2754)

(declare-fun bm!16452 () Bool)

(declare-fun c!27764 () Bool)

(declare-fun updateHelperNewKey!70 (LongMapFixedSize!1206 (_ BitVec 64) V!3627 (_ BitVec 32)) tuple2!2754)

(assert (=> bm!16452 (= call!16472 (updateHelperNewKey!70 newMap!16 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 (ite c!27764 (index!3346 lt!77548) (index!3343 lt!77548))))))

(declare-fun bm!16453 () Bool)

(assert (=> bm!16453 (= call!16463 call!16462)))

(declare-fun bm!16454 () Bool)

(declare-fun call!16471 () Bool)

(assert (=> bm!16454 (= call!16471 call!16468)))

(declare-fun bm!16455 () Bool)

(assert (=> bm!16455 (= call!16454 call!16469)))

(declare-fun b!147058 () Bool)

(declare-fun lt!77555 () Unit!4651)

(declare-fun lt!77574 () Unit!4651)

(assert (=> b!147058 (= lt!77555 lt!77574)))

(declare-fun call!16460 () ListLongMap!1785)

(assert (=> b!147058 (= call!16463 call!16460)))

(declare-fun lt!77572 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!70 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 V!3627 Int) Unit!4651)

(assert (=> b!147058 (= lt!77574 (lemmaChangeZeroKeyThenAddPairToListMap!70 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) lt!77572 (zeroValue!2864 newMap!16) lt!77323 (minValue!2864 newMap!16) (defaultEntry!3019 newMap!16)))))

(assert (=> b!147058 (= lt!77572 (bvor (extraKeys!2764 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!147058 (= e!95995 (tuple2!2755 true (LongMapFixedSize!1207 (defaultEntry!3019 newMap!16) (mask!7399 newMap!16) (bvor (extraKeys!2764 newMap!16) #b00000000000000000000000000000001) lt!77323 (minValue!2864 newMap!16) (_size!652 newMap!16) (_keys!4788 newMap!16) (_values!3002 newMap!16) (_vacant!652 newMap!16))))))

(declare-fun b!147059 () Bool)

(declare-fun e!96001 () tuple2!2754)

(declare-fun lt!77552 () tuple2!2754)

(assert (=> b!147059 (= e!96001 (tuple2!2755 (_1!1387 lt!77552) (_2!1387 lt!77552)))))

(assert (=> b!147059 (= lt!77552 call!16472)))

(declare-fun b!147060 () Bool)

(declare-fun e!96006 () Unit!4651)

(declare-fun lt!77570 () Unit!4651)

(assert (=> b!147060 (= e!96006 lt!77570)))

(declare-fun call!16464 () Unit!4651)

(assert (=> b!147060 (= lt!77570 call!16464)))

(declare-fun call!16450 () SeekEntryResult!294)

(assert (=> b!147060 (= lt!77565 call!16450)))

(assert (=> b!147060 (= c!27772 ((_ is MissingZero!294) lt!77565))))

(assert (=> b!147060 e!96003))

(declare-fun bm!16456 () Bool)

(assert (=> bm!16456 (= call!16451 call!16461)))

(declare-fun call!16467 () Unit!4651)

(declare-fun bm!16457 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!70 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 64) Int) Unit!4651)

(assert (=> bm!16457 (= call!16467 (lemmaInListMapThenSeekEntryOrOpenFindsIt!70 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (defaultEntry!3019 newMap!16)))))

(declare-fun b!147061 () Bool)

(declare-fun res!69903 () Bool)

(assert (=> b!147061 (=> (not res!69903) (not e!95996))))

(assert (=> b!147061 (= res!69903 call!16471)))

(declare-fun e!96000 () Bool)

(assert (=> b!147061 (= e!96000 e!95996)))

(declare-fun c!27770 () Bool)

(declare-fun bm!16458 () Bool)

(assert (=> bm!16458 (= call!16469 (getCurrentListMap!571 (_keys!4788 newMap!16) (ite (or c!27770 c!27769) (_values!3002 newMap!16) (array!5017 (store (arr!2369 (_values!3002 newMap!16)) (index!3344 lt!77548) (ValueCellFull!1149 lt!77323)) (size!2645 (_values!3002 newMap!16)))) (mask!7399 newMap!16) (ite c!27770 (ite c!27771 (extraKeys!2764 newMap!16) lt!77566) (extraKeys!2764 newMap!16)) (zeroValue!2864 newMap!16) (ite c!27770 (ite c!27771 (minValue!2864 newMap!16) lt!77323) (minValue!2864 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!3019 newMap!16)))))

(declare-fun b!147062 () Bool)

(assert (=> b!147062 (= e!96002 (not call!16453))))

(declare-fun b!147063 () Bool)

(declare-fun res!69893 () Bool)

(assert (=> b!147063 (= res!69893 (= (select (arr!2368 (_keys!4788 newMap!16)) (index!3346 lt!77565)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!147063 (=> (not res!69893) (not e!95999))))

(declare-fun b!147064 () Bool)

(assert (=> b!147064 (= e!95990 (= (select (arr!2368 (_keys!4788 newMap!16)) (index!3344 lt!77564)) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun d!46431 () Bool)

(assert (=> d!46431 e!95998))

(declare-fun res!69900 () Bool)

(assert (=> d!46431 (=> (not res!69900) (not e!95998))))

(assert (=> d!46431 (= res!69900 (valid!588 (_2!1387 lt!77553)))))

(assert (=> d!46431 (= lt!77553 e!96010)))

(assert (=> d!46431 (= c!27770 (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvneg (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355))))))

(assert (=> d!46431 (valid!588 newMap!16)))

(assert (=> d!46431 (= (update!226 newMap!16 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323) lt!77553)))

(declare-fun bm!16459 () Bool)

(assert (=> bm!16459 (= call!16468 call!16461)))

(declare-fun b!147065 () Bool)

(declare-fun Unit!4660 () Unit!4651)

(assert (=> b!147065 (= e!96004 Unit!4660)))

(declare-fun lt!77554 () Unit!4651)

(assert (=> b!147065 (= lt!77554 call!16464)))

(assert (=> b!147065 (= lt!77560 call!16452)))

(assert (=> b!147065 (= c!27767 ((_ is MissingZero!294) lt!77560))))

(assert (=> b!147065 e!96000))

(declare-fun lt!77567 () Unit!4651)

(assert (=> b!147065 (= lt!77567 lt!77554)))

(assert (=> b!147065 false))

(declare-fun b!147066 () Bool)

(declare-fun e!95989 () tuple2!2754)

(assert (=> b!147066 (= e!96010 e!95989)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5014 (_ BitVec 32)) SeekEntryResult!294)

(assert (=> b!147066 (= lt!77548 (seekEntryOrOpen!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (_keys!4788 newMap!16) (mask!7399 newMap!16)))))

(assert (=> b!147066 (= c!27769 ((_ is Undefined!294) lt!77548))))

(declare-fun b!147067 () Bool)

(declare-fun e!95992 () Bool)

(assert (=> b!147067 (= e!95992 e!96002)))

(declare-fun res!69906 () Bool)

(assert (=> b!147067 (= res!69906 call!16471)))

(assert (=> b!147067 (=> (not res!69906) (not e!96002))))

(declare-fun bm!16460 () Bool)

(assert (=> bm!16460 (= call!16459 (arrayContainsKey!0 (_keys!4788 newMap!16) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!16461 () Bool)

(assert (=> bm!16461 (= call!16460 call!16455)))

(declare-fun bm!16462 () Bool)

(assert (=> bm!16462 (= call!16465 (seekEntryOrOpen!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (_keys!4788 newMap!16) (mask!7399 newMap!16)))))

(declare-fun bm!16463 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!70 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 64) Int) Unit!4651)

(assert (=> bm!16463 (= call!16464 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!70 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (defaultEntry!3019 newMap!16)))))

(declare-fun b!147068 () Bool)

(declare-fun lt!77568 () Unit!4651)

(assert (=> b!147068 (= lt!77568 e!96006)))

(assert (=> b!147068 (= c!27763 call!16456)))

(assert (=> b!147068 (= e!95989 (tuple2!2755 false newMap!16))))

(declare-fun b!147069 () Bool)

(declare-fun lt!77556 () tuple2!2754)

(assert (=> b!147069 (= lt!77556 call!16472)))

(assert (=> b!147069 (= e!95991 (tuple2!2755 (_1!1387 lt!77556) (_2!1387 lt!77556)))))

(declare-fun e!96007 () ListLongMap!1785)

(declare-fun b!147070 () Bool)

(assert (=> b!147070 (= e!96007 (ite c!27771 call!16457 call!16460))))

(declare-fun b!147071 () Bool)

(declare-fun Unit!4661 () Unit!4651)

(assert (=> b!147071 (= e!96006 Unit!4661)))

(declare-fun lt!77573 () Unit!4651)

(assert (=> b!147071 (= lt!77573 call!16467)))

(assert (=> b!147071 (= lt!77564 call!16450)))

(declare-fun res!69899 () Bool)

(assert (=> b!147071 (= res!69899 ((_ is Found!294) lt!77564))))

(assert (=> b!147071 (=> (not res!69899) (not e!95990))))

(assert (=> b!147071 e!95990))

(declare-fun lt!77551 () Unit!4651)

(assert (=> b!147071 (= lt!77551 lt!77573)))

(assert (=> b!147071 false))

(declare-fun bm!16464 () Bool)

(assert (=> bm!16464 (= call!16470 call!16451)))

(declare-fun b!147072 () Bool)

(assert (=> b!147072 (= e!96001 e!95991)))

(declare-fun c!27760 () Bool)

(assert (=> b!147072 (= c!27760 ((_ is MissingZero!294) lt!77548))))

(declare-fun b!147073 () Bool)

(assert (=> b!147073 (= e!96005 (not call!16458))))

(declare-fun b!147074 () Bool)

(assert (=> b!147074 (= e!96007 (getCurrentListMap!571 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3019 newMap!16)))))

(declare-fun b!147075 () Bool)

(declare-fun c!27768 () Bool)

(assert (=> b!147075 (= c!27768 ((_ is MissingVacant!294) lt!77565))))

(assert (=> b!147075 (= e!96003 e!96008)))

(declare-fun b!147076 () Bool)

(declare-fun lt!77562 () Unit!4651)

(assert (=> b!147076 (= e!96004 lt!77562)))

(assert (=> b!147076 (= lt!77562 call!16467)))

(assert (=> b!147076 (= lt!77569 call!16452)))

(declare-fun res!69895 () Bool)

(assert (=> b!147076 (= res!69895 ((_ is Found!294) lt!77569))))

(assert (=> b!147076 (=> (not res!69895) (not e!95993))))

(assert (=> b!147076 e!95993))

(declare-fun b!147077 () Bool)

(declare-fun c!27762 () Bool)

(assert (=> b!147077 (= c!27762 ((_ is MissingVacant!294) lt!77560))))

(assert (=> b!147077 (= e!96000 e!95992)))

(declare-fun b!147078 () Bool)

(assert (=> b!147078 (= e!96008 ((_ is Undefined!294) lt!77565))))

(declare-fun bm!16465 () Bool)

(assert (=> bm!16465 (= call!16466 (map!1472 newMap!16))))

(declare-fun bm!16466 () Bool)

(assert (=> bm!16466 (= call!16450 call!16465)))

(declare-fun bm!16467 () Bool)

(assert (=> bm!16467 (= call!16462 (+!182 e!96007 (ite c!27770 (ite c!27771 (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 lt!77323) (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 lt!77323)) (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323))))))

(declare-fun c!27765 () Bool)

(assert (=> bm!16467 (= c!27765 c!27770)))

(declare-fun b!147079 () Bool)

(assert (=> b!147079 (= e!95993 (= (select (arr!2368 (_keys!4788 newMap!16)) (index!3344 lt!77569)) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun bm!16468 () Bool)

(assert (=> bm!16468 (= call!16458 call!16459)))

(declare-fun b!147080 () Bool)

(assert (=> b!147080 (= e!95997 (= call!16449 call!16466))))

(declare-fun b!147081 () Bool)

(assert (=> b!147081 (= c!27764 ((_ is MissingVacant!294) lt!77548))))

(assert (=> b!147081 (= e!95989 e!96001)))

(declare-fun bm!16469 () Bool)

(assert (=> bm!16469 (= call!16455 (getCurrentListMap!571 (_keys!4788 newMap!16) (ite c!27770 (_values!3002 newMap!16) lt!77559) (mask!7399 newMap!16) (ite (and c!27770 c!27771) lt!77572 (extraKeys!2764 newMap!16)) (ite (and c!27770 c!27771) lt!77323 (zeroValue!2864 newMap!16)) (minValue!2864 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3019 newMap!16)))))

(declare-fun b!147082 () Bool)

(assert (=> b!147082 (= e!95992 ((_ is Undefined!294) lt!77560))))

(assert (= (and d!46431 c!27770) b!147049))

(assert (= (and d!46431 (not c!27770)) b!147066))

(assert (= (and b!147049 c!27771) b!147058))

(assert (= (and b!147049 (not c!27771)) b!147051))

(assert (= (or b!147058 b!147051) bm!16451))

(assert (= (or b!147058 b!147051) bm!16461))

(assert (= (or b!147058 b!147051) bm!16453))

(assert (= (and b!147066 c!27769) b!147068))

(assert (= (and b!147066 (not c!27769)) b!147081))

(assert (= (and b!147068 c!27763) b!147071))

(assert (= (and b!147068 (not c!27763)) b!147060))

(assert (= (and b!147071 res!69899) b!147044))

(assert (= (and b!147044 res!69898) b!147064))

(assert (= (and b!147060 c!27772) b!147052))

(assert (= (and b!147060 (not c!27772)) b!147075))

(assert (= (and b!147052 res!69897) b!147050))

(assert (= (and b!147050 res!69904) b!147073))

(assert (= (and b!147075 c!27768) b!147054))

(assert (= (and b!147075 (not c!27768)) b!147078))

(assert (= (and b!147054 res!69905) b!147063))

(assert (= (and b!147063 res!69893) b!147046))

(assert (= (or b!147052 b!147054) bm!16464))

(assert (= (or b!147073 b!147046) bm!16468))

(assert (= (or b!147044 bm!16464) bm!16456))

(assert (= (or b!147071 b!147060) bm!16466))

(assert (= (and b!147081 c!27764) b!147059))

(assert (= (and b!147081 (not c!27764)) b!147072))

(assert (= (and b!147072 c!27760) b!147069))

(assert (= (and b!147072 (not c!27760)) b!147041))

(assert (= (and b!147041 c!27773) b!147076))

(assert (= (and b!147041 (not c!27773)) b!147065))

(assert (= (and b!147076 res!69895) b!147045))

(assert (= (and b!147045 res!69901) b!147079))

(assert (= (and b!147065 c!27767) b!147061))

(assert (= (and b!147065 (not c!27767)) b!147077))

(assert (= (and b!147061 res!69903) b!147057))

(assert (= (and b!147057 res!69896) b!147047))

(assert (= (and b!147077 c!27762) b!147067))

(assert (= (and b!147077 (not c!27762)) b!147082))

(assert (= (and b!147067 res!69906) b!147042))

(assert (= (and b!147042 res!69894) b!147062))

(assert (= (or b!147061 b!147067) bm!16454))

(assert (= (or b!147047 b!147062) bm!16446))

(assert (= (or b!147045 bm!16454) bm!16459))

(assert (= (or b!147076 b!147065) bm!16449))

(assert (= (or b!147059 b!147069) bm!16452))

(assert (= (or bm!16466 bm!16449) bm!16462))

(assert (= (or b!147068 b!147041) bm!16455))

(assert (= (or b!147071 b!147076) bm!16457))

(assert (= (or b!147060 b!147065) bm!16463))

(assert (= (or bm!16468 bm!16446) bm!16460))

(assert (= (or bm!16456 bm!16459) bm!16447))

(assert (= (or b!147068 b!147041) bm!16450))

(assert (= (and bm!16450 c!27766) b!147056))

(assert (= (and bm!16450 (not c!27766)) b!147043))

(assert (= (or bm!16451 bm!16455) bm!16458))

(assert (= (or bm!16461 b!147043) bm!16469))

(assert (= (or bm!16453 b!147041) bm!16467))

(assert (= (and bm!16467 c!27765) b!147070))

(assert (= (and bm!16467 (not c!27765)) b!147074))

(assert (= (and d!46431 res!69900) b!147053))

(assert (= (and b!147053 c!27761) b!147048))

(assert (= (and b!147053 (not c!27761)) b!147080))

(assert (= (and b!147048 res!69902) b!147055))

(assert (= (or b!147048 b!147055 b!147080) bm!16448))

(assert (= (or b!147055 b!147080) bm!16465))

(declare-fun m!176975 () Bool)

(assert (=> b!147079 m!176975))

(assert (=> bm!16463 m!176769))

(declare-fun m!176977 () Bool)

(assert (=> bm!16463 m!176977))

(declare-fun m!176979 () Bool)

(assert (=> bm!16450 m!176979))

(declare-fun m!176981 () Bool)

(assert (=> bm!16450 m!176981))

(declare-fun m!176983 () Bool)

(assert (=> bm!16447 m!176983))

(assert (=> bm!16465 m!176777))

(assert (=> b!147048 m!176769))

(declare-fun m!176985 () Bool)

(assert (=> b!147048 m!176985))

(assert (=> bm!16457 m!176769))

(declare-fun m!176987 () Bool)

(assert (=> bm!16457 m!176987))

(assert (=> bm!16452 m!176769))

(declare-fun m!176989 () Bool)

(assert (=> bm!16452 m!176989))

(declare-fun m!176991 () Bool)

(assert (=> b!147074 m!176991))

(declare-fun m!176993 () Bool)

(assert (=> bm!16448 m!176993))

(assert (=> b!147041 m!176991))

(declare-fun m!176995 () Bool)

(assert (=> b!147041 m!176995))

(declare-fun m!176997 () Bool)

(assert (=> b!147041 m!176997))

(assert (=> b!147041 m!176991))

(assert (=> b!147041 m!176769))

(declare-fun m!176999 () Bool)

(assert (=> b!147041 m!176999))

(assert (=> b!147041 m!176769))

(declare-fun m!177001 () Bool)

(assert (=> b!147041 m!177001))

(declare-fun m!177003 () Bool)

(assert (=> b!147055 m!177003))

(declare-fun m!177005 () Bool)

(assert (=> b!147042 m!177005))

(declare-fun m!177007 () Bool)

(assert (=> b!147058 m!177007))

(assert (=> bm!16460 m!176769))

(declare-fun m!177009 () Bool)

(assert (=> bm!16460 m!177009))

(declare-fun m!177011 () Bool)

(assert (=> b!147051 m!177011))

(assert (=> bm!16462 m!176769))

(declare-fun m!177013 () Bool)

(assert (=> bm!16462 m!177013))

(declare-fun m!177015 () Bool)

(assert (=> b!147063 m!177015))

(assert (=> b!147066 m!176769))

(assert (=> b!147066 m!177013))

(declare-fun m!177017 () Bool)

(assert (=> d!46431 m!177017))

(assert (=> d!46431 m!176755))

(declare-fun m!177019 () Bool)

(assert (=> b!147050 m!177019))

(declare-fun m!177021 () Bool)

(assert (=> b!147064 m!177021))

(declare-fun m!177023 () Bool)

(assert (=> bm!16467 m!177023))

(assert (=> bm!16458 m!176997))

(declare-fun m!177025 () Bool)

(assert (=> bm!16458 m!177025))

(declare-fun m!177027 () Bool)

(assert (=> b!147057 m!177027))

(declare-fun m!177029 () Bool)

(assert (=> bm!16469 m!177029))

(assert (=> b!146818 d!46431))

(declare-fun d!46433 () Bool)

(assert (=> d!46433 (= (map!1472 newMap!16) (getCurrentListMap!571 (_keys!4788 newMap!16) (_values!3002 newMap!16) (mask!7399 newMap!16) (extraKeys!2764 newMap!16) (zeroValue!2864 newMap!16) (minValue!2864 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3019 newMap!16)))))

(declare-fun bs!6157 () Bool)

(assert (= bs!6157 d!46433))

(assert (=> bs!6157 m!176991))

(assert (=> b!146820 d!46433))

(declare-fun b!147125 () Bool)

(declare-fun c!27787 () Bool)

(assert (=> b!147125 (= c!27787 (and (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!96043 () ListLongMap!1785)

(declare-fun e!96040 () ListLongMap!1785)

(assert (=> b!147125 (= e!96043 e!96040)))

(declare-fun b!147126 () Bool)

(declare-fun e!96046 () Bool)

(declare-fun call!16490 () Bool)

(assert (=> b!147126 (= e!96046 (not call!16490))))

(declare-fun d!46435 () Bool)

(declare-fun e!96041 () Bool)

(assert (=> d!46435 e!96041))

(declare-fun res!69927 () Bool)

(assert (=> d!46435 (=> (not res!69927) (not e!96041))))

(assert (=> d!46435 (= res!69927 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))))

(declare-fun lt!77635 () ListLongMap!1785)

(declare-fun lt!77636 () ListLongMap!1785)

(assert (=> d!46435 (= lt!77635 lt!77636)))

(declare-fun lt!77631 () Unit!4651)

(declare-fun e!96044 () Unit!4651)

(assert (=> d!46435 (= lt!77631 e!96044)))

(declare-fun c!27788 () Bool)

(declare-fun e!96049 () Bool)

(assert (=> d!46435 (= c!27788 e!96049)))

(declare-fun res!69926 () Bool)

(assert (=> d!46435 (=> (not res!69926) (not e!96049))))

(assert (=> d!46435 (= res!69926 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun e!96038 () ListLongMap!1785)

(assert (=> d!46435 (= lt!77636 e!96038)))

(declare-fun c!27786 () Bool)

(assert (=> d!46435 (= c!27786 (and (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!46435 (validMask!0 (mask!7399 (v!3363 (underlying!505 thiss!992))))))

(assert (=> d!46435 (= (getCurrentListMap!571 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))) lt!77635)))

(declare-fun b!147127 () Bool)

(assert (=> b!147127 (= e!96038 e!96043)))

(declare-fun c!27789 () Bool)

(assert (=> b!147127 (= c!27789 (and (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!147128 () Bool)

(declare-fun e!96037 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!147128 (= e!96037 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!147129 () Bool)

(assert (=> b!147129 (= e!96049 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!16484 () Bool)

(assert (=> bm!16484 (= call!16490 (contains!949 lt!77635 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16485 () Bool)

(declare-fun call!16491 () ListLongMap!1785)

(declare-fun call!16489 () ListLongMap!1785)

(assert (=> bm!16485 (= call!16491 call!16489)))

(declare-fun b!147130 () Bool)

(declare-fun call!16487 () ListLongMap!1785)

(assert (=> b!147130 (= e!96038 (+!182 call!16487 (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!147131 () Bool)

(declare-fun res!69925 () Bool)

(assert (=> b!147131 (=> (not res!69925) (not e!96041))))

(declare-fun e!96047 () Bool)

(assert (=> b!147131 (= res!69925 e!96047)))

(declare-fun res!69931 () Bool)

(assert (=> b!147131 (=> res!69931 e!96047)))

(assert (=> b!147131 (= res!69931 (not e!96037))))

(declare-fun res!69933 () Bool)

(assert (=> b!147131 (=> (not res!69933) (not e!96037))))

(assert (=> b!147131 (= res!69933 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun bm!16486 () Bool)

(assert (=> bm!16486 (= call!16489 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!147132 () Bool)

(declare-fun res!69929 () Bool)

(assert (=> b!147132 (=> (not res!69929) (not e!96041))))

(declare-fun e!96039 () Bool)

(assert (=> b!147132 (= res!69929 e!96039)))

(declare-fun c!27791 () Bool)

(assert (=> b!147132 (= c!27791 (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!147133 () Bool)

(declare-fun e!96048 () Bool)

(declare-fun apply!125 (ListLongMap!1785 (_ BitVec 64)) V!3627)

(assert (=> b!147133 (= e!96048 (= (apply!125 lt!77635 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!147133 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2645 (_values!3002 (v!3363 (underlying!505 thiss!992))))))))

(assert (=> b!147133 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!147134 () Bool)

(declare-fun Unit!4662 () Unit!4651)

(assert (=> b!147134 (= e!96044 Unit!4662)))

(declare-fun bm!16487 () Bool)

(declare-fun call!16488 () Bool)

(assert (=> bm!16487 (= call!16488 (contains!949 lt!77635 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!147135 () Bool)

(declare-fun e!96045 () Bool)

(assert (=> b!147135 (= e!96045 (= (apply!125 lt!77635 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!147136 () Bool)

(assert (=> b!147136 (= e!96039 e!96045)))

(declare-fun res!69930 () Bool)

(assert (=> b!147136 (= res!69930 call!16488)))

(assert (=> b!147136 (=> (not res!69930) (not e!96045))))

(declare-fun b!147137 () Bool)

(assert (=> b!147137 (= e!96039 (not call!16488))))

(declare-fun b!147138 () Bool)

(assert (=> b!147138 (= e!96041 e!96046)))

(declare-fun c!27790 () Bool)

(assert (=> b!147138 (= c!27790 (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!147139 () Bool)

(declare-fun call!16492 () ListLongMap!1785)

(assert (=> b!147139 (= e!96043 call!16492)))

(declare-fun b!147140 () Bool)

(assert (=> b!147140 (= e!96040 call!16492)))

(declare-fun bm!16488 () Bool)

(declare-fun call!16493 () ListLongMap!1785)

(assert (=> bm!16488 (= call!16493 call!16491)))

(declare-fun b!147141 () Bool)

(assert (=> b!147141 (= e!96040 call!16493)))

(declare-fun bm!16489 () Bool)

(assert (=> bm!16489 (= call!16487 (+!182 (ite c!27786 call!16489 (ite c!27789 call!16491 call!16493)) (ite (or c!27786 c!27789) (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))) (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun b!147142 () Bool)

(declare-fun e!96042 () Bool)

(assert (=> b!147142 (= e!96042 (= (apply!125 lt!77635 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!147143 () Bool)

(declare-fun lt!77640 () Unit!4651)

(assert (=> b!147143 (= e!96044 lt!77640)))

(declare-fun lt!77619 () ListLongMap!1785)

(assert (=> b!147143 (= lt!77619 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77630 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77630 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77626 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77626 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!77628 () Unit!4651)

(declare-fun addStillContains!101 (ListLongMap!1785 (_ BitVec 64) V!3627 (_ BitVec 64)) Unit!4651)

(assert (=> b!147143 (= lt!77628 (addStillContains!101 lt!77619 lt!77630 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77626))))

(assert (=> b!147143 (contains!949 (+!182 lt!77619 (tuple2!2757 lt!77630 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77626)))

(declare-fun lt!77637 () Unit!4651)

(assert (=> b!147143 (= lt!77637 lt!77628)))

(declare-fun lt!77639 () ListLongMap!1785)

(assert (=> b!147143 (= lt!77639 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77620 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77620 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77622 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77622 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!77632 () Unit!4651)

(declare-fun addApplyDifferent!101 (ListLongMap!1785 (_ BitVec 64) V!3627 (_ BitVec 64)) Unit!4651)

(assert (=> b!147143 (= lt!77632 (addApplyDifferent!101 lt!77639 lt!77620 (minValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77622))))

(assert (=> b!147143 (= (apply!125 (+!182 lt!77639 (tuple2!2757 lt!77620 (minValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77622) (apply!125 lt!77639 lt!77622))))

(declare-fun lt!77624 () Unit!4651)

(assert (=> b!147143 (= lt!77624 lt!77632)))

(declare-fun lt!77638 () ListLongMap!1785)

(assert (=> b!147143 (= lt!77638 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77633 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77633 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77623 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77623 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!77627 () Unit!4651)

(assert (=> b!147143 (= lt!77627 (addApplyDifferent!101 lt!77638 lt!77633 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77623))))

(assert (=> b!147143 (= (apply!125 (+!182 lt!77638 (tuple2!2757 lt!77633 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77623) (apply!125 lt!77638 lt!77623))))

(declare-fun lt!77621 () Unit!4651)

(assert (=> b!147143 (= lt!77621 lt!77627)))

(declare-fun lt!77629 () ListLongMap!1785)

(assert (=> b!147143 (= lt!77629 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77634 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77634 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77625 () (_ BitVec 64))

(assert (=> b!147143 (= lt!77625 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!147143 (= lt!77640 (addApplyDifferent!101 lt!77629 lt!77634 (minValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77625))))

(assert (=> b!147143 (= (apply!125 (+!182 lt!77629 (tuple2!2757 lt!77634 (minValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77625) (apply!125 lt!77629 lt!77625))))

(declare-fun b!147144 () Bool)

(assert (=> b!147144 (= e!96046 e!96042)))

(declare-fun res!69928 () Bool)

(assert (=> b!147144 (= res!69928 call!16490)))

(assert (=> b!147144 (=> (not res!69928) (not e!96042))))

(declare-fun b!147145 () Bool)

(assert (=> b!147145 (= e!96047 e!96048)))

(declare-fun res!69932 () Bool)

(assert (=> b!147145 (=> (not res!69932) (not e!96048))))

(assert (=> b!147145 (= res!69932 (contains!949 lt!77635 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!147145 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun bm!16490 () Bool)

(assert (=> bm!16490 (= call!16492 call!16487)))

(assert (= (and d!46435 c!27786) b!147130))

(assert (= (and d!46435 (not c!27786)) b!147127))

(assert (= (and b!147127 c!27789) b!147139))

(assert (= (and b!147127 (not c!27789)) b!147125))

(assert (= (and b!147125 c!27787) b!147140))

(assert (= (and b!147125 (not c!27787)) b!147141))

(assert (= (or b!147140 b!147141) bm!16488))

(assert (= (or b!147139 bm!16488) bm!16485))

(assert (= (or b!147139 b!147140) bm!16490))

(assert (= (or b!147130 bm!16485) bm!16486))

(assert (= (or b!147130 bm!16490) bm!16489))

(assert (= (and d!46435 res!69926) b!147129))

(assert (= (and d!46435 c!27788) b!147143))

(assert (= (and d!46435 (not c!27788)) b!147134))

(assert (= (and d!46435 res!69927) b!147131))

(assert (= (and b!147131 res!69933) b!147128))

(assert (= (and b!147131 (not res!69931)) b!147145))

(assert (= (and b!147145 res!69932) b!147133))

(assert (= (and b!147131 res!69925) b!147132))

(assert (= (and b!147132 c!27791) b!147136))

(assert (= (and b!147132 (not c!27791)) b!147137))

(assert (= (and b!147136 res!69930) b!147135))

(assert (= (or b!147136 b!147137) bm!16487))

(assert (= (and b!147132 res!69929) b!147138))

(assert (= (and b!147138 c!27790) b!147144))

(assert (= (and b!147138 (not c!27790)) b!147126))

(assert (= (and b!147144 res!69928) b!147142))

(assert (= (or b!147144 b!147126) bm!16484))

(declare-fun b_lambda!6607 () Bool)

(assert (=> (not b_lambda!6607) (not b!147133)))

(assert (=> b!147133 t!6528))

(declare-fun b_and!9237 () Bool)

(assert (= b_and!9233 (and (=> t!6528 result!4385) b_and!9237)))

(assert (=> b!147133 t!6530))

(declare-fun b_and!9239 () Bool)

(assert (= b_and!9235 (and (=> t!6530 result!4389) b_and!9239)))

(declare-fun m!177031 () Bool)

(assert (=> b!147142 m!177031))

(declare-fun m!177033 () Bool)

(assert (=> b!147143 m!177033))

(declare-fun m!177035 () Bool)

(assert (=> b!147143 m!177035))

(declare-fun m!177037 () Bool)

(assert (=> b!147143 m!177037))

(declare-fun m!177039 () Bool)

(assert (=> b!147143 m!177039))

(declare-fun m!177041 () Bool)

(assert (=> b!147143 m!177041))

(declare-fun m!177043 () Bool)

(assert (=> b!147143 m!177043))

(assert (=> b!147143 m!176813))

(declare-fun m!177045 () Bool)

(assert (=> b!147143 m!177045))

(declare-fun m!177047 () Bool)

(assert (=> b!147143 m!177047))

(declare-fun m!177049 () Bool)

(assert (=> b!147143 m!177049))

(declare-fun m!177051 () Bool)

(assert (=> b!147143 m!177051))

(assert (=> b!147143 m!177041))

(declare-fun m!177053 () Bool)

(assert (=> b!147143 m!177053))

(declare-fun m!177055 () Bool)

(assert (=> b!147143 m!177055))

(declare-fun m!177057 () Bool)

(assert (=> b!147143 m!177057))

(assert (=> b!147143 m!177033))

(declare-fun m!177059 () Bool)

(assert (=> b!147143 m!177059))

(assert (=> b!147143 m!177057))

(declare-fun m!177061 () Bool)

(assert (=> b!147143 m!177061))

(assert (=> b!147143 m!177055))

(declare-fun m!177063 () Bool)

(assert (=> b!147143 m!177063))

(declare-fun m!177065 () Bool)

(assert (=> bm!16487 m!177065))

(declare-fun m!177067 () Bool)

(assert (=> d!46435 m!177067))

(assert (=> b!147128 m!177039))

(assert (=> b!147128 m!177039))

(declare-fun m!177069 () Bool)

(assert (=> b!147128 m!177069))

(declare-fun m!177071 () Bool)

(assert (=> bm!16489 m!177071))

(assert (=> b!147133 m!177039))

(declare-fun m!177073 () Bool)

(assert (=> b!147133 m!177073))

(declare-fun m!177075 () Bool)

(assert (=> b!147133 m!177075))

(assert (=> b!147133 m!176825))

(assert (=> b!147133 m!177039))

(assert (=> b!147133 m!177075))

(assert (=> b!147133 m!176825))

(declare-fun m!177077 () Bool)

(assert (=> b!147133 m!177077))

(assert (=> b!147145 m!177039))

(assert (=> b!147145 m!177039))

(declare-fun m!177079 () Bool)

(assert (=> b!147145 m!177079))

(assert (=> bm!16486 m!176813))

(declare-fun m!177081 () Bool)

(assert (=> bm!16484 m!177081))

(declare-fun m!177083 () Bool)

(assert (=> b!147130 m!177083))

(assert (=> b!147129 m!177039))

(assert (=> b!147129 m!177039))

(assert (=> b!147129 m!177069))

(declare-fun m!177085 () Bool)

(assert (=> b!147135 m!177085))

(assert (=> b!146820 d!46435))

(declare-fun d!46437 () Bool)

(declare-fun c!27794 () Bool)

(assert (=> d!46437 (= c!27794 ((_ is ValueCellFull!1149) (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun e!96052 () V!3627)

(assert (=> d!46437 (= (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) from!355) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!96052)))

(declare-fun b!147150 () Bool)

(declare-fun get!1584 (ValueCell!1149 V!3627) V!3627)

(assert (=> b!147150 (= e!96052 (get!1584 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) from!355) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!147151 () Bool)

(declare-fun get!1585 (ValueCell!1149 V!3627) V!3627)

(assert (=> b!147151 (= e!96052 (get!1585 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) from!355) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46437 c!27794) b!147150))

(assert (= (and d!46437 (not c!27794)) b!147151))

(assert (=> b!147150 m!176823))

(assert (=> b!147150 m!176825))

(declare-fun m!177087 () Bool)

(assert (=> b!147150 m!177087))

(assert (=> b!147151 m!176823))

(assert (=> b!147151 m!176825))

(declare-fun m!177089 () Bool)

(assert (=> b!147151 m!177089))

(assert (=> b!146814 d!46437))

(declare-fun d!46439 () Bool)

(assert (=> d!46439 (= (map!1472 (_2!1387 lt!77314)) (getCurrentListMap!571 (_keys!4788 (_2!1387 lt!77314)) (_values!3002 (_2!1387 lt!77314)) (mask!7399 (_2!1387 lt!77314)) (extraKeys!2764 (_2!1387 lt!77314)) (zeroValue!2864 (_2!1387 lt!77314)) (minValue!2864 (_2!1387 lt!77314)) #b00000000000000000000000000000000 (defaultEntry!3019 (_2!1387 lt!77314))))))

(declare-fun bs!6158 () Bool)

(assert (= bs!6158 d!46439))

(declare-fun m!177091 () Bool)

(assert (=> bs!6158 m!177091))

(assert (=> b!146805 d!46439))

(declare-fun d!46441 () Bool)

(declare-fun e!96055 () Bool)

(assert (=> d!46441 e!96055))

(declare-fun res!69938 () Bool)

(assert (=> d!46441 (=> (not res!69938) (not e!96055))))

(declare-fun lt!77652 () ListLongMap!1785)

(assert (=> d!46441 (= res!69938 (contains!949 lt!77652 (_1!1388 lt!77311)))))

(declare-fun lt!77651 () List!1802)

(assert (=> d!46441 (= lt!77652 (ListLongMap!1786 lt!77651))))

(declare-fun lt!77650 () Unit!4651)

(declare-fun lt!77649 () Unit!4651)

(assert (=> d!46441 (= lt!77650 lt!77649)))

(assert (=> d!46441 (= (getValueByKey!180 lt!77651 (_1!1388 lt!77311)) (Some!185 (_2!1388 lt!77311)))))

(declare-fun lemmaContainsTupThenGetReturnValue!95 (List!1802 (_ BitVec 64) V!3627) Unit!4651)

(assert (=> d!46441 (= lt!77649 (lemmaContainsTupThenGetReturnValue!95 lt!77651 (_1!1388 lt!77311) (_2!1388 lt!77311)))))

(declare-fun insertStrictlySorted!97 (List!1802 (_ BitVec 64) V!3627) List!1802)

(assert (=> d!46441 (= lt!77651 (insertStrictlySorted!97 (toList!908 lt!77328) (_1!1388 lt!77311) (_2!1388 lt!77311)))))

(assert (=> d!46441 (= (+!182 lt!77328 lt!77311) lt!77652)))

(declare-fun b!147156 () Bool)

(declare-fun res!69939 () Bool)

(assert (=> b!147156 (=> (not res!69939) (not e!96055))))

(assert (=> b!147156 (= res!69939 (= (getValueByKey!180 (toList!908 lt!77652) (_1!1388 lt!77311)) (Some!185 (_2!1388 lt!77311))))))

(declare-fun b!147157 () Bool)

(declare-fun contains!950 (List!1802 tuple2!2756) Bool)

(assert (=> b!147157 (= e!96055 (contains!950 (toList!908 lt!77652) lt!77311))))

(assert (= (and d!46441 res!69938) b!147156))

(assert (= (and b!147156 res!69939) b!147157))

(declare-fun m!177093 () Bool)

(assert (=> d!46441 m!177093))

(declare-fun m!177095 () Bool)

(assert (=> d!46441 m!177095))

(declare-fun m!177097 () Bool)

(assert (=> d!46441 m!177097))

(declare-fun m!177099 () Bool)

(assert (=> d!46441 m!177099))

(declare-fun m!177101 () Bool)

(assert (=> b!147156 m!177101))

(declare-fun m!177103 () Bool)

(assert (=> b!147157 m!177103))

(assert (=> b!146805 d!46441))

(declare-fun d!46443 () Bool)

(assert (=> d!46443 (= (+!182 (+!182 lt!77328 (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323)) (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))))) (+!182 (+!182 lt!77328 (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))))) (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323)))))

(declare-fun lt!77655 () Unit!4651)

(declare-fun choose!908 (ListLongMap!1785 (_ BitVec 64) V!3627 (_ BitVec 64) V!3627) Unit!4651)

(assert (=> d!46443 (= lt!77655 (choose!908 lt!77328 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(assert (=> d!46443 (not (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!46443 (= (addCommutativeForDiffKeys!75 lt!77328 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))) lt!77655)))

(declare-fun bs!6159 () Bool)

(assert (= bs!6159 d!46443))

(declare-fun m!177105 () Bool)

(assert (=> bs!6159 m!177105))

(declare-fun m!177107 () Bool)

(assert (=> bs!6159 m!177107))

(assert (=> bs!6159 m!177107))

(declare-fun m!177109 () Bool)

(assert (=> bs!6159 m!177109))

(assert (=> bs!6159 m!176769))

(declare-fun m!177111 () Bool)

(assert (=> bs!6159 m!177111))

(assert (=> bs!6159 m!177105))

(declare-fun m!177113 () Bool)

(assert (=> bs!6159 m!177113))

(assert (=> b!146805 d!46443))

(declare-fun d!46445 () Bool)

(declare-fun e!96056 () Bool)

(assert (=> d!46445 e!96056))

(declare-fun res!69940 () Bool)

(assert (=> d!46445 (=> (not res!69940) (not e!96056))))

(declare-fun lt!77659 () ListLongMap!1785)

(assert (=> d!46445 (= res!69940 (contains!949 lt!77659 (_1!1388 lt!77312)))))

(declare-fun lt!77658 () List!1802)

(assert (=> d!46445 (= lt!77659 (ListLongMap!1786 lt!77658))))

(declare-fun lt!77657 () Unit!4651)

(declare-fun lt!77656 () Unit!4651)

(assert (=> d!46445 (= lt!77657 lt!77656)))

(assert (=> d!46445 (= (getValueByKey!180 lt!77658 (_1!1388 lt!77312)) (Some!185 (_2!1388 lt!77312)))))

(assert (=> d!46445 (= lt!77656 (lemmaContainsTupThenGetReturnValue!95 lt!77658 (_1!1388 lt!77312) (_2!1388 lt!77312)))))

(assert (=> d!46445 (= lt!77658 (insertStrictlySorted!97 (toList!908 (+!182 lt!77318 lt!77322)) (_1!1388 lt!77312) (_2!1388 lt!77312)))))

(assert (=> d!46445 (= (+!182 (+!182 lt!77318 lt!77322) lt!77312) lt!77659)))

(declare-fun b!147158 () Bool)

(declare-fun res!69941 () Bool)

(assert (=> b!147158 (=> (not res!69941) (not e!96056))))

(assert (=> b!147158 (= res!69941 (= (getValueByKey!180 (toList!908 lt!77659) (_1!1388 lt!77312)) (Some!185 (_2!1388 lt!77312))))))

(declare-fun b!147159 () Bool)

(assert (=> b!147159 (= e!96056 (contains!950 (toList!908 lt!77659) lt!77312))))

(assert (= (and d!46445 res!69940) b!147158))

(assert (= (and b!147158 res!69941) b!147159))

(declare-fun m!177115 () Bool)

(assert (=> d!46445 m!177115))

(declare-fun m!177117 () Bool)

(assert (=> d!46445 m!177117))

(declare-fun m!177119 () Bool)

(assert (=> d!46445 m!177119))

(declare-fun m!177121 () Bool)

(assert (=> d!46445 m!177121))

(declare-fun m!177123 () Bool)

(assert (=> b!147158 m!177123))

(declare-fun m!177125 () Bool)

(assert (=> b!147159 m!177125))

(assert (=> b!146805 d!46445))

(declare-fun b!147184 () Bool)

(declare-fun e!96076 () Bool)

(declare-fun e!96074 () Bool)

(assert (=> b!147184 (= e!96076 e!96074)))

(declare-fun c!27805 () Bool)

(declare-fun e!96073 () Bool)

(assert (=> b!147184 (= c!27805 e!96073)))

(declare-fun res!69950 () Bool)

(assert (=> b!147184 (=> (not res!69950) (not e!96073))))

(assert (=> b!147184 (= res!69950 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!147185 () Bool)

(declare-fun e!96077 () Bool)

(declare-fun lt!77680 () ListLongMap!1785)

(assert (=> b!147185 (= e!96077 (= lt!77680 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!147186 () Bool)

(declare-fun e!96072 () Bool)

(assert (=> b!147186 (= e!96074 e!96072)))

(assert (=> b!147186 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun res!69951 () Bool)

(assert (=> b!147186 (= res!69951 (contains!949 lt!77680 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!147186 (=> (not res!69951) (not e!96072))))

(declare-fun b!147187 () Bool)

(assert (=> b!147187 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(assert (=> b!147187 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2645 (_values!3002 (v!3363 (underlying!505 thiss!992))))))))

(assert (=> b!147187 (= e!96072 (= (apply!125 lt!77680 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!147188 () Bool)

(declare-fun e!96071 () ListLongMap!1785)

(declare-fun call!16496 () ListLongMap!1785)

(assert (=> b!147188 (= e!96071 call!16496)))

(declare-fun b!147189 () Bool)

(assert (=> b!147189 (= e!96073 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!147189 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!147191 () Bool)

(declare-fun e!96075 () ListLongMap!1785)

(assert (=> b!147191 (= e!96075 (ListLongMap!1786 Nil!1799))))

(declare-fun b!147192 () Bool)

(assert (=> b!147192 (= e!96075 e!96071)))

(declare-fun c!27804 () Bool)

(assert (=> b!147192 (= c!27804 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!147193 () Bool)

(declare-fun isEmpty!431 (ListLongMap!1785) Bool)

(assert (=> b!147193 (= e!96077 (isEmpty!431 lt!77680))))

(declare-fun b!147194 () Bool)

(declare-fun res!69952 () Bool)

(assert (=> b!147194 (=> (not res!69952) (not e!96076))))

(assert (=> b!147194 (= res!69952 (not (contains!949 lt!77680 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!147195 () Bool)

(declare-fun lt!77674 () Unit!4651)

(declare-fun lt!77676 () Unit!4651)

(assert (=> b!147195 (= lt!77674 lt!77676)))

(declare-fun lt!77678 () (_ BitVec 64))

(declare-fun lt!77679 () ListLongMap!1785)

(declare-fun lt!77675 () (_ BitVec 64))

(declare-fun lt!77677 () V!3627)

(assert (=> b!147195 (not (contains!949 (+!182 lt!77679 (tuple2!2757 lt!77678 lt!77677)) lt!77675))))

(declare-fun addStillNotContains!70 (ListLongMap!1785 (_ BitVec 64) V!3627 (_ BitVec 64)) Unit!4651)

(assert (=> b!147195 (= lt!77676 (addStillNotContains!70 lt!77679 lt!77678 lt!77677 lt!77675))))

(assert (=> b!147195 (= lt!77675 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!147195 (= lt!77677 (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!147195 (= lt!77678 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!147195 (= lt!77679 call!16496)))

(assert (=> b!147195 (= e!96071 (+!182 call!16496 (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!16493 () Bool)

(assert (=> bm!16493 (= call!16496 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!147190 () Bool)

(assert (=> b!147190 (= e!96074 e!96077)))

(declare-fun c!27806 () Bool)

(assert (=> b!147190 (= c!27806 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun d!46447 () Bool)

(assert (=> d!46447 e!96076))

(declare-fun res!69953 () Bool)

(assert (=> d!46447 (=> (not res!69953) (not e!96076))))

(assert (=> d!46447 (= res!69953 (not (contains!949 lt!77680 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!46447 (= lt!77680 e!96075)))

(declare-fun c!27803 () Bool)

(assert (=> d!46447 (= c!27803 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(assert (=> d!46447 (validMask!0 (mask!7399 (v!3363 (underlying!505 thiss!992))))))

(assert (=> d!46447 (= (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))) lt!77680)))

(assert (= (and d!46447 c!27803) b!147191))

(assert (= (and d!46447 (not c!27803)) b!147192))

(assert (= (and b!147192 c!27804) b!147195))

(assert (= (and b!147192 (not c!27804)) b!147188))

(assert (= (or b!147195 b!147188) bm!16493))

(assert (= (and d!46447 res!69953) b!147194))

(assert (= (and b!147194 res!69952) b!147184))

(assert (= (and b!147184 res!69950) b!147189))

(assert (= (and b!147184 c!27805) b!147186))

(assert (= (and b!147184 (not c!27805)) b!147190))

(assert (= (and b!147186 res!69951) b!147187))

(assert (= (and b!147190 c!27806) b!147185))

(assert (= (and b!147190 (not c!27806)) b!147193))

(declare-fun b_lambda!6609 () Bool)

(assert (=> (not b_lambda!6609) (not b!147187)))

(assert (=> b!147187 t!6528))

(declare-fun b_and!9241 () Bool)

(assert (= b_and!9237 (and (=> t!6528 result!4385) b_and!9241)))

(assert (=> b!147187 t!6530))

(declare-fun b_and!9243 () Bool)

(assert (= b_and!9239 (and (=> t!6530 result!4389) b_and!9243)))

(declare-fun b_lambda!6611 () Bool)

(assert (=> (not b_lambda!6611) (not b!147195)))

(assert (=> b!147195 t!6528))

(declare-fun b_and!9245 () Bool)

(assert (= b_and!9241 (and (=> t!6528 result!4385) b_and!9245)))

(assert (=> b!147195 t!6530))

(declare-fun b_and!9247 () Bool)

(assert (= b_and!9243 (and (=> t!6530 result!4389) b_and!9247)))

(declare-fun m!177127 () Bool)

(assert (=> b!147193 m!177127))

(declare-fun m!177129 () Bool)

(assert (=> d!46447 m!177129))

(assert (=> d!46447 m!177067))

(declare-fun m!177131 () Bool)

(assert (=> b!147194 m!177131))

(assert (=> b!147187 m!177075))

(assert (=> b!147187 m!177039))

(declare-fun m!177133 () Bool)

(assert (=> b!147187 m!177133))

(assert (=> b!147187 m!177075))

(assert (=> b!147187 m!176825))

(assert (=> b!147187 m!177077))

(assert (=> b!147187 m!176825))

(assert (=> b!147187 m!177039))

(assert (=> b!147192 m!177039))

(assert (=> b!147192 m!177039))

(assert (=> b!147192 m!177069))

(declare-fun m!177135 () Bool)

(assert (=> b!147195 m!177135))

(assert (=> b!147195 m!177075))

(declare-fun m!177137 () Bool)

(assert (=> b!147195 m!177137))

(assert (=> b!147195 m!177075))

(assert (=> b!147195 m!176825))

(assert (=> b!147195 m!177077))

(assert (=> b!147195 m!177137))

(declare-fun m!177139 () Bool)

(assert (=> b!147195 m!177139))

(assert (=> b!147195 m!177039))

(assert (=> b!147195 m!176825))

(declare-fun m!177141 () Bool)

(assert (=> b!147195 m!177141))

(assert (=> b!147186 m!177039))

(assert (=> b!147186 m!177039))

(declare-fun m!177143 () Bool)

(assert (=> b!147186 m!177143))

(declare-fun m!177145 () Bool)

(assert (=> bm!16493 m!177145))

(assert (=> b!147189 m!177039))

(assert (=> b!147189 m!177039))

(assert (=> b!147189 m!177069))

(assert (=> b!147185 m!177145))

(assert (=> b!146805 d!46447))

(declare-fun d!46449 () Bool)

(declare-fun e!96078 () Bool)

(assert (=> d!46449 e!96078))

(declare-fun res!69954 () Bool)

(assert (=> d!46449 (=> (not res!69954) (not e!96078))))

(declare-fun lt!77684 () ListLongMap!1785)

(assert (=> d!46449 (= res!69954 (contains!949 lt!77684 (_1!1388 lt!77311)))))

(declare-fun lt!77683 () List!1802)

(assert (=> d!46449 (= lt!77684 (ListLongMap!1786 lt!77683))))

(declare-fun lt!77682 () Unit!4651)

(declare-fun lt!77681 () Unit!4651)

(assert (=> d!46449 (= lt!77682 lt!77681)))

(assert (=> d!46449 (= (getValueByKey!180 lt!77683 (_1!1388 lt!77311)) (Some!185 (_2!1388 lt!77311)))))

(assert (=> d!46449 (= lt!77681 (lemmaContainsTupThenGetReturnValue!95 lt!77683 (_1!1388 lt!77311) (_2!1388 lt!77311)))))

(assert (=> d!46449 (= lt!77683 (insertStrictlySorted!97 (toList!908 lt!77317) (_1!1388 lt!77311) (_2!1388 lt!77311)))))

(assert (=> d!46449 (= (+!182 lt!77317 lt!77311) lt!77684)))

(declare-fun b!147196 () Bool)

(declare-fun res!69955 () Bool)

(assert (=> b!147196 (=> (not res!69955) (not e!96078))))

(assert (=> b!147196 (= res!69955 (= (getValueByKey!180 (toList!908 lt!77684) (_1!1388 lt!77311)) (Some!185 (_2!1388 lt!77311))))))

(declare-fun b!147197 () Bool)

(assert (=> b!147197 (= e!96078 (contains!950 (toList!908 lt!77684) lt!77311))))

(assert (= (and d!46449 res!69954) b!147196))

(assert (= (and b!147196 res!69955) b!147197))

(declare-fun m!177147 () Bool)

(assert (=> d!46449 m!177147))

(declare-fun m!177149 () Bool)

(assert (=> d!46449 m!177149))

(declare-fun m!177151 () Bool)

(assert (=> d!46449 m!177151))

(declare-fun m!177153 () Bool)

(assert (=> d!46449 m!177153))

(declare-fun m!177155 () Bool)

(assert (=> b!147196 m!177155))

(declare-fun m!177157 () Bool)

(assert (=> b!147197 m!177157))

(assert (=> b!146805 d!46449))

(declare-fun b!147198 () Bool)

(declare-fun c!27808 () Bool)

(assert (=> b!147198 (= c!27808 (and (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!96085 () ListLongMap!1785)

(declare-fun e!96082 () ListLongMap!1785)

(assert (=> b!147198 (= e!96085 e!96082)))

(declare-fun b!147199 () Bool)

(declare-fun e!96088 () Bool)

(declare-fun call!16500 () Bool)

(assert (=> b!147199 (= e!96088 (not call!16500))))

(declare-fun d!46451 () Bool)

(declare-fun e!96083 () Bool)

(assert (=> d!46451 e!96083))

(declare-fun res!69958 () Bool)

(assert (=> d!46451 (=> (not res!69958) (not e!96083))))

(assert (=> d!46451 (= res!69958 (or (bvsge from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))) (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))))

(declare-fun lt!77701 () ListLongMap!1785)

(declare-fun lt!77702 () ListLongMap!1785)

(assert (=> d!46451 (= lt!77701 lt!77702)))

(declare-fun lt!77697 () Unit!4651)

(declare-fun e!96086 () Unit!4651)

(assert (=> d!46451 (= lt!77697 e!96086)))

(declare-fun c!27809 () Bool)

(declare-fun e!96091 () Bool)

(assert (=> d!46451 (= c!27809 e!96091)))

(declare-fun res!69957 () Bool)

(assert (=> d!46451 (=> (not res!69957) (not e!96091))))

(assert (=> d!46451 (= res!69957 (bvslt from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun e!96080 () ListLongMap!1785)

(assert (=> d!46451 (= lt!77702 e!96080)))

(declare-fun c!27807 () Bool)

(assert (=> d!46451 (= c!27807 (and (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46451 (validMask!0 (mask!7399 (v!3363 (underlying!505 thiss!992))))))

(assert (=> d!46451 (= (getCurrentListMap!571 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) from!355 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))) lt!77701)))

(declare-fun b!147200 () Bool)

(assert (=> b!147200 (= e!96080 e!96085)))

(declare-fun c!27810 () Bool)

(assert (=> b!147200 (= c!27810 (and (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!147201 () Bool)

(declare-fun e!96079 () Bool)

(assert (=> b!147201 (= e!96079 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun b!147202 () Bool)

(assert (=> b!147202 (= e!96091 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun bm!16494 () Bool)

(assert (=> bm!16494 (= call!16500 (contains!949 lt!77701 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16495 () Bool)

(declare-fun call!16501 () ListLongMap!1785)

(declare-fun call!16499 () ListLongMap!1785)

(assert (=> bm!16495 (= call!16501 call!16499)))

(declare-fun b!147203 () Bool)

(declare-fun call!16497 () ListLongMap!1785)

(assert (=> b!147203 (= e!96080 (+!182 call!16497 (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!147204 () Bool)

(declare-fun res!69956 () Bool)

(assert (=> b!147204 (=> (not res!69956) (not e!96083))))

(declare-fun e!96089 () Bool)

(assert (=> b!147204 (= res!69956 e!96089)))

(declare-fun res!69962 () Bool)

(assert (=> b!147204 (=> res!69962 e!96089)))

(assert (=> b!147204 (= res!69962 (not e!96079))))

(declare-fun res!69964 () Bool)

(assert (=> b!147204 (=> (not res!69964) (not e!96079))))

(assert (=> b!147204 (= res!69964 (bvslt from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun bm!16496 () Bool)

(assert (=> bm!16496 (= call!16499 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) from!355 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!147205 () Bool)

(declare-fun res!69960 () Bool)

(assert (=> b!147205 (=> (not res!69960) (not e!96083))))

(declare-fun e!96081 () Bool)

(assert (=> b!147205 (= res!69960 e!96081)))

(declare-fun c!27812 () Bool)

(assert (=> b!147205 (= c!27812 (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!96090 () Bool)

(declare-fun b!147206 () Bool)

(assert (=> b!147206 (= e!96090 (= (apply!125 lt!77701 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)) (get!1582 (select (arr!2369 (_values!3002 (v!3363 (underlying!505 thiss!992)))) from!355) (dynLambda!458 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!147206 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2645 (_values!3002 (v!3363 (underlying!505 thiss!992))))))))

(assert (=> b!147206 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!147207 () Bool)

(declare-fun Unit!4663 () Unit!4651)

(assert (=> b!147207 (= e!96086 Unit!4663)))

(declare-fun bm!16497 () Bool)

(declare-fun call!16498 () Bool)

(assert (=> bm!16497 (= call!16498 (contains!949 lt!77701 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!147208 () Bool)

(declare-fun e!96087 () Bool)

(assert (=> b!147208 (= e!96087 (= (apply!125 lt!77701 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!147209 () Bool)

(assert (=> b!147209 (= e!96081 e!96087)))

(declare-fun res!69961 () Bool)

(assert (=> b!147209 (= res!69961 call!16498)))

(assert (=> b!147209 (=> (not res!69961) (not e!96087))))

(declare-fun b!147210 () Bool)

(assert (=> b!147210 (= e!96081 (not call!16498))))

(declare-fun b!147211 () Bool)

(assert (=> b!147211 (= e!96083 e!96088)))

(declare-fun c!27811 () Bool)

(assert (=> b!147211 (= c!27811 (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!147212 () Bool)

(declare-fun call!16502 () ListLongMap!1785)

(assert (=> b!147212 (= e!96085 call!16502)))

(declare-fun b!147213 () Bool)

(assert (=> b!147213 (= e!96082 call!16502)))

(declare-fun bm!16498 () Bool)

(declare-fun call!16503 () ListLongMap!1785)

(assert (=> bm!16498 (= call!16503 call!16501)))

(declare-fun b!147214 () Bool)

(assert (=> b!147214 (= e!96082 call!16503)))

(declare-fun bm!16499 () Bool)

(assert (=> bm!16499 (= call!16497 (+!182 (ite c!27807 call!16499 (ite c!27810 call!16501 call!16503)) (ite (or c!27807 c!27810) (tuple2!2757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2864 (v!3363 (underlying!505 thiss!992)))) (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))))

(declare-fun b!147215 () Bool)

(declare-fun e!96084 () Bool)

(assert (=> b!147215 (= e!96084 (= (apply!125 lt!77701 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun b!147216 () Bool)

(declare-fun lt!77706 () Unit!4651)

(assert (=> b!147216 (= e!96086 lt!77706)))

(declare-fun lt!77685 () ListLongMap!1785)

(assert (=> b!147216 (= lt!77685 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) from!355 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77696 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77696 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77692 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77692 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355))))

(declare-fun lt!77694 () Unit!4651)

(assert (=> b!147216 (= lt!77694 (addStillContains!101 lt!77685 lt!77696 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77692))))

(assert (=> b!147216 (contains!949 (+!182 lt!77685 (tuple2!2757 lt!77696 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77692)))

(declare-fun lt!77703 () Unit!4651)

(assert (=> b!147216 (= lt!77703 lt!77694)))

(declare-fun lt!77705 () ListLongMap!1785)

(assert (=> b!147216 (= lt!77705 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) from!355 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77686 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77686 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77688 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77688 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355))))

(declare-fun lt!77698 () Unit!4651)

(assert (=> b!147216 (= lt!77698 (addApplyDifferent!101 lt!77705 lt!77686 (minValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77688))))

(assert (=> b!147216 (= (apply!125 (+!182 lt!77705 (tuple2!2757 lt!77686 (minValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77688) (apply!125 lt!77705 lt!77688))))

(declare-fun lt!77690 () Unit!4651)

(assert (=> b!147216 (= lt!77690 lt!77698)))

(declare-fun lt!77704 () ListLongMap!1785)

(assert (=> b!147216 (= lt!77704 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) from!355 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77699 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77699 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77689 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77689 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355))))

(declare-fun lt!77693 () Unit!4651)

(assert (=> b!147216 (= lt!77693 (addApplyDifferent!101 lt!77704 lt!77699 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77689))))

(assert (=> b!147216 (= (apply!125 (+!182 lt!77704 (tuple2!2757 lt!77699 (zeroValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77689) (apply!125 lt!77704 lt!77689))))

(declare-fun lt!77687 () Unit!4651)

(assert (=> b!147216 (= lt!77687 lt!77693)))

(declare-fun lt!77695 () ListLongMap!1785)

(assert (=> b!147216 (= lt!77695 (getCurrentListMapNoExtraKeys!151 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) from!355 (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(declare-fun lt!77700 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77700 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!77691 () (_ BitVec 64))

(assert (=> b!147216 (= lt!77691 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355))))

(assert (=> b!147216 (= lt!77706 (addApplyDifferent!101 lt!77695 lt!77700 (minValue!2864 (v!3363 (underlying!505 thiss!992))) lt!77691))))

(assert (=> b!147216 (= (apply!125 (+!182 lt!77695 (tuple2!2757 lt!77700 (minValue!2864 (v!3363 (underlying!505 thiss!992))))) lt!77691) (apply!125 lt!77695 lt!77691))))

(declare-fun b!147217 () Bool)

(assert (=> b!147217 (= e!96088 e!96084)))

(declare-fun res!69959 () Bool)

(assert (=> b!147217 (= res!69959 call!16500)))

(assert (=> b!147217 (=> (not res!69959) (not e!96084))))

(declare-fun b!147218 () Bool)

(assert (=> b!147218 (= e!96089 e!96090)))

(declare-fun res!69963 () Bool)

(assert (=> b!147218 (=> (not res!69963) (not e!96090))))

(assert (=> b!147218 (= res!69963 (contains!949 lt!77701 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(assert (=> b!147218 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun bm!16500 () Bool)

(assert (=> bm!16500 (= call!16502 call!16497)))

(assert (= (and d!46451 c!27807) b!147203))

(assert (= (and d!46451 (not c!27807)) b!147200))

(assert (= (and b!147200 c!27810) b!147212))

(assert (= (and b!147200 (not c!27810)) b!147198))

(assert (= (and b!147198 c!27808) b!147213))

(assert (= (and b!147198 (not c!27808)) b!147214))

(assert (= (or b!147213 b!147214) bm!16498))

(assert (= (or b!147212 bm!16498) bm!16495))

(assert (= (or b!147212 b!147213) bm!16500))

(assert (= (or b!147203 bm!16495) bm!16496))

(assert (= (or b!147203 bm!16500) bm!16499))

(assert (= (and d!46451 res!69957) b!147202))

(assert (= (and d!46451 c!27809) b!147216))

(assert (= (and d!46451 (not c!27809)) b!147207))

(assert (= (and d!46451 res!69958) b!147204))

(assert (= (and b!147204 res!69964) b!147201))

(assert (= (and b!147204 (not res!69962)) b!147218))

(assert (= (and b!147218 res!69963) b!147206))

(assert (= (and b!147204 res!69956) b!147205))

(assert (= (and b!147205 c!27812) b!147209))

(assert (= (and b!147205 (not c!27812)) b!147210))

(assert (= (and b!147209 res!69961) b!147208))

(assert (= (or b!147209 b!147210) bm!16497))

(assert (= (and b!147205 res!69960) b!147211))

(assert (= (and b!147211 c!27811) b!147217))

(assert (= (and b!147211 (not c!27811)) b!147199))

(assert (= (and b!147217 res!69959) b!147215))

(assert (= (or b!147217 b!147199) bm!16494))

(declare-fun b_lambda!6613 () Bool)

(assert (=> (not b_lambda!6613) (not b!147206)))

(assert (=> b!147206 t!6528))

(declare-fun b_and!9249 () Bool)

(assert (= b_and!9245 (and (=> t!6528 result!4385) b_and!9249)))

(assert (=> b!147206 t!6530))

(declare-fun b_and!9251 () Bool)

(assert (= b_and!9247 (and (=> t!6530 result!4389) b_and!9251)))

(declare-fun m!177159 () Bool)

(assert (=> b!147215 m!177159))

(declare-fun m!177161 () Bool)

(assert (=> b!147216 m!177161))

(declare-fun m!177163 () Bool)

(assert (=> b!147216 m!177163))

(declare-fun m!177165 () Bool)

(assert (=> b!147216 m!177165))

(assert (=> b!147216 m!176769))

(declare-fun m!177167 () Bool)

(assert (=> b!147216 m!177167))

(declare-fun m!177169 () Bool)

(assert (=> b!147216 m!177169))

(declare-fun m!177171 () Bool)

(assert (=> b!147216 m!177171))

(declare-fun m!177173 () Bool)

(assert (=> b!147216 m!177173))

(declare-fun m!177175 () Bool)

(assert (=> b!147216 m!177175))

(declare-fun m!177177 () Bool)

(assert (=> b!147216 m!177177))

(declare-fun m!177179 () Bool)

(assert (=> b!147216 m!177179))

(assert (=> b!147216 m!177167))

(declare-fun m!177181 () Bool)

(assert (=> b!147216 m!177181))

(declare-fun m!177183 () Bool)

(assert (=> b!147216 m!177183))

(declare-fun m!177185 () Bool)

(assert (=> b!147216 m!177185))

(assert (=> b!147216 m!177161))

(declare-fun m!177187 () Bool)

(assert (=> b!147216 m!177187))

(assert (=> b!147216 m!177185))

(declare-fun m!177189 () Bool)

(assert (=> b!147216 m!177189))

(assert (=> b!147216 m!177183))

(declare-fun m!177191 () Bool)

(assert (=> b!147216 m!177191))

(declare-fun m!177193 () Bool)

(assert (=> bm!16497 m!177193))

(assert (=> d!46451 m!177067))

(assert (=> b!147201 m!176769))

(assert (=> b!147201 m!176769))

(declare-fun m!177195 () Bool)

(assert (=> b!147201 m!177195))

(declare-fun m!177197 () Bool)

(assert (=> bm!16499 m!177197))

(assert (=> b!147206 m!176769))

(declare-fun m!177199 () Bool)

(assert (=> b!147206 m!177199))

(assert (=> b!147206 m!176823))

(assert (=> b!147206 m!176825))

(assert (=> b!147206 m!176769))

(assert (=> b!147206 m!176823))

(assert (=> b!147206 m!176825))

(assert (=> b!147206 m!176827))

(assert (=> b!147218 m!176769))

(assert (=> b!147218 m!176769))

(declare-fun m!177201 () Bool)

(assert (=> b!147218 m!177201))

(assert (=> bm!16496 m!177171))

(declare-fun m!177203 () Bool)

(assert (=> bm!16494 m!177203))

(declare-fun m!177205 () Bool)

(assert (=> b!147203 m!177205))

(assert (=> b!147202 m!176769))

(assert (=> b!147202 m!176769))

(assert (=> b!147202 m!177195))

(declare-fun m!177207 () Bool)

(assert (=> b!147208 m!177207))

(assert (=> b!146805 d!46451))

(declare-fun d!46453 () Bool)

(declare-fun e!96092 () Bool)

(assert (=> d!46453 e!96092))

(declare-fun res!69965 () Bool)

(assert (=> d!46453 (=> (not res!69965) (not e!96092))))

(declare-fun lt!77710 () ListLongMap!1785)

(assert (=> d!46453 (= res!69965 (contains!949 lt!77710 (_1!1388 lt!77312)))))

(declare-fun lt!77709 () List!1802)

(assert (=> d!46453 (= lt!77710 (ListLongMap!1786 lt!77709))))

(declare-fun lt!77708 () Unit!4651)

(declare-fun lt!77707 () Unit!4651)

(assert (=> d!46453 (= lt!77708 lt!77707)))

(assert (=> d!46453 (= (getValueByKey!180 lt!77709 (_1!1388 lt!77312)) (Some!185 (_2!1388 lt!77312)))))

(assert (=> d!46453 (= lt!77707 (lemmaContainsTupThenGetReturnValue!95 lt!77709 (_1!1388 lt!77312) (_2!1388 lt!77312)))))

(assert (=> d!46453 (= lt!77709 (insertStrictlySorted!97 (toList!908 lt!77318) (_1!1388 lt!77312) (_2!1388 lt!77312)))))

(assert (=> d!46453 (= (+!182 lt!77318 lt!77312) lt!77710)))

(declare-fun b!147219 () Bool)

(declare-fun res!69966 () Bool)

(assert (=> b!147219 (=> (not res!69966) (not e!96092))))

(assert (=> b!147219 (= res!69966 (= (getValueByKey!180 (toList!908 lt!77710) (_1!1388 lt!77312)) (Some!185 (_2!1388 lt!77312))))))

(declare-fun b!147220 () Bool)

(assert (=> b!147220 (= e!96092 (contains!950 (toList!908 lt!77710) lt!77312))))

(assert (= (and d!46453 res!69965) b!147219))

(assert (= (and b!147219 res!69966) b!147220))

(declare-fun m!177209 () Bool)

(assert (=> d!46453 m!177209))

(declare-fun m!177211 () Bool)

(assert (=> d!46453 m!177211))

(declare-fun m!177213 () Bool)

(assert (=> d!46453 m!177213))

(declare-fun m!177215 () Bool)

(assert (=> d!46453 m!177215))

(declare-fun m!177217 () Bool)

(assert (=> b!147219 m!177217))

(declare-fun m!177219 () Bool)

(assert (=> b!147220 m!177219))

(assert (=> b!146805 d!46453))

(declare-fun d!46455 () Bool)

(declare-fun e!96093 () Bool)

(assert (=> d!46455 e!96093))

(declare-fun res!69967 () Bool)

(assert (=> d!46455 (=> (not res!69967) (not e!96093))))

(declare-fun lt!77714 () ListLongMap!1785)

(assert (=> d!46455 (= res!69967 (contains!949 lt!77714 (_1!1388 lt!77322)))))

(declare-fun lt!77713 () List!1802)

(assert (=> d!46455 (= lt!77714 (ListLongMap!1786 lt!77713))))

(declare-fun lt!77712 () Unit!4651)

(declare-fun lt!77711 () Unit!4651)

(assert (=> d!46455 (= lt!77712 lt!77711)))

(assert (=> d!46455 (= (getValueByKey!180 lt!77713 (_1!1388 lt!77322)) (Some!185 (_2!1388 lt!77322)))))

(assert (=> d!46455 (= lt!77711 (lemmaContainsTupThenGetReturnValue!95 lt!77713 (_1!1388 lt!77322) (_2!1388 lt!77322)))))

(assert (=> d!46455 (= lt!77713 (insertStrictlySorted!97 (toList!908 lt!77318) (_1!1388 lt!77322) (_2!1388 lt!77322)))))

(assert (=> d!46455 (= (+!182 lt!77318 lt!77322) lt!77714)))

(declare-fun b!147221 () Bool)

(declare-fun res!69968 () Bool)

(assert (=> b!147221 (=> (not res!69968) (not e!96093))))

(assert (=> b!147221 (= res!69968 (= (getValueByKey!180 (toList!908 lt!77714) (_1!1388 lt!77322)) (Some!185 (_2!1388 lt!77322))))))

(declare-fun b!147222 () Bool)

(assert (=> b!147222 (= e!96093 (contains!950 (toList!908 lt!77714) lt!77322))))

(assert (= (and d!46455 res!69967) b!147221))

(assert (= (and b!147221 res!69968) b!147222))

(declare-fun m!177221 () Bool)

(assert (=> d!46455 m!177221))

(declare-fun m!177223 () Bool)

(assert (=> d!46455 m!177223))

(declare-fun m!177225 () Bool)

(assert (=> d!46455 m!177225))

(declare-fun m!177227 () Bool)

(assert (=> d!46455 m!177227))

(declare-fun m!177229 () Bool)

(assert (=> b!147221 m!177229))

(declare-fun m!177231 () Bool)

(assert (=> b!147222 m!177231))

(assert (=> b!146805 d!46455))

(declare-fun d!46457 () Bool)

(assert (=> d!46457 (= (+!182 (+!182 lt!77318 (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323)) (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992))))) (+!182 (+!182 lt!77318 (tuple2!2757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992))))) (tuple2!2757 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323)))))

(declare-fun lt!77715 () Unit!4651)

(assert (=> d!46457 (= lt!77715 (choose!908 lt!77318 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992)))))))

(assert (=> d!46457 (not (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!46457 (= (addCommutativeForDiffKeys!75 lt!77318 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) lt!77323 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2864 (v!3363 (underlying!505 thiss!992)))) lt!77715)))

(declare-fun bs!6160 () Bool)

(assert (= bs!6160 d!46457))

(declare-fun m!177233 () Bool)

(assert (=> bs!6160 m!177233))

(declare-fun m!177235 () Bool)

(assert (=> bs!6160 m!177235))

(assert (=> bs!6160 m!177235))

(declare-fun m!177237 () Bool)

(assert (=> bs!6160 m!177237))

(assert (=> bs!6160 m!176769))

(declare-fun m!177239 () Bool)

(assert (=> bs!6160 m!177239))

(assert (=> bs!6160 m!177233))

(declare-fun m!177241 () Bool)

(assert (=> bs!6160 m!177241))

(assert (=> b!146805 d!46457))

(declare-fun d!46459 () Bool)

(declare-fun e!96094 () Bool)

(assert (=> d!46459 e!96094))

(declare-fun res!69969 () Bool)

(assert (=> d!46459 (=> (not res!69969) (not e!96094))))

(declare-fun lt!77719 () ListLongMap!1785)

(assert (=> d!46459 (= res!69969 (contains!949 lt!77719 (_1!1388 lt!77322)))))

(declare-fun lt!77718 () List!1802)

(assert (=> d!46459 (= lt!77719 (ListLongMap!1786 lt!77718))))

(declare-fun lt!77717 () Unit!4651)

(declare-fun lt!77716 () Unit!4651)

(assert (=> d!46459 (= lt!77717 lt!77716)))

(assert (=> d!46459 (= (getValueByKey!180 lt!77718 (_1!1388 lt!77322)) (Some!185 (_2!1388 lt!77322)))))

(assert (=> d!46459 (= lt!77716 (lemmaContainsTupThenGetReturnValue!95 lt!77718 (_1!1388 lt!77322) (_2!1388 lt!77322)))))

(assert (=> d!46459 (= lt!77718 (insertStrictlySorted!97 (toList!908 lt!77326) (_1!1388 lt!77322) (_2!1388 lt!77322)))))

(assert (=> d!46459 (= (+!182 lt!77326 lt!77322) lt!77719)))

(declare-fun b!147223 () Bool)

(declare-fun res!69970 () Bool)

(assert (=> b!147223 (=> (not res!69970) (not e!96094))))

(assert (=> b!147223 (= res!69970 (= (getValueByKey!180 (toList!908 lt!77719) (_1!1388 lt!77322)) (Some!185 (_2!1388 lt!77322))))))

(declare-fun b!147224 () Bool)

(assert (=> b!147224 (= e!96094 (contains!950 (toList!908 lt!77719) lt!77322))))

(assert (= (and d!46459 res!69969) b!147223))

(assert (= (and b!147223 res!69970) b!147224))

(declare-fun m!177243 () Bool)

(assert (=> d!46459 m!177243))

(declare-fun m!177245 () Bool)

(assert (=> d!46459 m!177245))

(declare-fun m!177247 () Bool)

(assert (=> d!46459 m!177247))

(declare-fun m!177249 () Bool)

(assert (=> d!46459 m!177249))

(declare-fun m!177251 () Bool)

(assert (=> b!147223 m!177251))

(declare-fun m!177253 () Bool)

(assert (=> b!147224 m!177253))

(assert (=> b!146805 d!46459))

(declare-fun d!46461 () Bool)

(declare-fun e!96095 () Bool)

(assert (=> d!46461 e!96095))

(declare-fun res!69971 () Bool)

(assert (=> d!46461 (=> (not res!69971) (not e!96095))))

(declare-fun lt!77723 () ListLongMap!1785)

(assert (=> d!46461 (= res!69971 (contains!949 lt!77723 (_1!1388 lt!77312)))))

(declare-fun lt!77722 () List!1802)

(assert (=> d!46461 (= lt!77723 (ListLongMap!1786 lt!77722))))

(declare-fun lt!77721 () Unit!4651)

(declare-fun lt!77720 () Unit!4651)

(assert (=> d!46461 (= lt!77721 lt!77720)))

(assert (=> d!46461 (= (getValueByKey!180 lt!77722 (_1!1388 lt!77312)) (Some!185 (_2!1388 lt!77312)))))

(assert (=> d!46461 (= lt!77720 (lemmaContainsTupThenGetReturnValue!95 lt!77722 (_1!1388 lt!77312) (_2!1388 lt!77312)))))

(assert (=> d!46461 (= lt!77722 (insertStrictlySorted!97 (toList!908 lt!77328) (_1!1388 lt!77312) (_2!1388 lt!77312)))))

(assert (=> d!46461 (= (+!182 lt!77328 lt!77312) lt!77723)))

(declare-fun b!147225 () Bool)

(declare-fun res!69972 () Bool)

(assert (=> b!147225 (=> (not res!69972) (not e!96095))))

(assert (=> b!147225 (= res!69972 (= (getValueByKey!180 (toList!908 lt!77723) (_1!1388 lt!77312)) (Some!185 (_2!1388 lt!77312))))))

(declare-fun b!147226 () Bool)

(assert (=> b!147226 (= e!96095 (contains!950 (toList!908 lt!77723) lt!77312))))

(assert (= (and d!46461 res!69971) b!147225))

(assert (= (and b!147225 res!69972) b!147226))

(declare-fun m!177255 () Bool)

(assert (=> d!46461 m!177255))

(declare-fun m!177257 () Bool)

(assert (=> d!46461 m!177257))

(declare-fun m!177259 () Bool)

(assert (=> d!46461 m!177259))

(declare-fun m!177261 () Bool)

(assert (=> d!46461 m!177261))

(declare-fun m!177263 () Bool)

(assert (=> b!147225 m!177263))

(declare-fun m!177265 () Bool)

(assert (=> b!147226 m!177265))

(assert (=> b!146805 d!46461))

(declare-fun d!46463 () Bool)

(assert (=> d!46463 (= (array_inv!1471 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvsge (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!146806 d!46463))

(declare-fun d!46465 () Bool)

(assert (=> d!46465 (= (array_inv!1472 (_values!3002 (v!3363 (underlying!505 thiss!992)))) (bvsge (size!2645 (_values!3002 (v!3363 (underlying!505 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!146806 d!46465))

(declare-fun d!46467 () Bool)

(assert (=> d!46467 (= (array_inv!1471 (_keys!4788 newMap!16)) (bvsge (size!2644 (_keys!4788 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!146815 d!46467))

(declare-fun d!46469 () Bool)

(assert (=> d!46469 (= (array_inv!1472 (_values!3002 newMap!16)) (bvsge (size!2645 (_values!3002 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!146815 d!46469))

(declare-fun d!46471 () Bool)

(declare-fun res!69973 () Bool)

(declare-fun e!96096 () Bool)

(assert (=> d!46471 (=> (not res!69973) (not e!96096))))

(assert (=> d!46471 (= res!69973 (simpleValid!100 newMap!16))))

(assert (=> d!46471 (= (valid!588 newMap!16) e!96096)))

(declare-fun b!147227 () Bool)

(declare-fun res!69974 () Bool)

(assert (=> b!147227 (=> (not res!69974) (not e!96096))))

(assert (=> b!147227 (= res!69974 (= (arrayCountValidKeys!0 (_keys!4788 newMap!16) #b00000000000000000000000000000000 (size!2644 (_keys!4788 newMap!16))) (_size!652 newMap!16)))))

(declare-fun b!147228 () Bool)

(declare-fun res!69975 () Bool)

(assert (=> b!147228 (=> (not res!69975) (not e!96096))))

(assert (=> b!147228 (= res!69975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4788 newMap!16) (mask!7399 newMap!16)))))

(declare-fun b!147229 () Bool)

(assert (=> b!147229 (= e!96096 (arrayNoDuplicates!0 (_keys!4788 newMap!16) #b00000000000000000000000000000000 Nil!1800))))

(assert (= (and d!46471 res!69973) b!147227))

(assert (= (and b!147227 res!69974) b!147228))

(assert (= (and b!147228 res!69975) b!147229))

(declare-fun m!177267 () Bool)

(assert (=> d!46471 m!177267))

(declare-fun m!177269 () Bool)

(assert (=> b!147227 m!177269))

(declare-fun m!177271 () Bool)

(assert (=> b!147228 m!177271))

(declare-fun m!177273 () Bool)

(assert (=> b!147229 m!177273))

(assert (=> b!146808 d!46471))

(declare-fun d!46473 () Bool)

(assert (=> d!46473 (= (valid!589 thiss!992) (valid!588 (v!3363 (underlying!505 thiss!992))))))

(declare-fun bs!6161 () Bool)

(assert (= bs!6161 d!46473))

(declare-fun m!177275 () Bool)

(assert (=> bs!6161 m!177275))

(assert (=> start!15228 d!46473))

(declare-fun d!46475 () Bool)

(assert (=> d!46475 (not (arrayContainsKey!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!77726 () Unit!4651)

(declare-fun choose!68 (array!5014 (_ BitVec 32) (_ BitVec 64) List!1803) Unit!4651)

(assert (=> d!46475 (= lt!77726 (choose!68 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (Cons!1799 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) Nil!1800)))))

(assert (=> d!46475 (bvslt (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!46475 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (Cons!1799 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) Nil!1800)) lt!77726)))

(declare-fun bs!6162 () Bool)

(assert (= bs!6162 d!46475))

(assert (=> bs!6162 m!176769))

(assert (=> bs!6162 m!176773))

(assert (=> bs!6162 m!176769))

(declare-fun m!177277 () Bool)

(assert (=> bs!6162 m!177277))

(assert (=> b!146817 d!46475))

(declare-fun d!46477 () Bool)

(assert (=> d!46477 (arrayNoDuplicates!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) from!355 Nil!1800)))

(declare-fun lt!77729 () Unit!4651)

(declare-fun choose!39 (array!5014 (_ BitVec 32) (_ BitVec 32)) Unit!4651)

(assert (=> d!46477 (= lt!77729 (choose!39 (_keys!4788 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!46477 (bvslt (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!46477 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000000 from!355) lt!77729)))

(declare-fun bs!6163 () Bool)

(assert (= bs!6163 d!46477))

(assert (=> bs!6163 m!176767))

(declare-fun m!177279 () Bool)

(assert (=> bs!6163 m!177279))

(assert (=> b!146817 d!46477))

(declare-fun d!46479 () Bool)

(declare-fun res!69980 () Bool)

(declare-fun e!96101 () Bool)

(assert (=> d!46479 (=> res!69980 e!96101)))

(assert (=> d!46479 (= res!69980 (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(assert (=> d!46479 (= (arrayContainsKey!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!96101)))

(declare-fun b!147234 () Bool)

(declare-fun e!96102 () Bool)

(assert (=> b!147234 (= e!96101 e!96102)))

(declare-fun res!69981 () Bool)

(assert (=> b!147234 (=> (not res!69981) (not e!96102))))

(assert (=> b!147234 (= res!69981 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(declare-fun b!147235 () Bool)

(assert (=> b!147235 (= e!96102 (arrayContainsKey!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!46479 (not res!69980)) b!147234))

(assert (= (and b!147234 res!69981) b!147235))

(assert (=> d!46479 m!177039))

(assert (=> b!147235 m!176769))

(declare-fun m!177281 () Bool)

(assert (=> b!147235 m!177281))

(assert (=> b!146817 d!46479))

(declare-fun d!46481 () Bool)

(declare-fun e!96105 () Bool)

(assert (=> d!46481 e!96105))

(declare-fun c!27815 () Bool)

(assert (=> d!46481 (= c!27815 (and (not (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!77732 () Unit!4651)

(declare-fun choose!909 (array!5014 array!5016 (_ BitVec 32) (_ BitVec 32) V!3627 V!3627 (_ BitVec 64) (_ BitVec 32) Int) Unit!4651)

(assert (=> d!46481 (= lt!77732 (choose!909 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))))))

(assert (=> d!46481 (validMask!0 (mask!7399 (v!3363 (underlying!505 thiss!992))))))

(assert (=> d!46481 (= (lemmaListMapContainsThenArrayContainsFrom!160 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (_values!3002 (v!3363 (underlying!505 thiss!992))) (mask!7399 (v!3363 (underlying!505 thiss!992))) (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) (zeroValue!2864 (v!3363 (underlying!505 thiss!992))) (minValue!2864 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992)))) lt!77732)))

(declare-fun b!147240 () Bool)

(assert (=> b!147240 (= e!96105 (arrayContainsKey!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!147241 () Bool)

(assert (=> b!147241 (= e!96105 (ite (= (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2764 (v!3363 (underlying!505 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!46481 c!27815) b!147240))

(assert (= (and d!46481 (not c!27815)) b!147241))

(assert (=> d!46481 m!176769))

(declare-fun m!177283 () Bool)

(assert (=> d!46481 m!177283))

(assert (=> d!46481 m!177067))

(assert (=> b!147240 m!176769))

(assert (=> b!147240 m!176773))

(assert (=> b!146817 d!46481))

(declare-fun d!46483 () Bool)

(declare-fun res!69989 () Bool)

(declare-fun e!96114 () Bool)

(assert (=> d!46483 (=> res!69989 e!96114)))

(assert (=> d!46483 (= res!69989 (bvsge from!355 (size!2644 (_keys!4788 (v!3363 (underlying!505 thiss!992))))))))

(assert (=> d!46483 (= (arrayNoDuplicates!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) from!355 Nil!1800) e!96114)))

(declare-fun b!147252 () Bool)

(declare-fun e!96115 () Bool)

(declare-fun contains!951 (List!1803 (_ BitVec 64)) Bool)

(assert (=> b!147252 (= e!96115 (contains!951 Nil!1800 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun b!147253 () Bool)

(declare-fun e!96117 () Bool)

(declare-fun e!96116 () Bool)

(assert (=> b!147253 (= e!96117 e!96116)))

(declare-fun c!27818 () Bool)

(assert (=> b!147253 (= c!27818 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun b!147254 () Bool)

(assert (=> b!147254 (= e!96114 e!96117)))

(declare-fun res!69990 () Bool)

(assert (=> b!147254 (=> (not res!69990) (not e!96117))))

(assert (=> b!147254 (= res!69990 (not e!96115))))

(declare-fun res!69988 () Bool)

(assert (=> b!147254 (=> (not res!69988) (not e!96115))))

(assert (=> b!147254 (= res!69988 (validKeyInArray!0 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355)))))

(declare-fun b!147255 () Bool)

(declare-fun call!16506 () Bool)

(assert (=> b!147255 (= e!96116 call!16506)))

(declare-fun bm!16503 () Bool)

(assert (=> bm!16503 (= call!16506 (arrayNoDuplicates!0 (_keys!4788 (v!3363 (underlying!505 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27818 (Cons!1799 (select (arr!2368 (_keys!4788 (v!3363 (underlying!505 thiss!992)))) from!355) Nil!1800) Nil!1800)))))

(declare-fun b!147256 () Bool)

(assert (=> b!147256 (= e!96116 call!16506)))

(assert (= (and d!46483 (not res!69989)) b!147254))

(assert (= (and b!147254 res!69988) b!147252))

(assert (= (and b!147254 res!69990) b!147253))

(assert (= (and b!147253 c!27818) b!147255))

(assert (= (and b!147253 (not c!27818)) b!147256))

(assert (= (or b!147255 b!147256) bm!16503))

(assert (=> b!147252 m!176769))

(assert (=> b!147252 m!176769))

(declare-fun m!177285 () Bool)

(assert (=> b!147252 m!177285))

(assert (=> b!147253 m!176769))

(assert (=> b!147253 m!176769))

(assert (=> b!147253 m!177195))

(assert (=> b!147254 m!176769))

(assert (=> b!147254 m!176769))

(assert (=> b!147254 m!177195))

(assert (=> bm!16503 m!176769))

(declare-fun m!177287 () Bool)

(assert (=> bm!16503 m!177287))

(assert (=> b!146817 d!46483))

(declare-fun mapNonEmpty!5037 () Bool)

(declare-fun mapRes!5037 () Bool)

(declare-fun tp!11931 () Bool)

(declare-fun e!96122 () Bool)

(assert (=> mapNonEmpty!5037 (= mapRes!5037 (and tp!11931 e!96122))))

(declare-fun mapValue!5037 () ValueCell!1149)

(declare-fun mapRest!5037 () (Array (_ BitVec 32) ValueCell!1149))

(declare-fun mapKey!5037 () (_ BitVec 32))

(assert (=> mapNonEmpty!5037 (= mapRest!5027 (store mapRest!5037 mapKey!5037 mapValue!5037))))

(declare-fun mapIsEmpty!5037 () Bool)

(assert (=> mapIsEmpty!5037 mapRes!5037))

(declare-fun b!147264 () Bool)

(declare-fun e!96123 () Bool)

(assert (=> b!147264 (= e!96123 tp_is_empty!2985)))

(declare-fun b!147263 () Bool)

(assert (=> b!147263 (= e!96122 tp_is_empty!2985)))

(declare-fun condMapEmpty!5037 () Bool)

(declare-fun mapDefault!5037 () ValueCell!1149)

(assert (=> mapNonEmpty!5028 (= condMapEmpty!5037 (= mapRest!5027 ((as const (Array (_ BitVec 32) ValueCell!1149)) mapDefault!5037)))))

(assert (=> mapNonEmpty!5028 (= tp!11913 (and e!96123 mapRes!5037))))

(assert (= (and mapNonEmpty!5028 condMapEmpty!5037) mapIsEmpty!5037))

(assert (= (and mapNonEmpty!5028 (not condMapEmpty!5037)) mapNonEmpty!5037))

(assert (= (and mapNonEmpty!5037 ((_ is ValueCellFull!1149) mapValue!5037)) b!147263))

(assert (= (and mapNonEmpty!5028 ((_ is ValueCellFull!1149) mapDefault!5037)) b!147264))

(declare-fun m!177289 () Bool)

(assert (=> mapNonEmpty!5037 m!177289))

(declare-fun mapNonEmpty!5038 () Bool)

(declare-fun mapRes!5038 () Bool)

(declare-fun tp!11932 () Bool)

(declare-fun e!96124 () Bool)

(assert (=> mapNonEmpty!5038 (= mapRes!5038 (and tp!11932 e!96124))))

(declare-fun mapValue!5038 () ValueCell!1149)

(declare-fun mapKey!5038 () (_ BitVec 32))

(declare-fun mapRest!5038 () (Array (_ BitVec 32) ValueCell!1149))

(assert (=> mapNonEmpty!5038 (= mapRest!5028 (store mapRest!5038 mapKey!5038 mapValue!5038))))

(declare-fun mapIsEmpty!5038 () Bool)

(assert (=> mapIsEmpty!5038 mapRes!5038))

(declare-fun b!147266 () Bool)

(declare-fun e!96125 () Bool)

(assert (=> b!147266 (= e!96125 tp_is_empty!2985)))

(declare-fun b!147265 () Bool)

(assert (=> b!147265 (= e!96124 tp_is_empty!2985)))

(declare-fun condMapEmpty!5038 () Bool)

(declare-fun mapDefault!5038 () ValueCell!1149)

(assert (=> mapNonEmpty!5027 (= condMapEmpty!5038 (= mapRest!5028 ((as const (Array (_ BitVec 32) ValueCell!1149)) mapDefault!5038)))))

(assert (=> mapNonEmpty!5027 (= tp!11915 (and e!96125 mapRes!5038))))

(assert (= (and mapNonEmpty!5027 condMapEmpty!5038) mapIsEmpty!5038))

(assert (= (and mapNonEmpty!5027 (not condMapEmpty!5038)) mapNonEmpty!5038))

(assert (= (and mapNonEmpty!5038 ((_ is ValueCellFull!1149) mapValue!5038)) b!147265))

(assert (= (and mapNonEmpty!5027 ((_ is ValueCellFull!1149) mapDefault!5038)) b!147266))

(declare-fun m!177291 () Bool)

(assert (=> mapNonEmpty!5038 m!177291))

(declare-fun b_lambda!6615 () Bool)

(assert (= b_lambda!6611 (or (and b!146806 b_free!3137) (and b!146815 b_free!3139 (= (defaultEntry!3019 newMap!16) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))))) b_lambda!6615)))

(declare-fun b_lambda!6617 () Bool)

(assert (= b_lambda!6605 (or (and b!146806 b_free!3137) (and b!146815 b_free!3139 (= (defaultEntry!3019 newMap!16) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))))) b_lambda!6617)))

(declare-fun b_lambda!6619 () Bool)

(assert (= b_lambda!6613 (or (and b!146806 b_free!3137) (and b!146815 b_free!3139 (= (defaultEntry!3019 newMap!16) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))))) b_lambda!6619)))

(declare-fun b_lambda!6621 () Bool)

(assert (= b_lambda!6609 (or (and b!146806 b_free!3137) (and b!146815 b_free!3139 (= (defaultEntry!3019 newMap!16) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))))) b_lambda!6621)))

(declare-fun b_lambda!6623 () Bool)

(assert (= b_lambda!6607 (or (and b!146806 b_free!3137) (and b!146815 b_free!3139 (= (defaultEntry!3019 newMap!16) (defaultEntry!3019 (v!3363 (underlying!505 thiss!992))))) b_lambda!6623)))

(check-sat (not d!46477) (not b!147187) (not d!46425) (not d!46481) (not bm!16457) (not b!147156) (not b!146937) (not b!147066) (not b!147208) (not d!46471) (not bm!16503) (not bm!16499) (not d!46435) (not b!146956) (not b!147218) (not b!147159) (not bm!16493) (not b!147186) (not b_lambda!6617) (not mapNonEmpty!5037) (not bm!16452) (not bm!16496) (not b!147135) (not b!146933) (not bm!16463) (not b!147158) (not b!147130) (not bm!16484) (not bm!16497) (not b_lambda!6619) (not b!147055) (not b!147129) tp_is_empty!2985 (not b!147041) (not b!147235) (not b!147201) (not b!147219) (not b!147202) (not d!46447) (not b_lambda!6623) (not b!147223) (not b!147228) (not bm!16486) (not d!46453) (not b!147253) (not bm!16394) (not d!46455) (not d!46475) (not b!147189) (not b!147252) (not mapNonEmpty!5038) (not d!46443) (not bm!16447) (not b_lambda!6603) (not b!147128) (not bm!16462) (not d!46473) (not b!147254) (not d!46439) (not b!147157) (not b_next!3139) (not b!147221) (not b!147203) (not b!146926) (not d!46423) (not bm!16387) b_and!9251 (not d!46449) (not bm!16494) (not b!147240) (not b_next!3137) (not b!147206) (not bm!16489) (not bm!16465) (not b!147196) (not b!147227) (not bm!16450) (not b!147197) (not bm!16448) (not b!147145) (not bm!16390) (not b!147222) (not b!147185) (not bm!16469) (not b!146927) (not d!46433) (not b_lambda!6621) b_and!9249 (not bm!16467) (not b!147058) (not b!147216) (not d!46445) (not b!147142) (not d!46429) (not b!147229) (not d!46459) (not b!146945) (not b!147151) (not bm!16386) (not b!147192) (not b!147194) (not bm!16388) (not bm!16458) (not d!46431) (not b_lambda!6615) (not b!146954) (not bm!16393) (not b!146947) (not b!147074) (not d!46441) (not b!147195) (not bm!16392) (not d!46461) (not b!147193) (not b!147215) (not bm!16395) (not bm!16397) (not d!46427) (not b!147048) (not d!46457) (not b!147226) (not d!46451) (not b!147143) (not b!147224) (not b!147150) (not b!147220) (not d!46421) (not bm!16385) (not b!146935) (not bm!16389) (not b!147051) (not b!147133) (not bm!16391) (not bm!16460) (not b!147225) (not b!146946) (not bm!16396) (not bm!16487))
(check-sat b_and!9249 b_and!9251 (not b_next!3137) (not b_next!3139))
