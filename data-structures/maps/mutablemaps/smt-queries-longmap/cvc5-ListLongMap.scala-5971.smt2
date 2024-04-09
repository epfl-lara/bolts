; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77680 () Bool)

(assert start!77680)

(declare-fun b_free!16237 () Bool)

(declare-fun b_next!16237 () Bool)

(assert (=> start!77680 (= b_free!16237 (not b_next!16237))))

(declare-fun tp!56973 () Bool)

(declare-fun b_and!26645 () Bool)

(assert (=> start!77680 (= tp!56973 b_and!26645)))

(declare-fun b!905219 () Bool)

(declare-fun res!610961 () Bool)

(declare-fun e!507290 () Bool)

(assert (=> b!905219 (=> res!610961 e!507290)))

(declare-datatypes ((V!29839 0))(
  ( (V!29840 (val!9378 Int)) )
))
(declare-datatypes ((tuple2!12216 0))(
  ( (tuple2!12217 (_1!6118 (_ BitVec 64)) (_2!6118 V!29839)) )
))
(declare-datatypes ((List!18084 0))(
  ( (Nil!18081) (Cons!18080 (h!19226 tuple2!12216) (t!25501 List!18084)) )
))
(declare-datatypes ((ListLongMap!10927 0))(
  ( (ListLongMap!10928 (toList!5479 List!18084)) )
))
(declare-fun lt!408474 () ListLongMap!10927)

(declare-fun lt!408475 () V!29839)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!456 (ListLongMap!10927 (_ BitVec 64)) V!29839)

(assert (=> b!905219 (= res!610961 (not (= (apply!456 lt!408474 k!1033) lt!408475)))))

(declare-fun b!905220 () Bool)

(declare-fun e!507287 () Bool)

(declare-fun tp_is_empty!18655 () Bool)

(assert (=> b!905220 (= e!507287 tp_is_empty!18655)))

(declare-fun mapIsEmpty!29695 () Bool)

(declare-fun mapRes!29695 () Bool)

(assert (=> mapIsEmpty!29695 mapRes!29695))

(declare-fun b!905221 () Bool)

(declare-fun e!507288 () Bool)

(assert (=> b!905221 (= e!507288 e!507290)))

(declare-fun res!610956 () Bool)

(assert (=> b!905221 (=> res!610956 e!507290)))

(declare-fun contains!4492 (ListLongMap!10927 (_ BitVec 64)) Bool)

(assert (=> b!905221 (= res!610956 (not (contains!4492 lt!408474 k!1033)))))

(declare-datatypes ((ValueCell!8846 0))(
  ( (ValueCellFull!8846 (v!11883 V!29839)) (EmptyCell!8846) )
))
(declare-datatypes ((array!53340 0))(
  ( (array!53341 (arr!25625 (Array (_ BitVec 32) ValueCell!8846)) (size!26085 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53340)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29839)

(declare-datatypes ((array!53342 0))(
  ( (array!53343 (arr!25626 (Array (_ BitVec 32) (_ BitVec 64))) (size!26086 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53342)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29839)

(declare-fun getCurrentListMap!2716 (array!53342 array!53340 (_ BitVec 32) (_ BitVec 32) V!29839 V!29839 (_ BitVec 32) Int) ListLongMap!10927)

(assert (=> b!905221 (= lt!408474 (getCurrentListMap!2716 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905222 () Bool)

(assert (=> b!905222 (= e!507290 true)))

(declare-fun lt!408476 () ListLongMap!10927)

(assert (=> b!905222 (= (apply!456 lt!408476 k!1033) lt!408475)))

(declare-datatypes ((Unit!30687 0))(
  ( (Unit!30688) )
))
(declare-fun lt!408473 () Unit!30687)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!10 (array!53342 array!53340 (_ BitVec 32) (_ BitVec 32) V!29839 V!29839 (_ BitVec 64) V!29839 (_ BitVec 32) Int) Unit!30687)

(assert (=> b!905222 (= lt!408473 (lemmaListMapApplyFromThenApplyFromZero!10 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408475 i!717 defaultEntry!1160))))

(declare-fun b!905223 () Bool)

(declare-fun e!507289 () Bool)

(assert (=> b!905223 (= e!507289 tp_is_empty!18655)))

(declare-fun b!905224 () Bool)

(declare-fun res!610953 () Bool)

(declare-fun e!507291 () Bool)

(assert (=> b!905224 (=> (not res!610953) (not e!507291))))

(assert (=> b!905224 (= res!610953 (and (= (select (arr!25626 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905225 () Bool)

(declare-fun res!610958 () Bool)

(assert (=> b!905225 (=> (not res!610958) (not e!507291))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905225 (= res!610958 (inRange!0 i!717 mask!1756))))

(declare-fun b!905226 () Bool)

(assert (=> b!905226 (= e!507291 (not e!507288))))

(declare-fun res!610962 () Bool)

(assert (=> b!905226 (=> res!610962 e!507288)))

(assert (=> b!905226 (= res!610962 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26086 _keys!1386))))))

(declare-fun get!13478 (ValueCell!8846 V!29839) V!29839)

(declare-fun dynLambda!1332 (Int (_ BitVec 64)) V!29839)

(assert (=> b!905226 (= lt!408475 (get!13478 (select (arr!25625 _values!1152) i!717) (dynLambda!1332 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905226 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408472 () Unit!30687)

(declare-fun lemmaKeyInListMapIsInArray!205 (array!53342 array!53340 (_ BitVec 32) (_ BitVec 32) V!29839 V!29839 (_ BitVec 64) Int) Unit!30687)

(assert (=> b!905226 (= lt!408472 (lemmaKeyInListMapIsInArray!205 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun res!610957 () Bool)

(declare-fun e!507292 () Bool)

(assert (=> start!77680 (=> (not res!610957) (not e!507292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77680 (= res!610957 (validMask!0 mask!1756))))

(assert (=> start!77680 e!507292))

(declare-fun e!507286 () Bool)

(declare-fun array_inv!20054 (array!53340) Bool)

(assert (=> start!77680 (and (array_inv!20054 _values!1152) e!507286)))

(assert (=> start!77680 tp!56973))

(assert (=> start!77680 true))

(assert (=> start!77680 tp_is_empty!18655))

(declare-fun array_inv!20055 (array!53342) Bool)

(assert (=> start!77680 (array_inv!20055 _keys!1386)))

(declare-fun b!905227 () Bool)

(assert (=> b!905227 (= e!507292 e!507291)))

(declare-fun res!610954 () Bool)

(assert (=> b!905227 (=> (not res!610954) (not e!507291))))

(assert (=> b!905227 (= res!610954 (contains!4492 lt!408476 k!1033))))

(assert (=> b!905227 (= lt!408476 (getCurrentListMap!2716 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905228 () Bool)

(declare-fun res!610960 () Bool)

(assert (=> b!905228 (=> (not res!610960) (not e!507292))))

(assert (=> b!905228 (= res!610960 (and (= (size!26085 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26086 _keys!1386) (size!26085 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905229 () Bool)

(declare-fun res!610955 () Bool)

(assert (=> b!905229 (=> (not res!610955) (not e!507292))))

(declare-datatypes ((List!18085 0))(
  ( (Nil!18082) (Cons!18081 (h!19227 (_ BitVec 64)) (t!25502 List!18085)) )
))
(declare-fun arrayNoDuplicates!0 (array!53342 (_ BitVec 32) List!18085) Bool)

(assert (=> b!905229 (= res!610955 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18082))))

(declare-fun b!905230 () Bool)

(declare-fun res!610959 () Bool)

(assert (=> b!905230 (=> (not res!610959) (not e!507292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53342 (_ BitVec 32)) Bool)

(assert (=> b!905230 (= res!610959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29695 () Bool)

(declare-fun tp!56974 () Bool)

(assert (=> mapNonEmpty!29695 (= mapRes!29695 (and tp!56974 e!507287))))

(declare-fun mapKey!29695 () (_ BitVec 32))

(declare-fun mapValue!29695 () ValueCell!8846)

(declare-fun mapRest!29695 () (Array (_ BitVec 32) ValueCell!8846))

(assert (=> mapNonEmpty!29695 (= (arr!25625 _values!1152) (store mapRest!29695 mapKey!29695 mapValue!29695))))

(declare-fun b!905231 () Bool)

(assert (=> b!905231 (= e!507286 (and e!507289 mapRes!29695))))

(declare-fun condMapEmpty!29695 () Bool)

(declare-fun mapDefault!29695 () ValueCell!8846)

