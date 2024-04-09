; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133702 () Bool)

(assert start!133702)

(declare-fun b!1562759 () Bool)

(declare-fun res!1068504 () Bool)

(declare-fun e!870939 () Bool)

(assert (=> b!1562759 (=> (not res!1068504) (not e!870939))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104169 0))(
  ( (array!104170 (arr!50272 (Array (_ BitVec 32) (_ BitVec 64))) (size!50823 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104169)

(declare-datatypes ((V!59877 0))(
  ( (V!59878 (val!19460 Int)) )
))
(declare-datatypes ((ValueCell!18346 0))(
  ( (ValueCellFull!18346 (v!22209 V!59877)) (EmptyCell!18346) )
))
(declare-datatypes ((array!104171 0))(
  ( (array!104172 (arr!50273 (Array (_ BitVec 32) ValueCell!18346)) (size!50824 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104171)

(assert (=> b!1562759 (= res!1068504 (and (= (size!50824 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50823 _keys!637) (size!50824 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59505 () Bool)

(declare-fun mapRes!59505 () Bool)

(declare-fun tp!113341 () Bool)

(declare-fun e!870937 () Bool)

(assert (=> mapNonEmpty!59505 (= mapRes!59505 (and tp!113341 e!870937))))

(declare-fun mapRest!59505 () (Array (_ BitVec 32) ValueCell!18346))

(declare-fun mapValue!59505 () ValueCell!18346)

(declare-fun mapKey!59505 () (_ BitVec 32))

(assert (=> mapNonEmpty!59505 (= (arr!50273 _values!487) (store mapRest!59505 mapKey!59505 mapValue!59505))))

(declare-fun b!1562760 () Bool)

(declare-fun tp_is_empty!38753 () Bool)

(assert (=> b!1562760 (= e!870937 tp_is_empty!38753)))

(declare-fun b!1562762 () Bool)

(assert (=> b!1562762 (= e!870939 false)))

(declare-fun lt!671721 () Bool)

(declare-datatypes ((List!36659 0))(
  ( (Nil!36656) (Cons!36655 (h!38102 (_ BitVec 64)) (t!51513 List!36659)) )
))
(declare-fun arrayNoDuplicates!0 (array!104169 (_ BitVec 32) List!36659) Bool)

(assert (=> b!1562762 (= lt!671721 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36656))))

(declare-fun b!1562763 () Bool)

(declare-fun e!870941 () Bool)

(declare-fun e!870938 () Bool)

(assert (=> b!1562763 (= e!870941 (and e!870938 mapRes!59505))))

(declare-fun condMapEmpty!59505 () Bool)

(declare-fun mapDefault!59505 () ValueCell!18346)

