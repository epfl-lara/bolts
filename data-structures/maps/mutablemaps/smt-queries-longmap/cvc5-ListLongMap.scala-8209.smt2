; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100156 () Bool)

(assert start!100156)

(declare-fun res!794382 () Bool)

(declare-fun e!678555 () Bool)

(assert (=> start!100156 (=> (not res!794382) (not e!678555))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77220 0))(
  ( (array!77221 (arr!37256 (Array (_ BitVec 32) (_ BitVec 64))) (size!37793 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77220)

(assert (=> start!100156 (= res!794382 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37793 _keys!1208))))))

(assert (=> start!100156 e!678555))

(declare-fun array_inv!28302 (array!77220) Bool)

(assert (=> start!100156 (array_inv!28302 _keys!1208)))

(assert (=> start!100156 true))

(declare-datatypes ((V!45433 0))(
  ( (V!45434 (val!15171 Int)) )
))
(declare-datatypes ((ValueCell!14405 0))(
  ( (ValueCellFull!14405 (v!17810 V!45433)) (EmptyCell!14405) )
))
(declare-datatypes ((array!77222 0))(
  ( (array!77223 (arr!37257 (Array (_ BitVec 32) ValueCell!14405)) (size!37794 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77222)

(declare-fun e!678556 () Bool)

(declare-fun array_inv!28303 (array!77222) Bool)

(assert (=> start!100156 (and (array_inv!28303 _values!996) e!678556)))

(declare-fun b!1193857 () Bool)

(declare-fun res!794383 () Bool)

(assert (=> b!1193857 (=> (not res!794383) (not e!678555))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193857 (= res!794383 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37793 _keys!1208))))))

(declare-fun b!1193858 () Bool)

(declare-fun e!678552 () Bool)

(declare-fun tp_is_empty!30229 () Bool)

(assert (=> b!1193858 (= e!678552 tp_is_empty!30229)))

(declare-fun mapNonEmpty!47171 () Bool)

(declare-fun mapRes!47171 () Bool)

(declare-fun tp!89782 () Bool)

(declare-fun e!678554 () Bool)

(assert (=> mapNonEmpty!47171 (= mapRes!47171 (and tp!89782 e!678554))))

(declare-fun mapRest!47171 () (Array (_ BitVec 32) ValueCell!14405))

(declare-fun mapValue!47171 () ValueCell!14405)

(declare-fun mapKey!47171 () (_ BitVec 32))

(assert (=> mapNonEmpty!47171 (= (arr!37257 _values!996) (store mapRest!47171 mapKey!47171 mapValue!47171))))

(declare-fun b!1193859 () Bool)

(declare-fun res!794387 () Bool)

(assert (=> b!1193859 (=> (not res!794387) (not e!678555))))

(declare-datatypes ((List!26408 0))(
  ( (Nil!26405) (Cons!26404 (h!27613 (_ BitVec 64)) (t!39086 List!26408)) )
))
(declare-fun arrayNoDuplicates!0 (array!77220 (_ BitVec 32) List!26408) Bool)

(assert (=> b!1193859 (= res!794387 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26405))))

(declare-fun b!1193860 () Bool)

(declare-fun res!794384 () Bool)

(assert (=> b!1193860 (=> (not res!794384) (not e!678555))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77220 (_ BitVec 32)) Bool)

(assert (=> b!1193860 (= res!794384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193861 () Bool)

(declare-fun res!794388 () Bool)

(assert (=> b!1193861 (=> (not res!794388) (not e!678555))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193861 (= res!794388 (validKeyInArray!0 k!934))))

(declare-fun b!1193862 () Bool)

(assert (=> b!1193862 (= e!678554 tp_is_empty!30229)))

(declare-fun b!1193863 () Bool)

(declare-fun res!794389 () Bool)

(assert (=> b!1193863 (=> (not res!794389) (not e!678555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193863 (= res!794389 (validMask!0 mask!1564))))

(declare-fun b!1193864 () Bool)

(assert (=> b!1193864 (= e!678556 (and e!678552 mapRes!47171))))

(declare-fun condMapEmpty!47171 () Bool)

(declare-fun mapDefault!47171 () ValueCell!14405)

