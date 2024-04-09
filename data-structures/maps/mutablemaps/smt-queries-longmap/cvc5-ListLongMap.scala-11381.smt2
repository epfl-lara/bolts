; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132284 () Bool)

(assert start!132284)

(declare-fun b_free!31903 () Bool)

(declare-fun b_next!31903 () Bool)

(assert (=> start!132284 (= b_free!31903 (not b_next!31903))))

(declare-fun tp!111970 () Bool)

(declare-fun b_and!51347 () Bool)

(assert (=> start!132284 (= tp!111970 b_and!51347)))

(declare-fun b!1551432 () Bool)

(declare-fun e!863671 () Bool)

(declare-fun e!863672 () Bool)

(assert (=> b!1551432 (= e!863671 e!863672)))

(declare-fun res!1062502 () Bool)

(assert (=> b!1551432 (=> (not res!1062502) (not e!863672))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103515 0))(
  ( (array!103516 (arr!49952 (Array (_ BitVec 32) (_ BitVec 64))) (size!50503 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103515)

(assert (=> b!1551432 (= res!1062502 (bvslt from!762 (size!50503 _keys!618)))))

(declare-datatypes ((V!59349 0))(
  ( (V!59350 (val!19167 Int)) )
))
(declare-datatypes ((tuple2!24850 0))(
  ( (tuple2!24851 (_1!12435 (_ BitVec 64)) (_2!12435 V!59349)) )
))
(declare-datatypes ((List!36334 0))(
  ( (Nil!36331) (Cons!36330 (h!37776 tuple2!24850) (t!51053 List!36334)) )
))
(declare-datatypes ((ListLongMap!22471 0))(
  ( (ListLongMap!22472 (toList!11251 List!36334)) )
))
(declare-fun lt!668670 () ListLongMap!22471)

(declare-fun e!863678 () ListLongMap!22471)

(assert (=> b!1551432 (= lt!668670 e!863678)))

(declare-fun c!142727 () Bool)

(declare-fun lt!668675 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1551432 (= c!142727 (and (not lt!668675) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1551432 (= lt!668675 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1551433 () Bool)

(declare-fun call!71033 () ListLongMap!22471)

(declare-fun minValue!436 () V!59349)

(declare-fun +!4958 (ListLongMap!22471 tuple2!24850) ListLongMap!22471)

(assert (=> b!1551433 (= e!863678 (+!4958 call!71033 (tuple2!24851 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1551434 () Bool)

(declare-fun e!863675 () Bool)

(declare-fun tp_is_empty!38179 () Bool)

(assert (=> b!1551434 (= e!863675 tp_is_empty!38179)))

(declare-fun b!1551435 () Bool)

(declare-fun e!863673 () ListLongMap!22471)

(declare-fun call!71037 () ListLongMap!22471)

(assert (=> b!1551435 (= e!863673 call!71037)))

(declare-fun b!1551436 () Bool)

(declare-fun e!863677 () Bool)

(assert (=> b!1551436 (= e!863672 (not e!863677))))

(declare-fun res!1062504 () Bool)

(assert (=> b!1551436 (=> (not res!1062504) (not e!863677))))

(declare-fun lt!668673 () ListLongMap!22471)

(declare-fun contains!10121 (ListLongMap!22471 (_ BitVec 64)) Bool)

(assert (=> b!1551436 (= res!1062504 (contains!10121 lt!668673 (select (arr!49952 _keys!618) from!762)))))

(declare-fun lt!668671 () ListLongMap!22471)

(declare-fun lt!668672 () V!59349)

(declare-fun apply!1126 (ListLongMap!22471 (_ BitVec 64)) V!59349)

(assert (=> b!1551436 (= (apply!1126 lt!668671 (select (arr!49952 _keys!618) from!762)) lt!668672)))

(declare-fun zeroValue!436 () V!59349)

(declare-datatypes ((Unit!51603 0))(
  ( (Unit!51604) )
))
(declare-fun lt!668677 () Unit!51603)

(declare-fun addApplyDifferent!627 (ListLongMap!22471 (_ BitVec 64) V!59349 (_ BitVec 64)) Unit!51603)

(assert (=> b!1551436 (= lt!668677 (addApplyDifferent!627 lt!668673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49952 _keys!618) from!762)))))

(declare-fun lt!668676 () V!59349)

(assert (=> b!1551436 (= lt!668676 lt!668672)))

(assert (=> b!1551436 (= lt!668672 (apply!1126 lt!668673 (select (arr!49952 _keys!618) from!762)))))

(assert (=> b!1551436 (= lt!668676 (apply!1126 (+!4958 lt!668673 (tuple2!24851 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49952 _keys!618) from!762)))))

(declare-fun lt!668669 () Unit!51603)

(assert (=> b!1551436 (= lt!668669 (addApplyDifferent!627 lt!668673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49952 _keys!618) from!762)))))

(assert (=> b!1551436 (contains!10121 lt!668671 (select (arr!49952 _keys!618) from!762))))

(assert (=> b!1551436 (= lt!668671 (+!4958 lt!668673 (tuple2!24851 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!668674 () Unit!51603)

(declare-fun addStillContains!1294 (ListLongMap!22471 (_ BitVec 64) V!59349 (_ BitVec 64)) Unit!51603)

(assert (=> b!1551436 (= lt!668674 (addStillContains!1294 lt!668673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49952 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18179 0))(
  ( (ValueCellFull!18179 (v!21968 V!59349)) (EmptyCell!18179) )
))
(declare-datatypes ((array!103517 0))(
  ( (array!103518 (arr!49953 (Array (_ BitVec 32) ValueCell!18179)) (size!50504 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103517)

(declare-fun getCurrentListMapNoExtraKeys!6676 (array!103515 array!103517 (_ BitVec 32) (_ BitVec 32) V!59349 V!59349 (_ BitVec 32) Int) ListLongMap!22471)

(assert (=> b!1551436 (= lt!668673 (getCurrentListMapNoExtraKeys!6676 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!71030 () Bool)

(assert (=> bm!71030 (= call!71037 call!71033)))

(declare-fun b!1551437 () Bool)

(declare-fun res!1062501 () Bool)

(assert (=> b!1551437 (=> (not res!1062501) (not e!863671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103515 (_ BitVec 32)) Bool)

(assert (=> b!1551437 (= res!1062501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551438 () Bool)

(declare-fun res!1062498 () Bool)

(assert (=> b!1551438 (=> (not res!1062498) (not e!863671))))

(assert (=> b!1551438 (= res!1062498 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50503 _keys!618))))))

(declare-fun b!1551439 () Bool)

(declare-fun c!142728 () Bool)

(assert (=> b!1551439 (= c!142728 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668675))))

(declare-fun e!863670 () ListLongMap!22471)

(assert (=> b!1551439 (= e!863670 e!863673)))

(declare-fun b!1551440 () Bool)

(declare-fun call!71036 () ListLongMap!22471)

(assert (=> b!1551440 (= e!863673 call!71036)))

(declare-fun bm!71031 () Bool)

(declare-fun call!71034 () ListLongMap!22471)

(declare-fun call!71035 () ListLongMap!22471)

(assert (=> bm!71031 (= call!71034 call!71035)))

(declare-fun b!1551441 () Bool)

(declare-fun e!863669 () Bool)

(declare-fun mapRes!58981 () Bool)

(assert (=> b!1551441 (= e!863669 (and e!863675 mapRes!58981))))

(declare-fun condMapEmpty!58981 () Bool)

(declare-fun mapDefault!58981 () ValueCell!18179)

