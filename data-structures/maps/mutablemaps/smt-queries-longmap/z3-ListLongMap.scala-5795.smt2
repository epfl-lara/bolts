; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74764 () Bool)

(assert start!74764)

(declare-fun b_free!15363 () Bool)

(declare-fun b_next!15363 () Bool)

(assert (=> start!74764 (= b_free!15363 (not b_next!15363))))

(declare-fun tp!53780 () Bool)

(declare-fun b_and!25379 () Bool)

(assert (=> start!74764 (= tp!53780 b_and!25379)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun b!880988 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51322 0))(
  ( (array!51323 (arr!24680 (Array (_ BitVec 32) (_ BitVec 64))) (size!25121 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51322)

(declare-fun e!490301 () Bool)

(declare-fun arrayContainsKey!0 (array!51322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!880988 (= e!490301 (arrayContainsKey!0 _keys!868 k0!854 i!612))))

(declare-fun res!598664 () Bool)

(declare-fun e!490299 () Bool)

(assert (=> start!74764 (=> (not res!598664) (not e!490299))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74764 (= res!598664 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25121 _keys!868))))))

(assert (=> start!74764 e!490299))

(declare-fun tp_is_empty!17607 () Bool)

(assert (=> start!74764 tp_is_empty!17607))

(assert (=> start!74764 true))

(assert (=> start!74764 tp!53780))

(declare-fun array_inv!19424 (array!51322) Bool)

(assert (=> start!74764 (array_inv!19424 _keys!868)))

(declare-datatypes ((V!28523 0))(
  ( (V!28524 (val!8851 Int)) )
))
(declare-datatypes ((ValueCell!8364 0))(
  ( (ValueCellFull!8364 (v!11299 V!28523)) (EmptyCell!8364) )
))
(declare-datatypes ((array!51324 0))(
  ( (array!51325 (arr!24681 (Array (_ BitVec 32) ValueCell!8364)) (size!25122 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51324)

(declare-fun e!490306 () Bool)

(declare-fun array_inv!19425 (array!51324) Bool)

(assert (=> start!74764 (and (array_inv!19425 _values!688) e!490306)))

(declare-fun b!880989 () Bool)

(declare-fun res!598663 () Bool)

(assert (=> b!880989 (=> (not res!598663) (not e!490299))))

(assert (=> b!880989 (= res!598663 (and (= (select (arr!24680 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!880990 () Bool)

(declare-fun res!598668 () Bool)

(assert (=> b!880990 (=> (not res!598668) (not e!490299))))

(declare-datatypes ((List!17614 0))(
  ( (Nil!17611) (Cons!17610 (h!18741 (_ BitVec 64)) (t!24787 List!17614)) )
))
(declare-fun arrayNoDuplicates!0 (array!51322 (_ BitVec 32) List!17614) Bool)

(assert (=> b!880990 (= res!598668 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17611))))

(declare-fun b!880991 () Bool)

(declare-fun e!490304 () Bool)

(declare-fun e!490298 () Bool)

(assert (=> b!880991 (= e!490304 e!490298)))

(declare-fun res!598672 () Bool)

(assert (=> b!880991 (=> res!598672 e!490298)))

(assert (=> b!880991 (= res!598672 (not (= (select (arr!24680 _keys!868) from!1053) k0!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11744 0))(
  ( (tuple2!11745 (_1!5882 (_ BitVec 64)) (_2!5882 V!28523)) )
))
(declare-datatypes ((List!17615 0))(
  ( (Nil!17612) (Cons!17611 (h!18742 tuple2!11744) (t!24788 List!17615)) )
))
(declare-datatypes ((ListLongMap!10527 0))(
  ( (ListLongMap!10528 (toList!5279 List!17615)) )
))
(declare-fun lt!398448 () ListLongMap!10527)

(declare-fun lt!398446 () ListLongMap!10527)

(declare-fun +!2485 (ListLongMap!10527 tuple2!11744) ListLongMap!10527)

(declare-fun get!12999 (ValueCell!8364 V!28523) V!28523)

(declare-fun dynLambda!1248 (Int (_ BitVec 64)) V!28523)

(assert (=> b!880991 (= lt!398448 (+!2485 lt!398446 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880992 () Bool)

(declare-fun res!598667 () Bool)

(assert (=> b!880992 (=> (not res!598667) (not e!490299))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!880992 (= res!598667 (and (= (size!25122 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25121 _keys!868) (size!25122 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880993 () Bool)

(declare-fun res!598666 () Bool)

(assert (=> b!880993 (=> (not res!598666) (not e!490299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880993 (= res!598666 (validMask!0 mask!1196))))

(declare-fun b!880994 () Bool)

(declare-fun e!490303 () Bool)

(assert (=> b!880994 (= e!490303 (not e!490304))))

(declare-fun res!598673 () Bool)

(assert (=> b!880994 (=> res!598673 e!490304)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880994 (= res!598673 (not (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053))))))

(declare-fun lt!398445 () ListLongMap!10527)

(assert (=> b!880994 (= lt!398445 lt!398446)))

(declare-fun v!557 () V!28523)

(declare-fun lt!398447 () ListLongMap!10527)

(assert (=> b!880994 (= lt!398446 (+!2485 lt!398447 (tuple2!11745 k0!854 v!557)))))

(declare-fun lt!398450 () array!51324)

(declare-fun minValue!654 () V!28523)

(declare-fun zeroValue!654 () V!28523)

(declare-fun getCurrentListMapNoExtraKeys!3239 (array!51322 array!51324 (_ BitVec 32) (_ BitVec 32) V!28523 V!28523 (_ BitVec 32) Int) ListLongMap!10527)

(assert (=> b!880994 (= lt!398445 (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880994 (= lt!398447 (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30046 0))(
  ( (Unit!30047) )
))
(declare-fun lt!398443 () Unit!30046)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!714 (array!51322 array!51324 (_ BitVec 32) (_ BitVec 32) V!28523 V!28523 (_ BitVec 32) (_ BitVec 64) V!28523 (_ BitVec 32) Int) Unit!30046)

(assert (=> b!880994 (= lt!398443 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!714 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!28035 () Bool)

(declare-fun mapRes!28035 () Bool)

(assert (=> mapIsEmpty!28035 mapRes!28035))

(declare-fun b!880995 () Bool)

(declare-fun res!598669 () Bool)

(assert (=> b!880995 (=> (not res!598669) (not e!490299))))

(assert (=> b!880995 (= res!598669 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25121 _keys!868))))))

(declare-fun b!880996 () Bool)

(declare-fun res!598674 () Bool)

(assert (=> b!880996 (=> (not res!598674) (not e!490299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51322 (_ BitVec 32)) Bool)

(assert (=> b!880996 (= res!598674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880997 () Bool)

(assert (=> b!880997 (= e!490299 e!490303)))

(declare-fun res!598665 () Bool)

(assert (=> b!880997 (=> (not res!598665) (not e!490303))))

(assert (=> b!880997 (= res!598665 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!880997 (= lt!398448 (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880997 (= lt!398450 (array!51325 (store (arr!24681 _values!688) i!612 (ValueCellFull!8364 v!557)) (size!25122 _values!688)))))

(declare-fun lt!398444 () ListLongMap!10527)

(assert (=> b!880997 (= lt!398444 (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880998 () Bool)

(declare-fun e!490300 () Bool)

(assert (=> b!880998 (= e!490300 tp_is_empty!17607)))

(declare-fun mapNonEmpty!28035 () Bool)

(declare-fun tp!53781 () Bool)

(declare-fun e!490302 () Bool)

(assert (=> mapNonEmpty!28035 (= mapRes!28035 (and tp!53781 e!490302))))

(declare-fun mapValue!28035 () ValueCell!8364)

(declare-fun mapKey!28035 () (_ BitVec 32))

(declare-fun mapRest!28035 () (Array (_ BitVec 32) ValueCell!8364))

(assert (=> mapNonEmpty!28035 (= (arr!24681 _values!688) (store mapRest!28035 mapKey!28035 mapValue!28035))))

(declare-fun b!880999 () Bool)

(declare-fun res!598670 () Bool)

(assert (=> b!880999 (=> (not res!598670) (not e!490299))))

(assert (=> b!880999 (= res!598670 (validKeyInArray!0 k0!854))))

(declare-fun b!881000 () Bool)

(assert (=> b!881000 (= e!490302 tp_is_empty!17607)))

(declare-fun b!881001 () Bool)

(assert (=> b!881001 (= e!490298 e!490301)))

(declare-fun res!598671 () Bool)

(assert (=> b!881001 (=> res!598671 e!490301)))

(assert (=> b!881001 (= res!598671 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsge (size!25121 _keys!868) #b01111111111111111111111111111111)))))

(assert (=> b!881001 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17611)))

(declare-fun lt!398449 () Unit!30046)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51322 (_ BitVec 32) (_ BitVec 32)) Unit!30046)

(assert (=> b!881001 (= lt!398449 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!881002 () Bool)

(assert (=> b!881002 (= e!490306 (and e!490300 mapRes!28035))))

(declare-fun condMapEmpty!28035 () Bool)

(declare-fun mapDefault!28035 () ValueCell!8364)

(assert (=> b!881002 (= condMapEmpty!28035 (= (arr!24681 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8364)) mapDefault!28035)))))

(assert (= (and start!74764 res!598664) b!880993))

(assert (= (and b!880993 res!598666) b!880992))

(assert (= (and b!880992 res!598667) b!880996))

(assert (= (and b!880996 res!598674) b!880990))

(assert (= (and b!880990 res!598668) b!880995))

(assert (= (and b!880995 res!598669) b!880999))

(assert (= (and b!880999 res!598670) b!880989))

(assert (= (and b!880989 res!598663) b!880997))

(assert (= (and b!880997 res!598665) b!880994))

(assert (= (and b!880994 (not res!598673)) b!880991))

(assert (= (and b!880991 (not res!598672)) b!881001))

(assert (= (and b!881001 (not res!598671)) b!880988))

(assert (= (and b!881002 condMapEmpty!28035) mapIsEmpty!28035))

(assert (= (and b!881002 (not condMapEmpty!28035)) mapNonEmpty!28035))

(get-info :version)

(assert (= (and mapNonEmpty!28035 ((_ is ValueCellFull!8364) mapValue!28035)) b!881000))

(assert (= (and b!881002 ((_ is ValueCellFull!8364) mapDefault!28035)) b!880998))

(assert (= start!74764 b!881002))

(declare-fun b_lambda!12535 () Bool)

(assert (=> (not b_lambda!12535) (not b!880991)))

(declare-fun t!24786 () Bool)

(declare-fun tb!5029 () Bool)

(assert (=> (and start!74764 (= defaultEntry!696 defaultEntry!696) t!24786) tb!5029))

(declare-fun result!9677 () Bool)

(assert (=> tb!5029 (= result!9677 tp_is_empty!17607)))

(assert (=> b!880991 t!24786))

(declare-fun b_and!25381 () Bool)

(assert (= b_and!25379 (and (=> t!24786 result!9677) b_and!25381)))

(declare-fun m!820911 () Bool)

(assert (=> b!880990 m!820911))

(declare-fun m!820913 () Bool)

(assert (=> b!880996 m!820913))

(declare-fun m!820915 () Bool)

(assert (=> b!880993 m!820915))

(declare-fun m!820917 () Bool)

(assert (=> b!880988 m!820917))

(declare-fun m!820919 () Bool)

(assert (=> mapNonEmpty!28035 m!820919))

(declare-fun m!820921 () Bool)

(assert (=> b!880989 m!820921))

(declare-fun m!820923 () Bool)

(assert (=> b!880991 m!820923))

(declare-fun m!820925 () Bool)

(assert (=> b!880991 m!820925))

(declare-fun m!820927 () Bool)

(assert (=> b!880991 m!820927))

(declare-fun m!820929 () Bool)

(assert (=> b!880991 m!820929))

(assert (=> b!880991 m!820925))

(declare-fun m!820931 () Bool)

(assert (=> b!880991 m!820931))

(assert (=> b!880991 m!820927))

(declare-fun m!820933 () Bool)

(assert (=> start!74764 m!820933))

(declare-fun m!820935 () Bool)

(assert (=> start!74764 m!820935))

(declare-fun m!820937 () Bool)

(assert (=> b!880999 m!820937))

(declare-fun m!820939 () Bool)

(assert (=> b!880994 m!820939))

(declare-fun m!820941 () Bool)

(assert (=> b!880994 m!820941))

(assert (=> b!880994 m!820931))

(declare-fun m!820943 () Bool)

(assert (=> b!880994 m!820943))

(assert (=> b!880994 m!820931))

(declare-fun m!820945 () Bool)

(assert (=> b!880994 m!820945))

(declare-fun m!820947 () Bool)

(assert (=> b!880994 m!820947))

(declare-fun m!820949 () Bool)

(assert (=> b!881001 m!820949))

(declare-fun m!820951 () Bool)

(assert (=> b!881001 m!820951))

(declare-fun m!820953 () Bool)

(assert (=> b!880997 m!820953))

(declare-fun m!820955 () Bool)

(assert (=> b!880997 m!820955))

(declare-fun m!820957 () Bool)

(assert (=> b!880997 m!820957))

(check-sat (not mapNonEmpty!28035) (not b!880999) b_and!25381 (not b!880997) (not b_next!15363) (not b_lambda!12535) (not b!880993) (not b!880990) (not b!880991) (not b!881001) (not start!74764) tp_is_empty!17607 (not b!880988) (not b!880996) (not b!880994))
(check-sat b_and!25381 (not b_next!15363))
(get-model)

(declare-fun b_lambda!12539 () Bool)

(assert (= b_lambda!12535 (or (and start!74764 b_free!15363) b_lambda!12539)))

(check-sat (not mapNonEmpty!28035) (not b!880999) b_and!25381 (not b!880997) (not b_next!15363) (not b!880990) (not b!880991) (not b!881001) (not start!74764) (not b!880993) (not b_lambda!12539) tp_is_empty!17607 (not b!880988) (not b!880996) (not b!880994))
(check-sat b_and!25381 (not b_next!15363))
(get-model)

(declare-fun b!881062 () Bool)

(declare-fun e!490345 () Bool)

(declare-fun call!38912 () Bool)

(assert (=> b!881062 (= e!490345 call!38912)))

(declare-fun b!881063 () Bool)

(assert (=> b!881063 (= e!490345 call!38912)))

(declare-fun b!881064 () Bool)

(declare-fun e!490342 () Bool)

(declare-fun e!490344 () Bool)

(assert (=> b!881064 (= e!490342 e!490344)))

(declare-fun res!598718 () Bool)

(assert (=> b!881064 (=> (not res!598718) (not e!490344))))

(declare-fun e!490343 () Bool)

(assert (=> b!881064 (= res!598718 (not e!490343))))

(declare-fun res!598717 () Bool)

(assert (=> b!881064 (=> (not res!598717) (not e!490343))))

(assert (=> b!881064 (= res!598717 (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053)))))

(declare-fun d!108935 () Bool)

(declare-fun res!598719 () Bool)

(assert (=> d!108935 (=> res!598719 e!490342)))

(assert (=> d!108935 (= res!598719 (bvsge from!1053 (size!25121 _keys!868)))))

(assert (=> d!108935 (= (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17611) e!490342)))

(declare-fun b!881065 () Bool)

(assert (=> b!881065 (= e!490344 e!490345)))

(declare-fun c!92816 () Bool)

(assert (=> b!881065 (= c!92816 (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053)))))

(declare-fun b!881066 () Bool)

(declare-fun contains!4256 (List!17614 (_ BitVec 64)) Bool)

(assert (=> b!881066 (= e!490343 (contains!4256 Nil!17611 (select (arr!24680 _keys!868) from!1053)))))

(declare-fun bm!38909 () Bool)

(assert (=> bm!38909 (= call!38912 (arrayNoDuplicates!0 _keys!868 (bvadd from!1053 #b00000000000000000000000000000001) (ite c!92816 (Cons!17610 (select (arr!24680 _keys!868) from!1053) Nil!17611) Nil!17611)))))

(assert (= (and d!108935 (not res!598719)) b!881064))

(assert (= (and b!881064 res!598717) b!881066))

(assert (= (and b!881064 res!598718) b!881065))

(assert (= (and b!881065 c!92816) b!881062))

(assert (= (and b!881065 (not c!92816)) b!881063))

(assert (= (or b!881062 b!881063) bm!38909))

(assert (=> b!881064 m!820931))

(assert (=> b!881064 m!820931))

(assert (=> b!881064 m!820943))

(assert (=> b!881065 m!820931))

(assert (=> b!881065 m!820931))

(assert (=> b!881065 m!820943))

(assert (=> b!881066 m!820931))

(assert (=> b!881066 m!820931))

(declare-fun m!821007 () Bool)

(assert (=> b!881066 m!821007))

(assert (=> bm!38909 m!820931))

(declare-fun m!821009 () Bool)

(assert (=> bm!38909 m!821009))

(assert (=> b!881001 d!108935))

(declare-fun d!108937 () Bool)

(assert (=> d!108937 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17611)))

(declare-fun lt!398477 () Unit!30046)

(declare-fun choose!39 (array!51322 (_ BitVec 32) (_ BitVec 32)) Unit!30046)

(assert (=> d!108937 (= lt!398477 (choose!39 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> d!108937 (bvslt (size!25121 _keys!868) #b01111111111111111111111111111111)))

(assert (=> d!108937 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053) lt!398477)))

(declare-fun bs!24713 () Bool)

(assert (= bs!24713 d!108937))

(assert (=> bs!24713 m!820949))

(declare-fun m!821011 () Bool)

(assert (=> bs!24713 m!821011))

(assert (=> b!881001 d!108937))

(declare-fun b!881091 () Bool)

(declare-fun e!490361 () Bool)

(declare-fun e!490366 () Bool)

(assert (=> b!881091 (= e!490361 e!490366)))

(assert (=> b!881091 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25121 _keys!868)))))

(declare-fun lt!398496 () ListLongMap!10527)

(declare-fun res!598729 () Bool)

(declare-fun contains!4257 (ListLongMap!10527 (_ BitVec 64)) Bool)

(assert (=> b!881091 (= res!598729 (contains!4257 lt!398496 (select (arr!24680 _keys!868) from!1053)))))

(assert (=> b!881091 (=> (not res!598729) (not e!490366))))

(declare-fun b!881092 () Bool)

(declare-fun e!490365 () Bool)

(assert (=> b!881092 (= e!490365 (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053)))))

(assert (=> b!881092 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!881093 () Bool)

(declare-fun e!490364 () ListLongMap!10527)

(declare-fun call!38915 () ListLongMap!10527)

(assert (=> b!881093 (= e!490364 call!38915)))

(declare-fun b!881094 () Bool)

(assert (=> b!881094 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25121 _keys!868)))))

(assert (=> b!881094 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25122 lt!398450)))))

(declare-fun apply!381 (ListLongMap!10527 (_ BitVec 64)) V!28523)

(assert (=> b!881094 (= e!490366 (= (apply!381 lt!398496 (select (arr!24680 _keys!868) from!1053)) (get!12999 (select (arr!24681 lt!398450) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!881095 () Bool)

(declare-fun lt!398497 () Unit!30046)

(declare-fun lt!398498 () Unit!30046)

(assert (=> b!881095 (= lt!398497 lt!398498)))

(declare-fun lt!398495 () (_ BitVec 64))

(declare-fun lt!398494 () (_ BitVec 64))

(declare-fun lt!398493 () ListLongMap!10527)

(declare-fun lt!398492 () V!28523)

(assert (=> b!881095 (not (contains!4257 (+!2485 lt!398493 (tuple2!11745 lt!398494 lt!398492)) lt!398495))))

(declare-fun addStillNotContains!208 (ListLongMap!10527 (_ BitVec 64) V!28523 (_ BitVec 64)) Unit!30046)

(assert (=> b!881095 (= lt!398498 (addStillNotContains!208 lt!398493 lt!398494 lt!398492 lt!398495))))

(assert (=> b!881095 (= lt!398495 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881095 (= lt!398492 (get!12999 (select (arr!24681 lt!398450) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881095 (= lt!398494 (select (arr!24680 _keys!868) from!1053))))

(assert (=> b!881095 (= lt!398493 call!38915)))

(assert (=> b!881095 (= e!490364 (+!2485 call!38915 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 lt!398450) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881096 () Bool)

(declare-fun e!490360 () Bool)

(declare-fun isEmpty!673 (ListLongMap!10527) Bool)

(assert (=> b!881096 (= e!490360 (isEmpty!673 lt!398496))))

(declare-fun b!881097 () Bool)

(declare-fun res!598730 () Bool)

(declare-fun e!490363 () Bool)

(assert (=> b!881097 (=> (not res!598730) (not e!490363))))

(assert (=> b!881097 (= res!598730 (not (contains!4257 lt!398496 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!108939 () Bool)

(assert (=> d!108939 e!490363))

(declare-fun res!598728 () Bool)

(assert (=> d!108939 (=> (not res!598728) (not e!490363))))

(assert (=> d!108939 (= res!598728 (not (contains!4257 lt!398496 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!490362 () ListLongMap!10527)

(assert (=> d!108939 (= lt!398496 e!490362)))

(declare-fun c!92827 () Bool)

(assert (=> d!108939 (= c!92827 (bvsge from!1053 (size!25121 _keys!868)))))

(assert (=> d!108939 (validMask!0 mask!1196)))

(assert (=> d!108939 (= (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!398496)))

(declare-fun b!881098 () Bool)

(assert (=> b!881098 (= e!490362 e!490364)))

(declare-fun c!92825 () Bool)

(assert (=> b!881098 (= c!92825 (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053)))))

(declare-fun b!881099 () Bool)

(assert (=> b!881099 (= e!490362 (ListLongMap!10528 Nil!17612))))

(declare-fun b!881100 () Bool)

(assert (=> b!881100 (= e!490360 (= lt!398496 (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun bm!38912 () Bool)

(assert (=> bm!38912 (= call!38915 (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!881101 () Bool)

(assert (=> b!881101 (= e!490361 e!490360)))

(declare-fun c!92828 () Bool)

(assert (=> b!881101 (= c!92828 (bvslt from!1053 (size!25121 _keys!868)))))

(declare-fun b!881102 () Bool)

(assert (=> b!881102 (= e!490363 e!490361)))

(declare-fun c!92826 () Bool)

(assert (=> b!881102 (= c!92826 e!490365)))

(declare-fun res!598731 () Bool)

(assert (=> b!881102 (=> (not res!598731) (not e!490365))))

(assert (=> b!881102 (= res!598731 (bvslt from!1053 (size!25121 _keys!868)))))

(assert (= (and d!108939 c!92827) b!881099))

(assert (= (and d!108939 (not c!92827)) b!881098))

(assert (= (and b!881098 c!92825) b!881095))

(assert (= (and b!881098 (not c!92825)) b!881093))

(assert (= (or b!881095 b!881093) bm!38912))

(assert (= (and d!108939 res!598728) b!881097))

(assert (= (and b!881097 res!598730) b!881102))

(assert (= (and b!881102 res!598731) b!881092))

(assert (= (and b!881102 c!92826) b!881091))

(assert (= (and b!881102 (not c!92826)) b!881101))

(assert (= (and b!881091 res!598729) b!881094))

(assert (= (and b!881101 c!92828) b!881100))

(assert (= (and b!881101 (not c!92828)) b!881096))

(declare-fun b_lambda!12541 () Bool)

(assert (=> (not b_lambda!12541) (not b!881094)))

(assert (=> b!881094 t!24786))

(declare-fun b_and!25387 () Bool)

(assert (= b_and!25381 (and (=> t!24786 result!9677) b_and!25387)))

(declare-fun b_lambda!12543 () Bool)

(assert (=> (not b_lambda!12543) (not b!881095)))

(assert (=> b!881095 t!24786))

(declare-fun b_and!25389 () Bool)

(assert (= b_and!25387 (and (=> t!24786 result!9677) b_and!25389)))

(declare-fun m!821013 () Bool)

(assert (=> d!108939 m!821013))

(assert (=> d!108939 m!820915))

(assert (=> b!881092 m!820931))

(assert (=> b!881092 m!820931))

(assert (=> b!881092 m!820943))

(assert (=> b!881098 m!820931))

(assert (=> b!881098 m!820931))

(assert (=> b!881098 m!820943))

(assert (=> b!881095 m!820931))

(declare-fun m!821015 () Bool)

(assert (=> b!881095 m!821015))

(assert (=> b!881095 m!820927))

(declare-fun m!821017 () Bool)

(assert (=> b!881095 m!821017))

(assert (=> b!881095 m!821015))

(declare-fun m!821019 () Bool)

(assert (=> b!881095 m!821019))

(declare-fun m!821021 () Bool)

(assert (=> b!881095 m!821021))

(declare-fun m!821023 () Bool)

(assert (=> b!881095 m!821023))

(assert (=> b!881095 m!820927))

(assert (=> b!881095 m!821021))

(declare-fun m!821025 () Bool)

(assert (=> b!881095 m!821025))

(assert (=> b!881091 m!820931))

(assert (=> b!881091 m!820931))

(declare-fun m!821027 () Bool)

(assert (=> b!881091 m!821027))

(declare-fun m!821029 () Bool)

(assert (=> b!881097 m!821029))

(declare-fun m!821031 () Bool)

(assert (=> b!881100 m!821031))

(declare-fun m!821033 () Bool)

(assert (=> b!881096 m!821033))

(assert (=> bm!38912 m!821031))

(assert (=> b!881094 m!820931))

(assert (=> b!881094 m!821015))

(assert (=> b!881094 m!820927))

(assert (=> b!881094 m!821017))

(assert (=> b!881094 m!821015))

(assert (=> b!881094 m!820931))

(declare-fun m!821035 () Bool)

(assert (=> b!881094 m!821035))

(assert (=> b!881094 m!820927))

(assert (=> b!880997 d!108939))

(declare-fun b!881103 () Bool)

(declare-fun e!490368 () Bool)

(declare-fun e!490373 () Bool)

(assert (=> b!881103 (= e!490368 e!490373)))

(assert (=> b!881103 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25121 _keys!868)))))

(declare-fun res!598733 () Bool)

(declare-fun lt!398503 () ListLongMap!10527)

(assert (=> b!881103 (= res!598733 (contains!4257 lt!398503 (select (arr!24680 _keys!868) from!1053)))))

(assert (=> b!881103 (=> (not res!598733) (not e!490373))))

(declare-fun b!881104 () Bool)

(declare-fun e!490372 () Bool)

(assert (=> b!881104 (= e!490372 (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053)))))

(assert (=> b!881104 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!881105 () Bool)

(declare-fun e!490371 () ListLongMap!10527)

(declare-fun call!38916 () ListLongMap!10527)

(assert (=> b!881105 (= e!490371 call!38916)))

(declare-fun b!881106 () Bool)

(assert (=> b!881106 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25121 _keys!868)))))

(assert (=> b!881106 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25122 _values!688)))))

(assert (=> b!881106 (= e!490373 (= (apply!381 lt!398503 (select (arr!24680 _keys!868) from!1053)) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!881107 () Bool)

(declare-fun lt!398504 () Unit!30046)

(declare-fun lt!398505 () Unit!30046)

(assert (=> b!881107 (= lt!398504 lt!398505)))

(declare-fun lt!398501 () (_ BitVec 64))

(declare-fun lt!398499 () V!28523)

(declare-fun lt!398500 () ListLongMap!10527)

(declare-fun lt!398502 () (_ BitVec 64))

(assert (=> b!881107 (not (contains!4257 (+!2485 lt!398500 (tuple2!11745 lt!398501 lt!398499)) lt!398502))))

(assert (=> b!881107 (= lt!398505 (addStillNotContains!208 lt!398500 lt!398501 lt!398499 lt!398502))))

(assert (=> b!881107 (= lt!398502 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881107 (= lt!398499 (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881107 (= lt!398501 (select (arr!24680 _keys!868) from!1053))))

(assert (=> b!881107 (= lt!398500 call!38916)))

(assert (=> b!881107 (= e!490371 (+!2485 call!38916 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881108 () Bool)

(declare-fun e!490367 () Bool)

(assert (=> b!881108 (= e!490367 (isEmpty!673 lt!398503))))

(declare-fun b!881109 () Bool)

(declare-fun res!598734 () Bool)

(declare-fun e!490370 () Bool)

(assert (=> b!881109 (=> (not res!598734) (not e!490370))))

(assert (=> b!881109 (= res!598734 (not (contains!4257 lt!398503 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!108941 () Bool)

(assert (=> d!108941 e!490370))

(declare-fun res!598732 () Bool)

(assert (=> d!108941 (=> (not res!598732) (not e!490370))))

(assert (=> d!108941 (= res!598732 (not (contains!4257 lt!398503 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!490369 () ListLongMap!10527)

(assert (=> d!108941 (= lt!398503 e!490369)))

(declare-fun c!92831 () Bool)

(assert (=> d!108941 (= c!92831 (bvsge from!1053 (size!25121 _keys!868)))))

(assert (=> d!108941 (validMask!0 mask!1196)))

(assert (=> d!108941 (= (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!398503)))

(declare-fun b!881110 () Bool)

(assert (=> b!881110 (= e!490369 e!490371)))

(declare-fun c!92829 () Bool)

(assert (=> b!881110 (= c!92829 (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053)))))

(declare-fun b!881111 () Bool)

(assert (=> b!881111 (= e!490369 (ListLongMap!10528 Nil!17612))))

(declare-fun b!881112 () Bool)

(assert (=> b!881112 (= e!490367 (= lt!398503 (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun bm!38913 () Bool)

(assert (=> bm!38913 (= call!38916 (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!881113 () Bool)

(assert (=> b!881113 (= e!490368 e!490367)))

(declare-fun c!92832 () Bool)

(assert (=> b!881113 (= c!92832 (bvslt from!1053 (size!25121 _keys!868)))))

(declare-fun b!881114 () Bool)

(assert (=> b!881114 (= e!490370 e!490368)))

(declare-fun c!92830 () Bool)

(assert (=> b!881114 (= c!92830 e!490372)))

(declare-fun res!598735 () Bool)

(assert (=> b!881114 (=> (not res!598735) (not e!490372))))

(assert (=> b!881114 (= res!598735 (bvslt from!1053 (size!25121 _keys!868)))))

(assert (= (and d!108941 c!92831) b!881111))

(assert (= (and d!108941 (not c!92831)) b!881110))

(assert (= (and b!881110 c!92829) b!881107))

(assert (= (and b!881110 (not c!92829)) b!881105))

(assert (= (or b!881107 b!881105) bm!38913))

(assert (= (and d!108941 res!598732) b!881109))

(assert (= (and b!881109 res!598734) b!881114))

(assert (= (and b!881114 res!598735) b!881104))

(assert (= (and b!881114 c!92830) b!881103))

(assert (= (and b!881114 (not c!92830)) b!881113))

(assert (= (and b!881103 res!598733) b!881106))

(assert (= (and b!881113 c!92832) b!881112))

(assert (= (and b!881113 (not c!92832)) b!881108))

(declare-fun b_lambda!12545 () Bool)

(assert (=> (not b_lambda!12545) (not b!881106)))

(assert (=> b!881106 t!24786))

(declare-fun b_and!25391 () Bool)

(assert (= b_and!25389 (and (=> t!24786 result!9677) b_and!25391)))

(declare-fun b_lambda!12547 () Bool)

(assert (=> (not b_lambda!12547) (not b!881107)))

(assert (=> b!881107 t!24786))

(declare-fun b_and!25393 () Bool)

(assert (= b_and!25391 (and (=> t!24786 result!9677) b_and!25393)))

(declare-fun m!821037 () Bool)

(assert (=> d!108941 m!821037))

(assert (=> d!108941 m!820915))

(assert (=> b!881104 m!820931))

(assert (=> b!881104 m!820931))

(assert (=> b!881104 m!820943))

(assert (=> b!881110 m!820931))

(assert (=> b!881110 m!820931))

(assert (=> b!881110 m!820943))

(assert (=> b!881107 m!820931))

(assert (=> b!881107 m!820925))

(assert (=> b!881107 m!820927))

(assert (=> b!881107 m!820929))

(assert (=> b!881107 m!820925))

(declare-fun m!821039 () Bool)

(assert (=> b!881107 m!821039))

(declare-fun m!821041 () Bool)

(assert (=> b!881107 m!821041))

(declare-fun m!821043 () Bool)

(assert (=> b!881107 m!821043))

(assert (=> b!881107 m!820927))

(assert (=> b!881107 m!821041))

(declare-fun m!821045 () Bool)

(assert (=> b!881107 m!821045))

(assert (=> b!881103 m!820931))

(assert (=> b!881103 m!820931))

(declare-fun m!821047 () Bool)

(assert (=> b!881103 m!821047))

(declare-fun m!821049 () Bool)

(assert (=> b!881109 m!821049))

(declare-fun m!821051 () Bool)

(assert (=> b!881112 m!821051))

(declare-fun m!821053 () Bool)

(assert (=> b!881108 m!821053))

(assert (=> bm!38913 m!821051))

(assert (=> b!881106 m!820931))

(assert (=> b!881106 m!820925))

(assert (=> b!881106 m!820927))

(assert (=> b!881106 m!820929))

(assert (=> b!881106 m!820925))

(assert (=> b!881106 m!820931))

(declare-fun m!821055 () Bool)

(assert (=> b!881106 m!821055))

(assert (=> b!881106 m!820927))

(assert (=> b!880997 d!108941))

(declare-fun d!108943 () Bool)

(assert (=> d!108943 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!880993 d!108943))

(declare-fun d!108945 () Bool)

(declare-fun res!598740 () Bool)

(declare-fun e!490378 () Bool)

(assert (=> d!108945 (=> res!598740 e!490378)))

(assert (=> d!108945 (= res!598740 (= (select (arr!24680 _keys!868) i!612) k0!854))))

(assert (=> d!108945 (= (arrayContainsKey!0 _keys!868 k0!854 i!612) e!490378)))

(declare-fun b!881119 () Bool)

(declare-fun e!490379 () Bool)

(assert (=> b!881119 (= e!490378 e!490379)))

(declare-fun res!598741 () Bool)

(assert (=> b!881119 (=> (not res!598741) (not e!490379))))

(assert (=> b!881119 (= res!598741 (bvslt (bvadd i!612 #b00000000000000000000000000000001) (size!25121 _keys!868)))))

(declare-fun b!881120 () Bool)

(assert (=> b!881120 (= e!490379 (arrayContainsKey!0 _keys!868 k0!854 (bvadd i!612 #b00000000000000000000000000000001)))))

(assert (= (and d!108945 (not res!598740)) b!881119))

(assert (= (and b!881119 res!598741) b!881120))

(assert (=> d!108945 m!820921))

(declare-fun m!821057 () Bool)

(assert (=> b!881120 m!821057))

(assert (=> b!880988 d!108945))

(declare-fun b!881121 () Bool)

(declare-fun e!490381 () Bool)

(declare-fun e!490386 () Bool)

(assert (=> b!881121 (= e!490381 e!490386)))

(assert (=> b!881121 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(declare-fun lt!398510 () ListLongMap!10527)

(declare-fun res!598743 () Bool)

(assert (=> b!881121 (= res!598743 (contains!4257 lt!398510 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881121 (=> (not res!598743) (not e!490386))))

(declare-fun b!881122 () Bool)

(declare-fun e!490385 () Bool)

(assert (=> b!881122 (= e!490385 (validKeyInArray!0 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881122 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!881123 () Bool)

(declare-fun e!490384 () ListLongMap!10527)

(declare-fun call!38917 () ListLongMap!10527)

(assert (=> b!881123 (= e!490384 call!38917)))

(declare-fun b!881124 () Bool)

(assert (=> b!881124 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(assert (=> b!881124 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25122 _values!688)))))

(assert (=> b!881124 (= e!490386 (= (apply!381 lt!398510 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12999 (select (arr!24681 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!881125 () Bool)

(declare-fun lt!398511 () Unit!30046)

(declare-fun lt!398512 () Unit!30046)

(assert (=> b!881125 (= lt!398511 lt!398512)))

(declare-fun lt!398506 () V!28523)

(declare-fun lt!398507 () ListLongMap!10527)

(declare-fun lt!398508 () (_ BitVec 64))

(declare-fun lt!398509 () (_ BitVec 64))

(assert (=> b!881125 (not (contains!4257 (+!2485 lt!398507 (tuple2!11745 lt!398508 lt!398506)) lt!398509))))

(assert (=> b!881125 (= lt!398512 (addStillNotContains!208 lt!398507 lt!398508 lt!398506 lt!398509))))

(assert (=> b!881125 (= lt!398509 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881125 (= lt!398506 (get!12999 (select (arr!24681 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881125 (= lt!398508 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881125 (= lt!398507 call!38917)))

(assert (=> b!881125 (= e!490384 (+!2485 call!38917 (tuple2!11745 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12999 (select (arr!24681 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881126 () Bool)

(declare-fun e!490380 () Bool)

(assert (=> b!881126 (= e!490380 (isEmpty!673 lt!398510))))

(declare-fun b!881127 () Bool)

(declare-fun res!598744 () Bool)

(declare-fun e!490383 () Bool)

(assert (=> b!881127 (=> (not res!598744) (not e!490383))))

(assert (=> b!881127 (= res!598744 (not (contains!4257 lt!398510 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!108947 () Bool)

(assert (=> d!108947 e!490383))

(declare-fun res!598742 () Bool)

(assert (=> d!108947 (=> (not res!598742) (not e!490383))))

(assert (=> d!108947 (= res!598742 (not (contains!4257 lt!398510 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!490382 () ListLongMap!10527)

(assert (=> d!108947 (= lt!398510 e!490382)))

(declare-fun c!92835 () Bool)

(assert (=> d!108947 (= c!92835 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(assert (=> d!108947 (validMask!0 mask!1196)))

(assert (=> d!108947 (= (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398510)))

(declare-fun b!881128 () Bool)

(assert (=> b!881128 (= e!490382 e!490384)))

(declare-fun c!92833 () Bool)

(assert (=> b!881128 (= c!92833 (validKeyInArray!0 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!881129 () Bool)

(assert (=> b!881129 (= e!490382 (ListLongMap!10528 Nil!17612))))

(declare-fun b!881130 () Bool)

(assert (=> b!881130 (= e!490380 (= lt!398510 (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun bm!38914 () Bool)

(assert (=> bm!38914 (= call!38917 (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!881131 () Bool)

(assert (=> b!881131 (= e!490381 e!490380)))

(declare-fun c!92836 () Bool)

(assert (=> b!881131 (= c!92836 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(declare-fun b!881132 () Bool)

(assert (=> b!881132 (= e!490383 e!490381)))

(declare-fun c!92834 () Bool)

(assert (=> b!881132 (= c!92834 e!490385)))

(declare-fun res!598745 () Bool)

(assert (=> b!881132 (=> (not res!598745) (not e!490385))))

(assert (=> b!881132 (= res!598745 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(assert (= (and d!108947 c!92835) b!881129))

(assert (= (and d!108947 (not c!92835)) b!881128))

(assert (= (and b!881128 c!92833) b!881125))

(assert (= (and b!881128 (not c!92833)) b!881123))

(assert (= (or b!881125 b!881123) bm!38914))

(assert (= (and d!108947 res!598742) b!881127))

(assert (= (and b!881127 res!598744) b!881132))

(assert (= (and b!881132 res!598745) b!881122))

(assert (= (and b!881132 c!92834) b!881121))

(assert (= (and b!881132 (not c!92834)) b!881131))

(assert (= (and b!881121 res!598743) b!881124))

(assert (= (and b!881131 c!92836) b!881130))

(assert (= (and b!881131 (not c!92836)) b!881126))

(declare-fun b_lambda!12549 () Bool)

(assert (=> (not b_lambda!12549) (not b!881124)))

(assert (=> b!881124 t!24786))

(declare-fun b_and!25395 () Bool)

(assert (= b_and!25393 (and (=> t!24786 result!9677) b_and!25395)))

(declare-fun b_lambda!12551 () Bool)

(assert (=> (not b_lambda!12551) (not b!881125)))

(assert (=> b!881125 t!24786))

(declare-fun b_and!25397 () Bool)

(assert (= b_and!25395 (and (=> t!24786 result!9677) b_and!25397)))

(declare-fun m!821059 () Bool)

(assert (=> d!108947 m!821059))

(assert (=> d!108947 m!820915))

(declare-fun m!821061 () Bool)

(assert (=> b!881122 m!821061))

(assert (=> b!881122 m!821061))

(declare-fun m!821063 () Bool)

(assert (=> b!881122 m!821063))

(assert (=> b!881128 m!821061))

(assert (=> b!881128 m!821061))

(assert (=> b!881128 m!821063))

(assert (=> b!881125 m!821061))

(declare-fun m!821065 () Bool)

(assert (=> b!881125 m!821065))

(assert (=> b!881125 m!820927))

(declare-fun m!821067 () Bool)

(assert (=> b!881125 m!821067))

(assert (=> b!881125 m!821065))

(declare-fun m!821069 () Bool)

(assert (=> b!881125 m!821069))

(declare-fun m!821071 () Bool)

(assert (=> b!881125 m!821071))

(declare-fun m!821073 () Bool)

(assert (=> b!881125 m!821073))

(assert (=> b!881125 m!820927))

(assert (=> b!881125 m!821071))

(declare-fun m!821075 () Bool)

(assert (=> b!881125 m!821075))

(assert (=> b!881121 m!821061))

(assert (=> b!881121 m!821061))

(declare-fun m!821077 () Bool)

(assert (=> b!881121 m!821077))

(declare-fun m!821079 () Bool)

(assert (=> b!881127 m!821079))

(declare-fun m!821081 () Bool)

(assert (=> b!881130 m!821081))

(declare-fun m!821083 () Bool)

(assert (=> b!881126 m!821083))

(assert (=> bm!38914 m!821081))

(assert (=> b!881124 m!821061))

(assert (=> b!881124 m!821065))

(assert (=> b!881124 m!820927))

(assert (=> b!881124 m!821067))

(assert (=> b!881124 m!821065))

(assert (=> b!881124 m!821061))

(declare-fun m!821085 () Bool)

(assert (=> b!881124 m!821085))

(assert (=> b!881124 m!820927))

(assert (=> b!880994 d!108947))

(declare-fun d!108949 () Bool)

(assert (=> d!108949 (= (validKeyInArray!0 (select (arr!24680 _keys!868) from!1053)) (and (not (= (select (arr!24680 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24680 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!880994 d!108949))

(declare-fun d!108951 () Bool)

(declare-fun e!490389 () Bool)

(assert (=> d!108951 e!490389))

(declare-fun res!598751 () Bool)

(assert (=> d!108951 (=> (not res!598751) (not e!490389))))

(declare-fun lt!398523 () ListLongMap!10527)

(assert (=> d!108951 (= res!598751 (contains!4257 lt!398523 (_1!5882 (tuple2!11745 k0!854 v!557))))))

(declare-fun lt!398521 () List!17615)

(assert (=> d!108951 (= lt!398523 (ListLongMap!10528 lt!398521))))

(declare-fun lt!398524 () Unit!30046)

(declare-fun lt!398522 () Unit!30046)

(assert (=> d!108951 (= lt!398524 lt!398522)))

(declare-datatypes ((Option!428 0))(
  ( (Some!427 (v!11304 V!28523)) (None!426) )
))
(declare-fun getValueByKey!422 (List!17615 (_ BitVec 64)) Option!428)

(assert (=> d!108951 (= (getValueByKey!422 lt!398521 (_1!5882 (tuple2!11745 k0!854 v!557))) (Some!427 (_2!5882 (tuple2!11745 k0!854 v!557))))))

(declare-fun lemmaContainsTupThenGetReturnValue!238 (List!17615 (_ BitVec 64) V!28523) Unit!30046)

(assert (=> d!108951 (= lt!398522 (lemmaContainsTupThenGetReturnValue!238 lt!398521 (_1!5882 (tuple2!11745 k0!854 v!557)) (_2!5882 (tuple2!11745 k0!854 v!557))))))

(declare-fun insertStrictlySorted!276 (List!17615 (_ BitVec 64) V!28523) List!17615)

(assert (=> d!108951 (= lt!398521 (insertStrictlySorted!276 (toList!5279 lt!398447) (_1!5882 (tuple2!11745 k0!854 v!557)) (_2!5882 (tuple2!11745 k0!854 v!557))))))

(assert (=> d!108951 (= (+!2485 lt!398447 (tuple2!11745 k0!854 v!557)) lt!398523)))

(declare-fun b!881137 () Bool)

(declare-fun res!598750 () Bool)

(assert (=> b!881137 (=> (not res!598750) (not e!490389))))

(assert (=> b!881137 (= res!598750 (= (getValueByKey!422 (toList!5279 lt!398523) (_1!5882 (tuple2!11745 k0!854 v!557))) (Some!427 (_2!5882 (tuple2!11745 k0!854 v!557)))))))

(declare-fun b!881138 () Bool)

(declare-fun contains!4258 (List!17615 tuple2!11744) Bool)

(assert (=> b!881138 (= e!490389 (contains!4258 (toList!5279 lt!398523) (tuple2!11745 k0!854 v!557)))))

(assert (= (and d!108951 res!598751) b!881137))

(assert (= (and b!881137 res!598750) b!881138))

(declare-fun m!821087 () Bool)

(assert (=> d!108951 m!821087))

(declare-fun m!821089 () Bool)

(assert (=> d!108951 m!821089))

(declare-fun m!821091 () Bool)

(assert (=> d!108951 m!821091))

(declare-fun m!821093 () Bool)

(assert (=> d!108951 m!821093))

(declare-fun m!821095 () Bool)

(assert (=> b!881137 m!821095))

(declare-fun m!821097 () Bool)

(assert (=> b!881138 m!821097))

(assert (=> b!880994 d!108951))

(declare-fun b!881139 () Bool)

(declare-fun e!490391 () Bool)

(declare-fun e!490396 () Bool)

(assert (=> b!881139 (= e!490391 e!490396)))

(assert (=> b!881139 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(declare-fun lt!398529 () ListLongMap!10527)

(declare-fun res!598753 () Bool)

(assert (=> b!881139 (= res!598753 (contains!4257 lt!398529 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881139 (=> (not res!598753) (not e!490396))))

(declare-fun b!881140 () Bool)

(declare-fun e!490395 () Bool)

(assert (=> b!881140 (= e!490395 (validKeyInArray!0 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881140 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!881141 () Bool)

(declare-fun e!490394 () ListLongMap!10527)

(declare-fun call!38918 () ListLongMap!10527)

(assert (=> b!881141 (= e!490394 call!38918)))

(declare-fun b!881142 () Bool)

(assert (=> b!881142 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(assert (=> b!881142 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25122 lt!398450)))))

(assert (=> b!881142 (= e!490396 (= (apply!381 lt!398529 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12999 (select (arr!24681 lt!398450) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!881143 () Bool)

(declare-fun lt!398530 () Unit!30046)

(declare-fun lt!398531 () Unit!30046)

(assert (=> b!881143 (= lt!398530 lt!398531)))

(declare-fun lt!398528 () (_ BitVec 64))

(declare-fun lt!398525 () V!28523)

(declare-fun lt!398527 () (_ BitVec 64))

(declare-fun lt!398526 () ListLongMap!10527)

(assert (=> b!881143 (not (contains!4257 (+!2485 lt!398526 (tuple2!11745 lt!398527 lt!398525)) lt!398528))))

(assert (=> b!881143 (= lt!398531 (addStillNotContains!208 lt!398526 lt!398527 lt!398525 lt!398528))))

(assert (=> b!881143 (= lt!398528 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881143 (= lt!398525 (get!12999 (select (arr!24681 lt!398450) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881143 (= lt!398527 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881143 (= lt!398526 call!38918)))

(assert (=> b!881143 (= e!490394 (+!2485 call!38918 (tuple2!11745 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12999 (select (arr!24681 lt!398450) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881144 () Bool)

(declare-fun e!490390 () Bool)

(assert (=> b!881144 (= e!490390 (isEmpty!673 lt!398529))))

(declare-fun b!881145 () Bool)

(declare-fun res!598754 () Bool)

(declare-fun e!490393 () Bool)

(assert (=> b!881145 (=> (not res!598754) (not e!490393))))

(assert (=> b!881145 (= res!598754 (not (contains!4257 lt!398529 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!108953 () Bool)

(assert (=> d!108953 e!490393))

(declare-fun res!598752 () Bool)

(assert (=> d!108953 (=> (not res!598752) (not e!490393))))

(assert (=> d!108953 (= res!598752 (not (contains!4257 lt!398529 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!490392 () ListLongMap!10527)

(assert (=> d!108953 (= lt!398529 e!490392)))

(declare-fun c!92839 () Bool)

(assert (=> d!108953 (= c!92839 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(assert (=> d!108953 (validMask!0 mask!1196)))

(assert (=> d!108953 (= (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398529)))

(declare-fun b!881146 () Bool)

(assert (=> b!881146 (= e!490392 e!490394)))

(declare-fun c!92837 () Bool)

(assert (=> b!881146 (= c!92837 (validKeyInArray!0 (select (arr!24680 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!881147 () Bool)

(assert (=> b!881147 (= e!490392 (ListLongMap!10528 Nil!17612))))

(declare-fun b!881148 () Bool)

(assert (=> b!881148 (= e!490390 (= lt!398529 (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun bm!38915 () Bool)

(assert (=> bm!38915 (= call!38918 (getCurrentListMapNoExtraKeys!3239 _keys!868 lt!398450 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!881149 () Bool)

(assert (=> b!881149 (= e!490391 e!490390)))

(declare-fun c!92840 () Bool)

(assert (=> b!881149 (= c!92840 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(declare-fun b!881150 () Bool)

(assert (=> b!881150 (= e!490393 e!490391)))

(declare-fun c!92838 () Bool)

(assert (=> b!881150 (= c!92838 e!490395)))

(declare-fun res!598755 () Bool)

(assert (=> b!881150 (=> (not res!598755) (not e!490395))))

(assert (=> b!881150 (= res!598755 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(assert (= (and d!108953 c!92839) b!881147))

(assert (= (and d!108953 (not c!92839)) b!881146))

(assert (= (and b!881146 c!92837) b!881143))

(assert (= (and b!881146 (not c!92837)) b!881141))

(assert (= (or b!881143 b!881141) bm!38915))

(assert (= (and d!108953 res!598752) b!881145))

(assert (= (and b!881145 res!598754) b!881150))

(assert (= (and b!881150 res!598755) b!881140))

(assert (= (and b!881150 c!92838) b!881139))

(assert (= (and b!881150 (not c!92838)) b!881149))

(assert (= (and b!881139 res!598753) b!881142))

(assert (= (and b!881149 c!92840) b!881148))

(assert (= (and b!881149 (not c!92840)) b!881144))

(declare-fun b_lambda!12553 () Bool)

(assert (=> (not b_lambda!12553) (not b!881142)))

(assert (=> b!881142 t!24786))

(declare-fun b_and!25399 () Bool)

(assert (= b_and!25397 (and (=> t!24786 result!9677) b_and!25399)))

(declare-fun b_lambda!12555 () Bool)

(assert (=> (not b_lambda!12555) (not b!881143)))

(assert (=> b!881143 t!24786))

(declare-fun b_and!25401 () Bool)

(assert (= b_and!25399 (and (=> t!24786 result!9677) b_and!25401)))

(declare-fun m!821099 () Bool)

(assert (=> d!108953 m!821099))

(assert (=> d!108953 m!820915))

(assert (=> b!881140 m!821061))

(assert (=> b!881140 m!821061))

(assert (=> b!881140 m!821063))

(assert (=> b!881146 m!821061))

(assert (=> b!881146 m!821061))

(assert (=> b!881146 m!821063))

(assert (=> b!881143 m!821061))

(declare-fun m!821101 () Bool)

(assert (=> b!881143 m!821101))

(assert (=> b!881143 m!820927))

(declare-fun m!821103 () Bool)

(assert (=> b!881143 m!821103))

(assert (=> b!881143 m!821101))

(declare-fun m!821105 () Bool)

(assert (=> b!881143 m!821105))

(declare-fun m!821107 () Bool)

(assert (=> b!881143 m!821107))

(declare-fun m!821109 () Bool)

(assert (=> b!881143 m!821109))

(assert (=> b!881143 m!820927))

(assert (=> b!881143 m!821107))

(declare-fun m!821111 () Bool)

(assert (=> b!881143 m!821111))

(assert (=> b!881139 m!821061))

(assert (=> b!881139 m!821061))

(declare-fun m!821113 () Bool)

(assert (=> b!881139 m!821113))

(declare-fun m!821115 () Bool)

(assert (=> b!881145 m!821115))

(declare-fun m!821117 () Bool)

(assert (=> b!881148 m!821117))

(declare-fun m!821119 () Bool)

(assert (=> b!881144 m!821119))

(assert (=> bm!38915 m!821117))

(assert (=> b!881142 m!821061))

(assert (=> b!881142 m!821101))

(assert (=> b!881142 m!820927))

(assert (=> b!881142 m!821103))

(assert (=> b!881142 m!821101))

(assert (=> b!881142 m!821061))

(declare-fun m!821121 () Bool)

(assert (=> b!881142 m!821121))

(assert (=> b!881142 m!820927))

(assert (=> b!880994 d!108953))

(declare-fun e!490401 () Bool)

(declare-fun call!38924 () ListLongMap!10527)

(declare-fun call!38923 () ListLongMap!10527)

(declare-fun b!881157 () Bool)

(assert (=> b!881157 (= e!490401 (= call!38923 (+!2485 call!38924 (tuple2!11745 k0!854 v!557))))))

(declare-fun d!108955 () Bool)

(declare-fun e!490402 () Bool)

(assert (=> d!108955 e!490402))

(declare-fun res!598758 () Bool)

(assert (=> d!108955 (=> (not res!598758) (not e!490402))))

(assert (=> d!108955 (= res!598758 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25122 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25122 _values!688))))))))

(declare-fun lt!398534 () Unit!30046)

(declare-fun choose!1445 (array!51322 array!51324 (_ BitVec 32) (_ BitVec 32) V!28523 V!28523 (_ BitVec 32) (_ BitVec 64) V!28523 (_ BitVec 32) Int) Unit!30046)

(assert (=> d!108955 (= lt!398534 (choose!1445 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108955 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25121 _keys!868)))))

(assert (=> d!108955 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!714 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398534)))

(declare-fun b!881158 () Bool)

(assert (=> b!881158 (= e!490402 e!490401)))

(declare-fun c!92843 () Bool)

(assert (=> b!881158 (= c!92843 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun bm!38920 () Bool)

(assert (=> bm!38920 (= call!38923 (getCurrentListMapNoExtraKeys!3239 _keys!868 (array!51325 (store (arr!24681 _values!688) i!612 (ValueCellFull!8364 v!557)) (size!25122 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38921 () Bool)

(assert (=> bm!38921 (= call!38924 (getCurrentListMapNoExtraKeys!3239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881159 () Bool)

(assert (=> b!881159 (= e!490401 (= call!38923 call!38924))))

(assert (= (and d!108955 res!598758) b!881158))

(assert (= (and b!881158 c!92843) b!881157))

(assert (= (and b!881158 (not c!92843)) b!881159))

(assert (= (or b!881157 b!881159) bm!38921))

(assert (= (or b!881157 b!881159) bm!38920))

(declare-fun m!821123 () Bool)

(assert (=> b!881157 m!821123))

(declare-fun m!821125 () Bool)

(assert (=> d!108955 m!821125))

(assert (=> bm!38920 m!820955))

(declare-fun m!821127 () Bool)

(assert (=> bm!38920 m!821127))

(assert (=> bm!38921 m!820939))

(assert (=> b!880994 d!108955))

(declare-fun d!108957 () Bool)

(assert (=> d!108957 (= (array_inv!19424 _keys!868) (bvsge (size!25121 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74764 d!108957))

(declare-fun d!108959 () Bool)

(assert (=> d!108959 (= (array_inv!19425 _values!688) (bvsge (size!25122 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74764 d!108959))

(declare-fun b!881160 () Bool)

(declare-fun e!490406 () Bool)

(declare-fun call!38925 () Bool)

(assert (=> b!881160 (= e!490406 call!38925)))

(declare-fun b!881161 () Bool)

(assert (=> b!881161 (= e!490406 call!38925)))

(declare-fun b!881162 () Bool)

(declare-fun e!490403 () Bool)

(declare-fun e!490405 () Bool)

(assert (=> b!881162 (= e!490403 e!490405)))

(declare-fun res!598760 () Bool)

(assert (=> b!881162 (=> (not res!598760) (not e!490405))))

(declare-fun e!490404 () Bool)

(assert (=> b!881162 (= res!598760 (not e!490404))))

(declare-fun res!598759 () Bool)

(assert (=> b!881162 (=> (not res!598759) (not e!490404))))

(assert (=> b!881162 (= res!598759 (validKeyInArray!0 (select (arr!24680 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108961 () Bool)

(declare-fun res!598761 () Bool)

(assert (=> d!108961 (=> res!598761 e!490403)))

(assert (=> d!108961 (= res!598761 (bvsge #b00000000000000000000000000000000 (size!25121 _keys!868)))))

(assert (=> d!108961 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17611) e!490403)))

(declare-fun b!881163 () Bool)

(assert (=> b!881163 (= e!490405 e!490406)))

(declare-fun c!92844 () Bool)

(assert (=> b!881163 (= c!92844 (validKeyInArray!0 (select (arr!24680 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!881164 () Bool)

(assert (=> b!881164 (= e!490404 (contains!4256 Nil!17611 (select (arr!24680 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38922 () Bool)

(assert (=> bm!38922 (= call!38925 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92844 (Cons!17610 (select (arr!24680 _keys!868) #b00000000000000000000000000000000) Nil!17611) Nil!17611)))))

(assert (= (and d!108961 (not res!598761)) b!881162))

(assert (= (and b!881162 res!598759) b!881164))

(assert (= (and b!881162 res!598760) b!881163))

(assert (= (and b!881163 c!92844) b!881160))

(assert (= (and b!881163 (not c!92844)) b!881161))

(assert (= (or b!881160 b!881161) bm!38922))

(declare-fun m!821129 () Bool)

(assert (=> b!881162 m!821129))

(assert (=> b!881162 m!821129))

(declare-fun m!821131 () Bool)

(assert (=> b!881162 m!821131))

(assert (=> b!881163 m!821129))

(assert (=> b!881163 m!821129))

(assert (=> b!881163 m!821131))

(assert (=> b!881164 m!821129))

(assert (=> b!881164 m!821129))

(declare-fun m!821133 () Bool)

(assert (=> b!881164 m!821133))

(assert (=> bm!38922 m!821129))

(declare-fun m!821135 () Bool)

(assert (=> bm!38922 m!821135))

(assert (=> b!880990 d!108961))

(declare-fun d!108963 () Bool)

(assert (=> d!108963 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!880999 d!108963))

(declare-fun d!108965 () Bool)

(declare-fun e!490407 () Bool)

(assert (=> d!108965 e!490407))

(declare-fun res!598763 () Bool)

(assert (=> d!108965 (=> (not res!598763) (not e!490407))))

(declare-fun lt!398537 () ListLongMap!10527)

(assert (=> d!108965 (= res!598763 (contains!4257 lt!398537 (_1!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!398535 () List!17615)

(assert (=> d!108965 (= lt!398537 (ListLongMap!10528 lt!398535))))

(declare-fun lt!398538 () Unit!30046)

(declare-fun lt!398536 () Unit!30046)

(assert (=> d!108965 (= lt!398538 lt!398536)))

(assert (=> d!108965 (= (getValueByKey!422 lt!398535 (_1!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!427 (_2!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108965 (= lt!398536 (lemmaContainsTupThenGetReturnValue!238 lt!398535 (_1!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108965 (= lt!398535 (insertStrictlySorted!276 (toList!5279 lt!398446) (_1!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108965 (= (+!2485 lt!398446 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!398537)))

(declare-fun b!881165 () Bool)

(declare-fun res!598762 () Bool)

(assert (=> b!881165 (=> (not res!598762) (not e!490407))))

(assert (=> b!881165 (= res!598762 (= (getValueByKey!422 (toList!5279 lt!398537) (_1!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!427 (_2!5882 (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!881166 () Bool)

(assert (=> b!881166 (= e!490407 (contains!4258 (toList!5279 lt!398537) (tuple2!11745 (select (arr!24680 _keys!868) from!1053) (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108965 res!598763) b!881165))

(assert (= (and b!881165 res!598762) b!881166))

(declare-fun m!821137 () Bool)

(assert (=> d!108965 m!821137))

(declare-fun m!821139 () Bool)

(assert (=> d!108965 m!821139))

(declare-fun m!821141 () Bool)

(assert (=> d!108965 m!821141))

(declare-fun m!821143 () Bool)

(assert (=> d!108965 m!821143))

(declare-fun m!821145 () Bool)

(assert (=> b!881165 m!821145))

(declare-fun m!821147 () Bool)

(assert (=> b!881166 m!821147))

(assert (=> b!880991 d!108965))

(declare-fun d!108967 () Bool)

(declare-fun c!92847 () Bool)

(assert (=> d!108967 (= c!92847 ((_ is ValueCellFull!8364) (select (arr!24681 _values!688) from!1053)))))

(declare-fun e!490410 () V!28523)

(assert (=> d!108967 (= (get!12999 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!490410)))

(declare-fun b!881171 () Bool)

(declare-fun get!13000 (ValueCell!8364 V!28523) V!28523)

(assert (=> b!881171 (= e!490410 (get!13000 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!881172 () Bool)

(declare-fun get!13001 (ValueCell!8364 V!28523) V!28523)

(assert (=> b!881172 (= e!490410 (get!13001 (select (arr!24681 _values!688) from!1053) (dynLambda!1248 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108967 c!92847) b!881171))

(assert (= (and d!108967 (not c!92847)) b!881172))

(assert (=> b!881171 m!820925))

(assert (=> b!881171 m!820927))

(declare-fun m!821149 () Bool)

(assert (=> b!881171 m!821149))

(assert (=> b!881172 m!820925))

(assert (=> b!881172 m!820927))

(declare-fun m!821151 () Bool)

(assert (=> b!881172 m!821151))

(assert (=> b!880991 d!108967))

(declare-fun b!881182 () Bool)

(declare-fun e!490419 () Bool)

(declare-fun e!490417 () Bool)

(assert (=> b!881182 (= e!490419 e!490417)))

(declare-fun c!92850 () Bool)

(assert (=> b!881182 (= c!92850 (validKeyInArray!0 (select (arr!24680 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38925 () Bool)

(declare-fun call!38928 () Bool)

(assert (=> bm!38925 (= call!38928 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!881183 () Bool)

(declare-fun e!490418 () Bool)

(assert (=> b!881183 (= e!490418 call!38928)))

(declare-fun b!881184 () Bool)

(assert (=> b!881184 (= e!490417 e!490418)))

(declare-fun lt!398547 () (_ BitVec 64))

(assert (=> b!881184 (= lt!398547 (select (arr!24680 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!398546 () Unit!30046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51322 (_ BitVec 64) (_ BitVec 32)) Unit!30046)

(assert (=> b!881184 (= lt!398546 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!398547 #b00000000000000000000000000000000))))

(assert (=> b!881184 (arrayContainsKey!0 _keys!868 lt!398547 #b00000000000000000000000000000000)))

(declare-fun lt!398545 () Unit!30046)

(assert (=> b!881184 (= lt!398545 lt!398546)))

(declare-fun res!598768 () Bool)

(declare-datatypes ((SeekEntryResult!8746 0))(
  ( (MissingZero!8746 (index!37354 (_ BitVec 32))) (Found!8746 (index!37355 (_ BitVec 32))) (Intermediate!8746 (undefined!9558 Bool) (index!37356 (_ BitVec 32)) (x!74658 (_ BitVec 32))) (Undefined!8746) (MissingVacant!8746 (index!37357 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51322 (_ BitVec 32)) SeekEntryResult!8746)

(assert (=> b!881184 (= res!598768 (= (seekEntryOrOpen!0 (select (arr!24680 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8746 #b00000000000000000000000000000000)))))

(assert (=> b!881184 (=> (not res!598768) (not e!490418))))

(declare-fun d!108969 () Bool)

(declare-fun res!598769 () Bool)

(assert (=> d!108969 (=> res!598769 e!490419)))

(assert (=> d!108969 (= res!598769 (bvsge #b00000000000000000000000000000000 (size!25121 _keys!868)))))

(assert (=> d!108969 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!490419)))

(declare-fun b!881181 () Bool)

(assert (=> b!881181 (= e!490417 call!38928)))

(assert (= (and d!108969 (not res!598769)) b!881182))

(assert (= (and b!881182 c!92850) b!881184))

(assert (= (and b!881182 (not c!92850)) b!881181))

(assert (= (and b!881184 res!598768) b!881183))

(assert (= (or b!881183 b!881181) bm!38925))

(assert (=> b!881182 m!821129))

(assert (=> b!881182 m!821129))

(assert (=> b!881182 m!821131))

(declare-fun m!821153 () Bool)

(assert (=> bm!38925 m!821153))

(assert (=> b!881184 m!821129))

(declare-fun m!821155 () Bool)

(assert (=> b!881184 m!821155))

(declare-fun m!821157 () Bool)

(assert (=> b!881184 m!821157))

(assert (=> b!881184 m!821129))

(declare-fun m!821159 () Bool)

(assert (=> b!881184 m!821159))

(assert (=> b!880996 d!108969))

(declare-fun b!881192 () Bool)

(declare-fun e!490424 () Bool)

(assert (=> b!881192 (= e!490424 tp_is_empty!17607)))

(declare-fun b!881191 () Bool)

(declare-fun e!490425 () Bool)

(assert (=> b!881191 (= e!490425 tp_is_empty!17607)))

(declare-fun condMapEmpty!28041 () Bool)

(declare-fun mapDefault!28041 () ValueCell!8364)

(assert (=> mapNonEmpty!28035 (= condMapEmpty!28041 (= mapRest!28035 ((as const (Array (_ BitVec 32) ValueCell!8364)) mapDefault!28041)))))

(declare-fun mapRes!28041 () Bool)

(assert (=> mapNonEmpty!28035 (= tp!53781 (and e!490424 mapRes!28041))))

(declare-fun mapNonEmpty!28041 () Bool)

(declare-fun tp!53790 () Bool)

(assert (=> mapNonEmpty!28041 (= mapRes!28041 (and tp!53790 e!490425))))

(declare-fun mapValue!28041 () ValueCell!8364)

(declare-fun mapKey!28041 () (_ BitVec 32))

(declare-fun mapRest!28041 () (Array (_ BitVec 32) ValueCell!8364))

(assert (=> mapNonEmpty!28041 (= mapRest!28035 (store mapRest!28041 mapKey!28041 mapValue!28041))))

(declare-fun mapIsEmpty!28041 () Bool)

(assert (=> mapIsEmpty!28041 mapRes!28041))

(assert (= (and mapNonEmpty!28035 condMapEmpty!28041) mapIsEmpty!28041))

(assert (= (and mapNonEmpty!28035 (not condMapEmpty!28041)) mapNonEmpty!28041))

(assert (= (and mapNonEmpty!28041 ((_ is ValueCellFull!8364) mapValue!28041)) b!881191))

(assert (= (and mapNonEmpty!28035 ((_ is ValueCellFull!8364) mapDefault!28041)) b!881192))

(declare-fun m!821161 () Bool)

(assert (=> mapNonEmpty!28041 m!821161))

(declare-fun b_lambda!12557 () Bool)

(assert (= b_lambda!12547 (or (and start!74764 b_free!15363) b_lambda!12557)))

(declare-fun b_lambda!12559 () Bool)

(assert (= b_lambda!12555 (or (and start!74764 b_free!15363) b_lambda!12559)))

(declare-fun b_lambda!12561 () Bool)

(assert (= b_lambda!12545 (or (and start!74764 b_free!15363) b_lambda!12561)))

(declare-fun b_lambda!12563 () Bool)

(assert (= b_lambda!12551 (or (and start!74764 b_free!15363) b_lambda!12563)))

(declare-fun b_lambda!12565 () Bool)

(assert (= b_lambda!12541 (or (and start!74764 b_free!15363) b_lambda!12565)))

(declare-fun b_lambda!12567 () Bool)

(assert (= b_lambda!12543 (or (and start!74764 b_free!15363) b_lambda!12567)))

(declare-fun b_lambda!12569 () Bool)

(assert (= b_lambda!12553 (or (and start!74764 b_free!15363) b_lambda!12569)))

(declare-fun b_lambda!12571 () Bool)

(assert (= b_lambda!12549 (or (and start!74764 b_free!15363) b_lambda!12571)))

(check-sat (not b_lambda!12559) (not b_lambda!12539) (not d!108965) (not b!881172) (not b!881121) (not b!881122) (not b!881137) (not b_lambda!12563) (not b!881103) (not b!881064) (not b_lambda!12565) (not b!881171) (not bm!38922) (not b!881095) (not b!881096) (not b!881139) (not bm!38912) (not d!108953) (not b_lambda!12567) (not b!881163) (not d!108955) (not b!881066) (not b!881098) (not b!881110) (not d!108939) (not b!881097) (not b!881104) (not bm!38921) (not b!881164) (not b!881166) (not b_next!15363) b_and!25401 (not b!881184) (not b!881138) (not b!881165) (not b!881128) (not d!108947) (not b!881112) (not b!881091) (not b!881182) (not b!881126) (not b!881127) (not b!881142) (not mapNonEmpty!28041) (not b!881106) tp_is_empty!17607 (not b!881107) (not bm!38915) (not b!881092) (not bm!38920) (not b!881148) (not b!881108) (not b_lambda!12569) (not b_lambda!12557) (not b!881162) (not b!881144) (not b!881120) (not b!881157) (not b!881146) (not b_lambda!12561) (not bm!38914) (not b!881094) (not b!881109) (not d!108951) (not b!881140) (not bm!38909) (not b_lambda!12571) (not bm!38925) (not bm!38913) (not b!881125) (not d!108937) (not b!881143) (not b!881145) (not b!881124) (not d!108941) (not b!881065) (not b!881100) (not b!881130))
(check-sat b_and!25401 (not b_next!15363))
