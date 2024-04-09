; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77830 () Bool)

(assert start!77830)

(declare-fun b_free!16361 () Bool)

(declare-fun b_next!16361 () Bool)

(assert (=> start!77830 (= b_free!16361 (not b_next!16361))))

(declare-fun tp!57349 () Bool)

(declare-fun b_and!26897 () Bool)

(assert (=> start!77830 (= tp!57349 b_and!26897)))

(declare-fun b!907913 () Bool)

(declare-fun e!508879 () Bool)

(declare-fun e!508881 () Bool)

(assert (=> b!907913 (= e!508879 e!508881)))

(declare-fun res!612883 () Bool)

(assert (=> b!907913 (=> (not res!612883) (not e!508881))))

(declare-datatypes ((V!30003 0))(
  ( (V!30004 (val!9440 Int)) )
))
(declare-datatypes ((tuple2!12322 0))(
  ( (tuple2!12323 (_1!6171 (_ BitVec 64)) (_2!6171 V!30003)) )
))
(declare-datatypes ((List!18180 0))(
  ( (Nil!18177) (Cons!18176 (h!19322 tuple2!12322) (t!25721 List!18180)) )
))
(declare-datatypes ((ListLongMap!11033 0))(
  ( (ListLongMap!11034 (toList!5532 List!18180)) )
))
(declare-fun lt!409523 () ListLongMap!11033)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4541 (ListLongMap!11033 (_ BitVec 64)) Bool)

(assert (=> b!907913 (= res!612883 (contains!4541 lt!409523 k!1033))))

(declare-datatypes ((ValueCell!8908 0))(
  ( (ValueCellFull!8908 (v!11947 V!30003)) (EmptyCell!8908) )
))
(declare-datatypes ((array!53584 0))(
  ( (array!53585 (arr!25746 (Array (_ BitVec 32) ValueCell!8908)) (size!26206 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53584)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30003)

(declare-datatypes ((array!53586 0))(
  ( (array!53587 (arr!25747 (Array (_ BitVec 32) (_ BitVec 64))) (size!26207 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53586)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30003)

(declare-fun getCurrentListMap!2764 (array!53586 array!53584 (_ BitVec 32) (_ BitVec 32) V!30003 V!30003 (_ BitVec 32) Int) ListLongMap!11033)

(assert (=> b!907913 (= lt!409523 (getCurrentListMap!2764 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun res!612886 () Bool)

(assert (=> start!77830 (=> (not res!612886) (not e!508879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77830 (= res!612886 (validMask!0 mask!1756))))

(assert (=> start!77830 e!508879))

(declare-fun e!508882 () Bool)

(declare-fun array_inv!20132 (array!53584) Bool)

(assert (=> start!77830 (and (array_inv!20132 _values!1152) e!508882)))

(assert (=> start!77830 tp!57349))

(assert (=> start!77830 true))

(declare-fun tp_is_empty!18779 () Bool)

(assert (=> start!77830 tp_is_empty!18779))

(declare-fun array_inv!20133 (array!53586) Bool)

(assert (=> start!77830 (array_inv!20133 _keys!1386)))

(declare-fun b!907914 () Bool)

(declare-fun res!612878 () Bool)

(declare-fun e!508878 () Bool)

(assert (=> b!907914 (=> res!612878 e!508878)))

(declare-fun lt!409522 () V!30003)

(declare-fun lt!409525 () ListLongMap!11033)

(declare-fun apply!507 (ListLongMap!11033 (_ BitVec 64)) V!30003)

(assert (=> b!907914 (= res!612878 (not (= (apply!507 lt!409525 k!1033) lt!409522)))))

(declare-fun b!907915 () Bool)

(assert (=> b!907915 (= e!508878 true)))

(assert (=> b!907915 (= (apply!507 lt!409523 k!1033) lt!409522)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30793 0))(
  ( (Unit!30794) )
))
(declare-fun lt!409521 () Unit!30793)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!53 (array!53586 array!53584 (_ BitVec 32) (_ BitVec 32) V!30003 V!30003 (_ BitVec 64) V!30003 (_ BitVec 32) Int) Unit!30793)

(assert (=> b!907915 (= lt!409521 (lemmaListMapApplyFromThenApplyFromZero!53 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409522 i!717 defaultEntry!1160))))

(declare-fun b!907916 () Bool)

(declare-fun res!612881 () Bool)

(assert (=> b!907916 (=> (not res!612881) (not e!508881))))

(assert (=> b!907916 (= res!612881 (and (= (select (arr!25747 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907917 () Bool)

(declare-fun e!508877 () Bool)

(assert (=> b!907917 (= e!508877 e!508878)))

(declare-fun res!612882 () Bool)

(assert (=> b!907917 (=> res!612882 e!508878)))

(assert (=> b!907917 (= res!612882 (not (contains!4541 lt!409525 k!1033)))))

(assert (=> b!907917 (= lt!409525 (getCurrentListMap!2764 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907918 () Bool)

(declare-fun e!508880 () Bool)

(declare-fun mapRes!29884 () Bool)

(assert (=> b!907918 (= e!508882 (and e!508880 mapRes!29884))))

(declare-fun condMapEmpty!29884 () Bool)

(declare-fun mapDefault!29884 () ValueCell!8908)

