; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131918 () Bool)

(assert start!131918)

(declare-fun b_free!31599 () Bool)

(declare-fun b_next!31599 () Bool)

(assert (=> start!131918 (= b_free!31599 (not b_next!31599))))

(declare-fun tp!111049 () Bool)

(declare-fun b_and!51019 () Bool)

(assert (=> start!131918 (= tp!111049 b_and!51019)))

(declare-fun b!1543842 () Bool)

(declare-fun e!859342 () Bool)

(assert (=> b!1543842 (= e!859342 false)))

(declare-datatypes ((V!58943 0))(
  ( (V!58944 (val!19015 Int)) )
))
(declare-datatypes ((tuple2!24560 0))(
  ( (tuple2!24561 (_1!12290 (_ BitVec 64)) (_2!12290 V!58943)) )
))
(declare-datatypes ((List!36084 0))(
  ( (Nil!36081) (Cons!36080 (h!37526 tuple2!24560) (t!50785 List!36084)) )
))
(declare-datatypes ((ListLongMap!22181 0))(
  ( (ListLongMap!22182 (toList!11106 List!36084)) )
))
(declare-fun lt!665993 () ListLongMap!22181)

(declare-fun e!859338 () ListLongMap!22181)

(assert (=> b!1543842 (= lt!665993 e!859338)))

(declare-fun c!141260 () Bool)

(declare-fun lt!665992 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543842 (= c!141260 (and (not lt!665992) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1543842 (= lt!665992 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!436 () V!58943)

(declare-fun call!68720 () ListLongMap!22181)

(declare-fun call!68721 () ListLongMap!22181)

(declare-fun c!141258 () Bool)

(declare-fun bm!68714 () Bool)

(declare-fun minValue!436 () V!58943)

(declare-fun call!68717 () ListLongMap!22181)

(declare-fun call!68719 () ListLongMap!22181)

(declare-fun +!4844 (ListLongMap!22181 tuple2!24560) ListLongMap!22181)

(assert (=> bm!68714 (= call!68717 (+!4844 (ite c!141260 call!68720 (ite c!141258 call!68719 call!68721)) (ite (or c!141260 c!141258) (tuple2!24561 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24561 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1543843 () Bool)

(declare-fun res!1059262 () Bool)

(assert (=> b!1543843 (=> (not res!1059262) (not e!859342))))

(declare-datatypes ((array!102925 0))(
  ( (array!102926 (arr!49660 (Array (_ BitVec 32) (_ BitVec 64))) (size!50211 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102925)

(declare-datatypes ((List!36085 0))(
  ( (Nil!36082) (Cons!36081 (h!37527 (_ BitVec 64)) (t!50786 List!36085)) )
))
(declare-fun arrayNoDuplicates!0 (array!102925 (_ BitVec 32) List!36085) Bool)

(assert (=> b!1543843 (= res!1059262 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36082))))

(declare-fun b!1543844 () Bool)

(declare-fun e!859344 () Bool)

(declare-fun tp_is_empty!37875 () Bool)

(assert (=> b!1543844 (= e!859344 tp_is_empty!37875)))

(declare-fun b!1543845 () Bool)

(declare-fun e!859345 () ListLongMap!22181)

(assert (=> b!1543845 (= e!859338 e!859345)))

(assert (=> b!1543845 (= c!141258 (and (not lt!665992) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1543846 () Bool)

(declare-fun e!859339 () Bool)

(declare-fun e!859341 () Bool)

(declare-fun mapRes!58516 () Bool)

(assert (=> b!1543846 (= e!859339 (and e!859341 mapRes!58516))))

(declare-fun condMapEmpty!58516 () Bool)

(declare-datatypes ((ValueCell!18027 0))(
  ( (ValueCellFull!18027 (v!21813 V!58943)) (EmptyCell!18027) )
))
(declare-datatypes ((array!102927 0))(
  ( (array!102928 (arr!49661 (Array (_ BitVec 32) ValueCell!18027)) (size!50212 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102927)

(declare-fun mapDefault!58516 () ValueCell!18027)

(assert (=> b!1543846 (= condMapEmpty!58516 (= (arr!49661 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18027)) mapDefault!58516)))))

(declare-fun b!1543847 () Bool)

(declare-fun res!1059260 () Bool)

(assert (=> b!1543847 (=> (not res!1059260) (not e!859342))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102925 (_ BitVec 32)) Bool)

(assert (=> b!1543847 (= res!1059260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543848 () Bool)

(declare-fun res!1059261 () Bool)

(assert (=> b!1543848 (=> (not res!1059261) (not e!859342))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1543848 (= res!1059261 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50211 _keys!618))))))

(declare-fun bm!68716 () Bool)

(assert (=> bm!68716 (= call!68719 call!68720)))

(declare-fun mapNonEmpty!58516 () Bool)

(declare-fun tp!111050 () Bool)

(assert (=> mapNonEmpty!58516 (= mapRes!58516 (and tp!111050 e!859344))))

(declare-fun mapRest!58516 () (Array (_ BitVec 32) ValueCell!18027))

(declare-fun mapValue!58516 () ValueCell!18027)

(declare-fun mapKey!58516 () (_ BitVec 32))

(assert (=> mapNonEmpty!58516 (= (arr!49661 _values!470) (store mapRest!58516 mapKey!58516 mapValue!58516))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68717 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6558 (array!102925 array!102927 (_ BitVec 32) (_ BitVec 32) V!58943 V!58943 (_ BitVec 32) Int) ListLongMap!22181)

(assert (=> bm!68717 (= call!68720 (getCurrentListMapNoExtraKeys!6558 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1543849 () Bool)

(assert (=> b!1543849 (= e!859341 tp_is_empty!37875)))

(declare-fun mapIsEmpty!58516 () Bool)

(assert (=> mapIsEmpty!58516 mapRes!58516))

(declare-fun b!1543850 () Bool)

(declare-fun e!859343 () ListLongMap!22181)

(declare-fun call!68718 () ListLongMap!22181)

(assert (=> b!1543850 (= e!859343 call!68718)))

(declare-fun b!1543851 () Bool)

(declare-fun res!1059259 () Bool)

(assert (=> b!1543851 (=> (not res!1059259) (not e!859342))))

(assert (=> b!1543851 (= res!1059259 (and (= (size!50212 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50211 _keys!618) (size!50212 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543852 () Bool)

(declare-fun c!141259 () Bool)

(assert (=> b!1543852 (= c!141259 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!665992))))

(assert (=> b!1543852 (= e!859345 e!859343)))

(declare-fun res!1059263 () Bool)

(assert (=> start!131918 (=> (not res!1059263) (not e!859342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131918 (= res!1059263 (validMask!0 mask!926))))

(assert (=> start!131918 e!859342))

(declare-fun array_inv!38553 (array!102925) Bool)

(assert (=> start!131918 (array_inv!38553 _keys!618)))

(assert (=> start!131918 tp_is_empty!37875))

(assert (=> start!131918 true))

(assert (=> start!131918 tp!111049))

(declare-fun array_inv!38554 (array!102927) Bool)

(assert (=> start!131918 (and (array_inv!38554 _values!470) e!859339)))

(declare-fun bm!68715 () Bool)

(assert (=> bm!68715 (= call!68718 call!68717)))

(declare-fun b!1543853 () Bool)

(assert (=> b!1543853 (= e!859343 call!68721)))

(declare-fun b!1543854 () Bool)

(assert (=> b!1543854 (= e!859345 call!68718)))

(declare-fun b!1543855 () Bool)

(assert (=> b!1543855 (= e!859338 (+!4844 call!68717 (tuple2!24561 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!68718 () Bool)

(assert (=> bm!68718 (= call!68721 call!68719)))

(assert (= (and start!131918 res!1059263) b!1543851))

(assert (= (and b!1543851 res!1059259) b!1543847))

(assert (= (and b!1543847 res!1059260) b!1543843))

(assert (= (and b!1543843 res!1059262) b!1543848))

(assert (= (and b!1543848 res!1059261) b!1543842))

(assert (= (and b!1543842 c!141260) b!1543855))

(assert (= (and b!1543842 (not c!141260)) b!1543845))

(assert (= (and b!1543845 c!141258) b!1543854))

(assert (= (and b!1543845 (not c!141258)) b!1543852))

(assert (= (and b!1543852 c!141259) b!1543850))

(assert (= (and b!1543852 (not c!141259)) b!1543853))

(assert (= (or b!1543850 b!1543853) bm!68718))

(assert (= (or b!1543854 bm!68718) bm!68716))

(assert (= (or b!1543854 b!1543850) bm!68715))

(assert (= (or b!1543855 bm!68716) bm!68717))

(assert (= (or b!1543855 bm!68715) bm!68714))

(assert (= (and b!1543846 condMapEmpty!58516) mapIsEmpty!58516))

(assert (= (and b!1543846 (not condMapEmpty!58516)) mapNonEmpty!58516))

(get-info :version)

(assert (= (and mapNonEmpty!58516 ((_ is ValueCellFull!18027) mapValue!58516)) b!1543844))

(assert (= (and b!1543846 ((_ is ValueCellFull!18027) mapDefault!58516)) b!1543849))

(assert (= start!131918 b!1543846))

(declare-fun m!1425001 () Bool)

(assert (=> b!1543843 m!1425001))

(declare-fun m!1425003 () Bool)

(assert (=> mapNonEmpty!58516 m!1425003))

(declare-fun m!1425005 () Bool)

(assert (=> b!1543847 m!1425005))

(declare-fun m!1425007 () Bool)

(assert (=> bm!68717 m!1425007))

(declare-fun m!1425009 () Bool)

(assert (=> start!131918 m!1425009))

(declare-fun m!1425011 () Bool)

(assert (=> start!131918 m!1425011))

(declare-fun m!1425013 () Bool)

(assert (=> start!131918 m!1425013))

(declare-fun m!1425015 () Bool)

(assert (=> b!1543855 m!1425015))

(declare-fun m!1425017 () Bool)

(assert (=> bm!68714 m!1425017))

(check-sat (not bm!68714) b_and!51019 (not start!131918) (not b!1543843) (not bm!68717) (not b_next!31599) (not b!1543855) (not mapNonEmpty!58516) (not b!1543847) tp_is_empty!37875)
(check-sat b_and!51019 (not b_next!31599))
