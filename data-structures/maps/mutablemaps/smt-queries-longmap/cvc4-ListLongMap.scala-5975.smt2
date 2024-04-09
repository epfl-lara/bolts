; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77708 () Bool)

(assert start!77708)

(declare-fun b_free!16265 () Bool)

(declare-fun b_next!16265 () Bool)

(assert (=> start!77708 (= b_free!16265 (not b_next!16265))))

(declare-fun tp!57057 () Bool)

(declare-fun b_and!26701 () Bool)

(assert (=> start!77708 (= tp!57057 b_and!26701)))

(declare-fun b!905793 () Bool)

(declare-fun e!507627 () Bool)

(declare-fun e!507628 () Bool)

(assert (=> b!905793 (= e!507627 e!507628)))

(declare-fun res!611375 () Bool)

(assert (=> b!905793 (=> (not res!611375) (not e!507628))))

(declare-datatypes ((V!29875 0))(
  ( (V!29876 (val!9392 Int)) )
))
(declare-datatypes ((tuple2!12242 0))(
  ( (tuple2!12243 (_1!6131 (_ BitVec 64)) (_2!6131 V!29875)) )
))
(declare-datatypes ((List!18106 0))(
  ( (Nil!18103) (Cons!18102 (h!19248 tuple2!12242) (t!25551 List!18106)) )
))
(declare-datatypes ((ListLongMap!10953 0))(
  ( (ListLongMap!10954 (toList!5492 List!18106)) )
))
(declare-fun lt!408683 () ListLongMap!10953)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4502 (ListLongMap!10953 (_ BitVec 64)) Bool)

(assert (=> b!905793 (= res!611375 (contains!4502 lt!408683 k!1033))))

(declare-datatypes ((ValueCell!8860 0))(
  ( (ValueCellFull!8860 (v!11897 V!29875)) (EmptyCell!8860) )
))
(declare-datatypes ((array!53396 0))(
  ( (array!53397 (arr!25653 (Array (_ BitVec 32) ValueCell!8860)) (size!26113 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53396)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29875)

(declare-datatypes ((array!53398 0))(
  ( (array!53399 (arr!25654 (Array (_ BitVec 32) (_ BitVec 64))) (size!26114 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53398)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29875)

(declare-fun getCurrentListMap!2726 (array!53398 array!53396 (_ BitVec 32) (_ BitVec 32) V!29875 V!29875 (_ BitVec 32) Int) ListLongMap!10953)

(assert (=> b!905793 (= lt!408683 (getCurrentListMap!2726 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905795 () Bool)

(declare-fun e!507626 () Bool)

(assert (=> b!905795 (= e!507626 true)))

(declare-fun lt!408684 () V!29875)

(declare-fun apply!469 (ListLongMap!10953 (_ BitVec 64)) V!29875)

(assert (=> b!905795 (= (apply!469 lt!408683 k!1033) lt!408684)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30709 0))(
  ( (Unit!30710) )
))
(declare-fun lt!408685 () Unit!30709)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!20 (array!53398 array!53396 (_ BitVec 32) (_ BitVec 32) V!29875 V!29875 (_ BitVec 64) V!29875 (_ BitVec 32) Int) Unit!30709)

(assert (=> b!905795 (= lt!408685 (lemmaListMapApplyFromThenApplyFromZero!20 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408684 i!717 defaultEntry!1160))))

(declare-fun b!905796 () Bool)

(declare-fun res!611380 () Bool)

(assert (=> b!905796 (=> res!611380 e!507626)))

(declare-fun lt!408686 () ListLongMap!10953)

(assert (=> b!905796 (= res!611380 (not (= (apply!469 lt!408686 k!1033) lt!408684)))))

(declare-fun b!905797 () Bool)

(declare-fun res!611373 () Bool)

(assert (=> b!905797 (=> (not res!611373) (not e!507627))))

(assert (=> b!905797 (= res!611373 (and (= (size!26113 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26114 _keys!1386) (size!26113 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905798 () Bool)

(declare-fun e!507625 () Bool)

(declare-fun e!507629 () Bool)

(declare-fun mapRes!29737 () Bool)

(assert (=> b!905798 (= e!507625 (and e!507629 mapRes!29737))))

(declare-fun condMapEmpty!29737 () Bool)

(declare-fun mapDefault!29737 () ValueCell!8860)

