; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77850 () Bool)

(assert start!77850)

(declare-fun b_free!16381 () Bool)

(declare-fun b_next!16381 () Bool)

(assert (=> start!77850 (= b_free!16381 (not b_next!16381))))

(declare-fun tp!57409 () Bool)

(declare-fun b_and!26937 () Bool)

(assert (=> start!77850 (= tp!57409 b_and!26937)))

(declare-fun b!908323 () Bool)

(declare-fun res!613186 () Bool)

(declare-fun e!509118 () Bool)

(assert (=> b!908323 (=> (not res!613186) (not e!509118))))

(declare-datatypes ((array!53624 0))(
  ( (array!53625 (arr!25766 (Array (_ BitVec 32) (_ BitVec 64))) (size!26226 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53624)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53624 (_ BitVec 32)) Bool)

(assert (=> b!908323 (= res!613186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908324 () Bool)

(declare-fun e!509116 () Bool)

(assert (=> b!908324 (= e!509116 true)))

(declare-datatypes ((V!30031 0))(
  ( (V!30032 (val!9450 Int)) )
))
(declare-datatypes ((tuple2!12342 0))(
  ( (tuple2!12343 (_1!6181 (_ BitVec 64)) (_2!6181 V!30031)) )
))
(declare-datatypes ((List!18197 0))(
  ( (Nil!18194) (Cons!18193 (h!19339 tuple2!12342) (t!25758 List!18197)) )
))
(declare-datatypes ((ListLongMap!11053 0))(
  ( (ListLongMap!11054 (toList!5542 List!18197)) )
))
(declare-fun lt!409673 () ListLongMap!11053)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!409674 () V!30031)

(declare-fun apply!515 (ListLongMap!11053 (_ BitVec 64)) V!30031)

(assert (=> b!908324 (= (apply!515 lt!409673 k!1033) lt!409674)))

(declare-datatypes ((ValueCell!8918 0))(
  ( (ValueCellFull!8918 (v!11957 V!30031)) (EmptyCell!8918) )
))
(declare-datatypes ((array!53626 0))(
  ( (array!53627 (arr!25767 (Array (_ BitVec 32) ValueCell!8918)) (size!26227 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53626)

(declare-datatypes ((Unit!30807 0))(
  ( (Unit!30808) )
))
(declare-fun lt!409672 () Unit!30807)

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30031)

(declare-fun zeroValue!1094 () V!30031)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!59 (array!53624 array!53626 (_ BitVec 32) (_ BitVec 32) V!30031 V!30031 (_ BitVec 64) V!30031 (_ BitVec 32) Int) Unit!30807)

(assert (=> b!908324 (= lt!409672 (lemmaListMapApplyFromThenApplyFromZero!59 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409674 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29914 () Bool)

(declare-fun mapRes!29914 () Bool)

(declare-fun tp!57408 () Bool)

(declare-fun e!509122 () Bool)

(assert (=> mapNonEmpty!29914 (= mapRes!29914 (and tp!57408 e!509122))))

(declare-fun mapRest!29914 () (Array (_ BitVec 32) ValueCell!8918))

(declare-fun mapValue!29914 () ValueCell!8918)

(declare-fun mapKey!29914 () (_ BitVec 32))

(assert (=> mapNonEmpty!29914 (= (arr!25767 _values!1152) (store mapRest!29914 mapKey!29914 mapValue!29914))))

(declare-fun b!908325 () Bool)

(declare-fun res!613182 () Bool)

(assert (=> b!908325 (=> (not res!613182) (not e!509118))))

(declare-datatypes ((List!18198 0))(
  ( (Nil!18195) (Cons!18194 (h!19340 (_ BitVec 64)) (t!25759 List!18198)) )
))
(declare-fun arrayNoDuplicates!0 (array!53624 (_ BitVec 32) List!18198) Bool)

(assert (=> b!908325 (= res!613182 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18195))))

(declare-fun b!908326 () Bool)

(declare-fun e!509123 () Bool)

(assert (=> b!908326 (= e!509123 e!509116)))

(declare-fun res!613183 () Bool)

(assert (=> b!908326 (=> res!613183 e!509116)))

(declare-fun lt!409671 () ListLongMap!11053)

(declare-fun contains!4551 (ListLongMap!11053 (_ BitVec 64)) Bool)

(assert (=> b!908326 (= res!613183 (not (contains!4551 lt!409671 k!1033)))))

(declare-fun getCurrentListMap!2774 (array!53624 array!53626 (_ BitVec 32) (_ BitVec 32) V!30031 V!30031 (_ BitVec 32) Int) ListLongMap!11053)

(assert (=> b!908326 (= lt!409671 (getCurrentListMap!2774 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908327 () Bool)

(declare-fun res!613181 () Bool)

(declare-fun e!509120 () Bool)

(assert (=> b!908327 (=> (not res!613181) (not e!509120))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908327 (= res!613181 (inRange!0 i!717 mask!1756))))

(declare-fun b!908328 () Bool)

(declare-fun res!613178 () Bool)

(assert (=> b!908328 (=> (not res!613178) (not e!509120))))

(assert (=> b!908328 (= res!613178 (and (= (select (arr!25766 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908329 () Bool)

(declare-fun res!613180 () Bool)

(assert (=> b!908329 (=> (not res!613180) (not e!509118))))

(assert (=> b!908329 (= res!613180 (and (= (size!26227 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26226 _keys!1386) (size!26227 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908330 () Bool)

(assert (=> b!908330 (= e!509118 e!509120)))

(declare-fun res!613177 () Bool)

(assert (=> b!908330 (=> (not res!613177) (not e!509120))))

(assert (=> b!908330 (= res!613177 (contains!4551 lt!409673 k!1033))))

(assert (=> b!908330 (= lt!409673 (getCurrentListMap!2774 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908331 () Bool)

(declare-fun res!613185 () Bool)

(assert (=> b!908331 (=> res!613185 e!509116)))

(assert (=> b!908331 (= res!613185 (not (= (apply!515 lt!409671 k!1033) lt!409674)))))

(declare-fun mapIsEmpty!29914 () Bool)

(assert (=> mapIsEmpty!29914 mapRes!29914))

(declare-fun b!908332 () Bool)

(declare-fun tp_is_empty!18799 () Bool)

(assert (=> b!908332 (= e!509122 tp_is_empty!18799)))

(declare-fun b!908333 () Bool)

(assert (=> b!908333 (= e!509120 (not e!509123))))

(declare-fun res!613179 () Bool)

(assert (=> b!908333 (=> res!613179 e!509123)))

(assert (=> b!908333 (= res!613179 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26226 _keys!1386))))))

(declare-fun get!13580 (ValueCell!8918 V!30031) V!30031)

(declare-fun dynLambda!1383 (Int (_ BitVec 64)) V!30031)

(assert (=> b!908333 (= lt!409674 (get!13580 (select (arr!25767 _values!1152) i!717) (dynLambda!1383 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908333 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409675 () Unit!30807)

(declare-fun lemmaKeyInListMapIsInArray!256 (array!53624 array!53626 (_ BitVec 32) (_ BitVec 32) V!30031 V!30031 (_ BitVec 64) Int) Unit!30807)

(assert (=> b!908333 (= lt!409675 (lemmaKeyInListMapIsInArray!256 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!908334 () Bool)

(declare-fun e!509121 () Bool)

(declare-fun e!509119 () Bool)

(assert (=> b!908334 (= e!509121 (and e!509119 mapRes!29914))))

(declare-fun condMapEmpty!29914 () Bool)

(declare-fun mapDefault!29914 () ValueCell!8918)

