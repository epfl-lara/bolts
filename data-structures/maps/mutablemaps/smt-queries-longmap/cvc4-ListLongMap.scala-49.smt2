; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!810 () Bool)

(assert start!810)

(declare-fun b_free!203 () Bool)

(declare-fun b_next!203 () Bool)

(assert (=> start!810 (= b_free!203 (not b_next!203))))

(declare-fun tp!838 () Bool)

(declare-fun b_and!349 () Bool)

(assert (=> start!810 (= tp!838 b_and!349)))

(declare-fun b!6120 () Bool)

(declare-fun e!3345 () Bool)

(declare-fun tp_is_empty!281 () Bool)

(assert (=> b!6120 (= e!3345 tp_is_empty!281)))

(declare-fun b!6121 () Bool)

(declare-fun e!3341 () Bool)

(declare-datatypes ((array!495 0))(
  ( (array!496 (arr!236 (Array (_ BitVec 32) (_ BitVec 64))) (size!298 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!495)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6121 (= e!3341 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6122 () Bool)

(declare-fun e!3343 () Bool)

(assert (=> b!6122 (= e!3343 true)))

(declare-fun lt!1109 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!495 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6122 (= lt!1109 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6123 () Bool)

(declare-fun res!6627 () Bool)

(declare-fun e!3342 () Bool)

(assert (=> b!6123 (=> (not res!6627) (not e!3342))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!495 (_ BitVec 32)) Bool)

(assert (=> b!6123 (= res!6627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6124 () Bool)

(declare-fun res!6623 () Bool)

(assert (=> b!6124 (=> (not res!6623) (not e!3342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6124 (= res!6623 (validKeyInArray!0 k!1278))))

(declare-fun b!6125 () Bool)

(declare-fun res!6625 () Bool)

(assert (=> b!6125 (=> (not res!6625) (not e!3342))))

(declare-datatypes ((List!153 0))(
  ( (Nil!150) (Cons!149 (h!715 (_ BitVec 64)) (t!2288 List!153)) )
))
(declare-fun arrayNoDuplicates!0 (array!495 (_ BitVec 32) List!153) Bool)

(assert (=> b!6125 (= res!6625 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!150))))

(declare-fun b!6126 () Bool)

(assert (=> b!6126 (= e!3342 (not e!3343))))

(declare-fun res!6624 () Bool)

(assert (=> b!6126 (=> res!6624 e!3343)))

(assert (=> b!6126 (= res!6624 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6126 e!3341))

(declare-fun c!437 () Bool)

(assert (=> b!6126 (= c!437 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!93 0))(
  ( (Unit!94) )
))
(declare-fun lt!1110 () Unit!93)

(declare-datatypes ((V!551 0))(
  ( (V!552 (val!146 Int)) )
))
(declare-datatypes ((ValueCell!124 0))(
  ( (ValueCellFull!124 (v!1237 V!551)) (EmptyCell!124) )
))
(declare-datatypes ((array!497 0))(
  ( (array!498 (arr!237 (Array (_ BitVec 32) ValueCell!124)) (size!299 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!497)

(declare-fun minValue!1434 () V!551)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!551)

(declare-fun lemmaKeyInListMapIsInArray!32 (array!495 array!497 (_ BitVec 32) (_ BitVec 32) V!551 V!551 (_ BitVec 64) Int) Unit!93)

(assert (=> b!6126 (= lt!1110 (lemmaKeyInListMapIsInArray!32 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!6127 () Bool)

(declare-fun res!6628 () Bool)

(assert (=> b!6127 (=> (not res!6628) (not e!3342))))

(assert (=> b!6127 (= res!6628 (and (= (size!299 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!298 _keys!1806) (size!299 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!392 () Bool)

(declare-fun mapRes!392 () Bool)

(declare-fun tp!839 () Bool)

(declare-fun e!3347 () Bool)

(assert (=> mapNonEmpty!392 (= mapRes!392 (and tp!839 e!3347))))

(declare-fun mapKey!392 () (_ BitVec 32))

(declare-fun mapRest!392 () (Array (_ BitVec 32) ValueCell!124))

(declare-fun mapValue!392 () ValueCell!124)

(assert (=> mapNonEmpty!392 (= (arr!237 _values!1492) (store mapRest!392 mapKey!392 mapValue!392))))

(declare-fun b!6128 () Bool)

(assert (=> b!6128 (= e!3347 tp_is_empty!281)))

(declare-fun res!6626 () Bool)

(assert (=> start!810 (=> (not res!6626) (not e!3342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!810 (= res!6626 (validMask!0 mask!2250))))

(assert (=> start!810 e!3342))

(assert (=> start!810 tp!838))

(assert (=> start!810 true))

(declare-fun e!3344 () Bool)

(declare-fun array_inv!167 (array!497) Bool)

(assert (=> start!810 (and (array_inv!167 _values!1492) e!3344)))

(assert (=> start!810 tp_is_empty!281))

(declare-fun array_inv!168 (array!495) Bool)

(assert (=> start!810 (array_inv!168 _keys!1806)))

(declare-fun b!6129 () Bool)

(assert (=> b!6129 (= e!3341 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6130 () Bool)

(assert (=> b!6130 (= e!3344 (and e!3345 mapRes!392))))

(declare-fun condMapEmpty!392 () Bool)

(declare-fun mapDefault!392 () ValueCell!124)

