; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101366 () Bool)

(assert start!101366)

(declare-fun b_free!26227 () Bool)

(declare-fun b_next!26227 () Bool)

(assert (=> start!101366 (= b_free!26227 (not b_next!26227))))

(declare-fun tp!91707 () Bool)

(declare-fun b_and!43599 () Bool)

(assert (=> start!101366 (= tp!91707 b_and!43599)))

(declare-fun b!1217449 () Bool)

(declare-fun res!808589 () Bool)

(declare-fun e!691222 () Bool)

(assert (=> b!1217449 (=> (not res!808589) (not e!691222))))

(declare-datatypes ((array!78610 0))(
  ( (array!78611 (arr!37935 (Array (_ BitVec 32) (_ BitVec 64))) (size!38472 (_ BitVec 32))) )
))
(declare-fun lt!553343 () array!78610)

(declare-datatypes ((List!26918 0))(
  ( (Nil!26915) (Cons!26914 (h!28123 (_ BitVec 64)) (t!40132 List!26918)) )
))
(declare-fun arrayNoDuplicates!0 (array!78610 (_ BitVec 32) List!26918) Bool)

(assert (=> b!1217449 (= res!808589 (arrayNoDuplicates!0 lt!553343 #b00000000000000000000000000000000 Nil!26915))))

(declare-fun b!1217450 () Bool)

(declare-fun e!691219 () Bool)

(assert (=> b!1217450 (= e!691222 (not e!691219))))

(declare-fun res!808594 () Bool)

(assert (=> b!1217450 (=> res!808594 e!691219)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217450 (= res!808594 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!78610)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217450 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40294 0))(
  ( (Unit!40295) )
))
(declare-fun lt!553342 () Unit!40294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78610 (_ BitVec 64) (_ BitVec 32)) Unit!40294)

(assert (=> b!1217450 (= lt!553342 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!48274 () Bool)

(declare-fun mapRes!48274 () Bool)

(assert (=> mapIsEmpty!48274 mapRes!48274))

(declare-fun b!1217451 () Bool)

(declare-fun e!691221 () Bool)

(declare-fun tp_is_empty!30931 () Bool)

(assert (=> b!1217451 (= e!691221 tp_is_empty!30931)))

(declare-fun b!1217452 () Bool)

(declare-fun e!691228 () Bool)

(assert (=> b!1217452 (= e!691228 e!691222)))

(declare-fun res!808600 () Bool)

(assert (=> b!1217452 (=> (not res!808600) (not e!691222))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78610 (_ BitVec 32)) Bool)

(assert (=> b!1217452 (= res!808600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553343 mask!1564))))

(assert (=> b!1217452 (= lt!553343 (array!78611 (store (arr!37935 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38472 _keys!1208)))))

(declare-fun b!1217453 () Bool)

(declare-fun e!691224 () Bool)

(assert (=> b!1217453 (= e!691224 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1217454 () Bool)

(declare-fun res!808590 () Bool)

(assert (=> b!1217454 (=> (not res!808590) (not e!691228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217454 (= res!808590 (validMask!0 mask!1564))))

(declare-fun res!808602 () Bool)

(assert (=> start!101366 (=> (not res!808602) (not e!691228))))

(assert (=> start!101366 (= res!808602 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38472 _keys!1208))))))

(assert (=> start!101366 e!691228))

(assert (=> start!101366 tp_is_empty!30931))

(declare-fun array_inv!28786 (array!78610) Bool)

(assert (=> start!101366 (array_inv!28786 _keys!1208)))

(assert (=> start!101366 true))

(assert (=> start!101366 tp!91707))

(declare-datatypes ((V!46369 0))(
  ( (V!46370 (val!15522 Int)) )
))
(declare-datatypes ((ValueCell!14756 0))(
  ( (ValueCellFull!14756 (v!18177 V!46369)) (EmptyCell!14756) )
))
(declare-datatypes ((array!78612 0))(
  ( (array!78613 (arr!37936 (Array (_ BitVec 32) ValueCell!14756)) (size!38473 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78612)

(declare-fun e!691227 () Bool)

(declare-fun array_inv!28787 (array!78612) Bool)

(assert (=> start!101366 (and (array_inv!28787 _values!996) e!691227)))

(declare-fun b!1217455 () Bool)

(declare-fun res!808599 () Bool)

(assert (=> b!1217455 (=> (not res!808599) (not e!691228))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1217455 (= res!808599 (and (= (size!38473 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38472 _keys!1208) (size!38473 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217456 () Bool)

(declare-fun e!691220 () Bool)

(assert (=> b!1217456 (= e!691227 (and e!691220 mapRes!48274))))

(declare-fun condMapEmpty!48274 () Bool)

(declare-fun mapDefault!48274 () ValueCell!14756)

