; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133968 () Bool)

(assert start!133968)

(declare-fun b_free!32159 () Bool)

(declare-fun b_next!32159 () Bool)

(assert (=> start!133968 (= b_free!32159 (not b_next!32159))))

(declare-fun tp!113780 () Bool)

(declare-fun b_and!51769 () Bool)

(assert (=> start!133968 (= tp!113780 b_and!51769)))

(declare-fun res!1070251 () Bool)

(declare-fun e!872635 () Bool)

(assert (=> start!133968 (=> (not res!1070251) (not e!872635))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133968 (= res!1070251 (validMask!0 mask!947))))

(assert (=> start!133968 e!872635))

(assert (=> start!133968 tp!113780))

(declare-fun tp_is_empty!38933 () Bool)

(assert (=> start!133968 tp_is_empty!38933))

(assert (=> start!133968 true))

(declare-datatypes ((array!104527 0))(
  ( (array!104528 (arr!50446 (Array (_ BitVec 32) (_ BitVec 64))) (size!50997 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104527)

(declare-fun array_inv!39117 (array!104527) Bool)

(assert (=> start!133968 (array_inv!39117 _keys!637)))

(declare-datatypes ((V!60117 0))(
  ( (V!60118 (val!19550 Int)) )
))
(declare-datatypes ((ValueCell!18436 0))(
  ( (ValueCellFull!18436 (v!22303 V!60117)) (EmptyCell!18436) )
))
(declare-datatypes ((array!104529 0))(
  ( (array!104530 (arr!50447 (Array (_ BitVec 32) ValueCell!18436)) (size!50998 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104529)

(declare-fun e!872636 () Bool)

(declare-fun array_inv!39118 (array!104529) Bool)

(assert (=> start!133968 (and (array_inv!39118 _values!487) e!872636)))

(declare-fun b!1565539 () Bool)

(assert (=> b!1565539 (= e!872635 (not true))))

(declare-fun lt!672280 () Bool)

(declare-datatypes ((tuple2!25386 0))(
  ( (tuple2!25387 (_1!12703 (_ BitVec 64)) (_2!12703 V!60117)) )
))
(declare-datatypes ((List!36774 0))(
  ( (Nil!36771) (Cons!36770 (h!38217 tuple2!25386) (t!51654 List!36774)) )
))
(declare-datatypes ((ListLongMap!22833 0))(
  ( (ListLongMap!22834 (toList!11432 List!36774)) )
))
(declare-fun lt!672279 () ListLongMap!22833)

(declare-fun contains!10353 (ListLongMap!22833 (_ BitVec 64)) Bool)

(assert (=> b!1565539 (= lt!672280 (contains!10353 lt!672279 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565539 (not (contains!10353 lt!672279 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672278 () V!60117)

(declare-fun lt!672277 () ListLongMap!22833)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5039 (ListLongMap!22833 tuple2!25386) ListLongMap!22833)

(assert (=> b!1565539 (= lt!672279 (+!5039 lt!672277 (tuple2!25387 (select (arr!50446 _keys!637) from!782) lt!672278)))))

(declare-datatypes ((Unit!51952 0))(
  ( (Unit!51953) )
))
(declare-fun lt!672281 () Unit!51952)

(declare-fun addStillNotContains!575 (ListLongMap!22833 (_ BitVec 64) V!60117 (_ BitVec 64)) Unit!51952)

(assert (=> b!1565539 (= lt!672281 (addStillNotContains!575 lt!672277 (select (arr!50446 _keys!637) from!782) lt!672278 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26369 (ValueCell!18436 V!60117) V!60117)

(declare-fun dynLambda!3928 (Int (_ BitVec 64)) V!60117)

(assert (=> b!1565539 (= lt!672278 (get!26369 (select (arr!50447 _values!487) from!782) (dynLambda!3928 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60117)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60117)

(declare-fun getCurrentListMapNoExtraKeys!6772 (array!104527 array!104529 (_ BitVec 32) (_ BitVec 32) V!60117 V!60117 (_ BitVec 32) Int) ListLongMap!22833)

(assert (=> b!1565539 (= lt!672277 (getCurrentListMapNoExtraKeys!6772 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565540 () Bool)

(declare-fun e!872637 () Bool)

(assert (=> b!1565540 (= e!872637 tp_is_empty!38933)))

(declare-fun b!1565541 () Bool)

(declare-fun res!1070252 () Bool)

(assert (=> b!1565541 (=> (not res!1070252) (not e!872635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104527 (_ BitVec 32)) Bool)

(assert (=> b!1565541 (= res!1070252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565542 () Bool)

(declare-fun res!1070254 () Bool)

(assert (=> b!1565542 (=> (not res!1070254) (not e!872635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565542 (= res!1070254 (validKeyInArray!0 (select (arr!50446 _keys!637) from!782)))))

(declare-fun b!1565543 () Bool)

(declare-fun res!1070253 () Bool)

(assert (=> b!1565543 (=> (not res!1070253) (not e!872635))))

(assert (=> b!1565543 (= res!1070253 (and (= (size!50998 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50997 _keys!637) (size!50998 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59791 () Bool)

(declare-fun mapRes!59791 () Bool)

(assert (=> mapIsEmpty!59791 mapRes!59791))

(declare-fun b!1565544 () Bool)

(declare-fun res!1070256 () Bool)

(assert (=> b!1565544 (=> (not res!1070256) (not e!872635))))

(assert (=> b!1565544 (= res!1070256 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50997 _keys!637)) (bvslt from!782 (size!50997 _keys!637))))))

(declare-fun b!1565545 () Bool)

(declare-fun res!1070255 () Bool)

(assert (=> b!1565545 (=> (not res!1070255) (not e!872635))))

(declare-datatypes ((List!36775 0))(
  ( (Nil!36772) (Cons!36771 (h!38218 (_ BitVec 64)) (t!51655 List!36775)) )
))
(declare-fun arrayNoDuplicates!0 (array!104527 (_ BitVec 32) List!36775) Bool)

(assert (=> b!1565545 (= res!1070255 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36772))))

(declare-fun b!1565546 () Bool)

(declare-fun e!872639 () Bool)

(assert (=> b!1565546 (= e!872636 (and e!872639 mapRes!59791))))

(declare-fun condMapEmpty!59791 () Bool)

(declare-fun mapDefault!59791 () ValueCell!18436)

