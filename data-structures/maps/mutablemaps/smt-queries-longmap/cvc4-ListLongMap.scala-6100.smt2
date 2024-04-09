; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78740 () Bool)

(assert start!78740)

(declare-fun b_free!16925 () Bool)

(declare-fun b_next!16925 () Bool)

(assert (=> start!78740 (= b_free!16925 (not b_next!16925))))

(declare-fun tp!59216 () Bool)

(declare-fun b_and!27605 () Bool)

(assert (=> start!78740 (= tp!59216 b_and!27605)))

(declare-fun b!917892 () Bool)

(declare-fun e!515323 () Bool)

(declare-fun e!515320 () Bool)

(assert (=> b!917892 (= e!515323 e!515320)))

(declare-fun res!618958 () Bool)

(assert (=> b!917892 (=> (not res!618958) (not e!515320))))

(declare-datatypes ((V!30875 0))(
  ( (V!30876 (val!9767 Int)) )
))
(declare-datatypes ((tuple2!12760 0))(
  ( (tuple2!12761 (_1!6390 (_ BitVec 64)) (_2!6390 V!30875)) )
))
(declare-datatypes ((List!18609 0))(
  ( (Nil!18606) (Cons!18605 (h!19751 tuple2!12760) (t!26272 List!18609)) )
))
(declare-datatypes ((ListLongMap!11471 0))(
  ( (ListLongMap!11472 (toList!5751 List!18609)) )
))
(declare-fun lt!412092 () ListLongMap!11471)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4765 (ListLongMap!11471 (_ BitVec 64)) Bool)

(assert (=> b!917892 (= res!618958 (contains!4765 lt!412092 k!1099))))

(declare-datatypes ((array!54858 0))(
  ( (array!54859 (arr!26370 (Array (_ BitVec 32) (_ BitVec 64))) (size!26830 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54858)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9235 0))(
  ( (ValueCellFull!9235 (v!12285 V!30875)) (EmptyCell!9235) )
))
(declare-datatypes ((array!54860 0))(
  ( (array!54861 (arr!26371 (Array (_ BitVec 32) ValueCell!9235)) (size!26831 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54860)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30875)

(declare-fun minValue!1173 () V!30875)

(declare-fun getCurrentListMap!2977 (array!54858 array!54860 (_ BitVec 32) (_ BitVec 32) V!30875 V!30875 (_ BitVec 32) Int) ListLongMap!11471)

(assert (=> b!917892 (= lt!412092 (getCurrentListMap!2977 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!30906 () Bool)

(declare-fun mapRes!30906 () Bool)

(declare-fun tp!59217 () Bool)

(declare-fun e!515325 () Bool)

(assert (=> mapNonEmpty!30906 (= mapRes!30906 (and tp!59217 e!515325))))

(declare-fun mapKey!30906 () (_ BitVec 32))

(declare-fun mapValue!30906 () ValueCell!9235)

(declare-fun mapRest!30906 () (Array (_ BitVec 32) ValueCell!9235))

(assert (=> mapNonEmpty!30906 (= (arr!26371 _values!1231) (store mapRest!30906 mapKey!30906 mapValue!30906))))

(declare-fun res!618953 () Bool)

(assert (=> start!78740 (=> (not res!618953) (not e!515323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78740 (= res!618953 (validMask!0 mask!1881))))

(assert (=> start!78740 e!515323))

(assert (=> start!78740 true))

(declare-fun tp_is_empty!19433 () Bool)

(assert (=> start!78740 tp_is_empty!19433))

(declare-fun e!515322 () Bool)

(declare-fun array_inv!20548 (array!54860) Bool)

(assert (=> start!78740 (and (array_inv!20548 _values!1231) e!515322)))

(assert (=> start!78740 tp!59216))

(declare-fun array_inv!20549 (array!54858) Bool)

(assert (=> start!78740 (array_inv!20549 _keys!1487)))

(declare-fun mapIsEmpty!30906 () Bool)

(assert (=> mapIsEmpty!30906 mapRes!30906))

(declare-fun b!917893 () Bool)

(declare-fun res!618960 () Bool)

(assert (=> b!917893 (=> (not res!618960) (not e!515323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54858 (_ BitVec 32)) Bool)

(assert (=> b!917893 (= res!618960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917894 () Bool)

(declare-fun res!618955 () Bool)

(assert (=> b!917894 (=> (not res!618955) (not e!515320))))

(assert (=> b!917894 (= res!618955 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917895 () Bool)

(declare-fun res!618956 () Bool)

(assert (=> b!917895 (=> (not res!618956) (not e!515320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917895 (= res!618956 (validKeyInArray!0 k!1099))))

(declare-fun b!917896 () Bool)

(declare-fun res!618954 () Bool)

(assert (=> b!917896 (=> (not res!618954) (not e!515323))))

(assert (=> b!917896 (= res!618954 (and (= (size!26831 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26830 _keys!1487) (size!26831 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917897 () Bool)

(declare-fun res!618959 () Bool)

(assert (=> b!917897 (=> (not res!618959) (not e!515323))))

(assert (=> b!917897 (= res!618959 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26830 _keys!1487))))))

(declare-fun b!917898 () Bool)

(declare-fun e!515321 () Bool)

(assert (=> b!917898 (= e!515321 (not true))))

(declare-fun lt!412090 () (_ BitVec 64))

(declare-fun +!2583 (ListLongMap!11471 tuple2!12760) ListLongMap!11471)

(declare-fun get!13836 (ValueCell!9235 V!30875) V!30875)

(declare-fun dynLambda!1422 (Int (_ BitVec 64)) V!30875)

(assert (=> b!917898 (= (getCurrentListMap!2977 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2583 (getCurrentListMap!2977 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12761 lt!412090 (get!13836 (select (arr!26371 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1422 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30973 0))(
  ( (Unit!30974) )
))
(declare-fun lt!412091 () Unit!30973)

(declare-fun lemmaListMapRecursiveValidKeyArray!18 (array!54858 array!54860 (_ BitVec 32) (_ BitVec 32) V!30875 V!30875 (_ BitVec 32) Int) Unit!30973)

(assert (=> b!917898 (= lt!412091 (lemmaListMapRecursiveValidKeyArray!18 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917899 () Bool)

(declare-fun e!515319 () Bool)

(assert (=> b!917899 (= e!515319 tp_is_empty!19433)))

(declare-fun b!917900 () Bool)

(assert (=> b!917900 (= e!515320 e!515321)))

(declare-fun res!618961 () Bool)

(assert (=> b!917900 (=> (not res!618961) (not e!515321))))

(assert (=> b!917900 (= res!618961 (validKeyInArray!0 lt!412090))))

(assert (=> b!917900 (= lt!412090 (select (arr!26370 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917901 () Bool)

(assert (=> b!917901 (= e!515322 (and e!515319 mapRes!30906))))

(declare-fun condMapEmpty!30906 () Bool)

(declare-fun mapDefault!30906 () ValueCell!9235)

