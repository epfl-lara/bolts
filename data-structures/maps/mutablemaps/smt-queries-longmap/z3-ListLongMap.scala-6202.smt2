; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79350 () Bool)

(assert start!79350)

(declare-fun b_free!17535 () Bool)

(declare-fun b_next!17535 () Bool)

(assert (=> start!79350 (= b_free!17535 (not b_next!17535))))

(declare-fun tp!61046 () Bool)

(declare-fun b_and!28639 () Bool)

(assert (=> start!79350 (= tp!61046 b_and!28639)))

(declare-fun mapIsEmpty!31821 () Bool)

(declare-fun mapRes!31821 () Bool)

(assert (=> mapIsEmpty!31821 mapRes!31821))

(declare-fun b!931633 () Bool)

(declare-fun res!627569 () Bool)

(declare-fun e!523223 () Bool)

(assert (=> b!931633 (=> (not res!627569) (not e!523223))))

(declare-datatypes ((array!56054 0))(
  ( (array!56055 (arr!26968 (Array (_ BitVec 32) (_ BitVec 64))) (size!27428 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56054)

(declare-datatypes ((List!19114 0))(
  ( (Nil!19111) (Cons!19110 (h!20256 (_ BitVec 64)) (t!27201 List!19114)) )
))
(declare-fun arrayNoDuplicates!0 (array!56054 (_ BitVec 32) List!19114) Bool)

(assert (=> b!931633 (= res!627569 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19111))))

(declare-fun b!931634 () Bool)

(declare-fun res!627572 () Bool)

(declare-fun e!523221 () Bool)

(assert (=> b!931634 (=> (not res!627572) (not e!523221))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931634 (= res!627572 (validKeyInArray!0 k0!1099))))

(declare-fun b!931635 () Bool)

(declare-fun res!627571 () Bool)

(assert (=> b!931635 (=> (not res!627571) (not e!523223))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31689 0))(
  ( (V!31690 (val!10072 Int)) )
))
(declare-datatypes ((ValueCell!9540 0))(
  ( (ValueCellFull!9540 (v!12590 V!31689)) (EmptyCell!9540) )
))
(declare-datatypes ((array!56056 0))(
  ( (array!56057 (arr!26969 (Array (_ BitVec 32) ValueCell!9540)) (size!27429 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56056)

(assert (=> b!931635 (= res!627571 (and (= (size!27429 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27428 _keys!1487) (size!27429 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!931636 () Bool)

(declare-fun e!523218 () Bool)

(assert (=> b!931636 (= e!523221 e!523218)))

(declare-fun res!627563 () Bool)

(assert (=> b!931636 (=> (not res!627563) (not e!523218))))

(declare-fun lt!419470 () (_ BitVec 64))

(assert (=> b!931636 (= res!627563 (validKeyInArray!0 lt!419470))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931636 (= lt!419470 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931637 () Bool)

(assert (=> b!931637 (= e!523218 (not (bvslt (size!27428 _keys!1487) #b01111111111111111111111111111111)))))

(declare-datatypes ((tuple2!13300 0))(
  ( (tuple2!13301 (_1!6660 (_ BitVec 64)) (_2!6660 V!31689)) )
))
(declare-datatypes ((List!19115 0))(
  ( (Nil!19112) (Cons!19111 (h!20257 tuple2!13300) (t!27202 List!19115)) )
))
(declare-datatypes ((ListLongMap!12011 0))(
  ( (ListLongMap!12012 (toList!6021 List!19115)) )
))
(declare-fun lt!419467 () ListLongMap!12011)

(declare-fun lt!419469 () tuple2!13300)

(declare-fun contains!5021 (ListLongMap!12011 (_ BitVec 64)) Bool)

(declare-fun +!2730 (ListLongMap!12011 tuple2!13300) ListLongMap!12011)

(assert (=> b!931637 (contains!5021 (+!2730 lt!419467 lt!419469) k0!1099)))

(declare-fun lt!419468 () V!31689)

(declare-datatypes ((Unit!31443 0))(
  ( (Unit!31444) )
))
(declare-fun lt!419471 () Unit!31443)

(declare-fun addStillContains!486 (ListLongMap!12011 (_ BitVec 64) V!31689 (_ BitVec 64)) Unit!31443)

(assert (=> b!931637 (= lt!419471 (addStillContains!486 lt!419467 lt!419470 lt!419468 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31689)

(declare-fun minValue!1173 () V!31689)

(declare-fun getCurrentListMap!3216 (array!56054 array!56056 (_ BitVec 32) (_ BitVec 32) V!31689 V!31689 (_ BitVec 32) Int) ListLongMap!12011)

(assert (=> b!931637 (= (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2730 (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419469))))

(assert (=> b!931637 (= lt!419469 (tuple2!13301 lt!419470 lt!419468))))

(declare-fun get!14187 (ValueCell!9540 V!31689) V!31689)

(declare-fun dynLambda!1569 (Int (_ BitVec 64)) V!31689)

(assert (=> b!931637 (= lt!419468 (get!14187 (select (arr!26969 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419472 () Unit!31443)

(declare-fun lemmaListMapRecursiveValidKeyArray!165 (array!56054 array!56056 (_ BitVec 32) (_ BitVec 32) V!31689 V!31689 (_ BitVec 32) Int) Unit!31443)

(assert (=> b!931637 (= lt!419472 (lemmaListMapRecursiveValidKeyArray!165 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!627564 () Bool)

(assert (=> start!79350 (=> (not res!627564) (not e!523223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79350 (= res!627564 (validMask!0 mask!1881))))

(assert (=> start!79350 e!523223))

(assert (=> start!79350 true))

(declare-fun tp_is_empty!20043 () Bool)

(assert (=> start!79350 tp_is_empty!20043))

(declare-fun e!523224 () Bool)

(declare-fun array_inv!20962 (array!56056) Bool)

(assert (=> start!79350 (and (array_inv!20962 _values!1231) e!523224)))

(assert (=> start!79350 tp!61046))

(declare-fun array_inv!20963 (array!56054) Bool)

(assert (=> start!79350 (array_inv!20963 _keys!1487)))

(declare-fun b!931638 () Bool)

(declare-fun e!523222 () Bool)

(assert (=> b!931638 (= e!523224 (and e!523222 mapRes!31821))))

(declare-fun condMapEmpty!31821 () Bool)

(declare-fun mapDefault!31821 () ValueCell!9540)

(assert (=> b!931638 (= condMapEmpty!31821 (= (arr!26969 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9540)) mapDefault!31821)))))

(declare-fun b!931639 () Bool)

(declare-fun res!627568 () Bool)

(assert (=> b!931639 (=> (not res!627568) (not e!523221))))

(assert (=> b!931639 (= res!627568 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931640 () Bool)

(declare-fun e!523220 () Bool)

(assert (=> b!931640 (= e!523220 tp_is_empty!20043)))

(declare-fun b!931641 () Bool)

(declare-fun res!627566 () Bool)

(assert (=> b!931641 (=> (not res!627566) (not e!523223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56054 (_ BitVec 32)) Bool)

(assert (=> b!931641 (= res!627566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931642 () Bool)

(assert (=> b!931642 (= e!523223 e!523221)))

(declare-fun res!627567 () Bool)

(assert (=> b!931642 (=> (not res!627567) (not e!523221))))

(assert (=> b!931642 (= res!627567 (contains!5021 lt!419467 k0!1099))))

(assert (=> b!931642 (= lt!419467 (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!931643 () Bool)

(declare-fun res!627570 () Bool)

(assert (=> b!931643 (=> (not res!627570) (not e!523223))))

(assert (=> b!931643 (= res!627570 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27428 _keys!1487))))))

(declare-fun mapNonEmpty!31821 () Bool)

(declare-fun tp!61047 () Bool)

(assert (=> mapNonEmpty!31821 (= mapRes!31821 (and tp!61047 e!523220))))

(declare-fun mapKey!31821 () (_ BitVec 32))

(declare-fun mapRest!31821 () (Array (_ BitVec 32) ValueCell!9540))

(declare-fun mapValue!31821 () ValueCell!9540)

(assert (=> mapNonEmpty!31821 (= (arr!26969 _values!1231) (store mapRest!31821 mapKey!31821 mapValue!31821))))

(declare-fun b!931644 () Bool)

(assert (=> b!931644 (= e!523222 tp_is_empty!20043)))

(declare-fun b!931645 () Bool)

(declare-fun res!627565 () Bool)

(assert (=> b!931645 (=> (not res!627565) (not e!523221))))

(declare-fun v!791 () V!31689)

(declare-fun apply!806 (ListLongMap!12011 (_ BitVec 64)) V!31689)

(assert (=> b!931645 (= res!627565 (= (apply!806 lt!419467 k0!1099) v!791))))

(assert (= (and start!79350 res!627564) b!931635))

(assert (= (and b!931635 res!627571) b!931641))

(assert (= (and b!931641 res!627566) b!931633))

(assert (= (and b!931633 res!627569) b!931643))

(assert (= (and b!931643 res!627570) b!931642))

(assert (= (and b!931642 res!627567) b!931645))

(assert (= (and b!931645 res!627565) b!931639))

(assert (= (and b!931639 res!627568) b!931634))

(assert (= (and b!931634 res!627572) b!931636))

(assert (= (and b!931636 res!627563) b!931637))

(assert (= (and b!931638 condMapEmpty!31821) mapIsEmpty!31821))

(assert (= (and b!931638 (not condMapEmpty!31821)) mapNonEmpty!31821))

(get-info :version)

(assert (= (and mapNonEmpty!31821 ((_ is ValueCellFull!9540) mapValue!31821)) b!931640))

(assert (= (and b!931638 ((_ is ValueCellFull!9540) mapDefault!31821)) b!931644))

(assert (= start!79350 b!931638))

(declare-fun b_lambda!13881 () Bool)

(assert (=> (not b_lambda!13881) (not b!931637)))

(declare-fun t!27200 () Bool)

(declare-fun tb!5937 () Bool)

(assert (=> (and start!79350 (= defaultEntry!1235 defaultEntry!1235) t!27200) tb!5937))

(declare-fun result!11689 () Bool)

(assert (=> tb!5937 (= result!11689 tp_is_empty!20043)))

(assert (=> b!931637 t!27200))

(declare-fun b_and!28641 () Bool)

(assert (= b_and!28639 (and (=> t!27200 result!11689) b_and!28641)))

(declare-fun m!865605 () Bool)

(assert (=> b!931633 m!865605))

(declare-fun m!865607 () Bool)

(assert (=> b!931637 m!865607))

(declare-fun m!865609 () Bool)

(assert (=> b!931637 m!865609))

(declare-fun m!865611 () Bool)

(assert (=> b!931637 m!865611))

(declare-fun m!865613 () Bool)

(assert (=> b!931637 m!865613))

(declare-fun m!865615 () Bool)

(assert (=> b!931637 m!865615))

(declare-fun m!865617 () Bool)

(assert (=> b!931637 m!865617))

(assert (=> b!931637 m!865607))

(declare-fun m!865619 () Bool)

(assert (=> b!931637 m!865619))

(assert (=> b!931637 m!865615))

(declare-fun m!865621 () Bool)

(assert (=> b!931637 m!865621))

(declare-fun m!865623 () Bool)

(assert (=> b!931637 m!865623))

(assert (=> b!931637 m!865609))

(assert (=> b!931637 m!865611))

(declare-fun m!865625 () Bool)

(assert (=> b!931637 m!865625))

(declare-fun m!865627 () Bool)

(assert (=> mapNonEmpty!31821 m!865627))

(declare-fun m!865629 () Bool)

(assert (=> start!79350 m!865629))

(declare-fun m!865631 () Bool)

(assert (=> start!79350 m!865631))

(declare-fun m!865633 () Bool)

(assert (=> start!79350 m!865633))

(declare-fun m!865635 () Bool)

(assert (=> b!931634 m!865635))

(declare-fun m!865637 () Bool)

(assert (=> b!931636 m!865637))

(declare-fun m!865639 () Bool)

(assert (=> b!931636 m!865639))

(declare-fun m!865641 () Bool)

(assert (=> b!931642 m!865641))

(declare-fun m!865643 () Bool)

(assert (=> b!931642 m!865643))

(declare-fun m!865645 () Bool)

(assert (=> b!931641 m!865645))

(declare-fun m!865647 () Bool)

(assert (=> b!931645 m!865647))

(check-sat (not b!931634) (not b!931641) (not b!931633) tp_is_empty!20043 (not b!931637) (not b_next!17535) (not start!79350) (not b!931645) b_and!28641 (not b!931642) (not mapNonEmpty!31821) (not b_lambda!13881) (not b!931636))
(check-sat b_and!28641 (not b_next!17535))
(get-model)

(declare-fun b_lambda!13885 () Bool)

(assert (= b_lambda!13881 (or (and start!79350 b_free!17535) b_lambda!13885)))

(check-sat (not b!931634) (not b!931641) (not b!931633) (not b!931636) (not b_lambda!13885) tp_is_empty!20043 (not b!931637) (not b_next!17535) (not start!79350) (not b!931645) b_and!28641 (not b!931642) (not mapNonEmpty!31821))
(check-sat b_and!28641 (not b_next!17535))
(get-model)

(declare-fun call!40564 () ListLongMap!12011)

(declare-fun bm!40561 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3314 (array!56054 array!56056 (_ BitVec 32) (_ BitVec 32) V!31689 V!31689 (_ BitVec 32) Int) ListLongMap!12011)

(assert (=> bm!40561 (= call!40564 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun bm!40562 () Bool)

(declare-fun call!40565 () Bool)

(declare-fun lt!419552 () ListLongMap!12011)

(assert (=> bm!40562 (= call!40565 (contains!5021 lt!419552 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!931731 () Bool)

(declare-fun e!523280 () ListLongMap!12011)

(declare-fun call!40568 () ListLongMap!12011)

(assert (=> b!931731 (= e!523280 call!40568)))

(declare-fun e!523276 () Bool)

(declare-fun b!931732 () Bool)

(assert (=> b!931732 (= e!523276 (= (apply!806 lt!419552 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14187 (select (arr!26969 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!931732 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27429 _values!1231)))))

(assert (=> b!931732 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27428 _keys!1487)))))

(declare-fun b!931733 () Bool)

(declare-fun e!523275 () Bool)

(assert (=> b!931733 (= e!523275 (not call!40565))))

(declare-fun b!931734 () Bool)

(declare-fun e!523277 () Bool)

(assert (=> b!931734 (= e!523277 (validKeyInArray!0 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!931735 () Bool)

(declare-fun e!523279 () Bool)

(assert (=> b!931735 (= e!523279 e!523275)))

(declare-fun c!96963 () Bool)

(assert (=> b!931735 (= c!96963 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!931736 () Bool)

(declare-fun e!523283 () Unit!31443)

(declare-fun lt!419549 () Unit!31443)

(assert (=> b!931736 (= e!523283 lt!419549)))

(declare-fun lt!419553 () ListLongMap!12011)

(assert (=> b!931736 (= lt!419553 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!419547 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419547 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419546 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419546 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!419556 () Unit!31443)

(assert (=> b!931736 (= lt!419556 (addStillContains!486 lt!419553 lt!419547 zeroValue!1173 lt!419546))))

(assert (=> b!931736 (contains!5021 (+!2730 lt!419553 (tuple2!13301 lt!419547 zeroValue!1173)) lt!419546)))

(declare-fun lt!419545 () Unit!31443)

(assert (=> b!931736 (= lt!419545 lt!419556)))

(declare-fun lt!419539 () ListLongMap!12011)

(assert (=> b!931736 (= lt!419539 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!419555 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419555 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419540 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419540 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!419544 () Unit!31443)

(declare-fun addApplyDifferent!409 (ListLongMap!12011 (_ BitVec 64) V!31689 (_ BitVec 64)) Unit!31443)

(assert (=> b!931736 (= lt!419544 (addApplyDifferent!409 lt!419539 lt!419555 minValue!1173 lt!419540))))

(assert (=> b!931736 (= (apply!806 (+!2730 lt!419539 (tuple2!13301 lt!419555 minValue!1173)) lt!419540) (apply!806 lt!419539 lt!419540))))

(declare-fun lt!419551 () Unit!31443)

(assert (=> b!931736 (= lt!419551 lt!419544)))

(declare-fun lt!419548 () ListLongMap!12011)

(assert (=> b!931736 (= lt!419548 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!419536 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419536 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419535 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419535 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!419554 () Unit!31443)

(assert (=> b!931736 (= lt!419554 (addApplyDifferent!409 lt!419548 lt!419536 zeroValue!1173 lt!419535))))

(assert (=> b!931736 (= (apply!806 (+!2730 lt!419548 (tuple2!13301 lt!419536 zeroValue!1173)) lt!419535) (apply!806 lt!419548 lt!419535))))

(declare-fun lt!419550 () Unit!31443)

(assert (=> b!931736 (= lt!419550 lt!419554)))

(declare-fun lt!419537 () ListLongMap!12011)

(assert (=> b!931736 (= lt!419537 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!419541 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419541 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419543 () (_ BitVec 64))

(assert (=> b!931736 (= lt!419543 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!931736 (= lt!419549 (addApplyDifferent!409 lt!419537 lt!419541 minValue!1173 lt!419543))))

(assert (=> b!931736 (= (apply!806 (+!2730 lt!419537 (tuple2!13301 lt!419541 minValue!1173)) lt!419543) (apply!806 lt!419537 lt!419543))))

(declare-fun bm!40563 () Bool)

(declare-fun call!40566 () Bool)

(assert (=> bm!40563 (= call!40566 (contains!5021 lt!419552 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!931737 () Bool)

(declare-fun e!523272 () Bool)

(declare-fun e!523274 () Bool)

(assert (=> b!931737 (= e!523272 e!523274)))

(declare-fun res!627623 () Bool)

(assert (=> b!931737 (= res!627623 call!40566)))

(assert (=> b!931737 (=> (not res!627623) (not e!523274))))

(declare-fun b!931738 () Bool)

(declare-fun res!627624 () Bool)

(assert (=> b!931738 (=> (not res!627624) (not e!523279))))

(declare-fun e!523273 () Bool)

(assert (=> b!931738 (= res!627624 e!523273)))

(declare-fun res!627629 () Bool)

(assert (=> b!931738 (=> res!627629 e!523273)))

(assert (=> b!931738 (= res!627629 (not e!523277))))

(declare-fun res!627628 () Bool)

(assert (=> b!931738 (=> (not res!627628) (not e!523277))))

(assert (=> b!931738 (= res!627628 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27428 _keys!1487)))))

(declare-fun b!931739 () Bool)

(declare-fun call!40569 () ListLongMap!12011)

(assert (=> b!931739 (= e!523280 call!40569)))

(declare-fun call!40570 () ListLongMap!12011)

(declare-fun c!96964 () Bool)

(declare-fun c!96966 () Bool)

(declare-fun call!40567 () ListLongMap!12011)

(declare-fun bm!40564 () Bool)

(assert (=> bm!40564 (= call!40567 (+!2730 (ite c!96964 call!40564 (ite c!96966 call!40570 call!40568)) (ite (or c!96964 c!96966) (tuple2!13301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun bm!40565 () Bool)

(assert (=> bm!40565 (= call!40569 call!40567)))

(declare-fun b!931740 () Bool)

(declare-fun e!523284 () ListLongMap!12011)

(assert (=> b!931740 (= e!523284 call!40569)))

(declare-fun b!931741 () Bool)

(declare-fun Unit!31445 () Unit!31443)

(assert (=> b!931741 (= e!523283 Unit!31445)))

(declare-fun b!931742 () Bool)

(declare-fun e!523282 () ListLongMap!12011)

(assert (=> b!931742 (= e!523282 (+!2730 call!40567 (tuple2!13301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun b!931743 () Bool)

(declare-fun res!627625 () Bool)

(assert (=> b!931743 (=> (not res!627625) (not e!523279))))

(assert (=> b!931743 (= res!627625 e!523272)))

(declare-fun c!96968 () Bool)

(assert (=> b!931743 (= c!96968 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!931744 () Bool)

(declare-fun c!96965 () Bool)

(assert (=> b!931744 (= c!96965 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!931744 (= e!523284 e!523280)))

(declare-fun bm!40566 () Bool)

(assert (=> bm!40566 (= call!40570 call!40564)))

(declare-fun b!931746 () Bool)

(declare-fun e!523281 () Bool)

(assert (=> b!931746 (= e!523275 e!523281)))

(declare-fun res!627621 () Bool)

(assert (=> b!931746 (= res!627621 call!40565)))

(assert (=> b!931746 (=> (not res!627621) (not e!523281))))

(declare-fun d!112949 () Bool)

(assert (=> d!112949 e!523279))

(declare-fun res!627626 () Bool)

(assert (=> d!112949 (=> (not res!627626) (not e!523279))))

(assert (=> d!112949 (= res!627626 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27428 _keys!1487)) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27428 _keys!1487)))))))

(declare-fun lt!419538 () ListLongMap!12011)

(assert (=> d!112949 (= lt!419552 lt!419538)))

(declare-fun lt!419542 () Unit!31443)

(assert (=> d!112949 (= lt!419542 e!523283)))

(declare-fun c!96967 () Bool)

(declare-fun e!523278 () Bool)

(assert (=> d!112949 (= c!96967 e!523278)))

(declare-fun res!627627 () Bool)

(assert (=> d!112949 (=> (not res!627627) (not e!523278))))

(assert (=> d!112949 (= res!627627 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27428 _keys!1487)))))

(assert (=> d!112949 (= lt!419538 e!523282)))

(assert (=> d!112949 (= c!96964 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112949 (validMask!0 mask!1881)))

(assert (=> d!112949 (= (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419552)))

(declare-fun b!931745 () Bool)

(assert (=> b!931745 (= e!523281 (= (apply!806 lt!419552 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!931747 () Bool)

(assert (=> b!931747 (= e!523274 (= (apply!806 lt!419552 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!931748 () Bool)

(assert (=> b!931748 (= e!523282 e!523284)))

(assert (=> b!931748 (= c!96966 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40567 () Bool)

(assert (=> bm!40567 (= call!40568 call!40570)))

(declare-fun b!931749 () Bool)

(assert (=> b!931749 (= e!523273 e!523276)))

(declare-fun res!627622 () Bool)

(assert (=> b!931749 (=> (not res!627622) (not e!523276))))

(assert (=> b!931749 (= res!627622 (contains!5021 lt!419552 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!931749 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27428 _keys!1487)))))

(declare-fun b!931750 () Bool)

(assert (=> b!931750 (= e!523272 (not call!40566))))

(declare-fun b!931751 () Bool)

(assert (=> b!931751 (= e!523278 (validKeyInArray!0 (select (arr!26968 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (= (and d!112949 c!96964) b!931742))

(assert (= (and d!112949 (not c!96964)) b!931748))

(assert (= (and b!931748 c!96966) b!931740))

(assert (= (and b!931748 (not c!96966)) b!931744))

(assert (= (and b!931744 c!96965) b!931739))

(assert (= (and b!931744 (not c!96965)) b!931731))

(assert (= (or b!931739 b!931731) bm!40567))

(assert (= (or b!931740 bm!40567) bm!40566))

(assert (= (or b!931740 b!931739) bm!40565))

(assert (= (or b!931742 bm!40566) bm!40561))

(assert (= (or b!931742 bm!40565) bm!40564))

(assert (= (and d!112949 res!627627) b!931751))

(assert (= (and d!112949 c!96967) b!931736))

(assert (= (and d!112949 (not c!96967)) b!931741))

(assert (= (and d!112949 res!627626) b!931738))

(assert (= (and b!931738 res!627628) b!931734))

(assert (= (and b!931738 (not res!627629)) b!931749))

(assert (= (and b!931749 res!627622) b!931732))

(assert (= (and b!931738 res!627624) b!931743))

(assert (= (and b!931743 c!96968) b!931737))

(assert (= (and b!931743 (not c!96968)) b!931750))

(assert (= (and b!931737 res!627623) b!931747))

(assert (= (or b!931737 b!931750) bm!40563))

(assert (= (and b!931743 res!627625) b!931735))

(assert (= (and b!931735 c!96963) b!931746))

(assert (= (and b!931735 (not c!96963)) b!931733))

(assert (= (and b!931746 res!627621) b!931745))

(assert (= (or b!931746 b!931733) bm!40562))

(declare-fun b_lambda!13887 () Bool)

(assert (=> (not b_lambda!13887) (not b!931732)))

(assert (=> b!931732 t!27200))

(declare-fun b_and!28647 () Bool)

(assert (= b_and!28641 (and (=> t!27200 result!11689) b_and!28647)))

(declare-fun m!865693 () Bool)

(assert (=> bm!40563 m!865693))

(declare-fun m!865695 () Bool)

(assert (=> b!931734 m!865695))

(assert (=> b!931734 m!865695))

(declare-fun m!865697 () Bool)

(assert (=> b!931734 m!865697))

(assert (=> d!112949 m!865629))

(assert (=> b!931749 m!865695))

(assert (=> b!931749 m!865695))

(declare-fun m!865699 () Bool)

(assert (=> b!931749 m!865699))

(declare-fun m!865701 () Bool)

(assert (=> bm!40562 m!865701))

(assert (=> b!931751 m!865695))

(assert (=> b!931751 m!865695))

(assert (=> b!931751 m!865697))

(declare-fun m!865703 () Bool)

(assert (=> b!931742 m!865703))

(declare-fun m!865705 () Bool)

(assert (=> b!931747 m!865705))

(declare-fun m!865707 () Bool)

(assert (=> b!931736 m!865707))

(declare-fun m!865709 () Bool)

(assert (=> b!931736 m!865709))

(declare-fun m!865711 () Bool)

(assert (=> b!931736 m!865711))

(declare-fun m!865713 () Bool)

(assert (=> b!931736 m!865713))

(declare-fun m!865715 () Bool)

(assert (=> b!931736 m!865715))

(declare-fun m!865717 () Bool)

(assert (=> b!931736 m!865717))

(assert (=> b!931736 m!865695))

(declare-fun m!865719 () Bool)

(assert (=> b!931736 m!865719))

(assert (=> b!931736 m!865719))

(declare-fun m!865721 () Bool)

(assert (=> b!931736 m!865721))

(assert (=> b!931736 m!865707))

(declare-fun m!865723 () Bool)

(assert (=> b!931736 m!865723))

(declare-fun m!865725 () Bool)

(assert (=> b!931736 m!865725))

(declare-fun m!865727 () Bool)

(assert (=> b!931736 m!865727))

(declare-fun m!865729 () Bool)

(assert (=> b!931736 m!865729))

(declare-fun m!865731 () Bool)

(assert (=> b!931736 m!865731))

(assert (=> b!931736 m!865731))

(declare-fun m!865733 () Bool)

(assert (=> b!931736 m!865733))

(declare-fun m!865735 () Bool)

(assert (=> b!931736 m!865735))

(assert (=> b!931736 m!865735))

(declare-fun m!865737 () Bool)

(assert (=> b!931736 m!865737))

(declare-fun m!865739 () Bool)

(assert (=> b!931745 m!865739))

(declare-fun m!865741 () Bool)

(assert (=> b!931732 m!865741))

(assert (=> b!931732 m!865695))

(assert (=> b!931732 m!865695))

(declare-fun m!865743 () Bool)

(assert (=> b!931732 m!865743))

(assert (=> b!931732 m!865741))

(assert (=> b!931732 m!865611))

(declare-fun m!865745 () Bool)

(assert (=> b!931732 m!865745))

(assert (=> b!931732 m!865611))

(declare-fun m!865747 () Bool)

(assert (=> bm!40564 m!865747))

(assert (=> bm!40561 m!865723))

(assert (=> b!931637 d!112949))

(declare-fun d!112951 () Bool)

(declare-fun e!523287 () Bool)

(assert (=> d!112951 e!523287))

(declare-fun res!627632 () Bool)

(assert (=> d!112951 (=> (not res!627632) (not e!523287))))

(assert (=> d!112951 (= res!627632 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27428 _keys!1487)) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27429 _values!1231))))))

(declare-fun lt!419559 () Unit!31443)

(declare-fun choose!1547 (array!56054 array!56056 (_ BitVec 32) (_ BitVec 32) V!31689 V!31689 (_ BitVec 32) Int) Unit!31443)

(assert (=> d!112951 (= lt!419559 (choose!1547 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> d!112951 (validMask!0 mask!1881)))

(assert (=> d!112951 (= (lemmaListMapRecursiveValidKeyArray!165 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!419559)))

(declare-fun b!931754 () Bool)

(assert (=> b!931754 (= e!523287 (= (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2730 (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13301 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14187 (select (arr!26969 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!112951 res!627632) b!931754))

(declare-fun b_lambda!13889 () Bool)

(assert (=> (not b_lambda!13889) (not b!931754)))

(assert (=> b!931754 t!27200))

(declare-fun b_and!28649 () Bool)

(assert (= b_and!28647 (and (=> t!27200 result!11689) b_and!28649)))

(declare-fun m!865749 () Bool)

(assert (=> d!112951 m!865749))

(assert (=> d!112951 m!865629))

(assert (=> b!931754 m!865611))

(declare-fun m!865751 () Bool)

(assert (=> b!931754 m!865751))

(declare-fun m!865753 () Bool)

(assert (=> b!931754 m!865753))

(assert (=> b!931754 m!865639))

(assert (=> b!931754 m!865751))

(assert (=> b!931754 m!865609))

(assert (=> b!931754 m!865609))

(assert (=> b!931754 m!865611))

(assert (=> b!931754 m!865625))

(assert (=> b!931754 m!865613))

(assert (=> b!931637 d!112951))

(declare-fun d!112953 () Bool)

(declare-fun e!523292 () Bool)

(assert (=> d!112953 e!523292))

(declare-fun res!627635 () Bool)

(assert (=> d!112953 (=> res!627635 e!523292)))

(declare-fun lt!419570 () Bool)

(assert (=> d!112953 (= res!627635 (not lt!419570))))

(declare-fun lt!419571 () Bool)

(assert (=> d!112953 (= lt!419570 lt!419571)))

(declare-fun lt!419568 () Unit!31443)

(declare-fun e!523293 () Unit!31443)

(assert (=> d!112953 (= lt!419568 e!523293)))

(declare-fun c!96971 () Bool)

(assert (=> d!112953 (= c!96971 lt!419571)))

(declare-fun containsKey!446 (List!19115 (_ BitVec 64)) Bool)

(assert (=> d!112953 (= lt!419571 (containsKey!446 (toList!6021 (+!2730 lt!419467 lt!419469)) k0!1099))))

(assert (=> d!112953 (= (contains!5021 (+!2730 lt!419467 lt!419469) k0!1099) lt!419570)))

(declare-fun b!931761 () Bool)

(declare-fun lt!419569 () Unit!31443)

(assert (=> b!931761 (= e!523293 lt!419569)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!341 (List!19115 (_ BitVec 64)) Unit!31443)

(assert (=> b!931761 (= lt!419569 (lemmaContainsKeyImpliesGetValueByKeyDefined!341 (toList!6021 (+!2730 lt!419467 lt!419469)) k0!1099))))

(declare-datatypes ((Option!487 0))(
  ( (Some!486 (v!12592 V!31689)) (None!485) )
))
(declare-fun isDefined!351 (Option!487) Bool)

(declare-fun getValueByKey!481 (List!19115 (_ BitVec 64)) Option!487)

(assert (=> b!931761 (isDefined!351 (getValueByKey!481 (toList!6021 (+!2730 lt!419467 lt!419469)) k0!1099))))

(declare-fun b!931762 () Bool)

(declare-fun Unit!31446 () Unit!31443)

(assert (=> b!931762 (= e!523293 Unit!31446)))

(declare-fun b!931763 () Bool)

(assert (=> b!931763 (= e!523292 (isDefined!351 (getValueByKey!481 (toList!6021 (+!2730 lt!419467 lt!419469)) k0!1099)))))

(assert (= (and d!112953 c!96971) b!931761))

(assert (= (and d!112953 (not c!96971)) b!931762))

(assert (= (and d!112953 (not res!627635)) b!931763))

(declare-fun m!865755 () Bool)

(assert (=> d!112953 m!865755))

(declare-fun m!865757 () Bool)

(assert (=> b!931761 m!865757))

(declare-fun m!865759 () Bool)

(assert (=> b!931761 m!865759))

(assert (=> b!931761 m!865759))

(declare-fun m!865761 () Bool)

(assert (=> b!931761 m!865761))

(assert (=> b!931763 m!865759))

(assert (=> b!931763 m!865759))

(assert (=> b!931763 m!865761))

(assert (=> b!931637 d!112953))

(declare-fun d!112955 () Bool)

(declare-fun e!523296 () Bool)

(assert (=> d!112955 e!523296))

(declare-fun res!627641 () Bool)

(assert (=> d!112955 (=> (not res!627641) (not e!523296))))

(declare-fun lt!419582 () ListLongMap!12011)

(assert (=> d!112955 (= res!627641 (contains!5021 lt!419582 (_1!6660 lt!419469)))))

(declare-fun lt!419583 () List!19115)

(assert (=> d!112955 (= lt!419582 (ListLongMap!12012 lt!419583))))

(declare-fun lt!419581 () Unit!31443)

(declare-fun lt!419580 () Unit!31443)

(assert (=> d!112955 (= lt!419581 lt!419580)))

(assert (=> d!112955 (= (getValueByKey!481 lt!419583 (_1!6660 lt!419469)) (Some!486 (_2!6660 lt!419469)))))

(declare-fun lemmaContainsTupThenGetReturnValue!255 (List!19115 (_ BitVec 64) V!31689) Unit!31443)

(assert (=> d!112955 (= lt!419580 (lemmaContainsTupThenGetReturnValue!255 lt!419583 (_1!6660 lt!419469) (_2!6660 lt!419469)))))

(declare-fun insertStrictlySorted!311 (List!19115 (_ BitVec 64) V!31689) List!19115)

(assert (=> d!112955 (= lt!419583 (insertStrictlySorted!311 (toList!6021 (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6660 lt!419469) (_2!6660 lt!419469)))))

(assert (=> d!112955 (= (+!2730 (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419469) lt!419582)))

(declare-fun b!931768 () Bool)

(declare-fun res!627640 () Bool)

(assert (=> b!931768 (=> (not res!627640) (not e!523296))))

(assert (=> b!931768 (= res!627640 (= (getValueByKey!481 (toList!6021 lt!419582) (_1!6660 lt!419469)) (Some!486 (_2!6660 lt!419469))))))

(declare-fun b!931769 () Bool)

(declare-fun contains!5022 (List!19115 tuple2!13300) Bool)

(assert (=> b!931769 (= e!523296 (contains!5022 (toList!6021 lt!419582) lt!419469))))

(assert (= (and d!112955 res!627641) b!931768))

(assert (= (and b!931768 res!627640) b!931769))

(declare-fun m!865763 () Bool)

(assert (=> d!112955 m!865763))

(declare-fun m!865765 () Bool)

(assert (=> d!112955 m!865765))

(declare-fun m!865767 () Bool)

(assert (=> d!112955 m!865767))

(declare-fun m!865769 () Bool)

(assert (=> d!112955 m!865769))

(declare-fun m!865771 () Bool)

(assert (=> b!931768 m!865771))

(declare-fun m!865773 () Bool)

(assert (=> b!931769 m!865773))

(assert (=> b!931637 d!112955))

(declare-fun d!112957 () Bool)

(assert (=> d!112957 (contains!5021 (+!2730 lt!419467 (tuple2!13301 lt!419470 lt!419468)) k0!1099)))

(declare-fun lt!419586 () Unit!31443)

(declare-fun choose!1548 (ListLongMap!12011 (_ BitVec 64) V!31689 (_ BitVec 64)) Unit!31443)

(assert (=> d!112957 (= lt!419586 (choose!1548 lt!419467 lt!419470 lt!419468 k0!1099))))

(assert (=> d!112957 (contains!5021 lt!419467 k0!1099)))

(assert (=> d!112957 (= (addStillContains!486 lt!419467 lt!419470 lt!419468 k0!1099) lt!419586)))

(declare-fun bs!26172 () Bool)

(assert (= bs!26172 d!112957))

(declare-fun m!865775 () Bool)

(assert (=> bs!26172 m!865775))

(assert (=> bs!26172 m!865775))

(declare-fun m!865777 () Bool)

(assert (=> bs!26172 m!865777))

(declare-fun m!865779 () Bool)

(assert (=> bs!26172 m!865779))

(assert (=> bs!26172 m!865641))

(assert (=> b!931637 d!112957))

(declare-fun bm!40568 () Bool)

(declare-fun call!40571 () ListLongMap!12011)

(assert (=> bm!40568 (= call!40571 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun bm!40569 () Bool)

(declare-fun call!40572 () Bool)

(declare-fun lt!419604 () ListLongMap!12011)

(assert (=> bm!40569 (= call!40572 (contains!5021 lt!419604 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!931771 () Bool)

(declare-fun e!523305 () ListLongMap!12011)

(declare-fun call!40575 () ListLongMap!12011)

(assert (=> b!931771 (= e!523305 call!40575)))

(declare-fun b!931772 () Bool)

(declare-fun e!523301 () Bool)

(assert (=> b!931772 (= e!523301 (= (apply!806 lt!419604 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14187 (select (arr!26969 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!931772 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27429 _values!1231)))))

(assert (=> b!931772 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27428 _keys!1487)))))

(declare-fun b!931773 () Bool)

(declare-fun e!523300 () Bool)

(assert (=> b!931773 (= e!523300 (not call!40572))))

(declare-fun b!931774 () Bool)

(declare-fun e!523302 () Bool)

(assert (=> b!931774 (= e!523302 (validKeyInArray!0 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!931775 () Bool)

(declare-fun e!523304 () Bool)

(assert (=> b!931775 (= e!523304 e!523300)))

(declare-fun c!96972 () Bool)

(assert (=> b!931775 (= c!96972 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!931776 () Bool)

(declare-fun e!523308 () Unit!31443)

(declare-fun lt!419601 () Unit!31443)

(assert (=> b!931776 (= e!523308 lt!419601)))

(declare-fun lt!419605 () ListLongMap!12011)

(assert (=> b!931776 (= lt!419605 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!419599 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419599 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419598 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419598 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!419608 () Unit!31443)

(assert (=> b!931776 (= lt!419608 (addStillContains!486 lt!419605 lt!419599 zeroValue!1173 lt!419598))))

(assert (=> b!931776 (contains!5021 (+!2730 lt!419605 (tuple2!13301 lt!419599 zeroValue!1173)) lt!419598)))

(declare-fun lt!419597 () Unit!31443)

(assert (=> b!931776 (= lt!419597 lt!419608)))

(declare-fun lt!419591 () ListLongMap!12011)

(assert (=> b!931776 (= lt!419591 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!419607 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419607 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419592 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419592 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!419596 () Unit!31443)

(assert (=> b!931776 (= lt!419596 (addApplyDifferent!409 lt!419591 lt!419607 minValue!1173 lt!419592))))

(assert (=> b!931776 (= (apply!806 (+!2730 lt!419591 (tuple2!13301 lt!419607 minValue!1173)) lt!419592) (apply!806 lt!419591 lt!419592))))

(declare-fun lt!419603 () Unit!31443)

(assert (=> b!931776 (= lt!419603 lt!419596)))

(declare-fun lt!419600 () ListLongMap!12011)

(assert (=> b!931776 (= lt!419600 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!419588 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419588 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419587 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419587 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!419606 () Unit!31443)

(assert (=> b!931776 (= lt!419606 (addApplyDifferent!409 lt!419600 lt!419588 zeroValue!1173 lt!419587))))

(assert (=> b!931776 (= (apply!806 (+!2730 lt!419600 (tuple2!13301 lt!419588 zeroValue!1173)) lt!419587) (apply!806 lt!419600 lt!419587))))

(declare-fun lt!419602 () Unit!31443)

(assert (=> b!931776 (= lt!419602 lt!419606)))

(declare-fun lt!419589 () ListLongMap!12011)

(assert (=> b!931776 (= lt!419589 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!419593 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419593 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419595 () (_ BitVec 64))

(assert (=> b!931776 (= lt!419595 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!931776 (= lt!419601 (addApplyDifferent!409 lt!419589 lt!419593 minValue!1173 lt!419595))))

(assert (=> b!931776 (= (apply!806 (+!2730 lt!419589 (tuple2!13301 lt!419593 minValue!1173)) lt!419595) (apply!806 lt!419589 lt!419595))))

(declare-fun bm!40570 () Bool)

(declare-fun call!40573 () Bool)

(assert (=> bm!40570 (= call!40573 (contains!5021 lt!419604 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!931777 () Bool)

(declare-fun e!523297 () Bool)

(declare-fun e!523299 () Bool)

(assert (=> b!931777 (= e!523297 e!523299)))

(declare-fun res!627644 () Bool)

(assert (=> b!931777 (= res!627644 call!40573)))

(assert (=> b!931777 (=> (not res!627644) (not e!523299))))

(declare-fun b!931778 () Bool)

(declare-fun res!627645 () Bool)

(assert (=> b!931778 (=> (not res!627645) (not e!523304))))

(declare-fun e!523298 () Bool)

(assert (=> b!931778 (= res!627645 e!523298)))

(declare-fun res!627650 () Bool)

(assert (=> b!931778 (=> res!627650 e!523298)))

(assert (=> b!931778 (= res!627650 (not e!523302))))

(declare-fun res!627649 () Bool)

(assert (=> b!931778 (=> (not res!627649) (not e!523302))))

(assert (=> b!931778 (= res!627649 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27428 _keys!1487)))))

(declare-fun b!931779 () Bool)

(declare-fun call!40576 () ListLongMap!12011)

(assert (=> b!931779 (= e!523305 call!40576)))

(declare-fun call!40577 () ListLongMap!12011)

(declare-fun call!40574 () ListLongMap!12011)

(declare-fun bm!40571 () Bool)

(declare-fun c!96973 () Bool)

(declare-fun c!96975 () Bool)

(assert (=> bm!40571 (= call!40574 (+!2730 (ite c!96973 call!40571 (ite c!96975 call!40577 call!40575)) (ite (or c!96973 c!96975) (tuple2!13301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun bm!40572 () Bool)

(assert (=> bm!40572 (= call!40576 call!40574)))

(declare-fun b!931780 () Bool)

(declare-fun e!523309 () ListLongMap!12011)

(assert (=> b!931780 (= e!523309 call!40576)))

(declare-fun b!931781 () Bool)

(declare-fun Unit!31447 () Unit!31443)

(assert (=> b!931781 (= e!523308 Unit!31447)))

(declare-fun b!931782 () Bool)

(declare-fun e!523307 () ListLongMap!12011)

(assert (=> b!931782 (= e!523307 (+!2730 call!40574 (tuple2!13301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun b!931783 () Bool)

(declare-fun res!627646 () Bool)

(assert (=> b!931783 (=> (not res!627646) (not e!523304))))

(assert (=> b!931783 (= res!627646 e!523297)))

(declare-fun c!96977 () Bool)

(assert (=> b!931783 (= c!96977 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!931784 () Bool)

(declare-fun c!96974 () Bool)

(assert (=> b!931784 (= c!96974 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!931784 (= e!523309 e!523305)))

(declare-fun bm!40573 () Bool)

(assert (=> bm!40573 (= call!40577 call!40571)))

(declare-fun b!931786 () Bool)

(declare-fun e!523306 () Bool)

(assert (=> b!931786 (= e!523300 e!523306)))

(declare-fun res!627642 () Bool)

(assert (=> b!931786 (= res!627642 call!40572)))

(assert (=> b!931786 (=> (not res!627642) (not e!523306))))

(declare-fun d!112959 () Bool)

(assert (=> d!112959 e!523304))

(declare-fun res!627647 () Bool)

(assert (=> d!112959 (=> (not res!627647) (not e!523304))))

(assert (=> d!112959 (= res!627647 (or (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27428 _keys!1487)) (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27428 _keys!1487)))))))

(declare-fun lt!419590 () ListLongMap!12011)

(assert (=> d!112959 (= lt!419604 lt!419590)))

(declare-fun lt!419594 () Unit!31443)

(assert (=> d!112959 (= lt!419594 e!523308)))

(declare-fun c!96976 () Bool)

(declare-fun e!523303 () Bool)

(assert (=> d!112959 (= c!96976 e!523303)))

(declare-fun res!627648 () Bool)

(assert (=> d!112959 (=> (not res!627648) (not e!523303))))

(assert (=> d!112959 (= res!627648 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27428 _keys!1487)))))

(assert (=> d!112959 (= lt!419590 e!523307)))

(assert (=> d!112959 (= c!96973 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112959 (validMask!0 mask!1881)))

(assert (=> d!112959 (= (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!419604)))

(declare-fun b!931785 () Bool)

(assert (=> b!931785 (= e!523306 (= (apply!806 lt!419604 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!931787 () Bool)

(assert (=> b!931787 (= e!523299 (= (apply!806 lt!419604 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!931788 () Bool)

(assert (=> b!931788 (= e!523307 e!523309)))

(assert (=> b!931788 (= c!96975 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40574 () Bool)

(assert (=> bm!40574 (= call!40575 call!40577)))

(declare-fun b!931789 () Bool)

(assert (=> b!931789 (= e!523298 e!523301)))

(declare-fun res!627643 () Bool)

(assert (=> b!931789 (=> (not res!627643) (not e!523301))))

(assert (=> b!931789 (= res!627643 (contains!5021 lt!419604 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!931789 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27428 _keys!1487)))))

(declare-fun b!931790 () Bool)

(assert (=> b!931790 (= e!523297 (not call!40573))))

(declare-fun b!931791 () Bool)

(assert (=> b!931791 (= e!523303 (validKeyInArray!0 (select (arr!26968 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (= (and d!112959 c!96973) b!931782))

(assert (= (and d!112959 (not c!96973)) b!931788))

(assert (= (and b!931788 c!96975) b!931780))

(assert (= (and b!931788 (not c!96975)) b!931784))

(assert (= (and b!931784 c!96974) b!931779))

(assert (= (and b!931784 (not c!96974)) b!931771))

(assert (= (or b!931779 b!931771) bm!40574))

(assert (= (or b!931780 bm!40574) bm!40573))

(assert (= (or b!931780 b!931779) bm!40572))

(assert (= (or b!931782 bm!40573) bm!40568))

(assert (= (or b!931782 bm!40572) bm!40571))

(assert (= (and d!112959 res!627648) b!931791))

(assert (= (and d!112959 c!96976) b!931776))

(assert (= (and d!112959 (not c!96976)) b!931781))

(assert (= (and d!112959 res!627647) b!931778))

(assert (= (and b!931778 res!627649) b!931774))

(assert (= (and b!931778 (not res!627650)) b!931789))

(assert (= (and b!931789 res!627643) b!931772))

(assert (= (and b!931778 res!627645) b!931783))

(assert (= (and b!931783 c!96977) b!931777))

(assert (= (and b!931783 (not c!96977)) b!931790))

(assert (= (and b!931777 res!627644) b!931787))

(assert (= (or b!931777 b!931790) bm!40570))

(assert (= (and b!931783 res!627646) b!931775))

(assert (= (and b!931775 c!96972) b!931786))

(assert (= (and b!931775 (not c!96972)) b!931773))

(assert (= (and b!931786 res!627642) b!931785))

(assert (= (or b!931786 b!931773) bm!40569))

(declare-fun b_lambda!13891 () Bool)

(assert (=> (not b_lambda!13891) (not b!931772)))

(assert (=> b!931772 t!27200))

(declare-fun b_and!28651 () Bool)

(assert (= b_and!28649 (and (=> t!27200 result!11689) b_and!28651)))

(declare-fun m!865781 () Bool)

(assert (=> bm!40570 m!865781))

(assert (=> b!931774 m!865639))

(assert (=> b!931774 m!865639))

(declare-fun m!865783 () Bool)

(assert (=> b!931774 m!865783))

(assert (=> d!112959 m!865629))

(assert (=> b!931789 m!865639))

(assert (=> b!931789 m!865639))

(declare-fun m!865785 () Bool)

(assert (=> b!931789 m!865785))

(declare-fun m!865787 () Bool)

(assert (=> bm!40569 m!865787))

(assert (=> b!931791 m!865639))

(assert (=> b!931791 m!865639))

(assert (=> b!931791 m!865783))

(declare-fun m!865789 () Bool)

(assert (=> b!931782 m!865789))

(declare-fun m!865791 () Bool)

(assert (=> b!931787 m!865791))

(declare-fun m!865793 () Bool)

(assert (=> b!931776 m!865793))

(declare-fun m!865795 () Bool)

(assert (=> b!931776 m!865795))

(declare-fun m!865797 () Bool)

(assert (=> b!931776 m!865797))

(declare-fun m!865799 () Bool)

(assert (=> b!931776 m!865799))

(declare-fun m!865801 () Bool)

(assert (=> b!931776 m!865801))

(declare-fun m!865803 () Bool)

(assert (=> b!931776 m!865803))

(assert (=> b!931776 m!865639))

(declare-fun m!865805 () Bool)

(assert (=> b!931776 m!865805))

(assert (=> b!931776 m!865805))

(declare-fun m!865807 () Bool)

(assert (=> b!931776 m!865807))

(assert (=> b!931776 m!865793))

(declare-fun m!865809 () Bool)

(assert (=> b!931776 m!865809))

(declare-fun m!865811 () Bool)

(assert (=> b!931776 m!865811))

(declare-fun m!865813 () Bool)

(assert (=> b!931776 m!865813))

(declare-fun m!865815 () Bool)

(assert (=> b!931776 m!865815))

(declare-fun m!865817 () Bool)

(assert (=> b!931776 m!865817))

(assert (=> b!931776 m!865817))

(declare-fun m!865819 () Bool)

(assert (=> b!931776 m!865819))

(declare-fun m!865821 () Bool)

(assert (=> b!931776 m!865821))

(assert (=> b!931776 m!865821))

(declare-fun m!865823 () Bool)

(assert (=> b!931776 m!865823))

(declare-fun m!865825 () Bool)

(assert (=> b!931785 m!865825))

(assert (=> b!931772 m!865609))

(assert (=> b!931772 m!865639))

(assert (=> b!931772 m!865639))

(declare-fun m!865827 () Bool)

(assert (=> b!931772 m!865827))

(assert (=> b!931772 m!865609))

(assert (=> b!931772 m!865611))

(assert (=> b!931772 m!865625))

(assert (=> b!931772 m!865611))

(declare-fun m!865829 () Bool)

(assert (=> bm!40571 m!865829))

(assert (=> bm!40568 m!865809))

(assert (=> b!931637 d!112959))

(declare-fun d!112961 () Bool)

(declare-fun e!523310 () Bool)

(assert (=> d!112961 e!523310))

(declare-fun res!627652 () Bool)

(assert (=> d!112961 (=> (not res!627652) (not e!523310))))

(declare-fun lt!419611 () ListLongMap!12011)

(assert (=> d!112961 (= res!627652 (contains!5021 lt!419611 (_1!6660 lt!419469)))))

(declare-fun lt!419612 () List!19115)

(assert (=> d!112961 (= lt!419611 (ListLongMap!12012 lt!419612))))

(declare-fun lt!419610 () Unit!31443)

(declare-fun lt!419609 () Unit!31443)

(assert (=> d!112961 (= lt!419610 lt!419609)))

(assert (=> d!112961 (= (getValueByKey!481 lt!419612 (_1!6660 lt!419469)) (Some!486 (_2!6660 lt!419469)))))

(assert (=> d!112961 (= lt!419609 (lemmaContainsTupThenGetReturnValue!255 lt!419612 (_1!6660 lt!419469) (_2!6660 lt!419469)))))

(assert (=> d!112961 (= lt!419612 (insertStrictlySorted!311 (toList!6021 lt!419467) (_1!6660 lt!419469) (_2!6660 lt!419469)))))

(assert (=> d!112961 (= (+!2730 lt!419467 lt!419469) lt!419611)))

(declare-fun b!931792 () Bool)

(declare-fun res!627651 () Bool)

(assert (=> b!931792 (=> (not res!627651) (not e!523310))))

(assert (=> b!931792 (= res!627651 (= (getValueByKey!481 (toList!6021 lt!419611) (_1!6660 lt!419469)) (Some!486 (_2!6660 lt!419469))))))

(declare-fun b!931793 () Bool)

(assert (=> b!931793 (= e!523310 (contains!5022 (toList!6021 lt!419611) lt!419469))))

(assert (= (and d!112961 res!627652) b!931792))

(assert (= (and b!931792 res!627651) b!931793))

(declare-fun m!865831 () Bool)

(assert (=> d!112961 m!865831))

(declare-fun m!865833 () Bool)

(assert (=> d!112961 m!865833))

(declare-fun m!865835 () Bool)

(assert (=> d!112961 m!865835))

(declare-fun m!865837 () Bool)

(assert (=> d!112961 m!865837))

(declare-fun m!865839 () Bool)

(assert (=> b!931792 m!865839))

(declare-fun m!865841 () Bool)

(assert (=> b!931793 m!865841))

(assert (=> b!931637 d!112961))

(declare-fun d!112963 () Bool)

(declare-fun c!96980 () Bool)

(assert (=> d!112963 (= c!96980 ((_ is ValueCellFull!9540) (select (arr!26969 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!523313 () V!31689)

(assert (=> d!112963 (= (get!14187 (select (arr!26969 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!523313)))

(declare-fun b!931798 () Bool)

(declare-fun get!14188 (ValueCell!9540 V!31689) V!31689)

(assert (=> b!931798 (= e!523313 (get!14188 (select (arr!26969 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!931799 () Bool)

(declare-fun get!14189 (ValueCell!9540 V!31689) V!31689)

(assert (=> b!931799 (= e!523313 (get!14189 (select (arr!26969 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112963 c!96980) b!931798))

(assert (= (and d!112963 (not c!96980)) b!931799))

(assert (=> b!931798 m!865609))

(assert (=> b!931798 m!865611))

(declare-fun m!865843 () Bool)

(assert (=> b!931798 m!865843))

(assert (=> b!931799 m!865609))

(assert (=> b!931799 m!865611))

(declare-fun m!865845 () Bool)

(assert (=> b!931799 m!865845))

(assert (=> b!931637 d!112963))

(declare-fun d!112965 () Bool)

(declare-fun e!523314 () Bool)

(assert (=> d!112965 e!523314))

(declare-fun res!627653 () Bool)

(assert (=> d!112965 (=> res!627653 e!523314)))

(declare-fun lt!419615 () Bool)

(assert (=> d!112965 (= res!627653 (not lt!419615))))

(declare-fun lt!419616 () Bool)

(assert (=> d!112965 (= lt!419615 lt!419616)))

(declare-fun lt!419613 () Unit!31443)

(declare-fun e!523315 () Unit!31443)

(assert (=> d!112965 (= lt!419613 e!523315)))

(declare-fun c!96981 () Bool)

(assert (=> d!112965 (= c!96981 lt!419616)))

(assert (=> d!112965 (= lt!419616 (containsKey!446 (toList!6021 lt!419467) k0!1099))))

(assert (=> d!112965 (= (contains!5021 lt!419467 k0!1099) lt!419615)))

(declare-fun b!931800 () Bool)

(declare-fun lt!419614 () Unit!31443)

(assert (=> b!931800 (= e!523315 lt!419614)))

(assert (=> b!931800 (= lt!419614 (lemmaContainsKeyImpliesGetValueByKeyDefined!341 (toList!6021 lt!419467) k0!1099))))

(assert (=> b!931800 (isDefined!351 (getValueByKey!481 (toList!6021 lt!419467) k0!1099))))

(declare-fun b!931801 () Bool)

(declare-fun Unit!31448 () Unit!31443)

(assert (=> b!931801 (= e!523315 Unit!31448)))

(declare-fun b!931802 () Bool)

(assert (=> b!931802 (= e!523314 (isDefined!351 (getValueByKey!481 (toList!6021 lt!419467) k0!1099)))))

(assert (= (and d!112965 c!96981) b!931800))

(assert (= (and d!112965 (not c!96981)) b!931801))

(assert (= (and d!112965 (not res!627653)) b!931802))

(declare-fun m!865847 () Bool)

(assert (=> d!112965 m!865847))

(declare-fun m!865849 () Bool)

(assert (=> b!931800 m!865849))

(declare-fun m!865851 () Bool)

(assert (=> b!931800 m!865851))

(assert (=> b!931800 m!865851))

(declare-fun m!865853 () Bool)

(assert (=> b!931800 m!865853))

(assert (=> b!931802 m!865851))

(assert (=> b!931802 m!865851))

(assert (=> b!931802 m!865853))

(assert (=> b!931642 d!112965))

(declare-fun bm!40575 () Bool)

(declare-fun call!40578 () ListLongMap!12011)

(assert (=> bm!40575 (= call!40578 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun bm!40576 () Bool)

(declare-fun call!40579 () Bool)

(declare-fun lt!419634 () ListLongMap!12011)

(assert (=> bm!40576 (= call!40579 (contains!5021 lt!419634 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!931803 () Bool)

(declare-fun e!523324 () ListLongMap!12011)

(declare-fun call!40582 () ListLongMap!12011)

(assert (=> b!931803 (= e!523324 call!40582)))

(declare-fun e!523320 () Bool)

(declare-fun b!931804 () Bool)

(assert (=> b!931804 (= e!523320 (= (apply!806 lt!419634 (select (arr!26968 _keys!1487) from!1844)) (get!14187 (select (arr!26969 _values!1231) from!1844) (dynLambda!1569 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!931804 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27429 _values!1231)))))

(assert (=> b!931804 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27428 _keys!1487)))))

(declare-fun b!931805 () Bool)

(declare-fun e!523319 () Bool)

(assert (=> b!931805 (= e!523319 (not call!40579))))

(declare-fun b!931806 () Bool)

(declare-fun e!523321 () Bool)

(assert (=> b!931806 (= e!523321 (validKeyInArray!0 (select (arr!26968 _keys!1487) from!1844)))))

(declare-fun b!931807 () Bool)

(declare-fun e!523323 () Bool)

(assert (=> b!931807 (= e!523323 e!523319)))

(declare-fun c!96982 () Bool)

(assert (=> b!931807 (= c!96982 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!931808 () Bool)

(declare-fun e!523327 () Unit!31443)

(declare-fun lt!419631 () Unit!31443)

(assert (=> b!931808 (= e!523327 lt!419631)))

(declare-fun lt!419635 () ListLongMap!12011)

(assert (=> b!931808 (= lt!419635 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!419629 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419629 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419628 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419628 (select (arr!26968 _keys!1487) from!1844))))

(declare-fun lt!419638 () Unit!31443)

(assert (=> b!931808 (= lt!419638 (addStillContains!486 lt!419635 lt!419629 zeroValue!1173 lt!419628))))

(assert (=> b!931808 (contains!5021 (+!2730 lt!419635 (tuple2!13301 lt!419629 zeroValue!1173)) lt!419628)))

(declare-fun lt!419627 () Unit!31443)

(assert (=> b!931808 (= lt!419627 lt!419638)))

(declare-fun lt!419621 () ListLongMap!12011)

(assert (=> b!931808 (= lt!419621 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!419637 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419637 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419622 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419622 (select (arr!26968 _keys!1487) from!1844))))

(declare-fun lt!419626 () Unit!31443)

(assert (=> b!931808 (= lt!419626 (addApplyDifferent!409 lt!419621 lt!419637 minValue!1173 lt!419622))))

(assert (=> b!931808 (= (apply!806 (+!2730 lt!419621 (tuple2!13301 lt!419637 minValue!1173)) lt!419622) (apply!806 lt!419621 lt!419622))))

(declare-fun lt!419633 () Unit!31443)

(assert (=> b!931808 (= lt!419633 lt!419626)))

(declare-fun lt!419630 () ListLongMap!12011)

(assert (=> b!931808 (= lt!419630 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!419618 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419618 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419617 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419617 (select (arr!26968 _keys!1487) from!1844))))

(declare-fun lt!419636 () Unit!31443)

(assert (=> b!931808 (= lt!419636 (addApplyDifferent!409 lt!419630 lt!419618 zeroValue!1173 lt!419617))))

(assert (=> b!931808 (= (apply!806 (+!2730 lt!419630 (tuple2!13301 lt!419618 zeroValue!1173)) lt!419617) (apply!806 lt!419630 lt!419617))))

(declare-fun lt!419632 () Unit!31443)

(assert (=> b!931808 (= lt!419632 lt!419636)))

(declare-fun lt!419619 () ListLongMap!12011)

(assert (=> b!931808 (= lt!419619 (getCurrentListMapNoExtraKeys!3314 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!419623 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419623 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!419625 () (_ BitVec 64))

(assert (=> b!931808 (= lt!419625 (select (arr!26968 _keys!1487) from!1844))))

(assert (=> b!931808 (= lt!419631 (addApplyDifferent!409 lt!419619 lt!419623 minValue!1173 lt!419625))))

(assert (=> b!931808 (= (apply!806 (+!2730 lt!419619 (tuple2!13301 lt!419623 minValue!1173)) lt!419625) (apply!806 lt!419619 lt!419625))))

(declare-fun bm!40577 () Bool)

(declare-fun call!40580 () Bool)

(assert (=> bm!40577 (= call!40580 (contains!5021 lt!419634 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!931809 () Bool)

(declare-fun e!523316 () Bool)

(declare-fun e!523318 () Bool)

(assert (=> b!931809 (= e!523316 e!523318)))

(declare-fun res!627656 () Bool)

(assert (=> b!931809 (= res!627656 call!40580)))

(assert (=> b!931809 (=> (not res!627656) (not e!523318))))

(declare-fun b!931810 () Bool)

(declare-fun res!627657 () Bool)

(assert (=> b!931810 (=> (not res!627657) (not e!523323))))

(declare-fun e!523317 () Bool)

(assert (=> b!931810 (= res!627657 e!523317)))

(declare-fun res!627662 () Bool)

(assert (=> b!931810 (=> res!627662 e!523317)))

(assert (=> b!931810 (= res!627662 (not e!523321))))

(declare-fun res!627661 () Bool)

(assert (=> b!931810 (=> (not res!627661) (not e!523321))))

(assert (=> b!931810 (= res!627661 (bvslt from!1844 (size!27428 _keys!1487)))))

(declare-fun b!931811 () Bool)

(declare-fun call!40583 () ListLongMap!12011)

(assert (=> b!931811 (= e!523324 call!40583)))

(declare-fun call!40584 () ListLongMap!12011)

(declare-fun c!96983 () Bool)

(declare-fun call!40581 () ListLongMap!12011)

(declare-fun c!96985 () Bool)

(declare-fun bm!40578 () Bool)

(assert (=> bm!40578 (= call!40581 (+!2730 (ite c!96983 call!40578 (ite c!96985 call!40584 call!40582)) (ite (or c!96983 c!96985) (tuple2!13301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun bm!40579 () Bool)

(assert (=> bm!40579 (= call!40583 call!40581)))

(declare-fun b!931812 () Bool)

(declare-fun e!523328 () ListLongMap!12011)

(assert (=> b!931812 (= e!523328 call!40583)))

(declare-fun b!931813 () Bool)

(declare-fun Unit!31449 () Unit!31443)

(assert (=> b!931813 (= e!523327 Unit!31449)))

(declare-fun b!931814 () Bool)

(declare-fun e!523326 () ListLongMap!12011)

(assert (=> b!931814 (= e!523326 (+!2730 call!40581 (tuple2!13301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun b!931815 () Bool)

(declare-fun res!627658 () Bool)

(assert (=> b!931815 (=> (not res!627658) (not e!523323))))

(assert (=> b!931815 (= res!627658 e!523316)))

(declare-fun c!96987 () Bool)

(assert (=> b!931815 (= c!96987 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!931816 () Bool)

(declare-fun c!96984 () Bool)

(assert (=> b!931816 (= c!96984 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!931816 (= e!523328 e!523324)))

(declare-fun bm!40580 () Bool)

(assert (=> bm!40580 (= call!40584 call!40578)))

(declare-fun b!931818 () Bool)

(declare-fun e!523325 () Bool)

(assert (=> b!931818 (= e!523319 e!523325)))

(declare-fun res!627654 () Bool)

(assert (=> b!931818 (= res!627654 call!40579)))

(assert (=> b!931818 (=> (not res!627654) (not e!523325))))

(declare-fun d!112967 () Bool)

(assert (=> d!112967 e!523323))

(declare-fun res!627659 () Bool)

(assert (=> d!112967 (=> (not res!627659) (not e!523323))))

(assert (=> d!112967 (= res!627659 (or (bvsge from!1844 (size!27428 _keys!1487)) (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27428 _keys!1487)))))))

(declare-fun lt!419620 () ListLongMap!12011)

(assert (=> d!112967 (= lt!419634 lt!419620)))

(declare-fun lt!419624 () Unit!31443)

(assert (=> d!112967 (= lt!419624 e!523327)))

(declare-fun c!96986 () Bool)

(declare-fun e!523322 () Bool)

(assert (=> d!112967 (= c!96986 e!523322)))

(declare-fun res!627660 () Bool)

(assert (=> d!112967 (=> (not res!627660) (not e!523322))))

(assert (=> d!112967 (= res!627660 (bvslt from!1844 (size!27428 _keys!1487)))))

(assert (=> d!112967 (= lt!419620 e!523326)))

(assert (=> d!112967 (= c!96983 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112967 (validMask!0 mask!1881)))

(assert (=> d!112967 (= (getCurrentListMap!3216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!419634)))

(declare-fun b!931817 () Bool)

(assert (=> b!931817 (= e!523325 (= (apply!806 lt!419634 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!931819 () Bool)

(assert (=> b!931819 (= e!523318 (= (apply!806 lt!419634 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!931820 () Bool)

(assert (=> b!931820 (= e!523326 e!523328)))

(assert (=> b!931820 (= c!96985 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40581 () Bool)

(assert (=> bm!40581 (= call!40582 call!40584)))

(declare-fun b!931821 () Bool)

(assert (=> b!931821 (= e!523317 e!523320)))

(declare-fun res!627655 () Bool)

(assert (=> b!931821 (=> (not res!627655) (not e!523320))))

(assert (=> b!931821 (= res!627655 (contains!5021 lt!419634 (select (arr!26968 _keys!1487) from!1844)))))

(assert (=> b!931821 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27428 _keys!1487)))))

(declare-fun b!931822 () Bool)

(assert (=> b!931822 (= e!523316 (not call!40580))))

(declare-fun b!931823 () Bool)

(assert (=> b!931823 (= e!523322 (validKeyInArray!0 (select (arr!26968 _keys!1487) from!1844)))))

(assert (= (and d!112967 c!96983) b!931814))

(assert (= (and d!112967 (not c!96983)) b!931820))

(assert (= (and b!931820 c!96985) b!931812))

(assert (= (and b!931820 (not c!96985)) b!931816))

(assert (= (and b!931816 c!96984) b!931811))

(assert (= (and b!931816 (not c!96984)) b!931803))

(assert (= (or b!931811 b!931803) bm!40581))

(assert (= (or b!931812 bm!40581) bm!40580))

(assert (= (or b!931812 b!931811) bm!40579))

(assert (= (or b!931814 bm!40580) bm!40575))

(assert (= (or b!931814 bm!40579) bm!40578))

(assert (= (and d!112967 res!627660) b!931823))

(assert (= (and d!112967 c!96986) b!931808))

(assert (= (and d!112967 (not c!96986)) b!931813))

(assert (= (and d!112967 res!627659) b!931810))

(assert (= (and b!931810 res!627661) b!931806))

(assert (= (and b!931810 (not res!627662)) b!931821))

(assert (= (and b!931821 res!627655) b!931804))

(assert (= (and b!931810 res!627657) b!931815))

(assert (= (and b!931815 c!96987) b!931809))

(assert (= (and b!931815 (not c!96987)) b!931822))

(assert (= (and b!931809 res!627656) b!931819))

(assert (= (or b!931809 b!931822) bm!40577))

(assert (= (and b!931815 res!627658) b!931807))

(assert (= (and b!931807 c!96982) b!931818))

(assert (= (and b!931807 (not c!96982)) b!931805))

(assert (= (and b!931818 res!627654) b!931817))

(assert (= (or b!931818 b!931805) bm!40576))

(declare-fun b_lambda!13893 () Bool)

(assert (=> (not b_lambda!13893) (not b!931804)))

(assert (=> b!931804 t!27200))

(declare-fun b_and!28653 () Bool)

(assert (= b_and!28651 (and (=> t!27200 result!11689) b_and!28653)))

(declare-fun m!865855 () Bool)

(assert (=> bm!40577 m!865855))

(declare-fun m!865857 () Bool)

(assert (=> b!931806 m!865857))

(assert (=> b!931806 m!865857))

(declare-fun m!865859 () Bool)

(assert (=> b!931806 m!865859))

(assert (=> d!112967 m!865629))

(assert (=> b!931821 m!865857))

(assert (=> b!931821 m!865857))

(declare-fun m!865861 () Bool)

(assert (=> b!931821 m!865861))

(declare-fun m!865863 () Bool)

(assert (=> bm!40576 m!865863))

(assert (=> b!931823 m!865857))

(assert (=> b!931823 m!865857))

(assert (=> b!931823 m!865859))

(declare-fun m!865865 () Bool)

(assert (=> b!931814 m!865865))

(declare-fun m!865867 () Bool)

(assert (=> b!931819 m!865867))

(declare-fun m!865869 () Bool)

(assert (=> b!931808 m!865869))

(declare-fun m!865871 () Bool)

(assert (=> b!931808 m!865871))

(declare-fun m!865873 () Bool)

(assert (=> b!931808 m!865873))

(declare-fun m!865875 () Bool)

(assert (=> b!931808 m!865875))

(declare-fun m!865877 () Bool)

(assert (=> b!931808 m!865877))

(declare-fun m!865879 () Bool)

(assert (=> b!931808 m!865879))

(assert (=> b!931808 m!865857))

(declare-fun m!865881 () Bool)

(assert (=> b!931808 m!865881))

(assert (=> b!931808 m!865881))

(declare-fun m!865883 () Bool)

(assert (=> b!931808 m!865883))

(assert (=> b!931808 m!865869))

(declare-fun m!865885 () Bool)

(assert (=> b!931808 m!865885))

(declare-fun m!865887 () Bool)

(assert (=> b!931808 m!865887))

(declare-fun m!865889 () Bool)

(assert (=> b!931808 m!865889))

(declare-fun m!865891 () Bool)

(assert (=> b!931808 m!865891))

(declare-fun m!865893 () Bool)

(assert (=> b!931808 m!865893))

(assert (=> b!931808 m!865893))

(declare-fun m!865895 () Bool)

(assert (=> b!931808 m!865895))

(declare-fun m!865897 () Bool)

(assert (=> b!931808 m!865897))

(assert (=> b!931808 m!865897))

(declare-fun m!865899 () Bool)

(assert (=> b!931808 m!865899))

(declare-fun m!865901 () Bool)

(assert (=> b!931817 m!865901))

(declare-fun m!865903 () Bool)

(assert (=> b!931804 m!865903))

(assert (=> b!931804 m!865857))

(assert (=> b!931804 m!865857))

(declare-fun m!865905 () Bool)

(assert (=> b!931804 m!865905))

(assert (=> b!931804 m!865903))

(assert (=> b!931804 m!865611))

(declare-fun m!865907 () Bool)

(assert (=> b!931804 m!865907))

(assert (=> b!931804 m!865611))

(declare-fun m!865909 () Bool)

(assert (=> bm!40578 m!865909))

(assert (=> bm!40575 m!865885))

(assert (=> b!931642 d!112967))

(declare-fun d!112969 () Bool)

(assert (=> d!112969 (= (validKeyInArray!0 lt!419470) (and (not (= lt!419470 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!419470 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!931636 d!112969))

(declare-fun d!112971 () Bool)

(declare-fun res!627668 () Bool)

(declare-fun e!523337 () Bool)

(assert (=> d!112971 (=> res!627668 e!523337)))

(assert (=> d!112971 (= res!627668 (bvsge #b00000000000000000000000000000000 (size!27428 _keys!1487)))))

(assert (=> d!112971 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!523337)))

(declare-fun b!931832 () Bool)

(declare-fun e!523335 () Bool)

(declare-fun e!523336 () Bool)

(assert (=> b!931832 (= e!523335 e!523336)))

(declare-fun lt!419645 () (_ BitVec 64))

(assert (=> b!931832 (= lt!419645 (select (arr!26968 _keys!1487) #b00000000000000000000000000000000))))

(declare-fun lt!419646 () Unit!31443)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56054 (_ BitVec 64) (_ BitVec 32)) Unit!31443)

(assert (=> b!931832 (= lt!419646 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!419645 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!931832 (arrayContainsKey!0 _keys!1487 lt!419645 #b00000000000000000000000000000000)))

(declare-fun lt!419647 () Unit!31443)

(assert (=> b!931832 (= lt!419647 lt!419646)))

(declare-fun res!627667 () Bool)

(declare-datatypes ((SeekEntryResult!8963 0))(
  ( (MissingZero!8963 (index!38222 (_ BitVec 32))) (Found!8963 (index!38223 (_ BitVec 32))) (Intermediate!8963 (undefined!9775 Bool) (index!38224 (_ BitVec 32)) (x!79853 (_ BitVec 32))) (Undefined!8963) (MissingVacant!8963 (index!38225 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56054 (_ BitVec 32)) SeekEntryResult!8963)

(assert (=> b!931832 (= res!627667 (= (seekEntryOrOpen!0 (select (arr!26968 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8963 #b00000000000000000000000000000000)))))

(assert (=> b!931832 (=> (not res!627667) (not e!523336))))

(declare-fun b!931833 () Bool)

(assert (=> b!931833 (= e!523337 e!523335)))

(declare-fun c!96990 () Bool)

(assert (=> b!931833 (= c!96990 (validKeyInArray!0 (select (arr!26968 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!931834 () Bool)

(declare-fun call!40587 () Bool)

(assert (=> b!931834 (= e!523335 call!40587)))

(declare-fun bm!40584 () Bool)

(assert (=> bm!40584 (= call!40587 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!931835 () Bool)

(assert (=> b!931835 (= e!523336 call!40587)))

(assert (= (and d!112971 (not res!627668)) b!931833))

(assert (= (and b!931833 c!96990) b!931832))

(assert (= (and b!931833 (not c!96990)) b!931834))

(assert (= (and b!931832 res!627667) b!931835))

(assert (= (or b!931835 b!931834) bm!40584))

(declare-fun m!865911 () Bool)

(assert (=> b!931832 m!865911))

(declare-fun m!865913 () Bool)

(assert (=> b!931832 m!865913))

(declare-fun m!865915 () Bool)

(assert (=> b!931832 m!865915))

(assert (=> b!931832 m!865911))

(declare-fun m!865917 () Bool)

(assert (=> b!931832 m!865917))

(assert (=> b!931833 m!865911))

(assert (=> b!931833 m!865911))

(declare-fun m!865919 () Bool)

(assert (=> b!931833 m!865919))

(declare-fun m!865921 () Bool)

(assert (=> bm!40584 m!865921))

(assert (=> b!931641 d!112971))

(declare-fun d!112973 () Bool)

(declare-fun get!14190 (Option!487) V!31689)

(assert (=> d!112973 (= (apply!806 lt!419467 k0!1099) (get!14190 (getValueByKey!481 (toList!6021 lt!419467) k0!1099)))))

(declare-fun bs!26173 () Bool)

(assert (= bs!26173 d!112973))

(assert (=> bs!26173 m!865851))

(assert (=> bs!26173 m!865851))

(declare-fun m!865923 () Bool)

(assert (=> bs!26173 m!865923))

(assert (=> b!931645 d!112973))

(declare-fun d!112975 () Bool)

(assert (=> d!112975 (= (validKeyInArray!0 k0!1099) (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!931634 d!112975))

(declare-fun d!112977 () Bool)

(assert (=> d!112977 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!79350 d!112977))

(declare-fun d!112979 () Bool)

(assert (=> d!112979 (= (array_inv!20962 _values!1231) (bvsge (size!27429 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!79350 d!112979))

(declare-fun d!112981 () Bool)

(assert (=> d!112981 (= (array_inv!20963 _keys!1487) (bvsge (size!27428 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!79350 d!112981))

(declare-fun b!931846 () Bool)

(declare-fun e!523347 () Bool)

(declare-fun e!523349 () Bool)

(assert (=> b!931846 (= e!523347 e!523349)))

(declare-fun c!96993 () Bool)

(assert (=> b!931846 (= c!96993 (validKeyInArray!0 (select (arr!26968 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun d!112983 () Bool)

(declare-fun res!627675 () Bool)

(declare-fun e!523348 () Bool)

(assert (=> d!112983 (=> res!627675 e!523348)))

(assert (=> d!112983 (= res!627675 (bvsge #b00000000000000000000000000000000 (size!27428 _keys!1487)))))

(assert (=> d!112983 (= (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19111) e!523348)))

(declare-fun b!931847 () Bool)

(assert (=> b!931847 (= e!523348 e!523347)))

(declare-fun res!627677 () Bool)

(assert (=> b!931847 (=> (not res!627677) (not e!523347))))

(declare-fun e!523346 () Bool)

(assert (=> b!931847 (= res!627677 (not e!523346))))

(declare-fun res!627676 () Bool)

(assert (=> b!931847 (=> (not res!627676) (not e!523346))))

(assert (=> b!931847 (= res!627676 (validKeyInArray!0 (select (arr!26968 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!931848 () Bool)

(declare-fun call!40590 () Bool)

(assert (=> b!931848 (= e!523349 call!40590)))

(declare-fun bm!40587 () Bool)

(assert (=> bm!40587 (= call!40590 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!96993 (Cons!19110 (select (arr!26968 _keys!1487) #b00000000000000000000000000000000) Nil!19111) Nil!19111)))))

(declare-fun b!931849 () Bool)

(assert (=> b!931849 (= e!523349 call!40590)))

(declare-fun b!931850 () Bool)

(declare-fun contains!5023 (List!19114 (_ BitVec 64)) Bool)

(assert (=> b!931850 (= e!523346 (contains!5023 Nil!19111 (select (arr!26968 _keys!1487) #b00000000000000000000000000000000)))))

(assert (= (and d!112983 (not res!627675)) b!931847))

(assert (= (and b!931847 res!627676) b!931850))

(assert (= (and b!931847 res!627677) b!931846))

(assert (= (and b!931846 c!96993) b!931848))

(assert (= (and b!931846 (not c!96993)) b!931849))

(assert (= (or b!931848 b!931849) bm!40587))

(assert (=> b!931846 m!865911))

(assert (=> b!931846 m!865911))

(assert (=> b!931846 m!865919))

(assert (=> b!931847 m!865911))

(assert (=> b!931847 m!865911))

(assert (=> b!931847 m!865919))

(assert (=> bm!40587 m!865911))

(declare-fun m!865925 () Bool)

(assert (=> bm!40587 m!865925))

(assert (=> b!931850 m!865911))

(assert (=> b!931850 m!865911))

(declare-fun m!865927 () Bool)

(assert (=> b!931850 m!865927))

(assert (=> b!931633 d!112983))

(declare-fun b!931857 () Bool)

(declare-fun e!523354 () Bool)

(assert (=> b!931857 (= e!523354 tp_is_empty!20043)))

(declare-fun condMapEmpty!31827 () Bool)

(declare-fun mapDefault!31827 () ValueCell!9540)

(assert (=> mapNonEmpty!31821 (= condMapEmpty!31827 (= mapRest!31821 ((as const (Array (_ BitVec 32) ValueCell!9540)) mapDefault!31827)))))

(declare-fun e!523355 () Bool)

(declare-fun mapRes!31827 () Bool)

(assert (=> mapNonEmpty!31821 (= tp!61047 (and e!523355 mapRes!31827))))

(declare-fun mapNonEmpty!31827 () Bool)

(declare-fun tp!61056 () Bool)

(assert (=> mapNonEmpty!31827 (= mapRes!31827 (and tp!61056 e!523354))))

(declare-fun mapRest!31827 () (Array (_ BitVec 32) ValueCell!9540))

(declare-fun mapKey!31827 () (_ BitVec 32))

(declare-fun mapValue!31827 () ValueCell!9540)

(assert (=> mapNonEmpty!31827 (= mapRest!31821 (store mapRest!31827 mapKey!31827 mapValue!31827))))

(declare-fun b!931858 () Bool)

(assert (=> b!931858 (= e!523355 tp_is_empty!20043)))

(declare-fun mapIsEmpty!31827 () Bool)

(assert (=> mapIsEmpty!31827 mapRes!31827))

(assert (= (and mapNonEmpty!31821 condMapEmpty!31827) mapIsEmpty!31827))

(assert (= (and mapNonEmpty!31821 (not condMapEmpty!31827)) mapNonEmpty!31827))

(assert (= (and mapNonEmpty!31827 ((_ is ValueCellFull!9540) mapValue!31827)) b!931857))

(assert (= (and mapNonEmpty!31821 ((_ is ValueCellFull!9540) mapDefault!31827)) b!931858))

(declare-fun m!865929 () Bool)

(assert (=> mapNonEmpty!31827 m!865929))

(declare-fun b_lambda!13895 () Bool)

(assert (= b_lambda!13891 (or (and start!79350 b_free!17535) b_lambda!13895)))

(declare-fun b_lambda!13897 () Bool)

(assert (= b_lambda!13893 (or (and start!79350 b_free!17535) b_lambda!13897)))

(declare-fun b_lambda!13899 () Bool)

(assert (= b_lambda!13889 (or (and start!79350 b_free!17535) b_lambda!13899)))

(declare-fun b_lambda!13901 () Bool)

(assert (= b_lambda!13887 (or (and start!79350 b_free!17535) b_lambda!13901)))

(check-sat (not b!931817) (not b!931754) (not b!931789) (not b_lambda!13899) (not b!931772) (not bm!40587) (not b!931814) (not b!931787) (not bm!40568) (not bm!40575) (not b!931846) (not b!931769) (not bm!40571) (not b!931751) (not b!931821) (not b!931847) (not b!931804) (not b!931736) (not b!931800) (not b!931799) (not b!931774) (not d!112959) (not b!931791) (not d!112951) (not d!112953) (not b!931761) (not mapNonEmpty!31827) (not b!931782) b_and!28653 (not bm!40578) (not b_lambda!13885) (not bm!40570) (not bm!40584) (not bm!40564) tp_is_empty!20043 (not b!931745) (not d!112949) (not bm!40561) (not bm!40577) (not b!931785) (not b_next!17535) (not b!931793) (not bm!40563) (not b!931832) (not b!931776) (not d!112973) (not b!931823) (not d!112957) (not d!112955) (not b!931806) (not b!931850) (not b!931792) (not d!112961) (not bm!40576) (not b!931808) (not bm!40562) (not b!931742) (not b!931833) (not b!931763) (not d!112965) (not b_lambda!13897) (not b!931732) (not b!931734) (not b!931819) (not b!931798) (not b_lambda!13901) (not b_lambda!13895) (not b!931749) (not bm!40569) (not d!112967) (not b!931802) (not b!931768) (not b!931747))
(check-sat b_and!28653 (not b_next!17535))
