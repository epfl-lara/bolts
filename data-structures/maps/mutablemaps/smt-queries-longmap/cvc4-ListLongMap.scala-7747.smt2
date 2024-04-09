; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97266 () Bool)

(assert start!97266)

(declare-fun b!1106449 () Bool)

(declare-fun res!738472 () Bool)

(declare-fun e!631416 () Bool)

(assert (=> b!1106449 (=> (not res!738472) (not e!631416))))

(declare-datatypes ((array!71792 0))(
  ( (array!71793 (arr!34545 (Array (_ BitVec 32) (_ BitVec 64))) (size!35082 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71792)

(declare-datatypes ((List!24217 0))(
  ( (Nil!24214) (Cons!24213 (h!25422 (_ BitVec 64)) (t!34489 List!24217)) )
))
(declare-fun arrayNoDuplicates!0 (array!71792 (_ BitVec 32) List!24217) Bool)

(assert (=> b!1106449 (= res!738472 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24214))))

(declare-fun b!1106450 () Bool)

(declare-fun e!631421 () Bool)

(assert (=> b!1106450 (= e!631416 e!631421)))

(declare-fun res!738477 () Bool)

(assert (=> b!1106450 (=> (not res!738477) (not e!631421))))

(declare-fun lt!495447 () array!71792)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71792 (_ BitVec 32)) Bool)

(assert (=> b!1106450 (= res!738477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495447 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106450 (= lt!495447 (array!71793 (store (arr!34545 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35082 _keys!1208)))))

(declare-fun mapIsEmpty!43009 () Bool)

(declare-fun mapRes!43009 () Bool)

(assert (=> mapIsEmpty!43009 mapRes!43009))

(declare-fun b!1106451 () Bool)

(declare-fun res!738471 () Bool)

(assert (=> b!1106451 (=> (not res!738471) (not e!631416))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106451 (= res!738471 (validKeyInArray!0 k!934))))

(declare-fun b!1106452 () Bool)

(declare-fun e!631420 () Bool)

(declare-fun tp_is_empty!27461 () Bool)

(assert (=> b!1106452 (= e!631420 tp_is_empty!27461)))

(declare-fun b!1106453 () Bool)

(declare-fun res!738474 () Bool)

(assert (=> b!1106453 (=> (not res!738474) (not e!631416))))

(assert (=> b!1106453 (= res!738474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106454 () Bool)

(assert (=> b!1106454 (= e!631421 (not true))))

(declare-fun arrayContainsKey!0 (array!71792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106454 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36249 0))(
  ( (Unit!36250) )
))
(declare-fun lt!495446 () Unit!36249)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71792 (_ BitVec 64) (_ BitVec 32)) Unit!36249)

(assert (=> b!1106454 (= lt!495446 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1106455 () Bool)

(declare-fun res!738469 () Bool)

(assert (=> b!1106455 (=> (not res!738469) (not e!631416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106455 (= res!738469 (validMask!0 mask!1564))))

(declare-fun b!1106456 () Bool)

(declare-fun res!738476 () Bool)

(assert (=> b!1106456 (=> (not res!738476) (not e!631416))))

(assert (=> b!1106456 (= res!738476 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35082 _keys!1208))))))

(declare-fun res!738468 () Bool)

(assert (=> start!97266 (=> (not res!738468) (not e!631416))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97266 (= res!738468 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35082 _keys!1208))))))

(assert (=> start!97266 e!631416))

(declare-fun array_inv!26446 (array!71792) Bool)

(assert (=> start!97266 (array_inv!26446 _keys!1208)))

(assert (=> start!97266 true))

(declare-datatypes ((V!41741 0))(
  ( (V!41742 (val!13787 Int)) )
))
(declare-datatypes ((ValueCell!13021 0))(
  ( (ValueCellFull!13021 (v!16421 V!41741)) (EmptyCell!13021) )
))
(declare-datatypes ((array!71794 0))(
  ( (array!71795 (arr!34546 (Array (_ BitVec 32) ValueCell!13021)) (size!35083 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71794)

(declare-fun e!631417 () Bool)

(declare-fun array_inv!26447 (array!71794) Bool)

(assert (=> start!97266 (and (array_inv!26447 _values!996) e!631417)))

(declare-fun b!1106457 () Bool)

(assert (=> b!1106457 (= e!631417 (and e!631420 mapRes!43009))))

(declare-fun condMapEmpty!43009 () Bool)

(declare-fun mapDefault!43009 () ValueCell!13021)

