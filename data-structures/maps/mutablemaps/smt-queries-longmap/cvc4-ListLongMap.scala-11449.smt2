; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133528 () Bool)

(assert start!133528)

(declare-fun mapIsEmpty!59244 () Bool)

(declare-fun mapRes!59244 () Bool)

(assert (=> mapIsEmpty!59244 mapRes!59244))

(declare-fun b!1560503 () Bool)

(declare-fun e!869626 () Bool)

(declare-fun tp_is_empty!38579 () Bool)

(assert (=> b!1560503 (= e!869626 tp_is_empty!38579)))

(declare-fun b!1560504 () Bool)

(declare-fun res!1067146 () Bool)

(declare-fun e!869624 () Bool)

(assert (=> b!1560504 (=> (not res!1067146) (not e!869624))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59645 0))(
  ( (V!59646 (val!19373 Int)) )
))
(declare-datatypes ((ValueCell!18259 0))(
  ( (ValueCellFull!18259 (v!22122 V!59645)) (EmptyCell!18259) )
))
(declare-datatypes ((array!103833 0))(
  ( (array!103834 (arr!50104 (Array (_ BitVec 32) ValueCell!18259)) (size!50655 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103833)

(declare-datatypes ((array!103835 0))(
  ( (array!103836 (arr!50105 (Array (_ BitVec 32) (_ BitVec 64))) (size!50656 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103835)

(assert (=> b!1560504 (= res!1067146 (and (= (size!50655 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50656 _keys!637) (size!50655 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560505 () Bool)

(assert (=> b!1560505 (= e!869624 false)))

(declare-fun lt!670947 () Bool)

(declare-datatypes ((List!36552 0))(
  ( (Nil!36549) (Cons!36548 (h!37995 (_ BitVec 64)) (t!51292 List!36552)) )
))
(declare-fun arrayNoDuplicates!0 (array!103835 (_ BitVec 32) List!36552) Bool)

(assert (=> b!1560505 (= lt!670947 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36549))))

(declare-fun mapNonEmpty!59244 () Bool)

(declare-fun tp!112900 () Bool)

(declare-fun e!869625 () Bool)

(assert (=> mapNonEmpty!59244 (= mapRes!59244 (and tp!112900 e!869625))))

(declare-fun mapValue!59244 () ValueCell!18259)

(declare-fun mapRest!59244 () (Array (_ BitVec 32) ValueCell!18259))

(declare-fun mapKey!59244 () (_ BitVec 32))

(assert (=> mapNonEmpty!59244 (= (arr!50104 _values!487) (store mapRest!59244 mapKey!59244 mapValue!59244))))

(declare-fun b!1560506 () Bool)

(declare-fun e!869627 () Bool)

(assert (=> b!1560506 (= e!869627 (and e!869626 mapRes!59244))))

(declare-fun condMapEmpty!59244 () Bool)

(declare-fun mapDefault!59244 () ValueCell!18259)

