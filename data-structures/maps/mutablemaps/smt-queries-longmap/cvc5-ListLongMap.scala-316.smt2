; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5506 () Bool)

(assert start!5506)

(declare-fun b_free!1357 () Bool)

(declare-fun b_next!1357 () Bool)

(assert (=> start!5506 (= b_free!1357 (not b_next!1357))))

(declare-fun tp!5723 () Bool)

(declare-fun b_and!2337 () Bool)

(assert (=> start!5506 (= tp!5723 b_and!2337)))

(declare-fun res!23557 () Bool)

(declare-fun e!24888 () Bool)

(assert (=> start!5506 (=> (not res!23557) (not e!24888))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5506 (= res!23557 (validMask!0 mask!853))))

(assert (=> start!5506 e!24888))

(assert (=> start!5506 true))

(assert (=> start!5506 tp!5723))

(declare-fun b!39194 () Bool)

(declare-fun e!24887 () Bool)

(assert (=> b!39194 (= e!24888 (not e!24887))))

(declare-fun res!23556 () Bool)

(assert (=> b!39194 (=> res!23556 e!24887)))

(declare-datatypes ((array!2575 0))(
  ( (array!2576 (arr!1231 (Array (_ BitVec 32) (_ BitVec 64))) (size!1353 (_ BitVec 32))) )
))
(declare-datatypes ((V!2089 0))(
  ( (V!2090 (val!912 Int)) )
))
(declare-datatypes ((ValueCell!626 0))(
  ( (ValueCellFull!626 (v!1983 V!2089)) (EmptyCell!626) )
))
(declare-datatypes ((array!2577 0))(
  ( (array!2578 (arr!1232 (Array (_ BitVec 32) ValueCell!626)) (size!1354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!232 0))(
  ( (LongMapFixedSize!233 (defaultEntry!1794 Int) (mask!5141 (_ BitVec 32)) (extraKeys!1685 (_ BitVec 32)) (zeroValue!1712 V!2089) (minValue!1712 V!2089) (_size!165 (_ BitVec 32)) (_keys!3265 array!2575) (_values!1777 array!2577) (_vacant!165 (_ BitVec 32))) )
))
(declare-fun lt!14706 () LongMapFixedSize!232)

(declare-datatypes ((tuple2!1482 0))(
  ( (tuple2!1483 (_1!751 (_ BitVec 64)) (_2!751 V!2089)) )
))
(declare-datatypes ((List!1062 0))(
  ( (Nil!1059) (Cons!1058 (h!1629 tuple2!1482) (t!3911 List!1062)) )
))
(declare-datatypes ((ListLongMap!1063 0))(
  ( (ListLongMap!1064 (toList!547 List!1062)) )
))
(declare-fun map!687 (LongMapFixedSize!232) ListLongMap!1063)

(assert (=> b!39194 (= res!23556 (= (map!687 lt!14706) (ListLongMap!1064 Nil!1059)))))

(declare-fun lt!14704 () array!2575)

(declare-datatypes ((List!1063 0))(
  ( (Nil!1060) (Cons!1059 (h!1630 (_ BitVec 64)) (t!3912 List!1063)) )
))
(declare-fun arrayNoDuplicates!0 (array!2575 (_ BitVec 32) List!1063) Bool)

(assert (=> b!39194 (arrayNoDuplicates!0 lt!14704 #b00000000000000000000000000000000 Nil!1060)))

(declare-datatypes ((Unit!960 0))(
  ( (Unit!961) )
))
(declare-fun lt!14703 () Unit!960)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2575 (_ BitVec 32) (_ BitVec 32) List!1063) Unit!960)

(assert (=> b!39194 (= lt!14703 (lemmaArrayNoDuplicatesInAll0Array!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2575 (_ BitVec 32)) Bool)

(assert (=> b!39194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14704 mask!853)))

(declare-fun lt!14707 () Unit!960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2575 (_ BitVec 32) (_ BitVec 32)) Unit!960)

(assert (=> b!39194 (= lt!14707 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14704 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2575 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!39194 (= (arrayCountValidKeys!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14702 () Unit!960)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2575 (_ BitVec 32) (_ BitVec 32)) Unit!960)

(assert (=> b!39194 (= lt!14702 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!14705 () V!2089)

(assert (=> b!39194 (= lt!14706 (LongMapFixedSize!233 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14705 lt!14705 #b00000000000000000000000000000000 lt!14704 (array!2578 ((as const (Array (_ BitVec 32) ValueCell!626)) EmptyCell!626) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))

(assert (=> b!39194 (= lt!14704 (array!2576 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!187 (Int (_ BitVec 64)) V!2089)

(assert (=> b!39194 (= lt!14705 (dynLambda!187 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39195 () Bool)

(declare-fun valid!119 (LongMapFixedSize!232) Bool)

(assert (=> b!39195 (= e!24887 (valid!119 lt!14706))))

(assert (= (and start!5506 res!23557) b!39194))

(assert (= (and b!39194 (not res!23556)) b!39195))

(declare-fun b_lambda!2041 () Bool)

(assert (=> (not b_lambda!2041) (not b!39194)))

(declare-fun t!3910 () Bool)

(declare-fun tb!835 () Bool)

(assert (=> (and start!5506 (= defaultEntry!470 defaultEntry!470) t!3910) tb!835))

(declare-fun result!1425 () Bool)

(declare-fun tp_is_empty!1747 () Bool)

(assert (=> tb!835 (= result!1425 tp_is_empty!1747)))

(assert (=> b!39194 t!3910))

(declare-fun b_and!2339 () Bool)

(assert (= b_and!2337 (and (=> t!3910 result!1425) b_and!2339)))

(declare-fun m!31901 () Bool)

(assert (=> start!5506 m!31901))

(declare-fun m!31903 () Bool)

(assert (=> b!39194 m!31903))

(declare-fun m!31905 () Bool)

(assert (=> b!39194 m!31905))

(declare-fun m!31907 () Bool)

(assert (=> b!39194 m!31907))

(declare-fun m!31909 () Bool)

(assert (=> b!39194 m!31909))

(declare-fun m!31911 () Bool)

(assert (=> b!39194 m!31911))

(declare-fun m!31913 () Bool)

(assert (=> b!39194 m!31913))

(declare-fun m!31915 () Bool)

(assert (=> b!39194 m!31915))

(declare-fun m!31917 () Bool)

(assert (=> b!39194 m!31917))

(declare-fun m!31919 () Bool)

(assert (=> b!39195 m!31919))

(push 1)

(assert (not b!39195))

(assert (not b_lambda!2041))

(assert (not start!5506))

(assert (not b!39194))

(assert b_and!2339)

(assert (not b_next!1357))

(assert tp_is_empty!1747)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2339)

(assert (not b_next!1357))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2047 () Bool)

(assert (= b_lambda!2041 (or (and start!5506 b_free!1357) b_lambda!2047)))

(push 1)

(assert (not b!39195))

(assert (not start!5506))

(assert (not b!39194))

(assert (not b_lambda!2047))

(assert b_and!2339)

(assert (not b_next!1357))

(assert tp_is_empty!1747)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2339)

(assert (not b_next!1357))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6549 () Bool)

(assert (=> d!6549 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5506 d!6549))

(declare-fun d!6555 () Bool)

(declare-fun getCurrentListMap!308 (array!2575 array!2577 (_ BitVec 32) (_ BitVec 32) V!2089 V!2089 (_ BitVec 32) Int) ListLongMap!1063)

(assert (=> d!6555 (= (map!687 lt!14706) (getCurrentListMap!308 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)))))

(declare-fun bs!1627 () Bool)

(assert (= bs!1627 d!6555))

(declare-fun m!31961 () Bool)

(assert (=> bs!1627 m!31961))

(assert (=> b!39194 d!6555))

(declare-fun b!39232 () Bool)

(declare-fun e!24917 () Bool)

(declare-fun e!24915 () Bool)

(assert (=> b!39232 (= e!24917 e!24915)))

(declare-fun c!4614 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!39232 (= c!4614 (validKeyInArray!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun b!39234 () Bool)

(declare-fun e!24916 () Bool)

(assert (=> b!39234 (= e!24915 e!24916)))

(declare-fun lt!14753 () (_ BitVec 64))

(assert (=> b!39234 (= lt!14753 (select (arr!1231 lt!14704) #b00000000000000000000000000000000))))

(declare-fun lt!14754 () Unit!960)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2575 (_ BitVec 64) (_ BitVec 32)) Unit!960)

(assert (=> b!39234 (= lt!14754 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14704 lt!14753 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!39234 (arrayContainsKey!0 lt!14704 lt!14753 #b00000000000000000000000000000000)))

(declare-fun lt!14755 () Unit!960)

(assert (=> b!39234 (= lt!14755 lt!14754)))

(declare-fun res!23580 () Bool)

(declare-datatypes ((SeekEntryResult!180 0))(
  ( (MissingZero!180 (index!2842 (_ BitVec 32))) (Found!180 (index!2843 (_ BitVec 32))) (Intermediate!180 (undefined!992 Bool) (index!2844 (_ BitVec 32)) (x!7666 (_ BitVec 32))) (Undefined!180) (MissingVacant!180 (index!2845 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2575 (_ BitVec 32)) SeekEntryResult!180)

(assert (=> b!39234 (= res!23580 (= (seekEntryOrOpen!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853) (Found!180 #b00000000000000000000000000000000)))))

(assert (=> b!39234 (=> (not res!23580) (not e!24916))))

(declare-fun d!6561 () Bool)

(declare-fun res!23581 () Bool)

(assert (=> d!6561 (=> res!23581 e!24917)))

(assert (=> d!6561 (= res!23581 (bvsge #b00000000000000000000000000000000 (size!1353 lt!14704)))))

(assert (=> d!6561 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14704 mask!853) e!24917)))

(declare-fun b!39233 () Bool)

(declare-fun call!2968 () Bool)

(assert (=> b!39233 (= e!24915 call!2968)))

(declare-fun bm!2965 () Bool)

(assert (=> bm!2965 (= call!2968 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14704 mask!853))))

(declare-fun b!39235 () Bool)

(assert (=> b!39235 (= e!24916 call!2968)))

(assert (= (and d!6561 (not res!23581)) b!39232))

(assert (= (and b!39232 c!4614) b!39234))

(assert (= (and b!39232 (not c!4614)) b!39233))

(assert (= (and b!39234 res!23580) b!39235))

(assert (= (or b!39235 b!39233) bm!2965))

(declare-fun m!31967 () Bool)

(assert (=> b!39232 m!31967))

(assert (=> b!39232 m!31967))

(declare-fun m!31969 () Bool)

(assert (=> b!39232 m!31969))

(assert (=> b!39234 m!31967))

(declare-fun m!31971 () Bool)

(assert (=> b!39234 m!31971))

(declare-fun m!31973 () Bool)

(assert (=> b!39234 m!31973))

(assert (=> b!39234 m!31967))

(declare-fun m!31975 () Bool)

(assert (=> b!39234 m!31975))

(declare-fun m!31977 () Bool)

(assert (=> bm!2965 m!31977))

(assert (=> b!39194 d!6561))

(declare-fun b!39249 () Bool)

(declare-fun e!24927 () (_ BitVec 32))

(declare-fun call!2972 () (_ BitVec 32))

(assert (=> b!39249 (= e!24927 (bvadd #b00000000000000000000000000000001 call!2972))))

(declare-fun d!6567 () Bool)

(declare-fun lt!14770 () (_ BitVec 32))

(assert (=> d!6567 (and (bvsge lt!14770 #b00000000000000000000000000000000) (bvsle lt!14770 (bvsub (size!1353 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun e!24926 () (_ BitVec 32))

(assert (=> d!6567 (= lt!14770 e!24926)))

(declare-fun c!4620 () Bool)

(assert (=> d!6567 (= c!4620 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6567 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1353 lt!14704)))))

(assert (=> d!6567 (= (arrayCountValidKeys!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14770)))

(declare-fun b!39250 () Bool)

(assert (=> b!39250 (= e!24926 e!24927)))

(declare-fun c!4621 () Bool)

(assert (=> b!39250 (= c!4621 (validKeyInArray!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun b!39251 () Bool)

(assert (=> b!39251 (= e!24927 call!2972)))

(declare-fun b!39252 () Bool)

(assert (=> b!39252 (= e!24926 #b00000000000000000000000000000000)))

(declare-fun bm!2969 () Bool)

(assert (=> bm!2969 (= call!2972 (arrayCountValidKeys!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!6567 c!4620) b!39252))

(assert (= (and d!6567 (not c!4620)) b!39250))

(assert (= (and b!39250 c!4621) b!39249))

(assert (= (and b!39250 (not c!4621)) b!39251))

(assert (= (or b!39249 b!39251) bm!2969))

(assert (=> b!39250 m!31967))

(assert (=> b!39250 m!31967))

(assert (=> b!39250 m!31969))

(declare-fun m!31995 () Bool)

(assert (=> bm!2969 m!31995))

(assert (=> b!39194 d!6567))

(declare-fun b!39287 () Bool)

(declare-fun e!24948 () Bool)

(declare-fun call!2981 () Bool)

(assert (=> b!39287 (= e!24948 call!2981)))

(declare-fun b!39288 () Bool)

(assert (=> b!39288 (= e!24948 call!2981)))

(declare-fun d!6579 () Bool)

(declare-fun res!23593 () Bool)

(declare-fun e!24949 () Bool)

(assert (=> d!6579 (=> res!23593 e!24949)))

(assert (=> d!6579 (= res!23593 (bvsge #b00000000000000000000000000000000 (size!1353 lt!14704)))))

(assert (=> d!6579 (= (arrayNoDuplicates!0 lt!14704 #b00000000000000000000000000000000 Nil!1060) e!24949)))

(declare-fun b!39289 () Bool)

(declare-fun e!24950 () Bool)

(assert (=> b!39289 (= e!24949 e!24950)))

(declare-fun res!23592 () Bool)

(assert (=> b!39289 (=> (not res!23592) (not e!24950))))

(declare-fun e!24951 () Bool)

(assert (=> b!39289 (= res!23592 (not e!24951))))

(declare-fun res!23591 () Bool)

(assert (=> b!39289 (=> (not res!23591) (not e!24951))))

(assert (=> b!39289 (= res!23591 (validKeyInArray!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun bm!2978 () Bool)

(declare-fun c!4636 () Bool)

(assert (=> bm!2978 (= call!2981 (arrayNoDuplicates!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)))))

(declare-fun b!39290 () Bool)

(assert (=> b!39290 (= e!24950 e!24948)))

(assert (=> b!39290 (= c!4636 (validKeyInArray!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun b!39291 () Bool)

(declare-fun contains!505 (List!1063 (_ BitVec 64)) Bool)

(assert (=> b!39291 (= e!24951 (contains!505 Nil!1060 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(assert (= (and d!6579 (not res!23593)) b!39289))

(assert (= (and b!39289 res!23591) b!39291))

(assert (= (and b!39289 res!23592) b!39290))

(assert (= (and b!39290 c!4636) b!39288))

(assert (= (and b!39290 (not c!4636)) b!39287))

(assert (= (or b!39288 b!39287) bm!2978))

(assert (=> b!39289 m!31967))

(assert (=> b!39289 m!31967))

(assert (=> b!39289 m!31969))

(assert (=> bm!2978 m!31967))

(declare-fun m!32005 () Bool)

(assert (=> bm!2978 m!32005))

(assert (=> b!39290 m!31967))

(assert (=> b!39290 m!31967))

(assert (=> b!39290 m!31969))

(assert (=> b!39291 m!31967))

(assert (=> b!39291 m!31967))

(declare-fun m!32007 () Bool)

(assert (=> b!39291 m!32007))

(assert (=> b!39194 d!6579))

(declare-fun d!6585 () Bool)

(assert (=> d!6585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14704 mask!853)))

(declare-fun lt!14782 () Unit!960)

(declare-fun choose!34 (array!2575 (_ BitVec 32) (_ BitVec 32)) Unit!960)

(assert (=> d!6585 (= lt!14782 (choose!34 lt!14704 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!6585 (validMask!0 mask!853)))

(assert (=> d!6585 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14704 mask!853 #b00000000000000000000000000000000) lt!14782)))

(declare-fun bs!1635 () Bool)

(assert (= bs!1635 d!6585))

(assert (=> bs!1635 m!31905))

(declare-fun m!32011 () Bool)

(assert (=> bs!1635 m!32011))

(assert (=> bs!1635 m!31901))

(assert (=> b!39194 d!6585))

(declare-fun d!6589 () Bool)

(assert (=> d!6589 (arrayNoDuplicates!0 lt!14704 #b00000000000000000000000000000000 Nil!1060)))

(declare-fun lt!14785 () Unit!960)

(declare-fun choose!111 (array!2575 (_ BitVec 32) (_ BitVec 32) List!1063) Unit!960)

(assert (=> d!6589 (= lt!14785 (choose!111 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1060))))

(assert (=> d!6589 (= (size!1353 lt!14704) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!6589 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1060) lt!14785)))

(declare-fun bs!1637 () Bool)

(assert (= bs!1637 d!6589))

(assert (=> bs!1637 m!31913))

(declare-fun m!32015 () Bool)

(assert (=> bs!1637 m!32015))

(assert (=> b!39194 d!6589))

(declare-fun d!6593 () Bool)

(assert (=> d!6593 (= (arrayCountValidKeys!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14788 () Unit!960)

(declare-fun choose!59 (array!2575 (_ BitVec 32) (_ BitVec 32)) Unit!960)

(assert (=> d!6593 (= lt!14788 (choose!59 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6593 (bvslt (size!1353 lt!14704) #b01111111111111111111111111111111)))

(assert (=> d!6593 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14788)))

(declare-fun bs!1638 () Bool)

(assert (= bs!1638 d!6593))

(assert (=> bs!1638 m!31915))

(declare-fun m!32021 () Bool)

(assert (=> bs!1638 m!32021))

(assert (=> b!39194 d!6593))

(declare-fun d!6597 () Bool)

(declare-fun res!23619 () Bool)

(declare-fun e!24981 () Bool)

(assert (=> d!6597 (=> (not res!23619) (not e!24981))))

(declare-fun simpleValid!23 (LongMapFixedSize!232) Bool)

(assert (=> d!6597 (= res!23619 (simpleValid!23 lt!14706))))

(assert (=> d!6597 (= (valid!119 lt!14706) e!24981)))

(declare-fun b!39333 () Bool)

(declare-fun res!23620 () Bool)

(assert (=> b!39333 (=> (not res!23620) (not e!24981))))

(assert (=> b!39333 (= res!23620 (= (arrayCountValidKeys!0 (_keys!3265 lt!14706) #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))) (_size!165 lt!14706)))))

(declare-fun b!39334 () Bool)

(declare-fun res!23621 () Bool)

(assert (=> b!39334 (=> (not res!23621) (not e!24981))))

(assert (=> b!39334 (= res!23621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3265 lt!14706) (mask!5141 lt!14706)))))

(declare-fun b!39335 () Bool)

(assert (=> b!39335 (= e!24981 (arrayNoDuplicates!0 (_keys!3265 lt!14706) #b00000000000000000000000000000000 Nil!1060))))

(assert (= (and d!6597 res!23619) b!39333))

(assert (= (and b!39333 res!23620) b!39334))

(assert (= (and b!39334 res!23621) b!39335))

(declare-fun m!32031 () Bool)

(assert (=> d!6597 m!32031))

(declare-fun m!32033 () Bool)

(assert (=> b!39333 m!32033))

(declare-fun m!32035 () Bool)

(assert (=> b!39334 m!32035))

(declare-fun m!32037 () Bool)

(assert (=> b!39335 m!32037))

(assert (=> b!39195 d!6597))

(push 1)

(assert (not b!39232))

(assert (not bm!2969))

(assert (not b!39333))

(assert (not d!6585))

(assert (not d!6597))

(assert (not b!39334))

(assert (not bm!2978))

(assert (not d!6589))

(assert (not b!39291))

(assert (not b!39290))

(assert (not b!39335))

(assert (not d!6593))

(assert (not b_next!1357))

(assert tp_is_empty!1747)

(assert (not b_lambda!2047))

(assert (not bm!2965))

(assert (not b!39234))

(assert (not b!39289))

(assert (not b!39250))

(assert (not d!6555))

(assert b_and!2339)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2339)

(assert (not b_next!1357))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!39464 () Bool)

(declare-fun e!25063 () Bool)

(declare-fun lt!14888 () ListLongMap!1063)

(declare-fun apply!52 (ListLongMap!1063 (_ BitVec 64)) V!2089)

(assert (=> b!39464 (= e!25063 (= (apply!52 lt!14888 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1712 lt!14706)))))

(declare-fun bm!3007 () Bool)

(declare-fun call!3010 () ListLongMap!1063)

(declare-fun call!3015 () ListLongMap!1063)

(assert (=> bm!3007 (= call!3010 call!3015)))

(declare-fun b!39465 () Bool)

(declare-fun e!25062 () Bool)

(assert (=> b!39465 (= e!25062 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun d!6603 () Bool)

(declare-fun e!25059 () Bool)

(assert (=> d!6603 e!25059))

(declare-fun res!23701 () Bool)

(assert (=> d!6603 (=> (not res!23701) (not e!25059))))

(assert (=> d!6603 (= res!23701 (or (bvsge #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))))

(declare-fun lt!14892 () ListLongMap!1063)

(assert (=> d!6603 (= lt!14888 lt!14892)))

(declare-fun lt!14891 () Unit!960)

(declare-fun e!25069 () Unit!960)

(assert (=> d!6603 (= lt!14891 e!25069)))

(declare-fun c!4676 () Bool)

(assert (=> d!6603 (= c!4676 e!25062)))

(declare-fun res!23706 () Bool)

(assert (=> d!6603 (=> (not res!23706) (not e!25062))))

(assert (=> d!6603 (= res!23706 (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(declare-fun e!25060 () ListLongMap!1063)

(assert (=> d!6603 (= lt!14892 e!25060)))

(declare-fun c!4674 () Bool)

(assert (=> d!6603 (= c!4674 (and (not (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!6603 (validMask!0 (mask!5141 lt!14706))))

(assert (=> d!6603 (= (getCurrentListMap!308 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)) lt!14888)))

(declare-fun b!39466 () Bool)

(declare-fun e!25066 () Bool)

(declare-fun e!25065 () Bool)

(assert (=> b!39466 (= e!25066 e!25065)))

(declare-fun res!23704 () Bool)

(assert (=> b!39466 (=> (not res!23704) (not e!25065))))

(declare-fun contains!507 (ListLongMap!1063 (_ BitVec 64)) Bool)

(assert (=> b!39466 (= res!23704 (contains!507 lt!14888 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(assert (=> b!39466 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(declare-fun b!39467 () Bool)

(declare-fun e!25061 () Bool)

(assert (=> b!39467 (= e!25061 (= (apply!52 lt!14888 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1712 lt!14706)))))

(declare-fun b!39468 () Bool)

(declare-fun get!689 (ValueCell!626 V!2089) V!2089)

(assert (=> b!39468 (= e!25065 (= (apply!52 lt!14888 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)) (get!689 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000) (dynLambda!187 (defaultEntry!1794 lt!14706) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39468 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1354 (_values!1777 lt!14706))))))

(assert (=> b!39468 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(declare-fun b!39469 () Bool)

(declare-fun e!25064 () ListLongMap!1063)

(declare-fun call!3014 () ListLongMap!1063)

(assert (=> b!39469 (= e!25064 call!3014)))

(declare-fun b!39470 () Bool)

(declare-fun call!3013 () ListLongMap!1063)

(declare-fun +!61 (ListLongMap!1063 tuple2!1482) ListLongMap!1063)

(assert (=> b!39470 (= e!25060 (+!61 call!3013 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))))

(declare-fun bm!3008 () Bool)

(declare-fun call!3012 () ListLongMap!1063)

(assert (=> bm!3008 (= call!3012 call!3010)))

(declare-fun b!39471 () Bool)

(assert (=> b!39471 (= e!25060 e!25064)))

(declare-fun c!4675 () Bool)

(assert (=> b!39471 (= c!4675 (and (not (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3009 () Bool)

(assert (=> bm!3009 (= call!3014 call!3013)))

(declare-fun b!39472 () Bool)

(declare-fun e!25067 () ListLongMap!1063)

(assert (=> b!39472 (= e!25067 call!3014)))

(declare-fun bm!3010 () Bool)

(declare-fun call!3011 () Bool)

(assert (=> bm!3010 (= call!3011 (contains!507 lt!14888 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!3011 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!30 (array!2575 array!2577 (_ BitVec 32) (_ BitVec 32) V!2089 V!2089 (_ BitVec 32) Int) ListLongMap!1063)

(assert (=> bm!3011 (= call!3015 (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)))))

(declare-fun bm!3012 () Bool)

(declare-fun call!3016 () Bool)

(assert (=> bm!3012 (= call!3016 (contains!507 lt!14888 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39473 () Bool)

(declare-fun lt!14886 () Unit!960)

(assert (=> b!39473 (= e!25069 lt!14886)))

(declare-fun lt!14889 () ListLongMap!1063)

(assert (=> b!39473 (= lt!14889 (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)))))

(declare-fun lt!14877 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14877 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14887 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14887 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))

(declare-fun lt!14878 () Unit!960)

(declare-fun addStillContains!28 (ListLongMap!1063 (_ BitVec 64) V!2089 (_ BitVec 64)) Unit!960)

(assert (=> b!39473 (= lt!14878 (addStillContains!28 lt!14889 lt!14877 (zeroValue!1712 lt!14706) lt!14887))))

(assert (=> b!39473 (contains!507 (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))) lt!14887)))

(declare-fun lt!14876 () Unit!960)

(assert (=> b!39473 (= lt!14876 lt!14878)))

(declare-fun lt!14879 () ListLongMap!1063)

(assert (=> b!39473 (= lt!14879 (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)))))

(declare-fun lt!14875 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14875 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14890 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14890 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))

(declare-fun lt!14884 () Unit!960)

(declare-fun addApplyDifferent!28 (ListLongMap!1063 (_ BitVec 64) V!2089 (_ BitVec 64)) Unit!960)

(assert (=> b!39473 (= lt!14884 (addApplyDifferent!28 lt!14879 lt!14875 (minValue!1712 lt!14706) lt!14890))))

(assert (=> b!39473 (= (apply!52 (+!61 lt!14879 (tuple2!1483 lt!14875 (minValue!1712 lt!14706))) lt!14890) (apply!52 lt!14879 lt!14890))))

(declare-fun lt!14896 () Unit!960)

(assert (=> b!39473 (= lt!14896 lt!14884)))

(declare-fun lt!14882 () ListLongMap!1063)

(assert (=> b!39473 (= lt!14882 (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)))))

(declare-fun lt!14883 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14883 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14885 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14885 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))

(declare-fun lt!14893 () Unit!960)

(assert (=> b!39473 (= lt!14893 (addApplyDifferent!28 lt!14882 lt!14883 (zeroValue!1712 lt!14706) lt!14885))))

(assert (=> b!39473 (= (apply!52 (+!61 lt!14882 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))) lt!14885) (apply!52 lt!14882 lt!14885))))

(declare-fun lt!14881 () Unit!960)

(assert (=> b!39473 (= lt!14881 lt!14893)))

(declare-fun lt!14894 () ListLongMap!1063)

(assert (=> b!39473 (= lt!14894 (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)))))

(declare-fun lt!14895 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14895 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14880 () (_ BitVec 64))

(assert (=> b!39473 (= lt!14880 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))

(assert (=> b!39473 (= lt!14886 (addApplyDifferent!28 lt!14894 lt!14895 (minValue!1712 lt!14706) lt!14880))))

(assert (=> b!39473 (= (apply!52 (+!61 lt!14894 (tuple2!1483 lt!14895 (minValue!1712 lt!14706))) lt!14880) (apply!52 lt!14894 lt!14880))))

(declare-fun b!39474 () Bool)

(declare-fun e!25068 () Bool)

(assert (=> b!39474 (= e!25068 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun b!39475 () Bool)

(assert (=> b!39475 (= e!25067 call!3012)))

(declare-fun bm!3013 () Bool)

(assert (=> bm!3013 (= call!3013 (+!61 (ite c!4674 call!3015 (ite c!4675 call!3010 call!3012)) (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))))))

(declare-fun b!39476 () Bool)

(declare-fun e!25070 () Bool)

(assert (=> b!39476 (= e!25070 e!25063)))

(declare-fun res!23707 () Bool)

(assert (=> b!39476 (= res!23707 call!3011)))

(assert (=> b!39476 (=> (not res!23707) (not e!25063))))

(declare-fun b!39477 () Bool)

(declare-fun res!23702 () Bool)

(assert (=> b!39477 (=> (not res!23702) (not e!25059))))

(declare-fun e!25058 () Bool)

(assert (=> b!39477 (= res!23702 e!25058)))

(declare-fun c!4677 () Bool)

(assert (=> b!39477 (= c!4677 (not (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!39478 () Bool)

(declare-fun c!4672 () Bool)

(assert (=> b!39478 (= c!4672 (and (not (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!39478 (= e!25064 e!25067)))

(declare-fun b!39479 () Bool)

(assert (=> b!39479 (= e!25058 (not call!3016))))

(declare-fun b!39480 () Bool)

(assert (=> b!39480 (= e!25070 (not call!3011))))

(declare-fun b!39481 () Bool)

(declare-fun res!23703 () Bool)

(assert (=> b!39481 (=> (not res!23703) (not e!25059))))

(assert (=> b!39481 (= res!23703 e!25066)))

(declare-fun res!23705 () Bool)

(assert (=> b!39481 (=> res!23705 e!25066)))

(assert (=> b!39481 (= res!23705 (not e!25068))))

(declare-fun res!23699 () Bool)

(assert (=> b!39481 (=> (not res!23699) (not e!25068))))

(assert (=> b!39481 (= res!23699 (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(declare-fun b!39482 () Bool)

(assert (=> b!39482 (= e!25058 e!25061)))

(declare-fun res!23700 () Bool)

(assert (=> b!39482 (= res!23700 call!3016)))

(assert (=> b!39482 (=> (not res!23700) (not e!25061))))

(declare-fun b!39483 () Bool)

(declare-fun Unit!966 () Unit!960)

(assert (=> b!39483 (= e!25069 Unit!966)))

(declare-fun b!39484 () Bool)

(assert (=> b!39484 (= e!25059 e!25070)))

(declare-fun c!4673 () Bool)

(assert (=> b!39484 (= c!4673 (not (= (bvand (extraKeys!1685 lt!14706) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!6603 c!4674) b!39470))

(assert (= (and d!6603 (not c!4674)) b!39471))

(assert (= (and b!39471 c!4675) b!39469))

(assert (= (and b!39471 (not c!4675)) b!39478))

(assert (= (and b!39478 c!4672) b!39472))

(assert (= (and b!39478 (not c!4672)) b!39475))

(assert (= (or b!39472 b!39475) bm!3008))

(assert (= (or b!39469 bm!3008) bm!3007))

(assert (= (or b!39469 b!39472) bm!3009))

(assert (= (or b!39470 bm!3007) bm!3011))

(assert (= (or b!39470 bm!3009) bm!3013))

(assert (= (and d!6603 res!23706) b!39465))

(assert (= (and d!6603 c!4676) b!39473))

(assert (= (and d!6603 (not c!4676)) b!39483))

(assert (= (and d!6603 res!23701) b!39481))

(assert (= (and b!39481 res!23699) b!39474))

(assert (= (and b!39481 (not res!23705)) b!39466))

(assert (= (and b!39466 res!23704) b!39468))

(assert (= (and b!39481 res!23703) b!39477))

(assert (= (and b!39477 c!4677) b!39482))

(assert (= (and b!39477 (not c!4677)) b!39479))

(assert (= (and b!39482 res!23700) b!39467))

(assert (= (or b!39482 b!39479) bm!3012))

(assert (= (and b!39477 res!23702) b!39484))

(assert (= (and b!39484 c!4673) b!39476))

(assert (= (and b!39484 (not c!4673)) b!39480))

(assert (= (and b!39476 res!23707) b!39464))

(assert (= (or b!39476 b!39480) bm!3010))

(declare-fun b_lambda!2053 () Bool)

(assert (=> (not b_lambda!2053) (not b!39468)))

(declare-fun tb!841 () Bool)

(declare-fun t!3922 () Bool)

(assert (=> (and start!5506 (= defaultEntry!470 (defaultEntry!1794 lt!14706)) t!3922) tb!841))

(declare-fun result!1437 () Bool)

(assert (=> tb!841 (= result!1437 tp_is_empty!1747)))

(assert (=> b!39468 t!3922))

(declare-fun b_and!2349 () Bool)

(assert (= b_and!2339 (and (=> t!3922 result!1437) b_and!2349)))

(declare-fun m!32135 () Bool)

(assert (=> b!39468 m!32135))

(declare-fun m!32137 () Bool)

(assert (=> b!39468 m!32137))

(declare-fun m!32139 () Bool)

(assert (=> b!39468 m!32139))

(assert (=> b!39468 m!32139))

(declare-fun m!32141 () Bool)

(assert (=> b!39468 m!32141))

(assert (=> b!39468 m!32135))

(assert (=> b!39468 m!32137))

(declare-fun m!32143 () Bool)

(assert (=> b!39468 m!32143))

(declare-fun m!32145 () Bool)

(assert (=> b!39470 m!32145))

(declare-fun m!32147 () Bool)

(assert (=> bm!3013 m!32147))

(declare-fun m!32149 () Bool)

(assert (=> bm!3011 m!32149))

(declare-fun m!32151 () Bool)

(assert (=> b!39467 m!32151))

(assert (=> b!39474 m!32139))

(assert (=> b!39474 m!32139))

(declare-fun m!32153 () Bool)

(assert (=> b!39474 m!32153))

(declare-fun m!32155 () Bool)

(assert (=> bm!3012 m!32155))

(declare-fun m!32157 () Bool)

(assert (=> d!6603 m!32157))

(declare-fun m!32159 () Bool)

(assert (=> bm!3010 m!32159))

(declare-fun m!32161 () Bool)

(assert (=> b!39473 m!32161))

(declare-fun m!32163 () Bool)

(assert (=> b!39473 m!32163))

(declare-fun m!32165 () Bool)

(assert (=> b!39473 m!32165))

(declare-fun m!32167 () Bool)

(assert (=> b!39473 m!32167))

(declare-fun m!32169 () Bool)

(assert (=> b!39473 m!32169))

(declare-fun m!32171 () Bool)

(assert (=> b!39473 m!32171))

(declare-fun m!32173 () Bool)

(assert (=> b!39473 m!32173))

(declare-fun m!32175 () Bool)

(assert (=> b!39473 m!32175))

(assert (=> b!39473 m!32167))

(declare-fun m!32177 () Bool)

(assert (=> b!39473 m!32177))

(declare-fun m!32179 () Bool)

(assert (=> b!39473 m!32179))

(declare-fun m!32181 () Bool)

(assert (=> b!39473 m!32181))

(declare-fun m!32183 () Bool)

(assert (=> b!39473 m!32183))

(assert (=> b!39473 m!32181))

(declare-fun m!32185 () Bool)

(assert (=> b!39473 m!32185))

(assert (=> b!39473 m!32139))

(assert (=> b!39473 m!32149))

(assert (=> b!39473 m!32173))

(declare-fun m!32187 () Bool)

(assert (=> b!39473 m!32187))

(assert (=> b!39473 m!32177))

(declare-fun m!32189 () Bool)

(assert (=> b!39473 m!32189))

(assert (=> b!39466 m!32139))

(assert (=> b!39466 m!32139))

(declare-fun m!32191 () Bool)

(assert (=> b!39466 m!32191))

(declare-fun m!32193 () Bool)

(assert (=> b!39464 m!32193))

(assert (=> b!39465 m!32139))

(assert (=> b!39465 m!32139))

(assert (=> b!39465 m!32153))

(assert (=> d!6555 d!6603))

(declare-fun b!39497 () Bool)

(declare-fun e!25077 () Bool)

(declare-fun call!3023 () Bool)

(assert (=> b!39497 (= e!25077 call!3023)))

(declare-fun b!39498 () Bool)

(assert (=> b!39498 (= e!25077 call!3023)))

(declare-fun d!6639 () Bool)

(declare-fun res!23710 () Bool)

(declare-fun e!25078 () Bool)

(assert (=> d!6639 (=> res!23710 e!25078)))

(assert (=> d!6639 (= res!23710 (bvsge #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6639 (= (arrayNoDuplicates!0 (_keys!3265 lt!14706) #b00000000000000000000000000000000 Nil!1060) e!25078)))

(declare-fun b!39499 () Bool)

(declare-fun e!25079 () Bool)

(assert (=> b!39499 (= e!25078 e!25079)))

(declare-fun res!23709 () Bool)

(assert (=> b!39499 (=> (not res!23709) (not e!25079))))

(declare-fun e!25080 () Bool)

(assert (=> b!39499 (= res!23709 (not e!25080))))

(declare-fun res!23708 () Bool)

(assert (=> b!39499 (=> (not res!23708) (not e!25080))))

(assert (=> b!39499 (= res!23708 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun bm!3020 () Bool)

(declare-fun c!4684 () Bool)

(assert (=> bm!3020 (= call!3023 (arrayNoDuplicates!0 (_keys!3265 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4684 (Cons!1059 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) Nil!1060) Nil!1060)))))

(declare-fun b!39500 () Bool)

(assert (=> b!39500 (= e!25079 e!25077)))

(assert (=> b!39500 (= c!4684 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun b!39501 () Bool)

(assert (=> b!39501 (= e!25080 (contains!505 Nil!1060 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(assert (= (and d!6639 (not res!23710)) b!39499))

(assert (= (and b!39499 res!23708) b!39501))

(assert (= (and b!39499 res!23709) b!39500))

(assert (= (and b!39500 c!4684) b!39498))

(assert (= (and b!39500 (not c!4684)) b!39497))

(assert (= (or b!39498 b!39497) bm!3020))

(assert (=> b!39499 m!32139))

(assert (=> b!39499 m!32139))

(assert (=> b!39499 m!32153))

(assert (=> bm!3020 m!32139))

(declare-fun m!32195 () Bool)

(assert (=> bm!3020 m!32195))

(assert (=> b!39500 m!32139))

(assert (=> b!39500 m!32139))

(assert (=> b!39500 m!32153))

(assert (=> b!39501 m!32139))

(assert (=> b!39501 m!32139))

(declare-fun m!32197 () Bool)

(assert (=> b!39501 m!32197))

(assert (=> b!39335 d!6639))

(declare-fun d!6641 () Bool)

(assert (=> d!6641 (= (validKeyInArray!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)) (and (not (= (select (arr!1231 lt!14704) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1231 lt!14704) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39290 d!6641))

(declare-fun b!39508 () Bool)

(declare-fun e!25086 () (_ BitVec 32))

(declare-fun call!3028 () (_ BitVec 32))

(assert (=> b!39508 (= e!25086 (bvadd #b00000000000000000000000000000001 call!3028))))

(declare-fun d!6643 () Bool)

(declare-fun lt!14909 () (_ BitVec 32))

(assert (=> d!6643 (and (bvsge lt!14909 #b00000000000000000000000000000000) (bvsle lt!14909 (bvsub (size!1353 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!25085 () (_ BitVec 32))

(assert (=> d!6643 (= lt!14909 e!25085)))

(declare-fun c!4687 () Bool)

(assert (=> d!6643 (= c!4687 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6643 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1353 lt!14704)))))

(assert (=> d!6643 (= (arrayCountValidKeys!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!14909)))

(declare-fun b!39509 () Bool)

(assert (=> b!39509 (= e!25085 e!25086)))

(declare-fun c!4688 () Bool)

(assert (=> b!39509 (= c!4688 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39510 () Bool)

(assert (=> b!39510 (= e!25086 call!3028)))

(declare-fun b!39511 () Bool)

(assert (=> b!39511 (= e!25085 #b00000000000000000000000000000000)))

(declare-fun bm!3025 () Bool)

(assert (=> bm!3025 (= call!3028 (arrayCountValidKeys!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!6643 c!4687) b!39511))

(assert (= (and d!6643 (not c!4687)) b!39509))

(assert (= (and b!39509 c!4688) b!39508))

(assert (= (and b!39509 (not c!4688)) b!39510))

(assert (= (or b!39508 b!39510) bm!3025))

(declare-fun m!32199 () Bool)

(assert (=> b!39509 m!32199))

(assert (=> b!39509 m!32199))

(declare-fun m!32201 () Bool)

(assert (=> b!39509 m!32201))

(declare-fun m!32203 () Bool)

(assert (=> bm!3025 m!32203))

(assert (=> bm!2969 d!6643))

(declare-fun b!39512 () Bool)

(declare-fun e!25089 () Bool)

(declare-fun e!25087 () Bool)

(assert (=> b!39512 (= e!25089 e!25087)))

(declare-fun c!4689 () Bool)

(assert (=> b!39512 (= c!4689 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun b!39514 () Bool)

(declare-fun e!25088 () Bool)

(assert (=> b!39514 (= e!25087 e!25088)))

(declare-fun lt!14932 () (_ BitVec 64))

(assert (=> b!39514 (= lt!14932 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))

(declare-fun lt!14933 () Unit!960)

(assert (=> b!39514 (= lt!14933 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3265 lt!14706) lt!14932 #b00000000000000000000000000000000))))

(assert (=> b!39514 (arrayContainsKey!0 (_keys!3265 lt!14706) lt!14932 #b00000000000000000000000000000000)))

(declare-fun lt!14934 () Unit!960)

(assert (=> b!39514 (= lt!14934 lt!14933)))

(declare-fun res!23713 () Bool)

(assert (=> b!39514 (= res!23713 (= (seekEntryOrOpen!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) (_keys!3265 lt!14706) (mask!5141 lt!14706)) (Found!180 #b00000000000000000000000000000000)))))

(assert (=> b!39514 (=> (not res!23713) (not e!25088))))

(declare-fun d!6645 () Bool)

(declare-fun res!23714 () Bool)

(assert (=> d!6645 (=> res!23714 e!25089)))

(assert (=> d!6645 (= res!23714 (bvsge #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6645 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3265 lt!14706) (mask!5141 lt!14706)) e!25089)))

(declare-fun b!39513 () Bool)

(declare-fun call!3029 () Bool)

(assert (=> b!39513 (= e!25087 call!3029)))

(declare-fun bm!3026 () Bool)

(assert (=> bm!3026 (= call!3029 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3265 lt!14706) (mask!5141 lt!14706)))))

(declare-fun b!39515 () Bool)

(assert (=> b!39515 (= e!25088 call!3029)))

(assert (= (and d!6645 (not res!23714)) b!39512))

(assert (= (and b!39512 c!4689) b!39514))

(assert (= (and b!39512 (not c!4689)) b!39513))

(assert (= (and b!39514 res!23713) b!39515))

(assert (= (or b!39515 b!39513) bm!3026))

(assert (=> b!39512 m!32139))

(assert (=> b!39512 m!32139))

(assert (=> b!39512 m!32153))

(assert (=> b!39514 m!32139))

(declare-fun m!32205 () Bool)

(assert (=> b!39514 m!32205))

(declare-fun m!32207 () Bool)

(assert (=> b!39514 m!32207))

(assert (=> b!39514 m!32139))

(declare-fun m!32209 () Bool)

(assert (=> b!39514 m!32209))

(declare-fun m!32211 () Bool)

(assert (=> bm!3026 m!32211))

(assert (=> b!39334 d!6645))

(declare-fun b!39516 () Bool)

(declare-fun e!25090 () Bool)

(declare-fun call!3030 () Bool)

(assert (=> b!39516 (= e!25090 call!3030)))

(declare-fun b!39517 () Bool)

(assert (=> b!39517 (= e!25090 call!3030)))

(declare-fun d!6647 () Bool)

(declare-fun res!23717 () Bool)

(declare-fun e!25091 () Bool)

(assert (=> d!6647 (=> res!23717 e!25091)))

(assert (=> d!6647 (= res!23717 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 lt!14704)))))

(assert (=> d!6647 (= (arrayNoDuplicates!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) e!25091)))

(declare-fun b!39518 () Bool)

(declare-fun e!25092 () Bool)

(assert (=> b!39518 (= e!25091 e!25092)))

(declare-fun res!23716 () Bool)

(assert (=> b!39518 (=> (not res!23716) (not e!25092))))

(declare-fun e!25093 () Bool)

(assert (=> b!39518 (= res!23716 (not e!25093))))

(declare-fun res!23715 () Bool)

(assert (=> b!39518 (=> (not res!23715) (not e!25093))))

(assert (=> b!39518 (= res!23715 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!4690 () Bool)

(declare-fun bm!3027 () Bool)

(assert (=> bm!3027 (= call!3030 (arrayNoDuplicates!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4690 (Cons!1059 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060))))))

(declare-fun b!39519 () Bool)

(assert (=> b!39519 (= e!25092 e!25090)))

(assert (=> b!39519 (= c!4690 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39520 () Bool)

(assert (=> b!39520 (= e!25093 (contains!505 (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6647 (not res!23717)) b!39518))

(assert (= (and b!39518 res!23715) b!39520))

(assert (= (and b!39518 res!23716) b!39519))

(assert (= (and b!39519 c!4690) b!39517))

(assert (= (and b!39519 (not c!4690)) b!39516))

(assert (= (or b!39517 b!39516) bm!3027))

(assert (=> b!39518 m!32199))

(assert (=> b!39518 m!32199))

(assert (=> b!39518 m!32201))

(assert (=> bm!3027 m!32199))

(declare-fun m!32213 () Bool)

(assert (=> bm!3027 m!32213))

(assert (=> b!39519 m!32199))

(assert (=> b!39519 m!32199))

(assert (=> b!39519 m!32201))

(assert (=> b!39520 m!32199))

(assert (=> b!39520 m!32199))

(declare-fun m!32215 () Bool)

(assert (=> b!39520 m!32215))

(assert (=> bm!2978 d!6647))

(declare-fun b!39525 () Bool)

(declare-fun e!25101 () (_ BitVec 32))

(declare-fun call!3031 () (_ BitVec 32))

(assert (=> b!39525 (= e!25101 (bvadd #b00000000000000000000000000000001 call!3031))))

(declare-fun d!6649 () Bool)

(declare-fun lt!14945 () (_ BitVec 32))

(assert (=> d!6649 (and (bvsge lt!14945 #b00000000000000000000000000000000) (bvsle lt!14945 (bvsub (size!1353 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun e!25100 () (_ BitVec 32))

(assert (=> d!6649 (= lt!14945 e!25100)))

(declare-fun c!4691 () Bool)

(assert (=> d!6649 (= c!4691 (bvsge #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6649 (and (bvsle #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1353 (_keys!3265 lt!14706)) (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6649 (= (arrayCountValidKeys!0 (_keys!3265 lt!14706) #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))) lt!14945)))

(declare-fun b!39526 () Bool)

(assert (=> b!39526 (= e!25100 e!25101)))

(declare-fun c!4692 () Bool)

(assert (=> b!39526 (= c!4692 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun b!39527 () Bool)

(assert (=> b!39527 (= e!25101 call!3031)))

(declare-fun b!39528 () Bool)

(assert (=> b!39528 (= e!25100 #b00000000000000000000000000000000)))

(declare-fun bm!3028 () Bool)

(assert (=> bm!3028 (= call!3031 (arrayCountValidKeys!0 (_keys!3265 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))))))

(assert (= (and d!6649 c!4691) b!39528))

(assert (= (and d!6649 (not c!4691)) b!39526))

(assert (= (and b!39526 c!4692) b!39525))

(assert (= (and b!39526 (not c!4692)) b!39527))

(assert (= (or b!39525 b!39527) bm!3028))

(assert (=> b!39526 m!32139))

(assert (=> b!39526 m!32139))

(assert (=> b!39526 m!32153))

(declare-fun m!32217 () Bool)

(assert (=> bm!3028 m!32217))

(assert (=> b!39333 d!6649))

(assert (=> d!6585 d!6561))

(declare-fun d!6651 () Bool)

(assert (=> d!6651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14704 mask!853)))

(assert (=> d!6651 true))

(declare-fun _$30!45 () Unit!960)

(assert (=> d!6651 (= (choose!34 lt!14704 mask!853 #b00000000000000000000000000000000) _$30!45)))

(declare-fun bs!1643 () Bool)

(assert (= bs!1643 d!6651))

(assert (=> bs!1643 m!31905))

(assert (=> d!6585 d!6651))

(assert (=> d!6585 d!6549))

(declare-fun b!39559 () Bool)

(declare-fun res!23742 () Bool)

(declare-fun e!25114 () Bool)

(assert (=> b!39559 (=> (not res!23742) (not e!25114))))

(declare-fun size!1372 (LongMapFixedSize!232) (_ BitVec 32))

(assert (=> b!39559 (= res!23742 (= (size!1372 lt!14706) (bvadd (_size!165 lt!14706) (bvsdiv (bvadd (extraKeys!1685 lt!14706) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!39557 () Bool)

(declare-fun res!23745 () Bool)

(assert (=> b!39557 (=> (not res!23745) (not e!25114))))

(assert (=> b!39557 (= res!23745 (and (= (size!1354 (_values!1777 lt!14706)) (bvadd (mask!5141 lt!14706) #b00000000000000000000000000000001)) (= (size!1353 (_keys!3265 lt!14706)) (size!1354 (_values!1777 lt!14706))) (bvsge (_size!165 lt!14706) #b00000000000000000000000000000000) (bvsle (_size!165 lt!14706) (bvadd (mask!5141 lt!14706) #b00000000000000000000000000000001))))))

(declare-fun b!39558 () Bool)

(declare-fun res!23743 () Bool)

(assert (=> b!39558 (=> (not res!23743) (not e!25114))))

(assert (=> b!39558 (= res!23743 (bvsge (size!1372 lt!14706) (_size!165 lt!14706)))))

(declare-fun b!39560 () Bool)

(assert (=> b!39560 (= e!25114 (and (bvsge (extraKeys!1685 lt!14706) #b00000000000000000000000000000000) (bvsle (extraKeys!1685 lt!14706) #b00000000000000000000000000000011) (bvsge (_vacant!165 lt!14706) #b00000000000000000000000000000000)))))

(declare-fun d!6653 () Bool)

(declare-fun res!23744 () Bool)

(assert (=> d!6653 (=> (not res!23744) (not e!25114))))

(assert (=> d!6653 (= res!23744 (validMask!0 (mask!5141 lt!14706)))))

(assert (=> d!6653 (= (simpleValid!23 lt!14706) e!25114)))

(assert (= (and d!6653 res!23744) b!39557))

(assert (= (and b!39557 res!23745) b!39558))

(assert (= (and b!39558 res!23743) b!39559))

(assert (= (and b!39559 res!23742) b!39560))

(declare-fun m!32219 () Bool)

(assert (=> b!39559 m!32219))

(assert (=> b!39558 m!32219))

(assert (=> d!6653 m!32157))

(assert (=> d!6597 d!6653))

(assert (=> b!39289 d!6641))

(assert (=> b!39232 d!6641))

(assert (=> d!6589 d!6579))

(declare-fun d!6655 () Bool)

(assert (=> d!6655 (arrayNoDuplicates!0 lt!14704 #b00000000000000000000000000000000 Nil!1060)))

(assert (=> d!6655 true))

(declare-fun res!23748 () Unit!960)

(assert (=> d!6655 (= (choose!111 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1060) res!23748)))

(declare-fun bs!1644 () Bool)

(assert (= bs!1644 d!6655))

(assert (=> bs!1644 m!31913))

(assert (=> d!6589 d!6655))

(assert (=> b!39250 d!6641))

(assert (=> d!6593 d!6567))

(declare-fun d!6657 () Bool)

(assert (=> d!6657 (= (arrayCountValidKeys!0 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!6657 true))

(declare-fun _$88!31 () Unit!960)

(assert (=> d!6657 (= (choose!59 lt!14704 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!31)))

(declare-fun bs!1645 () Bool)

(assert (= bs!1645 d!6657))

(assert (=> bs!1645 m!31915))

(assert (=> d!6593 d!6657))

(declare-fun d!6659 () Bool)

(assert (=> d!6659 (arrayContainsKey!0 lt!14704 lt!14753 #b00000000000000000000000000000000)))

(declare-fun lt!14970 () Unit!960)

(declare-fun choose!13 (array!2575 (_ BitVec 64) (_ BitVec 32)) Unit!960)

(assert (=> d!6659 (= lt!14970 (choose!13 lt!14704 lt!14753 #b00000000000000000000000000000000))))

(assert (=> d!6659 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6659 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14704 lt!14753 #b00000000000000000000000000000000) lt!14970)))

(declare-fun bs!1646 () Bool)

(assert (= bs!1646 d!6659))

(assert (=> bs!1646 m!31973))

(declare-fun m!32221 () Bool)

(assert (=> bs!1646 m!32221))

(assert (=> b!39234 d!6659))

(declare-fun d!6661 () Bool)

(declare-fun res!23762 () Bool)

(declare-fun e!25132 () Bool)

(assert (=> d!6661 (=> res!23762 e!25132)))

(assert (=> d!6661 (= res!23762 (= (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14753))))

(assert (=> d!6661 (= (arrayContainsKey!0 lt!14704 lt!14753 #b00000000000000000000000000000000) e!25132)))

(declare-fun b!39586 () Bool)

(declare-fun e!25133 () Bool)

(assert (=> b!39586 (= e!25132 e!25133)))

(declare-fun res!23763 () Bool)

(assert (=> b!39586 (=> (not res!23763) (not e!25133))))

(assert (=> b!39586 (= res!23763 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 lt!14704)))))

(declare-fun b!39587 () Bool)

(assert (=> b!39587 (= e!25133 (arrayContainsKey!0 lt!14704 lt!14753 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6661 (not res!23762)) b!39586))

(assert (= (and b!39586 res!23763) b!39587))

(assert (=> d!6661 m!31967))

(declare-fun m!32273 () Bool)

(assert (=> b!39587 m!32273))

(assert (=> b!39234 d!6661))

(declare-fun b!39648 () Bool)

(declare-fun c!4723 () Bool)

(declare-fun lt!15025 () (_ BitVec 64))

(assert (=> b!39648 (= c!4723 (= lt!15025 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25172 () SeekEntryResult!180)

(declare-fun e!25174 () SeekEntryResult!180)

(assert (=> b!39648 (= e!25172 e!25174)))

(declare-fun b!39649 () Bool)

(declare-fun lt!15026 () SeekEntryResult!180)

(assert (=> b!39649 (= e!25172 (Found!180 (index!2844 lt!15026)))))

(declare-fun b!39650 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2575 (_ BitVec 32)) SeekEntryResult!180)

(assert (=> b!39650 (= e!25174 (seekKeyOrZeroReturnVacant!0 (x!7666 lt!15026) (index!2844 lt!15026) (index!2844 lt!15026) (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853))))

(declare-fun b!39651 () Bool)

(declare-fun e!25173 () SeekEntryResult!180)

(assert (=> b!39651 (= e!25173 Undefined!180)))

(declare-fun b!39652 () Bool)

(assert (=> b!39652 (= e!25173 e!25172)))

(assert (=> b!39652 (= lt!15025 (select (arr!1231 lt!14704) (index!2844 lt!15026)))))

(declare-fun c!4722 () Bool)

(assert (=> b!39652 (= c!4722 (= lt!15025 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun d!6663 () Bool)

(declare-fun lt!15024 () SeekEntryResult!180)

(assert (=> d!6663 (and (or (is-Undefined!180 lt!15024) (not (is-Found!180 lt!15024)) (and (bvsge (index!2843 lt!15024) #b00000000000000000000000000000000) (bvslt (index!2843 lt!15024) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15024) (is-Found!180 lt!15024) (not (is-MissingZero!180 lt!15024)) (and (bvsge (index!2842 lt!15024) #b00000000000000000000000000000000) (bvslt (index!2842 lt!15024) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15024) (is-Found!180 lt!15024) (is-MissingZero!180 lt!15024) (not (is-MissingVacant!180 lt!15024)) (and (bvsge (index!2845 lt!15024) #b00000000000000000000000000000000) (bvslt (index!2845 lt!15024) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15024) (ite (is-Found!180 lt!15024) (= (select (arr!1231 lt!14704) (index!2843 lt!15024)) (select (arr!1231 lt!14704) #b00000000000000000000000000000000)) (ite (is-MissingZero!180 lt!15024) (= (select (arr!1231 lt!14704) (index!2842 lt!15024)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!180 lt!15024) (= (select (arr!1231 lt!14704) (index!2845 lt!15024)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6663 (= lt!15024 e!25173)))

(declare-fun c!4721 () Bool)

(assert (=> d!6663 (= c!4721 (and (is-Intermediate!180 lt!15026) (undefined!992 lt!15026)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2575 (_ BitVec 32)) SeekEntryResult!180)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!6663 (= lt!15026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) mask!853) (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853))))

(assert (=> d!6663 (validMask!0 mask!853)))

(assert (=> d!6663 (= (seekEntryOrOpen!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853) lt!15024)))

(declare-fun b!39653 () Bool)

(assert (=> b!39653 (= e!25174 (MissingZero!180 (index!2844 lt!15026)))))

(assert (= (and d!6663 c!4721) b!39651))

(assert (= (and d!6663 (not c!4721)) b!39652))

(assert (= (and b!39652 c!4722) b!39649))

(assert (= (and b!39652 (not c!4722)) b!39648))

(assert (= (and b!39648 c!4723) b!39653))

(assert (= (and b!39648 (not c!4723)) b!39650))

(assert (=> b!39650 m!31967))

(declare-fun m!32289 () Bool)

(assert (=> b!39650 m!32289))

(declare-fun m!32291 () Bool)

(assert (=> b!39652 m!32291))

(declare-fun m!32293 () Bool)

(assert (=> d!6663 m!32293))

(assert (=> d!6663 m!31901))

(declare-fun m!32295 () Bool)

(assert (=> d!6663 m!32295))

(assert (=> d!6663 m!31967))

(declare-fun m!32297 () Bool)

(assert (=> d!6663 m!32297))

(assert (=> d!6663 m!32297))

(assert (=> d!6663 m!31967))

(declare-fun m!32299 () Bool)

(assert (=> d!6663 m!32299))

(declare-fun m!32301 () Bool)

(assert (=> d!6663 m!32301))

(assert (=> b!39234 d!6663))

(declare-fun b!39654 () Bool)

(declare-fun e!25177 () Bool)

(declare-fun e!25175 () Bool)

(assert (=> b!39654 (= e!25177 e!25175)))

(declare-fun c!4724 () Bool)

(assert (=> b!39654 (= c!4724 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39656 () Bool)

(declare-fun e!25176 () Bool)

(assert (=> b!39656 (= e!25175 e!25176)))

(declare-fun lt!15027 () (_ BitVec 64))

(assert (=> b!39656 (= lt!15027 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15028 () Unit!960)

(assert (=> b!39656 (= lt!15028 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14704 lt!15027 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!39656 (arrayContainsKey!0 lt!14704 lt!15027 #b00000000000000000000000000000000)))

(declare-fun lt!15029 () Unit!960)

(assert (=> b!39656 (= lt!15029 lt!15028)))

(declare-fun res!23788 () Bool)

(assert (=> b!39656 (= res!23788 (= (seekEntryOrOpen!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14704 mask!853) (Found!180 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!39656 (=> (not res!23788) (not e!25176))))

(declare-fun d!6673 () Bool)

(declare-fun res!23789 () Bool)

(assert (=> d!6673 (=> res!23789 e!25177)))

(assert (=> d!6673 (= res!23789 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 lt!14704)))))

(assert (=> d!6673 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14704 mask!853) e!25177)))

(declare-fun b!39655 () Bool)

(declare-fun call!3057 () Bool)

(assert (=> b!39655 (= e!25175 call!3057)))

(declare-fun bm!3054 () Bool)

(assert (=> bm!3054 (= call!3057 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14704 mask!853))))

(declare-fun b!39657 () Bool)

(assert (=> b!39657 (= e!25176 call!3057)))

(assert (= (and d!6673 (not res!23789)) b!39654))

(assert (= (and b!39654 c!4724) b!39656))

(assert (= (and b!39654 (not c!4724)) b!39655))

(assert (= (and b!39656 res!23788) b!39657))

(assert (= (or b!39657 b!39655) bm!3054))

(assert (=> b!39654 m!32199))

(assert (=> b!39654 m!32199))

(assert (=> b!39654 m!32201))

(assert (=> b!39656 m!32199))

(declare-fun m!32303 () Bool)

(assert (=> b!39656 m!32303))

(declare-fun m!32305 () Bool)

(assert (=> b!39656 m!32305))

(assert (=> b!39656 m!32199))

(declare-fun m!32307 () Bool)

(assert (=> b!39656 m!32307))

(declare-fun m!32309 () Bool)

(assert (=> bm!3054 m!32309))

(assert (=> bm!2965 d!6673))

(declare-fun d!6675 () Bool)

(declare-fun lt!15038 () Bool)

(declare-fun content!29 (List!1063) (Set (_ BitVec 64)))

(assert (=> d!6675 (= lt!15038 (set.member (select (arr!1231 lt!14704) #b00000000000000000000000000000000) (content!29 Nil!1060)))))

(declare-fun e!25188 () Bool)

(assert (=> d!6675 (= lt!15038 e!25188)))

(declare-fun res!23794 () Bool)

(assert (=> d!6675 (=> (not res!23794) (not e!25188))))

(assert (=> d!6675 (= res!23794 (is-Cons!1059 Nil!1060))))

(assert (=> d!6675 (= (contains!505 Nil!1060 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)) lt!15038)))

(declare-fun b!39674 () Bool)

(declare-fun e!25189 () Bool)

(assert (=> b!39674 (= e!25188 e!25189)))

(declare-fun res!23795 () Bool)

(assert (=> b!39674 (=> res!23795 e!25189)))

(assert (=> b!39674 (= res!23795 (= (h!1630 Nil!1060) (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun b!39675 () Bool)

(assert (=> b!39675 (= e!25189 (contains!505 (t!3912 Nil!1060) (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(assert (= (and d!6675 res!23794) b!39674))

(assert (= (and b!39674 (not res!23795)) b!39675))

(declare-fun m!32311 () Bool)

(assert (=> d!6675 m!32311))

(assert (=> d!6675 m!31967))

(declare-fun m!32313 () Bool)

(assert (=> d!6675 m!32313))

(assert (=> b!39675 m!31967))

(declare-fun m!32315 () Bool)

(assert (=> b!39675 m!32315))

(assert (=> b!39291 d!6675))

(push 1)

(assert (not b!39500))

(assert (not bm!3013))

(assert (not b!39470))

(assert (not b!39650))

(assert (not b!39464))

(assert (not b!39526))

(assert (not b!39466))

(assert (not b!39519))

(assert (not b!39501))

(assert (not d!6663))

(assert (not bm!3010))

(assert (not bm!3028))

(assert (not bm!3011))

(assert (not b!39558))

(assert (not b!39465))

(assert (not d!6655))

(assert (not b!39473))

(assert (not b!39499))

(assert (not bm!3027))

(assert (not d!6651))

(assert (not b!39467))

(assert (not d!6659))

(assert (not bm!3020))

(assert (not b!39474))

(assert (not b!39654))

(assert (not b!39512))

(assert (not d!6675))

(assert (not b!39520))

(assert (not b!39514))

(assert (not b!39468))

(assert (not d!6603))

(assert (not b_next!1357))

(assert tp_is_empty!1747)

(assert (not b!39518))

(assert b_and!2349)

(assert (not d!6657))

(assert (not b!39559))

(assert (not d!6653))

(assert (not b!39656))

(assert (not bm!3012))

(assert (not b!39587))

(assert (not b_lambda!2047))

(assert (not b!39675))

(assert (not bm!3054))

(assert (not bm!3025))

(assert (not b_lambda!2053))

(assert (not b!39509))

(assert (not bm!3026))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2349)

(assert (not b_next!1357))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6731 () Bool)

(assert (=> d!6731 (= (validMask!0 (mask!5141 lt!14706)) (and (or (= (mask!5141 lt!14706) #b00000000000000000000000000000111) (= (mask!5141 lt!14706) #b00000000000000000000000000001111) (= (mask!5141 lt!14706) #b00000000000000000000000000011111) (= (mask!5141 lt!14706) #b00000000000000000000000000111111) (= (mask!5141 lt!14706) #b00000000000000000000000001111111) (= (mask!5141 lt!14706) #b00000000000000000000000011111111) (= (mask!5141 lt!14706) #b00000000000000000000000111111111) (= (mask!5141 lt!14706) #b00000000000000000000001111111111) (= (mask!5141 lt!14706) #b00000000000000000000011111111111) (= (mask!5141 lt!14706) #b00000000000000000000111111111111) (= (mask!5141 lt!14706) #b00000000000000000001111111111111) (= (mask!5141 lt!14706) #b00000000000000000011111111111111) (= (mask!5141 lt!14706) #b00000000000000000111111111111111) (= (mask!5141 lt!14706) #b00000000000000001111111111111111) (= (mask!5141 lt!14706) #b00000000000000011111111111111111) (= (mask!5141 lt!14706) #b00000000000000111111111111111111) (= (mask!5141 lt!14706) #b00000000000001111111111111111111) (= (mask!5141 lt!14706) #b00000000000011111111111111111111) (= (mask!5141 lt!14706) #b00000000000111111111111111111111) (= (mask!5141 lt!14706) #b00000000001111111111111111111111) (= (mask!5141 lt!14706) #b00000000011111111111111111111111) (= (mask!5141 lt!14706) #b00000000111111111111111111111111) (= (mask!5141 lt!14706) #b00000001111111111111111111111111) (= (mask!5141 lt!14706) #b00000011111111111111111111111111) (= (mask!5141 lt!14706) #b00000111111111111111111111111111) (= (mask!5141 lt!14706) #b00001111111111111111111111111111) (= (mask!5141 lt!14706) #b00011111111111111111111111111111) (= (mask!5141 lt!14706) #b00111111111111111111111111111111)) (bvsle (mask!5141 lt!14706) #b00111111111111111111111111111111)))))

(assert (=> d!6603 d!6731))

(declare-fun d!6733 () Bool)

(assert (=> d!6733 (= (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39526 d!6733))

(declare-fun d!6735 () Bool)

(declare-fun e!25262 () Bool)

(assert (=> d!6735 e!25262))

(declare-fun res!23852 () Bool)

(assert (=> d!6735 (=> (not res!23852) (not e!25262))))

(declare-fun lt!15109 () ListLongMap!1063)

(assert (=> d!6735 (= res!23852 (contains!507 lt!15109 (_1!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))))))

(declare-fun lt!15111 () List!1062)

(assert (=> d!6735 (= lt!15109 (ListLongMap!1064 lt!15111))))

(declare-fun lt!15110 () Unit!960)

(declare-fun lt!15108 () Unit!960)

(assert (=> d!6735 (= lt!15110 lt!15108)))

(declare-datatypes ((Option!104 0))(
  ( (Some!103 (v!1990 V!2089)) (None!102) )
))
(declare-fun getValueByKey!98 (List!1062 (_ BitVec 64)) Option!104)

(assert (=> d!6735 (= (getValueByKey!98 lt!15111 (_1!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!23 (List!1062 (_ BitVec 64) V!2089) Unit!960)

(assert (=> d!6735 (= lt!15108 (lemmaContainsTupThenGetReturnValue!23 lt!15111 (_1!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))) (_2!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))))))

(declare-fun insertStrictlySorted!20 (List!1062 (_ BitVec 64) V!2089) List!1062)

(assert (=> d!6735 (= lt!15111 (insertStrictlySorted!20 (toList!547 call!3013) (_1!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))) (_2!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))))))

(assert (=> d!6735 (= (+!61 call!3013 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))) lt!15109)))

(declare-fun b!39793 () Bool)

(declare-fun res!23853 () Bool)

(assert (=> b!39793 (=> (not res!23853) (not e!25262))))

(assert (=> b!39793 (= res!23853 (= (getValueByKey!98 (toList!547 lt!15109) (_1!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))))))

(declare-fun b!39794 () Bool)

(declare-fun contains!510 (List!1062 tuple2!1482) Bool)

(assert (=> b!39794 (= e!25262 (contains!510 (toList!547 lt!15109) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))))

(assert (= (and d!6735 res!23852) b!39793))

(assert (= (and b!39793 res!23853) b!39794))

(declare-fun m!32489 () Bool)

(assert (=> d!6735 m!32489))

(declare-fun m!32491 () Bool)

(assert (=> d!6735 m!32491))

(declare-fun m!32493 () Bool)

(assert (=> d!6735 m!32493))

(declare-fun m!32495 () Bool)

(assert (=> d!6735 m!32495))

(declare-fun m!32497 () Bool)

(assert (=> b!39793 m!32497))

(declare-fun m!32499 () Bool)

(assert (=> b!39794 m!32499))

(assert (=> b!39470 d!6735))

(declare-fun b!39795 () Bool)

(declare-fun e!25265 () Bool)

(declare-fun e!25263 () Bool)

(assert (=> b!39795 (= e!25265 e!25263)))

(declare-fun c!4763 () Bool)

(assert (=> b!39795 (= c!4763 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39797 () Bool)

(declare-fun e!25264 () Bool)

(assert (=> b!39797 (= e!25263 e!25264)))

(declare-fun lt!15112 () (_ BitVec 64))

(assert (=> b!39797 (= lt!15112 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!15113 () Unit!960)

(assert (=> b!39797 (= lt!15113 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14704 lt!15112 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!39797 (arrayContainsKey!0 lt!14704 lt!15112 #b00000000000000000000000000000000)))

(declare-fun lt!15114 () Unit!960)

(assert (=> b!39797 (= lt!15114 lt!15113)))

(declare-fun res!23854 () Bool)

(assert (=> b!39797 (= res!23854 (= (seekEntryOrOpen!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!14704 mask!853) (Found!180 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!39797 (=> (not res!23854) (not e!25264))))

(declare-fun d!6737 () Bool)

(declare-fun res!23855 () Bool)

(assert (=> d!6737 (=> res!23855 e!25265)))

(assert (=> d!6737 (= res!23855 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1353 lt!14704)))))

(assert (=> d!6737 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14704 mask!853) e!25265)))

(declare-fun b!39796 () Bool)

(declare-fun call!3075 () Bool)

(assert (=> b!39796 (= e!25263 call!3075)))

(declare-fun bm!3072 () Bool)

(assert (=> bm!3072 (= call!3075 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14704 mask!853))))

(declare-fun b!39798 () Bool)

(assert (=> b!39798 (= e!25264 call!3075)))

(assert (= (and d!6737 (not res!23855)) b!39795))

(assert (= (and b!39795 c!4763) b!39797))

(assert (= (and b!39795 (not c!4763)) b!39796))

(assert (= (and b!39797 res!23854) b!39798))

(assert (= (or b!39798 b!39796) bm!3072))

(declare-fun m!32501 () Bool)

(assert (=> b!39795 m!32501))

(assert (=> b!39795 m!32501))

(declare-fun m!32503 () Bool)

(assert (=> b!39795 m!32503))

(assert (=> b!39797 m!32501))

(declare-fun m!32505 () Bool)

(assert (=> b!39797 m!32505))

(declare-fun m!32507 () Bool)

(assert (=> b!39797 m!32507))

(assert (=> b!39797 m!32501))

(declare-fun m!32509 () Bool)

(assert (=> b!39797 m!32509))

(declare-fun m!32511 () Bool)

(assert (=> bm!3072 m!32511))

(assert (=> bm!3054 d!6737))

(assert (=> d!6659 d!6661))

(declare-fun d!6739 () Bool)

(assert (=> d!6739 (arrayContainsKey!0 lt!14704 lt!14753 #b00000000000000000000000000000000)))

(assert (=> d!6739 true))

(declare-fun _$60!332 () Unit!960)

(assert (=> d!6739 (= (choose!13 lt!14704 lt!14753 #b00000000000000000000000000000000) _$60!332)))

(declare-fun bs!1653 () Bool)

(assert (= bs!1653 d!6739))

(assert (=> bs!1653 m!31973))

(assert (=> d!6659 d!6739))

(declare-fun b!39799 () Bool)

(declare-fun e!25268 () Bool)

(declare-fun e!25266 () Bool)

(assert (=> b!39799 (= e!25268 e!25266)))

(declare-fun c!4764 () Bool)

(assert (=> b!39799 (= c!4764 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39801 () Bool)

(declare-fun e!25267 () Bool)

(assert (=> b!39801 (= e!25266 e!25267)))

(declare-fun lt!15115 () (_ BitVec 64))

(assert (=> b!39801 (= lt!15115 (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15116 () Unit!960)

(assert (=> b!39801 (= lt!15116 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3265 lt!14706) lt!15115 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!39801 (arrayContainsKey!0 (_keys!3265 lt!14706) lt!15115 #b00000000000000000000000000000000)))

(declare-fun lt!15117 () Unit!960)

(assert (=> b!39801 (= lt!15117 lt!15116)))

(declare-fun res!23856 () Bool)

(assert (=> b!39801 (= res!23856 (= (seekEntryOrOpen!0 (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3265 lt!14706) (mask!5141 lt!14706)) (Found!180 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!39801 (=> (not res!23856) (not e!25267))))

(declare-fun d!6741 () Bool)

(declare-fun res!23857 () Bool)

(assert (=> d!6741 (=> res!23857 e!25268)))

(assert (=> d!6741 (= res!23857 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6741 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3265 lt!14706) (mask!5141 lt!14706)) e!25268)))

(declare-fun b!39800 () Bool)

(declare-fun call!3076 () Bool)

(assert (=> b!39800 (= e!25266 call!3076)))

(declare-fun bm!3073 () Bool)

(assert (=> bm!3073 (= call!3076 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3265 lt!14706) (mask!5141 lt!14706)))))

(declare-fun b!39802 () Bool)

(assert (=> b!39802 (= e!25267 call!3076)))

(assert (= (and d!6741 (not res!23857)) b!39799))

(assert (= (and b!39799 c!4764) b!39801))

(assert (= (and b!39799 (not c!4764)) b!39800))

(assert (= (and b!39801 res!23856) b!39802))

(assert (= (or b!39802 b!39800) bm!3073))

(declare-fun m!32513 () Bool)

(assert (=> b!39799 m!32513))

(assert (=> b!39799 m!32513))

(declare-fun m!32515 () Bool)

(assert (=> b!39799 m!32515))

(assert (=> b!39801 m!32513))

(declare-fun m!32517 () Bool)

(assert (=> b!39801 m!32517))

(declare-fun m!32519 () Bool)

(assert (=> b!39801 m!32519))

(assert (=> b!39801 m!32513))

(declare-fun m!32521 () Bool)

(assert (=> b!39801 m!32521))

(declare-fun m!32523 () Bool)

(assert (=> bm!3073 m!32523))

(assert (=> bm!3026 d!6741))

(declare-fun d!6743 () Bool)

(declare-fun get!692 (Option!104) V!2089)

(assert (=> d!6743 (= (apply!52 lt!14888 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)) (get!692 (getValueByKey!98 (toList!547 lt!14888) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))))

(declare-fun bs!1654 () Bool)

(assert (= bs!1654 d!6743))

(assert (=> bs!1654 m!32139))

(declare-fun m!32525 () Bool)

(assert (=> bs!1654 m!32525))

(assert (=> bs!1654 m!32525))

(declare-fun m!32527 () Bool)

(assert (=> bs!1654 m!32527))

(assert (=> b!39468 d!6743))

(declare-fun d!6745 () Bool)

(declare-fun c!4773 () Bool)

(assert (=> d!6745 (= c!4773 (is-ValueCellFull!626 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun e!25283 () V!2089)

(assert (=> d!6745 (= (get!689 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000) (dynLambda!187 (defaultEntry!1794 lt!14706) #b0000000000000000000000000000000000000000000000000000000000000000)) e!25283)))

(declare-fun b!39825 () Bool)

(declare-fun get!693 (ValueCell!626 V!2089) V!2089)

(assert (=> b!39825 (= e!25283 (get!693 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000) (dynLambda!187 (defaultEntry!1794 lt!14706) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!39826 () Bool)

(declare-fun get!694 (ValueCell!626 V!2089) V!2089)

(assert (=> b!39826 (= e!25283 (get!694 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000) (dynLambda!187 (defaultEntry!1794 lt!14706) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6745 c!4773) b!39825))

(assert (= (and d!6745 (not c!4773)) b!39826))

(assert (=> b!39825 m!32135))

(assert (=> b!39825 m!32137))

(declare-fun m!32529 () Bool)

(assert (=> b!39825 m!32529))

(assert (=> b!39826 m!32135))

(assert (=> b!39826 m!32137))

(declare-fun m!32531 () Bool)

(assert (=> b!39826 m!32531))

(assert (=> b!39468 d!6745))

(declare-fun d!6747 () Bool)

(assert (=> d!6747 (arrayContainsKey!0 lt!14704 lt!15027 #b00000000000000000000000000000000)))

(declare-fun lt!15132 () Unit!960)

(assert (=> d!6747 (= lt!15132 (choose!13 lt!14704 lt!15027 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!6747 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!6747 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14704 lt!15027 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15132)))

(declare-fun bs!1655 () Bool)

(assert (= bs!1655 d!6747))

(assert (=> bs!1655 m!32305))

(declare-fun m!32533 () Bool)

(assert (=> bs!1655 m!32533))

(assert (=> b!39656 d!6747))

(declare-fun d!6749 () Bool)

(declare-fun res!23866 () Bool)

(declare-fun e!25286 () Bool)

(assert (=> d!6749 (=> res!23866 e!25286)))

(assert (=> d!6749 (= res!23866 (= (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!15027))))

(assert (=> d!6749 (= (arrayContainsKey!0 lt!14704 lt!15027 #b00000000000000000000000000000000) e!25286)))

(declare-fun b!39833 () Bool)

(declare-fun e!25287 () Bool)

(assert (=> b!39833 (= e!25286 e!25287)))

(declare-fun res!23867 () Bool)

(assert (=> b!39833 (=> (not res!23867) (not e!25287))))

(assert (=> b!39833 (= res!23867 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 lt!14704)))))

(declare-fun b!39834 () Bool)

(assert (=> b!39834 (= e!25287 (arrayContainsKey!0 lt!14704 lt!15027 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6749 (not res!23866)) b!39833))

(assert (= (and b!39833 res!23867) b!39834))

(assert (=> d!6749 m!31967))

(declare-fun m!32535 () Bool)

(assert (=> b!39834 m!32535))

(assert (=> b!39656 d!6749))

(declare-fun b!39835 () Bool)

(declare-fun c!4778 () Bool)

(declare-fun lt!15134 () (_ BitVec 64))

(assert (=> b!39835 (= c!4778 (= lt!15134 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25288 () SeekEntryResult!180)

(declare-fun e!25290 () SeekEntryResult!180)

(assert (=> b!39835 (= e!25288 e!25290)))

(declare-fun b!39836 () Bool)

(declare-fun lt!15135 () SeekEntryResult!180)

(assert (=> b!39836 (= e!25288 (Found!180 (index!2844 lt!15135)))))

(declare-fun b!39837 () Bool)

(assert (=> b!39837 (= e!25290 (seekKeyOrZeroReturnVacant!0 (x!7666 lt!15135) (index!2844 lt!15135) (index!2844 lt!15135) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14704 mask!853))))

(declare-fun b!39838 () Bool)

(declare-fun e!25289 () SeekEntryResult!180)

(assert (=> b!39838 (= e!25289 Undefined!180)))

(declare-fun b!39839 () Bool)

(assert (=> b!39839 (= e!25289 e!25288)))

(assert (=> b!39839 (= lt!15134 (select (arr!1231 lt!14704) (index!2844 lt!15135)))))

(declare-fun c!4777 () Bool)

(assert (=> b!39839 (= c!4777 (= lt!15134 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6751 () Bool)

(declare-fun lt!15133 () SeekEntryResult!180)

(assert (=> d!6751 (and (or (is-Undefined!180 lt!15133) (not (is-Found!180 lt!15133)) (and (bvsge (index!2843 lt!15133) #b00000000000000000000000000000000) (bvslt (index!2843 lt!15133) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15133) (is-Found!180 lt!15133) (not (is-MissingZero!180 lt!15133)) (and (bvsge (index!2842 lt!15133) #b00000000000000000000000000000000) (bvslt (index!2842 lt!15133) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15133) (is-Found!180 lt!15133) (is-MissingZero!180 lt!15133) (not (is-MissingVacant!180 lt!15133)) (and (bvsge (index!2845 lt!15133) #b00000000000000000000000000000000) (bvslt (index!2845 lt!15133) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15133) (ite (is-Found!180 lt!15133) (= (select (arr!1231 lt!14704) (index!2843 lt!15133)) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite (is-MissingZero!180 lt!15133) (= (select (arr!1231 lt!14704) (index!2842 lt!15133)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!180 lt!15133) (= (select (arr!1231 lt!14704) (index!2845 lt!15133)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6751 (= lt!15133 e!25289)))

(declare-fun c!4776 () Bool)

(assert (=> d!6751 (= c!4776 (and (is-Intermediate!180 lt!15135) (undefined!992 lt!15135)))))

(assert (=> d!6751 (= lt!15135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14704 mask!853))))

(assert (=> d!6751 (validMask!0 mask!853)))

(assert (=> d!6751 (= (seekEntryOrOpen!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14704 mask!853) lt!15133)))

(declare-fun b!39840 () Bool)

(assert (=> b!39840 (= e!25290 (MissingZero!180 (index!2844 lt!15135)))))

(assert (= (and d!6751 c!4776) b!39838))

(assert (= (and d!6751 (not c!4776)) b!39839))

(assert (= (and b!39839 c!4777) b!39836))

(assert (= (and b!39839 (not c!4777)) b!39835))

(assert (= (and b!39835 c!4778) b!39840))

(assert (= (and b!39835 (not c!4778)) b!39837))

(assert (=> b!39837 m!32199))

(declare-fun m!32537 () Bool)

(assert (=> b!39837 m!32537))

(declare-fun m!32539 () Bool)

(assert (=> b!39839 m!32539))

(declare-fun m!32541 () Bool)

(assert (=> d!6751 m!32541))

(assert (=> d!6751 m!31901))

(declare-fun m!32543 () Bool)

(assert (=> d!6751 m!32543))

(assert (=> d!6751 m!32199))

(declare-fun m!32545 () Bool)

(assert (=> d!6751 m!32545))

(assert (=> d!6751 m!32545))

(assert (=> d!6751 m!32199))

(declare-fun m!32547 () Bool)

(assert (=> d!6751 m!32547))

(declare-fun m!32549 () Bool)

(assert (=> d!6751 m!32549))

(assert (=> b!39656 d!6751))

(declare-fun d!6753 () Bool)

(assert (=> d!6753 (= (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39654 d!6753))

(declare-fun b!39841 () Bool)

(declare-fun e!25292 () (_ BitVec 32))

(declare-fun call!3079 () (_ BitVec 32))

(assert (=> b!39841 (= e!25292 (bvadd #b00000000000000000000000000000001 call!3079))))

(declare-fun d!6755 () Bool)

(declare-fun lt!15136 () (_ BitVec 32))

(assert (=> d!6755 (and (bvsge lt!15136 #b00000000000000000000000000000000) (bvsle lt!15136 (bvsub (size!1353 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun e!25291 () (_ BitVec 32))

(assert (=> d!6755 (= lt!15136 e!25291)))

(declare-fun c!4779 () Bool)

(assert (=> d!6755 (= c!4779 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6755 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1353 lt!14704)))))

(assert (=> d!6755 (= (arrayCountValidKeys!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15136)))

(declare-fun b!39842 () Bool)

(assert (=> b!39842 (= e!25291 e!25292)))

(declare-fun c!4780 () Bool)

(assert (=> b!39842 (= c!4780 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39843 () Bool)

(assert (=> b!39843 (= e!25292 call!3079)))

(declare-fun b!39844 () Bool)

(assert (=> b!39844 (= e!25291 #b00000000000000000000000000000000)))

(declare-fun bm!3076 () Bool)

(assert (=> bm!3076 (= call!3079 (arrayCountValidKeys!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!6755 c!4779) b!39844))

(assert (= (and d!6755 (not c!4779)) b!39842))

(assert (= (and b!39842 c!4780) b!39841))

(assert (= (and b!39842 (not c!4780)) b!39843))

(assert (= (or b!39841 b!39843) bm!3076))

(assert (=> b!39842 m!32501))

(assert (=> b!39842 m!32501))

(assert (=> b!39842 m!32503))

(declare-fun m!32551 () Bool)

(assert (=> bm!3076 m!32551))

(assert (=> bm!3025 d!6755))

(declare-fun d!6757 () Bool)

(assert (=> d!6757 (= (apply!52 lt!14888 #b0000000000000000000000000000000000000000000000000000000000000000) (get!692 (getValueByKey!98 (toList!547 lt!14888) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1656 () Bool)

(assert (= bs!1656 d!6757))

(declare-fun m!32553 () Bool)

(assert (=> bs!1656 m!32553))

(assert (=> bs!1656 m!32553))

(declare-fun m!32555 () Bool)

(assert (=> bs!1656 m!32555))

(assert (=> b!39467 d!6757))

(declare-fun d!6759 () Bool)

(assert (=> d!6759 (arrayContainsKey!0 (_keys!3265 lt!14706) lt!14932 #b00000000000000000000000000000000)))

(declare-fun lt!15137 () Unit!960)

(assert (=> d!6759 (= lt!15137 (choose!13 (_keys!3265 lt!14706) lt!14932 #b00000000000000000000000000000000))))

(assert (=> d!6759 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6759 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3265 lt!14706) lt!14932 #b00000000000000000000000000000000) lt!15137)))

(declare-fun bs!1657 () Bool)

(assert (= bs!1657 d!6759))

(assert (=> bs!1657 m!32207))

(declare-fun m!32557 () Bool)

(assert (=> bs!1657 m!32557))

(assert (=> b!39514 d!6759))

(declare-fun d!6761 () Bool)

(declare-fun res!23868 () Bool)

(declare-fun e!25293 () Bool)

(assert (=> d!6761 (=> res!23868 e!25293)))

(assert (=> d!6761 (= res!23868 (= (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) lt!14932))))

(assert (=> d!6761 (= (arrayContainsKey!0 (_keys!3265 lt!14706) lt!14932 #b00000000000000000000000000000000) e!25293)))

(declare-fun b!39845 () Bool)

(declare-fun e!25294 () Bool)

(assert (=> b!39845 (= e!25293 e!25294)))

(declare-fun res!23869 () Bool)

(assert (=> b!39845 (=> (not res!23869) (not e!25294))))

(assert (=> b!39845 (= res!23869 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))))))

(declare-fun b!39846 () Bool)

(assert (=> b!39846 (= e!25294 (arrayContainsKey!0 (_keys!3265 lt!14706) lt!14932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6761 (not res!23868)) b!39845))

(assert (= (and b!39845 res!23869) b!39846))

(assert (=> d!6761 m!32139))

(declare-fun m!32559 () Bool)

(assert (=> b!39846 m!32559))

(assert (=> b!39514 d!6761))

(declare-fun b!39847 () Bool)

(declare-fun c!4783 () Bool)

(declare-fun lt!15139 () (_ BitVec 64))

(assert (=> b!39847 (= c!4783 (= lt!15139 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25295 () SeekEntryResult!180)

(declare-fun e!25297 () SeekEntryResult!180)

(assert (=> b!39847 (= e!25295 e!25297)))

(declare-fun b!39848 () Bool)

(declare-fun lt!15140 () SeekEntryResult!180)

(assert (=> b!39848 (= e!25295 (Found!180 (index!2844 lt!15140)))))

(declare-fun b!39849 () Bool)

(assert (=> b!39849 (= e!25297 (seekKeyOrZeroReturnVacant!0 (x!7666 lt!15140) (index!2844 lt!15140) (index!2844 lt!15140) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) (_keys!3265 lt!14706) (mask!5141 lt!14706)))))

(declare-fun b!39850 () Bool)

(declare-fun e!25296 () SeekEntryResult!180)

(assert (=> b!39850 (= e!25296 Undefined!180)))

(declare-fun b!39851 () Bool)

(assert (=> b!39851 (= e!25296 e!25295)))

(assert (=> b!39851 (= lt!15139 (select (arr!1231 (_keys!3265 lt!14706)) (index!2844 lt!15140)))))

(declare-fun c!4782 () Bool)

(assert (=> b!39851 (= c!4782 (= lt!15139 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun d!6763 () Bool)

(declare-fun lt!15138 () SeekEntryResult!180)

(assert (=> d!6763 (and (or (is-Undefined!180 lt!15138) (not (is-Found!180 lt!15138)) (and (bvsge (index!2843 lt!15138) #b00000000000000000000000000000000) (bvslt (index!2843 lt!15138) (size!1353 (_keys!3265 lt!14706))))) (or (is-Undefined!180 lt!15138) (is-Found!180 lt!15138) (not (is-MissingZero!180 lt!15138)) (and (bvsge (index!2842 lt!15138) #b00000000000000000000000000000000) (bvslt (index!2842 lt!15138) (size!1353 (_keys!3265 lt!14706))))) (or (is-Undefined!180 lt!15138) (is-Found!180 lt!15138) (is-MissingZero!180 lt!15138) (not (is-MissingVacant!180 lt!15138)) (and (bvsge (index!2845 lt!15138) #b00000000000000000000000000000000) (bvslt (index!2845 lt!15138) (size!1353 (_keys!3265 lt!14706))))) (or (is-Undefined!180 lt!15138) (ite (is-Found!180 lt!15138) (= (select (arr!1231 (_keys!3265 lt!14706)) (index!2843 lt!15138)) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)) (ite (is-MissingZero!180 lt!15138) (= (select (arr!1231 (_keys!3265 lt!14706)) (index!2842 lt!15138)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!180 lt!15138) (= (select (arr!1231 (_keys!3265 lt!14706)) (index!2845 lt!15138)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6763 (= lt!15138 e!25296)))

(declare-fun c!4781 () Bool)

(assert (=> d!6763 (= c!4781 (and (is-Intermediate!180 lt!15140) (undefined!992 lt!15140)))))

(assert (=> d!6763 (= lt!15140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) (mask!5141 lt!14706)) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) (_keys!3265 lt!14706) (mask!5141 lt!14706)))))

(assert (=> d!6763 (validMask!0 (mask!5141 lt!14706))))

(assert (=> d!6763 (= (seekEntryOrOpen!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) (_keys!3265 lt!14706) (mask!5141 lt!14706)) lt!15138)))

(declare-fun b!39852 () Bool)

(assert (=> b!39852 (= e!25297 (MissingZero!180 (index!2844 lt!15140)))))

(assert (= (and d!6763 c!4781) b!39850))

(assert (= (and d!6763 (not c!4781)) b!39851))

(assert (= (and b!39851 c!4782) b!39848))

(assert (= (and b!39851 (not c!4782)) b!39847))

(assert (= (and b!39847 c!4783) b!39852))

(assert (= (and b!39847 (not c!4783)) b!39849))

(assert (=> b!39849 m!32139))

(declare-fun m!32561 () Bool)

(assert (=> b!39849 m!32561))

(declare-fun m!32563 () Bool)

(assert (=> b!39851 m!32563))

(declare-fun m!32565 () Bool)

(assert (=> d!6763 m!32565))

(assert (=> d!6763 m!32157))

(declare-fun m!32567 () Bool)

(assert (=> d!6763 m!32567))

(assert (=> d!6763 m!32139))

(declare-fun m!32569 () Bool)

(assert (=> d!6763 m!32569))

(assert (=> d!6763 m!32569))

(assert (=> d!6763 m!32139))

(declare-fun m!32571 () Bool)

(assert (=> d!6763 m!32571))

(declare-fun m!32573 () Bool)

(assert (=> d!6763 m!32573))

(assert (=> b!39514 d!6763))

(declare-fun d!6765 () Bool)

(declare-fun e!25312 () Bool)

(assert (=> d!6765 e!25312))

(declare-fun res!23878 () Bool)

(assert (=> d!6765 (=> res!23878 e!25312)))

(declare-fun lt!15159 () Bool)

(assert (=> d!6765 (= res!23878 (not lt!15159))))

(declare-fun lt!15157 () Bool)

(assert (=> d!6765 (= lt!15159 lt!15157)))

(declare-fun lt!15160 () Unit!960)

(declare-fun e!25311 () Unit!960)

(assert (=> d!6765 (= lt!15160 e!25311)))

(declare-fun c!4790 () Bool)

(assert (=> d!6765 (= c!4790 lt!15157)))

(declare-fun containsKey!66 (List!1062 (_ BitVec 64)) Bool)

(assert (=> d!6765 (= lt!15157 (containsKey!66 (toList!547 lt!14888) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(assert (=> d!6765 (= (contains!507 lt!14888 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)) lt!15159)))

(declare-fun b!39873 () Bool)

(declare-fun lt!15158 () Unit!960)

(assert (=> b!39873 (= e!25311 lt!15158)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!54 (List!1062 (_ BitVec 64)) Unit!960)

(assert (=> b!39873 (= lt!15158 (lemmaContainsKeyImpliesGetValueByKeyDefined!54 (toList!547 lt!14888) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun isDefined!55 (Option!104) Bool)

(assert (=> b!39873 (isDefined!55 (getValueByKey!98 (toList!547 lt!14888) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun b!39874 () Bool)

(declare-fun Unit!970 () Unit!960)

(assert (=> b!39874 (= e!25311 Unit!970)))

(declare-fun b!39875 () Bool)

(assert (=> b!39875 (= e!25312 (isDefined!55 (getValueByKey!98 (toList!547 lt!14888) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))))

(assert (= (and d!6765 c!4790) b!39873))

(assert (= (and d!6765 (not c!4790)) b!39874))

(assert (= (and d!6765 (not res!23878)) b!39875))

(assert (=> d!6765 m!32139))

(declare-fun m!32607 () Bool)

(assert (=> d!6765 m!32607))

(assert (=> b!39873 m!32139))

(declare-fun m!32609 () Bool)

(assert (=> b!39873 m!32609))

(assert (=> b!39873 m!32139))

(assert (=> b!39873 m!32525))

(assert (=> b!39873 m!32525))

(declare-fun m!32611 () Bool)

(assert (=> b!39873 m!32611))

(assert (=> b!39875 m!32139))

(assert (=> b!39875 m!32525))

(assert (=> b!39875 m!32525))

(assert (=> b!39875 m!32611))

(assert (=> b!39466 d!6765))

(declare-fun d!6775 () Bool)

(declare-fun res!23879 () Bool)

(declare-fun e!25315 () Bool)

(assert (=> d!6775 (=> res!23879 e!25315)))

(assert (=> d!6775 (= res!23879 (= (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14753))))

(assert (=> d!6775 (= (arrayContainsKey!0 lt!14704 lt!14753 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!25315)))

(declare-fun b!39880 () Bool)

(declare-fun e!25316 () Bool)

(assert (=> b!39880 (= e!25315 e!25316)))

(declare-fun res!23880 () Bool)

(assert (=> b!39880 (=> (not res!23880) (not e!25316))))

(assert (=> b!39880 (= res!23880 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1353 lt!14704)))))

(declare-fun b!39881 () Bool)

(assert (=> b!39881 (= e!25316 (arrayContainsKey!0 lt!14704 lt!14753 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!6775 (not res!23879)) b!39880))

(assert (= (and b!39880 res!23880) b!39881))

(assert (=> d!6775 m!32199))

(declare-fun m!32613 () Bool)

(assert (=> b!39881 m!32613))

(assert (=> b!39587 d!6775))

(assert (=> d!6655 d!6579))

(assert (=> b!39509 d!6753))

(assert (=> b!39465 d!6733))

(assert (=> b!39512 d!6733))

(declare-fun b!39920 () Bool)

(declare-fun lt!15172 () SeekEntryResult!180)

(assert (=> b!39920 (and (bvsge (index!2844 lt!15172) #b00000000000000000000000000000000) (bvslt (index!2844 lt!15172) (size!1353 lt!14704)))))

(declare-fun res!23889 () Bool)

(assert (=> b!39920 (= res!23889 (= (select (arr!1231 lt!14704) (index!2844 lt!15172)) (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun e!25337 () Bool)

(assert (=> b!39920 (=> res!23889 e!25337)))

(declare-fun e!25340 () Bool)

(assert (=> b!39920 (= e!25340 e!25337)))

(declare-fun b!39921 () Bool)

(declare-fun e!25341 () Bool)

(assert (=> b!39921 (= e!25341 e!25340)))

(declare-fun res!23887 () Bool)

(assert (=> b!39921 (= res!23887 (and (is-Intermediate!180 lt!15172) (not (undefined!992 lt!15172)) (bvslt (x!7666 lt!15172) #b01111111111111111111111111111110) (bvsge (x!7666 lt!15172) #b00000000000000000000000000000000) (bvsge (x!7666 lt!15172) #b00000000000000000000000000000000)))))

(assert (=> b!39921 (=> (not res!23887) (not e!25340))))

(declare-fun b!39922 () Bool)

(assert (=> b!39922 (= e!25341 (bvsge (x!7666 lt!15172) #b01111111111111111111111111111110))))

(declare-fun b!39923 () Bool)

(assert (=> b!39923 (and (bvsge (index!2844 lt!15172) #b00000000000000000000000000000000) (bvslt (index!2844 lt!15172) (size!1353 lt!14704)))))

(declare-fun res!23888 () Bool)

(assert (=> b!39923 (= res!23888 (= (select (arr!1231 lt!14704) (index!2844 lt!15172)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39923 (=> res!23888 e!25337)))

(declare-fun d!6777 () Bool)

(assert (=> d!6777 e!25341))

(declare-fun c!4809 () Bool)

(assert (=> d!6777 (= c!4809 (and (is-Intermediate!180 lt!15172) (undefined!992 lt!15172)))))

(declare-fun e!25338 () SeekEntryResult!180)

(assert (=> d!6777 (= lt!15172 e!25338)))

(declare-fun c!4810 () Bool)

(assert (=> d!6777 (= c!4810 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!15171 () (_ BitVec 64))

(assert (=> d!6777 (= lt!15171 (select (arr!1231 lt!14704) (toIndex!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!6777 (validMask!0 mask!853)))

(assert (=> d!6777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) mask!853) (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853) lt!15172)))

(declare-fun b!39924 () Bool)

(declare-fun e!25339 () SeekEntryResult!180)

(assert (=> b!39924 (= e!25338 e!25339)))

(declare-fun c!4811 () Bool)

(assert (=> b!39924 (= c!4811 (or (= lt!15171 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)) (= (bvadd lt!15171 lt!15171) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!39925 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!39925 (= e!25339 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853))))

(declare-fun b!39926 () Bool)

(assert (=> b!39926 (= e!25338 (Intermediate!180 true (toIndex!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!39927 () Bool)

(assert (=> b!39927 (= e!25339 (Intermediate!180 false (toIndex!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!39928 () Bool)

(assert (=> b!39928 (and (bvsge (index!2844 lt!15172) #b00000000000000000000000000000000) (bvslt (index!2844 lt!15172) (size!1353 lt!14704)))))

(assert (=> b!39928 (= e!25337 (= (select (arr!1231 lt!14704) (index!2844 lt!15172)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!6777 c!4810) b!39926))

(assert (= (and d!6777 (not c!4810)) b!39924))

(assert (= (and b!39924 c!4811) b!39927))

(assert (= (and b!39924 (not c!4811)) b!39925))

(assert (= (and d!6777 c!4809) b!39922))

(assert (= (and d!6777 (not c!4809)) b!39921))

(assert (= (and b!39921 res!23887) b!39920))

(assert (= (and b!39920 (not res!23889)) b!39923))

(assert (= (and b!39923 (not res!23888)) b!39928))

(assert (=> d!6777 m!32297))

(declare-fun m!32631 () Bool)

(assert (=> d!6777 m!32631))

(assert (=> d!6777 m!31901))

(declare-fun m!32633 () Bool)

(assert (=> b!39920 m!32633))

(assert (=> b!39925 m!32297))

(declare-fun m!32635 () Bool)

(assert (=> b!39925 m!32635))

(assert (=> b!39925 m!32635))

(assert (=> b!39925 m!31967))

(declare-fun m!32637 () Bool)

(assert (=> b!39925 m!32637))

(assert (=> b!39928 m!32633))

(assert (=> b!39923 m!32633))

(assert (=> d!6663 d!6777))

(declare-fun d!6785 () Bool)

(declare-fun lt!15190 () (_ BitVec 32))

(declare-fun lt!15189 () (_ BitVec 32))

(assert (=> d!6785 (= lt!15190 (bvmul (bvxor lt!15189 (bvlshr lt!15189 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!6785 (= lt!15189 ((_ extract 31 0) (bvand (bvxor (select (arr!1231 lt!14704) #b00000000000000000000000000000000) (bvlshr (select (arr!1231 lt!14704) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!6785 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!23890 (let ((h!1635 ((_ extract 31 0) (bvand (bvxor (select (arr!1231 lt!14704) #b00000000000000000000000000000000) (bvlshr (select (arr!1231 lt!14704) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7688 (bvmul (bvxor h!1635 (bvlshr h!1635 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7688 (bvlshr x!7688 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!23890 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!23890 #b00000000000000000000000000000000))))))

(assert (=> d!6785 (= (toIndex!0 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!15190 (bvlshr lt!15190 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!6663 d!6785))

(assert (=> d!6663 d!6549))

(declare-fun d!6789 () Bool)

(assert (=> d!6789 (= (apply!52 lt!14888 #b1000000000000000000000000000000000000000000000000000000000000000) (get!692 (getValueByKey!98 (toList!547 lt!14888) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1661 () Bool)

(assert (= bs!1661 d!6789))

(declare-fun m!32651 () Bool)

(assert (=> bs!1661 m!32651))

(assert (=> bs!1661 m!32651))

(declare-fun m!32653 () Bool)

(assert (=> bs!1661 m!32653))

(assert (=> b!39464 d!6789))

(declare-fun d!6793 () Bool)

(assert (=> d!6793 (= (size!1372 lt!14706) (bvadd (_size!165 lt!14706) (bvsdiv (bvadd (extraKeys!1685 lt!14706) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!39559 d!6793))

(assert (=> b!39558 d!6793))

(declare-fun d!6797 () Bool)

(declare-fun lt!15191 () Bool)

(assert (=> d!6797 (= lt!15191 (set.member (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (content!29 (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060))))))

(declare-fun e!25349 () Bool)

(assert (=> d!6797 (= lt!15191 e!25349)))

(declare-fun res!23900 () Bool)

(assert (=> d!6797 (=> (not res!23900) (not e!25349))))

(assert (=> d!6797 (= res!23900 (is-Cons!1059 (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)))))

(assert (=> d!6797 (= (contains!505 (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!15191)))

(declare-fun b!39940 () Bool)

(declare-fun e!25350 () Bool)

(assert (=> b!39940 (= e!25349 e!25350)))

(declare-fun res!23901 () Bool)

(assert (=> b!39940 (=> res!23901 e!25350)))

(assert (=> b!39940 (= res!23901 (= (h!1630 (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39941 () Bool)

(assert (=> b!39941 (= e!25350 (contains!505 (t!3912 (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6797 res!23900) b!39940))

(assert (= (and b!39940 (not res!23901)) b!39941))

(declare-fun m!32659 () Bool)

(assert (=> d!6797 m!32659))

(assert (=> d!6797 m!32199))

(declare-fun m!32661 () Bool)

(assert (=> d!6797 m!32661))

(assert (=> b!39941 m!32199))

(declare-fun m!32663 () Bool)

(assert (=> b!39941 m!32663))

(assert (=> b!39520 d!6797))

(assert (=> b!39519 d!6753))

(declare-fun d!6799 () Bool)

(declare-fun e!25351 () Bool)

(assert (=> d!6799 e!25351))

(declare-fun res!23902 () Bool)

(assert (=> d!6799 (=> (not res!23902) (not e!25351))))

(declare-fun lt!15193 () ListLongMap!1063)

(assert (=> d!6799 (= res!23902 (contains!507 lt!15193 (_1!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))))))

(declare-fun lt!15195 () List!1062)

(assert (=> d!6799 (= lt!15193 (ListLongMap!1064 lt!15195))))

(declare-fun lt!15194 () Unit!960)

(declare-fun lt!15192 () Unit!960)

(assert (=> d!6799 (= lt!15194 lt!15192)))

(assert (=> d!6799 (= (getValueByKey!98 lt!15195 (_1!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))) (Some!103 (_2!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))))))

(assert (=> d!6799 (= lt!15192 (lemmaContainsTupThenGetReturnValue!23 lt!15195 (_1!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))) (_2!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))))))

(assert (=> d!6799 (= lt!15195 (insertStrictlySorted!20 (toList!547 (ite c!4674 call!3015 (ite c!4675 call!3010 call!3012))) (_1!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))) (_2!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))))))

(assert (=> d!6799 (= (+!61 (ite c!4674 call!3015 (ite c!4675 call!3010 call!3012)) (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))) lt!15193)))

(declare-fun b!39942 () Bool)

(declare-fun res!23903 () Bool)

(assert (=> b!39942 (=> (not res!23903) (not e!25351))))

(assert (=> b!39942 (= res!23903 (= (getValueByKey!98 (toList!547 lt!15193) (_1!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706))))) (Some!103 (_2!751 (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))))))))

(declare-fun b!39943 () Bool)

(assert (=> b!39943 (= e!25351 (contains!510 (toList!547 lt!15193) (ite (or c!4674 c!4675) (tuple2!1483 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1712 lt!14706)) (tuple2!1483 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1712 lt!14706)))))))

(assert (= (and d!6799 res!23902) b!39942))

(assert (= (and b!39942 res!23903) b!39943))

(declare-fun m!32665 () Bool)

(assert (=> d!6799 m!32665))

(declare-fun m!32667 () Bool)

(assert (=> d!6799 m!32667))

(declare-fun m!32669 () Bool)

(assert (=> d!6799 m!32669))

(declare-fun m!32671 () Bool)

(assert (=> d!6799 m!32671))

(declare-fun m!32673 () Bool)

(assert (=> b!39942 m!32673))

(declare-fun m!32677 () Bool)

(assert (=> b!39943 m!32677))

(assert (=> bm!3013 d!6799))

(declare-fun d!6803 () Bool)

(assert (=> d!6803 (= (content!29 Nil!1060) (as set.empty (Set (_ BitVec 64))))))

(assert (=> d!6675 d!6803))

(declare-fun b!39952 () Bool)

(declare-fun e!25357 () Bool)

(declare-fun call!3083 () Bool)

(assert (=> b!39952 (= e!25357 call!3083)))

(declare-fun b!39953 () Bool)

(assert (=> b!39953 (= e!25357 call!3083)))

(declare-fun d!6807 () Bool)

(declare-fun res!23910 () Bool)

(declare-fun e!25358 () Bool)

(assert (=> d!6807 (=> res!23910 e!25358)))

(assert (=> d!6807 (= res!23910 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1353 lt!14704)))))

(assert (=> d!6807 (= (arrayNoDuplicates!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4690 (Cons!1059 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060))) e!25358)))

(declare-fun b!39954 () Bool)

(declare-fun e!25359 () Bool)

(assert (=> b!39954 (= e!25358 e!25359)))

(declare-fun res!23909 () Bool)

(assert (=> b!39954 (=> (not res!23909) (not e!25359))))

(declare-fun e!25360 () Bool)

(assert (=> b!39954 (= res!23909 (not e!25360))))

(declare-fun res!23908 () Bool)

(assert (=> b!39954 (=> (not res!23908) (not e!25360))))

(assert (=> b!39954 (= res!23908 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!3080 () Bool)

(declare-fun c!4815 () Bool)

(assert (=> bm!3080 (= call!3083 (arrayNoDuplicates!0 lt!14704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4815 (Cons!1059 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!4690 (Cons!1059 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060))) (ite c!4690 (Cons!1059 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)))))))

(declare-fun b!39955 () Bool)

(assert (=> b!39955 (= e!25359 e!25357)))

(assert (=> b!39955 (= c!4815 (validKeyInArray!0 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39956 () Bool)

(assert (=> b!39956 (= e!25360 (contains!505 (ite c!4690 (Cons!1059 (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (ite c!4636 (Cons!1059 (select (arr!1231 lt!14704) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (select (arr!1231 lt!14704) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!6807 (not res!23910)) b!39954))

(assert (= (and b!39954 res!23908) b!39956))

(assert (= (and b!39954 res!23909) b!39955))

(assert (= (and b!39955 c!4815) b!39953))

(assert (= (and b!39955 (not c!4815)) b!39952))

(assert (= (or b!39953 b!39952) bm!3080))

(assert (=> b!39954 m!32501))

(assert (=> b!39954 m!32501))

(assert (=> b!39954 m!32503))

(assert (=> bm!3080 m!32501))

(declare-fun m!32695 () Bool)

(assert (=> bm!3080 m!32695))

(assert (=> b!39955 m!32501))

(assert (=> b!39955 m!32501))

(assert (=> b!39955 m!32503))

(assert (=> b!39956 m!32501))

(assert (=> b!39956 m!32501))

(declare-fun m!32697 () Bool)

(assert (=> b!39956 m!32697))

(assert (=> bm!3027 d!6807))

(assert (=> b!39518 d!6753))

(declare-fun b!39991 () Bool)

(declare-fun e!25383 () SeekEntryResult!180)

(assert (=> b!39991 (= e!25383 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7666 lt!15026) #b00000000000000000000000000000001) (nextIndex!0 (index!2844 lt!15026) (x!7666 lt!15026) mask!853) (index!2844 lt!15026) (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853))))

(declare-fun b!39992 () Bool)

(declare-fun e!25385 () SeekEntryResult!180)

(assert (=> b!39992 (= e!25385 (Found!180 (index!2844 lt!15026)))))

(declare-fun b!39993 () Bool)

(declare-fun e!25384 () SeekEntryResult!180)

(assert (=> b!39993 (= e!25384 Undefined!180)))

(declare-fun b!39994 () Bool)

(declare-fun c!4824 () Bool)

(declare-fun lt!15231 () (_ BitVec 64))

(assert (=> b!39994 (= c!4824 (= lt!15231 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39994 (= e!25385 e!25383)))

(declare-fun d!6813 () Bool)

(declare-fun lt!15232 () SeekEntryResult!180)

(assert (=> d!6813 (and (or (is-Undefined!180 lt!15232) (not (is-Found!180 lt!15232)) (and (bvsge (index!2843 lt!15232) #b00000000000000000000000000000000) (bvslt (index!2843 lt!15232) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15232) (is-Found!180 lt!15232) (not (is-MissingVacant!180 lt!15232)) (not (= (index!2845 lt!15232) (index!2844 lt!15026))) (and (bvsge (index!2845 lt!15232) #b00000000000000000000000000000000) (bvslt (index!2845 lt!15232) (size!1353 lt!14704)))) (or (is-Undefined!180 lt!15232) (ite (is-Found!180 lt!15232) (= (select (arr!1231 lt!14704) (index!2843 lt!15232)) (select (arr!1231 lt!14704) #b00000000000000000000000000000000)) (and (is-MissingVacant!180 lt!15232) (= (index!2845 lt!15232) (index!2844 lt!15026)) (= (select (arr!1231 lt!14704) (index!2845 lt!15232)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!6813 (= lt!15232 e!25384)))

(declare-fun c!4826 () Bool)

(assert (=> d!6813 (= c!4826 (bvsge (x!7666 lt!15026) #b01111111111111111111111111111110))))

(assert (=> d!6813 (= lt!15231 (select (arr!1231 lt!14704) (index!2844 lt!15026)))))

(assert (=> d!6813 (validMask!0 mask!853)))

(assert (=> d!6813 (= (seekKeyOrZeroReturnVacant!0 (x!7666 lt!15026) (index!2844 lt!15026) (index!2844 lt!15026) (select (arr!1231 lt!14704) #b00000000000000000000000000000000) lt!14704 mask!853) lt!15232)))

(declare-fun b!39995 () Bool)

(assert (=> b!39995 (= e!25384 e!25385)))

(declare-fun c!4825 () Bool)

(assert (=> b!39995 (= c!4825 (= lt!15231 (select (arr!1231 lt!14704) #b00000000000000000000000000000000)))))

(declare-fun b!39996 () Bool)

(assert (=> b!39996 (= e!25383 (MissingVacant!180 (index!2844 lt!15026)))))

(assert (= (and d!6813 c!4826) b!39993))

(assert (= (and d!6813 (not c!4826)) b!39995))

(assert (= (and b!39995 c!4825) b!39992))

(assert (= (and b!39995 (not c!4825)) b!39994))

(assert (= (and b!39994 c!4824) b!39996))

(assert (= (and b!39994 (not c!4824)) b!39991))

(declare-fun m!32793 () Bool)

(assert (=> b!39991 m!32793))

(assert (=> b!39991 m!32793))

(assert (=> b!39991 m!31967))

(declare-fun m!32797 () Bool)

(assert (=> b!39991 m!32797))

(declare-fun m!32801 () Bool)

(assert (=> d!6813 m!32801))

(declare-fun m!32803 () Bool)

(assert (=> d!6813 m!32803))

(assert (=> d!6813 m!32291))

(assert (=> d!6813 m!31901))

(assert (=> b!39650 d!6813))

(assert (=> b!39474 d!6733))

(declare-fun d!6859 () Bool)

(assert (=> d!6859 (= (apply!52 (+!61 lt!14882 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))) lt!14885) (get!692 (getValueByKey!98 (toList!547 (+!61 lt!14882 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706)))) lt!14885)))))

(declare-fun bs!1672 () Bool)

(assert (= bs!1672 d!6859))

(declare-fun m!32817 () Bool)

(assert (=> bs!1672 m!32817))

(assert (=> bs!1672 m!32817))

(declare-fun m!32821 () Bool)

(assert (=> bs!1672 m!32821))

(assert (=> b!39473 d!6859))

(declare-fun d!6863 () Bool)

(assert (=> d!6863 (= (apply!52 (+!61 lt!14894 (tuple2!1483 lt!14895 (minValue!1712 lt!14706))) lt!14880) (get!692 (getValueByKey!98 (toList!547 (+!61 lt!14894 (tuple2!1483 lt!14895 (minValue!1712 lt!14706)))) lt!14880)))))

(declare-fun bs!1673 () Bool)

(assert (= bs!1673 d!6863))

(declare-fun m!32833 () Bool)

(assert (=> bs!1673 m!32833))

(assert (=> bs!1673 m!32833))

(declare-fun m!32835 () Bool)

(assert (=> bs!1673 m!32835))

(assert (=> b!39473 d!6863))

(declare-fun d!6867 () Bool)

(assert (=> d!6867 (= (apply!52 (+!61 lt!14882 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))) lt!14885) (apply!52 lt!14882 lt!14885))))

(declare-fun lt!15242 () Unit!960)

(declare-fun choose!246 (ListLongMap!1063 (_ BitVec 64) V!2089 (_ BitVec 64)) Unit!960)

(assert (=> d!6867 (= lt!15242 (choose!246 lt!14882 lt!14883 (zeroValue!1712 lt!14706) lt!14885))))

(declare-fun e!25392 () Bool)

(assert (=> d!6867 e!25392))

(declare-fun res!23931 () Bool)

(assert (=> d!6867 (=> (not res!23931) (not e!25392))))

(assert (=> d!6867 (= res!23931 (contains!507 lt!14882 lt!14885))))

(assert (=> d!6867 (= (addApplyDifferent!28 lt!14882 lt!14883 (zeroValue!1712 lt!14706) lt!14885) lt!15242)))

(declare-fun b!40008 () Bool)

(assert (=> b!40008 (= e!25392 (not (= lt!14885 lt!14883)))))

(assert (= (and d!6867 res!23931) b!40008))

(declare-fun m!32837 () Bool)

(assert (=> d!6867 m!32837))

(assert (=> d!6867 m!32189))

(assert (=> d!6867 m!32167))

(assert (=> d!6867 m!32169))

(assert (=> d!6867 m!32167))

(declare-fun m!32839 () Bool)

(assert (=> d!6867 m!32839))

(assert (=> b!39473 d!6867))

(declare-fun d!6869 () Bool)

(declare-fun e!25395 () Bool)

(assert (=> d!6869 e!25395))

(declare-fun res!23932 () Bool)

(assert (=> d!6869 (=> (not res!23932) (not e!25395))))

(declare-fun lt!15252 () ListLongMap!1063)

(assert (=> d!6869 (= res!23932 (contains!507 lt!15252 (_1!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706)))))))

(declare-fun lt!15254 () List!1062)

(assert (=> d!6869 (= lt!15252 (ListLongMap!1064 lt!15254))))

(declare-fun lt!15253 () Unit!960)

(declare-fun lt!15251 () Unit!960)

(assert (=> d!6869 (= lt!15253 lt!15251)))

(assert (=> d!6869 (= (getValueByKey!98 lt!15254 (_1!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706)))))))

(assert (=> d!6869 (= lt!15251 (lemmaContainsTupThenGetReturnValue!23 lt!15254 (_1!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706)))))))

(assert (=> d!6869 (= lt!15254 (insertStrictlySorted!20 (toList!547 lt!14882) (_1!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706)))))))

(assert (=> d!6869 (= (+!61 lt!14882 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))) lt!15252)))

(declare-fun b!40013 () Bool)

(declare-fun res!23933 () Bool)

(assert (=> b!40013 (=> (not res!23933) (not e!25395))))

(assert (=> b!40013 (= res!23933 (= (getValueByKey!98 (toList!547 lt!15252) (_1!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))))))))

(declare-fun b!40014 () Bool)

(assert (=> b!40014 (= e!25395 (contains!510 (toList!547 lt!15252) (tuple2!1483 lt!14883 (zeroValue!1712 lt!14706))))))

(assert (= (and d!6869 res!23932) b!40013))

(assert (= (and b!40013 res!23933) b!40014))

(declare-fun m!32841 () Bool)

(assert (=> d!6869 m!32841))

(declare-fun m!32843 () Bool)

(assert (=> d!6869 m!32843))

(declare-fun m!32845 () Bool)

(assert (=> d!6869 m!32845))

(declare-fun m!32847 () Bool)

(assert (=> d!6869 m!32847))

(declare-fun m!32849 () Bool)

(assert (=> b!40013 m!32849))

(declare-fun m!32851 () Bool)

(assert (=> b!40014 m!32851))

(assert (=> b!39473 d!6869))

(declare-fun d!6871 () Bool)

(assert (=> d!6871 (= (apply!52 lt!14882 lt!14885) (get!692 (getValueByKey!98 (toList!547 lt!14882) lt!14885)))))

(declare-fun bs!1674 () Bool)

(assert (= bs!1674 d!6871))

(declare-fun m!32853 () Bool)

(assert (=> bs!1674 m!32853))

(assert (=> bs!1674 m!32853))

(declare-fun m!32855 () Bool)

(assert (=> bs!1674 m!32855))

(assert (=> b!39473 d!6871))

(declare-fun d!6873 () Bool)

(assert (=> d!6873 (= (apply!52 lt!14879 lt!14890) (get!692 (getValueByKey!98 (toList!547 lt!14879) lt!14890)))))

(declare-fun bs!1675 () Bool)

(assert (= bs!1675 d!6873))

(declare-fun m!32857 () Bool)

(assert (=> bs!1675 m!32857))

(assert (=> bs!1675 m!32857))

(declare-fun m!32859 () Bool)

(assert (=> bs!1675 m!32859))

(assert (=> b!39473 d!6873))

(declare-fun d!6875 () Bool)

(declare-fun e!25399 () Bool)

(assert (=> d!6875 e!25399))

(declare-fun res!23936 () Bool)

(assert (=> d!6875 (=> res!23936 e!25399)))

(declare-fun lt!15257 () Bool)

(assert (=> d!6875 (= res!23936 (not lt!15257))))

(declare-fun lt!15255 () Bool)

(assert (=> d!6875 (= lt!15257 lt!15255)))

(declare-fun lt!15258 () Unit!960)

(declare-fun e!25398 () Unit!960)

(assert (=> d!6875 (= lt!15258 e!25398)))

(declare-fun c!4832 () Bool)

(assert (=> d!6875 (= c!4832 lt!15255)))

(assert (=> d!6875 (= lt!15255 (containsKey!66 (toList!547 (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))) lt!14887))))

(assert (=> d!6875 (= (contains!507 (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))) lt!14887) lt!15257)))

(declare-fun b!40017 () Bool)

(declare-fun lt!15256 () Unit!960)

(assert (=> b!40017 (= e!25398 lt!15256)))

(assert (=> b!40017 (= lt!15256 (lemmaContainsKeyImpliesGetValueByKeyDefined!54 (toList!547 (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))) lt!14887))))

(assert (=> b!40017 (isDefined!55 (getValueByKey!98 (toList!547 (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))) lt!14887))))

(declare-fun b!40018 () Bool)

(declare-fun Unit!973 () Unit!960)

(assert (=> b!40018 (= e!25398 Unit!973)))

(declare-fun b!40019 () Bool)

(assert (=> b!40019 (= e!25399 (isDefined!55 (getValueByKey!98 (toList!547 (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))) lt!14887)))))

(assert (= (and d!6875 c!4832) b!40017))

(assert (= (and d!6875 (not c!4832)) b!40018))

(assert (= (and d!6875 (not res!23936)) b!40019))

(declare-fun m!32861 () Bool)

(assert (=> d!6875 m!32861))

(declare-fun m!32863 () Bool)

(assert (=> b!40017 m!32863))

(declare-fun m!32865 () Bool)

(assert (=> b!40017 m!32865))

(assert (=> b!40017 m!32865))

(declare-fun m!32867 () Bool)

(assert (=> b!40017 m!32867))

(assert (=> b!40019 m!32865))

(assert (=> b!40019 m!32865))

(assert (=> b!40019 m!32867))

(assert (=> b!39473 d!6875))

(declare-fun d!6877 () Bool)

(declare-fun e!25402 () Bool)

(assert (=> d!6877 e!25402))

(declare-fun res!23938 () Bool)

(assert (=> d!6877 (=> (not res!23938) (not e!25402))))

(declare-fun lt!15264 () ListLongMap!1063)

(assert (=> d!6877 (= res!23938 (contains!507 lt!15264 (_1!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706)))))))

(declare-fun lt!15266 () List!1062)

(assert (=> d!6877 (= lt!15264 (ListLongMap!1064 lt!15266))))

(declare-fun lt!15265 () Unit!960)

(declare-fun lt!15263 () Unit!960)

(assert (=> d!6877 (= lt!15265 lt!15263)))

(assert (=> d!6877 (= (getValueByKey!98 lt!15266 (_1!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706)))))))

(assert (=> d!6877 (= lt!15263 (lemmaContainsTupThenGetReturnValue!23 lt!15266 (_1!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706)))))))

(assert (=> d!6877 (= lt!15266 (insertStrictlySorted!20 (toList!547 lt!14879) (_1!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706)))))))

(assert (=> d!6877 (= (+!61 lt!14879 (tuple2!1483 lt!14875 (minValue!1712 lt!14706))) lt!15264)))

(declare-fun b!40023 () Bool)

(declare-fun res!23939 () Bool)

(assert (=> b!40023 (=> (not res!23939) (not e!25402))))

(assert (=> b!40023 (= res!23939 (= (getValueByKey!98 (toList!547 lt!15264) (_1!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14875 (minValue!1712 lt!14706))))))))

(declare-fun b!40024 () Bool)

(assert (=> b!40024 (= e!25402 (contains!510 (toList!547 lt!15264) (tuple2!1483 lt!14875 (minValue!1712 lt!14706))))))

(assert (= (and d!6877 res!23938) b!40023))

(assert (= (and b!40023 res!23939) b!40024))

(declare-fun m!32877 () Bool)

(assert (=> d!6877 m!32877))

(declare-fun m!32879 () Bool)

(assert (=> d!6877 m!32879))

(declare-fun m!32881 () Bool)

(assert (=> d!6877 m!32881))

(declare-fun m!32883 () Bool)

(assert (=> d!6877 m!32883))

(declare-fun m!32885 () Bool)

(assert (=> b!40023 m!32885))

(declare-fun m!32887 () Bool)

(assert (=> b!40024 m!32887))

(assert (=> b!39473 d!6877))

(declare-fun d!6881 () Bool)

(assert (=> d!6881 (= (apply!52 (+!61 lt!14894 (tuple2!1483 lt!14895 (minValue!1712 lt!14706))) lt!14880) (apply!52 lt!14894 lt!14880))))

(declare-fun lt!15268 () Unit!960)

(assert (=> d!6881 (= lt!15268 (choose!246 lt!14894 lt!14895 (minValue!1712 lt!14706) lt!14880))))

(declare-fun e!25405 () Bool)

(assert (=> d!6881 e!25405))

(declare-fun res!23940 () Bool)

(assert (=> d!6881 (=> (not res!23940) (not e!25405))))

(assert (=> d!6881 (= res!23940 (contains!507 lt!14894 lt!14880))))

(assert (=> d!6881 (= (addApplyDifferent!28 lt!14894 lt!14895 (minValue!1712 lt!14706) lt!14880) lt!15268)))

(declare-fun b!40029 () Bool)

(assert (=> b!40029 (= e!25405 (not (= lt!14880 lt!14895)))))

(assert (= (and d!6881 res!23940) b!40029))

(declare-fun m!32889 () Bool)

(assert (=> d!6881 m!32889))

(assert (=> d!6881 m!32183))

(assert (=> d!6881 m!32177))

(assert (=> d!6881 m!32179))

(assert (=> d!6881 m!32177))

(declare-fun m!32893 () Bool)

(assert (=> d!6881 m!32893))

(assert (=> b!39473 d!6881))

(declare-fun b!40131 () Bool)

(declare-fun e!25467 () Bool)

(assert (=> b!40131 (= e!25467 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(assert (=> b!40131 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!40132 () Bool)

(declare-fun res!23979 () Bool)

(declare-fun e!25465 () Bool)

(assert (=> b!40132 (=> (not res!23979) (not e!25465))))

(declare-fun lt!15335 () ListLongMap!1063)

(assert (=> b!40132 (= res!23979 (not (contains!507 lt!15335 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!40133 () Bool)

(declare-fun e!25471 () Bool)

(declare-fun isEmpty!231 (ListLongMap!1063) Bool)

(assert (=> b!40133 (= e!25471 (isEmpty!231 lt!15335))))

(declare-fun b!40134 () Bool)

(assert (=> b!40134 (= e!25471 (= lt!15335 (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1794 lt!14706))))))

(declare-fun b!40135 () Bool)

(declare-fun e!25470 () ListLongMap!1063)

(assert (=> b!40135 (= e!25470 (ListLongMap!1064 Nil!1059))))

(declare-fun b!40136 () Bool)

(declare-fun e!25468 () ListLongMap!1063)

(declare-fun call!3092 () ListLongMap!1063)

(assert (=> b!40136 (= e!25468 call!3092)))

(declare-fun b!40137 () Bool)

(assert (=> b!40137 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(assert (=> b!40137 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1354 (_values!1777 lt!14706))))))

(declare-fun e!25469 () Bool)

(assert (=> b!40137 (= e!25469 (= (apply!52 lt!15335 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)) (get!689 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000) (dynLambda!187 (defaultEntry!1794 lt!14706) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!6885 () Bool)

(assert (=> d!6885 e!25465))

(declare-fun res!23977 () Bool)

(assert (=> d!6885 (=> (not res!23977) (not e!25465))))

(assert (=> d!6885 (= res!23977 (not (contains!507 lt!15335 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!6885 (= lt!15335 e!25470)))

(declare-fun c!4871 () Bool)

(assert (=> d!6885 (= c!4871 (bvsge #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6885 (validMask!0 (mask!5141 lt!14706))))

(assert (=> d!6885 (= (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) #b00000000000000000000000000000000 (defaultEntry!1794 lt!14706)) lt!15335)))

(declare-fun b!40138 () Bool)

(declare-fun lt!15329 () Unit!960)

(declare-fun lt!15332 () Unit!960)

(assert (=> b!40138 (= lt!15329 lt!15332)))

(declare-fun lt!15330 () V!2089)

(declare-fun lt!15334 () (_ BitVec 64))

(declare-fun lt!15331 () (_ BitVec 64))

(declare-fun lt!15333 () ListLongMap!1063)

(assert (=> b!40138 (not (contains!507 (+!61 lt!15333 (tuple2!1483 lt!15334 lt!15330)) lt!15331))))

(declare-fun addStillNotContains!6 (ListLongMap!1063 (_ BitVec 64) V!2089 (_ BitVec 64)) Unit!960)

(assert (=> b!40138 (= lt!15332 (addStillNotContains!6 lt!15333 lt!15334 lt!15330 lt!15331))))

(assert (=> b!40138 (= lt!15331 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!40138 (= lt!15330 (get!689 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000) (dynLambda!187 (defaultEntry!1794 lt!14706) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!40138 (= lt!15334 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000))))

(assert (=> b!40138 (= lt!15333 call!3092)))

(assert (=> b!40138 (= e!25468 (+!61 call!3092 (tuple2!1483 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) (get!689 (select (arr!1232 (_values!1777 lt!14706)) #b00000000000000000000000000000000) (dynLambda!187 (defaultEntry!1794 lt!14706) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!40139 () Bool)

(declare-fun e!25466 () Bool)

(assert (=> b!40139 (= e!25466 e!25471)))

(declare-fun c!4869 () Bool)

(assert (=> b!40139 (= c!4869 (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(declare-fun b!40140 () Bool)

(assert (=> b!40140 (= e!25466 e!25469)))

(assert (=> b!40140 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(declare-fun res!23980 () Bool)

(assert (=> b!40140 (= res!23980 (contains!507 lt!15335 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(assert (=> b!40140 (=> (not res!23980) (not e!25469))))

(declare-fun b!40141 () Bool)

(assert (=> b!40141 (= e!25465 e!25466)))

(declare-fun c!4870 () Bool)

(assert (=> b!40141 (= c!4870 e!25467)))

(declare-fun res!23978 () Bool)

(assert (=> b!40141 (=> (not res!23978) (not e!25467))))

(assert (=> b!40141 (= res!23978 (bvslt #b00000000000000000000000000000000 (size!1353 (_keys!3265 lt!14706))))))

(declare-fun bm!3089 () Bool)

(assert (=> bm!3089 (= call!3092 (getCurrentListMapNoExtraKeys!30 (_keys!3265 lt!14706) (_values!1777 lt!14706) (mask!5141 lt!14706) (extraKeys!1685 lt!14706) (zeroValue!1712 lt!14706) (minValue!1712 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1794 lt!14706)))))

(declare-fun b!40142 () Bool)

(assert (=> b!40142 (= e!25470 e!25468)))

(declare-fun c!4872 () Bool)

(assert (=> b!40142 (= c!4872 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(assert (= (and d!6885 c!4871) b!40135))

(assert (= (and d!6885 (not c!4871)) b!40142))

(assert (= (and b!40142 c!4872) b!40138))

(assert (= (and b!40142 (not c!4872)) b!40136))

(assert (= (or b!40138 b!40136) bm!3089))

(assert (= (and d!6885 res!23977) b!40132))

(assert (= (and b!40132 res!23979) b!40141))

(assert (= (and b!40141 res!23978) b!40131))

(assert (= (and b!40141 c!4870) b!40140))

(assert (= (and b!40141 (not c!4870)) b!40139))

(assert (= (and b!40140 res!23980) b!40137))

(assert (= (and b!40139 c!4869) b!40134))

(assert (= (and b!40139 (not c!4869)) b!40133))

(declare-fun b_lambda!2067 () Bool)

(assert (=> (not b_lambda!2067) (not b!40137)))

(assert (=> b!40137 t!3922))

(declare-fun b_and!2361 () Bool)

(assert (= b_and!2349 (and (=> t!3922 result!1437) b_and!2361)))

(declare-fun b_lambda!2071 () Bool)

(assert (=> (not b_lambda!2071) (not b!40138)))

(assert (=> b!40138 t!3922))

(declare-fun b_and!2365 () Bool)

(assert (= b_and!2361 (and (=> t!3922 result!1437) b_and!2365)))

(declare-fun m!32933 () Bool)

(assert (=> b!40134 m!32933))

(assert (=> b!40140 m!32139))

(assert (=> b!40140 m!32139))

(declare-fun m!32935 () Bool)

(assert (=> b!40140 m!32935))

(assert (=> b!40138 m!32137))

(declare-fun m!32939 () Bool)

(assert (=> b!40138 m!32939))

(declare-fun m!32941 () Bool)

(assert (=> b!40138 m!32941))

(assert (=> b!40138 m!32135))

(assert (=> b!40138 m!32137))

(assert (=> b!40138 m!32143))

(assert (=> b!40138 m!32939))

(assert (=> b!40138 m!32139))

(assert (=> b!40138 m!32135))

(declare-fun m!32947 () Bool)

(assert (=> b!40138 m!32947))

(declare-fun m!32951 () Bool)

(assert (=> b!40138 m!32951))

(assert (=> b!40142 m!32139))

(assert (=> b!40142 m!32139))

(assert (=> b!40142 m!32153))

(declare-fun m!32955 () Bool)

(assert (=> b!40132 m!32955))

(assert (=> b!40131 m!32139))

(assert (=> b!40131 m!32139))

(assert (=> b!40131 m!32153))

(assert (=> bm!3089 m!32933))

(declare-fun m!32959 () Bool)

(assert (=> b!40133 m!32959))

(declare-fun m!32961 () Bool)

(assert (=> d!6885 m!32961))

(assert (=> d!6885 m!32157))

(assert (=> b!40137 m!32137))

(assert (=> b!40137 m!32135))

(assert (=> b!40137 m!32137))

(assert (=> b!40137 m!32143))

(assert (=> b!40137 m!32139))

(declare-fun m!32969 () Bool)

(assert (=> b!40137 m!32969))

(assert (=> b!40137 m!32139))

(assert (=> b!40137 m!32135))

(assert (=> b!39473 d!6885))

(declare-fun d!6901 () Bool)

(assert (=> d!6901 (contains!507 (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))) lt!14887)))

(declare-fun lt!15338 () Unit!960)

(declare-fun choose!247 (ListLongMap!1063 (_ BitVec 64) V!2089 (_ BitVec 64)) Unit!960)

(assert (=> d!6901 (= lt!15338 (choose!247 lt!14889 lt!14877 (zeroValue!1712 lt!14706) lt!14887))))

(assert (=> d!6901 (contains!507 lt!14889 lt!14887)))

(assert (=> d!6901 (= (addStillContains!28 lt!14889 lt!14877 (zeroValue!1712 lt!14706) lt!14887) lt!15338)))

(declare-fun bs!1676 () Bool)

(assert (= bs!1676 d!6901))

(assert (=> bs!1676 m!32181))

(assert (=> bs!1676 m!32181))

(assert (=> bs!1676 m!32185))

(declare-fun m!32971 () Bool)

(assert (=> bs!1676 m!32971))

(declare-fun m!32973 () Bool)

(assert (=> bs!1676 m!32973))

(assert (=> b!39473 d!6901))

(declare-fun d!6905 () Bool)

(declare-fun e!25472 () Bool)

(assert (=> d!6905 e!25472))

(declare-fun res!23981 () Bool)

(assert (=> d!6905 (=> (not res!23981) (not e!25472))))

(declare-fun lt!15340 () ListLongMap!1063)

(assert (=> d!6905 (= res!23981 (contains!507 lt!15340 (_1!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706)))))))

(declare-fun lt!15342 () List!1062)

(assert (=> d!6905 (= lt!15340 (ListLongMap!1064 lt!15342))))

(declare-fun lt!15341 () Unit!960)

(declare-fun lt!15339 () Unit!960)

(assert (=> d!6905 (= lt!15341 lt!15339)))

(assert (=> d!6905 (= (getValueByKey!98 lt!15342 (_1!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706)))))))

(assert (=> d!6905 (= lt!15339 (lemmaContainsTupThenGetReturnValue!23 lt!15342 (_1!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706)))))))

(assert (=> d!6905 (= lt!15342 (insertStrictlySorted!20 (toList!547 lt!14894) (_1!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706)))))))

(assert (=> d!6905 (= (+!61 lt!14894 (tuple2!1483 lt!14895 (minValue!1712 lt!14706))) lt!15340)))

(declare-fun b!40144 () Bool)

(declare-fun res!23982 () Bool)

(assert (=> b!40144 (=> (not res!23982) (not e!25472))))

(assert (=> b!40144 (= res!23982 (= (getValueByKey!98 (toList!547 lt!15340) (_1!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14895 (minValue!1712 lt!14706))))))))

(declare-fun b!40145 () Bool)

(assert (=> b!40145 (= e!25472 (contains!510 (toList!547 lt!15340) (tuple2!1483 lt!14895 (minValue!1712 lt!14706))))))

(assert (= (and d!6905 res!23981) b!40144))

(assert (= (and b!40144 res!23982) b!40145))

(declare-fun m!32975 () Bool)

(assert (=> d!6905 m!32975))

(declare-fun m!32977 () Bool)

(assert (=> d!6905 m!32977))

(declare-fun m!32979 () Bool)

(assert (=> d!6905 m!32979))

(declare-fun m!32981 () Bool)

(assert (=> d!6905 m!32981))

(declare-fun m!32983 () Bool)

(assert (=> b!40144 m!32983))

(declare-fun m!32985 () Bool)

(assert (=> b!40145 m!32985))

(assert (=> b!39473 d!6905))

(declare-fun d!6907 () Bool)

(declare-fun e!25473 () Bool)

(assert (=> d!6907 e!25473))

(declare-fun res!23983 () Bool)

(assert (=> d!6907 (=> (not res!23983) (not e!25473))))

(declare-fun lt!15344 () ListLongMap!1063)

(assert (=> d!6907 (= res!23983 (contains!507 lt!15344 (_1!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))))))

(declare-fun lt!15346 () List!1062)

(assert (=> d!6907 (= lt!15344 (ListLongMap!1064 lt!15346))))

(declare-fun lt!15345 () Unit!960)

(declare-fun lt!15343 () Unit!960)

(assert (=> d!6907 (= lt!15345 lt!15343)))

(assert (=> d!6907 (= (getValueByKey!98 lt!15346 (_1!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))))))

(assert (=> d!6907 (= lt!15343 (lemmaContainsTupThenGetReturnValue!23 lt!15346 (_1!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))))))

(assert (=> d!6907 (= lt!15346 (insertStrictlySorted!20 (toList!547 lt!14889) (_1!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))) (_2!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))))))

(assert (=> d!6907 (= (+!61 lt!14889 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))) lt!15344)))

(declare-fun b!40146 () Bool)

(declare-fun res!23984 () Bool)

(assert (=> b!40146 (=> (not res!23984) (not e!25473))))

(assert (=> b!40146 (= res!23984 (= (getValueByKey!98 (toList!547 lt!15344) (_1!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706)))) (Some!103 (_2!751 (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))))))))

(declare-fun b!40147 () Bool)

(assert (=> b!40147 (= e!25473 (contains!510 (toList!547 lt!15344) (tuple2!1483 lt!14877 (zeroValue!1712 lt!14706))))))

(assert (= (and d!6907 res!23983) b!40146))

(assert (= (and b!40146 res!23984) b!40147))

(declare-fun m!32987 () Bool)

(assert (=> d!6907 m!32987))

(declare-fun m!32989 () Bool)

(assert (=> d!6907 m!32989))

(declare-fun m!32991 () Bool)

(assert (=> d!6907 m!32991))

(declare-fun m!32993 () Bool)

(assert (=> d!6907 m!32993))

(declare-fun m!32995 () Bool)

(assert (=> b!40146 m!32995))

(declare-fun m!32997 () Bool)

(assert (=> b!40147 m!32997))

(assert (=> b!39473 d!6907))

(declare-fun d!6909 () Bool)

(assert (=> d!6909 (= (apply!52 (+!61 lt!14879 (tuple2!1483 lt!14875 (minValue!1712 lt!14706))) lt!14890) (get!692 (getValueByKey!98 (toList!547 (+!61 lt!14879 (tuple2!1483 lt!14875 (minValue!1712 lt!14706)))) lt!14890)))))

(declare-fun bs!1677 () Bool)

(assert (= bs!1677 d!6909))

(declare-fun m!32999 () Bool)

(assert (=> bs!1677 m!32999))

(assert (=> bs!1677 m!32999))

(declare-fun m!33001 () Bool)

(assert (=> bs!1677 m!33001))

(assert (=> b!39473 d!6909))

(declare-fun d!6911 () Bool)

(assert (=> d!6911 (= (apply!52 (+!61 lt!14879 (tuple2!1483 lt!14875 (minValue!1712 lt!14706))) lt!14890) (apply!52 lt!14879 lt!14890))))

(declare-fun lt!15347 () Unit!960)

(assert (=> d!6911 (= lt!15347 (choose!246 lt!14879 lt!14875 (minValue!1712 lt!14706) lt!14890))))

(declare-fun e!25474 () Bool)

(assert (=> d!6911 e!25474))

(declare-fun res!23985 () Bool)

(assert (=> d!6911 (=> (not res!23985) (not e!25474))))

(assert (=> d!6911 (= res!23985 (contains!507 lt!14879 lt!14890))))

(assert (=> d!6911 (= (addApplyDifferent!28 lt!14879 lt!14875 (minValue!1712 lt!14706) lt!14890) lt!15347)))

(declare-fun b!40148 () Bool)

(assert (=> b!40148 (= e!25474 (not (= lt!14890 lt!14875)))))

(assert (= (and d!6911 res!23985) b!40148))

(declare-fun m!33003 () Bool)

(assert (=> d!6911 m!33003))

(assert (=> d!6911 m!32187))

(assert (=> d!6911 m!32173))

(assert (=> d!6911 m!32175))

(assert (=> d!6911 m!32173))

(declare-fun m!33005 () Bool)

(assert (=> d!6911 m!33005))

(assert (=> b!39473 d!6911))

(declare-fun d!6913 () Bool)

(assert (=> d!6913 (= (apply!52 lt!14894 lt!14880) (get!692 (getValueByKey!98 (toList!547 lt!14894) lt!14880)))))

(declare-fun bs!1678 () Bool)

(assert (= bs!1678 d!6913))

(declare-fun m!33007 () Bool)

(assert (=> bs!1678 m!33007))

(assert (=> bs!1678 m!33007))

(declare-fun m!33009 () Bool)

(assert (=> bs!1678 m!33009))

(assert (=> b!39473 d!6913))

(assert (=> d!6657 d!6567))

(declare-fun d!6915 () Bool)

(declare-fun lt!15348 () Bool)

(assert (=> d!6915 (= lt!15348 (set.member (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) (content!29 Nil!1060)))))

(declare-fun e!25475 () Bool)

(assert (=> d!6915 (= lt!15348 e!25475)))

(declare-fun res!23986 () Bool)

(assert (=> d!6915 (=> (not res!23986) (not e!25475))))

(assert (=> d!6915 (= res!23986 (is-Cons!1059 Nil!1060))))

(assert (=> d!6915 (= (contains!505 Nil!1060 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)) lt!15348)))

(declare-fun b!40149 () Bool)

(declare-fun e!25476 () Bool)

(assert (=> b!40149 (= e!25475 e!25476)))

(declare-fun res!23987 () Bool)

(assert (=> b!40149 (=> res!23987 e!25476)))

(assert (=> b!40149 (= res!23987 (= (h!1630 Nil!1060) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(declare-fun b!40150 () Bool)

(assert (=> b!40150 (= e!25476 (contains!505 (t!3912 Nil!1060) (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000)))))

(assert (= (and d!6915 res!23986) b!40149))

(assert (= (and b!40149 (not res!23987)) b!40150))

(assert (=> d!6915 m!32311))

(assert (=> d!6915 m!32139))

(declare-fun m!33011 () Bool)

(assert (=> d!6915 m!33011))

(assert (=> b!40150 m!32139))

(declare-fun m!33013 () Bool)

(assert (=> b!40150 m!33013))

(assert (=> b!39501 d!6915))

(assert (=> d!6651 d!6561))

(assert (=> b!39500 d!6733))

(declare-fun d!6917 () Bool)

(declare-fun e!25478 () Bool)

(assert (=> d!6917 e!25478))

(declare-fun res!23988 () Bool)

(assert (=> d!6917 (=> res!23988 e!25478)))

(declare-fun lt!15351 () Bool)

(assert (=> d!6917 (= res!23988 (not lt!15351))))

(declare-fun lt!15349 () Bool)

(assert (=> d!6917 (= lt!15351 lt!15349)))

(declare-fun lt!15352 () Unit!960)

(declare-fun e!25477 () Unit!960)

(assert (=> d!6917 (= lt!15352 e!25477)))

(declare-fun c!4873 () Bool)

(assert (=> d!6917 (= c!4873 lt!15349)))

(assert (=> d!6917 (= lt!15349 (containsKey!66 (toList!547 lt!14888) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!6917 (= (contains!507 lt!14888 #b0000000000000000000000000000000000000000000000000000000000000000) lt!15351)))

(declare-fun b!40151 () Bool)

(declare-fun lt!15350 () Unit!960)

(assert (=> b!40151 (= e!25477 lt!15350)))

(assert (=> b!40151 (= lt!15350 (lemmaContainsKeyImpliesGetValueByKeyDefined!54 (toList!547 lt!14888) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40151 (isDefined!55 (getValueByKey!98 (toList!547 lt!14888) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40152 () Bool)

(declare-fun Unit!976 () Unit!960)

(assert (=> b!40152 (= e!25477 Unit!976)))

(declare-fun b!40153 () Bool)

(assert (=> b!40153 (= e!25478 (isDefined!55 (getValueByKey!98 (toList!547 lt!14888) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6917 c!4873) b!40151))

(assert (= (and d!6917 (not c!4873)) b!40152))

(assert (= (and d!6917 (not res!23988)) b!40153))

(declare-fun m!33015 () Bool)

(assert (=> d!6917 m!33015))

(declare-fun m!33017 () Bool)

(assert (=> b!40151 m!33017))

(assert (=> b!40151 m!32553))

(assert (=> b!40151 m!32553))

(declare-fun m!33019 () Bool)

(assert (=> b!40151 m!33019))

(assert (=> b!40153 m!32553))

(assert (=> b!40153 m!32553))

(assert (=> b!40153 m!33019))

(assert (=> bm!3012 d!6917))

(assert (=> bm!3011 d!6885))

(declare-fun d!6919 () Bool)

(assert (not d!6919))

(assert (=> b!39675 d!6919))

(declare-fun b!40154 () Bool)

(declare-fun e!25479 () Bool)

(declare-fun call!3093 () Bool)

(assert (=> b!40154 (= e!25479 call!3093)))

(declare-fun b!40155 () Bool)

(assert (=> b!40155 (= e!25479 call!3093)))

(declare-fun d!6921 () Bool)

(declare-fun res!23991 () Bool)

(declare-fun e!25480 () Bool)

(assert (=> d!6921 (=> res!23991 e!25480)))

(assert (=> d!6921 (= res!23991 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6921 (= (arrayNoDuplicates!0 (_keys!3265 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4684 (Cons!1059 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) e!25480)))

(declare-fun b!40156 () Bool)

(declare-fun e!25481 () Bool)

(assert (=> b!40156 (= e!25480 e!25481)))

(declare-fun res!23990 () Bool)

(assert (=> b!40156 (=> (not res!23990) (not e!25481))))

(declare-fun e!25482 () Bool)

(assert (=> b!40156 (= res!23990 (not e!25482))))

(declare-fun res!23989 () Bool)

(assert (=> b!40156 (=> (not res!23989) (not e!25482))))

(assert (=> b!40156 (= res!23989 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!4874 () Bool)

(declare-fun bm!3090 () Bool)

(assert (=> bm!3090 (= call!3093 (arrayNoDuplicates!0 (_keys!3265 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4874 (Cons!1059 (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4684 (Cons!1059 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) Nil!1060) Nil!1060)) (ite c!4684 (Cons!1059 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) Nil!1060) Nil!1060))))))

(declare-fun b!40157 () Bool)

(assert (=> b!40157 (= e!25481 e!25479)))

(assert (=> b!40157 (= c!4874 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40158 () Bool)

(assert (=> b!40158 (= e!25482 (contains!505 (ite c!4684 (Cons!1059 (select (arr!1231 (_keys!3265 lt!14706)) #b00000000000000000000000000000000) Nil!1060) Nil!1060) (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6921 (not res!23991)) b!40156))

(assert (= (and b!40156 res!23989) b!40158))

(assert (= (and b!40156 res!23990) b!40157))

(assert (= (and b!40157 c!4874) b!40155))

(assert (= (and b!40157 (not c!4874)) b!40154))

(assert (= (or b!40155 b!40154) bm!3090))

(assert (=> b!40156 m!32513))

(assert (=> b!40156 m!32513))

(assert (=> b!40156 m!32515))

(assert (=> bm!3090 m!32513))

(declare-fun m!33021 () Bool)

(assert (=> bm!3090 m!33021))

(assert (=> b!40157 m!32513))

(assert (=> b!40157 m!32513))

(assert (=> b!40157 m!32515))

(assert (=> b!40158 m!32513))

(assert (=> b!40158 m!32513))

(declare-fun m!33023 () Bool)

(assert (=> b!40158 m!33023))

(assert (=> bm!3020 d!6921))

(assert (=> b!39499 d!6733))

(assert (=> d!6653 d!6731))

(declare-fun d!6923 () Bool)

(declare-fun e!25484 () Bool)

(assert (=> d!6923 e!25484))

(declare-fun res!23992 () Bool)

(assert (=> d!6923 (=> res!23992 e!25484)))

(declare-fun lt!15355 () Bool)

(assert (=> d!6923 (= res!23992 (not lt!15355))))

(declare-fun lt!15353 () Bool)

(assert (=> d!6923 (= lt!15355 lt!15353)))

(declare-fun lt!15356 () Unit!960)

(declare-fun e!25483 () Unit!960)

(assert (=> d!6923 (= lt!15356 e!25483)))

(declare-fun c!4875 () Bool)

(assert (=> d!6923 (= c!4875 lt!15353)))

(assert (=> d!6923 (= lt!15353 (containsKey!66 (toList!547 lt!14888) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!6923 (= (contains!507 lt!14888 #b1000000000000000000000000000000000000000000000000000000000000000) lt!15355)))

(declare-fun b!40159 () Bool)

(declare-fun lt!15354 () Unit!960)

(assert (=> b!40159 (= e!25483 lt!15354)))

(assert (=> b!40159 (= lt!15354 (lemmaContainsKeyImpliesGetValueByKeyDefined!54 (toList!547 lt!14888) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40159 (isDefined!55 (getValueByKey!98 (toList!547 lt!14888) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40160 () Bool)

(declare-fun Unit!978 () Unit!960)

(assert (=> b!40160 (= e!25483 Unit!978)))

(declare-fun b!40161 () Bool)

(assert (=> b!40161 (= e!25484 (isDefined!55 (getValueByKey!98 (toList!547 lt!14888) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6923 c!4875) b!40159))

(assert (= (and d!6923 (not c!4875)) b!40160))

(assert (= (and d!6923 (not res!23992)) b!40161))

(declare-fun m!33025 () Bool)

(assert (=> d!6923 m!33025))

(declare-fun m!33027 () Bool)

(assert (=> b!40159 m!33027))

(assert (=> b!40159 m!32651))

(assert (=> b!40159 m!32651))

(declare-fun m!33029 () Bool)

(assert (=> b!40159 m!33029))

(assert (=> b!40161 m!32651))

(assert (=> b!40161 m!32651))

(assert (=> b!40161 m!33029))

(assert (=> bm!3010 d!6923))

(declare-fun b!40162 () Bool)

(declare-fun e!25486 () (_ BitVec 32))

(declare-fun call!3094 () (_ BitVec 32))

(assert (=> b!40162 (= e!25486 (bvadd #b00000000000000000000000000000001 call!3094))))

(declare-fun d!6925 () Bool)

(declare-fun lt!15357 () (_ BitVec 32))

(assert (=> d!6925 (and (bvsge lt!15357 #b00000000000000000000000000000000) (bvsle lt!15357 (bvsub (size!1353 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!25485 () (_ BitVec 32))

(assert (=> d!6925 (= lt!15357 e!25485)))

(declare-fun c!4876 () Bool)

(assert (=> d!6925 (= c!4876 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6925 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1353 (_keys!3265 lt!14706)) (size!1353 (_keys!3265 lt!14706))))))

(assert (=> d!6925 (= (arrayCountValidKeys!0 (_keys!3265 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))) lt!15357)))

(declare-fun b!40163 () Bool)

(assert (=> b!40163 (= e!25485 e!25486)))

(declare-fun c!4877 () Bool)

(assert (=> b!40163 (= c!4877 (validKeyInArray!0 (select (arr!1231 (_keys!3265 lt!14706)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40164 () Bool)

(assert (=> b!40164 (= e!25486 call!3094)))

(declare-fun b!40165 () Bool)

(assert (=> b!40165 (= e!25485 #b00000000000000000000000000000000)))

(declare-fun bm!3091 () Bool)

(assert (=> bm!3091 (= call!3094 (arrayCountValidKeys!0 (_keys!3265 lt!14706) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1353 (_keys!3265 lt!14706))))))

(assert (= (and d!6925 c!4876) b!40165))

(assert (= (and d!6925 (not c!4876)) b!40163))

(assert (= (and b!40163 c!4877) b!40162))

(assert (= (and b!40163 (not c!4877)) b!40164))

(assert (= (or b!40162 b!40164) bm!3091))

(assert (=> b!40163 m!32513))

(assert (=> b!40163 m!32513))

(assert (=> b!40163 m!32515))

(declare-fun m!33031 () Bool)

(assert (=> bm!3091 m!33031))

(assert (=> bm!3028 d!6925))

(declare-fun b_lambda!2073 () Bool)

(assert (= b_lambda!2053 (or (and start!5506 b_free!1357 (= defaultEntry!470 (defaultEntry!1794 lt!14706))) b_lambda!2073)))

(push 1)

(assert (not bm!3072))

(assert (not b!40163))

(assert (not d!6789))

(assert (not b!39875))

(assert (not b!40153))

(assert (not d!6747))

(assert (not b!39842))

(assert (not d!6777))

(assert (not d!6739))

(assert (not d!6905))

(assert (not b!40132))

(assert (not d!6813))

(assert (not b!40146))

(assert (not b!39797))

(assert (not b!40131))

(assert (not b!39991))

(assert (not b!39873))

(assert (not b!40145))

(assert (not b!40151))

(assert (not b!39834))

(assert (not b!40157))

(assert (not b!40137))

(assert (not b!40156))

(assert (not b!39956))

(assert (not b!39954))

(assert b_and!2365)

(assert (not b!40133))

(assert (not b!39881))

(assert (not bm!3080))

(assert (not d!6917))

(assert (not b!40134))

(assert (not b!40017))

(assert (not b_lambda!2067))

(assert (not d!6863))

(assert (not bm!3073))

(assert (not b_lambda!2071))

(assert (not d!6913))

(assert (not d!6735))

(assert (not b_lambda!2073))

(assert (not d!6765))

(assert (not d!6881))

(assert (not d!6799))

(assert (not d!6759))

(assert (not b!39941))

(assert (not b_next!1357))

(assert (not b!39793))

(assert (not d!6923))

(assert tp_is_empty!1747)

(assert (not d!6869))

(assert (not d!6911))

