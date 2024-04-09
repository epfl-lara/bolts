; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84664 () Bool)

(assert start!84664)

(declare-fun b_free!20061 () Bool)

(declare-fun b_next!20061 () Bool)

(assert (=> start!84664 (= b_free!20061 (not b_next!20061))))

(declare-fun tp!69975 () Bool)

(declare-fun b_and!32211 () Bool)

(assert (=> start!84664 (= tp!69975 b_and!32211)))

(declare-fun b!989705 () Bool)

(declare-fun e!558104 () Bool)

(declare-fun tp_is_empty!23277 () Bool)

(assert (=> b!989705 (= e!558104 tp_is_empty!23277)))

(declare-fun b!989706 () Bool)

(declare-fun res!661937 () Bool)

(declare-fun e!558103 () Bool)

(assert (=> b!989706 (=> (not res!661937) (not e!558103))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!989706 (= res!661937 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36961 () Bool)

(declare-fun mapRes!36961 () Bool)

(declare-fun tp!69976 () Bool)

(assert (=> mapNonEmpty!36961 (= mapRes!36961 (and tp!69976 e!558104))))

(declare-datatypes ((V!36019 0))(
  ( (V!36020 (val!11689 Int)) )
))
(declare-datatypes ((ValueCell!11157 0))(
  ( (ValueCellFull!11157 (v!14259 V!36019)) (EmptyCell!11157) )
))
(declare-datatypes ((array!62501 0))(
  ( (array!62502 (arr!30099 (Array (_ BitVec 32) ValueCell!11157)) (size!30579 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62501)

(declare-fun mapRest!36961 () (Array (_ BitVec 32) ValueCell!11157))

(declare-fun mapKey!36961 () (_ BitVec 32))

(declare-fun mapValue!36961 () ValueCell!11157)

(assert (=> mapNonEmpty!36961 (= (arr!30099 _values!1278) (store mapRest!36961 mapKey!36961 mapValue!36961))))

(declare-fun b!989707 () Bool)

(declare-fun res!661939 () Bool)

(assert (=> b!989707 (=> (not res!661939) (not e!558103))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((array!62503 0))(
  ( (array!62504 (arr!30100 (Array (_ BitVec 32) (_ BitVec 64))) (size!30580 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62503)

(assert (=> b!989707 (= res!661939 (and (= (size!30579 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30580 _keys!1544) (size!30579 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989708 () Bool)

(declare-fun res!661938 () Bool)

(assert (=> b!989708 (=> (not res!661938) (not e!558103))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!989708 (= res!661938 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30580 _keys!1544))))))

(declare-fun b!989709 () Bool)

(assert (=> b!989709 (= e!558103 (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30100 _keys!1544) from!1932)))))

(declare-fun minValue!1220 () V!36019)

(declare-fun zeroValue!1220 () V!36019)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14994 0))(
  ( (tuple2!14995 (_1!7507 (_ BitVec 64)) (_2!7507 V!36019)) )
))
(declare-datatypes ((List!20944 0))(
  ( (Nil!20941) (Cons!20940 (h!22102 tuple2!14994) (t!29909 List!20944)) )
))
(declare-datatypes ((ListLongMap!13705 0))(
  ( (ListLongMap!13706 (toList!6868 List!20944)) )
))
(declare-fun lt!439064 () ListLongMap!13705)

(declare-fun getCurrentListMapNoExtraKeys!3518 (array!62503 array!62501 (_ BitVec 32) (_ BitVec 32) V!36019 V!36019 (_ BitVec 32) Int) ListLongMap!13705)

(assert (=> b!989709 (= lt!439064 (getCurrentListMapNoExtraKeys!3518 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989710 () Bool)

(declare-fun e!558102 () Bool)

(assert (=> b!989710 (= e!558102 tp_is_empty!23277)))

(declare-fun mapIsEmpty!36961 () Bool)

(assert (=> mapIsEmpty!36961 mapRes!36961))

(declare-fun b!989712 () Bool)

(declare-fun e!558101 () Bool)

(assert (=> b!989712 (= e!558101 (and e!558102 mapRes!36961))))

(declare-fun condMapEmpty!36961 () Bool)

(declare-fun mapDefault!36961 () ValueCell!11157)

(assert (=> b!989712 (= condMapEmpty!36961 (= (arr!30099 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11157)) mapDefault!36961)))))

(declare-fun b!989713 () Bool)

(declare-fun res!661940 () Bool)

(assert (=> b!989713 (=> (not res!661940) (not e!558103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989713 (= res!661940 (validKeyInArray!0 (select (arr!30100 _keys!1544) from!1932)))))

(declare-fun b!989714 () Bool)

(declare-fun res!661942 () Bool)

(assert (=> b!989714 (=> (not res!661942) (not e!558103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62503 (_ BitVec 32)) Bool)

(assert (=> b!989714 (= res!661942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!989711 () Bool)

(declare-fun res!661941 () Bool)

(assert (=> b!989711 (=> (not res!661941) (not e!558103))))

(declare-datatypes ((List!20945 0))(
  ( (Nil!20942) (Cons!20941 (h!22103 (_ BitVec 64)) (t!29910 List!20945)) )
))
(declare-fun arrayNoDuplicates!0 (array!62503 (_ BitVec 32) List!20945) Bool)

(assert (=> b!989711 (= res!661941 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20942))))

(declare-fun res!661936 () Bool)

(assert (=> start!84664 (=> (not res!661936) (not e!558103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84664 (= res!661936 (validMask!0 mask!1948))))

(assert (=> start!84664 e!558103))

(assert (=> start!84664 true))

(assert (=> start!84664 tp_is_empty!23277))

(declare-fun array_inv!23111 (array!62501) Bool)

(assert (=> start!84664 (and (array_inv!23111 _values!1278) e!558101)))

(assert (=> start!84664 tp!69975))

(declare-fun array_inv!23112 (array!62503) Bool)

(assert (=> start!84664 (array_inv!23112 _keys!1544)))

(assert (= (and start!84664 res!661936) b!989707))

(assert (= (and b!989707 res!661939) b!989714))

(assert (= (and b!989714 res!661942) b!989711))

(assert (= (and b!989711 res!661941) b!989708))

(assert (= (and b!989708 res!661938) b!989713))

(assert (= (and b!989713 res!661940) b!989706))

(assert (= (and b!989706 res!661937) b!989709))

(assert (= (and b!989712 condMapEmpty!36961) mapIsEmpty!36961))

(assert (= (and b!989712 (not condMapEmpty!36961)) mapNonEmpty!36961))

(get-info :version)

(assert (= (and mapNonEmpty!36961 ((_ is ValueCellFull!11157) mapValue!36961)) b!989705))

(assert (= (and b!989712 ((_ is ValueCellFull!11157) mapDefault!36961)) b!989710))

(assert (= start!84664 b!989712))

(declare-fun m!917259 () Bool)

(assert (=> b!989709 m!917259))

(declare-fun m!917261 () Bool)

(assert (=> b!989709 m!917261))

(assert (=> b!989713 m!917259))

(assert (=> b!989713 m!917259))

(declare-fun m!917263 () Bool)

(assert (=> b!989713 m!917263))

(declare-fun m!917265 () Bool)

(assert (=> mapNonEmpty!36961 m!917265))

(declare-fun m!917267 () Bool)

(assert (=> b!989714 m!917267))

(declare-fun m!917269 () Bool)

(assert (=> b!989711 m!917269))

(declare-fun m!917271 () Bool)

(assert (=> start!84664 m!917271))

(declare-fun m!917273 () Bool)

(assert (=> start!84664 m!917273))

(declare-fun m!917275 () Bool)

(assert (=> start!84664 m!917275))

(check-sat (not mapNonEmpty!36961) (not start!84664) b_and!32211 (not b!989709) (not b!989714) tp_is_empty!23277 (not b!989711) (not b_next!20061) (not b!989713))
(check-sat b_and!32211 (not b_next!20061))
(get-model)

(declare-fun b!989769 () Bool)

(declare-fun e!558139 () Bool)

(assert (=> b!989769 (= e!558139 (validKeyInArray!0 (select (arr!30100 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!989769 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(declare-fun b!989770 () Bool)

(declare-fun e!558138 () ListLongMap!13705)

(declare-fun e!558136 () ListLongMap!13705)

(assert (=> b!989770 (= e!558138 e!558136)))

(declare-fun c!100305 () Bool)

(assert (=> b!989770 (= c!100305 (validKeyInArray!0 (select (arr!30100 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!989771 () Bool)

(declare-fun e!558135 () Bool)

(declare-fun e!558137 () Bool)

(assert (=> b!989771 (= e!558135 e!558137)))

(declare-fun c!100307 () Bool)

(assert (=> b!989771 (= c!100307 e!558139)))

(declare-fun res!661974 () Bool)

(assert (=> b!989771 (=> (not res!661974) (not e!558139))))

(assert (=> b!989771 (= res!661974 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30580 _keys!1544)))))

(declare-fun b!989772 () Bool)

(declare-fun e!558140 () Bool)

(declare-fun lt!439086 () ListLongMap!13705)

(declare-fun isEmpty!730 (ListLongMap!13705) Bool)

(assert (=> b!989772 (= e!558140 (isEmpty!730 lt!439086))))

(declare-fun b!989774 () Bool)

(declare-fun call!41956 () ListLongMap!13705)

(assert (=> b!989774 (= e!558136 call!41956)))

(declare-fun b!989775 () Bool)

(declare-fun res!661975 () Bool)

(assert (=> b!989775 (=> (not res!661975) (not e!558135))))

(declare-fun contains!5730 (ListLongMap!13705 (_ BitVec 64)) Bool)

(assert (=> b!989775 (= res!661975 (not (contains!5730 lt!439086 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!989776 () Bool)

(assert (=> b!989776 (= e!558138 (ListLongMap!13706 Nil!20941))))

(declare-fun b!989777 () Bool)

(declare-datatypes ((Unit!32798 0))(
  ( (Unit!32799) )
))
(declare-fun lt!439088 () Unit!32798)

(declare-fun lt!439082 () Unit!32798)

(assert (=> b!989777 (= lt!439088 lt!439082)))

(declare-fun lt!439087 () V!36019)

(declare-fun lt!439083 () (_ BitVec 64))

(declare-fun lt!439084 () ListLongMap!13705)

(declare-fun lt!439085 () (_ BitVec 64))

(declare-fun +!3046 (ListLongMap!13705 tuple2!14994) ListLongMap!13705)

(assert (=> b!989777 (not (contains!5730 (+!3046 lt!439084 (tuple2!14995 lt!439085 lt!439087)) lt!439083))))

(declare-fun addStillNotContains!237 (ListLongMap!13705 (_ BitVec 64) V!36019 (_ BitVec 64)) Unit!32798)

(assert (=> b!989777 (= lt!439082 (addStillNotContains!237 lt!439084 lt!439085 lt!439087 lt!439083))))

(assert (=> b!989777 (= lt!439083 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!15641 (ValueCell!11157 V!36019) V!36019)

(declare-fun dynLambda!1874 (Int (_ BitVec 64)) V!36019)

(assert (=> b!989777 (= lt!439087 (get!15641 (select (arr!30099 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1874 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!989777 (= lt!439085 (select (arr!30100 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!989777 (= lt!439084 call!41956)))

(assert (=> b!989777 (= e!558136 (+!3046 call!41956 (tuple2!14995 (select (arr!30100 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15641 (select (arr!30099 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1874 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!989773 () Bool)

(declare-fun e!558134 () Bool)

(assert (=> b!989773 (= e!558137 e!558134)))

(assert (=> b!989773 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30580 _keys!1544)))))

(declare-fun res!661973 () Bool)

(assert (=> b!989773 (= res!661973 (contains!5730 lt!439086 (select (arr!30100 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!989773 (=> (not res!661973) (not e!558134))))

(declare-fun d!117443 () Bool)

(assert (=> d!117443 e!558135))

(declare-fun res!661972 () Bool)

(assert (=> d!117443 (=> (not res!661972) (not e!558135))))

(assert (=> d!117443 (= res!661972 (not (contains!5730 lt!439086 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!117443 (= lt!439086 e!558138)))

(declare-fun c!100306 () Bool)

(assert (=> d!117443 (= c!100306 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30580 _keys!1544)))))

(assert (=> d!117443 (validMask!0 mask!1948)))

(assert (=> d!117443 (= (getCurrentListMapNoExtraKeys!3518 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439086)))

(declare-fun b!989778 () Bool)

(assert (=> b!989778 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30580 _keys!1544)))))

(assert (=> b!989778 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30579 _values!1278)))))

(declare-fun apply!931 (ListLongMap!13705 (_ BitVec 64)) V!36019)

(assert (=> b!989778 (= e!558134 (= (apply!931 lt!439086 (select (arr!30100 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15641 (select (arr!30099 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1874 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!989779 () Bool)

(assert (=> b!989779 (= e!558140 (= lt!439086 (getCurrentListMapNoExtraKeys!3518 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!989780 () Bool)

(assert (=> b!989780 (= e!558137 e!558140)))

(declare-fun c!100308 () Bool)

(assert (=> b!989780 (= c!100308 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30580 _keys!1544)))))

(declare-fun bm!41953 () Bool)

(assert (=> bm!41953 (= call!41956 (getCurrentListMapNoExtraKeys!3518 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(assert (= (and d!117443 c!100306) b!989776))

(assert (= (and d!117443 (not c!100306)) b!989770))

(assert (= (and b!989770 c!100305) b!989777))

(assert (= (and b!989770 (not c!100305)) b!989774))

(assert (= (or b!989777 b!989774) bm!41953))

(assert (= (and d!117443 res!661972) b!989775))

(assert (= (and b!989775 res!661975) b!989771))

(assert (= (and b!989771 res!661974) b!989769))

(assert (= (and b!989771 c!100307) b!989773))

(assert (= (and b!989771 (not c!100307)) b!989780))

(assert (= (and b!989773 res!661973) b!989778))

(assert (= (and b!989780 c!100308) b!989779))

(assert (= (and b!989780 (not c!100308)) b!989772))

(declare-fun b_lambda!15167 () Bool)

(assert (=> (not b_lambda!15167) (not b!989777)))

(declare-fun t!29913 () Bool)

(declare-fun tb!6817 () Bool)

(assert (=> (and start!84664 (= defaultEntry!1281 defaultEntry!1281) t!29913) tb!6817))

(declare-fun result!13625 () Bool)

(assert (=> tb!6817 (= result!13625 tp_is_empty!23277)))

(assert (=> b!989777 t!29913))

(declare-fun b_and!32215 () Bool)

(assert (= b_and!32211 (and (=> t!29913 result!13625) b_and!32215)))

(declare-fun b_lambda!15169 () Bool)

(assert (=> (not b_lambda!15169) (not b!989778)))

(assert (=> b!989778 t!29913))

(declare-fun b_and!32217 () Bool)

(assert (= b_and!32215 (and (=> t!29913 result!13625) b_and!32217)))

(declare-fun m!917295 () Bool)

(assert (=> b!989779 m!917295))

(assert (=> bm!41953 m!917295))

(declare-fun m!917297 () Bool)

(assert (=> b!989777 m!917297))

(declare-fun m!917299 () Bool)

(assert (=> b!989777 m!917299))

(declare-fun m!917301 () Bool)

(assert (=> b!989777 m!917301))

(declare-fun m!917303 () Bool)

(assert (=> b!989777 m!917303))

(declare-fun m!917305 () Bool)

(assert (=> b!989777 m!917305))

(assert (=> b!989777 m!917299))

(declare-fun m!917307 () Bool)

(assert (=> b!989777 m!917307))

(assert (=> b!989777 m!917307))

(assert (=> b!989777 m!917303))

(declare-fun m!917309 () Bool)

(assert (=> b!989777 m!917309))

(declare-fun m!917311 () Bool)

(assert (=> b!989777 m!917311))

(assert (=> b!989773 m!917305))

(assert (=> b!989773 m!917305))

(declare-fun m!917313 () Bool)

(assert (=> b!989773 m!917313))

(declare-fun m!917315 () Bool)

(assert (=> d!117443 m!917315))

(assert (=> d!117443 m!917271))

(assert (=> b!989770 m!917305))

(assert (=> b!989770 m!917305))

(declare-fun m!917317 () Bool)

(assert (=> b!989770 m!917317))

(assert (=> b!989778 m!917307))

(assert (=> b!989778 m!917307))

(assert (=> b!989778 m!917303))

(assert (=> b!989778 m!917309))

(assert (=> b!989778 m!917305))

(declare-fun m!917319 () Bool)

(assert (=> b!989778 m!917319))

(assert (=> b!989778 m!917303))

(assert (=> b!989778 m!917305))

(declare-fun m!917321 () Bool)

(assert (=> b!989775 m!917321))

(assert (=> b!989769 m!917305))

(assert (=> b!989769 m!917305))

(assert (=> b!989769 m!917317))

(declare-fun m!917323 () Bool)

(assert (=> b!989772 m!917323))

(assert (=> b!989709 d!117443))

(declare-fun d!117445 () Bool)

(assert (=> d!117445 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84664 d!117445))

(declare-fun d!117447 () Bool)

(assert (=> d!117447 (= (array_inv!23111 _values!1278) (bvsge (size!30579 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84664 d!117447))

(declare-fun d!117449 () Bool)

(assert (=> d!117449 (= (array_inv!23112 _keys!1544) (bvsge (size!30580 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84664 d!117449))

(declare-fun bm!41956 () Bool)

(declare-fun call!41959 () Bool)

(assert (=> bm!41956 (= call!41959 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!989791 () Bool)

(declare-fun e!558147 () Bool)

(assert (=> b!989791 (= e!558147 call!41959)))

(declare-fun b!989792 () Bool)

(declare-fun e!558148 () Bool)

(assert (=> b!989792 (= e!558148 e!558147)))

(declare-fun lt!439096 () (_ BitVec 64))

(assert (=> b!989792 (= lt!439096 (select (arr!30100 _keys!1544) #b00000000000000000000000000000000))))

(declare-fun lt!439095 () Unit!32798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62503 (_ BitVec 64) (_ BitVec 32)) Unit!32798)

(assert (=> b!989792 (= lt!439095 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!439096 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!989792 (arrayContainsKey!0 _keys!1544 lt!439096 #b00000000000000000000000000000000)))

(declare-fun lt!439097 () Unit!32798)

(assert (=> b!989792 (= lt!439097 lt!439095)))

(declare-fun res!661981 () Bool)

(declare-datatypes ((SeekEntryResult!9199 0))(
  ( (MissingZero!9199 (index!39166 (_ BitVec 32))) (Found!9199 (index!39167 (_ BitVec 32))) (Intermediate!9199 (undefined!10011 Bool) (index!39168 (_ BitVec 32)) (x!86113 (_ BitVec 32))) (Undefined!9199) (MissingVacant!9199 (index!39169 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62503 (_ BitVec 32)) SeekEntryResult!9199)

(assert (=> b!989792 (= res!661981 (= (seekEntryOrOpen!0 (select (arr!30100 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9199 #b00000000000000000000000000000000)))))

(assert (=> b!989792 (=> (not res!661981) (not e!558147))))

(declare-fun d!117451 () Bool)

(declare-fun res!661980 () Bool)

(declare-fun e!558149 () Bool)

(assert (=> d!117451 (=> res!661980 e!558149)))

(assert (=> d!117451 (= res!661980 (bvsge #b00000000000000000000000000000000 (size!30580 _keys!1544)))))

(assert (=> d!117451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!558149)))

(declare-fun b!989793 () Bool)

(assert (=> b!989793 (= e!558149 e!558148)))

(declare-fun c!100311 () Bool)

(assert (=> b!989793 (= c!100311 (validKeyInArray!0 (select (arr!30100 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989794 () Bool)

(assert (=> b!989794 (= e!558148 call!41959)))

(assert (= (and d!117451 (not res!661980)) b!989793))

(assert (= (and b!989793 c!100311) b!989792))

(assert (= (and b!989793 (not c!100311)) b!989794))

(assert (= (and b!989792 res!661981) b!989791))

(assert (= (or b!989791 b!989794) bm!41956))

(declare-fun m!917325 () Bool)

(assert (=> bm!41956 m!917325))

(declare-fun m!917327 () Bool)

(assert (=> b!989792 m!917327))

(declare-fun m!917329 () Bool)

(assert (=> b!989792 m!917329))

(declare-fun m!917331 () Bool)

(assert (=> b!989792 m!917331))

(assert (=> b!989792 m!917327))

(declare-fun m!917333 () Bool)

(assert (=> b!989792 m!917333))

(assert (=> b!989793 m!917327))

(assert (=> b!989793 m!917327))

(declare-fun m!917335 () Bool)

(assert (=> b!989793 m!917335))

(assert (=> b!989714 d!117451))

(declare-fun d!117453 () Bool)

(assert (=> d!117453 (= (validKeyInArray!0 (select (arr!30100 _keys!1544) from!1932)) (and (not (= (select (arr!30100 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30100 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!989713 d!117453))

(declare-fun b!989805 () Bool)

(declare-fun e!558159 () Bool)

(declare-fun e!558158 () Bool)

(assert (=> b!989805 (= e!558159 e!558158)))

(declare-fun c!100314 () Bool)

(assert (=> b!989805 (= c!100314 (validKeyInArray!0 (select (arr!30100 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun bm!41959 () Bool)

(declare-fun call!41962 () Bool)

(assert (=> bm!41959 (= call!41962 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100314 (Cons!20941 (select (arr!30100 _keys!1544) #b00000000000000000000000000000000) Nil!20942) Nil!20942)))))

(declare-fun b!989806 () Bool)

(declare-fun e!558160 () Bool)

(declare-fun contains!5731 (List!20945 (_ BitVec 64)) Bool)

(assert (=> b!989806 (= e!558160 (contains!5731 Nil!20942 (select (arr!30100 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989807 () Bool)

(assert (=> b!989807 (= e!558158 call!41962)))

(declare-fun b!989808 () Bool)

(declare-fun e!558161 () Bool)

(assert (=> b!989808 (= e!558161 e!558159)))

(declare-fun res!661989 () Bool)

(assert (=> b!989808 (=> (not res!661989) (not e!558159))))

(assert (=> b!989808 (= res!661989 (not e!558160))))

(declare-fun res!661988 () Bool)

(assert (=> b!989808 (=> (not res!661988) (not e!558160))))

(assert (=> b!989808 (= res!661988 (validKeyInArray!0 (select (arr!30100 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!989809 () Bool)

(assert (=> b!989809 (= e!558158 call!41962)))

(declare-fun d!117455 () Bool)

(declare-fun res!661990 () Bool)

(assert (=> d!117455 (=> res!661990 e!558161)))

(assert (=> d!117455 (= res!661990 (bvsge #b00000000000000000000000000000000 (size!30580 _keys!1544)))))

(assert (=> d!117455 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20942) e!558161)))

(assert (= (and d!117455 (not res!661990)) b!989808))

(assert (= (and b!989808 res!661988) b!989806))

(assert (= (and b!989808 res!661989) b!989805))

(assert (= (and b!989805 c!100314) b!989809))

(assert (= (and b!989805 (not c!100314)) b!989807))

(assert (= (or b!989809 b!989807) bm!41959))

(assert (=> b!989805 m!917327))

(assert (=> b!989805 m!917327))

(assert (=> b!989805 m!917335))

(assert (=> bm!41959 m!917327))

(declare-fun m!917337 () Bool)

(assert (=> bm!41959 m!917337))

(assert (=> b!989806 m!917327))

(assert (=> b!989806 m!917327))

(declare-fun m!917339 () Bool)

(assert (=> b!989806 m!917339))

(assert (=> b!989808 m!917327))

(assert (=> b!989808 m!917327))

(assert (=> b!989808 m!917335))

(assert (=> b!989711 d!117455))

(declare-fun b!989816 () Bool)

(declare-fun e!558166 () Bool)

(assert (=> b!989816 (= e!558166 tp_is_empty!23277)))

(declare-fun mapIsEmpty!36967 () Bool)

(declare-fun mapRes!36967 () Bool)

(assert (=> mapIsEmpty!36967 mapRes!36967))

(declare-fun mapNonEmpty!36967 () Bool)

(declare-fun tp!69985 () Bool)

(assert (=> mapNonEmpty!36967 (= mapRes!36967 (and tp!69985 e!558166))))

(declare-fun mapKey!36967 () (_ BitVec 32))

(declare-fun mapValue!36967 () ValueCell!11157)

(declare-fun mapRest!36967 () (Array (_ BitVec 32) ValueCell!11157))

(assert (=> mapNonEmpty!36967 (= mapRest!36961 (store mapRest!36967 mapKey!36967 mapValue!36967))))

(declare-fun condMapEmpty!36967 () Bool)

(declare-fun mapDefault!36967 () ValueCell!11157)

(assert (=> mapNonEmpty!36961 (= condMapEmpty!36967 (= mapRest!36961 ((as const (Array (_ BitVec 32) ValueCell!11157)) mapDefault!36967)))))

(declare-fun e!558167 () Bool)

(assert (=> mapNonEmpty!36961 (= tp!69976 (and e!558167 mapRes!36967))))

(declare-fun b!989817 () Bool)

(assert (=> b!989817 (= e!558167 tp_is_empty!23277)))

(assert (= (and mapNonEmpty!36961 condMapEmpty!36967) mapIsEmpty!36967))

(assert (= (and mapNonEmpty!36961 (not condMapEmpty!36967)) mapNonEmpty!36967))

(assert (= (and mapNonEmpty!36967 ((_ is ValueCellFull!11157) mapValue!36967)) b!989816))

(assert (= (and mapNonEmpty!36961 ((_ is ValueCellFull!11157) mapDefault!36967)) b!989817))

(declare-fun m!917341 () Bool)

(assert (=> mapNonEmpty!36967 m!917341))

(declare-fun b_lambda!15171 () Bool)

(assert (= b_lambda!15169 (or (and start!84664 b_free!20061) b_lambda!15171)))

(declare-fun b_lambda!15173 () Bool)

(assert (= b_lambda!15167 (or (and start!84664 b_free!20061) b_lambda!15173)))

(check-sat (not b!989793) (not b!989806) (not b!989778) (not b!989773) (not b_next!20061) (not b!989808) (not bm!41953) (not b!989805) (not b!989777) (not b!989775) tp_is_empty!23277 (not b_lambda!15171) (not b_lambda!15173) (not b!989779) (not mapNonEmpty!36967) (not d!117443) (not b!989769) (not bm!41956) b_and!32217 (not b!989770) (not bm!41959) (not b!989792) (not b!989772))
(check-sat b_and!32217 (not b_next!20061))
