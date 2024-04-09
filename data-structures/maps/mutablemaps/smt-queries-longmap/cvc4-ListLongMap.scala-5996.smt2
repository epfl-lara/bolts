; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77860 () Bool)

(assert start!77860)

(declare-fun b_free!16391 () Bool)

(declare-fun b_next!16391 () Bool)

(assert (=> start!77860 (= b_free!16391 (not b_next!16391))))

(declare-fun tp!57439 () Bool)

(declare-fun b_and!26957 () Bool)

(assert (=> start!77860 (= tp!57439 b_and!26957)))

(declare-fun mapIsEmpty!29929 () Bool)

(declare-fun mapRes!29929 () Bool)

(assert (=> mapIsEmpty!29929 mapRes!29929))

(declare-fun b!908528 () Bool)

(declare-fun e!509239 () Bool)

(assert (=> b!908528 (= e!509239 true)))

(declare-datatypes ((V!30043 0))(
  ( (V!30044 (val!9455 Int)) )
))
(declare-datatypes ((tuple2!12350 0))(
  ( (tuple2!12351 (_1!6185 (_ BitVec 64)) (_2!6185 V!30043)) )
))
(declare-datatypes ((List!18205 0))(
  ( (Nil!18202) (Cons!18201 (h!19347 tuple2!12350) (t!25776 List!18205)) )
))
(declare-datatypes ((ListLongMap!11061 0))(
  ( (ListLongMap!11062 (toList!5546 List!18205)) )
))
(declare-fun lt!409750 () ListLongMap!11061)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!409749 () V!30043)

(declare-fun apply!519 (ListLongMap!11061 (_ BitVec 64)) V!30043)

(assert (=> b!908528 (= (apply!519 lt!409750 k!1033) lt!409749)))

(declare-datatypes ((ValueCell!8923 0))(
  ( (ValueCellFull!8923 (v!11962 V!30043)) (EmptyCell!8923) )
))
(declare-datatypes ((array!53642 0))(
  ( (array!53643 (arr!25775 (Array (_ BitVec 32) ValueCell!8923)) (size!26235 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53642)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30043)

(declare-datatypes ((array!53644 0))(
  ( (array!53645 (arr!25776 (Array (_ BitVec 32) (_ BitVec 64))) (size!26236 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53644)

(declare-datatypes ((Unit!30815 0))(
  ( (Unit!30816) )
))
(declare-fun lt!409746 () Unit!30815)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30043)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!62 (array!53644 array!53642 (_ BitVec 32) (_ BitVec 32) V!30043 V!30043 (_ BitVec 64) V!30043 (_ BitVec 32) Int) Unit!30815)

(assert (=> b!908528 (= lt!409746 (lemmaListMapApplyFromThenApplyFromZero!62 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409749 i!717 defaultEntry!1160))))

(declare-fun b!908529 () Bool)

(declare-fun res!613330 () Bool)

(declare-fun e!509242 () Bool)

(assert (=> b!908529 (=> (not res!613330) (not e!509242))))

(assert (=> b!908529 (= res!613330 (and (= (size!26235 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26236 _keys!1386) (size!26235 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908530 () Bool)

(declare-fun e!509243 () Bool)

(declare-fun e!509236 () Bool)

(assert (=> b!908530 (= e!509243 (not e!509236))))

(declare-fun res!613327 () Bool)

(assert (=> b!908530 (=> res!613327 e!509236)))

(assert (=> b!908530 (= res!613327 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26236 _keys!1386))))))

(declare-fun get!13586 (ValueCell!8923 V!30043) V!30043)

(declare-fun dynLambda!1387 (Int (_ BitVec 64)) V!30043)

(assert (=> b!908530 (= lt!409749 (get!13586 (select (arr!25775 _values!1152) i!717) (dynLambda!1387 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908530 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409747 () Unit!30815)

(declare-fun lemmaKeyInListMapIsInArray!260 (array!53644 array!53642 (_ BitVec 32) (_ BitVec 32) V!30043 V!30043 (_ BitVec 64) Int) Unit!30815)

(assert (=> b!908530 (= lt!409747 (lemmaKeyInListMapIsInArray!260 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!908531 () Bool)

(declare-fun res!613333 () Bool)

(assert (=> b!908531 (=> (not res!613333) (not e!509243))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908531 (= res!613333 (inRange!0 i!717 mask!1756))))

(declare-fun b!908532 () Bool)

(declare-fun res!613336 () Bool)

(assert (=> b!908532 (=> res!613336 e!509239)))

(declare-fun lt!409748 () ListLongMap!11061)

(assert (=> b!908532 (= res!613336 (not (= (apply!519 lt!409748 k!1033) lt!409749)))))

(declare-fun b!908533 () Bool)

(declare-fun e!509237 () Bool)

(declare-fun tp_is_empty!18809 () Bool)

(assert (=> b!908533 (= e!509237 tp_is_empty!18809)))

(declare-fun res!613332 () Bool)

(assert (=> start!77860 (=> (not res!613332) (not e!509242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77860 (= res!613332 (validMask!0 mask!1756))))

(assert (=> start!77860 e!509242))

(declare-fun e!509241 () Bool)

(declare-fun array_inv!20154 (array!53642) Bool)

(assert (=> start!77860 (and (array_inv!20154 _values!1152) e!509241)))

(assert (=> start!77860 tp!57439))

(assert (=> start!77860 true))

(assert (=> start!77860 tp_is_empty!18809))

(declare-fun array_inv!20155 (array!53644) Bool)

(assert (=> start!77860 (array_inv!20155 _keys!1386)))

(declare-fun mapNonEmpty!29929 () Bool)

(declare-fun tp!57438 () Bool)

(assert (=> mapNonEmpty!29929 (= mapRes!29929 (and tp!57438 e!509237))))

(declare-fun mapKey!29929 () (_ BitVec 32))

(declare-fun mapRest!29929 () (Array (_ BitVec 32) ValueCell!8923))

(declare-fun mapValue!29929 () ValueCell!8923)

(assert (=> mapNonEmpty!29929 (= (arr!25775 _values!1152) (store mapRest!29929 mapKey!29929 mapValue!29929))))

(declare-fun b!908534 () Bool)

(declare-fun e!509238 () Bool)

(assert (=> b!908534 (= e!509241 (and e!509238 mapRes!29929))))

(declare-fun condMapEmpty!29929 () Bool)

(declare-fun mapDefault!29929 () ValueCell!8923)

