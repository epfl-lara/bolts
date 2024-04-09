; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6658 () Bool)

(assert start!6658)

(declare-fun b_free!1507 () Bool)

(declare-fun b_next!1507 () Bool)

(assert (=> start!6658 (= b_free!1507 (not b_next!1507))))

(declare-fun tp!5948 () Bool)

(declare-fun b_and!2697 () Bool)

(assert (=> start!6658 (= tp!5948 b_and!2697)))

(declare-fun b!43895 () Bool)

(declare-fun e!27824 () Bool)

(assert (=> b!43895 (= e!27824 false)))

(declare-fun lt!19093 () (_ BitVec 32))

(declare-datatypes ((array!2935 0))(
  ( (array!2936 (arr!1411 (Array (_ BitVec 32) (_ BitVec 64))) (size!1608 (_ BitVec 32))) )
))
(declare-fun lt!19095 () array!2935)

(declare-datatypes ((V!2317 0))(
  ( (V!2318 (val!987 Int)) )
))
(declare-datatypes ((tuple2!1632 0))(
  ( (tuple2!1633 (_1!826 (_ BitVec 64)) (_2!826 V!2317)) )
))
(declare-fun lt!19102 () tuple2!1632)

(declare-fun arrayScanForKey!0 (array!2935 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43895 (= lt!19093 (arrayScanForKey!0 lt!19095 (_1!826 lt!19102) #b00000000000000000000000000000000))))

(declare-fun e!27825 () Bool)

(assert (=> b!43895 e!27825))

(declare-fun res!25954 () Bool)

(assert (=> b!43895 (=> (not res!25954) (not e!27825))))

(assert (=> b!43895 (= res!25954 (and (not (= (_1!826 lt!19102) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!826 lt!19102) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((ValueCell!701 0))(
  ( (ValueCellFull!701 (v!2082 V!2317)) (EmptyCell!701) )
))
(declare-datatypes ((array!2937 0))(
  ( (array!2938 (arr!1412 (Array (_ BitVec 32) ValueCell!701)) (size!1609 (_ BitVec 32))) )
))
(declare-fun lt!19098 () array!2937)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!19101 () V!2317)

(declare-datatypes ((Unit!1223 0))(
  ( (Unit!1224) )
))
(declare-fun lt!19096 () Unit!1223)

(declare-fun lemmaKeyInListMapIsInArray!105 (array!2935 array!2937 (_ BitVec 32) (_ BitVec 32) V!2317 V!2317 (_ BitVec 64) Int) Unit!1223)

(assert (=> b!43895 (= lt!19096 (lemmaKeyInListMapIsInArray!105 lt!19095 lt!19098 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 (_1!826 lt!19102) defaultEntry!470))))

(declare-datatypes ((List!1218 0))(
  ( (Nil!1215) (Cons!1214 (h!1791 tuple2!1632) (t!4235 List!1218)) )
))
(declare-datatypes ((ListLongMap!1213 0))(
  ( (ListLongMap!1214 (toList!622 List!1218)) )
))
(declare-fun lt!19094 () ListLongMap!1213)

(declare-fun head!890 (List!1218) tuple2!1632)

(assert (=> b!43895 (= lt!19102 (head!890 (toList!622 lt!19094)))))

(declare-fun b!43893 () Bool)

(declare-fun e!27823 () Bool)

(assert (=> b!43893 (= e!27823 (not e!27824))))

(declare-fun res!25956 () Bool)

(assert (=> b!43893 (=> res!25956 e!27824)))

(assert (=> b!43893 (= res!25956 (= lt!19094 (ListLongMap!1214 Nil!1215)))))

(declare-datatypes ((LongMapFixedSize!382 0))(
  ( (LongMapFixedSize!383 (defaultEntry!1890 Int) (mask!5456 (_ BitVec 32)) (extraKeys!1781 (_ BitVec 32)) (zeroValue!1808 V!2317) (minValue!1808 V!2317) (_size!240 (_ BitVec 32)) (_keys!3451 array!2935) (_values!1873 array!2937) (_vacant!240 (_ BitVec 32))) )
))
(declare-fun map!840 (LongMapFixedSize!382) ListLongMap!1213)

(assert (=> b!43893 (= lt!19094 (map!840 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1219 0))(
  ( (Nil!1216) (Cons!1215 (h!1792 (_ BitVec 64)) (t!4236 List!1219)) )
))
(declare-fun arrayNoDuplicates!0 (array!2935 (_ BitVec 32) List!1219) Bool)

(assert (=> b!43893 (arrayNoDuplicates!0 lt!19095 #b00000000000000000000000000000000 Nil!1216)))

(declare-fun lt!19097 () Unit!1223)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2935 (_ BitVec 32) (_ BitVec 32) List!1219) Unit!1223)

(assert (=> b!43893 (= lt!19097 (lemmaArrayNoDuplicatesInAll0Array!0 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2935 (_ BitVec 32)) Bool)

(assert (=> b!43893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19095 mask!853)))

(declare-fun lt!19100 () Unit!1223)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2935 (_ BitVec 32) (_ BitVec 32)) Unit!1223)

(assert (=> b!43893 (= lt!19100 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19095 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2935 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43893 (= (arrayCountValidKeys!0 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19099 () Unit!1223)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2935 (_ BitVec 32) (_ BitVec 32)) Unit!1223)

(assert (=> b!43893 (= lt!19099 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43893 (= lt!19098 (array!2938 ((as const (Array (_ BitVec 32) ValueCell!701)) EmptyCell!701) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43893 (= lt!19095 (array!2936 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!262 (Int (_ BitVec 64)) V!2317)

(assert (=> b!43893 (= lt!19101 (dynLambda!262 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!25957 () Bool)

(assert (=> start!6658 (=> (not res!25957) (not e!27823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6658 (= res!25957 (validMask!0 mask!853))))

(assert (=> start!6658 e!27823))

(assert (=> start!6658 true))

(assert (=> start!6658 tp!5948))

(declare-fun b!43896 () Bool)

(declare-fun arrayContainsKey!0 (array!2935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!43896 (= e!27825 (arrayContainsKey!0 lt!19095 (_1!826 lt!19102) #b00000000000000000000000000000000))))

(declare-fun b!43894 () Bool)

(declare-fun res!25955 () Bool)

(assert (=> b!43894 (=> res!25955 e!27824)))

(declare-fun isEmpty!289 (List!1218) Bool)

(assert (=> b!43894 (= res!25955 (isEmpty!289 (toList!622 lt!19094)))))

(assert (= (and start!6658 res!25957) b!43893))

(assert (= (and b!43893 (not res!25956)) b!43894))

(assert (= (and b!43894 (not res!25955)) b!43895))

(assert (= (and b!43895 res!25954) b!43896))

(declare-fun b_lambda!2317 () Bool)

(assert (=> (not b_lambda!2317) (not b!43893)))

(declare-fun t!4234 () Bool)

(declare-fun tb!1003 () Bool)

(assert (=> (and start!6658 (= defaultEntry!470 defaultEntry!470) t!4234) tb!1003))

(declare-fun result!1743 () Bool)

(declare-fun tp_is_empty!1897 () Bool)

(assert (=> tb!1003 (= result!1743 tp_is_empty!1897)))

(assert (=> b!43893 t!4234))

(declare-fun b_and!2699 () Bool)

(assert (= b_and!2697 (and (=> t!4234 result!1743) b_and!2699)))

(declare-fun m!38141 () Bool)

(assert (=> b!43895 m!38141))

(declare-fun m!38143 () Bool)

(assert (=> b!43895 m!38143))

(declare-fun m!38145 () Bool)

(assert (=> b!43895 m!38145))

(declare-fun m!38147 () Bool)

(assert (=> start!6658 m!38147))

(declare-fun m!38149 () Bool)

(assert (=> b!43894 m!38149))

(declare-fun m!38151 () Bool)

(assert (=> b!43893 m!38151))

(declare-fun m!38153 () Bool)

(assert (=> b!43893 m!38153))

(declare-fun m!38155 () Bool)

(assert (=> b!43893 m!38155))

(declare-fun m!38157 () Bool)

(assert (=> b!43893 m!38157))

(declare-fun m!38159 () Bool)

(assert (=> b!43893 m!38159))

(declare-fun m!38161 () Bool)

(assert (=> b!43893 m!38161))

(declare-fun m!38163 () Bool)

(assert (=> b!43893 m!38163))

(declare-fun m!38165 () Bool)

(assert (=> b!43893 m!38165))

(declare-fun m!38167 () Bool)

(assert (=> b!43896 m!38167))

(push 1)

(assert b_and!2699)

(assert tp_is_empty!1897)

(assert (not b!43893))

(assert (not b_next!1507))

(assert (not b_lambda!2317))

(assert (not b!43895))

(assert (not b!43896))

(assert (not b!43894))

(assert (not start!6658))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2699)

(assert (not b_next!1507))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2323 () Bool)

(assert (= b_lambda!2317 (or (and start!6658 b_free!1507) b_lambda!2323)))

(push 1)

(assert (not b_lambda!2323))

(assert b_and!2699)

(assert tp_is_empty!1897)

(assert (not b!43893))

(assert (not b_next!1507))

(assert (not b!43895))

(assert (not b!43896))

(assert (not b!43894))

(assert (not start!6658))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2699)

(assert (not b_next!1507))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8223 () Bool)

(declare-fun res!25990 () Bool)

(declare-fun e!27852 () Bool)

(assert (=> d!8223 (=> res!25990 e!27852)))

(assert (=> d!8223 (= res!25990 (= (select (arr!1411 lt!19095) #b00000000000000000000000000000000) (_1!826 lt!19102)))))

(assert (=> d!8223 (= (arrayContainsKey!0 lt!19095 (_1!826 lt!19102) #b00000000000000000000000000000000) e!27852)))

(declare-fun b!43933 () Bool)

(declare-fun e!27853 () Bool)

(assert (=> b!43933 (= e!27852 e!27853)))

(declare-fun res!25991 () Bool)

(assert (=> b!43933 (=> (not res!25991) (not e!27853))))

(assert (=> b!43933 (= res!25991 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1608 lt!19095)))))

(declare-fun b!43934 () Bool)

(assert (=> b!43934 (= e!27853 (arrayContainsKey!0 lt!19095 (_1!826 lt!19102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8223 (not res!25990)) b!43933))

(assert (= (and b!43933 res!25991) b!43934))

(declare-fun m!38225 () Bool)

(assert (=> d!8223 m!38225))

(declare-fun m!38227 () Bool)

(assert (=> b!43934 m!38227))

(assert (=> b!43896 d!8223))

(declare-fun d!8227 () Bool)

(assert (=> d!8227 (= (isEmpty!289 (toList!622 lt!19094)) (is-Nil!1215 (toList!622 lt!19094)))))

(assert (=> b!43894 d!8227))

(declare-fun b!43959 () Bool)

(declare-fun e!27870 () (_ BitVec 32))

(declare-fun call!3527 () (_ BitVec 32))

(assert (=> b!43959 (= e!27870 (bvadd #b00000000000000000000000000000001 call!3527))))

(declare-fun b!43960 () Bool)

(assert (=> b!43960 (= e!27870 call!3527)))

(declare-fun d!8229 () Bool)

(declare-fun lt!19168 () (_ BitVec 32))

(assert (=> d!8229 (and (bvsge lt!19168 #b00000000000000000000000000000000) (bvsle lt!19168 (bvsub (size!1608 lt!19095) #b00000000000000000000000000000000)))))

(declare-fun e!27869 () (_ BitVec 32))

(assert (=> d!8229 (= lt!19168 e!27869)))

(declare-fun c!5701 () Bool)

(assert (=> d!8229 (= c!5701 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8229 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1608 lt!19095)))))

(assert (=> d!8229 (= (arrayCountValidKeys!0 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19168)))

(declare-fun b!43961 () Bool)

(assert (=> b!43961 (= e!27869 #b00000000000000000000000000000000)))

(declare-fun b!43962 () Bool)

(assert (=> b!43962 (= e!27869 e!27870)))

(declare-fun c!5700 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!43962 (= c!5700 (validKeyInArray!0 (select (arr!1411 lt!19095) #b00000000000000000000000000000000)))))

(declare-fun bm!3524 () Bool)

(assert (=> bm!3524 (= call!3527 (arrayCountValidKeys!0 lt!19095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!8229 c!5701) b!43961))

(assert (= (and d!8229 (not c!5701)) b!43962))

(assert (= (and b!43962 c!5700) b!43959))

(assert (= (and b!43962 (not c!5700)) b!43960))

(assert (= (or b!43959 b!43960) bm!3524))

(assert (=> b!43962 m!38225))

(assert (=> b!43962 m!38225))

(declare-fun m!38241 () Bool)

(assert (=> b!43962 m!38241))

(declare-fun m!38243 () Bool)

(assert (=> bm!3524 m!38243))

(assert (=> b!43893 d!8229))

(declare-fun d!8239 () Bool)

(declare-fun getCurrentListMap!353 (array!2935 array!2937 (_ BitVec 32) (_ BitVec 32) V!2317 V!2317 (_ BitVec 32) Int) ListLongMap!1213)

(assert (=> d!8239 (= (map!840 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)) (getCurrentListMap!353 (_keys!3451 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)) (_values!1873 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)) (mask!5456 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)) (extraKeys!1781 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)) (zeroValue!1808 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)) (minValue!1808 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1890 (LongMapFixedSize!383 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 #b00000000000000000000000000000000 lt!19095 lt!19098 #b00000000000000000000000000000000))))))

(declare-fun bs!1990 () Bool)

(assert (= bs!1990 d!8239))

(declare-fun m!38247 () Bool)

(assert (=> bs!1990 m!38247))

(assert (=> b!43893 d!8239))

(declare-fun d!8247 () Bool)

(assert (=> d!8247 (= (arrayCountValidKeys!0 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19176 () Unit!1223)

(declare-fun choose!59 (array!2935 (_ BitVec 32) (_ BitVec 32)) Unit!1223)

(assert (=> d!8247 (= lt!19176 (choose!59 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8247 (bvslt (size!1608 lt!19095) #b01111111111111111111111111111111)))

(assert (=> d!8247 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19176)))

(declare-fun bs!1991 () Bool)

(assert (= bs!1991 d!8247))

(assert (=> bs!1991 m!38153))

(declare-fun m!38249 () Bool)

(assert (=> bs!1991 m!38249))

(assert (=> b!43893 d!8247))

(declare-fun d!8249 () Bool)

(assert (=> d!8249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19095 mask!853)))

(declare-fun lt!19183 () Unit!1223)

(declare-fun choose!34 (array!2935 (_ BitVec 32) (_ BitVec 32)) Unit!1223)

(assert (=> d!8249 (= lt!19183 (choose!34 lt!19095 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!8249 (validMask!0 mask!853)))

(assert (=> d!8249 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19095 mask!853 #b00000000000000000000000000000000) lt!19183)))

(declare-fun bs!1992 () Bool)

(assert (= bs!1992 d!8249))

(assert (=> bs!1992 m!38157))

(declare-fun m!38259 () Bool)

(assert (=> bs!1992 m!38259))

(assert (=> bs!1992 m!38147))

(assert (=> b!43893 d!8249))

(declare-fun b!44003 () Bool)

(declare-fun e!27896 () Bool)

(declare-fun call!3536 () Bool)

(assert (=> b!44003 (= e!27896 call!3536)))

(declare-fun b!44004 () Bool)

(declare-fun e!27897 () Bool)

(declare-fun e!27894 () Bool)

(assert (=> b!44004 (= e!27897 e!27894)))

(declare-fun res!26006 () Bool)

(assert (=> b!44004 (=> (not res!26006) (not e!27894))))

(declare-fun e!27895 () Bool)

(assert (=> b!44004 (= res!26006 (not e!27895))))

(declare-fun res!26007 () Bool)

(assert (=> b!44004 (=> (not res!26007) (not e!27895))))

(assert (=> b!44004 (= res!26007 (validKeyInArray!0 (select (arr!1411 lt!19095) #b00000000000000000000000000000000)))))

(declare-fun b!44005 () Bool)

(assert (=> b!44005 (= e!27894 e!27896)))

(declare-fun c!5719 () Bool)

(assert (=> b!44005 (= c!5719 (validKeyInArray!0 (select (arr!1411 lt!19095) #b00000000000000000000000000000000)))))

(declare-fun b!44006 () Bool)

(assert (=> b!44006 (= e!27896 call!3536)))

(declare-fun bm!3533 () Bool)

(assert (=> bm!3533 (= call!3536 (arrayNoDuplicates!0 lt!19095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5719 (Cons!1215 (select (arr!1411 lt!19095) #b00000000000000000000000000000000) Nil!1216) Nil!1216)))))

(declare-fun b!44007 () Bool)

(declare-fun contains!573 (List!1219 (_ BitVec 64)) Bool)

(assert (=> b!44007 (= e!27895 (contains!573 Nil!1216 (select (arr!1411 lt!19095) #b00000000000000000000000000000000)))))

(declare-fun d!8255 () Bool)

(declare-fun res!26008 () Bool)

(assert (=> d!8255 (=> res!26008 e!27897)))

(assert (=> d!8255 (= res!26008 (bvsge #b00000000000000000000000000000000 (size!1608 lt!19095)))))

(assert (=> d!8255 (= (arrayNoDuplicates!0 lt!19095 #b00000000000000000000000000000000 Nil!1216) e!27897)))

(assert (= (and d!8255 (not res!26008)) b!44004))

(assert (= (and b!44004 res!26007) b!44007))

(assert (= (and b!44004 res!26006) b!44005))

(assert (= (and b!44005 c!5719) b!44003))

(assert (= (and b!44005 (not c!5719)) b!44006))

(assert (= (or b!44003 b!44006) bm!3533))

(assert (=> b!44004 m!38225))

(assert (=> b!44004 m!38225))

(assert (=> b!44004 m!38241))

(assert (=> b!44005 m!38225))

(assert (=> b!44005 m!38225))

(assert (=> b!44005 m!38241))

(assert (=> bm!3533 m!38225))

(declare-fun m!38265 () Bool)

(assert (=> bm!3533 m!38265))

(assert (=> b!44007 m!38225))

(assert (=> b!44007 m!38225))

(declare-fun m!38267 () Bool)

(assert (=> b!44007 m!38267))

(assert (=> b!43893 d!8255))

(declare-fun b!44038 () Bool)

(declare-fun e!27922 () Bool)

(declare-fun call!3544 () Bool)

(assert (=> b!44038 (= e!27922 call!3544)))

(declare-fun d!8261 () Bool)

(declare-fun res!26026 () Bool)

(declare-fun e!27923 () Bool)

(assert (=> d!8261 (=> res!26026 e!27923)))

(assert (=> d!8261 (= res!26026 (bvsge #b00000000000000000000000000000000 (size!1608 lt!19095)))))

(assert (=> d!8261 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19095 mask!853) e!27923)))

(declare-fun b!44039 () Bool)

(declare-fun e!27921 () Bool)

(assert (=> b!44039 (= e!27921 call!3544)))

(declare-fun b!44040 () Bool)

(assert (=> b!44040 (= e!27923 e!27922)))

(declare-fun c!5727 () Bool)

(assert (=> b!44040 (= c!5727 (validKeyInArray!0 (select (arr!1411 lt!19095) #b00000000000000000000000000000000)))))

(declare-fun bm!3541 () Bool)

(assert (=> bm!3541 (= call!3544 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19095 mask!853))))

(declare-fun b!44041 () Bool)

(assert (=> b!44041 (= e!27922 e!27921)))

(declare-fun lt!19212 () (_ BitVec 64))

(assert (=> b!44041 (= lt!19212 (select (arr!1411 lt!19095) #b00000000000000000000000000000000))))

(declare-fun lt!19213 () Unit!1223)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2935 (_ BitVec 64) (_ BitVec 32)) Unit!1223)

(assert (=> b!44041 (= lt!19213 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19095 lt!19212 #b00000000000000000000000000000000))))

(assert (=> b!44041 (arrayContainsKey!0 lt!19095 lt!19212 #b00000000000000000000000000000000)))

(declare-fun lt!19211 () Unit!1223)

(assert (=> b!44041 (= lt!19211 lt!19213)))

(declare-fun res!26025 () Bool)

(declare-datatypes ((SeekEntryResult!210 0))(
  ( (MissingZero!210 (index!2962 (_ BitVec 32))) (Found!210 (index!2963 (_ BitVec 32))) (Intermediate!210 (undefined!1022 Bool) (index!2964 (_ BitVec 32)) (x!8331 (_ BitVec 32))) (Undefined!210) (MissingVacant!210 (index!2965 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2935 (_ BitVec 32)) SeekEntryResult!210)

(assert (=> b!44041 (= res!26025 (= (seekEntryOrOpen!0 (select (arr!1411 lt!19095) #b00000000000000000000000000000000) lt!19095 mask!853) (Found!210 #b00000000000000000000000000000000)))))

(assert (=> b!44041 (=> (not res!26025) (not e!27921))))

(assert (= (and d!8261 (not res!26026)) b!44040))

(assert (= (and b!44040 c!5727) b!44041))

(assert (= (and b!44040 (not c!5727)) b!44038))

(assert (= (and b!44041 res!26025) b!44039))

(assert (= (or b!44039 b!44038) bm!3541))

(assert (=> b!44040 m!38225))

(assert (=> b!44040 m!38225))

(assert (=> b!44040 m!38241))

(declare-fun m!38283 () Bool)

(assert (=> bm!3541 m!38283))

(assert (=> b!44041 m!38225))

(declare-fun m!38285 () Bool)

(assert (=> b!44041 m!38285))

(declare-fun m!38287 () Bool)

(assert (=> b!44041 m!38287))

(assert (=> b!44041 m!38225))

(declare-fun m!38289 () Bool)

(assert (=> b!44041 m!38289))

(assert (=> b!43893 d!8261))

(declare-fun d!8271 () Bool)

(assert (=> d!8271 (arrayNoDuplicates!0 lt!19095 #b00000000000000000000000000000000 Nil!1216)))

(declare-fun lt!19216 () Unit!1223)

(declare-fun choose!111 (array!2935 (_ BitVec 32) (_ BitVec 32) List!1219) Unit!1223)

(assert (=> d!8271 (= lt!19216 (choose!111 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1216))))

(assert (=> d!8271 (= (size!1608 lt!19095) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!8271 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!19095 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1216) lt!19216)))

(declare-fun bs!1998 () Bool)

(assert (= bs!1998 d!8271))

(assert (=> bs!1998 m!38161))

(declare-fun m!38295 () Bool)

(assert (=> bs!1998 m!38295))

(assert (=> b!43893 d!8271))

(declare-fun d!8275 () Bool)

(assert (=> d!8275 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6658 d!8275))

(declare-fun d!8283 () Bool)

(declare-fun lt!19234 () (_ BitVec 32))

(assert (=> d!8283 (and (or (bvslt lt!19234 #b00000000000000000000000000000000) (bvsge lt!19234 (size!1608 lt!19095)) (and (bvsge lt!19234 #b00000000000000000000000000000000) (bvslt lt!19234 (size!1608 lt!19095)))) (bvsge lt!19234 #b00000000000000000000000000000000) (bvslt lt!19234 (size!1608 lt!19095)) (= (select (arr!1411 lt!19095) lt!19234) (_1!826 lt!19102)))))

(declare-fun e!27951 () (_ BitVec 32))

(assert (=> d!8283 (= lt!19234 e!27951)))

(declare-fun c!5737 () Bool)

(assert (=> d!8283 (= c!5737 (= (select (arr!1411 lt!19095) #b00000000000000000000000000000000) (_1!826 lt!19102)))))

(assert (=> d!8283 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1608 lt!19095)) (bvslt (size!1608 lt!19095) #b01111111111111111111111111111111))))

(assert (=> d!8283 (= (arrayScanForKey!0 lt!19095 (_1!826 lt!19102) #b00000000000000000000000000000000) lt!19234)))

(declare-fun b!44078 () Bool)

(assert (=> b!44078 (= e!27951 #b00000000000000000000000000000000)))

(declare-fun b!44079 () Bool)

(assert (=> b!44079 (= e!27951 (arrayScanForKey!0 lt!19095 (_1!826 lt!19102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8283 c!5737) b!44078))

(assert (= (and d!8283 (not c!5737)) b!44079))

(declare-fun m!38315 () Bool)

(assert (=> d!8283 m!38315))

(assert (=> d!8283 m!38225))

(declare-fun m!38317 () Bool)

(assert (=> b!44079 m!38317))

(assert (=> b!43895 d!8283))

(declare-fun d!8289 () Bool)

(declare-fun e!27957 () Bool)

(assert (=> d!8289 e!27957))

(declare-fun c!5743 () Bool)

(assert (=> d!8289 (= c!5743 (and (not (= (_1!826 lt!19102) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!826 lt!19102) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19240 () Unit!1223)

(declare-fun choose!269 (array!2935 array!2937 (_ BitVec 32) (_ BitVec 32) V!2317 V!2317 (_ BitVec 64) Int) Unit!1223)

(assert (=> d!8289 (= lt!19240 (choose!269 lt!19095 lt!19098 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 (_1!826 lt!19102) defaultEntry!470))))

(assert (=> d!8289 (validMask!0 mask!853)))

(assert (=> d!8289 (= (lemmaKeyInListMapIsInArray!105 lt!19095 lt!19098 mask!853 #b00000000000000000000000000000000 lt!19101 lt!19101 (_1!826 lt!19102) defaultEntry!470) lt!19240)))

(declare-fun b!44090 () Bool)

(assert (=> b!44090 (= e!27957 (arrayContainsKey!0 lt!19095 (_1!826 lt!19102) #b00000000000000000000000000000000))))

(declare-fun b!44091 () Bool)

(assert (=> b!44091 (= e!27957 (ite (= (_1!826 lt!19102) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8289 c!5743) b!44090))

(assert (= (and d!8289 (not c!5743)) b!44091))

(declare-fun m!38323 () Bool)

(assert (=> d!8289 m!38323))

(assert (=> d!8289 m!38147))

(assert (=> b!44090 m!38167))

(assert (=> b!43895 d!8289))

(declare-fun d!8293 () Bool)

(assert (=> d!8293 (= (head!890 (toList!622 lt!19094)) (h!1791 (toList!622 lt!19094)))))

(assert (=> b!43895 d!8293))

(push 1)

