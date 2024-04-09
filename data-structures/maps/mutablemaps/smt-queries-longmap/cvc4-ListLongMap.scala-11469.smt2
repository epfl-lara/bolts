; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133648 () Bool)

(assert start!133648)

(declare-fun b_free!32033 () Bool)

(declare-fun b_next!32033 () Bool)

(assert (=> start!133648 (= b_free!32033 (not b_next!32033))))

(declare-fun tp!113224 () Bool)

(declare-fun b_and!51587 () Bool)

(assert (=> start!133648 (= tp!113224 b_and!51587)))

(declare-fun mapIsEmpty!59424 () Bool)

(declare-fun mapRes!59424 () Bool)

(assert (=> mapIsEmpty!59424 mapRes!59424))

(declare-fun b!1562136 () Bool)

(declare-fun e!870532 () Bool)

(declare-fun e!870534 () Bool)

(assert (=> b!1562136 (= e!870532 (and e!870534 mapRes!59424))))

(declare-fun condMapEmpty!59424 () Bool)

(declare-datatypes ((V!59805 0))(
  ( (V!59806 (val!19433 Int)) )
))
(declare-datatypes ((ValueCell!18319 0))(
  ( (ValueCellFull!18319 (v!22182 V!59805)) (EmptyCell!18319) )
))
(declare-datatypes ((array!104067 0))(
  ( (array!104068 (arr!50221 (Array (_ BitVec 32) ValueCell!18319)) (size!50772 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104067)

(declare-fun mapDefault!59424 () ValueCell!18319)

