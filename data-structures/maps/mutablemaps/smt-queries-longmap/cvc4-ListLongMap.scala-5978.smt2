; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77726 () Bool)

(assert start!77726)

(declare-fun b_free!16283 () Bool)

(declare-fun b_next!16283 () Bool)

(assert (=> start!77726 (= b_free!16283 (not b_next!16283))))

(declare-fun tp!57111 () Bool)

(declare-fun b_and!26737 () Bool)

(assert (=> start!77726 (= tp!57111 b_and!26737)))

(declare-fun b!906162 () Bool)

(declare-fun e!507845 () Bool)

(declare-fun tp_is_empty!18701 () Bool)

(assert (=> b!906162 (= e!507845 tp_is_empty!18701)))

(declare-fun res!611652 () Bool)

(declare-fun e!507838 () Bool)

(assert (=> start!77726 (=> (not res!611652) (not e!507838))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77726 (= res!611652 (validMask!0 mask!1756))))

(assert (=> start!77726 e!507838))

(declare-datatypes ((V!29899 0))(
  ( (V!29900 (val!9401 Int)) )
))
(declare-datatypes ((ValueCell!8869 0))(
  ( (ValueCellFull!8869 (v!11906 V!29899)) (EmptyCell!8869) )
))
(declare-datatypes ((array!53430 0))(
  ( (array!53431 (arr!25670 (Array (_ BitVec 32) ValueCell!8869)) (size!26130 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53430)

(declare-fun e!507840 () Bool)

(declare-fun array_inv!20082 (array!53430) Bool)

(assert (=> start!77726 (and (array_inv!20082 _values!1152) e!507840)))

(assert (=> start!77726 tp!57111))

(assert (=> start!77726 true))

(assert (=> start!77726 tp_is_empty!18701))

(declare-datatypes ((array!53432 0))(
  ( (array!53433 (arr!25671 (Array (_ BitVec 32) (_ BitVec 64))) (size!26131 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53432)

(declare-fun array_inv!20083 (array!53432) Bool)

(assert (=> start!77726 (array_inv!20083 _keys!1386)))

(declare-fun mapIsEmpty!29764 () Bool)

(declare-fun mapRes!29764 () Bool)

(assert (=> mapIsEmpty!29764 mapRes!29764))

(declare-fun b!906163 () Bool)

(declare-fun e!507841 () Bool)

(declare-fun e!507843 () Bool)

(assert (=> b!906163 (= e!507841 (not e!507843))))

(declare-fun res!611644 () Bool)

(assert (=> b!906163 (=> res!611644 e!507843)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906163 (= res!611644 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26131 _keys!1386))))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408819 () V!29899)

(declare-fun get!13509 (ValueCell!8869 V!29899) V!29899)

(declare-fun dynLambda!1349 (Int (_ BitVec 64)) V!29899)

(assert (=> b!906163 (= lt!408819 (get!13509 (select (arr!25670 _values!1152) i!717) (dynLambda!1349 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906163 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun zeroValue!1094 () V!29899)

(declare-datatypes ((Unit!30725 0))(
  ( (Unit!30726) )
))
(declare-fun lt!408818 () Unit!30725)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29899)

(declare-fun lemmaKeyInListMapIsInArray!222 (array!53432 array!53430 (_ BitVec 32) (_ BitVec 32) V!29899 V!29899 (_ BitVec 64) Int) Unit!30725)

(assert (=> b!906163 (= lt!408818 (lemmaKeyInListMapIsInArray!222 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906164 () Bool)

(declare-fun res!611645 () Bool)

(assert (=> b!906164 (=> (not res!611645) (not e!507838))))

(declare-datatypes ((List!18120 0))(
  ( (Nil!18117) (Cons!18116 (h!19262 (_ BitVec 64)) (t!25583 List!18120)) )
))
(declare-fun arrayNoDuplicates!0 (array!53432 (_ BitVec 32) List!18120) Bool)

(assert (=> b!906164 (= res!611645 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18117))))

(declare-fun b!906165 () Bool)

(declare-fun e!507844 () Bool)

(assert (=> b!906165 (= e!507844 tp_is_empty!18701)))

(declare-fun b!906166 () Bool)

(assert (=> b!906166 (= e!507838 e!507841)))

(declare-fun res!611651 () Bool)

(assert (=> b!906166 (=> (not res!611651) (not e!507841))))

(declare-datatypes ((tuple2!12258 0))(
  ( (tuple2!12259 (_1!6139 (_ BitVec 64)) (_2!6139 V!29899)) )
))
(declare-datatypes ((List!18121 0))(
  ( (Nil!18118) (Cons!18117 (h!19263 tuple2!12258) (t!25584 List!18121)) )
))
(declare-datatypes ((ListLongMap!10969 0))(
  ( (ListLongMap!10970 (toList!5500 List!18121)) )
))
(declare-fun lt!408817 () ListLongMap!10969)

(declare-fun contains!4510 (ListLongMap!10969 (_ BitVec 64)) Bool)

(assert (=> b!906166 (= res!611651 (contains!4510 lt!408817 k!1033))))

(declare-fun getCurrentListMap!2734 (array!53432 array!53430 (_ BitVec 32) (_ BitVec 32) V!29899 V!29899 (_ BitVec 32) Int) ListLongMap!10969)

(assert (=> b!906166 (= lt!408817 (getCurrentListMap!2734 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906167 () Bool)

(declare-fun res!611643 () Bool)

(assert (=> b!906167 (=> (not res!611643) (not e!507841))))

(assert (=> b!906167 (= res!611643 (and (= (select (arr!25671 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906168 () Bool)

(declare-fun res!611650 () Bool)

(declare-fun e!507839 () Bool)

(assert (=> b!906168 (=> res!611650 e!507839)))

(declare-fun lt!408821 () ListLongMap!10969)

(declare-fun apply!477 (ListLongMap!10969 (_ BitVec 64)) V!29899)

(assert (=> b!906168 (= res!611650 (not (= (apply!477 lt!408821 k!1033) lt!408819)))))

(declare-fun b!906169 () Bool)

(declare-fun res!611647 () Bool)

(assert (=> b!906169 (=> (not res!611647) (not e!507838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53432 (_ BitVec 32)) Bool)

(assert (=> b!906169 (= res!611647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29764 () Bool)

(declare-fun tp!57112 () Bool)

(assert (=> mapNonEmpty!29764 (= mapRes!29764 (and tp!57112 e!507845))))

(declare-fun mapRest!29764 () (Array (_ BitVec 32) ValueCell!8869))

(declare-fun mapKey!29764 () (_ BitVec 32))

(declare-fun mapValue!29764 () ValueCell!8869)

(assert (=> mapNonEmpty!29764 (= (arr!25670 _values!1152) (store mapRest!29764 mapKey!29764 mapValue!29764))))

(declare-fun b!906170 () Bool)

(assert (=> b!906170 (= e!507839 true)))

(assert (=> b!906170 (= (apply!477 lt!408817 k!1033) lt!408819)))

(declare-fun lt!408820 () Unit!30725)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!26 (array!53432 array!53430 (_ BitVec 32) (_ BitVec 32) V!29899 V!29899 (_ BitVec 64) V!29899 (_ BitVec 32) Int) Unit!30725)

(assert (=> b!906170 (= lt!408820 (lemmaListMapApplyFromThenApplyFromZero!26 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408819 i!717 defaultEntry!1160))))

(declare-fun b!906171 () Bool)

(declare-fun res!611649 () Bool)

(assert (=> b!906171 (=> (not res!611649) (not e!507838))))

(assert (=> b!906171 (= res!611649 (and (= (size!26130 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26131 _keys!1386) (size!26130 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906172 () Bool)

(assert (=> b!906172 (= e!507840 (and e!507844 mapRes!29764))))

(declare-fun condMapEmpty!29764 () Bool)

(declare-fun mapDefault!29764 () ValueCell!8869)

