; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43518 () Bool)

(assert start!43518)

(declare-fun b_free!12289 () Bool)

(declare-fun b_next!12289 () Bool)

(assert (=> start!43518 (= b_free!12289 (not b_next!12289))))

(declare-fun tp!43149 () Bool)

(declare-fun b_and!21067 () Bool)

(assert (=> start!43518 (= tp!43149 b_and!21067)))

(declare-fun mapIsEmpty!22411 () Bool)

(declare-fun mapRes!22411 () Bool)

(assert (=> mapIsEmpty!22411 mapRes!22411))

(declare-fun res!287342 () Bool)

(declare-fun e!283567 () Bool)

(assert (=> start!43518 (=> (not res!287342) (not e!283567))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43518 (= res!287342 (validMask!0 mask!2352))))

(assert (=> start!43518 e!283567))

(assert (=> start!43518 true))

(declare-fun tp_is_empty!13801 () Bool)

(assert (=> start!43518 tp_is_empty!13801))

(declare-datatypes ((V!19473 0))(
  ( (V!19474 (val!6948 Int)) )
))
(declare-datatypes ((ValueCell!6539 0))(
  ( (ValueCellFull!6539 (v!9237 V!19473)) (EmptyCell!6539) )
))
(declare-datatypes ((array!31233 0))(
  ( (array!31234 (arr!15016 (Array (_ BitVec 32) ValueCell!6539)) (size!15374 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31233)

(declare-fun e!283563 () Bool)

(declare-fun array_inv!10810 (array!31233) Bool)

(assert (=> start!43518 (and (array_inv!10810 _values!1516) e!283563)))

(assert (=> start!43518 tp!43149))

(declare-datatypes ((array!31235 0))(
  ( (array!31236 (arr!15017 (Array (_ BitVec 32) (_ BitVec 64))) (size!15375 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31235)

(declare-fun array_inv!10811 (array!31235) Bool)

(assert (=> start!43518 (array_inv!10811 _keys!1874)))

(declare-fun b!481895 () Bool)

(declare-fun res!287344 () Bool)

(assert (=> b!481895 (=> (not res!287344) (not e!283567))))

(declare-datatypes ((List!9237 0))(
  ( (Nil!9234) (Cons!9233 (h!10089 (_ BitVec 64)) (t!15459 List!9237)) )
))
(declare-fun arrayNoDuplicates!0 (array!31235 (_ BitVec 32) List!9237) Bool)

(assert (=> b!481895 (= res!287344 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9234))))

(declare-fun b!481896 () Bool)

(declare-fun res!287341 () Bool)

(assert (=> b!481896 (=> (not res!287341) (not e!283567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31235 (_ BitVec 32)) Bool)

(assert (=> b!481896 (= res!287341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapNonEmpty!22411 () Bool)

(declare-fun tp!43150 () Bool)

(declare-fun e!283565 () Bool)

(assert (=> mapNonEmpty!22411 (= mapRes!22411 (and tp!43150 e!283565))))

(declare-fun mapKey!22411 () (_ BitVec 32))

(declare-fun mapRest!22411 () (Array (_ BitVec 32) ValueCell!6539))

(declare-fun mapValue!22411 () ValueCell!6539)

(assert (=> mapNonEmpty!22411 (= (arr!15016 _values!1516) (store mapRest!22411 mapKey!22411 mapValue!22411))))

(declare-fun b!481897 () Bool)

(assert (=> b!481897 (= e!283565 tp_is_empty!13801)))

(declare-fun b!481898 () Bool)

(declare-fun res!287343 () Bool)

(assert (=> b!481898 (=> (not res!287343) (not e!283567))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!481898 (= res!287343 (and (= (size!15374 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15375 _keys!1874) (size!15374 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481899 () Bool)

(assert (=> b!481899 (= e!283567 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun lt!218633 () Bool)

(declare-fun minValue!1458 () V!19473)

(declare-fun zeroValue!1458 () V!19473)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9122 0))(
  ( (tuple2!9123 (_1!4571 (_ BitVec 64)) (_2!4571 V!19473)) )
))
(declare-datatypes ((List!9238 0))(
  ( (Nil!9235) (Cons!9234 (h!10090 tuple2!9122) (t!15460 List!9238)) )
))
(declare-datatypes ((ListLongMap!8049 0))(
  ( (ListLongMap!8050 (toList!4040 List!9238)) )
))
(declare-fun contains!2651 (ListLongMap!8049 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2332 (array!31235 array!31233 (_ BitVec 32) (_ BitVec 32) V!19473 V!19473 (_ BitVec 32) Int) ListLongMap!8049)

(assert (=> b!481899 (= lt!218633 (contains!2651 (getCurrentListMap!2332 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481900 () Bool)

(declare-fun e!283566 () Bool)

(assert (=> b!481900 (= e!283566 tp_is_empty!13801)))

(declare-fun b!481901 () Bool)

(assert (=> b!481901 (= e!283563 (and e!283566 mapRes!22411))))

(declare-fun condMapEmpty!22411 () Bool)

(declare-fun mapDefault!22411 () ValueCell!6539)

