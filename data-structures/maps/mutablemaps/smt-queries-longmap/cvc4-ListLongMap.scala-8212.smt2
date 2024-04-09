; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100178 () Bool)

(assert start!100178)

(declare-fun b!1194246 () Bool)

(declare-fun res!794679 () Bool)

(declare-fun e!678747 () Bool)

(assert (=> b!1194246 (=> (not res!794679) (not e!678747))))

(declare-datatypes ((array!77264 0))(
  ( (array!77265 (arr!37278 (Array (_ BitVec 32) (_ BitVec 64))) (size!37815 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77264)

(declare-datatypes ((List!26418 0))(
  ( (Nil!26415) (Cons!26414 (h!27623 (_ BitVec 64)) (t!39096 List!26418)) )
))
(declare-fun arrayNoDuplicates!0 (array!77264 (_ BitVec 32) List!26418) Bool)

(assert (=> b!1194246 (= res!794679 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26415))))

(declare-fun b!1194247 () Bool)

(declare-fun res!794678 () Bool)

(assert (=> b!1194247 (=> (not res!794678) (not e!678747))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194247 (= res!794678 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!47204 () Bool)

(declare-fun mapRes!47204 () Bool)

(assert (=> mapIsEmpty!47204 mapRes!47204))

(declare-fun b!1194248 () Bool)

(declare-fun res!794674 () Bool)

(assert (=> b!1194248 (=> (not res!794674) (not e!678747))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194248 (= res!794674 (= (select (arr!37278 _keys!1208) i!673) k!934))))

(declare-fun b!1194249 () Bool)

(declare-fun e!678744 () Bool)

(assert (=> b!1194249 (= e!678747 e!678744)))

(declare-fun res!794673 () Bool)

(assert (=> b!1194249 (=> (not res!794673) (not e!678744))))

(declare-fun lt!542702 () array!77264)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77264 (_ BitVec 32)) Bool)

(assert (=> b!1194249 (= res!794673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542702 mask!1564))))

(assert (=> b!1194249 (= lt!542702 (array!77265 (store (arr!37278 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37815 _keys!1208)))))

(declare-fun b!1194250 () Bool)

(declare-fun e!678745 () Bool)

(declare-fun tp_is_empty!30251 () Bool)

(assert (=> b!1194250 (= e!678745 tp_is_empty!30251)))

(declare-fun b!1194251 () Bool)

(declare-fun res!794676 () Bool)

(assert (=> b!1194251 (=> (not res!794676) (not e!678747))))

(assert (=> b!1194251 (= res!794676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194252 () Bool)

(declare-fun res!794675 () Bool)

(assert (=> b!1194252 (=> (not res!794675) (not e!678747))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45461 0))(
  ( (V!45462 (val!15182 Int)) )
))
(declare-datatypes ((ValueCell!14416 0))(
  ( (ValueCellFull!14416 (v!17821 V!45461)) (EmptyCell!14416) )
))
(declare-datatypes ((array!77266 0))(
  ( (array!77267 (arr!37279 (Array (_ BitVec 32) ValueCell!14416)) (size!37816 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77266)

(assert (=> b!1194252 (= res!794675 (and (= (size!37816 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37815 _keys!1208) (size!37816 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194253 () Bool)

(declare-fun res!794672 () Bool)

(assert (=> b!1194253 (=> (not res!794672) (not e!678747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194253 (= res!794672 (validMask!0 mask!1564))))

(declare-fun res!794680 () Bool)

(assert (=> start!100178 (=> (not res!794680) (not e!678747))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100178 (= res!794680 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37815 _keys!1208))))))

(assert (=> start!100178 e!678747))

(declare-fun array_inv!28318 (array!77264) Bool)

(assert (=> start!100178 (array_inv!28318 _keys!1208)))

(assert (=> start!100178 true))

(declare-fun e!678746 () Bool)

(declare-fun array_inv!28319 (array!77266) Bool)

(assert (=> start!100178 (and (array_inv!28319 _values!996) e!678746)))

(declare-fun b!1194254 () Bool)

(declare-fun res!794677 () Bool)

(assert (=> b!1194254 (=> (not res!794677) (not e!678747))))

(assert (=> b!1194254 (= res!794677 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37815 _keys!1208))))))

(declare-fun b!1194255 () Bool)

(declare-fun e!678748 () Bool)

(assert (=> b!1194255 (= e!678746 (and e!678748 mapRes!47204))))

(declare-fun condMapEmpty!47204 () Bool)

(declare-fun mapDefault!47204 () ValueCell!14416)

