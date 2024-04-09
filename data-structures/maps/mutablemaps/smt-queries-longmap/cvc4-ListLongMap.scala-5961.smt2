; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77624 () Bool)

(assert start!77624)

(declare-fun b_free!16181 () Bool)

(declare-fun b_next!16181 () Bool)

(assert (=> start!77624 (= b_free!16181 (not b_next!16181))))

(declare-fun tp!56806 () Bool)

(declare-fun b_and!26565 () Bool)

(assert (=> start!77624 (= tp!56806 b_and!26565)))

(declare-fun b!904149 () Bool)

(declare-fun e!506664 () Bool)

(declare-fun e!506662 () Bool)

(assert (=> b!904149 (= e!506664 e!506662)))

(declare-fun res!610167 () Bool)

(assert (=> b!904149 (=> res!610167 e!506662)))

(declare-datatypes ((V!29763 0))(
  ( (V!29764 (val!9350 Int)) )
))
(declare-datatypes ((tuple2!12164 0))(
  ( (tuple2!12165 (_1!6092 (_ BitVec 64)) (_2!6092 V!29763)) )
))
(declare-datatypes ((List!18039 0))(
  ( (Nil!18036) (Cons!18035 (h!19181 tuple2!12164) (t!25430 List!18039)) )
))
(declare-datatypes ((ListLongMap!10875 0))(
  ( (ListLongMap!10876 (toList!5453 List!18039)) )
))
(declare-fun lt!408145 () ListLongMap!10875)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4466 (ListLongMap!10875 (_ BitVec 64)) Bool)

(assert (=> b!904149 (= res!610167 (not (contains!4466 lt!408145 k!1033)))))

(declare-datatypes ((ValueCell!8818 0))(
  ( (ValueCellFull!8818 (v!11855 V!29763)) (EmptyCell!8818) )
))
(declare-datatypes ((array!53228 0))(
  ( (array!53229 (arr!25569 (Array (_ BitVec 32) ValueCell!8818)) (size!26029 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53228)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29763)

(declare-datatypes ((array!53230 0))(
  ( (array!53231 (arr!25570 (Array (_ BitVec 32) (_ BitVec 64))) (size!26030 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53230)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29763)

(declare-fun getCurrentListMap!2690 (array!53230 array!53228 (_ BitVec 32) (_ BitVec 32) V!29763 V!29763 (_ BitVec 32) Int) ListLongMap!10875)

(assert (=> b!904149 (= lt!408145 (getCurrentListMap!2690 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904150 () Bool)

(assert (=> b!904150 (= e!506662 true)))

(declare-fun lt!408144 () V!29763)

(declare-fun apply!436 (ListLongMap!10875 (_ BitVec 64)) V!29763)

(assert (=> b!904150 (= lt!408144 (apply!436 lt!408145 k!1033))))

(declare-fun mapNonEmpty!29611 () Bool)

(declare-fun mapRes!29611 () Bool)

(declare-fun tp!56805 () Bool)

(declare-fun e!506660 () Bool)

(assert (=> mapNonEmpty!29611 (= mapRes!29611 (and tp!56805 e!506660))))

(declare-fun mapRest!29611 () (Array (_ BitVec 32) ValueCell!8818))

(declare-fun mapKey!29611 () (_ BitVec 32))

(declare-fun mapValue!29611 () ValueCell!8818)

(assert (=> mapNonEmpty!29611 (= (arr!25569 _values!1152) (store mapRest!29611 mapKey!29611 mapValue!29611))))

(declare-fun b!904151 () Bool)

(declare-fun tp_is_empty!18599 () Bool)

(assert (=> b!904151 (= e!506660 tp_is_empty!18599)))

(declare-fun b!904152 () Bool)

(declare-fun res!610161 () Bool)

(declare-fun e!506666 () Bool)

(assert (=> b!904152 (=> (not res!610161) (not e!506666))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904152 (= res!610161 (inRange!0 i!717 mask!1756))))

(declare-fun b!904153 () Bool)

(declare-fun res!610166 () Bool)

(assert (=> b!904153 (=> (not res!610166) (not e!506666))))

(assert (=> b!904153 (= res!610166 (and (= (select (arr!25570 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!610160 () Bool)

(assert (=> start!77624 (=> (not res!610160) (not e!506666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77624 (= res!610160 (validMask!0 mask!1756))))

(assert (=> start!77624 e!506666))

(declare-fun e!506661 () Bool)

(declare-fun array_inv!20014 (array!53228) Bool)

(assert (=> start!77624 (and (array_inv!20014 _values!1152) e!506661)))

(assert (=> start!77624 tp!56806))

(assert (=> start!77624 true))

(assert (=> start!77624 tp_is_empty!18599))

(declare-fun array_inv!20015 (array!53230) Bool)

(assert (=> start!77624 (array_inv!20015 _keys!1386)))

(declare-fun b!904154 () Bool)

(declare-fun e!506665 () Bool)

(assert (=> b!904154 (= e!506665 tp_is_empty!18599)))

(declare-fun b!904155 () Bool)

(declare-fun res!610165 () Bool)

(assert (=> b!904155 (=> (not res!610165) (not e!506666))))

(assert (=> b!904155 (= res!610165 (and (= (size!26029 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26030 _keys!1386) (size!26029 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904156 () Bool)

(assert (=> b!904156 (= e!506666 (not e!506664))))

(declare-fun res!610164 () Bool)

(assert (=> b!904156 (=> res!610164 e!506664)))

(assert (=> b!904156 (= res!610164 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26030 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904156 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30637 0))(
  ( (Unit!30638) )
))
(declare-fun lt!408146 () Unit!30637)

(declare-fun lemmaKeyInListMapIsInArray!181 (array!53230 array!53228 (_ BitVec 32) (_ BitVec 32) V!29763 V!29763 (_ BitVec 64) Int) Unit!30637)

(assert (=> b!904156 (= lt!408146 (lemmaKeyInListMapIsInArray!181 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904157 () Bool)

(declare-fun res!610162 () Bool)

(assert (=> b!904157 (=> (not res!610162) (not e!506666))))

(declare-datatypes ((List!18040 0))(
  ( (Nil!18037) (Cons!18036 (h!19182 (_ BitVec 64)) (t!25431 List!18040)) )
))
(declare-fun arrayNoDuplicates!0 (array!53230 (_ BitVec 32) List!18040) Bool)

(assert (=> b!904157 (= res!610162 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18037))))

(declare-fun mapIsEmpty!29611 () Bool)

(assert (=> mapIsEmpty!29611 mapRes!29611))

(declare-fun b!904158 () Bool)

(declare-fun res!610163 () Bool)

(assert (=> b!904158 (=> (not res!610163) (not e!506666))))

(assert (=> b!904158 (= res!610163 (contains!4466 (getCurrentListMap!2690 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!904159 () Bool)

(declare-fun res!610159 () Bool)

(assert (=> b!904159 (=> (not res!610159) (not e!506666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53230 (_ BitVec 32)) Bool)

(assert (=> b!904159 (= res!610159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904160 () Bool)

(assert (=> b!904160 (= e!506661 (and e!506665 mapRes!29611))))

(declare-fun condMapEmpty!29611 () Bool)

(declare-fun mapDefault!29611 () ValueCell!8818)

