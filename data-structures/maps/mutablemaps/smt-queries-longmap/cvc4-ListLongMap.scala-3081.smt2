; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43390 () Bool)

(assert start!43390)

(declare-fun b_free!12209 () Bool)

(declare-fun b_next!12209 () Bool)

(assert (=> start!43390 (= b_free!12209 (not b_next!12209))))

(declare-fun tp!42903 () Bool)

(declare-fun b_and!20983 () Bool)

(assert (=> start!43390 (= tp!42903 b_and!20983)))

(declare-fun b!480465 () Bool)

(declare-fun e!282708 () Bool)

(declare-fun tp_is_empty!13721 () Bool)

(assert (=> b!480465 (= e!282708 tp_is_empty!13721)))

(declare-fun mapNonEmpty!22285 () Bool)

(declare-fun mapRes!22285 () Bool)

(declare-fun tp!42904 () Bool)

(assert (=> mapNonEmpty!22285 (= mapRes!22285 (and tp!42904 e!282708))))

(declare-fun mapKey!22285 () (_ BitVec 32))

(declare-datatypes ((V!19365 0))(
  ( (V!19366 (val!6908 Int)) )
))
(declare-datatypes ((ValueCell!6499 0))(
  ( (ValueCellFull!6499 (v!9195 V!19365)) (EmptyCell!6499) )
))
(declare-fun mapRest!22285 () (Array (_ BitVec 32) ValueCell!6499))

(declare-fun mapValue!22285 () ValueCell!6499)

(declare-datatypes ((array!31077 0))(
  ( (array!31078 (arr!14940 (Array (_ BitVec 32) ValueCell!6499)) (size!15298 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31077)

(assert (=> mapNonEmpty!22285 (= (arr!14940 _values!1516) (store mapRest!22285 mapKey!22285 mapValue!22285))))

(declare-fun b!480466 () Bool)

(declare-fun res!286591 () Bool)

(declare-fun e!282709 () Bool)

(assert (=> b!480466 (=> (not res!286591) (not e!282709))))

(declare-datatypes ((array!31079 0))(
  ( (array!31080 (arr!14941 (Array (_ BitVec 32) (_ BitVec 64))) (size!15299 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31079)

(declare-datatypes ((List!9177 0))(
  ( (Nil!9174) (Cons!9173 (h!10029 (_ BitVec 64)) (t!15395 List!9177)) )
))
(declare-fun arrayNoDuplicates!0 (array!31079 (_ BitVec 32) List!9177) Bool)

(assert (=> b!480466 (= res!286591 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9174))))

(declare-fun b!480467 () Bool)

(declare-fun res!286593 () Bool)

(assert (=> b!480467 (=> (not res!286593) (not e!282709))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480467 (= res!286593 (validKeyInArray!0 k!1332))))

(declare-fun b!480468 () Bool)

(declare-fun e!282711 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480468 (= e!282711 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480469 () Bool)

(declare-fun res!286594 () Bool)

(assert (=> b!480469 (=> (not res!286594) (not e!282709))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31079 (_ BitVec 32)) Bool)

(assert (=> b!480469 (= res!286594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapIsEmpty!22285 () Bool)

(assert (=> mapIsEmpty!22285 mapRes!22285))

(declare-fun b!480470 () Bool)

(assert (=> b!480470 (= e!282709 (not true))))

(declare-fun lt!218152 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31079 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480470 (= lt!218152 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!480470 e!282711))

(declare-fun c!57724 () Bool)

(assert (=> b!480470 (= c!57724 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun minValue!1458 () V!19365)

(declare-fun zeroValue!1458 () V!19365)

(declare-datatypes ((Unit!14068 0))(
  ( (Unit!14069) )
))
(declare-fun lt!218153 () Unit!14068)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!125 (array!31079 array!31077 (_ BitVec 32) (_ BitVec 32) V!19365 V!19365 (_ BitVec 64) Int) Unit!14068)

(assert (=> b!480470 (= lt!218153 (lemmaKeyInListMapIsInArray!125 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!480471 () Bool)

(declare-fun arrayContainsKey!0 (array!31079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480471 (= e!282711 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!480472 () Bool)

(declare-fun res!286595 () Bool)

(assert (=> b!480472 (=> (not res!286595) (not e!282709))))

(declare-datatypes ((tuple2!9062 0))(
  ( (tuple2!9063 (_1!4541 (_ BitVec 64)) (_2!4541 V!19365)) )
))
(declare-datatypes ((List!9178 0))(
  ( (Nil!9175) (Cons!9174 (h!10030 tuple2!9062) (t!15396 List!9178)) )
))
(declare-datatypes ((ListLongMap!7989 0))(
  ( (ListLongMap!7990 (toList!4010 List!9178)) )
))
(declare-fun contains!2619 (ListLongMap!7989 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2302 (array!31079 array!31077 (_ BitVec 32) (_ BitVec 32) V!19365 V!19365 (_ BitVec 32) Int) ListLongMap!7989)

(assert (=> b!480472 (= res!286595 (contains!2619 (getCurrentListMap!2302 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480473 () Bool)

(declare-fun e!282707 () Bool)

(declare-fun e!282712 () Bool)

(assert (=> b!480473 (= e!282707 (and e!282712 mapRes!22285))))

(declare-fun condMapEmpty!22285 () Bool)

(declare-fun mapDefault!22285 () ValueCell!6499)

