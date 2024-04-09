; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77892 () Bool)

(assert start!77892)

(declare-fun b_free!16423 () Bool)

(declare-fun b_next!16423 () Bool)

(assert (=> start!77892 (= b_free!16423 (not b_next!16423))))

(declare-fun tp!57534 () Bool)

(declare-fun b_and!27009 () Bool)

(assert (=> start!77892 (= tp!57534 b_and!27009)))

(declare-fun b!909052 () Bool)

(declare-fun res!613687 () Bool)

(declare-fun e!509564 () Bool)

(assert (=> b!909052 (=> (not res!613687) (not e!509564))))

(declare-datatypes ((array!53702 0))(
  ( (array!53703 (arr!25805 (Array (_ BitVec 32) (_ BitVec 64))) (size!26265 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53702)

(declare-datatypes ((List!18227 0))(
  ( (Nil!18224) (Cons!18223 (h!19369 (_ BitVec 64)) (t!25816 List!18227)) )
))
(declare-fun arrayNoDuplicates!0 (array!53702 (_ BitVec 32) List!18227) Bool)

(assert (=> b!909052 (= res!613687 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18224))))

(declare-fun b!909053 () Bool)

(declare-fun res!613689 () Bool)

(assert (=> b!909053 (=> (not res!613689) (not e!509564))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53702 (_ BitVec 32)) Bool)

(assert (=> b!909053 (= res!613689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!613688 () Bool)

(assert (=> start!77892 (=> (not res!613688) (not e!509564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77892 (= res!613688 (validMask!0 mask!1756))))

(assert (=> start!77892 e!509564))

(declare-datatypes ((V!30087 0))(
  ( (V!30088 (val!9471 Int)) )
))
(declare-datatypes ((ValueCell!8939 0))(
  ( (ValueCellFull!8939 (v!11978 V!30087)) (EmptyCell!8939) )
))
(declare-datatypes ((array!53704 0))(
  ( (array!53705 (arr!25806 (Array (_ BitVec 32) ValueCell!8939)) (size!26266 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53704)

(declare-fun e!509562 () Bool)

(declare-fun array_inv!20174 (array!53704) Bool)

(assert (=> start!77892 (and (array_inv!20174 _values!1152) e!509562)))

(assert (=> start!77892 tp!57534))

(assert (=> start!77892 true))

(declare-fun tp_is_empty!18841 () Bool)

(assert (=> start!77892 tp_is_empty!18841))

(declare-fun array_inv!20175 (array!53702) Bool)

(assert (=> start!77892 (array_inv!20175 _keys!1386)))

(declare-fun b!909054 () Bool)

(declare-fun e!509563 () Bool)

(assert (=> b!909054 (= e!509563 tp_is_empty!18841)))

(declare-fun b!909055 () Bool)

(assert (=> b!909055 (= e!509564 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30087)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30087)

(declare-fun lt!409906 () Bool)

(declare-datatypes ((tuple2!12370 0))(
  ( (tuple2!12371 (_1!6195 (_ BitVec 64)) (_2!6195 V!30087)) )
))
(declare-datatypes ((List!18228 0))(
  ( (Nil!18225) (Cons!18224 (h!19370 tuple2!12370) (t!25817 List!18228)) )
))
(declare-datatypes ((ListLongMap!11081 0))(
  ( (ListLongMap!11082 (toList!5556 List!18228)) )
))
(declare-fun contains!4563 (ListLongMap!11081 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2786 (array!53702 array!53704 (_ BitVec 32) (_ BitVec 32) V!30087 V!30087 (_ BitVec 32) Int) ListLongMap!11081)

(assert (=> b!909055 (= lt!409906 (contains!4563 (getCurrentListMap!2786 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909056 () Bool)

(declare-fun e!509561 () Bool)

(declare-fun mapRes!29977 () Bool)

(assert (=> b!909056 (= e!509562 (and e!509561 mapRes!29977))))

(declare-fun condMapEmpty!29977 () Bool)

(declare-fun mapDefault!29977 () ValueCell!8939)

