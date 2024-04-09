; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14582 () Bool)

(assert start!14582)

(declare-fun b!137828 () Bool)

(declare-fun b_free!2957 () Bool)

(declare-fun b_next!2957 () Bool)

(assert (=> b!137828 (= b_free!2957 (not b_next!2957))))

(declare-fun tp!11332 () Bool)

(declare-fun b_and!8569 () Bool)

(assert (=> b!137828 (= tp!11332 b_and!8569)))

(declare-fun b!137817 () Bool)

(declare-fun b_free!2959 () Bool)

(declare-fun b_next!2959 () Bool)

(assert (=> b!137817 (= b_free!2959 (not b_next!2959))))

(declare-fun tp!11331 () Bool)

(declare-fun b_and!8571 () Bool)

(assert (=> b!137817 (= tp!11331 b_and!8571)))

(declare-fun b!137816 () Bool)

(declare-fun e!89737 () Bool)

(declare-fun e!89739 () Bool)

(assert (=> b!137816 (= e!89737 e!89739)))

(declare-fun res!66058 () Bool)

(assert (=> b!137816 (=> (not res!66058) (not e!89739))))

(declare-datatypes ((V!3507 0))(
  ( (V!3508 (val!1492 Int)) )
))
(declare-datatypes ((array!4820 0))(
  ( (array!4821 (arr!2278 (Array (_ BitVec 32) (_ BitVec 64))) (size!2549 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1104 0))(
  ( (ValueCellFull!1104 (v!3235 V!3507)) (EmptyCell!1104) )
))
(declare-datatypes ((array!4822 0))(
  ( (array!4823 (arr!2279 (Array (_ BitVec 32) ValueCell!1104)) (size!2550 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1116 0))(
  ( (LongMapFixedSize!1117 (defaultEntry!2910 Int) (mask!7234 (_ BitVec 32)) (extraKeys!2667 (_ BitVec 32)) (zeroValue!2761 V!3507) (minValue!2761 V!3507) (_size!607 (_ BitVec 32)) (_keys!4667 array!4820) (_values!2893 array!4822) (_vacant!607 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!904 0))(
  ( (Cell!905 (v!3236 LongMapFixedSize!1116)) )
))
(declare-datatypes ((LongMap!904 0))(
  ( (LongMap!905 (underlying!463 Cell!904)) )
))
(declare-fun thiss!992 () LongMap!904)

(declare-datatypes ((tuple2!2630 0))(
  ( (tuple2!2631 (_1!1325 (_ BitVec 64)) (_2!1325 V!3507)) )
))
(declare-datatypes ((List!1744 0))(
  ( (Nil!1741) (Cons!1740 (h!2347 tuple2!2630) (t!6264 List!1744)) )
))
(declare-datatypes ((ListLongMap!1719 0))(
  ( (ListLongMap!1720 (toList!875 List!1744)) )
))
(declare-fun lt!72191 () ListLongMap!1719)

(declare-fun lt!72194 () ListLongMap!1719)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!137816 (= res!66058 (and (= lt!72191 lt!72194) (not (= (select (arr!2278 (_keys!4667 (v!3236 (underlying!463 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2278 (_keys!4667 (v!3236 (underlying!463 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1116)

(declare-fun map!1416 (LongMapFixedSize!1116) ListLongMap!1719)

(assert (=> b!137816 (= lt!72194 (map!1416 newMap!16))))

(declare-fun getCurrentListMap!545 (array!4820 array!4822 (_ BitVec 32) (_ BitVec 32) V!3507 V!3507 (_ BitVec 32) Int) ListLongMap!1719)

(assert (=> b!137816 (= lt!72191 (getCurrentListMap!545 (_keys!4667 (v!3236 (underlying!463 thiss!992))) (_values!2893 (v!3236 (underlying!463 thiss!992))) (mask!7234 (v!3236 (underlying!463 thiss!992))) (extraKeys!2667 (v!3236 (underlying!463 thiss!992))) (zeroValue!2761 (v!3236 (underlying!463 thiss!992))) (minValue!2761 (v!3236 (underlying!463 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2910 (v!3236 (underlying!463 thiss!992)))))))

(declare-fun e!89730 () Bool)

(declare-fun tp_is_empty!2895 () Bool)

(declare-fun e!89732 () Bool)

(declare-fun array_inv!1405 (array!4820) Bool)

(declare-fun array_inv!1406 (array!4822) Bool)

(assert (=> b!137817 (= e!89732 (and tp!11331 tp_is_empty!2895 (array_inv!1405 (_keys!4667 newMap!16)) (array_inv!1406 (_values!2893 newMap!16)) e!89730))))

(declare-fun b!137818 () Bool)

(declare-fun res!66057 () Bool)

(assert (=> b!137818 (=> (not res!66057) (not e!89737))))

(assert (=> b!137818 (= res!66057 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2549 (_keys!4667 (v!3236 (underlying!463 thiss!992)))))))))

(declare-fun b!137819 () Bool)

(declare-fun e!89741 () Bool)

(assert (=> b!137819 (= e!89739 e!89741)))

(declare-fun res!66054 () Bool)

(assert (=> b!137819 (=> (not res!66054) (not e!89741))))

(declare-fun contains!905 (ListLongMap!1719 (_ BitVec 64)) Bool)

(assert (=> b!137819 (= res!66054 (contains!905 lt!72194 (select (arr!2278 (_keys!4667 (v!3236 (underlying!463 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2632 0))(
  ( (tuple2!2633 (_1!1326 Bool) (_2!1326 LongMapFixedSize!1116)) )
))
(declare-fun lt!72193 () tuple2!2632)

(declare-fun update!197 (LongMapFixedSize!1116 (_ BitVec 64) V!3507) tuple2!2632)

(declare-fun get!1505 (ValueCell!1104 V!3507) V!3507)

(declare-fun dynLambda!430 (Int (_ BitVec 64)) V!3507)

(assert (=> b!137819 (= lt!72193 (update!197 newMap!16 (select (arr!2278 (_keys!4667 (v!3236 (underlying!463 thiss!992)))) from!355) (get!1505 (select (arr!2279 (_values!2893 (v!3236 (underlying!463 thiss!992)))) from!355) (dynLambda!430 (defaultEntry!2910 (v!3236 (underlying!463 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!137820 () Bool)

(declare-fun res!66056 () Bool)

(assert (=> b!137820 (=> (not res!66056) (not e!89737))))

(assert (=> b!137820 (= res!66056 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7234 newMap!16)) (_size!607 (v!3236 (underlying!463 thiss!992)))))))

(declare-fun b!137821 () Bool)

(declare-fun e!89740 () Bool)

(declare-fun e!89735 () Bool)

(assert (=> b!137821 (= e!89740 e!89735)))

(declare-fun res!66053 () Bool)

(assert (=> start!14582 (=> (not res!66053) (not e!89737))))

(declare-fun valid!531 (LongMap!904) Bool)

(assert (=> start!14582 (= res!66053 (valid!531 thiss!992))))

(assert (=> start!14582 e!89737))

(declare-fun e!89731 () Bool)

(assert (=> start!14582 e!89731))

(assert (=> start!14582 true))

(assert (=> start!14582 e!89732))

(declare-fun mapNonEmpty!4715 () Bool)

(declare-fun mapRes!4715 () Bool)

(declare-fun tp!11334 () Bool)

(declare-fun e!89744 () Bool)

(assert (=> mapNonEmpty!4715 (= mapRes!4715 (and tp!11334 e!89744))))

(declare-fun mapKey!4715 () (_ BitVec 32))

(declare-fun mapRest!4716 () (Array (_ BitVec 32) ValueCell!1104))

(declare-fun mapValue!4716 () ValueCell!1104)

(assert (=> mapNonEmpty!4715 (= (arr!2279 (_values!2893 (v!3236 (underlying!463 thiss!992)))) (store mapRest!4716 mapKey!4715 mapValue!4716))))

(declare-fun b!137822 () Bool)

(assert (=> b!137822 (= e!89731 e!89740)))

(declare-fun mapNonEmpty!4716 () Bool)

(declare-fun mapRes!4716 () Bool)

(declare-fun tp!11333 () Bool)

(declare-fun e!89743 () Bool)

(assert (=> mapNonEmpty!4716 (= mapRes!4716 (and tp!11333 e!89743))))

(declare-fun mapKey!4716 () (_ BitVec 32))

(declare-fun mapRest!4715 () (Array (_ BitVec 32) ValueCell!1104))

(declare-fun mapValue!4715 () ValueCell!1104)

(assert (=> mapNonEmpty!4716 (= (arr!2279 (_values!2893 newMap!16)) (store mapRest!4715 mapKey!4716 mapValue!4715))))

(declare-fun b!137823 () Bool)

(assert (=> b!137823 (= e!89741 (not true))))

(declare-fun arrayContainsKey!0 (array!4820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!137823 (arrayContainsKey!0 (_keys!4667 (v!3236 (underlying!463 thiss!992))) (select (arr!2278 (_keys!4667 (v!3236 (underlying!463 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!4354 0))(
  ( (Unit!4355) )
))
(declare-fun lt!72192 () Unit!4354)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!134 (array!4820 array!4822 (_ BitVec 32) (_ BitVec 32) V!3507 V!3507 (_ BitVec 64) (_ BitVec 32) Int) Unit!4354)

(assert (=> b!137823 (= lt!72192 (lemmaListMapContainsThenArrayContainsFrom!134 (_keys!4667 (v!3236 (underlying!463 thiss!992))) (_values!2893 (v!3236 (underlying!463 thiss!992))) (mask!7234 (v!3236 (underlying!463 thiss!992))) (extraKeys!2667 (v!3236 (underlying!463 thiss!992))) (zeroValue!2761 (v!3236 (underlying!463 thiss!992))) (minValue!2761 (v!3236 (underlying!463 thiss!992))) (select (arr!2278 (_keys!4667 (v!3236 (underlying!463 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2910 (v!3236 (underlying!463 thiss!992)))))))

(declare-fun b!137824 () Bool)

(declare-fun e!89734 () Bool)

(assert (=> b!137824 (= e!89734 tp_is_empty!2895)))

(declare-fun b!137825 () Bool)

(assert (=> b!137825 (= e!89744 tp_is_empty!2895)))

(declare-fun b!137826 () Bool)

(declare-fun e!89742 () Bool)

(assert (=> b!137826 (= e!89742 tp_is_empty!2895)))

(declare-fun b!137827 () Bool)

(assert (=> b!137827 (= e!89730 (and e!89734 mapRes!4716))))

(declare-fun condMapEmpty!4715 () Bool)

(declare-fun mapDefault!4715 () ValueCell!1104)

(assert (=> b!137827 (= condMapEmpty!4715 (= (arr!2279 (_values!2893 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1104)) mapDefault!4715)))))

(declare-fun e!89733 () Bool)

(assert (=> b!137828 (= e!89735 (and tp!11332 tp_is_empty!2895 (array_inv!1405 (_keys!4667 (v!3236 (underlying!463 thiss!992)))) (array_inv!1406 (_values!2893 (v!3236 (underlying!463 thiss!992)))) e!89733))))

(declare-fun mapIsEmpty!4715 () Bool)

(assert (=> mapIsEmpty!4715 mapRes!4716))

(declare-fun mapIsEmpty!4716 () Bool)

(assert (=> mapIsEmpty!4716 mapRes!4715))

(declare-fun b!137829 () Bool)

(assert (=> b!137829 (= e!89733 (and e!89742 mapRes!4715))))

(declare-fun condMapEmpty!4716 () Bool)

(declare-fun mapDefault!4716 () ValueCell!1104)

(assert (=> b!137829 (= condMapEmpty!4716 (= (arr!2279 (_values!2893 (v!3236 (underlying!463 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1104)) mapDefault!4716)))))

(declare-fun b!137830 () Bool)

(assert (=> b!137830 (= e!89743 tp_is_empty!2895)))

(declare-fun b!137831 () Bool)

(declare-fun res!66055 () Bool)

(assert (=> b!137831 (=> (not res!66055) (not e!89737))))

(declare-fun valid!532 (LongMapFixedSize!1116) Bool)

(assert (=> b!137831 (= res!66055 (valid!532 newMap!16))))

(assert (= (and start!14582 res!66053) b!137818))

(assert (= (and b!137818 res!66057) b!137831))

(assert (= (and b!137831 res!66055) b!137820))

(assert (= (and b!137820 res!66056) b!137816))

(assert (= (and b!137816 res!66058) b!137819))

(assert (= (and b!137819 res!66054) b!137823))

(assert (= (and b!137829 condMapEmpty!4716) mapIsEmpty!4716))

(assert (= (and b!137829 (not condMapEmpty!4716)) mapNonEmpty!4715))

(get-info :version)

(assert (= (and mapNonEmpty!4715 ((_ is ValueCellFull!1104) mapValue!4716)) b!137825))

(assert (= (and b!137829 ((_ is ValueCellFull!1104) mapDefault!4716)) b!137826))

(assert (= b!137828 b!137829))

(assert (= b!137821 b!137828))

(assert (= b!137822 b!137821))

(assert (= start!14582 b!137822))

(assert (= (and b!137827 condMapEmpty!4715) mapIsEmpty!4715))

(assert (= (and b!137827 (not condMapEmpty!4715)) mapNonEmpty!4716))

(assert (= (and mapNonEmpty!4716 ((_ is ValueCellFull!1104) mapValue!4715)) b!137830))

(assert (= (and b!137827 ((_ is ValueCellFull!1104) mapDefault!4715)) b!137824))

(assert (= b!137817 b!137827))

(assert (= start!14582 b!137817))

(declare-fun b_lambda!6213 () Bool)

(assert (=> (not b_lambda!6213) (not b!137819)))

(declare-fun t!6261 () Bool)

(declare-fun tb!2481 () Bool)

(assert (=> (and b!137828 (= (defaultEntry!2910 (v!3236 (underlying!463 thiss!992))) (defaultEntry!2910 (v!3236 (underlying!463 thiss!992)))) t!6261) tb!2481))

(declare-fun result!4073 () Bool)

(assert (=> tb!2481 (= result!4073 tp_is_empty!2895)))

(assert (=> b!137819 t!6261))

(declare-fun b_and!8573 () Bool)

(assert (= b_and!8569 (and (=> t!6261 result!4073) b_and!8573)))

(declare-fun tb!2483 () Bool)

(declare-fun t!6263 () Bool)

(assert (=> (and b!137817 (= (defaultEntry!2910 newMap!16) (defaultEntry!2910 (v!3236 (underlying!463 thiss!992)))) t!6263) tb!2483))

(declare-fun result!4077 () Bool)

(assert (= result!4077 result!4073))

(assert (=> b!137819 t!6263))

(declare-fun b_and!8575 () Bool)

(assert (= b_and!8571 (and (=> t!6263 result!4077) b_and!8575)))

(declare-fun m!165173 () Bool)

(assert (=> b!137823 m!165173))

(assert (=> b!137823 m!165173))

(declare-fun m!165175 () Bool)

(assert (=> b!137823 m!165175))

(assert (=> b!137823 m!165173))

(declare-fun m!165177 () Bool)

(assert (=> b!137823 m!165177))

(declare-fun m!165179 () Bool)

(assert (=> b!137819 m!165179))

(declare-fun m!165181 () Bool)

(assert (=> b!137819 m!165181))

(declare-fun m!165183 () Bool)

(assert (=> b!137819 m!165183))

(assert (=> b!137819 m!165173))

(assert (=> b!137819 m!165181))

(assert (=> b!137819 m!165173))

(declare-fun m!165185 () Bool)

(assert (=> b!137819 m!165185))

(assert (=> b!137819 m!165173))

(assert (=> b!137819 m!165183))

(declare-fun m!165187 () Bool)

(assert (=> b!137819 m!165187))

(assert (=> b!137819 m!165179))

(declare-fun m!165189 () Bool)

(assert (=> b!137828 m!165189))

(declare-fun m!165191 () Bool)

(assert (=> b!137828 m!165191))

(declare-fun m!165193 () Bool)

(assert (=> b!137817 m!165193))

(declare-fun m!165195 () Bool)

(assert (=> b!137817 m!165195))

(declare-fun m!165197 () Bool)

(assert (=> start!14582 m!165197))

(declare-fun m!165199 () Bool)

(assert (=> mapNonEmpty!4715 m!165199))

(assert (=> b!137816 m!165173))

(declare-fun m!165201 () Bool)

(assert (=> b!137816 m!165201))

(declare-fun m!165203 () Bool)

(assert (=> b!137816 m!165203))

(declare-fun m!165205 () Bool)

(assert (=> b!137831 m!165205))

(declare-fun m!165207 () Bool)

(assert (=> mapNonEmpty!4716 m!165207))

(check-sat (not mapNonEmpty!4716) (not b!137828) (not b_next!2959) b_and!8573 (not b!137819) (not b_next!2957) (not b!137817) (not mapNonEmpty!4715) (not b!137816) (not b!137823) (not b!137831) (not start!14582) (not b_lambda!6213) b_and!8575 tp_is_empty!2895)
(check-sat b_and!8573 b_and!8575 (not b_next!2957) (not b_next!2959))
