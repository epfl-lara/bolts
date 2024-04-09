; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77782 () Bool)

(assert start!77782)

(declare-fun b_free!16339 () Bool)

(declare-fun b_next!16339 () Bool)

(assert (=> start!77782 (= b_free!16339 (not b_next!16339))))

(declare-fun tp!57279 () Bool)

(declare-fun b_and!26849 () Bool)

(assert (=> start!77782 (= tp!57279 b_and!26849)))

(declare-fun b!907310 () Bool)

(declare-fun e!508517 () Bool)

(declare-fun tp_is_empty!18757 () Bool)

(assert (=> b!907310 (= e!508517 tp_is_empty!18757)))

(declare-fun b!907311 () Bool)

(declare-fun e!508511 () Bool)

(declare-fun e!508514 () Bool)

(assert (=> b!907311 (= e!508511 (not e!508514))))

(declare-fun res!612483 () Bool)

(assert (=> b!907311 (=> res!612483 e!508514)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53540 0))(
  ( (array!53541 (arr!25725 (Array (_ BitVec 32) (_ BitVec 64))) (size!26185 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53540)

(assert (=> b!907311 (= res!612483 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26185 _keys!1386))))))

(declare-datatypes ((V!29975 0))(
  ( (V!29976 (val!9429 Int)) )
))
(declare-datatypes ((ValueCell!8897 0))(
  ( (ValueCellFull!8897 (v!11934 V!29975)) (EmptyCell!8897) )
))
(declare-datatypes ((array!53542 0))(
  ( (array!53543 (arr!25726 (Array (_ BitVec 32) ValueCell!8897)) (size!26186 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53542)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409241 () V!29975)

(declare-fun get!13550 (ValueCell!8897 V!29975) V!29975)

(declare-fun dynLambda!1370 (Int (_ BitVec 64)) V!29975)

(assert (=> b!907311 (= lt!409241 (get!13550 (select (arr!25726 _values!1152) i!717) (dynLambda!1370 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907311 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29975)

(declare-datatypes ((Unit!30771 0))(
  ( (Unit!30772) )
))
(declare-fun lt!409238 () Unit!30771)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29975)

(declare-fun lemmaKeyInListMapIsInArray!243 (array!53540 array!53542 (_ BitVec 32) (_ BitVec 32) V!29975 V!29975 (_ BitVec 64) Int) Unit!30771)

(assert (=> b!907311 (= lt!409238 (lemmaKeyInListMapIsInArray!243 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!907312 () Bool)

(declare-fun e!508512 () Bool)

(assert (=> b!907312 (= e!508512 (bvslt #b00000000000000000000000000000000 (size!26185 _keys!1386)))))

(declare-datatypes ((tuple2!12302 0))(
  ( (tuple2!12303 (_1!6161 (_ BitVec 64)) (_2!6161 V!29975)) )
))
(declare-datatypes ((List!18162 0))(
  ( (Nil!18159) (Cons!18158 (h!19304 tuple2!12302) (t!25681 List!18162)) )
))
(declare-datatypes ((ListLongMap!11013 0))(
  ( (ListLongMap!11014 (toList!5522 List!18162)) )
))
(declare-fun lt!409239 () ListLongMap!11013)

(declare-fun apply!498 (ListLongMap!11013 (_ BitVec 64)) V!29975)

(assert (=> b!907312 (= (apply!498 lt!409239 k!1033) lt!409241)))

(declare-fun lt!409237 () Unit!30771)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!44 (array!53540 array!53542 (_ BitVec 32) (_ BitVec 32) V!29975 V!29975 (_ BitVec 64) V!29975 (_ BitVec 32) Int) Unit!30771)

(assert (=> b!907312 (= lt!409237 (lemmaListMapApplyFromThenApplyFromZero!44 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409241 i!717 defaultEntry!1160))))

(declare-fun b!907313 () Bool)

(assert (=> b!907313 (= e!508514 e!508512)))

(declare-fun res!612490 () Bool)

(assert (=> b!907313 (=> res!612490 e!508512)))

(declare-fun lt!409240 () ListLongMap!11013)

(declare-fun contains!4530 (ListLongMap!11013 (_ BitVec 64)) Bool)

(assert (=> b!907313 (= res!612490 (not (contains!4530 lt!409240 k!1033)))))

(declare-fun getCurrentListMap!2754 (array!53540 array!53542 (_ BitVec 32) (_ BitVec 32) V!29975 V!29975 (_ BitVec 32) Int) ListLongMap!11013)

(assert (=> b!907313 (= lt!409240 (getCurrentListMap!2754 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907314 () Bool)

(declare-fun res!612489 () Bool)

(assert (=> b!907314 (=> (not res!612489) (not e!508511))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907314 (= res!612489 (inRange!0 i!717 mask!1756))))

(declare-fun b!907315 () Bool)

(declare-fun res!612491 () Bool)

(declare-fun e!508513 () Bool)

(assert (=> b!907315 (=> (not res!612491) (not e!508513))))

(declare-datatypes ((List!18163 0))(
  ( (Nil!18160) (Cons!18159 (h!19305 (_ BitVec 64)) (t!25682 List!18163)) )
))
(declare-fun arrayNoDuplicates!0 (array!53540 (_ BitVec 32) List!18163) Bool)

(assert (=> b!907315 (= res!612491 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18160))))

(declare-fun res!612484 () Bool)

(assert (=> start!77782 (=> (not res!612484) (not e!508513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77782 (= res!612484 (validMask!0 mask!1756))))

(assert (=> start!77782 e!508513))

(declare-fun e!508516 () Bool)

(declare-fun array_inv!20118 (array!53542) Bool)

(assert (=> start!77782 (and (array_inv!20118 _values!1152) e!508516)))

(assert (=> start!77782 tp!57279))

(assert (=> start!77782 true))

(assert (=> start!77782 tp_is_empty!18757))

(declare-fun array_inv!20119 (array!53540) Bool)

(assert (=> start!77782 (array_inv!20119 _keys!1386)))

(declare-fun b!907316 () Bool)

(declare-fun res!612485 () Bool)

(assert (=> b!907316 (=> (not res!612485) (not e!508511))))

(assert (=> b!907316 (= res!612485 (and (= (select (arr!25725 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907317 () Bool)

(declare-fun mapRes!29848 () Bool)

(assert (=> b!907317 (= e!508516 (and e!508517 mapRes!29848))))

(declare-fun condMapEmpty!29848 () Bool)

(declare-fun mapDefault!29848 () ValueCell!8897)

