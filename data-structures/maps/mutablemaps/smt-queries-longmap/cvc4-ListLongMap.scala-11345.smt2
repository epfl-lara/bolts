; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132010 () Bool)

(assert start!132010)

(declare-fun b_free!31691 () Bool)

(declare-fun b_next!31691 () Bool)

(assert (=> start!132010 (= b_free!31691 (not b_next!31691))))

(declare-fun tp!111325 () Bool)

(declare-fun b_and!51111 () Bool)

(assert (=> start!132010 (= tp!111325 b_and!51111)))

(declare-fun b!1545898 () Bool)

(declare-fun e!860508 () Bool)

(declare-fun e!860510 () Bool)

(declare-fun mapRes!58654 () Bool)

(assert (=> b!1545898 (= e!860508 (and e!860510 mapRes!58654))))

(declare-fun condMapEmpty!58654 () Bool)

(declare-datatypes ((V!59065 0))(
  ( (V!59066 (val!19061 Int)) )
))
(declare-datatypes ((ValueCell!18073 0))(
  ( (ValueCellFull!18073 (v!21859 V!59065)) (EmptyCell!18073) )
))
(declare-datatypes ((array!103105 0))(
  ( (array!103106 (arr!49750 (Array (_ BitVec 32) ValueCell!18073)) (size!50301 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103105)

(declare-fun mapDefault!58654 () ValueCell!18073)

