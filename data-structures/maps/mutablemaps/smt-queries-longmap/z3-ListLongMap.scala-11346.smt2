; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132014 () Bool)

(assert start!132014)

(declare-fun b_free!31695 () Bool)

(declare-fun b_next!31695 () Bool)

(assert (=> start!132014 (= b_free!31695 (not b_next!31695))))

(declare-fun tp!111338 () Bool)

(declare-fun b_and!51115 () Bool)

(assert (=> start!132014 (= tp!111338 b_and!51115)))

(declare-fun bm!69434 () Bool)

(declare-datatypes ((V!59071 0))(
  ( (V!59072 (val!19063 Int)) )
))
(declare-datatypes ((tuple2!24652 0))(
  ( (tuple2!24653 (_1!12336 (_ BitVec 64)) (_2!12336 V!59071)) )
))
(declare-datatypes ((List!36164 0))(
  ( (Nil!36161) (Cons!36160 (h!37606 tuple2!24652) (t!50865 List!36164)) )
))
(declare-datatypes ((ListLongMap!22273 0))(
  ( (ListLongMap!22274 (toList!11152 List!36164)) )
))
(declare-fun call!69441 () ListLongMap!22273)

(declare-fun call!69439 () ListLongMap!22273)

(assert (=> bm!69434 (= call!69441 call!69439)))

(declare-fun b!1545994 () Bool)

(declare-fun res!1060121 () Bool)

(declare-fun e!860564 () Bool)

(assert (=> b!1545994 (=> (not res!1060121) (not e!860564))))

(declare-datatypes ((array!103111 0))(
  ( (array!103112 (arr!49753 (Array (_ BitVec 32) (_ BitVec 64))) (size!50304 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103111)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103111 (_ BitVec 32)) Bool)

(assert (=> b!1545994 (= res!1060121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58660 () Bool)

(declare-fun mapRes!58660 () Bool)

(assert (=> mapIsEmpty!58660 mapRes!58660))

(declare-fun zeroValue!436 () V!59071)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18075 0))(
  ( (ValueCellFull!18075 (v!21861 V!59071)) (EmptyCell!18075) )
))
(declare-datatypes ((array!103113 0))(
  ( (array!103114 (arr!49754 (Array (_ BitVec 32) ValueCell!18075)) (size!50305 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103113)

(declare-fun minValue!436 () V!59071)

(declare-fun bm!69435 () Bool)

(declare-fun call!69438 () ListLongMap!22273)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6599 (array!103111 array!103113 (_ BitVec 32) (_ BitVec 32) V!59071 V!59071 (_ BitVec 32) Int) ListLongMap!22273)

(assert (=> bm!69435 (= call!69438 (getCurrentListMapNoExtraKeys!6599 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545996 () Bool)

(declare-fun res!1060119 () Bool)

(assert (=> b!1545996 (=> (not res!1060119) (not e!860564))))

(assert (=> b!1545996 (= res!1060119 (and (= (size!50305 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50304 _keys!618) (size!50305 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545997 () Bool)

(declare-fun e!860563 () ListLongMap!22273)

(declare-fun call!69440 () ListLongMap!22273)

(declare-fun +!4880 (ListLongMap!22273 tuple2!24652) ListLongMap!22273)

(assert (=> b!1545997 (= e!860563 (+!4880 call!69440 (tuple2!24653 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!69436 () Bool)

(declare-fun c!141690 () Bool)

(declare-fun c!141692 () Bool)

(assert (=> bm!69436 (= call!69440 (+!4880 (ite c!141692 call!69438 (ite c!141690 call!69439 call!69441)) (ite (or c!141692 c!141690) (tuple2!24653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24653 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapNonEmpty!58660 () Bool)

(declare-fun tp!111337 () Bool)

(declare-fun e!860565 () Bool)

(assert (=> mapNonEmpty!58660 (= mapRes!58660 (and tp!111337 e!860565))))

(declare-fun mapRest!58660 () (Array (_ BitVec 32) ValueCell!18075))

(declare-fun mapValue!58660 () ValueCell!18075)

(declare-fun mapKey!58660 () (_ BitVec 32))

(assert (=> mapNonEmpty!58660 (= (arr!49754 _values!470) (store mapRest!58660 mapKey!58660 mapValue!58660))))

(declare-fun b!1545998 () Bool)

(declare-fun tp_is_empty!37971 () Bool)

(assert (=> b!1545998 (= e!860565 tp_is_empty!37971)))

(declare-fun b!1545999 () Bool)

(declare-fun c!141691 () Bool)

(declare-fun lt!666410 () Bool)

(assert (=> b!1545999 (= c!141691 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666410))))

(declare-fun e!860562 () ListLongMap!22273)

(declare-fun e!860560 () ListLongMap!22273)

(assert (=> b!1545999 (= e!860562 e!860560)))

(declare-fun bm!69437 () Bool)

(declare-fun call!69437 () ListLongMap!22273)

(assert (=> bm!69437 (= call!69437 call!69440)))

(declare-fun b!1546000 () Bool)

(declare-fun res!1060120 () Bool)

(assert (=> b!1546000 (=> (not res!1060120) (not e!860564))))

(assert (=> b!1546000 (= res!1060120 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50304 _keys!618))))))

(declare-fun bm!69438 () Bool)

(assert (=> bm!69438 (= call!69439 call!69438)))

(declare-fun b!1546001 () Bool)

(declare-fun e!860561 () Bool)

(declare-fun e!860559 () Bool)

(assert (=> b!1546001 (= e!860561 (and e!860559 mapRes!58660))))

(declare-fun condMapEmpty!58660 () Bool)

(declare-fun mapDefault!58660 () ValueCell!18075)

(assert (=> b!1546001 (= condMapEmpty!58660 (= (arr!49754 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18075)) mapDefault!58660)))))

(declare-fun b!1546002 () Bool)

(assert (=> b!1546002 (= e!860562 call!69437)))

(declare-fun b!1546003 () Bool)

(assert (=> b!1546003 (= e!860560 call!69441)))

(declare-fun res!1060115 () Bool)

(assert (=> start!132014 (=> (not res!1060115) (not e!860564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132014 (= res!1060115 (validMask!0 mask!926))))

(assert (=> start!132014 e!860564))

(declare-fun array_inv!38619 (array!103111) Bool)

(assert (=> start!132014 (array_inv!38619 _keys!618)))

(assert (=> start!132014 tp_is_empty!37971))

(assert (=> start!132014 true))

(assert (=> start!132014 tp!111338))

(declare-fun array_inv!38620 (array!103113) Bool)

(assert (=> start!132014 (and (array_inv!38620 _values!470) e!860561)))

(declare-fun b!1545995 () Bool)

(assert (=> b!1545995 (= e!860559 tp_is_empty!37971)))

(declare-fun b!1546004 () Bool)

(assert (=> b!1546004 (= e!860563 e!860562)))

(assert (=> b!1546004 (= c!141690 (and (not lt!666410) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1546005 () Bool)

(declare-fun e!860558 () Bool)

(assert (=> b!1546005 (= e!860558 (not true))))

(declare-fun lt!666409 () ListLongMap!22273)

(declare-fun contains!10052 (ListLongMap!22273 (_ BitVec 64)) Bool)

(assert (=> b!1546005 (contains!10052 (+!4880 lt!666409 (tuple2!24653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49753 _keys!618) from!762))))

(declare-datatypes ((Unit!51466 0))(
  ( (Unit!51467) )
))
(declare-fun lt!666408 () Unit!51466)

(declare-fun addStillContains!1234 (ListLongMap!22273 (_ BitVec 64) V!59071 (_ BitVec 64)) Unit!51466)

(assert (=> b!1546005 (= lt!666408 (addStillContains!1234 lt!666409 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49753 _keys!618) from!762)))))

(assert (=> b!1546005 (= lt!666409 (getCurrentListMapNoExtraKeys!6599 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546006 () Bool)

(assert (=> b!1546006 (= e!860564 e!860558)))

(declare-fun res!1060116 () Bool)

(assert (=> b!1546006 (=> (not res!1060116) (not e!860558))))

(assert (=> b!1546006 (= res!1060116 (bvslt from!762 (size!50304 _keys!618)))))

(declare-fun lt!666407 () ListLongMap!22273)

(assert (=> b!1546006 (= lt!666407 e!860563)))

(assert (=> b!1546006 (= c!141692 (and (not lt!666410) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546006 (= lt!666410 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546007 () Bool)

(assert (=> b!1546007 (= e!860560 call!69437)))

(declare-fun b!1546008 () Bool)

(declare-fun res!1060118 () Bool)

(assert (=> b!1546008 (=> (not res!1060118) (not e!860558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546008 (= res!1060118 (validKeyInArray!0 (select (arr!49753 _keys!618) from!762)))))

(declare-fun b!1546009 () Bool)

(declare-fun res!1060117 () Bool)

(assert (=> b!1546009 (=> (not res!1060117) (not e!860564))))

(declare-datatypes ((List!36165 0))(
  ( (Nil!36162) (Cons!36161 (h!37607 (_ BitVec 64)) (t!50866 List!36165)) )
))
(declare-fun arrayNoDuplicates!0 (array!103111 (_ BitVec 32) List!36165) Bool)

(assert (=> b!1546009 (= res!1060117 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36162))))

(assert (= (and start!132014 res!1060115) b!1545996))

(assert (= (and b!1545996 res!1060119) b!1545994))

(assert (= (and b!1545994 res!1060121) b!1546009))

(assert (= (and b!1546009 res!1060117) b!1546000))

(assert (= (and b!1546000 res!1060120) b!1546006))

(assert (= (and b!1546006 c!141692) b!1545997))

(assert (= (and b!1546006 (not c!141692)) b!1546004))

(assert (= (and b!1546004 c!141690) b!1546002))

(assert (= (and b!1546004 (not c!141690)) b!1545999))

(assert (= (and b!1545999 c!141691) b!1546007))

(assert (= (and b!1545999 (not c!141691)) b!1546003))

(assert (= (or b!1546007 b!1546003) bm!69434))

(assert (= (or b!1546002 bm!69434) bm!69438))

(assert (= (or b!1546002 b!1546007) bm!69437))

(assert (= (or b!1545997 bm!69438) bm!69435))

(assert (= (or b!1545997 bm!69437) bm!69436))

(assert (= (and b!1546006 res!1060116) b!1546008))

(assert (= (and b!1546008 res!1060118) b!1546005))

(assert (= (and b!1546001 condMapEmpty!58660) mapIsEmpty!58660))

(assert (= (and b!1546001 (not condMapEmpty!58660)) mapNonEmpty!58660))

(get-info :version)

(assert (= (and mapNonEmpty!58660 ((_ is ValueCellFull!18075) mapValue!58660)) b!1545998))

(assert (= (and b!1546001 ((_ is ValueCellFull!18075) mapDefault!58660)) b!1545995))

(assert (= start!132014 b!1546001))

(declare-fun m!1426073 () Bool)

(assert (=> b!1546009 m!1426073))

(declare-fun m!1426075 () Bool)

(assert (=> b!1546008 m!1426075))

(assert (=> b!1546008 m!1426075))

(declare-fun m!1426077 () Bool)

(assert (=> b!1546008 m!1426077))

(declare-fun m!1426079 () Bool)

(assert (=> b!1545994 m!1426079))

(declare-fun m!1426081 () Bool)

(assert (=> start!132014 m!1426081))

(declare-fun m!1426083 () Bool)

(assert (=> start!132014 m!1426083))

(declare-fun m!1426085 () Bool)

(assert (=> start!132014 m!1426085))

(declare-fun m!1426087 () Bool)

(assert (=> b!1545997 m!1426087))

(declare-fun m!1426089 () Bool)

(assert (=> bm!69436 m!1426089))

(declare-fun m!1426091 () Bool)

(assert (=> mapNonEmpty!58660 m!1426091))

(declare-fun m!1426093 () Bool)

(assert (=> b!1546005 m!1426093))

(assert (=> b!1546005 m!1426075))

(declare-fun m!1426095 () Bool)

(assert (=> b!1546005 m!1426095))

(assert (=> b!1546005 m!1426075))

(declare-fun m!1426097 () Bool)

(assert (=> b!1546005 m!1426097))

(assert (=> b!1546005 m!1426075))

(declare-fun m!1426099 () Bool)

(assert (=> b!1546005 m!1426099))

(assert (=> b!1546005 m!1426095))

(assert (=> bm!69435 m!1426093))

(check-sat (not b!1545994) (not b!1546009) b_and!51115 (not b_next!31695) (not b!1545997) (not mapNonEmpty!58660) (not bm!69436) (not b!1546005) (not start!132014) (not bm!69435) (not b!1546008) tp_is_empty!37971)
(check-sat b_and!51115 (not b_next!31695))
