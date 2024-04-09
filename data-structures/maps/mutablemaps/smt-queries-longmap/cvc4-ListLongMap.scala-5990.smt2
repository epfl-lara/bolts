; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77824 () Bool)

(assert start!77824)

(declare-fun b_free!16355 () Bool)

(declare-fun b_next!16355 () Bool)

(assert (=> start!77824 (= b_free!16355 (not b_next!16355))))

(declare-fun tp!57330 () Bool)

(declare-fun b_and!26885 () Bool)

(assert (=> start!77824 (= tp!57330 b_and!26885)))

(declare-fun b!907790 () Bool)

(declare-fun e!508809 () Bool)

(declare-fun e!508810 () Bool)

(assert (=> b!907790 (= e!508809 e!508810)))

(declare-fun res!612789 () Bool)

(assert (=> b!907790 (=> (not res!612789) (not e!508810))))

(declare-datatypes ((V!29995 0))(
  ( (V!29996 (val!9437 Int)) )
))
(declare-datatypes ((tuple2!12316 0))(
  ( (tuple2!12317 (_1!6168 (_ BitVec 64)) (_2!6168 V!29995)) )
))
(declare-datatypes ((List!18175 0))(
  ( (Nil!18172) (Cons!18171 (h!19317 tuple2!12316) (t!25710 List!18175)) )
))
(declare-datatypes ((ListLongMap!11027 0))(
  ( (ListLongMap!11028 (toList!5529 List!18175)) )
))
(declare-fun lt!409478 () ListLongMap!11027)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4538 (ListLongMap!11027 (_ BitVec 64)) Bool)

(assert (=> b!907790 (= res!612789 (contains!4538 lt!409478 k!1033))))

(declare-datatypes ((ValueCell!8905 0))(
  ( (ValueCellFull!8905 (v!11944 V!29995)) (EmptyCell!8905) )
))
(declare-datatypes ((array!53572 0))(
  ( (array!53573 (arr!25740 (Array (_ BitVec 32) ValueCell!8905)) (size!26200 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53572)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29995)

(declare-datatypes ((array!53574 0))(
  ( (array!53575 (arr!25741 (Array (_ BitVec 32) (_ BitVec 64))) (size!26201 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53574)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29995)

(declare-fun getCurrentListMap!2761 (array!53574 array!53572 (_ BitVec 32) (_ BitVec 32) V!29995 V!29995 (_ BitVec 32) Int) ListLongMap!11027)

(assert (=> b!907790 (= lt!409478 (getCurrentListMap!2761 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907791 () Bool)

(declare-fun e!508806 () Bool)

(declare-fun tp_is_empty!18773 () Bool)

(assert (=> b!907791 (= e!508806 tp_is_empty!18773)))

(declare-fun b!907792 () Bool)

(declare-fun res!612791 () Bool)

(assert (=> b!907792 (=> (not res!612791) (not e!508809))))

(assert (=> b!907792 (= res!612791 (and (= (size!26200 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26201 _keys!1386) (size!26200 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29875 () Bool)

(declare-fun mapRes!29875 () Bool)

(declare-fun tp!57331 () Bool)

(assert (=> mapNonEmpty!29875 (= mapRes!29875 (and tp!57331 e!508806))))

(declare-fun mapValue!29875 () ValueCell!8905)

(declare-fun mapRest!29875 () (Array (_ BitVec 32) ValueCell!8905))

(declare-fun mapKey!29875 () (_ BitVec 32))

(assert (=> mapNonEmpty!29875 (= (arr!25740 _values!1152) (store mapRest!29875 mapKey!29875 mapValue!29875))))

(declare-fun b!907794 () Bool)

(declare-fun e!508807 () Bool)

(assert (=> b!907794 (= e!508807 true)))

(declare-fun lt!409477 () V!29995)

(declare-fun apply!505 (ListLongMap!11027 (_ BitVec 64)) V!29995)

(assert (=> b!907794 (= (apply!505 lt!409478 k!1033) lt!409477)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30789 0))(
  ( (Unit!30790) )
))
(declare-fun lt!409476 () Unit!30789)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!51 (array!53574 array!53572 (_ BitVec 32) (_ BitVec 32) V!29995 V!29995 (_ BitVec 64) V!29995 (_ BitVec 32) Int) Unit!30789)

(assert (=> b!907794 (= lt!409476 (lemmaListMapApplyFromThenApplyFromZero!51 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409477 i!717 defaultEntry!1160))))

(declare-fun b!907795 () Bool)

(declare-fun res!612794 () Bool)

(assert (=> b!907795 (=> (not res!612794) (not e!508809))))

(declare-datatypes ((List!18176 0))(
  ( (Nil!18173) (Cons!18172 (h!19318 (_ BitVec 64)) (t!25711 List!18176)) )
))
(declare-fun arrayNoDuplicates!0 (array!53574 (_ BitVec 32) List!18176) Bool)

(assert (=> b!907795 (= res!612794 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18173))))

(declare-fun b!907796 () Bool)

(declare-fun res!612787 () Bool)

(assert (=> b!907796 (=> (not res!612787) (not e!508809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53574 (_ BitVec 32)) Bool)

(assert (=> b!907796 (= res!612787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907797 () Bool)

(declare-fun res!612793 () Bool)

(assert (=> b!907797 (=> res!612793 e!508807)))

(declare-fun lt!409480 () ListLongMap!11027)

(assert (=> b!907797 (= res!612793 (not (= (apply!505 lt!409480 k!1033) lt!409477)))))

(declare-fun b!907798 () Bool)

(declare-fun e!508811 () Bool)

(declare-fun e!508808 () Bool)

(assert (=> b!907798 (= e!508811 (and e!508808 mapRes!29875))))

(declare-fun condMapEmpty!29875 () Bool)

(declare-fun mapDefault!29875 () ValueCell!8905)

