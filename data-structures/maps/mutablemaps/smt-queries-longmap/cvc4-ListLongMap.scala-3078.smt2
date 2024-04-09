; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43372 () Bool)

(assert start!43372)

(declare-fun b_free!12191 () Bool)

(declare-fun b_next!12191 () Bool)

(assert (=> start!43372 (= b_free!12191 (not b_next!12191))))

(declare-fun tp!42849 () Bool)

(declare-fun b_and!20965 () Bool)

(assert (=> start!43372 (= tp!42849 b_and!20965)))

(declare-fun b!480168 () Bool)

(declare-fun res!286434 () Bool)

(declare-fun e!282549 () Bool)

(assert (=> b!480168 (=> (not res!286434) (not e!282549))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31043 0))(
  ( (array!31044 (arr!14923 (Array (_ BitVec 32) (_ BitVec 64))) (size!15281 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31043)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19341 0))(
  ( (V!19342 (val!6899 Int)) )
))
(declare-datatypes ((ValueCell!6490 0))(
  ( (ValueCellFull!6490 (v!9186 V!19341)) (EmptyCell!6490) )
))
(declare-datatypes ((array!31045 0))(
  ( (array!31046 (arr!14924 (Array (_ BitVec 32) ValueCell!6490)) (size!15282 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31045)

(assert (=> b!480168 (= res!286434 (and (= (size!15282 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15281 _keys!1874) (size!15282 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480169 () Bool)

(assert (=> b!480169 (= e!282549 (not true))))

(declare-fun lt!218099 () (_ BitVec 32))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31043 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480169 (= lt!218099 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!282546 () Bool)

(assert (=> b!480169 e!282546))

(declare-fun c!57697 () Bool)

(assert (=> b!480169 (= c!57697 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun minValue!1458 () V!19341)

(declare-datatypes ((Unit!14056 0))(
  ( (Unit!14057) )
))
(declare-fun lt!218098 () Unit!14056)

(declare-fun zeroValue!1458 () V!19341)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!119 (array!31043 array!31045 (_ BitVec 32) (_ BitVec 32) V!19341 V!19341 (_ BitVec 64) Int) Unit!14056)

(assert (=> b!480169 (= lt!218098 (lemmaKeyInListMapIsInArray!119 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun res!286432 () Bool)

(assert (=> start!43372 (=> (not res!286432) (not e!282549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43372 (= res!286432 (validMask!0 mask!2352))))

(assert (=> start!43372 e!282549))

(assert (=> start!43372 true))

(declare-fun tp_is_empty!13703 () Bool)

(assert (=> start!43372 tp_is_empty!13703))

(declare-fun e!282547 () Bool)

(declare-fun array_inv!10752 (array!31045) Bool)

(assert (=> start!43372 (and (array_inv!10752 _values!1516) e!282547)))

(assert (=> start!43372 tp!42849))

(declare-fun array_inv!10753 (array!31043) Bool)

(assert (=> start!43372 (array_inv!10753 _keys!1874)))

(declare-fun b!480170 () Bool)

(declare-fun e!282550 () Bool)

(declare-fun mapRes!22258 () Bool)

(assert (=> b!480170 (= e!282547 (and e!282550 mapRes!22258))))

(declare-fun condMapEmpty!22258 () Bool)

(declare-fun mapDefault!22258 () ValueCell!6490)

