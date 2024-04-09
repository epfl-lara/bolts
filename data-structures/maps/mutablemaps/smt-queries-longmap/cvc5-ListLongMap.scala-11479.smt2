; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133704 () Bool)

(assert start!133704)

(declare-fun b!1562777 () Bool)

(declare-fun res!1068514 () Bool)

(declare-fun e!870954 () Bool)

(assert (=> b!1562777 (=> (not res!1068514) (not e!870954))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104173 0))(
  ( (array!104174 (arr!50274 (Array (_ BitVec 32) (_ BitVec 64))) (size!50825 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104173)

(declare-datatypes ((V!59881 0))(
  ( (V!59882 (val!19461 Int)) )
))
(declare-datatypes ((ValueCell!18347 0))(
  ( (ValueCellFull!18347 (v!22210 V!59881)) (EmptyCell!18347) )
))
(declare-datatypes ((array!104175 0))(
  ( (array!104176 (arr!50275 (Array (_ BitVec 32) ValueCell!18347)) (size!50826 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104175)

(assert (=> b!1562777 (= res!1068514 (and (= (size!50826 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50825 _keys!637) (size!50826 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562778 () Bool)

(declare-fun e!870955 () Bool)

(declare-fun tp_is_empty!38755 () Bool)

(assert (=> b!1562778 (= e!870955 tp_is_empty!38755)))

(declare-fun mapIsEmpty!59508 () Bool)

(declare-fun mapRes!59508 () Bool)

(assert (=> mapIsEmpty!59508 mapRes!59508))

(declare-fun mapNonEmpty!59508 () Bool)

(declare-fun tp!113344 () Bool)

(declare-fun e!870952 () Bool)

(assert (=> mapNonEmpty!59508 (= mapRes!59508 (and tp!113344 e!870952))))

(declare-fun mapValue!59508 () ValueCell!18347)

(declare-fun mapRest!59508 () (Array (_ BitVec 32) ValueCell!18347))

(declare-fun mapKey!59508 () (_ BitVec 32))

(assert (=> mapNonEmpty!59508 (= (arr!50275 _values!487) (store mapRest!59508 mapKey!59508 mapValue!59508))))

(declare-fun b!1562780 () Bool)

(assert (=> b!1562780 (= e!870952 tp_is_empty!38755)))

(declare-fun b!1562781 () Bool)

(declare-fun e!870956 () Bool)

(assert (=> b!1562781 (= e!870956 (and e!870955 mapRes!59508))))

(declare-fun condMapEmpty!59508 () Bool)

(declare-fun mapDefault!59508 () ValueCell!18347)

