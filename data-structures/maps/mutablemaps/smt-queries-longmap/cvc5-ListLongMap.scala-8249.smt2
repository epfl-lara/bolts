; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100478 () Bool)

(assert start!100478)

(declare-fun b_free!25765 () Bool)

(declare-fun b_next!25765 () Bool)

(assert (=> start!100478 (= b_free!25765 (not b_next!25765))))

(declare-fun tp!90286 () Bool)

(declare-fun b_and!42431 () Bool)

(assert (=> start!100478 (= tp!90286 b_and!42431)))

(declare-fun b!1199168 () Bool)

(declare-fun e!681150 () Bool)

(declare-fun e!681153 () Bool)

(assert (=> b!1199168 (= e!681150 e!681153)))

(declare-fun res!798246 () Bool)

(assert (=> b!1199168 (=> (not res!798246) (not e!681153))))

(declare-datatypes ((array!77696 0))(
  ( (array!77697 (arr!37489 (Array (_ BitVec 32) (_ BitVec 64))) (size!38026 (_ BitVec 32))) )
))
(declare-fun lt!543658 () array!77696)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77696 (_ BitVec 32)) Bool)

(assert (=> b!1199168 (= res!798246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543658 mask!1564))))

(declare-fun _keys!1208 () array!77696)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1199168 (= lt!543658 (array!77697 (store (arr!37489 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38026 _keys!1208)))))

(declare-fun mapNonEmpty!47546 () Bool)

(declare-fun mapRes!47546 () Bool)

(declare-fun tp!90285 () Bool)

(declare-fun e!681151 () Bool)

(assert (=> mapNonEmpty!47546 (= mapRes!47546 (and tp!90285 e!681151))))

(declare-fun mapKey!47546 () (_ BitVec 32))

(declare-datatypes ((V!45753 0))(
  ( (V!45754 (val!15291 Int)) )
))
(declare-datatypes ((ValueCell!14525 0))(
  ( (ValueCellFull!14525 (v!17930 V!45753)) (EmptyCell!14525) )
))
(declare-fun mapRest!47546 () (Array (_ BitVec 32) ValueCell!14525))

(declare-fun mapValue!47546 () ValueCell!14525)

(declare-datatypes ((array!77698 0))(
  ( (array!77699 (arr!37490 (Array (_ BitVec 32) ValueCell!14525)) (size!38027 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77698)

(assert (=> mapNonEmpty!47546 (= (arr!37490 _values!996) (store mapRest!47546 mapKey!47546 mapValue!47546))))

(declare-fun b!1199169 () Bool)

(declare-fun res!798255 () Bool)

(assert (=> b!1199169 (=> (not res!798255) (not e!681150))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199169 (= res!798255 (validKeyInArray!0 k!934))))

(declare-fun b!1199170 () Bool)

(declare-fun res!798250 () Bool)

(assert (=> b!1199170 (=> (not res!798250) (not e!681150))))

(declare-datatypes ((List!26544 0))(
  ( (Nil!26541) (Cons!26540 (h!27749 (_ BitVec 64)) (t!39296 List!26544)) )
))
(declare-fun arrayNoDuplicates!0 (array!77696 (_ BitVec 32) List!26544) Bool)

(assert (=> b!1199170 (= res!798250 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26541))))

(declare-fun mapIsEmpty!47546 () Bool)

(assert (=> mapIsEmpty!47546 mapRes!47546))

(declare-fun b!1199172 () Bool)

(declare-fun res!798252 () Bool)

(assert (=> b!1199172 (=> (not res!798252) (not e!681150))))

(assert (=> b!1199172 (= res!798252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199173 () Bool)

(declare-fun res!798249 () Bool)

(assert (=> b!1199173 (=> (not res!798249) (not e!681150))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1199173 (= res!798249 (and (= (size!38027 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38026 _keys!1208) (size!38027 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199174 () Bool)

(declare-fun res!798253 () Bool)

(assert (=> b!1199174 (=> (not res!798253) (not e!681150))))

(assert (=> b!1199174 (= res!798253 (= (select (arr!37489 _keys!1208) i!673) k!934))))

(declare-fun b!1199175 () Bool)

(declare-fun res!798251 () Bool)

(assert (=> b!1199175 (=> (not res!798251) (not e!681153))))

(assert (=> b!1199175 (= res!798251 (arrayNoDuplicates!0 lt!543658 #b00000000000000000000000000000000 Nil!26541))))

(declare-fun b!1199176 () Bool)

(declare-fun e!681149 () Bool)

(declare-fun e!681152 () Bool)

(assert (=> b!1199176 (= e!681149 (and e!681152 mapRes!47546))))

(declare-fun condMapEmpty!47546 () Bool)

(declare-fun mapDefault!47546 () ValueCell!14525)

