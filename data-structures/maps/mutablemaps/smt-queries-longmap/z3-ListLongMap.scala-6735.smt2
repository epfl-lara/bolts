; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84412 () Bool)

(assert start!84412)

(declare-fun b_free!19971 () Bool)

(declare-fun b_next!19971 () Bool)

(assert (=> start!84412 (= b_free!19971 (not b_next!19971))))

(declare-fun tp!69689 () Bool)

(declare-fun b_and!32023 () Bool)

(assert (=> start!84412 (= tp!69689 b_and!32023)))

(declare-fun mapNonEmpty!36809 () Bool)

(declare-fun mapRes!36809 () Bool)

(declare-fun tp!69688 () Bool)

(declare-fun e!556563 () Bool)

(assert (=> mapNonEmpty!36809 (= mapRes!36809 (and tp!69688 e!556563))))

(declare-datatypes ((V!35899 0))(
  ( (V!35900 (val!11644 Int)) )
))
(declare-datatypes ((ValueCell!11112 0))(
  ( (ValueCellFull!11112 (v!14206 V!35899)) (EmptyCell!11112) )
))
(declare-datatypes ((array!62321 0))(
  ( (array!62322 (arr!30014 (Array (_ BitVec 32) ValueCell!11112)) (size!30494 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62321)

(declare-fun mapKey!36809 () (_ BitVec 32))

(declare-fun mapValue!36809 () ValueCell!11112)

(declare-fun mapRest!36809 () (Array (_ BitVec 32) ValueCell!11112))

(assert (=> mapNonEmpty!36809 (= (arr!30014 _values!1278) (store mapRest!36809 mapKey!36809 mapValue!36809))))

(declare-fun b!986925 () Bool)

(declare-fun res!660382 () Bool)

(declare-fun e!556564 () Bool)

(assert (=> b!986925 (=> (not res!660382) (not e!556564))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62323 0))(
  ( (array!62324 (arr!30015 (Array (_ BitVec 32) (_ BitVec 64))) (size!30495 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62323)

(assert (=> b!986925 (= res!660382 (and (= (size!30494 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30495 _keys!1544) (size!30494 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986926 () Bool)

(declare-fun res!660381 () Bool)

(assert (=> b!986926 (=> (not res!660381) (not e!556564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62323 (_ BitVec 32)) Bool)

(assert (=> b!986926 (= res!660381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986927 () Bool)

(declare-fun tp_is_empty!23187 () Bool)

(assert (=> b!986927 (= e!556563 tp_is_empty!23187)))

(declare-fun b!986928 () Bool)

(declare-fun e!556561 () Bool)

(declare-fun e!556562 () Bool)

(assert (=> b!986928 (= e!556561 (and e!556562 mapRes!36809))))

(declare-fun condMapEmpty!36809 () Bool)

(declare-fun mapDefault!36809 () ValueCell!11112)

(assert (=> b!986928 (= condMapEmpty!36809 (= (arr!30014 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11112)) mapDefault!36809)))))

(declare-fun b!986929 () Bool)

(declare-fun res!660386 () Bool)

(assert (=> b!986929 (=> (not res!660386) (not e!556564))))

(assert (=> b!986929 (= res!660386 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!36809 () Bool)

(assert (=> mapIsEmpty!36809 mapRes!36809))

(declare-fun b!986930 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!986930 (= e!556564 (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30015 _keys!1544) from!1932)))))

(declare-fun minValue!1220 () V!35899)

(declare-datatypes ((tuple2!14930 0))(
  ( (tuple2!14931 (_1!7475 (_ BitVec 64)) (_2!7475 V!35899)) )
))
(declare-datatypes ((List!20880 0))(
  ( (Nil!20877) (Cons!20876 (h!22038 tuple2!14930) (t!29787 List!20880)) )
))
(declare-datatypes ((ListLongMap!13641 0))(
  ( (ListLongMap!13642 (toList!6836 List!20880)) )
))
(declare-fun lt!437521 () ListLongMap!13641)

(declare-fun zeroValue!1220 () V!35899)

(declare-fun defaultEntry!1281 () Int)

(declare-fun +!3024 (ListLongMap!13641 tuple2!14930) ListLongMap!13641)

(declare-fun getCurrentListMapNoExtraKeys!3489 (array!62323 array!62321 (_ BitVec 32) (_ BitVec 32) V!35899 V!35899 (_ BitVec 32) Int) ListLongMap!13641)

(assert (=> b!986930 (= lt!437521 (+!3024 (getCurrentListMapNoExtraKeys!3489 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!986931 () Bool)

(declare-fun res!660383 () Bool)

(assert (=> b!986931 (=> (not res!660383) (not e!556564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986931 (= res!660383 (validKeyInArray!0 (select (arr!30015 _keys!1544) from!1932)))))

(declare-fun res!660384 () Bool)

(assert (=> start!84412 (=> (not res!660384) (not e!556564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84412 (= res!660384 (validMask!0 mask!1948))))

(assert (=> start!84412 e!556564))

(assert (=> start!84412 true))

(assert (=> start!84412 tp_is_empty!23187))

(declare-fun array_inv!23053 (array!62321) Bool)

(assert (=> start!84412 (and (array_inv!23053 _values!1278) e!556561)))

(assert (=> start!84412 tp!69689))

(declare-fun array_inv!23054 (array!62323) Bool)

(assert (=> start!84412 (array_inv!23054 _keys!1544)))

(declare-fun b!986932 () Bool)

(assert (=> b!986932 (= e!556562 tp_is_empty!23187)))

(declare-fun b!986933 () Bool)

(declare-fun res!660387 () Bool)

(assert (=> b!986933 (=> (not res!660387) (not e!556564))))

(assert (=> b!986933 (= res!660387 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30495 _keys!1544))))))

(declare-fun b!986934 () Bool)

(declare-fun res!660385 () Bool)

(assert (=> b!986934 (=> (not res!660385) (not e!556564))))

(declare-datatypes ((List!20881 0))(
  ( (Nil!20878) (Cons!20877 (h!22039 (_ BitVec 64)) (t!29788 List!20881)) )
))
(declare-fun arrayNoDuplicates!0 (array!62323 (_ BitVec 32) List!20881) Bool)

(assert (=> b!986934 (= res!660385 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20878))))

(assert (= (and start!84412 res!660384) b!986925))

(assert (= (and b!986925 res!660382) b!986926))

(assert (= (and b!986926 res!660381) b!986934))

(assert (= (and b!986934 res!660385) b!986933))

(assert (= (and b!986933 res!660387) b!986931))

(assert (= (and b!986931 res!660383) b!986929))

(assert (= (and b!986929 res!660386) b!986930))

(assert (= (and b!986928 condMapEmpty!36809) mapIsEmpty!36809))

(assert (= (and b!986928 (not condMapEmpty!36809)) mapNonEmpty!36809))

(get-info :version)

(assert (= (and mapNonEmpty!36809 ((_ is ValueCellFull!11112) mapValue!36809)) b!986927))

(assert (= (and b!986928 ((_ is ValueCellFull!11112) mapDefault!36809)) b!986932))

(assert (= start!84412 b!986928))

(declare-fun m!913639 () Bool)

(assert (=> b!986931 m!913639))

(assert (=> b!986931 m!913639))

(declare-fun m!913641 () Bool)

(assert (=> b!986931 m!913641))

(declare-fun m!913643 () Bool)

(assert (=> b!986934 m!913643))

(declare-fun m!913645 () Bool)

(assert (=> start!84412 m!913645))

(declare-fun m!913647 () Bool)

(assert (=> start!84412 m!913647))

(declare-fun m!913649 () Bool)

(assert (=> start!84412 m!913649))

(declare-fun m!913651 () Bool)

(assert (=> b!986926 m!913651))

(declare-fun m!913653 () Bool)

(assert (=> mapNonEmpty!36809 m!913653))

(assert (=> b!986930 m!913639))

(declare-fun m!913655 () Bool)

(assert (=> b!986930 m!913655))

(assert (=> b!986930 m!913655))

(declare-fun m!913657 () Bool)

(assert (=> b!986930 m!913657))

(check-sat (not start!84412) (not b_next!19971) (not b!986930) (not b!986931) (not b!986934) (not b!986926) (not mapNonEmpty!36809) b_and!32023 tp_is_empty!23187)
(check-sat b_and!32023 (not b_next!19971))
(get-model)

(declare-fun d!116825 () Bool)

(assert (=> d!116825 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84412 d!116825))

(declare-fun d!116827 () Bool)

(assert (=> d!116827 (= (array_inv!23053 _values!1278) (bvsge (size!30494 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84412 d!116827))

(declare-fun d!116829 () Bool)

(assert (=> d!116829 (= (array_inv!23054 _keys!1544) (bvsge (size!30495 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84412 d!116829))

(declare-fun b!986975 () Bool)

(declare-fun e!556589 () Bool)

(declare-fun contains!5716 (List!20881 (_ BitVec 64)) Bool)

(assert (=> b!986975 (= e!556589 (contains!5716 Nil!20878 (select (arr!30015 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!986976 () Bool)

(declare-fun e!556590 () Bool)

(declare-fun e!556591 () Bool)

(assert (=> b!986976 (= e!556590 e!556591)))

(declare-fun res!660415 () Bool)

(assert (=> b!986976 (=> (not res!660415) (not e!556591))))

(assert (=> b!986976 (= res!660415 (not e!556589))))

(declare-fun res!660417 () Bool)

(assert (=> b!986976 (=> (not res!660417) (not e!556589))))

(assert (=> b!986976 (= res!660417 (validKeyInArray!0 (select (arr!30015 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!986977 () Bool)

(declare-fun e!556592 () Bool)

(declare-fun call!41796 () Bool)

(assert (=> b!986977 (= e!556592 call!41796)))

(declare-fun bm!41793 () Bool)

(declare-fun c!99943 () Bool)

(assert (=> bm!41793 (= call!41796 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99943 (Cons!20877 (select (arr!30015 _keys!1544) #b00000000000000000000000000000000) Nil!20878) Nil!20878)))))

(declare-fun b!986979 () Bool)

(assert (=> b!986979 (= e!556592 call!41796)))

(declare-fun b!986978 () Bool)

(assert (=> b!986978 (= e!556591 e!556592)))

(assert (=> b!986978 (= c!99943 (validKeyInArray!0 (select (arr!30015 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!116831 () Bool)

(declare-fun res!660416 () Bool)

(assert (=> d!116831 (=> res!660416 e!556590)))

(assert (=> d!116831 (= res!660416 (bvsge #b00000000000000000000000000000000 (size!30495 _keys!1544)))))

(assert (=> d!116831 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20878) e!556590)))

(assert (= (and d!116831 (not res!660416)) b!986976))

(assert (= (and b!986976 res!660417) b!986975))

(assert (= (and b!986976 res!660415) b!986978))

(assert (= (and b!986978 c!99943) b!986977))

(assert (= (and b!986978 (not c!99943)) b!986979))

(assert (= (or b!986977 b!986979) bm!41793))

(declare-fun m!913679 () Bool)

(assert (=> b!986975 m!913679))

(assert (=> b!986975 m!913679))

(declare-fun m!913681 () Bool)

(assert (=> b!986975 m!913681))

(assert (=> b!986976 m!913679))

(assert (=> b!986976 m!913679))

(declare-fun m!913683 () Bool)

(assert (=> b!986976 m!913683))

(assert (=> bm!41793 m!913679))

(declare-fun m!913685 () Bool)

(assert (=> bm!41793 m!913685))

(assert (=> b!986978 m!913679))

(assert (=> b!986978 m!913679))

(assert (=> b!986978 m!913683))

(assert (=> b!986934 d!116831))

(declare-fun d!116833 () Bool)

(assert (=> d!116833 (= (validKeyInArray!0 (select (arr!30015 _keys!1544) from!1932)) (and (not (= (select (arr!30015 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30015 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!986931 d!116833))

(declare-fun b!986988 () Bool)

(declare-fun e!556601 () Bool)

(declare-fun e!556599 () Bool)

(assert (=> b!986988 (= e!556601 e!556599)))

(declare-fun lt!437533 () (_ BitVec 64))

(assert (=> b!986988 (= lt!437533 (select (arr!30015 _keys!1544) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32713 0))(
  ( (Unit!32714) )
))
(declare-fun lt!437531 () Unit!32713)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62323 (_ BitVec 64) (_ BitVec 32)) Unit!32713)

(assert (=> b!986988 (= lt!437531 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!437533 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!986988 (arrayContainsKey!0 _keys!1544 lt!437533 #b00000000000000000000000000000000)))

(declare-fun lt!437532 () Unit!32713)

(assert (=> b!986988 (= lt!437532 lt!437531)))

(declare-fun res!660423 () Bool)

(declare-datatypes ((SeekEntryResult!9194 0))(
  ( (MissingZero!9194 (index!39146 (_ BitVec 32))) (Found!9194 (index!39147 (_ BitVec 32))) (Intermediate!9194 (undefined!10006 Bool) (index!39148 (_ BitVec 32)) (x!85871 (_ BitVec 32))) (Undefined!9194) (MissingVacant!9194 (index!39149 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62323 (_ BitVec 32)) SeekEntryResult!9194)

(assert (=> b!986988 (= res!660423 (= (seekEntryOrOpen!0 (select (arr!30015 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9194 #b00000000000000000000000000000000)))))

(assert (=> b!986988 (=> (not res!660423) (not e!556599))))

(declare-fun d!116835 () Bool)

(declare-fun res!660422 () Bool)

(declare-fun e!556600 () Bool)

(assert (=> d!116835 (=> res!660422 e!556600)))

(assert (=> d!116835 (= res!660422 (bvsge #b00000000000000000000000000000000 (size!30495 _keys!1544)))))

(assert (=> d!116835 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!556600)))

(declare-fun b!986989 () Bool)

(assert (=> b!986989 (= e!556600 e!556601)))

(declare-fun c!99946 () Bool)

(assert (=> b!986989 (= c!99946 (validKeyInArray!0 (select (arr!30015 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun bm!41796 () Bool)

(declare-fun call!41799 () Bool)

(assert (=> bm!41796 (= call!41799 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!986990 () Bool)

(assert (=> b!986990 (= e!556601 call!41799)))

(declare-fun b!986991 () Bool)

(assert (=> b!986991 (= e!556599 call!41799)))

(assert (= (and d!116835 (not res!660422)) b!986989))

(assert (= (and b!986989 c!99946) b!986988))

(assert (= (and b!986989 (not c!99946)) b!986990))

(assert (= (and b!986988 res!660423) b!986991))

(assert (= (or b!986991 b!986990) bm!41796))

(assert (=> b!986988 m!913679))

(declare-fun m!913687 () Bool)

(assert (=> b!986988 m!913687))

(declare-fun m!913689 () Bool)

(assert (=> b!986988 m!913689))

(assert (=> b!986988 m!913679))

(declare-fun m!913691 () Bool)

(assert (=> b!986988 m!913691))

(assert (=> b!986989 m!913679))

(assert (=> b!986989 m!913679))

(assert (=> b!986989 m!913683))

(declare-fun m!913693 () Bool)

(assert (=> bm!41796 m!913693))

(assert (=> b!986926 d!116835))

(declare-fun d!116837 () Bool)

(declare-fun e!556604 () Bool)

(assert (=> d!116837 e!556604))

(declare-fun res!660429 () Bool)

(assert (=> d!116837 (=> (not res!660429) (not e!556604))))

(declare-fun lt!437543 () ListLongMap!13641)

(declare-fun contains!5717 (ListLongMap!13641 (_ BitVec 64)) Bool)

(assert (=> d!116837 (= res!660429 (contains!5717 lt!437543 (_1!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lt!437545 () List!20880)

(assert (=> d!116837 (= lt!437543 (ListLongMap!13642 lt!437545))))

(declare-fun lt!437542 () Unit!32713)

(declare-fun lt!437544 () Unit!32713)

(assert (=> d!116837 (= lt!437542 lt!437544)))

(declare-datatypes ((Option!519 0))(
  ( (Some!518 (v!14208 V!35899)) (None!517) )
))
(declare-fun getValueByKey!513 (List!20880 (_ BitVec 64)) Option!519)

(assert (=> d!116837 (= (getValueByKey!513 lt!437545 (_1!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!518 (_2!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lemmaContainsTupThenGetReturnValue!270 (List!20880 (_ BitVec 64) V!35899) Unit!32713)

(assert (=> d!116837 (= lt!437544 (lemmaContainsTupThenGetReturnValue!270 lt!437545 (_1!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun insertStrictlySorted!326 (List!20880 (_ BitVec 64) V!35899) List!20880)

(assert (=> d!116837 (= lt!437545 (insertStrictlySorted!326 (toList!6836 (getCurrentListMapNoExtraKeys!3489 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116837 (= (+!3024 (getCurrentListMapNoExtraKeys!3489 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) lt!437543)))

(declare-fun b!986996 () Bool)

(declare-fun res!660428 () Bool)

(assert (=> b!986996 (=> (not res!660428) (not e!556604))))

(assert (=> b!986996 (= res!660428 (= (getValueByKey!513 (toList!6836 lt!437543) (_1!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!518 (_2!7475 (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))))

(declare-fun b!986997 () Bool)

(declare-fun contains!5718 (List!20880 tuple2!14930) Bool)

(assert (=> b!986997 (= e!556604 (contains!5718 (toList!6836 lt!437543) (tuple2!14931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (= (and d!116837 res!660429) b!986996))

(assert (= (and b!986996 res!660428) b!986997))

(declare-fun m!913695 () Bool)

(assert (=> d!116837 m!913695))

(declare-fun m!913697 () Bool)

(assert (=> d!116837 m!913697))

(declare-fun m!913699 () Bool)

(assert (=> d!116837 m!913699))

(declare-fun m!913701 () Bool)

(assert (=> d!116837 m!913701))

(declare-fun m!913703 () Bool)

(assert (=> b!986996 m!913703))

(declare-fun m!913705 () Bool)

(assert (=> b!986997 m!913705))

(assert (=> b!986930 d!116837))

(declare-fun b!987022 () Bool)

(declare-fun lt!437564 () ListLongMap!13641)

(declare-fun e!556625 () Bool)

(assert (=> b!987022 (= e!556625 (= lt!437564 (getCurrentListMapNoExtraKeys!3489 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!987023 () Bool)

(declare-fun isEmpty!723 (ListLongMap!13641) Bool)

(assert (=> b!987023 (= e!556625 (isEmpty!723 lt!437564))))

(declare-fun b!987024 () Bool)

(declare-fun res!660441 () Bool)

(declare-fun e!556622 () Bool)

(assert (=> b!987024 (=> (not res!660441) (not e!556622))))

(assert (=> b!987024 (= res!660441 (not (contains!5717 lt!437564 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!987025 () Bool)

(declare-fun e!556619 () ListLongMap!13641)

(declare-fun e!556621 () ListLongMap!13641)

(assert (=> b!987025 (= e!556619 e!556621)))

(declare-fun c!99958 () Bool)

(assert (=> b!987025 (= c!99958 (validKeyInArray!0 (select (arr!30015 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!987026 () Bool)

(assert (=> b!987026 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30495 _keys!1544)))))

(assert (=> b!987026 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30494 _values!1278)))))

(declare-fun e!556623 () Bool)

(declare-fun apply!926 (ListLongMap!13641 (_ BitVec 64)) V!35899)

(declare-fun get!15584 (ValueCell!11112 V!35899) V!35899)

(declare-fun dynLambda!1855 (Int (_ BitVec 64)) V!35899)

(assert (=> b!987026 (= e!556623 (= (apply!926 lt!437564 (select (arr!30015 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15584 (select (arr!30014 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1855 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!987027 () Bool)

(declare-fun lt!437563 () Unit!32713)

(declare-fun lt!437560 () Unit!32713)

(assert (=> b!987027 (= lt!437563 lt!437560)))

(declare-fun lt!437561 () V!35899)

(declare-fun lt!437565 () (_ BitVec 64))

(declare-fun lt!437566 () ListLongMap!13641)

(declare-fun lt!437562 () (_ BitVec 64))

(assert (=> b!987027 (not (contains!5717 (+!3024 lt!437566 (tuple2!14931 lt!437565 lt!437561)) lt!437562))))

(declare-fun addStillNotContains!232 (ListLongMap!13641 (_ BitVec 64) V!35899 (_ BitVec 64)) Unit!32713)

(assert (=> b!987027 (= lt!437560 (addStillNotContains!232 lt!437566 lt!437565 lt!437561 lt!437562))))

(assert (=> b!987027 (= lt!437562 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!987027 (= lt!437561 (get!15584 (select (arr!30014 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1855 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!987027 (= lt!437565 (select (arr!30015 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun call!41802 () ListLongMap!13641)

(assert (=> b!987027 (= lt!437566 call!41802)))

(assert (=> b!987027 (= e!556621 (+!3024 call!41802 (tuple2!14931 (select (arr!30015 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15584 (select (arr!30014 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1855 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!41799 () Bool)

(assert (=> bm!41799 (= call!41802 (getCurrentListMapNoExtraKeys!3489 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!987028 () Bool)

(assert (=> b!987028 (= e!556619 (ListLongMap!13642 Nil!20877))))

(declare-fun b!987029 () Bool)

(declare-fun e!556620 () Bool)

(assert (=> b!987029 (= e!556620 e!556625)))

(declare-fun c!99957 () Bool)

(assert (=> b!987029 (= c!99957 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30495 _keys!1544)))))

(declare-fun b!987030 () Bool)

(declare-fun e!556624 () Bool)

(assert (=> b!987030 (= e!556624 (validKeyInArray!0 (select (arr!30015 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!987030 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(declare-fun b!987031 () Bool)

(assert (=> b!987031 (= e!556622 e!556620)))

(declare-fun c!99956 () Bool)

(assert (=> b!987031 (= c!99956 e!556624)))

(declare-fun res!660440 () Bool)

(assert (=> b!987031 (=> (not res!660440) (not e!556624))))

(assert (=> b!987031 (= res!660440 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30495 _keys!1544)))))

(declare-fun d!116839 () Bool)

(assert (=> d!116839 e!556622))

(declare-fun res!660439 () Bool)

(assert (=> d!116839 (=> (not res!660439) (not e!556622))))

(assert (=> d!116839 (= res!660439 (not (contains!5717 lt!437564 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!116839 (= lt!437564 e!556619)))

(declare-fun c!99955 () Bool)

(assert (=> d!116839 (= c!99955 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30495 _keys!1544)))))

(assert (=> d!116839 (validMask!0 mask!1948)))

(assert (=> d!116839 (= (getCurrentListMapNoExtraKeys!3489 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!437564)))

(declare-fun b!987032 () Bool)

(assert (=> b!987032 (= e!556620 e!556623)))

(assert (=> b!987032 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30495 _keys!1544)))))

(declare-fun res!660438 () Bool)

(assert (=> b!987032 (= res!660438 (contains!5717 lt!437564 (select (arr!30015 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!987032 (=> (not res!660438) (not e!556623))))

(declare-fun b!987033 () Bool)

(assert (=> b!987033 (= e!556621 call!41802)))

(assert (= (and d!116839 c!99955) b!987028))

(assert (= (and d!116839 (not c!99955)) b!987025))

(assert (= (and b!987025 c!99958) b!987027))

(assert (= (and b!987025 (not c!99958)) b!987033))

(assert (= (or b!987027 b!987033) bm!41799))

(assert (= (and d!116839 res!660439) b!987024))

(assert (= (and b!987024 res!660441) b!987031))

(assert (= (and b!987031 res!660440) b!987030))

(assert (= (and b!987031 c!99956) b!987032))

(assert (= (and b!987031 (not c!99956)) b!987029))

(assert (= (and b!987032 res!660438) b!987026))

(assert (= (and b!987029 c!99957) b!987022))

(assert (= (and b!987029 (not c!99957)) b!987023))

(declare-fun b_lambda!15019 () Bool)

(assert (=> (not b_lambda!15019) (not b!987026)))

(declare-fun t!29790 () Bool)

(declare-fun tb!6759 () Bool)

(assert (=> (and start!84412 (= defaultEntry!1281 defaultEntry!1281) t!29790) tb!6759))

(declare-fun result!13499 () Bool)

(assert (=> tb!6759 (= result!13499 tp_is_empty!23187)))

(assert (=> b!987026 t!29790))

(declare-fun b_and!32027 () Bool)

(assert (= b_and!32023 (and (=> t!29790 result!13499) b_and!32027)))

(declare-fun b_lambda!15021 () Bool)

(assert (=> (not b_lambda!15021) (not b!987027)))

(assert (=> b!987027 t!29790))

(declare-fun b_and!32029 () Bool)

(assert (= b_and!32027 (and (=> t!29790 result!13499) b_and!32029)))

(declare-fun m!913707 () Bool)

(assert (=> b!987022 m!913707))

(declare-fun m!913709 () Bool)

(assert (=> b!987032 m!913709))

(assert (=> b!987032 m!913709))

(declare-fun m!913711 () Bool)

(assert (=> b!987032 m!913711))

(assert (=> b!987026 m!913709))

(declare-fun m!913713 () Bool)

(assert (=> b!987026 m!913713))

(declare-fun m!913715 () Bool)

(assert (=> b!987026 m!913715))

(assert (=> b!987026 m!913709))

(assert (=> b!987026 m!913715))

(declare-fun m!913717 () Bool)

(assert (=> b!987026 m!913717))

(declare-fun m!913719 () Bool)

(assert (=> b!987026 m!913719))

(assert (=> b!987026 m!913717))

(declare-fun m!913721 () Bool)

(assert (=> b!987023 m!913721))

(declare-fun m!913723 () Bool)

(assert (=> b!987024 m!913723))

(assert (=> bm!41799 m!913707))

(declare-fun m!913725 () Bool)

(assert (=> b!987027 m!913725))

(assert (=> b!987027 m!913715))

(assert (=> b!987027 m!913709))

(assert (=> b!987027 m!913715))

(assert (=> b!987027 m!913717))

(assert (=> b!987027 m!913719))

(declare-fun m!913727 () Bool)

(assert (=> b!987027 m!913727))

(declare-fun m!913729 () Bool)

(assert (=> b!987027 m!913729))

(assert (=> b!987027 m!913727))

(assert (=> b!987027 m!913717))

(declare-fun m!913731 () Bool)

(assert (=> b!987027 m!913731))

(assert (=> b!987025 m!913709))

(assert (=> b!987025 m!913709))

(declare-fun m!913733 () Bool)

(assert (=> b!987025 m!913733))

(assert (=> b!987030 m!913709))

(assert (=> b!987030 m!913709))

(assert (=> b!987030 m!913733))

(declare-fun m!913735 () Bool)

(assert (=> d!116839 m!913735))

(assert (=> d!116839 m!913645))

(assert (=> b!986930 d!116839))

(declare-fun mapIsEmpty!36815 () Bool)

(declare-fun mapRes!36815 () Bool)

(assert (=> mapIsEmpty!36815 mapRes!36815))

(declare-fun b!987043 () Bool)

(declare-fun e!556630 () Bool)

(assert (=> b!987043 (= e!556630 tp_is_empty!23187)))

(declare-fun b!987042 () Bool)

(declare-fun e!556631 () Bool)

(assert (=> b!987042 (= e!556631 tp_is_empty!23187)))

(declare-fun condMapEmpty!36815 () Bool)

(declare-fun mapDefault!36815 () ValueCell!11112)

(assert (=> mapNonEmpty!36809 (= condMapEmpty!36815 (= mapRest!36809 ((as const (Array (_ BitVec 32) ValueCell!11112)) mapDefault!36815)))))

(assert (=> mapNonEmpty!36809 (= tp!69688 (and e!556630 mapRes!36815))))

(declare-fun mapNonEmpty!36815 () Bool)

(declare-fun tp!69698 () Bool)

(assert (=> mapNonEmpty!36815 (= mapRes!36815 (and tp!69698 e!556631))))

(declare-fun mapRest!36815 () (Array (_ BitVec 32) ValueCell!11112))

(declare-fun mapValue!36815 () ValueCell!11112)

(declare-fun mapKey!36815 () (_ BitVec 32))

(assert (=> mapNonEmpty!36815 (= mapRest!36809 (store mapRest!36815 mapKey!36815 mapValue!36815))))

(assert (= (and mapNonEmpty!36809 condMapEmpty!36815) mapIsEmpty!36815))

(assert (= (and mapNonEmpty!36809 (not condMapEmpty!36815)) mapNonEmpty!36815))

(assert (= (and mapNonEmpty!36815 ((_ is ValueCellFull!11112) mapValue!36815)) b!987042))

(assert (= (and mapNonEmpty!36809 ((_ is ValueCellFull!11112) mapDefault!36815)) b!987043))

(declare-fun m!913737 () Bool)

(assert (=> mapNonEmpty!36815 m!913737))

(declare-fun b_lambda!15023 () Bool)

(assert (= b_lambda!15021 (or (and start!84412 b_free!19971) b_lambda!15023)))

(declare-fun b_lambda!15025 () Bool)

(assert (= b_lambda!15019 (or (and start!84412 b_free!19971) b_lambda!15025)))

(check-sat (not b!987025) (not b!987032) (not b!986997) (not d!116839) (not b!986978) (not mapNonEmpty!36815) (not bm!41799) (not b!986989) (not b!987022) (not bm!41793) (not b!987026) (not b_lambda!15025) (not b!987030) (not b!987024) b_and!32029 (not bm!41796) (not b_lambda!15023) (not b!986988) tp_is_empty!23187 (not b!986975) (not b!987027) (not b_next!19971) (not b!986976) (not d!116837) (not b!986996) (not b!987023))
(check-sat b_and!32029 (not b_next!19971))
