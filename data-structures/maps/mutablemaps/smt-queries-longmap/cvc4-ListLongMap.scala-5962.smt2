; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77630 () Bool)

(assert start!77630)

(declare-fun b_free!16187 () Bool)

(declare-fun b_next!16187 () Bool)

(assert (=> start!77630 (= b_free!16187 (not b_next!16187))))

(declare-fun tp!56823 () Bool)

(declare-fun b_and!26571 () Bool)

(assert (=> start!77630 (= tp!56823 b_and!26571)))

(declare-fun res!610240 () Bool)

(declare-fun e!506727 () Bool)

(assert (=> start!77630 (=> (not res!610240) (not e!506727))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77630 (= res!610240 (validMask!0 mask!1756))))

(assert (=> start!77630 e!506727))

(declare-datatypes ((V!29771 0))(
  ( (V!29772 (val!9353 Int)) )
))
(declare-datatypes ((ValueCell!8821 0))(
  ( (ValueCellFull!8821 (v!11858 V!29771)) (EmptyCell!8821) )
))
(declare-datatypes ((array!53240 0))(
  ( (array!53241 (arr!25575 (Array (_ BitVec 32) ValueCell!8821)) (size!26035 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53240)

(declare-fun e!506724 () Bool)

(declare-fun array_inv!20018 (array!53240) Bool)

(assert (=> start!77630 (and (array_inv!20018 _values!1152) e!506724)))

(assert (=> start!77630 tp!56823))

(assert (=> start!77630 true))

(declare-fun tp_is_empty!18605 () Bool)

(assert (=> start!77630 tp_is_empty!18605))

(declare-datatypes ((array!53242 0))(
  ( (array!53243 (arr!25576 (Array (_ BitVec 32) (_ BitVec 64))) (size!26036 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53242)

(declare-fun array_inv!20019 (array!53242) Bool)

(assert (=> start!77630 (array_inv!20019 _keys!1386)))

(declare-fun mapIsEmpty!29620 () Bool)

(declare-fun mapRes!29620 () Bool)

(assert (=> mapIsEmpty!29620 mapRes!29620))

(declare-fun b!904257 () Bool)

(declare-fun e!506723 () Bool)

(assert (=> b!904257 (= e!506723 true)))

(declare-fun lt!408173 () V!29771)

(declare-datatypes ((tuple2!12170 0))(
  ( (tuple2!12171 (_1!6095 (_ BitVec 64)) (_2!6095 V!29771)) )
))
(declare-datatypes ((List!18045 0))(
  ( (Nil!18042) (Cons!18041 (h!19187 tuple2!12170) (t!25436 List!18045)) )
))
(declare-datatypes ((ListLongMap!10881 0))(
  ( (ListLongMap!10882 (toList!5456 List!18045)) )
))
(declare-fun lt!408171 () ListLongMap!10881)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!438 (ListLongMap!10881 (_ BitVec 64)) V!29771)

(assert (=> b!904257 (= lt!408173 (apply!438 lt!408171 k!1033))))

(declare-fun b!904258 () Bool)

(declare-fun e!506726 () Bool)

(assert (=> b!904258 (= e!506726 e!506723)))

(declare-fun res!610246 () Bool)

(assert (=> b!904258 (=> res!610246 e!506723)))

(declare-fun contains!4469 (ListLongMap!10881 (_ BitVec 64)) Bool)

(assert (=> b!904258 (= res!610246 (not (contains!4469 lt!408171 k!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29771)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29771)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun getCurrentListMap!2693 (array!53242 array!53240 (_ BitVec 32) (_ BitVec 32) V!29771 V!29771 (_ BitVec 32) Int) ListLongMap!10881)

(assert (=> b!904258 (= lt!408171 (getCurrentListMap!2693 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904259 () Bool)

(assert (=> b!904259 (= e!506727 (not e!506726))))

(declare-fun res!610243 () Bool)

(assert (=> b!904259 (=> res!610243 e!506726)))

(assert (=> b!904259 (= res!610243 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26036 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904259 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30643 0))(
  ( (Unit!30644) )
))
(declare-fun lt!408172 () Unit!30643)

(declare-fun lemmaKeyInListMapIsInArray!184 (array!53242 array!53240 (_ BitVec 32) (_ BitVec 32) V!29771 V!29771 (_ BitVec 64) Int) Unit!30643)

(assert (=> b!904259 (= lt!408172 (lemmaKeyInListMapIsInArray!184 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904260 () Bool)

(declare-fun e!506729 () Bool)

(assert (=> b!904260 (= e!506724 (and e!506729 mapRes!29620))))

(declare-fun condMapEmpty!29620 () Bool)

(declare-fun mapDefault!29620 () ValueCell!8821)

