; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43546 () Bool)

(assert start!43546)

(declare-fun b_free!12317 () Bool)

(declare-fun b_next!12317 () Bool)

(assert (=> start!43546 (= b_free!12317 (not b_next!12317))))

(declare-fun tp!43233 () Bool)

(declare-fun b_and!21095 () Bool)

(assert (=> start!43546 (= tp!43233 b_and!21095)))

(declare-fun b!482189 () Bool)

(declare-fun e!283774 () Bool)

(declare-fun e!283773 () Bool)

(declare-fun mapRes!22453 () Bool)

(assert (=> b!482189 (= e!283774 (and e!283773 mapRes!22453))))

(declare-fun condMapEmpty!22453 () Bool)

(declare-datatypes ((V!19509 0))(
  ( (V!19510 (val!6962 Int)) )
))
(declare-datatypes ((ValueCell!6553 0))(
  ( (ValueCellFull!6553 (v!9251 V!19509)) (EmptyCell!6553) )
))
(declare-datatypes ((array!31287 0))(
  ( (array!31288 (arr!15043 (Array (_ BitVec 32) ValueCell!6553)) (size!15401 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31287)

(declare-fun mapDefault!22453 () ValueCell!6553)

