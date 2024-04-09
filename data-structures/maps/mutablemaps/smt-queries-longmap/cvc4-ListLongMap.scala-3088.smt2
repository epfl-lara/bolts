; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43480 () Bool)

(assert start!43480)

(declare-fun b_free!12251 () Bool)

(declare-fun b_next!12251 () Bool)

(assert (=> start!43480 (= b_free!12251 (not b_next!12251))))

(declare-fun tp!43035 () Bool)

(declare-fun b_and!21029 () Bool)

(assert (=> start!43480 (= tp!43035 b_and!21029)))

(declare-fun b!481420 () Bool)

(declare-fun res!287080 () Bool)

(declare-fun e!283261 () Bool)

(assert (=> b!481420 (=> (not res!287080) (not e!283261))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19421 0))(
  ( (V!19422 (val!6929 Int)) )
))
(declare-fun minValue!1458 () V!19421)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19421)

(declare-datatypes ((ValueCell!6520 0))(
  ( (ValueCellFull!6520 (v!9218 V!19421)) (EmptyCell!6520) )
))
(declare-datatypes ((array!31163 0))(
  ( (array!31164 (arr!14981 (Array (_ BitVec 32) ValueCell!6520)) (size!15339 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31163)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31165 0))(
  ( (array!31166 (arr!14982 (Array (_ BitVec 32) (_ BitVec 64))) (size!15340 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31165)

(declare-datatypes ((tuple2!9094 0))(
  ( (tuple2!9095 (_1!4557 (_ BitVec 64)) (_2!4557 V!19421)) )
))
(declare-datatypes ((List!9208 0))(
  ( (Nil!9205) (Cons!9204 (h!10060 tuple2!9094) (t!15430 List!9208)) )
))
(declare-datatypes ((ListLongMap!8021 0))(
  ( (ListLongMap!8022 (toList!4026 List!9208)) )
))
(declare-fun contains!2637 (ListLongMap!8021 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2318 (array!31165 array!31163 (_ BitVec 32) (_ BitVec 32) V!19421 V!19421 (_ BitVec 32) Int) ListLongMap!8021)

(assert (=> b!481420 (= res!287080 (contains!2637 (getCurrentListMap!2318 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481421 () Bool)

(declare-fun res!287075 () Bool)

(assert (=> b!481421 (=> (not res!287075) (not e!283261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31165 (_ BitVec 32)) Bool)

(assert (=> b!481421 (= res!287075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapNonEmpty!22354 () Bool)

(declare-fun mapRes!22354 () Bool)

(declare-fun tp!43036 () Bool)

(declare-fun e!283264 () Bool)

(assert (=> mapNonEmpty!22354 (= mapRes!22354 (and tp!43036 e!283264))))

(declare-fun mapRest!22354 () (Array (_ BitVec 32) ValueCell!6520))

(declare-fun mapValue!22354 () ValueCell!6520)

(declare-fun mapKey!22354 () (_ BitVec 32))

(assert (=> mapNonEmpty!22354 (= (arr!14981 _values!1516) (store mapRest!22354 mapKey!22354 mapValue!22354))))

(declare-fun b!481422 () Bool)

(declare-fun tp_is_empty!13763 () Bool)

(assert (=> b!481422 (= e!283264 tp_is_empty!13763)))

(declare-fun b!481423 () Bool)

(assert (=> b!481423 (= e!283261 (not (= (size!15340 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))))))

(declare-fun lt!218539 () (_ BitVec 32))

(assert (=> b!481423 (arrayForallSeekEntryOrOpenFound!0 lt!218539 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14100 0))(
  ( (Unit!14101) )
))
(declare-fun lt!218540 () Unit!14100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14100)

(assert (=> b!481423 (= lt!218540 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218539))))

(declare-fun arrayScanForKey!0 (array!31165 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481423 (= lt!218539 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!283262 () Bool)

(assert (=> b!481423 e!283262))

(declare-fun c!57855 () Bool)

(assert (=> b!481423 (= c!57855 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218538 () Unit!14100)

(declare-fun lemmaKeyInListMapIsInArray!139 (array!31165 array!31163 (_ BitVec 32) (_ BitVec 32) V!19421 V!19421 (_ BitVec 64) Int) Unit!14100)

(assert (=> b!481423 (= lt!218538 (lemmaKeyInListMapIsInArray!139 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun res!287079 () Bool)

(assert (=> start!43480 (=> (not res!287079) (not e!283261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43480 (= res!287079 (validMask!0 mask!2352))))

(assert (=> start!43480 e!283261))

(assert (=> start!43480 true))

(assert (=> start!43480 tp_is_empty!13763))

(declare-fun e!283263 () Bool)

(declare-fun array_inv!10788 (array!31163) Bool)

(assert (=> start!43480 (and (array_inv!10788 _values!1516) e!283263)))

(assert (=> start!43480 tp!43035))

(declare-fun array_inv!10789 (array!31165) Bool)

(assert (=> start!43480 (array_inv!10789 _keys!1874)))

(declare-fun b!481424 () Bool)

(declare-fun res!287077 () Bool)

(assert (=> b!481424 (=> (not res!287077) (not e!283261))))

(assert (=> b!481424 (= res!287077 (and (= (size!15339 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15340 _keys!1874) (size!15339 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481425 () Bool)

(declare-fun e!283260 () Bool)

(assert (=> b!481425 (= e!283263 (and e!283260 mapRes!22354))))

(declare-fun condMapEmpty!22354 () Bool)

(declare-fun mapDefault!22354 () ValueCell!6520)

