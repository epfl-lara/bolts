; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97754 () Bool)

(assert start!97754)

(declare-fun mapIsEmpty!43741 () Bool)

(declare-fun mapRes!43741 () Bool)

(assert (=> mapIsEmpty!43741 mapRes!43741))

(declare-fun b!1117213 () Bool)

(declare-fun res!746114 () Bool)

(declare-fun e!636491 () Bool)

(assert (=> b!1117213 (=> (not res!746114) (not e!636491))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117213 (= res!746114 (validKeyInArray!0 k!934))))

(declare-fun b!1117214 () Bool)

(declare-fun e!636487 () Bool)

(assert (=> b!1117214 (= e!636491 e!636487)))

(declare-fun res!746112 () Bool)

(assert (=> b!1117214 (=> (not res!746112) (not e!636487))))

(declare-datatypes ((array!72732 0))(
  ( (array!72733 (arr!35015 (Array (_ BitVec 32) (_ BitVec 64))) (size!35552 (_ BitVec 32))) )
))
(declare-fun lt!497235 () array!72732)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72732 (_ BitVec 32)) Bool)

(assert (=> b!1117214 (= res!746112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497235 mask!1564))))

(declare-fun _keys!1208 () array!72732)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117214 (= lt!497235 (array!72733 (store (arr!35015 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35552 _keys!1208)))))

(declare-fun b!1117216 () Bool)

(declare-fun res!746119 () Bool)

(assert (=> b!1117216 (=> (not res!746119) (not e!636491))))

(assert (=> b!1117216 (= res!746119 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35552 _keys!1208))))))

(declare-fun b!1117217 () Bool)

(declare-fun res!746113 () Bool)

(assert (=> b!1117217 (=> (not res!746113) (not e!636491))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42393 0))(
  ( (V!42394 (val!14031 Int)) )
))
(declare-datatypes ((ValueCell!13265 0))(
  ( (ValueCellFull!13265 (v!16665 V!42393)) (EmptyCell!13265) )
))
(declare-datatypes ((array!72734 0))(
  ( (array!72735 (arr!35016 (Array (_ BitVec 32) ValueCell!13265)) (size!35553 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72734)

(assert (=> b!1117217 (= res!746113 (and (= (size!35553 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35552 _keys!1208) (size!35553 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117218 () Bool)

(declare-fun res!746116 () Bool)

(assert (=> b!1117218 (=> (not res!746116) (not e!636491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117218 (= res!746116 (validMask!0 mask!1564))))

(declare-fun b!1117219 () Bool)

(declare-fun e!636488 () Bool)

(declare-fun e!636490 () Bool)

(assert (=> b!1117219 (= e!636488 (and e!636490 mapRes!43741))))

(declare-fun condMapEmpty!43741 () Bool)

(declare-fun mapDefault!43741 () ValueCell!13265)

