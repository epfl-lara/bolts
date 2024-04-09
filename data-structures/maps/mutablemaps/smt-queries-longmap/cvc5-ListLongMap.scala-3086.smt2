; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43464 () Bool)

(assert start!43464)

(declare-fun b_free!12235 () Bool)

(declare-fun b_next!12235 () Bool)

(assert (=> start!43464 (= b_free!12235 (not b_next!12235))))

(declare-fun tp!42987 () Bool)

(declare-fun b_and!21013 () Bool)

(assert (=> start!43464 (= tp!42987 b_and!21013)))

(declare-fun mapNonEmpty!22330 () Bool)

(declare-fun mapRes!22330 () Bool)

(declare-fun tp!42988 () Bool)

(declare-fun e!283119 () Bool)

(assert (=> mapNonEmpty!22330 (= mapRes!22330 (and tp!42988 e!283119))))

(declare-fun mapKey!22330 () (_ BitVec 32))

(declare-datatypes ((V!19401 0))(
  ( (V!19402 (val!6921 Int)) )
))
(declare-datatypes ((ValueCell!6512 0))(
  ( (ValueCellFull!6512 (v!9210 V!19401)) (EmptyCell!6512) )
))
(declare-datatypes ((array!31133 0))(
  ( (array!31134 (arr!14966 (Array (_ BitVec 32) ValueCell!6512)) (size!15324 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31133)

(declare-fun mapValue!22330 () ValueCell!6512)

(declare-fun mapRest!22330 () (Array (_ BitVec 32) ValueCell!6512))

(assert (=> mapNonEmpty!22330 (= (arr!14966 _values!1516) (store mapRest!22330 mapKey!22330 mapValue!22330))))

(declare-fun b!481156 () Bool)

(declare-fun res!286934 () Bool)

(declare-fun e!283115 () Bool)

(assert (=> b!481156 (=> (not res!286934) (not e!283115))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun minValue!1458 () V!19401)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19401)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31135 0))(
  ( (array!31136 (arr!14967 (Array (_ BitVec 32) (_ BitVec 64))) (size!15325 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31135)

(declare-datatypes ((tuple2!9080 0))(
  ( (tuple2!9081 (_1!4550 (_ BitVec 64)) (_2!4550 V!19401)) )
))
(declare-datatypes ((List!9196 0))(
  ( (Nil!9193) (Cons!9192 (h!10048 tuple2!9080) (t!15418 List!9196)) )
))
(declare-datatypes ((ListLongMap!8007 0))(
  ( (ListLongMap!8008 (toList!4019 List!9196)) )
))
(declare-fun contains!2630 (ListLongMap!8007 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2311 (array!31135 array!31133 (_ BitVec 32) (_ BitVec 32) V!19401 V!19401 (_ BitVec 32) Int) ListLongMap!8007)

(assert (=> b!481156 (= res!286934 (contains!2630 (getCurrentListMap!2311 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481157 () Bool)

(declare-fun e!283117 () Bool)

(assert (=> b!481157 (= e!283117 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!481158 () Bool)

(declare-fun e!283116 () Bool)

(declare-fun tp_is_empty!13747 () Bool)

(assert (=> b!481158 (= e!283116 tp_is_empty!13747)))

(declare-fun mapIsEmpty!22330 () Bool)

(assert (=> mapIsEmpty!22330 mapRes!22330))

(declare-fun b!481159 () Bool)

(declare-fun res!286931 () Bool)

(assert (=> b!481159 (=> (not res!286931) (not e!283115))))

(assert (=> b!481159 (= res!286931 (and (= (size!15324 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15325 _keys!1874) (size!15324 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481160 () Bool)

(declare-fun res!286933 () Bool)

(assert (=> b!481160 (=> (not res!286933) (not e!283115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481160 (= res!286933 (validKeyInArray!0 k!1332))))

(declare-fun b!481161 () Bool)

(declare-fun arrayContainsKey!0 (array!31135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481161 (= e!283117 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!481162 () Bool)

(assert (=> b!481162 (= e!283115 (not true))))

(declare-fun lt!218466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31135 (_ BitVec 32)) Bool)

(assert (=> b!481162 (arrayForallSeekEntryOrOpenFound!0 lt!218466 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14088 0))(
  ( (Unit!14089) )
))
(declare-fun lt!218467 () Unit!14088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14088)

(assert (=> b!481162 (= lt!218467 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218466))))

(declare-fun arrayScanForKey!0 (array!31135 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481162 (= lt!218466 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!481162 e!283117))

(declare-fun c!57831 () Bool)

(assert (=> b!481162 (= c!57831 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218468 () Unit!14088)

(declare-fun lemmaKeyInListMapIsInArray!133 (array!31135 array!31133 (_ BitVec 32) (_ BitVec 32) V!19401 V!19401 (_ BitVec 64) Int) Unit!14088)

(assert (=> b!481162 (= lt!218468 (lemmaKeyInListMapIsInArray!133 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!481163 () Bool)

(assert (=> b!481163 (= e!283119 tp_is_empty!13747)))

(declare-fun b!481164 () Bool)

(declare-fun res!286932 () Bool)

(assert (=> b!481164 (=> (not res!286932) (not e!283115))))

(assert (=> b!481164 (= res!286932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481165 () Bool)

(declare-fun e!283118 () Bool)

(assert (=> b!481165 (= e!283118 (and e!283116 mapRes!22330))))

(declare-fun condMapEmpty!22330 () Bool)

(declare-fun mapDefault!22330 () ValueCell!6512)

