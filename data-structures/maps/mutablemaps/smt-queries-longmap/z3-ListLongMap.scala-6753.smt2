; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84696 () Bool)

(assert start!84696)

(declare-fun b_free!20079 () Bool)

(declare-fun b_next!20079 () Bool)

(assert (=> start!84696 (= b_free!20079 (not b_next!20079))))

(declare-fun tp!70033 () Bool)

(declare-fun b_and!32247 () Bool)

(assert (=> start!84696 (= tp!70033 b_and!32247)))

(declare-fun b!990085 () Bool)

(declare-fun res!662175 () Bool)

(declare-fun e!558306 () Bool)

(assert (=> b!990085 (=> (not res!662175) (not e!558306))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!990085 (= res!662175 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!990086 () Bool)

(declare-fun e!558310 () Bool)

(declare-fun tp_is_empty!23295 () Bool)

(assert (=> b!990086 (= e!558310 tp_is_empty!23295)))

(declare-fun mapNonEmpty!36991 () Bool)

(declare-fun mapRes!36991 () Bool)

(declare-fun tp!70032 () Bool)

(declare-fun e!558308 () Bool)

(assert (=> mapNonEmpty!36991 (= mapRes!36991 (and tp!70032 e!558308))))

(declare-fun mapKey!36991 () (_ BitVec 32))

(declare-datatypes ((V!36043 0))(
  ( (V!36044 (val!11698 Int)) )
))
(declare-datatypes ((ValueCell!11166 0))(
  ( (ValueCellFull!11166 (v!14268 V!36043)) (EmptyCell!11166) )
))
(declare-fun mapValue!36991 () ValueCell!11166)

(declare-fun mapRest!36991 () (Array (_ BitVec 32) ValueCell!11166))

(declare-datatypes ((array!62539 0))(
  ( (array!62540 (arr!30117 (Array (_ BitVec 32) ValueCell!11166)) (size!30597 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62539)

(assert (=> mapNonEmpty!36991 (= (arr!30117 _values!1278) (store mapRest!36991 mapKey!36991 mapValue!36991))))

(declare-fun b!990087 () Bool)

(declare-fun e!558311 () Bool)

(assert (=> b!990087 (= e!558311 (and e!558310 mapRes!36991))))

(declare-fun condMapEmpty!36991 () Bool)

(declare-fun mapDefault!36991 () ValueCell!11166)

(assert (=> b!990087 (= condMapEmpty!36991 (= (arr!30117 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11166)) mapDefault!36991)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!36043)

(declare-fun zeroValue!1220 () V!36043)

(declare-fun e!558309 () Bool)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62541 0))(
  ( (array!62542 (arr!30118 (Array (_ BitVec 32) (_ BitVec 64))) (size!30598 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62541)

(declare-fun b!990088 () Bool)

(declare-datatypes ((tuple2!15010 0))(
  ( (tuple2!15011 (_1!7515 (_ BitVec 64)) (_2!7515 V!36043)) )
))
(declare-fun lt!439232 () tuple2!15010)

(declare-datatypes ((List!20960 0))(
  ( (Nil!20957) (Cons!20956 (h!22118 tuple2!15010) (t!29943 List!20960)) )
))
(declare-datatypes ((ListLongMap!13721 0))(
  ( (ListLongMap!13722 (toList!6876 List!20960)) )
))
(declare-fun getCurrentListMap!3885 (array!62541 array!62539 (_ BitVec 32) (_ BitVec 32) V!36043 V!36043 (_ BitVec 32) Int) ListLongMap!13721)

(declare-fun +!3054 (ListLongMap!13721 tuple2!15010) ListLongMap!13721)

(assert (=> b!990088 (= e!558309 (not (= (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) (+!3054 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439232))))))

(declare-fun lt!439235 () ListLongMap!13721)

(declare-fun lt!439231 () tuple2!15010)

(assert (=> b!990088 (= (+!3054 (+!3054 lt!439235 lt!439231) lt!439232) (+!3054 (+!3054 lt!439235 lt!439232) lt!439231))))

(declare-fun lt!439233 () V!36043)

(assert (=> b!990088 (= lt!439232 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))

(assert (=> b!990088 (= lt!439231 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32814 0))(
  ( (Unit!32815) )
))
(declare-fun lt!439234 () Unit!32814)

(declare-fun addCommutativeForDiffKeys!708 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64) V!36043) Unit!32814)

(assert (=> b!990088 (= lt!439234 (addCommutativeForDiffKeys!708 lt!439235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30118 _keys!1544) from!1932) lt!439233))))

(declare-fun res!662179 () Bool)

(assert (=> start!84696 (=> (not res!662179) (not e!558306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84696 (= res!662179 (validMask!0 mask!1948))))

(assert (=> start!84696 e!558306))

(assert (=> start!84696 true))

(assert (=> start!84696 tp_is_empty!23295))

(declare-fun array_inv!23127 (array!62539) Bool)

(assert (=> start!84696 (and (array_inv!23127 _values!1278) e!558311)))

(assert (=> start!84696 tp!70033))

(declare-fun array_inv!23128 (array!62541) Bool)

(assert (=> start!84696 (array_inv!23128 _keys!1544)))

(declare-fun b!990089 () Bool)

(declare-fun res!662178 () Bool)

(assert (=> b!990089 (=> (not res!662178) (not e!558306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62541 (_ BitVec 32)) Bool)

(assert (=> b!990089 (= res!662178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990090 () Bool)

(declare-fun res!662181 () Bool)

(assert (=> b!990090 (=> (not res!662181) (not e!558306))))

(assert (=> b!990090 (= res!662181 (and (= (size!30597 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30598 _keys!1544) (size!30597 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!990091 () Bool)

(assert (=> b!990091 (= e!558308 tp_is_empty!23295)))

(declare-fun b!990092 () Bool)

(declare-fun res!662177 () Bool)

(assert (=> b!990092 (=> (not res!662177) (not e!558306))))

(assert (=> b!990092 (= res!662177 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30598 _keys!1544))))))

(declare-fun mapIsEmpty!36991 () Bool)

(assert (=> mapIsEmpty!36991 mapRes!36991))

(declare-fun b!990093 () Bool)

(declare-fun res!662180 () Bool)

(assert (=> b!990093 (=> (not res!662180) (not e!558306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!990093 (= res!662180 (validKeyInArray!0 (select (arr!30118 _keys!1544) from!1932)))))

(declare-fun b!990094 () Bool)

(assert (=> b!990094 (= e!558306 e!558309)))

(declare-fun res!662182 () Bool)

(assert (=> b!990094 (=> (not res!662182) (not e!558309))))

(assert (=> b!990094 (= res!662182 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30118 _keys!1544) from!1932))))))

(declare-fun get!15653 (ValueCell!11166 V!36043) V!36043)

(declare-fun dynLambda!1880 (Int (_ BitVec 64)) V!36043)

(assert (=> b!990094 (= lt!439233 (get!15653 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!3524 (array!62541 array!62539 (_ BitVec 32) (_ BitVec 32) V!36043 V!36043 (_ BitVec 32) Int) ListLongMap!13721)

(assert (=> b!990094 (= lt!439235 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!990095 () Bool)

(declare-fun res!662176 () Bool)

(assert (=> b!990095 (=> (not res!662176) (not e!558306))))

(declare-datatypes ((List!20961 0))(
  ( (Nil!20958) (Cons!20957 (h!22119 (_ BitVec 64)) (t!29944 List!20961)) )
))
(declare-fun arrayNoDuplicates!0 (array!62541 (_ BitVec 32) List!20961) Bool)

(assert (=> b!990095 (= res!662176 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20958))))

(assert (= (and start!84696 res!662179) b!990090))

(assert (= (and b!990090 res!662181) b!990089))

(assert (= (and b!990089 res!662178) b!990095))

(assert (= (and b!990095 res!662176) b!990092))

(assert (= (and b!990092 res!662177) b!990093))

(assert (= (and b!990093 res!662180) b!990085))

(assert (= (and b!990085 res!662175) b!990094))

(assert (= (and b!990094 res!662182) b!990088))

(assert (= (and b!990087 condMapEmpty!36991) mapIsEmpty!36991))

(assert (= (and b!990087 (not condMapEmpty!36991)) mapNonEmpty!36991))

(get-info :version)

(assert (= (and mapNonEmpty!36991 ((_ is ValueCellFull!11166) mapValue!36991)) b!990091))

(assert (= (and b!990087 ((_ is ValueCellFull!11166) mapDefault!36991)) b!990086))

(assert (= start!84696 b!990087))

(declare-fun b_lambda!15189 () Bool)

(assert (=> (not b_lambda!15189) (not b!990094)))

(declare-fun t!29942 () Bool)

(declare-fun tb!6833 () Bool)

(assert (=> (and start!84696 (= defaultEntry!1281 defaultEntry!1281) t!29942) tb!6833))

(declare-fun result!13659 () Bool)

(assert (=> tb!6833 (= result!13659 tp_is_empty!23295)))

(assert (=> b!990094 t!29942))

(declare-fun b_and!32249 () Bool)

(assert (= b_and!32247 (and (=> t!29942 result!13659) b_and!32249)))

(declare-fun m!917599 () Bool)

(assert (=> mapNonEmpty!36991 m!917599))

(declare-fun m!917601 () Bool)

(assert (=> b!990088 m!917601))

(declare-fun m!917603 () Bool)

(assert (=> b!990088 m!917603))

(declare-fun m!917605 () Bool)

(assert (=> b!990088 m!917605))

(assert (=> b!990088 m!917601))

(declare-fun m!917607 () Bool)

(assert (=> b!990088 m!917607))

(assert (=> b!990088 m!917603))

(declare-fun m!917609 () Bool)

(assert (=> b!990088 m!917609))

(declare-fun m!917611 () Bool)

(assert (=> b!990088 m!917611))

(declare-fun m!917613 () Bool)

(assert (=> b!990088 m!917613))

(declare-fun m!917615 () Bool)

(assert (=> b!990088 m!917615))

(assert (=> b!990088 m!917609))

(assert (=> b!990088 m!917613))

(declare-fun m!917617 () Bool)

(assert (=> b!990088 m!917617))

(declare-fun m!917619 () Bool)

(assert (=> b!990095 m!917619))

(assert (=> b!990093 m!917601))

(assert (=> b!990093 m!917601))

(declare-fun m!917621 () Bool)

(assert (=> b!990093 m!917621))

(assert (=> b!990094 m!917601))

(declare-fun m!917623 () Bool)

(assert (=> b!990094 m!917623))

(declare-fun m!917625 () Bool)

(assert (=> b!990094 m!917625))

(declare-fun m!917627 () Bool)

(assert (=> b!990094 m!917627))

(assert (=> b!990094 m!917623))

(assert (=> b!990094 m!917627))

(declare-fun m!917629 () Bool)

(assert (=> b!990094 m!917629))

(declare-fun m!917631 () Bool)

(assert (=> b!990089 m!917631))

(declare-fun m!917633 () Bool)

(assert (=> start!84696 m!917633))

(declare-fun m!917635 () Bool)

(assert (=> start!84696 m!917635))

(declare-fun m!917637 () Bool)

(assert (=> start!84696 m!917637))

(check-sat (not b_next!20079) (not b_lambda!15189) (not b!990089) (not mapNonEmpty!36991) (not b!990093) (not b!990095) (not b!990088) (not b!990094) b_and!32249 tp_is_empty!23295 (not start!84696))
(check-sat b_and!32249 (not b_next!20079))
(get-model)

(declare-fun b_lambda!15193 () Bool)

(assert (= b_lambda!15189 (or (and start!84696 b_free!20079) b_lambda!15193)))

(check-sat (not b_next!20079) (not b!990089) (not mapNonEmpty!36991) (not b_lambda!15193) (not b!990093) (not b!990095) (not b!990088) (not b!990094) b_and!32249 tp_is_empty!23295 (not start!84696))
(check-sat b_and!32249 (not b_next!20079))
(get-model)

(declare-fun d!117463 () Bool)

(declare-fun e!558332 () Bool)

(assert (=> d!117463 e!558332))

(declare-fun res!662211 () Bool)

(assert (=> d!117463 (=> (not res!662211) (not e!558332))))

(declare-fun lt!439259 () ListLongMap!13721)

(declare-fun contains!5732 (ListLongMap!13721 (_ BitVec 64)) Bool)

(assert (=> d!117463 (= res!662211 (contains!5732 lt!439259 (_1!7515 lt!439232)))))

(declare-fun lt!439261 () List!20960)

(assert (=> d!117463 (= lt!439259 (ListLongMap!13722 lt!439261))))

(declare-fun lt!439260 () Unit!32814)

(declare-fun lt!439262 () Unit!32814)

(assert (=> d!117463 (= lt!439260 lt!439262)))

(declare-datatypes ((Option!523 0))(
  ( (Some!522 (v!14270 V!36043)) (None!521) )
))
(declare-fun getValueByKey!517 (List!20960 (_ BitVec 64)) Option!523)

(assert (=> d!117463 (= (getValueByKey!517 lt!439261 (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232)))))

(declare-fun lemmaContainsTupThenGetReturnValue!274 (List!20960 (_ BitVec 64) V!36043) Unit!32814)

(assert (=> d!117463 (= lt!439262 (lemmaContainsTupThenGetReturnValue!274 lt!439261 (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(declare-fun insertStrictlySorted!330 (List!20960 (_ BitVec 64) V!36043) List!20960)

(assert (=> d!117463 (= lt!439261 (insertStrictlySorted!330 (toList!6876 lt!439235) (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(assert (=> d!117463 (= (+!3054 lt!439235 lt!439232) lt!439259)))

(declare-fun b!990137 () Bool)

(declare-fun res!662212 () Bool)

(assert (=> b!990137 (=> (not res!662212) (not e!558332))))

(assert (=> b!990137 (= res!662212 (= (getValueByKey!517 (toList!6876 lt!439259) (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232))))))

(declare-fun b!990138 () Bool)

(declare-fun contains!5733 (List!20960 tuple2!15010) Bool)

(assert (=> b!990138 (= e!558332 (contains!5733 (toList!6876 lt!439259) lt!439232))))

(assert (= (and d!117463 res!662211) b!990137))

(assert (= (and b!990137 res!662212) b!990138))

(declare-fun m!917679 () Bool)

(assert (=> d!117463 m!917679))

(declare-fun m!917681 () Bool)

(assert (=> d!117463 m!917681))

(declare-fun m!917683 () Bool)

(assert (=> d!117463 m!917683))

(declare-fun m!917685 () Bool)

(assert (=> d!117463 m!917685))

(declare-fun m!917687 () Bool)

(assert (=> b!990137 m!917687))

(declare-fun m!917689 () Bool)

(assert (=> b!990138 m!917689))

(assert (=> b!990088 d!117463))

(declare-fun d!117465 () Bool)

(declare-fun e!558333 () Bool)

(assert (=> d!117465 e!558333))

(declare-fun res!662213 () Bool)

(assert (=> d!117465 (=> (not res!662213) (not e!558333))))

(declare-fun lt!439263 () ListLongMap!13721)

(assert (=> d!117465 (= res!662213 (contains!5732 lt!439263 (_1!7515 lt!439232)))))

(declare-fun lt!439265 () List!20960)

(assert (=> d!117465 (= lt!439263 (ListLongMap!13722 lt!439265))))

(declare-fun lt!439264 () Unit!32814)

(declare-fun lt!439266 () Unit!32814)

(assert (=> d!117465 (= lt!439264 lt!439266)))

(assert (=> d!117465 (= (getValueByKey!517 lt!439265 (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232)))))

(assert (=> d!117465 (= lt!439266 (lemmaContainsTupThenGetReturnValue!274 lt!439265 (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(assert (=> d!117465 (= lt!439265 (insertStrictlySorted!330 (toList!6876 (+!3054 lt!439235 lt!439231)) (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(assert (=> d!117465 (= (+!3054 (+!3054 lt!439235 lt!439231) lt!439232) lt!439263)))

(declare-fun b!990139 () Bool)

(declare-fun res!662214 () Bool)

(assert (=> b!990139 (=> (not res!662214) (not e!558333))))

(assert (=> b!990139 (= res!662214 (= (getValueByKey!517 (toList!6876 lt!439263) (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232))))))

(declare-fun b!990140 () Bool)

(assert (=> b!990140 (= e!558333 (contains!5733 (toList!6876 lt!439263) lt!439232))))

(assert (= (and d!117465 res!662213) b!990139))

(assert (= (and b!990139 res!662214) b!990140))

(declare-fun m!917691 () Bool)

(assert (=> d!117465 m!917691))

(declare-fun m!917693 () Bool)

(assert (=> d!117465 m!917693))

(declare-fun m!917695 () Bool)

(assert (=> d!117465 m!917695))

(declare-fun m!917697 () Bool)

(assert (=> d!117465 m!917697))

(declare-fun m!917699 () Bool)

(assert (=> b!990139 m!917699))

(declare-fun m!917701 () Bool)

(assert (=> b!990140 m!917701))

(assert (=> b!990088 d!117465))

(declare-fun d!117467 () Bool)

(assert (=> d!117467 (= (+!3054 (+!3054 lt!439235 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (+!3054 (+!3054 lt!439235 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun lt!439269 () Unit!32814)

(declare-fun choose!1623 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64) V!36043) Unit!32814)

(assert (=> d!117467 (= lt!439269 (choose!1623 lt!439235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30118 _keys!1544) from!1932) lt!439233))))

(assert (=> d!117467 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30118 _keys!1544) from!1932)))))

(assert (=> d!117467 (= (addCommutativeForDiffKeys!708 lt!439235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30118 _keys!1544) from!1932) lt!439233) lt!439269)))

(declare-fun bs!28111 () Bool)

(assert (= bs!28111 d!117467))

(declare-fun m!917703 () Bool)

(assert (=> bs!28111 m!917703))

(declare-fun m!917705 () Bool)

(assert (=> bs!28111 m!917705))

(assert (=> bs!28111 m!917705))

(declare-fun m!917707 () Bool)

(assert (=> bs!28111 m!917707))

(assert (=> bs!28111 m!917601))

(declare-fun m!917709 () Bool)

(assert (=> bs!28111 m!917709))

(assert (=> bs!28111 m!917703))

(declare-fun m!917711 () Bool)

(assert (=> bs!28111 m!917711))

(assert (=> b!990088 d!117467))

(declare-fun b!990183 () Bool)

(declare-fun e!558365 () ListLongMap!13721)

(declare-fun e!558370 () ListLongMap!13721)

(assert (=> b!990183 (= e!558365 e!558370)))

(declare-fun c!100331 () Bool)

(assert (=> b!990183 (= c!100331 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!990184 () Bool)

(declare-fun e!558366 () Bool)

(declare-fun lt!439335 () ListLongMap!13721)

(declare-fun apply!932 (ListLongMap!13721 (_ BitVec 64)) V!36043)

(assert (=> b!990184 (= e!558366 (= (apply!932 lt!439335 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun d!117469 () Bool)

(declare-fun e!558368 () Bool)

(assert (=> d!117469 e!558368))

(declare-fun res!662236 () Bool)

(assert (=> d!117469 (=> (not res!662236) (not e!558368))))

(assert (=> d!117469 (= res!662236 (or (bvsge from!1932 (size!30598 _keys!1544)) (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30598 _keys!1544)))))))

(declare-fun lt!439315 () ListLongMap!13721)

(assert (=> d!117469 (= lt!439335 lt!439315)))

(declare-fun lt!439324 () Unit!32814)

(declare-fun e!558369 () Unit!32814)

(assert (=> d!117469 (= lt!439324 e!558369)))

(declare-fun c!100329 () Bool)

(declare-fun e!558364 () Bool)

(assert (=> d!117469 (= c!100329 e!558364)))

(declare-fun res!662235 () Bool)

(assert (=> d!117469 (=> (not res!662235) (not e!558364))))

(assert (=> d!117469 (= res!662235 (bvslt from!1932 (size!30598 _keys!1544)))))

(assert (=> d!117469 (= lt!439315 e!558365)))

(declare-fun c!100327 () Bool)

(assert (=> d!117469 (= c!100327 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!117469 (validMask!0 mask!1948)))

(assert (=> d!117469 (= (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!439335)))

(declare-fun bm!41974 () Bool)

(declare-fun call!41977 () ListLongMap!13721)

(declare-fun call!41979 () ListLongMap!13721)

(assert (=> bm!41974 (= call!41977 call!41979)))

(declare-fun bm!41975 () Bool)

(declare-fun call!41981 () Bool)

(assert (=> bm!41975 (= call!41981 (contains!5732 lt!439335 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41976 () Bool)

(declare-fun call!41982 () ListLongMap!13721)

(assert (=> bm!41976 (= call!41982 call!41977)))

(declare-fun b!990185 () Bool)

(declare-fun e!558371 () Bool)

(declare-fun e!558363 () Bool)

(assert (=> b!990185 (= e!558371 e!558363)))

(declare-fun res!662238 () Bool)

(assert (=> b!990185 (=> (not res!662238) (not e!558363))))

(assert (=> b!990185 (= res!662238 (contains!5732 lt!439335 (select (arr!30118 _keys!1544) from!1932)))))

(assert (=> b!990185 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30598 _keys!1544)))))

(declare-fun b!990186 () Bool)

(declare-fun res!662240 () Bool)

(assert (=> b!990186 (=> (not res!662240) (not e!558368))))

(assert (=> b!990186 (= res!662240 e!558371)))

(declare-fun res!662234 () Bool)

(assert (=> b!990186 (=> res!662234 e!558371)))

(declare-fun e!558372 () Bool)

(assert (=> b!990186 (= res!662234 (not e!558372))))

(declare-fun res!662233 () Bool)

(assert (=> b!990186 (=> (not res!662233) (not e!558372))))

(assert (=> b!990186 (= res!662233 (bvslt from!1932 (size!30598 _keys!1544)))))

(declare-fun b!990187 () Bool)

(declare-fun Unit!32818 () Unit!32814)

(assert (=> b!990187 (= e!558369 Unit!32818)))

(declare-fun b!990188 () Bool)

(assert (=> b!990188 (= e!558372 (validKeyInArray!0 (select (arr!30118 _keys!1544) from!1932)))))

(declare-fun b!990189 () Bool)

(declare-fun e!558362 () Bool)

(assert (=> b!990189 (= e!558362 (= (apply!932 lt!439335 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun b!990190 () Bool)

(declare-fun e!558361 () Bool)

(assert (=> b!990190 (= e!558368 e!558361)))

(declare-fun c!100332 () Bool)

(assert (=> b!990190 (= c!100332 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!990191 () Bool)

(assert (=> b!990191 (= e!558361 e!558366)))

(declare-fun res!662241 () Bool)

(assert (=> b!990191 (= res!662241 call!41981)))

(assert (=> b!990191 (=> (not res!662241) (not e!558366))))

(declare-fun b!990192 () Bool)

(assert (=> b!990192 (= e!558363 (= (apply!932 lt!439335 (select (arr!30118 _keys!1544) from!1932)) (get!15653 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990192 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30597 _values!1278)))))

(assert (=> b!990192 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30598 _keys!1544)))))

(declare-fun b!990193 () Bool)

(declare-fun res!662239 () Bool)

(assert (=> b!990193 (=> (not res!662239) (not e!558368))))

(declare-fun e!558367 () Bool)

(assert (=> b!990193 (= res!662239 e!558367)))

(declare-fun c!100330 () Bool)

(assert (=> b!990193 (= c!100330 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!990194 () Bool)

(declare-fun call!41983 () Bool)

(assert (=> b!990194 (= e!558367 (not call!41983))))

(declare-fun b!990195 () Bool)

(assert (=> b!990195 (= e!558364 (validKeyInArray!0 (select (arr!30118 _keys!1544) from!1932)))))

(declare-fun b!990196 () Bool)

(declare-fun lt!439328 () Unit!32814)

(assert (=> b!990196 (= e!558369 lt!439328)))

(declare-fun lt!439316 () ListLongMap!13721)

(assert (=> b!990196 (= lt!439316 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439333 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439333 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439331 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439331 (select (arr!30118 _keys!1544) from!1932))))

(declare-fun lt!439319 () Unit!32814)

(declare-fun addStillContains!620 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64)) Unit!32814)

(assert (=> b!990196 (= lt!439319 (addStillContains!620 lt!439316 lt!439333 zeroValue!1220 lt!439331))))

(assert (=> b!990196 (contains!5732 (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220)) lt!439331)))

(declare-fun lt!439329 () Unit!32814)

(assert (=> b!990196 (= lt!439329 lt!439319)))

(declare-fun lt!439326 () ListLongMap!13721)

(assert (=> b!990196 (= lt!439326 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439322 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439322 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439323 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439323 (select (arr!30118 _keys!1544) from!1932))))

(declare-fun lt!439314 () Unit!32814)

(declare-fun addApplyDifferent!472 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64)) Unit!32814)

(assert (=> b!990196 (= lt!439314 (addApplyDifferent!472 lt!439326 lt!439322 minValue!1220 lt!439323))))

(assert (=> b!990196 (= (apply!932 (+!3054 lt!439326 (tuple2!15011 lt!439322 minValue!1220)) lt!439323) (apply!932 lt!439326 lt!439323))))

(declare-fun lt!439334 () Unit!32814)

(assert (=> b!990196 (= lt!439334 lt!439314)))

(declare-fun lt!439325 () ListLongMap!13721)

(assert (=> b!990196 (= lt!439325 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439332 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439332 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439330 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439330 (select (arr!30118 _keys!1544) from!1932))))

(declare-fun lt!439318 () Unit!32814)

(assert (=> b!990196 (= lt!439318 (addApplyDifferent!472 lt!439325 lt!439332 zeroValue!1220 lt!439330))))

(assert (=> b!990196 (= (apply!932 (+!3054 lt!439325 (tuple2!15011 lt!439332 zeroValue!1220)) lt!439330) (apply!932 lt!439325 lt!439330))))

(declare-fun lt!439321 () Unit!32814)

(assert (=> b!990196 (= lt!439321 lt!439318)))

(declare-fun lt!439317 () ListLongMap!13721)

(assert (=> b!990196 (= lt!439317 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439327 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439327 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439320 () (_ BitVec 64))

(assert (=> b!990196 (= lt!439320 (select (arr!30118 _keys!1544) from!1932))))

(assert (=> b!990196 (= lt!439328 (addApplyDifferent!472 lt!439317 lt!439327 minValue!1220 lt!439320))))

(assert (=> b!990196 (= (apply!932 (+!3054 lt!439317 (tuple2!15011 lt!439327 minValue!1220)) lt!439320) (apply!932 lt!439317 lt!439320))))

(declare-fun b!990197 () Bool)

(declare-fun e!558360 () ListLongMap!13721)

(assert (=> b!990197 (= e!558360 call!41982)))

(declare-fun b!990198 () Bool)

(assert (=> b!990198 (= e!558361 (not call!41981))))

(declare-fun b!990199 () Bool)

(assert (=> b!990199 (= e!558367 e!558362)))

(declare-fun res!662237 () Bool)

(assert (=> b!990199 (= res!662237 call!41983)))

(assert (=> b!990199 (=> (not res!662237) (not e!558362))))

(declare-fun b!990200 () Bool)

(declare-fun call!41980 () ListLongMap!13721)

(assert (=> b!990200 (= e!558360 call!41980)))

(declare-fun bm!41977 () Bool)

(assert (=> bm!41977 (= call!41979 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun bm!41978 () Bool)

(declare-fun call!41978 () ListLongMap!13721)

(assert (=> bm!41978 (= call!41980 call!41978)))

(declare-fun b!990201 () Bool)

(assert (=> b!990201 (= e!558365 (+!3054 call!41978 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun bm!41979 () Bool)

(assert (=> bm!41979 (= call!41983 (contains!5732 lt!439335 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41980 () Bool)

(assert (=> bm!41980 (= call!41978 (+!3054 (ite c!100327 call!41979 (ite c!100331 call!41977 call!41982)) (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun b!990202 () Bool)

(assert (=> b!990202 (= e!558370 call!41980)))

(declare-fun b!990203 () Bool)

(declare-fun c!100328 () Bool)

(assert (=> b!990203 (= c!100328 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!990203 (= e!558370 e!558360)))

(assert (= (and d!117469 c!100327) b!990201))

(assert (= (and d!117469 (not c!100327)) b!990183))

(assert (= (and b!990183 c!100331) b!990202))

(assert (= (and b!990183 (not c!100331)) b!990203))

(assert (= (and b!990203 c!100328) b!990200))

(assert (= (and b!990203 (not c!100328)) b!990197))

(assert (= (or b!990200 b!990197) bm!41976))

(assert (= (or b!990202 bm!41976) bm!41974))

(assert (= (or b!990202 b!990200) bm!41978))

(assert (= (or b!990201 bm!41974) bm!41977))

(assert (= (or b!990201 bm!41978) bm!41980))

(assert (= (and d!117469 res!662235) b!990195))

(assert (= (and d!117469 c!100329) b!990196))

(assert (= (and d!117469 (not c!100329)) b!990187))

(assert (= (and d!117469 res!662236) b!990186))

(assert (= (and b!990186 res!662233) b!990188))

(assert (= (and b!990186 (not res!662234)) b!990185))

(assert (= (and b!990185 res!662238) b!990192))

(assert (= (and b!990186 res!662240) b!990193))

(assert (= (and b!990193 c!100330) b!990199))

(assert (= (and b!990193 (not c!100330)) b!990194))

(assert (= (and b!990199 res!662237) b!990189))

(assert (= (or b!990199 b!990194) bm!41979))

(assert (= (and b!990193 res!662239) b!990190))

(assert (= (and b!990190 c!100332) b!990191))

(assert (= (and b!990190 (not c!100332)) b!990198))

(assert (= (and b!990191 res!662241) b!990184))

(assert (= (or b!990191 b!990198) bm!41975))

(declare-fun b_lambda!15195 () Bool)

(assert (=> (not b_lambda!15195) (not b!990192)))

(assert (=> b!990192 t!29942))

(declare-fun b_and!32255 () Bool)

(assert (= b_and!32249 (and (=> t!29942 result!13659) b_and!32255)))

(declare-fun m!917713 () Bool)

(assert (=> b!990201 m!917713))

(assert (=> b!990188 m!917601))

(assert (=> b!990188 m!917601))

(assert (=> b!990188 m!917621))

(declare-fun m!917715 () Bool)

(assert (=> bm!41975 m!917715))

(declare-fun m!917717 () Bool)

(assert (=> b!990189 m!917717))

(assert (=> d!117469 m!917633))

(assert (=> b!990185 m!917601))

(assert (=> b!990185 m!917601))

(declare-fun m!917719 () Bool)

(assert (=> b!990185 m!917719))

(declare-fun m!917721 () Bool)

(assert (=> bm!41980 m!917721))

(assert (=> b!990196 m!917601))

(declare-fun m!917723 () Bool)

(assert (=> b!990196 m!917723))

(declare-fun m!917725 () Bool)

(assert (=> b!990196 m!917725))

(declare-fun m!917727 () Bool)

(assert (=> b!990196 m!917727))

(declare-fun m!917729 () Bool)

(assert (=> b!990196 m!917729))

(declare-fun m!917731 () Bool)

(assert (=> b!990196 m!917731))

(declare-fun m!917733 () Bool)

(assert (=> b!990196 m!917733))

(declare-fun m!917735 () Bool)

(assert (=> b!990196 m!917735))

(declare-fun m!917737 () Bool)

(assert (=> b!990196 m!917737))

(declare-fun m!917739 () Bool)

(assert (=> b!990196 m!917739))

(declare-fun m!917741 () Bool)

(assert (=> b!990196 m!917741))

(assert (=> b!990196 m!917723))

(declare-fun m!917743 () Bool)

(assert (=> b!990196 m!917743))

(declare-fun m!917745 () Bool)

(assert (=> b!990196 m!917745))

(declare-fun m!917747 () Bool)

(assert (=> b!990196 m!917747))

(assert (=> b!990196 m!917743))

(assert (=> b!990196 m!917735))

(declare-fun m!917749 () Bool)

(assert (=> b!990196 m!917749))

(declare-fun m!917751 () Bool)

(assert (=> b!990196 m!917751))

(assert (=> b!990196 m!917733))

(declare-fun m!917753 () Bool)

(assert (=> b!990196 m!917753))

(assert (=> b!990195 m!917601))

(assert (=> b!990195 m!917601))

(assert (=> b!990195 m!917621))

(assert (=> b!990192 m!917601))

(assert (=> b!990192 m!917623))

(assert (=> b!990192 m!917627))

(assert (=> b!990192 m!917629))

(assert (=> b!990192 m!917627))

(assert (=> b!990192 m!917623))

(assert (=> b!990192 m!917601))

(declare-fun m!917755 () Bool)

(assert (=> b!990192 m!917755))

(assert (=> bm!41977 m!917751))

(declare-fun m!917757 () Bool)

(assert (=> bm!41979 m!917757))

(declare-fun m!917759 () Bool)

(assert (=> b!990184 m!917759))

(assert (=> b!990088 d!117469))

(declare-fun d!117471 () Bool)

(declare-fun e!558373 () Bool)

(assert (=> d!117471 e!558373))

(declare-fun res!662242 () Bool)

(assert (=> d!117471 (=> (not res!662242) (not e!558373))))

(declare-fun lt!439336 () ListLongMap!13721)

(assert (=> d!117471 (= res!662242 (contains!5732 lt!439336 (_1!7515 lt!439231)))))

(declare-fun lt!439338 () List!20960)

(assert (=> d!117471 (= lt!439336 (ListLongMap!13722 lt!439338))))

(declare-fun lt!439337 () Unit!32814)

(declare-fun lt!439339 () Unit!32814)

(assert (=> d!117471 (= lt!439337 lt!439339)))

(assert (=> d!117471 (= (getValueByKey!517 lt!439338 (_1!7515 lt!439231)) (Some!522 (_2!7515 lt!439231)))))

(assert (=> d!117471 (= lt!439339 (lemmaContainsTupThenGetReturnValue!274 lt!439338 (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(assert (=> d!117471 (= lt!439338 (insertStrictlySorted!330 (toList!6876 (+!3054 lt!439235 lt!439232)) (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(assert (=> d!117471 (= (+!3054 (+!3054 lt!439235 lt!439232) lt!439231) lt!439336)))

(declare-fun b!990204 () Bool)

(declare-fun res!662243 () Bool)

(assert (=> b!990204 (=> (not res!662243) (not e!558373))))

(assert (=> b!990204 (= res!662243 (= (getValueByKey!517 (toList!6876 lt!439336) (_1!7515 lt!439231)) (Some!522 (_2!7515 lt!439231))))))

(declare-fun b!990205 () Bool)

(assert (=> b!990205 (= e!558373 (contains!5733 (toList!6876 lt!439336) lt!439231))))

(assert (= (and d!117471 res!662242) b!990204))

(assert (= (and b!990204 res!662243) b!990205))

(declare-fun m!917761 () Bool)

(assert (=> d!117471 m!917761))

(declare-fun m!917763 () Bool)

(assert (=> d!117471 m!917763))

(declare-fun m!917765 () Bool)

(assert (=> d!117471 m!917765))

(declare-fun m!917767 () Bool)

(assert (=> d!117471 m!917767))

(declare-fun m!917769 () Bool)

(assert (=> b!990204 m!917769))

(declare-fun m!917771 () Bool)

(assert (=> b!990205 m!917771))

(assert (=> b!990088 d!117471))

(declare-fun d!117473 () Bool)

(declare-fun e!558374 () Bool)

(assert (=> d!117473 e!558374))

(declare-fun res!662244 () Bool)

(assert (=> d!117473 (=> (not res!662244) (not e!558374))))

(declare-fun lt!439340 () ListLongMap!13721)

(assert (=> d!117473 (= res!662244 (contains!5732 lt!439340 (_1!7515 lt!439231)))))

(declare-fun lt!439342 () List!20960)

(assert (=> d!117473 (= lt!439340 (ListLongMap!13722 lt!439342))))

(declare-fun lt!439341 () Unit!32814)

(declare-fun lt!439343 () Unit!32814)

(assert (=> d!117473 (= lt!439341 lt!439343)))

(assert (=> d!117473 (= (getValueByKey!517 lt!439342 (_1!7515 lt!439231)) (Some!522 (_2!7515 lt!439231)))))

(assert (=> d!117473 (= lt!439343 (lemmaContainsTupThenGetReturnValue!274 lt!439342 (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(assert (=> d!117473 (= lt!439342 (insertStrictlySorted!330 (toList!6876 lt!439235) (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(assert (=> d!117473 (= (+!3054 lt!439235 lt!439231) lt!439340)))

(declare-fun b!990206 () Bool)

(declare-fun res!662245 () Bool)

(assert (=> b!990206 (=> (not res!662245) (not e!558374))))

(assert (=> b!990206 (= res!662245 (= (getValueByKey!517 (toList!6876 lt!439340) (_1!7515 lt!439231)) (Some!522 (_2!7515 lt!439231))))))

(declare-fun b!990207 () Bool)

(assert (=> b!990207 (= e!558374 (contains!5733 (toList!6876 lt!439340) lt!439231))))

(assert (= (and d!117473 res!662244) b!990206))

(assert (= (and b!990206 res!662245) b!990207))

(declare-fun m!917773 () Bool)

(assert (=> d!117473 m!917773))

(declare-fun m!917775 () Bool)

(assert (=> d!117473 m!917775))

(declare-fun m!917777 () Bool)

(assert (=> d!117473 m!917777))

(declare-fun m!917779 () Bool)

(assert (=> d!117473 m!917779))

(declare-fun m!917781 () Bool)

(assert (=> b!990206 m!917781))

(declare-fun m!917783 () Bool)

(assert (=> b!990207 m!917783))

(assert (=> b!990088 d!117473))

(declare-fun b!990208 () Bool)

(declare-fun e!558380 () ListLongMap!13721)

(declare-fun e!558385 () ListLongMap!13721)

(assert (=> b!990208 (= e!558380 e!558385)))

(declare-fun c!100337 () Bool)

(assert (=> b!990208 (= c!100337 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!990209 () Bool)

(declare-fun e!558381 () Bool)

(declare-fun lt!439365 () ListLongMap!13721)

(assert (=> b!990209 (= e!558381 (= (apply!932 lt!439365 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun d!117475 () Bool)

(declare-fun e!558383 () Bool)

(assert (=> d!117475 e!558383))

(declare-fun res!662249 () Bool)

(assert (=> d!117475 (=> (not res!662249) (not e!558383))))

(assert (=> d!117475 (= res!662249 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))))

(declare-fun lt!439345 () ListLongMap!13721)

(assert (=> d!117475 (= lt!439365 lt!439345)))

(declare-fun lt!439354 () Unit!32814)

(declare-fun e!558384 () Unit!32814)

(assert (=> d!117475 (= lt!439354 e!558384)))

(declare-fun c!100335 () Bool)

(declare-fun e!558379 () Bool)

(assert (=> d!117475 (= c!100335 e!558379)))

(declare-fun res!662248 () Bool)

(assert (=> d!117475 (=> (not res!662248) (not e!558379))))

(assert (=> d!117475 (= res!662248 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(assert (=> d!117475 (= lt!439345 e!558380)))

(declare-fun c!100333 () Bool)

(assert (=> d!117475 (= c!100333 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!117475 (validMask!0 mask!1948)))

(assert (=> d!117475 (= (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439365)))

(declare-fun bm!41981 () Bool)

(declare-fun call!41984 () ListLongMap!13721)

(declare-fun call!41986 () ListLongMap!13721)

(assert (=> bm!41981 (= call!41984 call!41986)))

(declare-fun bm!41982 () Bool)

(declare-fun call!41988 () Bool)

(assert (=> bm!41982 (= call!41988 (contains!5732 lt!439365 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41983 () Bool)

(declare-fun call!41989 () ListLongMap!13721)

(assert (=> bm!41983 (= call!41989 call!41984)))

(declare-fun b!990210 () Bool)

(declare-fun e!558386 () Bool)

(declare-fun e!558378 () Bool)

(assert (=> b!990210 (= e!558386 e!558378)))

(declare-fun res!662251 () Bool)

(assert (=> b!990210 (=> (not res!662251) (not e!558378))))

(assert (=> b!990210 (= res!662251 (contains!5732 lt!439365 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!990210 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(declare-fun b!990211 () Bool)

(declare-fun res!662253 () Bool)

(assert (=> b!990211 (=> (not res!662253) (not e!558383))))

(assert (=> b!990211 (= res!662253 e!558386)))

(declare-fun res!662247 () Bool)

(assert (=> b!990211 (=> res!662247 e!558386)))

(declare-fun e!558387 () Bool)

(assert (=> b!990211 (= res!662247 (not e!558387))))

(declare-fun res!662246 () Bool)

(assert (=> b!990211 (=> (not res!662246) (not e!558387))))

(assert (=> b!990211 (= res!662246 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(declare-fun b!990212 () Bool)

(declare-fun Unit!32819 () Unit!32814)

(assert (=> b!990212 (= e!558384 Unit!32819)))

(declare-fun b!990213 () Bool)

(assert (=> b!990213 (= e!558387 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!990214 () Bool)

(declare-fun e!558377 () Bool)

(assert (=> b!990214 (= e!558377 (= (apply!932 lt!439365 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun b!990215 () Bool)

(declare-fun e!558376 () Bool)

(assert (=> b!990215 (= e!558383 e!558376)))

(declare-fun c!100338 () Bool)

(assert (=> b!990215 (= c!100338 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!990216 () Bool)

(assert (=> b!990216 (= e!558376 e!558381)))

(declare-fun res!662254 () Bool)

(assert (=> b!990216 (= res!662254 call!41988)))

(assert (=> b!990216 (=> (not res!662254) (not e!558381))))

(declare-fun b!990217 () Bool)

(assert (=> b!990217 (= e!558378 (= (apply!932 lt!439365 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990217 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30597 _values!1278)))))

(assert (=> b!990217 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(declare-fun b!990218 () Bool)

(declare-fun res!662252 () Bool)

(assert (=> b!990218 (=> (not res!662252) (not e!558383))))

(declare-fun e!558382 () Bool)

(assert (=> b!990218 (= res!662252 e!558382)))

(declare-fun c!100336 () Bool)

(assert (=> b!990218 (= c!100336 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!990219 () Bool)

(declare-fun call!41990 () Bool)

(assert (=> b!990219 (= e!558382 (not call!41990))))

(declare-fun b!990220 () Bool)

(assert (=> b!990220 (= e!558379 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!990221 () Bool)

(declare-fun lt!439358 () Unit!32814)

(assert (=> b!990221 (= e!558384 lt!439358)))

(declare-fun lt!439346 () ListLongMap!13721)

(assert (=> b!990221 (= lt!439346 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439363 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439363 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439361 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439361 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!439349 () Unit!32814)

(assert (=> b!990221 (= lt!439349 (addStillContains!620 lt!439346 lt!439363 zeroValue!1220 lt!439361))))

(assert (=> b!990221 (contains!5732 (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220)) lt!439361)))

(declare-fun lt!439359 () Unit!32814)

(assert (=> b!990221 (= lt!439359 lt!439349)))

(declare-fun lt!439356 () ListLongMap!13721)

(assert (=> b!990221 (= lt!439356 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439352 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439352 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439353 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439353 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!439344 () Unit!32814)

(assert (=> b!990221 (= lt!439344 (addApplyDifferent!472 lt!439356 lt!439352 minValue!1220 lt!439353))))

(assert (=> b!990221 (= (apply!932 (+!3054 lt!439356 (tuple2!15011 lt!439352 minValue!1220)) lt!439353) (apply!932 lt!439356 lt!439353))))

(declare-fun lt!439364 () Unit!32814)

(assert (=> b!990221 (= lt!439364 lt!439344)))

(declare-fun lt!439355 () ListLongMap!13721)

(assert (=> b!990221 (= lt!439355 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439362 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439362 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439360 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439360 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!439348 () Unit!32814)

(assert (=> b!990221 (= lt!439348 (addApplyDifferent!472 lt!439355 lt!439362 zeroValue!1220 lt!439360))))

(assert (=> b!990221 (= (apply!932 (+!3054 lt!439355 (tuple2!15011 lt!439362 zeroValue!1220)) lt!439360) (apply!932 lt!439355 lt!439360))))

(declare-fun lt!439351 () Unit!32814)

(assert (=> b!990221 (= lt!439351 lt!439348)))

(declare-fun lt!439347 () ListLongMap!13721)

(assert (=> b!990221 (= lt!439347 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439357 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439357 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439350 () (_ BitVec 64))

(assert (=> b!990221 (= lt!439350 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!990221 (= lt!439358 (addApplyDifferent!472 lt!439347 lt!439357 minValue!1220 lt!439350))))

(assert (=> b!990221 (= (apply!932 (+!3054 lt!439347 (tuple2!15011 lt!439357 minValue!1220)) lt!439350) (apply!932 lt!439347 lt!439350))))

(declare-fun b!990222 () Bool)

(declare-fun e!558375 () ListLongMap!13721)

(assert (=> b!990222 (= e!558375 call!41989)))

(declare-fun b!990223 () Bool)

(assert (=> b!990223 (= e!558376 (not call!41988))))

(declare-fun b!990224 () Bool)

(assert (=> b!990224 (= e!558382 e!558377)))

(declare-fun res!662250 () Bool)

(assert (=> b!990224 (= res!662250 call!41990)))

(assert (=> b!990224 (=> (not res!662250) (not e!558377))))

(declare-fun b!990225 () Bool)

(declare-fun call!41987 () ListLongMap!13721)

(assert (=> b!990225 (= e!558375 call!41987)))

(declare-fun bm!41984 () Bool)

(assert (=> bm!41984 (= call!41986 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun bm!41985 () Bool)

(declare-fun call!41985 () ListLongMap!13721)

(assert (=> bm!41985 (= call!41987 call!41985)))

(declare-fun b!990226 () Bool)

(assert (=> b!990226 (= e!558380 (+!3054 call!41985 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun bm!41986 () Bool)

(assert (=> bm!41986 (= call!41990 (contains!5732 lt!439365 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41987 () Bool)

(assert (=> bm!41987 (= call!41985 (+!3054 (ite c!100333 call!41986 (ite c!100337 call!41984 call!41989)) (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun b!990227 () Bool)

(assert (=> b!990227 (= e!558385 call!41987)))

(declare-fun b!990228 () Bool)

(declare-fun c!100334 () Bool)

(assert (=> b!990228 (= c!100334 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!990228 (= e!558385 e!558375)))

(assert (= (and d!117475 c!100333) b!990226))

(assert (= (and d!117475 (not c!100333)) b!990208))

(assert (= (and b!990208 c!100337) b!990227))

(assert (= (and b!990208 (not c!100337)) b!990228))

(assert (= (and b!990228 c!100334) b!990225))

(assert (= (and b!990228 (not c!100334)) b!990222))

(assert (= (or b!990225 b!990222) bm!41983))

(assert (= (or b!990227 bm!41983) bm!41981))

(assert (= (or b!990227 b!990225) bm!41985))

(assert (= (or b!990226 bm!41981) bm!41984))

(assert (= (or b!990226 bm!41985) bm!41987))

(assert (= (and d!117475 res!662248) b!990220))

(assert (= (and d!117475 c!100335) b!990221))

(assert (= (and d!117475 (not c!100335)) b!990212))

(assert (= (and d!117475 res!662249) b!990211))

(assert (= (and b!990211 res!662246) b!990213))

(assert (= (and b!990211 (not res!662247)) b!990210))

(assert (= (and b!990210 res!662251) b!990217))

(assert (= (and b!990211 res!662253) b!990218))

(assert (= (and b!990218 c!100336) b!990224))

(assert (= (and b!990218 (not c!100336)) b!990219))

(assert (= (and b!990224 res!662250) b!990214))

(assert (= (or b!990224 b!990219) bm!41986))

(assert (= (and b!990218 res!662252) b!990215))

(assert (= (and b!990215 c!100338) b!990216))

(assert (= (and b!990215 (not c!100338)) b!990223))

(assert (= (and b!990216 res!662254) b!990209))

(assert (= (or b!990216 b!990223) bm!41982))

(declare-fun b_lambda!15197 () Bool)

(assert (=> (not b_lambda!15197) (not b!990217)))

(assert (=> b!990217 t!29942))

(declare-fun b_and!32257 () Bool)

(assert (= b_and!32255 (and (=> t!29942 result!13659) b_and!32257)))

(declare-fun m!917785 () Bool)

(assert (=> b!990226 m!917785))

(declare-fun m!917787 () Bool)

(assert (=> b!990213 m!917787))

(assert (=> b!990213 m!917787))

(declare-fun m!917789 () Bool)

(assert (=> b!990213 m!917789))

(declare-fun m!917791 () Bool)

(assert (=> bm!41982 m!917791))

(declare-fun m!917793 () Bool)

(assert (=> b!990214 m!917793))

(assert (=> d!117475 m!917633))

(assert (=> b!990210 m!917787))

(assert (=> b!990210 m!917787))

(declare-fun m!917795 () Bool)

(assert (=> b!990210 m!917795))

(declare-fun m!917797 () Bool)

(assert (=> bm!41987 m!917797))

(assert (=> b!990221 m!917787))

(declare-fun m!917799 () Bool)

(assert (=> b!990221 m!917799))

(declare-fun m!917801 () Bool)

(assert (=> b!990221 m!917801))

(declare-fun m!917803 () Bool)

(assert (=> b!990221 m!917803))

(declare-fun m!917805 () Bool)

(assert (=> b!990221 m!917805))

(declare-fun m!917807 () Bool)

(assert (=> b!990221 m!917807))

(declare-fun m!917809 () Bool)

(assert (=> b!990221 m!917809))

(declare-fun m!917811 () Bool)

(assert (=> b!990221 m!917811))

(declare-fun m!917813 () Bool)

(assert (=> b!990221 m!917813))

(declare-fun m!917815 () Bool)

(assert (=> b!990221 m!917815))

(declare-fun m!917817 () Bool)

(assert (=> b!990221 m!917817))

(assert (=> b!990221 m!917799))

(declare-fun m!917819 () Bool)

(assert (=> b!990221 m!917819))

(declare-fun m!917821 () Bool)

(assert (=> b!990221 m!917821))

(declare-fun m!917823 () Bool)

(assert (=> b!990221 m!917823))

(assert (=> b!990221 m!917819))

(assert (=> b!990221 m!917811))

(declare-fun m!917825 () Bool)

(assert (=> b!990221 m!917825))

(assert (=> b!990221 m!917625))

(assert (=> b!990221 m!917809))

(declare-fun m!917827 () Bool)

(assert (=> b!990221 m!917827))

(assert (=> b!990220 m!917787))

(assert (=> b!990220 m!917787))

(assert (=> b!990220 m!917789))

(assert (=> b!990217 m!917787))

(declare-fun m!917829 () Bool)

(assert (=> b!990217 m!917829))

(assert (=> b!990217 m!917627))

(declare-fun m!917831 () Bool)

(assert (=> b!990217 m!917831))

(assert (=> b!990217 m!917627))

(assert (=> b!990217 m!917829))

(assert (=> b!990217 m!917787))

(declare-fun m!917833 () Bool)

(assert (=> b!990217 m!917833))

(assert (=> bm!41984 m!917625))

(declare-fun m!917835 () Bool)

(assert (=> bm!41986 m!917835))

(declare-fun m!917837 () Bool)

(assert (=> b!990209 m!917837))

(assert (=> b!990088 d!117475))

(declare-fun d!117477 () Bool)

(declare-fun e!558388 () Bool)

(assert (=> d!117477 e!558388))

(declare-fun res!662255 () Bool)

(assert (=> d!117477 (=> (not res!662255) (not e!558388))))

(declare-fun lt!439366 () ListLongMap!13721)

(assert (=> d!117477 (= res!662255 (contains!5732 lt!439366 (_1!7515 lt!439232)))))

(declare-fun lt!439368 () List!20960)

(assert (=> d!117477 (= lt!439366 (ListLongMap!13722 lt!439368))))

(declare-fun lt!439367 () Unit!32814)

(declare-fun lt!439369 () Unit!32814)

(assert (=> d!117477 (= lt!439367 lt!439369)))

(assert (=> d!117477 (= (getValueByKey!517 lt!439368 (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232)))))

(assert (=> d!117477 (= lt!439369 (lemmaContainsTupThenGetReturnValue!274 lt!439368 (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(assert (=> d!117477 (= lt!439368 (insertStrictlySorted!330 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(assert (=> d!117477 (= (+!3054 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439232) lt!439366)))

(declare-fun b!990229 () Bool)

(declare-fun res!662256 () Bool)

(assert (=> b!990229 (=> (not res!662256) (not e!558388))))

(assert (=> b!990229 (= res!662256 (= (getValueByKey!517 (toList!6876 lt!439366) (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232))))))

(declare-fun b!990230 () Bool)

(assert (=> b!990230 (= e!558388 (contains!5733 (toList!6876 lt!439366) lt!439232))))

(assert (= (and d!117477 res!662255) b!990229))

(assert (= (and b!990229 res!662256) b!990230))

(declare-fun m!917839 () Bool)

(assert (=> d!117477 m!917839))

(declare-fun m!917841 () Bool)

(assert (=> d!117477 m!917841))

(declare-fun m!917843 () Bool)

(assert (=> d!117477 m!917843))

(declare-fun m!917845 () Bool)

(assert (=> d!117477 m!917845))

(declare-fun m!917847 () Bool)

(assert (=> b!990229 m!917847))

(declare-fun m!917849 () Bool)

(assert (=> b!990230 m!917849))

(assert (=> b!990088 d!117477))

(declare-fun d!117479 () Bool)

(declare-fun c!100341 () Bool)

(assert (=> d!117479 (= c!100341 ((_ is ValueCellFull!11166) (select (arr!30117 _values!1278) from!1932)))))

(declare-fun e!558391 () V!36043)

(assert (=> d!117479 (= (get!15653 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!558391)))

(declare-fun b!990235 () Bool)

(declare-fun get!15655 (ValueCell!11166 V!36043) V!36043)

(assert (=> b!990235 (= e!558391 (get!15655 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!990236 () Bool)

(declare-fun get!15656 (ValueCell!11166 V!36043) V!36043)

(assert (=> b!990236 (= e!558391 (get!15656 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117479 c!100341) b!990235))

(assert (= (and d!117479 (not c!100341)) b!990236))

(assert (=> b!990235 m!917623))

(assert (=> b!990235 m!917627))

(declare-fun m!917851 () Bool)

(assert (=> b!990235 m!917851))

(assert (=> b!990236 m!917623))

(assert (=> b!990236 m!917627))

(declare-fun m!917853 () Bool)

(assert (=> b!990236 m!917853))

(assert (=> b!990094 d!117479))

(declare-fun d!117481 () Bool)

(declare-fun e!558407 () Bool)

(assert (=> d!117481 e!558407))

(declare-fun res!662266 () Bool)

(assert (=> d!117481 (=> (not res!662266) (not e!558407))))

(declare-fun lt!439389 () ListLongMap!13721)

(assert (=> d!117481 (= res!662266 (not (contains!5732 lt!439389 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!558408 () ListLongMap!13721)

(assert (=> d!117481 (= lt!439389 e!558408)))

(declare-fun c!100353 () Bool)

(assert (=> d!117481 (= c!100353 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(assert (=> d!117481 (validMask!0 mask!1948)))

(assert (=> d!117481 (= (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439389)))

(declare-fun b!990261 () Bool)

(declare-fun e!558412 () ListLongMap!13721)

(declare-fun call!41993 () ListLongMap!13721)

(assert (=> b!990261 (= e!558412 call!41993)))

(declare-fun bm!41990 () Bool)

(assert (=> bm!41990 (= call!41993 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!990262 () Bool)

(declare-fun lt!439385 () Unit!32814)

(declare-fun lt!439390 () Unit!32814)

(assert (=> b!990262 (= lt!439385 lt!439390)))

(declare-fun lt!439388 () ListLongMap!13721)

(declare-fun lt!439387 () V!36043)

(declare-fun lt!439386 () (_ BitVec 64))

(declare-fun lt!439384 () (_ BitVec 64))

(assert (=> b!990262 (not (contains!5732 (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387)) lt!439384))))

(declare-fun addStillNotContains!238 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64)) Unit!32814)

(assert (=> b!990262 (= lt!439390 (addStillNotContains!238 lt!439388 lt!439386 lt!439387 lt!439384))))

(assert (=> b!990262 (= lt!439384 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!990262 (= lt!439387 (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!990262 (= lt!439386 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!990262 (= lt!439388 call!41993)))

(assert (=> b!990262 (= e!558412 (+!3054 call!41993 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!990263 () Bool)

(declare-fun e!558411 () Bool)

(assert (=> b!990263 (= e!558411 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!990263 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(declare-fun b!990264 () Bool)

(declare-fun res!662268 () Bool)

(assert (=> b!990264 (=> (not res!662268) (not e!558407))))

(assert (=> b!990264 (= res!662268 (not (contains!5732 lt!439389 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!990265 () Bool)

(assert (=> b!990265 (= e!558408 (ListLongMap!13722 Nil!20957))))

(declare-fun b!990266 () Bool)

(assert (=> b!990266 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(assert (=> b!990266 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30597 _values!1278)))))

(declare-fun e!558406 () Bool)

(assert (=> b!990266 (= e!558406 (= (apply!932 lt!439389 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!990267 () Bool)

(declare-fun e!558410 () Bool)

(assert (=> b!990267 (= e!558407 e!558410)))

(declare-fun c!100350 () Bool)

(assert (=> b!990267 (= c!100350 e!558411)))

(declare-fun res!662267 () Bool)

(assert (=> b!990267 (=> (not res!662267) (not e!558411))))

(assert (=> b!990267 (= res!662267 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(declare-fun b!990268 () Bool)

(declare-fun e!558409 () Bool)

(assert (=> b!990268 (= e!558409 (= lt!439389 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!990269 () Bool)

(assert (=> b!990269 (= e!558408 e!558412)))

(declare-fun c!100351 () Bool)

(assert (=> b!990269 (= c!100351 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!990270 () Bool)

(assert (=> b!990270 (= e!558410 e!558406)))

(assert (=> b!990270 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(declare-fun res!662265 () Bool)

(assert (=> b!990270 (= res!662265 (contains!5732 lt!439389 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!990270 (=> (not res!662265) (not e!558406))))

(declare-fun b!990271 () Bool)

(assert (=> b!990271 (= e!558410 e!558409)))

(declare-fun c!100352 () Bool)

(assert (=> b!990271 (= c!100352 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30598 _keys!1544)))))

(declare-fun b!990272 () Bool)

(declare-fun isEmpty!731 (ListLongMap!13721) Bool)

(assert (=> b!990272 (= e!558409 (isEmpty!731 lt!439389))))

(assert (= (and d!117481 c!100353) b!990265))

(assert (= (and d!117481 (not c!100353)) b!990269))

(assert (= (and b!990269 c!100351) b!990262))

(assert (= (and b!990269 (not c!100351)) b!990261))

(assert (= (or b!990262 b!990261) bm!41990))

(assert (= (and d!117481 res!662266) b!990264))

(assert (= (and b!990264 res!662268) b!990267))

(assert (= (and b!990267 res!662267) b!990263))

(assert (= (and b!990267 c!100350) b!990270))

(assert (= (and b!990267 (not c!100350)) b!990271))

(assert (= (and b!990270 res!662265) b!990266))

(assert (= (and b!990271 c!100352) b!990268))

(assert (= (and b!990271 (not c!100352)) b!990272))

(declare-fun b_lambda!15199 () Bool)

(assert (=> (not b_lambda!15199) (not b!990262)))

(assert (=> b!990262 t!29942))

(declare-fun b_and!32259 () Bool)

(assert (= b_and!32257 (and (=> t!29942 result!13659) b_and!32259)))

(declare-fun b_lambda!15201 () Bool)

(assert (=> (not b_lambda!15201) (not b!990266)))

(assert (=> b!990266 t!29942))

(declare-fun b_and!32261 () Bool)

(assert (= b_and!32259 (and (=> t!29942 result!13659) b_and!32261)))

(assert (=> b!990266 m!917787))

(assert (=> b!990266 m!917627))

(assert (=> b!990266 m!917787))

(declare-fun m!917855 () Bool)

(assert (=> b!990266 m!917855))

(assert (=> b!990266 m!917829))

(assert (=> b!990266 m!917829))

(assert (=> b!990266 m!917627))

(assert (=> b!990266 m!917831))

(declare-fun m!917857 () Bool)

(assert (=> b!990272 m!917857))

(declare-fun m!917859 () Bool)

(assert (=> d!117481 m!917859))

(assert (=> d!117481 m!917633))

(assert (=> b!990263 m!917787))

(assert (=> b!990263 m!917787))

(assert (=> b!990263 m!917789))

(assert (=> b!990269 m!917787))

(assert (=> b!990269 m!917787))

(assert (=> b!990269 m!917789))

(declare-fun m!917861 () Bool)

(assert (=> b!990262 m!917861))

(declare-fun m!917863 () Bool)

(assert (=> b!990262 m!917863))

(declare-fun m!917865 () Bool)

(assert (=> b!990262 m!917865))

(assert (=> b!990262 m!917787))

(declare-fun m!917867 () Bool)

(assert (=> b!990262 m!917867))

(assert (=> b!990262 m!917627))

(assert (=> b!990262 m!917863))

(assert (=> b!990262 m!917829))

(assert (=> b!990262 m!917829))

(assert (=> b!990262 m!917627))

(assert (=> b!990262 m!917831))

(declare-fun m!917869 () Bool)

(assert (=> b!990264 m!917869))

(declare-fun m!917871 () Bool)

(assert (=> bm!41990 m!917871))

(assert (=> b!990270 m!917787))

(assert (=> b!990270 m!917787))

(declare-fun m!917873 () Bool)

(assert (=> b!990270 m!917873))

(assert (=> b!990268 m!917871))

(assert (=> b!990094 d!117481))

(declare-fun d!117483 () Bool)

(assert (=> d!117483 (= (validKeyInArray!0 (select (arr!30118 _keys!1544) from!1932)) (and (not (= (select (arr!30118 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30118 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990093 d!117483))

(declare-fun b!990281 () Bool)

(declare-fun e!558419 () Bool)

(declare-fun e!558420 () Bool)

(assert (=> b!990281 (= e!558419 e!558420)))

(declare-fun c!100356 () Bool)

(assert (=> b!990281 (= c!100356 (validKeyInArray!0 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!990282 () Bool)

(declare-fun e!558421 () Bool)

(declare-fun call!41996 () Bool)

(assert (=> b!990282 (= e!558421 call!41996)))

(declare-fun bm!41993 () Bool)

(assert (=> bm!41993 (= call!41996 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!990284 () Bool)

(assert (=> b!990284 (= e!558420 e!558421)))

(declare-fun lt!439399 () (_ BitVec 64))

(assert (=> b!990284 (= lt!439399 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000))))

(declare-fun lt!439398 () Unit!32814)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62541 (_ BitVec 64) (_ BitVec 32)) Unit!32814)

(assert (=> b!990284 (= lt!439398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!439399 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!990284 (arrayContainsKey!0 _keys!1544 lt!439399 #b00000000000000000000000000000000)))

(declare-fun lt!439397 () Unit!32814)

(assert (=> b!990284 (= lt!439397 lt!439398)))

(declare-fun res!662273 () Bool)

(declare-datatypes ((SeekEntryResult!9200 0))(
  ( (MissingZero!9200 (index!39170 (_ BitVec 32))) (Found!9200 (index!39171 (_ BitVec 32))) (Intermediate!9200 (undefined!10012 Bool) (index!39172 (_ BitVec 32)) (x!86167 (_ BitVec 32))) (Undefined!9200) (MissingVacant!9200 (index!39173 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62541 (_ BitVec 32)) SeekEntryResult!9200)

(assert (=> b!990284 (= res!662273 (= (seekEntryOrOpen!0 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9200 #b00000000000000000000000000000000)))))

(assert (=> b!990284 (=> (not res!662273) (not e!558421))))

(declare-fun d!117485 () Bool)

(declare-fun res!662274 () Bool)

(assert (=> d!117485 (=> res!662274 e!558419)))

(assert (=> d!117485 (= res!662274 (bvsge #b00000000000000000000000000000000 (size!30598 _keys!1544)))))

(assert (=> d!117485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!558419)))

(declare-fun b!990283 () Bool)

(assert (=> b!990283 (= e!558420 call!41996)))

(assert (= (and d!117485 (not res!662274)) b!990281))

(assert (= (and b!990281 c!100356) b!990284))

(assert (= (and b!990281 (not c!100356)) b!990283))

(assert (= (and b!990284 res!662273) b!990282))

(assert (= (or b!990282 b!990283) bm!41993))

(declare-fun m!917875 () Bool)

(assert (=> b!990281 m!917875))

(assert (=> b!990281 m!917875))

(declare-fun m!917877 () Bool)

(assert (=> b!990281 m!917877))

(declare-fun m!917879 () Bool)

(assert (=> bm!41993 m!917879))

(assert (=> b!990284 m!917875))

(declare-fun m!917881 () Bool)

(assert (=> b!990284 m!917881))

(declare-fun m!917883 () Bool)

(assert (=> b!990284 m!917883))

(assert (=> b!990284 m!917875))

(declare-fun m!917885 () Bool)

(assert (=> b!990284 m!917885))

(assert (=> b!990089 d!117485))

(declare-fun b!990295 () Bool)

(declare-fun e!558432 () Bool)

(declare-fun e!558433 () Bool)

(assert (=> b!990295 (= e!558432 e!558433)))

(declare-fun res!662282 () Bool)

(assert (=> b!990295 (=> (not res!662282) (not e!558433))))

(declare-fun e!558431 () Bool)

(assert (=> b!990295 (= res!662282 (not e!558431))))

(declare-fun res!662283 () Bool)

(assert (=> b!990295 (=> (not res!662283) (not e!558431))))

(assert (=> b!990295 (= res!662283 (validKeyInArray!0 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!117487 () Bool)

(declare-fun res!662281 () Bool)

(assert (=> d!117487 (=> res!662281 e!558432)))

(assert (=> d!117487 (= res!662281 (bvsge #b00000000000000000000000000000000 (size!30598 _keys!1544)))))

(assert (=> d!117487 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20958) e!558432)))

(declare-fun b!990296 () Bool)

(declare-fun e!558430 () Bool)

(assert (=> b!990296 (= e!558433 e!558430)))

(declare-fun c!100359 () Bool)

(assert (=> b!990296 (= c!100359 (validKeyInArray!0 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!990297 () Bool)

(declare-fun call!41999 () Bool)

(assert (=> b!990297 (= e!558430 call!41999)))

(declare-fun bm!41996 () Bool)

(assert (=> bm!41996 (= call!41999 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100359 (Cons!20957 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) Nil!20958) Nil!20958)))))

(declare-fun b!990298 () Bool)

(assert (=> b!990298 (= e!558430 call!41999)))

(declare-fun b!990299 () Bool)

(declare-fun contains!5734 (List!20961 (_ BitVec 64)) Bool)

(assert (=> b!990299 (= e!558431 (contains!5734 Nil!20958 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!117487 (not res!662281)) b!990295))

(assert (= (and b!990295 res!662283) b!990299))

(assert (= (and b!990295 res!662282) b!990296))

(assert (= (and b!990296 c!100359) b!990297))

(assert (= (and b!990296 (not c!100359)) b!990298))

(assert (= (or b!990297 b!990298) bm!41996))

(assert (=> b!990295 m!917875))

(assert (=> b!990295 m!917875))

(assert (=> b!990295 m!917877))

(assert (=> b!990296 m!917875))

(assert (=> b!990296 m!917875))

(assert (=> b!990296 m!917877))

(assert (=> bm!41996 m!917875))

(declare-fun m!917887 () Bool)

(assert (=> bm!41996 m!917887))

(assert (=> b!990299 m!917875))

(assert (=> b!990299 m!917875))

(declare-fun m!917889 () Bool)

(assert (=> b!990299 m!917889))

(assert (=> b!990095 d!117487))

(declare-fun d!117489 () Bool)

(assert (=> d!117489 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84696 d!117489))

(declare-fun d!117491 () Bool)

(assert (=> d!117491 (= (array_inv!23127 _values!1278) (bvsge (size!30597 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84696 d!117491))

(declare-fun d!117493 () Bool)

(assert (=> d!117493 (= (array_inv!23128 _keys!1544) (bvsge (size!30598 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84696 d!117493))

(declare-fun mapIsEmpty!36997 () Bool)

(declare-fun mapRes!36997 () Bool)

(assert (=> mapIsEmpty!36997 mapRes!36997))

(declare-fun b!990307 () Bool)

(declare-fun e!558439 () Bool)

(assert (=> b!990307 (= e!558439 tp_is_empty!23295)))

(declare-fun b!990306 () Bool)

(declare-fun e!558438 () Bool)

(assert (=> b!990306 (= e!558438 tp_is_empty!23295)))

(declare-fun mapNonEmpty!36997 () Bool)

(declare-fun tp!70042 () Bool)

(assert (=> mapNonEmpty!36997 (= mapRes!36997 (and tp!70042 e!558438))))

(declare-fun mapValue!36997 () ValueCell!11166)

(declare-fun mapKey!36997 () (_ BitVec 32))

(declare-fun mapRest!36997 () (Array (_ BitVec 32) ValueCell!11166))

(assert (=> mapNonEmpty!36997 (= mapRest!36991 (store mapRest!36997 mapKey!36997 mapValue!36997))))

(declare-fun condMapEmpty!36997 () Bool)

(declare-fun mapDefault!36997 () ValueCell!11166)

(assert (=> mapNonEmpty!36991 (= condMapEmpty!36997 (= mapRest!36991 ((as const (Array (_ BitVec 32) ValueCell!11166)) mapDefault!36997)))))

(assert (=> mapNonEmpty!36991 (= tp!70032 (and e!558439 mapRes!36997))))

(assert (= (and mapNonEmpty!36991 condMapEmpty!36997) mapIsEmpty!36997))

(assert (= (and mapNonEmpty!36991 (not condMapEmpty!36997)) mapNonEmpty!36997))

(assert (= (and mapNonEmpty!36997 ((_ is ValueCellFull!11166) mapValue!36997)) b!990306))

(assert (= (and mapNonEmpty!36991 ((_ is ValueCellFull!11166) mapDefault!36997)) b!990307))

(declare-fun m!917891 () Bool)

(assert (=> mapNonEmpty!36997 m!917891))

(declare-fun b_lambda!15203 () Bool)

(assert (= b_lambda!15197 (or (and start!84696 b_free!20079) b_lambda!15203)))

(declare-fun b_lambda!15205 () Bool)

(assert (= b_lambda!15201 (or (and start!84696 b_free!20079) b_lambda!15205)))

(declare-fun b_lambda!15207 () Bool)

(assert (= b_lambda!15195 (or (and start!84696 b_free!20079) b_lambda!15207)))

(declare-fun b_lambda!15209 () Bool)

(assert (= b_lambda!15199 (or (and start!84696 b_free!20079) b_lambda!15209)))

(check-sat (not bm!41982) (not b!990229) (not b!990296) (not d!117463) (not b!990299) (not mapNonEmpty!36997) (not b!990207) (not bm!41986) (not b!990220) (not b!990196) (not b!990272) (not b!990270) (not b!990195) (not b!990221) (not b!990268) (not b_next!20079) (not b!990226) (not b!990138) (not bm!41987) (not b_lambda!15209) (not bm!41977) (not b!990230) (not d!117475) (not b!990284) (not bm!41996) (not b!990295) (not d!117471) (not b!990213) (not d!117469) (not b!990184) (not b!990235) (not b!990281) (not b!990266) (not bm!41980) (not b!990263) (not b!990204) (not b!990236) (not bm!41979) b_and!32261 (not b!990139) (not d!117465) (not b!990188) (not d!117481) (not b_lambda!15207) (not b!990209) (not b!990185) (not b_lambda!15193) (not b!990192) (not bm!41984) tp_is_empty!23295 (not bm!41975) (not b!990269) (not b!990201) (not d!117473) (not b_lambda!15203) (not b!990214) (not b!990210) (not b!990262) (not b!990137) (not b!990140) (not d!117467) (not b!990264) (not b!990189) (not b!990206) (not b_lambda!15205) (not bm!41993) (not d!117477) (not b!990217) (not bm!41990) (not b!990205))
(check-sat b_and!32261 (not b_next!20079))
(get-model)

(declare-fun d!117495 () Bool)

(declare-fun get!15657 (Option!523) V!36043)

(assert (=> d!117495 (= (apply!932 lt!439365 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15657 (getValueByKey!517 (toList!6876 lt!439365) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28112 () Bool)

(assert (= bs!28112 d!117495))

(declare-fun m!917893 () Bool)

(assert (=> bs!28112 m!917893))

(assert (=> bs!28112 m!917893))

(declare-fun m!917895 () Bool)

(assert (=> bs!28112 m!917895))

(assert (=> b!990214 d!117495))

(declare-fun b!990317 () Bool)

(declare-fun e!558444 () Option!523)

(declare-fun e!558445 () Option!523)

(assert (=> b!990317 (= e!558444 e!558445)))

(declare-fun c!100365 () Bool)

(assert (=> b!990317 (= c!100365 (and ((_ is Cons!20956) (toList!6876 lt!439366)) (not (= (_1!7515 (h!22118 (toList!6876 lt!439366))) (_1!7515 lt!439232)))))))

(declare-fun b!990316 () Bool)

(assert (=> b!990316 (= e!558444 (Some!522 (_2!7515 (h!22118 (toList!6876 lt!439366)))))))

(declare-fun b!990318 () Bool)

(assert (=> b!990318 (= e!558445 (getValueByKey!517 (t!29943 (toList!6876 lt!439366)) (_1!7515 lt!439232)))))

(declare-fun b!990319 () Bool)

(assert (=> b!990319 (= e!558445 None!521)))

(declare-fun d!117497 () Bool)

(declare-fun c!100364 () Bool)

(assert (=> d!117497 (= c!100364 (and ((_ is Cons!20956) (toList!6876 lt!439366)) (= (_1!7515 (h!22118 (toList!6876 lt!439366))) (_1!7515 lt!439232))))))

(assert (=> d!117497 (= (getValueByKey!517 (toList!6876 lt!439366) (_1!7515 lt!439232)) e!558444)))

(assert (= (and d!117497 c!100364) b!990316))

(assert (= (and d!117497 (not c!100364)) b!990317))

(assert (= (and b!990317 c!100365) b!990318))

(assert (= (and b!990317 (not c!100365)) b!990319))

(declare-fun m!917897 () Bool)

(assert (=> b!990318 m!917897))

(assert (=> b!990229 d!117497))

(declare-fun d!117499 () Bool)

(declare-fun e!558451 () Bool)

(assert (=> d!117499 e!558451))

(declare-fun res!662286 () Bool)

(assert (=> d!117499 (=> res!662286 e!558451)))

(declare-fun lt!439409 () Bool)

(assert (=> d!117499 (= res!662286 (not lt!439409))))

(declare-fun lt!439410 () Bool)

(assert (=> d!117499 (= lt!439409 lt!439410)))

(declare-fun lt!439411 () Unit!32814)

(declare-fun e!558450 () Unit!32814)

(assert (=> d!117499 (= lt!439411 e!558450)))

(declare-fun c!100368 () Bool)

(assert (=> d!117499 (= c!100368 lt!439410)))

(declare-fun containsKey!480 (List!20960 (_ BitVec 64)) Bool)

(assert (=> d!117499 (= lt!439410 (containsKey!480 (toList!6876 lt!439335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117499 (= (contains!5732 lt!439335 #b0000000000000000000000000000000000000000000000000000000000000000) lt!439409)))

(declare-fun b!990326 () Bool)

(declare-fun lt!439408 () Unit!32814)

(assert (=> b!990326 (= e!558450 lt!439408)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!375 (List!20960 (_ BitVec 64)) Unit!32814)

(assert (=> b!990326 (= lt!439408 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!385 (Option!523) Bool)

(assert (=> b!990326 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990327 () Bool)

(declare-fun Unit!32820 () Unit!32814)

(assert (=> b!990327 (= e!558450 Unit!32820)))

(declare-fun b!990328 () Bool)

(assert (=> b!990328 (= e!558451 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439335) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117499 c!100368) b!990326))

(assert (= (and d!117499 (not c!100368)) b!990327))

(assert (= (and d!117499 (not res!662286)) b!990328))

(declare-fun m!917899 () Bool)

(assert (=> d!117499 m!917899))

(declare-fun m!917901 () Bool)

(assert (=> b!990326 m!917901))

(declare-fun m!917903 () Bool)

(assert (=> b!990326 m!917903))

(assert (=> b!990326 m!917903))

(declare-fun m!917905 () Bool)

(assert (=> b!990326 m!917905))

(assert (=> b!990328 m!917903))

(assert (=> b!990328 m!917903))

(assert (=> b!990328 m!917905))

(assert (=> bm!41979 d!117499))

(declare-fun d!117501 () Bool)

(declare-fun e!558453 () Bool)

(assert (=> d!117501 e!558453))

(declare-fun res!662287 () Bool)

(assert (=> d!117501 (=> res!662287 e!558453)))

(declare-fun lt!439413 () Bool)

(assert (=> d!117501 (= res!662287 (not lt!439413))))

(declare-fun lt!439414 () Bool)

(assert (=> d!117501 (= lt!439413 lt!439414)))

(declare-fun lt!439415 () Unit!32814)

(declare-fun e!558452 () Unit!32814)

(assert (=> d!117501 (= lt!439415 e!558452)))

(declare-fun c!100369 () Bool)

(assert (=> d!117501 (= c!100369 lt!439414)))

(assert (=> d!117501 (= lt!439414 (containsKey!480 (toList!6876 lt!439335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117501 (= (contains!5732 lt!439335 #b1000000000000000000000000000000000000000000000000000000000000000) lt!439413)))

(declare-fun b!990329 () Bool)

(declare-fun lt!439412 () Unit!32814)

(assert (=> b!990329 (= e!558452 lt!439412)))

(assert (=> b!990329 (= lt!439412 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990329 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990330 () Bool)

(declare-fun Unit!32821 () Unit!32814)

(assert (=> b!990330 (= e!558452 Unit!32821)))

(declare-fun b!990331 () Bool)

(assert (=> b!990331 (= e!558453 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439335) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117501 c!100369) b!990329))

(assert (= (and d!117501 (not c!100369)) b!990330))

(assert (= (and d!117501 (not res!662287)) b!990331))

(declare-fun m!917907 () Bool)

(assert (=> d!117501 m!917907))

(declare-fun m!917909 () Bool)

(assert (=> b!990329 m!917909))

(declare-fun m!917911 () Bool)

(assert (=> b!990329 m!917911))

(assert (=> b!990329 m!917911))

(declare-fun m!917913 () Bool)

(assert (=> b!990329 m!917913))

(assert (=> b!990331 m!917911))

(assert (=> b!990331 m!917911))

(assert (=> b!990331 m!917913))

(assert (=> bm!41975 d!117501))

(declare-fun d!117503 () Bool)

(assert (=> d!117503 (= (validKeyInArray!0 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)) (and (not (= (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990295 d!117503))

(declare-fun b!990333 () Bool)

(declare-fun e!558454 () Option!523)

(declare-fun e!558455 () Option!523)

(assert (=> b!990333 (= e!558454 e!558455)))

(declare-fun c!100371 () Bool)

(assert (=> b!990333 (= c!100371 (and ((_ is Cons!20956) (toList!6876 lt!439336)) (not (= (_1!7515 (h!22118 (toList!6876 lt!439336))) (_1!7515 lt!439231)))))))

(declare-fun b!990332 () Bool)

(assert (=> b!990332 (= e!558454 (Some!522 (_2!7515 (h!22118 (toList!6876 lt!439336)))))))

(declare-fun b!990334 () Bool)

(assert (=> b!990334 (= e!558455 (getValueByKey!517 (t!29943 (toList!6876 lt!439336)) (_1!7515 lt!439231)))))

(declare-fun b!990335 () Bool)

(assert (=> b!990335 (= e!558455 None!521)))

(declare-fun d!117505 () Bool)

(declare-fun c!100370 () Bool)

(assert (=> d!117505 (= c!100370 (and ((_ is Cons!20956) (toList!6876 lt!439336)) (= (_1!7515 (h!22118 (toList!6876 lt!439336))) (_1!7515 lt!439231))))))

(assert (=> d!117505 (= (getValueByKey!517 (toList!6876 lt!439336) (_1!7515 lt!439231)) e!558454)))

(assert (= (and d!117505 c!100370) b!990332))

(assert (= (and d!117505 (not c!100370)) b!990333))

(assert (= (and b!990333 c!100371) b!990334))

(assert (= (and b!990333 (not c!100371)) b!990335))

(declare-fun m!917915 () Bool)

(assert (=> b!990334 m!917915))

(assert (=> b!990204 d!117505))

(declare-fun b!990337 () Bool)

(declare-fun e!558456 () Option!523)

(declare-fun e!558457 () Option!523)

(assert (=> b!990337 (= e!558456 e!558457)))

(declare-fun c!100373 () Bool)

(assert (=> b!990337 (= c!100373 (and ((_ is Cons!20956) (toList!6876 lt!439340)) (not (= (_1!7515 (h!22118 (toList!6876 lt!439340))) (_1!7515 lt!439231)))))))

(declare-fun b!990336 () Bool)

(assert (=> b!990336 (= e!558456 (Some!522 (_2!7515 (h!22118 (toList!6876 lt!439340)))))))

(declare-fun b!990338 () Bool)

(assert (=> b!990338 (= e!558457 (getValueByKey!517 (t!29943 (toList!6876 lt!439340)) (_1!7515 lt!439231)))))

(declare-fun b!990339 () Bool)

(assert (=> b!990339 (= e!558457 None!521)))

(declare-fun d!117507 () Bool)

(declare-fun c!100372 () Bool)

(assert (=> d!117507 (= c!100372 (and ((_ is Cons!20956) (toList!6876 lt!439340)) (= (_1!7515 (h!22118 (toList!6876 lt!439340))) (_1!7515 lt!439231))))))

(assert (=> d!117507 (= (getValueByKey!517 (toList!6876 lt!439340) (_1!7515 lt!439231)) e!558456)))

(assert (= (and d!117507 c!100372) b!990336))

(assert (= (and d!117507 (not c!100372)) b!990337))

(assert (= (and b!990337 c!100373) b!990338))

(assert (= (and b!990337 (not c!100373)) b!990339))

(declare-fun m!917917 () Bool)

(assert (=> b!990338 m!917917))

(assert (=> b!990206 d!117507))

(assert (=> b!990281 d!117503))

(declare-fun d!117509 () Bool)

(declare-fun e!558459 () Bool)

(assert (=> d!117509 e!558459))

(declare-fun res!662288 () Bool)

(assert (=> d!117509 (=> res!662288 e!558459)))

(declare-fun lt!439417 () Bool)

(assert (=> d!117509 (= res!662288 (not lt!439417))))

(declare-fun lt!439418 () Bool)

(assert (=> d!117509 (= lt!439417 lt!439418)))

(declare-fun lt!439419 () Unit!32814)

(declare-fun e!558458 () Unit!32814)

(assert (=> d!117509 (= lt!439419 e!558458)))

(declare-fun c!100374 () Bool)

(assert (=> d!117509 (= c!100374 lt!439418)))

(assert (=> d!117509 (= lt!439418 (containsKey!480 (toList!6876 lt!439335) (select (arr!30118 _keys!1544) from!1932)))))

(assert (=> d!117509 (= (contains!5732 lt!439335 (select (arr!30118 _keys!1544) from!1932)) lt!439417)))

(declare-fun b!990340 () Bool)

(declare-fun lt!439416 () Unit!32814)

(assert (=> b!990340 (= e!558458 lt!439416)))

(assert (=> b!990340 (= lt!439416 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439335) (select (arr!30118 _keys!1544) from!1932)))))

(assert (=> b!990340 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439335) (select (arr!30118 _keys!1544) from!1932)))))

(declare-fun b!990341 () Bool)

(declare-fun Unit!32822 () Unit!32814)

(assert (=> b!990341 (= e!558458 Unit!32822)))

(declare-fun b!990342 () Bool)

(assert (=> b!990342 (= e!558459 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439335) (select (arr!30118 _keys!1544) from!1932))))))

(assert (= (and d!117509 c!100374) b!990340))

(assert (= (and d!117509 (not c!100374)) b!990341))

(assert (= (and d!117509 (not res!662288)) b!990342))

(assert (=> d!117509 m!917601))

(declare-fun m!917919 () Bool)

(assert (=> d!117509 m!917919))

(assert (=> b!990340 m!917601))

(declare-fun m!917921 () Bool)

(assert (=> b!990340 m!917921))

(assert (=> b!990340 m!917601))

(declare-fun m!917923 () Bool)

(assert (=> b!990340 m!917923))

(assert (=> b!990340 m!917923))

(declare-fun m!917925 () Bool)

(assert (=> b!990340 m!917925))

(assert (=> b!990342 m!917601))

(assert (=> b!990342 m!917923))

(assert (=> b!990342 m!917923))

(assert (=> b!990342 m!917925))

(assert (=> b!990185 d!117509))

(declare-fun d!117511 () Bool)

(assert (=> d!117511 (= (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (and (not (= (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990269 d!117511))

(declare-fun b!990343 () Bool)

(declare-fun e!558460 () Bool)

(declare-fun e!558461 () Bool)

(assert (=> b!990343 (= e!558460 e!558461)))

(declare-fun c!100375 () Bool)

(assert (=> b!990343 (= c!100375 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!990344 () Bool)

(declare-fun e!558462 () Bool)

(declare-fun call!42000 () Bool)

(assert (=> b!990344 (= e!558462 call!42000)))

(declare-fun bm!41997 () Bool)

(assert (=> bm!41997 (= call!42000 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!990346 () Bool)

(assert (=> b!990346 (= e!558461 e!558462)))

(declare-fun lt!439422 () (_ BitVec 64))

(assert (=> b!990346 (= lt!439422 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!439421 () Unit!32814)

(assert (=> b!990346 (= lt!439421 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!439422 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!990346 (arrayContainsKey!0 _keys!1544 lt!439422 #b00000000000000000000000000000000)))

(declare-fun lt!439420 () Unit!32814)

(assert (=> b!990346 (= lt!439420 lt!439421)))

(declare-fun res!662289 () Bool)

(assert (=> b!990346 (= res!662289 (= (seekEntryOrOpen!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1544 mask!1948) (Found!9200 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!990346 (=> (not res!662289) (not e!558462))))

(declare-fun d!117513 () Bool)

(declare-fun res!662290 () Bool)

(assert (=> d!117513 (=> res!662290 e!558460)))

(assert (=> d!117513 (= res!662290 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(assert (=> d!117513 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948) e!558460)))

(declare-fun b!990345 () Bool)

(assert (=> b!990345 (= e!558461 call!42000)))

(assert (= (and d!117513 (not res!662290)) b!990343))

(assert (= (and b!990343 c!100375) b!990346))

(assert (= (and b!990343 (not c!100375)) b!990345))

(assert (= (and b!990346 res!662289) b!990344))

(assert (= (or b!990344 b!990345) bm!41997))

(declare-fun m!917927 () Bool)

(assert (=> b!990343 m!917927))

(assert (=> b!990343 m!917927))

(declare-fun m!917929 () Bool)

(assert (=> b!990343 m!917929))

(declare-fun m!917931 () Bool)

(assert (=> bm!41997 m!917931))

(assert (=> b!990346 m!917927))

(declare-fun m!917933 () Bool)

(assert (=> b!990346 m!917933))

(declare-fun m!917935 () Bool)

(assert (=> b!990346 m!917935))

(assert (=> b!990346 m!917927))

(declare-fun m!917937 () Bool)

(assert (=> b!990346 m!917937))

(assert (=> bm!41993 d!117513))

(assert (=> b!990220 d!117511))

(declare-fun d!117515 () Bool)

(assert (=> d!117515 (arrayContainsKey!0 _keys!1544 lt!439399 #b00000000000000000000000000000000)))

(declare-fun lt!439425 () Unit!32814)

(declare-fun choose!13 (array!62541 (_ BitVec 64) (_ BitVec 32)) Unit!32814)

(assert (=> d!117515 (= lt!439425 (choose!13 _keys!1544 lt!439399 #b00000000000000000000000000000000))))

(assert (=> d!117515 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!117515 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!439399 #b00000000000000000000000000000000) lt!439425)))

(declare-fun bs!28113 () Bool)

(assert (= bs!28113 d!117515))

(assert (=> bs!28113 m!917883))

(declare-fun m!917939 () Bool)

(assert (=> bs!28113 m!917939))

(assert (=> b!990284 d!117515))

(declare-fun d!117517 () Bool)

(declare-fun res!662295 () Bool)

(declare-fun e!558467 () Bool)

(assert (=> d!117517 (=> res!662295 e!558467)))

(assert (=> d!117517 (= res!662295 (= (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) lt!439399))))

(assert (=> d!117517 (= (arrayContainsKey!0 _keys!1544 lt!439399 #b00000000000000000000000000000000) e!558467)))

(declare-fun b!990351 () Bool)

(declare-fun e!558468 () Bool)

(assert (=> b!990351 (= e!558467 e!558468)))

(declare-fun res!662296 () Bool)

(assert (=> b!990351 (=> (not res!662296) (not e!558468))))

(assert (=> b!990351 (= res!662296 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(declare-fun b!990352 () Bool)

(assert (=> b!990352 (= e!558468 (arrayContainsKey!0 _keys!1544 lt!439399 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!117517 (not res!662295)) b!990351))

(assert (= (and b!990351 res!662296) b!990352))

(assert (=> d!117517 m!917875))

(declare-fun m!917941 () Bool)

(assert (=> b!990352 m!917941))

(assert (=> b!990284 d!117517))

(declare-fun b!990365 () Bool)

(declare-fun e!558477 () SeekEntryResult!9200)

(declare-fun e!558476 () SeekEntryResult!9200)

(assert (=> b!990365 (= e!558477 e!558476)))

(declare-fun lt!439433 () (_ BitVec 64))

(declare-fun lt!439434 () SeekEntryResult!9200)

(assert (=> b!990365 (= lt!439433 (select (arr!30118 _keys!1544) (index!39172 lt!439434)))))

(declare-fun c!100384 () Bool)

(assert (=> b!990365 (= c!100384 (= lt!439433 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!117519 () Bool)

(declare-fun lt!439432 () SeekEntryResult!9200)

(assert (=> d!117519 (and (or ((_ is Undefined!9200) lt!439432) (not ((_ is Found!9200) lt!439432)) (and (bvsge (index!39171 lt!439432) #b00000000000000000000000000000000) (bvslt (index!39171 lt!439432) (size!30598 _keys!1544)))) (or ((_ is Undefined!9200) lt!439432) ((_ is Found!9200) lt!439432) (not ((_ is MissingZero!9200) lt!439432)) (and (bvsge (index!39170 lt!439432) #b00000000000000000000000000000000) (bvslt (index!39170 lt!439432) (size!30598 _keys!1544)))) (or ((_ is Undefined!9200) lt!439432) ((_ is Found!9200) lt!439432) ((_ is MissingZero!9200) lt!439432) (not ((_ is MissingVacant!9200) lt!439432)) (and (bvsge (index!39173 lt!439432) #b00000000000000000000000000000000) (bvslt (index!39173 lt!439432) (size!30598 _keys!1544)))) (or ((_ is Undefined!9200) lt!439432) (ite ((_ is Found!9200) lt!439432) (= (select (arr!30118 _keys!1544) (index!39171 lt!439432)) (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9200) lt!439432) (= (select (arr!30118 _keys!1544) (index!39170 lt!439432)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9200) lt!439432) (= (select (arr!30118 _keys!1544) (index!39173 lt!439432)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117519 (= lt!439432 e!558477)))

(declare-fun c!100383 () Bool)

(assert (=> d!117519 (= c!100383 (and ((_ is Intermediate!9200) lt!439434) (undefined!10012 lt!439434)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62541 (_ BitVec 32)) SeekEntryResult!9200)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!117519 (= lt!439434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) mask!1948) (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(assert (=> d!117519 (validMask!0 mask!1948)))

(assert (=> d!117519 (= (seekEntryOrOpen!0 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) lt!439432)))

(declare-fun b!990366 () Bool)

(declare-fun e!558475 () SeekEntryResult!9200)

(assert (=> b!990366 (= e!558475 (MissingZero!9200 (index!39172 lt!439434)))))

(declare-fun b!990367 () Bool)

(assert (=> b!990367 (= e!558477 Undefined!9200)))

(declare-fun b!990368 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62541 (_ BitVec 32)) SeekEntryResult!9200)

(assert (=> b!990368 (= e!558475 (seekKeyOrZeroReturnVacant!0 (x!86167 lt!439434) (index!39172 lt!439434) (index!39172 lt!439434) (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(declare-fun b!990369 () Bool)

(assert (=> b!990369 (= e!558476 (Found!9200 (index!39172 lt!439434)))))

(declare-fun b!990370 () Bool)

(declare-fun c!100382 () Bool)

(assert (=> b!990370 (= c!100382 (= lt!439433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990370 (= e!558476 e!558475)))

(assert (= (and d!117519 c!100383) b!990367))

(assert (= (and d!117519 (not c!100383)) b!990365))

(assert (= (and b!990365 c!100384) b!990369))

(assert (= (and b!990365 (not c!100384)) b!990370))

(assert (= (and b!990370 c!100382) b!990366))

(assert (= (and b!990370 (not c!100382)) b!990368))

(declare-fun m!917943 () Bool)

(assert (=> b!990365 m!917943))

(declare-fun m!917945 () Bool)

(assert (=> d!117519 m!917945))

(assert (=> d!117519 m!917875))

(declare-fun m!917947 () Bool)

(assert (=> d!117519 m!917947))

(assert (=> d!117519 m!917947))

(assert (=> d!117519 m!917875))

(declare-fun m!917949 () Bool)

(assert (=> d!117519 m!917949))

(declare-fun m!917951 () Bool)

(assert (=> d!117519 m!917951))

(assert (=> d!117519 m!917633))

(declare-fun m!917953 () Bool)

(assert (=> d!117519 m!917953))

(assert (=> b!990368 m!917875))

(declare-fun m!917955 () Bool)

(assert (=> b!990368 m!917955))

(assert (=> b!990284 d!117519))

(declare-fun d!117521 () Bool)

(assert (=> d!117521 (= (apply!932 lt!439335 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15657 (getValueByKey!517 (toList!6876 lt!439335) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28114 () Bool)

(assert (= bs!28114 d!117521))

(assert (=> bs!28114 m!917903))

(assert (=> bs!28114 m!917903))

(declare-fun m!917957 () Bool)

(assert (=> bs!28114 m!917957))

(assert (=> b!990189 d!117521))

(declare-fun d!117523 () Bool)

(assert (=> d!117523 (= (get!15656 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990236 d!117523))

(declare-fun d!117525 () Bool)

(declare-fun e!558479 () Bool)

(assert (=> d!117525 e!558479))

(declare-fun res!662297 () Bool)

(assert (=> d!117525 (=> res!662297 e!558479)))

(declare-fun lt!439436 () Bool)

(assert (=> d!117525 (= res!662297 (not lt!439436))))

(declare-fun lt!439437 () Bool)

(assert (=> d!117525 (= lt!439436 lt!439437)))

(declare-fun lt!439438 () Unit!32814)

(declare-fun e!558478 () Unit!32814)

(assert (=> d!117525 (= lt!439438 e!558478)))

(declare-fun c!100385 () Bool)

(assert (=> d!117525 (= c!100385 lt!439437)))

(assert (=> d!117525 (= lt!439437 (containsKey!480 (toList!6876 lt!439259) (_1!7515 lt!439232)))))

(assert (=> d!117525 (= (contains!5732 lt!439259 (_1!7515 lt!439232)) lt!439436)))

(declare-fun b!990371 () Bool)

(declare-fun lt!439435 () Unit!32814)

(assert (=> b!990371 (= e!558478 lt!439435)))

(assert (=> b!990371 (= lt!439435 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439259) (_1!7515 lt!439232)))))

(assert (=> b!990371 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439259) (_1!7515 lt!439232)))))

(declare-fun b!990372 () Bool)

(declare-fun Unit!32823 () Unit!32814)

(assert (=> b!990372 (= e!558478 Unit!32823)))

(declare-fun b!990373 () Bool)

(assert (=> b!990373 (= e!558479 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439259) (_1!7515 lt!439232))))))

(assert (= (and d!117525 c!100385) b!990371))

(assert (= (and d!117525 (not c!100385)) b!990372))

(assert (= (and d!117525 (not res!662297)) b!990373))

(declare-fun m!917959 () Bool)

(assert (=> d!117525 m!917959))

(declare-fun m!917961 () Bool)

(assert (=> b!990371 m!917961))

(assert (=> b!990371 m!917687))

(assert (=> b!990371 m!917687))

(declare-fun m!917963 () Bool)

(assert (=> b!990371 m!917963))

(assert (=> b!990373 m!917687))

(assert (=> b!990373 m!917687))

(assert (=> b!990373 m!917963))

(assert (=> d!117463 d!117525))

(declare-fun b!990375 () Bool)

(declare-fun e!558480 () Option!523)

(declare-fun e!558481 () Option!523)

(assert (=> b!990375 (= e!558480 e!558481)))

(declare-fun c!100387 () Bool)

(assert (=> b!990375 (= c!100387 (and ((_ is Cons!20956) lt!439261) (not (= (_1!7515 (h!22118 lt!439261)) (_1!7515 lt!439232)))))))

(declare-fun b!990374 () Bool)

(assert (=> b!990374 (= e!558480 (Some!522 (_2!7515 (h!22118 lt!439261))))))

(declare-fun b!990376 () Bool)

(assert (=> b!990376 (= e!558481 (getValueByKey!517 (t!29943 lt!439261) (_1!7515 lt!439232)))))

(declare-fun b!990377 () Bool)

(assert (=> b!990377 (= e!558481 None!521)))

(declare-fun d!117527 () Bool)

(declare-fun c!100386 () Bool)

(assert (=> d!117527 (= c!100386 (and ((_ is Cons!20956) lt!439261) (= (_1!7515 (h!22118 lt!439261)) (_1!7515 lt!439232))))))

(assert (=> d!117527 (= (getValueByKey!517 lt!439261 (_1!7515 lt!439232)) e!558480)))

(assert (= (and d!117527 c!100386) b!990374))

(assert (= (and d!117527 (not c!100386)) b!990375))

(assert (= (and b!990375 c!100387) b!990376))

(assert (= (and b!990375 (not c!100387)) b!990377))

(declare-fun m!917965 () Bool)

(assert (=> b!990376 m!917965))

(assert (=> d!117463 d!117527))

(declare-fun d!117529 () Bool)

(assert (=> d!117529 (= (getValueByKey!517 lt!439261 (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232)))))

(declare-fun lt!439441 () Unit!32814)

(declare-fun choose!1624 (List!20960 (_ BitVec 64) V!36043) Unit!32814)

(assert (=> d!117529 (= lt!439441 (choose!1624 lt!439261 (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(declare-fun e!558484 () Bool)

(assert (=> d!117529 e!558484))

(declare-fun res!662302 () Bool)

(assert (=> d!117529 (=> (not res!662302) (not e!558484))))

(declare-fun isStrictlySorted!513 (List!20960) Bool)

(assert (=> d!117529 (= res!662302 (isStrictlySorted!513 lt!439261))))

(assert (=> d!117529 (= (lemmaContainsTupThenGetReturnValue!274 lt!439261 (_1!7515 lt!439232) (_2!7515 lt!439232)) lt!439441)))

(declare-fun b!990382 () Bool)

(declare-fun res!662303 () Bool)

(assert (=> b!990382 (=> (not res!662303) (not e!558484))))

(assert (=> b!990382 (= res!662303 (containsKey!480 lt!439261 (_1!7515 lt!439232)))))

(declare-fun b!990383 () Bool)

(assert (=> b!990383 (= e!558484 (contains!5733 lt!439261 (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232))))))

(assert (= (and d!117529 res!662302) b!990382))

(assert (= (and b!990382 res!662303) b!990383))

(assert (=> d!117529 m!917681))

(declare-fun m!917967 () Bool)

(assert (=> d!117529 m!917967))

(declare-fun m!917969 () Bool)

(assert (=> d!117529 m!917969))

(declare-fun m!917971 () Bool)

(assert (=> b!990382 m!917971))

(declare-fun m!917973 () Bool)

(assert (=> b!990383 m!917973))

(assert (=> d!117463 d!117529))

(declare-fun b!990404 () Bool)

(declare-fun e!558495 () List!20960)

(declare-fun call!42009 () List!20960)

(assert (=> b!990404 (= e!558495 call!42009)))

(declare-fun b!990405 () Bool)

(declare-fun e!558497 () List!20960)

(declare-fun call!42007 () List!20960)

(assert (=> b!990405 (= e!558497 call!42007)))

(declare-fun e!558496 () List!20960)

(declare-fun c!100397 () Bool)

(declare-fun bm!42004 () Bool)

(declare-fun $colon$colon!557 (List!20960 tuple2!15010) List!20960)

(assert (=> bm!42004 (= call!42009 ($colon$colon!557 e!558496 (ite c!100397 (h!22118 (toList!6876 lt!439235)) (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232)))))))

(declare-fun c!100396 () Bool)

(assert (=> bm!42004 (= c!100396 c!100397)))

(declare-fun b!990406 () Bool)

(declare-fun e!558498 () List!20960)

(declare-fun call!42008 () List!20960)

(assert (=> b!990406 (= e!558498 call!42008)))

(declare-fun b!990407 () Bool)

(assert (=> b!990407 (= e!558495 e!558498)))

(declare-fun c!100399 () Bool)

(assert (=> b!990407 (= c!100399 (and ((_ is Cons!20956) (toList!6876 lt!439235)) (= (_1!7515 (h!22118 (toList!6876 lt!439235))) (_1!7515 lt!439232))))))

(declare-fun d!117531 () Bool)

(declare-fun e!558499 () Bool)

(assert (=> d!117531 e!558499))

(declare-fun res!662308 () Bool)

(assert (=> d!117531 (=> (not res!662308) (not e!558499))))

(declare-fun lt!439444 () List!20960)

(assert (=> d!117531 (= res!662308 (isStrictlySorted!513 lt!439444))))

(assert (=> d!117531 (= lt!439444 e!558495)))

(assert (=> d!117531 (= c!100397 (and ((_ is Cons!20956) (toList!6876 lt!439235)) (bvslt (_1!7515 (h!22118 (toList!6876 lt!439235))) (_1!7515 lt!439232))))))

(assert (=> d!117531 (isStrictlySorted!513 (toList!6876 lt!439235))))

(assert (=> d!117531 (= (insertStrictlySorted!330 (toList!6876 lt!439235) (_1!7515 lt!439232) (_2!7515 lt!439232)) lt!439444)))

(declare-fun bm!42005 () Bool)

(assert (=> bm!42005 (= call!42008 call!42009)))

(declare-fun b!990408 () Bool)

(declare-fun res!662309 () Bool)

(assert (=> b!990408 (=> (not res!662309) (not e!558499))))

(assert (=> b!990408 (= res!662309 (containsKey!480 lt!439444 (_1!7515 lt!439232)))))

(declare-fun b!990409 () Bool)

(assert (=> b!990409 (= e!558499 (contains!5733 lt!439444 (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232))))))

(declare-fun c!100398 () Bool)

(declare-fun b!990410 () Bool)

(assert (=> b!990410 (= e!558496 (ite c!100399 (t!29943 (toList!6876 lt!439235)) (ite c!100398 (Cons!20956 (h!22118 (toList!6876 lt!439235)) (t!29943 (toList!6876 lt!439235))) Nil!20957)))))

(declare-fun bm!42006 () Bool)

(assert (=> bm!42006 (= call!42007 call!42008)))

(declare-fun b!990411 () Bool)

(assert (=> b!990411 (= e!558496 (insertStrictlySorted!330 (t!29943 (toList!6876 lt!439235)) (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(declare-fun b!990412 () Bool)

(assert (=> b!990412 (= c!100398 (and ((_ is Cons!20956) (toList!6876 lt!439235)) (bvsgt (_1!7515 (h!22118 (toList!6876 lt!439235))) (_1!7515 lt!439232))))))

(assert (=> b!990412 (= e!558498 e!558497)))

(declare-fun b!990413 () Bool)

(assert (=> b!990413 (= e!558497 call!42007)))

(assert (= (and d!117531 c!100397) b!990404))

(assert (= (and d!117531 (not c!100397)) b!990407))

(assert (= (and b!990407 c!100399) b!990406))

(assert (= (and b!990407 (not c!100399)) b!990412))

(assert (= (and b!990412 c!100398) b!990413))

(assert (= (and b!990412 (not c!100398)) b!990405))

(assert (= (or b!990413 b!990405) bm!42006))

(assert (= (or b!990406 bm!42006) bm!42005))

(assert (= (or b!990404 bm!42005) bm!42004))

(assert (= (and bm!42004 c!100396) b!990411))

(assert (= (and bm!42004 (not c!100396)) b!990410))

(assert (= (and d!117531 res!662308) b!990408))

(assert (= (and b!990408 res!662309) b!990409))

(declare-fun m!917975 () Bool)

(assert (=> b!990411 m!917975))

(declare-fun m!917977 () Bool)

(assert (=> b!990408 m!917977))

(declare-fun m!917979 () Bool)

(assert (=> bm!42004 m!917979))

(declare-fun m!917981 () Bool)

(assert (=> b!990409 m!917981))

(declare-fun m!917983 () Bool)

(assert (=> d!117531 m!917983))

(declare-fun m!917985 () Bool)

(assert (=> d!117531 m!917985))

(assert (=> d!117463 d!117531))

(assert (=> bm!41984 d!117481))

(assert (=> b!990195 d!117483))

(declare-fun d!117533 () Bool)

(declare-fun e!558500 () Bool)

(assert (=> d!117533 e!558500))

(declare-fun res!662310 () Bool)

(assert (=> d!117533 (=> (not res!662310) (not e!558500))))

(declare-fun lt!439445 () ListLongMap!13721)

(assert (=> d!117533 (= res!662310 (contains!5732 lt!439445 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!439447 () List!20960)

(assert (=> d!117533 (= lt!439445 (ListLongMap!13722 lt!439447))))

(declare-fun lt!439446 () Unit!32814)

(declare-fun lt!439448 () Unit!32814)

(assert (=> d!117533 (= lt!439446 lt!439448)))

(assert (=> d!117533 (= (getValueByKey!517 lt!439447 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117533 (= lt!439448 (lemmaContainsTupThenGetReturnValue!274 lt!439447 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117533 (= lt!439447 (insertStrictlySorted!330 (toList!6876 call!41985) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117533 (= (+!3054 call!41985 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!439445)))

(declare-fun b!990414 () Bool)

(declare-fun res!662311 () Bool)

(assert (=> b!990414 (=> (not res!662311) (not e!558500))))

(assert (=> b!990414 (= res!662311 (= (getValueByKey!517 (toList!6876 lt!439445) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!990415 () Bool)

(assert (=> b!990415 (= e!558500 (contains!5733 (toList!6876 lt!439445) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117533 res!662310) b!990414))

(assert (= (and b!990414 res!662311) b!990415))

(declare-fun m!917987 () Bool)

(assert (=> d!117533 m!917987))

(declare-fun m!917989 () Bool)

(assert (=> d!117533 m!917989))

(declare-fun m!917991 () Bool)

(assert (=> d!117533 m!917991))

(declare-fun m!917993 () Bool)

(assert (=> d!117533 m!917993))

(declare-fun m!917995 () Bool)

(assert (=> b!990414 m!917995))

(declare-fun m!917997 () Bool)

(assert (=> b!990415 m!917997))

(assert (=> b!990226 d!117533))

(declare-fun d!117535 () Bool)

(declare-fun e!558501 () Bool)

(assert (=> d!117535 e!558501))

(declare-fun res!662312 () Bool)

(assert (=> d!117535 (=> (not res!662312) (not e!558501))))

(declare-fun lt!439449 () ListLongMap!13721)

(assert (=> d!117535 (= res!662312 (contains!5732 lt!439449 (_1!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!439451 () List!20960)

(assert (=> d!117535 (= lt!439449 (ListLongMap!13722 lt!439451))))

(declare-fun lt!439450 () Unit!32814)

(declare-fun lt!439452 () Unit!32814)

(assert (=> d!117535 (= lt!439450 lt!439452)))

(assert (=> d!117535 (= (getValueByKey!517 lt!439451 (_1!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!522 (_2!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117535 (= lt!439452 (lemmaContainsTupThenGetReturnValue!274 lt!439451 (_1!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117535 (= lt!439451 (insertStrictlySorted!330 (toList!6876 (ite c!100333 call!41986 (ite c!100337 call!41984 call!41989))) (_1!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117535 (= (+!3054 (ite c!100333 call!41986 (ite c!100337 call!41984 call!41989)) (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!439449)))

(declare-fun b!990416 () Bool)

(declare-fun res!662313 () Bool)

(assert (=> b!990416 (=> (not res!662313) (not e!558501))))

(assert (=> b!990416 (= res!662313 (= (getValueByKey!517 (toList!6876 lt!439449) (_1!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!522 (_2!7515 (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!990417 () Bool)

(assert (=> b!990417 (= e!558501 (contains!5733 (toList!6876 lt!439449) (ite (or c!100333 c!100337) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117535 res!662312) b!990416))

(assert (= (and b!990416 res!662313) b!990417))

(declare-fun m!917999 () Bool)

(assert (=> d!117535 m!917999))

(declare-fun m!918001 () Bool)

(assert (=> d!117535 m!918001))

(declare-fun m!918003 () Bool)

(assert (=> d!117535 m!918003))

(declare-fun m!918005 () Bool)

(assert (=> d!117535 m!918005))

(declare-fun m!918007 () Bool)

(assert (=> b!990416 m!918007))

(declare-fun m!918009 () Bool)

(assert (=> b!990417 m!918009))

(assert (=> bm!41987 d!117535))

(declare-fun d!117537 () Bool)

(declare-fun e!558503 () Bool)

(assert (=> d!117537 e!558503))

(declare-fun res!662314 () Bool)

(assert (=> d!117537 (=> res!662314 e!558503)))

(declare-fun lt!439454 () Bool)

(assert (=> d!117537 (= res!662314 (not lt!439454))))

(declare-fun lt!439455 () Bool)

(assert (=> d!117537 (= lt!439454 lt!439455)))

(declare-fun lt!439456 () Unit!32814)

(declare-fun e!558502 () Unit!32814)

(assert (=> d!117537 (= lt!439456 e!558502)))

(declare-fun c!100400 () Bool)

(assert (=> d!117537 (= c!100400 lt!439455)))

(assert (=> d!117537 (= lt!439455 (containsKey!480 (toList!6876 lt!439389) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117537 (= (contains!5732 lt!439389 #b0000000000000000000000000000000000000000000000000000000000000000) lt!439454)))

(declare-fun b!990418 () Bool)

(declare-fun lt!439453 () Unit!32814)

(assert (=> b!990418 (= e!558502 lt!439453)))

(assert (=> b!990418 (= lt!439453 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439389) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990418 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439389) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990419 () Bool)

(declare-fun Unit!32824 () Unit!32814)

(assert (=> b!990419 (= e!558502 Unit!32824)))

(declare-fun b!990420 () Bool)

(assert (=> b!990420 (= e!558503 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439389) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117537 c!100400) b!990418))

(assert (= (and d!117537 (not c!100400)) b!990419))

(assert (= (and d!117537 (not res!662314)) b!990420))

(declare-fun m!918011 () Bool)

(assert (=> d!117537 m!918011))

(declare-fun m!918013 () Bool)

(assert (=> b!990418 m!918013))

(declare-fun m!918015 () Bool)

(assert (=> b!990418 m!918015))

(assert (=> b!990418 m!918015))

(declare-fun m!918017 () Bool)

(assert (=> b!990418 m!918017))

(assert (=> b!990420 m!918015))

(assert (=> b!990420 m!918015))

(assert (=> b!990420 m!918017))

(assert (=> d!117481 d!117537))

(assert (=> d!117481 d!117489))

(declare-fun d!117539 () Bool)

(declare-fun e!558505 () Bool)

(assert (=> d!117539 e!558505))

(declare-fun res!662315 () Bool)

(assert (=> d!117539 (=> res!662315 e!558505)))

(declare-fun lt!439458 () Bool)

(assert (=> d!117539 (= res!662315 (not lt!439458))))

(declare-fun lt!439459 () Bool)

(assert (=> d!117539 (= lt!439458 lt!439459)))

(declare-fun lt!439460 () Unit!32814)

(declare-fun e!558504 () Unit!32814)

(assert (=> d!117539 (= lt!439460 e!558504)))

(declare-fun c!100401 () Bool)

(assert (=> d!117539 (= c!100401 lt!439459)))

(assert (=> d!117539 (= lt!439459 (containsKey!480 (toList!6876 (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387))) lt!439384))))

(assert (=> d!117539 (= (contains!5732 (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387)) lt!439384) lt!439458)))

(declare-fun b!990421 () Bool)

(declare-fun lt!439457 () Unit!32814)

(assert (=> b!990421 (= e!558504 lt!439457)))

(assert (=> b!990421 (= lt!439457 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387))) lt!439384))))

(assert (=> b!990421 (isDefined!385 (getValueByKey!517 (toList!6876 (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387))) lt!439384))))

(declare-fun b!990422 () Bool)

(declare-fun Unit!32825 () Unit!32814)

(assert (=> b!990422 (= e!558504 Unit!32825)))

(declare-fun b!990423 () Bool)

(assert (=> b!990423 (= e!558505 (isDefined!385 (getValueByKey!517 (toList!6876 (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387))) lt!439384)))))

(assert (= (and d!117539 c!100401) b!990421))

(assert (= (and d!117539 (not c!100401)) b!990422))

(assert (= (and d!117539 (not res!662315)) b!990423))

(declare-fun m!918019 () Bool)

(assert (=> d!117539 m!918019))

(declare-fun m!918021 () Bool)

(assert (=> b!990421 m!918021))

(declare-fun m!918023 () Bool)

(assert (=> b!990421 m!918023))

(assert (=> b!990421 m!918023))

(declare-fun m!918025 () Bool)

(assert (=> b!990421 m!918025))

(assert (=> b!990423 m!918023))

(assert (=> b!990423 m!918023))

(assert (=> b!990423 m!918025))

(assert (=> b!990262 d!117539))

(declare-fun d!117541 () Bool)

(declare-fun c!100402 () Bool)

(assert (=> d!117541 (= c!100402 ((_ is ValueCellFull!11166) (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun e!558506 () V!36043)

(assert (=> d!117541 (= (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!558506)))

(declare-fun b!990424 () Bool)

(assert (=> b!990424 (= e!558506 (get!15655 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!990425 () Bool)

(assert (=> b!990425 (= e!558506 (get!15656 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117541 c!100402) b!990424))

(assert (= (and d!117541 (not c!100402)) b!990425))

(assert (=> b!990424 m!917829))

(assert (=> b!990424 m!917627))

(declare-fun m!918027 () Bool)

(assert (=> b!990424 m!918027))

(assert (=> b!990425 m!917829))

(assert (=> b!990425 m!917627))

(declare-fun m!918029 () Bool)

(assert (=> b!990425 m!918029))

(assert (=> b!990262 d!117541))

(declare-fun d!117543 () Bool)

(declare-fun e!558507 () Bool)

(assert (=> d!117543 e!558507))

(declare-fun res!662316 () Bool)

(assert (=> d!117543 (=> (not res!662316) (not e!558507))))

(declare-fun lt!439461 () ListLongMap!13721)

(assert (=> d!117543 (= res!662316 (contains!5732 lt!439461 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!439463 () List!20960)

(assert (=> d!117543 (= lt!439461 (ListLongMap!13722 lt!439463))))

(declare-fun lt!439462 () Unit!32814)

(declare-fun lt!439464 () Unit!32814)

(assert (=> d!117543 (= lt!439462 lt!439464)))

(assert (=> d!117543 (= (getValueByKey!517 lt!439463 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!522 (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117543 (= lt!439464 (lemmaContainsTupThenGetReturnValue!274 lt!439463 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117543 (= lt!439463 (insertStrictlySorted!330 (toList!6876 call!41993) (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117543 (= (+!3054 call!41993 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!439461)))

(declare-fun b!990426 () Bool)

(declare-fun res!662317 () Bool)

(assert (=> b!990426 (=> (not res!662317) (not e!558507))))

(assert (=> b!990426 (= res!662317 (= (getValueByKey!517 (toList!6876 lt!439461) (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!522 (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!990427 () Bool)

(assert (=> b!990427 (= e!558507 (contains!5733 (toList!6876 lt!439461) (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!117543 res!662316) b!990426))

(assert (= (and b!990426 res!662317) b!990427))

(declare-fun m!918031 () Bool)

(assert (=> d!117543 m!918031))

(declare-fun m!918033 () Bool)

(assert (=> d!117543 m!918033))

(declare-fun m!918035 () Bool)

(assert (=> d!117543 m!918035))

(declare-fun m!918037 () Bool)

(assert (=> d!117543 m!918037))

(declare-fun m!918039 () Bool)

(assert (=> b!990426 m!918039))

(declare-fun m!918041 () Bool)

(assert (=> b!990427 m!918041))

(assert (=> b!990262 d!117543))

(declare-fun d!117545 () Bool)

(declare-fun e!558508 () Bool)

(assert (=> d!117545 e!558508))

(declare-fun res!662318 () Bool)

(assert (=> d!117545 (=> (not res!662318) (not e!558508))))

(declare-fun lt!439465 () ListLongMap!13721)

(assert (=> d!117545 (= res!662318 (contains!5732 lt!439465 (_1!7515 (tuple2!15011 lt!439386 lt!439387))))))

(declare-fun lt!439467 () List!20960)

(assert (=> d!117545 (= lt!439465 (ListLongMap!13722 lt!439467))))

(declare-fun lt!439466 () Unit!32814)

(declare-fun lt!439468 () Unit!32814)

(assert (=> d!117545 (= lt!439466 lt!439468)))

(assert (=> d!117545 (= (getValueByKey!517 lt!439467 (_1!7515 (tuple2!15011 lt!439386 lt!439387))) (Some!522 (_2!7515 (tuple2!15011 lt!439386 lt!439387))))))

(assert (=> d!117545 (= lt!439468 (lemmaContainsTupThenGetReturnValue!274 lt!439467 (_1!7515 (tuple2!15011 lt!439386 lt!439387)) (_2!7515 (tuple2!15011 lt!439386 lt!439387))))))

(assert (=> d!117545 (= lt!439467 (insertStrictlySorted!330 (toList!6876 lt!439388) (_1!7515 (tuple2!15011 lt!439386 lt!439387)) (_2!7515 (tuple2!15011 lt!439386 lt!439387))))))

(assert (=> d!117545 (= (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387)) lt!439465)))

(declare-fun b!990428 () Bool)

(declare-fun res!662319 () Bool)

(assert (=> b!990428 (=> (not res!662319) (not e!558508))))

(assert (=> b!990428 (= res!662319 (= (getValueByKey!517 (toList!6876 lt!439465) (_1!7515 (tuple2!15011 lt!439386 lt!439387))) (Some!522 (_2!7515 (tuple2!15011 lt!439386 lt!439387)))))))

(declare-fun b!990429 () Bool)

(assert (=> b!990429 (= e!558508 (contains!5733 (toList!6876 lt!439465) (tuple2!15011 lt!439386 lt!439387)))))

(assert (= (and d!117545 res!662318) b!990428))

(assert (= (and b!990428 res!662319) b!990429))

(declare-fun m!918043 () Bool)

(assert (=> d!117545 m!918043))

(declare-fun m!918045 () Bool)

(assert (=> d!117545 m!918045))

(declare-fun m!918047 () Bool)

(assert (=> d!117545 m!918047))

(declare-fun m!918049 () Bool)

(assert (=> d!117545 m!918049))

(declare-fun m!918051 () Bool)

(assert (=> b!990428 m!918051))

(declare-fun m!918053 () Bool)

(assert (=> b!990429 m!918053))

(assert (=> b!990262 d!117545))

(declare-fun d!117547 () Bool)

(assert (=> d!117547 (not (contains!5732 (+!3054 lt!439388 (tuple2!15011 lt!439386 lt!439387)) lt!439384))))

(declare-fun lt!439471 () Unit!32814)

(declare-fun choose!1625 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64)) Unit!32814)

(assert (=> d!117547 (= lt!439471 (choose!1625 lt!439388 lt!439386 lt!439387 lt!439384))))

(declare-fun e!558511 () Bool)

(assert (=> d!117547 e!558511))

(declare-fun res!662322 () Bool)

(assert (=> d!117547 (=> (not res!662322) (not e!558511))))

(assert (=> d!117547 (= res!662322 (not (contains!5732 lt!439388 lt!439384)))))

(assert (=> d!117547 (= (addStillNotContains!238 lt!439388 lt!439386 lt!439387 lt!439384) lt!439471)))

(declare-fun b!990433 () Bool)

(assert (=> b!990433 (= e!558511 (not (= lt!439386 lt!439384)))))

(assert (= (and d!117547 res!662322) b!990433))

(assert (=> d!117547 m!917863))

(assert (=> d!117547 m!917863))

(assert (=> d!117547 m!917865))

(declare-fun m!918055 () Bool)

(assert (=> d!117547 m!918055))

(declare-fun m!918057 () Bool)

(assert (=> d!117547 m!918057))

(assert (=> b!990262 d!117547))

(declare-fun d!117549 () Bool)

(declare-fun e!558513 () Bool)

(assert (=> d!117549 e!558513))

(declare-fun res!662324 () Bool)

(assert (=> d!117549 (=> (not res!662324) (not e!558513))))

(declare-fun lt!439477 () ListLongMap!13721)

(assert (=> d!117549 (= res!662324 (not (contains!5732 lt!439477 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!558514 () ListLongMap!13721)

(assert (=> d!117549 (= lt!439477 e!558514)))

(declare-fun c!100406 () Bool)

(assert (=> d!117549 (= c!100406 (bvsge from!1932 (size!30598 _keys!1544)))))

(assert (=> d!117549 (validMask!0 mask!1948)))

(assert (=> d!117549 (= (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!439477)))

(declare-fun b!990434 () Bool)

(declare-fun e!558518 () ListLongMap!13721)

(declare-fun call!42010 () ListLongMap!13721)

(assert (=> b!990434 (= e!558518 call!42010)))

(declare-fun bm!42007 () Bool)

(assert (=> bm!42007 (= call!42010 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!990435 () Bool)

(declare-fun lt!439473 () Unit!32814)

(declare-fun lt!439478 () Unit!32814)

(assert (=> b!990435 (= lt!439473 lt!439478)))

(declare-fun lt!439475 () V!36043)

(declare-fun lt!439472 () (_ BitVec 64))

(declare-fun lt!439476 () ListLongMap!13721)

(declare-fun lt!439474 () (_ BitVec 64))

(assert (=> b!990435 (not (contains!5732 (+!3054 lt!439476 (tuple2!15011 lt!439474 lt!439475)) lt!439472))))

(assert (=> b!990435 (= lt!439478 (addStillNotContains!238 lt!439476 lt!439474 lt!439475 lt!439472))))

(assert (=> b!990435 (= lt!439472 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!990435 (= lt!439475 (get!15653 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!990435 (= lt!439474 (select (arr!30118 _keys!1544) from!1932))))

(assert (=> b!990435 (= lt!439476 call!42010)))

(assert (=> b!990435 (= e!558518 (+!3054 call!42010 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) (get!15653 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!990436 () Bool)

(declare-fun e!558517 () Bool)

(assert (=> b!990436 (= e!558517 (validKeyInArray!0 (select (arr!30118 _keys!1544) from!1932)))))

(assert (=> b!990436 (bvsge from!1932 #b00000000000000000000000000000000)))

(declare-fun b!990437 () Bool)

(declare-fun res!662326 () Bool)

(assert (=> b!990437 (=> (not res!662326) (not e!558513))))

(assert (=> b!990437 (= res!662326 (not (contains!5732 lt!439477 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!990438 () Bool)

(assert (=> b!990438 (= e!558514 (ListLongMap!13722 Nil!20957))))

(declare-fun b!990439 () Bool)

(assert (=> b!990439 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30598 _keys!1544)))))

(assert (=> b!990439 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30597 _values!1278)))))

(declare-fun e!558512 () Bool)

(assert (=> b!990439 (= e!558512 (= (apply!932 lt!439477 (select (arr!30118 _keys!1544) from!1932)) (get!15653 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!990440 () Bool)

(declare-fun e!558516 () Bool)

(assert (=> b!990440 (= e!558513 e!558516)))

(declare-fun c!100403 () Bool)

(assert (=> b!990440 (= c!100403 e!558517)))

(declare-fun res!662325 () Bool)

(assert (=> b!990440 (=> (not res!662325) (not e!558517))))

(assert (=> b!990440 (= res!662325 (bvslt from!1932 (size!30598 _keys!1544)))))

(declare-fun b!990441 () Bool)

(declare-fun e!558515 () Bool)

(assert (=> b!990441 (= e!558515 (= lt!439477 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!990442 () Bool)

(assert (=> b!990442 (= e!558514 e!558518)))

(declare-fun c!100404 () Bool)

(assert (=> b!990442 (= c!100404 (validKeyInArray!0 (select (arr!30118 _keys!1544) from!1932)))))

(declare-fun b!990443 () Bool)

(assert (=> b!990443 (= e!558516 e!558512)))

(assert (=> b!990443 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30598 _keys!1544)))))

(declare-fun res!662323 () Bool)

(assert (=> b!990443 (= res!662323 (contains!5732 lt!439477 (select (arr!30118 _keys!1544) from!1932)))))

(assert (=> b!990443 (=> (not res!662323) (not e!558512))))

(declare-fun b!990444 () Bool)

(assert (=> b!990444 (= e!558516 e!558515)))

(declare-fun c!100405 () Bool)

(assert (=> b!990444 (= c!100405 (bvslt from!1932 (size!30598 _keys!1544)))))

(declare-fun b!990445 () Bool)

(assert (=> b!990445 (= e!558515 (isEmpty!731 lt!439477))))

(assert (= (and d!117549 c!100406) b!990438))

(assert (= (and d!117549 (not c!100406)) b!990442))

(assert (= (and b!990442 c!100404) b!990435))

(assert (= (and b!990442 (not c!100404)) b!990434))

(assert (= (or b!990435 b!990434) bm!42007))

(assert (= (and d!117549 res!662324) b!990437))

(assert (= (and b!990437 res!662326) b!990440))

(assert (= (and b!990440 res!662325) b!990436))

(assert (= (and b!990440 c!100403) b!990443))

(assert (= (and b!990440 (not c!100403)) b!990444))

(assert (= (and b!990443 res!662323) b!990439))

(assert (= (and b!990444 c!100405) b!990441))

(assert (= (and b!990444 (not c!100405)) b!990445))

(declare-fun b_lambda!15211 () Bool)

(assert (=> (not b_lambda!15211) (not b!990435)))

(assert (=> b!990435 t!29942))

(declare-fun b_and!32263 () Bool)

(assert (= b_and!32261 (and (=> t!29942 result!13659) b_and!32263)))

(declare-fun b_lambda!15213 () Bool)

(assert (=> (not b_lambda!15213) (not b!990439)))

(assert (=> b!990439 t!29942))

(declare-fun b_and!32265 () Bool)

(assert (= b_and!32263 (and (=> t!29942 result!13659) b_and!32265)))

(assert (=> b!990439 m!917601))

(assert (=> b!990439 m!917627))

(assert (=> b!990439 m!917601))

(declare-fun m!918059 () Bool)

(assert (=> b!990439 m!918059))

(assert (=> b!990439 m!917623))

(assert (=> b!990439 m!917623))

(assert (=> b!990439 m!917627))

(assert (=> b!990439 m!917629))

(declare-fun m!918061 () Bool)

(assert (=> b!990445 m!918061))

(declare-fun m!918063 () Bool)

(assert (=> d!117549 m!918063))

(assert (=> d!117549 m!917633))

(assert (=> b!990436 m!917601))

(assert (=> b!990436 m!917601))

(assert (=> b!990436 m!917621))

(assert (=> b!990442 m!917601))

(assert (=> b!990442 m!917601))

(assert (=> b!990442 m!917621))

(declare-fun m!918065 () Bool)

(assert (=> b!990435 m!918065))

(declare-fun m!918067 () Bool)

(assert (=> b!990435 m!918067))

(declare-fun m!918069 () Bool)

(assert (=> b!990435 m!918069))

(assert (=> b!990435 m!917601))

(declare-fun m!918071 () Bool)

(assert (=> b!990435 m!918071))

(assert (=> b!990435 m!917627))

(assert (=> b!990435 m!918067))

(assert (=> b!990435 m!917623))

(assert (=> b!990435 m!917623))

(assert (=> b!990435 m!917627))

(assert (=> b!990435 m!917629))

(declare-fun m!918073 () Bool)

(assert (=> b!990437 m!918073))

(declare-fun m!918075 () Bool)

(assert (=> bm!42007 m!918075))

(assert (=> b!990443 m!917601))

(assert (=> b!990443 m!917601))

(declare-fun m!918077 () Bool)

(assert (=> b!990443 m!918077))

(assert (=> b!990441 m!918075))

(assert (=> bm!41977 d!117549))

(declare-fun d!117551 () Bool)

(declare-fun e!558520 () Bool)

(assert (=> d!117551 e!558520))

(declare-fun res!662327 () Bool)

(assert (=> d!117551 (=> res!662327 e!558520)))

(declare-fun lt!439480 () Bool)

(assert (=> d!117551 (= res!662327 (not lt!439480))))

(declare-fun lt!439481 () Bool)

(assert (=> d!117551 (= lt!439480 lt!439481)))

(declare-fun lt!439482 () Unit!32814)

(declare-fun e!558519 () Unit!32814)

(assert (=> d!117551 (= lt!439482 e!558519)))

(declare-fun c!100407 () Bool)

(assert (=> d!117551 (= c!100407 lt!439481)))

(assert (=> d!117551 (= lt!439481 (containsKey!480 (toList!6876 lt!439389) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117551 (= (contains!5732 lt!439389 #b1000000000000000000000000000000000000000000000000000000000000000) lt!439480)))

(declare-fun b!990446 () Bool)

(declare-fun lt!439479 () Unit!32814)

(assert (=> b!990446 (= e!558519 lt!439479)))

(assert (=> b!990446 (= lt!439479 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439389) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990446 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439389) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990447 () Bool)

(declare-fun Unit!32826 () Unit!32814)

(assert (=> b!990447 (= e!558519 Unit!32826)))

(declare-fun b!990448 () Bool)

(assert (=> b!990448 (= e!558520 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439389) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117551 c!100407) b!990446))

(assert (= (and d!117551 (not c!100407)) b!990447))

(assert (= (and d!117551 (not res!662327)) b!990448))

(declare-fun m!918079 () Bool)

(assert (=> d!117551 m!918079))

(declare-fun m!918081 () Bool)

(assert (=> b!990446 m!918081))

(declare-fun m!918083 () Bool)

(assert (=> b!990446 m!918083))

(assert (=> b!990446 m!918083))

(declare-fun m!918085 () Bool)

(assert (=> b!990446 m!918085))

(assert (=> b!990448 m!918083))

(assert (=> b!990448 m!918083))

(assert (=> b!990448 m!918085))

(assert (=> b!990264 d!117551))

(declare-fun d!117553 () Bool)

(declare-fun lt!439485 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!424 (List!20960) (InoxSet tuple2!15010))

(assert (=> d!117553 (= lt!439485 (select (content!424 (toList!6876 lt!439259)) lt!439232))))

(declare-fun e!558526 () Bool)

(assert (=> d!117553 (= lt!439485 e!558526)))

(declare-fun res!662333 () Bool)

(assert (=> d!117553 (=> (not res!662333) (not e!558526))))

(assert (=> d!117553 (= res!662333 ((_ is Cons!20956) (toList!6876 lt!439259)))))

(assert (=> d!117553 (= (contains!5733 (toList!6876 lt!439259) lt!439232) lt!439485)))

(declare-fun b!990453 () Bool)

(declare-fun e!558525 () Bool)

(assert (=> b!990453 (= e!558526 e!558525)))

(declare-fun res!662332 () Bool)

(assert (=> b!990453 (=> res!662332 e!558525)))

(assert (=> b!990453 (= res!662332 (= (h!22118 (toList!6876 lt!439259)) lt!439232))))

(declare-fun b!990454 () Bool)

(assert (=> b!990454 (= e!558525 (contains!5733 (t!29943 (toList!6876 lt!439259)) lt!439232))))

(assert (= (and d!117553 res!662333) b!990453))

(assert (= (and b!990453 (not res!662332)) b!990454))

(declare-fun m!918087 () Bool)

(assert (=> d!117553 m!918087))

(declare-fun m!918089 () Bool)

(assert (=> d!117553 m!918089))

(declare-fun m!918091 () Bool)

(assert (=> b!990454 m!918091))

(assert (=> b!990138 d!117553))

(assert (=> b!990213 d!117511))

(declare-fun d!117555 () Bool)

(declare-fun lt!439486 () Bool)

(assert (=> d!117555 (= lt!439486 (select (content!424 (toList!6876 lt!439263)) lt!439232))))

(declare-fun e!558528 () Bool)

(assert (=> d!117555 (= lt!439486 e!558528)))

(declare-fun res!662335 () Bool)

(assert (=> d!117555 (=> (not res!662335) (not e!558528))))

(assert (=> d!117555 (= res!662335 ((_ is Cons!20956) (toList!6876 lt!439263)))))

(assert (=> d!117555 (= (contains!5733 (toList!6876 lt!439263) lt!439232) lt!439486)))

(declare-fun b!990455 () Bool)

(declare-fun e!558527 () Bool)

(assert (=> b!990455 (= e!558528 e!558527)))

(declare-fun res!662334 () Bool)

(assert (=> b!990455 (=> res!662334 e!558527)))

(assert (=> b!990455 (= res!662334 (= (h!22118 (toList!6876 lt!439263)) lt!439232))))

(declare-fun b!990456 () Bool)

(assert (=> b!990456 (= e!558527 (contains!5733 (t!29943 (toList!6876 lt!439263)) lt!439232))))

(assert (= (and d!117555 res!662335) b!990455))

(assert (= (and b!990455 (not res!662334)) b!990456))

(declare-fun m!918093 () Bool)

(assert (=> d!117555 m!918093))

(declare-fun m!918095 () Bool)

(assert (=> d!117555 m!918095))

(declare-fun m!918097 () Bool)

(assert (=> b!990456 m!918097))

(assert (=> b!990140 d!117555))

(declare-fun d!117557 () Bool)

(declare-fun e!558529 () Bool)

(assert (=> d!117557 e!558529))

(declare-fun res!662336 () Bool)

(assert (=> d!117557 (=> (not res!662336) (not e!558529))))

(declare-fun lt!439487 () ListLongMap!13721)

(assert (=> d!117557 (= res!662336 (contains!5732 lt!439487 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!439489 () List!20960)

(assert (=> d!117557 (= lt!439487 (ListLongMap!13722 lt!439489))))

(declare-fun lt!439488 () Unit!32814)

(declare-fun lt!439490 () Unit!32814)

(assert (=> d!117557 (= lt!439488 lt!439490)))

(assert (=> d!117557 (= (getValueByKey!517 lt!439489 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117557 (= lt!439490 (lemmaContainsTupThenGetReturnValue!274 lt!439489 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117557 (= lt!439489 (insertStrictlySorted!330 (toList!6876 call!41978) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117557 (= (+!3054 call!41978 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!439487)))

(declare-fun b!990457 () Bool)

(declare-fun res!662337 () Bool)

(assert (=> b!990457 (=> (not res!662337) (not e!558529))))

(assert (=> b!990457 (= res!662337 (= (getValueByKey!517 (toList!6876 lt!439487) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!990458 () Bool)

(assert (=> b!990458 (= e!558529 (contains!5733 (toList!6876 lt!439487) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117557 res!662336) b!990457))

(assert (= (and b!990457 res!662337) b!990458))

(declare-fun m!918099 () Bool)

(assert (=> d!117557 m!918099))

(declare-fun m!918101 () Bool)

(assert (=> d!117557 m!918101))

(declare-fun m!918103 () Bool)

(assert (=> d!117557 m!918103))

(declare-fun m!918105 () Bool)

(assert (=> d!117557 m!918105))

(declare-fun m!918107 () Bool)

(assert (=> b!990457 m!918107))

(declare-fun m!918109 () Bool)

(assert (=> b!990458 m!918109))

(assert (=> b!990201 d!117557))

(declare-fun d!117559 () Bool)

(assert (=> d!117559 (= (apply!932 lt!439389 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15657 (getValueByKey!517 (toList!6876 lt!439389) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(declare-fun bs!28115 () Bool)

(assert (= bs!28115 d!117559))

(assert (=> bs!28115 m!917787))

(declare-fun m!918111 () Bool)

(assert (=> bs!28115 m!918111))

(assert (=> bs!28115 m!918111))

(declare-fun m!918113 () Bool)

(assert (=> bs!28115 m!918113))

(assert (=> b!990266 d!117559))

(assert (=> b!990266 d!117541))

(declare-fun d!117561 () Bool)

(declare-fun lt!439491 () Bool)

(assert (=> d!117561 (= lt!439491 (select (content!424 (toList!6876 lt!439366)) lt!439232))))

(declare-fun e!558531 () Bool)

(assert (=> d!117561 (= lt!439491 e!558531)))

(declare-fun res!662339 () Bool)

(assert (=> d!117561 (=> (not res!662339) (not e!558531))))

(assert (=> d!117561 (= res!662339 ((_ is Cons!20956) (toList!6876 lt!439366)))))

(assert (=> d!117561 (= (contains!5733 (toList!6876 lt!439366) lt!439232) lt!439491)))

(declare-fun b!990459 () Bool)

(declare-fun e!558530 () Bool)

(assert (=> b!990459 (= e!558531 e!558530)))

(declare-fun res!662338 () Bool)

(assert (=> b!990459 (=> res!662338 e!558530)))

(assert (=> b!990459 (= res!662338 (= (h!22118 (toList!6876 lt!439366)) lt!439232))))

(declare-fun b!990460 () Bool)

(assert (=> b!990460 (= e!558530 (contains!5733 (t!29943 (toList!6876 lt!439366)) lt!439232))))

(assert (= (and d!117561 res!662339) b!990459))

(assert (= (and b!990459 (not res!662338)) b!990460))

(declare-fun m!918115 () Bool)

(assert (=> d!117561 m!918115))

(declare-fun m!918117 () Bool)

(assert (=> d!117561 m!918117))

(declare-fun m!918119 () Bool)

(assert (=> b!990460 m!918119))

(assert (=> b!990230 d!117561))

(declare-fun d!117563 () Bool)

(declare-fun e!558532 () Bool)

(assert (=> d!117563 e!558532))

(declare-fun res!662340 () Bool)

(assert (=> d!117563 (=> (not res!662340) (not e!558532))))

(declare-fun lt!439492 () ListLongMap!13721)

(assert (=> d!117563 (= res!662340 (contains!5732 lt!439492 (_1!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!439494 () List!20960)

(assert (=> d!117563 (= lt!439492 (ListLongMap!13722 lt!439494))))

(declare-fun lt!439493 () Unit!32814)

(declare-fun lt!439495 () Unit!32814)

(assert (=> d!117563 (= lt!439493 lt!439495)))

(assert (=> d!117563 (= (getValueByKey!517 lt!439494 (_1!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!522 (_2!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117563 (= lt!439495 (lemmaContainsTupThenGetReturnValue!274 lt!439494 (_1!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117563 (= lt!439494 (insertStrictlySorted!330 (toList!6876 (ite c!100327 call!41979 (ite c!100331 call!41977 call!41982))) (_1!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117563 (= (+!3054 (ite c!100327 call!41979 (ite c!100331 call!41977 call!41982)) (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!439492)))

(declare-fun b!990461 () Bool)

(declare-fun res!662341 () Bool)

(assert (=> b!990461 (=> (not res!662341) (not e!558532))))

(assert (=> b!990461 (= res!662341 (= (getValueByKey!517 (toList!6876 lt!439492) (_1!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!522 (_2!7515 (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!990462 () Bool)

(assert (=> b!990462 (= e!558532 (contains!5733 (toList!6876 lt!439492) (ite (or c!100327 c!100331) (tuple2!15011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117563 res!662340) b!990461))

(assert (= (and b!990461 res!662341) b!990462))

(declare-fun m!918121 () Bool)

(assert (=> d!117563 m!918121))

(declare-fun m!918123 () Bool)

(assert (=> d!117563 m!918123))

(declare-fun m!918125 () Bool)

(assert (=> d!117563 m!918125))

(declare-fun m!918127 () Bool)

(assert (=> d!117563 m!918127))

(declare-fun m!918129 () Bool)

(assert (=> b!990461 m!918129))

(declare-fun m!918131 () Bool)

(assert (=> b!990462 m!918131))

(assert (=> bm!41980 d!117563))

(declare-fun d!117565 () Bool)

(declare-fun lt!439496 () Bool)

(assert (=> d!117565 (= lt!439496 (select (content!424 (toList!6876 lt!439336)) lt!439231))))

(declare-fun e!558534 () Bool)

(assert (=> d!117565 (= lt!439496 e!558534)))

(declare-fun res!662343 () Bool)

(assert (=> d!117565 (=> (not res!662343) (not e!558534))))

(assert (=> d!117565 (= res!662343 ((_ is Cons!20956) (toList!6876 lt!439336)))))

(assert (=> d!117565 (= (contains!5733 (toList!6876 lt!439336) lt!439231) lt!439496)))

(declare-fun b!990463 () Bool)

(declare-fun e!558533 () Bool)

(assert (=> b!990463 (= e!558534 e!558533)))

(declare-fun res!662342 () Bool)

(assert (=> b!990463 (=> res!662342 e!558533)))

(assert (=> b!990463 (= res!662342 (= (h!22118 (toList!6876 lt!439336)) lt!439231))))

(declare-fun b!990464 () Bool)

(assert (=> b!990464 (= e!558533 (contains!5733 (t!29943 (toList!6876 lt!439336)) lt!439231))))

(assert (= (and d!117565 res!662343) b!990463))

(assert (= (and b!990463 (not res!662342)) b!990464))

(declare-fun m!918133 () Bool)

(assert (=> d!117565 m!918133))

(declare-fun m!918135 () Bool)

(assert (=> d!117565 m!918135))

(declare-fun m!918137 () Bool)

(assert (=> b!990464 m!918137))

(assert (=> b!990205 d!117565))

(declare-fun d!117567 () Bool)

(declare-fun e!558536 () Bool)

(assert (=> d!117567 e!558536))

(declare-fun res!662345 () Bool)

(assert (=> d!117567 (=> (not res!662345) (not e!558536))))

(declare-fun lt!439502 () ListLongMap!13721)

(assert (=> d!117567 (= res!662345 (not (contains!5732 lt!439502 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!558537 () ListLongMap!13721)

(assert (=> d!117567 (= lt!439502 e!558537)))

(declare-fun c!100411 () Bool)

(assert (=> d!117567 (= c!100411 (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(assert (=> d!117567 (validMask!0 mask!1948)))

(assert (=> d!117567 (= (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281) lt!439502)))

(declare-fun b!990465 () Bool)

(declare-fun e!558541 () ListLongMap!13721)

(declare-fun call!42011 () ListLongMap!13721)

(assert (=> b!990465 (= e!558541 call!42011)))

(declare-fun bm!42008 () Bool)

(assert (=> bm!42008 (= call!42011 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!990466 () Bool)

(declare-fun lt!439498 () Unit!32814)

(declare-fun lt!439503 () Unit!32814)

(assert (=> b!990466 (= lt!439498 lt!439503)))

(declare-fun lt!439501 () ListLongMap!13721)

(declare-fun lt!439499 () (_ BitVec 64))

(declare-fun lt!439500 () V!36043)

(declare-fun lt!439497 () (_ BitVec 64))

(assert (=> b!990466 (not (contains!5732 (+!3054 lt!439501 (tuple2!15011 lt!439499 lt!439500)) lt!439497))))

(assert (=> b!990466 (= lt!439503 (addStillNotContains!238 lt!439501 lt!439499 lt!439500 lt!439497))))

(assert (=> b!990466 (= lt!439497 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!990466 (= lt!439500 (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!990466 (= lt!439499 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)))))

(assert (=> b!990466 (= lt!439501 call!42011)))

(assert (=> b!990466 (= e!558541 (+!3054 call!42011 (tuple2!15011 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!990467 () Bool)

(declare-fun e!558540 () Bool)

(assert (=> b!990467 (= e!558540 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(assert (=> b!990467 (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!990468 () Bool)

(declare-fun res!662347 () Bool)

(assert (=> b!990468 (=> (not res!662347) (not e!558536))))

(assert (=> b!990468 (= res!662347 (not (contains!5732 lt!439502 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!990469 () Bool)

(assert (=> b!990469 (= e!558537 (ListLongMap!13722 Nil!20957))))

(declare-fun b!990470 () Bool)

(assert (=> b!990470 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(assert (=> b!990470 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30597 _values!1278)))))

(declare-fun e!558535 () Bool)

(assert (=> b!990470 (= e!558535 (= (apply!932 lt!439502 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))) (get!15653 (select (arr!30117 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!990471 () Bool)

(declare-fun e!558539 () Bool)

(assert (=> b!990471 (= e!558536 e!558539)))

(declare-fun c!100408 () Bool)

(assert (=> b!990471 (= c!100408 e!558540)))

(declare-fun res!662346 () Bool)

(assert (=> b!990471 (=> (not res!662346) (not e!558540))))

(assert (=> b!990471 (= res!662346 (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(declare-fun e!558538 () Bool)

(declare-fun b!990472 () Bool)

(assert (=> b!990472 (= e!558538 (= lt!439502 (getCurrentListMapNoExtraKeys!3524 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!990473 () Bool)

(assert (=> b!990473 (= e!558537 e!558541)))

(declare-fun c!100409 () Bool)

(assert (=> b!990473 (= c!100409 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(declare-fun b!990474 () Bool)

(assert (=> b!990474 (= e!558539 e!558535)))

(assert (=> b!990474 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(declare-fun res!662344 () Bool)

(assert (=> b!990474 (= res!662344 (contains!5732 lt!439502 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(assert (=> b!990474 (=> (not res!662344) (not e!558535))))

(declare-fun b!990475 () Bool)

(assert (=> b!990475 (= e!558539 e!558538)))

(declare-fun c!100410 () Bool)

(assert (=> b!990475 (= c!100410 (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(declare-fun b!990476 () Bool)

(assert (=> b!990476 (= e!558538 (isEmpty!731 lt!439502))))

(assert (= (and d!117567 c!100411) b!990469))

(assert (= (and d!117567 (not c!100411)) b!990473))

(assert (= (and b!990473 c!100409) b!990466))

(assert (= (and b!990473 (not c!100409)) b!990465))

(assert (= (or b!990466 b!990465) bm!42008))

(assert (= (and d!117567 res!662345) b!990468))

(assert (= (and b!990468 res!662347) b!990471))

(assert (= (and b!990471 res!662346) b!990467))

(assert (= (and b!990471 c!100408) b!990474))

(assert (= (and b!990471 (not c!100408)) b!990475))

(assert (= (and b!990474 res!662344) b!990470))

(assert (= (and b!990475 c!100410) b!990472))

(assert (= (and b!990475 (not c!100410)) b!990476))

(declare-fun b_lambda!15215 () Bool)

(assert (=> (not b_lambda!15215) (not b!990466)))

(assert (=> b!990466 t!29942))

(declare-fun b_and!32267 () Bool)

(assert (= b_and!32265 (and (=> t!29942 result!13659) b_and!32267)))

(declare-fun b_lambda!15217 () Bool)

(assert (=> (not b_lambda!15217) (not b!990470)))

(assert (=> b!990470 t!29942))

(declare-fun b_and!32269 () Bool)

(assert (= b_and!32267 (and (=> t!29942 result!13659) b_and!32269)))

(declare-fun m!918139 () Bool)

(assert (=> b!990470 m!918139))

(assert (=> b!990470 m!917627))

(assert (=> b!990470 m!918139))

(declare-fun m!918141 () Bool)

(assert (=> b!990470 m!918141))

(declare-fun m!918143 () Bool)

(assert (=> b!990470 m!918143))

(assert (=> b!990470 m!918143))

(assert (=> b!990470 m!917627))

(declare-fun m!918145 () Bool)

(assert (=> b!990470 m!918145))

(declare-fun m!918147 () Bool)

(assert (=> b!990476 m!918147))

(declare-fun m!918149 () Bool)

(assert (=> d!117567 m!918149))

(assert (=> d!117567 m!917633))

(assert (=> b!990467 m!918139))

(assert (=> b!990467 m!918139))

(declare-fun m!918151 () Bool)

(assert (=> b!990467 m!918151))

(assert (=> b!990473 m!918139))

(assert (=> b!990473 m!918139))

(assert (=> b!990473 m!918151))

(declare-fun m!918153 () Bool)

(assert (=> b!990466 m!918153))

(declare-fun m!918155 () Bool)

(assert (=> b!990466 m!918155))

(declare-fun m!918157 () Bool)

(assert (=> b!990466 m!918157))

(assert (=> b!990466 m!918139))

(declare-fun m!918159 () Bool)

(assert (=> b!990466 m!918159))

(assert (=> b!990466 m!917627))

(assert (=> b!990466 m!918155))

(assert (=> b!990466 m!918143))

(assert (=> b!990466 m!918143))

(assert (=> b!990466 m!917627))

(assert (=> b!990466 m!918145))

(declare-fun m!918161 () Bool)

(assert (=> b!990468 m!918161))

(declare-fun m!918163 () Bool)

(assert (=> bm!42008 m!918163))

(assert (=> b!990474 m!918139))

(assert (=> b!990474 m!918139))

(declare-fun m!918165 () Bool)

(assert (=> b!990474 m!918165))

(assert (=> b!990472 m!918163))

(assert (=> b!990268 d!117567))

(assert (=> b!990296 d!117503))

(declare-fun d!117569 () Bool)

(assert (=> d!117569 (= (apply!932 lt!439365 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15657 (getValueByKey!517 (toList!6876 lt!439365) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(declare-fun bs!28116 () Bool)

(assert (= bs!28116 d!117569))

(assert (=> bs!28116 m!917787))

(declare-fun m!918167 () Bool)

(assert (=> bs!28116 m!918167))

(assert (=> bs!28116 m!918167))

(declare-fun m!918169 () Bool)

(assert (=> bs!28116 m!918169))

(assert (=> b!990217 d!117569))

(assert (=> b!990217 d!117541))

(declare-fun d!117571 () Bool)

(declare-fun lt!439504 () Bool)

(assert (=> d!117571 (= lt!439504 (select (content!424 (toList!6876 lt!439340)) lt!439231))))

(declare-fun e!558543 () Bool)

(assert (=> d!117571 (= lt!439504 e!558543)))

(declare-fun res!662349 () Bool)

(assert (=> d!117571 (=> (not res!662349) (not e!558543))))

(assert (=> d!117571 (= res!662349 ((_ is Cons!20956) (toList!6876 lt!439340)))))

(assert (=> d!117571 (= (contains!5733 (toList!6876 lt!439340) lt!439231) lt!439504)))

(declare-fun b!990477 () Bool)

(declare-fun e!558542 () Bool)

(assert (=> b!990477 (= e!558543 e!558542)))

(declare-fun res!662348 () Bool)

(assert (=> b!990477 (=> res!662348 e!558542)))

(assert (=> b!990477 (= res!662348 (= (h!22118 (toList!6876 lt!439340)) lt!439231))))

(declare-fun b!990478 () Bool)

(assert (=> b!990478 (= e!558542 (contains!5733 (t!29943 (toList!6876 lt!439340)) lt!439231))))

(assert (= (and d!117571 res!662349) b!990477))

(assert (= (and b!990477 (not res!662348)) b!990478))

(declare-fun m!918171 () Bool)

(assert (=> d!117571 m!918171))

(declare-fun m!918173 () Bool)

(assert (=> d!117571 m!918173))

(declare-fun m!918175 () Bool)

(assert (=> b!990478 m!918175))

(assert (=> b!990207 d!117571))

(declare-fun d!117573 () Bool)

(declare-fun e!558545 () Bool)

(assert (=> d!117573 e!558545))

(declare-fun res!662350 () Bool)

(assert (=> d!117573 (=> res!662350 e!558545)))

(declare-fun lt!439506 () Bool)

(assert (=> d!117573 (= res!662350 (not lt!439506))))

(declare-fun lt!439507 () Bool)

(assert (=> d!117573 (= lt!439506 lt!439507)))

(declare-fun lt!439508 () Unit!32814)

(declare-fun e!558544 () Unit!32814)

(assert (=> d!117573 (= lt!439508 e!558544)))

(declare-fun c!100412 () Bool)

(assert (=> d!117573 (= c!100412 lt!439507)))

(assert (=> d!117573 (= lt!439507 (containsKey!480 (toList!6876 lt!439389) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> d!117573 (= (contains!5732 lt!439389 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) lt!439506)))

(declare-fun b!990479 () Bool)

(declare-fun lt!439505 () Unit!32814)

(assert (=> b!990479 (= e!558544 lt!439505)))

(assert (=> b!990479 (= lt!439505 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439389) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!990479 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439389) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!990480 () Bool)

(declare-fun Unit!32827 () Unit!32814)

(assert (=> b!990480 (= e!558544 Unit!32827)))

(declare-fun b!990481 () Bool)

(assert (=> b!990481 (= e!558545 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439389) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(assert (= (and d!117573 c!100412) b!990479))

(assert (= (and d!117573 (not c!100412)) b!990480))

(assert (= (and d!117573 (not res!662350)) b!990481))

(assert (=> d!117573 m!917787))

(declare-fun m!918177 () Bool)

(assert (=> d!117573 m!918177))

(assert (=> b!990479 m!917787))

(declare-fun m!918179 () Bool)

(assert (=> b!990479 m!918179))

(assert (=> b!990479 m!917787))

(assert (=> b!990479 m!918111))

(assert (=> b!990479 m!918111))

(declare-fun m!918181 () Bool)

(assert (=> b!990479 m!918181))

(assert (=> b!990481 m!917787))

(assert (=> b!990481 m!918111))

(assert (=> b!990481 m!918111))

(assert (=> b!990481 m!918181))

(assert (=> b!990270 d!117573))

(declare-fun b!990482 () Bool)

(declare-fun e!558548 () Bool)

(declare-fun e!558549 () Bool)

(assert (=> b!990482 (= e!558548 e!558549)))

(declare-fun res!662352 () Bool)

(assert (=> b!990482 (=> (not res!662352) (not e!558549))))

(declare-fun e!558547 () Bool)

(assert (=> b!990482 (= res!662352 (not e!558547))))

(declare-fun res!662353 () Bool)

(assert (=> b!990482 (=> (not res!662353) (not e!558547))))

(assert (=> b!990482 (= res!662353 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!117575 () Bool)

(declare-fun res!662351 () Bool)

(assert (=> d!117575 (=> res!662351 e!558548)))

(assert (=> d!117575 (= res!662351 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30598 _keys!1544)))))

(assert (=> d!117575 (= (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100359 (Cons!20957 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) Nil!20958) Nil!20958)) e!558548)))

(declare-fun b!990483 () Bool)

(declare-fun e!558546 () Bool)

(assert (=> b!990483 (= e!558549 e!558546)))

(declare-fun c!100413 () Bool)

(assert (=> b!990483 (= c!100413 (validKeyInArray!0 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!990484 () Bool)

(declare-fun call!42012 () Bool)

(assert (=> b!990484 (= e!558546 call!42012)))

(declare-fun bm!42009 () Bool)

(assert (=> bm!42009 (= call!42012 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100413 (Cons!20957 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!100359 (Cons!20957 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) Nil!20958) Nil!20958)) (ite c!100359 (Cons!20957 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) Nil!20958) Nil!20958))))))

(declare-fun b!990485 () Bool)

(assert (=> b!990485 (= e!558546 call!42012)))

(declare-fun b!990486 () Bool)

(assert (=> b!990486 (= e!558547 (contains!5734 (ite c!100359 (Cons!20957 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000) Nil!20958) Nil!20958) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!117575 (not res!662351)) b!990482))

(assert (= (and b!990482 res!662353) b!990486))

(assert (= (and b!990482 res!662352) b!990483))

(assert (= (and b!990483 c!100413) b!990484))

(assert (= (and b!990483 (not c!100413)) b!990485))

(assert (= (or b!990484 b!990485) bm!42009))

(assert (=> b!990482 m!917927))

(assert (=> b!990482 m!917927))

(assert (=> b!990482 m!917929))

(assert (=> b!990483 m!917927))

(assert (=> b!990483 m!917927))

(assert (=> b!990483 m!917929))

(assert (=> bm!42009 m!917927))

(declare-fun m!918183 () Bool)

(assert (=> bm!42009 m!918183))

(assert (=> b!990486 m!917927))

(assert (=> b!990486 m!917927))

(declare-fun m!918185 () Bool)

(assert (=> b!990486 m!918185))

(assert (=> bm!41996 d!117575))

(assert (=> b!990188 d!117483))

(declare-fun d!117577 () Bool)

(declare-fun isEmpty!732 (List!20960) Bool)

(assert (=> d!117577 (= (isEmpty!731 lt!439389) (isEmpty!732 (toList!6876 lt!439389)))))

(declare-fun bs!28117 () Bool)

(assert (= bs!28117 d!117577))

(declare-fun m!918187 () Bool)

(assert (=> bs!28117 m!918187))

(assert (=> b!990272 d!117577))

(declare-fun d!117579 () Bool)

(declare-fun lt!439511 () Bool)

(declare-fun content!425 (List!20961) (InoxSet (_ BitVec 64)))

(assert (=> d!117579 (= lt!439511 (select (content!425 Nil!20958) (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun e!558554 () Bool)

(assert (=> d!117579 (= lt!439511 e!558554)))

(declare-fun res!662359 () Bool)

(assert (=> d!117579 (=> (not res!662359) (not e!558554))))

(assert (=> d!117579 (= res!662359 ((_ is Cons!20957) Nil!20958))))

(assert (=> d!117579 (= (contains!5734 Nil!20958 (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)) lt!439511)))

(declare-fun b!990491 () Bool)

(declare-fun e!558555 () Bool)

(assert (=> b!990491 (= e!558554 e!558555)))

(declare-fun res!662358 () Bool)

(assert (=> b!990491 (=> res!662358 e!558555)))

(assert (=> b!990491 (= res!662358 (= (h!22119 Nil!20958) (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!990492 () Bool)

(assert (=> b!990492 (= e!558555 (contains!5734 (t!29944 Nil!20958) (select (arr!30118 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!117579 res!662359) b!990491))

(assert (= (and b!990491 (not res!662358)) b!990492))

(declare-fun m!918189 () Bool)

(assert (=> d!117579 m!918189))

(assert (=> d!117579 m!917875))

(declare-fun m!918191 () Bool)

(assert (=> d!117579 m!918191))

(assert (=> b!990492 m!917875))

(declare-fun m!918193 () Bool)

(assert (=> b!990492 m!918193))

(assert (=> b!990299 d!117579))

(declare-fun d!117581 () Bool)

(declare-fun e!558556 () Bool)

(assert (=> d!117581 e!558556))

(declare-fun res!662360 () Bool)

(assert (=> d!117581 (=> (not res!662360) (not e!558556))))

(declare-fun lt!439512 () ListLongMap!13721)

(assert (=> d!117581 (= res!662360 (contains!5732 lt!439512 (_1!7515 (tuple2!15011 lt!439363 zeroValue!1220))))))

(declare-fun lt!439514 () List!20960)

(assert (=> d!117581 (= lt!439512 (ListLongMap!13722 lt!439514))))

(declare-fun lt!439513 () Unit!32814)

(declare-fun lt!439515 () Unit!32814)

(assert (=> d!117581 (= lt!439513 lt!439515)))

(assert (=> d!117581 (= (getValueByKey!517 lt!439514 (_1!7515 (tuple2!15011 lt!439363 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439363 zeroValue!1220))))))

(assert (=> d!117581 (= lt!439515 (lemmaContainsTupThenGetReturnValue!274 lt!439514 (_1!7515 (tuple2!15011 lt!439363 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439363 zeroValue!1220))))))

(assert (=> d!117581 (= lt!439514 (insertStrictlySorted!330 (toList!6876 lt!439346) (_1!7515 (tuple2!15011 lt!439363 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439363 zeroValue!1220))))))

(assert (=> d!117581 (= (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220)) lt!439512)))

(declare-fun b!990493 () Bool)

(declare-fun res!662361 () Bool)

(assert (=> b!990493 (=> (not res!662361) (not e!558556))))

(assert (=> b!990493 (= res!662361 (= (getValueByKey!517 (toList!6876 lt!439512) (_1!7515 (tuple2!15011 lt!439363 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439363 zeroValue!1220)))))))

(declare-fun b!990494 () Bool)

(assert (=> b!990494 (= e!558556 (contains!5733 (toList!6876 lt!439512) (tuple2!15011 lt!439363 zeroValue!1220)))))

(assert (= (and d!117581 res!662360) b!990493))

(assert (= (and b!990493 res!662361) b!990494))

(declare-fun m!918195 () Bool)

(assert (=> d!117581 m!918195))

(declare-fun m!918197 () Bool)

(assert (=> d!117581 m!918197))

(declare-fun m!918199 () Bool)

(assert (=> d!117581 m!918199))

(declare-fun m!918201 () Bool)

(assert (=> d!117581 m!918201))

(declare-fun m!918203 () Bool)

(assert (=> b!990493 m!918203))

(declare-fun m!918205 () Bool)

(assert (=> b!990494 m!918205))

(assert (=> b!990221 d!117581))

(declare-fun d!117583 () Bool)

(assert (=> d!117583 (= (apply!932 lt!439347 lt!439350) (get!15657 (getValueByKey!517 (toList!6876 lt!439347) lt!439350)))))

(declare-fun bs!28118 () Bool)

(assert (= bs!28118 d!117583))

(declare-fun m!918207 () Bool)

(assert (=> bs!28118 m!918207))

(assert (=> bs!28118 m!918207))

(declare-fun m!918209 () Bool)

(assert (=> bs!28118 m!918209))

(assert (=> b!990221 d!117583))

(declare-fun d!117585 () Bool)

(assert (=> d!117585 (= (apply!932 (+!3054 lt!439356 (tuple2!15011 lt!439352 minValue!1220)) lt!439353) (apply!932 lt!439356 lt!439353))))

(declare-fun lt!439518 () Unit!32814)

(declare-fun choose!1626 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64)) Unit!32814)

(assert (=> d!117585 (= lt!439518 (choose!1626 lt!439356 lt!439352 minValue!1220 lt!439353))))

(declare-fun e!558559 () Bool)

(assert (=> d!117585 e!558559))

(declare-fun res!662364 () Bool)

(assert (=> d!117585 (=> (not res!662364) (not e!558559))))

(assert (=> d!117585 (= res!662364 (contains!5732 lt!439356 lt!439353))))

(assert (=> d!117585 (= (addApplyDifferent!472 lt!439356 lt!439352 minValue!1220 lt!439353) lt!439518)))

(declare-fun b!990498 () Bool)

(assert (=> b!990498 (= e!558559 (not (= lt!439353 lt!439352)))))

(assert (= (and d!117585 res!662364) b!990498))

(declare-fun m!918211 () Bool)

(assert (=> d!117585 m!918211))

(assert (=> d!117585 m!917811))

(assert (=> d!117585 m!917805))

(declare-fun m!918213 () Bool)

(assert (=> d!117585 m!918213))

(assert (=> d!117585 m!917811))

(assert (=> d!117585 m!917813))

(assert (=> b!990221 d!117585))

(declare-fun d!117587 () Bool)

(assert (=> d!117587 (= (apply!932 (+!3054 lt!439355 (tuple2!15011 lt!439362 zeroValue!1220)) lt!439360) (get!15657 (getValueByKey!517 (toList!6876 (+!3054 lt!439355 (tuple2!15011 lt!439362 zeroValue!1220))) lt!439360)))))

(declare-fun bs!28119 () Bool)

(assert (= bs!28119 d!117587))

(declare-fun m!918215 () Bool)

(assert (=> bs!28119 m!918215))

(assert (=> bs!28119 m!918215))

(declare-fun m!918217 () Bool)

(assert (=> bs!28119 m!918217))

(assert (=> b!990221 d!117587))

(assert (=> b!990221 d!117481))

(declare-fun d!117589 () Bool)

(assert (=> d!117589 (= (apply!932 (+!3054 lt!439355 (tuple2!15011 lt!439362 zeroValue!1220)) lt!439360) (apply!932 lt!439355 lt!439360))))

(declare-fun lt!439519 () Unit!32814)

(assert (=> d!117589 (= lt!439519 (choose!1626 lt!439355 lt!439362 zeroValue!1220 lt!439360))))

(declare-fun e!558560 () Bool)

(assert (=> d!117589 e!558560))

(declare-fun res!662365 () Bool)

(assert (=> d!117589 (=> (not res!662365) (not e!558560))))

(assert (=> d!117589 (= res!662365 (contains!5732 lt!439355 lt!439360))))

(assert (=> d!117589 (= (addApplyDifferent!472 lt!439355 lt!439362 zeroValue!1220 lt!439360) lt!439519)))

(declare-fun b!990499 () Bool)

(assert (=> b!990499 (= e!558560 (not (= lt!439360 lt!439362)))))

(assert (= (and d!117589 res!662365) b!990499))

(declare-fun m!918219 () Bool)

(assert (=> d!117589 m!918219))

(assert (=> d!117589 m!917819))

(assert (=> d!117589 m!917803))

(declare-fun m!918221 () Bool)

(assert (=> d!117589 m!918221))

(assert (=> d!117589 m!917819))

(assert (=> d!117589 m!917821))

(assert (=> b!990221 d!117589))

(declare-fun d!117591 () Bool)

(declare-fun e!558562 () Bool)

(assert (=> d!117591 e!558562))

(declare-fun res!662366 () Bool)

(assert (=> d!117591 (=> res!662366 e!558562)))

(declare-fun lt!439521 () Bool)

(assert (=> d!117591 (= res!662366 (not lt!439521))))

(declare-fun lt!439522 () Bool)

(assert (=> d!117591 (= lt!439521 lt!439522)))

(declare-fun lt!439523 () Unit!32814)

(declare-fun e!558561 () Unit!32814)

(assert (=> d!117591 (= lt!439523 e!558561)))

(declare-fun c!100414 () Bool)

(assert (=> d!117591 (= c!100414 lt!439522)))

(assert (=> d!117591 (= lt!439522 (containsKey!480 (toList!6876 (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220))) lt!439361))))

(assert (=> d!117591 (= (contains!5732 (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220)) lt!439361) lt!439521)))

(declare-fun b!990500 () Bool)

(declare-fun lt!439520 () Unit!32814)

(assert (=> b!990500 (= e!558561 lt!439520)))

(assert (=> b!990500 (= lt!439520 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220))) lt!439361))))

(assert (=> b!990500 (isDefined!385 (getValueByKey!517 (toList!6876 (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220))) lt!439361))))

(declare-fun b!990501 () Bool)

(declare-fun Unit!32828 () Unit!32814)

(assert (=> b!990501 (= e!558561 Unit!32828)))

(declare-fun b!990502 () Bool)

(assert (=> b!990502 (= e!558562 (isDefined!385 (getValueByKey!517 (toList!6876 (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220))) lt!439361)))))

(assert (= (and d!117591 c!100414) b!990500))

(assert (= (and d!117591 (not c!100414)) b!990501))

(assert (= (and d!117591 (not res!662366)) b!990502))

(declare-fun m!918223 () Bool)

(assert (=> d!117591 m!918223))

(declare-fun m!918225 () Bool)

(assert (=> b!990500 m!918225))

(declare-fun m!918227 () Bool)

(assert (=> b!990500 m!918227))

(assert (=> b!990500 m!918227))

(declare-fun m!918229 () Bool)

(assert (=> b!990500 m!918229))

(assert (=> b!990502 m!918227))

(assert (=> b!990502 m!918227))

(assert (=> b!990502 m!918229))

(assert (=> b!990221 d!117591))

(declare-fun d!117593 () Bool)

(assert (=> d!117593 (= (apply!932 lt!439355 lt!439360) (get!15657 (getValueByKey!517 (toList!6876 lt!439355) lt!439360)))))

(declare-fun bs!28120 () Bool)

(assert (= bs!28120 d!117593))

(declare-fun m!918231 () Bool)

(assert (=> bs!28120 m!918231))

(assert (=> bs!28120 m!918231))

(declare-fun m!918233 () Bool)

(assert (=> bs!28120 m!918233))

(assert (=> b!990221 d!117593))

(declare-fun d!117595 () Bool)

(declare-fun e!558563 () Bool)

(assert (=> d!117595 e!558563))

(declare-fun res!662367 () Bool)

(assert (=> d!117595 (=> (not res!662367) (not e!558563))))

(declare-fun lt!439524 () ListLongMap!13721)

(assert (=> d!117595 (= res!662367 (contains!5732 lt!439524 (_1!7515 (tuple2!15011 lt!439357 minValue!1220))))))

(declare-fun lt!439526 () List!20960)

(assert (=> d!117595 (= lt!439524 (ListLongMap!13722 lt!439526))))

(declare-fun lt!439525 () Unit!32814)

(declare-fun lt!439527 () Unit!32814)

(assert (=> d!117595 (= lt!439525 lt!439527)))

(assert (=> d!117595 (= (getValueByKey!517 lt!439526 (_1!7515 (tuple2!15011 lt!439357 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439357 minValue!1220))))))

(assert (=> d!117595 (= lt!439527 (lemmaContainsTupThenGetReturnValue!274 lt!439526 (_1!7515 (tuple2!15011 lt!439357 minValue!1220)) (_2!7515 (tuple2!15011 lt!439357 minValue!1220))))))

(assert (=> d!117595 (= lt!439526 (insertStrictlySorted!330 (toList!6876 lt!439347) (_1!7515 (tuple2!15011 lt!439357 minValue!1220)) (_2!7515 (tuple2!15011 lt!439357 minValue!1220))))))

(assert (=> d!117595 (= (+!3054 lt!439347 (tuple2!15011 lt!439357 minValue!1220)) lt!439524)))

(declare-fun b!990503 () Bool)

(declare-fun res!662368 () Bool)

(assert (=> b!990503 (=> (not res!662368) (not e!558563))))

(assert (=> b!990503 (= res!662368 (= (getValueByKey!517 (toList!6876 lt!439524) (_1!7515 (tuple2!15011 lt!439357 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439357 minValue!1220)))))))

(declare-fun b!990504 () Bool)

(assert (=> b!990504 (= e!558563 (contains!5733 (toList!6876 lt!439524) (tuple2!15011 lt!439357 minValue!1220)))))

(assert (= (and d!117595 res!662367) b!990503))

(assert (= (and b!990503 res!662368) b!990504))

(declare-fun m!918235 () Bool)

(assert (=> d!117595 m!918235))

(declare-fun m!918237 () Bool)

(assert (=> d!117595 m!918237))

(declare-fun m!918239 () Bool)

(assert (=> d!117595 m!918239))

(declare-fun m!918241 () Bool)

(assert (=> d!117595 m!918241))

(declare-fun m!918243 () Bool)

(assert (=> b!990503 m!918243))

(declare-fun m!918245 () Bool)

(assert (=> b!990504 m!918245))

(assert (=> b!990221 d!117595))

(declare-fun d!117597 () Bool)

(assert (=> d!117597 (= (apply!932 lt!439356 lt!439353) (get!15657 (getValueByKey!517 (toList!6876 lt!439356) lt!439353)))))

(declare-fun bs!28121 () Bool)

(assert (= bs!28121 d!117597))

(declare-fun m!918247 () Bool)

(assert (=> bs!28121 m!918247))

(assert (=> bs!28121 m!918247))

(declare-fun m!918249 () Bool)

(assert (=> bs!28121 m!918249))

(assert (=> b!990221 d!117597))

(declare-fun d!117599 () Bool)

(assert (=> d!117599 (contains!5732 (+!3054 lt!439346 (tuple2!15011 lt!439363 zeroValue!1220)) lt!439361)))

(declare-fun lt!439530 () Unit!32814)

(declare-fun choose!1627 (ListLongMap!13721 (_ BitVec 64) V!36043 (_ BitVec 64)) Unit!32814)

(assert (=> d!117599 (= lt!439530 (choose!1627 lt!439346 lt!439363 zeroValue!1220 lt!439361))))

(assert (=> d!117599 (contains!5732 lt!439346 lt!439361)))

(assert (=> d!117599 (= (addStillContains!620 lt!439346 lt!439363 zeroValue!1220 lt!439361) lt!439530)))

(declare-fun bs!28122 () Bool)

(assert (= bs!28122 d!117599))

(assert (=> bs!28122 m!917809))

(assert (=> bs!28122 m!917809))

(assert (=> bs!28122 m!917827))

(declare-fun m!918251 () Bool)

(assert (=> bs!28122 m!918251))

(declare-fun m!918253 () Bool)

(assert (=> bs!28122 m!918253))

(assert (=> b!990221 d!117599))

(declare-fun d!117601 () Bool)

(declare-fun e!558564 () Bool)

(assert (=> d!117601 e!558564))

(declare-fun res!662369 () Bool)

(assert (=> d!117601 (=> (not res!662369) (not e!558564))))

(declare-fun lt!439531 () ListLongMap!13721)

(assert (=> d!117601 (= res!662369 (contains!5732 lt!439531 (_1!7515 (tuple2!15011 lt!439352 minValue!1220))))))

(declare-fun lt!439533 () List!20960)

(assert (=> d!117601 (= lt!439531 (ListLongMap!13722 lt!439533))))

(declare-fun lt!439532 () Unit!32814)

(declare-fun lt!439534 () Unit!32814)

(assert (=> d!117601 (= lt!439532 lt!439534)))

(assert (=> d!117601 (= (getValueByKey!517 lt!439533 (_1!7515 (tuple2!15011 lt!439352 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439352 minValue!1220))))))

(assert (=> d!117601 (= lt!439534 (lemmaContainsTupThenGetReturnValue!274 lt!439533 (_1!7515 (tuple2!15011 lt!439352 minValue!1220)) (_2!7515 (tuple2!15011 lt!439352 minValue!1220))))))

(assert (=> d!117601 (= lt!439533 (insertStrictlySorted!330 (toList!6876 lt!439356) (_1!7515 (tuple2!15011 lt!439352 minValue!1220)) (_2!7515 (tuple2!15011 lt!439352 minValue!1220))))))

(assert (=> d!117601 (= (+!3054 lt!439356 (tuple2!15011 lt!439352 minValue!1220)) lt!439531)))

(declare-fun b!990506 () Bool)

(declare-fun res!662370 () Bool)

(assert (=> b!990506 (=> (not res!662370) (not e!558564))))

(assert (=> b!990506 (= res!662370 (= (getValueByKey!517 (toList!6876 lt!439531) (_1!7515 (tuple2!15011 lt!439352 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439352 minValue!1220)))))))

(declare-fun b!990507 () Bool)

(assert (=> b!990507 (= e!558564 (contains!5733 (toList!6876 lt!439531) (tuple2!15011 lt!439352 minValue!1220)))))

(assert (= (and d!117601 res!662369) b!990506))

(assert (= (and b!990506 res!662370) b!990507))

(declare-fun m!918255 () Bool)

(assert (=> d!117601 m!918255))

(declare-fun m!918257 () Bool)

(assert (=> d!117601 m!918257))

(declare-fun m!918259 () Bool)

(assert (=> d!117601 m!918259))

(declare-fun m!918261 () Bool)

(assert (=> d!117601 m!918261))

(declare-fun m!918263 () Bool)

(assert (=> b!990506 m!918263))

(declare-fun m!918265 () Bool)

(assert (=> b!990507 m!918265))

(assert (=> b!990221 d!117601))

(declare-fun d!117603 () Bool)

(assert (=> d!117603 (= (apply!932 (+!3054 lt!439347 (tuple2!15011 lt!439357 minValue!1220)) lt!439350) (apply!932 lt!439347 lt!439350))))

(declare-fun lt!439535 () Unit!32814)

(assert (=> d!117603 (= lt!439535 (choose!1626 lt!439347 lt!439357 minValue!1220 lt!439350))))

(declare-fun e!558565 () Bool)

(assert (=> d!117603 e!558565))

(declare-fun res!662371 () Bool)

(assert (=> d!117603 (=> (not res!662371) (not e!558565))))

(assert (=> d!117603 (= res!662371 (contains!5732 lt!439347 lt!439350))))

(assert (=> d!117603 (= (addApplyDifferent!472 lt!439347 lt!439357 minValue!1220 lt!439350) lt!439535)))

(declare-fun b!990508 () Bool)

(assert (=> b!990508 (= e!558565 (not (= lt!439350 lt!439357)))))

(assert (= (and d!117603 res!662371) b!990508))

(declare-fun m!918267 () Bool)

(assert (=> d!117603 m!918267))

(assert (=> d!117603 m!917799))

(assert (=> d!117603 m!917815))

(declare-fun m!918269 () Bool)

(assert (=> d!117603 m!918269))

(assert (=> d!117603 m!917799))

(assert (=> d!117603 m!917801))

(assert (=> b!990221 d!117603))

(declare-fun d!117605 () Bool)

(declare-fun e!558566 () Bool)

(assert (=> d!117605 e!558566))

(declare-fun res!662372 () Bool)

(assert (=> d!117605 (=> (not res!662372) (not e!558566))))

(declare-fun lt!439536 () ListLongMap!13721)

(assert (=> d!117605 (= res!662372 (contains!5732 lt!439536 (_1!7515 (tuple2!15011 lt!439362 zeroValue!1220))))))

(declare-fun lt!439538 () List!20960)

(assert (=> d!117605 (= lt!439536 (ListLongMap!13722 lt!439538))))

(declare-fun lt!439537 () Unit!32814)

(declare-fun lt!439539 () Unit!32814)

(assert (=> d!117605 (= lt!439537 lt!439539)))

(assert (=> d!117605 (= (getValueByKey!517 lt!439538 (_1!7515 (tuple2!15011 lt!439362 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439362 zeroValue!1220))))))

(assert (=> d!117605 (= lt!439539 (lemmaContainsTupThenGetReturnValue!274 lt!439538 (_1!7515 (tuple2!15011 lt!439362 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439362 zeroValue!1220))))))

(assert (=> d!117605 (= lt!439538 (insertStrictlySorted!330 (toList!6876 lt!439355) (_1!7515 (tuple2!15011 lt!439362 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439362 zeroValue!1220))))))

(assert (=> d!117605 (= (+!3054 lt!439355 (tuple2!15011 lt!439362 zeroValue!1220)) lt!439536)))

(declare-fun b!990509 () Bool)

(declare-fun res!662373 () Bool)

(assert (=> b!990509 (=> (not res!662373) (not e!558566))))

(assert (=> b!990509 (= res!662373 (= (getValueByKey!517 (toList!6876 lt!439536) (_1!7515 (tuple2!15011 lt!439362 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439362 zeroValue!1220)))))))

(declare-fun b!990510 () Bool)

(assert (=> b!990510 (= e!558566 (contains!5733 (toList!6876 lt!439536) (tuple2!15011 lt!439362 zeroValue!1220)))))

(assert (= (and d!117605 res!662372) b!990509))

(assert (= (and b!990509 res!662373) b!990510))

(declare-fun m!918271 () Bool)

(assert (=> d!117605 m!918271))

(declare-fun m!918273 () Bool)

(assert (=> d!117605 m!918273))

(declare-fun m!918275 () Bool)

(assert (=> d!117605 m!918275))

(declare-fun m!918277 () Bool)

(assert (=> d!117605 m!918277))

(declare-fun m!918279 () Bool)

(assert (=> b!990509 m!918279))

(declare-fun m!918281 () Bool)

(assert (=> b!990510 m!918281))

(assert (=> b!990221 d!117605))

(declare-fun d!117607 () Bool)

(assert (=> d!117607 (= (apply!932 (+!3054 lt!439356 (tuple2!15011 lt!439352 minValue!1220)) lt!439353) (get!15657 (getValueByKey!517 (toList!6876 (+!3054 lt!439356 (tuple2!15011 lt!439352 minValue!1220))) lt!439353)))))

(declare-fun bs!28123 () Bool)

(assert (= bs!28123 d!117607))

(declare-fun m!918283 () Bool)

(assert (=> bs!28123 m!918283))

(assert (=> bs!28123 m!918283))

(declare-fun m!918285 () Bool)

(assert (=> bs!28123 m!918285))

(assert (=> b!990221 d!117607))

(declare-fun d!117609 () Bool)

(assert (=> d!117609 (= (apply!932 (+!3054 lt!439347 (tuple2!15011 lt!439357 minValue!1220)) lt!439350) (get!15657 (getValueByKey!517 (toList!6876 (+!3054 lt!439347 (tuple2!15011 lt!439357 minValue!1220))) lt!439350)))))

(declare-fun bs!28124 () Bool)

(assert (= bs!28124 d!117609))

(declare-fun m!918287 () Bool)

(assert (=> bs!28124 m!918287))

(assert (=> bs!28124 m!918287))

(declare-fun m!918289 () Bool)

(assert (=> bs!28124 m!918289))

(assert (=> b!990221 d!117609))

(declare-fun d!117611 () Bool)

(assert (=> d!117611 (= (get!15655 (select (arr!30117 _values!1278) from!1932) (dynLambda!1880 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14268 (select (arr!30117 _values!1278) from!1932)))))

(assert (=> b!990235 d!117611))

(declare-fun d!117613 () Bool)

(assert (=> d!117613 (= (apply!932 lt!439335 (select (arr!30118 _keys!1544) from!1932)) (get!15657 (getValueByKey!517 (toList!6876 lt!439335) (select (arr!30118 _keys!1544) from!1932))))))

(declare-fun bs!28125 () Bool)

(assert (= bs!28125 d!117613))

(assert (=> bs!28125 m!917601))

(assert (=> bs!28125 m!917923))

(assert (=> bs!28125 m!917923))

(declare-fun m!918291 () Bool)

(assert (=> bs!28125 m!918291))

(assert (=> b!990192 d!117613))

(assert (=> b!990192 d!117479))

(declare-fun d!117615 () Bool)

(declare-fun e!558568 () Bool)

(assert (=> d!117615 e!558568))

(declare-fun res!662374 () Bool)

(assert (=> d!117615 (=> res!662374 e!558568)))

(declare-fun lt!439541 () Bool)

(assert (=> d!117615 (= res!662374 (not lt!439541))))

(declare-fun lt!439542 () Bool)

(assert (=> d!117615 (= lt!439541 lt!439542)))

(declare-fun lt!439543 () Unit!32814)

(declare-fun e!558567 () Unit!32814)

(assert (=> d!117615 (= lt!439543 e!558567)))

(declare-fun c!100415 () Bool)

(assert (=> d!117615 (= c!100415 lt!439542)))

(assert (=> d!117615 (= lt!439542 (containsKey!480 (toList!6876 lt!439263) (_1!7515 lt!439232)))))

(assert (=> d!117615 (= (contains!5732 lt!439263 (_1!7515 lt!439232)) lt!439541)))

(declare-fun b!990511 () Bool)

(declare-fun lt!439540 () Unit!32814)

(assert (=> b!990511 (= e!558567 lt!439540)))

(assert (=> b!990511 (= lt!439540 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439263) (_1!7515 lt!439232)))))

(assert (=> b!990511 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439263) (_1!7515 lt!439232)))))

(declare-fun b!990512 () Bool)

(declare-fun Unit!32829 () Unit!32814)

(assert (=> b!990512 (= e!558567 Unit!32829)))

(declare-fun b!990513 () Bool)

(assert (=> b!990513 (= e!558568 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439263) (_1!7515 lt!439232))))))

(assert (= (and d!117615 c!100415) b!990511))

(assert (= (and d!117615 (not c!100415)) b!990512))

(assert (= (and d!117615 (not res!662374)) b!990513))

(declare-fun m!918293 () Bool)

(assert (=> d!117615 m!918293))

(declare-fun m!918295 () Bool)

(assert (=> b!990511 m!918295))

(assert (=> b!990511 m!917699))

(assert (=> b!990511 m!917699))

(declare-fun m!918297 () Bool)

(assert (=> b!990511 m!918297))

(assert (=> b!990513 m!917699))

(assert (=> b!990513 m!917699))

(assert (=> b!990513 m!918297))

(assert (=> d!117465 d!117615))

(declare-fun b!990515 () Bool)

(declare-fun e!558569 () Option!523)

(declare-fun e!558570 () Option!523)

(assert (=> b!990515 (= e!558569 e!558570)))

(declare-fun c!100417 () Bool)

(assert (=> b!990515 (= c!100417 (and ((_ is Cons!20956) lt!439265) (not (= (_1!7515 (h!22118 lt!439265)) (_1!7515 lt!439232)))))))

(declare-fun b!990514 () Bool)

(assert (=> b!990514 (= e!558569 (Some!522 (_2!7515 (h!22118 lt!439265))))))

(declare-fun b!990516 () Bool)

(assert (=> b!990516 (= e!558570 (getValueByKey!517 (t!29943 lt!439265) (_1!7515 lt!439232)))))

(declare-fun b!990517 () Bool)

(assert (=> b!990517 (= e!558570 None!521)))

(declare-fun d!117617 () Bool)

(declare-fun c!100416 () Bool)

(assert (=> d!117617 (= c!100416 (and ((_ is Cons!20956) lt!439265) (= (_1!7515 (h!22118 lt!439265)) (_1!7515 lt!439232))))))

(assert (=> d!117617 (= (getValueByKey!517 lt!439265 (_1!7515 lt!439232)) e!558569)))

(assert (= (and d!117617 c!100416) b!990514))

(assert (= (and d!117617 (not c!100416)) b!990515))

(assert (= (and b!990515 c!100417) b!990516))

(assert (= (and b!990515 (not c!100417)) b!990517))

(declare-fun m!918299 () Bool)

(assert (=> b!990516 m!918299))

(assert (=> d!117465 d!117617))

(declare-fun d!117619 () Bool)

(assert (=> d!117619 (= (getValueByKey!517 lt!439265 (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232)))))

(declare-fun lt!439544 () Unit!32814)

(assert (=> d!117619 (= lt!439544 (choose!1624 lt!439265 (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(declare-fun e!558571 () Bool)

(assert (=> d!117619 e!558571))

(declare-fun res!662375 () Bool)

(assert (=> d!117619 (=> (not res!662375) (not e!558571))))

(assert (=> d!117619 (= res!662375 (isStrictlySorted!513 lt!439265))))

(assert (=> d!117619 (= (lemmaContainsTupThenGetReturnValue!274 lt!439265 (_1!7515 lt!439232) (_2!7515 lt!439232)) lt!439544)))

(declare-fun b!990518 () Bool)

(declare-fun res!662376 () Bool)

(assert (=> b!990518 (=> (not res!662376) (not e!558571))))

(assert (=> b!990518 (= res!662376 (containsKey!480 lt!439265 (_1!7515 lt!439232)))))

(declare-fun b!990519 () Bool)

(assert (=> b!990519 (= e!558571 (contains!5733 lt!439265 (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232))))))

(assert (= (and d!117619 res!662375) b!990518))

(assert (= (and b!990518 res!662376) b!990519))

(assert (=> d!117619 m!917693))

(declare-fun m!918301 () Bool)

(assert (=> d!117619 m!918301))

(declare-fun m!918303 () Bool)

(assert (=> d!117619 m!918303))

(declare-fun m!918305 () Bool)

(assert (=> b!990518 m!918305))

(declare-fun m!918307 () Bool)

(assert (=> b!990519 m!918307))

(assert (=> d!117465 d!117619))

(declare-fun b!990520 () Bool)

(declare-fun e!558572 () List!20960)

(declare-fun call!42015 () List!20960)

(assert (=> b!990520 (= e!558572 call!42015)))

(declare-fun b!990521 () Bool)

(declare-fun e!558574 () List!20960)

(declare-fun call!42013 () List!20960)

(assert (=> b!990521 (= e!558574 call!42013)))

(declare-fun c!100419 () Bool)

(declare-fun e!558573 () List!20960)

(declare-fun bm!42010 () Bool)

(assert (=> bm!42010 (= call!42015 ($colon$colon!557 e!558573 (ite c!100419 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439231))) (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232)))))))

(declare-fun c!100418 () Bool)

(assert (=> bm!42010 (= c!100418 c!100419)))

(declare-fun b!990522 () Bool)

(declare-fun e!558575 () List!20960)

(declare-fun call!42014 () List!20960)

(assert (=> b!990522 (= e!558575 call!42014)))

(declare-fun b!990523 () Bool)

(assert (=> b!990523 (= e!558572 e!558575)))

(declare-fun c!100421 () Bool)

(assert (=> b!990523 (= c!100421 (and ((_ is Cons!20956) (toList!6876 (+!3054 lt!439235 lt!439231))) (= (_1!7515 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439231)))) (_1!7515 lt!439232))))))

(declare-fun d!117621 () Bool)

(declare-fun e!558576 () Bool)

(assert (=> d!117621 e!558576))

(declare-fun res!662377 () Bool)

(assert (=> d!117621 (=> (not res!662377) (not e!558576))))

(declare-fun lt!439545 () List!20960)

(assert (=> d!117621 (= res!662377 (isStrictlySorted!513 lt!439545))))

(assert (=> d!117621 (= lt!439545 e!558572)))

(assert (=> d!117621 (= c!100419 (and ((_ is Cons!20956) (toList!6876 (+!3054 lt!439235 lt!439231))) (bvslt (_1!7515 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439231)))) (_1!7515 lt!439232))))))

(assert (=> d!117621 (isStrictlySorted!513 (toList!6876 (+!3054 lt!439235 lt!439231)))))

(assert (=> d!117621 (= (insertStrictlySorted!330 (toList!6876 (+!3054 lt!439235 lt!439231)) (_1!7515 lt!439232) (_2!7515 lt!439232)) lt!439545)))

(declare-fun bm!42011 () Bool)

(assert (=> bm!42011 (= call!42014 call!42015)))

(declare-fun b!990524 () Bool)

(declare-fun res!662378 () Bool)

(assert (=> b!990524 (=> (not res!662378) (not e!558576))))

(assert (=> b!990524 (= res!662378 (containsKey!480 lt!439545 (_1!7515 lt!439232)))))

(declare-fun b!990525 () Bool)

(assert (=> b!990525 (= e!558576 (contains!5733 lt!439545 (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232))))))

(declare-fun c!100420 () Bool)

(declare-fun b!990526 () Bool)

(assert (=> b!990526 (= e!558573 (ite c!100421 (t!29943 (toList!6876 (+!3054 lt!439235 lt!439231))) (ite c!100420 (Cons!20956 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439231))) (t!29943 (toList!6876 (+!3054 lt!439235 lt!439231)))) Nil!20957)))))

(declare-fun bm!42012 () Bool)

(assert (=> bm!42012 (= call!42013 call!42014)))

(declare-fun b!990527 () Bool)

(assert (=> b!990527 (= e!558573 (insertStrictlySorted!330 (t!29943 (toList!6876 (+!3054 lt!439235 lt!439231))) (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(declare-fun b!990528 () Bool)

(assert (=> b!990528 (= c!100420 (and ((_ is Cons!20956) (toList!6876 (+!3054 lt!439235 lt!439231))) (bvsgt (_1!7515 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439231)))) (_1!7515 lt!439232))))))

(assert (=> b!990528 (= e!558575 e!558574)))

(declare-fun b!990529 () Bool)

(assert (=> b!990529 (= e!558574 call!42013)))

(assert (= (and d!117621 c!100419) b!990520))

(assert (= (and d!117621 (not c!100419)) b!990523))

(assert (= (and b!990523 c!100421) b!990522))

(assert (= (and b!990523 (not c!100421)) b!990528))

(assert (= (and b!990528 c!100420) b!990529))

(assert (= (and b!990528 (not c!100420)) b!990521))

(assert (= (or b!990529 b!990521) bm!42012))

(assert (= (or b!990522 bm!42012) bm!42011))

(assert (= (or b!990520 bm!42011) bm!42010))

(assert (= (and bm!42010 c!100418) b!990527))

(assert (= (and bm!42010 (not c!100418)) b!990526))

(assert (= (and d!117621 res!662377) b!990524))

(assert (= (and b!990524 res!662378) b!990525))

(declare-fun m!918309 () Bool)

(assert (=> b!990527 m!918309))

(declare-fun m!918311 () Bool)

(assert (=> b!990524 m!918311))

(declare-fun m!918313 () Bool)

(assert (=> bm!42010 m!918313))

(declare-fun m!918315 () Bool)

(assert (=> b!990525 m!918315))

(declare-fun m!918317 () Bool)

(assert (=> d!117621 m!918317))

(declare-fun m!918319 () Bool)

(assert (=> d!117621 m!918319))

(assert (=> d!117465 d!117621))

(declare-fun d!117623 () Bool)

(assert (=> d!117623 (= (apply!932 lt!439365 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15657 (getValueByKey!517 (toList!6876 lt!439365) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28126 () Bool)

(assert (= bs!28126 d!117623))

(declare-fun m!918321 () Bool)

(assert (=> bs!28126 m!918321))

(assert (=> bs!28126 m!918321))

(declare-fun m!918323 () Bool)

(assert (=> bs!28126 m!918323))

(assert (=> b!990209 d!117623))

(declare-fun d!117625 () Bool)

(declare-fun e!558578 () Bool)

(assert (=> d!117625 e!558578))

(declare-fun res!662379 () Bool)

(assert (=> d!117625 (=> res!662379 e!558578)))

(declare-fun lt!439547 () Bool)

(assert (=> d!117625 (= res!662379 (not lt!439547))))

(declare-fun lt!439548 () Bool)

(assert (=> d!117625 (= lt!439547 lt!439548)))

(declare-fun lt!439549 () Unit!32814)

(declare-fun e!558577 () Unit!32814)

(assert (=> d!117625 (= lt!439549 e!558577)))

(declare-fun c!100422 () Bool)

(assert (=> d!117625 (= c!100422 lt!439548)))

(assert (=> d!117625 (= lt!439548 (containsKey!480 (toList!6876 lt!439366) (_1!7515 lt!439232)))))

(assert (=> d!117625 (= (contains!5732 lt!439366 (_1!7515 lt!439232)) lt!439547)))

(declare-fun b!990530 () Bool)

(declare-fun lt!439546 () Unit!32814)

(assert (=> b!990530 (= e!558577 lt!439546)))

(assert (=> b!990530 (= lt!439546 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439366) (_1!7515 lt!439232)))))

(assert (=> b!990530 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439366) (_1!7515 lt!439232)))))

(declare-fun b!990531 () Bool)

(declare-fun Unit!32830 () Unit!32814)

(assert (=> b!990531 (= e!558577 Unit!32830)))

(declare-fun b!990532 () Bool)

(assert (=> b!990532 (= e!558578 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439366) (_1!7515 lt!439232))))))

(assert (= (and d!117625 c!100422) b!990530))

(assert (= (and d!117625 (not c!100422)) b!990531))

(assert (= (and d!117625 (not res!662379)) b!990532))

(declare-fun m!918325 () Bool)

(assert (=> d!117625 m!918325))

(declare-fun m!918327 () Bool)

(assert (=> b!990530 m!918327))

(assert (=> b!990530 m!917847))

(assert (=> b!990530 m!917847))

(declare-fun m!918329 () Bool)

(assert (=> b!990530 m!918329))

(assert (=> b!990532 m!917847))

(assert (=> b!990532 m!917847))

(assert (=> b!990532 m!918329))

(assert (=> d!117477 d!117625))

(declare-fun b!990534 () Bool)

(declare-fun e!558579 () Option!523)

(declare-fun e!558580 () Option!523)

(assert (=> b!990534 (= e!558579 e!558580)))

(declare-fun c!100424 () Bool)

(assert (=> b!990534 (= c!100424 (and ((_ is Cons!20956) lt!439368) (not (= (_1!7515 (h!22118 lt!439368)) (_1!7515 lt!439232)))))))

(declare-fun b!990533 () Bool)

(assert (=> b!990533 (= e!558579 (Some!522 (_2!7515 (h!22118 lt!439368))))))

(declare-fun b!990535 () Bool)

(assert (=> b!990535 (= e!558580 (getValueByKey!517 (t!29943 lt!439368) (_1!7515 lt!439232)))))

(declare-fun b!990536 () Bool)

(assert (=> b!990536 (= e!558580 None!521)))

(declare-fun d!117627 () Bool)

(declare-fun c!100423 () Bool)

(assert (=> d!117627 (= c!100423 (and ((_ is Cons!20956) lt!439368) (= (_1!7515 (h!22118 lt!439368)) (_1!7515 lt!439232))))))

(assert (=> d!117627 (= (getValueByKey!517 lt!439368 (_1!7515 lt!439232)) e!558579)))

(assert (= (and d!117627 c!100423) b!990533))

(assert (= (and d!117627 (not c!100423)) b!990534))

(assert (= (and b!990534 c!100424) b!990535))

(assert (= (and b!990534 (not c!100424)) b!990536))

(declare-fun m!918331 () Bool)

(assert (=> b!990535 m!918331))

(assert (=> d!117477 d!117627))

(declare-fun d!117629 () Bool)

(assert (=> d!117629 (= (getValueByKey!517 lt!439368 (_1!7515 lt!439232)) (Some!522 (_2!7515 lt!439232)))))

(declare-fun lt!439550 () Unit!32814)

(assert (=> d!117629 (= lt!439550 (choose!1624 lt!439368 (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(declare-fun e!558581 () Bool)

(assert (=> d!117629 e!558581))

(declare-fun res!662380 () Bool)

(assert (=> d!117629 (=> (not res!662380) (not e!558581))))

(assert (=> d!117629 (= res!662380 (isStrictlySorted!513 lt!439368))))

(assert (=> d!117629 (= (lemmaContainsTupThenGetReturnValue!274 lt!439368 (_1!7515 lt!439232) (_2!7515 lt!439232)) lt!439550)))

(declare-fun b!990537 () Bool)

(declare-fun res!662381 () Bool)

(assert (=> b!990537 (=> (not res!662381) (not e!558581))))

(assert (=> b!990537 (= res!662381 (containsKey!480 lt!439368 (_1!7515 lt!439232)))))

(declare-fun b!990538 () Bool)

(assert (=> b!990538 (= e!558581 (contains!5733 lt!439368 (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232))))))

(assert (= (and d!117629 res!662380) b!990537))

(assert (= (and b!990537 res!662381) b!990538))

(assert (=> d!117629 m!917841))

(declare-fun m!918333 () Bool)

(assert (=> d!117629 m!918333))

(declare-fun m!918335 () Bool)

(assert (=> d!117629 m!918335))

(declare-fun m!918337 () Bool)

(assert (=> b!990537 m!918337))

(declare-fun m!918339 () Bool)

(assert (=> b!990538 m!918339))

(assert (=> d!117477 d!117629))

(declare-fun b!990539 () Bool)

(declare-fun e!558582 () List!20960)

(declare-fun call!42018 () List!20960)

(assert (=> b!990539 (= e!558582 call!42018)))

(declare-fun b!990540 () Bool)

(declare-fun e!558584 () List!20960)

(declare-fun call!42016 () List!20960)

(assert (=> b!990540 (= e!558584 call!42016)))

(declare-fun e!558583 () List!20960)

(declare-fun c!100426 () Bool)

(declare-fun bm!42013 () Bool)

(assert (=> bm!42013 (= call!42018 ($colon$colon!557 e!558583 (ite c!100426 (h!22118 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232)))))))

(declare-fun c!100425 () Bool)

(assert (=> bm!42013 (= c!100425 c!100426)))

(declare-fun b!990541 () Bool)

(declare-fun e!558585 () List!20960)

(declare-fun call!42017 () List!20960)

(assert (=> b!990541 (= e!558585 call!42017)))

(declare-fun b!990542 () Bool)

(assert (=> b!990542 (= e!558582 e!558585)))

(declare-fun c!100428 () Bool)

(assert (=> b!990542 (= c!100428 (and ((_ is Cons!20956) (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (= (_1!7515 (h!22118 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7515 lt!439232))))))

(declare-fun d!117631 () Bool)

(declare-fun e!558586 () Bool)

(assert (=> d!117631 e!558586))

(declare-fun res!662382 () Bool)

(assert (=> d!117631 (=> (not res!662382) (not e!558586))))

(declare-fun lt!439551 () List!20960)

(assert (=> d!117631 (= res!662382 (isStrictlySorted!513 lt!439551))))

(assert (=> d!117631 (= lt!439551 e!558582)))

(assert (=> d!117631 (= c!100426 (and ((_ is Cons!20956) (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvslt (_1!7515 (h!22118 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7515 lt!439232))))))

(assert (=> d!117631 (isStrictlySorted!513 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))))

(assert (=> d!117631 (= (insertStrictlySorted!330 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7515 lt!439232) (_2!7515 lt!439232)) lt!439551)))

(declare-fun bm!42014 () Bool)

(assert (=> bm!42014 (= call!42017 call!42018)))

(declare-fun b!990543 () Bool)

(declare-fun res!662383 () Bool)

(assert (=> b!990543 (=> (not res!662383) (not e!558586))))

(assert (=> b!990543 (= res!662383 (containsKey!480 lt!439551 (_1!7515 lt!439232)))))

(declare-fun b!990544 () Bool)

(assert (=> b!990544 (= e!558586 (contains!5733 lt!439551 (tuple2!15011 (_1!7515 lt!439232) (_2!7515 lt!439232))))))

(declare-fun c!100427 () Bool)

(declare-fun b!990545 () Bool)

(assert (=> b!990545 (= e!558583 (ite c!100428 (t!29943 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (ite c!100427 (Cons!20956 (h!22118 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (t!29943 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) Nil!20957)))))

(declare-fun bm!42015 () Bool)

(assert (=> bm!42015 (= call!42016 call!42017)))

(declare-fun b!990546 () Bool)

(assert (=> b!990546 (= e!558583 (insertStrictlySorted!330 (t!29943 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (_1!7515 lt!439232) (_2!7515 lt!439232)))))

(declare-fun b!990547 () Bool)

(assert (=> b!990547 (= c!100427 (and ((_ is Cons!20956) (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvsgt (_1!7515 (h!22118 (toList!6876 (getCurrentListMap!3885 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7515 lt!439232))))))

(assert (=> b!990547 (= e!558585 e!558584)))

(declare-fun b!990548 () Bool)

(assert (=> b!990548 (= e!558584 call!42016)))

(assert (= (and d!117631 c!100426) b!990539))

(assert (= (and d!117631 (not c!100426)) b!990542))

(assert (= (and b!990542 c!100428) b!990541))

(assert (= (and b!990542 (not c!100428)) b!990547))

(assert (= (and b!990547 c!100427) b!990548))

(assert (= (and b!990547 (not c!100427)) b!990540))

(assert (= (or b!990548 b!990540) bm!42015))

(assert (= (or b!990541 bm!42015) bm!42014))

(assert (= (or b!990539 bm!42014) bm!42013))

(assert (= (and bm!42013 c!100425) b!990546))

(assert (= (and bm!42013 (not c!100425)) b!990545))

(assert (= (and d!117631 res!662382) b!990543))

(assert (= (and b!990543 res!662383) b!990544))

(declare-fun m!918341 () Bool)

(assert (=> b!990546 m!918341))

(declare-fun m!918343 () Bool)

(assert (=> b!990543 m!918343))

(declare-fun m!918345 () Bool)

(assert (=> bm!42013 m!918345))

(declare-fun m!918347 () Bool)

(assert (=> b!990544 m!918347))

(declare-fun m!918349 () Bool)

(assert (=> d!117631 m!918349))

(declare-fun m!918351 () Bool)

(assert (=> d!117631 m!918351))

(assert (=> d!117477 d!117631))

(declare-fun d!117633 () Bool)

(assert (=> d!117633 (= (apply!932 (+!3054 lt!439317 (tuple2!15011 lt!439327 minValue!1220)) lt!439320) (apply!932 lt!439317 lt!439320))))

(declare-fun lt!439552 () Unit!32814)

(assert (=> d!117633 (= lt!439552 (choose!1626 lt!439317 lt!439327 minValue!1220 lt!439320))))

(declare-fun e!558587 () Bool)

(assert (=> d!117633 e!558587))

(declare-fun res!662384 () Bool)

(assert (=> d!117633 (=> (not res!662384) (not e!558587))))

(assert (=> d!117633 (= res!662384 (contains!5732 lt!439317 lt!439320))))

(assert (=> d!117633 (= (addApplyDifferent!472 lt!439317 lt!439327 minValue!1220 lt!439320) lt!439552)))

(declare-fun b!990549 () Bool)

(assert (=> b!990549 (= e!558587 (not (= lt!439320 lt!439327)))))

(assert (= (and d!117633 res!662384) b!990549))

(declare-fun m!918353 () Bool)

(assert (=> d!117633 m!918353))

(assert (=> d!117633 m!917723))

(assert (=> d!117633 m!917739))

(declare-fun m!918355 () Bool)

(assert (=> d!117633 m!918355))

(assert (=> d!117633 m!917723))

(assert (=> d!117633 m!917725))

(assert (=> b!990196 d!117633))

(declare-fun d!117635 () Bool)

(declare-fun e!558588 () Bool)

(assert (=> d!117635 e!558588))

(declare-fun res!662385 () Bool)

(assert (=> d!117635 (=> (not res!662385) (not e!558588))))

(declare-fun lt!439553 () ListLongMap!13721)

(assert (=> d!117635 (= res!662385 (contains!5732 lt!439553 (_1!7515 (tuple2!15011 lt!439332 zeroValue!1220))))))

(declare-fun lt!439555 () List!20960)

(assert (=> d!117635 (= lt!439553 (ListLongMap!13722 lt!439555))))

(declare-fun lt!439554 () Unit!32814)

(declare-fun lt!439556 () Unit!32814)

(assert (=> d!117635 (= lt!439554 lt!439556)))

(assert (=> d!117635 (= (getValueByKey!517 lt!439555 (_1!7515 (tuple2!15011 lt!439332 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439332 zeroValue!1220))))))

(assert (=> d!117635 (= lt!439556 (lemmaContainsTupThenGetReturnValue!274 lt!439555 (_1!7515 (tuple2!15011 lt!439332 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439332 zeroValue!1220))))))

(assert (=> d!117635 (= lt!439555 (insertStrictlySorted!330 (toList!6876 lt!439325) (_1!7515 (tuple2!15011 lt!439332 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439332 zeroValue!1220))))))

(assert (=> d!117635 (= (+!3054 lt!439325 (tuple2!15011 lt!439332 zeroValue!1220)) lt!439553)))

(declare-fun b!990550 () Bool)

(declare-fun res!662386 () Bool)

(assert (=> b!990550 (=> (not res!662386) (not e!558588))))

(assert (=> b!990550 (= res!662386 (= (getValueByKey!517 (toList!6876 lt!439553) (_1!7515 (tuple2!15011 lt!439332 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439332 zeroValue!1220)))))))

(declare-fun b!990551 () Bool)

(assert (=> b!990551 (= e!558588 (contains!5733 (toList!6876 lt!439553) (tuple2!15011 lt!439332 zeroValue!1220)))))

(assert (= (and d!117635 res!662385) b!990550))

(assert (= (and b!990550 res!662386) b!990551))

(declare-fun m!918357 () Bool)

(assert (=> d!117635 m!918357))

(declare-fun m!918359 () Bool)

(assert (=> d!117635 m!918359))

(declare-fun m!918361 () Bool)

(assert (=> d!117635 m!918361))

(declare-fun m!918363 () Bool)

(assert (=> d!117635 m!918363))

(declare-fun m!918365 () Bool)

(assert (=> b!990550 m!918365))

(declare-fun m!918367 () Bool)

(assert (=> b!990551 m!918367))

(assert (=> b!990196 d!117635))

(declare-fun d!117637 () Bool)

(assert (=> d!117637 (= (apply!932 lt!439317 lt!439320) (get!15657 (getValueByKey!517 (toList!6876 lt!439317) lt!439320)))))

(declare-fun bs!28127 () Bool)

(assert (= bs!28127 d!117637))

(declare-fun m!918369 () Bool)

(assert (=> bs!28127 m!918369))

(assert (=> bs!28127 m!918369))

(declare-fun m!918371 () Bool)

(assert (=> bs!28127 m!918371))

(assert (=> b!990196 d!117637))

(declare-fun d!117639 () Bool)

(assert (=> d!117639 (contains!5732 (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220)) lt!439331)))

(declare-fun lt!439557 () Unit!32814)

(assert (=> d!117639 (= lt!439557 (choose!1627 lt!439316 lt!439333 zeroValue!1220 lt!439331))))

(assert (=> d!117639 (contains!5732 lt!439316 lt!439331)))

(assert (=> d!117639 (= (addStillContains!620 lt!439316 lt!439333 zeroValue!1220 lt!439331) lt!439557)))

(declare-fun bs!28128 () Bool)

(assert (= bs!28128 d!117639))

(assert (=> bs!28128 m!917733))

(assert (=> bs!28128 m!917733))

(assert (=> bs!28128 m!917753))

(declare-fun m!918373 () Bool)

(assert (=> bs!28128 m!918373))

(declare-fun m!918375 () Bool)

(assert (=> bs!28128 m!918375))

(assert (=> b!990196 d!117639))

(assert (=> b!990196 d!117549))

(declare-fun d!117641 () Bool)

(assert (=> d!117641 (= (apply!932 (+!3054 lt!439325 (tuple2!15011 lt!439332 zeroValue!1220)) lt!439330) (apply!932 lt!439325 lt!439330))))

(declare-fun lt!439558 () Unit!32814)

(assert (=> d!117641 (= lt!439558 (choose!1626 lt!439325 lt!439332 zeroValue!1220 lt!439330))))

(declare-fun e!558589 () Bool)

(assert (=> d!117641 e!558589))

(declare-fun res!662387 () Bool)

(assert (=> d!117641 (=> (not res!662387) (not e!558589))))

(assert (=> d!117641 (= res!662387 (contains!5732 lt!439325 lt!439330))))

(assert (=> d!117641 (= (addApplyDifferent!472 lt!439325 lt!439332 zeroValue!1220 lt!439330) lt!439558)))

(declare-fun b!990552 () Bool)

(assert (=> b!990552 (= e!558589 (not (= lt!439330 lt!439332)))))

(assert (= (and d!117641 res!662387) b!990552))

(declare-fun m!918377 () Bool)

(assert (=> d!117641 m!918377))

(assert (=> d!117641 m!917743))

(assert (=> d!117641 m!917727))

(declare-fun m!918379 () Bool)

(assert (=> d!117641 m!918379))

(assert (=> d!117641 m!917743))

(assert (=> d!117641 m!917745))

(assert (=> b!990196 d!117641))

(declare-fun d!117643 () Bool)

(declare-fun e!558590 () Bool)

(assert (=> d!117643 e!558590))

(declare-fun res!662388 () Bool)

(assert (=> d!117643 (=> (not res!662388) (not e!558590))))

(declare-fun lt!439559 () ListLongMap!13721)

(assert (=> d!117643 (= res!662388 (contains!5732 lt!439559 (_1!7515 (tuple2!15011 lt!439333 zeroValue!1220))))))

(declare-fun lt!439561 () List!20960)

(assert (=> d!117643 (= lt!439559 (ListLongMap!13722 lt!439561))))

(declare-fun lt!439560 () Unit!32814)

(declare-fun lt!439562 () Unit!32814)

(assert (=> d!117643 (= lt!439560 lt!439562)))

(assert (=> d!117643 (= (getValueByKey!517 lt!439561 (_1!7515 (tuple2!15011 lt!439333 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439333 zeroValue!1220))))))

(assert (=> d!117643 (= lt!439562 (lemmaContainsTupThenGetReturnValue!274 lt!439561 (_1!7515 (tuple2!15011 lt!439333 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439333 zeroValue!1220))))))

(assert (=> d!117643 (= lt!439561 (insertStrictlySorted!330 (toList!6876 lt!439316) (_1!7515 (tuple2!15011 lt!439333 zeroValue!1220)) (_2!7515 (tuple2!15011 lt!439333 zeroValue!1220))))))

(assert (=> d!117643 (= (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220)) lt!439559)))

(declare-fun b!990553 () Bool)

(declare-fun res!662389 () Bool)

(assert (=> b!990553 (=> (not res!662389) (not e!558590))))

(assert (=> b!990553 (= res!662389 (= (getValueByKey!517 (toList!6876 lt!439559) (_1!7515 (tuple2!15011 lt!439333 zeroValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439333 zeroValue!1220)))))))

(declare-fun b!990554 () Bool)

(assert (=> b!990554 (= e!558590 (contains!5733 (toList!6876 lt!439559) (tuple2!15011 lt!439333 zeroValue!1220)))))

(assert (= (and d!117643 res!662388) b!990553))

(assert (= (and b!990553 res!662389) b!990554))

(declare-fun m!918381 () Bool)

(assert (=> d!117643 m!918381))

(declare-fun m!918383 () Bool)

(assert (=> d!117643 m!918383))

(declare-fun m!918385 () Bool)

(assert (=> d!117643 m!918385))

(declare-fun m!918387 () Bool)

(assert (=> d!117643 m!918387))

(declare-fun m!918389 () Bool)

(assert (=> b!990553 m!918389))

(declare-fun m!918391 () Bool)

(assert (=> b!990554 m!918391))

(assert (=> b!990196 d!117643))

(declare-fun d!117645 () Bool)

(declare-fun e!558591 () Bool)

(assert (=> d!117645 e!558591))

(declare-fun res!662390 () Bool)

(assert (=> d!117645 (=> (not res!662390) (not e!558591))))

(declare-fun lt!439563 () ListLongMap!13721)

(assert (=> d!117645 (= res!662390 (contains!5732 lt!439563 (_1!7515 (tuple2!15011 lt!439327 minValue!1220))))))

(declare-fun lt!439565 () List!20960)

(assert (=> d!117645 (= lt!439563 (ListLongMap!13722 lt!439565))))

(declare-fun lt!439564 () Unit!32814)

(declare-fun lt!439566 () Unit!32814)

(assert (=> d!117645 (= lt!439564 lt!439566)))

(assert (=> d!117645 (= (getValueByKey!517 lt!439565 (_1!7515 (tuple2!15011 lt!439327 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439327 minValue!1220))))))

(assert (=> d!117645 (= lt!439566 (lemmaContainsTupThenGetReturnValue!274 lt!439565 (_1!7515 (tuple2!15011 lt!439327 minValue!1220)) (_2!7515 (tuple2!15011 lt!439327 minValue!1220))))))

(assert (=> d!117645 (= lt!439565 (insertStrictlySorted!330 (toList!6876 lt!439317) (_1!7515 (tuple2!15011 lt!439327 minValue!1220)) (_2!7515 (tuple2!15011 lt!439327 minValue!1220))))))

(assert (=> d!117645 (= (+!3054 lt!439317 (tuple2!15011 lt!439327 minValue!1220)) lt!439563)))

(declare-fun b!990555 () Bool)

(declare-fun res!662391 () Bool)

(assert (=> b!990555 (=> (not res!662391) (not e!558591))))

(assert (=> b!990555 (= res!662391 (= (getValueByKey!517 (toList!6876 lt!439563) (_1!7515 (tuple2!15011 lt!439327 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439327 minValue!1220)))))))

(declare-fun b!990556 () Bool)

(assert (=> b!990556 (= e!558591 (contains!5733 (toList!6876 lt!439563) (tuple2!15011 lt!439327 minValue!1220)))))

(assert (= (and d!117645 res!662390) b!990555))

(assert (= (and b!990555 res!662391) b!990556))

(declare-fun m!918393 () Bool)

(assert (=> d!117645 m!918393))

(declare-fun m!918395 () Bool)

(assert (=> d!117645 m!918395))

(declare-fun m!918397 () Bool)

(assert (=> d!117645 m!918397))

(declare-fun m!918399 () Bool)

(assert (=> d!117645 m!918399))

(declare-fun m!918401 () Bool)

(assert (=> b!990555 m!918401))

(declare-fun m!918403 () Bool)

(assert (=> b!990556 m!918403))

(assert (=> b!990196 d!117645))

(declare-fun d!117647 () Bool)

(assert (=> d!117647 (= (apply!932 lt!439325 lt!439330) (get!15657 (getValueByKey!517 (toList!6876 lt!439325) lt!439330)))))

(declare-fun bs!28129 () Bool)

(assert (= bs!28129 d!117647))

(declare-fun m!918405 () Bool)

(assert (=> bs!28129 m!918405))

(assert (=> bs!28129 m!918405))

(declare-fun m!918407 () Bool)

(assert (=> bs!28129 m!918407))

(assert (=> b!990196 d!117647))

(declare-fun d!117649 () Bool)

(declare-fun e!558593 () Bool)

(assert (=> d!117649 e!558593))

(declare-fun res!662392 () Bool)

(assert (=> d!117649 (=> res!662392 e!558593)))

(declare-fun lt!439568 () Bool)

(assert (=> d!117649 (= res!662392 (not lt!439568))))

(declare-fun lt!439569 () Bool)

(assert (=> d!117649 (= lt!439568 lt!439569)))

(declare-fun lt!439570 () Unit!32814)

(declare-fun e!558592 () Unit!32814)

(assert (=> d!117649 (= lt!439570 e!558592)))

(declare-fun c!100429 () Bool)

(assert (=> d!117649 (= c!100429 lt!439569)))

(assert (=> d!117649 (= lt!439569 (containsKey!480 (toList!6876 (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220))) lt!439331))))

(assert (=> d!117649 (= (contains!5732 (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220)) lt!439331) lt!439568)))

(declare-fun b!990557 () Bool)

(declare-fun lt!439567 () Unit!32814)

(assert (=> b!990557 (= e!558592 lt!439567)))

(assert (=> b!990557 (= lt!439567 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220))) lt!439331))))

(assert (=> b!990557 (isDefined!385 (getValueByKey!517 (toList!6876 (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220))) lt!439331))))

(declare-fun b!990558 () Bool)

(declare-fun Unit!32831 () Unit!32814)

(assert (=> b!990558 (= e!558592 Unit!32831)))

(declare-fun b!990559 () Bool)

(assert (=> b!990559 (= e!558593 (isDefined!385 (getValueByKey!517 (toList!6876 (+!3054 lt!439316 (tuple2!15011 lt!439333 zeroValue!1220))) lt!439331)))))

(assert (= (and d!117649 c!100429) b!990557))

(assert (= (and d!117649 (not c!100429)) b!990558))

(assert (= (and d!117649 (not res!662392)) b!990559))

(declare-fun m!918409 () Bool)

(assert (=> d!117649 m!918409))

(declare-fun m!918411 () Bool)

(assert (=> b!990557 m!918411))

(declare-fun m!918413 () Bool)

(assert (=> b!990557 m!918413))

(assert (=> b!990557 m!918413))

(declare-fun m!918415 () Bool)

(assert (=> b!990557 m!918415))

(assert (=> b!990559 m!918413))

(assert (=> b!990559 m!918413))

(assert (=> b!990559 m!918415))

(assert (=> b!990196 d!117649))

(declare-fun d!117651 () Bool)

(declare-fun e!558594 () Bool)

(assert (=> d!117651 e!558594))

(declare-fun res!662393 () Bool)

(assert (=> d!117651 (=> (not res!662393) (not e!558594))))

(declare-fun lt!439571 () ListLongMap!13721)

(assert (=> d!117651 (= res!662393 (contains!5732 lt!439571 (_1!7515 (tuple2!15011 lt!439322 minValue!1220))))))

(declare-fun lt!439573 () List!20960)

(assert (=> d!117651 (= lt!439571 (ListLongMap!13722 lt!439573))))

(declare-fun lt!439572 () Unit!32814)

(declare-fun lt!439574 () Unit!32814)

(assert (=> d!117651 (= lt!439572 lt!439574)))

(assert (=> d!117651 (= (getValueByKey!517 lt!439573 (_1!7515 (tuple2!15011 lt!439322 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439322 minValue!1220))))))

(assert (=> d!117651 (= lt!439574 (lemmaContainsTupThenGetReturnValue!274 lt!439573 (_1!7515 (tuple2!15011 lt!439322 minValue!1220)) (_2!7515 (tuple2!15011 lt!439322 minValue!1220))))))

(assert (=> d!117651 (= lt!439573 (insertStrictlySorted!330 (toList!6876 lt!439326) (_1!7515 (tuple2!15011 lt!439322 minValue!1220)) (_2!7515 (tuple2!15011 lt!439322 minValue!1220))))))

(assert (=> d!117651 (= (+!3054 lt!439326 (tuple2!15011 lt!439322 minValue!1220)) lt!439571)))

(declare-fun b!990560 () Bool)

(declare-fun res!662394 () Bool)

(assert (=> b!990560 (=> (not res!662394) (not e!558594))))

(assert (=> b!990560 (= res!662394 (= (getValueByKey!517 (toList!6876 lt!439571) (_1!7515 (tuple2!15011 lt!439322 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 lt!439322 minValue!1220)))))))

(declare-fun b!990561 () Bool)

(assert (=> b!990561 (= e!558594 (contains!5733 (toList!6876 lt!439571) (tuple2!15011 lt!439322 minValue!1220)))))

(assert (= (and d!117651 res!662393) b!990560))

(assert (= (and b!990560 res!662394) b!990561))

(declare-fun m!918417 () Bool)

(assert (=> d!117651 m!918417))

(declare-fun m!918419 () Bool)

(assert (=> d!117651 m!918419))

(declare-fun m!918421 () Bool)

(assert (=> d!117651 m!918421))

(declare-fun m!918423 () Bool)

(assert (=> d!117651 m!918423))

(declare-fun m!918425 () Bool)

(assert (=> b!990560 m!918425))

(declare-fun m!918427 () Bool)

(assert (=> b!990561 m!918427))

(assert (=> b!990196 d!117651))

(declare-fun d!117653 () Bool)

(assert (=> d!117653 (= (apply!932 lt!439326 lt!439323) (get!15657 (getValueByKey!517 (toList!6876 lt!439326) lt!439323)))))

(declare-fun bs!28130 () Bool)

(assert (= bs!28130 d!117653))

(declare-fun m!918429 () Bool)

(assert (=> bs!28130 m!918429))

(assert (=> bs!28130 m!918429))

(declare-fun m!918431 () Bool)

(assert (=> bs!28130 m!918431))

(assert (=> b!990196 d!117653))

(declare-fun d!117655 () Bool)

(assert (=> d!117655 (= (apply!932 (+!3054 lt!439325 (tuple2!15011 lt!439332 zeroValue!1220)) lt!439330) (get!15657 (getValueByKey!517 (toList!6876 (+!3054 lt!439325 (tuple2!15011 lt!439332 zeroValue!1220))) lt!439330)))))

(declare-fun bs!28131 () Bool)

(assert (= bs!28131 d!117655))

(declare-fun m!918433 () Bool)

(assert (=> bs!28131 m!918433))

(assert (=> bs!28131 m!918433))

(declare-fun m!918435 () Bool)

(assert (=> bs!28131 m!918435))

(assert (=> b!990196 d!117655))

(declare-fun d!117657 () Bool)

(assert (=> d!117657 (= (apply!932 (+!3054 lt!439326 (tuple2!15011 lt!439322 minValue!1220)) lt!439323) (apply!932 lt!439326 lt!439323))))

(declare-fun lt!439575 () Unit!32814)

(assert (=> d!117657 (= lt!439575 (choose!1626 lt!439326 lt!439322 minValue!1220 lt!439323))))

(declare-fun e!558595 () Bool)

(assert (=> d!117657 e!558595))

(declare-fun res!662395 () Bool)

(assert (=> d!117657 (=> (not res!662395) (not e!558595))))

(assert (=> d!117657 (= res!662395 (contains!5732 lt!439326 lt!439323))))

(assert (=> d!117657 (= (addApplyDifferent!472 lt!439326 lt!439322 minValue!1220 lt!439323) lt!439575)))

(declare-fun b!990562 () Bool)

(assert (=> b!990562 (= e!558595 (not (= lt!439323 lt!439322)))))

(assert (= (and d!117657 res!662395) b!990562))

(declare-fun m!918437 () Bool)

(assert (=> d!117657 m!918437))

(assert (=> d!117657 m!917735))

(assert (=> d!117657 m!917729))

(declare-fun m!918439 () Bool)

(assert (=> d!117657 m!918439))

(assert (=> d!117657 m!917735))

(assert (=> d!117657 m!917737))

(assert (=> b!990196 d!117657))

(declare-fun d!117659 () Bool)

(assert (=> d!117659 (= (apply!932 (+!3054 lt!439317 (tuple2!15011 lt!439327 minValue!1220)) lt!439320) (get!15657 (getValueByKey!517 (toList!6876 (+!3054 lt!439317 (tuple2!15011 lt!439327 minValue!1220))) lt!439320)))))

(declare-fun bs!28132 () Bool)

(assert (= bs!28132 d!117659))

(declare-fun m!918441 () Bool)

(assert (=> bs!28132 m!918441))

(assert (=> bs!28132 m!918441))

(declare-fun m!918443 () Bool)

(assert (=> bs!28132 m!918443))

(assert (=> b!990196 d!117659))

(declare-fun d!117661 () Bool)

(assert (=> d!117661 (= (apply!932 (+!3054 lt!439326 (tuple2!15011 lt!439322 minValue!1220)) lt!439323) (get!15657 (getValueByKey!517 (toList!6876 (+!3054 lt!439326 (tuple2!15011 lt!439322 minValue!1220))) lt!439323)))))

(declare-fun bs!28133 () Bool)

(assert (= bs!28133 d!117661))

(declare-fun m!918445 () Bool)

(assert (=> bs!28133 m!918445))

(assert (=> bs!28133 m!918445))

(declare-fun m!918447 () Bool)

(assert (=> bs!28133 m!918447))

(assert (=> b!990196 d!117661))

(declare-fun d!117663 () Bool)

(declare-fun e!558596 () Bool)

(assert (=> d!117663 e!558596))

(declare-fun res!662396 () Bool)

(assert (=> d!117663 (=> (not res!662396) (not e!558596))))

(declare-fun lt!439576 () ListLongMap!13721)

(assert (=> d!117663 (= res!662396 (contains!5732 lt!439576 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(declare-fun lt!439578 () List!20960)

(assert (=> d!117663 (= lt!439576 (ListLongMap!13722 lt!439578))))

(declare-fun lt!439577 () Unit!32814)

(declare-fun lt!439579 () Unit!32814)

(assert (=> d!117663 (= lt!439577 lt!439579)))

(assert (=> d!117663 (= (getValueByKey!517 lt!439578 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))) (Some!522 (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(assert (=> d!117663 (= lt!439579 (lemmaContainsTupThenGetReturnValue!274 lt!439578 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(assert (=> d!117663 (= lt!439578 (insertStrictlySorted!330 (toList!6876 lt!439235) (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(assert (=> d!117663 (= (+!3054 lt!439235 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) lt!439576)))

(declare-fun b!990563 () Bool)

(declare-fun res!662397 () Bool)

(assert (=> b!990563 (=> (not res!662397) (not e!558596))))

(assert (=> b!990563 (= res!662397 (= (getValueByKey!517 (toList!6876 lt!439576) (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))) (Some!522 (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)))))))

(declare-fun b!990564 () Bool)

(assert (=> b!990564 (= e!558596 (contains!5733 (toList!6876 lt!439576) (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)))))

(assert (= (and d!117663 res!662396) b!990563))

(assert (= (and b!990563 res!662397) b!990564))

(declare-fun m!918449 () Bool)

(assert (=> d!117663 m!918449))

(declare-fun m!918451 () Bool)

(assert (=> d!117663 m!918451))

(declare-fun m!918453 () Bool)

(assert (=> d!117663 m!918453))

(declare-fun m!918455 () Bool)

(assert (=> d!117663 m!918455))

(declare-fun m!918457 () Bool)

(assert (=> b!990563 m!918457))

(declare-fun m!918459 () Bool)

(assert (=> b!990564 m!918459))

(assert (=> d!117467 d!117663))

(declare-fun d!117665 () Bool)

(declare-fun e!558597 () Bool)

(assert (=> d!117665 e!558597))

(declare-fun res!662398 () Bool)

(assert (=> d!117665 (=> (not res!662398) (not e!558597))))

(declare-fun lt!439580 () ListLongMap!13721)

(assert (=> d!117665 (= res!662398 (contains!5732 lt!439580 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!439582 () List!20960)

(assert (=> d!117665 (= lt!439580 (ListLongMap!13722 lt!439582))))

(declare-fun lt!439581 () Unit!32814)

(declare-fun lt!439583 () Unit!32814)

(assert (=> d!117665 (= lt!439581 lt!439583)))

(assert (=> d!117665 (= (getValueByKey!517 lt!439582 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117665 (= lt!439583 (lemmaContainsTupThenGetReturnValue!274 lt!439582 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117665 (= lt!439582 (insertStrictlySorted!330 (toList!6876 (+!3054 lt!439235 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117665 (= (+!3054 (+!3054 lt!439235 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!439580)))

(declare-fun b!990565 () Bool)

(declare-fun res!662399 () Bool)

(assert (=> b!990565 (=> (not res!662399) (not e!558597))))

(assert (=> b!990565 (= res!662399 (= (getValueByKey!517 (toList!6876 lt!439580) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!990566 () Bool)

(assert (=> b!990566 (= e!558597 (contains!5733 (toList!6876 lt!439580) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117665 res!662398) b!990565))

(assert (= (and b!990565 res!662399) b!990566))

(declare-fun m!918461 () Bool)

(assert (=> d!117665 m!918461))

(declare-fun m!918463 () Bool)

(assert (=> d!117665 m!918463))

(declare-fun m!918465 () Bool)

(assert (=> d!117665 m!918465))

(declare-fun m!918467 () Bool)

(assert (=> d!117665 m!918467))

(declare-fun m!918469 () Bool)

(assert (=> b!990565 m!918469))

(declare-fun m!918471 () Bool)

(assert (=> b!990566 m!918471))

(assert (=> d!117467 d!117665))

(declare-fun d!117667 () Bool)

(assert (=> d!117667 (= (+!3054 (+!3054 lt!439235 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (+!3054 (+!3054 lt!439235 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (=> d!117667 true))

(declare-fun _$28!191 () Unit!32814)

(assert (=> d!117667 (= (choose!1623 lt!439235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30118 _keys!1544) from!1932) lt!439233) _$28!191)))

(declare-fun bs!28134 () Bool)

(assert (= bs!28134 d!117667))

(assert (=> bs!28134 m!917705))

(assert (=> bs!28134 m!917705))

(assert (=> bs!28134 m!917707))

(assert (=> bs!28134 m!917703))

(assert (=> bs!28134 m!917703))

(assert (=> bs!28134 m!917711))

(assert (=> d!117467 d!117667))

(declare-fun d!117669 () Bool)

(declare-fun e!558598 () Bool)

(assert (=> d!117669 e!558598))

(declare-fun res!662400 () Bool)

(assert (=> d!117669 (=> (not res!662400) (not e!558598))))

(declare-fun lt!439584 () ListLongMap!13721)

(assert (=> d!117669 (= res!662400 (contains!5732 lt!439584 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(declare-fun lt!439586 () List!20960)

(assert (=> d!117669 (= lt!439584 (ListLongMap!13722 lt!439586))))

(declare-fun lt!439585 () Unit!32814)

(declare-fun lt!439587 () Unit!32814)

(assert (=> d!117669 (= lt!439585 lt!439587)))

(assert (=> d!117669 (= (getValueByKey!517 lt!439586 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))) (Some!522 (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(assert (=> d!117669 (= lt!439587 (lemmaContainsTupThenGetReturnValue!274 lt!439586 (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(assert (=> d!117669 (= lt!439586 (insertStrictlySorted!330 (toList!6876 (+!3054 lt!439235 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))))))

(assert (=> d!117669 (= (+!3054 (+!3054 lt!439235 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)) lt!439584)))

(declare-fun b!990567 () Bool)

(declare-fun res!662401 () Bool)

(assert (=> b!990567 (=> (not res!662401) (not e!558598))))

(assert (=> b!990567 (= res!662401 (= (getValueByKey!517 (toList!6876 lt!439584) (_1!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233))) (Some!522 (_2!7515 (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)))))))

(declare-fun b!990568 () Bool)

(assert (=> b!990568 (= e!558598 (contains!5733 (toList!6876 lt!439584) (tuple2!15011 (select (arr!30118 _keys!1544) from!1932) lt!439233)))))

(assert (= (and d!117669 res!662400) b!990567))

(assert (= (and b!990567 res!662401) b!990568))

(declare-fun m!918473 () Bool)

(assert (=> d!117669 m!918473))

(declare-fun m!918475 () Bool)

(assert (=> d!117669 m!918475))

(declare-fun m!918477 () Bool)

(assert (=> d!117669 m!918477))

(declare-fun m!918479 () Bool)

(assert (=> d!117669 m!918479))

(declare-fun m!918481 () Bool)

(assert (=> b!990567 m!918481))

(declare-fun m!918483 () Bool)

(assert (=> b!990568 m!918483))

(assert (=> d!117467 d!117669))

(declare-fun d!117671 () Bool)

(declare-fun e!558599 () Bool)

(assert (=> d!117671 e!558599))

(declare-fun res!662402 () Bool)

(assert (=> d!117671 (=> (not res!662402) (not e!558599))))

(declare-fun lt!439588 () ListLongMap!13721)

(assert (=> d!117671 (= res!662402 (contains!5732 lt!439588 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!439590 () List!20960)

(assert (=> d!117671 (= lt!439588 (ListLongMap!13722 lt!439590))))

(declare-fun lt!439589 () Unit!32814)

(declare-fun lt!439591 () Unit!32814)

(assert (=> d!117671 (= lt!439589 lt!439591)))

(assert (=> d!117671 (= (getValueByKey!517 lt!439590 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117671 (= lt!439591 (lemmaContainsTupThenGetReturnValue!274 lt!439590 (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117671 (= lt!439590 (insertStrictlySorted!330 (toList!6876 lt!439235) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117671 (= (+!3054 lt!439235 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!439588)))

(declare-fun b!990569 () Bool)

(declare-fun res!662403 () Bool)

(assert (=> b!990569 (=> (not res!662403) (not e!558599))))

(assert (=> b!990569 (= res!662403 (= (getValueByKey!517 (toList!6876 lt!439588) (_1!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!522 (_2!7515 (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!990570 () Bool)

(assert (=> b!990570 (= e!558599 (contains!5733 (toList!6876 lt!439588) (tuple2!15011 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117671 res!662402) b!990569))

(assert (= (and b!990569 res!662403) b!990570))

(declare-fun m!918485 () Bool)

(assert (=> d!117671 m!918485))

(declare-fun m!918487 () Bool)

(assert (=> d!117671 m!918487))

(declare-fun m!918489 () Bool)

(assert (=> d!117671 m!918489))

(declare-fun m!918491 () Bool)

(assert (=> d!117671 m!918491))

(declare-fun m!918493 () Bool)

(assert (=> b!990569 m!918493))

(declare-fun m!918495 () Bool)

(assert (=> b!990570 m!918495))

(assert (=> d!117467 d!117671))

(declare-fun d!117673 () Bool)

(declare-fun e!558601 () Bool)

(assert (=> d!117673 e!558601))

(declare-fun res!662404 () Bool)

(assert (=> d!117673 (=> res!662404 e!558601)))

(declare-fun lt!439593 () Bool)

(assert (=> d!117673 (= res!662404 (not lt!439593))))

(declare-fun lt!439594 () Bool)

(assert (=> d!117673 (= lt!439593 lt!439594)))

(declare-fun lt!439595 () Unit!32814)

(declare-fun e!558600 () Unit!32814)

(assert (=> d!117673 (= lt!439595 e!558600)))

(declare-fun c!100430 () Bool)

(assert (=> d!117673 (= c!100430 lt!439594)))

(assert (=> d!117673 (= lt!439594 (containsKey!480 (toList!6876 lt!439365) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117673 (= (contains!5732 lt!439365 #b1000000000000000000000000000000000000000000000000000000000000000) lt!439593)))

(declare-fun b!990571 () Bool)

(declare-fun lt!439592 () Unit!32814)

(assert (=> b!990571 (= e!558600 lt!439592)))

(assert (=> b!990571 (= lt!439592 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439365) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990571 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439365) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990572 () Bool)

(declare-fun Unit!32832 () Unit!32814)

(assert (=> b!990572 (= e!558600 Unit!32832)))

(declare-fun b!990573 () Bool)

(assert (=> b!990573 (= e!558601 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439365) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117673 c!100430) b!990571))

(assert (= (and d!117673 (not c!100430)) b!990572))

(assert (= (and d!117673 (not res!662404)) b!990573))

(declare-fun m!918497 () Bool)

(assert (=> d!117673 m!918497))

(declare-fun m!918499 () Bool)

(assert (=> b!990571 m!918499))

(assert (=> b!990571 m!918321))

(assert (=> b!990571 m!918321))

(declare-fun m!918501 () Bool)

(assert (=> b!990571 m!918501))

(assert (=> b!990573 m!918321))

(assert (=> b!990573 m!918321))

(assert (=> b!990573 m!918501))

(assert (=> bm!41982 d!117673))

(declare-fun d!117675 () Bool)

(declare-fun e!558603 () Bool)

(assert (=> d!117675 e!558603))

(declare-fun res!662405 () Bool)

(assert (=> d!117675 (=> res!662405 e!558603)))

(declare-fun lt!439597 () Bool)

(assert (=> d!117675 (= res!662405 (not lt!439597))))

(declare-fun lt!439598 () Bool)

(assert (=> d!117675 (= lt!439597 lt!439598)))

(declare-fun lt!439599 () Unit!32814)

(declare-fun e!558602 () Unit!32814)

(assert (=> d!117675 (= lt!439599 e!558602)))

(declare-fun c!100431 () Bool)

(assert (=> d!117675 (= c!100431 lt!439598)))

(assert (=> d!117675 (= lt!439598 (containsKey!480 (toList!6876 lt!439365) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117675 (= (contains!5732 lt!439365 #b0000000000000000000000000000000000000000000000000000000000000000) lt!439597)))

(declare-fun b!990574 () Bool)

(declare-fun lt!439596 () Unit!32814)

(assert (=> b!990574 (= e!558602 lt!439596)))

(assert (=> b!990574 (= lt!439596 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439365) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990574 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439365) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990575 () Bool)

(declare-fun Unit!32833 () Unit!32814)

(assert (=> b!990575 (= e!558602 Unit!32833)))

(declare-fun b!990576 () Bool)

(assert (=> b!990576 (= e!558603 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439365) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117675 c!100431) b!990574))

(assert (= (and d!117675 (not c!100431)) b!990575))

(assert (= (and d!117675 (not res!662405)) b!990576))

(declare-fun m!918503 () Bool)

(assert (=> d!117675 m!918503))

(declare-fun m!918505 () Bool)

(assert (=> b!990574 m!918505))

(assert (=> b!990574 m!917893))

(assert (=> b!990574 m!917893))

(declare-fun m!918507 () Bool)

(assert (=> b!990574 m!918507))

(assert (=> b!990576 m!917893))

(assert (=> b!990576 m!917893))

(assert (=> b!990576 m!918507))

(assert (=> bm!41986 d!117675))

(declare-fun d!117677 () Bool)

(declare-fun e!558605 () Bool)

(assert (=> d!117677 e!558605))

(declare-fun res!662406 () Bool)

(assert (=> d!117677 (=> res!662406 e!558605)))

(declare-fun lt!439601 () Bool)

(assert (=> d!117677 (= res!662406 (not lt!439601))))

(declare-fun lt!439602 () Bool)

(assert (=> d!117677 (= lt!439601 lt!439602)))

(declare-fun lt!439603 () Unit!32814)

(declare-fun e!558604 () Unit!32814)

(assert (=> d!117677 (= lt!439603 e!558604)))

(declare-fun c!100432 () Bool)

(assert (=> d!117677 (= c!100432 lt!439602)))

(assert (=> d!117677 (= lt!439602 (containsKey!480 (toList!6876 lt!439336) (_1!7515 lt!439231)))))

(assert (=> d!117677 (= (contains!5732 lt!439336 (_1!7515 lt!439231)) lt!439601)))

(declare-fun b!990577 () Bool)

(declare-fun lt!439600 () Unit!32814)

(assert (=> b!990577 (= e!558604 lt!439600)))

(assert (=> b!990577 (= lt!439600 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439336) (_1!7515 lt!439231)))))

(assert (=> b!990577 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439336) (_1!7515 lt!439231)))))

(declare-fun b!990578 () Bool)

(declare-fun Unit!32834 () Unit!32814)

(assert (=> b!990578 (= e!558604 Unit!32834)))

(declare-fun b!990579 () Bool)

(assert (=> b!990579 (= e!558605 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439336) (_1!7515 lt!439231))))))

(assert (= (and d!117677 c!100432) b!990577))

(assert (= (and d!117677 (not c!100432)) b!990578))

(assert (= (and d!117677 (not res!662406)) b!990579))

(declare-fun m!918509 () Bool)

(assert (=> d!117677 m!918509))

(declare-fun m!918511 () Bool)

(assert (=> b!990577 m!918511))

(assert (=> b!990577 m!917769))

(assert (=> b!990577 m!917769))

(declare-fun m!918513 () Bool)

(assert (=> b!990577 m!918513))

(assert (=> b!990579 m!917769))

(assert (=> b!990579 m!917769))

(assert (=> b!990579 m!918513))

(assert (=> d!117471 d!117677))

(declare-fun b!990581 () Bool)

(declare-fun e!558606 () Option!523)

(declare-fun e!558607 () Option!523)

(assert (=> b!990581 (= e!558606 e!558607)))

(declare-fun c!100434 () Bool)

(assert (=> b!990581 (= c!100434 (and ((_ is Cons!20956) lt!439338) (not (= (_1!7515 (h!22118 lt!439338)) (_1!7515 lt!439231)))))))

(declare-fun b!990580 () Bool)

(assert (=> b!990580 (= e!558606 (Some!522 (_2!7515 (h!22118 lt!439338))))))

(declare-fun b!990582 () Bool)

(assert (=> b!990582 (= e!558607 (getValueByKey!517 (t!29943 lt!439338) (_1!7515 lt!439231)))))

(declare-fun b!990583 () Bool)

(assert (=> b!990583 (= e!558607 None!521)))

(declare-fun d!117679 () Bool)

(declare-fun c!100433 () Bool)

(assert (=> d!117679 (= c!100433 (and ((_ is Cons!20956) lt!439338) (= (_1!7515 (h!22118 lt!439338)) (_1!7515 lt!439231))))))

(assert (=> d!117679 (= (getValueByKey!517 lt!439338 (_1!7515 lt!439231)) e!558606)))

(assert (= (and d!117679 c!100433) b!990580))

(assert (= (and d!117679 (not c!100433)) b!990581))

(assert (= (and b!990581 c!100434) b!990582))

(assert (= (and b!990581 (not c!100434)) b!990583))

(declare-fun m!918515 () Bool)

(assert (=> b!990582 m!918515))

(assert (=> d!117471 d!117679))

(declare-fun d!117681 () Bool)

(assert (=> d!117681 (= (getValueByKey!517 lt!439338 (_1!7515 lt!439231)) (Some!522 (_2!7515 lt!439231)))))

(declare-fun lt!439604 () Unit!32814)

(assert (=> d!117681 (= lt!439604 (choose!1624 lt!439338 (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(declare-fun e!558608 () Bool)

(assert (=> d!117681 e!558608))

(declare-fun res!662407 () Bool)

(assert (=> d!117681 (=> (not res!662407) (not e!558608))))

(assert (=> d!117681 (= res!662407 (isStrictlySorted!513 lt!439338))))

(assert (=> d!117681 (= (lemmaContainsTupThenGetReturnValue!274 lt!439338 (_1!7515 lt!439231) (_2!7515 lt!439231)) lt!439604)))

(declare-fun b!990584 () Bool)

(declare-fun res!662408 () Bool)

(assert (=> b!990584 (=> (not res!662408) (not e!558608))))

(assert (=> b!990584 (= res!662408 (containsKey!480 lt!439338 (_1!7515 lt!439231)))))

(declare-fun b!990585 () Bool)

(assert (=> b!990585 (= e!558608 (contains!5733 lt!439338 (tuple2!15011 (_1!7515 lt!439231) (_2!7515 lt!439231))))))

(assert (= (and d!117681 res!662407) b!990584))

(assert (= (and b!990584 res!662408) b!990585))

(assert (=> d!117681 m!917763))

(declare-fun m!918517 () Bool)

(assert (=> d!117681 m!918517))

(declare-fun m!918519 () Bool)

(assert (=> d!117681 m!918519))

(declare-fun m!918521 () Bool)

(assert (=> b!990584 m!918521))

(declare-fun m!918523 () Bool)

(assert (=> b!990585 m!918523))

(assert (=> d!117471 d!117681))

(declare-fun b!990586 () Bool)

(declare-fun e!558609 () List!20960)

(declare-fun call!42021 () List!20960)

(assert (=> b!990586 (= e!558609 call!42021)))

(declare-fun b!990587 () Bool)

(declare-fun e!558611 () List!20960)

(declare-fun call!42019 () List!20960)

(assert (=> b!990587 (= e!558611 call!42019)))

(declare-fun e!558610 () List!20960)

(declare-fun bm!42016 () Bool)

(declare-fun c!100436 () Bool)

(assert (=> bm!42016 (= call!42021 ($colon$colon!557 e!558610 (ite c!100436 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439232))) (tuple2!15011 (_1!7515 lt!439231) (_2!7515 lt!439231)))))))

(declare-fun c!100435 () Bool)

(assert (=> bm!42016 (= c!100435 c!100436)))

(declare-fun b!990588 () Bool)

(declare-fun e!558612 () List!20960)

(declare-fun call!42020 () List!20960)

(assert (=> b!990588 (= e!558612 call!42020)))

(declare-fun b!990589 () Bool)

(assert (=> b!990589 (= e!558609 e!558612)))

(declare-fun c!100438 () Bool)

(assert (=> b!990589 (= c!100438 (and ((_ is Cons!20956) (toList!6876 (+!3054 lt!439235 lt!439232))) (= (_1!7515 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439232)))) (_1!7515 lt!439231))))))

(declare-fun d!117683 () Bool)

(declare-fun e!558613 () Bool)

(assert (=> d!117683 e!558613))

(declare-fun res!662409 () Bool)

(assert (=> d!117683 (=> (not res!662409) (not e!558613))))

(declare-fun lt!439605 () List!20960)

(assert (=> d!117683 (= res!662409 (isStrictlySorted!513 lt!439605))))

(assert (=> d!117683 (= lt!439605 e!558609)))

(assert (=> d!117683 (= c!100436 (and ((_ is Cons!20956) (toList!6876 (+!3054 lt!439235 lt!439232))) (bvslt (_1!7515 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439232)))) (_1!7515 lt!439231))))))

(assert (=> d!117683 (isStrictlySorted!513 (toList!6876 (+!3054 lt!439235 lt!439232)))))

(assert (=> d!117683 (= (insertStrictlySorted!330 (toList!6876 (+!3054 lt!439235 lt!439232)) (_1!7515 lt!439231) (_2!7515 lt!439231)) lt!439605)))

(declare-fun bm!42017 () Bool)

(assert (=> bm!42017 (= call!42020 call!42021)))

(declare-fun b!990590 () Bool)

(declare-fun res!662410 () Bool)

(assert (=> b!990590 (=> (not res!662410) (not e!558613))))

(assert (=> b!990590 (= res!662410 (containsKey!480 lt!439605 (_1!7515 lt!439231)))))

(declare-fun b!990591 () Bool)

(assert (=> b!990591 (= e!558613 (contains!5733 lt!439605 (tuple2!15011 (_1!7515 lt!439231) (_2!7515 lt!439231))))))

(declare-fun c!100437 () Bool)

(declare-fun b!990592 () Bool)

(assert (=> b!990592 (= e!558610 (ite c!100438 (t!29943 (toList!6876 (+!3054 lt!439235 lt!439232))) (ite c!100437 (Cons!20956 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439232))) (t!29943 (toList!6876 (+!3054 lt!439235 lt!439232)))) Nil!20957)))))

(declare-fun bm!42018 () Bool)

(assert (=> bm!42018 (= call!42019 call!42020)))

(declare-fun b!990593 () Bool)

(assert (=> b!990593 (= e!558610 (insertStrictlySorted!330 (t!29943 (toList!6876 (+!3054 lt!439235 lt!439232))) (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(declare-fun b!990594 () Bool)

(assert (=> b!990594 (= c!100437 (and ((_ is Cons!20956) (toList!6876 (+!3054 lt!439235 lt!439232))) (bvsgt (_1!7515 (h!22118 (toList!6876 (+!3054 lt!439235 lt!439232)))) (_1!7515 lt!439231))))))

(assert (=> b!990594 (= e!558612 e!558611)))

(declare-fun b!990595 () Bool)

(assert (=> b!990595 (= e!558611 call!42019)))

(assert (= (and d!117683 c!100436) b!990586))

(assert (= (and d!117683 (not c!100436)) b!990589))

(assert (= (and b!990589 c!100438) b!990588))

(assert (= (and b!990589 (not c!100438)) b!990594))

(assert (= (and b!990594 c!100437) b!990595))

(assert (= (and b!990594 (not c!100437)) b!990587))

(assert (= (or b!990595 b!990587) bm!42018))

(assert (= (or b!990588 bm!42018) bm!42017))

(assert (= (or b!990586 bm!42017) bm!42016))

(assert (= (and bm!42016 c!100435) b!990593))

(assert (= (and bm!42016 (not c!100435)) b!990592))

(assert (= (and d!117683 res!662409) b!990590))

(assert (= (and b!990590 res!662410) b!990591))

(declare-fun m!918525 () Bool)

(assert (=> b!990593 m!918525))

(declare-fun m!918527 () Bool)

(assert (=> b!990590 m!918527))

(declare-fun m!918529 () Bool)

(assert (=> bm!42016 m!918529))

(declare-fun m!918531 () Bool)

(assert (=> b!990591 m!918531))

(declare-fun m!918533 () Bool)

(assert (=> d!117683 m!918533))

(declare-fun m!918535 () Bool)

(assert (=> d!117683 m!918535))

(assert (=> d!117471 d!117683))

(declare-fun d!117685 () Bool)

(declare-fun e!558615 () Bool)

(assert (=> d!117685 e!558615))

(declare-fun res!662411 () Bool)

(assert (=> d!117685 (=> res!662411 e!558615)))

(declare-fun lt!439607 () Bool)

(assert (=> d!117685 (= res!662411 (not lt!439607))))

(declare-fun lt!439608 () Bool)

(assert (=> d!117685 (= lt!439607 lt!439608)))

(declare-fun lt!439609 () Unit!32814)

(declare-fun e!558614 () Unit!32814)

(assert (=> d!117685 (= lt!439609 e!558614)))

(declare-fun c!100439 () Bool)

(assert (=> d!117685 (= c!100439 lt!439608)))

(assert (=> d!117685 (= lt!439608 (containsKey!480 (toList!6876 lt!439340) (_1!7515 lt!439231)))))

(assert (=> d!117685 (= (contains!5732 lt!439340 (_1!7515 lt!439231)) lt!439607)))

(declare-fun b!990596 () Bool)

(declare-fun lt!439606 () Unit!32814)

(assert (=> b!990596 (= e!558614 lt!439606)))

(assert (=> b!990596 (= lt!439606 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439340) (_1!7515 lt!439231)))))

(assert (=> b!990596 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439340) (_1!7515 lt!439231)))))

(declare-fun b!990597 () Bool)

(declare-fun Unit!32835 () Unit!32814)

(assert (=> b!990597 (= e!558614 Unit!32835)))

(declare-fun b!990598 () Bool)

(assert (=> b!990598 (= e!558615 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439340) (_1!7515 lt!439231))))))

(assert (= (and d!117685 c!100439) b!990596))

(assert (= (and d!117685 (not c!100439)) b!990597))

(assert (= (and d!117685 (not res!662411)) b!990598))

(declare-fun m!918537 () Bool)

(assert (=> d!117685 m!918537))

(declare-fun m!918539 () Bool)

(assert (=> b!990596 m!918539))

(assert (=> b!990596 m!917781))

(assert (=> b!990596 m!917781))

(declare-fun m!918541 () Bool)

(assert (=> b!990596 m!918541))

(assert (=> b!990598 m!917781))

(assert (=> b!990598 m!917781))

(assert (=> b!990598 m!918541))

(assert (=> d!117473 d!117685))

(declare-fun b!990600 () Bool)

(declare-fun e!558616 () Option!523)

(declare-fun e!558617 () Option!523)

(assert (=> b!990600 (= e!558616 e!558617)))

(declare-fun c!100441 () Bool)

(assert (=> b!990600 (= c!100441 (and ((_ is Cons!20956) lt!439342) (not (= (_1!7515 (h!22118 lt!439342)) (_1!7515 lt!439231)))))))

(declare-fun b!990599 () Bool)

(assert (=> b!990599 (= e!558616 (Some!522 (_2!7515 (h!22118 lt!439342))))))

(declare-fun b!990601 () Bool)

(assert (=> b!990601 (= e!558617 (getValueByKey!517 (t!29943 lt!439342) (_1!7515 lt!439231)))))

(declare-fun b!990602 () Bool)

(assert (=> b!990602 (= e!558617 None!521)))

(declare-fun d!117687 () Bool)

(declare-fun c!100440 () Bool)

(assert (=> d!117687 (= c!100440 (and ((_ is Cons!20956) lt!439342) (= (_1!7515 (h!22118 lt!439342)) (_1!7515 lt!439231))))))

(assert (=> d!117687 (= (getValueByKey!517 lt!439342 (_1!7515 lt!439231)) e!558616)))

(assert (= (and d!117687 c!100440) b!990599))

(assert (= (and d!117687 (not c!100440)) b!990600))

(assert (= (and b!990600 c!100441) b!990601))

(assert (= (and b!990600 (not c!100441)) b!990602))

(declare-fun m!918543 () Bool)

(assert (=> b!990601 m!918543))

(assert (=> d!117473 d!117687))

(declare-fun d!117689 () Bool)

(assert (=> d!117689 (= (getValueByKey!517 lt!439342 (_1!7515 lt!439231)) (Some!522 (_2!7515 lt!439231)))))

(declare-fun lt!439610 () Unit!32814)

(assert (=> d!117689 (= lt!439610 (choose!1624 lt!439342 (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(declare-fun e!558618 () Bool)

(assert (=> d!117689 e!558618))

(declare-fun res!662412 () Bool)

(assert (=> d!117689 (=> (not res!662412) (not e!558618))))

(assert (=> d!117689 (= res!662412 (isStrictlySorted!513 lt!439342))))

(assert (=> d!117689 (= (lemmaContainsTupThenGetReturnValue!274 lt!439342 (_1!7515 lt!439231) (_2!7515 lt!439231)) lt!439610)))

(declare-fun b!990603 () Bool)

(declare-fun res!662413 () Bool)

(assert (=> b!990603 (=> (not res!662413) (not e!558618))))

(assert (=> b!990603 (= res!662413 (containsKey!480 lt!439342 (_1!7515 lt!439231)))))

(declare-fun b!990604 () Bool)

(assert (=> b!990604 (= e!558618 (contains!5733 lt!439342 (tuple2!15011 (_1!7515 lt!439231) (_2!7515 lt!439231))))))

(assert (= (and d!117689 res!662412) b!990603))

(assert (= (and b!990603 res!662413) b!990604))

(assert (=> d!117689 m!917775))

(declare-fun m!918545 () Bool)

(assert (=> d!117689 m!918545))

(declare-fun m!918547 () Bool)

(assert (=> d!117689 m!918547))

(declare-fun m!918549 () Bool)

(assert (=> b!990603 m!918549))

(declare-fun m!918551 () Bool)

(assert (=> b!990604 m!918551))

(assert (=> d!117473 d!117689))

(declare-fun b!990605 () Bool)

(declare-fun e!558619 () List!20960)

(declare-fun call!42024 () List!20960)

(assert (=> b!990605 (= e!558619 call!42024)))

(declare-fun b!990606 () Bool)

(declare-fun e!558621 () List!20960)

(declare-fun call!42022 () List!20960)

(assert (=> b!990606 (= e!558621 call!42022)))

(declare-fun bm!42019 () Bool)

(declare-fun c!100443 () Bool)

(declare-fun e!558620 () List!20960)

(assert (=> bm!42019 (= call!42024 ($colon$colon!557 e!558620 (ite c!100443 (h!22118 (toList!6876 lt!439235)) (tuple2!15011 (_1!7515 lt!439231) (_2!7515 lt!439231)))))))

(declare-fun c!100442 () Bool)

(assert (=> bm!42019 (= c!100442 c!100443)))

(declare-fun b!990607 () Bool)

(declare-fun e!558622 () List!20960)

(declare-fun call!42023 () List!20960)

(assert (=> b!990607 (= e!558622 call!42023)))

(declare-fun b!990608 () Bool)

(assert (=> b!990608 (= e!558619 e!558622)))

(declare-fun c!100445 () Bool)

(assert (=> b!990608 (= c!100445 (and ((_ is Cons!20956) (toList!6876 lt!439235)) (= (_1!7515 (h!22118 (toList!6876 lt!439235))) (_1!7515 lt!439231))))))

(declare-fun d!117691 () Bool)

(declare-fun e!558623 () Bool)

(assert (=> d!117691 e!558623))

(declare-fun res!662414 () Bool)

(assert (=> d!117691 (=> (not res!662414) (not e!558623))))

(declare-fun lt!439611 () List!20960)

(assert (=> d!117691 (= res!662414 (isStrictlySorted!513 lt!439611))))

(assert (=> d!117691 (= lt!439611 e!558619)))

(assert (=> d!117691 (= c!100443 (and ((_ is Cons!20956) (toList!6876 lt!439235)) (bvslt (_1!7515 (h!22118 (toList!6876 lt!439235))) (_1!7515 lt!439231))))))

(assert (=> d!117691 (isStrictlySorted!513 (toList!6876 lt!439235))))

(assert (=> d!117691 (= (insertStrictlySorted!330 (toList!6876 lt!439235) (_1!7515 lt!439231) (_2!7515 lt!439231)) lt!439611)))

(declare-fun bm!42020 () Bool)

(assert (=> bm!42020 (= call!42023 call!42024)))

(declare-fun b!990609 () Bool)

(declare-fun res!662415 () Bool)

(assert (=> b!990609 (=> (not res!662415) (not e!558623))))

(assert (=> b!990609 (= res!662415 (containsKey!480 lt!439611 (_1!7515 lt!439231)))))

(declare-fun b!990610 () Bool)

(assert (=> b!990610 (= e!558623 (contains!5733 lt!439611 (tuple2!15011 (_1!7515 lt!439231) (_2!7515 lt!439231))))))

(declare-fun c!100444 () Bool)

(declare-fun b!990611 () Bool)

(assert (=> b!990611 (= e!558620 (ite c!100445 (t!29943 (toList!6876 lt!439235)) (ite c!100444 (Cons!20956 (h!22118 (toList!6876 lt!439235)) (t!29943 (toList!6876 lt!439235))) Nil!20957)))))

(declare-fun bm!42021 () Bool)

(assert (=> bm!42021 (= call!42022 call!42023)))

(declare-fun b!990612 () Bool)

(assert (=> b!990612 (= e!558620 (insertStrictlySorted!330 (t!29943 (toList!6876 lt!439235)) (_1!7515 lt!439231) (_2!7515 lt!439231)))))

(declare-fun b!990613 () Bool)

(assert (=> b!990613 (= c!100444 (and ((_ is Cons!20956) (toList!6876 lt!439235)) (bvsgt (_1!7515 (h!22118 (toList!6876 lt!439235))) (_1!7515 lt!439231))))))

(assert (=> b!990613 (= e!558622 e!558621)))

(declare-fun b!990614 () Bool)

(assert (=> b!990614 (= e!558621 call!42022)))

(assert (= (and d!117691 c!100443) b!990605))

(assert (= (and d!117691 (not c!100443)) b!990608))

(assert (= (and b!990608 c!100445) b!990607))

(assert (= (and b!990608 (not c!100445)) b!990613))

(assert (= (and b!990613 c!100444) b!990614))

(assert (= (and b!990613 (not c!100444)) b!990606))

(assert (= (or b!990614 b!990606) bm!42021))

(assert (= (or b!990607 bm!42021) bm!42020))

(assert (= (or b!990605 bm!42020) bm!42019))

(assert (= (and bm!42019 c!100442) b!990612))

(assert (= (and bm!42019 (not c!100442)) b!990611))

(assert (= (and d!117691 res!662414) b!990609))

(assert (= (and b!990609 res!662415) b!990610))

(declare-fun m!918553 () Bool)

(assert (=> b!990612 m!918553))

(declare-fun m!918555 () Bool)

(assert (=> b!990609 m!918555))

(declare-fun m!918557 () Bool)

(assert (=> bm!42019 m!918557))

(declare-fun m!918559 () Bool)

(assert (=> b!990610 m!918559))

(declare-fun m!918561 () Bool)

(assert (=> d!117691 m!918561))

(assert (=> d!117691 m!917985))

(assert (=> d!117473 d!117691))

(assert (=> d!117469 d!117489))

(declare-fun d!117693 () Bool)

(declare-fun e!558625 () Bool)

(assert (=> d!117693 e!558625))

(declare-fun res!662416 () Bool)

(assert (=> d!117693 (=> res!662416 e!558625)))

(declare-fun lt!439613 () Bool)

(assert (=> d!117693 (= res!662416 (not lt!439613))))

(declare-fun lt!439614 () Bool)

(assert (=> d!117693 (= lt!439613 lt!439614)))

(declare-fun lt!439615 () Unit!32814)

(declare-fun e!558624 () Unit!32814)

(assert (=> d!117693 (= lt!439615 e!558624)))

(declare-fun c!100446 () Bool)

(assert (=> d!117693 (= c!100446 lt!439614)))

(assert (=> d!117693 (= lt!439614 (containsKey!480 (toList!6876 lt!439365) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> d!117693 (= (contains!5732 lt!439365 (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) lt!439613)))

(declare-fun b!990615 () Bool)

(declare-fun lt!439612 () Unit!32814)

(assert (=> b!990615 (= e!558624 lt!439612)))

(assert (=> b!990615 (= lt!439612 (lemmaContainsKeyImpliesGetValueByKeyDefined!375 (toList!6876 lt!439365) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!990615 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439365) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!990616 () Bool)

(declare-fun Unit!32836 () Unit!32814)

(assert (=> b!990616 (= e!558624 Unit!32836)))

(declare-fun b!990617 () Bool)

(assert (=> b!990617 (= e!558625 (isDefined!385 (getValueByKey!517 (toList!6876 lt!439365) (select (arr!30118 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(assert (= (and d!117693 c!100446) b!990615))

(assert (= (and d!117693 (not c!100446)) b!990616))

(assert (= (and d!117693 (not res!662416)) b!990617))

(assert (=> d!117693 m!917787))

(declare-fun m!918563 () Bool)

(assert (=> d!117693 m!918563))

(assert (=> b!990615 m!917787))

(declare-fun m!918565 () Bool)

(assert (=> b!990615 m!918565))

(assert (=> b!990615 m!917787))

(assert (=> b!990615 m!918167))

(assert (=> b!990615 m!918167))

(declare-fun m!918567 () Bool)

(assert (=> b!990615 m!918567))

(assert (=> b!990617 m!917787))

(assert (=> b!990617 m!918167))

(assert (=> b!990617 m!918167))

(assert (=> b!990617 m!918567))

(assert (=> b!990210 d!117693))

(assert (=> bm!41990 d!117567))

(declare-fun b!990619 () Bool)

(declare-fun e!558626 () Option!523)

(declare-fun e!558627 () Option!523)

(assert (=> b!990619 (= e!558626 e!558627)))

(declare-fun c!100448 () Bool)

(assert (=> b!990619 (= c!100448 (and ((_ is Cons!20956) (toList!6876 lt!439259)) (not (= (_1!7515 (h!22118 (toList!6876 lt!439259))) (_1!7515 lt!439232)))))))

(declare-fun b!990618 () Bool)

(assert (=> b!990618 (= e!558626 (Some!522 (_2!7515 (h!22118 (toList!6876 lt!439259)))))))

(declare-fun b!990620 () Bool)

(assert (=> b!990620 (= e!558627 (getValueByKey!517 (t!29943 (toList!6876 lt!439259)) (_1!7515 lt!439232)))))

(declare-fun b!990621 () Bool)

(assert (=> b!990621 (= e!558627 None!521)))

(declare-fun d!117695 () Bool)

(declare-fun c!100447 () Bool)

(assert (=> d!117695 (= c!100447 (and ((_ is Cons!20956) (toList!6876 lt!439259)) (= (_1!7515 (h!22118 (toList!6876 lt!439259))) (_1!7515 lt!439232))))))

(assert (=> d!117695 (= (getValueByKey!517 (toList!6876 lt!439259) (_1!7515 lt!439232)) e!558626)))

(assert (= (and d!117695 c!100447) b!990618))

(assert (= (and d!117695 (not c!100447)) b!990619))

(assert (= (and b!990619 c!100448) b!990620))

(assert (= (and b!990619 (not c!100448)) b!990621))

(declare-fun m!918569 () Bool)

(assert (=> b!990620 m!918569))

(assert (=> b!990137 d!117695))

(assert (=> d!117475 d!117489))

(declare-fun b!990623 () Bool)

(declare-fun e!558628 () Option!523)

(declare-fun e!558629 () Option!523)

(assert (=> b!990623 (= e!558628 e!558629)))

(declare-fun c!100450 () Bool)

(assert (=> b!990623 (= c!100450 (and ((_ is Cons!20956) (toList!6876 lt!439263)) (not (= (_1!7515 (h!22118 (toList!6876 lt!439263))) (_1!7515 lt!439232)))))))

(declare-fun b!990622 () Bool)

(assert (=> b!990622 (= e!558628 (Some!522 (_2!7515 (h!22118 (toList!6876 lt!439263)))))))

(declare-fun b!990624 () Bool)

(assert (=> b!990624 (= e!558629 (getValueByKey!517 (t!29943 (toList!6876 lt!439263)) (_1!7515 lt!439232)))))

(declare-fun b!990625 () Bool)

(assert (=> b!990625 (= e!558629 None!521)))

(declare-fun d!117697 () Bool)

(declare-fun c!100449 () Bool)

(assert (=> d!117697 (= c!100449 (and ((_ is Cons!20956) (toList!6876 lt!439263)) (= (_1!7515 (h!22118 (toList!6876 lt!439263))) (_1!7515 lt!439232))))))

(assert (=> d!117697 (= (getValueByKey!517 (toList!6876 lt!439263) (_1!7515 lt!439232)) e!558628)))

(assert (= (and d!117697 c!100449) b!990622))

(assert (= (and d!117697 (not c!100449)) b!990623))

(assert (= (and b!990623 c!100450) b!990624))

(assert (= (and b!990623 (not c!100450)) b!990625))

(declare-fun m!918571 () Bool)

(assert (=> b!990624 m!918571))

(assert (=> b!990139 d!117697))

(assert (=> b!990263 d!117511))

(declare-fun d!117699 () Bool)

(assert (=> d!117699 (= (apply!932 lt!439335 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15657 (getValueByKey!517 (toList!6876 lt!439335) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28135 () Bool)

(assert (= bs!28135 d!117699))

(assert (=> bs!28135 m!917911))

(assert (=> bs!28135 m!917911))

(declare-fun m!918573 () Bool)

(assert (=> bs!28135 m!918573))

(assert (=> b!990184 d!117699))

(declare-fun mapIsEmpty!36998 () Bool)

(declare-fun mapRes!36998 () Bool)

(assert (=> mapIsEmpty!36998 mapRes!36998))

(declare-fun b!990627 () Bool)

(declare-fun e!558631 () Bool)

(assert (=> b!990627 (= e!558631 tp_is_empty!23295)))

(declare-fun b!990626 () Bool)

(declare-fun e!558630 () Bool)

(assert (=> b!990626 (= e!558630 tp_is_empty!23295)))

(declare-fun mapNonEmpty!36998 () Bool)

(declare-fun tp!70043 () Bool)

(assert (=> mapNonEmpty!36998 (= mapRes!36998 (and tp!70043 e!558630))))

(declare-fun mapValue!36998 () ValueCell!11166)

(declare-fun mapKey!36998 () (_ BitVec 32))

(declare-fun mapRest!36998 () (Array (_ BitVec 32) ValueCell!11166))

(assert (=> mapNonEmpty!36998 (= mapRest!36997 (store mapRest!36998 mapKey!36998 mapValue!36998))))

(declare-fun condMapEmpty!36998 () Bool)

(declare-fun mapDefault!36998 () ValueCell!11166)

(assert (=> mapNonEmpty!36997 (= condMapEmpty!36998 (= mapRest!36997 ((as const (Array (_ BitVec 32) ValueCell!11166)) mapDefault!36998)))))

(assert (=> mapNonEmpty!36997 (= tp!70042 (and e!558631 mapRes!36998))))

(assert (= (and mapNonEmpty!36997 condMapEmpty!36998) mapIsEmpty!36998))

(assert (= (and mapNonEmpty!36997 (not condMapEmpty!36998)) mapNonEmpty!36998))

(assert (= (and mapNonEmpty!36998 ((_ is ValueCellFull!11166) mapValue!36998)) b!990626))

(assert (= (and mapNonEmpty!36997 ((_ is ValueCellFull!11166) mapDefault!36998)) b!990627))

(declare-fun m!918575 () Bool)

(assert (=> mapNonEmpty!36998 m!918575))

(declare-fun b_lambda!15219 () Bool)

(assert (= b_lambda!15211 (or (and start!84696 b_free!20079) b_lambda!15219)))

(declare-fun b_lambda!15221 () Bool)

(assert (= b_lambda!15217 (or (and start!84696 b_free!20079) b_lambda!15221)))

(declare-fun b_lambda!15223 () Bool)

(assert (= b_lambda!15215 (or (and start!84696 b_free!20079) b_lambda!15223)))

(declare-fun b_lambda!15225 () Bool)

(assert (= b_lambda!15213 (or (and start!84696 b_free!20079) b_lambda!15225)))

(check-sat (not b!990557) (not d!117667) (not b!990585) (not b!990568) (not b!990486) (not b!990421) (not d!117655) (not b!990603) (not b!990338) (not d!117649) (not d!117643) (not d!117525) (not b!990457) (not d!117529) (not d!117515) (not b!990500) (not b!990492) (not b!990565) (not b!990604) (not d!117607) (not b!990318) (not b!990482) (not b!990538) (not b!990342) (not b!990428) (not b!990591) (not d!117539) (not b!990573) (not b!990598) (not b!990563) (not d!117559) (not b!990417) (not b_next!20079) (not b!990466) (not d!117673) (not b!990470) (not b!990532) (not d!117683) (not b!990556) (not bm!42004) (not d!117699) (not b_lambda!15209) (not b!990530) (not d!117659) (not d!117661) (not d!117639) (not b!990576) (not b!990456) (not b!990371) (not d!117597) (not b!990516) (not d!117589) (not d!117571) (not b!990476) (not b!990329) (not b!990571) (not b!990328) (not b!990561) (not b!990574) (not b!990567) (not b!990468) (not b!990446) (not b!990570) (not b!990331) (not bm!42013) (not b!990596) (not d!117531) (not b!990509) (not d!117629) (not b!990584) (not d!117603) (not b!990408) (not b!990519) (not b!990543) (not b!990483) (not d!117587) (not b!990513) (not b!990423) (not b!990569) (not d!117609) (not b!990544) (not b!990352) (not b!990535) (not b!990564) (not b!990472) (not b!990511) (not b!990525) (not b!990443) (not d!117637) (not d!117585) (not d!117663) (not b!990559) (not b!990414) (not b_lambda!15219) (not b!990429) (not d!117547) (not b!990416) (not d!117675) (not d!117591) (not b!990382) (not d!117501) (not bm!42007) (not b!990426) (not d!117647) (not d!117651) (not d!117641) (not d!117557) (not d!117621) (not d!117613) (not bm!41997) (not d!117581) (not b!990551) (not d!117543) (not b_lambda!15225) (not d!117625) (not b!990527) (not b!990554) b_and!32269 (not d!117601) (not b!990442) (not d!117623) (not b!990518) (not b!990506) (not b_lambda!15221) (not d!117545) (not b!990524) (not d!117563) (not b!990340) (not d!117577) (not d!117635) (not b!990418) (not d!117633) (not b_lambda!15223) (not d!117551) (not b!990424) (not b!990590) (not b!990425) (not d!117555) (not d!117605) (not b!990461) (not b!990448) (not b!990346) (not b!990343) (not b!990454) (not b!990624) (not d!117499) (not d!117691) (not d!117553) (not b!990577) (not d!117567) (not b!990502) (not b!990609) (not b_lambda!15207) (not b!990383) (not b!990593) (not bm!42009) (not d!117593) (not b!990537) (not d!117689) (not d!117509) (not b!990439) (not b!990420) (not b_lambda!15193) (not b!990326) (not b!990368) (not d!117569) (not d!117693) (not b!990411) (not b!990582) (not d!117671) (not b!990415) (not b!990560) tp_is_empty!23295 (not b!990479) (not b!990427) (not b!990566) (not b!990445) (not b!990615) (not mapNonEmpty!36998) (not b!990437) (not b!990610) (not b!990473) (not b!990579) (not bm!42019) (not b!990478) (not b!990436) (not d!117677) (not d!117599) (not b!990474) (not b!990617) (not b!990555) (not d!117549) (not b!990464) (not d!117519) (not b!990510) (not b!990612) (not d!117653) (not d!117665) (not d!117565) (not b!990460) (not b!990601) (not d!117533) (not bm!42008) (not d!117681) (not b!990409) (not b_lambda!15203) (not b!990503) (not b!990441) (not b!990493) (not b!990435) (not d!117685) (not d!117521) (not d!117583) (not d!117669) (not d!117535) (not d!117645) (not d!117561) (not b!990462) (not bm!42010) (not b!990481) (not d!117495) (not d!117619) (not b!990553) (not bm!42016) (not b!990458) (not b!990376) (not b!990620) (not b!990334) (not b_lambda!15205) (not d!117573) (not b!990546) (not d!117595) (not b!990507) (not d!117537) (not d!117579) (not b!990494) (not b!990550) (not b!990504) (not d!117631) (not d!117657) (not b!990467) (not d!117615) (not b!990373))
(check-sat b_and!32269 (not b_next!20079))
