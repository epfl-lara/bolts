; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43494 () Bool)

(assert start!43494)

(declare-fun b_free!12265 () Bool)

(declare-fun b_next!12265 () Bool)

(assert (=> start!43494 (= b_free!12265 (not b_next!12265))))

(declare-fun tp!43077 () Bool)

(declare-fun b_and!21043 () Bool)

(assert (=> start!43494 (= tp!43077 b_and!21043)))

(declare-fun b!481643 () Bool)

(declare-fun e!283385 () Bool)

(assert (=> b!481643 (= e!283385 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun lt!218597 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19441 0))(
  ( (V!19442 (val!6936 Int)) )
))
(declare-fun minValue!1458 () V!19441)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19441)

(declare-datatypes ((ValueCell!6527 0))(
  ( (ValueCellFull!6527 (v!9225 V!19441)) (EmptyCell!6527) )
))
(declare-datatypes ((array!31189 0))(
  ( (array!31190 (arr!14994 (Array (_ BitVec 32) ValueCell!6527)) (size!15352 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31189)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31191 0))(
  ( (array!31192 (arr!14995 (Array (_ BitVec 32) (_ BitVec 64))) (size!15353 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31191)

(declare-datatypes ((tuple2!9106 0))(
  ( (tuple2!9107 (_1!4563 (_ BitVec 64)) (_2!4563 V!19441)) )
))
(declare-datatypes ((List!9219 0))(
  ( (Nil!9216) (Cons!9215 (h!10071 tuple2!9106) (t!15441 List!9219)) )
))
(declare-datatypes ((ListLongMap!8033 0))(
  ( (ListLongMap!8034 (toList!4032 List!9219)) )
))
(declare-fun contains!2643 (ListLongMap!8033 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2324 (array!31191 array!31189 (_ BitVec 32) (_ BitVec 32) V!19441 V!19441 (_ BitVec 32) Int) ListLongMap!8033)

(assert (=> b!481643 (= lt!218597 (contains!2643 (getCurrentListMap!2324 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun mapNonEmpty!22375 () Bool)

(declare-fun mapRes!22375 () Bool)

(declare-fun tp!43078 () Bool)

(declare-fun e!283387 () Bool)

(assert (=> mapNonEmpty!22375 (= mapRes!22375 (and tp!43078 e!283387))))

(declare-fun mapRest!22375 () (Array (_ BitVec 32) ValueCell!6527))

(declare-fun mapKey!22375 () (_ BitVec 32))

(declare-fun mapValue!22375 () ValueCell!6527)

(assert (=> mapNonEmpty!22375 (= (arr!14994 _values!1516) (store mapRest!22375 mapKey!22375 mapValue!22375))))

(declare-fun b!481644 () Bool)

(declare-fun res!287197 () Bool)

(assert (=> b!481644 (=> (not res!287197) (not e!283385))))

(assert (=> b!481644 (= res!287197 (and (= (size!15352 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15353 _keys!1874) (size!15352 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481645 () Bool)

(declare-fun res!287199 () Bool)

(assert (=> b!481645 (=> (not res!287199) (not e!283385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31191 (_ BitVec 32)) Bool)

(assert (=> b!481645 (= res!287199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481646 () Bool)

(declare-fun e!283383 () Bool)

(declare-fun tp_is_empty!13777 () Bool)

(assert (=> b!481646 (= e!283383 tp_is_empty!13777)))

(declare-fun b!481647 () Bool)

(declare-fun res!287200 () Bool)

(assert (=> b!481647 (=> (not res!287200) (not e!283385))))

(declare-datatypes ((List!9220 0))(
  ( (Nil!9217) (Cons!9216 (h!10072 (_ BitVec 64)) (t!15442 List!9220)) )
))
(declare-fun arrayNoDuplicates!0 (array!31191 (_ BitVec 32) List!9220) Bool)

(assert (=> b!481647 (= res!287200 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9217))))

(declare-fun res!287198 () Bool)

(assert (=> start!43494 (=> (not res!287198) (not e!283385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43494 (= res!287198 (validMask!0 mask!2352))))

(assert (=> start!43494 e!283385))

(assert (=> start!43494 true))

(assert (=> start!43494 tp_is_empty!13777))

(declare-fun e!283386 () Bool)

(declare-fun array_inv!10796 (array!31189) Bool)

(assert (=> start!43494 (and (array_inv!10796 _values!1516) e!283386)))

(assert (=> start!43494 tp!43077))

(declare-fun array_inv!10797 (array!31191) Bool)

(assert (=> start!43494 (array_inv!10797 _keys!1874)))

(declare-fun b!481648 () Bool)

(assert (=> b!481648 (= e!283386 (and e!283383 mapRes!22375))))

(declare-fun condMapEmpty!22375 () Bool)

(declare-fun mapDefault!22375 () ValueCell!6527)

