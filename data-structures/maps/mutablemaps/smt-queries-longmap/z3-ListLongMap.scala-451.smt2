; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8332 () Bool)

(assert start!8332)

(declare-fun b!54773 () Bool)

(declare-fun b_free!1805 () Bool)

(declare-fun b_next!1805 () Bool)

(assert (=> b!54773 (= b_free!1805 (not b_next!1805))))

(declare-fun tp!7517 () Bool)

(declare-fun b_and!3161 () Bool)

(assert (=> b!54773 (= tp!7517 b_and!3161)))

(declare-fun b!54775 () Bool)

(declare-fun b_free!1807 () Bool)

(declare-fun b_next!1807 () Bool)

(assert (=> b!54775 (= b_free!1807 (not b_next!1807))))

(declare-fun tp!7516 () Bool)

(declare-fun b_and!3163 () Bool)

(assert (=> b!54775 (= tp!7516 b_and!3163)))

(declare-fun mapNonEmpty!2627 () Bool)

(declare-fun mapRes!2627 () Bool)

(declare-fun tp!7515 () Bool)

(declare-fun e!35842 () Bool)

(assert (=> mapNonEmpty!2627 (= mapRes!2627 (and tp!7515 e!35842))))

(declare-fun mapKey!2628 () (_ BitVec 32))

(declare-datatypes ((V!2739 0))(
  ( (V!2740 (val!1204 Int)) )
))
(declare-datatypes ((ValueCell!816 0))(
  ( (ValueCellFull!816 (v!2290 V!2739)) (EmptyCell!816) )
))
(declare-fun mapRest!2627 () (Array (_ BitVec 32) ValueCell!816))

(declare-datatypes ((array!3560 0))(
  ( (array!3561 (arr!1702 (Array (_ BitVec 32) (_ BitVec 64))) (size!1931 (_ BitVec 32))) )
))
(declare-datatypes ((array!3562 0))(
  ( (array!3563 (arr!1703 (Array (_ BitVec 32) ValueCell!816)) (size!1932 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!540 0))(
  ( (LongMapFixedSize!541 (defaultEntry!1984 Int) (mask!5833 (_ BitVec 32)) (extraKeys!1875 (_ BitVec 32)) (zeroValue!1902 V!2739) (minValue!1902 V!2739) (_size!319 (_ BitVec 32)) (_keys!3604 array!3560) (_values!1967 array!3562) (_vacant!319 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!540)

(declare-fun mapValue!2627 () ValueCell!816)

(assert (=> mapNonEmpty!2627 (= (arr!1703 (_values!1967 newMap!16)) (store mapRest!2627 mapKey!2628 mapValue!2627))))

(declare-fun b!54772 () Bool)

(declare-fun e!35836 () Bool)

(declare-fun e!35838 () Bool)

(declare-fun mapRes!2628 () Bool)

(assert (=> b!54772 (= e!35836 (and e!35838 mapRes!2628))))

(declare-fun condMapEmpty!2627 () Bool)

(declare-datatypes ((Cell!350 0))(
  ( (Cell!351 (v!2291 LongMapFixedSize!540)) )
))
(declare-datatypes ((LongMap!350 0))(
  ( (LongMap!351 (underlying!186 Cell!350)) )
))
(declare-fun thiss!992 () LongMap!350)

(declare-fun mapDefault!2627 () ValueCell!816)

(assert (=> b!54772 (= condMapEmpty!2627 (= (arr!1703 (_values!1967 (v!2291 (underlying!186 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!816)) mapDefault!2627)))))

(declare-fun tp_is_empty!2319 () Bool)

(declare-fun e!35843 () Bool)

(declare-fun array_inv!999 (array!3560) Bool)

(declare-fun array_inv!1000 (array!3562) Bool)

(assert (=> b!54773 (= e!35843 (and tp!7517 tp_is_empty!2319 (array_inv!999 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) (array_inv!1000 (_values!1967 (v!2291 (underlying!186 thiss!992)))) e!35836))))

(declare-fun e!35839 () Bool)

(declare-fun e!35848 () Bool)

(assert (=> b!54775 (= e!35848 (and tp!7516 tp_is_empty!2319 (array_inv!999 (_keys!3604 newMap!16)) (array_inv!1000 (_values!1967 newMap!16)) e!35839))))

(declare-fun b!54776 () Bool)

(declare-fun e!35847 () Bool)

(assert (=> b!54776 (= e!35847 e!35843)))

(declare-fun b!54777 () Bool)

(assert (=> b!54777 (= e!35838 tp_is_empty!2319)))

(declare-fun b!54778 () Bool)

(declare-fun e!35845 () Bool)

(declare-fun e!35846 () Bool)

(assert (=> b!54778 (= e!35845 e!35846)))

(declare-fun res!30940 () Bool)

(assert (=> b!54778 (=> (not res!30940) (not e!35846))))

(declare-datatypes ((tuple2!1952 0))(
  ( (tuple2!1953 (_1!986 (_ BitVec 64)) (_2!986 V!2739)) )
))
(declare-datatypes ((List!1402 0))(
  ( (Nil!1399) (Cons!1398 (h!1978 tuple2!1952) (t!4584 List!1402)) )
))
(declare-datatypes ((ListLongMap!1327 0))(
  ( (ListLongMap!1328 (toList!679 List!1402)) )
))
(declare-fun lt!21741 () ListLongMap!1327)

(declare-fun lt!21742 () ListLongMap!1327)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!54778 (= res!30940 (and (= lt!21742 lt!21741) (not (= (select (arr!1702 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1702 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1062 (LongMapFixedSize!540) ListLongMap!1327)

(assert (=> b!54778 (= lt!21741 (map!1062 newMap!16))))

(declare-fun getCurrentListMap!382 (array!3560 array!3562 (_ BitVec 32) (_ BitVec 32) V!2739 V!2739 (_ BitVec 32) Int) ListLongMap!1327)

(assert (=> b!54778 (= lt!21742 (getCurrentListMap!382 (_keys!3604 (v!2291 (underlying!186 thiss!992))) (_values!1967 (v!2291 (underlying!186 thiss!992))) (mask!5833 (v!2291 (underlying!186 thiss!992))) (extraKeys!1875 (v!2291 (underlying!186 thiss!992))) (zeroValue!1902 (v!2291 (underlying!186 thiss!992))) (minValue!1902 (v!2291 (underlying!186 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1984 (v!2291 (underlying!186 thiss!992)))))))

(declare-fun b!54779 () Bool)

(declare-fun e!35849 () Bool)

(assert (=> b!54779 (= e!35849 tp_is_empty!2319)))

(declare-fun b!54780 () Bool)

(declare-fun e!35837 () Bool)

(assert (=> b!54780 (= e!35837 e!35847)))

(declare-fun b!54781 () Bool)

(declare-fun res!30939 () Bool)

(assert (=> b!54781 (=> (not res!30939) (not e!35845))))

(assert (=> b!54781 (= res!30939 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5833 newMap!16)) (_size!319 (v!2291 (underlying!186 thiss!992)))))))

(declare-fun mapNonEmpty!2628 () Bool)

(declare-fun tp!7518 () Bool)

(assert (=> mapNonEmpty!2628 (= mapRes!2628 (and tp!7518 e!35849))))

(declare-fun mapValue!2628 () ValueCell!816)

(declare-fun mapKey!2627 () (_ BitVec 32))

(declare-fun mapRest!2628 () (Array (_ BitVec 32) ValueCell!816))

(assert (=> mapNonEmpty!2628 (= (arr!1703 (_values!1967 (v!2291 (underlying!186 thiss!992)))) (store mapRest!2628 mapKey!2627 mapValue!2628))))

(declare-fun b!54782 () Bool)

(assert (=> b!54782 (= e!35842 tp_is_empty!2319)))

(declare-fun mapIsEmpty!2627 () Bool)

(assert (=> mapIsEmpty!2627 mapRes!2627))

(declare-fun b!54783 () Bool)

(declare-fun e!35840 () Bool)

(assert (=> b!54783 (= e!35840 true)))

(declare-fun lt!21738 () Bool)

(declare-datatypes ((List!1403 0))(
  ( (Nil!1400) (Cons!1399 (h!1979 (_ BitVec 64)) (t!4585 List!1403)) )
))
(declare-fun arrayNoDuplicates!0 (array!3560 (_ BitVec 32) List!1403) Bool)

(assert (=> b!54783 (= lt!21738 (arrayNoDuplicates!0 (_keys!3604 (v!2291 (underlying!186 thiss!992))) #b00000000000000000000000000000000 Nil!1400))))

(declare-fun b!54784 () Bool)

(declare-fun res!30945 () Bool)

(assert (=> b!54784 (=> (not res!30945) (not e!35845))))

(assert (=> b!54784 (= res!30945 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1931 (_keys!3604 (v!2291 (underlying!186 thiss!992)))))))))

(declare-fun b!54785 () Bool)

(declare-fun e!35841 () Bool)

(assert (=> b!54785 (= e!35846 e!35841)))

(declare-fun res!30944 () Bool)

(assert (=> b!54785 (=> (not res!30944) (not e!35841))))

(declare-fun contains!650 (ListLongMap!1327 (_ BitVec 64)) Bool)

(assert (=> b!54785 (= res!30944 (contains!650 lt!21741 (select (arr!1702 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1954 0))(
  ( (tuple2!1955 (_1!987 Bool) (_2!987 LongMapFixedSize!540)) )
))
(declare-fun lt!21739 () tuple2!1954)

(declare-fun update!62 (LongMapFixedSize!540 (_ BitVec 64) V!2739) tuple2!1954)

(declare-fun get!1027 (ValueCell!816 V!2739) V!2739)

(declare-fun dynLambda!290 (Int (_ BitVec 64)) V!2739)

(assert (=> b!54785 (= lt!21739 (update!62 newMap!16 (select (arr!1702 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) from!355) (get!1027 (select (arr!1703 (_values!1967 (v!2291 (underlying!186 thiss!992)))) from!355) (dynLambda!290 (defaultEntry!1984 (v!2291 (underlying!186 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54786 () Bool)

(declare-fun e!35844 () Bool)

(assert (=> b!54786 (= e!35844 tp_is_empty!2319)))

(declare-fun b!54787 () Bool)

(declare-fun res!30943 () Bool)

(assert (=> b!54787 (=> (not res!30943) (not e!35845))))

(declare-fun valid!210 (LongMapFixedSize!540) Bool)

(assert (=> b!54787 (= res!30943 (valid!210 newMap!16))))

(declare-fun b!54774 () Bool)

(assert (=> b!54774 (= e!35841 (not e!35840))))

(declare-fun res!30942 () Bool)

(assert (=> b!54774 (=> res!30942 e!35840)))

(assert (=> b!54774 (= res!30942 (or (bvsge (size!1931 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!1931 (_keys!3604 (v!2291 (underlying!186 thiss!992))))) (bvsgt from!355 (size!1931 (_keys!3604 (v!2291 (underlying!186 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!3560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!54774 (arrayContainsKey!0 (_keys!3604 (v!2291 (underlying!186 thiss!992))) (select (arr!1702 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!1436 0))(
  ( (Unit!1437) )
))
(declare-fun lt!21740 () Unit!1436)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!7 (array!3560 array!3562 (_ BitVec 32) (_ BitVec 32) V!2739 V!2739 (_ BitVec 64) (_ BitVec 32) Int) Unit!1436)

(assert (=> b!54774 (= lt!21740 (lemmaListMapContainsThenArrayContainsFrom!7 (_keys!3604 (v!2291 (underlying!186 thiss!992))) (_values!1967 (v!2291 (underlying!186 thiss!992))) (mask!5833 (v!2291 (underlying!186 thiss!992))) (extraKeys!1875 (v!2291 (underlying!186 thiss!992))) (zeroValue!1902 (v!2291 (underlying!186 thiss!992))) (minValue!1902 (v!2291 (underlying!186 thiss!992))) (select (arr!1702 (_keys!3604 (v!2291 (underlying!186 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1984 (v!2291 (underlying!186 thiss!992)))))))

(declare-fun res!30941 () Bool)

(assert (=> start!8332 (=> (not res!30941) (not e!35845))))

(declare-fun valid!211 (LongMap!350) Bool)

(assert (=> start!8332 (= res!30941 (valid!211 thiss!992))))

(assert (=> start!8332 e!35845))

(assert (=> start!8332 e!35837))

(assert (=> start!8332 true))

(assert (=> start!8332 e!35848))

(declare-fun b!54788 () Bool)

(assert (=> b!54788 (= e!35839 (and e!35844 mapRes!2627))))

(declare-fun condMapEmpty!2628 () Bool)

(declare-fun mapDefault!2628 () ValueCell!816)

(assert (=> b!54788 (= condMapEmpty!2628 (= (arr!1703 (_values!1967 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!816)) mapDefault!2628)))))

(declare-fun mapIsEmpty!2628 () Bool)

(assert (=> mapIsEmpty!2628 mapRes!2628))

(assert (= (and start!8332 res!30941) b!54784))

(assert (= (and b!54784 res!30945) b!54787))

(assert (= (and b!54787 res!30943) b!54781))

(assert (= (and b!54781 res!30939) b!54778))

(assert (= (and b!54778 res!30940) b!54785))

(assert (= (and b!54785 res!30944) b!54774))

(assert (= (and b!54774 (not res!30942)) b!54783))

(assert (= (and b!54772 condMapEmpty!2627) mapIsEmpty!2628))

(assert (= (and b!54772 (not condMapEmpty!2627)) mapNonEmpty!2628))

(get-info :version)

(assert (= (and mapNonEmpty!2628 ((_ is ValueCellFull!816) mapValue!2628)) b!54779))

(assert (= (and b!54772 ((_ is ValueCellFull!816) mapDefault!2627)) b!54777))

(assert (= b!54773 b!54772))

(assert (= b!54776 b!54773))

(assert (= b!54780 b!54776))

(assert (= start!8332 b!54780))

(assert (= (and b!54788 condMapEmpty!2628) mapIsEmpty!2627))

(assert (= (and b!54788 (not condMapEmpty!2628)) mapNonEmpty!2627))

(assert (= (and mapNonEmpty!2627 ((_ is ValueCellFull!816) mapValue!2627)) b!54782))

(assert (= (and b!54788 ((_ is ValueCellFull!816) mapDefault!2628)) b!54786))

(assert (= b!54775 b!54788))

(assert (= start!8332 b!54775))

(declare-fun b_lambda!2433 () Bool)

(assert (=> (not b_lambda!2433) (not b!54785)))

(declare-fun t!4581 () Bool)

(declare-fun tb!1157 () Bool)

(assert (=> (and b!54773 (= (defaultEntry!1984 (v!2291 (underlying!186 thiss!992))) (defaultEntry!1984 (v!2291 (underlying!186 thiss!992)))) t!4581) tb!1157))

(declare-fun result!2129 () Bool)

(assert (=> tb!1157 (= result!2129 tp_is_empty!2319)))

(assert (=> b!54785 t!4581))

(declare-fun b_and!3165 () Bool)

(assert (= b_and!3161 (and (=> t!4581 result!2129) b_and!3165)))

(declare-fun t!4583 () Bool)

(declare-fun tb!1159 () Bool)

(assert (=> (and b!54775 (= (defaultEntry!1984 newMap!16) (defaultEntry!1984 (v!2291 (underlying!186 thiss!992)))) t!4583) tb!1159))

(declare-fun result!2133 () Bool)

(assert (= result!2133 result!2129))

(assert (=> b!54785 t!4583))

(declare-fun b_and!3167 () Bool)

(assert (= b_and!3163 (and (=> t!4583 result!2133) b_and!3167)))

(declare-fun m!46303 () Bool)

(assert (=> mapNonEmpty!2627 m!46303))

(declare-fun m!46305 () Bool)

(assert (=> start!8332 m!46305))

(declare-fun m!46307 () Bool)

(assert (=> b!54778 m!46307))

(declare-fun m!46309 () Bool)

(assert (=> b!54778 m!46309))

(declare-fun m!46311 () Bool)

(assert (=> b!54778 m!46311))

(declare-fun m!46313 () Bool)

(assert (=> b!54773 m!46313))

(declare-fun m!46315 () Bool)

(assert (=> b!54773 m!46315))

(declare-fun m!46317 () Bool)

(assert (=> b!54785 m!46317))

(declare-fun m!46319 () Bool)

(assert (=> b!54785 m!46319))

(declare-fun m!46321 () Bool)

(assert (=> b!54785 m!46321))

(assert (=> b!54785 m!46307))

(declare-fun m!46323 () Bool)

(assert (=> b!54785 m!46323))

(assert (=> b!54785 m!46307))

(assert (=> b!54785 m!46319))

(assert (=> b!54785 m!46307))

(assert (=> b!54785 m!46321))

(declare-fun m!46325 () Bool)

(assert (=> b!54785 m!46325))

(assert (=> b!54785 m!46317))

(declare-fun m!46327 () Bool)

(assert (=> b!54783 m!46327))

(declare-fun m!46329 () Bool)

(assert (=> b!54775 m!46329))

(declare-fun m!46331 () Bool)

(assert (=> b!54775 m!46331))

(declare-fun m!46333 () Bool)

(assert (=> b!54787 m!46333))

(assert (=> b!54774 m!46307))

(assert (=> b!54774 m!46307))

(declare-fun m!46335 () Bool)

(assert (=> b!54774 m!46335))

(assert (=> b!54774 m!46307))

(declare-fun m!46337 () Bool)

(assert (=> b!54774 m!46337))

(declare-fun m!46339 () Bool)

(assert (=> mapNonEmpty!2628 m!46339))

(check-sat (not mapNonEmpty!2628) (not b!54783) (not b_next!1807) (not b!54773) (not b!54787) (not b!54785) tp_is_empty!2319 (not mapNonEmpty!2627) (not b!54774) b_and!3167 b_and!3165 (not b!54775) (not b_lambda!2433) (not b_next!1805) (not start!8332) (not b!54778))
(check-sat b_and!3165 b_and!3167 (not b_next!1805) (not b_next!1807))
