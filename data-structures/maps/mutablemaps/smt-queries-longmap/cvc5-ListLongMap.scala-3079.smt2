; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43374 () Bool)

(assert start!43374)

(declare-fun b_free!12193 () Bool)

(declare-fun b_next!12193 () Bool)

(assert (=> start!43374 (= b_free!12193 (not b_next!12193))))

(declare-fun tp!42855 () Bool)

(declare-fun b_and!20967 () Bool)

(assert (=> start!43374 (= tp!42855 b_and!20967)))

(declare-fun b!480201 () Bool)

(declare-fun res!286450 () Bool)

(declare-fun e!282564 () Bool)

(assert (=> b!480201 (=> (not res!286450) (not e!282564))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31047 0))(
  ( (array!31048 (arr!14925 (Array (_ BitVec 32) (_ BitVec 64))) (size!15283 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31047)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19345 0))(
  ( (V!19346 (val!6900 Int)) )
))
(declare-datatypes ((ValueCell!6491 0))(
  ( (ValueCellFull!6491 (v!9187 V!19345)) (EmptyCell!6491) )
))
(declare-datatypes ((array!31049 0))(
  ( (array!31050 (arr!14926 (Array (_ BitVec 32) ValueCell!6491)) (size!15284 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31049)

(assert (=> b!480201 (= res!286450 (and (= (size!15284 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15283 _keys!1874) (size!15284 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480202 () Bool)

(declare-fun e!282567 () Bool)

(declare-fun tp_is_empty!13705 () Bool)

(assert (=> b!480202 (= e!282567 tp_is_empty!13705)))

(declare-fun b!480203 () Bool)

(declare-fun res!286452 () Bool)

(assert (=> b!480203 (=> (not res!286452) (not e!282564))))

(declare-datatypes ((List!9165 0))(
  ( (Nil!9162) (Cons!9161 (h!10017 (_ BitVec 64)) (t!15383 List!9165)) )
))
(declare-fun arrayNoDuplicates!0 (array!31047 (_ BitVec 32) List!9165) Bool)

(assert (=> b!480203 (= res!286452 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9162))))

(declare-fun b!480204 () Bool)

(declare-fun res!286447 () Bool)

(assert (=> b!480204 (=> (not res!286447) (not e!282564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31047 (_ BitVec 32)) Bool)

(assert (=> b!480204 (= res!286447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480205 () Bool)

(declare-fun e!282565 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(assert (=> b!480205 (= e!282565 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480206 () Bool)

(assert (=> b!480206 (= e!282564 (not true))))

(declare-fun lt!218105 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31047 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480206 (= lt!218105 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!480206 e!282565))

(declare-fun c!57700 () Bool)

(assert (=> b!480206 (= c!57700 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun minValue!1458 () V!19345)

(declare-datatypes ((Unit!14058 0))(
  ( (Unit!14059) )
))
(declare-fun lt!218104 () Unit!14058)

(declare-fun zeroValue!1458 () V!19345)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!120 (array!31047 array!31049 (_ BitVec 32) (_ BitVec 32) V!19345 V!19345 (_ BitVec 64) Int) Unit!14058)

(assert (=> b!480206 (= lt!218104 (lemmaKeyInListMapIsInArray!120 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun res!286449 () Bool)

(assert (=> start!43374 (=> (not res!286449) (not e!282564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43374 (= res!286449 (validMask!0 mask!2352))))

(assert (=> start!43374 e!282564))

(assert (=> start!43374 true))

(assert (=> start!43374 tp_is_empty!13705))

(declare-fun e!282566 () Bool)

(declare-fun array_inv!10754 (array!31049) Bool)

(assert (=> start!43374 (and (array_inv!10754 _values!1516) e!282566)))

(assert (=> start!43374 tp!42855))

(declare-fun array_inv!10755 (array!31047) Bool)

(assert (=> start!43374 (array_inv!10755 _keys!1874)))

(declare-fun b!480207 () Bool)

(declare-fun res!286451 () Bool)

(assert (=> b!480207 (=> (not res!286451) (not e!282564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480207 (= res!286451 (validKeyInArray!0 k!1332))))

(declare-fun mapIsEmpty!22261 () Bool)

(declare-fun mapRes!22261 () Bool)

(assert (=> mapIsEmpty!22261 mapRes!22261))

(declare-fun b!480208 () Bool)

(declare-fun arrayContainsKey!0 (array!31047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480208 (= e!282565 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!480209 () Bool)

(declare-fun e!282568 () Bool)

(assert (=> b!480209 (= e!282568 tp_is_empty!13705)))

(declare-fun b!480210 () Bool)

(assert (=> b!480210 (= e!282566 (and e!282567 mapRes!22261))))

(declare-fun condMapEmpty!22261 () Bool)

(declare-fun mapDefault!22261 () ValueCell!6491)

