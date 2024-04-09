; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74736 () Bool)

(assert start!74736)

(declare-fun b_free!15357 () Bool)

(declare-fun b_next!15357 () Bool)

(assert (=> start!74736 (= b_free!15357 (not b_next!15357))))

(declare-fun tp!53760 () Bool)

(declare-fun b_and!25351 () Bool)

(assert (=> start!74736 (= tp!53760 b_and!25351)))

(declare-fun b!880716 () Bool)

(declare-fun e!490142 () Bool)

(declare-fun e!490136 () Bool)

(assert (=> b!880716 (= e!490142 (not e!490136))))

(declare-fun res!598512 () Bool)

(assert (=> b!880716 (=> res!598512 e!490136)))

(declare-datatypes ((array!51308 0))(
  ( (array!51309 (arr!24674 (Array (_ BitVec 32) (_ BitVec 64))) (size!25115 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51308)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880716 (= res!598512 (not (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053))))))

(declare-datatypes ((V!28515 0))(
  ( (V!28516 (val!8848 Int)) )
))
(declare-datatypes ((tuple2!11738 0))(
  ( (tuple2!11739 (_1!5879 (_ BitVec 64)) (_2!5879 V!28515)) )
))
(declare-datatypes ((List!17608 0))(
  ( (Nil!17605) (Cons!17604 (h!18735 tuple2!11738) (t!24775 List!17608)) )
))
(declare-datatypes ((ListLongMap!10521 0))(
  ( (ListLongMap!10522 (toList!5276 List!17608)) )
))
(declare-fun lt!398304 () ListLongMap!10521)

(declare-fun lt!398299 () ListLongMap!10521)

(assert (=> b!880716 (= lt!398304 lt!398299)))

(declare-fun v!557 () V!28515)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lt!398303 () ListLongMap!10521)

(declare-fun +!2482 (ListLongMap!10521 tuple2!11738) ListLongMap!10521)

(assert (=> b!880716 (= lt!398299 (+!2482 lt!398303 (tuple2!11739 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8361 0))(
  ( (ValueCellFull!8361 (v!11292 V!28515)) (EmptyCell!8361) )
))
(declare-datatypes ((array!51310 0))(
  ( (array!51311 (arr!24675 (Array (_ BitVec 32) ValueCell!8361)) (size!25116 (_ BitVec 32))) )
))
(declare-fun lt!398300 () array!51310)

(declare-fun minValue!654 () V!28515)

(declare-fun zeroValue!654 () V!28515)

(declare-fun getCurrentListMapNoExtraKeys!3236 (array!51308 array!51310 (_ BitVec 32) (_ BitVec 32) V!28515 V!28515 (_ BitVec 32) Int) ListLongMap!10521)

(assert (=> b!880716 (= lt!398304 (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51310)

(assert (=> b!880716 (= lt!398303 (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30040 0))(
  ( (Unit!30041) )
))
(declare-fun lt!398298 () Unit!30040)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!711 (array!51308 array!51310 (_ BitVec 32) (_ BitVec 32) V!28515 V!28515 (_ BitVec 32) (_ BitVec 64) V!28515 (_ BitVec 32) Int) Unit!30040)

(assert (=> b!880716 (= lt!398298 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!711 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880718 () Bool)

(declare-fun res!598516 () Bool)

(declare-fun e!490135 () Bool)

(assert (=> b!880718 (=> (not res!598516) (not e!490135))))

(assert (=> b!880718 (= res!598516 (and (= (size!25116 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25115 _keys!868) (size!25116 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880719 () Bool)

(declare-fun e!490141 () Bool)

(assert (=> b!880719 (= e!490136 e!490141)))

(declare-fun res!598510 () Bool)

(assert (=> b!880719 (=> res!598510 e!490141)))

(assert (=> b!880719 (= res!598510 (not (= (select (arr!24674 _keys!868) from!1053) k0!854)))))

(declare-fun lt!398302 () ListLongMap!10521)

(declare-fun get!12993 (ValueCell!8361 V!28515) V!28515)

(declare-fun dynLambda!1246 (Int (_ BitVec 64)) V!28515)

(assert (=> b!880719 (= lt!398302 (+!2482 lt!398299 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880720 () Bool)

(declare-fun res!598509 () Bool)

(assert (=> b!880720 (=> (not res!598509) (not e!490135))))

(assert (=> b!880720 (= res!598509 (and (= (select (arr!24674 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!28023 () Bool)

(declare-fun mapRes!28023 () Bool)

(declare-fun tp!53759 () Bool)

(declare-fun e!490139 () Bool)

(assert (=> mapNonEmpty!28023 (= mapRes!28023 (and tp!53759 e!490139))))

(declare-fun mapKey!28023 () (_ BitVec 32))

(declare-fun mapRest!28023 () (Array (_ BitVec 32) ValueCell!8361))

(declare-fun mapValue!28023 () ValueCell!8361)

(assert (=> mapNonEmpty!28023 (= (arr!24675 _values!688) (store mapRest!28023 mapKey!28023 mapValue!28023))))

(declare-fun b!880721 () Bool)

(declare-fun res!598508 () Bool)

(assert (=> b!880721 (=> (not res!598508) (not e!490135))))

(assert (=> b!880721 (= res!598508 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25115 _keys!868))))))

(declare-fun b!880722 () Bool)

(declare-fun res!598507 () Bool)

(assert (=> b!880722 (=> (not res!598507) (not e!490135))))

(declare-datatypes ((List!17609 0))(
  ( (Nil!17606) (Cons!17605 (h!18736 (_ BitVec 64)) (t!24776 List!17609)) )
))
(declare-fun arrayNoDuplicates!0 (array!51308 (_ BitVec 32) List!17609) Bool)

(assert (=> b!880722 (= res!598507 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17606))))

(declare-fun b!880723 () Bool)

(assert (=> b!880723 (= e!490141 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (size!25115 _keys!868) #b01111111111111111111111111111111)))))

(assert (=> b!880723 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17606)))

(declare-fun lt!398305 () Unit!30040)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51308 (_ BitVec 32) (_ BitVec 32)) Unit!30040)

(assert (=> b!880723 (= lt!398305 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880724 () Bool)

(declare-fun res!598513 () Bool)

(assert (=> b!880724 (=> (not res!598513) (not e!490135))))

(assert (=> b!880724 (= res!598513 (validKeyInArray!0 k0!854))))

(declare-fun b!880725 () Bool)

(declare-fun tp_is_empty!17601 () Bool)

(assert (=> b!880725 (= e!490139 tp_is_empty!17601)))

(declare-fun b!880726 () Bool)

(declare-fun e!490137 () Bool)

(declare-fun e!490140 () Bool)

(assert (=> b!880726 (= e!490137 (and e!490140 mapRes!28023))))

(declare-fun condMapEmpty!28023 () Bool)

(declare-fun mapDefault!28023 () ValueCell!8361)

(assert (=> b!880726 (= condMapEmpty!28023 (= (arr!24675 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8361)) mapDefault!28023)))))

(declare-fun b!880727 () Bool)

(assert (=> b!880727 (= e!490140 tp_is_empty!17601)))

(declare-fun mapIsEmpty!28023 () Bool)

(assert (=> mapIsEmpty!28023 mapRes!28023))

(declare-fun b!880717 () Bool)

(declare-fun res!598515 () Bool)

(assert (=> b!880717 (=> (not res!598515) (not e!490135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51308 (_ BitVec 32)) Bool)

(assert (=> b!880717 (= res!598515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!598506 () Bool)

(assert (=> start!74736 (=> (not res!598506) (not e!490135))))

(assert (=> start!74736 (= res!598506 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25115 _keys!868))))))

(assert (=> start!74736 e!490135))

(assert (=> start!74736 tp_is_empty!17601))

(assert (=> start!74736 true))

(assert (=> start!74736 tp!53760))

(declare-fun array_inv!19420 (array!51308) Bool)

(assert (=> start!74736 (array_inv!19420 _keys!868)))

(declare-fun array_inv!19421 (array!51310) Bool)

(assert (=> start!74736 (and (array_inv!19421 _values!688) e!490137)))

(declare-fun b!880728 () Bool)

(assert (=> b!880728 (= e!490135 e!490142)))

(declare-fun res!598514 () Bool)

(assert (=> b!880728 (=> (not res!598514) (not e!490142))))

(assert (=> b!880728 (= res!598514 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!880728 (= lt!398302 (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880728 (= lt!398300 (array!51311 (store (arr!24675 _values!688) i!612 (ValueCellFull!8361 v!557)) (size!25116 _values!688)))))

(declare-fun lt!398301 () ListLongMap!10521)

(assert (=> b!880728 (= lt!398301 (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880729 () Bool)

(declare-fun res!598511 () Bool)

(assert (=> b!880729 (=> (not res!598511) (not e!490135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880729 (= res!598511 (validMask!0 mask!1196))))

(assert (= (and start!74736 res!598506) b!880729))

(assert (= (and b!880729 res!598511) b!880718))

(assert (= (and b!880718 res!598516) b!880717))

(assert (= (and b!880717 res!598515) b!880722))

(assert (= (and b!880722 res!598507) b!880721))

(assert (= (and b!880721 res!598508) b!880724))

(assert (= (and b!880724 res!598513) b!880720))

(assert (= (and b!880720 res!598509) b!880728))

(assert (= (and b!880728 res!598514) b!880716))

(assert (= (and b!880716 (not res!598512)) b!880719))

(assert (= (and b!880719 (not res!598510)) b!880723))

(assert (= (and b!880726 condMapEmpty!28023) mapIsEmpty!28023))

(assert (= (and b!880726 (not condMapEmpty!28023)) mapNonEmpty!28023))

(get-info :version)

(assert (= (and mapNonEmpty!28023 ((_ is ValueCellFull!8361) mapValue!28023)) b!880725))

(assert (= (and b!880726 ((_ is ValueCellFull!8361) mapDefault!28023)) b!880727))

(assert (= start!74736 b!880726))

(declare-fun b_lambda!12495 () Bool)

(assert (=> (not b_lambda!12495) (not b!880719)))

(declare-fun t!24774 () Bool)

(declare-fun tb!5023 () Bool)

(assert (=> (and start!74736 (= defaultEntry!696 defaultEntry!696) t!24774) tb!5023))

(declare-fun result!9663 () Bool)

(assert (=> tb!5023 (= result!9663 tp_is_empty!17601)))

(assert (=> b!880719 t!24774))

(declare-fun b_and!25353 () Bool)

(assert (= b_and!25351 (and (=> t!24774 result!9663) b_and!25353)))

(declare-fun m!820617 () Bool)

(assert (=> b!880720 m!820617))

(declare-fun m!820619 () Bool)

(assert (=> b!880723 m!820619))

(declare-fun m!820621 () Bool)

(assert (=> b!880723 m!820621))

(declare-fun m!820623 () Bool)

(assert (=> b!880729 m!820623))

(declare-fun m!820625 () Bool)

(assert (=> b!880716 m!820625))

(declare-fun m!820627 () Bool)

(assert (=> b!880716 m!820627))

(declare-fun m!820629 () Bool)

(assert (=> b!880716 m!820629))

(assert (=> b!880716 m!820627))

(declare-fun m!820631 () Bool)

(assert (=> b!880716 m!820631))

(declare-fun m!820633 () Bool)

(assert (=> b!880716 m!820633))

(declare-fun m!820635 () Bool)

(assert (=> b!880716 m!820635))

(declare-fun m!820637 () Bool)

(assert (=> b!880722 m!820637))

(declare-fun m!820639 () Bool)

(assert (=> b!880728 m!820639))

(declare-fun m!820641 () Bool)

(assert (=> b!880728 m!820641))

(declare-fun m!820643 () Bool)

(assert (=> b!880728 m!820643))

(declare-fun m!820645 () Bool)

(assert (=> mapNonEmpty!28023 m!820645))

(declare-fun m!820647 () Bool)

(assert (=> b!880724 m!820647))

(declare-fun m!820649 () Bool)

(assert (=> start!74736 m!820649))

(declare-fun m!820651 () Bool)

(assert (=> start!74736 m!820651))

(declare-fun m!820653 () Bool)

(assert (=> b!880717 m!820653))

(declare-fun m!820655 () Bool)

(assert (=> b!880719 m!820655))

(declare-fun m!820657 () Bool)

(assert (=> b!880719 m!820657))

(declare-fun m!820659 () Bool)

(assert (=> b!880719 m!820659))

(declare-fun m!820661 () Bool)

(assert (=> b!880719 m!820661))

(assert (=> b!880719 m!820657))

(assert (=> b!880719 m!820627))

(assert (=> b!880719 m!820659))

(check-sat (not b!880723) (not b!880716) (not b!880719) b_and!25353 (not b_lambda!12495) (not b_next!15357) (not start!74736) (not b!880722) tp_is_empty!17601 (not mapNonEmpty!28023) (not b!880728) (not b!880717) (not b!880729) (not b!880724))
(check-sat b_and!25353 (not b_next!15357))
(get-model)

(declare-fun b_lambda!12499 () Bool)

(assert (= b_lambda!12495 (or (and start!74736 b_free!15357) b_lambda!12499)))

(check-sat (not b!880723) (not b_lambda!12499) (not b!880716) (not b!880719) b_and!25353 (not b_next!15357) (not start!74736) (not b!880722) tp_is_empty!17601 (not mapNonEmpty!28023) (not b!880728) (not b!880717) (not b!880729) (not b!880724))
(check-sat b_and!25353 (not b_next!15357))
(get-model)

(declare-fun b!880800 () Bool)

(declare-fun e!490181 () Bool)

(assert (=> b!880800 (= e!490181 (validKeyInArray!0 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!880800 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!880801 () Bool)

(declare-fun e!490186 () ListLongMap!10521)

(assert (=> b!880801 (= e!490186 (ListLongMap!10522 Nil!17605))))

(declare-fun lt!398345 () ListLongMap!10521)

(declare-fun b!880802 () Bool)

(declare-fun e!490185 () Bool)

(assert (=> b!880802 (= e!490185 (= lt!398345 (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!880803 () Bool)

(declare-fun isEmpty!672 (ListLongMap!10521) Bool)

(assert (=> b!880803 (= e!490185 (isEmpty!672 lt!398345))))

(declare-fun b!880804 () Bool)

(declare-fun e!490187 () ListLongMap!10521)

(declare-fun call!38893 () ListLongMap!10521)

(assert (=> b!880804 (= e!490187 call!38893)))

(declare-fun b!880805 () Bool)

(assert (=> b!880805 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(assert (=> b!880805 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25116 _values!688)))))

(declare-fun e!490183 () Bool)

(declare-fun apply!380 (ListLongMap!10521 (_ BitVec 64)) V!28515)

(assert (=> b!880805 (= e!490183 (= (apply!380 lt!398345 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12993 (select (arr!24675 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38890 () Bool)

(assert (=> bm!38890 (= call!38893 (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108899 () Bool)

(declare-fun e!490184 () Bool)

(assert (=> d!108899 e!490184))

(declare-fun res!598558 () Bool)

(assert (=> d!108899 (=> (not res!598558) (not e!490184))))

(declare-fun contains!4253 (ListLongMap!10521 (_ BitVec 64)) Bool)

(assert (=> d!108899 (= res!598558 (not (contains!4253 lt!398345 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108899 (= lt!398345 e!490186)))

(declare-fun c!92788 () Bool)

(assert (=> d!108899 (= c!92788 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(assert (=> d!108899 (validMask!0 mask!1196)))

(assert (=> d!108899 (= (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398345)))

(declare-fun b!880806 () Bool)

(assert (=> b!880806 (= e!490186 e!490187)))

(declare-fun c!92785 () Bool)

(assert (=> b!880806 (= c!92785 (validKeyInArray!0 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!880807 () Bool)

(declare-fun e!490182 () Bool)

(assert (=> b!880807 (= e!490182 e!490185)))

(declare-fun c!92787 () Bool)

(assert (=> b!880807 (= c!92787 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(declare-fun b!880808 () Bool)

(declare-fun res!598561 () Bool)

(assert (=> b!880808 (=> (not res!598561) (not e!490184))))

(assert (=> b!880808 (= res!598561 (not (contains!4253 lt!398345 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!880809 () Bool)

(declare-fun lt!398344 () Unit!30040)

(declare-fun lt!398348 () Unit!30040)

(assert (=> b!880809 (= lt!398344 lt!398348)))

(declare-fun lt!398347 () (_ BitVec 64))

(declare-fun lt!398350 () (_ BitVec 64))

(declare-fun lt!398346 () ListLongMap!10521)

(declare-fun lt!398349 () V!28515)

(assert (=> b!880809 (not (contains!4253 (+!2482 lt!398346 (tuple2!11739 lt!398347 lt!398349)) lt!398350))))

(declare-fun addStillNotContains!207 (ListLongMap!10521 (_ BitVec 64) V!28515 (_ BitVec 64)) Unit!30040)

(assert (=> b!880809 (= lt!398348 (addStillNotContains!207 lt!398346 lt!398347 lt!398349 lt!398350))))

(assert (=> b!880809 (= lt!398350 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!880809 (= lt!398349 (get!12993 (select (arr!24675 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!880809 (= lt!398347 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!880809 (= lt!398346 call!38893)))

(assert (=> b!880809 (= e!490187 (+!2482 call!38893 (tuple2!11739 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12993 (select (arr!24675 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880810 () Bool)

(assert (=> b!880810 (= e!490184 e!490182)))

(declare-fun c!92786 () Bool)

(assert (=> b!880810 (= c!92786 e!490181)))

(declare-fun res!598560 () Bool)

(assert (=> b!880810 (=> (not res!598560) (not e!490181))))

(assert (=> b!880810 (= res!598560 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(declare-fun b!880811 () Bool)

(assert (=> b!880811 (= e!490182 e!490183)))

(assert (=> b!880811 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(declare-fun res!598559 () Bool)

(assert (=> b!880811 (= res!598559 (contains!4253 lt!398345 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!880811 (=> (not res!598559) (not e!490183))))

(assert (= (and d!108899 c!92788) b!880801))

(assert (= (and d!108899 (not c!92788)) b!880806))

(assert (= (and b!880806 c!92785) b!880809))

(assert (= (and b!880806 (not c!92785)) b!880804))

(assert (= (or b!880809 b!880804) bm!38890))

(assert (= (and d!108899 res!598558) b!880808))

(assert (= (and b!880808 res!598561) b!880810))

(assert (= (and b!880810 res!598560) b!880800))

(assert (= (and b!880810 c!92786) b!880811))

(assert (= (and b!880810 (not c!92786)) b!880807))

(assert (= (and b!880811 res!598559) b!880805))

(assert (= (and b!880807 c!92787) b!880802))

(assert (= (and b!880807 (not c!92787)) b!880803))

(declare-fun b_lambda!12501 () Bool)

(assert (=> (not b_lambda!12501) (not b!880805)))

(assert (=> b!880805 t!24774))

(declare-fun b_and!25359 () Bool)

(assert (= b_and!25353 (and (=> t!24774 result!9663) b_and!25359)))

(declare-fun b_lambda!12503 () Bool)

(assert (=> (not b_lambda!12503) (not b!880809)))

(assert (=> b!880809 t!24774))

(declare-fun b_and!25361 () Bool)

(assert (= b_and!25359 (and (=> t!24774 result!9663) b_and!25361)))

(declare-fun m!820709 () Bool)

(assert (=> bm!38890 m!820709))

(declare-fun m!820711 () Bool)

(assert (=> b!880806 m!820711))

(assert (=> b!880806 m!820711))

(declare-fun m!820713 () Bool)

(assert (=> b!880806 m!820713))

(declare-fun m!820715 () Bool)

(assert (=> b!880808 m!820715))

(assert (=> b!880802 m!820709))

(assert (=> b!880800 m!820711))

(assert (=> b!880800 m!820711))

(assert (=> b!880800 m!820713))

(declare-fun m!820717 () Bool)

(assert (=> d!108899 m!820717))

(assert (=> d!108899 m!820623))

(declare-fun m!820719 () Bool)

(assert (=> b!880803 m!820719))

(assert (=> b!880805 m!820711))

(declare-fun m!820721 () Bool)

(assert (=> b!880805 m!820721))

(assert (=> b!880805 m!820659))

(declare-fun m!820723 () Bool)

(assert (=> b!880805 m!820723))

(assert (=> b!880805 m!820711))

(declare-fun m!820725 () Bool)

(assert (=> b!880805 m!820725))

(assert (=> b!880805 m!820659))

(assert (=> b!880805 m!820721))

(assert (=> b!880809 m!820711))

(assert (=> b!880809 m!820721))

(assert (=> b!880809 m!820659))

(assert (=> b!880809 m!820723))

(declare-fun m!820727 () Bool)

(assert (=> b!880809 m!820727))

(declare-fun m!820729 () Bool)

(assert (=> b!880809 m!820729))

(declare-fun m!820731 () Bool)

(assert (=> b!880809 m!820731))

(assert (=> b!880809 m!820729))

(declare-fun m!820733 () Bool)

(assert (=> b!880809 m!820733))

(assert (=> b!880809 m!820659))

(assert (=> b!880809 m!820721))

(assert (=> b!880811 m!820711))

(assert (=> b!880811 m!820711))

(declare-fun m!820735 () Bool)

(assert (=> b!880811 m!820735))

(assert (=> b!880716 d!108899))

(declare-fun d!108901 () Bool)

(assert (=> d!108901 (= (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053)) (and (not (= (select (arr!24674 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24674 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!880716 d!108901))

(declare-fun call!38898 () ListLongMap!10521)

(declare-fun bm!38895 () Bool)

(assert (=> bm!38895 (= call!38898 (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun d!108903 () Bool)

(declare-fun e!490193 () Bool)

(assert (=> d!108903 e!490193))

(declare-fun res!598564 () Bool)

(assert (=> d!108903 (=> (not res!598564) (not e!490193))))

(assert (=> d!108903 (= res!598564 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25116 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25116 _values!688))))))))

(declare-fun lt!398353 () Unit!30040)

(declare-fun choose!1444 (array!51308 array!51310 (_ BitVec 32) (_ BitVec 32) V!28515 V!28515 (_ BitVec 32) (_ BitVec 64) V!28515 (_ BitVec 32) Int) Unit!30040)

(assert (=> d!108903 (= lt!398353 (choose!1444 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108903 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(assert (=> d!108903 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!711 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398353)))

(declare-fun b!880818 () Bool)

(declare-fun e!490192 () Bool)

(declare-fun call!38899 () ListLongMap!10521)

(assert (=> b!880818 (= e!490192 (= call!38899 call!38898))))

(declare-fun bm!38896 () Bool)

(assert (=> bm!38896 (= call!38899 (getCurrentListMapNoExtraKeys!3236 _keys!868 (array!51311 (store (arr!24675 _values!688) i!612 (ValueCellFull!8361 v!557)) (size!25116 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880819 () Bool)

(assert (=> b!880819 (= e!490193 e!490192)))

(declare-fun c!92791 () Bool)

(assert (=> b!880819 (= c!92791 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun b!880820 () Bool)

(assert (=> b!880820 (= e!490192 (= call!38899 (+!2482 call!38898 (tuple2!11739 k0!854 v!557))))))

(assert (= (and d!108903 res!598564) b!880819))

(assert (= (and b!880819 c!92791) b!880820))

(assert (= (and b!880819 (not c!92791)) b!880818))

(assert (= (or b!880820 b!880818) bm!38895))

(assert (= (or b!880820 b!880818) bm!38896))

(assert (=> bm!38895 m!820625))

(declare-fun m!820737 () Bool)

(assert (=> d!108903 m!820737))

(assert (=> bm!38896 m!820641))

(declare-fun m!820739 () Bool)

(assert (=> bm!38896 m!820739))

(declare-fun m!820741 () Bool)

(assert (=> b!880820 m!820741))

(assert (=> b!880716 d!108903))

(declare-fun b!880821 () Bool)

(declare-fun e!490194 () Bool)

(assert (=> b!880821 (= e!490194 (validKeyInArray!0 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!880821 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!880822 () Bool)

(declare-fun e!490199 () ListLongMap!10521)

(assert (=> b!880822 (= e!490199 (ListLongMap!10522 Nil!17605))))

(declare-fun b!880823 () Bool)

(declare-fun e!490198 () Bool)

(declare-fun lt!398355 () ListLongMap!10521)

(assert (=> b!880823 (= e!490198 (= lt!398355 (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!880824 () Bool)

(assert (=> b!880824 (= e!490198 (isEmpty!672 lt!398355))))

(declare-fun b!880825 () Bool)

(declare-fun e!490200 () ListLongMap!10521)

(declare-fun call!38900 () ListLongMap!10521)

(assert (=> b!880825 (= e!490200 call!38900)))

(declare-fun b!880826 () Bool)

(assert (=> b!880826 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(assert (=> b!880826 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25116 lt!398300)))))

(declare-fun e!490196 () Bool)

(assert (=> b!880826 (= e!490196 (= (apply!380 lt!398355 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12993 (select (arr!24675 lt!398300) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38897 () Bool)

(assert (=> bm!38897 (= call!38900 (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108905 () Bool)

(declare-fun e!490197 () Bool)

(assert (=> d!108905 e!490197))

(declare-fun res!598565 () Bool)

(assert (=> d!108905 (=> (not res!598565) (not e!490197))))

(assert (=> d!108905 (= res!598565 (not (contains!4253 lt!398355 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108905 (= lt!398355 e!490199)))

(declare-fun c!92795 () Bool)

(assert (=> d!108905 (= c!92795 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(assert (=> d!108905 (validMask!0 mask!1196)))

(assert (=> d!108905 (= (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398355)))

(declare-fun b!880827 () Bool)

(assert (=> b!880827 (= e!490199 e!490200)))

(declare-fun c!92792 () Bool)

(assert (=> b!880827 (= c!92792 (validKeyInArray!0 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!880828 () Bool)

(declare-fun e!490195 () Bool)

(assert (=> b!880828 (= e!490195 e!490198)))

(declare-fun c!92794 () Bool)

(assert (=> b!880828 (= c!92794 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(declare-fun b!880829 () Bool)

(declare-fun res!598568 () Bool)

(assert (=> b!880829 (=> (not res!598568) (not e!490197))))

(assert (=> b!880829 (= res!598568 (not (contains!4253 lt!398355 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!880830 () Bool)

(declare-fun lt!398354 () Unit!30040)

(declare-fun lt!398358 () Unit!30040)

(assert (=> b!880830 (= lt!398354 lt!398358)))

(declare-fun lt!398359 () V!28515)

(declare-fun lt!398357 () (_ BitVec 64))

(declare-fun lt!398356 () ListLongMap!10521)

(declare-fun lt!398360 () (_ BitVec 64))

(assert (=> b!880830 (not (contains!4253 (+!2482 lt!398356 (tuple2!11739 lt!398357 lt!398359)) lt!398360))))

(assert (=> b!880830 (= lt!398358 (addStillNotContains!207 lt!398356 lt!398357 lt!398359 lt!398360))))

(assert (=> b!880830 (= lt!398360 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!880830 (= lt!398359 (get!12993 (select (arr!24675 lt!398300) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!880830 (= lt!398357 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!880830 (= lt!398356 call!38900)))

(assert (=> b!880830 (= e!490200 (+!2482 call!38900 (tuple2!11739 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12993 (select (arr!24675 lt!398300) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880831 () Bool)

(assert (=> b!880831 (= e!490197 e!490195)))

(declare-fun c!92793 () Bool)

(assert (=> b!880831 (= c!92793 e!490194)))

(declare-fun res!598567 () Bool)

(assert (=> b!880831 (=> (not res!598567) (not e!490194))))

(assert (=> b!880831 (= res!598567 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(declare-fun b!880832 () Bool)

(assert (=> b!880832 (= e!490195 e!490196)))

(assert (=> b!880832 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25115 _keys!868)))))

(declare-fun res!598566 () Bool)

(assert (=> b!880832 (= res!598566 (contains!4253 lt!398355 (select (arr!24674 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!880832 (=> (not res!598566) (not e!490196))))

(assert (= (and d!108905 c!92795) b!880822))

(assert (= (and d!108905 (not c!92795)) b!880827))

(assert (= (and b!880827 c!92792) b!880830))

(assert (= (and b!880827 (not c!92792)) b!880825))

(assert (= (or b!880830 b!880825) bm!38897))

(assert (= (and d!108905 res!598565) b!880829))

(assert (= (and b!880829 res!598568) b!880831))

(assert (= (and b!880831 res!598567) b!880821))

(assert (= (and b!880831 c!92793) b!880832))

(assert (= (and b!880831 (not c!92793)) b!880828))

(assert (= (and b!880832 res!598566) b!880826))

(assert (= (and b!880828 c!92794) b!880823))

(assert (= (and b!880828 (not c!92794)) b!880824))

(declare-fun b_lambda!12505 () Bool)

(assert (=> (not b_lambda!12505) (not b!880826)))

(assert (=> b!880826 t!24774))

(declare-fun b_and!25363 () Bool)

(assert (= b_and!25361 (and (=> t!24774 result!9663) b_and!25363)))

(declare-fun b_lambda!12507 () Bool)

(assert (=> (not b_lambda!12507) (not b!880830)))

(assert (=> b!880830 t!24774))

(declare-fun b_and!25365 () Bool)

(assert (= b_and!25363 (and (=> t!24774 result!9663) b_and!25365)))

(declare-fun m!820743 () Bool)

(assert (=> bm!38897 m!820743))

(assert (=> b!880827 m!820711))

(assert (=> b!880827 m!820711))

(assert (=> b!880827 m!820713))

(declare-fun m!820745 () Bool)

(assert (=> b!880829 m!820745))

(assert (=> b!880823 m!820743))

(assert (=> b!880821 m!820711))

(assert (=> b!880821 m!820711))

(assert (=> b!880821 m!820713))

(declare-fun m!820747 () Bool)

(assert (=> d!108905 m!820747))

(assert (=> d!108905 m!820623))

(declare-fun m!820749 () Bool)

(assert (=> b!880824 m!820749))

(assert (=> b!880826 m!820711))

(declare-fun m!820751 () Bool)

(assert (=> b!880826 m!820751))

(assert (=> b!880826 m!820659))

(declare-fun m!820753 () Bool)

(assert (=> b!880826 m!820753))

(assert (=> b!880826 m!820711))

(declare-fun m!820755 () Bool)

(assert (=> b!880826 m!820755))

(assert (=> b!880826 m!820659))

(assert (=> b!880826 m!820751))

(assert (=> b!880830 m!820711))

(assert (=> b!880830 m!820751))

(assert (=> b!880830 m!820659))

(assert (=> b!880830 m!820753))

(declare-fun m!820757 () Bool)

(assert (=> b!880830 m!820757))

(declare-fun m!820759 () Bool)

(assert (=> b!880830 m!820759))

(declare-fun m!820761 () Bool)

(assert (=> b!880830 m!820761))

(assert (=> b!880830 m!820759))

(declare-fun m!820763 () Bool)

(assert (=> b!880830 m!820763))

(assert (=> b!880830 m!820659))

(assert (=> b!880830 m!820751))

(assert (=> b!880832 m!820711))

(assert (=> b!880832 m!820711))

(declare-fun m!820765 () Bool)

(assert (=> b!880832 m!820765))

(assert (=> b!880716 d!108905))

(declare-fun d!108907 () Bool)

(declare-fun e!490203 () Bool)

(assert (=> d!108907 e!490203))

(declare-fun res!598573 () Bool)

(assert (=> d!108907 (=> (not res!598573) (not e!490203))))

(declare-fun lt!398372 () ListLongMap!10521)

(assert (=> d!108907 (= res!598573 (contains!4253 lt!398372 (_1!5879 (tuple2!11739 k0!854 v!557))))))

(declare-fun lt!398371 () List!17608)

(assert (=> d!108907 (= lt!398372 (ListLongMap!10522 lt!398371))))

(declare-fun lt!398369 () Unit!30040)

(declare-fun lt!398370 () Unit!30040)

(assert (=> d!108907 (= lt!398369 lt!398370)))

(declare-datatypes ((Option!427 0))(
  ( (Some!426 (v!11297 V!28515)) (None!425) )
))
(declare-fun getValueByKey!421 (List!17608 (_ BitVec 64)) Option!427)

(assert (=> d!108907 (= (getValueByKey!421 lt!398371 (_1!5879 (tuple2!11739 k0!854 v!557))) (Some!426 (_2!5879 (tuple2!11739 k0!854 v!557))))))

(declare-fun lemmaContainsTupThenGetReturnValue!237 (List!17608 (_ BitVec 64) V!28515) Unit!30040)

(assert (=> d!108907 (= lt!398370 (lemmaContainsTupThenGetReturnValue!237 lt!398371 (_1!5879 (tuple2!11739 k0!854 v!557)) (_2!5879 (tuple2!11739 k0!854 v!557))))))

(declare-fun insertStrictlySorted!275 (List!17608 (_ BitVec 64) V!28515) List!17608)

(assert (=> d!108907 (= lt!398371 (insertStrictlySorted!275 (toList!5276 lt!398303) (_1!5879 (tuple2!11739 k0!854 v!557)) (_2!5879 (tuple2!11739 k0!854 v!557))))))

(assert (=> d!108907 (= (+!2482 lt!398303 (tuple2!11739 k0!854 v!557)) lt!398372)))

(declare-fun b!880837 () Bool)

(declare-fun res!598574 () Bool)

(assert (=> b!880837 (=> (not res!598574) (not e!490203))))

(assert (=> b!880837 (= res!598574 (= (getValueByKey!421 (toList!5276 lt!398372) (_1!5879 (tuple2!11739 k0!854 v!557))) (Some!426 (_2!5879 (tuple2!11739 k0!854 v!557)))))))

(declare-fun b!880838 () Bool)

(declare-fun contains!4254 (List!17608 tuple2!11738) Bool)

(assert (=> b!880838 (= e!490203 (contains!4254 (toList!5276 lt!398372) (tuple2!11739 k0!854 v!557)))))

(assert (= (and d!108907 res!598573) b!880837))

(assert (= (and b!880837 res!598574) b!880838))

(declare-fun m!820767 () Bool)

(assert (=> d!108907 m!820767))

(declare-fun m!820769 () Bool)

(assert (=> d!108907 m!820769))

(declare-fun m!820771 () Bool)

(assert (=> d!108907 m!820771))

(declare-fun m!820773 () Bool)

(assert (=> d!108907 m!820773))

(declare-fun m!820775 () Bool)

(assert (=> b!880837 m!820775))

(declare-fun m!820777 () Bool)

(assert (=> b!880838 m!820777))

(assert (=> b!880716 d!108907))

(declare-fun d!108909 () Bool)

(assert (=> d!108909 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!880729 d!108909))

(declare-fun d!108911 () Bool)

(declare-fun res!598580 () Bool)

(declare-fun e!490212 () Bool)

(assert (=> d!108911 (=> res!598580 e!490212)))

(assert (=> d!108911 (= res!598580 (bvsge #b00000000000000000000000000000000 (size!25115 _keys!868)))))

(assert (=> d!108911 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!490212)))

(declare-fun bm!38900 () Bool)

(declare-fun call!38903 () Bool)

(assert (=> bm!38900 (= call!38903 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!880847 () Bool)

(declare-fun e!490210 () Bool)

(assert (=> b!880847 (= e!490210 call!38903)))

(declare-fun b!880848 () Bool)

(declare-fun e!490211 () Bool)

(assert (=> b!880848 (= e!490211 e!490210)))

(declare-fun lt!398380 () (_ BitVec 64))

(assert (=> b!880848 (= lt!398380 (select (arr!24674 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!398381 () Unit!30040)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51308 (_ BitVec 64) (_ BitVec 32)) Unit!30040)

(assert (=> b!880848 (= lt!398381 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!398380 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!51308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!880848 (arrayContainsKey!0 _keys!868 lt!398380 #b00000000000000000000000000000000)))

(declare-fun lt!398379 () Unit!30040)

(assert (=> b!880848 (= lt!398379 lt!398381)))

(declare-fun res!598579 () Bool)

(declare-datatypes ((SeekEntryResult!8745 0))(
  ( (MissingZero!8745 (index!37350 (_ BitVec 32))) (Found!8745 (index!37351 (_ BitVec 32))) (Intermediate!8745 (undefined!9557 Bool) (index!37352 (_ BitVec 32)) (x!74632 (_ BitVec 32))) (Undefined!8745) (MissingVacant!8745 (index!37353 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51308 (_ BitVec 32)) SeekEntryResult!8745)

(assert (=> b!880848 (= res!598579 (= (seekEntryOrOpen!0 (select (arr!24674 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8745 #b00000000000000000000000000000000)))))

(assert (=> b!880848 (=> (not res!598579) (not e!490210))))

(declare-fun b!880849 () Bool)

(assert (=> b!880849 (= e!490211 call!38903)))

(declare-fun b!880850 () Bool)

(assert (=> b!880850 (= e!490212 e!490211)))

(declare-fun c!92798 () Bool)

(assert (=> b!880850 (= c!92798 (validKeyInArray!0 (select (arr!24674 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108911 (not res!598580)) b!880850))

(assert (= (and b!880850 c!92798) b!880848))

(assert (= (and b!880850 (not c!92798)) b!880849))

(assert (= (and b!880848 res!598579) b!880847))

(assert (= (or b!880847 b!880849) bm!38900))

(declare-fun m!820779 () Bool)

(assert (=> bm!38900 m!820779))

(declare-fun m!820781 () Bool)

(assert (=> b!880848 m!820781))

(declare-fun m!820783 () Bool)

(assert (=> b!880848 m!820783))

(declare-fun m!820785 () Bool)

(assert (=> b!880848 m!820785))

(assert (=> b!880848 m!820781))

(declare-fun m!820787 () Bool)

(assert (=> b!880848 m!820787))

(assert (=> b!880850 m!820781))

(assert (=> b!880850 m!820781))

(declare-fun m!820789 () Bool)

(assert (=> b!880850 m!820789))

(assert (=> b!880717 d!108911))

(declare-fun b!880861 () Bool)

(declare-fun e!490224 () Bool)

(declare-fun contains!4255 (List!17609 (_ BitVec 64)) Bool)

(assert (=> b!880861 (= e!490224 (contains!4255 Nil!17606 (select (arr!24674 _keys!868) from!1053)))))

(declare-fun d!108913 () Bool)

(declare-fun res!598587 () Bool)

(declare-fun e!490223 () Bool)

(assert (=> d!108913 (=> res!598587 e!490223)))

(assert (=> d!108913 (= res!598587 (bvsge from!1053 (size!25115 _keys!868)))))

(assert (=> d!108913 (= (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17606) e!490223)))

(declare-fun call!38906 () Bool)

(declare-fun c!92801 () Bool)

(declare-fun bm!38903 () Bool)

(assert (=> bm!38903 (= call!38906 (arrayNoDuplicates!0 _keys!868 (bvadd from!1053 #b00000000000000000000000000000001) (ite c!92801 (Cons!17605 (select (arr!24674 _keys!868) from!1053) Nil!17606) Nil!17606)))))

(declare-fun b!880862 () Bool)

(declare-fun e!490222 () Bool)

(assert (=> b!880862 (= e!490222 call!38906)))

(declare-fun b!880863 () Bool)

(declare-fun e!490221 () Bool)

(assert (=> b!880863 (= e!490221 e!490222)))

(assert (=> b!880863 (= c!92801 (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053)))))

(declare-fun b!880864 () Bool)

(assert (=> b!880864 (= e!490223 e!490221)))

(declare-fun res!598589 () Bool)

(assert (=> b!880864 (=> (not res!598589) (not e!490221))))

(assert (=> b!880864 (= res!598589 (not e!490224))))

(declare-fun res!598588 () Bool)

(assert (=> b!880864 (=> (not res!598588) (not e!490224))))

(assert (=> b!880864 (= res!598588 (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053)))))

(declare-fun b!880865 () Bool)

(assert (=> b!880865 (= e!490222 call!38906)))

(assert (= (and d!108913 (not res!598587)) b!880864))

(assert (= (and b!880864 res!598588) b!880861))

(assert (= (and b!880864 res!598589) b!880863))

(assert (= (and b!880863 c!92801) b!880862))

(assert (= (and b!880863 (not c!92801)) b!880865))

(assert (= (or b!880862 b!880865) bm!38903))

(assert (=> b!880861 m!820627))

(assert (=> b!880861 m!820627))

(declare-fun m!820791 () Bool)

(assert (=> b!880861 m!820791))

(assert (=> bm!38903 m!820627))

(declare-fun m!820793 () Bool)

(assert (=> bm!38903 m!820793))

(assert (=> b!880863 m!820627))

(assert (=> b!880863 m!820627))

(assert (=> b!880863 m!820629))

(assert (=> b!880864 m!820627))

(assert (=> b!880864 m!820627))

(assert (=> b!880864 m!820629))

(assert (=> b!880723 d!108913))

(declare-fun d!108915 () Bool)

(assert (=> d!108915 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17606)))

(declare-fun lt!398384 () Unit!30040)

(declare-fun choose!39 (array!51308 (_ BitVec 32) (_ BitVec 32)) Unit!30040)

(assert (=> d!108915 (= lt!398384 (choose!39 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> d!108915 (bvslt (size!25115 _keys!868) #b01111111111111111111111111111111)))

(assert (=> d!108915 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053) lt!398384)))

(declare-fun bs!24709 () Bool)

(assert (= bs!24709 d!108915))

(assert (=> bs!24709 m!820619))

(declare-fun m!820795 () Bool)

(assert (=> bs!24709 m!820795))

(assert (=> b!880723 d!108915))

(declare-fun b!880866 () Bool)

(declare-fun e!490228 () Bool)

(assert (=> b!880866 (= e!490228 (contains!4255 Nil!17606 (select (arr!24674 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108917 () Bool)

(declare-fun res!598590 () Bool)

(declare-fun e!490227 () Bool)

(assert (=> d!108917 (=> res!598590 e!490227)))

(assert (=> d!108917 (= res!598590 (bvsge #b00000000000000000000000000000000 (size!25115 _keys!868)))))

(assert (=> d!108917 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17606) e!490227)))

(declare-fun bm!38904 () Bool)

(declare-fun call!38907 () Bool)

(declare-fun c!92802 () Bool)

(assert (=> bm!38904 (= call!38907 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92802 (Cons!17605 (select (arr!24674 _keys!868) #b00000000000000000000000000000000) Nil!17606) Nil!17606)))))

(declare-fun b!880867 () Bool)

(declare-fun e!490226 () Bool)

(assert (=> b!880867 (= e!490226 call!38907)))

(declare-fun b!880868 () Bool)

(declare-fun e!490225 () Bool)

(assert (=> b!880868 (= e!490225 e!490226)))

(assert (=> b!880868 (= c!92802 (validKeyInArray!0 (select (arr!24674 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!880869 () Bool)

(assert (=> b!880869 (= e!490227 e!490225)))

(declare-fun res!598592 () Bool)

(assert (=> b!880869 (=> (not res!598592) (not e!490225))))

(assert (=> b!880869 (= res!598592 (not e!490228))))

(declare-fun res!598591 () Bool)

(assert (=> b!880869 (=> (not res!598591) (not e!490228))))

(assert (=> b!880869 (= res!598591 (validKeyInArray!0 (select (arr!24674 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!880870 () Bool)

(assert (=> b!880870 (= e!490226 call!38907)))

(assert (= (and d!108917 (not res!598590)) b!880869))

(assert (= (and b!880869 res!598591) b!880866))

(assert (= (and b!880869 res!598592) b!880868))

(assert (= (and b!880868 c!92802) b!880867))

(assert (= (and b!880868 (not c!92802)) b!880870))

(assert (= (or b!880867 b!880870) bm!38904))

(assert (=> b!880866 m!820781))

(assert (=> b!880866 m!820781))

(declare-fun m!820797 () Bool)

(assert (=> b!880866 m!820797))

(assert (=> bm!38904 m!820781))

(declare-fun m!820799 () Bool)

(assert (=> bm!38904 m!820799))

(assert (=> b!880868 m!820781))

(assert (=> b!880868 m!820781))

(assert (=> b!880868 m!820789))

(assert (=> b!880869 m!820781))

(assert (=> b!880869 m!820781))

(assert (=> b!880869 m!820789))

(assert (=> b!880722 d!108917))

(declare-fun d!108919 () Bool)

(assert (=> d!108919 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!880724 d!108919))

(declare-fun d!108921 () Bool)

(assert (=> d!108921 (= (array_inv!19420 _keys!868) (bvsge (size!25115 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74736 d!108921))

(declare-fun d!108923 () Bool)

(assert (=> d!108923 (= (array_inv!19421 _values!688) (bvsge (size!25116 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74736 d!108923))

(declare-fun d!108925 () Bool)

(declare-fun e!490229 () Bool)

(assert (=> d!108925 e!490229))

(declare-fun res!598593 () Bool)

(assert (=> d!108925 (=> (not res!598593) (not e!490229))))

(declare-fun lt!398388 () ListLongMap!10521)

(assert (=> d!108925 (= res!598593 (contains!4253 lt!398388 (_1!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!398387 () List!17608)

(assert (=> d!108925 (= lt!398388 (ListLongMap!10522 lt!398387))))

(declare-fun lt!398385 () Unit!30040)

(declare-fun lt!398386 () Unit!30040)

(assert (=> d!108925 (= lt!398385 lt!398386)))

(assert (=> d!108925 (= (getValueByKey!421 lt!398387 (_1!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!426 (_2!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108925 (= lt!398386 (lemmaContainsTupThenGetReturnValue!237 lt!398387 (_1!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108925 (= lt!398387 (insertStrictlySorted!275 (toList!5276 lt!398299) (_1!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108925 (= (+!2482 lt!398299 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!398388)))

(declare-fun b!880871 () Bool)

(declare-fun res!598594 () Bool)

(assert (=> b!880871 (=> (not res!598594) (not e!490229))))

(assert (=> b!880871 (= res!598594 (= (getValueByKey!421 (toList!5276 lt!398388) (_1!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!426 (_2!5879 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!880872 () Bool)

(assert (=> b!880872 (= e!490229 (contains!4254 (toList!5276 lt!398388) (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108925 res!598593) b!880871))

(assert (= (and b!880871 res!598594) b!880872))

(declare-fun m!820801 () Bool)

(assert (=> d!108925 m!820801))

(declare-fun m!820803 () Bool)

(assert (=> d!108925 m!820803))

(declare-fun m!820805 () Bool)

(assert (=> d!108925 m!820805))

(declare-fun m!820807 () Bool)

(assert (=> d!108925 m!820807))

(declare-fun m!820809 () Bool)

(assert (=> b!880871 m!820809))

(declare-fun m!820811 () Bool)

(assert (=> b!880872 m!820811))

(assert (=> b!880719 d!108925))

(declare-fun d!108927 () Bool)

(declare-fun c!92805 () Bool)

(assert (=> d!108927 (= c!92805 ((_ is ValueCellFull!8361) (select (arr!24675 _values!688) from!1053)))))

(declare-fun e!490232 () V!28515)

(assert (=> d!108927 (= (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!490232)))

(declare-fun b!880877 () Bool)

(declare-fun get!12994 (ValueCell!8361 V!28515) V!28515)

(assert (=> b!880877 (= e!490232 (get!12994 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!880878 () Bool)

(declare-fun get!12995 (ValueCell!8361 V!28515) V!28515)

(assert (=> b!880878 (= e!490232 (get!12995 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108927 c!92805) b!880877))

(assert (= (and d!108927 (not c!92805)) b!880878))

(assert (=> b!880877 m!820657))

(assert (=> b!880877 m!820659))

(declare-fun m!820813 () Bool)

(assert (=> b!880877 m!820813))

(assert (=> b!880878 m!820657))

(assert (=> b!880878 m!820659))

(declare-fun m!820815 () Bool)

(assert (=> b!880878 m!820815))

(assert (=> b!880719 d!108927))

(declare-fun b!880879 () Bool)

(declare-fun e!490233 () Bool)

(assert (=> b!880879 (= e!490233 (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053)))))

(assert (=> b!880879 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!880880 () Bool)

(declare-fun e!490238 () ListLongMap!10521)

(assert (=> b!880880 (= e!490238 (ListLongMap!10522 Nil!17605))))

(declare-fun e!490237 () Bool)

(declare-fun b!880881 () Bool)

(declare-fun lt!398390 () ListLongMap!10521)

(assert (=> b!880881 (= e!490237 (= lt!398390 (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!880882 () Bool)

(assert (=> b!880882 (= e!490237 (isEmpty!672 lt!398390))))

(declare-fun b!880883 () Bool)

(declare-fun e!490239 () ListLongMap!10521)

(declare-fun call!38908 () ListLongMap!10521)

(assert (=> b!880883 (= e!490239 call!38908)))

(declare-fun b!880884 () Bool)

(assert (=> b!880884 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25115 _keys!868)))))

(assert (=> b!880884 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25116 lt!398300)))))

(declare-fun e!490235 () Bool)

(assert (=> b!880884 (= e!490235 (= (apply!380 lt!398390 (select (arr!24674 _keys!868) from!1053)) (get!12993 (select (arr!24675 lt!398300) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38905 () Bool)

(assert (=> bm!38905 (= call!38908 (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108929 () Bool)

(declare-fun e!490236 () Bool)

(assert (=> d!108929 e!490236))

(declare-fun res!598595 () Bool)

(assert (=> d!108929 (=> (not res!598595) (not e!490236))))

(assert (=> d!108929 (= res!598595 (not (contains!4253 lt!398390 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108929 (= lt!398390 e!490238)))

(declare-fun c!92809 () Bool)

(assert (=> d!108929 (= c!92809 (bvsge from!1053 (size!25115 _keys!868)))))

(assert (=> d!108929 (validMask!0 mask!1196)))

(assert (=> d!108929 (= (getCurrentListMapNoExtraKeys!3236 _keys!868 lt!398300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!398390)))

(declare-fun b!880885 () Bool)

(assert (=> b!880885 (= e!490238 e!490239)))

(declare-fun c!92806 () Bool)

(assert (=> b!880885 (= c!92806 (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053)))))

(declare-fun b!880886 () Bool)

(declare-fun e!490234 () Bool)

(assert (=> b!880886 (= e!490234 e!490237)))

(declare-fun c!92808 () Bool)

(assert (=> b!880886 (= c!92808 (bvslt from!1053 (size!25115 _keys!868)))))

(declare-fun b!880887 () Bool)

(declare-fun res!598598 () Bool)

(assert (=> b!880887 (=> (not res!598598) (not e!490236))))

(assert (=> b!880887 (= res!598598 (not (contains!4253 lt!398390 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!880888 () Bool)

(declare-fun lt!398389 () Unit!30040)

(declare-fun lt!398393 () Unit!30040)

(assert (=> b!880888 (= lt!398389 lt!398393)))

(declare-fun lt!398395 () (_ BitVec 64))

(declare-fun lt!398392 () (_ BitVec 64))

(declare-fun lt!398394 () V!28515)

(declare-fun lt!398391 () ListLongMap!10521)

(assert (=> b!880888 (not (contains!4253 (+!2482 lt!398391 (tuple2!11739 lt!398392 lt!398394)) lt!398395))))

(assert (=> b!880888 (= lt!398393 (addStillNotContains!207 lt!398391 lt!398392 lt!398394 lt!398395))))

(assert (=> b!880888 (= lt!398395 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!880888 (= lt!398394 (get!12993 (select (arr!24675 lt!398300) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!880888 (= lt!398392 (select (arr!24674 _keys!868) from!1053))))

(assert (=> b!880888 (= lt!398391 call!38908)))

(assert (=> b!880888 (= e!490239 (+!2482 call!38908 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 lt!398300) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880889 () Bool)

(assert (=> b!880889 (= e!490236 e!490234)))

(declare-fun c!92807 () Bool)

(assert (=> b!880889 (= c!92807 e!490233)))

(declare-fun res!598597 () Bool)

(assert (=> b!880889 (=> (not res!598597) (not e!490233))))

(assert (=> b!880889 (= res!598597 (bvslt from!1053 (size!25115 _keys!868)))))

(declare-fun b!880890 () Bool)

(assert (=> b!880890 (= e!490234 e!490235)))

(assert (=> b!880890 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25115 _keys!868)))))

(declare-fun res!598596 () Bool)

(assert (=> b!880890 (= res!598596 (contains!4253 lt!398390 (select (arr!24674 _keys!868) from!1053)))))

(assert (=> b!880890 (=> (not res!598596) (not e!490235))))

(assert (= (and d!108929 c!92809) b!880880))

(assert (= (and d!108929 (not c!92809)) b!880885))

(assert (= (and b!880885 c!92806) b!880888))

(assert (= (and b!880885 (not c!92806)) b!880883))

(assert (= (or b!880888 b!880883) bm!38905))

(assert (= (and d!108929 res!598595) b!880887))

(assert (= (and b!880887 res!598598) b!880889))

(assert (= (and b!880889 res!598597) b!880879))

(assert (= (and b!880889 c!92807) b!880890))

(assert (= (and b!880889 (not c!92807)) b!880886))

(assert (= (and b!880890 res!598596) b!880884))

(assert (= (and b!880886 c!92808) b!880881))

(assert (= (and b!880886 (not c!92808)) b!880882))

(declare-fun b_lambda!12509 () Bool)

(assert (=> (not b_lambda!12509) (not b!880884)))

(assert (=> b!880884 t!24774))

(declare-fun b_and!25367 () Bool)

(assert (= b_and!25365 (and (=> t!24774 result!9663) b_and!25367)))

(declare-fun b_lambda!12511 () Bool)

(assert (=> (not b_lambda!12511) (not b!880888)))

(assert (=> b!880888 t!24774))

(declare-fun b_and!25369 () Bool)

(assert (= b_and!25367 (and (=> t!24774 result!9663) b_and!25369)))

(declare-fun m!820817 () Bool)

(assert (=> bm!38905 m!820817))

(assert (=> b!880885 m!820627))

(assert (=> b!880885 m!820627))

(assert (=> b!880885 m!820629))

(declare-fun m!820819 () Bool)

(assert (=> b!880887 m!820819))

(assert (=> b!880881 m!820817))

(assert (=> b!880879 m!820627))

(assert (=> b!880879 m!820627))

(assert (=> b!880879 m!820629))

(declare-fun m!820821 () Bool)

(assert (=> d!108929 m!820821))

(assert (=> d!108929 m!820623))

(declare-fun m!820823 () Bool)

(assert (=> b!880882 m!820823))

(assert (=> b!880884 m!820627))

(declare-fun m!820825 () Bool)

(assert (=> b!880884 m!820825))

(assert (=> b!880884 m!820659))

(declare-fun m!820827 () Bool)

(assert (=> b!880884 m!820827))

(assert (=> b!880884 m!820627))

(declare-fun m!820829 () Bool)

(assert (=> b!880884 m!820829))

(assert (=> b!880884 m!820659))

(assert (=> b!880884 m!820825))

(assert (=> b!880888 m!820627))

(assert (=> b!880888 m!820825))

(assert (=> b!880888 m!820659))

(assert (=> b!880888 m!820827))

(declare-fun m!820831 () Bool)

(assert (=> b!880888 m!820831))

(declare-fun m!820833 () Bool)

(assert (=> b!880888 m!820833))

(declare-fun m!820835 () Bool)

(assert (=> b!880888 m!820835))

(assert (=> b!880888 m!820833))

(declare-fun m!820837 () Bool)

(assert (=> b!880888 m!820837))

(assert (=> b!880888 m!820659))

(assert (=> b!880888 m!820825))

(assert (=> b!880890 m!820627))

(assert (=> b!880890 m!820627))

(declare-fun m!820839 () Bool)

(assert (=> b!880890 m!820839))

(assert (=> b!880728 d!108929))

(declare-fun b!880891 () Bool)

(declare-fun e!490240 () Bool)

(assert (=> b!880891 (= e!490240 (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053)))))

(assert (=> b!880891 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!880892 () Bool)

(declare-fun e!490245 () ListLongMap!10521)

(assert (=> b!880892 (= e!490245 (ListLongMap!10522 Nil!17605))))

(declare-fun e!490244 () Bool)

(declare-fun lt!398397 () ListLongMap!10521)

(declare-fun b!880893 () Bool)

(assert (=> b!880893 (= e!490244 (= lt!398397 (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!880894 () Bool)

(assert (=> b!880894 (= e!490244 (isEmpty!672 lt!398397))))

(declare-fun b!880895 () Bool)

(declare-fun e!490246 () ListLongMap!10521)

(declare-fun call!38909 () ListLongMap!10521)

(assert (=> b!880895 (= e!490246 call!38909)))

(declare-fun b!880896 () Bool)

(assert (=> b!880896 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25115 _keys!868)))))

(assert (=> b!880896 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25116 _values!688)))))

(declare-fun e!490242 () Bool)

(assert (=> b!880896 (= e!490242 (= (apply!380 lt!398397 (select (arr!24674 _keys!868) from!1053)) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38906 () Bool)

(assert (=> bm!38906 (= call!38909 (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108931 () Bool)

(declare-fun e!490243 () Bool)

(assert (=> d!108931 e!490243))

(declare-fun res!598599 () Bool)

(assert (=> d!108931 (=> (not res!598599) (not e!490243))))

(assert (=> d!108931 (= res!598599 (not (contains!4253 lt!398397 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108931 (= lt!398397 e!490245)))

(declare-fun c!92813 () Bool)

(assert (=> d!108931 (= c!92813 (bvsge from!1053 (size!25115 _keys!868)))))

(assert (=> d!108931 (validMask!0 mask!1196)))

(assert (=> d!108931 (= (getCurrentListMapNoExtraKeys!3236 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!398397)))

(declare-fun b!880897 () Bool)

(assert (=> b!880897 (= e!490245 e!490246)))

(declare-fun c!92810 () Bool)

(assert (=> b!880897 (= c!92810 (validKeyInArray!0 (select (arr!24674 _keys!868) from!1053)))))

(declare-fun b!880898 () Bool)

(declare-fun e!490241 () Bool)

(assert (=> b!880898 (= e!490241 e!490244)))

(declare-fun c!92812 () Bool)

(assert (=> b!880898 (= c!92812 (bvslt from!1053 (size!25115 _keys!868)))))

(declare-fun b!880899 () Bool)

(declare-fun res!598602 () Bool)

(assert (=> b!880899 (=> (not res!598602) (not e!490243))))

(assert (=> b!880899 (= res!598602 (not (contains!4253 lt!398397 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!880900 () Bool)

(declare-fun lt!398396 () Unit!30040)

(declare-fun lt!398400 () Unit!30040)

(assert (=> b!880900 (= lt!398396 lt!398400)))

(declare-fun lt!398401 () V!28515)

(declare-fun lt!398398 () ListLongMap!10521)

(declare-fun lt!398402 () (_ BitVec 64))

(declare-fun lt!398399 () (_ BitVec 64))

(assert (=> b!880900 (not (contains!4253 (+!2482 lt!398398 (tuple2!11739 lt!398399 lt!398401)) lt!398402))))

(assert (=> b!880900 (= lt!398400 (addStillNotContains!207 lt!398398 lt!398399 lt!398401 lt!398402))))

(assert (=> b!880900 (= lt!398402 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!880900 (= lt!398401 (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!880900 (= lt!398399 (select (arr!24674 _keys!868) from!1053))))

(assert (=> b!880900 (= lt!398398 call!38909)))

(assert (=> b!880900 (= e!490246 (+!2482 call!38909 (tuple2!11739 (select (arr!24674 _keys!868) from!1053) (get!12993 (select (arr!24675 _values!688) from!1053) (dynLambda!1246 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880901 () Bool)

(assert (=> b!880901 (= e!490243 e!490241)))

(declare-fun c!92811 () Bool)

(assert (=> b!880901 (= c!92811 e!490240)))

(declare-fun res!598601 () Bool)

(assert (=> b!880901 (=> (not res!598601) (not e!490240))))

(assert (=> b!880901 (= res!598601 (bvslt from!1053 (size!25115 _keys!868)))))

(declare-fun b!880902 () Bool)

(assert (=> b!880902 (= e!490241 e!490242)))

(assert (=> b!880902 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25115 _keys!868)))))

(declare-fun res!598600 () Bool)

(assert (=> b!880902 (= res!598600 (contains!4253 lt!398397 (select (arr!24674 _keys!868) from!1053)))))

(assert (=> b!880902 (=> (not res!598600) (not e!490242))))

(assert (= (and d!108931 c!92813) b!880892))

(assert (= (and d!108931 (not c!92813)) b!880897))

(assert (= (and b!880897 c!92810) b!880900))

(assert (= (and b!880897 (not c!92810)) b!880895))

(assert (= (or b!880900 b!880895) bm!38906))

(assert (= (and d!108931 res!598599) b!880899))

(assert (= (and b!880899 res!598602) b!880901))

(assert (= (and b!880901 res!598601) b!880891))

(assert (= (and b!880901 c!92811) b!880902))

(assert (= (and b!880901 (not c!92811)) b!880898))

(assert (= (and b!880902 res!598600) b!880896))

(assert (= (and b!880898 c!92812) b!880893))

(assert (= (and b!880898 (not c!92812)) b!880894))

(declare-fun b_lambda!12513 () Bool)

(assert (=> (not b_lambda!12513) (not b!880896)))

(assert (=> b!880896 t!24774))

(declare-fun b_and!25371 () Bool)

(assert (= b_and!25369 (and (=> t!24774 result!9663) b_and!25371)))

(declare-fun b_lambda!12515 () Bool)

(assert (=> (not b_lambda!12515) (not b!880900)))

(assert (=> b!880900 t!24774))

(declare-fun b_and!25373 () Bool)

(assert (= b_and!25371 (and (=> t!24774 result!9663) b_and!25373)))

(declare-fun m!820841 () Bool)

(assert (=> bm!38906 m!820841))

(assert (=> b!880897 m!820627))

(assert (=> b!880897 m!820627))

(assert (=> b!880897 m!820629))

(declare-fun m!820843 () Bool)

(assert (=> b!880899 m!820843))

(assert (=> b!880893 m!820841))

(assert (=> b!880891 m!820627))

(assert (=> b!880891 m!820627))

(assert (=> b!880891 m!820629))

(declare-fun m!820845 () Bool)

(assert (=> d!108931 m!820845))

(assert (=> d!108931 m!820623))

(declare-fun m!820847 () Bool)

(assert (=> b!880894 m!820847))

(assert (=> b!880896 m!820627))

(assert (=> b!880896 m!820657))

(assert (=> b!880896 m!820659))

(assert (=> b!880896 m!820661))

(assert (=> b!880896 m!820627))

(declare-fun m!820849 () Bool)

(assert (=> b!880896 m!820849))

(assert (=> b!880896 m!820659))

(assert (=> b!880896 m!820657))

(assert (=> b!880900 m!820627))

(assert (=> b!880900 m!820657))

(assert (=> b!880900 m!820659))

(assert (=> b!880900 m!820661))

(declare-fun m!820851 () Bool)

(assert (=> b!880900 m!820851))

(declare-fun m!820853 () Bool)

(assert (=> b!880900 m!820853))

(declare-fun m!820855 () Bool)

(assert (=> b!880900 m!820855))

(assert (=> b!880900 m!820853))

(declare-fun m!820857 () Bool)

(assert (=> b!880900 m!820857))

(assert (=> b!880900 m!820659))

(assert (=> b!880900 m!820657))

(assert (=> b!880902 m!820627))

(assert (=> b!880902 m!820627))

(declare-fun m!820859 () Bool)

(assert (=> b!880902 m!820859))

(assert (=> b!880728 d!108931))

(declare-fun b!880910 () Bool)

(declare-fun e!490252 () Bool)

(assert (=> b!880910 (= e!490252 tp_is_empty!17601)))

(declare-fun mapNonEmpty!28029 () Bool)

(declare-fun mapRes!28029 () Bool)

(declare-fun tp!53769 () Bool)

(declare-fun e!490251 () Bool)

(assert (=> mapNonEmpty!28029 (= mapRes!28029 (and tp!53769 e!490251))))

(declare-fun mapRest!28029 () (Array (_ BitVec 32) ValueCell!8361))

(declare-fun mapValue!28029 () ValueCell!8361)

(declare-fun mapKey!28029 () (_ BitVec 32))

(assert (=> mapNonEmpty!28029 (= mapRest!28023 (store mapRest!28029 mapKey!28029 mapValue!28029))))

(declare-fun b!880909 () Bool)

(assert (=> b!880909 (= e!490251 tp_is_empty!17601)))

(declare-fun mapIsEmpty!28029 () Bool)

(assert (=> mapIsEmpty!28029 mapRes!28029))

(declare-fun condMapEmpty!28029 () Bool)

(declare-fun mapDefault!28029 () ValueCell!8361)

(assert (=> mapNonEmpty!28023 (= condMapEmpty!28029 (= mapRest!28023 ((as const (Array (_ BitVec 32) ValueCell!8361)) mapDefault!28029)))))

(assert (=> mapNonEmpty!28023 (= tp!53759 (and e!490252 mapRes!28029))))

(assert (= (and mapNonEmpty!28023 condMapEmpty!28029) mapIsEmpty!28029))

(assert (= (and mapNonEmpty!28023 (not condMapEmpty!28029)) mapNonEmpty!28029))

(assert (= (and mapNonEmpty!28029 ((_ is ValueCellFull!8361) mapValue!28029)) b!880909))

(assert (= (and mapNonEmpty!28023 ((_ is ValueCellFull!8361) mapDefault!28029)) b!880910))

(declare-fun m!820861 () Bool)

(assert (=> mapNonEmpty!28029 m!820861))

(declare-fun b_lambda!12517 () Bool)

(assert (= b_lambda!12503 (or (and start!74736 b_free!15357) b_lambda!12517)))

(declare-fun b_lambda!12519 () Bool)

(assert (= b_lambda!12515 (or (and start!74736 b_free!15357) b_lambda!12519)))

(declare-fun b_lambda!12521 () Bool)

(assert (= b_lambda!12509 (or (and start!74736 b_free!15357) b_lambda!12521)))

(declare-fun b_lambda!12523 () Bool)

(assert (= b_lambda!12505 (or (and start!74736 b_free!15357) b_lambda!12523)))

(declare-fun b_lambda!12525 () Bool)

(assert (= b_lambda!12507 (or (and start!74736 b_free!15357) b_lambda!12525)))

(declare-fun b_lambda!12527 () Bool)

(assert (= b_lambda!12501 (or (and start!74736 b_free!15357) b_lambda!12527)))

(declare-fun b_lambda!12529 () Bool)

(assert (= b_lambda!12513 (or (and start!74736 b_free!15357) b_lambda!12529)))

(declare-fun b_lambda!12531 () Bool)

(assert (= b_lambda!12511 (or (and start!74736 b_free!15357) b_lambda!12531)))

(check-sat (not bm!38897) (not b!880897) (not b!880884) (not d!108905) (not bm!38895) (not b!880832) (not b!880872) (not bm!38904) (not b_lambda!12531) (not b!880829) (not bm!38896) (not d!108907) (not b_lambda!12517) (not b!880863) (not b_lambda!12499) (not b!880894) (not d!108915) (not bm!38903) (not b!880806) (not b!880861) (not b!880868) (not d!108899) (not b!880838) (not b!880827) (not b!880887) (not b!880890) (not b!880800) (not b_lambda!12521) (not b!880877) (not b_lambda!12527) (not b!880808) (not b!880837) (not bm!38900) (not b!880878) (not b!880850) (not b!880871) (not b!880900) (not b!880821) (not b!880802) (not bm!38906) (not bm!38905) (not b!880803) (not b!880893) (not b!880824) (not b!880891) (not b!880869) (not d!108931) (not b_next!15357) (not b_lambda!12519) (not b_lambda!12525) (not b!880879) (not b!880848) (not b!880820) (not b!880823) (not b!880809) tp_is_empty!17601 (not b!880902) (not d!108925) (not b!880882) (not b!880899) (not d!108929) (not mapNonEmpty!28029) (not b!880805) (not b!880881) (not b!880811) (not b!880866) (not b!880864) (not b!880826) (not b!880885) (not b!880888) (not b!880830) (not b_lambda!12523) (not b!880896) (not d!108903) (not b_lambda!12529) (not bm!38890) b_and!25373)
(check-sat b_and!25373 (not b_next!15357))
