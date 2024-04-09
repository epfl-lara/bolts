; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78858 () Bool)

(assert start!78858)

(declare-fun b_free!17043 () Bool)

(declare-fun b_next!17043 () Bool)

(assert (=> start!78858 (= b_free!17043 (not b_next!17043))))

(declare-fun tp!59571 () Bool)

(declare-fun b_and!27841 () Bool)

(assert (=> start!78858 (= tp!59571 b_and!27841)))

(declare-fun b!920382 () Bool)

(declare-fun res!620770 () Bool)

(declare-fun e!516587 () Bool)

(assert (=> b!920382 (=> (not res!620770) (not e!516587))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55094 0))(
  ( (array!55095 (arr!26488 (Array (_ BitVec 32) (_ BitVec 64))) (size!26948 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55094)

(assert (=> b!920382 (= res!620770 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26948 _keys!1487))))))

(declare-fun b!920383 () Bool)

(declare-fun res!620774 () Bool)

(declare-fun e!516592 () Bool)

(assert (=> b!920383 (=> res!620774 e!516592)))

(declare-datatypes ((List!18710 0))(
  ( (Nil!18707) (Cons!18706 (h!19852 (_ BitVec 64)) (t!26491 List!18710)) )
))
(declare-fun noDuplicate!1337 (List!18710) Bool)

(assert (=> b!920383 (= res!620774 (not (noDuplicate!1337 Nil!18707)))))

(declare-fun b!920384 () Bool)

(declare-fun res!620777 () Bool)

(declare-fun e!516594 () Bool)

(assert (=> b!920384 (=> (not res!620777) (not e!516594))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920384 (= res!620777 (validKeyInArray!0 k0!1099))))

(declare-fun b!920385 () Bool)

(declare-fun e!516590 () Bool)

(declare-fun e!516593 () Bool)

(declare-fun mapRes!31083 () Bool)

(assert (=> b!920385 (= e!516590 (and e!516593 mapRes!31083))))

(declare-fun condMapEmpty!31083 () Bool)

(declare-datatypes ((V!31033 0))(
  ( (V!31034 (val!9826 Int)) )
))
(declare-datatypes ((ValueCell!9294 0))(
  ( (ValueCellFull!9294 (v!12344 V!31033)) (EmptyCell!9294) )
))
(declare-datatypes ((array!55096 0))(
  ( (array!55097 (arr!26489 (Array (_ BitVec 32) ValueCell!9294)) (size!26949 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55096)

(declare-fun mapDefault!31083 () ValueCell!9294)

(assert (=> b!920385 (= condMapEmpty!31083 (= (arr!26489 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9294)) mapDefault!31083)))))

(declare-fun b!920386 () Bool)

(declare-fun res!620771 () Bool)

(assert (=> b!920386 (=> res!620771 e!516592)))

(declare-fun contains!4818 (List!18710 (_ BitVec 64)) Bool)

(assert (=> b!920386 (= res!620771 (contains!4818 Nil!18707 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920387 () Bool)

(declare-fun res!620773 () Bool)

(assert (=> b!920387 (=> (not res!620773) (not e!516594))))

(assert (=> b!920387 (= res!620773 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920388 () Bool)

(assert (=> b!920388 (= e!516592 true)))

(declare-fun lt!413208 () Bool)

(assert (=> b!920388 (= lt!413208 (contains!4818 Nil!18707 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920389 () Bool)

(assert (=> b!920389 (= e!516587 e!516594)))

(declare-fun res!620765 () Bool)

(assert (=> b!920389 (=> (not res!620765) (not e!516594))))

(declare-datatypes ((tuple2!12868 0))(
  ( (tuple2!12869 (_1!6444 (_ BitVec 64)) (_2!6444 V!31033)) )
))
(declare-datatypes ((List!18711 0))(
  ( (Nil!18708) (Cons!18707 (h!19853 tuple2!12868) (t!26492 List!18711)) )
))
(declare-datatypes ((ListLongMap!11579 0))(
  ( (ListLongMap!11580 (toList!5805 List!18711)) )
))
(declare-fun lt!413207 () ListLongMap!11579)

(declare-fun contains!4819 (ListLongMap!11579 (_ BitVec 64)) Bool)

(assert (=> b!920389 (= res!620765 (contains!4819 lt!413207 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31033)

(declare-fun minValue!1173 () V!31033)

(declare-fun getCurrentListMap!3027 (array!55094 array!55096 (_ BitVec 32) (_ BitVec 32) V!31033 V!31033 (_ BitVec 32) Int) ListLongMap!11579)

(assert (=> b!920389 (= lt!413207 (getCurrentListMap!3027 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920390 () Bool)

(declare-fun tp_is_empty!19551 () Bool)

(assert (=> b!920390 (= e!516593 tp_is_empty!19551)))

(declare-fun b!920391 () Bool)

(declare-fun e!516589 () Bool)

(declare-fun arrayContainsKey!0 (array!55094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920391 (= e!516589 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!920392 () Bool)

(declare-fun e!516588 () Bool)

(assert (=> b!920392 (= e!516588 tp_is_empty!19551)))

(declare-fun b!920393 () Bool)

(declare-fun e!516586 () Bool)

(assert (=> b!920393 (= e!516586 (not e!516592))))

(declare-fun res!620776 () Bool)

(assert (=> b!920393 (=> res!620776 e!516592)))

(assert (=> b!920393 (= res!620776 (or (bvsge (size!26948 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26948 _keys!1487))))))

(assert (=> b!920393 e!516589))

(declare-fun c!95984 () Bool)

(assert (=> b!920393 (= c!95984 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31055 0))(
  ( (Unit!31056) )
))
(declare-fun lt!413200 () Unit!31055)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!170 (array!55094 array!55096 (_ BitVec 32) (_ BitVec 32) V!31033 V!31033 (_ BitVec 64) (_ BitVec 32) Int) Unit!31055)

(assert (=> b!920393 (= lt!413200 (lemmaListMapContainsThenArrayContainsFrom!170 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55094 (_ BitVec 32) List!18710) Bool)

(assert (=> b!920393 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18707)))

(declare-fun lt!413202 () Unit!31055)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55094 (_ BitVec 32) (_ BitVec 32)) Unit!31055)

(assert (=> b!920393 (= lt!413202 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413205 () tuple2!12868)

(declare-fun +!2624 (ListLongMap!11579 tuple2!12868) ListLongMap!11579)

(assert (=> b!920393 (contains!4819 (+!2624 lt!413207 lt!413205) k0!1099)))

(declare-fun lt!413204 () V!31033)

(declare-fun lt!413203 () Unit!31055)

(declare-fun lt!413201 () (_ BitVec 64))

(declare-fun addStillContains!386 (ListLongMap!11579 (_ BitVec 64) V!31033 (_ BitVec 64)) Unit!31055)

(assert (=> b!920393 (= lt!413203 (addStillContains!386 lt!413207 lt!413201 lt!413204 k0!1099))))

(assert (=> b!920393 (= (getCurrentListMap!3027 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2624 (getCurrentListMap!3027 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413205))))

(assert (=> b!920393 (= lt!413205 (tuple2!12869 lt!413201 lt!413204))))

(declare-fun get!13917 (ValueCell!9294 V!31033) V!31033)

(declare-fun dynLambda!1463 (Int (_ BitVec 64)) V!31033)

(assert (=> b!920393 (= lt!413204 (get!13917 (select (arr!26489 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1463 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413206 () Unit!31055)

(declare-fun lemmaListMapRecursiveValidKeyArray!59 (array!55094 array!55096 (_ BitVec 32) (_ BitVec 32) V!31033 V!31033 (_ BitVec 32) Int) Unit!31055)

(assert (=> b!920393 (= lt!413206 (lemmaListMapRecursiveValidKeyArray!59 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!620775 () Bool)

(assert (=> start!78858 (=> (not res!620775) (not e!516587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78858 (= res!620775 (validMask!0 mask!1881))))

(assert (=> start!78858 e!516587))

(assert (=> start!78858 true))

(assert (=> start!78858 tp_is_empty!19551))

(declare-fun array_inv!20628 (array!55096) Bool)

(assert (=> start!78858 (and (array_inv!20628 _values!1231) e!516590)))

(assert (=> start!78858 tp!59571))

(declare-fun array_inv!20629 (array!55094) Bool)

(assert (=> start!78858 (array_inv!20629 _keys!1487)))

(declare-fun b!920381 () Bool)

(declare-fun res!620772 () Bool)

(assert (=> b!920381 (=> (not res!620772) (not e!516587))))

(assert (=> b!920381 (= res!620772 (and (= (size!26949 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26948 _keys!1487) (size!26949 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920394 () Bool)

(declare-fun res!620768 () Bool)

(assert (=> b!920394 (=> (not res!620768) (not e!516587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55094 (_ BitVec 32)) Bool)

(assert (=> b!920394 (= res!620768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920395 () Bool)

(assert (=> b!920395 (= e!516594 e!516586)))

(declare-fun res!620766 () Bool)

(assert (=> b!920395 (=> (not res!620766) (not e!516586))))

(assert (=> b!920395 (= res!620766 (validKeyInArray!0 lt!413201))))

(assert (=> b!920395 (= lt!413201 (select (arr!26488 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!31083 () Bool)

(assert (=> mapIsEmpty!31083 mapRes!31083))

(declare-fun mapNonEmpty!31083 () Bool)

(declare-fun tp!59570 () Bool)

(assert (=> mapNonEmpty!31083 (= mapRes!31083 (and tp!59570 e!516588))))

(declare-fun mapValue!31083 () ValueCell!9294)

(declare-fun mapKey!31083 () (_ BitVec 32))

(declare-fun mapRest!31083 () (Array (_ BitVec 32) ValueCell!9294))

(assert (=> mapNonEmpty!31083 (= (arr!26489 _values!1231) (store mapRest!31083 mapKey!31083 mapValue!31083))))

(declare-fun b!920396 () Bool)

(declare-fun res!620767 () Bool)

(assert (=> b!920396 (=> (not res!620767) (not e!516587))))

(assert (=> b!920396 (= res!620767 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18707))))

(declare-fun b!920397 () Bool)

(declare-fun res!620769 () Bool)

(assert (=> b!920397 (=> (not res!620769) (not e!516594))))

(declare-fun v!791 () V!31033)

(declare-fun apply!616 (ListLongMap!11579 (_ BitVec 64)) V!31033)

(assert (=> b!920397 (= res!620769 (= (apply!616 lt!413207 k0!1099) v!791))))

(declare-fun b!920398 () Bool)

(assert (=> b!920398 (= e!516589 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!78858 res!620775) b!920381))

(assert (= (and b!920381 res!620772) b!920394))

(assert (= (and b!920394 res!620768) b!920396))

(assert (= (and b!920396 res!620767) b!920382))

(assert (= (and b!920382 res!620770) b!920389))

(assert (= (and b!920389 res!620765) b!920397))

(assert (= (and b!920397 res!620769) b!920387))

(assert (= (and b!920387 res!620773) b!920384))

(assert (= (and b!920384 res!620777) b!920395))

(assert (= (and b!920395 res!620766) b!920393))

(assert (= (and b!920393 c!95984) b!920391))

(assert (= (and b!920393 (not c!95984)) b!920398))

(assert (= (and b!920393 (not res!620776)) b!920383))

(assert (= (and b!920383 (not res!620774)) b!920386))

(assert (= (and b!920386 (not res!620771)) b!920388))

(assert (= (and b!920385 condMapEmpty!31083) mapIsEmpty!31083))

(assert (= (and b!920385 (not condMapEmpty!31083)) mapNonEmpty!31083))

(get-info :version)

(assert (= (and mapNonEmpty!31083 ((_ is ValueCellFull!9294) mapValue!31083)) b!920392))

(assert (= (and b!920385 ((_ is ValueCellFull!9294) mapDefault!31083)) b!920390))

(assert (= start!78858 b!920385))

(declare-fun b_lambda!13575 () Bool)

(assert (=> (not b_lambda!13575) (not b!920393)))

(declare-fun t!26490 () Bool)

(declare-fun tb!5631 () Bool)

(assert (=> (and start!78858 (= defaultEntry!1235 defaultEntry!1235) t!26490) tb!5631))

(declare-fun result!11077 () Bool)

(assert (=> tb!5631 (= result!11077 tp_is_empty!19551)))

(assert (=> b!920393 t!26490))

(declare-fun b_and!27843 () Bool)

(assert (= b_and!27841 (and (=> t!26490 result!11077) b_and!27843)))

(declare-fun m!854411 () Bool)

(assert (=> b!920384 m!854411))

(declare-fun m!854413 () Bool)

(assert (=> mapNonEmpty!31083 m!854413))

(declare-fun m!854415 () Bool)

(assert (=> start!78858 m!854415))

(declare-fun m!854417 () Bool)

(assert (=> start!78858 m!854417))

(declare-fun m!854419 () Bool)

(assert (=> start!78858 m!854419))

(declare-fun m!854421 () Bool)

(assert (=> b!920395 m!854421))

(declare-fun m!854423 () Bool)

(assert (=> b!920395 m!854423))

(declare-fun m!854425 () Bool)

(assert (=> b!920383 m!854425))

(declare-fun m!854427 () Bool)

(assert (=> b!920388 m!854427))

(declare-fun m!854429 () Bool)

(assert (=> b!920393 m!854429))

(declare-fun m!854431 () Bool)

(assert (=> b!920393 m!854431))

(assert (=> b!920393 m!854429))

(declare-fun m!854433 () Bool)

(assert (=> b!920393 m!854433))

(declare-fun m!854435 () Bool)

(assert (=> b!920393 m!854435))

(declare-fun m!854437 () Bool)

(assert (=> b!920393 m!854437))

(assert (=> b!920393 m!854435))

(assert (=> b!920393 m!854437))

(declare-fun m!854439 () Bool)

(assert (=> b!920393 m!854439))

(declare-fun m!854441 () Bool)

(assert (=> b!920393 m!854441))

(declare-fun m!854443 () Bool)

(assert (=> b!920393 m!854443))

(declare-fun m!854445 () Bool)

(assert (=> b!920393 m!854445))

(declare-fun m!854447 () Bool)

(assert (=> b!920393 m!854447))

(declare-fun m!854449 () Bool)

(assert (=> b!920393 m!854449))

(declare-fun m!854451 () Bool)

(assert (=> b!920393 m!854451))

(assert (=> b!920393 m!854449))

(declare-fun m!854453 () Bool)

(assert (=> b!920393 m!854453))

(declare-fun m!854455 () Bool)

(assert (=> b!920386 m!854455))

(declare-fun m!854457 () Bool)

(assert (=> b!920394 m!854457))

(declare-fun m!854459 () Bool)

(assert (=> b!920391 m!854459))

(declare-fun m!854461 () Bool)

(assert (=> b!920389 m!854461))

(declare-fun m!854463 () Bool)

(assert (=> b!920389 m!854463))

(declare-fun m!854465 () Bool)

(assert (=> b!920397 m!854465))

(declare-fun m!854467 () Bool)

(assert (=> b!920396 m!854467))

(check-sat (not b!920388) (not b!920384) (not b_next!17043) (not mapNonEmpty!31083) (not b!920391) tp_is_empty!19551 (not b!920396) (not b!920383) (not b_lambda!13575) (not b!920386) (not b!920395) (not b!920397) (not b!920389) (not b!920393) b_and!27843 (not b!920394) (not start!78858))
(check-sat b_and!27843 (not b_next!17043))
