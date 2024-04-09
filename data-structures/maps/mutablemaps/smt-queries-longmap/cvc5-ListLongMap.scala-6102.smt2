; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78748 () Bool)

(assert start!78748)

(declare-fun b_free!16933 () Bool)

(declare-fun b_next!16933 () Bool)

(assert (=> start!78748 (= b_free!16933 (not b_next!16933))))

(declare-fun tp!59240 () Bool)

(declare-fun b_and!27621 () Bool)

(assert (=> start!78748 (= tp!59240 b_and!27621)))

(declare-fun mapNonEmpty!30918 () Bool)

(declare-fun mapRes!30918 () Bool)

(declare-fun tp!59241 () Bool)

(declare-fun e!515404 () Bool)

(assert (=> mapNonEmpty!30918 (= mapRes!30918 (and tp!59241 e!515404))))

(declare-datatypes ((V!30887 0))(
  ( (V!30888 (val!9771 Int)) )
))
(declare-datatypes ((ValueCell!9239 0))(
  ( (ValueCellFull!9239 (v!12289 V!30887)) (EmptyCell!9239) )
))
(declare-fun mapRest!30918 () (Array (_ BitVec 32) ValueCell!9239))

(declare-datatypes ((array!54874 0))(
  ( (array!54875 (arr!26378 (Array (_ BitVec 32) ValueCell!9239)) (size!26838 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54874)

(declare-fun mapValue!30918 () ValueCell!9239)

(declare-fun mapKey!30918 () (_ BitVec 32))

(assert (=> mapNonEmpty!30918 (= (arr!26378 _values!1231) (store mapRest!30918 mapKey!30918 mapValue!30918))))

(declare-fun res!619078 () Bool)

(declare-fun e!515408 () Bool)

(assert (=> start!78748 (=> (not res!619078) (not e!515408))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78748 (= res!619078 (validMask!0 mask!1881))))

(assert (=> start!78748 e!515408))

(assert (=> start!78748 true))

(declare-fun tp_is_empty!19441 () Bool)

(assert (=> start!78748 tp_is_empty!19441))

(declare-fun e!515403 () Bool)

(declare-fun array_inv!20554 (array!54874) Bool)

(assert (=> start!78748 (and (array_inv!20554 _values!1231) e!515403)))

(assert (=> start!78748 tp!59240))

(declare-datatypes ((array!54876 0))(
  ( (array!54877 (arr!26379 (Array (_ BitVec 32) (_ BitVec 64))) (size!26839 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54876)

(declare-fun array_inv!20555 (array!54876) Bool)

(assert (=> start!78748 (array_inv!20555 _keys!1487)))

(declare-fun b!918056 () Bool)

(declare-fun res!619076 () Bool)

(declare-fun e!515406 () Bool)

(assert (=> b!918056 (=> (not res!619076) (not e!515406))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30887)

(declare-datatypes ((tuple2!12768 0))(
  ( (tuple2!12769 (_1!6394 (_ BitVec 64)) (_2!6394 V!30887)) )
))
(declare-datatypes ((List!18615 0))(
  ( (Nil!18612) (Cons!18611 (h!19757 tuple2!12768) (t!26286 List!18615)) )
))
(declare-datatypes ((ListLongMap!11479 0))(
  ( (ListLongMap!11480 (toList!5755 List!18615)) )
))
(declare-fun lt!412128 () ListLongMap!11479)

(declare-fun apply!576 (ListLongMap!11479 (_ BitVec 64)) V!30887)

(assert (=> b!918056 (= res!619076 (= (apply!576 lt!412128 k!1099) v!791))))

(declare-fun b!918057 () Bool)

(assert (=> b!918057 (= e!515408 e!515406)))

(declare-fun res!619081 () Bool)

(assert (=> b!918057 (=> (not res!619081) (not e!515406))))

(declare-fun contains!4769 (ListLongMap!11479 (_ BitVec 64)) Bool)

(assert (=> b!918057 (= res!619081 (contains!4769 lt!412128 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30887)

(declare-fun minValue!1173 () V!30887)

(declare-fun getCurrentListMap!2981 (array!54876 array!54874 (_ BitVec 32) (_ BitVec 32) V!30887 V!30887 (_ BitVec 32) Int) ListLongMap!11479)

(assert (=> b!918057 (= lt!412128 (getCurrentListMap!2981 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918058 () Bool)

(assert (=> b!918058 (= e!515404 tp_is_empty!19441)))

(declare-fun mapIsEmpty!30918 () Bool)

(assert (=> mapIsEmpty!30918 mapRes!30918))

(declare-fun b!918059 () Bool)

(declare-fun res!619075 () Bool)

(assert (=> b!918059 (=> (not res!619075) (not e!515408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54876 (_ BitVec 32)) Bool)

(assert (=> b!918059 (= res!619075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918060 () Bool)

(declare-fun e!515409 () Bool)

(assert (=> b!918060 (= e!515406 e!515409)))

(declare-fun res!619074 () Bool)

(assert (=> b!918060 (=> (not res!619074) (not e!515409))))

(declare-fun lt!412126 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918060 (= res!619074 (validKeyInArray!0 lt!412126))))

(assert (=> b!918060 (= lt!412126 (select (arr!26379 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918061 () Bool)

(declare-fun res!619079 () Bool)

(assert (=> b!918061 (=> (not res!619079) (not e!515406))))

(assert (=> b!918061 (= res!619079 (validKeyInArray!0 k!1099))))

(declare-fun b!918062 () Bool)

(declare-fun res!619073 () Bool)

(assert (=> b!918062 (=> (not res!619073) (not e!515408))))

(assert (=> b!918062 (= res!619073 (and (= (size!26838 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26839 _keys!1487) (size!26838 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918063 () Bool)

(declare-fun res!619082 () Bool)

(assert (=> b!918063 (=> (not res!619082) (not e!515408))))

(assert (=> b!918063 (= res!619082 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26839 _keys!1487))))))

(declare-fun b!918064 () Bool)

(assert (=> b!918064 (= e!515409 (not (bvsle from!1844 (size!26839 _keys!1487))))))

(declare-fun +!2586 (ListLongMap!11479 tuple2!12768) ListLongMap!11479)

(declare-fun get!13843 (ValueCell!9239 V!30887) V!30887)

(declare-fun dynLambda!1425 (Int (_ BitVec 64)) V!30887)

(assert (=> b!918064 (= (getCurrentListMap!2981 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2586 (getCurrentListMap!2981 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12769 lt!412126 (get!13843 (select (arr!26378 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1425 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30979 0))(
  ( (Unit!30980) )
))
(declare-fun lt!412127 () Unit!30979)

(declare-fun lemmaListMapRecursiveValidKeyArray!21 (array!54876 array!54874 (_ BitVec 32) (_ BitVec 32) V!30887 V!30887 (_ BitVec 32) Int) Unit!30979)

(assert (=> b!918064 (= lt!412127 (lemmaListMapRecursiveValidKeyArray!21 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918065 () Bool)

(declare-fun e!515407 () Bool)

(assert (=> b!918065 (= e!515403 (and e!515407 mapRes!30918))))

(declare-fun condMapEmpty!30918 () Bool)

(declare-fun mapDefault!30918 () ValueCell!9239)

