; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84590 () Bool)

(assert start!84590)

(declare-fun b_free!20043 () Bool)

(declare-fun b_next!20043 () Bool)

(assert (=> start!84590 (= b_free!20043 (not b_next!20043))))

(declare-fun tp!69918 () Bool)

(declare-fun b_and!32173 () Bool)

(assert (=> start!84590 (= tp!69918 b_and!32173)))

(declare-fun b!988932 () Bool)

(declare-fun res!661537 () Bool)

(declare-fun e!557664 () Bool)

(assert (=> b!988932 (=> (not res!661537) (not e!557664))))

(declare-datatypes ((array!62465 0))(
  ( (array!62466 (arr!30082 (Array (_ BitVec 32) (_ BitVec 64))) (size!30562 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62465)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62465 (_ BitVec 32)) Bool)

(assert (=> b!988932 (= res!661537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!661535 () Bool)

(assert (=> start!84590 (=> (not res!661535) (not e!557664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84590 (= res!661535 (validMask!0 mask!1948))))

(assert (=> start!84590 e!557664))

(assert (=> start!84590 true))

(declare-fun tp_is_empty!23259 () Bool)

(assert (=> start!84590 tp_is_empty!23259))

(declare-datatypes ((V!35995 0))(
  ( (V!35996 (val!11680 Int)) )
))
(declare-datatypes ((ValueCell!11148 0))(
  ( (ValueCellFull!11148 (v!14247 V!35995)) (EmptyCell!11148) )
))
(declare-datatypes ((array!62467 0))(
  ( (array!62468 (arr!30083 (Array (_ BitVec 32) ValueCell!11148)) (size!30563 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62467)

(declare-fun e!557660 () Bool)

(declare-fun array_inv!23099 (array!62467) Bool)

(assert (=> start!84590 (and (array_inv!23099 _values!1278) e!557660)))

(assert (=> start!84590 tp!69918))

(declare-fun array_inv!23100 (array!62465) Bool)

(assert (=> start!84590 (array_inv!23100 _keys!1544)))

(declare-fun b!988933 () Bool)

(declare-fun e!557662 () Bool)

(assert (=> b!988933 (= e!557662 tp_is_empty!23259)))

(declare-fun b!988934 () Bool)

(declare-fun res!661539 () Bool)

(assert (=> b!988934 (=> (not res!661539) (not e!557664))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!988934 (= res!661539 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!988935 () Bool)

(declare-fun e!557659 () Bool)

(assert (=> b!988935 (= e!557664 e!557659)))

(declare-fun res!661533 () Bool)

(assert (=> b!988935 (=> (not res!661533) (not e!557659))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!988935 (= res!661533 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30082 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!438658 () V!35995)

(declare-fun get!15631 (ValueCell!11148 V!35995) V!35995)

(declare-fun dynLambda!1873 (Int (_ BitVec 64)) V!35995)

(assert (=> b!988935 (= lt!438658 (get!15631 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35995)

(declare-fun zeroValue!1220 () V!35995)

(declare-datatypes ((tuple2!14984 0))(
  ( (tuple2!14985 (_1!7502 (_ BitVec 64)) (_2!7502 V!35995)) )
))
(declare-datatypes ((List!20934 0))(
  ( (Nil!20931) (Cons!20930 (h!22092 tuple2!14984) (t!29897 List!20934)) )
))
(declare-datatypes ((ListLongMap!13695 0))(
  ( (ListLongMap!13696 (toList!6863 List!20934)) )
))
(declare-fun lt!438657 () ListLongMap!13695)

(declare-fun getCurrentListMapNoExtraKeys!3513 (array!62465 array!62467 (_ BitVec 32) (_ BitVec 32) V!35995 V!35995 (_ BitVec 32) Int) ListLongMap!13695)

(assert (=> b!988935 (= lt!438657 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438659 () tuple2!14984)

(declare-fun b!988936 () Bool)

(declare-fun getCurrentListMap!3877 (array!62465 array!62467 (_ BitVec 32) (_ BitVec 32) V!35995 V!35995 (_ BitVec 32) Int) ListLongMap!13695)

(declare-fun +!3045 (ListLongMap!13695 tuple2!14984) ListLongMap!13695)

(assert (=> b!988936 (= e!557659 (not (= (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) (+!3045 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438659))))))

(declare-fun lt!438656 () tuple2!14984)

(assert (=> b!988936 (= (+!3045 (+!3045 lt!438657 lt!438656) lt!438659) (+!3045 (+!3045 lt!438657 lt!438659) lt!438656))))

(assert (=> b!988936 (= lt!438659 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))

(assert (=> b!988936 (= lt!438656 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32777 0))(
  ( (Unit!32778) )
))
(declare-fun lt!438660 () Unit!32777)

(declare-fun addCommutativeForDiffKeys!700 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64) V!35995) Unit!32777)

(assert (=> b!988936 (= lt!438660 (addCommutativeForDiffKeys!700 lt!438657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30082 _keys!1544) from!1932) lt!438658))))

(declare-fun b!988937 () Bool)

(declare-fun e!557661 () Bool)

(assert (=> b!988937 (= e!557661 tp_is_empty!23259)))

(declare-fun mapIsEmpty!36930 () Bool)

(declare-fun mapRes!36930 () Bool)

(assert (=> mapIsEmpty!36930 mapRes!36930))

(declare-fun b!988938 () Bool)

(declare-fun res!661538 () Bool)

(assert (=> b!988938 (=> (not res!661538) (not e!557664))))

(declare-datatypes ((List!20935 0))(
  ( (Nil!20932) (Cons!20931 (h!22093 (_ BitVec 64)) (t!29898 List!20935)) )
))
(declare-fun arrayNoDuplicates!0 (array!62465 (_ BitVec 32) List!20935) Bool)

(assert (=> b!988938 (= res!661538 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20932))))

(declare-fun b!988939 () Bool)

(declare-fun res!661536 () Bool)

(assert (=> b!988939 (=> (not res!661536) (not e!557664))))

(assert (=> b!988939 (= res!661536 (and (= (size!30563 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30562 _keys!1544) (size!30563 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36930 () Bool)

(declare-fun tp!69917 () Bool)

(assert (=> mapNonEmpty!36930 (= mapRes!36930 (and tp!69917 e!557662))))

(declare-fun mapKey!36930 () (_ BitVec 32))

(declare-fun mapValue!36930 () ValueCell!11148)

(declare-fun mapRest!36930 () (Array (_ BitVec 32) ValueCell!11148))

(assert (=> mapNonEmpty!36930 (= (arr!30083 _values!1278) (store mapRest!36930 mapKey!36930 mapValue!36930))))

(declare-fun b!988940 () Bool)

(declare-fun res!661540 () Bool)

(assert (=> b!988940 (=> (not res!661540) (not e!557664))))

(assert (=> b!988940 (= res!661540 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30562 _keys!1544))))))

(declare-fun b!988941 () Bool)

(declare-fun res!661534 () Bool)

(assert (=> b!988941 (=> (not res!661534) (not e!557664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988941 (= res!661534 (validKeyInArray!0 (select (arr!30082 _keys!1544) from!1932)))))

(declare-fun b!988942 () Bool)

(assert (=> b!988942 (= e!557660 (and e!557661 mapRes!36930))))

(declare-fun condMapEmpty!36930 () Bool)

(declare-fun mapDefault!36930 () ValueCell!11148)

(assert (=> b!988942 (= condMapEmpty!36930 (= (arr!30083 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11148)) mapDefault!36930)))))

(assert (= (and start!84590 res!661535) b!988939))

(assert (= (and b!988939 res!661536) b!988932))

(assert (= (and b!988932 res!661537) b!988938))

(assert (= (and b!988938 res!661538) b!988940))

(assert (= (and b!988940 res!661540) b!988941))

(assert (= (and b!988941 res!661534) b!988934))

(assert (= (and b!988934 res!661539) b!988935))

(assert (= (and b!988935 res!661533) b!988936))

(assert (= (and b!988942 condMapEmpty!36930) mapIsEmpty!36930))

(assert (= (and b!988942 (not condMapEmpty!36930)) mapNonEmpty!36930))

(get-info :version)

(assert (= (and mapNonEmpty!36930 ((_ is ValueCellFull!11148) mapValue!36930)) b!988933))

(assert (= (and b!988942 ((_ is ValueCellFull!11148) mapDefault!36930)) b!988937))

(assert (= start!84590 b!988942))

(declare-fun b_lambda!15129 () Bool)

(assert (=> (not b_lambda!15129) (not b!988935)))

(declare-fun t!29896 () Bool)

(declare-fun tb!6813 () Bool)

(assert (=> (and start!84590 (= defaultEntry!1281 defaultEntry!1281) t!29896) tb!6813))

(declare-fun result!13615 () Bool)

(assert (=> tb!6813 (= result!13615 tp_is_empty!23259)))

(assert (=> b!988935 t!29896))

(declare-fun b_and!32175 () Bool)

(assert (= b_and!32173 (and (=> t!29896 result!13615) b_and!32175)))

(declare-fun m!916155 () Bool)

(assert (=> mapNonEmpty!36930 m!916155))

(declare-fun m!916157 () Bool)

(assert (=> b!988936 m!916157))

(declare-fun m!916159 () Bool)

(assert (=> b!988936 m!916159))

(declare-fun m!916161 () Bool)

(assert (=> b!988936 m!916161))

(declare-fun m!916163 () Bool)

(assert (=> b!988936 m!916163))

(assert (=> b!988936 m!916159))

(declare-fun m!916165 () Bool)

(assert (=> b!988936 m!916165))

(declare-fun m!916167 () Bool)

(assert (=> b!988936 m!916167))

(assert (=> b!988936 m!916167))

(declare-fun m!916169 () Bool)

(assert (=> b!988936 m!916169))

(assert (=> b!988936 m!916157))

(declare-fun m!916171 () Bool)

(assert (=> b!988936 m!916171))

(assert (=> b!988936 m!916161))

(declare-fun m!916173 () Bool)

(assert (=> b!988936 m!916173))

(assert (=> b!988941 m!916159))

(assert (=> b!988941 m!916159))

(declare-fun m!916175 () Bool)

(assert (=> b!988941 m!916175))

(declare-fun m!916177 () Bool)

(assert (=> start!84590 m!916177))

(declare-fun m!916179 () Bool)

(assert (=> start!84590 m!916179))

(declare-fun m!916181 () Bool)

(assert (=> start!84590 m!916181))

(declare-fun m!916183 () Bool)

(assert (=> b!988932 m!916183))

(declare-fun m!916185 () Bool)

(assert (=> b!988938 m!916185))

(assert (=> b!988935 m!916159))

(declare-fun m!916187 () Bool)

(assert (=> b!988935 m!916187))

(declare-fun m!916189 () Bool)

(assert (=> b!988935 m!916189))

(declare-fun m!916191 () Bool)

(assert (=> b!988935 m!916191))

(assert (=> b!988935 m!916187))

(assert (=> b!988935 m!916191))

(declare-fun m!916193 () Bool)

(assert (=> b!988935 m!916193))

(check-sat (not b!988938) (not b!988936) (not b!988941) (not start!84590) b_and!32175 (not mapNonEmpty!36930) (not b!988935) (not b!988932) (not b_next!20043) tp_is_empty!23259 (not b_lambda!15129))
(check-sat b_and!32175 (not b_next!20043))
(get-model)

(declare-fun b_lambda!15133 () Bool)

(assert (= b_lambda!15129 (or (and start!84590 b_free!20043) b_lambda!15133)))

(check-sat (not b!988938) (not b!988941) (not start!84590) tp_is_empty!23259 b_and!32175 (not mapNonEmpty!36930) (not b!988935) (not b_lambda!15133) (not b!988936) (not b!988932) (not b_next!20043))
(check-sat b_and!32175 (not b_next!20043))
(get-model)

(declare-fun b!988988 () Bool)

(declare-fun e!557690 () Bool)

(declare-fun call!41894 () Bool)

(assert (=> b!988988 (= e!557690 call!41894)))

(declare-fun bm!41891 () Bool)

(assert (=> bm!41891 (= call!41894 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!988989 () Bool)

(declare-fun e!557689 () Bool)

(declare-fun e!557691 () Bool)

(assert (=> b!988989 (= e!557689 e!557691)))

(declare-fun c!100163 () Bool)

(assert (=> b!988989 (= c!100163 (validKeyInArray!0 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!117199 () Bool)

(declare-fun res!661570 () Bool)

(assert (=> d!117199 (=> res!661570 e!557689)))

(assert (=> d!117199 (= res!661570 (bvsge #b00000000000000000000000000000000 (size!30562 _keys!1544)))))

(assert (=> d!117199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!557689)))

(declare-fun b!988990 () Bool)

(assert (=> b!988990 (= e!557691 e!557690)))

(declare-fun lt!438684 () (_ BitVec 64))

(assert (=> b!988990 (= lt!438684 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000))))

(declare-fun lt!438682 () Unit!32777)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62465 (_ BitVec 64) (_ BitVec 32)) Unit!32777)

(assert (=> b!988990 (= lt!438682 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!438684 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!988990 (arrayContainsKey!0 _keys!1544 lt!438684 #b00000000000000000000000000000000)))

(declare-fun lt!438683 () Unit!32777)

(assert (=> b!988990 (= lt!438683 lt!438682)))

(declare-fun res!661569 () Bool)

(declare-datatypes ((SeekEntryResult!9198 0))(
  ( (MissingZero!9198 (index!39162 (_ BitVec 32))) (Found!9198 (index!39163 (_ BitVec 32))) (Intermediate!9198 (undefined!10010 Bool) (index!39164 (_ BitVec 32)) (x!86073 (_ BitVec 32))) (Undefined!9198) (MissingVacant!9198 (index!39165 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62465 (_ BitVec 32)) SeekEntryResult!9198)

(assert (=> b!988990 (= res!661569 (= (seekEntryOrOpen!0 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9198 #b00000000000000000000000000000000)))))

(assert (=> b!988990 (=> (not res!661569) (not e!557690))))

(declare-fun b!988991 () Bool)

(assert (=> b!988991 (= e!557691 call!41894)))

(assert (= (and d!117199 (not res!661570)) b!988989))

(assert (= (and b!988989 c!100163) b!988990))

(assert (= (and b!988989 (not c!100163)) b!988991))

(assert (= (and b!988990 res!661569) b!988988))

(assert (= (or b!988988 b!988991) bm!41891))

(declare-fun m!916235 () Bool)

(assert (=> bm!41891 m!916235))

(declare-fun m!916237 () Bool)

(assert (=> b!988989 m!916237))

(assert (=> b!988989 m!916237))

(declare-fun m!916239 () Bool)

(assert (=> b!988989 m!916239))

(assert (=> b!988990 m!916237))

(declare-fun m!916241 () Bool)

(assert (=> b!988990 m!916241))

(declare-fun m!916243 () Bool)

(assert (=> b!988990 m!916243))

(assert (=> b!988990 m!916237))

(declare-fun m!916245 () Bool)

(assert (=> b!988990 m!916245))

(assert (=> b!988932 d!117199))

(declare-fun d!117201 () Bool)

(assert (=> d!117201 (= (validKeyInArray!0 (select (arr!30082 _keys!1544) from!1932)) (and (not (= (select (arr!30082 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30082 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!988941 d!117201))

(declare-fun d!117203 () Bool)

(assert (=> d!117203 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84590 d!117203))

(declare-fun d!117205 () Bool)

(assert (=> d!117205 (= (array_inv!23099 _values!1278) (bvsge (size!30563 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84590 d!117205))

(declare-fun d!117207 () Bool)

(assert (=> d!117207 (= (array_inv!23100 _keys!1544) (bvsge (size!30562 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84590 d!117207))

(declare-fun b!989002 () Bool)

(declare-fun e!557701 () Bool)

(declare-fun contains!5727 (List!20935 (_ BitVec 64)) Bool)

(assert (=> b!989002 (= e!557701 (contains!5727 Nil!20932 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989003 () Bool)

(declare-fun e!557702 () Bool)

(declare-fun e!557703 () Bool)

(assert (=> b!989003 (= e!557702 e!557703)))

(declare-fun c!100166 () Bool)

(assert (=> b!989003 (= c!100166 (validKeyInArray!0 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989004 () Bool)

(declare-fun call!41897 () Bool)

(assert (=> b!989004 (= e!557703 call!41897)))

(declare-fun bm!41894 () Bool)

(assert (=> bm!41894 (= call!41897 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100166 (Cons!20931 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) Nil!20932) Nil!20932)))))

(declare-fun d!117209 () Bool)

(declare-fun res!661578 () Bool)

(declare-fun e!557700 () Bool)

(assert (=> d!117209 (=> res!661578 e!557700)))

(assert (=> d!117209 (= res!661578 (bvsge #b00000000000000000000000000000000 (size!30562 _keys!1544)))))

(assert (=> d!117209 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20932) e!557700)))

(declare-fun b!989005 () Bool)

(assert (=> b!989005 (= e!557700 e!557702)))

(declare-fun res!661579 () Bool)

(assert (=> b!989005 (=> (not res!661579) (not e!557702))))

(assert (=> b!989005 (= res!661579 (not e!557701))))

(declare-fun res!661577 () Bool)

(assert (=> b!989005 (=> (not res!661577) (not e!557701))))

(assert (=> b!989005 (= res!661577 (validKeyInArray!0 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989006 () Bool)

(assert (=> b!989006 (= e!557703 call!41897)))

(assert (= (and d!117209 (not res!661578)) b!989005))

(assert (= (and b!989005 res!661577) b!989002))

(assert (= (and b!989005 res!661579) b!989003))

(assert (= (and b!989003 c!100166) b!989006))

(assert (= (and b!989003 (not c!100166)) b!989004))

(assert (= (or b!989006 b!989004) bm!41894))

(assert (=> b!989002 m!916237))

(assert (=> b!989002 m!916237))

(declare-fun m!916247 () Bool)

(assert (=> b!989002 m!916247))

(assert (=> b!989003 m!916237))

(assert (=> b!989003 m!916237))

(assert (=> b!989003 m!916239))

(assert (=> bm!41894 m!916237))

(declare-fun m!916249 () Bool)

(assert (=> bm!41894 m!916249))

(assert (=> b!989005 m!916237))

(assert (=> b!989005 m!916237))

(assert (=> b!989005 m!916239))

(assert (=> b!988938 d!117209))

(declare-fun d!117211 () Bool)

(declare-fun c!100169 () Bool)

(assert (=> d!117211 (= c!100169 ((_ is ValueCellFull!11148) (select (arr!30083 _values!1278) from!1932)))))

(declare-fun e!557706 () V!35995)

(assert (=> d!117211 (= (get!15631 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!557706)))

(declare-fun b!989011 () Bool)

(declare-fun get!15632 (ValueCell!11148 V!35995) V!35995)

(assert (=> b!989011 (= e!557706 (get!15632 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!989012 () Bool)

(declare-fun get!15633 (ValueCell!11148 V!35995) V!35995)

(assert (=> b!989012 (= e!557706 (get!15633 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117211 c!100169) b!989011))

(assert (= (and d!117211 (not c!100169)) b!989012))

(assert (=> b!989011 m!916187))

(assert (=> b!989011 m!916191))

(declare-fun m!916251 () Bool)

(assert (=> b!989011 m!916251))

(assert (=> b!989012 m!916187))

(assert (=> b!989012 m!916191))

(declare-fun m!916253 () Bool)

(assert (=> b!989012 m!916253))

(assert (=> b!988935 d!117211))

(declare-fun d!117213 () Bool)

(declare-fun e!557727 () Bool)

(assert (=> d!117213 e!557727))

(declare-fun res!661589 () Bool)

(assert (=> d!117213 (=> (not res!661589) (not e!557727))))

(declare-fun lt!438703 () ListLongMap!13695)

(declare-fun contains!5728 (ListLongMap!13695 (_ BitVec 64)) Bool)

(assert (=> d!117213 (= res!661589 (not (contains!5728 lt!438703 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!557724 () ListLongMap!13695)

(assert (=> d!117213 (= lt!438703 e!557724)))

(declare-fun c!100180 () Bool)

(assert (=> d!117213 (= c!100180 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(assert (=> d!117213 (validMask!0 mask!1948)))

(assert (=> d!117213 (= (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438703)))

(declare-fun b!989037 () Bool)

(assert (=> b!989037 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(assert (=> b!989037 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30563 _values!1278)))))

(declare-fun e!557726 () Bool)

(declare-fun apply!930 (ListLongMap!13695 (_ BitVec 64)) V!35995)

(assert (=> b!989037 (= e!557726 (= (apply!930 lt!438703 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!989038 () Bool)

(declare-fun e!557721 () Bool)

(assert (=> b!989038 (= e!557721 e!557726)))

(assert (=> b!989038 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(declare-fun res!661591 () Bool)

(assert (=> b!989038 (= res!661591 (contains!5728 lt!438703 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!989038 (=> (not res!661591) (not e!557726))))

(declare-fun b!989039 () Bool)

(declare-fun e!557722 () Bool)

(assert (=> b!989039 (= e!557721 e!557722)))

(declare-fun c!100179 () Bool)

(assert (=> b!989039 (= c!100179 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(declare-fun bm!41897 () Bool)

(declare-fun call!41900 () ListLongMap!13695)

(assert (=> bm!41897 (= call!41900 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!989040 () Bool)

(declare-fun e!557723 () ListLongMap!13695)

(assert (=> b!989040 (= e!557723 call!41900)))

(declare-fun b!989041 () Bool)

(assert (=> b!989041 (= e!557724 (ListLongMap!13696 Nil!20931))))

(declare-fun b!989042 () Bool)

(assert (=> b!989042 (= e!557727 e!557721)))

(declare-fun c!100181 () Bool)

(declare-fun e!557725 () Bool)

(assert (=> b!989042 (= c!100181 e!557725)))

(declare-fun res!661588 () Bool)

(assert (=> b!989042 (=> (not res!661588) (not e!557725))))

(assert (=> b!989042 (= res!661588 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(declare-fun b!989043 () Bool)

(declare-fun lt!438705 () Unit!32777)

(declare-fun lt!438702 () Unit!32777)

(assert (=> b!989043 (= lt!438705 lt!438702)))

(declare-fun lt!438704 () (_ BitVec 64))

(declare-fun lt!438699 () (_ BitVec 64))

(declare-fun lt!438700 () ListLongMap!13695)

(declare-fun lt!438701 () V!35995)

(assert (=> b!989043 (not (contains!5728 (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701)) lt!438699))))

(declare-fun addStillNotContains!236 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64)) Unit!32777)

(assert (=> b!989043 (= lt!438702 (addStillNotContains!236 lt!438700 lt!438704 lt!438701 lt!438699))))

(assert (=> b!989043 (= lt!438699 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!989043 (= lt!438701 (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!989043 (= lt!438704 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!989043 (= lt!438700 call!41900)))

(assert (=> b!989043 (= e!557723 (+!3045 call!41900 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!989044 () Bool)

(assert (=> b!989044 (= e!557722 (= lt!438703 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!989045 () Bool)

(declare-fun res!661590 () Bool)

(assert (=> b!989045 (=> (not res!661590) (not e!557727))))

(assert (=> b!989045 (= res!661590 (not (contains!5728 lt!438703 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!989046 () Bool)

(assert (=> b!989046 (= e!557724 e!557723)))

(declare-fun c!100178 () Bool)

(assert (=> b!989046 (= c!100178 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!989047 () Bool)

(declare-fun isEmpty!728 (ListLongMap!13695) Bool)

(assert (=> b!989047 (= e!557722 (isEmpty!728 lt!438703))))

(declare-fun b!989048 () Bool)

(assert (=> b!989048 (= e!557725 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!989048 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(assert (= (and d!117213 c!100180) b!989041))

(assert (= (and d!117213 (not c!100180)) b!989046))

(assert (= (and b!989046 c!100178) b!989043))

(assert (= (and b!989046 (not c!100178)) b!989040))

(assert (= (or b!989043 b!989040) bm!41897))

(assert (= (and d!117213 res!661589) b!989045))

(assert (= (and b!989045 res!661590) b!989042))

(assert (= (and b!989042 res!661588) b!989048))

(assert (= (and b!989042 c!100181) b!989038))

(assert (= (and b!989042 (not c!100181)) b!989039))

(assert (= (and b!989038 res!661591) b!989037))

(assert (= (and b!989039 c!100179) b!989044))

(assert (= (and b!989039 (not c!100179)) b!989047))

(declare-fun b_lambda!15135 () Bool)

(assert (=> (not b_lambda!15135) (not b!989037)))

(assert (=> b!989037 t!29896))

(declare-fun b_and!32181 () Bool)

(assert (= b_and!32175 (and (=> t!29896 result!13615) b_and!32181)))

(declare-fun b_lambda!15137 () Bool)

(assert (=> (not b_lambda!15137) (not b!989043)))

(assert (=> b!989043 t!29896))

(declare-fun b_and!32183 () Bool)

(assert (= b_and!32181 (and (=> t!29896 result!13615) b_and!32183)))

(declare-fun m!916255 () Bool)

(assert (=> b!989048 m!916255))

(assert (=> b!989048 m!916255))

(declare-fun m!916257 () Bool)

(assert (=> b!989048 m!916257))

(declare-fun m!916259 () Bool)

(assert (=> b!989043 m!916259))

(declare-fun m!916261 () Bool)

(assert (=> b!989043 m!916261))

(assert (=> b!989043 m!916191))

(declare-fun m!916263 () Bool)

(assert (=> b!989043 m!916263))

(assert (=> b!989043 m!916191))

(assert (=> b!989043 m!916261))

(declare-fun m!916265 () Bool)

(assert (=> b!989043 m!916265))

(assert (=> b!989043 m!916259))

(declare-fun m!916267 () Bool)

(assert (=> b!989043 m!916267))

(assert (=> b!989043 m!916255))

(declare-fun m!916269 () Bool)

(assert (=> b!989043 m!916269))

(declare-fun m!916271 () Bool)

(assert (=> b!989044 m!916271))

(assert (=> b!989046 m!916255))

(assert (=> b!989046 m!916255))

(assert (=> b!989046 m!916257))

(assert (=> b!989038 m!916255))

(assert (=> b!989038 m!916255))

(declare-fun m!916273 () Bool)

(assert (=> b!989038 m!916273))

(declare-fun m!916275 () Bool)

(assert (=> d!117213 m!916275))

(assert (=> d!117213 m!916177))

(assert (=> bm!41897 m!916271))

(declare-fun m!916277 () Bool)

(assert (=> b!989047 m!916277))

(assert (=> b!989037 m!916261))

(assert (=> b!989037 m!916191))

(assert (=> b!989037 m!916263))

(assert (=> b!989037 m!916191))

(assert (=> b!989037 m!916261))

(assert (=> b!989037 m!916255))

(assert (=> b!989037 m!916255))

(declare-fun m!916279 () Bool)

(assert (=> b!989037 m!916279))

(declare-fun m!916281 () Bool)

(assert (=> b!989045 m!916281))

(assert (=> b!988935 d!117213))

(declare-fun d!117215 () Bool)

(declare-fun e!557730 () Bool)

(assert (=> d!117215 e!557730))

(declare-fun res!661597 () Bool)

(assert (=> d!117215 (=> (not res!661597) (not e!557730))))

(declare-fun lt!438714 () ListLongMap!13695)

(assert (=> d!117215 (= res!661597 (contains!5728 lt!438714 (_1!7502 lt!438656)))))

(declare-fun lt!438716 () List!20934)

(assert (=> d!117215 (= lt!438714 (ListLongMap!13696 lt!438716))))

(declare-fun lt!438717 () Unit!32777)

(declare-fun lt!438715 () Unit!32777)

(assert (=> d!117215 (= lt!438717 lt!438715)))

(declare-datatypes ((Option!522 0))(
  ( (Some!521 (v!14249 V!35995)) (None!520) )
))
(declare-fun getValueByKey!516 (List!20934 (_ BitVec 64)) Option!522)

(assert (=> d!117215 (= (getValueByKey!516 lt!438716 (_1!7502 lt!438656)) (Some!521 (_2!7502 lt!438656)))))

(declare-fun lemmaContainsTupThenGetReturnValue!273 (List!20934 (_ BitVec 64) V!35995) Unit!32777)

(assert (=> d!117215 (= lt!438715 (lemmaContainsTupThenGetReturnValue!273 lt!438716 (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(declare-fun insertStrictlySorted!329 (List!20934 (_ BitVec 64) V!35995) List!20934)

(assert (=> d!117215 (= lt!438716 (insertStrictlySorted!329 (toList!6863 lt!438657) (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(assert (=> d!117215 (= (+!3045 lt!438657 lt!438656) lt!438714)))

(declare-fun b!989053 () Bool)

(declare-fun res!661596 () Bool)

(assert (=> b!989053 (=> (not res!661596) (not e!557730))))

(assert (=> b!989053 (= res!661596 (= (getValueByKey!516 (toList!6863 lt!438714) (_1!7502 lt!438656)) (Some!521 (_2!7502 lt!438656))))))

(declare-fun b!989054 () Bool)

(declare-fun contains!5729 (List!20934 tuple2!14984) Bool)

(assert (=> b!989054 (= e!557730 (contains!5729 (toList!6863 lt!438714) lt!438656))))

(assert (= (and d!117215 res!661597) b!989053))

(assert (= (and b!989053 res!661596) b!989054))

(declare-fun m!916283 () Bool)

(assert (=> d!117215 m!916283))

(declare-fun m!916285 () Bool)

(assert (=> d!117215 m!916285))

(declare-fun m!916287 () Bool)

(assert (=> d!117215 m!916287))

(declare-fun m!916289 () Bool)

(assert (=> d!117215 m!916289))

(declare-fun m!916291 () Bool)

(assert (=> b!989053 m!916291))

(declare-fun m!916293 () Bool)

(assert (=> b!989054 m!916293))

(assert (=> b!988936 d!117215))

(declare-fun d!117217 () Bool)

(declare-fun e!557731 () Bool)

(assert (=> d!117217 e!557731))

(declare-fun res!661599 () Bool)

(assert (=> d!117217 (=> (not res!661599) (not e!557731))))

(declare-fun lt!438718 () ListLongMap!13695)

(assert (=> d!117217 (= res!661599 (contains!5728 lt!438718 (_1!7502 lt!438659)))))

(declare-fun lt!438720 () List!20934)

(assert (=> d!117217 (= lt!438718 (ListLongMap!13696 lt!438720))))

(declare-fun lt!438721 () Unit!32777)

(declare-fun lt!438719 () Unit!32777)

(assert (=> d!117217 (= lt!438721 lt!438719)))

(assert (=> d!117217 (= (getValueByKey!516 lt!438720 (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659)))))

(assert (=> d!117217 (= lt!438719 (lemmaContainsTupThenGetReturnValue!273 lt!438720 (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(assert (=> d!117217 (= lt!438720 (insertStrictlySorted!329 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(assert (=> d!117217 (= (+!3045 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438659) lt!438718)))

(declare-fun b!989055 () Bool)

(declare-fun res!661598 () Bool)

(assert (=> b!989055 (=> (not res!661598) (not e!557731))))

(assert (=> b!989055 (= res!661598 (= (getValueByKey!516 (toList!6863 lt!438718) (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659))))))

(declare-fun b!989056 () Bool)

(assert (=> b!989056 (= e!557731 (contains!5729 (toList!6863 lt!438718) lt!438659))))

(assert (= (and d!117217 res!661599) b!989055))

(assert (= (and b!989055 res!661598) b!989056))

(declare-fun m!916295 () Bool)

(assert (=> d!117217 m!916295))

(declare-fun m!916297 () Bool)

(assert (=> d!117217 m!916297))

(declare-fun m!916299 () Bool)

(assert (=> d!117217 m!916299))

(declare-fun m!916301 () Bool)

(assert (=> d!117217 m!916301))

(declare-fun m!916303 () Bool)

(assert (=> b!989055 m!916303))

(declare-fun m!916305 () Bool)

(assert (=> b!989056 m!916305))

(assert (=> b!988936 d!117217))

(declare-fun d!117219 () Bool)

(declare-fun e!557732 () Bool)

(assert (=> d!117219 e!557732))

(declare-fun res!661601 () Bool)

(assert (=> d!117219 (=> (not res!661601) (not e!557732))))

(declare-fun lt!438722 () ListLongMap!13695)

(assert (=> d!117219 (= res!661601 (contains!5728 lt!438722 (_1!7502 lt!438659)))))

(declare-fun lt!438724 () List!20934)

(assert (=> d!117219 (= lt!438722 (ListLongMap!13696 lt!438724))))

(declare-fun lt!438725 () Unit!32777)

(declare-fun lt!438723 () Unit!32777)

(assert (=> d!117219 (= lt!438725 lt!438723)))

(assert (=> d!117219 (= (getValueByKey!516 lt!438724 (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659)))))

(assert (=> d!117219 (= lt!438723 (lemmaContainsTupThenGetReturnValue!273 lt!438724 (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(assert (=> d!117219 (= lt!438724 (insertStrictlySorted!329 (toList!6863 (+!3045 lt!438657 lt!438656)) (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(assert (=> d!117219 (= (+!3045 (+!3045 lt!438657 lt!438656) lt!438659) lt!438722)))

(declare-fun b!989057 () Bool)

(declare-fun res!661600 () Bool)

(assert (=> b!989057 (=> (not res!661600) (not e!557732))))

(assert (=> b!989057 (= res!661600 (= (getValueByKey!516 (toList!6863 lt!438722) (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659))))))

(declare-fun b!989058 () Bool)

(assert (=> b!989058 (= e!557732 (contains!5729 (toList!6863 lt!438722) lt!438659))))

(assert (= (and d!117219 res!661601) b!989057))

(assert (= (and b!989057 res!661600) b!989058))

(declare-fun m!916307 () Bool)

(assert (=> d!117219 m!916307))

(declare-fun m!916309 () Bool)

(assert (=> d!117219 m!916309))

(declare-fun m!916311 () Bool)

(assert (=> d!117219 m!916311))

(declare-fun m!916313 () Bool)

(assert (=> d!117219 m!916313))

(declare-fun m!916315 () Bool)

(assert (=> b!989057 m!916315))

(declare-fun m!916317 () Bool)

(assert (=> b!989058 m!916317))

(assert (=> b!988936 d!117219))

(declare-fun b!989101 () Bool)

(declare-fun e!557764 () Bool)

(declare-fun e!557770 () Bool)

(assert (=> b!989101 (= e!557764 e!557770)))

(declare-fun res!661626 () Bool)

(declare-fun call!41920 () Bool)

(assert (=> b!989101 (= res!661626 call!41920)))

(assert (=> b!989101 (=> (not res!661626) (not e!557770))))

(declare-fun bm!41912 () Bool)

(declare-fun call!41921 () ListLongMap!13695)

(declare-fun call!41915 () ListLongMap!13695)

(assert (=> bm!41912 (= call!41921 call!41915)))

(declare-fun b!989103 () Bool)

(assert (=> b!989103 (= e!557764 (not call!41920))))

(declare-fun bm!41913 () Bool)

(declare-fun call!41917 () ListLongMap!13695)

(assert (=> bm!41913 (= call!41915 call!41917)))

(declare-fun b!989104 () Bool)

(declare-fun res!661621 () Bool)

(declare-fun e!557768 () Bool)

(assert (=> b!989104 (=> (not res!661621) (not e!557768))))

(assert (=> b!989104 (= res!661621 e!557764)))

(declare-fun c!100199 () Bool)

(assert (=> b!989104 (= c!100199 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!41914 () Bool)

(declare-fun c!100196 () Bool)

(declare-fun c!100194 () Bool)

(declare-fun call!41918 () ListLongMap!13695)

(assert (=> bm!41914 (= call!41918 (+!3045 (ite c!100194 call!41917 (ite c!100196 call!41915 call!41921)) (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun b!989105 () Bool)

(declare-fun e!557765 () Bool)

(assert (=> b!989105 (= e!557765 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun bm!41915 () Bool)

(assert (=> bm!41915 (= call!41917 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989106 () Bool)

(declare-fun e!557767 () Bool)

(declare-fun e!557760 () Bool)

(assert (=> b!989106 (= e!557767 e!557760)))

(declare-fun res!661622 () Bool)

(assert (=> b!989106 (=> (not res!661622) (not e!557760))))

(declare-fun lt!438789 () ListLongMap!13695)

(assert (=> b!989106 (= res!661622 (contains!5728 lt!438789 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!989106 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(declare-fun b!989107 () Bool)

(declare-fun e!557763 () Bool)

(declare-fun e!557766 () Bool)

(assert (=> b!989107 (= e!557763 e!557766)))

(declare-fun res!661627 () Bool)

(declare-fun call!41919 () Bool)

(assert (=> b!989107 (= res!661627 call!41919)))

(assert (=> b!989107 (=> (not res!661627) (not e!557766))))

(declare-fun b!989108 () Bool)

(assert (=> b!989108 (= e!557768 e!557763)))

(declare-fun c!100197 () Bool)

(assert (=> b!989108 (= c!100197 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!989109 () Bool)

(assert (=> b!989109 (= e!557770 (= (apply!930 lt!438789 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun d!117221 () Bool)

(assert (=> d!117221 e!557768))

(declare-fun res!661624 () Bool)

(assert (=> d!117221 (=> (not res!661624) (not e!557768))))

(assert (=> d!117221 (= res!661624 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))))

(declare-fun lt!438780 () ListLongMap!13695)

(assert (=> d!117221 (= lt!438789 lt!438780)))

(declare-fun lt!438770 () Unit!32777)

(declare-fun e!557761 () Unit!32777)

(assert (=> d!117221 (= lt!438770 e!557761)))

(declare-fun c!100195 () Bool)

(assert (=> d!117221 (= c!100195 e!557765)))

(declare-fun res!661625 () Bool)

(assert (=> d!117221 (=> (not res!661625) (not e!557765))))

(assert (=> d!117221 (= res!661625 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(declare-fun e!557771 () ListLongMap!13695)

(assert (=> d!117221 (= lt!438780 e!557771)))

(assert (=> d!117221 (= c!100194 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!117221 (validMask!0 mask!1948)))

(assert (=> d!117221 (= (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438789)))

(declare-fun b!989102 () Bool)

(assert (=> b!989102 (= e!557771 (+!3045 call!41918 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun bm!41916 () Bool)

(declare-fun call!41916 () ListLongMap!13695)

(assert (=> bm!41916 (= call!41916 call!41918)))

(declare-fun b!989110 () Bool)

(declare-fun Unit!32779 () Unit!32777)

(assert (=> b!989110 (= e!557761 Unit!32779)))

(declare-fun b!989111 () Bool)

(declare-fun e!557759 () Bool)

(assert (=> b!989111 (= e!557759 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun bm!41917 () Bool)

(assert (=> bm!41917 (= call!41920 (contains!5728 lt!438789 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989112 () Bool)

(assert (=> b!989112 (= e!557766 (= (apply!930 lt!438789 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun b!989113 () Bool)

(declare-fun lt!438777 () Unit!32777)

(assert (=> b!989113 (= e!557761 lt!438777)))

(declare-fun lt!438782 () ListLongMap!13695)

(assert (=> b!989113 (= lt!438782 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438778 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438778 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438791 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438791 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!438788 () Unit!32777)

(declare-fun addStillContains!619 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64)) Unit!32777)

(assert (=> b!989113 (= lt!438788 (addStillContains!619 lt!438782 lt!438778 zeroValue!1220 lt!438791))))

(assert (=> b!989113 (contains!5728 (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220)) lt!438791)))

(declare-fun lt!438786 () Unit!32777)

(assert (=> b!989113 (= lt!438786 lt!438788)))

(declare-fun lt!438772 () ListLongMap!13695)

(assert (=> b!989113 (= lt!438772 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438779 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438779 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438783 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438783 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!438784 () Unit!32777)

(declare-fun addApplyDifferent!471 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64)) Unit!32777)

(assert (=> b!989113 (= lt!438784 (addApplyDifferent!471 lt!438772 lt!438779 minValue!1220 lt!438783))))

(assert (=> b!989113 (= (apply!930 (+!3045 lt!438772 (tuple2!14985 lt!438779 minValue!1220)) lt!438783) (apply!930 lt!438772 lt!438783))))

(declare-fun lt!438773 () Unit!32777)

(assert (=> b!989113 (= lt!438773 lt!438784)))

(declare-fun lt!438790 () ListLongMap!13695)

(assert (=> b!989113 (= lt!438790 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438774 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438774 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438776 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438776 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!438785 () Unit!32777)

(assert (=> b!989113 (= lt!438785 (addApplyDifferent!471 lt!438790 lt!438774 zeroValue!1220 lt!438776))))

(assert (=> b!989113 (= (apply!930 (+!3045 lt!438790 (tuple2!14985 lt!438774 zeroValue!1220)) lt!438776) (apply!930 lt!438790 lt!438776))))

(declare-fun lt!438787 () Unit!32777)

(assert (=> b!989113 (= lt!438787 lt!438785)))

(declare-fun lt!438775 () ListLongMap!13695)

(assert (=> b!989113 (= lt!438775 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438771 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438771 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438781 () (_ BitVec 64))

(assert (=> b!989113 (= lt!438781 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!989113 (= lt!438777 (addApplyDifferent!471 lt!438775 lt!438771 minValue!1220 lt!438781))))

(assert (=> b!989113 (= (apply!930 (+!3045 lt!438775 (tuple2!14985 lt!438771 minValue!1220)) lt!438781) (apply!930 lt!438775 lt!438781))))

(declare-fun b!989114 () Bool)

(assert (=> b!989114 (= e!557760 (= (apply!930 lt!438789 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!989114 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30563 _values!1278)))))

(assert (=> b!989114 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(declare-fun b!989115 () Bool)

(declare-fun c!100198 () Bool)

(assert (=> b!989115 (= c!100198 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!557769 () ListLongMap!13695)

(declare-fun e!557762 () ListLongMap!13695)

(assert (=> b!989115 (= e!557769 e!557762)))

(declare-fun b!989116 () Bool)

(assert (=> b!989116 (= e!557771 e!557769)))

(assert (=> b!989116 (= c!100196 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41918 () Bool)

(assert (=> bm!41918 (= call!41919 (contains!5728 lt!438789 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989117 () Bool)

(assert (=> b!989117 (= e!557769 call!41916)))

(declare-fun b!989118 () Bool)

(declare-fun res!661628 () Bool)

(assert (=> b!989118 (=> (not res!661628) (not e!557768))))

(assert (=> b!989118 (= res!661628 e!557767)))

(declare-fun res!661620 () Bool)

(assert (=> b!989118 (=> res!661620 e!557767)))

(assert (=> b!989118 (= res!661620 (not e!557759))))

(declare-fun res!661623 () Bool)

(assert (=> b!989118 (=> (not res!661623) (not e!557759))))

(assert (=> b!989118 (= res!661623 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30562 _keys!1544)))))

(declare-fun b!989119 () Bool)

(assert (=> b!989119 (= e!557762 call!41921)))

(declare-fun b!989120 () Bool)

(assert (=> b!989120 (= e!557763 (not call!41919))))

(declare-fun b!989121 () Bool)

(assert (=> b!989121 (= e!557762 call!41916)))

(assert (= (and d!117221 c!100194) b!989102))

(assert (= (and d!117221 (not c!100194)) b!989116))

(assert (= (and b!989116 c!100196) b!989117))

(assert (= (and b!989116 (not c!100196)) b!989115))

(assert (= (and b!989115 c!100198) b!989121))

(assert (= (and b!989115 (not c!100198)) b!989119))

(assert (= (or b!989121 b!989119) bm!41912))

(assert (= (or b!989117 bm!41912) bm!41913))

(assert (= (or b!989117 b!989121) bm!41916))

(assert (= (or b!989102 bm!41913) bm!41915))

(assert (= (or b!989102 bm!41916) bm!41914))

(assert (= (and d!117221 res!661625) b!989105))

(assert (= (and d!117221 c!100195) b!989113))

(assert (= (and d!117221 (not c!100195)) b!989110))

(assert (= (and d!117221 res!661624) b!989118))

(assert (= (and b!989118 res!661623) b!989111))

(assert (= (and b!989118 (not res!661620)) b!989106))

(assert (= (and b!989106 res!661622) b!989114))

(assert (= (and b!989118 res!661628) b!989104))

(assert (= (and b!989104 c!100199) b!989101))

(assert (= (and b!989104 (not c!100199)) b!989103))

(assert (= (and b!989101 res!661626) b!989109))

(assert (= (or b!989101 b!989103) bm!41917))

(assert (= (and b!989104 res!661621) b!989108))

(assert (= (and b!989108 c!100197) b!989107))

(assert (= (and b!989108 (not c!100197)) b!989120))

(assert (= (and b!989107 res!661627) b!989112))

(assert (= (or b!989107 b!989120) bm!41918))

(declare-fun b_lambda!15139 () Bool)

(assert (=> (not b_lambda!15139) (not b!989114)))

(assert (=> b!989114 t!29896))

(declare-fun b_and!32185 () Bool)

(assert (= b_and!32183 (and (=> t!29896 result!13615) b_and!32185)))

(assert (=> b!989105 m!916255))

(assert (=> b!989105 m!916255))

(assert (=> b!989105 m!916257))

(assert (=> d!117221 m!916177))

(assert (=> bm!41915 m!916189))

(declare-fun m!916319 () Bool)

(assert (=> bm!41918 m!916319))

(assert (=> b!989111 m!916255))

(assert (=> b!989111 m!916255))

(assert (=> b!989111 m!916257))

(declare-fun m!916321 () Bool)

(assert (=> bm!41917 m!916321))

(declare-fun m!916323 () Bool)

(assert (=> b!989109 m!916323))

(assert (=> b!989106 m!916255))

(assert (=> b!989106 m!916255))

(declare-fun m!916325 () Bool)

(assert (=> b!989106 m!916325))

(assert (=> b!989114 m!916191))

(assert (=> b!989114 m!916255))

(assert (=> b!989114 m!916255))

(declare-fun m!916327 () Bool)

(assert (=> b!989114 m!916327))

(assert (=> b!989114 m!916261))

(assert (=> b!989114 m!916191))

(assert (=> b!989114 m!916263))

(assert (=> b!989114 m!916261))

(declare-fun m!916329 () Bool)

(assert (=> b!989112 m!916329))

(declare-fun m!916331 () Bool)

(assert (=> b!989102 m!916331))

(declare-fun m!916333 () Bool)

(assert (=> bm!41914 m!916333))

(declare-fun m!916335 () Bool)

(assert (=> b!989113 m!916335))

(declare-fun m!916337 () Bool)

(assert (=> b!989113 m!916337))

(declare-fun m!916339 () Bool)

(assert (=> b!989113 m!916339))

(declare-fun m!916341 () Bool)

(assert (=> b!989113 m!916341))

(declare-fun m!916343 () Bool)

(assert (=> b!989113 m!916343))

(declare-fun m!916345 () Bool)

(assert (=> b!989113 m!916345))

(declare-fun m!916347 () Bool)

(assert (=> b!989113 m!916347))

(declare-fun m!916349 () Bool)

(assert (=> b!989113 m!916349))

(declare-fun m!916351 () Bool)

(assert (=> b!989113 m!916351))

(declare-fun m!916353 () Bool)

(assert (=> b!989113 m!916353))

(assert (=> b!989113 m!916339))

(declare-fun m!916355 () Bool)

(assert (=> b!989113 m!916355))

(assert (=> b!989113 m!916189))

(assert (=> b!989113 m!916351))

(declare-fun m!916357 () Bool)

(assert (=> b!989113 m!916357))

(declare-fun m!916359 () Bool)

(assert (=> b!989113 m!916359))

(declare-fun m!916361 () Bool)

(assert (=> b!989113 m!916361))

(assert (=> b!989113 m!916335))

(assert (=> b!989113 m!916255))

(declare-fun m!916363 () Bool)

(assert (=> b!989113 m!916363))

(assert (=> b!989113 m!916357))

(assert (=> b!988936 d!117221))

(declare-fun d!117223 () Bool)

(declare-fun e!557772 () Bool)

(assert (=> d!117223 e!557772))

(declare-fun res!661630 () Bool)

(assert (=> d!117223 (=> (not res!661630) (not e!557772))))

(declare-fun lt!438792 () ListLongMap!13695)

(assert (=> d!117223 (= res!661630 (contains!5728 lt!438792 (_1!7502 lt!438659)))))

(declare-fun lt!438794 () List!20934)

(assert (=> d!117223 (= lt!438792 (ListLongMap!13696 lt!438794))))

(declare-fun lt!438795 () Unit!32777)

(declare-fun lt!438793 () Unit!32777)

(assert (=> d!117223 (= lt!438795 lt!438793)))

(assert (=> d!117223 (= (getValueByKey!516 lt!438794 (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659)))))

(assert (=> d!117223 (= lt!438793 (lemmaContainsTupThenGetReturnValue!273 lt!438794 (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(assert (=> d!117223 (= lt!438794 (insertStrictlySorted!329 (toList!6863 lt!438657) (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(assert (=> d!117223 (= (+!3045 lt!438657 lt!438659) lt!438792)))

(declare-fun b!989122 () Bool)

(declare-fun res!661629 () Bool)

(assert (=> b!989122 (=> (not res!661629) (not e!557772))))

(assert (=> b!989122 (= res!661629 (= (getValueByKey!516 (toList!6863 lt!438792) (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659))))))

(declare-fun b!989123 () Bool)

(assert (=> b!989123 (= e!557772 (contains!5729 (toList!6863 lt!438792) lt!438659))))

(assert (= (and d!117223 res!661630) b!989122))

(assert (= (and b!989122 res!661629) b!989123))

(declare-fun m!916365 () Bool)

(assert (=> d!117223 m!916365))

(declare-fun m!916367 () Bool)

(assert (=> d!117223 m!916367))

(declare-fun m!916369 () Bool)

(assert (=> d!117223 m!916369))

(declare-fun m!916371 () Bool)

(assert (=> d!117223 m!916371))

(declare-fun m!916373 () Bool)

(assert (=> b!989122 m!916373))

(declare-fun m!916375 () Bool)

(assert (=> b!989123 m!916375))

(assert (=> b!988936 d!117223))

(declare-fun d!117225 () Bool)

(assert (=> d!117225 (= (+!3045 (+!3045 lt!438657 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (+!3045 (+!3045 lt!438657 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun lt!438798 () Unit!32777)

(declare-fun choose!1618 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64) V!35995) Unit!32777)

(assert (=> d!117225 (= lt!438798 (choose!1618 lt!438657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30082 _keys!1544) from!1932) lt!438658))))

(assert (=> d!117225 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30082 _keys!1544) from!1932)))))

(assert (=> d!117225 (= (addCommutativeForDiffKeys!700 lt!438657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30082 _keys!1544) from!1932) lt!438658) lt!438798)))

(declare-fun bs!28068 () Bool)

(assert (= bs!28068 d!117225))

(declare-fun m!916377 () Bool)

(assert (=> bs!28068 m!916377))

(declare-fun m!916379 () Bool)

(assert (=> bs!28068 m!916379))

(declare-fun m!916381 () Bool)

(assert (=> bs!28068 m!916381))

(assert (=> bs!28068 m!916159))

(declare-fun m!916383 () Bool)

(assert (=> bs!28068 m!916383))

(assert (=> bs!28068 m!916379))

(assert (=> bs!28068 m!916377))

(declare-fun m!916385 () Bool)

(assert (=> bs!28068 m!916385))

(assert (=> b!988936 d!117225))

(declare-fun b!989124 () Bool)

(declare-fun e!557778 () Bool)

(declare-fun e!557784 () Bool)

(assert (=> b!989124 (= e!557778 e!557784)))

(declare-fun res!661637 () Bool)

(declare-fun call!41927 () Bool)

(assert (=> b!989124 (= res!661637 call!41927)))

(assert (=> b!989124 (=> (not res!661637) (not e!557784))))

(declare-fun bm!41919 () Bool)

(declare-fun call!41928 () ListLongMap!13695)

(declare-fun call!41922 () ListLongMap!13695)

(assert (=> bm!41919 (= call!41928 call!41922)))

(declare-fun b!989126 () Bool)

(assert (=> b!989126 (= e!557778 (not call!41927))))

(declare-fun bm!41920 () Bool)

(declare-fun call!41924 () ListLongMap!13695)

(assert (=> bm!41920 (= call!41922 call!41924)))

(declare-fun b!989127 () Bool)

(declare-fun res!661632 () Bool)

(declare-fun e!557782 () Bool)

(assert (=> b!989127 (=> (not res!661632) (not e!557782))))

(assert (=> b!989127 (= res!661632 e!557778)))

(declare-fun c!100205 () Bool)

(assert (=> b!989127 (= c!100205 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!41925 () ListLongMap!13695)

(declare-fun c!100200 () Bool)

(declare-fun bm!41921 () Bool)

(declare-fun c!100202 () Bool)

(assert (=> bm!41921 (= call!41925 (+!3045 (ite c!100200 call!41924 (ite c!100202 call!41922 call!41928)) (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun b!989128 () Bool)

(declare-fun e!557779 () Bool)

(assert (=> b!989128 (= e!557779 (validKeyInArray!0 (select (arr!30082 _keys!1544) from!1932)))))

(declare-fun bm!41922 () Bool)

(assert (=> bm!41922 (= call!41924 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun b!989129 () Bool)

(declare-fun e!557781 () Bool)

(declare-fun e!557774 () Bool)

(assert (=> b!989129 (= e!557781 e!557774)))

(declare-fun res!661633 () Bool)

(assert (=> b!989129 (=> (not res!661633) (not e!557774))))

(declare-fun lt!438818 () ListLongMap!13695)

(assert (=> b!989129 (= res!661633 (contains!5728 lt!438818 (select (arr!30082 _keys!1544) from!1932)))))

(assert (=> b!989129 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30562 _keys!1544)))))

(declare-fun b!989130 () Bool)

(declare-fun e!557777 () Bool)

(declare-fun e!557780 () Bool)

(assert (=> b!989130 (= e!557777 e!557780)))

(declare-fun res!661638 () Bool)

(declare-fun call!41926 () Bool)

(assert (=> b!989130 (= res!661638 call!41926)))

(assert (=> b!989130 (=> (not res!661638) (not e!557780))))

(declare-fun b!989131 () Bool)

(assert (=> b!989131 (= e!557782 e!557777)))

(declare-fun c!100203 () Bool)

(assert (=> b!989131 (= c!100203 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!989132 () Bool)

(assert (=> b!989132 (= e!557784 (= (apply!930 lt!438818 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun d!117227 () Bool)

(assert (=> d!117227 e!557782))

(declare-fun res!661635 () Bool)

(assert (=> d!117227 (=> (not res!661635) (not e!557782))))

(assert (=> d!117227 (= res!661635 (or (bvsge from!1932 (size!30562 _keys!1544)) (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30562 _keys!1544)))))))

(declare-fun lt!438809 () ListLongMap!13695)

(assert (=> d!117227 (= lt!438818 lt!438809)))

(declare-fun lt!438799 () Unit!32777)

(declare-fun e!557775 () Unit!32777)

(assert (=> d!117227 (= lt!438799 e!557775)))

(declare-fun c!100201 () Bool)

(assert (=> d!117227 (= c!100201 e!557779)))

(declare-fun res!661636 () Bool)

(assert (=> d!117227 (=> (not res!661636) (not e!557779))))

(assert (=> d!117227 (= res!661636 (bvslt from!1932 (size!30562 _keys!1544)))))

(declare-fun e!557785 () ListLongMap!13695)

(assert (=> d!117227 (= lt!438809 e!557785)))

(assert (=> d!117227 (= c!100200 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!117227 (validMask!0 mask!1948)))

(assert (=> d!117227 (= (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!438818)))

(declare-fun b!989125 () Bool)

(assert (=> b!989125 (= e!557785 (+!3045 call!41925 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun bm!41923 () Bool)

(declare-fun call!41923 () ListLongMap!13695)

(assert (=> bm!41923 (= call!41923 call!41925)))

(declare-fun b!989133 () Bool)

(declare-fun Unit!32780 () Unit!32777)

(assert (=> b!989133 (= e!557775 Unit!32780)))

(declare-fun b!989134 () Bool)

(declare-fun e!557773 () Bool)

(assert (=> b!989134 (= e!557773 (validKeyInArray!0 (select (arr!30082 _keys!1544) from!1932)))))

(declare-fun bm!41924 () Bool)

(assert (=> bm!41924 (= call!41927 (contains!5728 lt!438818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989135 () Bool)

(assert (=> b!989135 (= e!557780 (= (apply!930 lt!438818 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun b!989136 () Bool)

(declare-fun lt!438806 () Unit!32777)

(assert (=> b!989136 (= e!557775 lt!438806)))

(declare-fun lt!438811 () ListLongMap!13695)

(assert (=> b!989136 (= lt!438811 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438807 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438807 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438820 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438820 (select (arr!30082 _keys!1544) from!1932))))

(declare-fun lt!438817 () Unit!32777)

(assert (=> b!989136 (= lt!438817 (addStillContains!619 lt!438811 lt!438807 zeroValue!1220 lt!438820))))

(assert (=> b!989136 (contains!5728 (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220)) lt!438820)))

(declare-fun lt!438815 () Unit!32777)

(assert (=> b!989136 (= lt!438815 lt!438817)))

(declare-fun lt!438801 () ListLongMap!13695)

(assert (=> b!989136 (= lt!438801 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438808 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438808 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438812 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438812 (select (arr!30082 _keys!1544) from!1932))))

(declare-fun lt!438813 () Unit!32777)

(assert (=> b!989136 (= lt!438813 (addApplyDifferent!471 lt!438801 lt!438808 minValue!1220 lt!438812))))

(assert (=> b!989136 (= (apply!930 (+!3045 lt!438801 (tuple2!14985 lt!438808 minValue!1220)) lt!438812) (apply!930 lt!438801 lt!438812))))

(declare-fun lt!438802 () Unit!32777)

(assert (=> b!989136 (= lt!438802 lt!438813)))

(declare-fun lt!438819 () ListLongMap!13695)

(assert (=> b!989136 (= lt!438819 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438803 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438803 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438805 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438805 (select (arr!30082 _keys!1544) from!1932))))

(declare-fun lt!438814 () Unit!32777)

(assert (=> b!989136 (= lt!438814 (addApplyDifferent!471 lt!438819 lt!438803 zeroValue!1220 lt!438805))))

(assert (=> b!989136 (= (apply!930 (+!3045 lt!438819 (tuple2!14985 lt!438803 zeroValue!1220)) lt!438805) (apply!930 lt!438819 lt!438805))))

(declare-fun lt!438816 () Unit!32777)

(assert (=> b!989136 (= lt!438816 lt!438814)))

(declare-fun lt!438804 () ListLongMap!13695)

(assert (=> b!989136 (= lt!438804 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!438800 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438800 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!438810 () (_ BitVec 64))

(assert (=> b!989136 (= lt!438810 (select (arr!30082 _keys!1544) from!1932))))

(assert (=> b!989136 (= lt!438806 (addApplyDifferent!471 lt!438804 lt!438800 minValue!1220 lt!438810))))

(assert (=> b!989136 (= (apply!930 (+!3045 lt!438804 (tuple2!14985 lt!438800 minValue!1220)) lt!438810) (apply!930 lt!438804 lt!438810))))

(declare-fun b!989137 () Bool)

(assert (=> b!989137 (= e!557774 (= (apply!930 lt!438818 (select (arr!30082 _keys!1544) from!1932)) (get!15631 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!989137 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30563 _values!1278)))))

(assert (=> b!989137 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30562 _keys!1544)))))

(declare-fun b!989138 () Bool)

(declare-fun c!100204 () Bool)

(assert (=> b!989138 (= c!100204 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!557783 () ListLongMap!13695)

(declare-fun e!557776 () ListLongMap!13695)

(assert (=> b!989138 (= e!557783 e!557776)))

(declare-fun b!989139 () Bool)

(assert (=> b!989139 (= e!557785 e!557783)))

(assert (=> b!989139 (= c!100202 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41925 () Bool)

(assert (=> bm!41925 (= call!41926 (contains!5728 lt!438818 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989140 () Bool)

(assert (=> b!989140 (= e!557783 call!41923)))

(declare-fun b!989141 () Bool)

(declare-fun res!661639 () Bool)

(assert (=> b!989141 (=> (not res!661639) (not e!557782))))

(assert (=> b!989141 (= res!661639 e!557781)))

(declare-fun res!661631 () Bool)

(assert (=> b!989141 (=> res!661631 e!557781)))

(assert (=> b!989141 (= res!661631 (not e!557773))))

(declare-fun res!661634 () Bool)

(assert (=> b!989141 (=> (not res!661634) (not e!557773))))

(assert (=> b!989141 (= res!661634 (bvslt from!1932 (size!30562 _keys!1544)))))

(declare-fun b!989142 () Bool)

(assert (=> b!989142 (= e!557776 call!41928)))

(declare-fun b!989143 () Bool)

(assert (=> b!989143 (= e!557777 (not call!41926))))

(declare-fun b!989144 () Bool)

(assert (=> b!989144 (= e!557776 call!41923)))

(assert (= (and d!117227 c!100200) b!989125))

(assert (= (and d!117227 (not c!100200)) b!989139))

(assert (= (and b!989139 c!100202) b!989140))

(assert (= (and b!989139 (not c!100202)) b!989138))

(assert (= (and b!989138 c!100204) b!989144))

(assert (= (and b!989138 (not c!100204)) b!989142))

(assert (= (or b!989144 b!989142) bm!41919))

(assert (= (or b!989140 bm!41919) bm!41920))

(assert (= (or b!989140 b!989144) bm!41923))

(assert (= (or b!989125 bm!41920) bm!41922))

(assert (= (or b!989125 bm!41923) bm!41921))

(assert (= (and d!117227 res!661636) b!989128))

(assert (= (and d!117227 c!100201) b!989136))

(assert (= (and d!117227 (not c!100201)) b!989133))

(assert (= (and d!117227 res!661635) b!989141))

(assert (= (and b!989141 res!661634) b!989134))

(assert (= (and b!989141 (not res!661631)) b!989129))

(assert (= (and b!989129 res!661633) b!989137))

(assert (= (and b!989141 res!661639) b!989127))

(assert (= (and b!989127 c!100205) b!989124))

(assert (= (and b!989127 (not c!100205)) b!989126))

(assert (= (and b!989124 res!661637) b!989132))

(assert (= (or b!989124 b!989126) bm!41924))

(assert (= (and b!989127 res!661632) b!989131))

(assert (= (and b!989131 c!100203) b!989130))

(assert (= (and b!989131 (not c!100203)) b!989143))

(assert (= (and b!989130 res!661638) b!989135))

(assert (= (or b!989130 b!989143) bm!41925))

(declare-fun b_lambda!15141 () Bool)

(assert (=> (not b_lambda!15141) (not b!989137)))

(assert (=> b!989137 t!29896))

(declare-fun b_and!32187 () Bool)

(assert (= b_and!32185 (and (=> t!29896 result!13615) b_and!32187)))

(assert (=> b!989128 m!916159))

(assert (=> b!989128 m!916159))

(assert (=> b!989128 m!916175))

(assert (=> d!117227 m!916177))

(declare-fun m!916387 () Bool)

(assert (=> bm!41922 m!916387))

(declare-fun m!916389 () Bool)

(assert (=> bm!41925 m!916389))

(assert (=> b!989134 m!916159))

(assert (=> b!989134 m!916159))

(assert (=> b!989134 m!916175))

(declare-fun m!916391 () Bool)

(assert (=> bm!41924 m!916391))

(declare-fun m!916393 () Bool)

(assert (=> b!989132 m!916393))

(assert (=> b!989129 m!916159))

(assert (=> b!989129 m!916159))

(declare-fun m!916395 () Bool)

(assert (=> b!989129 m!916395))

(assert (=> b!989137 m!916191))

(assert (=> b!989137 m!916159))

(assert (=> b!989137 m!916159))

(declare-fun m!916397 () Bool)

(assert (=> b!989137 m!916397))

(assert (=> b!989137 m!916187))

(assert (=> b!989137 m!916191))

(assert (=> b!989137 m!916193))

(assert (=> b!989137 m!916187))

(declare-fun m!916399 () Bool)

(assert (=> b!989135 m!916399))

(declare-fun m!916401 () Bool)

(assert (=> b!989125 m!916401))

(declare-fun m!916403 () Bool)

(assert (=> bm!41921 m!916403))

(declare-fun m!916405 () Bool)

(assert (=> b!989136 m!916405))

(declare-fun m!916407 () Bool)

(assert (=> b!989136 m!916407))

(declare-fun m!916409 () Bool)

(assert (=> b!989136 m!916409))

(declare-fun m!916411 () Bool)

(assert (=> b!989136 m!916411))

(declare-fun m!916413 () Bool)

(assert (=> b!989136 m!916413))

(declare-fun m!916415 () Bool)

(assert (=> b!989136 m!916415))

(declare-fun m!916417 () Bool)

(assert (=> b!989136 m!916417))

(declare-fun m!916419 () Bool)

(assert (=> b!989136 m!916419))

(declare-fun m!916421 () Bool)

(assert (=> b!989136 m!916421))

(declare-fun m!916423 () Bool)

(assert (=> b!989136 m!916423))

(assert (=> b!989136 m!916409))

(declare-fun m!916425 () Bool)

(assert (=> b!989136 m!916425))

(assert (=> b!989136 m!916387))

(assert (=> b!989136 m!916421))

(declare-fun m!916427 () Bool)

(assert (=> b!989136 m!916427))

(declare-fun m!916429 () Bool)

(assert (=> b!989136 m!916429))

(declare-fun m!916431 () Bool)

(assert (=> b!989136 m!916431))

(assert (=> b!989136 m!916405))

(assert (=> b!989136 m!916159))

(declare-fun m!916433 () Bool)

(assert (=> b!989136 m!916433))

(assert (=> b!989136 m!916427))

(assert (=> b!988936 d!117227))

(declare-fun d!117229 () Bool)

(declare-fun e!557786 () Bool)

(assert (=> d!117229 e!557786))

(declare-fun res!661641 () Bool)

(assert (=> d!117229 (=> (not res!661641) (not e!557786))))

(declare-fun lt!438821 () ListLongMap!13695)

(assert (=> d!117229 (= res!661641 (contains!5728 lt!438821 (_1!7502 lt!438656)))))

(declare-fun lt!438823 () List!20934)

(assert (=> d!117229 (= lt!438821 (ListLongMap!13696 lt!438823))))

(declare-fun lt!438824 () Unit!32777)

(declare-fun lt!438822 () Unit!32777)

(assert (=> d!117229 (= lt!438824 lt!438822)))

(assert (=> d!117229 (= (getValueByKey!516 lt!438823 (_1!7502 lt!438656)) (Some!521 (_2!7502 lt!438656)))))

(assert (=> d!117229 (= lt!438822 (lemmaContainsTupThenGetReturnValue!273 lt!438823 (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(assert (=> d!117229 (= lt!438823 (insertStrictlySorted!329 (toList!6863 (+!3045 lt!438657 lt!438659)) (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(assert (=> d!117229 (= (+!3045 (+!3045 lt!438657 lt!438659) lt!438656) lt!438821)))

(declare-fun b!989145 () Bool)

(declare-fun res!661640 () Bool)

(assert (=> b!989145 (=> (not res!661640) (not e!557786))))

(assert (=> b!989145 (= res!661640 (= (getValueByKey!516 (toList!6863 lt!438821) (_1!7502 lt!438656)) (Some!521 (_2!7502 lt!438656))))))

(declare-fun b!989146 () Bool)

(assert (=> b!989146 (= e!557786 (contains!5729 (toList!6863 lt!438821) lt!438656))))

(assert (= (and d!117229 res!661641) b!989145))

(assert (= (and b!989145 res!661640) b!989146))

(declare-fun m!916435 () Bool)

(assert (=> d!117229 m!916435))

(declare-fun m!916437 () Bool)

(assert (=> d!117229 m!916437))

(declare-fun m!916439 () Bool)

(assert (=> d!117229 m!916439))

(declare-fun m!916441 () Bool)

(assert (=> d!117229 m!916441))

(declare-fun m!916443 () Bool)

(assert (=> b!989145 m!916443))

(declare-fun m!916445 () Bool)

(assert (=> b!989146 m!916445))

(assert (=> b!988936 d!117229))

(declare-fun mapIsEmpty!36936 () Bool)

(declare-fun mapRes!36936 () Bool)

(assert (=> mapIsEmpty!36936 mapRes!36936))

(declare-fun condMapEmpty!36936 () Bool)

(declare-fun mapDefault!36936 () ValueCell!11148)

(assert (=> mapNonEmpty!36930 (= condMapEmpty!36936 (= mapRest!36930 ((as const (Array (_ BitVec 32) ValueCell!11148)) mapDefault!36936)))))

(declare-fun e!557791 () Bool)

(assert (=> mapNonEmpty!36930 (= tp!69917 (and e!557791 mapRes!36936))))

(declare-fun mapNonEmpty!36936 () Bool)

(declare-fun tp!69927 () Bool)

(declare-fun e!557792 () Bool)

(assert (=> mapNonEmpty!36936 (= mapRes!36936 (and tp!69927 e!557792))))

(declare-fun mapKey!36936 () (_ BitVec 32))

(declare-fun mapValue!36936 () ValueCell!11148)

(declare-fun mapRest!36936 () (Array (_ BitVec 32) ValueCell!11148))

(assert (=> mapNonEmpty!36936 (= mapRest!36930 (store mapRest!36936 mapKey!36936 mapValue!36936))))

(declare-fun b!989154 () Bool)

(assert (=> b!989154 (= e!557791 tp_is_empty!23259)))

(declare-fun b!989153 () Bool)

(assert (=> b!989153 (= e!557792 tp_is_empty!23259)))

(assert (= (and mapNonEmpty!36930 condMapEmpty!36936) mapIsEmpty!36936))

(assert (= (and mapNonEmpty!36930 (not condMapEmpty!36936)) mapNonEmpty!36936))

(assert (= (and mapNonEmpty!36936 ((_ is ValueCellFull!11148) mapValue!36936)) b!989153))

(assert (= (and mapNonEmpty!36930 ((_ is ValueCellFull!11148) mapDefault!36936)) b!989154))

(declare-fun m!916447 () Bool)

(assert (=> mapNonEmpty!36936 m!916447))

(declare-fun b_lambda!15143 () Bool)

(assert (= b_lambda!15141 (or (and start!84590 b_free!20043) b_lambda!15143)))

(declare-fun b_lambda!15145 () Bool)

(assert (= b_lambda!15137 (or (and start!84590 b_free!20043) b_lambda!15145)))

(declare-fun b_lambda!15147 () Bool)

(assert (= b_lambda!15139 (or (and start!84590 b_free!20043) b_lambda!15147)))

(declare-fun b_lambda!15149 () Bool)

(assert (= b_lambda!15135 (or (and start!84590 b_free!20043) b_lambda!15149)))

(check-sat (not b!989123) (not b!989112) (not b!989129) tp_is_empty!23259 b_and!32187 (not b!989132) (not d!117227) (not b!989045) (not bm!41897) (not b!989146) (not b!989047) (not d!117215) (not b!989134) (not bm!41925) (not d!117219) (not bm!41924) (not b!989054) (not b!988989) (not b!989122) (not b!989114) (not b!989111) (not b!989136) (not bm!41921) (not b_lambda!15133) (not b!989055) (not b!989125) (not b!989043) (not d!117229) (not b!989037) (not b!989056) (not b!989128) (not b!988990) (not b_next!20043) (not d!117217) (not bm!41918) (not b!989135) (not b!989058) (not b_lambda!15143) (not b!989011) (not b!989038) (not b!989105) (not b!989046) (not b!989044) (not bm!41891) (not bm!41894) (not b!989109) (not b!989012) (not d!117223) (not b_lambda!15149) (not d!117213) (not b!989005) (not b_lambda!15145) (not b!989003) (not d!117225) (not b!989113) (not bm!41914) (not b!989048) (not bm!41922) (not d!117221) (not b!989137) (not b!989102) (not b!989053) (not bm!41915) (not bm!41917) (not b!989106) (not b!989057) (not mapNonEmpty!36936) (not b!989145) (not b!989002) (not b_lambda!15147))
(check-sat b_and!32187 (not b_next!20043))
(get-model)

(declare-fun d!117231 () Bool)

(declare-fun get!15634 (Option!522) V!35995)

(assert (=> d!117231 (= (apply!930 lt!438818 (select (arr!30082 _keys!1544) from!1932)) (get!15634 (getValueByKey!516 (toList!6863 lt!438818) (select (arr!30082 _keys!1544) from!1932))))))

(declare-fun bs!28069 () Bool)

(assert (= bs!28069 d!117231))

(assert (=> bs!28069 m!916159))

(declare-fun m!916449 () Bool)

(assert (=> bs!28069 m!916449))

(assert (=> bs!28069 m!916449))

(declare-fun m!916451 () Bool)

(assert (=> bs!28069 m!916451))

(assert (=> b!989137 d!117231))

(assert (=> b!989137 d!117211))

(declare-fun d!117233 () Bool)

(declare-fun e!557798 () Bool)

(assert (=> d!117233 e!557798))

(declare-fun res!661644 () Bool)

(assert (=> d!117233 (=> res!661644 e!557798)))

(declare-fun lt!438836 () Bool)

(assert (=> d!117233 (= res!661644 (not lt!438836))))

(declare-fun lt!438834 () Bool)

(assert (=> d!117233 (= lt!438836 lt!438834)))

(declare-fun lt!438833 () Unit!32777)

(declare-fun e!557797 () Unit!32777)

(assert (=> d!117233 (= lt!438833 e!557797)))

(declare-fun c!100208 () Bool)

(assert (=> d!117233 (= c!100208 lt!438834)))

(declare-fun containsKey!479 (List!20934 (_ BitVec 64)) Bool)

(assert (=> d!117233 (= lt!438834 (containsKey!479 (toList!6863 lt!438714) (_1!7502 lt!438656)))))

(assert (=> d!117233 (= (contains!5728 lt!438714 (_1!7502 lt!438656)) lt!438836)))

(declare-fun b!989161 () Bool)

(declare-fun lt!438835 () Unit!32777)

(assert (=> b!989161 (= e!557797 lt!438835)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!374 (List!20934 (_ BitVec 64)) Unit!32777)

(assert (=> b!989161 (= lt!438835 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438714) (_1!7502 lt!438656)))))

(declare-fun isDefined!384 (Option!522) Bool)

(assert (=> b!989161 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438714) (_1!7502 lt!438656)))))

(declare-fun b!989162 () Bool)

(declare-fun Unit!32781 () Unit!32777)

(assert (=> b!989162 (= e!557797 Unit!32781)))

(declare-fun b!989163 () Bool)

(assert (=> b!989163 (= e!557798 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438714) (_1!7502 lt!438656))))))

(assert (= (and d!117233 c!100208) b!989161))

(assert (= (and d!117233 (not c!100208)) b!989162))

(assert (= (and d!117233 (not res!661644)) b!989163))

(declare-fun m!916453 () Bool)

(assert (=> d!117233 m!916453))

(declare-fun m!916455 () Bool)

(assert (=> b!989161 m!916455))

(assert (=> b!989161 m!916291))

(assert (=> b!989161 m!916291))

(declare-fun m!916457 () Bool)

(assert (=> b!989161 m!916457))

(assert (=> b!989163 m!916291))

(assert (=> b!989163 m!916291))

(assert (=> b!989163 m!916457))

(assert (=> d!117215 d!117233))

(declare-fun b!989173 () Bool)

(declare-fun e!557803 () Option!522)

(declare-fun e!557804 () Option!522)

(assert (=> b!989173 (= e!557803 e!557804)))

(declare-fun c!100214 () Bool)

(assert (=> b!989173 (= c!100214 (and ((_ is Cons!20930) lt!438716) (not (= (_1!7502 (h!22092 lt!438716)) (_1!7502 lt!438656)))))))

(declare-fun b!989174 () Bool)

(assert (=> b!989174 (= e!557804 (getValueByKey!516 (t!29897 lt!438716) (_1!7502 lt!438656)))))

(declare-fun d!117235 () Bool)

(declare-fun c!100213 () Bool)

(assert (=> d!117235 (= c!100213 (and ((_ is Cons!20930) lt!438716) (= (_1!7502 (h!22092 lt!438716)) (_1!7502 lt!438656))))))

(assert (=> d!117235 (= (getValueByKey!516 lt!438716 (_1!7502 lt!438656)) e!557803)))

(declare-fun b!989175 () Bool)

(assert (=> b!989175 (= e!557804 None!520)))

(declare-fun b!989172 () Bool)

(assert (=> b!989172 (= e!557803 (Some!521 (_2!7502 (h!22092 lt!438716))))))

(assert (= (and d!117235 c!100213) b!989172))

(assert (= (and d!117235 (not c!100213)) b!989173))

(assert (= (and b!989173 c!100214) b!989174))

(assert (= (and b!989173 (not c!100214)) b!989175))

(declare-fun m!916459 () Bool)

(assert (=> b!989174 m!916459))

(assert (=> d!117215 d!117235))

(declare-fun d!117237 () Bool)

(assert (=> d!117237 (= (getValueByKey!516 lt!438716 (_1!7502 lt!438656)) (Some!521 (_2!7502 lt!438656)))))

(declare-fun lt!438839 () Unit!32777)

(declare-fun choose!1619 (List!20934 (_ BitVec 64) V!35995) Unit!32777)

(assert (=> d!117237 (= lt!438839 (choose!1619 lt!438716 (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(declare-fun e!557807 () Bool)

(assert (=> d!117237 e!557807))

(declare-fun res!661649 () Bool)

(assert (=> d!117237 (=> (not res!661649) (not e!557807))))

(declare-fun isStrictlySorted!512 (List!20934) Bool)

(assert (=> d!117237 (= res!661649 (isStrictlySorted!512 lt!438716))))

(assert (=> d!117237 (= (lemmaContainsTupThenGetReturnValue!273 lt!438716 (_1!7502 lt!438656) (_2!7502 lt!438656)) lt!438839)))

(declare-fun b!989180 () Bool)

(declare-fun res!661650 () Bool)

(assert (=> b!989180 (=> (not res!661650) (not e!557807))))

(assert (=> b!989180 (= res!661650 (containsKey!479 lt!438716 (_1!7502 lt!438656)))))

(declare-fun b!989181 () Bool)

(assert (=> b!989181 (= e!557807 (contains!5729 lt!438716 (tuple2!14985 (_1!7502 lt!438656) (_2!7502 lt!438656))))))

(assert (= (and d!117237 res!661649) b!989180))

(assert (= (and b!989180 res!661650) b!989181))

(assert (=> d!117237 m!916285))

(declare-fun m!916461 () Bool)

(assert (=> d!117237 m!916461))

(declare-fun m!916463 () Bool)

(assert (=> d!117237 m!916463))

(declare-fun m!916465 () Bool)

(assert (=> b!989180 m!916465))

(declare-fun m!916467 () Bool)

(assert (=> b!989181 m!916467))

(assert (=> d!117215 d!117237))

(declare-fun b!989202 () Bool)

(declare-fun e!557820 () Bool)

(declare-fun lt!438842 () List!20934)

(assert (=> b!989202 (= e!557820 (contains!5729 lt!438842 (tuple2!14985 (_1!7502 lt!438656) (_2!7502 lt!438656))))))

(declare-fun b!989203 () Bool)

(declare-fun e!557822 () List!20934)

(declare-fun e!557818 () List!20934)

(assert (=> b!989203 (= e!557822 e!557818)))

(declare-fun c!100226 () Bool)

(assert (=> b!989203 (= c!100226 (and ((_ is Cons!20930) (toList!6863 lt!438657)) (= (_1!7502 (h!22092 (toList!6863 lt!438657))) (_1!7502 lt!438656))))))

(declare-fun bm!41932 () Bool)

(declare-fun call!41935 () List!20934)

(declare-fun call!41936 () List!20934)

(assert (=> bm!41932 (= call!41935 call!41936)))

(declare-fun b!989204 () Bool)

(declare-fun e!557821 () List!20934)

(declare-fun call!41937 () List!20934)

(assert (=> b!989204 (= e!557821 call!41937)))

(declare-fun d!117239 () Bool)

(assert (=> d!117239 e!557820))

(declare-fun res!661656 () Bool)

(assert (=> d!117239 (=> (not res!661656) (not e!557820))))

(assert (=> d!117239 (= res!661656 (isStrictlySorted!512 lt!438842))))

(assert (=> d!117239 (= lt!438842 e!557822)))

(declare-fun c!100224 () Bool)

(assert (=> d!117239 (= c!100224 (and ((_ is Cons!20930) (toList!6863 lt!438657)) (bvslt (_1!7502 (h!22092 (toList!6863 lt!438657))) (_1!7502 lt!438656))))))

(assert (=> d!117239 (isStrictlySorted!512 (toList!6863 lt!438657))))

(assert (=> d!117239 (= (insertStrictlySorted!329 (toList!6863 lt!438657) (_1!7502 lt!438656) (_2!7502 lt!438656)) lt!438842)))

(declare-fun bm!41933 () Bool)

(assert (=> bm!41933 (= call!41937 call!41935)))

(declare-fun b!989205 () Bool)

(declare-fun res!661655 () Bool)

(assert (=> b!989205 (=> (not res!661655) (not e!557820))))

(assert (=> b!989205 (= res!661655 (containsKey!479 lt!438842 (_1!7502 lt!438656)))))

(declare-fun b!989206 () Bool)

(assert (=> b!989206 (= e!557818 call!41935)))

(declare-fun b!989207 () Bool)

(declare-fun e!557819 () List!20934)

(assert (=> b!989207 (= e!557819 (insertStrictlySorted!329 (t!29897 (toList!6863 lt!438657)) (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(declare-fun b!989208 () Bool)

(declare-fun c!100223 () Bool)

(assert (=> b!989208 (= c!100223 (and ((_ is Cons!20930) (toList!6863 lt!438657)) (bvsgt (_1!7502 (h!22092 (toList!6863 lt!438657))) (_1!7502 lt!438656))))))

(assert (=> b!989208 (= e!557818 e!557821)))

(declare-fun b!989209 () Bool)

(assert (=> b!989209 (= e!557819 (ite c!100226 (t!29897 (toList!6863 lt!438657)) (ite c!100223 (Cons!20930 (h!22092 (toList!6863 lt!438657)) (t!29897 (toList!6863 lt!438657))) Nil!20931)))))

(declare-fun b!989210 () Bool)

(assert (=> b!989210 (= e!557822 call!41936)))

(declare-fun b!989211 () Bool)

(assert (=> b!989211 (= e!557821 call!41937)))

(declare-fun bm!41934 () Bool)

(declare-fun $colon$colon!556 (List!20934 tuple2!14984) List!20934)

(assert (=> bm!41934 (= call!41936 ($colon$colon!556 e!557819 (ite c!100224 (h!22092 (toList!6863 lt!438657)) (tuple2!14985 (_1!7502 lt!438656) (_2!7502 lt!438656)))))))

(declare-fun c!100225 () Bool)

(assert (=> bm!41934 (= c!100225 c!100224)))

(assert (= (and d!117239 c!100224) b!989210))

(assert (= (and d!117239 (not c!100224)) b!989203))

(assert (= (and b!989203 c!100226) b!989206))

(assert (= (and b!989203 (not c!100226)) b!989208))

(assert (= (and b!989208 c!100223) b!989211))

(assert (= (and b!989208 (not c!100223)) b!989204))

(assert (= (or b!989211 b!989204) bm!41933))

(assert (= (or b!989206 bm!41933) bm!41932))

(assert (= (or b!989210 bm!41932) bm!41934))

(assert (= (and bm!41934 c!100225) b!989207))

(assert (= (and bm!41934 (not c!100225)) b!989209))

(assert (= (and d!117239 res!661656) b!989205))

(assert (= (and b!989205 res!661655) b!989202))

(declare-fun m!916469 () Bool)

(assert (=> bm!41934 m!916469))

(declare-fun m!916471 () Bool)

(assert (=> b!989205 m!916471))

(declare-fun m!916473 () Bool)

(assert (=> b!989207 m!916473))

(declare-fun m!916475 () Bool)

(assert (=> d!117239 m!916475))

(declare-fun m!916477 () Bool)

(assert (=> d!117239 m!916477))

(declare-fun m!916479 () Bool)

(assert (=> b!989202 m!916479))

(assert (=> d!117215 d!117239))

(declare-fun d!117241 () Bool)

(assert (=> d!117241 (= (apply!930 lt!438818 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15634 (getValueByKey!516 (toList!6863 lt!438818) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28070 () Bool)

(assert (= bs!28070 d!117241))

(declare-fun m!916481 () Bool)

(assert (=> bs!28070 m!916481))

(assert (=> bs!28070 m!916481))

(declare-fun m!916483 () Bool)

(assert (=> bs!28070 m!916483))

(assert (=> b!989135 d!117241))

(declare-fun d!117243 () Bool)

(declare-fun e!557824 () Bool)

(assert (=> d!117243 e!557824))

(declare-fun res!661657 () Bool)

(assert (=> d!117243 (=> res!661657 e!557824)))

(declare-fun lt!438846 () Bool)

(assert (=> d!117243 (= res!661657 (not lt!438846))))

(declare-fun lt!438844 () Bool)

(assert (=> d!117243 (= lt!438846 lt!438844)))

(declare-fun lt!438843 () Unit!32777)

(declare-fun e!557823 () Unit!32777)

(assert (=> d!117243 (= lt!438843 e!557823)))

(declare-fun c!100227 () Bool)

(assert (=> d!117243 (= c!100227 lt!438844)))

(assert (=> d!117243 (= lt!438844 (containsKey!479 (toList!6863 lt!438789) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> d!117243 (= (contains!5728 lt!438789 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) lt!438846)))

(declare-fun b!989212 () Bool)

(declare-fun lt!438845 () Unit!32777)

(assert (=> b!989212 (= e!557823 lt!438845)))

(assert (=> b!989212 (= lt!438845 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438789) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!989212 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438789) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!989213 () Bool)

(declare-fun Unit!32782 () Unit!32777)

(assert (=> b!989213 (= e!557823 Unit!32782)))

(declare-fun b!989214 () Bool)

(assert (=> b!989214 (= e!557824 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438789) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(assert (= (and d!117243 c!100227) b!989212))

(assert (= (and d!117243 (not c!100227)) b!989213))

(assert (= (and d!117243 (not res!661657)) b!989214))

(assert (=> d!117243 m!916255))

(declare-fun m!916485 () Bool)

(assert (=> d!117243 m!916485))

(assert (=> b!989212 m!916255))

(declare-fun m!916487 () Bool)

(assert (=> b!989212 m!916487))

(assert (=> b!989212 m!916255))

(declare-fun m!916489 () Bool)

(assert (=> b!989212 m!916489))

(assert (=> b!989212 m!916489))

(declare-fun m!916491 () Bool)

(assert (=> b!989212 m!916491))

(assert (=> b!989214 m!916255))

(assert (=> b!989214 m!916489))

(assert (=> b!989214 m!916489))

(assert (=> b!989214 m!916491))

(assert (=> b!989106 d!117243))

(declare-fun d!117245 () Bool)

(assert (=> d!117245 (= (validKeyInArray!0 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)) (and (not (= (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!989003 d!117245))

(declare-fun d!117247 () Bool)

(assert (=> d!117247 (= (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (and (not (= (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!989048 d!117247))

(declare-fun d!117249 () Bool)

(declare-fun lt!438849 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!422 (List!20934) (InoxSet tuple2!14984))

(assert (=> d!117249 (= lt!438849 (select (content!422 (toList!6863 lt!438821)) lt!438656))))

(declare-fun e!557829 () Bool)

(assert (=> d!117249 (= lt!438849 e!557829)))

(declare-fun res!661662 () Bool)

(assert (=> d!117249 (=> (not res!661662) (not e!557829))))

(assert (=> d!117249 (= res!661662 ((_ is Cons!20930) (toList!6863 lt!438821)))))

(assert (=> d!117249 (= (contains!5729 (toList!6863 lt!438821) lt!438656) lt!438849)))

(declare-fun b!989219 () Bool)

(declare-fun e!557830 () Bool)

(assert (=> b!989219 (= e!557829 e!557830)))

(declare-fun res!661663 () Bool)

(assert (=> b!989219 (=> res!661663 e!557830)))

(assert (=> b!989219 (= res!661663 (= (h!22092 (toList!6863 lt!438821)) lt!438656))))

(declare-fun b!989220 () Bool)

(assert (=> b!989220 (= e!557830 (contains!5729 (t!29897 (toList!6863 lt!438821)) lt!438656))))

(assert (= (and d!117249 res!661662) b!989219))

(assert (= (and b!989219 (not res!661663)) b!989220))

(declare-fun m!916493 () Bool)

(assert (=> d!117249 m!916493))

(declare-fun m!916495 () Bool)

(assert (=> d!117249 m!916495))

(declare-fun m!916497 () Bool)

(assert (=> b!989220 m!916497))

(assert (=> b!989146 d!117249))

(declare-fun d!117251 () Bool)

(assert (=> d!117251 (= (apply!930 lt!438789 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15634 (getValueByKey!516 (toList!6863 lt!438789) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28071 () Bool)

(assert (= bs!28071 d!117251))

(declare-fun m!916499 () Bool)

(assert (=> bs!28071 m!916499))

(assert (=> bs!28071 m!916499))

(declare-fun m!916501 () Bool)

(assert (=> bs!28071 m!916501))

(assert (=> b!989112 d!117251))

(declare-fun b!989221 () Bool)

(declare-fun e!557832 () Bool)

(assert (=> b!989221 (= e!557832 (contains!5727 (ite c!100166 (Cons!20931 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) Nil!20932) Nil!20932) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!989222 () Bool)

(declare-fun e!557833 () Bool)

(declare-fun e!557834 () Bool)

(assert (=> b!989222 (= e!557833 e!557834)))

(declare-fun c!100228 () Bool)

(assert (=> b!989222 (= c!100228 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!989223 () Bool)

(declare-fun call!41938 () Bool)

(assert (=> b!989223 (= e!557834 call!41938)))

(declare-fun bm!41935 () Bool)

(assert (=> bm!41935 (= call!41938 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100228 (Cons!20931 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!100166 (Cons!20931 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) Nil!20932) Nil!20932)) (ite c!100166 (Cons!20931 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) Nil!20932) Nil!20932))))))

(declare-fun d!117253 () Bool)

(declare-fun res!661665 () Bool)

(declare-fun e!557831 () Bool)

(assert (=> d!117253 (=> res!661665 e!557831)))

(assert (=> d!117253 (= res!661665 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(assert (=> d!117253 (= (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100166 (Cons!20931 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) Nil!20932) Nil!20932)) e!557831)))

(declare-fun b!989224 () Bool)

(assert (=> b!989224 (= e!557831 e!557833)))

(declare-fun res!661666 () Bool)

(assert (=> b!989224 (=> (not res!661666) (not e!557833))))

(assert (=> b!989224 (= res!661666 (not e!557832))))

(declare-fun res!661664 () Bool)

(assert (=> b!989224 (=> (not res!661664) (not e!557832))))

(assert (=> b!989224 (= res!661664 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!989225 () Bool)

(assert (=> b!989225 (= e!557834 call!41938)))

(assert (= (and d!117253 (not res!661665)) b!989224))

(assert (= (and b!989224 res!661664) b!989221))

(assert (= (and b!989224 res!661666) b!989222))

(assert (= (and b!989222 c!100228) b!989225))

(assert (= (and b!989222 (not c!100228)) b!989223))

(assert (= (or b!989225 b!989223) bm!41935))

(declare-fun m!916503 () Bool)

(assert (=> b!989221 m!916503))

(assert (=> b!989221 m!916503))

(declare-fun m!916505 () Bool)

(assert (=> b!989221 m!916505))

(assert (=> b!989222 m!916503))

(assert (=> b!989222 m!916503))

(declare-fun m!916507 () Bool)

(assert (=> b!989222 m!916507))

(assert (=> bm!41935 m!916503))

(declare-fun m!916509 () Bool)

(assert (=> bm!41935 m!916509))

(assert (=> b!989224 m!916503))

(assert (=> b!989224 m!916503))

(assert (=> b!989224 m!916507))

(assert (=> bm!41894 d!117253))

(declare-fun d!117255 () Bool)

(declare-fun e!557841 () Bool)

(assert (=> d!117255 e!557841))

(declare-fun res!661668 () Bool)

(assert (=> d!117255 (=> (not res!661668) (not e!557841))))

(declare-fun lt!438854 () ListLongMap!13695)

(assert (=> d!117255 (= res!661668 (not (contains!5728 lt!438854 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!557838 () ListLongMap!13695)

(assert (=> d!117255 (= lt!438854 e!557838)))

(declare-fun c!100231 () Bool)

(assert (=> d!117255 (= c!100231 (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(assert (=> d!117255 (validMask!0 mask!1948)))

(assert (=> d!117255 (= (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281) lt!438854)))

(declare-fun b!989226 () Bool)

(assert (=> b!989226 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(assert (=> b!989226 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30563 _values!1278)))))

(declare-fun e!557840 () Bool)

(assert (=> b!989226 (= e!557840 (= (apply!930 lt!438854 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!989227 () Bool)

(declare-fun e!557835 () Bool)

(assert (=> b!989227 (= e!557835 e!557840)))

(assert (=> b!989227 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(declare-fun res!661670 () Bool)

(assert (=> b!989227 (= res!661670 (contains!5728 lt!438854 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(assert (=> b!989227 (=> (not res!661670) (not e!557840))))

(declare-fun b!989228 () Bool)

(declare-fun e!557836 () Bool)

(assert (=> b!989228 (= e!557835 e!557836)))

(declare-fun c!100230 () Bool)

(assert (=> b!989228 (= c!100230 (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(declare-fun call!41939 () ListLongMap!13695)

(declare-fun bm!41936 () Bool)

(assert (=> bm!41936 (= call!41939 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!989229 () Bool)

(declare-fun e!557837 () ListLongMap!13695)

(assert (=> b!989229 (= e!557837 call!41939)))

(declare-fun b!989230 () Bool)

(assert (=> b!989230 (= e!557838 (ListLongMap!13696 Nil!20931))))

(declare-fun b!989231 () Bool)

(assert (=> b!989231 (= e!557841 e!557835)))

(declare-fun c!100232 () Bool)

(declare-fun e!557839 () Bool)

(assert (=> b!989231 (= c!100232 e!557839)))

(declare-fun res!661667 () Bool)

(assert (=> b!989231 (=> (not res!661667) (not e!557839))))

(assert (=> b!989231 (= res!661667 (bvslt (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(declare-fun b!989232 () Bool)

(declare-fun lt!438856 () Unit!32777)

(declare-fun lt!438853 () Unit!32777)

(assert (=> b!989232 (= lt!438856 lt!438853)))

(declare-fun lt!438852 () V!35995)

(declare-fun lt!438850 () (_ BitVec 64))

(declare-fun lt!438851 () ListLongMap!13695)

(declare-fun lt!438855 () (_ BitVec 64))

(assert (=> b!989232 (not (contains!5728 (+!3045 lt!438851 (tuple2!14985 lt!438855 lt!438852)) lt!438850))))

(assert (=> b!989232 (= lt!438853 (addStillNotContains!236 lt!438851 lt!438855 lt!438852 lt!438850))))

(assert (=> b!989232 (= lt!438850 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!989232 (= lt!438852 (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!989232 (= lt!438855 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)))))

(assert (=> b!989232 (= lt!438851 call!41939)))

(assert (=> b!989232 (= e!557837 (+!3045 call!41939 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!989233 () Bool)

(assert (=> b!989233 (= e!557836 (= lt!438854 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!989234 () Bool)

(declare-fun res!661669 () Bool)

(assert (=> b!989234 (=> (not res!661669) (not e!557841))))

(assert (=> b!989234 (= res!661669 (not (contains!5728 lt!438854 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!989235 () Bool)

(assert (=> b!989235 (= e!557838 e!557837)))

(declare-fun c!100229 () Bool)

(assert (=> b!989235 (= c!100229 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(declare-fun b!989236 () Bool)

(assert (=> b!989236 (= e!557836 (isEmpty!728 lt!438854))))

(declare-fun b!989237 () Bool)

(assert (=> b!989237 (= e!557839 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001))))))

(assert (=> b!989237 (bvsge (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (= (and d!117255 c!100231) b!989230))

(assert (= (and d!117255 (not c!100231)) b!989235))

(assert (= (and b!989235 c!100229) b!989232))

(assert (= (and b!989235 (not c!100229)) b!989229))

(assert (= (or b!989232 b!989229) bm!41936))

(assert (= (and d!117255 res!661668) b!989234))

(assert (= (and b!989234 res!661669) b!989231))

(assert (= (and b!989231 res!661667) b!989237))

(assert (= (and b!989231 c!100232) b!989227))

(assert (= (and b!989231 (not c!100232)) b!989228))

(assert (= (and b!989227 res!661670) b!989226))

(assert (= (and b!989228 c!100230) b!989233))

(assert (= (and b!989228 (not c!100230)) b!989236))

(declare-fun b_lambda!15151 () Bool)

(assert (=> (not b_lambda!15151) (not b!989226)))

(assert (=> b!989226 t!29896))

(declare-fun b_and!32189 () Bool)

(assert (= b_and!32187 (and (=> t!29896 result!13615) b_and!32189)))

(declare-fun b_lambda!15153 () Bool)

(assert (=> (not b_lambda!15153) (not b!989232)))

(assert (=> b!989232 t!29896))

(declare-fun b_and!32191 () Bool)

(assert (= b_and!32189 (and (=> t!29896 result!13615) b_and!32191)))

(declare-fun m!916511 () Bool)

(assert (=> b!989237 m!916511))

(assert (=> b!989237 m!916511))

(declare-fun m!916513 () Bool)

(assert (=> b!989237 m!916513))

(declare-fun m!916515 () Bool)

(assert (=> b!989232 m!916515))

(declare-fun m!916517 () Bool)

(assert (=> b!989232 m!916517))

(assert (=> b!989232 m!916191))

(declare-fun m!916519 () Bool)

(assert (=> b!989232 m!916519))

(assert (=> b!989232 m!916191))

(assert (=> b!989232 m!916517))

(declare-fun m!916521 () Bool)

(assert (=> b!989232 m!916521))

(assert (=> b!989232 m!916515))

(declare-fun m!916523 () Bool)

(assert (=> b!989232 m!916523))

(assert (=> b!989232 m!916511))

(declare-fun m!916525 () Bool)

(assert (=> b!989232 m!916525))

(declare-fun m!916527 () Bool)

(assert (=> b!989233 m!916527))

(assert (=> b!989235 m!916511))

(assert (=> b!989235 m!916511))

(assert (=> b!989235 m!916513))

(assert (=> b!989227 m!916511))

(assert (=> b!989227 m!916511))

(declare-fun m!916529 () Bool)

(assert (=> b!989227 m!916529))

(declare-fun m!916531 () Bool)

(assert (=> d!117255 m!916531))

(assert (=> d!117255 m!916177))

(assert (=> bm!41936 m!916527))

(declare-fun m!916533 () Bool)

(assert (=> b!989236 m!916533))

(assert (=> b!989226 m!916517))

(assert (=> b!989226 m!916191))

(assert (=> b!989226 m!916519))

(assert (=> b!989226 m!916191))

(assert (=> b!989226 m!916517))

(assert (=> b!989226 m!916511))

(assert (=> b!989226 m!916511))

(declare-fun m!916535 () Bool)

(assert (=> b!989226 m!916535))

(declare-fun m!916537 () Bool)

(assert (=> b!989234 m!916537))

(assert (=> b!989044 d!117255))

(declare-fun d!117257 () Bool)

(declare-fun e!557842 () Bool)

(assert (=> d!117257 e!557842))

(declare-fun res!661672 () Bool)

(assert (=> d!117257 (=> (not res!661672) (not e!557842))))

(declare-fun lt!438857 () ListLongMap!13695)

(assert (=> d!117257 (= res!661672 (contains!5728 lt!438857 (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!438859 () List!20934)

(assert (=> d!117257 (= lt!438857 (ListLongMap!13696 lt!438859))))

(declare-fun lt!438860 () Unit!32777)

(declare-fun lt!438858 () Unit!32777)

(assert (=> d!117257 (= lt!438860 lt!438858)))

(assert (=> d!117257 (= (getValueByKey!516 lt!438859 (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117257 (= lt!438858 (lemmaContainsTupThenGetReturnValue!273 lt!438859 (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117257 (= lt!438859 (insertStrictlySorted!329 (toList!6863 call!41925) (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117257 (= (+!3045 call!41925 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!438857)))

(declare-fun b!989238 () Bool)

(declare-fun res!661671 () Bool)

(assert (=> b!989238 (=> (not res!661671) (not e!557842))))

(assert (=> b!989238 (= res!661671 (= (getValueByKey!516 (toList!6863 lt!438857) (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!989239 () Bool)

(assert (=> b!989239 (= e!557842 (contains!5729 (toList!6863 lt!438857) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117257 res!661672) b!989238))

(assert (= (and b!989238 res!661671) b!989239))

(declare-fun m!916539 () Bool)

(assert (=> d!117257 m!916539))

(declare-fun m!916541 () Bool)

(assert (=> d!117257 m!916541))

(declare-fun m!916543 () Bool)

(assert (=> d!117257 m!916543))

(declare-fun m!916545 () Bool)

(assert (=> d!117257 m!916545))

(declare-fun m!916547 () Bool)

(assert (=> b!989238 m!916547))

(declare-fun m!916549 () Bool)

(assert (=> b!989239 m!916549))

(assert (=> b!989125 d!117257))

(assert (=> b!989046 d!117247))

(assert (=> b!989111 d!117247))

(declare-fun d!117259 () Bool)

(declare-fun lt!438861 () Bool)

(assert (=> d!117259 (= lt!438861 (select (content!422 (toList!6863 lt!438714)) lt!438656))))

(declare-fun e!557843 () Bool)

(assert (=> d!117259 (= lt!438861 e!557843)))

(declare-fun res!661673 () Bool)

(assert (=> d!117259 (=> (not res!661673) (not e!557843))))

(assert (=> d!117259 (= res!661673 ((_ is Cons!20930) (toList!6863 lt!438714)))))

(assert (=> d!117259 (= (contains!5729 (toList!6863 lt!438714) lt!438656) lt!438861)))

(declare-fun b!989240 () Bool)

(declare-fun e!557844 () Bool)

(assert (=> b!989240 (= e!557843 e!557844)))

(declare-fun res!661674 () Bool)

(assert (=> b!989240 (=> res!661674 e!557844)))

(assert (=> b!989240 (= res!661674 (= (h!22092 (toList!6863 lt!438714)) lt!438656))))

(declare-fun b!989241 () Bool)

(assert (=> b!989241 (= e!557844 (contains!5729 (t!29897 (toList!6863 lt!438714)) lt!438656))))

(assert (= (and d!117259 res!661673) b!989240))

(assert (= (and b!989240 (not res!661674)) b!989241))

(declare-fun m!916551 () Bool)

(assert (=> d!117259 m!916551))

(declare-fun m!916553 () Bool)

(assert (=> d!117259 m!916553))

(declare-fun m!916555 () Bool)

(assert (=> b!989241 m!916555))

(assert (=> b!989054 d!117259))

(declare-fun d!117261 () Bool)

(declare-fun e!557845 () Bool)

(assert (=> d!117261 e!557845))

(declare-fun res!661676 () Bool)

(assert (=> d!117261 (=> (not res!661676) (not e!557845))))

(declare-fun lt!438862 () ListLongMap!13695)

(assert (=> d!117261 (= res!661676 (contains!5728 lt!438862 (_1!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!438864 () List!20934)

(assert (=> d!117261 (= lt!438862 (ListLongMap!13696 lt!438864))))

(declare-fun lt!438865 () Unit!32777)

(declare-fun lt!438863 () Unit!32777)

(assert (=> d!117261 (= lt!438865 lt!438863)))

(assert (=> d!117261 (= (getValueByKey!516 lt!438864 (_1!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!521 (_2!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117261 (= lt!438863 (lemmaContainsTupThenGetReturnValue!273 lt!438864 (_1!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117261 (= lt!438864 (insertStrictlySorted!329 (toList!6863 (ite c!100200 call!41924 (ite c!100202 call!41922 call!41928))) (_1!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117261 (= (+!3045 (ite c!100200 call!41924 (ite c!100202 call!41922 call!41928)) (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!438862)))

(declare-fun b!989242 () Bool)

(declare-fun res!661675 () Bool)

(assert (=> b!989242 (=> (not res!661675) (not e!557845))))

(assert (=> b!989242 (= res!661675 (= (getValueByKey!516 (toList!6863 lt!438862) (_1!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!521 (_2!7502 (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!989243 () Bool)

(assert (=> b!989243 (= e!557845 (contains!5729 (toList!6863 lt!438862) (ite (or c!100200 c!100202) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117261 res!661676) b!989242))

(assert (= (and b!989242 res!661675) b!989243))

(declare-fun m!916557 () Bool)

(assert (=> d!117261 m!916557))

(declare-fun m!916559 () Bool)

(assert (=> d!117261 m!916559))

(declare-fun m!916561 () Bool)

(assert (=> d!117261 m!916561))

(declare-fun m!916563 () Bool)

(assert (=> d!117261 m!916563))

(declare-fun m!916565 () Bool)

(assert (=> b!989242 m!916565))

(declare-fun m!916567 () Bool)

(assert (=> b!989243 m!916567))

(assert (=> bm!41921 d!117261))

(declare-fun d!117263 () Bool)

(assert (=> d!117263 (= (get!15632 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14247 (select (arr!30083 _values!1278) from!1932)))))

(assert (=> b!989011 d!117263))

(declare-fun b!989244 () Bool)

(declare-fun e!557847 () Bool)

(declare-fun call!41940 () Bool)

(assert (=> b!989244 (= e!557847 call!41940)))

(declare-fun bm!41937 () Bool)

(assert (=> bm!41937 (= call!41940 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!989245 () Bool)

(declare-fun e!557846 () Bool)

(declare-fun e!557848 () Bool)

(assert (=> b!989245 (= e!557846 e!557848)))

(declare-fun c!100233 () Bool)

(assert (=> b!989245 (= c!100233 (validKeyInArray!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!117265 () Bool)

(declare-fun res!661678 () Bool)

(assert (=> d!117265 (=> res!661678 e!557846)))

(assert (=> d!117265 (= res!661678 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(assert (=> d!117265 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948) e!557846)))

(declare-fun b!989246 () Bool)

(assert (=> b!989246 (= e!557848 e!557847)))

(declare-fun lt!438868 () (_ BitVec 64))

(assert (=> b!989246 (= lt!438868 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!438866 () Unit!32777)

(assert (=> b!989246 (= lt!438866 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!438868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!989246 (arrayContainsKey!0 _keys!1544 lt!438868 #b00000000000000000000000000000000)))

(declare-fun lt!438867 () Unit!32777)

(assert (=> b!989246 (= lt!438867 lt!438866)))

(declare-fun res!661677 () Bool)

(assert (=> b!989246 (= res!661677 (= (seekEntryOrOpen!0 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1544 mask!1948) (Found!9198 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!989246 (=> (not res!661677) (not e!557847))))

(declare-fun b!989247 () Bool)

(assert (=> b!989247 (= e!557848 call!41940)))

(assert (= (and d!117265 (not res!661678)) b!989245))

(assert (= (and b!989245 c!100233) b!989246))

(assert (= (and b!989245 (not c!100233)) b!989247))

(assert (= (and b!989246 res!661677) b!989244))

(assert (= (or b!989244 b!989247) bm!41937))

(declare-fun m!916569 () Bool)

(assert (=> bm!41937 m!916569))

(assert (=> b!989245 m!916503))

(assert (=> b!989245 m!916503))

(assert (=> b!989245 m!916507))

(assert (=> b!989246 m!916503))

(declare-fun m!916571 () Bool)

(assert (=> b!989246 m!916571))

(declare-fun m!916573 () Bool)

(assert (=> b!989246 m!916573))

(assert (=> b!989246 m!916503))

(declare-fun m!916575 () Bool)

(assert (=> b!989246 m!916575))

(assert (=> bm!41891 d!117265))

(declare-fun d!117267 () Bool)

(assert (=> d!117267 (= (apply!930 lt!438789 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15634 (getValueByKey!516 (toList!6863 lt!438789) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(declare-fun bs!28072 () Bool)

(assert (= bs!28072 d!117267))

(assert (=> bs!28072 m!916255))

(assert (=> bs!28072 m!916489))

(assert (=> bs!28072 m!916489))

(declare-fun m!916577 () Bool)

(assert (=> bs!28072 m!916577))

(assert (=> b!989114 d!117267))

(declare-fun d!117269 () Bool)

(declare-fun c!100234 () Bool)

(assert (=> d!117269 (= c!100234 ((_ is ValueCellFull!11148) (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun e!557849 () V!35995)

(assert (=> d!117269 (= (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!557849)))

(declare-fun b!989248 () Bool)

(assert (=> b!989248 (= e!557849 (get!15632 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!989249 () Bool)

(assert (=> b!989249 (= e!557849 (get!15633 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117269 c!100234) b!989248))

(assert (= (and d!117269 (not c!100234)) b!989249))

(assert (=> b!989248 m!916261))

(assert (=> b!989248 m!916191))

(declare-fun m!916579 () Bool)

(assert (=> b!989248 m!916579))

(assert (=> b!989249 m!916261))

(assert (=> b!989249 m!916191))

(declare-fun m!916581 () Bool)

(assert (=> b!989249 m!916581))

(assert (=> b!989114 d!117269))

(declare-fun d!117271 () Bool)

(declare-fun e!557856 () Bool)

(assert (=> d!117271 e!557856))

(declare-fun res!661680 () Bool)

(assert (=> d!117271 (=> (not res!661680) (not e!557856))))

(declare-fun lt!438873 () ListLongMap!13695)

(assert (=> d!117271 (= res!661680 (not (contains!5728 lt!438873 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!557853 () ListLongMap!13695)

(assert (=> d!117271 (= lt!438873 e!557853)))

(declare-fun c!100237 () Bool)

(assert (=> d!117271 (= c!100237 (bvsge from!1932 (size!30562 _keys!1544)))))

(assert (=> d!117271 (validMask!0 mask!1948)))

(assert (=> d!117271 (= (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!438873)))

(declare-fun b!989250 () Bool)

(assert (=> b!989250 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30562 _keys!1544)))))

(assert (=> b!989250 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30563 _values!1278)))))

(declare-fun e!557855 () Bool)

(assert (=> b!989250 (= e!557855 (= (apply!930 lt!438873 (select (arr!30082 _keys!1544) from!1932)) (get!15631 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!989251 () Bool)

(declare-fun e!557850 () Bool)

(assert (=> b!989251 (= e!557850 e!557855)))

(assert (=> b!989251 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30562 _keys!1544)))))

(declare-fun res!661682 () Bool)

(assert (=> b!989251 (= res!661682 (contains!5728 lt!438873 (select (arr!30082 _keys!1544) from!1932)))))

(assert (=> b!989251 (=> (not res!661682) (not e!557855))))

(declare-fun b!989252 () Bool)

(declare-fun e!557851 () Bool)

(assert (=> b!989252 (= e!557850 e!557851)))

(declare-fun c!100236 () Bool)

(assert (=> b!989252 (= c!100236 (bvslt from!1932 (size!30562 _keys!1544)))))

(declare-fun call!41941 () ListLongMap!13695)

(declare-fun bm!41938 () Bool)

(assert (=> bm!41938 (= call!41941 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!989253 () Bool)

(declare-fun e!557852 () ListLongMap!13695)

(assert (=> b!989253 (= e!557852 call!41941)))

(declare-fun b!989254 () Bool)

(assert (=> b!989254 (= e!557853 (ListLongMap!13696 Nil!20931))))

(declare-fun b!989255 () Bool)

(assert (=> b!989255 (= e!557856 e!557850)))

(declare-fun c!100238 () Bool)

(declare-fun e!557854 () Bool)

(assert (=> b!989255 (= c!100238 e!557854)))

(declare-fun res!661679 () Bool)

(assert (=> b!989255 (=> (not res!661679) (not e!557854))))

(assert (=> b!989255 (= res!661679 (bvslt from!1932 (size!30562 _keys!1544)))))

(declare-fun b!989256 () Bool)

(declare-fun lt!438875 () Unit!32777)

(declare-fun lt!438872 () Unit!32777)

(assert (=> b!989256 (= lt!438875 lt!438872)))

(declare-fun lt!438869 () (_ BitVec 64))

(declare-fun lt!438870 () ListLongMap!13695)

(declare-fun lt!438871 () V!35995)

(declare-fun lt!438874 () (_ BitVec 64))

(assert (=> b!989256 (not (contains!5728 (+!3045 lt!438870 (tuple2!14985 lt!438874 lt!438871)) lt!438869))))

(assert (=> b!989256 (= lt!438872 (addStillNotContains!236 lt!438870 lt!438874 lt!438871 lt!438869))))

(assert (=> b!989256 (= lt!438869 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!989256 (= lt!438871 (get!15631 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!989256 (= lt!438874 (select (arr!30082 _keys!1544) from!1932))))

(assert (=> b!989256 (= lt!438870 call!41941)))

(assert (=> b!989256 (= e!557852 (+!3045 call!41941 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) (get!15631 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!989257 () Bool)

(assert (=> b!989257 (= e!557851 (= lt!438873 (getCurrentListMapNoExtraKeys!3513 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!989258 () Bool)

(declare-fun res!661681 () Bool)

(assert (=> b!989258 (=> (not res!661681) (not e!557856))))

(assert (=> b!989258 (= res!661681 (not (contains!5728 lt!438873 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!989259 () Bool)

(assert (=> b!989259 (= e!557853 e!557852)))

(declare-fun c!100235 () Bool)

(assert (=> b!989259 (= c!100235 (validKeyInArray!0 (select (arr!30082 _keys!1544) from!1932)))))

(declare-fun b!989260 () Bool)

(assert (=> b!989260 (= e!557851 (isEmpty!728 lt!438873))))

(declare-fun b!989261 () Bool)

(assert (=> b!989261 (= e!557854 (validKeyInArray!0 (select (arr!30082 _keys!1544) from!1932)))))

(assert (=> b!989261 (bvsge from!1932 #b00000000000000000000000000000000)))

(assert (= (and d!117271 c!100237) b!989254))

(assert (= (and d!117271 (not c!100237)) b!989259))

(assert (= (and b!989259 c!100235) b!989256))

(assert (= (and b!989259 (not c!100235)) b!989253))

(assert (= (or b!989256 b!989253) bm!41938))

(assert (= (and d!117271 res!661680) b!989258))

(assert (= (and b!989258 res!661681) b!989255))

(assert (= (and b!989255 res!661679) b!989261))

(assert (= (and b!989255 c!100238) b!989251))

(assert (= (and b!989255 (not c!100238)) b!989252))

(assert (= (and b!989251 res!661682) b!989250))

(assert (= (and b!989252 c!100236) b!989257))

(assert (= (and b!989252 (not c!100236)) b!989260))

(declare-fun b_lambda!15155 () Bool)

(assert (=> (not b_lambda!15155) (not b!989250)))

(assert (=> b!989250 t!29896))

(declare-fun b_and!32193 () Bool)

(assert (= b_and!32191 (and (=> t!29896 result!13615) b_and!32193)))

(declare-fun b_lambda!15157 () Bool)

(assert (=> (not b_lambda!15157) (not b!989256)))

(assert (=> b!989256 t!29896))

(declare-fun b_and!32195 () Bool)

(assert (= b_and!32193 (and (=> t!29896 result!13615) b_and!32195)))

(assert (=> b!989261 m!916159))

(assert (=> b!989261 m!916159))

(assert (=> b!989261 m!916175))

(declare-fun m!916583 () Bool)

(assert (=> b!989256 m!916583))

(assert (=> b!989256 m!916187))

(assert (=> b!989256 m!916191))

(assert (=> b!989256 m!916193))

(assert (=> b!989256 m!916191))

(assert (=> b!989256 m!916187))

(declare-fun m!916585 () Bool)

(assert (=> b!989256 m!916585))

(assert (=> b!989256 m!916583))

(declare-fun m!916587 () Bool)

(assert (=> b!989256 m!916587))

(assert (=> b!989256 m!916159))

(declare-fun m!916589 () Bool)

(assert (=> b!989256 m!916589))

(declare-fun m!916591 () Bool)

(assert (=> b!989257 m!916591))

(assert (=> b!989259 m!916159))

(assert (=> b!989259 m!916159))

(assert (=> b!989259 m!916175))

(assert (=> b!989251 m!916159))

(assert (=> b!989251 m!916159))

(declare-fun m!916593 () Bool)

(assert (=> b!989251 m!916593))

(declare-fun m!916595 () Bool)

(assert (=> d!117271 m!916595))

(assert (=> d!117271 m!916177))

(assert (=> bm!41938 m!916591))

(declare-fun m!916597 () Bool)

(assert (=> b!989260 m!916597))

(assert (=> b!989250 m!916187))

(assert (=> b!989250 m!916191))

(assert (=> b!989250 m!916193))

(assert (=> b!989250 m!916191))

(assert (=> b!989250 m!916187))

(assert (=> b!989250 m!916159))

(assert (=> b!989250 m!916159))

(declare-fun m!916599 () Bool)

(assert (=> b!989250 m!916599))

(declare-fun m!916601 () Bool)

(assert (=> b!989258 m!916601))

(assert (=> bm!41922 d!117271))

(declare-fun d!117273 () Bool)

(declare-fun e!557857 () Bool)

(assert (=> d!117273 e!557857))

(declare-fun res!661684 () Bool)

(assert (=> d!117273 (=> (not res!661684) (not e!557857))))

(declare-fun lt!438876 () ListLongMap!13695)

(assert (=> d!117273 (= res!661684 (contains!5728 lt!438876 (_1!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!438878 () List!20934)

(assert (=> d!117273 (= lt!438876 (ListLongMap!13696 lt!438878))))

(declare-fun lt!438879 () Unit!32777)

(declare-fun lt!438877 () Unit!32777)

(assert (=> d!117273 (= lt!438879 lt!438877)))

(assert (=> d!117273 (= (getValueByKey!516 lt!438878 (_1!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!521 (_2!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117273 (= lt!438877 (lemmaContainsTupThenGetReturnValue!273 lt!438878 (_1!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117273 (= lt!438878 (insertStrictlySorted!329 (toList!6863 (ite c!100194 call!41917 (ite c!100196 call!41915 call!41921))) (_1!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117273 (= (+!3045 (ite c!100194 call!41917 (ite c!100196 call!41915 call!41921)) (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!438876)))

(declare-fun b!989262 () Bool)

(declare-fun res!661683 () Bool)

(assert (=> b!989262 (=> (not res!661683) (not e!557857))))

(assert (=> b!989262 (= res!661683 (= (getValueByKey!516 (toList!6863 lt!438876) (_1!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!521 (_2!7502 (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!989263 () Bool)

(assert (=> b!989263 (= e!557857 (contains!5729 (toList!6863 lt!438876) (ite (or c!100194 c!100196) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117273 res!661684) b!989262))

(assert (= (and b!989262 res!661683) b!989263))

(declare-fun m!916603 () Bool)

(assert (=> d!117273 m!916603))

(declare-fun m!916605 () Bool)

(assert (=> d!117273 m!916605))

(declare-fun m!916607 () Bool)

(assert (=> d!117273 m!916607))

(declare-fun m!916609 () Bool)

(assert (=> d!117273 m!916609))

(declare-fun m!916611 () Bool)

(assert (=> b!989262 m!916611))

(declare-fun m!916613 () Bool)

(assert (=> b!989263 m!916613))

(assert (=> bm!41914 d!117273))

(declare-fun d!117275 () Bool)

(declare-fun e!557859 () Bool)

(assert (=> d!117275 e!557859))

(declare-fun res!661685 () Bool)

(assert (=> d!117275 (=> res!661685 e!557859)))

(declare-fun lt!438883 () Bool)

(assert (=> d!117275 (= res!661685 (not lt!438883))))

(declare-fun lt!438881 () Bool)

(assert (=> d!117275 (= lt!438883 lt!438881)))

(declare-fun lt!438880 () Unit!32777)

(declare-fun e!557858 () Unit!32777)

(assert (=> d!117275 (= lt!438880 e!557858)))

(declare-fun c!100239 () Bool)

(assert (=> d!117275 (= c!100239 lt!438881)))

(assert (=> d!117275 (= lt!438881 (containsKey!479 (toList!6863 lt!438703) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> d!117275 (= (contains!5728 lt!438703 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) lt!438883)))

(declare-fun b!989264 () Bool)

(declare-fun lt!438882 () Unit!32777)

(assert (=> b!989264 (= e!557858 lt!438882)))

(assert (=> b!989264 (= lt!438882 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438703) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!989264 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438703) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!989265 () Bool)

(declare-fun Unit!32783 () Unit!32777)

(assert (=> b!989265 (= e!557858 Unit!32783)))

(declare-fun b!989266 () Bool)

(assert (=> b!989266 (= e!557859 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438703) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(assert (= (and d!117275 c!100239) b!989264))

(assert (= (and d!117275 (not c!100239)) b!989265))

(assert (= (and d!117275 (not res!661685)) b!989266))

(assert (=> d!117275 m!916255))

(declare-fun m!916615 () Bool)

(assert (=> d!117275 m!916615))

(assert (=> b!989264 m!916255))

(declare-fun m!916617 () Bool)

(assert (=> b!989264 m!916617))

(assert (=> b!989264 m!916255))

(declare-fun m!916619 () Bool)

(assert (=> b!989264 m!916619))

(assert (=> b!989264 m!916619))

(declare-fun m!916621 () Bool)

(assert (=> b!989264 m!916621))

(assert (=> b!989266 m!916255))

(assert (=> b!989266 m!916619))

(assert (=> b!989266 m!916619))

(assert (=> b!989266 m!916621))

(assert (=> b!989038 d!117275))

(declare-fun d!117277 () Bool)

(declare-fun e!557861 () Bool)

(assert (=> d!117277 e!557861))

(declare-fun res!661686 () Bool)

(assert (=> d!117277 (=> res!661686 e!557861)))

(declare-fun lt!438887 () Bool)

(assert (=> d!117277 (= res!661686 (not lt!438887))))

(declare-fun lt!438885 () Bool)

(assert (=> d!117277 (= lt!438887 lt!438885)))

(declare-fun lt!438884 () Unit!32777)

(declare-fun e!557860 () Unit!32777)

(assert (=> d!117277 (= lt!438884 e!557860)))

(declare-fun c!100240 () Bool)

(assert (=> d!117277 (= c!100240 lt!438885)))

(assert (=> d!117277 (= lt!438885 (containsKey!479 (toList!6863 lt!438818) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117277 (= (contains!5728 lt!438818 #b0000000000000000000000000000000000000000000000000000000000000000) lt!438887)))

(declare-fun b!989267 () Bool)

(declare-fun lt!438886 () Unit!32777)

(assert (=> b!989267 (= e!557860 lt!438886)))

(assert (=> b!989267 (= lt!438886 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438818) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!989267 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438818) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989268 () Bool)

(declare-fun Unit!32784 () Unit!32777)

(assert (=> b!989268 (= e!557860 Unit!32784)))

(declare-fun b!989269 () Bool)

(assert (=> b!989269 (= e!557861 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438818) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117277 c!100240) b!989267))

(assert (= (and d!117277 (not c!100240)) b!989268))

(assert (= (and d!117277 (not res!661686)) b!989269))

(declare-fun m!916623 () Bool)

(assert (=> d!117277 m!916623))

(declare-fun m!916625 () Bool)

(assert (=> b!989267 m!916625))

(declare-fun m!916627 () Bool)

(assert (=> b!989267 m!916627))

(assert (=> b!989267 m!916627))

(declare-fun m!916629 () Bool)

(assert (=> b!989267 m!916629))

(assert (=> b!989269 m!916627))

(assert (=> b!989269 m!916627))

(assert (=> b!989269 m!916629))

(assert (=> bm!41924 d!117277))

(declare-fun d!117279 () Bool)

(declare-fun lt!438888 () Bool)

(assert (=> d!117279 (= lt!438888 (select (content!422 (toList!6863 lt!438718)) lt!438659))))

(declare-fun e!557862 () Bool)

(assert (=> d!117279 (= lt!438888 e!557862)))

(declare-fun res!661687 () Bool)

(assert (=> d!117279 (=> (not res!661687) (not e!557862))))

(assert (=> d!117279 (= res!661687 ((_ is Cons!20930) (toList!6863 lt!438718)))))

(assert (=> d!117279 (= (contains!5729 (toList!6863 lt!438718) lt!438659) lt!438888)))

(declare-fun b!989270 () Bool)

(declare-fun e!557863 () Bool)

(assert (=> b!989270 (= e!557862 e!557863)))

(declare-fun res!661688 () Bool)

(assert (=> b!989270 (=> res!661688 e!557863)))

(assert (=> b!989270 (= res!661688 (= (h!22092 (toList!6863 lt!438718)) lt!438659))))

(declare-fun b!989271 () Bool)

(assert (=> b!989271 (= e!557863 (contains!5729 (t!29897 (toList!6863 lt!438718)) lt!438659))))

(assert (= (and d!117279 res!661687) b!989270))

(assert (= (and b!989270 (not res!661688)) b!989271))

(declare-fun m!916631 () Bool)

(assert (=> d!117279 m!916631))

(declare-fun m!916633 () Bool)

(assert (=> d!117279 m!916633))

(declare-fun m!916635 () Bool)

(assert (=> b!989271 m!916635))

(assert (=> b!989056 d!117279))

(declare-fun d!117281 () Bool)

(declare-fun e!557864 () Bool)

(assert (=> d!117281 e!557864))

(declare-fun res!661690 () Bool)

(assert (=> d!117281 (=> (not res!661690) (not e!557864))))

(declare-fun lt!438889 () ListLongMap!13695)

(assert (=> d!117281 (= res!661690 (contains!5728 lt!438889 (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!438891 () List!20934)

(assert (=> d!117281 (= lt!438889 (ListLongMap!13696 lt!438891))))

(declare-fun lt!438892 () Unit!32777)

(declare-fun lt!438890 () Unit!32777)

(assert (=> d!117281 (= lt!438892 lt!438890)))

(assert (=> d!117281 (= (getValueByKey!516 lt!438891 (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117281 (= lt!438890 (lemmaContainsTupThenGetReturnValue!273 lt!438891 (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117281 (= lt!438891 (insertStrictlySorted!329 (toList!6863 call!41918) (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117281 (= (+!3045 call!41918 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!438889)))

(declare-fun b!989272 () Bool)

(declare-fun res!661689 () Bool)

(assert (=> b!989272 (=> (not res!661689) (not e!557864))))

(assert (=> b!989272 (= res!661689 (= (getValueByKey!516 (toList!6863 lt!438889) (_1!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!989273 () Bool)

(assert (=> b!989273 (= e!557864 (contains!5729 (toList!6863 lt!438889) (tuple2!14985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117281 res!661690) b!989272))

(assert (= (and b!989272 res!661689) b!989273))

(declare-fun m!916637 () Bool)

(assert (=> d!117281 m!916637))

(declare-fun m!916639 () Bool)

(assert (=> d!117281 m!916639))

(declare-fun m!916641 () Bool)

(assert (=> d!117281 m!916641))

(declare-fun m!916643 () Bool)

(assert (=> d!117281 m!916643))

(declare-fun m!916645 () Bool)

(assert (=> b!989272 m!916645))

(declare-fun m!916647 () Bool)

(assert (=> b!989273 m!916647))

(assert (=> b!989102 d!117281))

(declare-fun d!117283 () Bool)

(declare-fun lt!438893 () Bool)

(assert (=> d!117283 (= lt!438893 (select (content!422 (toList!6863 lt!438792)) lt!438659))))

(declare-fun e!557865 () Bool)

(assert (=> d!117283 (= lt!438893 e!557865)))

(declare-fun res!661691 () Bool)

(assert (=> d!117283 (=> (not res!661691) (not e!557865))))

(assert (=> d!117283 (= res!661691 ((_ is Cons!20930) (toList!6863 lt!438792)))))

(assert (=> d!117283 (= (contains!5729 (toList!6863 lt!438792) lt!438659) lt!438893)))

(declare-fun b!989274 () Bool)

(declare-fun e!557866 () Bool)

(assert (=> b!989274 (= e!557865 e!557866)))

(declare-fun res!661692 () Bool)

(assert (=> b!989274 (=> res!661692 e!557866)))

(assert (=> b!989274 (= res!661692 (= (h!22092 (toList!6863 lt!438792)) lt!438659))))

(declare-fun b!989275 () Bool)

(assert (=> b!989275 (= e!557866 (contains!5729 (t!29897 (toList!6863 lt!438792)) lt!438659))))

(assert (= (and d!117283 res!661691) b!989274))

(assert (= (and b!989274 (not res!661692)) b!989275))

(declare-fun m!916649 () Bool)

(assert (=> d!117283 m!916649))

(declare-fun m!916651 () Bool)

(assert (=> d!117283 m!916651))

(declare-fun m!916653 () Bool)

(assert (=> b!989275 m!916653))

(assert (=> b!989123 d!117283))

(declare-fun d!117285 () Bool)

(assert (=> d!117285 (= (apply!930 lt!438818 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15634 (getValueByKey!516 (toList!6863 lt!438818) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28073 () Bool)

(assert (= bs!28073 d!117285))

(assert (=> bs!28073 m!916627))

(assert (=> bs!28073 m!916627))

(declare-fun m!916655 () Bool)

(assert (=> bs!28073 m!916655))

(assert (=> b!989132 d!117285))

(declare-fun d!117287 () Bool)

(declare-fun lt!438894 () Bool)

(assert (=> d!117287 (= lt!438894 (select (content!422 (toList!6863 lt!438722)) lt!438659))))

(declare-fun e!557867 () Bool)

(assert (=> d!117287 (= lt!438894 e!557867)))

(declare-fun res!661693 () Bool)

(assert (=> d!117287 (=> (not res!661693) (not e!557867))))

(assert (=> d!117287 (= res!661693 ((_ is Cons!20930) (toList!6863 lt!438722)))))

(assert (=> d!117287 (= (contains!5729 (toList!6863 lt!438722) lt!438659) lt!438894)))

(declare-fun b!989276 () Bool)

(declare-fun e!557868 () Bool)

(assert (=> b!989276 (= e!557867 e!557868)))

(declare-fun res!661694 () Bool)

(assert (=> b!989276 (=> res!661694 e!557868)))

(assert (=> b!989276 (= res!661694 (= (h!22092 (toList!6863 lt!438722)) lt!438659))))

(declare-fun b!989277 () Bool)

(assert (=> b!989277 (= e!557868 (contains!5729 (t!29897 (toList!6863 lt!438722)) lt!438659))))

(assert (= (and d!117287 res!661693) b!989276))

(assert (= (and b!989276 (not res!661694)) b!989277))

(declare-fun m!916657 () Bool)

(assert (=> d!117287 m!916657))

(declare-fun m!916659 () Bool)

(assert (=> d!117287 m!916659))

(declare-fun m!916661 () Bool)

(assert (=> b!989277 m!916661))

(assert (=> b!989058 d!117287))

(declare-fun d!117289 () Bool)

(assert (=> d!117289 (= (apply!930 lt!438789 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15634 (getValueByKey!516 (toList!6863 lt!438789) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28074 () Bool)

(assert (= bs!28074 d!117289))

(declare-fun m!916663 () Bool)

(assert (=> bs!28074 m!916663))

(assert (=> bs!28074 m!916663))

(declare-fun m!916665 () Bool)

(assert (=> bs!28074 m!916665))

(assert (=> b!989109 d!117289))

(declare-fun d!117291 () Bool)

(assert (=> d!117291 (not (contains!5728 (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701)) lt!438699))))

(declare-fun lt!438897 () Unit!32777)

(declare-fun choose!1620 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64)) Unit!32777)

(assert (=> d!117291 (= lt!438897 (choose!1620 lt!438700 lt!438704 lt!438701 lt!438699))))

(declare-fun e!557871 () Bool)

(assert (=> d!117291 e!557871))

(declare-fun res!661697 () Bool)

(assert (=> d!117291 (=> (not res!661697) (not e!557871))))

(assert (=> d!117291 (= res!661697 (not (contains!5728 lt!438700 lt!438699)))))

(assert (=> d!117291 (= (addStillNotContains!236 lt!438700 lt!438704 lt!438701 lt!438699) lt!438897)))

(declare-fun b!989281 () Bool)

(assert (=> b!989281 (= e!557871 (not (= lt!438704 lt!438699)))))

(assert (= (and d!117291 res!661697) b!989281))

(assert (=> d!117291 m!916259))

(assert (=> d!117291 m!916259))

(assert (=> d!117291 m!916267))

(declare-fun m!916667 () Bool)

(assert (=> d!117291 m!916667))

(declare-fun m!916669 () Bool)

(assert (=> d!117291 m!916669))

(assert (=> b!989043 d!117291))

(declare-fun d!117293 () Bool)

(declare-fun e!557872 () Bool)

(assert (=> d!117293 e!557872))

(declare-fun res!661699 () Bool)

(assert (=> d!117293 (=> (not res!661699) (not e!557872))))

(declare-fun lt!438898 () ListLongMap!13695)

(assert (=> d!117293 (= res!661699 (contains!5728 lt!438898 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!438900 () List!20934)

(assert (=> d!117293 (= lt!438898 (ListLongMap!13696 lt!438900))))

(declare-fun lt!438901 () Unit!32777)

(declare-fun lt!438899 () Unit!32777)

(assert (=> d!117293 (= lt!438901 lt!438899)))

(assert (=> d!117293 (= (getValueByKey!516 lt!438900 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!521 (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117293 (= lt!438899 (lemmaContainsTupThenGetReturnValue!273 lt!438900 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117293 (= lt!438900 (insertStrictlySorted!329 (toList!6863 call!41900) (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117293 (= (+!3045 call!41900 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!438898)))

(declare-fun b!989282 () Bool)

(declare-fun res!661698 () Bool)

(assert (=> b!989282 (=> (not res!661698) (not e!557872))))

(assert (=> b!989282 (= res!661698 (= (getValueByKey!516 (toList!6863 lt!438898) (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!521 (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!989283 () Bool)

(assert (=> b!989283 (= e!557872 (contains!5729 (toList!6863 lt!438898) (tuple2!14985 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15631 (select (arr!30083 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!117293 res!661699) b!989282))

(assert (= (and b!989282 res!661698) b!989283))

(declare-fun m!916671 () Bool)

(assert (=> d!117293 m!916671))

(declare-fun m!916673 () Bool)

(assert (=> d!117293 m!916673))

(declare-fun m!916675 () Bool)

(assert (=> d!117293 m!916675))

(declare-fun m!916677 () Bool)

(assert (=> d!117293 m!916677))

(declare-fun m!916679 () Bool)

(assert (=> b!989282 m!916679))

(declare-fun m!916681 () Bool)

(assert (=> b!989283 m!916681))

(assert (=> b!989043 d!117293))

(declare-fun d!117295 () Bool)

(declare-fun e!557874 () Bool)

(assert (=> d!117295 e!557874))

(declare-fun res!661700 () Bool)

(assert (=> d!117295 (=> res!661700 e!557874)))

(declare-fun lt!438905 () Bool)

(assert (=> d!117295 (= res!661700 (not lt!438905))))

(declare-fun lt!438903 () Bool)

(assert (=> d!117295 (= lt!438905 lt!438903)))

(declare-fun lt!438902 () Unit!32777)

(declare-fun e!557873 () Unit!32777)

(assert (=> d!117295 (= lt!438902 e!557873)))

(declare-fun c!100241 () Bool)

(assert (=> d!117295 (= c!100241 lt!438903)))

(assert (=> d!117295 (= lt!438903 (containsKey!479 (toList!6863 (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701))) lt!438699))))

(assert (=> d!117295 (= (contains!5728 (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701)) lt!438699) lt!438905)))

(declare-fun b!989284 () Bool)

(declare-fun lt!438904 () Unit!32777)

(assert (=> b!989284 (= e!557873 lt!438904)))

(assert (=> b!989284 (= lt!438904 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701))) lt!438699))))

(assert (=> b!989284 (isDefined!384 (getValueByKey!516 (toList!6863 (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701))) lt!438699))))

(declare-fun b!989285 () Bool)

(declare-fun Unit!32785 () Unit!32777)

(assert (=> b!989285 (= e!557873 Unit!32785)))

(declare-fun b!989286 () Bool)

(assert (=> b!989286 (= e!557874 (isDefined!384 (getValueByKey!516 (toList!6863 (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701))) lt!438699)))))

(assert (= (and d!117295 c!100241) b!989284))

(assert (= (and d!117295 (not c!100241)) b!989285))

(assert (= (and d!117295 (not res!661700)) b!989286))

(declare-fun m!916683 () Bool)

(assert (=> d!117295 m!916683))

(declare-fun m!916685 () Bool)

(assert (=> b!989284 m!916685))

(declare-fun m!916687 () Bool)

(assert (=> b!989284 m!916687))

(assert (=> b!989284 m!916687))

(declare-fun m!916689 () Bool)

(assert (=> b!989284 m!916689))

(assert (=> b!989286 m!916687))

(assert (=> b!989286 m!916687))

(assert (=> b!989286 m!916689))

(assert (=> b!989043 d!117295))

(declare-fun d!117297 () Bool)

(declare-fun e!557875 () Bool)

(assert (=> d!117297 e!557875))

(declare-fun res!661702 () Bool)

(assert (=> d!117297 (=> (not res!661702) (not e!557875))))

(declare-fun lt!438906 () ListLongMap!13695)

(assert (=> d!117297 (= res!661702 (contains!5728 lt!438906 (_1!7502 (tuple2!14985 lt!438704 lt!438701))))))

(declare-fun lt!438908 () List!20934)

(assert (=> d!117297 (= lt!438906 (ListLongMap!13696 lt!438908))))

(declare-fun lt!438909 () Unit!32777)

(declare-fun lt!438907 () Unit!32777)

(assert (=> d!117297 (= lt!438909 lt!438907)))

(assert (=> d!117297 (= (getValueByKey!516 lt!438908 (_1!7502 (tuple2!14985 lt!438704 lt!438701))) (Some!521 (_2!7502 (tuple2!14985 lt!438704 lt!438701))))))

(assert (=> d!117297 (= lt!438907 (lemmaContainsTupThenGetReturnValue!273 lt!438908 (_1!7502 (tuple2!14985 lt!438704 lt!438701)) (_2!7502 (tuple2!14985 lt!438704 lt!438701))))))

(assert (=> d!117297 (= lt!438908 (insertStrictlySorted!329 (toList!6863 lt!438700) (_1!7502 (tuple2!14985 lt!438704 lt!438701)) (_2!7502 (tuple2!14985 lt!438704 lt!438701))))))

(assert (=> d!117297 (= (+!3045 lt!438700 (tuple2!14985 lt!438704 lt!438701)) lt!438906)))

(declare-fun b!989287 () Bool)

(declare-fun res!661701 () Bool)

(assert (=> b!989287 (=> (not res!661701) (not e!557875))))

(assert (=> b!989287 (= res!661701 (= (getValueByKey!516 (toList!6863 lt!438906) (_1!7502 (tuple2!14985 lt!438704 lt!438701))) (Some!521 (_2!7502 (tuple2!14985 lt!438704 lt!438701)))))))

(declare-fun b!989288 () Bool)

(assert (=> b!989288 (= e!557875 (contains!5729 (toList!6863 lt!438906) (tuple2!14985 lt!438704 lt!438701)))))

(assert (= (and d!117297 res!661702) b!989287))

(assert (= (and b!989287 res!661701) b!989288))

(declare-fun m!916691 () Bool)

(assert (=> d!117297 m!916691))

(declare-fun m!916693 () Bool)

(assert (=> d!117297 m!916693))

(declare-fun m!916695 () Bool)

(assert (=> d!117297 m!916695))

(declare-fun m!916697 () Bool)

(assert (=> d!117297 m!916697))

(declare-fun m!916699 () Bool)

(assert (=> b!989287 m!916699))

(declare-fun m!916701 () Bool)

(assert (=> b!989288 m!916701))

(assert (=> b!989043 d!117297))

(assert (=> b!989043 d!117269))

(declare-fun d!117299 () Bool)

(declare-fun e!557877 () Bool)

(assert (=> d!117299 e!557877))

(declare-fun res!661703 () Bool)

(assert (=> d!117299 (=> res!661703 e!557877)))

(declare-fun lt!438913 () Bool)

(assert (=> d!117299 (= res!661703 (not lt!438913))))

(declare-fun lt!438911 () Bool)

(assert (=> d!117299 (= lt!438913 lt!438911)))

(declare-fun lt!438910 () Unit!32777)

(declare-fun e!557876 () Unit!32777)

(assert (=> d!117299 (= lt!438910 e!557876)))

(declare-fun c!100242 () Bool)

(assert (=> d!117299 (= c!100242 lt!438911)))

(assert (=> d!117299 (= lt!438911 (containsKey!479 (toList!6863 lt!438821) (_1!7502 lt!438656)))))

(assert (=> d!117299 (= (contains!5728 lt!438821 (_1!7502 lt!438656)) lt!438913)))

(declare-fun b!989289 () Bool)

(declare-fun lt!438912 () Unit!32777)

(assert (=> b!989289 (= e!557876 lt!438912)))

(assert (=> b!989289 (= lt!438912 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438821) (_1!7502 lt!438656)))))

(assert (=> b!989289 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438821) (_1!7502 lt!438656)))))

(declare-fun b!989290 () Bool)

(declare-fun Unit!32786 () Unit!32777)

(assert (=> b!989290 (= e!557876 Unit!32786)))

(declare-fun b!989291 () Bool)

(assert (=> b!989291 (= e!557877 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438821) (_1!7502 lt!438656))))))

(assert (= (and d!117299 c!100242) b!989289))

(assert (= (and d!117299 (not c!100242)) b!989290))

(assert (= (and d!117299 (not res!661703)) b!989291))

(declare-fun m!916703 () Bool)

(assert (=> d!117299 m!916703))

(declare-fun m!916705 () Bool)

(assert (=> b!989289 m!916705))

(assert (=> b!989289 m!916443))

(assert (=> b!989289 m!916443))

(declare-fun m!916707 () Bool)

(assert (=> b!989289 m!916707))

(assert (=> b!989291 m!916443))

(assert (=> b!989291 m!916443))

(assert (=> b!989291 m!916707))

(assert (=> d!117229 d!117299))

(declare-fun b!989293 () Bool)

(declare-fun e!557878 () Option!522)

(declare-fun e!557879 () Option!522)

(assert (=> b!989293 (= e!557878 e!557879)))

(declare-fun c!100244 () Bool)

(assert (=> b!989293 (= c!100244 (and ((_ is Cons!20930) lt!438823) (not (= (_1!7502 (h!22092 lt!438823)) (_1!7502 lt!438656)))))))

(declare-fun b!989294 () Bool)

(assert (=> b!989294 (= e!557879 (getValueByKey!516 (t!29897 lt!438823) (_1!7502 lt!438656)))))

(declare-fun d!117301 () Bool)

(declare-fun c!100243 () Bool)

(assert (=> d!117301 (= c!100243 (and ((_ is Cons!20930) lt!438823) (= (_1!7502 (h!22092 lt!438823)) (_1!7502 lt!438656))))))

(assert (=> d!117301 (= (getValueByKey!516 lt!438823 (_1!7502 lt!438656)) e!557878)))

(declare-fun b!989295 () Bool)

(assert (=> b!989295 (= e!557879 None!520)))

(declare-fun b!989292 () Bool)

(assert (=> b!989292 (= e!557878 (Some!521 (_2!7502 (h!22092 lt!438823))))))

(assert (= (and d!117301 c!100243) b!989292))

(assert (= (and d!117301 (not c!100243)) b!989293))

(assert (= (and b!989293 c!100244) b!989294))

(assert (= (and b!989293 (not c!100244)) b!989295))

(declare-fun m!916709 () Bool)

(assert (=> b!989294 m!916709))

(assert (=> d!117229 d!117301))

(declare-fun d!117303 () Bool)

(assert (=> d!117303 (= (getValueByKey!516 lt!438823 (_1!7502 lt!438656)) (Some!521 (_2!7502 lt!438656)))))

(declare-fun lt!438914 () Unit!32777)

(assert (=> d!117303 (= lt!438914 (choose!1619 lt!438823 (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(declare-fun e!557880 () Bool)

(assert (=> d!117303 e!557880))

(declare-fun res!661704 () Bool)

(assert (=> d!117303 (=> (not res!661704) (not e!557880))))

(assert (=> d!117303 (= res!661704 (isStrictlySorted!512 lt!438823))))

(assert (=> d!117303 (= (lemmaContainsTupThenGetReturnValue!273 lt!438823 (_1!7502 lt!438656) (_2!7502 lt!438656)) lt!438914)))

(declare-fun b!989296 () Bool)

(declare-fun res!661705 () Bool)

(assert (=> b!989296 (=> (not res!661705) (not e!557880))))

(assert (=> b!989296 (= res!661705 (containsKey!479 lt!438823 (_1!7502 lt!438656)))))

(declare-fun b!989297 () Bool)

(assert (=> b!989297 (= e!557880 (contains!5729 lt!438823 (tuple2!14985 (_1!7502 lt!438656) (_2!7502 lt!438656))))))

(assert (= (and d!117303 res!661704) b!989296))

(assert (= (and b!989296 res!661705) b!989297))

(assert (=> d!117303 m!916437))

(declare-fun m!916711 () Bool)

(assert (=> d!117303 m!916711))

(declare-fun m!916713 () Bool)

(assert (=> d!117303 m!916713))

(declare-fun m!916715 () Bool)

(assert (=> b!989296 m!916715))

(declare-fun m!916717 () Bool)

(assert (=> b!989297 m!916717))

(assert (=> d!117229 d!117303))

(declare-fun b!989298 () Bool)

(declare-fun e!557883 () Bool)

(declare-fun lt!438915 () List!20934)

(assert (=> b!989298 (= e!557883 (contains!5729 lt!438915 (tuple2!14985 (_1!7502 lt!438656) (_2!7502 lt!438656))))))

(declare-fun b!989299 () Bool)

(declare-fun e!557885 () List!20934)

(declare-fun e!557881 () List!20934)

(assert (=> b!989299 (= e!557885 e!557881)))

(declare-fun c!100248 () Bool)

(assert (=> b!989299 (= c!100248 (and ((_ is Cons!20930) (toList!6863 (+!3045 lt!438657 lt!438659))) (= (_1!7502 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438659)))) (_1!7502 lt!438656))))))

(declare-fun bm!41939 () Bool)

(declare-fun call!41942 () List!20934)

(declare-fun call!41943 () List!20934)

(assert (=> bm!41939 (= call!41942 call!41943)))

(declare-fun b!989300 () Bool)

(declare-fun e!557884 () List!20934)

(declare-fun call!41944 () List!20934)

(assert (=> b!989300 (= e!557884 call!41944)))

(declare-fun d!117305 () Bool)

(assert (=> d!117305 e!557883))

(declare-fun res!661707 () Bool)

(assert (=> d!117305 (=> (not res!661707) (not e!557883))))

(assert (=> d!117305 (= res!661707 (isStrictlySorted!512 lt!438915))))

(assert (=> d!117305 (= lt!438915 e!557885)))

(declare-fun c!100246 () Bool)

(assert (=> d!117305 (= c!100246 (and ((_ is Cons!20930) (toList!6863 (+!3045 lt!438657 lt!438659))) (bvslt (_1!7502 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438659)))) (_1!7502 lt!438656))))))

(assert (=> d!117305 (isStrictlySorted!512 (toList!6863 (+!3045 lt!438657 lt!438659)))))

(assert (=> d!117305 (= (insertStrictlySorted!329 (toList!6863 (+!3045 lt!438657 lt!438659)) (_1!7502 lt!438656) (_2!7502 lt!438656)) lt!438915)))

(declare-fun bm!41940 () Bool)

(assert (=> bm!41940 (= call!41944 call!41942)))

(declare-fun b!989301 () Bool)

(declare-fun res!661706 () Bool)

(assert (=> b!989301 (=> (not res!661706) (not e!557883))))

(assert (=> b!989301 (= res!661706 (containsKey!479 lt!438915 (_1!7502 lt!438656)))))

(declare-fun b!989302 () Bool)

(assert (=> b!989302 (= e!557881 call!41942)))

(declare-fun b!989303 () Bool)

(declare-fun e!557882 () List!20934)

(assert (=> b!989303 (= e!557882 (insertStrictlySorted!329 (t!29897 (toList!6863 (+!3045 lt!438657 lt!438659))) (_1!7502 lt!438656) (_2!7502 lt!438656)))))

(declare-fun c!100245 () Bool)

(declare-fun b!989304 () Bool)

(assert (=> b!989304 (= c!100245 (and ((_ is Cons!20930) (toList!6863 (+!3045 lt!438657 lt!438659))) (bvsgt (_1!7502 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438659)))) (_1!7502 lt!438656))))))

(assert (=> b!989304 (= e!557881 e!557884)))

(declare-fun b!989305 () Bool)

(assert (=> b!989305 (= e!557882 (ite c!100248 (t!29897 (toList!6863 (+!3045 lt!438657 lt!438659))) (ite c!100245 (Cons!20930 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438659))) (t!29897 (toList!6863 (+!3045 lt!438657 lt!438659)))) Nil!20931)))))

(declare-fun b!989306 () Bool)

(assert (=> b!989306 (= e!557885 call!41943)))

(declare-fun b!989307 () Bool)

(assert (=> b!989307 (= e!557884 call!41944)))

(declare-fun bm!41941 () Bool)

(assert (=> bm!41941 (= call!41943 ($colon$colon!556 e!557882 (ite c!100246 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438659))) (tuple2!14985 (_1!7502 lt!438656) (_2!7502 lt!438656)))))))

(declare-fun c!100247 () Bool)

(assert (=> bm!41941 (= c!100247 c!100246)))

(assert (= (and d!117305 c!100246) b!989306))

(assert (= (and d!117305 (not c!100246)) b!989299))

(assert (= (and b!989299 c!100248) b!989302))

(assert (= (and b!989299 (not c!100248)) b!989304))

(assert (= (and b!989304 c!100245) b!989307))

(assert (= (and b!989304 (not c!100245)) b!989300))

(assert (= (or b!989307 b!989300) bm!41940))

(assert (= (or b!989302 bm!41940) bm!41939))

(assert (= (or b!989306 bm!41939) bm!41941))

(assert (= (and bm!41941 c!100247) b!989303))

(assert (= (and bm!41941 (not c!100247)) b!989305))

(assert (= (and d!117305 res!661707) b!989301))

(assert (= (and b!989301 res!661706) b!989298))

(declare-fun m!916719 () Bool)

(assert (=> bm!41941 m!916719))

(declare-fun m!916721 () Bool)

(assert (=> b!989301 m!916721))

(declare-fun m!916723 () Bool)

(assert (=> b!989303 m!916723))

(declare-fun m!916725 () Bool)

(assert (=> d!117305 m!916725))

(declare-fun m!916727 () Bool)

(assert (=> d!117305 m!916727))

(declare-fun m!916729 () Bool)

(assert (=> b!989298 m!916729))

(assert (=> d!117229 d!117305))

(assert (=> bm!41915 d!117213))

(assert (=> bm!41897 d!117255))

(declare-fun d!117307 () Bool)

(assert (=> d!117307 (= (apply!930 (+!3045 lt!438804 (tuple2!14985 lt!438800 minValue!1220)) lt!438810) (apply!930 lt!438804 lt!438810))))

(declare-fun lt!438918 () Unit!32777)

(declare-fun choose!1621 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64)) Unit!32777)

(assert (=> d!117307 (= lt!438918 (choose!1621 lt!438804 lt!438800 minValue!1220 lt!438810))))

(declare-fun e!557888 () Bool)

(assert (=> d!117307 e!557888))

(declare-fun res!661710 () Bool)

(assert (=> d!117307 (=> (not res!661710) (not e!557888))))

(assert (=> d!117307 (= res!661710 (contains!5728 lt!438804 lt!438810))))

(assert (=> d!117307 (= (addApplyDifferent!471 lt!438804 lt!438800 minValue!1220 lt!438810) lt!438918)))

(declare-fun b!989311 () Bool)

(assert (=> b!989311 (= e!557888 (not (= lt!438810 lt!438800)))))

(assert (= (and d!117307 res!661710) b!989311))

(declare-fun m!916731 () Bool)

(assert (=> d!117307 m!916731))

(assert (=> d!117307 m!916409))

(assert (=> d!117307 m!916409))

(assert (=> d!117307 m!916425))

(declare-fun m!916733 () Bool)

(assert (=> d!117307 m!916733))

(assert (=> d!117307 m!916433))

(assert (=> b!989136 d!117307))

(declare-fun d!117309 () Bool)

(assert (=> d!117309 (= (apply!930 (+!3045 lt!438819 (tuple2!14985 lt!438803 zeroValue!1220)) lt!438805) (apply!930 lt!438819 lt!438805))))

(declare-fun lt!438919 () Unit!32777)

(assert (=> d!117309 (= lt!438919 (choose!1621 lt!438819 lt!438803 zeroValue!1220 lt!438805))))

(declare-fun e!557889 () Bool)

(assert (=> d!117309 e!557889))

(declare-fun res!661711 () Bool)

(assert (=> d!117309 (=> (not res!661711) (not e!557889))))

(assert (=> d!117309 (= res!661711 (contains!5728 lt!438819 lt!438805))))

(assert (=> d!117309 (= (addApplyDifferent!471 lt!438819 lt!438803 zeroValue!1220 lt!438805) lt!438919)))

(declare-fun b!989312 () Bool)

(assert (=> b!989312 (= e!557889 (not (= lt!438805 lt!438803)))))

(assert (= (and d!117309 res!661711) b!989312))

(declare-fun m!916735 () Bool)

(assert (=> d!117309 m!916735))

(assert (=> d!117309 m!916421))

(assert (=> d!117309 m!916421))

(assert (=> d!117309 m!916423))

(declare-fun m!916737 () Bool)

(assert (=> d!117309 m!916737))

(assert (=> d!117309 m!916413))

(assert (=> b!989136 d!117309))

(declare-fun d!117311 () Bool)

(declare-fun e!557890 () Bool)

(assert (=> d!117311 e!557890))

(declare-fun res!661713 () Bool)

(assert (=> d!117311 (=> (not res!661713) (not e!557890))))

(declare-fun lt!438920 () ListLongMap!13695)

(assert (=> d!117311 (= res!661713 (contains!5728 lt!438920 (_1!7502 (tuple2!14985 lt!438808 minValue!1220))))))

(declare-fun lt!438922 () List!20934)

(assert (=> d!117311 (= lt!438920 (ListLongMap!13696 lt!438922))))

(declare-fun lt!438923 () Unit!32777)

(declare-fun lt!438921 () Unit!32777)

(assert (=> d!117311 (= lt!438923 lt!438921)))

(assert (=> d!117311 (= (getValueByKey!516 lt!438922 (_1!7502 (tuple2!14985 lt!438808 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438808 minValue!1220))))))

(assert (=> d!117311 (= lt!438921 (lemmaContainsTupThenGetReturnValue!273 lt!438922 (_1!7502 (tuple2!14985 lt!438808 minValue!1220)) (_2!7502 (tuple2!14985 lt!438808 minValue!1220))))))

(assert (=> d!117311 (= lt!438922 (insertStrictlySorted!329 (toList!6863 lt!438801) (_1!7502 (tuple2!14985 lt!438808 minValue!1220)) (_2!7502 (tuple2!14985 lt!438808 minValue!1220))))))

(assert (=> d!117311 (= (+!3045 lt!438801 (tuple2!14985 lt!438808 minValue!1220)) lt!438920)))

(declare-fun b!989313 () Bool)

(declare-fun res!661712 () Bool)

(assert (=> b!989313 (=> (not res!661712) (not e!557890))))

(assert (=> b!989313 (= res!661712 (= (getValueByKey!516 (toList!6863 lt!438920) (_1!7502 (tuple2!14985 lt!438808 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438808 minValue!1220)))))))

(declare-fun b!989314 () Bool)

(assert (=> b!989314 (= e!557890 (contains!5729 (toList!6863 lt!438920) (tuple2!14985 lt!438808 minValue!1220)))))

(assert (= (and d!117311 res!661713) b!989313))

(assert (= (and b!989313 res!661712) b!989314))

(declare-fun m!916739 () Bool)

(assert (=> d!117311 m!916739))

(declare-fun m!916741 () Bool)

(assert (=> d!117311 m!916741))

(declare-fun m!916743 () Bool)

(assert (=> d!117311 m!916743))

(declare-fun m!916745 () Bool)

(assert (=> d!117311 m!916745))

(declare-fun m!916747 () Bool)

(assert (=> b!989313 m!916747))

(declare-fun m!916749 () Bool)

(assert (=> b!989314 m!916749))

(assert (=> b!989136 d!117311))

(assert (=> b!989136 d!117271))

(declare-fun d!117313 () Bool)

(declare-fun e!557891 () Bool)

(assert (=> d!117313 e!557891))

(declare-fun res!661715 () Bool)

(assert (=> d!117313 (=> (not res!661715) (not e!557891))))

(declare-fun lt!438924 () ListLongMap!13695)

(assert (=> d!117313 (= res!661715 (contains!5728 lt!438924 (_1!7502 (tuple2!14985 lt!438803 zeroValue!1220))))))

(declare-fun lt!438926 () List!20934)

(assert (=> d!117313 (= lt!438924 (ListLongMap!13696 lt!438926))))

(declare-fun lt!438927 () Unit!32777)

(declare-fun lt!438925 () Unit!32777)

(assert (=> d!117313 (= lt!438927 lt!438925)))

(assert (=> d!117313 (= (getValueByKey!516 lt!438926 (_1!7502 (tuple2!14985 lt!438803 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438803 zeroValue!1220))))))

(assert (=> d!117313 (= lt!438925 (lemmaContainsTupThenGetReturnValue!273 lt!438926 (_1!7502 (tuple2!14985 lt!438803 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438803 zeroValue!1220))))))

(assert (=> d!117313 (= lt!438926 (insertStrictlySorted!329 (toList!6863 lt!438819) (_1!7502 (tuple2!14985 lt!438803 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438803 zeroValue!1220))))))

(assert (=> d!117313 (= (+!3045 lt!438819 (tuple2!14985 lt!438803 zeroValue!1220)) lt!438924)))

(declare-fun b!989315 () Bool)

(declare-fun res!661714 () Bool)

(assert (=> b!989315 (=> (not res!661714) (not e!557891))))

(assert (=> b!989315 (= res!661714 (= (getValueByKey!516 (toList!6863 lt!438924) (_1!7502 (tuple2!14985 lt!438803 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438803 zeroValue!1220)))))))

(declare-fun b!989316 () Bool)

(assert (=> b!989316 (= e!557891 (contains!5729 (toList!6863 lt!438924) (tuple2!14985 lt!438803 zeroValue!1220)))))

(assert (= (and d!117313 res!661715) b!989315))

(assert (= (and b!989315 res!661714) b!989316))

(declare-fun m!916751 () Bool)

(assert (=> d!117313 m!916751))

(declare-fun m!916753 () Bool)

(assert (=> d!117313 m!916753))

(declare-fun m!916755 () Bool)

(assert (=> d!117313 m!916755))

(declare-fun m!916757 () Bool)

(assert (=> d!117313 m!916757))

(declare-fun m!916759 () Bool)

(assert (=> b!989315 m!916759))

(declare-fun m!916761 () Bool)

(assert (=> b!989316 m!916761))

(assert (=> b!989136 d!117313))

(declare-fun d!117315 () Bool)

(assert (=> d!117315 (contains!5728 (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220)) lt!438820)))

(declare-fun lt!438930 () Unit!32777)

(declare-fun choose!1622 (ListLongMap!13695 (_ BitVec 64) V!35995 (_ BitVec 64)) Unit!32777)

(assert (=> d!117315 (= lt!438930 (choose!1622 lt!438811 lt!438807 zeroValue!1220 lt!438820))))

(assert (=> d!117315 (contains!5728 lt!438811 lt!438820)))

(assert (=> d!117315 (= (addStillContains!619 lt!438811 lt!438807 zeroValue!1220 lt!438820) lt!438930)))

(declare-fun bs!28075 () Bool)

(assert (= bs!28075 d!117315))

(assert (=> bs!28075 m!916405))

(assert (=> bs!28075 m!916405))

(assert (=> bs!28075 m!916407))

(declare-fun m!916763 () Bool)

(assert (=> bs!28075 m!916763))

(declare-fun m!916765 () Bool)

(assert (=> bs!28075 m!916765))

(assert (=> b!989136 d!117315))

(declare-fun d!117317 () Bool)

(assert (=> d!117317 (= (apply!930 (+!3045 lt!438801 (tuple2!14985 lt!438808 minValue!1220)) lt!438812) (get!15634 (getValueByKey!516 (toList!6863 (+!3045 lt!438801 (tuple2!14985 lt!438808 minValue!1220))) lt!438812)))))

(declare-fun bs!28076 () Bool)

(assert (= bs!28076 d!117317))

(declare-fun m!916767 () Bool)

(assert (=> bs!28076 m!916767))

(assert (=> bs!28076 m!916767))

(declare-fun m!916769 () Bool)

(assert (=> bs!28076 m!916769))

(assert (=> b!989136 d!117317))

(declare-fun d!117319 () Bool)

(assert (=> d!117319 (= (apply!930 lt!438804 lt!438810) (get!15634 (getValueByKey!516 (toList!6863 lt!438804) lt!438810)))))

(declare-fun bs!28077 () Bool)

(assert (= bs!28077 d!117319))

(declare-fun m!916771 () Bool)

(assert (=> bs!28077 m!916771))

(assert (=> bs!28077 m!916771))

(declare-fun m!916773 () Bool)

(assert (=> bs!28077 m!916773))

(assert (=> b!989136 d!117319))

(declare-fun d!117321 () Bool)

(declare-fun e!557893 () Bool)

(assert (=> d!117321 e!557893))

(declare-fun res!661716 () Bool)

(assert (=> d!117321 (=> res!661716 e!557893)))

(declare-fun lt!438934 () Bool)

(assert (=> d!117321 (= res!661716 (not lt!438934))))

(declare-fun lt!438932 () Bool)

(assert (=> d!117321 (= lt!438934 lt!438932)))

(declare-fun lt!438931 () Unit!32777)

(declare-fun e!557892 () Unit!32777)

(assert (=> d!117321 (= lt!438931 e!557892)))

(declare-fun c!100249 () Bool)

(assert (=> d!117321 (= c!100249 lt!438932)))

(assert (=> d!117321 (= lt!438932 (containsKey!479 (toList!6863 (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220))) lt!438820))))

(assert (=> d!117321 (= (contains!5728 (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220)) lt!438820) lt!438934)))

(declare-fun b!989318 () Bool)

(declare-fun lt!438933 () Unit!32777)

(assert (=> b!989318 (= e!557892 lt!438933)))

(assert (=> b!989318 (= lt!438933 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220))) lt!438820))))

(assert (=> b!989318 (isDefined!384 (getValueByKey!516 (toList!6863 (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220))) lt!438820))))

(declare-fun b!989319 () Bool)

(declare-fun Unit!32787 () Unit!32777)

(assert (=> b!989319 (= e!557892 Unit!32787)))

(declare-fun b!989320 () Bool)

(assert (=> b!989320 (= e!557893 (isDefined!384 (getValueByKey!516 (toList!6863 (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220))) lt!438820)))))

(assert (= (and d!117321 c!100249) b!989318))

(assert (= (and d!117321 (not c!100249)) b!989319))

(assert (= (and d!117321 (not res!661716)) b!989320))

(declare-fun m!916775 () Bool)

(assert (=> d!117321 m!916775))

(declare-fun m!916777 () Bool)

(assert (=> b!989318 m!916777))

(declare-fun m!916779 () Bool)

(assert (=> b!989318 m!916779))

(assert (=> b!989318 m!916779))

(declare-fun m!916781 () Bool)

(assert (=> b!989318 m!916781))

(assert (=> b!989320 m!916779))

(assert (=> b!989320 m!916779))

(assert (=> b!989320 m!916781))

(assert (=> b!989136 d!117321))

(declare-fun d!117323 () Bool)

(assert (=> d!117323 (= (apply!930 (+!3045 lt!438819 (tuple2!14985 lt!438803 zeroValue!1220)) lt!438805) (get!15634 (getValueByKey!516 (toList!6863 (+!3045 lt!438819 (tuple2!14985 lt!438803 zeroValue!1220))) lt!438805)))))

(declare-fun bs!28078 () Bool)

(assert (= bs!28078 d!117323))

(declare-fun m!916783 () Bool)

(assert (=> bs!28078 m!916783))

(assert (=> bs!28078 m!916783))

(declare-fun m!916785 () Bool)

(assert (=> bs!28078 m!916785))

(assert (=> b!989136 d!117323))

(declare-fun d!117325 () Bool)

(assert (=> d!117325 (= (apply!930 (+!3045 lt!438804 (tuple2!14985 lt!438800 minValue!1220)) lt!438810) (get!15634 (getValueByKey!516 (toList!6863 (+!3045 lt!438804 (tuple2!14985 lt!438800 minValue!1220))) lt!438810)))))

(declare-fun bs!28079 () Bool)

(assert (= bs!28079 d!117325))

(declare-fun m!916787 () Bool)

(assert (=> bs!28079 m!916787))

(assert (=> bs!28079 m!916787))

(declare-fun m!916789 () Bool)

(assert (=> bs!28079 m!916789))

(assert (=> b!989136 d!117325))

(declare-fun d!117327 () Bool)

(assert (=> d!117327 (= (apply!930 (+!3045 lt!438801 (tuple2!14985 lt!438808 minValue!1220)) lt!438812) (apply!930 lt!438801 lt!438812))))

(declare-fun lt!438935 () Unit!32777)

(assert (=> d!117327 (= lt!438935 (choose!1621 lt!438801 lt!438808 minValue!1220 lt!438812))))

(declare-fun e!557894 () Bool)

(assert (=> d!117327 e!557894))

(declare-fun res!661717 () Bool)

(assert (=> d!117327 (=> (not res!661717) (not e!557894))))

(assert (=> d!117327 (= res!661717 (contains!5728 lt!438801 lt!438812))))

(assert (=> d!117327 (= (addApplyDifferent!471 lt!438801 lt!438808 minValue!1220 lt!438812) lt!438935)))

(declare-fun b!989321 () Bool)

(assert (=> b!989321 (= e!557894 (not (= lt!438812 lt!438808)))))

(assert (= (and d!117327 res!661717) b!989321))

(declare-fun m!916791 () Bool)

(assert (=> d!117327 m!916791))

(assert (=> d!117327 m!916427))

(assert (=> d!117327 m!916427))

(assert (=> d!117327 m!916429))

(declare-fun m!916793 () Bool)

(assert (=> d!117327 m!916793))

(assert (=> d!117327 m!916415))

(assert (=> b!989136 d!117327))

(declare-fun d!117329 () Bool)

(declare-fun e!557895 () Bool)

(assert (=> d!117329 e!557895))

(declare-fun res!661719 () Bool)

(assert (=> d!117329 (=> (not res!661719) (not e!557895))))

(declare-fun lt!438936 () ListLongMap!13695)

(assert (=> d!117329 (= res!661719 (contains!5728 lt!438936 (_1!7502 (tuple2!14985 lt!438800 minValue!1220))))))

(declare-fun lt!438938 () List!20934)

(assert (=> d!117329 (= lt!438936 (ListLongMap!13696 lt!438938))))

(declare-fun lt!438939 () Unit!32777)

(declare-fun lt!438937 () Unit!32777)

(assert (=> d!117329 (= lt!438939 lt!438937)))

(assert (=> d!117329 (= (getValueByKey!516 lt!438938 (_1!7502 (tuple2!14985 lt!438800 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438800 minValue!1220))))))

(assert (=> d!117329 (= lt!438937 (lemmaContainsTupThenGetReturnValue!273 lt!438938 (_1!7502 (tuple2!14985 lt!438800 minValue!1220)) (_2!7502 (tuple2!14985 lt!438800 minValue!1220))))))

(assert (=> d!117329 (= lt!438938 (insertStrictlySorted!329 (toList!6863 lt!438804) (_1!7502 (tuple2!14985 lt!438800 minValue!1220)) (_2!7502 (tuple2!14985 lt!438800 minValue!1220))))))

(assert (=> d!117329 (= (+!3045 lt!438804 (tuple2!14985 lt!438800 minValue!1220)) lt!438936)))

(declare-fun b!989322 () Bool)

(declare-fun res!661718 () Bool)

(assert (=> b!989322 (=> (not res!661718) (not e!557895))))

(assert (=> b!989322 (= res!661718 (= (getValueByKey!516 (toList!6863 lt!438936) (_1!7502 (tuple2!14985 lt!438800 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438800 minValue!1220)))))))

(declare-fun b!989323 () Bool)

(assert (=> b!989323 (= e!557895 (contains!5729 (toList!6863 lt!438936) (tuple2!14985 lt!438800 minValue!1220)))))

(assert (= (and d!117329 res!661719) b!989322))

(assert (= (and b!989322 res!661718) b!989323))

(declare-fun m!916795 () Bool)

(assert (=> d!117329 m!916795))

(declare-fun m!916797 () Bool)

(assert (=> d!117329 m!916797))

(declare-fun m!916799 () Bool)

(assert (=> d!117329 m!916799))

(declare-fun m!916801 () Bool)

(assert (=> d!117329 m!916801))

(declare-fun m!916803 () Bool)

(assert (=> b!989322 m!916803))

(declare-fun m!916805 () Bool)

(assert (=> b!989323 m!916805))

(assert (=> b!989136 d!117329))

(declare-fun d!117331 () Bool)

(assert (=> d!117331 (= (apply!930 lt!438819 lt!438805) (get!15634 (getValueByKey!516 (toList!6863 lt!438819) lt!438805)))))

(declare-fun bs!28080 () Bool)

(assert (= bs!28080 d!117331))

(declare-fun m!916807 () Bool)

(assert (=> bs!28080 m!916807))

(assert (=> bs!28080 m!916807))

(declare-fun m!916809 () Bool)

(assert (=> bs!28080 m!916809))

(assert (=> b!989136 d!117331))

(declare-fun d!117333 () Bool)

(assert (=> d!117333 (= (apply!930 lt!438801 lt!438812) (get!15634 (getValueByKey!516 (toList!6863 lt!438801) lt!438812)))))

(declare-fun bs!28081 () Bool)

(assert (= bs!28081 d!117333))

(declare-fun m!916811 () Bool)

(assert (=> bs!28081 m!916811))

(assert (=> bs!28081 m!916811))

(declare-fun m!916813 () Bool)

(assert (=> bs!28081 m!916813))

(assert (=> b!989136 d!117333))

(declare-fun d!117335 () Bool)

(declare-fun e!557896 () Bool)

(assert (=> d!117335 e!557896))

(declare-fun res!661721 () Bool)

(assert (=> d!117335 (=> (not res!661721) (not e!557896))))

(declare-fun lt!438940 () ListLongMap!13695)

(assert (=> d!117335 (= res!661721 (contains!5728 lt!438940 (_1!7502 (tuple2!14985 lt!438807 zeroValue!1220))))))

(declare-fun lt!438942 () List!20934)

(assert (=> d!117335 (= lt!438940 (ListLongMap!13696 lt!438942))))

(declare-fun lt!438943 () Unit!32777)

(declare-fun lt!438941 () Unit!32777)

(assert (=> d!117335 (= lt!438943 lt!438941)))

(assert (=> d!117335 (= (getValueByKey!516 lt!438942 (_1!7502 (tuple2!14985 lt!438807 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438807 zeroValue!1220))))))

(assert (=> d!117335 (= lt!438941 (lemmaContainsTupThenGetReturnValue!273 lt!438942 (_1!7502 (tuple2!14985 lt!438807 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438807 zeroValue!1220))))))

(assert (=> d!117335 (= lt!438942 (insertStrictlySorted!329 (toList!6863 lt!438811) (_1!7502 (tuple2!14985 lt!438807 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438807 zeroValue!1220))))))

(assert (=> d!117335 (= (+!3045 lt!438811 (tuple2!14985 lt!438807 zeroValue!1220)) lt!438940)))

(declare-fun b!989324 () Bool)

(declare-fun res!661720 () Bool)

(assert (=> b!989324 (=> (not res!661720) (not e!557896))))

(assert (=> b!989324 (= res!661720 (= (getValueByKey!516 (toList!6863 lt!438940) (_1!7502 (tuple2!14985 lt!438807 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438807 zeroValue!1220)))))))

(declare-fun b!989325 () Bool)

(assert (=> b!989325 (= e!557896 (contains!5729 (toList!6863 lt!438940) (tuple2!14985 lt!438807 zeroValue!1220)))))

(assert (= (and d!117335 res!661721) b!989324))

(assert (= (and b!989324 res!661720) b!989325))

(declare-fun m!916815 () Bool)

(assert (=> d!117335 m!916815))

(declare-fun m!916817 () Bool)

(assert (=> d!117335 m!916817))

(declare-fun m!916819 () Bool)

(assert (=> d!117335 m!916819))

(declare-fun m!916821 () Bool)

(assert (=> d!117335 m!916821))

(declare-fun m!916823 () Bool)

(assert (=> b!989324 m!916823))

(declare-fun m!916825 () Bool)

(assert (=> b!989325 m!916825))

(assert (=> b!989136 d!117335))

(declare-fun d!117337 () Bool)

(declare-fun e!557898 () Bool)

(assert (=> d!117337 e!557898))

(declare-fun res!661722 () Bool)

(assert (=> d!117337 (=> res!661722 e!557898)))

(declare-fun lt!438947 () Bool)

(assert (=> d!117337 (= res!661722 (not lt!438947))))

(declare-fun lt!438945 () Bool)

(assert (=> d!117337 (= lt!438947 lt!438945)))

(declare-fun lt!438944 () Unit!32777)

(declare-fun e!557897 () Unit!32777)

(assert (=> d!117337 (= lt!438944 e!557897)))

(declare-fun c!100250 () Bool)

(assert (=> d!117337 (= c!100250 lt!438945)))

(assert (=> d!117337 (= lt!438945 (containsKey!479 (toList!6863 lt!438722) (_1!7502 lt!438659)))))

(assert (=> d!117337 (= (contains!5728 lt!438722 (_1!7502 lt!438659)) lt!438947)))

(declare-fun b!989326 () Bool)

(declare-fun lt!438946 () Unit!32777)

(assert (=> b!989326 (= e!557897 lt!438946)))

(assert (=> b!989326 (= lt!438946 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438722) (_1!7502 lt!438659)))))

(assert (=> b!989326 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438722) (_1!7502 lt!438659)))))

(declare-fun b!989327 () Bool)

(declare-fun Unit!32788 () Unit!32777)

(assert (=> b!989327 (= e!557897 Unit!32788)))

(declare-fun b!989328 () Bool)

(assert (=> b!989328 (= e!557898 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438722) (_1!7502 lt!438659))))))

(assert (= (and d!117337 c!100250) b!989326))

(assert (= (and d!117337 (not c!100250)) b!989327))

(assert (= (and d!117337 (not res!661722)) b!989328))

(declare-fun m!916827 () Bool)

(assert (=> d!117337 m!916827))

(declare-fun m!916829 () Bool)

(assert (=> b!989326 m!916829))

(assert (=> b!989326 m!916315))

(assert (=> b!989326 m!916315))

(declare-fun m!916831 () Bool)

(assert (=> b!989326 m!916831))

(assert (=> b!989328 m!916315))

(assert (=> b!989328 m!916315))

(assert (=> b!989328 m!916831))

(assert (=> d!117219 d!117337))

(declare-fun b!989330 () Bool)

(declare-fun e!557899 () Option!522)

(declare-fun e!557900 () Option!522)

(assert (=> b!989330 (= e!557899 e!557900)))

(declare-fun c!100252 () Bool)

(assert (=> b!989330 (= c!100252 (and ((_ is Cons!20930) lt!438724) (not (= (_1!7502 (h!22092 lt!438724)) (_1!7502 lt!438659)))))))

(declare-fun b!989331 () Bool)

(assert (=> b!989331 (= e!557900 (getValueByKey!516 (t!29897 lt!438724) (_1!7502 lt!438659)))))

(declare-fun d!117339 () Bool)

(declare-fun c!100251 () Bool)

(assert (=> d!117339 (= c!100251 (and ((_ is Cons!20930) lt!438724) (= (_1!7502 (h!22092 lt!438724)) (_1!7502 lt!438659))))))

(assert (=> d!117339 (= (getValueByKey!516 lt!438724 (_1!7502 lt!438659)) e!557899)))

(declare-fun b!989332 () Bool)

(assert (=> b!989332 (= e!557900 None!520)))

(declare-fun b!989329 () Bool)

(assert (=> b!989329 (= e!557899 (Some!521 (_2!7502 (h!22092 lt!438724))))))

(assert (= (and d!117339 c!100251) b!989329))

(assert (= (and d!117339 (not c!100251)) b!989330))

(assert (= (and b!989330 c!100252) b!989331))

(assert (= (and b!989330 (not c!100252)) b!989332))

(declare-fun m!916833 () Bool)

(assert (=> b!989331 m!916833))

(assert (=> d!117219 d!117339))

(declare-fun d!117341 () Bool)

(assert (=> d!117341 (= (getValueByKey!516 lt!438724 (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659)))))

(declare-fun lt!438948 () Unit!32777)

(assert (=> d!117341 (= lt!438948 (choose!1619 lt!438724 (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(declare-fun e!557901 () Bool)

(assert (=> d!117341 e!557901))

(declare-fun res!661723 () Bool)

(assert (=> d!117341 (=> (not res!661723) (not e!557901))))

(assert (=> d!117341 (= res!661723 (isStrictlySorted!512 lt!438724))))

(assert (=> d!117341 (= (lemmaContainsTupThenGetReturnValue!273 lt!438724 (_1!7502 lt!438659) (_2!7502 lt!438659)) lt!438948)))

(declare-fun b!989333 () Bool)

(declare-fun res!661724 () Bool)

(assert (=> b!989333 (=> (not res!661724) (not e!557901))))

(assert (=> b!989333 (= res!661724 (containsKey!479 lt!438724 (_1!7502 lt!438659)))))

(declare-fun b!989334 () Bool)

(assert (=> b!989334 (= e!557901 (contains!5729 lt!438724 (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659))))))

(assert (= (and d!117341 res!661723) b!989333))

(assert (= (and b!989333 res!661724) b!989334))

(assert (=> d!117341 m!916309))

(declare-fun m!916835 () Bool)

(assert (=> d!117341 m!916835))

(declare-fun m!916837 () Bool)

(assert (=> d!117341 m!916837))

(declare-fun m!916839 () Bool)

(assert (=> b!989333 m!916839))

(declare-fun m!916841 () Bool)

(assert (=> b!989334 m!916841))

(assert (=> d!117219 d!117341))

(declare-fun b!989335 () Bool)

(declare-fun e!557904 () Bool)

(declare-fun lt!438949 () List!20934)

(assert (=> b!989335 (= e!557904 (contains!5729 lt!438949 (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659))))))

(declare-fun b!989336 () Bool)

(declare-fun e!557906 () List!20934)

(declare-fun e!557902 () List!20934)

(assert (=> b!989336 (= e!557906 e!557902)))

(declare-fun c!100256 () Bool)

(assert (=> b!989336 (= c!100256 (and ((_ is Cons!20930) (toList!6863 (+!3045 lt!438657 lt!438656))) (= (_1!7502 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438656)))) (_1!7502 lt!438659))))))

(declare-fun bm!41942 () Bool)

(declare-fun call!41945 () List!20934)

(declare-fun call!41946 () List!20934)

(assert (=> bm!41942 (= call!41945 call!41946)))

(declare-fun b!989337 () Bool)

(declare-fun e!557905 () List!20934)

(declare-fun call!41947 () List!20934)

(assert (=> b!989337 (= e!557905 call!41947)))

(declare-fun d!117343 () Bool)

(assert (=> d!117343 e!557904))

(declare-fun res!661726 () Bool)

(assert (=> d!117343 (=> (not res!661726) (not e!557904))))

(assert (=> d!117343 (= res!661726 (isStrictlySorted!512 lt!438949))))

(assert (=> d!117343 (= lt!438949 e!557906)))

(declare-fun c!100254 () Bool)

(assert (=> d!117343 (= c!100254 (and ((_ is Cons!20930) (toList!6863 (+!3045 lt!438657 lt!438656))) (bvslt (_1!7502 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438656)))) (_1!7502 lt!438659))))))

(assert (=> d!117343 (isStrictlySorted!512 (toList!6863 (+!3045 lt!438657 lt!438656)))))

(assert (=> d!117343 (= (insertStrictlySorted!329 (toList!6863 (+!3045 lt!438657 lt!438656)) (_1!7502 lt!438659) (_2!7502 lt!438659)) lt!438949)))

(declare-fun bm!41943 () Bool)

(assert (=> bm!41943 (= call!41947 call!41945)))

(declare-fun b!989338 () Bool)

(declare-fun res!661725 () Bool)

(assert (=> b!989338 (=> (not res!661725) (not e!557904))))

(assert (=> b!989338 (= res!661725 (containsKey!479 lt!438949 (_1!7502 lt!438659)))))

(declare-fun b!989339 () Bool)

(assert (=> b!989339 (= e!557902 call!41945)))

(declare-fun e!557903 () List!20934)

(declare-fun b!989340 () Bool)

(assert (=> b!989340 (= e!557903 (insertStrictlySorted!329 (t!29897 (toList!6863 (+!3045 lt!438657 lt!438656))) (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(declare-fun c!100253 () Bool)

(declare-fun b!989341 () Bool)

(assert (=> b!989341 (= c!100253 (and ((_ is Cons!20930) (toList!6863 (+!3045 lt!438657 lt!438656))) (bvsgt (_1!7502 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438656)))) (_1!7502 lt!438659))))))

(assert (=> b!989341 (= e!557902 e!557905)))

(declare-fun b!989342 () Bool)

(assert (=> b!989342 (= e!557903 (ite c!100256 (t!29897 (toList!6863 (+!3045 lt!438657 lt!438656))) (ite c!100253 (Cons!20930 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438656))) (t!29897 (toList!6863 (+!3045 lt!438657 lt!438656)))) Nil!20931)))))

(declare-fun b!989343 () Bool)

(assert (=> b!989343 (= e!557906 call!41946)))

(declare-fun b!989344 () Bool)

(assert (=> b!989344 (= e!557905 call!41947)))

(declare-fun bm!41944 () Bool)

(assert (=> bm!41944 (= call!41946 ($colon$colon!556 e!557903 (ite c!100254 (h!22092 (toList!6863 (+!3045 lt!438657 lt!438656))) (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659)))))))

(declare-fun c!100255 () Bool)

(assert (=> bm!41944 (= c!100255 c!100254)))

(assert (= (and d!117343 c!100254) b!989343))

(assert (= (and d!117343 (not c!100254)) b!989336))

(assert (= (and b!989336 c!100256) b!989339))

(assert (= (and b!989336 (not c!100256)) b!989341))

(assert (= (and b!989341 c!100253) b!989344))

(assert (= (and b!989341 (not c!100253)) b!989337))

(assert (= (or b!989344 b!989337) bm!41943))

(assert (= (or b!989339 bm!41943) bm!41942))

(assert (= (or b!989343 bm!41942) bm!41944))

(assert (= (and bm!41944 c!100255) b!989340))

(assert (= (and bm!41944 (not c!100255)) b!989342))

(assert (= (and d!117343 res!661726) b!989338))

(assert (= (and b!989338 res!661725) b!989335))

(declare-fun m!916843 () Bool)

(assert (=> bm!41944 m!916843))

(declare-fun m!916845 () Bool)

(assert (=> b!989338 m!916845))

(declare-fun m!916847 () Bool)

(assert (=> b!989340 m!916847))

(declare-fun m!916849 () Bool)

(assert (=> d!117343 m!916849))

(declare-fun m!916851 () Bool)

(assert (=> d!117343 m!916851))

(declare-fun m!916853 () Bool)

(assert (=> b!989335 m!916853))

(assert (=> d!117219 d!117343))

(declare-fun b!989346 () Bool)

(declare-fun e!557907 () Option!522)

(declare-fun e!557908 () Option!522)

(assert (=> b!989346 (= e!557907 e!557908)))

(declare-fun c!100258 () Bool)

(assert (=> b!989346 (= c!100258 (and ((_ is Cons!20930) (toList!6863 lt!438821)) (not (= (_1!7502 (h!22092 (toList!6863 lt!438821))) (_1!7502 lt!438656)))))))

(declare-fun b!989347 () Bool)

(assert (=> b!989347 (= e!557908 (getValueByKey!516 (t!29897 (toList!6863 lt!438821)) (_1!7502 lt!438656)))))

(declare-fun d!117345 () Bool)

(declare-fun c!100257 () Bool)

(assert (=> d!117345 (= c!100257 (and ((_ is Cons!20930) (toList!6863 lt!438821)) (= (_1!7502 (h!22092 (toList!6863 lt!438821))) (_1!7502 lt!438656))))))

(assert (=> d!117345 (= (getValueByKey!516 (toList!6863 lt!438821) (_1!7502 lt!438656)) e!557907)))

(declare-fun b!989348 () Bool)

(assert (=> b!989348 (= e!557908 None!520)))

(declare-fun b!989345 () Bool)

(assert (=> b!989345 (= e!557907 (Some!521 (_2!7502 (h!22092 (toList!6863 lt!438821)))))))

(assert (= (and d!117345 c!100257) b!989345))

(assert (= (and d!117345 (not c!100257)) b!989346))

(assert (= (and b!989346 c!100258) b!989347))

(assert (= (and b!989346 (not c!100258)) b!989348))

(declare-fun m!916855 () Bool)

(assert (=> b!989347 m!916855))

(assert (=> b!989145 d!117345))

(declare-fun d!117347 () Bool)

(declare-fun e!557910 () Bool)

(assert (=> d!117347 e!557910))

(declare-fun res!661727 () Bool)

(assert (=> d!117347 (=> res!661727 e!557910)))

(declare-fun lt!438953 () Bool)

(assert (=> d!117347 (= res!661727 (not lt!438953))))

(declare-fun lt!438951 () Bool)

(assert (=> d!117347 (= lt!438953 lt!438951)))

(declare-fun lt!438950 () Unit!32777)

(declare-fun e!557909 () Unit!32777)

(assert (=> d!117347 (= lt!438950 e!557909)))

(declare-fun c!100259 () Bool)

(assert (=> d!117347 (= c!100259 lt!438951)))

(assert (=> d!117347 (= lt!438951 (containsKey!479 (toList!6863 lt!438789) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117347 (= (contains!5728 lt!438789 #b0000000000000000000000000000000000000000000000000000000000000000) lt!438953)))

(declare-fun b!989349 () Bool)

(declare-fun lt!438952 () Unit!32777)

(assert (=> b!989349 (= e!557909 lt!438952)))

(assert (=> b!989349 (= lt!438952 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438789) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!989349 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438789) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989350 () Bool)

(declare-fun Unit!32789 () Unit!32777)

(assert (=> b!989350 (= e!557909 Unit!32789)))

(declare-fun b!989351 () Bool)

(assert (=> b!989351 (= e!557910 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438789) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117347 c!100259) b!989349))

(assert (= (and d!117347 (not c!100259)) b!989350))

(assert (= (and d!117347 (not res!661727)) b!989351))

(declare-fun m!916857 () Bool)

(assert (=> d!117347 m!916857))

(declare-fun m!916859 () Bool)

(assert (=> b!989349 m!916859))

(assert (=> b!989349 m!916663))

(assert (=> b!989349 m!916663))

(declare-fun m!916861 () Bool)

(assert (=> b!989349 m!916861))

(assert (=> b!989351 m!916663))

(assert (=> b!989351 m!916663))

(assert (=> b!989351 m!916861))

(assert (=> bm!41917 d!117347))

(declare-fun d!117349 () Bool)

(declare-fun isEmpty!729 (List!20934) Bool)

(assert (=> d!117349 (= (isEmpty!728 lt!438703) (isEmpty!729 (toList!6863 lt!438703)))))

(declare-fun bs!28082 () Bool)

(assert (= bs!28082 d!117349))

(declare-fun m!916863 () Bool)

(assert (=> bs!28082 m!916863))

(assert (=> b!989047 d!117349))

(declare-fun d!117351 () Bool)

(declare-fun e!557911 () Bool)

(assert (=> d!117351 e!557911))

(declare-fun res!661729 () Bool)

(assert (=> d!117351 (=> (not res!661729) (not e!557911))))

(declare-fun lt!438954 () ListLongMap!13695)

(assert (=> d!117351 (= res!661729 (contains!5728 lt!438954 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(declare-fun lt!438956 () List!20934)

(assert (=> d!117351 (= lt!438954 (ListLongMap!13696 lt!438956))))

(declare-fun lt!438957 () Unit!32777)

(declare-fun lt!438955 () Unit!32777)

(assert (=> d!117351 (= lt!438957 lt!438955)))

(assert (=> d!117351 (= (getValueByKey!516 lt!438956 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))) (Some!521 (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(assert (=> d!117351 (= lt!438955 (lemmaContainsTupThenGetReturnValue!273 lt!438956 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(assert (=> d!117351 (= lt!438956 (insertStrictlySorted!329 (toList!6863 (+!3045 lt!438657 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(assert (=> d!117351 (= (+!3045 (+!3045 lt!438657 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) lt!438954)))

(declare-fun b!989352 () Bool)

(declare-fun res!661728 () Bool)

(assert (=> b!989352 (=> (not res!661728) (not e!557911))))

(assert (=> b!989352 (= res!661728 (= (getValueByKey!516 (toList!6863 lt!438954) (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))) (Some!521 (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)))))))

(declare-fun b!989353 () Bool)

(assert (=> b!989353 (= e!557911 (contains!5729 (toList!6863 lt!438954) (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)))))

(assert (= (and d!117351 res!661729) b!989352))

(assert (= (and b!989352 res!661728) b!989353))

(declare-fun m!916865 () Bool)

(assert (=> d!117351 m!916865))

(declare-fun m!916867 () Bool)

(assert (=> d!117351 m!916867))

(declare-fun m!916869 () Bool)

(assert (=> d!117351 m!916869))

(declare-fun m!916871 () Bool)

(assert (=> d!117351 m!916871))

(declare-fun m!916873 () Bool)

(assert (=> b!989352 m!916873))

(declare-fun m!916875 () Bool)

(assert (=> b!989353 m!916875))

(assert (=> d!117225 d!117351))

(declare-fun d!117353 () Bool)

(declare-fun e!557912 () Bool)

(assert (=> d!117353 e!557912))

(declare-fun res!661731 () Bool)

(assert (=> d!117353 (=> (not res!661731) (not e!557912))))

(declare-fun lt!438958 () ListLongMap!13695)

(assert (=> d!117353 (= res!661731 (contains!5728 lt!438958 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(declare-fun lt!438960 () List!20934)

(assert (=> d!117353 (= lt!438958 (ListLongMap!13696 lt!438960))))

(declare-fun lt!438961 () Unit!32777)

(declare-fun lt!438959 () Unit!32777)

(assert (=> d!117353 (= lt!438961 lt!438959)))

(assert (=> d!117353 (= (getValueByKey!516 lt!438960 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))) (Some!521 (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(assert (=> d!117353 (= lt!438959 (lemmaContainsTupThenGetReturnValue!273 lt!438960 (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(assert (=> d!117353 (= lt!438960 (insertStrictlySorted!329 (toList!6863 lt!438657) (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))))))

(assert (=> d!117353 (= (+!3045 lt!438657 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) lt!438958)))

(declare-fun b!989354 () Bool)

(declare-fun res!661730 () Bool)

(assert (=> b!989354 (=> (not res!661730) (not e!557912))))

(assert (=> b!989354 (= res!661730 (= (getValueByKey!516 (toList!6863 lt!438958) (_1!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))) (Some!521 (_2!7502 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)))))))

(declare-fun b!989355 () Bool)

(assert (=> b!989355 (= e!557912 (contains!5729 (toList!6863 lt!438958) (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)))))

(assert (= (and d!117353 res!661731) b!989354))

(assert (= (and b!989354 res!661730) b!989355))

(declare-fun m!916877 () Bool)

(assert (=> d!117353 m!916877))

(declare-fun m!916879 () Bool)

(assert (=> d!117353 m!916879))

(declare-fun m!916881 () Bool)

(assert (=> d!117353 m!916881))

(declare-fun m!916883 () Bool)

(assert (=> d!117353 m!916883))

(declare-fun m!916885 () Bool)

(assert (=> b!989354 m!916885))

(declare-fun m!916887 () Bool)

(assert (=> b!989355 m!916887))

(assert (=> d!117225 d!117353))

(declare-fun d!117355 () Bool)

(assert (=> d!117355 (= (+!3045 (+!3045 lt!438657 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (+!3045 (+!3045 lt!438657 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (=> d!117355 true))

(declare-fun _$28!188 () Unit!32777)

(assert (=> d!117355 (= (choose!1618 lt!438657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30082 _keys!1544) from!1932) lt!438658) _$28!188)))

(declare-fun bs!28083 () Bool)

(assert (= bs!28083 d!117355))

(assert (=> bs!28083 m!916377))

(assert (=> bs!28083 m!916377))

(assert (=> bs!28083 m!916385))

(assert (=> bs!28083 m!916379))

(assert (=> bs!28083 m!916379))

(assert (=> bs!28083 m!916381))

(assert (=> d!117225 d!117355))

(declare-fun d!117357 () Bool)

(declare-fun e!557913 () Bool)

(assert (=> d!117357 e!557913))

(declare-fun res!661733 () Bool)

(assert (=> d!117357 (=> (not res!661733) (not e!557913))))

(declare-fun lt!438962 () ListLongMap!13695)

(assert (=> d!117357 (= res!661733 (contains!5728 lt!438962 (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lt!438964 () List!20934)

(assert (=> d!117357 (= lt!438962 (ListLongMap!13696 lt!438964))))

(declare-fun lt!438965 () Unit!32777)

(declare-fun lt!438963 () Unit!32777)

(assert (=> d!117357 (= lt!438965 lt!438963)))

(assert (=> d!117357 (= (getValueByKey!516 lt!438964 (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!117357 (= lt!438963 (lemmaContainsTupThenGetReturnValue!273 lt!438964 (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!117357 (= lt!438964 (insertStrictlySorted!329 (toList!6863 lt!438657) (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!117357 (= (+!3045 lt!438657 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) lt!438962)))

(declare-fun b!989356 () Bool)

(declare-fun res!661732 () Bool)

(assert (=> b!989356 (=> (not res!661732) (not e!557913))))

(assert (=> b!989356 (= res!661732 (= (getValueByKey!516 (toList!6863 lt!438962) (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))))

(declare-fun b!989357 () Bool)

(assert (=> b!989357 (= e!557913 (contains!5729 (toList!6863 lt!438962) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (= (and d!117357 res!661733) b!989356))

(assert (= (and b!989356 res!661732) b!989357))

(declare-fun m!916889 () Bool)

(assert (=> d!117357 m!916889))

(declare-fun m!916891 () Bool)

(assert (=> d!117357 m!916891))

(declare-fun m!916893 () Bool)

(assert (=> d!117357 m!916893))

(declare-fun m!916895 () Bool)

(assert (=> d!117357 m!916895))

(declare-fun m!916897 () Bool)

(assert (=> b!989356 m!916897))

(declare-fun m!916899 () Bool)

(assert (=> b!989357 m!916899))

(assert (=> d!117225 d!117357))

(declare-fun d!117359 () Bool)

(declare-fun e!557914 () Bool)

(assert (=> d!117359 e!557914))

(declare-fun res!661735 () Bool)

(assert (=> d!117359 (=> (not res!661735) (not e!557914))))

(declare-fun lt!438966 () ListLongMap!13695)

(assert (=> d!117359 (= res!661735 (contains!5728 lt!438966 (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lt!438968 () List!20934)

(assert (=> d!117359 (= lt!438966 (ListLongMap!13696 lt!438968))))

(declare-fun lt!438969 () Unit!32777)

(declare-fun lt!438967 () Unit!32777)

(assert (=> d!117359 (= lt!438969 lt!438967)))

(assert (=> d!117359 (= (getValueByKey!516 lt!438968 (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!117359 (= lt!438967 (lemmaContainsTupThenGetReturnValue!273 lt!438968 (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!117359 (= lt!438968 (insertStrictlySorted!329 (toList!6863 (+!3045 lt!438657 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658))) (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!117359 (= (+!3045 (+!3045 lt!438657 (tuple2!14985 (select (arr!30082 _keys!1544) from!1932) lt!438658)) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) lt!438966)))

(declare-fun b!989358 () Bool)

(declare-fun res!661734 () Bool)

(assert (=> b!989358 (=> (not res!661734) (not e!557914))))

(assert (=> b!989358 (= res!661734 (= (getValueByKey!516 (toList!6863 lt!438966) (_1!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))))

(declare-fun b!989359 () Bool)

(assert (=> b!989359 (= e!557914 (contains!5729 (toList!6863 lt!438966) (tuple2!14985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (= (and d!117359 res!661735) b!989358))

(assert (= (and b!989358 res!661734) b!989359))

(declare-fun m!916901 () Bool)

(assert (=> d!117359 m!916901))

(declare-fun m!916903 () Bool)

(assert (=> d!117359 m!916903))

(declare-fun m!916905 () Bool)

(assert (=> d!117359 m!916905))

(declare-fun m!916907 () Bool)

(assert (=> d!117359 m!916907))

(declare-fun m!916909 () Bool)

(assert (=> b!989358 m!916909))

(declare-fun m!916911 () Bool)

(assert (=> b!989359 m!916911))

(assert (=> d!117225 d!117359))

(assert (=> b!988989 d!117245))

(declare-fun d!117361 () Bool)

(declare-fun e!557916 () Bool)

(assert (=> d!117361 e!557916))

(declare-fun res!661736 () Bool)

(assert (=> d!117361 (=> res!661736 e!557916)))

(declare-fun lt!438973 () Bool)

(assert (=> d!117361 (= res!661736 (not lt!438973))))

(declare-fun lt!438971 () Bool)

(assert (=> d!117361 (= lt!438973 lt!438971)))

(declare-fun lt!438970 () Unit!32777)

(declare-fun e!557915 () Unit!32777)

(assert (=> d!117361 (= lt!438970 e!557915)))

(declare-fun c!100260 () Bool)

(assert (=> d!117361 (= c!100260 lt!438971)))

(assert (=> d!117361 (= lt!438971 (containsKey!479 (toList!6863 lt!438818) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117361 (= (contains!5728 lt!438818 #b1000000000000000000000000000000000000000000000000000000000000000) lt!438973)))

(declare-fun b!989360 () Bool)

(declare-fun lt!438972 () Unit!32777)

(assert (=> b!989360 (= e!557915 lt!438972)))

(assert (=> b!989360 (= lt!438972 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438818) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!989360 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438818) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989361 () Bool)

(declare-fun Unit!32790 () Unit!32777)

(assert (=> b!989361 (= e!557915 Unit!32790)))

(declare-fun b!989362 () Bool)

(assert (=> b!989362 (= e!557916 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438818) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117361 c!100260) b!989360))

(assert (= (and d!117361 (not c!100260)) b!989361))

(assert (= (and d!117361 (not res!661736)) b!989362))

(declare-fun m!916913 () Bool)

(assert (=> d!117361 m!916913))

(declare-fun m!916915 () Bool)

(assert (=> b!989360 m!916915))

(assert (=> b!989360 m!916481))

(assert (=> b!989360 m!916481))

(declare-fun m!916917 () Bool)

(assert (=> b!989360 m!916917))

(assert (=> b!989362 m!916481))

(assert (=> b!989362 m!916481))

(assert (=> b!989362 m!916917))

(assert (=> bm!41925 d!117361))

(declare-fun d!117363 () Bool)

(declare-fun lt!438976 () Bool)

(declare-fun content!423 (List!20935) (InoxSet (_ BitVec 64)))

(assert (=> d!117363 (= lt!438976 (select (content!423 Nil!20932) (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun e!557922 () Bool)

(assert (=> d!117363 (= lt!438976 e!557922)))

(declare-fun res!661742 () Bool)

(assert (=> d!117363 (=> (not res!661742) (not e!557922))))

(assert (=> d!117363 (= res!661742 ((_ is Cons!20931) Nil!20932))))

(assert (=> d!117363 (= (contains!5727 Nil!20932 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)) lt!438976)))

(declare-fun b!989367 () Bool)

(declare-fun e!557921 () Bool)

(assert (=> b!989367 (= e!557922 e!557921)))

(declare-fun res!661741 () Bool)

(assert (=> b!989367 (=> res!661741 e!557921)))

(assert (=> b!989367 (= res!661741 (= (h!22093 Nil!20932) (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989368 () Bool)

(assert (=> b!989368 (= e!557921 (contains!5727 (t!29898 Nil!20932) (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!117363 res!661742) b!989367))

(assert (= (and b!989367 (not res!661741)) b!989368))

(declare-fun m!916919 () Bool)

(assert (=> d!117363 m!916919))

(assert (=> d!117363 m!916237))

(declare-fun m!916921 () Bool)

(assert (=> d!117363 m!916921))

(assert (=> b!989368 m!916237))

(declare-fun m!916923 () Bool)

(assert (=> b!989368 m!916923))

(assert (=> b!989002 d!117363))

(declare-fun d!117365 () Bool)

(declare-fun e!557924 () Bool)

(assert (=> d!117365 e!557924))

(declare-fun res!661743 () Bool)

(assert (=> d!117365 (=> res!661743 e!557924)))

(declare-fun lt!438980 () Bool)

(assert (=> d!117365 (= res!661743 (not lt!438980))))

(declare-fun lt!438978 () Bool)

(assert (=> d!117365 (= lt!438980 lt!438978)))

(declare-fun lt!438977 () Unit!32777)

(declare-fun e!557923 () Unit!32777)

(assert (=> d!117365 (= lt!438977 e!557923)))

(declare-fun c!100261 () Bool)

(assert (=> d!117365 (= c!100261 lt!438978)))

(assert (=> d!117365 (= lt!438978 (containsKey!479 (toList!6863 lt!438703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117365 (= (contains!5728 lt!438703 #b1000000000000000000000000000000000000000000000000000000000000000) lt!438980)))

(declare-fun b!989369 () Bool)

(declare-fun lt!438979 () Unit!32777)

(assert (=> b!989369 (= e!557923 lt!438979)))

(assert (=> b!989369 (= lt!438979 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!989369 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989370 () Bool)

(declare-fun Unit!32791 () Unit!32777)

(assert (=> b!989370 (= e!557923 Unit!32791)))

(declare-fun b!989371 () Bool)

(assert (=> b!989371 (= e!557924 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438703) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117365 c!100261) b!989369))

(assert (= (and d!117365 (not c!100261)) b!989370))

(assert (= (and d!117365 (not res!661743)) b!989371))

(declare-fun m!916925 () Bool)

(assert (=> d!117365 m!916925))

(declare-fun m!916927 () Bool)

(assert (=> b!989369 m!916927))

(declare-fun m!916929 () Bool)

(assert (=> b!989369 m!916929))

(assert (=> b!989369 m!916929))

(declare-fun m!916931 () Bool)

(assert (=> b!989369 m!916931))

(assert (=> b!989371 m!916929))

(assert (=> b!989371 m!916929))

(assert (=> b!989371 m!916931))

(assert (=> b!989045 d!117365))

(declare-fun d!117367 () Bool)

(declare-fun e!557926 () Bool)

(assert (=> d!117367 e!557926))

(declare-fun res!661744 () Bool)

(assert (=> d!117367 (=> res!661744 e!557926)))

(declare-fun lt!438984 () Bool)

(assert (=> d!117367 (= res!661744 (not lt!438984))))

(declare-fun lt!438982 () Bool)

(assert (=> d!117367 (= lt!438984 lt!438982)))

(declare-fun lt!438981 () Unit!32777)

(declare-fun e!557925 () Unit!32777)

(assert (=> d!117367 (= lt!438981 e!557925)))

(declare-fun c!100262 () Bool)

(assert (=> d!117367 (= c!100262 lt!438982)))

(assert (=> d!117367 (= lt!438982 (containsKey!479 (toList!6863 lt!438718) (_1!7502 lt!438659)))))

(assert (=> d!117367 (= (contains!5728 lt!438718 (_1!7502 lt!438659)) lt!438984)))

(declare-fun b!989372 () Bool)

(declare-fun lt!438983 () Unit!32777)

(assert (=> b!989372 (= e!557925 lt!438983)))

(assert (=> b!989372 (= lt!438983 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438718) (_1!7502 lt!438659)))))

(assert (=> b!989372 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438718) (_1!7502 lt!438659)))))

(declare-fun b!989373 () Bool)

(declare-fun Unit!32792 () Unit!32777)

(assert (=> b!989373 (= e!557925 Unit!32792)))

(declare-fun b!989374 () Bool)

(assert (=> b!989374 (= e!557926 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438718) (_1!7502 lt!438659))))))

(assert (= (and d!117367 c!100262) b!989372))

(assert (= (and d!117367 (not c!100262)) b!989373))

(assert (= (and d!117367 (not res!661744)) b!989374))

(declare-fun m!916933 () Bool)

(assert (=> d!117367 m!916933))

(declare-fun m!916935 () Bool)

(assert (=> b!989372 m!916935))

(assert (=> b!989372 m!916303))

(assert (=> b!989372 m!916303))

(declare-fun m!916937 () Bool)

(assert (=> b!989372 m!916937))

(assert (=> b!989374 m!916303))

(assert (=> b!989374 m!916303))

(assert (=> b!989374 m!916937))

(assert (=> d!117217 d!117367))

(declare-fun b!989376 () Bool)

(declare-fun e!557927 () Option!522)

(declare-fun e!557928 () Option!522)

(assert (=> b!989376 (= e!557927 e!557928)))

(declare-fun c!100264 () Bool)

(assert (=> b!989376 (= c!100264 (and ((_ is Cons!20930) lt!438720) (not (= (_1!7502 (h!22092 lt!438720)) (_1!7502 lt!438659)))))))

(declare-fun b!989377 () Bool)

(assert (=> b!989377 (= e!557928 (getValueByKey!516 (t!29897 lt!438720) (_1!7502 lt!438659)))))

(declare-fun d!117369 () Bool)

(declare-fun c!100263 () Bool)

(assert (=> d!117369 (= c!100263 (and ((_ is Cons!20930) lt!438720) (= (_1!7502 (h!22092 lt!438720)) (_1!7502 lt!438659))))))

(assert (=> d!117369 (= (getValueByKey!516 lt!438720 (_1!7502 lt!438659)) e!557927)))

(declare-fun b!989378 () Bool)

(assert (=> b!989378 (= e!557928 None!520)))

(declare-fun b!989375 () Bool)

(assert (=> b!989375 (= e!557927 (Some!521 (_2!7502 (h!22092 lt!438720))))))

(assert (= (and d!117369 c!100263) b!989375))

(assert (= (and d!117369 (not c!100263)) b!989376))

(assert (= (and b!989376 c!100264) b!989377))

(assert (= (and b!989376 (not c!100264)) b!989378))

(declare-fun m!916939 () Bool)

(assert (=> b!989377 m!916939))

(assert (=> d!117217 d!117369))

(declare-fun d!117371 () Bool)

(assert (=> d!117371 (= (getValueByKey!516 lt!438720 (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659)))))

(declare-fun lt!438985 () Unit!32777)

(assert (=> d!117371 (= lt!438985 (choose!1619 lt!438720 (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(declare-fun e!557929 () Bool)

(assert (=> d!117371 e!557929))

(declare-fun res!661745 () Bool)

(assert (=> d!117371 (=> (not res!661745) (not e!557929))))

(assert (=> d!117371 (= res!661745 (isStrictlySorted!512 lt!438720))))

(assert (=> d!117371 (= (lemmaContainsTupThenGetReturnValue!273 lt!438720 (_1!7502 lt!438659) (_2!7502 lt!438659)) lt!438985)))

(declare-fun b!989379 () Bool)

(declare-fun res!661746 () Bool)

(assert (=> b!989379 (=> (not res!661746) (not e!557929))))

(assert (=> b!989379 (= res!661746 (containsKey!479 lt!438720 (_1!7502 lt!438659)))))

(declare-fun b!989380 () Bool)

(assert (=> b!989380 (= e!557929 (contains!5729 lt!438720 (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659))))))

(assert (= (and d!117371 res!661745) b!989379))

(assert (= (and b!989379 res!661746) b!989380))

(assert (=> d!117371 m!916297))

(declare-fun m!916941 () Bool)

(assert (=> d!117371 m!916941))

(declare-fun m!916943 () Bool)

(assert (=> d!117371 m!916943))

(declare-fun m!916945 () Bool)

(assert (=> b!989379 m!916945))

(declare-fun m!916947 () Bool)

(assert (=> b!989380 m!916947))

(assert (=> d!117217 d!117371))

(declare-fun b!989381 () Bool)

(declare-fun e!557932 () Bool)

(declare-fun lt!438986 () List!20934)

(assert (=> b!989381 (= e!557932 (contains!5729 lt!438986 (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659))))))

(declare-fun b!989382 () Bool)

(declare-fun e!557934 () List!20934)

(declare-fun e!557930 () List!20934)

(assert (=> b!989382 (= e!557934 e!557930)))

(declare-fun c!100268 () Bool)

(assert (=> b!989382 (= c!100268 (and ((_ is Cons!20930) (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (= (_1!7502 (h!22092 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7502 lt!438659))))))

(declare-fun bm!41945 () Bool)

(declare-fun call!41948 () List!20934)

(declare-fun call!41949 () List!20934)

(assert (=> bm!41945 (= call!41948 call!41949)))

(declare-fun b!989383 () Bool)

(declare-fun e!557933 () List!20934)

(declare-fun call!41950 () List!20934)

(assert (=> b!989383 (= e!557933 call!41950)))

(declare-fun d!117373 () Bool)

(assert (=> d!117373 e!557932))

(declare-fun res!661748 () Bool)

(assert (=> d!117373 (=> (not res!661748) (not e!557932))))

(assert (=> d!117373 (= res!661748 (isStrictlySorted!512 lt!438986))))

(assert (=> d!117373 (= lt!438986 e!557934)))

(declare-fun c!100266 () Bool)

(assert (=> d!117373 (= c!100266 (and ((_ is Cons!20930) (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvslt (_1!7502 (h!22092 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7502 lt!438659))))))

(assert (=> d!117373 (isStrictlySorted!512 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))))

(assert (=> d!117373 (= (insertStrictlySorted!329 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7502 lt!438659) (_2!7502 lt!438659)) lt!438986)))

(declare-fun bm!41946 () Bool)

(assert (=> bm!41946 (= call!41950 call!41948)))

(declare-fun b!989384 () Bool)

(declare-fun res!661747 () Bool)

(assert (=> b!989384 (=> (not res!661747) (not e!557932))))

(assert (=> b!989384 (= res!661747 (containsKey!479 lt!438986 (_1!7502 lt!438659)))))

(declare-fun b!989385 () Bool)

(assert (=> b!989385 (= e!557930 call!41948)))

(declare-fun b!989386 () Bool)

(declare-fun e!557931 () List!20934)

(assert (=> b!989386 (= e!557931 (insertStrictlySorted!329 (t!29897 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(declare-fun b!989387 () Bool)

(declare-fun c!100265 () Bool)

(assert (=> b!989387 (= c!100265 (and ((_ is Cons!20930) (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvsgt (_1!7502 (h!22092 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7502 lt!438659))))))

(assert (=> b!989387 (= e!557930 e!557933)))

(declare-fun b!989388 () Bool)

(assert (=> b!989388 (= e!557931 (ite c!100268 (t!29897 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (ite c!100265 (Cons!20930 (h!22092 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (t!29897 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) Nil!20931)))))

(declare-fun b!989389 () Bool)

(assert (=> b!989389 (= e!557934 call!41949)))

(declare-fun b!989390 () Bool)

(assert (=> b!989390 (= e!557933 call!41950)))

(declare-fun bm!41947 () Bool)

(assert (=> bm!41947 (= call!41949 ($colon$colon!556 e!557931 (ite c!100266 (h!22092 (toList!6863 (getCurrentListMap!3877 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659)))))))

(declare-fun c!100267 () Bool)

(assert (=> bm!41947 (= c!100267 c!100266)))

(assert (= (and d!117373 c!100266) b!989389))

(assert (= (and d!117373 (not c!100266)) b!989382))

(assert (= (and b!989382 c!100268) b!989385))

(assert (= (and b!989382 (not c!100268)) b!989387))

(assert (= (and b!989387 c!100265) b!989390))

(assert (= (and b!989387 (not c!100265)) b!989383))

(assert (= (or b!989390 b!989383) bm!41946))

(assert (= (or b!989385 bm!41946) bm!41945))

(assert (= (or b!989389 bm!41945) bm!41947))

(assert (= (and bm!41947 c!100267) b!989386))

(assert (= (and bm!41947 (not c!100267)) b!989388))

(assert (= (and d!117373 res!661748) b!989384))

(assert (= (and b!989384 res!661747) b!989381))

(declare-fun m!916949 () Bool)

(assert (=> bm!41947 m!916949))

(declare-fun m!916951 () Bool)

(assert (=> b!989384 m!916951))

(declare-fun m!916953 () Bool)

(assert (=> b!989386 m!916953))

(declare-fun m!916955 () Bool)

(assert (=> d!117373 m!916955))

(declare-fun m!916957 () Bool)

(assert (=> d!117373 m!916957))

(declare-fun m!916959 () Bool)

(assert (=> b!989381 m!916959))

(assert (=> d!117217 d!117373))

(declare-fun d!117375 () Bool)

(declare-fun e!557936 () Bool)

(assert (=> d!117375 e!557936))

(declare-fun res!661749 () Bool)

(assert (=> d!117375 (=> res!661749 e!557936)))

(declare-fun lt!438990 () Bool)

(assert (=> d!117375 (= res!661749 (not lt!438990))))

(declare-fun lt!438988 () Bool)

(assert (=> d!117375 (= lt!438990 lt!438988)))

(declare-fun lt!438987 () Unit!32777)

(declare-fun e!557935 () Unit!32777)

(assert (=> d!117375 (= lt!438987 e!557935)))

(declare-fun c!100269 () Bool)

(assert (=> d!117375 (= c!100269 lt!438988)))

(assert (=> d!117375 (= lt!438988 (containsKey!479 (toList!6863 lt!438792) (_1!7502 lt!438659)))))

(assert (=> d!117375 (= (contains!5728 lt!438792 (_1!7502 lt!438659)) lt!438990)))

(declare-fun b!989391 () Bool)

(declare-fun lt!438989 () Unit!32777)

(assert (=> b!989391 (= e!557935 lt!438989)))

(assert (=> b!989391 (= lt!438989 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438792) (_1!7502 lt!438659)))))

(assert (=> b!989391 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438792) (_1!7502 lt!438659)))))

(declare-fun b!989392 () Bool)

(declare-fun Unit!32793 () Unit!32777)

(assert (=> b!989392 (= e!557935 Unit!32793)))

(declare-fun b!989393 () Bool)

(assert (=> b!989393 (= e!557936 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438792) (_1!7502 lt!438659))))))

(assert (= (and d!117375 c!100269) b!989391))

(assert (= (and d!117375 (not c!100269)) b!989392))

(assert (= (and d!117375 (not res!661749)) b!989393))

(declare-fun m!916961 () Bool)

(assert (=> d!117375 m!916961))

(declare-fun m!916963 () Bool)

(assert (=> b!989391 m!916963))

(assert (=> b!989391 m!916373))

(assert (=> b!989391 m!916373))

(declare-fun m!916965 () Bool)

(assert (=> b!989391 m!916965))

(assert (=> b!989393 m!916373))

(assert (=> b!989393 m!916373))

(assert (=> b!989393 m!916965))

(assert (=> d!117223 d!117375))

(declare-fun b!989395 () Bool)

(declare-fun e!557937 () Option!522)

(declare-fun e!557938 () Option!522)

(assert (=> b!989395 (= e!557937 e!557938)))

(declare-fun c!100271 () Bool)

(assert (=> b!989395 (= c!100271 (and ((_ is Cons!20930) lt!438794) (not (= (_1!7502 (h!22092 lt!438794)) (_1!7502 lt!438659)))))))

(declare-fun b!989396 () Bool)

(assert (=> b!989396 (= e!557938 (getValueByKey!516 (t!29897 lt!438794) (_1!7502 lt!438659)))))

(declare-fun d!117377 () Bool)

(declare-fun c!100270 () Bool)

(assert (=> d!117377 (= c!100270 (and ((_ is Cons!20930) lt!438794) (= (_1!7502 (h!22092 lt!438794)) (_1!7502 lt!438659))))))

(assert (=> d!117377 (= (getValueByKey!516 lt!438794 (_1!7502 lt!438659)) e!557937)))

(declare-fun b!989397 () Bool)

(assert (=> b!989397 (= e!557938 None!520)))

(declare-fun b!989394 () Bool)

(assert (=> b!989394 (= e!557937 (Some!521 (_2!7502 (h!22092 lt!438794))))))

(assert (= (and d!117377 c!100270) b!989394))

(assert (= (and d!117377 (not c!100270)) b!989395))

(assert (= (and b!989395 c!100271) b!989396))

(assert (= (and b!989395 (not c!100271)) b!989397))

(declare-fun m!916967 () Bool)

(assert (=> b!989396 m!916967))

(assert (=> d!117223 d!117377))

(declare-fun d!117379 () Bool)

(assert (=> d!117379 (= (getValueByKey!516 lt!438794 (_1!7502 lt!438659)) (Some!521 (_2!7502 lt!438659)))))

(declare-fun lt!438991 () Unit!32777)

(assert (=> d!117379 (= lt!438991 (choose!1619 lt!438794 (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(declare-fun e!557939 () Bool)

(assert (=> d!117379 e!557939))

(declare-fun res!661750 () Bool)

(assert (=> d!117379 (=> (not res!661750) (not e!557939))))

(assert (=> d!117379 (= res!661750 (isStrictlySorted!512 lt!438794))))

(assert (=> d!117379 (= (lemmaContainsTupThenGetReturnValue!273 lt!438794 (_1!7502 lt!438659) (_2!7502 lt!438659)) lt!438991)))

(declare-fun b!989398 () Bool)

(declare-fun res!661751 () Bool)

(assert (=> b!989398 (=> (not res!661751) (not e!557939))))

(assert (=> b!989398 (= res!661751 (containsKey!479 lt!438794 (_1!7502 lt!438659)))))

(declare-fun b!989399 () Bool)

(assert (=> b!989399 (= e!557939 (contains!5729 lt!438794 (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659))))))

(assert (= (and d!117379 res!661750) b!989398))

(assert (= (and b!989398 res!661751) b!989399))

(assert (=> d!117379 m!916367))

(declare-fun m!916969 () Bool)

(assert (=> d!117379 m!916969))

(declare-fun m!916971 () Bool)

(assert (=> d!117379 m!916971))

(declare-fun m!916973 () Bool)

(assert (=> b!989398 m!916973))

(declare-fun m!916975 () Bool)

(assert (=> b!989399 m!916975))

(assert (=> d!117223 d!117379))

(declare-fun b!989400 () Bool)

(declare-fun e!557942 () Bool)

(declare-fun lt!438992 () List!20934)

(assert (=> b!989400 (= e!557942 (contains!5729 lt!438992 (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659))))))

(declare-fun b!989401 () Bool)

(declare-fun e!557944 () List!20934)

(declare-fun e!557940 () List!20934)

(assert (=> b!989401 (= e!557944 e!557940)))

(declare-fun c!100275 () Bool)

(assert (=> b!989401 (= c!100275 (and ((_ is Cons!20930) (toList!6863 lt!438657)) (= (_1!7502 (h!22092 (toList!6863 lt!438657))) (_1!7502 lt!438659))))))

(declare-fun bm!41948 () Bool)

(declare-fun call!41951 () List!20934)

(declare-fun call!41952 () List!20934)

(assert (=> bm!41948 (= call!41951 call!41952)))

(declare-fun b!989402 () Bool)

(declare-fun e!557943 () List!20934)

(declare-fun call!41953 () List!20934)

(assert (=> b!989402 (= e!557943 call!41953)))

(declare-fun d!117381 () Bool)

(assert (=> d!117381 e!557942))

(declare-fun res!661753 () Bool)

(assert (=> d!117381 (=> (not res!661753) (not e!557942))))

(assert (=> d!117381 (= res!661753 (isStrictlySorted!512 lt!438992))))

(assert (=> d!117381 (= lt!438992 e!557944)))

(declare-fun c!100273 () Bool)

(assert (=> d!117381 (= c!100273 (and ((_ is Cons!20930) (toList!6863 lt!438657)) (bvslt (_1!7502 (h!22092 (toList!6863 lt!438657))) (_1!7502 lt!438659))))))

(assert (=> d!117381 (isStrictlySorted!512 (toList!6863 lt!438657))))

(assert (=> d!117381 (= (insertStrictlySorted!329 (toList!6863 lt!438657) (_1!7502 lt!438659) (_2!7502 lt!438659)) lt!438992)))

(declare-fun bm!41949 () Bool)

(assert (=> bm!41949 (= call!41953 call!41951)))

(declare-fun b!989403 () Bool)

(declare-fun res!661752 () Bool)

(assert (=> b!989403 (=> (not res!661752) (not e!557942))))

(assert (=> b!989403 (= res!661752 (containsKey!479 lt!438992 (_1!7502 lt!438659)))))

(declare-fun b!989404 () Bool)

(assert (=> b!989404 (= e!557940 call!41951)))

(declare-fun b!989405 () Bool)

(declare-fun e!557941 () List!20934)

(assert (=> b!989405 (= e!557941 (insertStrictlySorted!329 (t!29897 (toList!6863 lt!438657)) (_1!7502 lt!438659) (_2!7502 lt!438659)))))

(declare-fun b!989406 () Bool)

(declare-fun c!100272 () Bool)

(assert (=> b!989406 (= c!100272 (and ((_ is Cons!20930) (toList!6863 lt!438657)) (bvsgt (_1!7502 (h!22092 (toList!6863 lt!438657))) (_1!7502 lt!438659))))))

(assert (=> b!989406 (= e!557940 e!557943)))

(declare-fun b!989407 () Bool)

(assert (=> b!989407 (= e!557941 (ite c!100275 (t!29897 (toList!6863 lt!438657)) (ite c!100272 (Cons!20930 (h!22092 (toList!6863 lt!438657)) (t!29897 (toList!6863 lt!438657))) Nil!20931)))))

(declare-fun b!989408 () Bool)

(assert (=> b!989408 (= e!557944 call!41952)))

(declare-fun b!989409 () Bool)

(assert (=> b!989409 (= e!557943 call!41953)))

(declare-fun bm!41950 () Bool)

(assert (=> bm!41950 (= call!41952 ($colon$colon!556 e!557941 (ite c!100273 (h!22092 (toList!6863 lt!438657)) (tuple2!14985 (_1!7502 lt!438659) (_2!7502 lt!438659)))))))

(declare-fun c!100274 () Bool)

(assert (=> bm!41950 (= c!100274 c!100273)))

(assert (= (and d!117381 c!100273) b!989408))

(assert (= (and d!117381 (not c!100273)) b!989401))

(assert (= (and b!989401 c!100275) b!989404))

(assert (= (and b!989401 (not c!100275)) b!989406))

(assert (= (and b!989406 c!100272) b!989409))

(assert (= (and b!989406 (not c!100272)) b!989402))

(assert (= (or b!989409 b!989402) bm!41949))

(assert (= (or b!989404 bm!41949) bm!41948))

(assert (= (or b!989408 bm!41948) bm!41950))

(assert (= (and bm!41950 c!100274) b!989405))

(assert (= (and bm!41950 (not c!100274)) b!989407))

(assert (= (and d!117381 res!661753) b!989403))

(assert (= (and b!989403 res!661752) b!989400))

(declare-fun m!916977 () Bool)

(assert (=> bm!41950 m!916977))

(declare-fun m!916979 () Bool)

(assert (=> b!989403 m!916979))

(declare-fun m!916981 () Bool)

(assert (=> b!989405 m!916981))

(declare-fun m!916983 () Bool)

(assert (=> d!117381 m!916983))

(assert (=> d!117381 m!916477))

(declare-fun m!916985 () Bool)

(assert (=> b!989400 m!916985))

(assert (=> d!117223 d!117381))

(declare-fun b!989411 () Bool)

(declare-fun e!557945 () Option!522)

(declare-fun e!557946 () Option!522)

(assert (=> b!989411 (= e!557945 e!557946)))

(declare-fun c!100277 () Bool)

(assert (=> b!989411 (= c!100277 (and ((_ is Cons!20930) (toList!6863 lt!438714)) (not (= (_1!7502 (h!22092 (toList!6863 lt!438714))) (_1!7502 lt!438656)))))))

(declare-fun b!989412 () Bool)

(assert (=> b!989412 (= e!557946 (getValueByKey!516 (t!29897 (toList!6863 lt!438714)) (_1!7502 lt!438656)))))

(declare-fun d!117383 () Bool)

(declare-fun c!100276 () Bool)

(assert (=> d!117383 (= c!100276 (and ((_ is Cons!20930) (toList!6863 lt!438714)) (= (_1!7502 (h!22092 (toList!6863 lt!438714))) (_1!7502 lt!438656))))))

(assert (=> d!117383 (= (getValueByKey!516 (toList!6863 lt!438714) (_1!7502 lt!438656)) e!557945)))

(declare-fun b!989413 () Bool)

(assert (=> b!989413 (= e!557946 None!520)))

(declare-fun b!989410 () Bool)

(assert (=> b!989410 (= e!557945 (Some!521 (_2!7502 (h!22092 (toList!6863 lt!438714)))))))

(assert (= (and d!117383 c!100276) b!989410))

(assert (= (and d!117383 (not c!100276)) b!989411))

(assert (= (and b!989411 c!100277) b!989412))

(assert (= (and b!989411 (not c!100277)) b!989413))

(declare-fun m!916987 () Bool)

(assert (=> b!989412 m!916987))

(assert (=> b!989053 d!117383))

(declare-fun d!117385 () Bool)

(declare-fun e!557948 () Bool)

(assert (=> d!117385 e!557948))

(declare-fun res!661754 () Bool)

(assert (=> d!117385 (=> res!661754 e!557948)))

(declare-fun lt!438996 () Bool)

(assert (=> d!117385 (= res!661754 (not lt!438996))))

(declare-fun lt!438994 () Bool)

(assert (=> d!117385 (= lt!438996 lt!438994)))

(declare-fun lt!438993 () Unit!32777)

(declare-fun e!557947 () Unit!32777)

(assert (=> d!117385 (= lt!438993 e!557947)))

(declare-fun c!100278 () Bool)

(assert (=> d!117385 (= c!100278 lt!438994)))

(assert (=> d!117385 (= lt!438994 (containsKey!479 (toList!6863 lt!438818) (select (arr!30082 _keys!1544) from!1932)))))

(assert (=> d!117385 (= (contains!5728 lt!438818 (select (arr!30082 _keys!1544) from!1932)) lt!438996)))

(declare-fun b!989414 () Bool)

(declare-fun lt!438995 () Unit!32777)

(assert (=> b!989414 (= e!557947 lt!438995)))

(assert (=> b!989414 (= lt!438995 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438818) (select (arr!30082 _keys!1544) from!1932)))))

(assert (=> b!989414 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438818) (select (arr!30082 _keys!1544) from!1932)))))

(declare-fun b!989415 () Bool)

(declare-fun Unit!32794 () Unit!32777)

(assert (=> b!989415 (= e!557947 Unit!32794)))

(declare-fun b!989416 () Bool)

(assert (=> b!989416 (= e!557948 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438818) (select (arr!30082 _keys!1544) from!1932))))))

(assert (= (and d!117385 c!100278) b!989414))

(assert (= (and d!117385 (not c!100278)) b!989415))

(assert (= (and d!117385 (not res!661754)) b!989416))

(assert (=> d!117385 m!916159))

(declare-fun m!916989 () Bool)

(assert (=> d!117385 m!916989))

(assert (=> b!989414 m!916159))

(declare-fun m!916991 () Bool)

(assert (=> b!989414 m!916991))

(assert (=> b!989414 m!916159))

(assert (=> b!989414 m!916449))

(assert (=> b!989414 m!916449))

(declare-fun m!916993 () Bool)

(assert (=> b!989414 m!916993))

(assert (=> b!989416 m!916159))

(assert (=> b!989416 m!916449))

(assert (=> b!989416 m!916449))

(assert (=> b!989416 m!916993))

(assert (=> b!989129 d!117385))

(declare-fun d!117387 () Bool)

(declare-fun e!557950 () Bool)

(assert (=> d!117387 e!557950))

(declare-fun res!661755 () Bool)

(assert (=> d!117387 (=> res!661755 e!557950)))

(declare-fun lt!439000 () Bool)

(assert (=> d!117387 (= res!661755 (not lt!439000))))

(declare-fun lt!438998 () Bool)

(assert (=> d!117387 (= lt!439000 lt!438998)))

(declare-fun lt!438997 () Unit!32777)

(declare-fun e!557949 () Unit!32777)

(assert (=> d!117387 (= lt!438997 e!557949)))

(declare-fun c!100279 () Bool)

(assert (=> d!117387 (= c!100279 lt!438998)))

(assert (=> d!117387 (= lt!438998 (containsKey!479 (toList!6863 lt!438789) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117387 (= (contains!5728 lt!438789 #b1000000000000000000000000000000000000000000000000000000000000000) lt!439000)))

(declare-fun b!989417 () Bool)

(declare-fun lt!438999 () Unit!32777)

(assert (=> b!989417 (= e!557949 lt!438999)))

(assert (=> b!989417 (= lt!438999 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438789) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!989417 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438789) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989418 () Bool)

(declare-fun Unit!32795 () Unit!32777)

(assert (=> b!989418 (= e!557949 Unit!32795)))

(declare-fun b!989419 () Bool)

(assert (=> b!989419 (= e!557950 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438789) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117387 c!100279) b!989417))

(assert (= (and d!117387 (not c!100279)) b!989418))

(assert (= (and d!117387 (not res!661755)) b!989419))

(declare-fun m!916995 () Bool)

(assert (=> d!117387 m!916995))

(declare-fun m!916997 () Bool)

(assert (=> b!989417 m!916997))

(assert (=> b!989417 m!916499))

(assert (=> b!989417 m!916499))

(declare-fun m!916999 () Bool)

(assert (=> b!989417 m!916999))

(assert (=> b!989419 m!916499))

(assert (=> b!989419 m!916499))

(assert (=> b!989419 m!916999))

(assert (=> bm!41918 d!117387))

(declare-fun b!989421 () Bool)

(declare-fun e!557951 () Option!522)

(declare-fun e!557952 () Option!522)

(assert (=> b!989421 (= e!557951 e!557952)))

(declare-fun c!100281 () Bool)

(assert (=> b!989421 (= c!100281 (and ((_ is Cons!20930) (toList!6863 lt!438718)) (not (= (_1!7502 (h!22092 (toList!6863 lt!438718))) (_1!7502 lt!438659)))))))

(declare-fun b!989422 () Bool)

(assert (=> b!989422 (= e!557952 (getValueByKey!516 (t!29897 (toList!6863 lt!438718)) (_1!7502 lt!438659)))))

(declare-fun d!117389 () Bool)

(declare-fun c!100280 () Bool)

(assert (=> d!117389 (= c!100280 (and ((_ is Cons!20930) (toList!6863 lt!438718)) (= (_1!7502 (h!22092 (toList!6863 lt!438718))) (_1!7502 lt!438659))))))

(assert (=> d!117389 (= (getValueByKey!516 (toList!6863 lt!438718) (_1!7502 lt!438659)) e!557951)))

(declare-fun b!989423 () Bool)

(assert (=> b!989423 (= e!557952 None!520)))

(declare-fun b!989420 () Bool)

(assert (=> b!989420 (= e!557951 (Some!521 (_2!7502 (h!22092 (toList!6863 lt!438718)))))))

(assert (= (and d!117389 c!100280) b!989420))

(assert (= (and d!117389 (not c!100280)) b!989421))

(assert (= (and b!989421 c!100281) b!989422))

(assert (= (and b!989421 (not c!100281)) b!989423))

(declare-fun m!917001 () Bool)

(assert (=> b!989422 m!917001))

(assert (=> b!989055 d!117389))

(declare-fun b!989425 () Bool)

(declare-fun e!557953 () Option!522)

(declare-fun e!557954 () Option!522)

(assert (=> b!989425 (= e!557953 e!557954)))

(declare-fun c!100283 () Bool)

(assert (=> b!989425 (= c!100283 (and ((_ is Cons!20930) (toList!6863 lt!438792)) (not (= (_1!7502 (h!22092 (toList!6863 lt!438792))) (_1!7502 lt!438659)))))))

(declare-fun b!989426 () Bool)

(assert (=> b!989426 (= e!557954 (getValueByKey!516 (t!29897 (toList!6863 lt!438792)) (_1!7502 lt!438659)))))

(declare-fun d!117391 () Bool)

(declare-fun c!100282 () Bool)

(assert (=> d!117391 (= c!100282 (and ((_ is Cons!20930) (toList!6863 lt!438792)) (= (_1!7502 (h!22092 (toList!6863 lt!438792))) (_1!7502 lt!438659))))))

(assert (=> d!117391 (= (getValueByKey!516 (toList!6863 lt!438792) (_1!7502 lt!438659)) e!557953)))

(declare-fun b!989427 () Bool)

(assert (=> b!989427 (= e!557954 None!520)))

(declare-fun b!989424 () Bool)

(assert (=> b!989424 (= e!557953 (Some!521 (_2!7502 (h!22092 (toList!6863 lt!438792)))))))

(assert (= (and d!117391 c!100282) b!989424))

(assert (= (and d!117391 (not c!100282)) b!989425))

(assert (= (and b!989425 c!100283) b!989426))

(assert (= (and b!989425 (not c!100283)) b!989427))

(declare-fun m!917003 () Bool)

(assert (=> b!989426 m!917003))

(assert (=> b!989122 d!117391))

(assert (=> b!989005 d!117245))

(declare-fun d!117393 () Bool)

(assert (=> d!117393 (= (apply!930 (+!3045 lt!438790 (tuple2!14985 lt!438774 zeroValue!1220)) lt!438776) (apply!930 lt!438790 lt!438776))))

(declare-fun lt!439001 () Unit!32777)

(assert (=> d!117393 (= lt!439001 (choose!1621 lt!438790 lt!438774 zeroValue!1220 lt!438776))))

(declare-fun e!557955 () Bool)

(assert (=> d!117393 e!557955))

(declare-fun res!661756 () Bool)

(assert (=> d!117393 (=> (not res!661756) (not e!557955))))

(assert (=> d!117393 (= res!661756 (contains!5728 lt!438790 lt!438776))))

(assert (=> d!117393 (= (addApplyDifferent!471 lt!438790 lt!438774 zeroValue!1220 lt!438776) lt!439001)))

(declare-fun b!989428 () Bool)

(assert (=> b!989428 (= e!557955 (not (= lt!438776 lt!438774)))))

(assert (= (and d!117393 res!661756) b!989428))

(declare-fun m!917005 () Bool)

(assert (=> d!117393 m!917005))

(assert (=> d!117393 m!916351))

(assert (=> d!117393 m!916351))

(assert (=> d!117393 m!916353))

(declare-fun m!917007 () Bool)

(assert (=> d!117393 m!917007))

(assert (=> d!117393 m!916343))

(assert (=> b!989113 d!117393))

(declare-fun d!117395 () Bool)

(declare-fun e!557956 () Bool)

(assert (=> d!117395 e!557956))

(declare-fun res!661758 () Bool)

(assert (=> d!117395 (=> (not res!661758) (not e!557956))))

(declare-fun lt!439002 () ListLongMap!13695)

(assert (=> d!117395 (= res!661758 (contains!5728 lt!439002 (_1!7502 (tuple2!14985 lt!438779 minValue!1220))))))

(declare-fun lt!439004 () List!20934)

(assert (=> d!117395 (= lt!439002 (ListLongMap!13696 lt!439004))))

(declare-fun lt!439005 () Unit!32777)

(declare-fun lt!439003 () Unit!32777)

(assert (=> d!117395 (= lt!439005 lt!439003)))

(assert (=> d!117395 (= (getValueByKey!516 lt!439004 (_1!7502 (tuple2!14985 lt!438779 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438779 minValue!1220))))))

(assert (=> d!117395 (= lt!439003 (lemmaContainsTupThenGetReturnValue!273 lt!439004 (_1!7502 (tuple2!14985 lt!438779 minValue!1220)) (_2!7502 (tuple2!14985 lt!438779 minValue!1220))))))

(assert (=> d!117395 (= lt!439004 (insertStrictlySorted!329 (toList!6863 lt!438772) (_1!7502 (tuple2!14985 lt!438779 minValue!1220)) (_2!7502 (tuple2!14985 lt!438779 minValue!1220))))))

(assert (=> d!117395 (= (+!3045 lt!438772 (tuple2!14985 lt!438779 minValue!1220)) lt!439002)))

(declare-fun b!989429 () Bool)

(declare-fun res!661757 () Bool)

(assert (=> b!989429 (=> (not res!661757) (not e!557956))))

(assert (=> b!989429 (= res!661757 (= (getValueByKey!516 (toList!6863 lt!439002) (_1!7502 (tuple2!14985 lt!438779 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438779 minValue!1220)))))))

(declare-fun b!989430 () Bool)

(assert (=> b!989430 (= e!557956 (contains!5729 (toList!6863 lt!439002) (tuple2!14985 lt!438779 minValue!1220)))))

(assert (= (and d!117395 res!661758) b!989429))

(assert (= (and b!989429 res!661757) b!989430))

(declare-fun m!917009 () Bool)

(assert (=> d!117395 m!917009))

(declare-fun m!917011 () Bool)

(assert (=> d!117395 m!917011))

(declare-fun m!917013 () Bool)

(assert (=> d!117395 m!917013))

(declare-fun m!917015 () Bool)

(assert (=> d!117395 m!917015))

(declare-fun m!917017 () Bool)

(assert (=> b!989429 m!917017))

(declare-fun m!917019 () Bool)

(assert (=> b!989430 m!917019))

(assert (=> b!989113 d!117395))

(declare-fun d!117397 () Bool)

(assert (=> d!117397 (= (apply!930 (+!3045 lt!438775 (tuple2!14985 lt!438771 minValue!1220)) lt!438781) (get!15634 (getValueByKey!516 (toList!6863 (+!3045 lt!438775 (tuple2!14985 lt!438771 minValue!1220))) lt!438781)))))

(declare-fun bs!28084 () Bool)

(assert (= bs!28084 d!117397))

(declare-fun m!917021 () Bool)

(assert (=> bs!28084 m!917021))

(assert (=> bs!28084 m!917021))

(declare-fun m!917023 () Bool)

(assert (=> bs!28084 m!917023))

(assert (=> b!989113 d!117397))

(declare-fun d!117399 () Bool)

(assert (=> d!117399 (= (apply!930 (+!3045 lt!438772 (tuple2!14985 lt!438779 minValue!1220)) lt!438783) (apply!930 lt!438772 lt!438783))))

(declare-fun lt!439006 () Unit!32777)

(assert (=> d!117399 (= lt!439006 (choose!1621 lt!438772 lt!438779 minValue!1220 lt!438783))))

(declare-fun e!557957 () Bool)

(assert (=> d!117399 e!557957))

(declare-fun res!661759 () Bool)

(assert (=> d!117399 (=> (not res!661759) (not e!557957))))

(assert (=> d!117399 (= res!661759 (contains!5728 lt!438772 lt!438783))))

(assert (=> d!117399 (= (addApplyDifferent!471 lt!438772 lt!438779 minValue!1220 lt!438783) lt!439006)))

(declare-fun b!989431 () Bool)

(assert (=> b!989431 (= e!557957 (not (= lt!438783 lt!438779)))))

(assert (= (and d!117399 res!661759) b!989431))

(declare-fun m!917025 () Bool)

(assert (=> d!117399 m!917025))

(assert (=> d!117399 m!916357))

(assert (=> d!117399 m!916357))

(assert (=> d!117399 m!916359))

(declare-fun m!917027 () Bool)

(assert (=> d!117399 m!917027))

(assert (=> d!117399 m!916345))

(assert (=> b!989113 d!117399))

(declare-fun d!117401 () Bool)

(declare-fun e!557958 () Bool)

(assert (=> d!117401 e!557958))

(declare-fun res!661761 () Bool)

(assert (=> d!117401 (=> (not res!661761) (not e!557958))))

(declare-fun lt!439007 () ListLongMap!13695)

(assert (=> d!117401 (= res!661761 (contains!5728 lt!439007 (_1!7502 (tuple2!14985 lt!438771 minValue!1220))))))

(declare-fun lt!439009 () List!20934)

(assert (=> d!117401 (= lt!439007 (ListLongMap!13696 lt!439009))))

(declare-fun lt!439010 () Unit!32777)

(declare-fun lt!439008 () Unit!32777)

(assert (=> d!117401 (= lt!439010 lt!439008)))

(assert (=> d!117401 (= (getValueByKey!516 lt!439009 (_1!7502 (tuple2!14985 lt!438771 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438771 minValue!1220))))))

(assert (=> d!117401 (= lt!439008 (lemmaContainsTupThenGetReturnValue!273 lt!439009 (_1!7502 (tuple2!14985 lt!438771 minValue!1220)) (_2!7502 (tuple2!14985 lt!438771 minValue!1220))))))

(assert (=> d!117401 (= lt!439009 (insertStrictlySorted!329 (toList!6863 lt!438775) (_1!7502 (tuple2!14985 lt!438771 minValue!1220)) (_2!7502 (tuple2!14985 lt!438771 minValue!1220))))))

(assert (=> d!117401 (= (+!3045 lt!438775 (tuple2!14985 lt!438771 minValue!1220)) lt!439007)))

(declare-fun b!989432 () Bool)

(declare-fun res!661760 () Bool)

(assert (=> b!989432 (=> (not res!661760) (not e!557958))))

(assert (=> b!989432 (= res!661760 (= (getValueByKey!516 (toList!6863 lt!439007) (_1!7502 (tuple2!14985 lt!438771 minValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438771 minValue!1220)))))))

(declare-fun b!989433 () Bool)

(assert (=> b!989433 (= e!557958 (contains!5729 (toList!6863 lt!439007) (tuple2!14985 lt!438771 minValue!1220)))))

(assert (= (and d!117401 res!661761) b!989432))

(assert (= (and b!989432 res!661760) b!989433))

(declare-fun m!917029 () Bool)

(assert (=> d!117401 m!917029))

(declare-fun m!917031 () Bool)

(assert (=> d!117401 m!917031))

(declare-fun m!917033 () Bool)

(assert (=> d!117401 m!917033))

(declare-fun m!917035 () Bool)

(assert (=> d!117401 m!917035))

(declare-fun m!917037 () Bool)

(assert (=> b!989432 m!917037))

(declare-fun m!917039 () Bool)

(assert (=> b!989433 m!917039))

(assert (=> b!989113 d!117401))

(declare-fun d!117403 () Bool)

(declare-fun e!557959 () Bool)

(assert (=> d!117403 e!557959))

(declare-fun res!661763 () Bool)

(assert (=> d!117403 (=> (not res!661763) (not e!557959))))

(declare-fun lt!439011 () ListLongMap!13695)

(assert (=> d!117403 (= res!661763 (contains!5728 lt!439011 (_1!7502 (tuple2!14985 lt!438774 zeroValue!1220))))))

(declare-fun lt!439013 () List!20934)

(assert (=> d!117403 (= lt!439011 (ListLongMap!13696 lt!439013))))

(declare-fun lt!439014 () Unit!32777)

(declare-fun lt!439012 () Unit!32777)

(assert (=> d!117403 (= lt!439014 lt!439012)))

(assert (=> d!117403 (= (getValueByKey!516 lt!439013 (_1!7502 (tuple2!14985 lt!438774 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438774 zeroValue!1220))))))

(assert (=> d!117403 (= lt!439012 (lemmaContainsTupThenGetReturnValue!273 lt!439013 (_1!7502 (tuple2!14985 lt!438774 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438774 zeroValue!1220))))))

(assert (=> d!117403 (= lt!439013 (insertStrictlySorted!329 (toList!6863 lt!438790) (_1!7502 (tuple2!14985 lt!438774 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438774 zeroValue!1220))))))

(assert (=> d!117403 (= (+!3045 lt!438790 (tuple2!14985 lt!438774 zeroValue!1220)) lt!439011)))

(declare-fun b!989434 () Bool)

(declare-fun res!661762 () Bool)

(assert (=> b!989434 (=> (not res!661762) (not e!557959))))

(assert (=> b!989434 (= res!661762 (= (getValueByKey!516 (toList!6863 lt!439011) (_1!7502 (tuple2!14985 lt!438774 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438774 zeroValue!1220)))))))

(declare-fun b!989435 () Bool)

(assert (=> b!989435 (= e!557959 (contains!5729 (toList!6863 lt!439011) (tuple2!14985 lt!438774 zeroValue!1220)))))

(assert (= (and d!117403 res!661763) b!989434))

(assert (= (and b!989434 res!661762) b!989435))

(declare-fun m!917041 () Bool)

(assert (=> d!117403 m!917041))

(declare-fun m!917043 () Bool)

(assert (=> d!117403 m!917043))

(declare-fun m!917045 () Bool)

(assert (=> d!117403 m!917045))

(declare-fun m!917047 () Bool)

(assert (=> d!117403 m!917047))

(declare-fun m!917049 () Bool)

(assert (=> b!989434 m!917049))

(declare-fun m!917051 () Bool)

(assert (=> b!989435 m!917051))

(assert (=> b!989113 d!117403))

(declare-fun d!117405 () Bool)

(assert (=> d!117405 (= (apply!930 (+!3045 lt!438772 (tuple2!14985 lt!438779 minValue!1220)) lt!438783) (get!15634 (getValueByKey!516 (toList!6863 (+!3045 lt!438772 (tuple2!14985 lt!438779 minValue!1220))) lt!438783)))))

(declare-fun bs!28085 () Bool)

(assert (= bs!28085 d!117405))

(declare-fun m!917053 () Bool)

(assert (=> bs!28085 m!917053))

(assert (=> bs!28085 m!917053))

(declare-fun m!917055 () Bool)

(assert (=> bs!28085 m!917055))

(assert (=> b!989113 d!117405))

(declare-fun d!117407 () Bool)

(assert (=> d!117407 (= (apply!930 (+!3045 lt!438790 (tuple2!14985 lt!438774 zeroValue!1220)) lt!438776) (get!15634 (getValueByKey!516 (toList!6863 (+!3045 lt!438790 (tuple2!14985 lt!438774 zeroValue!1220))) lt!438776)))))

(declare-fun bs!28086 () Bool)

(assert (= bs!28086 d!117407))

(declare-fun m!917057 () Bool)

(assert (=> bs!28086 m!917057))

(assert (=> bs!28086 m!917057))

(declare-fun m!917059 () Bool)

(assert (=> bs!28086 m!917059))

(assert (=> b!989113 d!117407))

(declare-fun d!117409 () Bool)

(assert (=> d!117409 (= (apply!930 lt!438775 lt!438781) (get!15634 (getValueByKey!516 (toList!6863 lt!438775) lt!438781)))))

(declare-fun bs!28087 () Bool)

(assert (= bs!28087 d!117409))

(declare-fun m!917061 () Bool)

(assert (=> bs!28087 m!917061))

(assert (=> bs!28087 m!917061))

(declare-fun m!917063 () Bool)

(assert (=> bs!28087 m!917063))

(assert (=> b!989113 d!117409))

(declare-fun d!117411 () Bool)

(declare-fun e!557961 () Bool)

(assert (=> d!117411 e!557961))

(declare-fun res!661764 () Bool)

(assert (=> d!117411 (=> res!661764 e!557961)))

(declare-fun lt!439018 () Bool)

(assert (=> d!117411 (= res!661764 (not lt!439018))))

(declare-fun lt!439016 () Bool)

(assert (=> d!117411 (= lt!439018 lt!439016)))

(declare-fun lt!439015 () Unit!32777)

(declare-fun e!557960 () Unit!32777)

(assert (=> d!117411 (= lt!439015 e!557960)))

(declare-fun c!100284 () Bool)

(assert (=> d!117411 (= c!100284 lt!439016)))

(assert (=> d!117411 (= lt!439016 (containsKey!479 (toList!6863 (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220))) lt!438791))))

(assert (=> d!117411 (= (contains!5728 (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220)) lt!438791) lt!439018)))

(declare-fun b!989436 () Bool)

(declare-fun lt!439017 () Unit!32777)

(assert (=> b!989436 (= e!557960 lt!439017)))

(assert (=> b!989436 (= lt!439017 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220))) lt!438791))))

(assert (=> b!989436 (isDefined!384 (getValueByKey!516 (toList!6863 (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220))) lt!438791))))

(declare-fun b!989437 () Bool)

(declare-fun Unit!32796 () Unit!32777)

(assert (=> b!989437 (= e!557960 Unit!32796)))

(declare-fun b!989438 () Bool)

(assert (=> b!989438 (= e!557961 (isDefined!384 (getValueByKey!516 (toList!6863 (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220))) lt!438791)))))

(assert (= (and d!117411 c!100284) b!989436))

(assert (= (and d!117411 (not c!100284)) b!989437))

(assert (= (and d!117411 (not res!661764)) b!989438))

(declare-fun m!917065 () Bool)

(assert (=> d!117411 m!917065))

(declare-fun m!917067 () Bool)

(assert (=> b!989436 m!917067))

(declare-fun m!917069 () Bool)

(assert (=> b!989436 m!917069))

(assert (=> b!989436 m!917069))

(declare-fun m!917071 () Bool)

(assert (=> b!989436 m!917071))

(assert (=> b!989438 m!917069))

(assert (=> b!989438 m!917069))

(assert (=> b!989438 m!917071))

(assert (=> b!989113 d!117411))

(declare-fun d!117413 () Bool)

(assert (=> d!117413 (contains!5728 (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220)) lt!438791)))

(declare-fun lt!439019 () Unit!32777)

(assert (=> d!117413 (= lt!439019 (choose!1622 lt!438782 lt!438778 zeroValue!1220 lt!438791))))

(assert (=> d!117413 (contains!5728 lt!438782 lt!438791)))

(assert (=> d!117413 (= (addStillContains!619 lt!438782 lt!438778 zeroValue!1220 lt!438791) lt!439019)))

(declare-fun bs!28088 () Bool)

(assert (= bs!28088 d!117413))

(assert (=> bs!28088 m!916335))

(assert (=> bs!28088 m!916335))

(assert (=> bs!28088 m!916337))

(declare-fun m!917073 () Bool)

(assert (=> bs!28088 m!917073))

(declare-fun m!917075 () Bool)

(assert (=> bs!28088 m!917075))

(assert (=> b!989113 d!117413))

(declare-fun d!117415 () Bool)

(assert (=> d!117415 (= (apply!930 lt!438772 lt!438783) (get!15634 (getValueByKey!516 (toList!6863 lt!438772) lt!438783)))))

(declare-fun bs!28089 () Bool)

(assert (= bs!28089 d!117415))

(declare-fun m!917077 () Bool)

(assert (=> bs!28089 m!917077))

(assert (=> bs!28089 m!917077))

(declare-fun m!917079 () Bool)

(assert (=> bs!28089 m!917079))

(assert (=> b!989113 d!117415))

(declare-fun d!117417 () Bool)

(declare-fun e!557962 () Bool)

(assert (=> d!117417 e!557962))

(declare-fun res!661766 () Bool)

(assert (=> d!117417 (=> (not res!661766) (not e!557962))))

(declare-fun lt!439020 () ListLongMap!13695)

(assert (=> d!117417 (= res!661766 (contains!5728 lt!439020 (_1!7502 (tuple2!14985 lt!438778 zeroValue!1220))))))

(declare-fun lt!439022 () List!20934)

(assert (=> d!117417 (= lt!439020 (ListLongMap!13696 lt!439022))))

(declare-fun lt!439023 () Unit!32777)

(declare-fun lt!439021 () Unit!32777)

(assert (=> d!117417 (= lt!439023 lt!439021)))

(assert (=> d!117417 (= (getValueByKey!516 lt!439022 (_1!7502 (tuple2!14985 lt!438778 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438778 zeroValue!1220))))))

(assert (=> d!117417 (= lt!439021 (lemmaContainsTupThenGetReturnValue!273 lt!439022 (_1!7502 (tuple2!14985 lt!438778 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438778 zeroValue!1220))))))

(assert (=> d!117417 (= lt!439022 (insertStrictlySorted!329 (toList!6863 lt!438782) (_1!7502 (tuple2!14985 lt!438778 zeroValue!1220)) (_2!7502 (tuple2!14985 lt!438778 zeroValue!1220))))))

(assert (=> d!117417 (= (+!3045 lt!438782 (tuple2!14985 lt!438778 zeroValue!1220)) lt!439020)))

(declare-fun b!989439 () Bool)

(declare-fun res!661765 () Bool)

(assert (=> b!989439 (=> (not res!661765) (not e!557962))))

(assert (=> b!989439 (= res!661765 (= (getValueByKey!516 (toList!6863 lt!439020) (_1!7502 (tuple2!14985 lt!438778 zeroValue!1220))) (Some!521 (_2!7502 (tuple2!14985 lt!438778 zeroValue!1220)))))))

(declare-fun b!989440 () Bool)

(assert (=> b!989440 (= e!557962 (contains!5729 (toList!6863 lt!439020) (tuple2!14985 lt!438778 zeroValue!1220)))))

(assert (= (and d!117417 res!661766) b!989439))

(assert (= (and b!989439 res!661765) b!989440))

(declare-fun m!917081 () Bool)

(assert (=> d!117417 m!917081))

(declare-fun m!917083 () Bool)

(assert (=> d!117417 m!917083))

(declare-fun m!917085 () Bool)

(assert (=> d!117417 m!917085))

(declare-fun m!917087 () Bool)

(assert (=> d!117417 m!917087))

(declare-fun m!917089 () Bool)

(assert (=> b!989439 m!917089))

(declare-fun m!917091 () Bool)

(assert (=> b!989440 m!917091))

(assert (=> b!989113 d!117417))

(assert (=> b!989113 d!117213))

(declare-fun d!117419 () Bool)

(assert (=> d!117419 (= (apply!930 lt!438790 lt!438776) (get!15634 (getValueByKey!516 (toList!6863 lt!438790) lt!438776)))))

(declare-fun bs!28090 () Bool)

(assert (= bs!28090 d!117419))

(declare-fun m!917093 () Bool)

(assert (=> bs!28090 m!917093))

(assert (=> bs!28090 m!917093))

(declare-fun m!917095 () Bool)

(assert (=> bs!28090 m!917095))

(assert (=> b!989113 d!117419))

(declare-fun d!117421 () Bool)

(assert (=> d!117421 (= (apply!930 (+!3045 lt!438775 (tuple2!14985 lt!438771 minValue!1220)) lt!438781) (apply!930 lt!438775 lt!438781))))

(declare-fun lt!439024 () Unit!32777)

(assert (=> d!117421 (= lt!439024 (choose!1621 lt!438775 lt!438771 minValue!1220 lt!438781))))

(declare-fun e!557963 () Bool)

(assert (=> d!117421 e!557963))

(declare-fun res!661767 () Bool)

(assert (=> d!117421 (=> (not res!661767) (not e!557963))))

(assert (=> d!117421 (= res!661767 (contains!5728 lt!438775 lt!438781))))

(assert (=> d!117421 (= (addApplyDifferent!471 lt!438775 lt!438771 minValue!1220 lt!438781) lt!439024)))

(declare-fun b!989441 () Bool)

(assert (=> b!989441 (= e!557963 (not (= lt!438781 lt!438771)))))

(assert (= (and d!117421 res!661767) b!989441))

(declare-fun m!917097 () Bool)

(assert (=> d!117421 m!917097))

(assert (=> d!117421 m!916339))

(assert (=> d!117421 m!916339))

(assert (=> d!117421 m!916355))

(declare-fun m!917099 () Bool)

(assert (=> d!117421 m!917099))

(assert (=> d!117421 m!916363))

(assert (=> b!989113 d!117421))

(assert (=> d!117221 d!117203))

(assert (=> d!117227 d!117203))

(declare-fun d!117423 () Bool)

(assert (=> d!117423 (arrayContainsKey!0 _keys!1544 lt!438684 #b00000000000000000000000000000000)))

(declare-fun lt!439027 () Unit!32777)

(declare-fun choose!13 (array!62465 (_ BitVec 64) (_ BitVec 32)) Unit!32777)

(assert (=> d!117423 (= lt!439027 (choose!13 _keys!1544 lt!438684 #b00000000000000000000000000000000))))

(assert (=> d!117423 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!117423 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!438684 #b00000000000000000000000000000000) lt!439027)))

(declare-fun bs!28091 () Bool)

(assert (= bs!28091 d!117423))

(assert (=> bs!28091 m!916243))

(declare-fun m!917101 () Bool)

(assert (=> bs!28091 m!917101))

(assert (=> b!988990 d!117423))

(declare-fun d!117425 () Bool)

(declare-fun res!661772 () Bool)

(declare-fun e!557968 () Bool)

(assert (=> d!117425 (=> res!661772 e!557968)))

(assert (=> d!117425 (= res!661772 (= (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) lt!438684))))

(assert (=> d!117425 (= (arrayContainsKey!0 _keys!1544 lt!438684 #b00000000000000000000000000000000) e!557968)))

(declare-fun b!989446 () Bool)

(declare-fun e!557969 () Bool)

(assert (=> b!989446 (= e!557968 e!557969)))

(declare-fun res!661773 () Bool)

(assert (=> b!989446 (=> (not res!661773) (not e!557969))))

(assert (=> b!989446 (= res!661773 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30562 _keys!1544)))))

(declare-fun b!989447 () Bool)

(assert (=> b!989447 (= e!557969 (arrayContainsKey!0 _keys!1544 lt!438684 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!117425 (not res!661772)) b!989446))

(assert (= (and b!989446 res!661773) b!989447))

(assert (=> d!117425 m!916237))

(declare-fun m!917103 () Bool)

(assert (=> b!989447 m!917103))

(assert (=> b!988990 d!117425))

(declare-fun b!989460 () Bool)

(declare-fun e!557977 () SeekEntryResult!9198)

(declare-fun e!557978 () SeekEntryResult!9198)

(assert (=> b!989460 (= e!557977 e!557978)))

(declare-fun lt!439036 () (_ BitVec 64))

(declare-fun lt!439034 () SeekEntryResult!9198)

(assert (=> b!989460 (= lt!439036 (select (arr!30082 _keys!1544) (index!39164 lt!439034)))))

(declare-fun c!100293 () Bool)

(assert (=> b!989460 (= c!100293 (= lt!439036 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989461 () Bool)

(declare-fun c!100292 () Bool)

(assert (=> b!989461 (= c!100292 (= lt!439036 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!557976 () SeekEntryResult!9198)

(assert (=> b!989461 (= e!557978 e!557976)))

(declare-fun b!989462 () Bool)

(assert (=> b!989462 (= e!557977 Undefined!9198)))

(declare-fun b!989463 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62465 (_ BitVec 32)) SeekEntryResult!9198)

(assert (=> b!989463 (= e!557976 (seekKeyOrZeroReturnVacant!0 (x!86073 lt!439034) (index!39164 lt!439034) (index!39164 lt!439034) (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(declare-fun d!117427 () Bool)

(declare-fun lt!439035 () SeekEntryResult!9198)

(assert (=> d!117427 (and (or ((_ is Undefined!9198) lt!439035) (not ((_ is Found!9198) lt!439035)) (and (bvsge (index!39163 lt!439035) #b00000000000000000000000000000000) (bvslt (index!39163 lt!439035) (size!30562 _keys!1544)))) (or ((_ is Undefined!9198) lt!439035) ((_ is Found!9198) lt!439035) (not ((_ is MissingZero!9198) lt!439035)) (and (bvsge (index!39162 lt!439035) #b00000000000000000000000000000000) (bvslt (index!39162 lt!439035) (size!30562 _keys!1544)))) (or ((_ is Undefined!9198) lt!439035) ((_ is Found!9198) lt!439035) ((_ is MissingZero!9198) lt!439035) (not ((_ is MissingVacant!9198) lt!439035)) (and (bvsge (index!39165 lt!439035) #b00000000000000000000000000000000) (bvslt (index!39165 lt!439035) (size!30562 _keys!1544)))) (or ((_ is Undefined!9198) lt!439035) (ite ((_ is Found!9198) lt!439035) (= (select (arr!30082 _keys!1544) (index!39163 lt!439035)) (select (arr!30082 _keys!1544) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9198) lt!439035) (= (select (arr!30082 _keys!1544) (index!39162 lt!439035)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9198) lt!439035) (= (select (arr!30082 _keys!1544) (index!39165 lt!439035)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117427 (= lt!439035 e!557977)))

(declare-fun c!100291 () Bool)

(assert (=> d!117427 (= c!100291 (and ((_ is Intermediate!9198) lt!439034) (undefined!10010 lt!439034)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62465 (_ BitVec 32)) SeekEntryResult!9198)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!117427 (= lt!439034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) mask!1948) (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(assert (=> d!117427 (validMask!0 mask!1948)))

(assert (=> d!117427 (= (seekEntryOrOpen!0 (select (arr!30082 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) lt!439035)))

(declare-fun b!989464 () Bool)

(assert (=> b!989464 (= e!557978 (Found!9198 (index!39164 lt!439034)))))

(declare-fun b!989465 () Bool)

(assert (=> b!989465 (= e!557976 (MissingZero!9198 (index!39164 lt!439034)))))

(assert (= (and d!117427 c!100291) b!989462))

(assert (= (and d!117427 (not c!100291)) b!989460))

(assert (= (and b!989460 c!100293) b!989464))

(assert (= (and b!989460 (not c!100293)) b!989461))

(assert (= (and b!989461 c!100292) b!989465))

(assert (= (and b!989461 (not c!100292)) b!989463))

(declare-fun m!917105 () Bool)

(assert (=> b!989460 m!917105))

(assert (=> b!989463 m!916237))

(declare-fun m!917107 () Bool)

(assert (=> b!989463 m!917107))

(declare-fun m!917109 () Bool)

(assert (=> d!117427 m!917109))

(assert (=> d!117427 m!916237))

(declare-fun m!917111 () Bool)

(assert (=> d!117427 m!917111))

(declare-fun m!917113 () Bool)

(assert (=> d!117427 m!917113))

(declare-fun m!917115 () Bool)

(assert (=> d!117427 m!917115))

(assert (=> d!117427 m!916237))

(assert (=> d!117427 m!917109))

(declare-fun m!917117 () Bool)

(assert (=> d!117427 m!917117))

(assert (=> d!117427 m!916177))

(assert (=> b!988990 d!117427))

(assert (=> b!989128 d!117201))

(declare-fun d!117429 () Bool)

(assert (=> d!117429 (= (get!15633 (select (arr!30083 _values!1278) from!1932) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!1873 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!989012 d!117429))

(declare-fun d!117431 () Bool)

(assert (=> d!117431 (= (apply!930 lt!438703 (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15634 (getValueByKey!516 (toList!6863 lt!438703) (select (arr!30082 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(declare-fun bs!28092 () Bool)

(assert (= bs!28092 d!117431))

(assert (=> bs!28092 m!916255))

(assert (=> bs!28092 m!916619))

(assert (=> bs!28092 m!916619))

(declare-fun m!917119 () Bool)

(assert (=> bs!28092 m!917119))

(assert (=> b!989037 d!117431))

(assert (=> b!989037 d!117269))

(declare-fun d!117433 () Bool)

(declare-fun e!557980 () Bool)

(assert (=> d!117433 e!557980))

(declare-fun res!661774 () Bool)

(assert (=> d!117433 (=> res!661774 e!557980)))

(declare-fun lt!439040 () Bool)

(assert (=> d!117433 (= res!661774 (not lt!439040))))

(declare-fun lt!439038 () Bool)

(assert (=> d!117433 (= lt!439040 lt!439038)))

(declare-fun lt!439037 () Unit!32777)

(declare-fun e!557979 () Unit!32777)

(assert (=> d!117433 (= lt!439037 e!557979)))

(declare-fun c!100294 () Bool)

(assert (=> d!117433 (= c!100294 lt!439038)))

(assert (=> d!117433 (= lt!439038 (containsKey!479 (toList!6863 lt!438703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117433 (= (contains!5728 lt!438703 #b0000000000000000000000000000000000000000000000000000000000000000) lt!439040)))

(declare-fun b!989466 () Bool)

(declare-fun lt!439039 () Unit!32777)

(assert (=> b!989466 (= e!557979 lt!439039)))

(assert (=> b!989466 (= lt!439039 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!6863 lt!438703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!989466 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!989467 () Bool)

(declare-fun Unit!32797 () Unit!32777)

(assert (=> b!989467 (= e!557979 Unit!32797)))

(declare-fun b!989468 () Bool)

(assert (=> b!989468 (= e!557980 (isDefined!384 (getValueByKey!516 (toList!6863 lt!438703) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117433 c!100294) b!989466))

(assert (= (and d!117433 (not c!100294)) b!989467))

(assert (= (and d!117433 (not res!661774)) b!989468))

(declare-fun m!917121 () Bool)

(assert (=> d!117433 m!917121))

(declare-fun m!917123 () Bool)

(assert (=> b!989466 m!917123))

(declare-fun m!917125 () Bool)

(assert (=> b!989466 m!917125))

(assert (=> b!989466 m!917125))

(declare-fun m!917127 () Bool)

(assert (=> b!989466 m!917127))

(assert (=> b!989468 m!917125))

(assert (=> b!989468 m!917125))

(assert (=> b!989468 m!917127))

(assert (=> d!117213 d!117433))

(assert (=> d!117213 d!117203))

(assert (=> b!989134 d!117201))

(assert (=> b!989105 d!117247))

(declare-fun b!989470 () Bool)

(declare-fun e!557981 () Option!522)

(declare-fun e!557982 () Option!522)

(assert (=> b!989470 (= e!557981 e!557982)))

(declare-fun c!100296 () Bool)

(assert (=> b!989470 (= c!100296 (and ((_ is Cons!20930) (toList!6863 lt!438722)) (not (= (_1!7502 (h!22092 (toList!6863 lt!438722))) (_1!7502 lt!438659)))))))

(declare-fun b!989471 () Bool)

(assert (=> b!989471 (= e!557982 (getValueByKey!516 (t!29897 (toList!6863 lt!438722)) (_1!7502 lt!438659)))))

(declare-fun d!117435 () Bool)

(declare-fun c!100295 () Bool)

(assert (=> d!117435 (= c!100295 (and ((_ is Cons!20930) (toList!6863 lt!438722)) (= (_1!7502 (h!22092 (toList!6863 lt!438722))) (_1!7502 lt!438659))))))

(assert (=> d!117435 (= (getValueByKey!516 (toList!6863 lt!438722) (_1!7502 lt!438659)) e!557981)))

(declare-fun b!989472 () Bool)

(assert (=> b!989472 (= e!557982 None!520)))

(declare-fun b!989469 () Bool)

(assert (=> b!989469 (= e!557981 (Some!521 (_2!7502 (h!22092 (toList!6863 lt!438722)))))))

(assert (= (and d!117435 c!100295) b!989469))

(assert (= (and d!117435 (not c!100295)) b!989470))

(assert (= (and b!989470 c!100296) b!989471))

(assert (= (and b!989470 (not c!100296)) b!989472))

(declare-fun m!917129 () Bool)

(assert (=> b!989471 m!917129))

(assert (=> b!989057 d!117435))

(declare-fun mapIsEmpty!36937 () Bool)

(declare-fun mapRes!36937 () Bool)

(assert (=> mapIsEmpty!36937 mapRes!36937))

(declare-fun condMapEmpty!36937 () Bool)

(declare-fun mapDefault!36937 () ValueCell!11148)

(assert (=> mapNonEmpty!36936 (= condMapEmpty!36937 (= mapRest!36936 ((as const (Array (_ BitVec 32) ValueCell!11148)) mapDefault!36937)))))

(declare-fun e!557983 () Bool)

(assert (=> mapNonEmpty!36936 (= tp!69927 (and e!557983 mapRes!36937))))

(declare-fun mapNonEmpty!36937 () Bool)

(declare-fun tp!69928 () Bool)

(declare-fun e!557984 () Bool)

(assert (=> mapNonEmpty!36937 (= mapRes!36937 (and tp!69928 e!557984))))

(declare-fun mapKey!36937 () (_ BitVec 32))

(declare-fun mapValue!36937 () ValueCell!11148)

(declare-fun mapRest!36937 () (Array (_ BitVec 32) ValueCell!11148))

(assert (=> mapNonEmpty!36937 (= mapRest!36936 (store mapRest!36937 mapKey!36937 mapValue!36937))))

(declare-fun b!989474 () Bool)

(assert (=> b!989474 (= e!557983 tp_is_empty!23259)))

(declare-fun b!989473 () Bool)

(assert (=> b!989473 (= e!557984 tp_is_empty!23259)))

(assert (= (and mapNonEmpty!36936 condMapEmpty!36937) mapIsEmpty!36937))

(assert (= (and mapNonEmpty!36936 (not condMapEmpty!36937)) mapNonEmpty!36937))

(assert (= (and mapNonEmpty!36937 ((_ is ValueCellFull!11148) mapValue!36937)) b!989473))

(assert (= (and mapNonEmpty!36936 ((_ is ValueCellFull!11148) mapDefault!36937)) b!989474))

(declare-fun m!917131 () Bool)

(assert (=> mapNonEmpty!36937 m!917131))

(declare-fun b_lambda!15159 () Bool)

(assert (= b_lambda!15157 (or (and start!84590 b_free!20043) b_lambda!15159)))

(declare-fun b_lambda!15161 () Bool)

(assert (= b_lambda!15151 (or (and start!84590 b_free!20043) b_lambda!15161)))

(declare-fun b_lambda!15163 () Bool)

(assert (= b_lambda!15155 (or (and start!84590 b_free!20043) b_lambda!15163)))

(declare-fun b_lambda!15165 () Bool)

(assert (= b_lambda!15153 (or (and start!84590 b_free!20043) b_lambda!15165)))

(check-sat (not b!989257) (not b!989251) (not b_lambda!15165) (not b!989227) (not d!117421) (not b!989273) (not b_lambda!15161) (not d!117361) (not b!989357) (not d!117419) (not b!989262) (not d!117385) (not d!117283) (not b!989463) (not b!989205) (not b!989242) (not b!989414) (not b!989416) (not d!117311) (not b_lambda!15163) (not d!117275) (not d!117271) (not b!989163) (not d!117409) (not b!989368) (not d!117353) (not d!117351) (not d!117413) (not b!989287) (not d!117319) (not b!989301) (not b!989381) (not b!989283) (not b!989351) (not d!117407) (not d!117303) (not b!989377) (not b!989356) (not b!989180) (not b!989399) (not d!117285) (not b!989325) (not b!989432) (not d!117329) (not d!117257) (not b!989354) (not b_lambda!15133) (not d!117335) (not d!117359) (not b!989434) (not b!989333) (not b!989426) (not b!989258) b_and!32195 (not d!117417) (not b!989398) (not b!989260) (not b!989277) (not bm!41937) (not b_lambda!15159) (not b!989380) (not b!989362) (not d!117295) (not d!117395) (not d!117331) (not d!117305) (not b!989438) (not d!117291) (not d!117343) (not d!117231) (not b!989266) (not b!989233) (not d!117423) (not b!989298) (not b!989471) (not b!989181) (not b!989272) (not b!989221) (not b!989239) (not b!989391) (not b!989328) (not b!989220) (not b!989422) (not d!117251) (not b!989238) (not d!117373) (not b!989256) (not b!989331) (not b!989405) (not d!117349) (not b!989236) (not d!117321) (not d!117393) (not bm!41944) (not b_next!20043) (not d!117337) tp_is_empty!23259 (not b!989248) (not b!989349) (not b!989271) (not d!117411) (not b!989447) (not b!989289) (not b!989338) (not bm!41947) (not b!989433) (not b!989174) (not b_lambda!15143) (not b!989235) (not b!989286) (not d!117267) (not b!989214) (not b!989335) (not d!117273) (not b!989275) (not d!117325) (not b!989222) (not b!989246) (not b!989291) (not d!117403) (not d!117405) (not b!989369) (not b!989412) (not d!117317) (not b!989439) (not b!989296) (not b!989259) (not d!117379) (not b!989294) (not b!989224) (not b!989250) (not d!117363) (not b!989359) (not d!117233) (not b!989288) (not b!989435) (not b!989245) (not d!117281) (not d!117315) (not b!989161) (not b!989249) (not b!989212) (not b!989468) (not d!117399) (not d!117261) (not b!989419) (not d!117299) (not b!989202) (not b!989261) (not d!117327) (not b!989334) (not b!989243) (not b!989282) (not mapNonEmpty!36937) (not b!989386) (not b!989371) (not b!989400) (not d!117365) (not d!117239) (not bm!41935) (not bm!41934) (not d!117341) (not d!117313) (not d!117259) (not d!117333) (not bm!41938) (not d!117237) (not b!989353) (not b!989430) (not b!989303) (not b!989207) (not b!989379) (not d!117357) (not d!117255) (not b!989372) (not d!117277) (not b_lambda!15149) (not b!989234) (not b!989267) (not b_lambda!15145) (not d!117401) (not b!989318) (not b!989355) (not b!989466) (not d!117279) (not b!989324) (not d!117289) (not bm!41936) (not d!117307) (not d!117241) (not b!989237) (not b!989340) (not bm!41941) (not b!989393) (not b!989429) (not b!989360) (not b!989322) (not d!117397) (not b!989326) (not bm!41950) (not b!989384) (not d!117243) (not d!117323) (not b!989269) (not d!117427) (not b!989297) (not d!117375) (not b!989316) (not b!989440) (not d!117355) (not b!989264) (not d!117297) (not b!989374) (not b!989358) (not d!117293) (not d!117433) (not d!117367) (not b!989314) (not b!989241) (not b!989323) (not d!117387) (not b!989226) (not b!989396) (not b!989417) (not d!117381) (not d!117309) (not d!117371) (not d!117431) (not b!989436) (not b!989347) (not b!989403) (not b!989232) (not d!117347) (not d!117415) (not d!117249) (not b!989284) (not b!989313) (not b!989352) (not b!989320) (not b!989263) (not b_lambda!15147) (not b!989315) (not d!117287))
(check-sat b_and!32195 (not b_next!20043))
