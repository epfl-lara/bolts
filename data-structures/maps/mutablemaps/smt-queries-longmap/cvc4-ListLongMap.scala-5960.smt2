; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77618 () Bool)

(assert start!77618)

(declare-fun b_free!16175 () Bool)

(declare-fun b_next!16175 () Bool)

(assert (=> start!77618 (= b_free!16175 (not b_next!16175))))

(declare-fun tp!56787 () Bool)

(declare-fun b_and!26559 () Bool)

(assert (=> start!77618 (= tp!56787 b_and!26559)))

(declare-fun b!904041 () Bool)

(declare-fun e!506599 () Bool)

(declare-fun e!506597 () Bool)

(assert (=> b!904041 (= e!506599 e!506597)))

(declare-fun res!610086 () Bool)

(assert (=> b!904041 (=> res!610086 e!506597)))

(declare-datatypes ((V!29755 0))(
  ( (V!29756 (val!9347 Int)) )
))
(declare-datatypes ((tuple2!12158 0))(
  ( (tuple2!12159 (_1!6089 (_ BitVec 64)) (_2!6089 V!29755)) )
))
(declare-datatypes ((List!18033 0))(
  ( (Nil!18030) (Cons!18029 (h!19175 tuple2!12158) (t!25424 List!18033)) )
))
(declare-datatypes ((ListLongMap!10869 0))(
  ( (ListLongMap!10870 (toList!5450 List!18033)) )
))
(declare-fun lt!408119 () ListLongMap!10869)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4463 (ListLongMap!10869 (_ BitVec 64)) Bool)

(assert (=> b!904041 (= res!610086 (not (contains!4463 lt!408119 k!1033)))))

(declare-datatypes ((ValueCell!8815 0))(
  ( (ValueCellFull!8815 (v!11852 V!29755)) (EmptyCell!8815) )
))
(declare-datatypes ((array!53216 0))(
  ( (array!53217 (arr!25563 (Array (_ BitVec 32) ValueCell!8815)) (size!26023 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53216)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53218 0))(
  ( (array!53219 (arr!25564 (Array (_ BitVec 32) (_ BitVec 64))) (size!26024 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53218)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29755)

(declare-fun zeroValue!1094 () V!29755)

(declare-fun getCurrentListMap!2687 (array!53218 array!53216 (_ BitVec 32) (_ BitVec 32) V!29755 V!29755 (_ BitVec 32) Int) ListLongMap!10869)

(assert (=> b!904041 (= lt!408119 (getCurrentListMap!2687 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904042 () Bool)

(declare-fun e!506600 () Bool)

(declare-fun tp_is_empty!18593 () Bool)

(assert (=> b!904042 (= e!506600 tp_is_empty!18593)))

(declare-fun b!904043 () Bool)

(declare-fun res!610083 () Bool)

(declare-fun e!506601 () Bool)

(assert (=> b!904043 (=> (not res!610083) (not e!506601))))

(assert (=> b!904043 (= res!610083 (and (= (size!26023 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26024 _keys!1386) (size!26023 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904044 () Bool)

(declare-fun res!610081 () Bool)

(assert (=> b!904044 (=> (not res!610081) (not e!506601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53218 (_ BitVec 32)) Bool)

(assert (=> b!904044 (= res!610081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904045 () Bool)

(declare-fun res!610078 () Bool)

(assert (=> b!904045 (=> (not res!610078) (not e!506601))))

(assert (=> b!904045 (= res!610078 (contains!4463 (getCurrentListMap!2687 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!29602 () Bool)

(declare-fun mapRes!29602 () Bool)

(assert (=> mapIsEmpty!29602 mapRes!29602))

(declare-fun b!904047 () Bool)

(declare-fun res!610084 () Bool)

(assert (=> b!904047 (=> (not res!610084) (not e!506601))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904047 (= res!610084 (inRange!0 i!717 mask!1756))))

(declare-fun b!904048 () Bool)

(declare-fun res!610085 () Bool)

(assert (=> b!904048 (=> (not res!610085) (not e!506601))))

(declare-datatypes ((List!18034 0))(
  ( (Nil!18031) (Cons!18030 (h!19176 (_ BitVec 64)) (t!25425 List!18034)) )
))
(declare-fun arrayNoDuplicates!0 (array!53218 (_ BitVec 32) List!18034) Bool)

(assert (=> b!904048 (= res!610085 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18031))))

(declare-fun b!904049 () Bool)

(assert (=> b!904049 (= e!506597 true)))

(declare-fun lt!408118 () V!29755)

(declare-fun apply!433 (ListLongMap!10869 (_ BitVec 64)) V!29755)

(assert (=> b!904049 (= lt!408118 (apply!433 lt!408119 k!1033))))

(declare-fun mapNonEmpty!29602 () Bool)

(declare-fun tp!56788 () Bool)

(assert (=> mapNonEmpty!29602 (= mapRes!29602 (and tp!56788 e!506600))))

(declare-fun mapKey!29602 () (_ BitVec 32))

(declare-fun mapRest!29602 () (Array (_ BitVec 32) ValueCell!8815))

(declare-fun mapValue!29602 () ValueCell!8815)

(assert (=> mapNonEmpty!29602 (= (arr!25563 _values!1152) (store mapRest!29602 mapKey!29602 mapValue!29602))))

(declare-fun b!904050 () Bool)

(assert (=> b!904050 (= e!506601 (not e!506599))))

(declare-fun res!610082 () Bool)

(assert (=> b!904050 (=> res!610082 e!506599)))

(assert (=> b!904050 (= res!610082 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26024 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904050 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30631 0))(
  ( (Unit!30632) )
))
(declare-fun lt!408117 () Unit!30631)

(declare-fun lemmaKeyInListMapIsInArray!178 (array!53218 array!53216 (_ BitVec 32) (_ BitVec 32) V!29755 V!29755 (_ BitVec 64) Int) Unit!30631)

(assert (=> b!904050 (= lt!408117 (lemmaKeyInListMapIsInArray!178 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904046 () Bool)

(declare-fun res!610080 () Bool)

(assert (=> b!904046 (=> (not res!610080) (not e!506601))))

(assert (=> b!904046 (= res!610080 (and (= (select (arr!25564 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!610079 () Bool)

(assert (=> start!77618 (=> (not res!610079) (not e!506601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77618 (= res!610079 (validMask!0 mask!1756))))

(assert (=> start!77618 e!506601))

(declare-fun e!506598 () Bool)

(declare-fun array_inv!20008 (array!53216) Bool)

(assert (=> start!77618 (and (array_inv!20008 _values!1152) e!506598)))

(assert (=> start!77618 tp!56787))

(assert (=> start!77618 true))

(assert (=> start!77618 tp_is_empty!18593))

(declare-fun array_inv!20009 (array!53218) Bool)

(assert (=> start!77618 (array_inv!20009 _keys!1386)))

(declare-fun b!904051 () Bool)

(declare-fun e!506602 () Bool)

(assert (=> b!904051 (= e!506602 tp_is_empty!18593)))

(declare-fun b!904052 () Bool)

(assert (=> b!904052 (= e!506598 (and e!506602 mapRes!29602))))

(declare-fun condMapEmpty!29602 () Bool)

(declare-fun mapDefault!29602 () ValueCell!8815)

