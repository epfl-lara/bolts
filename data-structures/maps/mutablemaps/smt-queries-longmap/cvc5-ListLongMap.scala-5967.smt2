; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77656 () Bool)

(assert start!77656)

(declare-fun b_free!16213 () Bool)

(declare-fun b_next!16213 () Bool)

(assert (=> start!77656 (= b_free!16213 (not b_next!16213))))

(declare-fun tp!56901 () Bool)

(declare-fun b_and!26597 () Bool)

(assert (=> start!77656 (= tp!56901 b_and!26597)))

(declare-fun b!904727 () Bool)

(declare-fun e!506998 () Bool)

(declare-fun e!507004 () Bool)

(assert (=> b!904727 (= e!506998 (not e!507004))))

(declare-fun res!610599 () Bool)

(assert (=> b!904727 (=> res!610599 e!507004)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53292 0))(
  ( (array!53293 (arr!25601 (Array (_ BitVec 32) (_ BitVec 64))) (size!26061 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53292)

(assert (=> b!904727 (= res!610599 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26061 _keys!1386))))))

(declare-datatypes ((V!29807 0))(
  ( (V!29808 (val!9366 Int)) )
))
(declare-datatypes ((ValueCell!8834 0))(
  ( (ValueCellFull!8834 (v!11871 V!29807)) (EmptyCell!8834) )
))
(declare-datatypes ((array!53294 0))(
  ( (array!53295 (arr!25602 (Array (_ BitVec 32) ValueCell!8834)) (size!26062 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53294)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408294 () V!29807)

(declare-fun get!13460 (ValueCell!8834 V!29807) V!29807)

(declare-fun dynLambda!1322 (Int (_ BitVec 64)) V!29807)

(assert (=> b!904727 (= lt!408294 (get!13460 (select (arr!25602 _values!1152) i!717) (dynLambda!1322 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904727 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29807)

(declare-datatypes ((Unit!30665 0))(
  ( (Unit!30666) )
))
(declare-fun lt!408296 () Unit!30665)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29807)

(declare-fun lemmaKeyInListMapIsInArray!195 (array!53292 array!53294 (_ BitVec 32) (_ BitVec 32) V!29807 V!29807 (_ BitVec 64) Int) Unit!30665)

(assert (=> b!904727 (= lt!408296 (lemmaKeyInListMapIsInArray!195 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904728 () Bool)

(declare-fun res!610594 () Bool)

(declare-fun e!507002 () Bool)

(assert (=> b!904728 (=> (not res!610594) (not e!507002))))

(declare-datatypes ((List!18065 0))(
  ( (Nil!18062) (Cons!18061 (h!19207 (_ BitVec 64)) (t!25458 List!18065)) )
))
(declare-fun arrayNoDuplicates!0 (array!53292 (_ BitVec 32) List!18065) Bool)

(assert (=> b!904728 (= res!610594 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18062))))

(declare-fun mapIsEmpty!29659 () Bool)

(declare-fun mapRes!29659 () Bool)

(assert (=> mapIsEmpty!29659 mapRes!29659))

(declare-fun b!904729 () Bool)

(declare-fun e!506999 () Bool)

(declare-fun tp_is_empty!18631 () Bool)

(assert (=> b!904729 (= e!506999 tp_is_empty!18631)))

(declare-fun mapNonEmpty!29659 () Bool)

(declare-fun tp!56902 () Bool)

(assert (=> mapNonEmpty!29659 (= mapRes!29659 (and tp!56902 e!506999))))

(declare-fun mapRest!29659 () (Array (_ BitVec 32) ValueCell!8834))

(declare-fun mapValue!29659 () ValueCell!8834)

(declare-fun mapKey!29659 () (_ BitVec 32))

(assert (=> mapNonEmpty!29659 (= (arr!25602 _values!1152) (store mapRest!29659 mapKey!29659 mapValue!29659))))

(declare-fun res!610600 () Bool)

(assert (=> start!77656 (=> (not res!610600) (not e!507002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77656 (= res!610600 (validMask!0 mask!1756))))

(assert (=> start!77656 e!507002))

(declare-fun e!507005 () Bool)

(declare-fun array_inv!20036 (array!53294) Bool)

(assert (=> start!77656 (and (array_inv!20036 _values!1152) e!507005)))

(assert (=> start!77656 tp!56901))

(assert (=> start!77656 true))

(assert (=> start!77656 tp_is_empty!18631))

(declare-fun array_inv!20037 (array!53292) Bool)

(assert (=> start!77656 (array_inv!20037 _keys!1386)))

(declare-fun b!904730 () Bool)

(assert (=> b!904730 (= e!507002 e!506998)))

(declare-fun res!610602 () Bool)

(assert (=> b!904730 (=> (not res!610602) (not e!506998))))

(declare-datatypes ((tuple2!12194 0))(
  ( (tuple2!12195 (_1!6107 (_ BitVec 64)) (_2!6107 V!29807)) )
))
(declare-datatypes ((List!18066 0))(
  ( (Nil!18063) (Cons!18062 (h!19208 tuple2!12194) (t!25459 List!18066)) )
))
(declare-datatypes ((ListLongMap!10905 0))(
  ( (ListLongMap!10906 (toList!5468 List!18066)) )
))
(declare-fun lt!408292 () ListLongMap!10905)

(declare-fun contains!4481 (ListLongMap!10905 (_ BitVec 64)) Bool)

(assert (=> b!904730 (= res!610602 (contains!4481 lt!408292 k!1033))))

(declare-fun getCurrentListMap!2705 (array!53292 array!53294 (_ BitVec 32) (_ BitVec 32) V!29807 V!29807 (_ BitVec 32) Int) ListLongMap!10905)

(assert (=> b!904730 (= lt!408292 (getCurrentListMap!2705 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!904731 () Bool)

(declare-fun e!507000 () Bool)

(assert (=> b!904731 (= e!507000 true)))

(declare-fun apply!446 (ListLongMap!10905 (_ BitVec 64)) V!29807)

(assert (=> b!904731 (= (apply!446 lt!408292 k!1033) lt!408294)))

(declare-fun lt!408295 () Unit!30665)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!1 (array!53292 array!53294 (_ BitVec 32) (_ BitVec 32) V!29807 V!29807 (_ BitVec 64) V!29807 (_ BitVec 32) Int) Unit!30665)

(assert (=> b!904731 (= lt!408295 (lemmaListMapApplyFromThenApplyFromZero!1 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408294 i!717 defaultEntry!1160))))

(declare-fun b!904732 () Bool)

(declare-fun res!610596 () Bool)

(assert (=> b!904732 (=> (not res!610596) (not e!506998))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904732 (= res!610596 (inRange!0 i!717 mask!1756))))

(declare-fun b!904733 () Bool)

(declare-fun res!610595 () Bool)

(assert (=> b!904733 (=> (not res!610595) (not e!506998))))

(assert (=> b!904733 (= res!610595 (and (= (select (arr!25601 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904734 () Bool)

(declare-fun res!610601 () Bool)

(assert (=> b!904734 (=> (not res!610601) (not e!507002))))

(assert (=> b!904734 (= res!610601 (and (= (size!26062 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26061 _keys!1386) (size!26062 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904735 () Bool)

(declare-fun e!507001 () Bool)

(assert (=> b!904735 (= e!507005 (and e!507001 mapRes!29659))))

(declare-fun condMapEmpty!29659 () Bool)

(declare-fun mapDefault!29659 () ValueCell!8834)

