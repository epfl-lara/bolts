; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112324 () Bool)

(assert start!112324)

(declare-fun b_free!30683 () Bool)

(declare-fun b_next!30683 () Bool)

(assert (=> start!112324 (= b_free!30683 (not b_next!30683))))

(declare-fun tp!107687 () Bool)

(declare-fun b_and!49431 () Bool)

(assert (=> start!112324 (= tp!107687 b_and!49431)))

(declare-fun mapIsEmpty!56563 () Bool)

(declare-fun mapRes!56563 () Bool)

(assert (=> mapIsEmpty!56563 mapRes!56563))

(declare-fun mapNonEmpty!56563 () Bool)

(declare-fun tp!107686 () Bool)

(declare-fun e!758299 () Bool)

(assert (=> mapNonEmpty!56563 (= mapRes!56563 (and tp!107686 e!758299))))

(declare-datatypes ((V!53893 0))(
  ( (V!53894 (val!18371 Int)) )
))
(declare-datatypes ((ValueCell!17398 0))(
  ( (ValueCellFull!17398 (v!21006 V!53893)) (EmptyCell!17398) )
))
(declare-datatypes ((array!90041 0))(
  ( (array!90042 (arr!43482 (Array (_ BitVec 32) ValueCell!17398)) (size!44033 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90041)

(declare-fun mapRest!56563 () (Array (_ BitVec 32) ValueCell!17398))

(declare-fun mapValue!56563 () ValueCell!17398)

(declare-fun mapKey!56563 () (_ BitVec 32))

(assert (=> mapNonEmpty!56563 (= (arr!43482 _values!1320) (store mapRest!56563 mapKey!56563 mapValue!56563))))

(declare-fun b!1330439 () Bool)

(declare-fun e!758295 () Bool)

(declare-fun e!758296 () Bool)

(assert (=> b!1330439 (= e!758295 (and e!758296 mapRes!56563))))

(declare-fun condMapEmpty!56563 () Bool)

(declare-fun mapDefault!56563 () ValueCell!17398)

