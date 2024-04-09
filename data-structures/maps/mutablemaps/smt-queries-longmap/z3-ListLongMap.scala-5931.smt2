; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77368 () Bool)

(assert start!77368)

(declare-fun b!901866 () Bool)

(declare-fun b_free!16089 () Bool)

(declare-fun b_next!16089 () Bool)

(assert (=> b!901866 (= b_free!16089 (not b_next!16089))))

(declare-fun tp!56374 () Bool)

(declare-fun b_and!26469 () Bool)

(assert (=> b!901866 (= tp!56374 b_and!26469)))

(declare-fun mapIsEmpty!29317 () Bool)

(declare-fun mapRes!29317 () Bool)

(assert (=> mapIsEmpty!29317 mapRes!29317))

(declare-fun res!608854 () Bool)

(declare-fun e!505013 () Bool)

(assert (=> start!77368 (=> (not res!608854) (not e!505013))))

(declare-datatypes ((array!52880 0))(
  ( (array!52881 (arr!25402 (Array (_ BitVec 32) (_ BitVec 64))) (size!25862 (_ BitVec 32))) )
))
(declare-datatypes ((V!29521 0))(
  ( (V!29522 (val!9259 Int)) )
))
(declare-datatypes ((ValueCell!8727 0))(
  ( (ValueCellFull!8727 (v!11761 V!29521)) (EmptyCell!8727) )
))
(declare-datatypes ((array!52882 0))(
  ( (array!52883 (arr!25403 (Array (_ BitVec 32) ValueCell!8727)) (size!25863 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4470 0))(
  ( (LongMapFixedSize!4471 (defaultEntry!5481 Int) (mask!26294 (_ BitVec 32)) (extraKeys!5212 (_ BitVec 32)) (zeroValue!5316 V!29521) (minValue!5316 V!29521) (_size!2290 (_ BitVec 32)) (_keys!10294 array!52880) (_values!5503 array!52882) (_vacant!2290 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4470)

(declare-fun valid!1699 (LongMapFixedSize!4470) Bool)

(assert (=> start!77368 (= res!608854 (valid!1699 thiss!1181))))

(assert (=> start!77368 e!505013))

(declare-fun e!505020 () Bool)

(assert (=> start!77368 e!505020))

(assert (=> start!77368 true))

(declare-fun b!901864 () Bool)

(declare-fun res!608856 () Bool)

(declare-fun e!505018 () Bool)

(assert (=> b!901864 (=> res!608856 e!505018)))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4431 (LongMapFixedSize!4470 (_ BitVec 64)) Bool)

(assert (=> b!901864 (= res!608856 (not (contains!4431 thiss!1181 key!785)))))

(declare-fun b!901865 () Bool)

(declare-fun res!608853 () Bool)

(assert (=> b!901865 (=> (not res!608853) (not e!505013))))

(assert (=> b!901865 (= res!608853 (not (= key!785 (bvneg key!785))))))

(declare-fun e!505014 () Bool)

(declare-fun tp_is_empty!18417 () Bool)

(declare-fun array_inv!19898 (array!52880) Bool)

(declare-fun array_inv!19899 (array!52882) Bool)

(assert (=> b!901866 (= e!505020 (and tp!56374 tp_is_empty!18417 (array_inv!19898 (_keys!10294 thiss!1181)) (array_inv!19899 (_values!5503 thiss!1181)) e!505014))))

(declare-fun mapNonEmpty!29317 () Bool)

(declare-fun tp!56373 () Bool)

(declare-fun e!505019 () Bool)

(assert (=> mapNonEmpty!29317 (= mapRes!29317 (and tp!56373 e!505019))))

(declare-fun mapKey!29317 () (_ BitVec 32))

(declare-fun mapRest!29317 () (Array (_ BitVec 32) ValueCell!8727))

(declare-fun mapValue!29317 () ValueCell!8727)

(assert (=> mapNonEmpty!29317 (= (arr!25403 (_values!5503 thiss!1181)) (store mapRest!29317 mapKey!29317 mapValue!29317))))

(declare-fun b!901867 () Bool)

(declare-fun e!505015 () Bool)

(assert (=> b!901867 (= e!505014 (and e!505015 mapRes!29317))))

(declare-fun condMapEmpty!29317 () Bool)

(declare-fun mapDefault!29317 () ValueCell!8727)

(assert (=> b!901867 (= condMapEmpty!29317 (= (arr!25403 (_values!5503 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8727)) mapDefault!29317)))))

(declare-fun b!901868 () Bool)

(declare-fun dynLambda!1320 (Int (_ BitVec 64)) V!29521)

(declare-datatypes ((Option!476 0))(
  ( (Some!475 (v!11762 V!29521)) (None!474) )
))
(declare-fun get!13386 (Option!476) V!29521)

(declare-datatypes ((tuple2!12102 0))(
  ( (tuple2!12103 (_1!6061 (_ BitVec 64)) (_2!6061 V!29521)) )
))
(declare-datatypes ((List!17958 0))(
  ( (Nil!17955) (Cons!17954 (h!19100 tuple2!12102) (t!25347 List!17958)) )
))
(declare-fun getValueByKey!470 (List!17958 (_ BitVec 64)) Option!476)

(declare-datatypes ((ListLongMap!10813 0))(
  ( (ListLongMap!10814 (toList!5422 List!17958)) )
))
(declare-fun map!12304 (LongMapFixedSize!4470) ListLongMap!10813)

(assert (=> b!901868 (= e!505018 (= (dynLambda!1320 (defaultEntry!5481 thiss!1181) key!785) (get!13386 (getValueByKey!470 (toList!5422 (map!12304 thiss!1181)) key!785))))))

(declare-fun b!901869 () Bool)

(assert (=> b!901869 (= e!505015 tp_is_empty!18417)))

(declare-fun b!901870 () Bool)

(assert (=> b!901870 (= e!505013 (not e!505018))))

(declare-fun res!608857 () Bool)

(assert (=> b!901870 (=> res!608857 e!505018)))

(declare-datatypes ((SeekEntryResult!8943 0))(
  ( (MissingZero!8943 (index!38142 (_ BitVec 32))) (Found!8943 (index!38143 (_ BitVec 32))) (Intermediate!8943 (undefined!9755 Bool) (index!38144 (_ BitVec 32)) (x!76837 (_ BitVec 32))) (Undefined!8943) (MissingVacant!8943 (index!38145 (_ BitVec 32))) )
))
(declare-fun lt!407712 () SeekEntryResult!8943)

(get-info :version)

(assert (=> b!901870 (= res!608857 ((_ is Found!8943) lt!407712))))

(declare-fun e!505016 () Bool)

(assert (=> b!901870 e!505016))

(declare-fun res!608855 () Bool)

(assert (=> b!901870 (=> res!608855 e!505016)))

(assert (=> b!901870 (= res!608855 (not ((_ is Found!8943) lt!407712)))))

(declare-datatypes ((Unit!30597 0))(
  ( (Unit!30598) )
))
(declare-fun lt!407713 () Unit!30597)

(declare-fun lemmaSeekEntryGivesInRangeIndex!119 (array!52880 array!52882 (_ BitVec 32) (_ BitVec 32) V!29521 V!29521 (_ BitVec 64)) Unit!30597)

(assert (=> b!901870 (= lt!407713 (lemmaSeekEntryGivesInRangeIndex!119 (_keys!10294 thiss!1181) (_values!5503 thiss!1181) (mask!26294 thiss!1181) (extraKeys!5212 thiss!1181) (zeroValue!5316 thiss!1181) (minValue!5316 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52880 (_ BitVec 32)) SeekEntryResult!8943)

(assert (=> b!901870 (= lt!407712 (seekEntry!0 key!785 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(declare-fun b!901871 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901871 (= e!505016 (inRange!0 (index!38143 lt!407712) (mask!26294 thiss!1181)))))

(declare-fun b!901872 () Bool)

(assert (=> b!901872 (= e!505019 tp_is_empty!18417)))

(assert (= (and start!77368 res!608854) b!901865))

(assert (= (and b!901865 res!608853) b!901870))

(assert (= (and b!901870 (not res!608855)) b!901871))

(assert (= (and b!901870 (not res!608857)) b!901864))

(assert (= (and b!901864 (not res!608856)) b!901868))

(assert (= (and b!901867 condMapEmpty!29317) mapIsEmpty!29317))

(assert (= (and b!901867 (not condMapEmpty!29317)) mapNonEmpty!29317))

(assert (= (and mapNonEmpty!29317 ((_ is ValueCellFull!8727) mapValue!29317)) b!901872))

(assert (= (and b!901867 ((_ is ValueCellFull!8727) mapDefault!29317)) b!901869))

(assert (= b!901866 b!901867))

(assert (= start!77368 b!901866))

(declare-fun b_lambda!13111 () Bool)

(assert (=> (not b_lambda!13111) (not b!901868)))

(declare-fun t!25346 () Bool)

(declare-fun tb!5239 () Bool)

(assert (=> (and b!901866 (= (defaultEntry!5481 thiss!1181) (defaultEntry!5481 thiss!1181)) t!25346) tb!5239))

(declare-fun result!10251 () Bool)

(assert (=> tb!5239 (= result!10251 tp_is_empty!18417)))

(assert (=> b!901868 t!25346))

(declare-fun b_and!26471 () Bool)

(assert (= b_and!26469 (and (=> t!25346 result!10251) b_and!26471)))

(declare-fun m!838119 () Bool)

(assert (=> b!901864 m!838119))

(declare-fun m!838121 () Bool)

(assert (=> start!77368 m!838121))

(declare-fun m!838123 () Bool)

(assert (=> b!901870 m!838123))

(declare-fun m!838125 () Bool)

(assert (=> b!901870 m!838125))

(declare-fun m!838127 () Bool)

(assert (=> b!901871 m!838127))

(declare-fun m!838129 () Bool)

(assert (=> b!901866 m!838129))

(declare-fun m!838131 () Bool)

(assert (=> b!901866 m!838131))

(declare-fun m!838133 () Bool)

(assert (=> mapNonEmpty!29317 m!838133))

(declare-fun m!838135 () Bool)

(assert (=> b!901868 m!838135))

(declare-fun m!838137 () Bool)

(assert (=> b!901868 m!838137))

(declare-fun m!838139 () Bool)

(assert (=> b!901868 m!838139))

(assert (=> b!901868 m!838139))

(declare-fun m!838141 () Bool)

(assert (=> b!901868 m!838141))

(check-sat (not b!901868) (not b_lambda!13111) (not b!901866) b_and!26471 (not mapNonEmpty!29317) (not b!901870) tp_is_empty!18417 (not b_next!16089) (not b!901864) (not b!901871) (not start!77368))
(check-sat b_and!26471 (not b_next!16089))
(get-model)

(declare-fun b_lambda!13115 () Bool)

(assert (= b_lambda!13111 (or (and b!901866 b_free!16089) b_lambda!13115)))

(check-sat (not b!901868) (not b!901866) b_and!26471 (not mapNonEmpty!29317) (not b!901870) tp_is_empty!18417 (not b_next!16089) (not b_lambda!13115) (not b!901864) (not b!901871) (not start!77368))
(check-sat b_and!26471 (not b_next!16089))
(get-model)

(declare-fun d!111819 () Bool)

(assert (=> d!111819 (= (array_inv!19898 (_keys!10294 thiss!1181)) (bvsge (size!25862 (_keys!10294 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901866 d!111819))

(declare-fun d!111821 () Bool)

(assert (=> d!111821 (= (array_inv!19899 (_values!5503 thiss!1181)) (bvsge (size!25863 (_values!5503 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901866 d!111821))

(declare-fun d!111823 () Bool)

(assert (=> d!111823 (= (inRange!0 (index!38143 lt!407712) (mask!26294 thiss!1181)) (and (bvsge (index!38143 lt!407712) #b00000000000000000000000000000000) (bvslt (index!38143 lt!407712) (bvadd (mask!26294 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!901871 d!111823))

(declare-fun d!111825 () Bool)

(declare-fun res!608879 () Bool)

(declare-fun e!505047 () Bool)

(assert (=> d!111825 (=> (not res!608879) (not e!505047))))

(declare-fun simpleValid!334 (LongMapFixedSize!4470) Bool)

(assert (=> d!111825 (= res!608879 (simpleValid!334 thiss!1181))))

(assert (=> d!111825 (= (valid!1699 thiss!1181) e!505047)))

(declare-fun b!901910 () Bool)

(declare-fun res!608880 () Bool)

(assert (=> b!901910 (=> (not res!608880) (not e!505047))))

(declare-fun arrayCountValidKeys!0 (array!52880 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!901910 (= res!608880 (= (arrayCountValidKeys!0 (_keys!10294 thiss!1181) #b00000000000000000000000000000000 (size!25862 (_keys!10294 thiss!1181))) (_size!2290 thiss!1181)))))

(declare-fun b!901911 () Bool)

(declare-fun res!608881 () Bool)

(assert (=> b!901911 (=> (not res!608881) (not e!505047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52880 (_ BitVec 32)) Bool)

(assert (=> b!901911 (= res!608881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(declare-fun b!901912 () Bool)

(declare-datatypes ((List!17960 0))(
  ( (Nil!17957) (Cons!17956 (h!19102 (_ BitVec 64)) (t!25351 List!17960)) )
))
(declare-fun arrayNoDuplicates!0 (array!52880 (_ BitVec 32) List!17960) Bool)

(assert (=> b!901912 (= e!505047 (arrayNoDuplicates!0 (_keys!10294 thiss!1181) #b00000000000000000000000000000000 Nil!17957))))

(assert (= (and d!111825 res!608879) b!901910))

(assert (= (and b!901910 res!608880) b!901911))

(assert (= (and b!901911 res!608881) b!901912))

(declare-fun m!838167 () Bool)

(assert (=> d!111825 m!838167))

(declare-fun m!838169 () Bool)

(assert (=> b!901910 m!838169))

(declare-fun m!838171 () Bool)

(assert (=> b!901911 m!838171))

(declare-fun m!838173 () Bool)

(assert (=> b!901912 m!838173))

(assert (=> start!77368 d!111825))

(declare-fun d!111827 () Bool)

(declare-fun e!505050 () Bool)

(assert (=> d!111827 e!505050))

(declare-fun res!608884 () Bool)

(assert (=> d!111827 (=> res!608884 e!505050)))

(declare-fun lt!407725 () SeekEntryResult!8943)

(assert (=> d!111827 (= res!608884 (not ((_ is Found!8943) lt!407725)))))

(assert (=> d!111827 (= lt!407725 (seekEntry!0 key!785 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(declare-fun lt!407724 () Unit!30597)

(declare-fun choose!1534 (array!52880 array!52882 (_ BitVec 32) (_ BitVec 32) V!29521 V!29521 (_ BitVec 64)) Unit!30597)

(assert (=> d!111827 (= lt!407724 (choose!1534 (_keys!10294 thiss!1181) (_values!5503 thiss!1181) (mask!26294 thiss!1181) (extraKeys!5212 thiss!1181) (zeroValue!5316 thiss!1181) (minValue!5316 thiss!1181) key!785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!111827 (validMask!0 (mask!26294 thiss!1181))))

(assert (=> d!111827 (= (lemmaSeekEntryGivesInRangeIndex!119 (_keys!10294 thiss!1181) (_values!5503 thiss!1181) (mask!26294 thiss!1181) (extraKeys!5212 thiss!1181) (zeroValue!5316 thiss!1181) (minValue!5316 thiss!1181) key!785) lt!407724)))

(declare-fun b!901915 () Bool)

(assert (=> b!901915 (= e!505050 (inRange!0 (index!38143 lt!407725) (mask!26294 thiss!1181)))))

(assert (= (and d!111827 (not res!608884)) b!901915))

(assert (=> d!111827 m!838125))

(declare-fun m!838175 () Bool)

(assert (=> d!111827 m!838175))

(declare-fun m!838177 () Bool)

(assert (=> d!111827 m!838177))

(declare-fun m!838179 () Bool)

(assert (=> b!901915 m!838179))

(assert (=> b!901870 d!111827))

(declare-fun b!901928 () Bool)

(declare-fun e!505057 () SeekEntryResult!8943)

(assert (=> b!901928 (= e!505057 Undefined!8943)))

(declare-fun d!111829 () Bool)

(declare-fun lt!407734 () SeekEntryResult!8943)

(assert (=> d!111829 (and (or ((_ is MissingVacant!8943) lt!407734) (not ((_ is Found!8943) lt!407734)) (and (bvsge (index!38143 lt!407734) #b00000000000000000000000000000000) (bvslt (index!38143 lt!407734) (size!25862 (_keys!10294 thiss!1181))))) (not ((_ is MissingVacant!8943) lt!407734)) (or (not ((_ is Found!8943) lt!407734)) (= (select (arr!25402 (_keys!10294 thiss!1181)) (index!38143 lt!407734)) key!785)))))

(assert (=> d!111829 (= lt!407734 e!505057)))

(declare-fun c!95526 () Bool)

(declare-fun lt!407735 () SeekEntryResult!8943)

(assert (=> d!111829 (= c!95526 (and ((_ is Intermediate!8943) lt!407735) (undefined!9755 lt!407735)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52880 (_ BitVec 32)) SeekEntryResult!8943)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111829 (= lt!407735 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26294 thiss!1181)) key!785 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(assert (=> d!111829 (validMask!0 (mask!26294 thiss!1181))))

(assert (=> d!111829 (= (seekEntry!0 key!785 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)) lt!407734)))

(declare-fun b!901929 () Bool)

(declare-fun e!505058 () SeekEntryResult!8943)

(assert (=> b!901929 (= e!505058 (MissingZero!8943 (index!38144 lt!407735)))))

(declare-fun b!901930 () Bool)

(declare-fun e!505059 () SeekEntryResult!8943)

(assert (=> b!901930 (= e!505059 (Found!8943 (index!38144 lt!407735)))))

(declare-fun b!901931 () Bool)

(declare-fun lt!407736 () SeekEntryResult!8943)

(assert (=> b!901931 (= e!505058 (ite ((_ is MissingVacant!8943) lt!407736) (MissingZero!8943 (index!38145 lt!407736)) lt!407736))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52880 (_ BitVec 32)) SeekEntryResult!8943)

(assert (=> b!901931 (= lt!407736 (seekKeyOrZeroReturnVacant!0 (x!76837 lt!407735) (index!38144 lt!407735) (index!38144 lt!407735) key!785 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(declare-fun b!901932 () Bool)

(declare-fun c!95525 () Bool)

(declare-fun lt!407737 () (_ BitVec 64))

(assert (=> b!901932 (= c!95525 (= lt!407737 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!901932 (= e!505059 e!505058)))

(declare-fun b!901933 () Bool)

(assert (=> b!901933 (= e!505057 e!505059)))

(assert (=> b!901933 (= lt!407737 (select (arr!25402 (_keys!10294 thiss!1181)) (index!38144 lt!407735)))))

(declare-fun c!95527 () Bool)

(assert (=> b!901933 (= c!95527 (= lt!407737 key!785))))

(assert (= (and d!111829 c!95526) b!901928))

(assert (= (and d!111829 (not c!95526)) b!901933))

(assert (= (and b!901933 c!95527) b!901930))

(assert (= (and b!901933 (not c!95527)) b!901932))

(assert (= (and b!901932 c!95525) b!901929))

(assert (= (and b!901932 (not c!95525)) b!901931))

(declare-fun m!838181 () Bool)

(assert (=> d!111829 m!838181))

(declare-fun m!838183 () Bool)

(assert (=> d!111829 m!838183))

(assert (=> d!111829 m!838183))

(declare-fun m!838185 () Bool)

(assert (=> d!111829 m!838185))

(assert (=> d!111829 m!838177))

(declare-fun m!838187 () Bool)

(assert (=> b!901931 m!838187))

(declare-fun m!838189 () Bool)

(assert (=> b!901933 m!838189))

(assert (=> b!901870 d!111829))

(declare-fun d!111831 () Bool)

(assert (=> d!111831 (= (get!13386 (getValueByKey!470 (toList!5422 (map!12304 thiss!1181)) key!785)) (v!11762 (getValueByKey!470 (toList!5422 (map!12304 thiss!1181)) key!785)))))

(assert (=> b!901868 d!111831))

(declare-fun b!901943 () Bool)

(declare-fun e!505064 () Option!476)

(declare-fun e!505065 () Option!476)

(assert (=> b!901943 (= e!505064 e!505065)))

(declare-fun c!95533 () Bool)

(assert (=> b!901943 (= c!95533 (and ((_ is Cons!17954) (toList!5422 (map!12304 thiss!1181))) (not (= (_1!6061 (h!19100 (toList!5422 (map!12304 thiss!1181)))) key!785))))))

(declare-fun b!901942 () Bool)

(assert (=> b!901942 (= e!505064 (Some!475 (_2!6061 (h!19100 (toList!5422 (map!12304 thiss!1181))))))))

(declare-fun b!901944 () Bool)

(assert (=> b!901944 (= e!505065 (getValueByKey!470 (t!25347 (toList!5422 (map!12304 thiss!1181))) key!785))))

(declare-fun b!901945 () Bool)

(assert (=> b!901945 (= e!505065 None!474)))

(declare-fun d!111833 () Bool)

(declare-fun c!95532 () Bool)

(assert (=> d!111833 (= c!95532 (and ((_ is Cons!17954) (toList!5422 (map!12304 thiss!1181))) (= (_1!6061 (h!19100 (toList!5422 (map!12304 thiss!1181)))) key!785)))))

(assert (=> d!111833 (= (getValueByKey!470 (toList!5422 (map!12304 thiss!1181)) key!785) e!505064)))

(assert (= (and d!111833 c!95532) b!901942))

(assert (= (and d!111833 (not c!95532)) b!901943))

(assert (= (and b!901943 c!95533) b!901944))

(assert (= (and b!901943 (not c!95533)) b!901945))

(declare-fun m!838191 () Bool)

(assert (=> b!901944 m!838191))

(assert (=> b!901868 d!111833))

(declare-fun d!111835 () Bool)

(declare-fun getCurrentListMap!2660 (array!52880 array!52882 (_ BitVec 32) (_ BitVec 32) V!29521 V!29521 (_ BitVec 32) Int) ListLongMap!10813)

(assert (=> d!111835 (= (map!12304 thiss!1181) (getCurrentListMap!2660 (_keys!10294 thiss!1181) (_values!5503 thiss!1181) (mask!26294 thiss!1181) (extraKeys!5212 thiss!1181) (zeroValue!5316 thiss!1181) (minValue!5316 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5481 thiss!1181)))))

(declare-fun bs!25308 () Bool)

(assert (= bs!25308 d!111835))

(declare-fun m!838193 () Bool)

(assert (=> bs!25308 m!838193))

(assert (=> b!901868 d!111835))

(declare-fun b!901966 () Bool)

(declare-fun e!505079 () Bool)

(declare-fun call!40232 () Bool)

(assert (=> b!901966 (= e!505079 call!40232)))

(declare-fun bm!40229 () Bool)

(declare-fun arrayContainsKey!0 (array!52880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!40229 (= call!40232 (arrayContainsKey!0 (_keys!10294 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!901967 () Bool)

(declare-fun c!95546 () Bool)

(declare-fun lt!407771 () SeekEntryResult!8943)

(assert (=> b!901967 (= c!95546 ((_ is Found!8943) lt!407771))))

(assert (=> b!901967 (= lt!407771 (seekEntry!0 key!785 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(declare-fun e!505077 () Bool)

(declare-fun e!505080 () Bool)

(assert (=> b!901967 (= e!505077 e!505080)))

(declare-fun b!901968 () Bool)

(assert (=> b!901968 (= e!505080 true)))

(declare-fun lt!407777 () Unit!30597)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52880 (_ BitVec 64) (_ BitVec 32)) Unit!30597)

(assert (=> b!901968 (= lt!407777 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10294 thiss!1181) key!785 (index!38143 lt!407771)))))

(assert (=> b!901968 call!40232))

(declare-fun lt!407769 () Unit!30597)

(assert (=> b!901968 (= lt!407769 lt!407777)))

(declare-fun lt!407772 () Unit!30597)

(declare-fun lemmaValidKeyInArrayIsInListMap!253 (array!52880 array!52882 (_ BitVec 32) (_ BitVec 32) V!29521 V!29521 (_ BitVec 32) Int) Unit!30597)

(assert (=> b!901968 (= lt!407772 (lemmaValidKeyInArrayIsInListMap!253 (_keys!10294 thiss!1181) (_values!5503 thiss!1181) (mask!26294 thiss!1181) (extraKeys!5212 thiss!1181) (zeroValue!5316 thiss!1181) (minValue!5316 thiss!1181) (index!38143 lt!407771) (defaultEntry!5481 thiss!1181)))))

(declare-fun call!40234 () Bool)

(assert (=> b!901968 call!40234))

(declare-fun lt!407782 () Unit!30597)

(assert (=> b!901968 (= lt!407782 lt!407772)))

(declare-fun bm!40230 () Bool)

(declare-fun call!40233 () ListLongMap!10813)

(assert (=> bm!40230 (= call!40233 (getCurrentListMap!2660 (_keys!10294 thiss!1181) (_values!5503 thiss!1181) (mask!26294 thiss!1181) (extraKeys!5212 thiss!1181) (zeroValue!5316 thiss!1181) (minValue!5316 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5481 thiss!1181)))))

(declare-fun b!901969 () Bool)

(assert (=> b!901969 false))

(declare-fun lt!407774 () Unit!30597)

(declare-fun lt!407768 () Unit!30597)

(assert (=> b!901969 (= lt!407774 lt!407768)))

(declare-fun lt!407779 () SeekEntryResult!8943)

(declare-fun lt!407770 () (_ BitVec 32))

(assert (=> b!901969 (and ((_ is Found!8943) lt!407779) (= (index!38143 lt!407779) lt!407770))))

(assert (=> b!901969 (= lt!407779 (seekEntry!0 key!785 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!52880 (_ BitVec 32)) Unit!30597)

(assert (=> b!901969 (= lt!407768 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!407770 (_keys!10294 thiss!1181) (mask!26294 thiss!1181)))))

(declare-fun lt!407775 () Unit!30597)

(declare-fun lt!407781 () Unit!30597)

(assert (=> b!901969 (= lt!407775 lt!407781)))

(assert (=> b!901969 (arrayForallSeekEntryOrOpenFound!0 lt!407770 (_keys!10294 thiss!1181) (mask!26294 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!52880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30597)

(assert (=> b!901969 (= lt!407781 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10294 thiss!1181) (mask!26294 thiss!1181) #b00000000000000000000000000000000 lt!407770))))

(declare-fun arrayScanForKey!0 (array!52880 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!901969 (= lt!407770 (arrayScanForKey!0 (_keys!10294 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!407776 () Unit!30597)

(declare-fun lt!407780 () Unit!30597)

(assert (=> b!901969 (= lt!407776 lt!407780)))

(assert (=> b!901969 e!505079))

(declare-fun c!95545 () Bool)

(assert (=> b!901969 (= c!95545 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!168 (array!52880 array!52882 (_ BitVec 32) (_ BitVec 32) V!29521 V!29521 (_ BitVec 64) Int) Unit!30597)

(assert (=> b!901969 (= lt!407780 (lemmaKeyInListMapIsInArray!168 (_keys!10294 thiss!1181) (_values!5503 thiss!1181) (mask!26294 thiss!1181) (extraKeys!5212 thiss!1181) (zeroValue!5316 thiss!1181) (minValue!5316 thiss!1181) key!785 (defaultEntry!5481 thiss!1181)))))

(declare-fun e!505076 () Unit!30597)

(declare-fun Unit!30601 () Unit!30597)

(assert (=> b!901969 (= e!505076 Unit!30601)))

(declare-fun d!111837 () Bool)

(declare-fun lt!407778 () Bool)

(declare-fun contains!4432 (ListLongMap!10813 (_ BitVec 64)) Bool)

(assert (=> d!111837 (= lt!407778 (contains!4432 (map!12304 thiss!1181) key!785))))

(declare-fun e!505078 () Bool)

(assert (=> d!111837 (= lt!407778 e!505078)))

(declare-fun c!95548 () Bool)

(assert (=> d!111837 (= c!95548 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111837 (valid!1699 thiss!1181)))

(assert (=> d!111837 (= (contains!4431 thiss!1181 key!785) lt!407778)))

(declare-fun b!901970 () Bool)

(declare-fun Unit!30602 () Unit!30597)

(assert (=> b!901970 (= e!505076 Unit!30602)))

(declare-fun b!901971 () Bool)

(assert (=> b!901971 (= e!505078 e!505077)))

(declare-fun c!95544 () Bool)

(assert (=> b!901971 (= c!95544 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901972 () Bool)

(assert (=> b!901972 (= e!505080 false)))

(declare-fun c!95547 () Bool)

(assert (=> b!901972 (= c!95547 call!40234)))

(declare-fun lt!407773 () Unit!30597)

(assert (=> b!901972 (= lt!407773 e!505076)))

(declare-fun b!901973 () Bool)

(assert (=> b!901973 (= e!505079 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5212 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5212 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!40231 () Bool)

(assert (=> bm!40231 (= call!40234 (contains!4432 call!40233 (ite c!95546 (select (arr!25402 (_keys!10294 thiss!1181)) (index!38143 lt!407771)) key!785)))))

(declare-fun b!901974 () Bool)

(assert (=> b!901974 (= e!505078 (not (= (bvand (extraKeys!5212 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!901975 () Bool)

(assert (=> b!901975 (= e!505077 (not (= (bvand (extraKeys!5212 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!111837 c!95548) b!901974))

(assert (= (and d!111837 (not c!95548)) b!901971))

(assert (= (and b!901971 c!95544) b!901975))

(assert (= (and b!901971 (not c!95544)) b!901967))

(assert (= (and b!901967 c!95546) b!901968))

(assert (= (and b!901967 (not c!95546)) b!901972))

(assert (= (and b!901972 c!95547) b!901969))

(assert (= (and b!901972 (not c!95547)) b!901970))

(assert (= (and b!901969 c!95545) b!901966))

(assert (= (and b!901969 (not c!95545)) b!901973))

(assert (= (or b!901968 b!901966) bm!40229))

(assert (= (or b!901968 b!901972) bm!40230))

(assert (= (or b!901968 b!901972) bm!40231))

(declare-fun m!838195 () Bool)

(assert (=> bm!40231 m!838195))

(declare-fun m!838197 () Bool)

(assert (=> bm!40231 m!838197))

(assert (=> b!901969 m!838125))

(declare-fun m!838199 () Bool)

(assert (=> b!901969 m!838199))

(declare-fun m!838201 () Bool)

(assert (=> b!901969 m!838201))

(declare-fun m!838203 () Bool)

(assert (=> b!901969 m!838203))

(declare-fun m!838205 () Bool)

(assert (=> b!901969 m!838205))

(declare-fun m!838207 () Bool)

(assert (=> b!901969 m!838207))

(declare-fun m!838209 () Bool)

(assert (=> b!901968 m!838209))

(declare-fun m!838211 () Bool)

(assert (=> b!901968 m!838211))

(assert (=> d!111837 m!838137))

(assert (=> d!111837 m!838137))

(declare-fun m!838213 () Bool)

(assert (=> d!111837 m!838213))

(assert (=> d!111837 m!838121))

(assert (=> b!901967 m!838125))

(assert (=> bm!40230 m!838193))

(declare-fun m!838215 () Bool)

(assert (=> bm!40229 m!838215))

(assert (=> b!901864 d!111837))

(declare-fun mapIsEmpty!29323 () Bool)

(declare-fun mapRes!29323 () Bool)

(assert (=> mapIsEmpty!29323 mapRes!29323))

(declare-fun mapNonEmpty!29323 () Bool)

(declare-fun tp!56383 () Bool)

(declare-fun e!505085 () Bool)

(assert (=> mapNonEmpty!29323 (= mapRes!29323 (and tp!56383 e!505085))))

(declare-fun mapRest!29323 () (Array (_ BitVec 32) ValueCell!8727))

(declare-fun mapValue!29323 () ValueCell!8727)

(declare-fun mapKey!29323 () (_ BitVec 32))

(assert (=> mapNonEmpty!29323 (= mapRest!29317 (store mapRest!29323 mapKey!29323 mapValue!29323))))

(declare-fun b!901983 () Bool)

(declare-fun e!505086 () Bool)

(assert (=> b!901983 (= e!505086 tp_is_empty!18417)))

(declare-fun b!901982 () Bool)

(assert (=> b!901982 (= e!505085 tp_is_empty!18417)))

(declare-fun condMapEmpty!29323 () Bool)

(declare-fun mapDefault!29323 () ValueCell!8727)

(assert (=> mapNonEmpty!29317 (= condMapEmpty!29323 (= mapRest!29317 ((as const (Array (_ BitVec 32) ValueCell!8727)) mapDefault!29323)))))

(assert (=> mapNonEmpty!29317 (= tp!56373 (and e!505086 mapRes!29323))))

(assert (= (and mapNonEmpty!29317 condMapEmpty!29323) mapIsEmpty!29323))

(assert (= (and mapNonEmpty!29317 (not condMapEmpty!29323)) mapNonEmpty!29323))

(assert (= (and mapNonEmpty!29323 ((_ is ValueCellFull!8727) mapValue!29323)) b!901982))

(assert (= (and mapNonEmpty!29317 ((_ is ValueCellFull!8727) mapDefault!29323)) b!901983))

(declare-fun m!838217 () Bool)

(assert (=> mapNonEmpty!29323 m!838217))

(check-sat (not d!111835) (not mapNonEmpty!29323) (not d!111829) (not b!901915) (not d!111827) (not b!901931) (not b!901911) (not b!901969) (not b_next!16089) (not b!901910) (not b_lambda!13115) (not b!901912) b_and!26471 (not bm!40231) (not b!901944) (not b!901967) (not bm!40229) tp_is_empty!18417 (not bm!40230) (not b!901968) (not d!111825) (not d!111837))
(check-sat b_and!26471 (not b_next!16089))
