; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77632 () Bool)

(assert start!77632)

(declare-fun b_free!16189 () Bool)

(declare-fun b_next!16189 () Bool)

(assert (=> start!77632 (= b_free!16189 (not b_next!16189))))

(declare-fun tp!56829 () Bool)

(declare-fun b_and!26573 () Bool)

(assert (=> start!77632 (= tp!56829 b_and!26573)))

(declare-fun b!904293 () Bool)

(declare-fun res!610271 () Bool)

(declare-fun e!506745 () Bool)

(assert (=> b!904293 (=> (not res!610271) (not e!506745))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904293 (= res!610271 (inRange!0 i!717 mask!1756))))

(declare-fun b!904294 () Bool)

(declare-fun res!610273 () Bool)

(assert (=> b!904294 (=> (not res!610273) (not e!506745))))

(declare-datatypes ((array!53244 0))(
  ( (array!53245 (arr!25577 (Array (_ BitVec 32) (_ BitVec 64))) (size!26037 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53244)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!904294 (= res!610273 (and (= (select (arr!25577 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904295 () Bool)

(declare-fun res!610275 () Bool)

(assert (=> b!904295 (=> (not res!610275) (not e!506745))))

(declare-datatypes ((List!18046 0))(
  ( (Nil!18043) (Cons!18042 (h!19188 (_ BitVec 64)) (t!25437 List!18046)) )
))
(declare-fun arrayNoDuplicates!0 (array!53244 (_ BitVec 32) List!18046) Bool)

(assert (=> b!904295 (= res!610275 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18043))))

(declare-fun b!904296 () Bool)

(declare-fun res!610272 () Bool)

(assert (=> b!904296 (=> (not res!610272) (not e!506745))))

(declare-datatypes ((V!29775 0))(
  ( (V!29776 (val!9354 Int)) )
))
(declare-datatypes ((ValueCell!8822 0))(
  ( (ValueCellFull!8822 (v!11859 V!29775)) (EmptyCell!8822) )
))
(declare-datatypes ((array!53246 0))(
  ( (array!53247 (arr!25578 (Array (_ BitVec 32) ValueCell!8822)) (size!26038 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53246)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29775)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29775)

(declare-datatypes ((tuple2!12172 0))(
  ( (tuple2!12173 (_1!6096 (_ BitVec 64)) (_2!6096 V!29775)) )
))
(declare-datatypes ((List!18047 0))(
  ( (Nil!18044) (Cons!18043 (h!19189 tuple2!12172) (t!25438 List!18047)) )
))
(declare-datatypes ((ListLongMap!10883 0))(
  ( (ListLongMap!10884 (toList!5457 List!18047)) )
))
(declare-fun contains!4470 (ListLongMap!10883 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2694 (array!53244 array!53246 (_ BitVec 32) (_ BitVec 32) V!29775 V!29775 (_ BitVec 32) Int) ListLongMap!10883)

(assert (=> b!904296 (= res!610272 (contains!4470 (getCurrentListMap!2694 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!904297 () Bool)

(declare-fun e!506749 () Bool)

(assert (=> b!904297 (= e!506745 (not e!506749))))

(declare-fun res!610268 () Bool)

(assert (=> b!904297 (=> res!610268 e!506749)))

(assert (=> b!904297 (= res!610268 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26037 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904297 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30645 0))(
  ( (Unit!30646) )
))
(declare-fun lt!408182 () Unit!30645)

(declare-fun lemmaKeyInListMapIsInArray!185 (array!53244 array!53246 (_ BitVec 32) (_ BitVec 32) V!29775 V!29775 (_ BitVec 64) Int) Unit!30645)

(assert (=> b!904297 (= lt!408182 (lemmaKeyInListMapIsInArray!185 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29623 () Bool)

(declare-fun mapRes!29623 () Bool)

(assert (=> mapIsEmpty!29623 mapRes!29623))

(declare-fun b!904298 () Bool)

(declare-fun e!506748 () Bool)

(declare-fun e!506747 () Bool)

(assert (=> b!904298 (= e!506748 (and e!506747 mapRes!29623))))

(declare-fun condMapEmpty!29623 () Bool)

(declare-fun mapDefault!29623 () ValueCell!8822)

