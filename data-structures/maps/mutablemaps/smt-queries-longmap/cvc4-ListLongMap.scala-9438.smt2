; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112276 () Bool)

(assert start!112276)

(declare-fun b_free!30635 () Bool)

(declare-fun b_next!30635 () Bool)

(assert (=> start!112276 (= b_free!30635 (not b_next!30635))))

(declare-fun tp!107542 () Bool)

(declare-fun b_and!49335 () Bool)

(assert (=> start!112276 (= tp!107542 b_and!49335)))

(declare-fun b!1329526 () Bool)

(declare-fun res!882250 () Bool)

(declare-fun e!757939 () Bool)

(assert (=> b!1329526 (=> (not res!882250) (not e!757939))))

(declare-datatypes ((V!53829 0))(
  ( (V!53830 (val!18347 Int)) )
))
(declare-datatypes ((ValueCell!17374 0))(
  ( (ValueCellFull!17374 (v!20982 V!53829)) (EmptyCell!17374) )
))
(declare-datatypes ((array!89945 0))(
  ( (array!89946 (arr!43434 (Array (_ BitVec 32) ValueCell!17374)) (size!43985 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89945)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89947 0))(
  ( (array!89948 (arr!43435 (Array (_ BitVec 32) (_ BitVec 64))) (size!43986 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89947)

(assert (=> b!1329526 (= res!882250 (and (= (size!43985 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43986 _keys!1590) (size!43985 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329527 () Bool)

(declare-fun res!882253 () Bool)

(assert (=> b!1329527 (=> (not res!882253) (not e!757939))))

(declare-datatypes ((List!30957 0))(
  ( (Nil!30954) (Cons!30953 (h!32162 (_ BitVec 64)) (t!45012 List!30957)) )
))
(declare-fun arrayNoDuplicates!0 (array!89947 (_ BitVec 32) List!30957) Bool)

(assert (=> b!1329527 (= res!882253 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30954))))

(declare-fun b!1329528 () Bool)

(declare-fun e!757935 () Bool)

(declare-fun e!757937 () Bool)

(declare-fun mapRes!56491 () Bool)

(assert (=> b!1329528 (= e!757935 (and e!757937 mapRes!56491))))

(declare-fun condMapEmpty!56491 () Bool)

(declare-fun mapDefault!56491 () ValueCell!17374)

