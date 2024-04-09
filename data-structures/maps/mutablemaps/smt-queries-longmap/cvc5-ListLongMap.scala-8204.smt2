; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100126 () Bool)

(assert start!100126)

(declare-fun b!1193327 () Bool)

(declare-fun e!678271 () Bool)

(declare-fun tp_is_empty!30199 () Bool)

(assert (=> b!1193327 (= e!678271 tp_is_empty!30199)))

(declare-fun b!1193328 () Bool)

(declare-fun e!678270 () Bool)

(assert (=> b!1193328 (= e!678270 (not true))))

(declare-datatypes ((array!77162 0))(
  ( (array!77163 (arr!37227 (Array (_ BitVec 32) (_ BitVec 64))) (size!37764 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77162)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193328 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39530 0))(
  ( (Unit!39531) )
))
(declare-fun lt!542520 () Unit!39530)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77162 (_ BitVec 64) (_ BitVec 32)) Unit!39530)

(assert (=> b!1193328 (= lt!542520 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1193329 () Bool)

(declare-fun res!794023 () Bool)

(declare-fun e!678266 () Bool)

(assert (=> b!1193329 (=> (not res!794023) (not e!678266))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193329 (= res!794023 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!47126 () Bool)

(declare-fun mapRes!47126 () Bool)

(declare-fun tp!89719 () Bool)

(assert (=> mapNonEmpty!47126 (= mapRes!47126 (and tp!89719 e!678271))))

(declare-datatypes ((V!45393 0))(
  ( (V!45394 (val!15156 Int)) )
))
(declare-datatypes ((ValueCell!14390 0))(
  ( (ValueCellFull!14390 (v!17795 V!45393)) (EmptyCell!14390) )
))
(declare-fun mapValue!47126 () ValueCell!14390)

(declare-fun mapKey!47126 () (_ BitVec 32))

(declare-datatypes ((array!77164 0))(
  ( (array!77165 (arr!37228 (Array (_ BitVec 32) ValueCell!14390)) (size!37765 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77164)

(declare-fun mapRest!47126 () (Array (_ BitVec 32) ValueCell!14390))

(assert (=> mapNonEmpty!47126 (= (arr!37228 _values!996) (store mapRest!47126 mapKey!47126 mapValue!47126))))

(declare-fun b!1193330 () Bool)

(declare-fun res!794020 () Bool)

(assert (=> b!1193330 (=> (not res!794020) (not e!678266))))

(assert (=> b!1193330 (= res!794020 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37764 _keys!1208))))))

(declare-fun b!1193331 () Bool)

(declare-fun res!794024 () Bool)

(assert (=> b!1193331 (=> (not res!794024) (not e!678266))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1193331 (= res!794024 (and (= (size!37765 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37764 _keys!1208) (size!37765 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193332 () Bool)

(declare-fun res!794021 () Bool)

(assert (=> b!1193332 (=> (not res!794021) (not e!678266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77162 (_ BitVec 32)) Bool)

(assert (=> b!1193332 (= res!794021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193333 () Bool)

(assert (=> b!1193333 (= e!678266 e!678270)))

(declare-fun res!794026 () Bool)

(assert (=> b!1193333 (=> (not res!794026) (not e!678270))))

(declare-fun lt!542519 () array!77162)

(assert (=> b!1193333 (= res!794026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542519 mask!1564))))

(assert (=> b!1193333 (= lt!542519 (array!77163 (store (arr!37227 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37764 _keys!1208)))))

(declare-fun res!794018 () Bool)

(assert (=> start!100126 (=> (not res!794018) (not e!678266))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100126 (= res!794018 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37764 _keys!1208))))))

(assert (=> start!100126 e!678266))

(declare-fun array_inv!28278 (array!77162) Bool)

(assert (=> start!100126 (array_inv!28278 _keys!1208)))

(assert (=> start!100126 true))

(declare-fun e!678267 () Bool)

(declare-fun array_inv!28279 (array!77164) Bool)

(assert (=> start!100126 (and (array_inv!28279 _values!996) e!678267)))

(declare-fun b!1193334 () Bool)

(declare-fun res!794025 () Bool)

(assert (=> b!1193334 (=> (not res!794025) (not e!678266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193334 (= res!794025 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!47126 () Bool)

(assert (=> mapIsEmpty!47126 mapRes!47126))

(declare-fun b!1193335 () Bool)

(declare-fun res!794022 () Bool)

(assert (=> b!1193335 (=> (not res!794022) (not e!678266))))

(declare-datatypes ((List!26391 0))(
  ( (Nil!26388) (Cons!26387 (h!27596 (_ BitVec 64)) (t!39057 List!26391)) )
))
(declare-fun arrayNoDuplicates!0 (array!77162 (_ BitVec 32) List!26391) Bool)

(assert (=> b!1193335 (= res!794022 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26388))))

(declare-fun b!1193336 () Bool)

(declare-fun e!678269 () Bool)

(assert (=> b!1193336 (= e!678267 (and e!678269 mapRes!47126))))

(declare-fun condMapEmpty!47126 () Bool)

(declare-fun mapDefault!47126 () ValueCell!14390)

