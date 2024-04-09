; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77762 () Bool)

(assert start!77762)

(declare-fun b_free!16319 () Bool)

(declare-fun b_next!16319 () Bool)

(assert (=> start!77762 (= b_free!16319 (not b_next!16319))))

(declare-fun tp!57219 () Bool)

(declare-fun b_and!26809 () Bool)

(assert (=> start!77762 (= tp!57219 b_and!26809)))

(declare-fun b!906900 () Bool)

(declare-fun e!508272 () Bool)

(declare-fun e!508270 () Bool)

(assert (=> b!906900 (= e!508272 e!508270)))

(declare-fun res!612184 () Bool)

(assert (=> b!906900 (=> (not res!612184) (not e!508270))))

(declare-datatypes ((V!29947 0))(
  ( (V!29948 (val!9419 Int)) )
))
(declare-datatypes ((tuple2!12284 0))(
  ( (tuple2!12285 (_1!6152 (_ BitVec 64)) (_2!6152 V!29947)) )
))
(declare-datatypes ((List!18146 0))(
  ( (Nil!18143) (Cons!18142 (h!19288 tuple2!12284) (t!25645 List!18146)) )
))
(declare-datatypes ((ListLongMap!10995 0))(
  ( (ListLongMap!10996 (toList!5513 List!18146)) )
))
(declare-fun lt!409090 () ListLongMap!10995)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4523 (ListLongMap!10995 (_ BitVec 64)) Bool)

(assert (=> b!906900 (= res!612184 (contains!4523 lt!409090 k!1033))))

(declare-datatypes ((ValueCell!8887 0))(
  ( (ValueCellFull!8887 (v!11924 V!29947)) (EmptyCell!8887) )
))
(declare-datatypes ((array!53500 0))(
  ( (array!53501 (arr!25705 (Array (_ BitVec 32) ValueCell!8887)) (size!26165 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53500)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29947)

(declare-datatypes ((array!53502 0))(
  ( (array!53503 (arr!25706 (Array (_ BitVec 32) (_ BitVec 64))) (size!26166 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53502)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29947)

(declare-fun getCurrentListMap!2747 (array!53502 array!53500 (_ BitVec 32) (_ BitVec 32) V!29947 V!29947 (_ BitVec 32) Int) ListLongMap!10995)

(assert (=> b!906900 (= lt!409090 (getCurrentListMap!2747 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapIsEmpty!29818 () Bool)

(declare-fun mapRes!29818 () Bool)

(assert (=> mapIsEmpty!29818 mapRes!29818))

(declare-fun mapNonEmpty!29818 () Bool)

(declare-fun tp!57220 () Bool)

(declare-fun e!508275 () Bool)

(assert (=> mapNonEmpty!29818 (= mapRes!29818 (and tp!57220 e!508275))))

(declare-fun mapKey!29818 () (_ BitVec 32))

(declare-fun mapRest!29818 () (Array (_ BitVec 32) ValueCell!8887))

(declare-fun mapValue!29818 () ValueCell!8887)

(assert (=> mapNonEmpty!29818 (= (arr!25705 _values!1152) (store mapRest!29818 mapKey!29818 mapValue!29818))))

(declare-fun b!906901 () Bool)

(declare-fun e!508274 () Bool)

(assert (=> b!906901 (= e!508270 (not e!508274))))

(declare-fun res!612189 () Bool)

(assert (=> b!906901 (=> res!612189 e!508274)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906901 (= res!612189 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26166 _keys!1386))))))

(declare-fun lt!409088 () V!29947)

(declare-fun get!13533 (ValueCell!8887 V!29947) V!29947)

(declare-fun dynLambda!1361 (Int (_ BitVec 64)) V!29947)

(assert (=> b!906901 (= lt!409088 (get!13533 (select (arr!25705 _values!1152) i!717) (dynLambda!1361 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906901 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30751 0))(
  ( (Unit!30752) )
))
(declare-fun lt!409087 () Unit!30751)

(declare-fun lemmaKeyInListMapIsInArray!234 (array!53502 array!53500 (_ BitVec 32) (_ BitVec 32) V!29947 V!29947 (_ BitVec 64) Int) Unit!30751)

(assert (=> b!906901 (= lt!409087 (lemmaKeyInListMapIsInArray!234 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906902 () Bool)

(declare-fun e!508277 () Bool)

(assert (=> b!906902 (= e!508277 true)))

(declare-fun apply!489 (ListLongMap!10995 (_ BitVec 64)) V!29947)

(assert (=> b!906902 (= (apply!489 lt!409090 k!1033) lt!409088)))

(declare-fun lt!409089 () Unit!30751)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!36 (array!53502 array!53500 (_ BitVec 32) (_ BitVec 32) V!29947 V!29947 (_ BitVec 64) V!29947 (_ BitVec 32) Int) Unit!30751)

(assert (=> b!906902 (= lt!409089 (lemmaListMapApplyFromThenApplyFromZero!36 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409088 i!717 defaultEntry!1160))))

(declare-fun b!906903 () Bool)

(declare-fun tp_is_empty!18737 () Bool)

(assert (=> b!906903 (= e!508275 tp_is_empty!18737)))

(declare-fun res!612192 () Bool)

(assert (=> start!77762 (=> (not res!612192) (not e!508272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77762 (= res!612192 (validMask!0 mask!1756))))

(assert (=> start!77762 e!508272))

(declare-fun e!508273 () Bool)

(declare-fun array_inv!20104 (array!53500) Bool)

(assert (=> start!77762 (and (array_inv!20104 _values!1152) e!508273)))

(assert (=> start!77762 tp!57219))

(assert (=> start!77762 true))

(assert (=> start!77762 tp_is_empty!18737))

(declare-fun array_inv!20105 (array!53502) Bool)

(assert (=> start!77762 (array_inv!20105 _keys!1386)))

(declare-fun b!906904 () Bool)

(declare-fun res!612190 () Bool)

(assert (=> b!906904 (=> (not res!612190) (not e!508270))))

(assert (=> b!906904 (= res!612190 (and (= (select (arr!25706 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906905 () Bool)

(declare-fun res!612187 () Bool)

(assert (=> b!906905 (=> (not res!612187) (not e!508272))))

(assert (=> b!906905 (= res!612187 (and (= (size!26165 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26166 _keys!1386) (size!26165 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906906 () Bool)

(declare-fun res!612186 () Bool)

(assert (=> b!906906 (=> (not res!612186) (not e!508272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53502 (_ BitVec 32)) Bool)

(assert (=> b!906906 (= res!612186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906907 () Bool)

(declare-fun res!612191 () Bool)

(assert (=> b!906907 (=> (not res!612191) (not e!508270))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906907 (= res!612191 (inRange!0 i!717 mask!1756))))

(declare-fun b!906908 () Bool)

(assert (=> b!906908 (= e!508274 e!508277)))

(declare-fun res!612185 () Bool)

(assert (=> b!906908 (=> res!612185 e!508277)))

(declare-fun lt!409091 () ListLongMap!10995)

(assert (=> b!906908 (= res!612185 (not (contains!4523 lt!409091 k!1033)))))

(assert (=> b!906908 (= lt!409091 (getCurrentListMap!2747 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906909 () Bool)

(declare-fun e!508271 () Bool)

(assert (=> b!906909 (= e!508271 tp_is_empty!18737)))

(declare-fun b!906910 () Bool)

(assert (=> b!906910 (= e!508273 (and e!508271 mapRes!29818))))

(declare-fun condMapEmpty!29818 () Bool)

(declare-fun mapDefault!29818 () ValueCell!8887)

