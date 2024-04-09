; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43470 () Bool)

(assert start!43470)

(declare-fun b_free!12241 () Bool)

(declare-fun b_next!12241 () Bool)

(assert (=> start!43470 (= b_free!12241 (not b_next!12241))))

(declare-fun tp!43006 () Bool)

(declare-fun b_and!21019 () Bool)

(assert (=> start!43470 (= tp!43006 b_and!21019)))

(declare-fun mapNonEmpty!22339 () Bool)

(declare-fun mapRes!22339 () Bool)

(declare-fun tp!43005 () Bool)

(declare-fun e!283171 () Bool)

(assert (=> mapNonEmpty!22339 (= mapRes!22339 (and tp!43005 e!283171))))

(declare-fun mapKey!22339 () (_ BitVec 32))

(declare-datatypes ((V!19409 0))(
  ( (V!19410 (val!6924 Int)) )
))
(declare-datatypes ((ValueCell!6515 0))(
  ( (ValueCellFull!6515 (v!9213 V!19409)) (EmptyCell!6515) )
))
(declare-fun mapValue!22339 () ValueCell!6515)

(declare-fun mapRest!22339 () (Array (_ BitVec 32) ValueCell!6515))

(declare-datatypes ((array!31143 0))(
  ( (array!31144 (arr!14971 (Array (_ BitVec 32) ValueCell!6515)) (size!15329 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31143)

(assert (=> mapNonEmpty!22339 (= (arr!14971 _values!1516) (store mapRest!22339 mapKey!22339 mapValue!22339))))

(declare-fun b!481255 () Bool)

(declare-fun e!283170 () Bool)

(assert (=> b!481255 (= e!283170 (not true))))

(declare-fun lt!218493 () (_ BitVec 32))

(declare-datatypes ((array!31145 0))(
  ( (array!31146 (arr!14972 (Array (_ BitVec 32) (_ BitVec 64))) (size!15330 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31145)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31145 (_ BitVec 32)) Bool)

(assert (=> b!481255 (arrayForallSeekEntryOrOpenFound!0 lt!218493 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14092 0))(
  ( (Unit!14093) )
))
(declare-fun lt!218495 () Unit!14092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14092)

(assert (=> b!481255 (= lt!218495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218493))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31145 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481255 (= lt!218493 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!283173 () Bool)

(assert (=> b!481255 e!283173))

(declare-fun c!57840 () Bool)

(assert (=> b!481255 (= c!57840 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218494 () Unit!14092)

(declare-fun minValue!1458 () V!19409)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19409)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!135 (array!31145 array!31143 (_ BitVec 32) (_ BitVec 32) V!19409 V!19409 (_ BitVec 64) Int) Unit!14092)

(assert (=> b!481255 (= lt!218494 (lemmaKeyInListMapIsInArray!135 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!481256 () Bool)

(declare-fun arrayContainsKey!0 (array!31145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481256 (= e!283173 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!481257 () Bool)

(declare-fun res!286986 () Bool)

(assert (=> b!481257 (=> (not res!286986) (not e!283170))))

(declare-datatypes ((tuple2!9084 0))(
  ( (tuple2!9085 (_1!4552 (_ BitVec 64)) (_2!4552 V!19409)) )
))
(declare-datatypes ((List!9199 0))(
  ( (Nil!9196) (Cons!9195 (h!10051 tuple2!9084) (t!15421 List!9199)) )
))
(declare-datatypes ((ListLongMap!8011 0))(
  ( (ListLongMap!8012 (toList!4021 List!9199)) )
))
(declare-fun contains!2632 (ListLongMap!8011 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2313 (array!31145 array!31143 (_ BitVec 32) (_ BitVec 32) V!19409 V!19409 (_ BitVec 32) Int) ListLongMap!8011)

(assert (=> b!481257 (= res!286986 (contains!2632 (getCurrentListMap!2313 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun mapIsEmpty!22339 () Bool)

(assert (=> mapIsEmpty!22339 mapRes!22339))

(declare-fun b!481258 () Bool)

(declare-fun res!286990 () Bool)

(assert (=> b!481258 (=> (not res!286990) (not e!283170))))

(assert (=> b!481258 (= res!286990 (and (= (size!15329 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15330 _keys!1874) (size!15329 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481259 () Bool)

(assert (=> b!481259 (= e!283173 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!286988 () Bool)

(assert (=> start!43470 (=> (not res!286988) (not e!283170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43470 (= res!286988 (validMask!0 mask!2352))))

(assert (=> start!43470 e!283170))

(assert (=> start!43470 true))

(declare-fun tp_is_empty!13753 () Bool)

(assert (=> start!43470 tp_is_empty!13753))

(declare-fun e!283169 () Bool)

(declare-fun array_inv!10780 (array!31143) Bool)

(assert (=> start!43470 (and (array_inv!10780 _values!1516) e!283169)))

(assert (=> start!43470 tp!43006))

(declare-fun array_inv!10781 (array!31145) Bool)

(assert (=> start!43470 (array_inv!10781 _keys!1874)))

(declare-fun b!481260 () Bool)

(declare-fun e!283174 () Bool)

(assert (=> b!481260 (= e!283174 tp_is_empty!13753)))

(declare-fun b!481261 () Bool)

(assert (=> b!481261 (= e!283169 (and e!283174 mapRes!22339))))

(declare-fun condMapEmpty!22339 () Bool)

(declare-fun mapDefault!22339 () ValueCell!6515)

