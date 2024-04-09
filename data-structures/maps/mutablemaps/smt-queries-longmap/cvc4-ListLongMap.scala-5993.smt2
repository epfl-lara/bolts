; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77842 () Bool)

(assert start!77842)

(declare-fun b_free!16373 () Bool)

(declare-fun b_next!16373 () Bool)

(assert (=> start!77842 (= b_free!16373 (not b_next!16373))))

(declare-fun tp!57385 () Bool)

(declare-fun b_and!26921 () Bool)

(assert (=> start!77842 (= tp!57385 b_and!26921)))

(declare-fun b!908159 () Bool)

(declare-fun res!613060 () Bool)

(declare-fun e!509026 () Bool)

(assert (=> b!908159 (=> res!613060 e!509026)))

(declare-datatypes ((V!30019 0))(
  ( (V!30020 (val!9446 Int)) )
))
(declare-datatypes ((tuple2!12334 0))(
  ( (tuple2!12335 (_1!6177 (_ BitVec 64)) (_2!6177 V!30019)) )
))
(declare-datatypes ((List!18190 0))(
  ( (Nil!18187) (Cons!18186 (h!19332 tuple2!12334) (t!25743 List!18190)) )
))
(declare-datatypes ((ListLongMap!11045 0))(
  ( (ListLongMap!11046 (toList!5538 List!18190)) )
))
(declare-fun lt!409613 () ListLongMap!11045)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!409614 () V!30019)

(declare-fun apply!512 (ListLongMap!11045 (_ BitVec 64)) V!30019)

(assert (=> b!908159 (= res!613060 (not (= (apply!512 lt!409613 k!1033) lt!409614)))))

(declare-fun b!908160 () Bool)

(declare-fun res!613066 () Bool)

(declare-fun e!509020 () Bool)

(assert (=> b!908160 (=> (not res!613066) (not e!509020))))

(declare-datatypes ((ValueCell!8914 0))(
  ( (ValueCellFull!8914 (v!11953 V!30019)) (EmptyCell!8914) )
))
(declare-datatypes ((array!53608 0))(
  ( (array!53609 (arr!25758 (Array (_ BitVec 32) ValueCell!8914)) (size!26218 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53608)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53610 0))(
  ( (array!53611 (arr!25759 (Array (_ BitVec 32) (_ BitVec 64))) (size!26219 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53610)

(assert (=> b!908160 (= res!613066 (and (= (size!26218 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26219 _keys!1386) (size!26218 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908161 () Bool)

(declare-fun res!613065 () Bool)

(assert (=> b!908161 (=> (not res!613065) (not e!509020))))

(declare-datatypes ((List!18191 0))(
  ( (Nil!18188) (Cons!18187 (h!19333 (_ BitVec 64)) (t!25744 List!18191)) )
))
(declare-fun arrayNoDuplicates!0 (array!53610 (_ BitVec 32) List!18191) Bool)

(assert (=> b!908161 (= res!613065 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18188))))

(declare-fun b!908162 () Bool)

(declare-fun e!509023 () Bool)

(assert (=> b!908162 (= e!509020 e!509023)))

(declare-fun res!613064 () Bool)

(assert (=> b!908162 (=> (not res!613064) (not e!509023))))

(declare-fun lt!409615 () ListLongMap!11045)

(declare-fun contains!4547 (ListLongMap!11045 (_ BitVec 64)) Bool)

(assert (=> b!908162 (= res!613064 (contains!4547 lt!409615 k!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30019)

(declare-fun minValue!1094 () V!30019)

(declare-fun getCurrentListMap!2770 (array!53610 array!53608 (_ BitVec 32) (_ BitVec 32) V!30019 V!30019 (_ BitVec 32) Int) ListLongMap!11045)

(assert (=> b!908162 (= lt!409615 (getCurrentListMap!2770 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!29902 () Bool)

(declare-fun mapRes!29902 () Bool)

(declare-fun tp!57384 () Bool)

(declare-fun e!509025 () Bool)

(assert (=> mapNonEmpty!29902 (= mapRes!29902 (and tp!57384 e!509025))))

(declare-fun mapValue!29902 () ValueCell!8914)

(declare-fun mapKey!29902 () (_ BitVec 32))

(declare-fun mapRest!29902 () (Array (_ BitVec 32) ValueCell!8914))

(assert (=> mapNonEmpty!29902 (= (arr!25758 _values!1152) (store mapRest!29902 mapKey!29902 mapValue!29902))))

(declare-fun b!908163 () Bool)

(declare-fun res!613061 () Bool)

(assert (=> b!908163 (=> (not res!613061) (not e!509023))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!908163 (= res!613061 (and (= (select (arr!25759 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908164 () Bool)

(declare-fun res!613062 () Bool)

(assert (=> b!908164 (=> (not res!613062) (not e!509020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53610 (_ BitVec 32)) Bool)

(assert (=> b!908164 (= res!613062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29902 () Bool)

(assert (=> mapIsEmpty!29902 mapRes!29902))

(declare-fun b!908165 () Bool)

(declare-fun e!509027 () Bool)

(declare-fun e!509022 () Bool)

(assert (=> b!908165 (= e!509027 (and e!509022 mapRes!29902))))

(declare-fun condMapEmpty!29902 () Bool)

(declare-fun mapDefault!29902 () ValueCell!8914)

