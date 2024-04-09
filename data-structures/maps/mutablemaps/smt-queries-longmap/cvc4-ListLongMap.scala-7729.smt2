; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97126 () Bool)

(assert start!97126)

(declare-fun mapIsEmpty!42841 () Bool)

(declare-fun mapRes!42841 () Bool)

(assert (=> mapIsEmpty!42841 mapRes!42841))

(declare-fun b!1104274 () Bool)

(declare-fun e!630361 () Bool)

(declare-datatypes ((List!24176 0))(
  ( (Nil!24173) (Cons!24172 (h!25381 (_ BitVec 64)) (t!34448 List!24176)) )
))
(declare-fun contains!6432 (List!24176 (_ BitVec 64)) Bool)

(assert (=> b!1104274 (= e!630361 (contains!6432 Nil!24173 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1104275 () Bool)

(declare-fun res!736828 () Bool)

(declare-fun e!630360 () Bool)

(assert (=> b!1104275 (=> (not res!736828) (not e!630360))))

(declare-datatypes ((array!71582 0))(
  ( (array!71583 (arr!34442 (Array (_ BitVec 32) (_ BitVec 64))) (size!34979 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71582)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71582 (_ BitVec 32)) Bool)

(assert (=> b!1104275 (= res!736828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71583 (store (arr!34442 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34979 _keys!1208)) mask!1564))))

(declare-fun mapNonEmpty!42841 () Bool)

(declare-fun tp!81762 () Bool)

(declare-fun e!630362 () Bool)

(assert (=> mapNonEmpty!42841 (= mapRes!42841 (and tp!81762 e!630362))))

(declare-fun mapKey!42841 () (_ BitVec 32))

(declare-datatypes ((V!41597 0))(
  ( (V!41598 (val!13733 Int)) )
))
(declare-datatypes ((ValueCell!12967 0))(
  ( (ValueCellFull!12967 (v!16366 V!41597)) (EmptyCell!12967) )
))
(declare-fun mapValue!42841 () ValueCell!12967)

(declare-datatypes ((array!71584 0))(
  ( (array!71585 (arr!34443 (Array (_ BitVec 32) ValueCell!12967)) (size!34980 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71584)

(declare-fun mapRest!42841 () (Array (_ BitVec 32) ValueCell!12967))

(assert (=> mapNonEmpty!42841 (= (arr!34443 _values!996) (store mapRest!42841 mapKey!42841 mapValue!42841))))

(declare-fun b!1104277 () Bool)

(declare-fun tp_is_empty!27353 () Bool)

(assert (=> b!1104277 (= e!630362 tp_is_empty!27353)))

(declare-fun b!1104278 () Bool)

(declare-fun res!736833 () Bool)

(assert (=> b!1104278 (=> (not res!736833) (not e!630360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104278 (= res!736833 (validMask!0 mask!1564))))

(declare-fun b!1104279 () Bool)

(declare-fun res!736831 () Bool)

(assert (=> b!1104279 (=> (not res!736831) (not e!630360))))

(assert (=> b!1104279 (= res!736831 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34979 _keys!1208))))))

(declare-fun b!1104280 () Bool)

(assert (=> b!1104280 (= e!630360 e!630361)))

(declare-fun res!736829 () Bool)

(assert (=> b!1104280 (=> res!736829 e!630361)))

(assert (=> b!1104280 (= res!736829 (contains!6432 Nil!24173 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1104281 () Bool)

(declare-fun res!736834 () Bool)

(assert (=> b!1104281 (=> (not res!736834) (not e!630360))))

(declare-fun noDuplicate!1605 (List!24176) Bool)

(assert (=> b!1104281 (= res!736834 (noDuplicate!1605 Nil!24173))))

(declare-fun b!1104282 () Bool)

(declare-fun res!736827 () Bool)

(assert (=> b!1104282 (=> (not res!736827) (not e!630360))))

(assert (=> b!1104282 (= res!736827 (and (bvsle #b00000000000000000000000000000000 (size!34979 _keys!1208)) (bvslt (size!34979 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun res!736826 () Bool)

(assert (=> start!97126 (=> (not res!736826) (not e!630360))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97126 (= res!736826 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34979 _keys!1208))))))

(assert (=> start!97126 e!630360))

(declare-fun array_inv!26376 (array!71582) Bool)

(assert (=> start!97126 (array_inv!26376 _keys!1208)))

(assert (=> start!97126 true))

(declare-fun e!630364 () Bool)

(declare-fun array_inv!26377 (array!71584) Bool)

(assert (=> start!97126 (and (array_inv!26377 _values!996) e!630364)))

(declare-fun b!1104276 () Bool)

(declare-fun res!736825 () Bool)

(assert (=> b!1104276 (=> (not res!736825) (not e!630360))))

(declare-fun arrayNoDuplicates!0 (array!71582 (_ BitVec 32) List!24176) Bool)

(assert (=> b!1104276 (= res!736825 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24173))))

(declare-fun b!1104283 () Bool)

(declare-fun res!736832 () Bool)

(assert (=> b!1104283 (=> (not res!736832) (not e!630360))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104283 (= res!736832 (validKeyInArray!0 k!934))))

(declare-fun b!1104284 () Bool)

(declare-fun res!736830 () Bool)

(assert (=> b!1104284 (=> (not res!736830) (not e!630360))))

(assert (=> b!1104284 (= res!736830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104285 () Bool)

(declare-fun e!630363 () Bool)

(assert (=> b!1104285 (= e!630363 tp_is_empty!27353)))

(declare-fun b!1104286 () Bool)

(declare-fun res!736835 () Bool)

(assert (=> b!1104286 (=> (not res!736835) (not e!630360))))

(assert (=> b!1104286 (= res!736835 (= (select (arr!34442 _keys!1208) i!673) k!934))))

(declare-fun b!1104287 () Bool)

(declare-fun res!736836 () Bool)

(assert (=> b!1104287 (=> (not res!736836) (not e!630360))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104287 (= res!736836 (and (= (size!34980 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34979 _keys!1208) (size!34980 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104288 () Bool)

(assert (=> b!1104288 (= e!630364 (and e!630363 mapRes!42841))))

(declare-fun condMapEmpty!42841 () Bool)

(declare-fun mapDefault!42841 () ValueCell!12967)

