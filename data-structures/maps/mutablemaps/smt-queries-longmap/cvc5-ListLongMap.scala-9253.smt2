; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110902 () Bool)

(assert start!110902)

(declare-fun b_free!29701 () Bool)

(declare-fun b_next!29701 () Bool)

(assert (=> start!110902 (= b_free!29701 (not b_next!29701))))

(declare-fun tp!104426 () Bool)

(declare-fun b_and!47919 () Bool)

(assert (=> start!110902 (= tp!104426 b_and!47919)))

(declare-fun b!1312422 () Bool)

(declare-fun e!748593 () Bool)

(declare-fun tp_is_empty!35431 () Bool)

(assert (=> b!1312422 (= e!748593 tp_is_empty!35431)))

(declare-fun b!1312423 () Bool)

(declare-fun res!871436 () Bool)

(declare-fun e!748595 () Bool)

(assert (=> b!1312423 (=> (not res!871436) (not e!748595))))

(declare-datatypes ((array!87813 0))(
  ( (array!87814 (arr!42382 (Array (_ BitVec 32) (_ BitVec 64))) (size!42933 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87813)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87813 (_ BitVec 32)) Bool)

(assert (=> b!1312423 (= res!871436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312424 () Bool)

(declare-fun res!871432 () Bool)

(assert (=> b!1312424 (=> (not res!871432) (not e!748595))))

(declare-datatypes ((List!30268 0))(
  ( (Nil!30265) (Cons!30264 (h!31473 (_ BitVec 64)) (t!43881 List!30268)) )
))
(declare-fun arrayNoDuplicates!0 (array!87813 (_ BitVec 32) List!30268) Bool)

(assert (=> b!1312424 (= res!871432 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30265))))

(declare-fun b!1312425 () Bool)

(declare-fun res!871433 () Bool)

(assert (=> b!1312425 (=> (not res!871433) (not e!748595))))

(declare-datatypes ((V!52345 0))(
  ( (V!52346 (val!17790 Int)) )
))
(declare-datatypes ((ValueCell!16817 0))(
  ( (ValueCellFull!16817 (v!20415 V!52345)) (EmptyCell!16817) )
))
(declare-datatypes ((array!87815 0))(
  ( (array!87816 (arr!42383 (Array (_ BitVec 32) ValueCell!16817)) (size!42934 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87815)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312425 (= res!871433 (and (= (size!42934 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42933 _keys!1628) (size!42934 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312426 () Bool)

(declare-fun e!748592 () Bool)

(assert (=> b!1312426 (= e!748592 tp_is_empty!35431)))

(declare-fun b!1312427 () Bool)

(declare-fun e!748594 () Bool)

(declare-fun mapRes!54775 () Bool)

(assert (=> b!1312427 (= e!748594 (and e!748592 mapRes!54775))))

(declare-fun condMapEmpty!54775 () Bool)

(declare-fun mapDefault!54775 () ValueCell!16817)

