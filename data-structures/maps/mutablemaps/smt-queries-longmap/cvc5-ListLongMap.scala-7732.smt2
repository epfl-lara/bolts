; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97156 () Bool)

(assert start!97156)

(declare-fun b!1104582 () Bool)

(declare-fun res!737051 () Bool)

(declare-fun e!630535 () Bool)

(assert (=> b!1104582 (=> (not res!737051) (not e!630535))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104582 (= res!737051 (validMask!0 mask!1564))))

(declare-fun b!1104584 () Bool)

(declare-fun res!737050 () Bool)

(assert (=> b!1104584 (=> (not res!737050) (not e!630535))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71610 0))(
  ( (array!71611 (arr!34455 (Array (_ BitVec 32) (_ BitVec 64))) (size!34992 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71610)

(assert (=> b!1104584 (= res!737050 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34992 _keys!1208))))))

(declare-fun b!1104585 () Bool)

(declare-fun res!737054 () Bool)

(assert (=> b!1104585 (=> (not res!737054) (not e!630535))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1104585 (= res!737054 (= (select (arr!34455 _keys!1208) i!673) k!934))))

(declare-fun b!1104586 () Bool)

(declare-fun e!630532 () Bool)

(declare-fun tp_is_empty!27367 () Bool)

(assert (=> b!1104586 (= e!630532 tp_is_empty!27367)))

(declare-fun b!1104587 () Bool)

(declare-fun res!737052 () Bool)

(assert (=> b!1104587 (=> (not res!737052) (not e!630535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71610 (_ BitVec 32)) Bool)

(assert (=> b!1104587 (= res!737052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104588 () Bool)

(declare-fun res!737053 () Bool)

(assert (=> b!1104588 (=> (not res!737053) (not e!630535))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41617 0))(
  ( (V!41618 (val!13740 Int)) )
))
(declare-datatypes ((ValueCell!12974 0))(
  ( (ValueCellFull!12974 (v!16374 V!41617)) (EmptyCell!12974) )
))
(declare-datatypes ((array!71612 0))(
  ( (array!71613 (arr!34456 (Array (_ BitVec 32) ValueCell!12974)) (size!34993 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71612)

(assert (=> b!1104588 (= res!737053 (and (= (size!34993 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34992 _keys!1208) (size!34993 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104583 () Bool)

(declare-fun e!630533 () Bool)

(assert (=> b!1104583 (= e!630535 e!630533)))

(declare-fun res!737056 () Bool)

(assert (=> b!1104583 (=> (not res!737056) (not e!630533))))

(declare-fun lt!495149 () array!71610)

(assert (=> b!1104583 (= res!737056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495149 mask!1564))))

(assert (=> b!1104583 (= lt!495149 (array!71611 (store (arr!34455 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34992 _keys!1208)))))

(declare-fun res!737055 () Bool)

(assert (=> start!97156 (=> (not res!737055) (not e!630535))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97156 (= res!737055 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34992 _keys!1208))))))

(assert (=> start!97156 e!630535))

(declare-fun array_inv!26388 (array!71610) Bool)

(assert (=> start!97156 (array_inv!26388 _keys!1208)))

(assert (=> start!97156 true))

(declare-fun e!630531 () Bool)

(declare-fun array_inv!26389 (array!71612) Bool)

(assert (=> start!97156 (and (array_inv!26389 _values!996) e!630531)))

(declare-fun mapIsEmpty!42865 () Bool)

(declare-fun mapRes!42865 () Bool)

(assert (=> mapIsEmpty!42865 mapRes!42865))

(declare-fun b!1104589 () Bool)

(declare-fun e!630530 () Bool)

(assert (=> b!1104589 (= e!630530 tp_is_empty!27367)))

(declare-fun b!1104590 () Bool)

(assert (=> b!1104590 (= e!630531 (and e!630530 mapRes!42865))))

(declare-fun condMapEmpty!42865 () Bool)

(declare-fun mapDefault!42865 () ValueCell!12974)

