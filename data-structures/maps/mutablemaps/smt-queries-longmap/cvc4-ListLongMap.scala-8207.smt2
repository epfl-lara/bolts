; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100148 () Bool)

(assert start!100148)

(declare-fun res!794327 () Bool)

(declare-fun e!678496 () Bool)

(assert (=> start!100148 (=> (not res!794327) (not e!678496))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77204 0))(
  ( (array!77205 (arr!37248 (Array (_ BitVec 32) (_ BitVec 64))) (size!37785 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77204)

(assert (=> start!100148 (= res!794327 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37785 _keys!1208))))))

(assert (=> start!100148 e!678496))

(declare-fun array_inv!28294 (array!77204) Bool)

(assert (=> start!100148 (array_inv!28294 _keys!1208)))

(assert (=> start!100148 true))

(declare-datatypes ((V!45421 0))(
  ( (V!45422 (val!15167 Int)) )
))
(declare-datatypes ((ValueCell!14401 0))(
  ( (ValueCellFull!14401 (v!17806 V!45421)) (EmptyCell!14401) )
))
(declare-datatypes ((array!77206 0))(
  ( (array!77207 (arr!37249 (Array (_ BitVec 32) ValueCell!14401)) (size!37786 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77206)

(declare-fun e!678494 () Bool)

(declare-fun array_inv!28295 (array!77206) Bool)

(assert (=> start!100148 (and (array_inv!28295 _values!996) e!678494)))

(declare-fun b!1193765 () Bool)

(assert (=> b!1193765 (= e!678496 false)))

(declare-fun lt!542631 () Bool)

(declare-datatypes ((List!26405 0))(
  ( (Nil!26402) (Cons!26401 (h!27610 (_ BitVec 64)) (t!39083 List!26405)) )
))
(declare-fun arrayNoDuplicates!0 (array!77204 (_ BitVec 32) List!26405) Bool)

(assert (=> b!1193765 (= lt!542631 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26402))))

(declare-fun mapIsEmpty!47159 () Bool)

(declare-fun mapRes!47159 () Bool)

(assert (=> mapIsEmpty!47159 mapRes!47159))

(declare-fun b!1193766 () Bool)

(declare-fun res!794328 () Bool)

(assert (=> b!1193766 (=> (not res!794328) (not e!678496))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77204 (_ BitVec 32)) Bool)

(assert (=> b!1193766 (= res!794328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193767 () Bool)

(declare-fun e!678492 () Bool)

(declare-fun tp_is_empty!30221 () Bool)

(assert (=> b!1193767 (= e!678492 tp_is_empty!30221)))

(declare-fun b!1193768 () Bool)

(declare-fun e!678495 () Bool)

(assert (=> b!1193768 (= e!678494 (and e!678495 mapRes!47159))))

(declare-fun condMapEmpty!47159 () Bool)

(declare-fun mapDefault!47159 () ValueCell!14401)

