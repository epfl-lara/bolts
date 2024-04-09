; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133952 () Bool)

(assert start!133952)

(declare-fun b_free!32143 () Bool)

(declare-fun b_next!32143 () Bool)

(assert (=> start!133952 (= b_free!32143 (not b_next!32143))))

(declare-fun tp!113732 () Bool)

(declare-fun b_and!51737 () Bool)

(assert (=> start!133952 (= tp!113732 b_and!51737)))

(declare-fun b!1565307 () Bool)

(declare-fun e!872515 () Bool)

(declare-fun tp_is_empty!38917 () Bool)

(assert (=> b!1565307 (= e!872515 tp_is_empty!38917)))

(declare-fun b!1565308 () Bool)

(declare-fun res!1070112 () Bool)

(declare-fun e!872519 () Bool)

(assert (=> b!1565308 (=> (not res!1070112) (not e!872519))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104495 0))(
  ( (array!104496 (arr!50430 (Array (_ BitVec 32) (_ BitVec 64))) (size!50981 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104495)

(assert (=> b!1565308 (= res!1070112 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50981 _keys!637)) (bvslt from!782 (size!50981 _keys!637))))))

(declare-fun mapNonEmpty!59767 () Bool)

(declare-fun mapRes!59767 () Bool)

(declare-fun tp!113731 () Bool)

(declare-fun e!872518 () Bool)

(assert (=> mapNonEmpty!59767 (= mapRes!59767 (and tp!113731 e!872518))))

(declare-fun mapKey!59767 () (_ BitVec 32))

(declare-datatypes ((V!60097 0))(
  ( (V!60098 (val!19542 Int)) )
))
(declare-datatypes ((ValueCell!18428 0))(
  ( (ValueCellFull!18428 (v!22295 V!60097)) (EmptyCell!18428) )
))
(declare-fun mapRest!59767 () (Array (_ BitVec 32) ValueCell!18428))

(declare-fun mapValue!59767 () ValueCell!18428)

(declare-datatypes ((array!104497 0))(
  ( (array!104498 (arr!50431 (Array (_ BitVec 32) ValueCell!18428)) (size!50982 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104497)

(assert (=> mapNonEmpty!59767 (= (arr!50431 _values!487) (store mapRest!59767 mapKey!59767 mapValue!59767))))

(declare-fun mapIsEmpty!59767 () Bool)

(assert (=> mapIsEmpty!59767 mapRes!59767))

(declare-fun b!1565309 () Bool)

(declare-fun res!1070107 () Bool)

(assert (=> b!1565309 (=> (not res!1070107) (not e!872519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565309 (= res!1070107 (validKeyInArray!0 (select (arr!50430 _keys!637) from!782)))))

(declare-fun b!1565310 () Bool)

(declare-fun res!1070109 () Bool)

(assert (=> b!1565310 (=> (not res!1070109) (not e!872519))))

(declare-datatypes ((List!36761 0))(
  ( (Nil!36758) (Cons!36757 (h!38204 (_ BitVec 64)) (t!51625 List!36761)) )
))
(declare-fun arrayNoDuplicates!0 (array!104495 (_ BitVec 32) List!36761) Bool)

(assert (=> b!1565310 (= res!1070109 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36758))))

(declare-fun b!1565311 () Bool)

(assert (=> b!1565311 (= e!872518 tp_is_empty!38917)))

(declare-fun b!1565313 () Bool)

(declare-fun e!872517 () Bool)

(assert (=> b!1565313 (= e!872517 (and e!872515 mapRes!59767))))

(declare-fun condMapEmpty!59767 () Bool)

(declare-fun mapDefault!59767 () ValueCell!18428)

