; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77620 () Bool)

(assert start!77620)

(declare-fun b_free!16177 () Bool)

(declare-fun b_next!16177 () Bool)

(assert (=> start!77620 (= b_free!16177 (not b_next!16177))))

(declare-fun tp!56793 () Bool)

(declare-fun b_and!26561 () Bool)

(assert (=> start!77620 (= tp!56793 b_and!26561)))

(declare-fun b!904077 () Bool)

(declare-fun e!506621 () Bool)

(declare-fun e!506622 () Bool)

(assert (=> b!904077 (= e!506621 (not e!506622))))

(declare-fun res!610108 () Bool)

(assert (=> b!904077 (=> res!610108 e!506622)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53220 0))(
  ( (array!53221 (arr!25565 (Array (_ BitVec 32) (_ BitVec 64))) (size!26025 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53220)

(assert (=> b!904077 (= res!610108 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26025 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904077 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((V!29759 0))(
  ( (V!29760 (val!9348 Int)) )
))
(declare-datatypes ((ValueCell!8816 0))(
  ( (ValueCellFull!8816 (v!11853 V!29759)) (EmptyCell!8816) )
))
(declare-datatypes ((array!53222 0))(
  ( (array!53223 (arr!25566 (Array (_ BitVec 32) ValueCell!8816)) (size!26026 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53222)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29759)

(declare-datatypes ((Unit!30633 0))(
  ( (Unit!30634) )
))
(declare-fun lt!408127 () Unit!30633)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29759)

(declare-fun lemmaKeyInListMapIsInArray!179 (array!53220 array!53222 (_ BitVec 32) (_ BitVec 32) V!29759 V!29759 (_ BitVec 64) Int) Unit!30633)

(assert (=> b!904077 (= lt!408127 (lemmaKeyInListMapIsInArray!179 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904078 () Bool)

(declare-fun res!610105 () Bool)

(assert (=> b!904078 (=> (not res!610105) (not e!506621))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904078 (= res!610105 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!29605 () Bool)

(declare-fun mapRes!29605 () Bool)

(assert (=> mapIsEmpty!29605 mapRes!29605))

(declare-fun b!904079 () Bool)

(declare-fun res!610107 () Bool)

(assert (=> b!904079 (=> (not res!610107) (not e!506621))))

(declare-datatypes ((List!18035 0))(
  ( (Nil!18032) (Cons!18031 (h!19177 (_ BitVec 64)) (t!25426 List!18035)) )
))
(declare-fun arrayNoDuplicates!0 (array!53220 (_ BitVec 32) List!18035) Bool)

(assert (=> b!904079 (= res!610107 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18032))))

(declare-fun b!904080 () Bool)

(declare-fun res!610112 () Bool)

(assert (=> b!904080 (=> (not res!610112) (not e!506621))))

(declare-datatypes ((tuple2!12160 0))(
  ( (tuple2!12161 (_1!6090 (_ BitVec 64)) (_2!6090 V!29759)) )
))
(declare-datatypes ((List!18036 0))(
  ( (Nil!18033) (Cons!18032 (h!19178 tuple2!12160) (t!25427 List!18036)) )
))
(declare-datatypes ((ListLongMap!10871 0))(
  ( (ListLongMap!10872 (toList!5451 List!18036)) )
))
(declare-fun contains!4464 (ListLongMap!10871 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2688 (array!53220 array!53222 (_ BitVec 32) (_ BitVec 32) V!29759 V!29759 (_ BitVec 32) Int) ListLongMap!10871)

(assert (=> b!904080 (= res!610112 (contains!4464 (getCurrentListMap!2688 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!904081 () Bool)

(declare-fun e!506620 () Bool)

(declare-fun tp_is_empty!18595 () Bool)

(assert (=> b!904081 (= e!506620 tp_is_empty!18595)))

(declare-fun b!904082 () Bool)

(declare-fun res!610113 () Bool)

(assert (=> b!904082 (=> (not res!610113) (not e!506621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53220 (_ BitVec 32)) Bool)

(assert (=> b!904082 (= res!610113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904083 () Bool)

(declare-fun res!610111 () Bool)

(assert (=> b!904083 (=> (not res!610111) (not e!506621))))

(assert (=> b!904083 (= res!610111 (and (= (select (arr!25565 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!29605 () Bool)

(declare-fun tp!56794 () Bool)

(declare-fun e!506623 () Bool)

(assert (=> mapNonEmpty!29605 (= mapRes!29605 (and tp!56794 e!506623))))

(declare-fun mapKey!29605 () (_ BitVec 32))

(declare-fun mapRest!29605 () (Array (_ BitVec 32) ValueCell!8816))

(declare-fun mapValue!29605 () ValueCell!8816)

(assert (=> mapNonEmpty!29605 (= (arr!25566 _values!1152) (store mapRest!29605 mapKey!29605 mapValue!29605))))

(declare-fun b!904084 () Bool)

(declare-fun e!506624 () Bool)

(assert (=> b!904084 (= e!506624 true)))

(declare-fun lt!408126 () V!29759)

(declare-fun lt!408128 () ListLongMap!10871)

(declare-fun apply!434 (ListLongMap!10871 (_ BitVec 64)) V!29759)

(assert (=> b!904084 (= lt!408126 (apply!434 lt!408128 k!1033))))

(declare-fun res!610110 () Bool)

(assert (=> start!77620 (=> (not res!610110) (not e!506621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77620 (= res!610110 (validMask!0 mask!1756))))

(assert (=> start!77620 e!506621))

(declare-fun e!506618 () Bool)

(declare-fun array_inv!20010 (array!53222) Bool)

(assert (=> start!77620 (and (array_inv!20010 _values!1152) e!506618)))

(assert (=> start!77620 tp!56793))

(assert (=> start!77620 true))

(assert (=> start!77620 tp_is_empty!18595))

(declare-fun array_inv!20011 (array!53220) Bool)

(assert (=> start!77620 (array_inv!20011 _keys!1386)))

(declare-fun b!904085 () Bool)

(assert (=> b!904085 (= e!506622 e!506624)))

(declare-fun res!610109 () Bool)

(assert (=> b!904085 (=> res!610109 e!506624)))

(assert (=> b!904085 (= res!610109 (not (contains!4464 lt!408128 k!1033)))))

(assert (=> b!904085 (= lt!408128 (getCurrentListMap!2688 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904086 () Bool)

(assert (=> b!904086 (= e!506623 tp_is_empty!18595)))

(declare-fun b!904087 () Bool)

(assert (=> b!904087 (= e!506618 (and e!506620 mapRes!29605))))

(declare-fun condMapEmpty!29605 () Bool)

(declare-fun mapDefault!29605 () ValueCell!8816)

