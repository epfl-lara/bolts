; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97514 () Bool)

(assert start!97514)

(declare-fun b!1112533 () Bool)

(declare-fun e!634330 () Bool)

(assert (=> b!1112533 (= e!634330 (not true))))

(declare-datatypes ((array!72274 0))(
  ( (array!72275 (arr!34786 (Array (_ BitVec 32) (_ BitVec 64))) (size!35323 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72274)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112533 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36421 0))(
  ( (Unit!36422) )
))
(declare-fun lt!496514 () Unit!36421)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72274 (_ BitVec 64) (_ BitVec 32)) Unit!36421)

(assert (=> b!1112533 (= lt!496514 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1112534 () Bool)

(declare-fun e!634327 () Bool)

(assert (=> b!1112534 (= e!634327 e!634330)))

(declare-fun res!742515 () Bool)

(assert (=> b!1112534 (=> (not res!742515) (not e!634330))))

(declare-fun lt!496515 () array!72274)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72274 (_ BitVec 32)) Bool)

(assert (=> b!1112534 (= res!742515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496515 mask!1564))))

(assert (=> b!1112534 (= lt!496515 (array!72275 (store (arr!34786 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35323 _keys!1208)))))

(declare-fun b!1112535 () Bool)

(declare-fun res!742521 () Bool)

(assert (=> b!1112535 (=> (not res!742521) (not e!634327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112535 (= res!742521 (validMask!0 mask!1564))))

(declare-fun b!1112536 () Bool)

(declare-fun res!742519 () Bool)

(assert (=> b!1112536 (=> (not res!742519) (not e!634330))))

(declare-datatypes ((List!24401 0))(
  ( (Nil!24398) (Cons!24397 (h!25606 (_ BitVec 64)) (t!34889 List!24401)) )
))
(declare-fun arrayNoDuplicates!0 (array!72274 (_ BitVec 32) List!24401) Bool)

(assert (=> b!1112536 (= res!742519 (arrayNoDuplicates!0 lt!496515 #b00000000000000000000000000000000 Nil!24398))))

(declare-fun mapIsEmpty!43381 () Bool)

(declare-fun mapRes!43381 () Bool)

(assert (=> mapIsEmpty!43381 mapRes!43381))

(declare-fun res!742517 () Bool)

(assert (=> start!97514 (=> (not res!742517) (not e!634327))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97514 (= res!742517 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35323 _keys!1208))))))

(assert (=> start!97514 e!634327))

(declare-fun array_inv!26622 (array!72274) Bool)

(assert (=> start!97514 (array_inv!26622 _keys!1208)))

(assert (=> start!97514 true))

(declare-datatypes ((V!42073 0))(
  ( (V!42074 (val!13911 Int)) )
))
(declare-datatypes ((ValueCell!13145 0))(
  ( (ValueCellFull!13145 (v!16545 V!42073)) (EmptyCell!13145) )
))
(declare-datatypes ((array!72276 0))(
  ( (array!72277 (arr!34787 (Array (_ BitVec 32) ValueCell!13145)) (size!35324 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72276)

(declare-fun e!634329 () Bool)

(declare-fun array_inv!26623 (array!72276) Bool)

(assert (=> start!97514 (and (array_inv!26623 _values!996) e!634329)))

(declare-fun b!1112537 () Bool)

(declare-fun e!634331 () Bool)

(declare-fun tp_is_empty!27709 () Bool)

(assert (=> b!1112537 (= e!634331 tp_is_empty!27709)))

(declare-fun b!1112538 () Bool)

(declare-fun res!742512 () Bool)

(assert (=> b!1112538 (=> (not res!742512) (not e!634327))))

(assert (=> b!1112538 (= res!742512 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24398))))

(declare-fun b!1112539 () Bool)

(declare-fun res!742513 () Bool)

(assert (=> b!1112539 (=> (not res!742513) (not e!634327))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1112539 (= res!742513 (and (= (size!35324 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35323 _keys!1208) (size!35324 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112540 () Bool)

(assert (=> b!1112540 (= e!634329 (and e!634331 mapRes!43381))))

(declare-fun condMapEmpty!43381 () Bool)

(declare-fun mapDefault!43381 () ValueCell!13145)

