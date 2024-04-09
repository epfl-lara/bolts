; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!750 () Bool)

(assert start!750)

(declare-fun b_free!163 () Bool)

(declare-fun b_next!163 () Bool)

(assert (=> start!750 (= b_free!163 (not b_next!163))))

(declare-fun tp!716 () Bool)

(declare-fun b_and!307 () Bool)

(assert (=> start!750 (= tp!716 b_and!307)))

(declare-fun b!5288 () Bool)

(declare-fun res!6166 () Bool)

(declare-fun e!2854 () Bool)

(assert (=> b!5288 (=> (not res!6166) (not e!2854))))

(declare-datatypes ((array!417 0))(
  ( (array!418 (arr!198 (Array (_ BitVec 32) (_ BitVec 64))) (size!260 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!417)

(declare-datatypes ((List!126 0))(
  ( (Nil!123) (Cons!122 (h!688 (_ BitVec 64)) (t!2259 List!126)) )
))
(declare-fun arrayNoDuplicates!0 (array!417 (_ BitVec 32) List!126) Bool)

(assert (=> b!5288 (= res!6166 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!123))))

(declare-fun mapIsEmpty!329 () Bool)

(declare-fun mapRes!329 () Bool)

(assert (=> mapIsEmpty!329 mapRes!329))

(declare-fun b!5289 () Bool)

(declare-fun res!6165 () Bool)

(assert (=> b!5289 (=> (not res!6165) (not e!2854))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!499 0))(
  ( (V!500 (val!126 Int)) )
))
(declare-fun minValue!1434 () V!499)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!499)

(declare-datatypes ((ValueCell!104 0))(
  ( (ValueCellFull!104 (v!1216 V!499)) (EmptyCell!104) )
))
(declare-datatypes ((array!419 0))(
  ( (array!420 (arr!199 (Array (_ BitVec 32) ValueCell!104)) (size!261 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!419)

(declare-datatypes ((tuple2!116 0))(
  ( (tuple2!117 (_1!58 (_ BitVec 64)) (_2!58 V!499)) )
))
(declare-datatypes ((List!127 0))(
  ( (Nil!124) (Cons!123 (h!689 tuple2!116) (t!2260 List!127)) )
))
(declare-datatypes ((ListLongMap!121 0))(
  ( (ListLongMap!122 (toList!76 List!127)) )
))
(declare-fun contains!49 (ListLongMap!121 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!35 (array!417 array!419 (_ BitVec 32) (_ BitVec 32) V!499 V!499 (_ BitVec 32) Int) ListLongMap!121)

(assert (=> b!5289 (= res!6165 (contains!49 (getCurrentListMap!35 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!5290 () Bool)

(declare-fun e!2853 () Bool)

(declare-fun arrayContainsKey!0 (array!417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5290 (= e!2853 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5292 () Bool)

(declare-fun res!6162 () Bool)

(assert (=> b!5292 (=> (not res!6162) (not e!2854))))

(assert (=> b!5292 (= res!6162 (and (= (size!261 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!260 _keys!1806) (size!261 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5293 () Bool)

(declare-fun res!6161 () Bool)

(assert (=> b!5293 (=> (not res!6161) (not e!2854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!417 (_ BitVec 32)) Bool)

(assert (=> b!5293 (= res!6161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5294 () Bool)

(declare-fun e!2850 () Bool)

(declare-fun tp_is_empty!241 () Bool)

(assert (=> b!5294 (= e!2850 tp_is_empty!241)))

(declare-fun b!5295 () Bool)

(declare-fun res!6164 () Bool)

(assert (=> b!5295 (=> (not res!6164) (not e!2854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5295 (= res!6164 (validKeyInArray!0 k!1278))))

(declare-fun mapNonEmpty!329 () Bool)

(declare-fun tp!715 () Bool)

(assert (=> mapNonEmpty!329 (= mapRes!329 (and tp!715 e!2850))))

(declare-fun mapRest!329 () (Array (_ BitVec 32) ValueCell!104))

(declare-fun mapValue!329 () ValueCell!104)

(declare-fun mapKey!329 () (_ BitVec 32))

(assert (=> mapNonEmpty!329 (= (arr!199 _values!1492) (store mapRest!329 mapKey!329 mapValue!329))))

(declare-fun b!5296 () Bool)

(declare-fun e!2849 () Bool)

(assert (=> b!5296 (= e!2854 (not e!2849))))

(declare-fun res!6160 () Bool)

(assert (=> b!5296 (=> res!6160 e!2849)))

(assert (=> b!5296 (= res!6160 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!5296 e!2853))

(declare-fun c!347 () Bool)

(assert (=> b!5296 (= c!347 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!63 0))(
  ( (Unit!64) )
))
(declare-fun lt!915 () Unit!63)

(declare-fun lemmaKeyInListMapIsInArray!18 (array!417 array!419 (_ BitVec 32) (_ BitVec 32) V!499 V!499 (_ BitVec 64) Int) Unit!63)

(assert (=> b!5296 (= lt!915 (lemmaKeyInListMapIsInArray!18 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!5297 () Bool)

(assert (=> b!5297 (= e!2853 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5298 () Bool)

(declare-fun e!2855 () Bool)

(assert (=> b!5298 (= e!2855 tp_is_empty!241)))

(declare-fun b!5299 () Bool)

(declare-fun e!2851 () Bool)

(assert (=> b!5299 (= e!2851 (and e!2855 mapRes!329))))

(declare-fun condMapEmpty!329 () Bool)

(declare-fun mapDefault!329 () ValueCell!104)

