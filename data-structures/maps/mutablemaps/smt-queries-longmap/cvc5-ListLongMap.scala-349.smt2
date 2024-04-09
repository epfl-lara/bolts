; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6388 () Bool)

(assert start!6388)

(declare-fun b_free!1471 () Bool)

(declare-fun b_next!1471 () Bool)

(assert (=> start!6388 (= b_free!1471 (not b_next!1471))))

(declare-fun tp!5894 () Bool)

(declare-fun b_and!2601 () Bool)

(assert (=> start!6388 (= tp!5894 b_and!2601)))

(declare-fun res!25448 () Bool)

(declare-fun e!27143 () Bool)

(assert (=> start!6388 (=> (not res!25448) (not e!27143))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6388 (= res!25448 (validMask!0 mask!853))))

(assert (=> start!6388 e!27143))

(assert (=> start!6388 true))

(assert (=> start!6388 tp!5894))

(declare-fun b!42820 () Bool)

(declare-fun e!27144 () Bool)

(assert (=> b!42820 (= e!27143 (not e!27144))))

(declare-fun res!25449 () Bool)

(assert (=> b!42820 (=> res!25449 e!27144)))

(declare-datatypes ((V!2269 0))(
  ( (V!2270 (val!969 Int)) )
))
(declare-datatypes ((tuple2!1596 0))(
  ( (tuple2!1597 (_1!808 (_ BitVec 64)) (_2!808 V!2269)) )
))
(declare-datatypes ((List!1182 0))(
  ( (Nil!1179) (Cons!1178 (h!1755 tuple2!1596) (t!4157 List!1182)) )
))
(declare-datatypes ((ListLongMap!1177 0))(
  ( (ListLongMap!1178 (toList!604 List!1182)) )
))
(declare-fun lt!18033 () ListLongMap!1177)

(assert (=> b!42820 (= res!25449 (= lt!18033 (ListLongMap!1178 Nil!1179)))))

(declare-fun lt!18029 () V!2269)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2863 0))(
  ( (array!2864 (arr!1375 (Array (_ BitVec 32) (_ BitVec 64))) (size!1554 (_ BitVec 32))) )
))
(declare-fun lt!18030 () array!2863)

(declare-datatypes ((ValueCell!683 0))(
  ( (ValueCellFull!683 (v!2058 V!2269)) (EmptyCell!683) )
))
(declare-datatypes ((array!2865 0))(
  ( (array!2866 (arr!1376 (Array (_ BitVec 32) ValueCell!683)) (size!1555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!346 0))(
  ( (LongMapFixedSize!347 (defaultEntry!1866 Int) (mask!5396 (_ BitVec 32)) (extraKeys!1757 (_ BitVec 32)) (zeroValue!1784 V!2269) (minValue!1784 V!2269) (_size!222 (_ BitVec 32)) (_keys!3409 array!2863) (_values!1849 array!2865) (_vacant!222 (_ BitVec 32))) )
))
(declare-fun map!810 (LongMapFixedSize!346) ListLongMap!1177)

(assert (=> b!42820 (= lt!18033 (map!810 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1183 0))(
  ( (Nil!1180) (Cons!1179 (h!1756 (_ BitVec 64)) (t!4158 List!1183)) )
))
(declare-fun arrayNoDuplicates!0 (array!2863 (_ BitVec 32) List!1183) Bool)

(assert (=> b!42820 (arrayNoDuplicates!0 lt!18030 #b00000000000000000000000000000000 Nil!1180)))

(declare-datatypes ((Unit!1169 0))(
  ( (Unit!1170) )
))
(declare-fun lt!18034 () Unit!1169)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2863 (_ BitVec 32) (_ BitVec 32) List!1183) Unit!1169)

(assert (=> b!42820 (= lt!18034 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2863 (_ BitVec 32)) Bool)

(assert (=> b!42820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18030 mask!853)))

(declare-fun lt!18031 () Unit!1169)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2863 (_ BitVec 32) (_ BitVec 32)) Unit!1169)

(assert (=> b!42820 (= lt!18031 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18030 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2863 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42820 (= (arrayCountValidKeys!0 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18032 () Unit!1169)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2863 (_ BitVec 32) (_ BitVec 32)) Unit!1169)

(assert (=> b!42820 (= lt!18032 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42820 (= lt!18030 (array!2864 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!244 (Int (_ BitVec 64)) V!2269)

(assert (=> b!42820 (= lt!18029 (dynLambda!244 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42821 () Bool)

(declare-fun res!25450 () Bool)

(assert (=> b!42821 (=> res!25450 e!27144)))

(declare-fun isEmpty!277 (List!1182) Bool)

(assert (=> b!42821 (= res!25450 (isEmpty!277 (toList!604 lt!18033)))))

(declare-fun b!42822 () Bool)

(assert (=> b!42822 (= e!27144 (bvsge mask!853 #b00000000000000000000000000000000))))

(assert (= (and start!6388 res!25448) b!42820))

(assert (= (and b!42820 (not res!25449)) b!42821))

(assert (= (and b!42821 (not res!25450)) b!42822))

(declare-fun b_lambda!2227 () Bool)

(assert (=> (not b_lambda!2227) (not b!42820)))

(declare-fun t!4156 () Bool)

(declare-fun tb!961 () Bool)

(assert (=> (and start!6388 (= defaultEntry!470 defaultEntry!470) t!4156) tb!961))

(declare-fun result!1665 () Bool)

(declare-fun tp_is_empty!1861 () Bool)

(assert (=> tb!961 (= result!1665 tp_is_empty!1861)))

(assert (=> b!42820 t!4156))

(declare-fun b_and!2603 () Bool)

(assert (= b_and!2601 (and (=> t!4156 result!1665) b_and!2603)))

(declare-fun m!36593 () Bool)

(assert (=> start!6388 m!36593))

(declare-fun m!36595 () Bool)

(assert (=> b!42820 m!36595))

(declare-fun m!36597 () Bool)

(assert (=> b!42820 m!36597))

(declare-fun m!36599 () Bool)

(assert (=> b!42820 m!36599))

(declare-fun m!36601 () Bool)

(assert (=> b!42820 m!36601))

(declare-fun m!36603 () Bool)

(assert (=> b!42820 m!36603))

(declare-fun m!36605 () Bool)

(assert (=> b!42820 m!36605))

(declare-fun m!36607 () Bool)

(assert (=> b!42820 m!36607))

(declare-fun m!36609 () Bool)

(assert (=> b!42820 m!36609))

(declare-fun m!36611 () Bool)

(assert (=> b!42821 m!36611))

(push 1)

(assert b_and!2603)

(assert (not b_next!1471))

(assert (not b!42821))

(assert tp_is_empty!1861)

(assert (not b!42820))

(assert (not start!6388))

(assert (not b_lambda!2227))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2603)

(assert (not b_next!1471))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2233 () Bool)

(assert (= b_lambda!2227 (or (and start!6388 b_free!1471) b_lambda!2233)))

(push 1)

(assert b_and!2603)

(assert (not b_next!1471))

(assert (not b!42821))

(assert tp_is_empty!1861)

(assert (not b_lambda!2233))

(assert (not b!42820))

(assert (not start!6388))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2603)

(assert (not b_next!1471))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7839 () Bool)

(assert (=> d!7839 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6388 d!7839))

(declare-fun d!7849 () Bool)

(assert (=> d!7849 (= (isEmpty!277 (toList!604 lt!18033)) (is-Nil!1179 (toList!604 lt!18033)))))

(assert (=> b!42821 d!7849))

(declare-fun d!7851 () Bool)

(assert (=> d!7851 (= (arrayCountValidKeys!0 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18076 () Unit!1169)

(declare-fun choose!59 (array!2863 (_ BitVec 32) (_ BitVec 32)) Unit!1169)

(assert (=> d!7851 (= lt!18076 (choose!59 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7851 (bvslt (size!1554 lt!18030) #b01111111111111111111111111111111)))

(assert (=> d!7851 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18076)))

(declare-fun bs!1905 () Bool)

(assert (= bs!1905 d!7851))

(assert (=> bs!1905 m!36603))

(declare-fun m!36657 () Bool)

(assert (=> bs!1905 m!36657))

(assert (=> b!42820 d!7851))

(declare-fun b!42875 () Bool)

(declare-fun e!27176 () Bool)

(declare-fun call!3376 () Bool)

(assert (=> b!42875 (= e!27176 call!3376)))

(declare-fun b!42876 () Bool)

(declare-fun e!27175 () Bool)

(assert (=> b!42876 (= e!27175 call!3376)))

(declare-fun d!7855 () Bool)

(declare-fun res!25478 () Bool)

(declare-fun e!27177 () Bool)

(assert (=> d!7855 (=> res!25478 e!27177)))

(assert (=> d!7855 (= res!25478 (bvsge #b00000000000000000000000000000000 (size!1554 lt!18030)))))

(assert (=> d!7855 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18030 mask!853) e!27177)))

(declare-fun b!42877 () Bool)

(assert (=> b!42877 (= e!27177 e!27176)))

(declare-fun c!5436 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42877 (= c!5436 (validKeyInArray!0 (select (arr!1375 lt!18030) #b00000000000000000000000000000000)))))

(declare-fun bm!3373 () Bool)

(assert (=> bm!3373 (= call!3376 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18030 mask!853))))

(declare-fun b!42878 () Bool)

(assert (=> b!42878 (= e!27176 e!27175)))

(declare-fun lt!18097 () (_ BitVec 64))

(assert (=> b!42878 (= lt!18097 (select (arr!1375 lt!18030) #b00000000000000000000000000000000))))

(declare-fun lt!18095 () Unit!1169)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2863 (_ BitVec 64) (_ BitVec 32)) Unit!1169)

(assert (=> b!42878 (= lt!18095 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18030 lt!18097 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42878 (arrayContainsKey!0 lt!18030 lt!18097 #b00000000000000000000000000000000)))

(declare-fun lt!18096 () Unit!1169)

(assert (=> b!42878 (= lt!18096 lt!18095)))

(declare-fun res!25477 () Bool)

(declare-datatypes ((SeekEntryResult!204 0))(
  ( (MissingZero!204 (index!2938 (_ BitVec 32))) (Found!204 (index!2939 (_ BitVec 32))) (Intermediate!204 (undefined!1016 Bool) (index!2940 (_ BitVec 32)) (x!8212 (_ BitVec 32))) (Undefined!204) (MissingVacant!204 (index!2941 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2863 (_ BitVec 32)) SeekEntryResult!204)

(assert (=> b!42878 (= res!25477 (= (seekEntryOrOpen!0 (select (arr!1375 lt!18030) #b00000000000000000000000000000000) lt!18030 mask!853) (Found!204 #b00000000000000000000000000000000)))))

(assert (=> b!42878 (=> (not res!25477) (not e!27175))))

(assert (= (and d!7855 (not res!25478)) b!42877))

(assert (= (and b!42877 c!5436) b!42878))

(assert (= (and b!42877 (not c!5436)) b!42875))

(assert (= (and b!42878 res!25477) b!42876))

(assert (= (or b!42876 b!42875) bm!3373))

(declare-fun m!36667 () Bool)

(assert (=> b!42877 m!36667))

(assert (=> b!42877 m!36667))

(declare-fun m!36669 () Bool)

(assert (=> b!42877 m!36669))

(declare-fun m!36671 () Bool)

(assert (=> bm!3373 m!36671))

(assert (=> b!42878 m!36667))

(declare-fun m!36673 () Bool)

(assert (=> b!42878 m!36673))

(declare-fun m!36675 () Bool)

(assert (=> b!42878 m!36675))

(assert (=> b!42878 m!36667))

(declare-fun m!36677 () Bool)

(assert (=> b!42878 m!36677))

(assert (=> b!42820 d!7855))

(declare-fun d!7865 () Bool)

(declare-fun res!25487 () Bool)

(declare-fun e!27193 () Bool)

(assert (=> d!7865 (=> res!25487 e!27193)))

(assert (=> d!7865 (= res!25487 (bvsge #b00000000000000000000000000000000 (size!1554 lt!18030)))))

(assert (=> d!7865 (= (arrayNoDuplicates!0 lt!18030 #b00000000000000000000000000000000 Nil!1180) e!27193)))

(declare-fun b!42901 () Bool)

(declare-fun e!27196 () Bool)

(declare-fun e!27194 () Bool)

(assert (=> b!42901 (= e!27196 e!27194)))

(declare-fun c!5444 () Bool)

(assert (=> b!42901 (= c!5444 (validKeyInArray!0 (select (arr!1375 lt!18030) #b00000000000000000000000000000000)))))

(declare-fun b!42902 () Bool)

(assert (=> b!42902 (= e!27193 e!27196)))

(declare-fun res!25489 () Bool)

(assert (=> b!42902 (=> (not res!25489) (not e!27196))))

(declare-fun e!27195 () Bool)

(assert (=> b!42902 (= res!25489 (not e!27195))))

(declare-fun res!25488 () Bool)

(assert (=> b!42902 (=> (not res!25488) (not e!27195))))

(assert (=> b!42902 (= res!25488 (validKeyInArray!0 (select (arr!1375 lt!18030) #b00000000000000000000000000000000)))))

(declare-fun b!42903 () Bool)

(declare-fun call!3382 () Bool)

(assert (=> b!42903 (= e!27194 call!3382)))

(declare-fun bm!3379 () Bool)

(assert (=> bm!3379 (= call!3382 (arrayNoDuplicates!0 lt!18030 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5444 (Cons!1179 (select (arr!1375 lt!18030) #b00000000000000000000000000000000) Nil!1180) Nil!1180)))))

(declare-fun b!42904 () Bool)

(assert (=> b!42904 (= e!27194 call!3382)))

(declare-fun b!42905 () Bool)

(declare-fun contains!561 (List!1183 (_ BitVec 64)) Bool)

(assert (=> b!42905 (= e!27195 (contains!561 Nil!1180 (select (arr!1375 lt!18030) #b00000000000000000000000000000000)))))

(assert (= (and d!7865 (not res!25487)) b!42902))

(assert (= (and b!42902 res!25488) b!42905))

(assert (= (and b!42902 res!25489) b!42901))

(assert (= (and b!42901 c!5444) b!42904))

(assert (= (and b!42901 (not c!5444)) b!42903))

(assert (= (or b!42904 b!42903) bm!3379))

(assert (=> b!42901 m!36667))

(assert (=> b!42901 m!36667))

(assert (=> b!42901 m!36669))

(assert (=> b!42902 m!36667))

(assert (=> b!42902 m!36667))

(assert (=> b!42902 m!36669))

(assert (=> bm!3379 m!36667))

(declare-fun m!36693 () Bool)

(assert (=> bm!3379 m!36693))

(assert (=> b!42905 m!36667))

(assert (=> b!42905 m!36667))

(declare-fun m!36695 () Bool)

(assert (=> b!42905 m!36695))

(assert (=> b!42820 d!7865))

(declare-fun d!7871 () Bool)

(declare-fun getCurrentListMap!348 (array!2863 array!2865 (_ BitVec 32) (_ BitVec 32) V!2269 V!2269 (_ BitVec 32) Int) ListLongMap!1177)

(assert (=> d!7871 (= (map!810 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (getCurrentListMap!348 (_keys!3409 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_values!1849 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5396 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (extraKeys!1757 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (zeroValue!1784 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (minValue!1784 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1866 (LongMapFixedSize!347 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18029 lt!18029 #b00000000000000000000000000000000 lt!18030 (array!2866 ((as const (Array (_ BitVec 32) ValueCell!683)) EmptyCell!683) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun bs!1909 () Bool)

(assert (= bs!1909 d!7871))

(declare-fun m!36705 () Bool)

(assert (=> bs!1909 m!36705))

(assert (=> b!42820 d!7871))

(declare-fun d!7879 () Bool)

(assert (=> d!7879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18030 mask!853)))

(declare-fun lt!18121 () Unit!1169)

(declare-fun choose!34 (array!2863 (_ BitVec 32) (_ BitVec 32)) Unit!1169)

(assert (=> d!7879 (= lt!18121 (choose!34 lt!18030 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7879 (validMask!0 mask!853)))

(assert (=> d!7879 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18030 mask!853 #b00000000000000000000000000000000) lt!18121)))

(declare-fun bs!1911 () Bool)

(assert (= bs!1911 d!7879))

(assert (=> bs!1911 m!36595))

(declare-fun m!36709 () Bool)

(assert (=> bs!1911 m!36709))

(assert (=> bs!1911 m!36593))

(assert (=> b!42820 d!7879))

(declare-fun d!7883 () Bool)

(assert (=> d!7883 (arrayNoDuplicates!0 lt!18030 #b00000000000000000000000000000000 Nil!1180)))

(declare-fun lt!18127 () Unit!1169)

(declare-fun choose!111 (array!2863 (_ BitVec 32) (_ BitVec 32) List!1183) Unit!1169)

(assert (=> d!7883 (= lt!18127 (choose!111 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1180))))

(assert (=> d!7883 (= (size!1554 lt!18030) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7883 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1180) lt!18127)))

(declare-fun bs!1912 () Bool)

(assert (= bs!1912 d!7883))

(assert (=> bs!1912 m!36605))

(declare-fun m!36719 () Bool)

(assert (=> bs!1912 m!36719))

(assert (=> b!42820 d!7883))

(declare-fun bm!3392 () Bool)

(declare-fun call!3395 () (_ BitVec 32))

(assert (=> bm!3392 (= call!3395 (arrayCountValidKeys!0 lt!18030 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!7887 () Bool)

(declare-fun lt!18130 () (_ BitVec 32))

(assert (=> d!7887 (and (bvsge lt!18130 #b00000000000000000000000000000000) (bvsle lt!18130 (bvsub (size!1554 lt!18030) #b00000000000000000000000000000000)))))

(declare-fun e!27236 () (_ BitVec 32))

(assert (=> d!7887 (= lt!18130 e!27236)))

(declare-fun c!5460 () Bool)

(assert (=> d!7887 (= c!5460 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7887 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1554 lt!18030)))))

(assert (=> d!7887 (= (arrayCountValidKeys!0 lt!18030 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18130)))

(declare-fun b!42960 () Bool)

(assert (=> b!42960 (= e!27236 #b00000000000000000000000000000000)))

(declare-fun b!42961 () Bool)

(declare-fun e!27237 () (_ BitVec 32))

(assert (=> b!42961 (= e!27237 (bvadd #b00000000000000000000000000000001 call!3395))))

(declare-fun b!42962 () Bool)

(assert (=> b!42962 (= e!27236 e!27237)))

(declare-fun c!5461 () Bool)

(assert (=> b!42962 (= c!5461 (validKeyInArray!0 (select (arr!1375 lt!18030) #b00000000000000000000000000000000)))))

(declare-fun b!42963 () Bool)

(assert (=> b!42963 (= e!27237 call!3395)))

(assert (= (and d!7887 c!5460) b!42960))

(assert (= (and d!7887 (not c!5460)) b!42962))

(assert (= (and b!42962 c!5461) b!42961))

(assert (= (and b!42962 (not c!5461)) b!42963))

(assert (= (or b!42961 b!42963) bm!3392))

(declare-fun m!36725 () Bool)

(assert (=> bm!3392 m!36725))

(assert (=> b!42962 m!36667))

(assert (=> b!42962 m!36667))

(assert (=> b!42962 m!36669))

(assert (=> b!42820 d!7887))

(push 1)

(assert (not bm!3392))

(assert b_and!2603)

(assert (not d!7883))

(assert (not b!42902))

(assert tp_is_empty!1861)

(assert (not b!42901))

(assert (not b!42877))

(assert (not b_lambda!2233))

(assert (not b!42878))

(assert (not b!42905))

(assert (not d!7851))

(assert (not b_next!1471))

(assert (not d!7879))

(assert (not d!7871))

(assert (not b!42962))

(assert (not bm!3379))

(assert (not bm!3373))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2603)

(assert (not b_next!1471))

(check-sat)

