; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100054 () Bool)

(assert start!100054)

(declare-fun b_free!25597 () Bool)

(declare-fun b_next!25597 () Bool)

(assert (=> start!100054 (= b_free!25597 (not b_next!25597))))

(declare-fun tp!89505 () Bool)

(declare-fun b_and!42075 () Bool)

(assert (=> start!100054 (= tp!89505 b_and!42075)))

(declare-fun b!1191639 () Bool)

(declare-fun res!792736 () Bool)

(declare-fun e!677411 () Bool)

(assert (=> b!1191639 (=> (not res!792736) (not e!677411))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191639 (= res!792736 (validKeyInArray!0 k!934))))

(declare-fun res!792732 () Bool)

(assert (=> start!100054 (=> (not res!792732) (not e!677411))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77018 0))(
  ( (array!77019 (arr!37155 (Array (_ BitVec 32) (_ BitVec 64))) (size!37692 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77018)

(assert (=> start!100054 (= res!792732 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37692 _keys!1208))))))

(assert (=> start!100054 e!677411))

(declare-fun tp_is_empty!30127 () Bool)

(assert (=> start!100054 tp_is_empty!30127))

(declare-fun array_inv!28234 (array!77018) Bool)

(assert (=> start!100054 (array_inv!28234 _keys!1208)))

(assert (=> start!100054 true))

(assert (=> start!100054 tp!89505))

(declare-datatypes ((V!45297 0))(
  ( (V!45298 (val!15120 Int)) )
))
(declare-datatypes ((ValueCell!14354 0))(
  ( (ValueCellFull!14354 (v!17759 V!45297)) (EmptyCell!14354) )
))
(declare-datatypes ((array!77020 0))(
  ( (array!77021 (arr!37156 (Array (_ BitVec 32) ValueCell!14354)) (size!37693 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77020)

(declare-fun e!677410 () Bool)

(declare-fun array_inv!28235 (array!77020) Bool)

(assert (=> start!100054 (and (array_inv!28235 _values!996) e!677410)))

(declare-fun b!1191640 () Bool)

(declare-fun res!792733 () Bool)

(assert (=> b!1191640 (=> (not res!792733) (not e!677411))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1191640 (= res!792733 (and (= (size!37693 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37692 _keys!1208) (size!37693 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191641 () Bool)

(declare-fun res!792726 () Bool)

(assert (=> b!1191641 (=> (not res!792726) (not e!677411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77018 (_ BitVec 32)) Bool)

(assert (=> b!1191641 (= res!792726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191642 () Bool)

(declare-fun e!677409 () Bool)

(assert (=> b!1191642 (= e!677409 tp_is_empty!30127)))

(declare-fun b!1191643 () Bool)

(declare-fun res!792730 () Bool)

(assert (=> b!1191643 (=> (not res!792730) (not e!677411))))

(declare-datatypes ((List!26333 0))(
  ( (Nil!26330) (Cons!26329 (h!27538 (_ BitVec 64)) (t!38929 List!26333)) )
))
(declare-fun arrayNoDuplicates!0 (array!77018 (_ BitVec 32) List!26333) Bool)

(assert (=> b!1191643 (= res!792730 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26330))))

(declare-fun b!1191644 () Bool)

(declare-fun e!677413 () Bool)

(declare-fun mapRes!47018 () Bool)

(assert (=> b!1191644 (= e!677410 (and e!677413 mapRes!47018))))

(declare-fun condMapEmpty!47018 () Bool)

(declare-fun mapDefault!47018 () ValueCell!14354)

