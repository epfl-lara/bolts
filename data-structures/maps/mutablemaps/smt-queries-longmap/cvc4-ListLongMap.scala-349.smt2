; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6392 () Bool)

(assert start!6392)

(declare-fun b_free!1475 () Bool)

(declare-fun b_next!1475 () Bool)

(assert (=> start!6392 (= b_free!1475 (not b_next!1475))))

(declare-fun tp!5900 () Bool)

(declare-fun b_and!2609 () Bool)

(assert (=> start!6392 (= tp!5900 b_and!2609)))

(declare-fun res!25468 () Bool)

(declare-fun e!27156 () Bool)

(assert (=> start!6392 (=> (not res!25468) (not e!27156))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6392 (= res!25468 (validMask!0 mask!853))))

(assert (=> start!6392 e!27156))

(assert (=> start!6392 true))

(assert (=> start!6392 tp!5900))

(declare-fun b!42842 () Bool)

(declare-fun e!27155 () Bool)

(assert (=> b!42842 (= e!27156 (not e!27155))))

(declare-fun res!25466 () Bool)

(assert (=> b!42842 (=> res!25466 e!27155)))

(declare-datatypes ((V!2273 0))(
  ( (V!2274 (val!971 Int)) )
))
(declare-datatypes ((tuple2!1600 0))(
  ( (tuple2!1601 (_1!810 (_ BitVec 64)) (_2!810 V!2273)) )
))
(declare-datatypes ((List!1186 0))(
  ( (Nil!1183) (Cons!1182 (h!1759 tuple2!1600) (t!4165 List!1186)) )
))
(declare-datatypes ((ListLongMap!1181 0))(
  ( (ListLongMap!1182 (toList!606 List!1186)) )
))
(declare-fun lt!18066 () ListLongMap!1181)

(assert (=> b!42842 (= res!25466 (= lt!18066 (ListLongMap!1182 Nil!1183)))))

(declare-datatypes ((array!2871 0))(
  ( (array!2872 (arr!1379 (Array (_ BitVec 32) (_ BitVec 64))) (size!1558 (_ BitVec 32))) )
))
(declare-fun lt!18069 () array!2871)

(declare-fun lt!18070 () V!2273)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!685 0))(
  ( (ValueCellFull!685 (v!2060 V!2273)) (EmptyCell!685) )
))
(declare-datatypes ((array!2873 0))(
  ( (array!2874 (arr!1380 (Array (_ BitVec 32) ValueCell!685)) (size!1559 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!350 0))(
  ( (LongMapFixedSize!351 (defaultEntry!1868 Int) (mask!5398 (_ BitVec 32)) (extraKeys!1759 (_ BitVec 32)) (zeroValue!1786 V!2273) (minValue!1786 V!2273) (_size!224 (_ BitVec 32)) (_keys!3411 array!2871) (_values!1851 array!2873) (_vacant!224 (_ BitVec 32))) )
))
(declare-fun map!812 (LongMapFixedSize!350) ListLongMap!1181)

(assert (=> b!42842 (= lt!18066 (map!812 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1187 0))(
  ( (Nil!1184) (Cons!1183 (h!1760 (_ BitVec 64)) (t!4166 List!1187)) )
))
(declare-fun arrayNoDuplicates!0 (array!2871 (_ BitVec 32) List!1187) Bool)

(assert (=> b!42842 (arrayNoDuplicates!0 lt!18069 #b00000000000000000000000000000000 Nil!1184)))

(declare-datatypes ((Unit!1173 0))(
  ( (Unit!1174) )
))
(declare-fun lt!18065 () Unit!1173)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2871 (_ BitVec 32) (_ BitVec 32) List!1187) Unit!1173)

(assert (=> b!42842 (= lt!18065 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2871 (_ BitVec 32)) Bool)

(assert (=> b!42842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18069 mask!853)))

(declare-fun lt!18068 () Unit!1173)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2871 (_ BitVec 32) (_ BitVec 32)) Unit!1173)

(assert (=> b!42842 (= lt!18068 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18069 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2871 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42842 (= (arrayCountValidKeys!0 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18067 () Unit!1173)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2871 (_ BitVec 32) (_ BitVec 32)) Unit!1173)

(assert (=> b!42842 (= lt!18067 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42842 (= lt!18069 (array!2872 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!246 (Int (_ BitVec 64)) V!2273)

(assert (=> b!42842 (= lt!18070 (dynLambda!246 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42843 () Bool)

(declare-fun res!25467 () Bool)

(assert (=> b!42843 (=> res!25467 e!27155)))

(declare-fun isEmpty!279 (List!1186) Bool)

(assert (=> b!42843 (= res!25467 (isEmpty!279 (toList!606 lt!18066)))))

(declare-fun b!42844 () Bool)

(assert (=> b!42844 (= e!27155 (bvsge mask!853 #b00000000000000000000000000000000))))

(assert (= (and start!6392 res!25468) b!42842))

(assert (= (and b!42842 (not res!25466)) b!42843))

(assert (= (and b!42843 (not res!25467)) b!42844))

(declare-fun b_lambda!2231 () Bool)

(assert (=> (not b_lambda!2231) (not b!42842)))

(declare-fun t!4164 () Bool)

(declare-fun tb!965 () Bool)

(assert (=> (and start!6392 (= defaultEntry!470 defaultEntry!470) t!4164) tb!965))

(declare-fun result!1673 () Bool)

(declare-fun tp_is_empty!1865 () Bool)

(assert (=> tb!965 (= result!1673 tp_is_empty!1865)))

(assert (=> b!42842 t!4164))

(declare-fun b_and!2611 () Bool)

(assert (= b_and!2609 (and (=> t!4164 result!1673) b_and!2611)))

(declare-fun m!36633 () Bool)

(assert (=> start!6392 m!36633))

(declare-fun m!36635 () Bool)

(assert (=> b!42842 m!36635))

(declare-fun m!36637 () Bool)

(assert (=> b!42842 m!36637))

(declare-fun m!36639 () Bool)

(assert (=> b!42842 m!36639))

(declare-fun m!36641 () Bool)

(assert (=> b!42842 m!36641))

(declare-fun m!36643 () Bool)

(assert (=> b!42842 m!36643))

(declare-fun m!36645 () Bool)

(assert (=> b!42842 m!36645))

(declare-fun m!36647 () Bool)

(assert (=> b!42842 m!36647))

(declare-fun m!36649 () Bool)

(assert (=> b!42842 m!36649))

(declare-fun m!36651 () Bool)

(assert (=> b!42843 m!36651))

(push 1)

(assert tp_is_empty!1865)

(assert (not start!6392))

(assert (not b_next!1475))

(assert (not b_lambda!2231))

(assert (not b!42843))

(assert b_and!2611)

(assert (not b!42842))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2611)

(assert (not b_next!1475))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2235 () Bool)

(assert (= b_lambda!2231 (or (and start!6392 b_free!1475) b_lambda!2235)))

(push 1)

(assert tp_is_empty!1865)

(assert (not start!6392))

(assert (not b_lambda!2235))

(assert (not b_next!1475))

(assert (not b!42843))

(assert b_and!2611)

(assert (not b!42842))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2611)

(assert (not b_next!1475))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7841 () Bool)

(assert (=> d!7841 (= (isEmpty!279 (toList!606 lt!18066)) (is-Nil!1183 (toList!606 lt!18066)))))

(assert (=> b!42843 d!7841))

(declare-fun d!7843 () Bool)

(assert (=> d!7843 (= (arrayCountValidKeys!0 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18073 () Unit!1173)

(declare-fun choose!59 (array!2871 (_ BitVec 32) (_ BitVec 32)) Unit!1173)

(assert (=> d!7843 (= lt!18073 (choose!59 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7843 (bvslt (size!1558 lt!18069) #b01111111111111111111111111111111)))

(assert (=> d!7843 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18073)))

(declare-fun bs!1903 () Bool)

(assert (= bs!1903 d!7843))

(assert (=> bs!1903 m!36649))

(declare-fun m!36653 () Bool)

(assert (=> bs!1903 m!36653))

(assert (=> b!42842 d!7843))

(declare-fun d!7847 () Bool)

(declare-fun getCurrentListMap!347 (array!2871 array!2873 (_ BitVec 32) (_ BitVec 32) V!2273 V!2273 (_ BitVec 32) Int) ListLongMap!1181)

(assert (=> d!7847 (= (map!812 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (getCurrentListMap!347 (_keys!3411 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_values!1851 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5398 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (extraKeys!1759 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (zeroValue!1786 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (minValue!1786 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1868 (LongMapFixedSize!351 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18070 lt!18070 #b00000000000000000000000000000000 lt!18069 (array!2874 ((as const (Array (_ BitVec 32) ValueCell!685)) EmptyCell!685) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun bs!1904 () Bool)

(assert (= bs!1904 d!7847))

(declare-fun m!36655 () Bool)

(assert (=> bs!1904 m!36655))

(assert (=> b!42842 d!7847))

(declare-fun d!7853 () Bool)

(assert (=> d!7853 (arrayNoDuplicates!0 lt!18069 #b00000000000000000000000000000000 Nil!1184)))

(declare-fun lt!18079 () Unit!1173)

(declare-fun choose!111 (array!2871 (_ BitVec 32) (_ BitVec 32) List!1187) Unit!1173)

(assert (=> d!7853 (= lt!18079 (choose!111 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1184))))

(assert (=> d!7853 (= (size!1558 lt!18069) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7853 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1184) lt!18079)))

(declare-fun bs!1906 () Bool)

(assert (= bs!1906 d!7853))

(assert (=> bs!1906 m!36641))

(declare-fun m!36659 () Bool)

(assert (=> bs!1906 m!36659))

(assert (=> b!42842 d!7853))

(declare-fun b!42871 () Bool)

(declare-fun e!27173 () (_ BitVec 32))

(declare-fun call!3375 () (_ BitVec 32))

(assert (=> b!42871 (= e!27173 call!3375)))

(declare-fun b!42872 () Bool)

(declare-fun e!27174 () (_ BitVec 32))

(assert (=> b!42872 (= e!27174 e!27173)))

(declare-fun c!5434 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42872 (= c!5434 (validKeyInArray!0 (select (arr!1379 lt!18069) #b00000000000000000000000000000000)))))

(declare-fun d!7861 () Bool)

(declare-fun lt!18094 () (_ BitVec 32))

(assert (=> d!7861 (and (bvsge lt!18094 #b00000000000000000000000000000000) (bvsle lt!18094 (bvsub (size!1558 lt!18069) #b00000000000000000000000000000000)))))

(assert (=> d!7861 (= lt!18094 e!27174)))

(declare-fun c!5435 () Bool)

(assert (=> d!7861 (= c!5435 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7861 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1558 lt!18069)))))

(assert (=> d!7861 (= (arrayCountValidKeys!0 lt!18069 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18094)))

(declare-fun b!42873 () Bool)

(assert (=> b!42873 (= e!27174 #b00000000000000000000000000000000)))

(declare-fun bm!3372 () Bool)

(assert (=> bm!3372 (= call!3375 (arrayCountValidKeys!0 lt!18069 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42874 () Bool)

(assert (=> b!42874 (= e!27173 (bvadd #b00000000000000000000000000000001 call!3375))))

(assert (= (and d!7861 c!5435) b!42873))

(assert (= (and d!7861 (not c!5435)) b!42872))

(assert (= (and b!42872 c!5434) b!42874))

(assert (= (and b!42872 (not c!5434)) b!42871))

(assert (= (or b!42874 b!42871) bm!3372))

(declare-fun m!36661 () Bool)

(assert (=> b!42872 m!36661))

(assert (=> b!42872 m!36661))

(declare-fun m!36663 () Bool)

(assert (=> b!42872 m!36663))

(declare-fun m!36665 () Bool)

(assert (=> bm!3372 m!36665))

(assert (=> b!42842 d!7861))

(declare-fun d!7863 () Bool)

(assert (=> d!7863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18069 mask!853)))

(declare-fun lt!18103 () Unit!1173)

(declare-fun choose!34 (array!2871 (_ BitVec 32) (_ BitVec 32)) Unit!1173)

(assert (=> d!7863 (= lt!18103 (choose!34 lt!18069 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7863 (validMask!0 mask!853)))

(assert (=> d!7863 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18069 mask!853 #b00000000000000000000000000000000) lt!18103)))

(declare-fun bs!1907 () Bool)

(assert (= bs!1907 d!7863))

(assert (=> bs!1907 m!36645))

(declare-fun m!36691 () Bool)

(assert (=> bs!1907 m!36691))

(assert (=> bs!1907 m!36633))

(assert (=> b!42842 d!7863))

(declare-fun b!42920 () Bool)

(declare-fun e!27209 () Bool)

(declare-fun e!27208 () Bool)

(assert (=> b!42920 (= e!27209 e!27208)))

(declare-fun c!5449 () Bool)

(assert (=> b!42920 (= c!5449 (validKeyInArray!0 (select (arr!1379 lt!18069) #b00000000000000000000000000000000)))))

(declare-fun b!42921 () Bool)

(declare-fun call!3386 () Bool)

(assert (=> b!42921 (= e!27208 call!3386)))

(declare-fun b!42922 () Bool)

(declare-fun e!27207 () Bool)

(declare-fun contains!563 (List!1187 (_ BitVec 64)) Bool)

(assert (=> b!42922 (= e!27207 (contains!563 Nil!1184 (select (arr!1379 lt!18069) #b00000000000000000000000000000000)))))

(declare-fun bm!3383 () Bool)

(assert (=> bm!3383 (= call!3386 (arrayNoDuplicates!0 lt!18069 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5449 (Cons!1183 (select (arr!1379 lt!18069) #b00000000000000000000000000000000) Nil!1184) Nil!1184)))))

(declare-fun b!42923 () Bool)

(assert (=> b!42923 (= e!27208 call!3386)))

(declare-fun b!42924 () Bool)

(declare-fun e!27210 () Bool)

(assert (=> b!42924 (= e!27210 e!27209)))

(declare-fun res!25496 () Bool)

(assert (=> b!42924 (=> (not res!25496) (not e!27209))))

(assert (=> b!42924 (= res!25496 (not e!27207))))

(declare-fun res!25497 () Bool)

(assert (=> b!42924 (=> (not res!25497) (not e!27207))))

(assert (=> b!42924 (= res!25497 (validKeyInArray!0 (select (arr!1379 lt!18069) #b00000000000000000000000000000000)))))

(declare-fun d!7869 () Bool)

(declare-fun res!25498 () Bool)

(assert (=> d!7869 (=> res!25498 e!27210)))

(assert (=> d!7869 (= res!25498 (bvsge #b00000000000000000000000000000000 (size!1558 lt!18069)))))

(assert (=> d!7869 (= (arrayNoDuplicates!0 lt!18069 #b00000000000000000000000000000000 Nil!1184) e!27210)))

(assert (= (and d!7869 (not res!25498)) b!42924))

(assert (= (and b!42924 res!25497) b!42922))

(assert (= (and b!42924 res!25496) b!42920))

(assert (= (and b!42920 c!5449) b!42921))

(assert (= (and b!42920 (not c!5449)) b!42923))

(assert (= (or b!42921 b!42923) bm!3383))

(assert (=> b!42920 m!36661))

(assert (=> b!42920 m!36661))

(assert (=> b!42920 m!36663))

(assert (=> b!42922 m!36661))

(assert (=> b!42922 m!36661))

(declare-fun m!36699 () Bool)

(assert (=> b!42922 m!36699))

(assert (=> bm!3383 m!36661))

(declare-fun m!36701 () Bool)

(assert (=> bm!3383 m!36701))

(assert (=> b!42924 m!36661))

(assert (=> b!42924 m!36661))

(assert (=> b!42924 m!36663))

(assert (=> b!42842 d!7869))

(declare-fun b!42943 () Bool)

(declare-fun e!27227 () Bool)

(declare-fun call!3391 () Bool)

(assert (=> b!42943 (= e!27227 call!3391)))

(declare-fun bm!3388 () Bool)

(assert (=> bm!3388 (= call!3391 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18069 mask!853))))

(declare-fun b!42944 () Bool)

(declare-fun e!27225 () Bool)

(assert (=> b!42944 (= e!27225 call!3391)))

(declare-fun d!7875 () Bool)

(declare-fun res!25509 () Bool)

(declare-fun e!27226 () Bool)

(assert (=> d!7875 (=> res!25509 e!27226)))

(assert (=> d!7875 (= res!25509 (bvsge #b00000000000000000000000000000000 (size!1558 lt!18069)))))

(assert (=> d!7875 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18069 mask!853) e!27226)))

(declare-fun b!42945 () Bool)

(assert (=> b!42945 (= e!27226 e!27227)))

(declare-fun c!5454 () Bool)

(assert (=> b!42945 (= c!5454 (validKeyInArray!0 (select (arr!1379 lt!18069) #b00000000000000000000000000000000)))))

(declare-fun b!42946 () Bool)

(assert (=> b!42946 (= e!27227 e!27225)))

(declare-fun lt!18124 () (_ BitVec 64))

(assert (=> b!42946 (= lt!18124 (select (arr!1379 lt!18069) #b00000000000000000000000000000000))))

(declare-fun lt!18123 () Unit!1173)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2871 (_ BitVec 64) (_ BitVec 32)) Unit!1173)

(assert (=> b!42946 (= lt!18123 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18069 lt!18124 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42946 (arrayContainsKey!0 lt!18069 lt!18124 #b00000000000000000000000000000000)))

(declare-fun lt!18122 () Unit!1173)

(assert (=> b!42946 (= lt!18122 lt!18123)))

(declare-fun res!25510 () Bool)

(declare-datatypes ((SeekEntryResult!206 0))(
  ( (MissingZero!206 (index!2946 (_ BitVec 32))) (Found!206 (index!2947 (_ BitVec 32))) (Intermediate!206 (undefined!1018 Bool) (index!2948 (_ BitVec 32)) (x!8214 (_ BitVec 32))) (Undefined!206) (MissingVacant!206 (index!2949 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2871 (_ BitVec 32)) SeekEntryResult!206)

(assert (=> b!42946 (= res!25510 (= (seekEntryOrOpen!0 (select (arr!1379 lt!18069) #b00000000000000000000000000000000) lt!18069 mask!853) (Found!206 #b00000000000000000000000000000000)))))

(assert (=> b!42946 (=> (not res!25510) (not e!27225))))

(assert (= (and d!7875 (not res!25509)) b!42945))

(assert (= (and b!42945 c!5454) b!42946))

(assert (= (and b!42945 (not c!5454)) b!42943))

(assert (= (and b!42946 res!25510) b!42944))

(assert (= (or b!42944 b!42943) bm!3388))

(declare-fun m!36711 () Bool)

(assert (=> bm!3388 m!36711))

(assert (=> b!42945 m!36661))

(assert (=> b!42945 m!36661))

(assert (=> b!42945 m!36663))

(assert (=> b!42946 m!36661))

(declare-fun m!36713 () Bool)

(assert (=> b!42946 m!36713))

(declare-fun m!36715 () Bool)

(assert (=> b!42946 m!36715))

(assert (=> b!42946 m!36661))

(declare-fun m!36717 () Bool)

(assert (=> b!42946 m!36717))

(assert (=> b!42842 d!7875))

(declare-fun d!7885 () Bool)

(assert (=> d!7885 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6392 d!7885))

(push 1)

(assert (not b!42872))

(assert (not bm!3372))

(assert (not b_next!1475))

(assert (not b!42922))

(assert b_and!2611)

(assert (not bm!3383))

(assert (not b!42920))

(assert (not d!7843))

(assert (not b!42945))

(assert (not d!7847))

(assert tp_is_empty!1865)

(assert (not d!7863))

(assert (not d!7853))

(assert (not bm!3388))

(assert (not b_lambda!2235))

(assert (not b!42924))

(assert (not b!42946))

(check-sat)

