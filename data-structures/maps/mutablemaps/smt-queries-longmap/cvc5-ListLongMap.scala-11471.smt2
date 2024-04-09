; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133656 () Bool)

(assert start!133656)

(declare-fun b_free!32041 () Bool)

(declare-fun b_next!32041 () Bool)

(assert (=> start!133656 (= b_free!32041 (not b_next!32041))))

(declare-fun tp!113248 () Bool)

(declare-fun b_and!51603 () Bool)

(assert (=> start!133656 (= tp!113248 b_and!51603)))

(declare-fun mapNonEmpty!59436 () Bool)

(declare-fun mapRes!59436 () Bool)

(declare-fun tp!113247 () Bool)

(declare-fun e!870596 () Bool)

(assert (=> mapNonEmpty!59436 (= mapRes!59436 (and tp!113247 e!870596))))

(declare-datatypes ((V!59817 0))(
  ( (V!59818 (val!19437 Int)) )
))
(declare-datatypes ((ValueCell!18323 0))(
  ( (ValueCellFull!18323 (v!22186 V!59817)) (EmptyCell!18323) )
))
(declare-fun mapValue!59436 () ValueCell!18323)

(declare-datatypes ((array!104081 0))(
  ( (array!104082 (arr!50228 (Array (_ BitVec 32) ValueCell!18323)) (size!50779 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104081)

(declare-fun mapKey!59436 () (_ BitVec 32))

(declare-fun mapRest!59436 () (Array (_ BitVec 32) ValueCell!18323))

(assert (=> mapNonEmpty!59436 (= (arr!50228 _values!487) (store mapRest!59436 mapKey!59436 mapValue!59436))))

(declare-fun b!1562252 () Bool)

(declare-fun e!870595 () Bool)

(declare-fun tp_is_empty!38707 () Bool)

(assert (=> b!1562252 (= e!870595 tp_is_empty!38707)))

(declare-fun b!1562253 () Bool)

(declare-fun res!1068222 () Bool)

(declare-fun e!870594 () Bool)

(assert (=> b!1562253 (=> (not res!1068222) (not e!870594))))

(declare-datatypes ((array!104083 0))(
  ( (array!104084 (arr!50229 (Array (_ BitVec 32) (_ BitVec 64))) (size!50780 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104083)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562253 (= res!1068222 (validKeyInArray!0 (select (arr!50229 _keys!637) from!782)))))

(declare-fun b!1562254 () Bool)

(declare-fun e!870592 () Bool)

(assert (=> b!1562254 (= e!870592 (and e!870595 mapRes!59436))))

(declare-fun condMapEmpty!59436 () Bool)

(declare-fun mapDefault!59436 () ValueCell!18323)

