; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97308 () Bool)

(assert start!97308)

(declare-fun b_free!23243 () Bool)

(declare-fun b_next!23243 () Bool)

(assert (=> start!97308 (= b_free!23243 (not b_next!23243))))

(declare-fun tp!82028 () Bool)

(declare-fun b_and!37335 () Bool)

(assert (=> start!97308 (= tp!82028 b_and!37335)))

(declare-fun b!1107395 () Bool)

(declare-fun res!739134 () Bool)

(declare-fun e!631868 () Bool)

(assert (=> b!1107395 (=> (not res!739134) (not e!631868))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71876 0))(
  ( (array!71877 (arr!34587 (Array (_ BitVec 32) (_ BitVec 64))) (size!35124 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71876)

(assert (=> b!1107395 (= res!739134 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35124 _keys!1208))))))

(declare-fun b!1107396 () Bool)

(declare-fun res!739136 () Bool)

(assert (=> b!1107396 (=> (not res!739136) (not e!631868))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107396 (= res!739136 (validMask!0 mask!1564))))

(declare-fun b!1107397 () Bool)

(declare-fun e!631869 () Bool)

(declare-fun tp_is_empty!27503 () Bool)

(assert (=> b!1107397 (= e!631869 tp_is_empty!27503)))

(declare-fun b!1107398 () Bool)

(declare-fun e!631867 () Bool)

(assert (=> b!1107398 (= e!631867 tp_is_empty!27503)))

(declare-fun mapNonEmpty!43072 () Bool)

(declare-fun mapRes!43072 () Bool)

(declare-fun tp!82029 () Bool)

(assert (=> mapNonEmpty!43072 (= mapRes!43072 (and tp!82029 e!631869))))

(declare-datatypes ((V!41797 0))(
  ( (V!41798 (val!13808 Int)) )
))
(declare-datatypes ((ValueCell!13042 0))(
  ( (ValueCellFull!13042 (v!16442 V!41797)) (EmptyCell!13042) )
))
(declare-fun mapRest!43072 () (Array (_ BitVec 32) ValueCell!13042))

(declare-fun mapValue!43072 () ValueCell!13042)

(declare-fun mapKey!43072 () (_ BitVec 32))

(declare-datatypes ((array!71878 0))(
  ( (array!71879 (arr!34588 (Array (_ BitVec 32) ValueCell!13042)) (size!35125 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71878)

(assert (=> mapNonEmpty!43072 (= (arr!34588 _values!996) (store mapRest!43072 mapKey!43072 mapValue!43072))))

(declare-fun zeroValue!944 () V!41797)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!495608 () array!71876)

(declare-fun minValue!944 () V!41797)

(declare-datatypes ((tuple2!17508 0))(
  ( (tuple2!17509 (_1!8764 (_ BitVec 64)) (_2!8764 V!41797)) )
))
(declare-datatypes ((List!24246 0))(
  ( (Nil!24243) (Cons!24242 (h!25451 tuple2!17508) (t!34542 List!24246)) )
))
(declare-datatypes ((ListLongMap!15489 0))(
  ( (ListLongMap!15490 (toList!7760 List!24246)) )
))
(declare-fun call!46426 () ListLongMap!15489)

(declare-fun bm!46424 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4229 (array!71876 array!71878 (_ BitVec 32) (_ BitVec 32) V!41797 V!41797 (_ BitVec 32) Int) ListLongMap!15489)

(declare-fun dynLambda!2358 (Int (_ BitVec 64)) V!41797)

(assert (=> bm!46424 (= call!46426 (getCurrentListMapNoExtraKeys!4229 lt!495608 (array!71879 (store (arr!34588 _values!996) i!673 (ValueCellFull!13042 (dynLambda!2358 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35125 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107399 () Bool)

(declare-fun e!631865 () Bool)

(declare-fun call!46427 () ListLongMap!15489)

(assert (=> b!1107399 (= e!631865 (= call!46426 call!46427))))

(declare-fun b!1107400 () Bool)

(declare-fun e!631871 () Bool)

(assert (=> b!1107400 (= e!631868 e!631871)))

(declare-fun res!739140 () Bool)

(assert (=> b!1107400 (=> (not res!739140) (not e!631871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71876 (_ BitVec 32)) Bool)

(assert (=> b!1107400 (= res!739140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495608 mask!1564))))

(assert (=> b!1107400 (= lt!495608 (array!71877 (store (arr!34587 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35124 _keys!1208)))))

(declare-fun b!1107401 () Bool)

(declare-fun e!631870 () Bool)

(assert (=> b!1107401 (= e!631870 (and e!631867 mapRes!43072))))

(declare-fun condMapEmpty!43072 () Bool)

(declare-fun mapDefault!43072 () ValueCell!13042)

