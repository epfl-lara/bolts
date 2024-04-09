; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100322 () Bool)

(assert start!100322)

(declare-fun b!1196387 () Bool)

(declare-fun res!796286 () Bool)

(declare-fun e!679779 () Bool)

(assert (=> b!1196387 (=> (not res!796286) (not e!679779))))

(declare-datatypes ((array!77466 0))(
  ( (array!77467 (arr!37376 (Array (_ BitVec 32) (_ BitVec 64))) (size!37913 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77466)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77466 (_ BitVec 32)) Bool)

(assert (=> b!1196387 (= res!796286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196388 () Bool)

(declare-fun res!796287 () Bool)

(declare-fun e!679778 () Bool)

(assert (=> b!1196388 (=> (not res!796287) (not e!679778))))

(declare-fun lt!543029 () array!77466)

(declare-datatypes ((List!26461 0))(
  ( (Nil!26458) (Cons!26457 (h!27666 (_ BitVec 64)) (t!39139 List!26461)) )
))
(declare-fun arrayNoDuplicates!0 (array!77466 (_ BitVec 32) List!26461) Bool)

(assert (=> b!1196388 (= res!796287 (arrayNoDuplicates!0 lt!543029 #b00000000000000000000000000000000 Nil!26458))))

(declare-fun b!1196389 () Bool)

(declare-fun res!796285 () Bool)

(assert (=> b!1196389 (=> (not res!796285) (not e!679779))))

(assert (=> b!1196389 (= res!796285 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26458))))

(declare-fun mapIsEmpty!47366 () Bool)

(declare-fun mapRes!47366 () Bool)

(assert (=> mapIsEmpty!47366 mapRes!47366))

(declare-fun mapNonEmpty!47366 () Bool)

(declare-fun tp!89977 () Bool)

(declare-fun e!679780 () Bool)

(assert (=> mapNonEmpty!47366 (= mapRes!47366 (and tp!89977 e!679780))))

(declare-datatypes ((V!45597 0))(
  ( (V!45598 (val!15233 Int)) )
))
(declare-datatypes ((ValueCell!14467 0))(
  ( (ValueCellFull!14467 (v!17872 V!45597)) (EmptyCell!14467) )
))
(declare-fun mapRest!47366 () (Array (_ BitVec 32) ValueCell!14467))

(declare-datatypes ((array!77468 0))(
  ( (array!77469 (arr!37377 (Array (_ BitVec 32) ValueCell!14467)) (size!37914 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77468)

(declare-fun mapValue!47366 () ValueCell!14467)

(declare-fun mapKey!47366 () (_ BitVec 32))

(assert (=> mapNonEmpty!47366 (= (arr!37377 _values!996) (store mapRest!47366 mapKey!47366 mapValue!47366))))

(declare-fun b!1196390 () Bool)

(declare-fun e!679776 () Bool)

(declare-fun tp_is_empty!30353 () Bool)

(assert (=> b!1196390 (= e!679776 tp_is_empty!30353)))

(declare-fun res!796282 () Bool)

(assert (=> start!100322 (=> (not res!796282) (not e!679779))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100322 (= res!796282 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37913 _keys!1208))))))

(assert (=> start!100322 e!679779))

(declare-fun array_inv!28392 (array!77466) Bool)

(assert (=> start!100322 (array_inv!28392 _keys!1208)))

(assert (=> start!100322 true))

(declare-fun e!679777 () Bool)

(declare-fun array_inv!28393 (array!77468) Bool)

(assert (=> start!100322 (and (array_inv!28393 _values!996) e!679777)))

(declare-fun b!1196391 () Bool)

(assert (=> b!1196391 (= e!679777 (and e!679776 mapRes!47366))))

(declare-fun condMapEmpty!47366 () Bool)

(declare-fun mapDefault!47366 () ValueCell!14467)

