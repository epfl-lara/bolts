; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132314 () Bool)

(assert start!132314)

(declare-fun b_free!31909 () Bool)

(declare-fun b_next!31909 () Bool)

(assert (=> start!132314 (= b_free!31909 (not b_next!31909))))

(declare-fun tp!111992 () Bool)

(declare-fun b_and!51357 () Bool)

(assert (=> start!132314 (= tp!111992 b_and!51357)))

(declare-fun b!1551688 () Bool)

(declare-fun e!863830 () Bool)

(declare-datatypes ((array!103529 0))(
  ( (array!103530 (arr!49958 (Array (_ BitVec 32) (_ BitVec 64))) (size!50509 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103529)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551688 (= e!863830 (validKeyInArray!0 (select (arr!49958 _keys!618) from!762)))))

(declare-fun b!1551689 () Bool)

(declare-datatypes ((V!59357 0))(
  ( (V!59358 (val!19170 Int)) )
))
(declare-datatypes ((tuple2!24856 0))(
  ( (tuple2!24857 (_1!12438 (_ BitVec 64)) (_2!12438 V!59357)) )
))
(declare-datatypes ((List!36338 0))(
  ( (Nil!36335) (Cons!36334 (h!37780 tuple2!24856) (t!51059 List!36338)) )
))
(declare-datatypes ((ListLongMap!22477 0))(
  ( (ListLongMap!22478 (toList!11254 List!36338)) )
))
(declare-fun e!863826 () ListLongMap!22477)

(declare-fun call!71088 () ListLongMap!22477)

(assert (=> b!1551689 (= e!863826 call!71088)))

(declare-fun b!1551690 () Bool)

(declare-fun res!1062613 () Bool)

(declare-fun e!863827 () Bool)

(assert (=> b!1551690 (=> (not res!1062613) (not e!863827))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103529 (_ BitVec 32)) Bool)

(assert (=> b!1551690 (= res!1062613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58993 () Bool)

(declare-fun mapRes!58993 () Bool)

(declare-fun tp!111991 () Bool)

(declare-fun e!863825 () Bool)

(assert (=> mapNonEmpty!58993 (= mapRes!58993 (and tp!111991 e!863825))))

(declare-datatypes ((ValueCell!18182 0))(
  ( (ValueCellFull!18182 (v!21972 V!59357)) (EmptyCell!18182) )
))
(declare-fun mapValue!58993 () ValueCell!18182)

(declare-fun mapRest!58993 () (Array (_ BitVec 32) ValueCell!18182))

(declare-datatypes ((array!103531 0))(
  ( (array!103532 (arr!49959 (Array (_ BitVec 32) ValueCell!18182)) (size!50510 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103531)

(declare-fun mapKey!58993 () (_ BitVec 32))

(assert (=> mapNonEmpty!58993 (= (arr!49959 _values!470) (store mapRest!58993 mapKey!58993 mapValue!58993))))

(declare-fun b!1551691 () Bool)

(declare-fun res!1062616 () Bool)

(assert (=> b!1551691 (=> (not res!1062616) (not e!863827))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1551691 (= res!1062616 (and (= (size!50510 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50509 _keys!618) (size!50510 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551692 () Bool)

(declare-fun tp_is_empty!38185 () Bool)

(assert (=> b!1551692 (= e!863825 tp_is_empty!38185)))

(declare-fun b!1551693 () Bool)

(declare-datatypes ((Unit!51609 0))(
  ( (Unit!51610) )
))
(declare-fun e!863829 () Unit!51609)

(declare-fun lt!668831 () Unit!51609)

(assert (=> b!1551693 (= e!863829 lt!668831)))

(declare-fun zeroValue!436 () V!59357)

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59357)

(declare-fun lt!668829 () ListLongMap!22477)

(declare-fun getCurrentListMapNoExtraKeys!6678 (array!103529 array!103531 (_ BitVec 32) (_ BitVec 32) V!59357 V!59357 (_ BitVec 32) Int) ListLongMap!22477)

(assert (=> b!1551693 (= lt!668829 (getCurrentListMapNoExtraKeys!6678 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!668830 () Unit!51609)

(declare-fun addStillContains!1296 (ListLongMap!22477 (_ BitVec 64) V!59357 (_ BitVec 64)) Unit!51609)

(assert (=> b!1551693 (= lt!668830 (addStillContains!1296 lt!668829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49958 _keys!618) from!762)))))

(declare-fun lt!668837 () ListLongMap!22477)

(declare-fun +!4961 (ListLongMap!22477 tuple2!24856) ListLongMap!22477)

(assert (=> b!1551693 (= lt!668837 (+!4961 lt!668829 (tuple2!24857 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10125 (ListLongMap!22477 (_ BitVec 64)) Bool)

(assert (=> b!1551693 (contains!10125 lt!668837 (select (arr!49958 _keys!618) from!762))))

(declare-fun addApplyDifferent!629 (ListLongMap!22477 (_ BitVec 64) V!59357 (_ BitVec 64)) Unit!51609)

(assert (=> b!1551693 (= lt!668831 (addApplyDifferent!629 lt!668829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49958 _keys!618) from!762)))))

(declare-fun lt!668836 () V!59357)

(declare-fun apply!1128 (ListLongMap!22477 (_ BitVec 64)) V!59357)

(assert (=> b!1551693 (= lt!668836 (apply!1128 (+!4961 lt!668829 (tuple2!24857 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49958 _keys!618) from!762)))))

(declare-fun lt!668833 () V!59357)

(assert (=> b!1551693 (= lt!668833 (apply!1128 lt!668829 (select (arr!49958 _keys!618) from!762)))))

(assert (=> b!1551693 (= lt!668836 lt!668833)))

(declare-fun lt!668832 () Unit!51609)

(assert (=> b!1551693 (= lt!668832 (addApplyDifferent!629 lt!668829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49958 _keys!618) from!762)))))

(assert (=> b!1551693 (= (apply!1128 lt!668837 (select (arr!49958 _keys!618) from!762)) lt!668833)))

(declare-fun bm!71084 () Bool)

(declare-fun call!71087 () ListLongMap!22477)

(assert (=> bm!71084 (= call!71087 (getCurrentListMapNoExtraKeys!6678 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58993 () Bool)

(assert (=> mapIsEmpty!58993 mapRes!58993))

(declare-fun bm!71085 () Bool)

(declare-fun call!71091 () ListLongMap!22477)

(assert (=> bm!71085 (= call!71088 call!71091)))

(declare-fun b!1551695 () Bool)

(assert (=> b!1551695 (= e!863827 false)))

(declare-fun lt!668838 () Unit!51609)

(assert (=> b!1551695 (= lt!668838 e!863829)))

(declare-fun c!142778 () Bool)

(assert (=> b!1551695 (= c!142778 e!863830)))

(declare-fun res!1062615 () Bool)

(assert (=> b!1551695 (=> (not res!1062615) (not e!863830))))

(assert (=> b!1551695 (= res!1062615 (bvslt from!762 (size!50509 _keys!618)))))

(declare-fun lt!668834 () ListLongMap!22477)

(declare-fun e!863832 () ListLongMap!22477)

(assert (=> b!1551695 (= lt!668834 e!863832)))

(declare-fun c!142779 () Bool)

(declare-fun lt!668835 () Bool)

(assert (=> b!1551695 (= c!142779 (and (not lt!668835) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1551695 (= lt!668835 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1551696 () Bool)

(declare-fun e!863831 () ListLongMap!22477)

(assert (=> b!1551696 (= e!863832 e!863831)))

(declare-fun c!142781 () Bool)

(assert (=> b!1551696 (= c!142781 (and (not lt!668835) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1551697 () Bool)

(assert (=> b!1551697 (= e!863831 call!71088)))

(declare-fun b!1551698 () Bool)

(declare-fun e!863828 () Bool)

(declare-fun e!863834 () Bool)

(assert (=> b!1551698 (= e!863828 (and e!863834 mapRes!58993))))

(declare-fun condMapEmpty!58993 () Bool)

(declare-fun mapDefault!58993 () ValueCell!18182)

