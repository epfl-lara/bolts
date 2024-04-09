; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133958 () Bool)

(assert start!133958)

(declare-fun b_free!32149 () Bool)

(declare-fun b_next!32149 () Bool)

(assert (=> start!133958 (= b_free!32149 (not b_next!32149))))

(declare-fun tp!113750 () Bool)

(declare-fun b_and!51749 () Bool)

(assert (=> start!133958 (= tp!113750 b_and!51749)))

(declare-fun b!1565394 () Bool)

(declare-fun res!1070165 () Bool)

(declare-fun e!872564 () Bool)

(assert (=> b!1565394 (=> (not res!1070165) (not e!872564))))

(declare-datatypes ((array!104507 0))(
  ( (array!104508 (arr!50436 (Array (_ BitVec 32) (_ BitVec 64))) (size!50987 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104507)

(declare-datatypes ((List!36765 0))(
  ( (Nil!36762) (Cons!36761 (h!38208 (_ BitVec 64)) (t!51635 List!36765)) )
))
(declare-fun arrayNoDuplicates!0 (array!104507 (_ BitVec 32) List!36765) Bool)

(assert (=> b!1565394 (= res!1070165 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36762))))

(declare-fun b!1565395 () Bool)

(declare-fun res!1070166 () Bool)

(assert (=> b!1565395 (=> (not res!1070166) (not e!872564))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!60105 0))(
  ( (V!60106 (val!19545 Int)) )
))
(declare-datatypes ((ValueCell!18431 0))(
  ( (ValueCellFull!18431 (v!22298 V!60105)) (EmptyCell!18431) )
))
(declare-datatypes ((array!104509 0))(
  ( (array!104510 (arr!50437 (Array (_ BitVec 32) ValueCell!18431)) (size!50988 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104509)

(assert (=> b!1565395 (= res!1070166 (and (= (size!50988 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50987 _keys!637) (size!50988 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565396 () Bool)

(declare-fun res!1070161 () Bool)

(assert (=> b!1565396 (=> (not res!1070161) (not e!872564))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565396 (= res!1070161 (validKeyInArray!0 (select (arr!50436 _keys!637) from!782)))))

(declare-fun b!1565397 () Bool)

(assert (=> b!1565397 (= e!872564 (not (bvslt from!782 (size!50988 _values!487))))))

(declare-datatypes ((tuple2!25376 0))(
  ( (tuple2!25377 (_1!12698 (_ BitVec 64)) (_2!12698 V!60105)) )
))
(declare-datatypes ((List!36766 0))(
  ( (Nil!36763) (Cons!36762 (h!38209 tuple2!25376) (t!51636 List!36766)) )
))
(declare-datatypes ((ListLongMap!22823 0))(
  ( (ListLongMap!22824 (toList!11427 List!36766)) )
))
(declare-fun lt!672218 () ListLongMap!22823)

(declare-fun lt!672216 () V!60105)

(declare-fun contains!10348 (ListLongMap!22823 (_ BitVec 64)) Bool)

(declare-fun +!5034 (ListLongMap!22823 tuple2!25376) ListLongMap!22823)

(assert (=> b!1565397 (not (contains!10348 (+!5034 lt!672218 (tuple2!25377 (select (arr!50436 _keys!637) from!782) lt!672216)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51942 0))(
  ( (Unit!51943) )
))
(declare-fun lt!672217 () Unit!51942)

(declare-fun addStillNotContains!570 (ListLongMap!22823 (_ BitVec 64) V!60105 (_ BitVec 64)) Unit!51942)

(assert (=> b!1565397 (= lt!672217 (addStillNotContains!570 lt!672218 (select (arr!50436 _keys!637) from!782) lt!672216 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26362 (ValueCell!18431 V!60105) V!60105)

(declare-fun dynLambda!3923 (Int (_ BitVec 64)) V!60105)

(assert (=> b!1565397 (= lt!672216 (get!26362 (select (arr!50437 _values!487) from!782) (dynLambda!3923 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60105)

(declare-fun minValue!453 () V!60105)

(declare-fun getCurrentListMapNoExtraKeys!6767 (array!104507 array!104509 (_ BitVec 32) (_ BitVec 32) V!60105 V!60105 (_ BitVec 32) Int) ListLongMap!22823)

(assert (=> b!1565397 (= lt!672218 (getCurrentListMapNoExtraKeys!6767 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59776 () Bool)

(declare-fun mapRes!59776 () Bool)

(assert (=> mapIsEmpty!59776 mapRes!59776))

(declare-fun b!1565398 () Bool)

(declare-fun e!872563 () Bool)

(declare-fun tp_is_empty!38923 () Bool)

(assert (=> b!1565398 (= e!872563 tp_is_empty!38923)))

(declare-fun b!1565399 () Bool)

(declare-fun e!872561 () Bool)

(assert (=> b!1565399 (= e!872561 (and e!872563 mapRes!59776))))

(declare-fun condMapEmpty!59776 () Bool)

(declare-fun mapDefault!59776 () ValueCell!18431)

