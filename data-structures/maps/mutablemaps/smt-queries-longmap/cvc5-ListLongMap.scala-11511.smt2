; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133982 () Bool)

(assert start!133982)

(declare-fun b_free!32173 () Bool)

(declare-fun b_next!32173 () Bool)

(assert (=> start!133982 (= b_free!32173 (not b_next!32173))))

(declare-fun tp!113821 () Bool)

(declare-fun b_and!51797 () Bool)

(assert (=> start!133982 (= tp!113821 b_and!51797)))

(declare-fun b!1565755 () Bool)

(declare-fun e!872753 () Bool)

(declare-fun e!872756 () Bool)

(declare-fun mapRes!59812 () Bool)

(assert (=> b!1565755 (= e!872753 (and e!872756 mapRes!59812))))

(declare-fun condMapEmpty!59812 () Bool)

(declare-datatypes ((V!60137 0))(
  ( (V!60138 (val!19557 Int)) )
))
(declare-datatypes ((ValueCell!18443 0))(
  ( (ValueCellFull!18443 (v!22310 V!60137)) (EmptyCell!18443) )
))
(declare-datatypes ((array!104555 0))(
  ( (array!104556 (arr!50460 (Array (_ BitVec 32) ValueCell!18443)) (size!51011 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104555)

(declare-fun mapDefault!59812 () ValueCell!18443)

