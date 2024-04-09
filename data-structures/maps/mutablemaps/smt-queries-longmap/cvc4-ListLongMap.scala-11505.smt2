; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133928 () Bool)

(assert start!133928)

(declare-fun b_free!32141 () Bool)

(declare-fun b_next!32141 () Bool)

(assert (=> start!133928 (= b_free!32141 (not b_next!32141))))

(declare-fun tp!113723 () Bool)

(declare-fun b_and!51729 () Bool)

(assert (=> start!133928 (= tp!113723 b_and!51729)))

(declare-fun mapNonEmpty!59761 () Bool)

(declare-fun mapRes!59761 () Bool)

(declare-fun tp!113722 () Bool)

(declare-fun e!872438 () Bool)

(assert (=> mapNonEmpty!59761 (= mapRes!59761 (and tp!113722 e!872438))))

(declare-datatypes ((V!60093 0))(
  ( (V!60094 (val!19541 Int)) )
))
(declare-datatypes ((ValueCell!18427 0))(
  ( (ValueCellFull!18427 (v!22293 V!60093)) (EmptyCell!18427) )
))
(declare-fun mapValue!59761 () ValueCell!18427)

(declare-fun mapRest!59761 () (Array (_ BitVec 32) ValueCell!18427))

(declare-datatypes ((array!104491 0))(
  ( (array!104492 (arr!50429 (Array (_ BitVec 32) ValueCell!18427)) (size!50980 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104491)

(declare-fun mapKey!59761 () (_ BitVec 32))

(assert (=> mapNonEmpty!59761 (= (arr!50429 _values!487) (store mapRest!59761 mapKey!59761 mapValue!59761))))

(declare-fun mapIsEmpty!59761 () Bool)

(assert (=> mapIsEmpty!59761 mapRes!59761))

(declare-fun b!1565183 () Bool)

(declare-fun e!872441 () Bool)

(declare-fun tp_is_empty!38915 () Bool)

(assert (=> b!1565183 (= e!872441 tp_is_empty!38915)))

(declare-fun b!1565184 () Bool)

(declare-fun e!872440 () Bool)

(assert (=> b!1565184 (= e!872440 (and e!872441 mapRes!59761))))

(declare-fun condMapEmpty!59761 () Bool)

(declare-fun mapDefault!59761 () ValueCell!18427)

