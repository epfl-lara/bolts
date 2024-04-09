; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43438 () Bool)

(assert start!43438)

(declare-fun b_free!12233 () Bool)

(declare-fun b_next!12233 () Bool)

(assert (=> start!43438 (= b_free!12233 (not b_next!12233))))

(declare-fun tp!42978 () Bool)

(declare-fun b_and!21009 () Bool)

(assert (=> start!43438 (= tp!42978 b_and!21009)))

(declare-fun b!480992 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun lt!218358 () (_ BitVec 32))

(declare-datatypes ((array!31127 0))(
  ( (array!31128 (arr!14964 (Array (_ BitVec 32) (_ BitVec 64))) (size!15322 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31127)

(declare-fun e!283013 () Bool)

(assert (=> b!480992 (= e!283013 (not (or (not (= (size!15322 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))) (bvslt lt!218358 #b00000000000000000000000000000000) (bvsle lt!218358 (size!15322 _keys!1874)))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31127 (_ BitVec 32)) Bool)

(assert (=> b!480992 (arrayForallSeekEntryOrOpenFound!0 lt!218358 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14084 0))(
  ( (Unit!14085) )
))
(declare-fun lt!218359 () Unit!14084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14084)

(assert (=> b!480992 (= lt!218359 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218358))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31127 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480992 (= lt!218358 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!283011 () Bool)

(assert (=> b!480992 e!283011))

(declare-fun c!57794 () Bool)

(assert (=> b!480992 (= c!57794 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218360 () Unit!14084)

(declare-datatypes ((V!19397 0))(
  ( (V!19398 (val!6920 Int)) )
))
(declare-fun minValue!1458 () V!19397)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19397)

(declare-datatypes ((ValueCell!6511 0))(
  ( (ValueCellFull!6511 (v!9208 V!19397)) (EmptyCell!6511) )
))
(declare-datatypes ((array!31129 0))(
  ( (array!31130 (arr!14965 (Array (_ BitVec 32) ValueCell!6511)) (size!15323 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31129)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!132 (array!31127 array!31129 (_ BitVec 32) (_ BitVec 32) V!19397 V!19397 (_ BitVec 64) Int) Unit!14084)

(assert (=> b!480992 (= lt!218360 (lemmaKeyInListMapIsInArray!132 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun res!286863 () Bool)

(assert (=> start!43438 (=> (not res!286863) (not e!283013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43438 (= res!286863 (validMask!0 mask!2352))))

(assert (=> start!43438 e!283013))

(assert (=> start!43438 true))

(declare-fun tp_is_empty!13745 () Bool)

(assert (=> start!43438 tp_is_empty!13745))

(declare-fun e!283012 () Bool)

(declare-fun array_inv!10776 (array!31129) Bool)

(assert (=> start!43438 (and (array_inv!10776 _values!1516) e!283012)))

(assert (=> start!43438 tp!42978))

(declare-fun array_inv!10777 (array!31127) Bool)

(assert (=> start!43438 (array_inv!10777 _keys!1874)))

(declare-fun b!480993 () Bool)

(declare-fun res!286862 () Bool)

(assert (=> b!480993 (=> (not res!286862) (not e!283013))))

(declare-datatypes ((List!9195 0))(
  ( (Nil!9192) (Cons!9191 (h!10047 (_ BitVec 64)) (t!15415 List!9195)) )
))
(declare-fun arrayNoDuplicates!0 (array!31127 (_ BitVec 32) List!9195) Bool)

(assert (=> b!480993 (= res!286862 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9192))))

(declare-fun b!480994 () Bool)

(declare-fun e!283010 () Bool)

(declare-fun mapRes!22324 () Bool)

(assert (=> b!480994 (= e!283012 (and e!283010 mapRes!22324))))

(declare-fun condMapEmpty!22324 () Bool)

(declare-fun mapDefault!22324 () ValueCell!6511)

