; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1026 () Bool)

(assert start!1026)

(declare-fun b_free!355 () Bool)

(declare-fun b_next!355 () Bool)

(assert (=> start!1026 (= b_free!355 (not b_next!355))))

(declare-fun tp!1303 () Bool)

(declare-fun b_and!507 () Bool)

(assert (=> start!1026 (= tp!1303 b_and!507)))

(declare-fun mapIsEmpty!629 () Bool)

(declare-fun mapRes!629 () Bool)

(assert (=> mapIsEmpty!629 mapRes!629))

(declare-fun b!8907 () Bool)

(declare-fun res!8213 () Bool)

(declare-fun e!5081 () Bool)

(assert (=> b!8907 (=> (not res!8213) (not e!5081))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8907 (= res!8213 (validKeyInArray!0 k!1278))))

(declare-fun b!8909 () Bool)

(declare-fun res!8215 () Bool)

(assert (=> b!8909 (=> (not res!8215) (not e!5081))))

(declare-datatypes ((array!789 0))(
  ( (array!790 (arr!380 (Array (_ BitVec 32) (_ BitVec 64))) (size!442 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!789)

(declare-datatypes ((List!260 0))(
  ( (Nil!257) (Cons!256 (h!822 (_ BitVec 64)) (t!2401 List!260)) )
))
(declare-fun arrayNoDuplicates!0 (array!789 (_ BitVec 32) List!260) Bool)

(assert (=> b!8909 (= res!8215 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!257))))

(declare-fun b!8910 () Bool)

(declare-fun e!5084 () Bool)

(assert (=> b!8910 (= e!5081 (not e!5084))))

(declare-fun res!8209 () Bool)

(assert (=> b!8910 (=> res!8209 e!5084)))

(declare-fun arrayContainsKey!0 (array!789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8910 (= res!8209 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!5078 () Bool)

(assert (=> b!8910 e!5078))

(declare-fun c!680 () Bool)

(assert (=> b!8910 (= c!680 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!755 0))(
  ( (V!756 (val!222 Int)) )
))
(declare-datatypes ((ValueCell!200 0))(
  ( (ValueCellFull!200 (v!1316 V!755)) (EmptyCell!200) )
))
(declare-datatypes ((array!791 0))(
  ( (array!792 (arr!381 (Array (_ BitVec 32) ValueCell!200)) (size!443 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!791)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!755)

(declare-datatypes ((Unit!173 0))(
  ( (Unit!174) )
))
(declare-fun lt!1924 () Unit!173)

(declare-fun minValue!1434 () V!755)

(declare-fun lemmaKeyInListMapIsInArray!64 (array!789 array!791 (_ BitVec 32) (_ BitVec 32) V!755 V!755 (_ BitVec 64) Int) Unit!173)

(assert (=> b!8910 (= lt!1924 (lemmaKeyInListMapIsInArray!64 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!8911 () Bool)

(declare-fun e!5083 () Bool)

(declare-fun tp_is_empty!433 () Bool)

(assert (=> b!8911 (= e!5083 tp_is_empty!433)))

(declare-fun b!8912 () Bool)

(declare-fun res!8211 () Bool)

(assert (=> b!8912 (=> (not res!8211) (not e!5081))))

(assert (=> b!8912 (= res!8211 (and (= (size!443 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!442 _keys!1806) (size!443 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8913 () Bool)

(assert (=> b!8913 (= e!5084 (= (size!442 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)))))

(declare-fun lt!1926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!789 (_ BitVec 32)) Bool)

(assert (=> b!8913 (arrayForallSeekEntryOrOpenFound!0 lt!1926 _keys!1806 mask!2250)))

(declare-fun lt!1925 () Unit!173)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!173)

(assert (=> b!8913 (= lt!1925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1926))))

(declare-fun arrayScanForKey!0 (array!789 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8913 (= lt!1926 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8914 () Bool)

(declare-fun res!8210 () Bool)

(assert (=> b!8914 (=> (not res!8210) (not e!5081))))

(assert (=> b!8914 (= res!8210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8915 () Bool)

(assert (=> b!8915 (= e!5078 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8908 () Bool)

(declare-fun res!8212 () Bool)

(assert (=> b!8908 (=> (not res!8212) (not e!5081))))

(declare-datatypes ((tuple2!236 0))(
  ( (tuple2!237 (_1!118 (_ BitVec 64)) (_2!118 V!755)) )
))
(declare-datatypes ((List!261 0))(
  ( (Nil!258) (Cons!257 (h!823 tuple2!236) (t!2402 List!261)) )
))
(declare-datatypes ((ListLongMap!241 0))(
  ( (ListLongMap!242 (toList!136 List!261)) )
))
(declare-fun contains!113 (ListLongMap!241 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!95 (array!789 array!791 (_ BitVec 32) (_ BitVec 32) V!755 V!755 (_ BitVec 32) Int) ListLongMap!241)

(assert (=> b!8908 (= res!8212 (contains!113 (getCurrentListMap!95 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun res!8214 () Bool)

(assert (=> start!1026 (=> (not res!8214) (not e!5081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1026 (= res!8214 (validMask!0 mask!2250))))

(assert (=> start!1026 e!5081))

(assert (=> start!1026 tp!1303))

(assert (=> start!1026 true))

(declare-fun e!5079 () Bool)

(declare-fun array_inv!275 (array!791) Bool)

(assert (=> start!1026 (and (array_inv!275 _values!1492) e!5079)))

(assert (=> start!1026 tp_is_empty!433))

(declare-fun array_inv!276 (array!789) Bool)

(assert (=> start!1026 (array_inv!276 _keys!1806)))

(declare-fun mapNonEmpty!629 () Bool)

(declare-fun tp!1304 () Bool)

(assert (=> mapNonEmpty!629 (= mapRes!629 (and tp!1304 e!5083))))

(declare-fun mapRest!629 () (Array (_ BitVec 32) ValueCell!200))

(declare-fun mapValue!629 () ValueCell!200)

(declare-fun mapKey!629 () (_ BitVec 32))

(assert (=> mapNonEmpty!629 (= (arr!381 _values!1492) (store mapRest!629 mapKey!629 mapValue!629))))

(declare-fun b!8916 () Bool)

(declare-fun e!5082 () Bool)

(assert (=> b!8916 (= e!5079 (and e!5082 mapRes!629))))

(declare-fun condMapEmpty!629 () Bool)

(declare-fun mapDefault!629 () ValueCell!200)

