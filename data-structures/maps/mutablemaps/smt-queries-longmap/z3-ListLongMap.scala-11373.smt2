; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132176 () Bool)

(assert start!132176)

(declare-fun b_free!31857 () Bool)

(declare-fun b_next!31857 () Bool)

(assert (=> start!132176 (= b_free!31857 (not b_next!31857))))

(declare-fun tp!111823 () Bool)

(declare-fun b_and!51289 () Bool)

(assert (=> start!132176 (= tp!111823 b_and!51289)))

(declare-fun bm!70658 () Bool)

(declare-datatypes ((V!59287 0))(
  ( (V!59288 (val!19144 Int)) )
))
(declare-datatypes ((tuple2!24808 0))(
  ( (tuple2!24809 (_1!12414 (_ BitVec 64)) (_2!12414 V!59287)) )
))
(declare-datatypes ((List!36302 0))(
  ( (Nil!36299) (Cons!36298 (h!37744 tuple2!24808) (t!51015 List!36302)) )
))
(declare-datatypes ((ListLongMap!22429 0))(
  ( (ListLongMap!22430 (toList!11230 List!36302)) )
))
(declare-fun call!70662 () ListLongMap!22429)

(declare-fun call!70664 () ListLongMap!22429)

(assert (=> bm!70658 (= call!70662 call!70664)))

(declare-fun b!1550028 () Bool)

(declare-fun e!862855 () Bool)

(declare-fun tp_is_empty!38133 () Bool)

(assert (=> b!1550028 (= e!862855 tp_is_empty!38133)))

(declare-fun mapNonEmpty!58903 () Bool)

(declare-fun mapRes!58903 () Bool)

(declare-fun tp!111824 () Bool)

(assert (=> mapNonEmpty!58903 (= mapRes!58903 (and tp!111824 e!862855))))

(declare-datatypes ((ValueCell!18156 0))(
  ( (ValueCellFull!18156 (v!21942 V!59287)) (EmptyCell!18156) )
))
(declare-fun mapValue!58903 () ValueCell!18156)

(declare-fun mapKey!58903 () (_ BitVec 32))

(declare-fun mapRest!58903 () (Array (_ BitVec 32) ValueCell!18156))

(declare-datatypes ((array!103425 0))(
  ( (array!103426 (arr!49910 (Array (_ BitVec 32) ValueCell!18156)) (size!50461 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103425)

(assert (=> mapNonEmpty!58903 (= (arr!49910 _values!470) (store mapRest!58903 mapKey!58903 mapValue!58903))))

(declare-fun b!1550029 () Bool)

(declare-fun e!862850 () ListLongMap!22429)

(declare-fun call!70665 () ListLongMap!22429)

(declare-fun minValue!436 () V!59287)

(declare-fun +!4941 (ListLongMap!22429 tuple2!24808) ListLongMap!22429)

(assert (=> b!1550029 (= e!862850 (+!4941 call!70665 (tuple2!24809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550030 () Bool)

(declare-fun res!1061879 () Bool)

(declare-fun e!862848 () Bool)

(assert (=> b!1550030 (=> (not res!1061879) (not e!862848))))

(declare-datatypes ((array!103427 0))(
  ( (array!103428 (arr!49911 (Array (_ BitVec 32) (_ BitVec 64))) (size!50462 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103427)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1550030 (= res!1061879 (and (= (size!50461 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50462 _keys!618) (size!50461 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!70659 () Bool)

(declare-fun call!70663 () ListLongMap!22429)

(assert (=> bm!70659 (= call!70664 call!70663)))

(declare-fun b!1550031 () Bool)

(declare-fun res!1061878 () Bool)

(assert (=> b!1550031 (=> (not res!1061878) (not e!862848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103427 (_ BitVec 32)) Bool)

(assert (=> b!1550031 (= res!1061878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550032 () Bool)

(declare-fun e!862854 () ListLongMap!22429)

(declare-fun call!70661 () ListLongMap!22429)

(assert (=> b!1550032 (= e!862854 call!70661)))

(declare-fun b!1550033 () Bool)

(declare-fun e!862852 () ListLongMap!22429)

(assert (=> b!1550033 (= e!862850 e!862852)))

(declare-fun c!142456 () Bool)

(declare-fun lt!668153 () Bool)

(assert (=> b!1550033 (= c!142456 (and (not lt!668153) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1550034 () Bool)

(declare-fun res!1061882 () Bool)

(assert (=> b!1550034 (=> (not res!1061882) (not e!862848))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1550034 (= res!1061882 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50462 _keys!618))))))

(declare-fun bm!70660 () Bool)

(declare-fun zeroValue!436 () V!59287)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6662 (array!103427 array!103425 (_ BitVec 32) (_ BitVec 32) V!59287 V!59287 (_ BitVec 32) Int) ListLongMap!22429)

(assert (=> bm!70660 (= call!70663 (getCurrentListMapNoExtraKeys!6662 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550035 () Bool)

(declare-fun c!142455 () Bool)

(assert (=> b!1550035 (= c!142455 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668153))))

(assert (=> b!1550035 (= e!862852 e!862854)))

(declare-fun res!1061880 () Bool)

(assert (=> start!132176 (=> (not res!1061880) (not e!862848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132176 (= res!1061880 (validMask!0 mask!926))))

(assert (=> start!132176 e!862848))

(declare-fun array_inv!38731 (array!103427) Bool)

(assert (=> start!132176 (array_inv!38731 _keys!618)))

(assert (=> start!132176 tp_is_empty!38133))

(assert (=> start!132176 true))

(assert (=> start!132176 tp!111823))

(declare-fun e!862851 () Bool)

(declare-fun array_inv!38732 (array!103425) Bool)

(assert (=> start!132176 (and (array_inv!38732 _values!470) e!862851)))

(declare-fun bm!70661 () Bool)

(assert (=> bm!70661 (= call!70661 call!70665)))

(declare-fun b!1550036 () Bool)

(declare-fun res!1061881 () Bool)

(assert (=> b!1550036 (=> (not res!1061881) (not e!862848))))

(declare-datatypes ((List!36303 0))(
  ( (Nil!36300) (Cons!36299 (h!37745 (_ BitVec 64)) (t!51016 List!36303)) )
))
(declare-fun arrayNoDuplicates!0 (array!103427 (_ BitVec 32) List!36303) Bool)

(assert (=> b!1550036 (= res!1061881 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36300))))

(declare-fun c!142457 () Bool)

(declare-fun bm!70662 () Bool)

(assert (=> bm!70662 (= call!70665 (+!4941 (ite c!142457 call!70663 (ite c!142456 call!70664 call!70662)) (ite (or c!142457 c!142456) (tuple2!24809 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1550037 () Bool)

(declare-fun e!862853 () Bool)

(assert (=> b!1550037 (= e!862851 (and e!862853 mapRes!58903))))

(declare-fun condMapEmpty!58903 () Bool)

(declare-fun mapDefault!58903 () ValueCell!18156)

(assert (=> b!1550037 (= condMapEmpty!58903 (= (arr!49910 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18156)) mapDefault!58903)))))

(declare-fun b!1550038 () Bool)

(assert (=> b!1550038 (= e!862848 false)))

(declare-fun lt!668152 () ListLongMap!22429)

(assert (=> b!1550038 (= lt!668152 e!862850)))

(assert (=> b!1550038 (= c!142457 (and (not lt!668153) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550038 (= lt!668153 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!58903 () Bool)

(assert (=> mapIsEmpty!58903 mapRes!58903))

(declare-fun b!1550039 () Bool)

(assert (=> b!1550039 (= e!862852 call!70661)))

(declare-fun b!1550040 () Bool)

(assert (=> b!1550040 (= e!862853 tp_is_empty!38133)))

(declare-fun b!1550041 () Bool)

(assert (=> b!1550041 (= e!862854 call!70662)))

(assert (= (and start!132176 res!1061880) b!1550030))

(assert (= (and b!1550030 res!1061879) b!1550031))

(assert (= (and b!1550031 res!1061878) b!1550036))

(assert (= (and b!1550036 res!1061881) b!1550034))

(assert (= (and b!1550034 res!1061882) b!1550038))

(assert (= (and b!1550038 c!142457) b!1550029))

(assert (= (and b!1550038 (not c!142457)) b!1550033))

(assert (= (and b!1550033 c!142456) b!1550039))

(assert (= (and b!1550033 (not c!142456)) b!1550035))

(assert (= (and b!1550035 c!142455) b!1550032))

(assert (= (and b!1550035 (not c!142455)) b!1550041))

(assert (= (or b!1550032 b!1550041) bm!70658))

(assert (= (or b!1550039 bm!70658) bm!70659))

(assert (= (or b!1550039 b!1550032) bm!70661))

(assert (= (or b!1550029 bm!70659) bm!70660))

(assert (= (or b!1550029 bm!70661) bm!70662))

(assert (= (and b!1550037 condMapEmpty!58903) mapIsEmpty!58903))

(assert (= (and b!1550037 (not condMapEmpty!58903)) mapNonEmpty!58903))

(get-info :version)

(assert (= (and mapNonEmpty!58903 ((_ is ValueCellFull!18156) mapValue!58903)) b!1550028))

(assert (= (and b!1550037 ((_ is ValueCellFull!18156) mapDefault!58903)) b!1550040))

(assert (= start!132176 b!1550037))

(declare-fun m!1429147 () Bool)

(assert (=> b!1550031 m!1429147))

(declare-fun m!1429149 () Bool)

(assert (=> b!1550036 m!1429149))

(declare-fun m!1429151 () Bool)

(assert (=> mapNonEmpty!58903 m!1429151))

(declare-fun m!1429153 () Bool)

(assert (=> start!132176 m!1429153))

(declare-fun m!1429155 () Bool)

(assert (=> start!132176 m!1429155))

(declare-fun m!1429157 () Bool)

(assert (=> start!132176 m!1429157))

(declare-fun m!1429159 () Bool)

(assert (=> bm!70660 m!1429159))

(declare-fun m!1429161 () Bool)

(assert (=> bm!70662 m!1429161))

(declare-fun m!1429163 () Bool)

(assert (=> b!1550029 m!1429163))

(check-sat b_and!51289 (not b!1550031) (not bm!70660) (not bm!70662) (not start!132176) (not b!1550029) (not b!1550036) tp_is_empty!38133 (not mapNonEmpty!58903) (not b_next!31857))
(check-sat b_and!51289 (not b_next!31857))
