; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108718 () Bool)

(assert start!108718)

(declare-fun b_free!28195 () Bool)

(declare-fun b_next!28195 () Bool)

(assert (=> start!108718 (= b_free!28195 (not b_next!28195))))

(declare-fun tp!99702 () Bool)

(declare-fun b_and!46271 () Bool)

(assert (=> start!108718 (= tp!99702 b_and!46271)))

(declare-fun b!1282850 () Bool)

(declare-fun e!732998 () Bool)

(declare-fun e!732999 () Bool)

(declare-fun mapRes!52310 () Bool)

(assert (=> b!1282850 (= e!732998 (and e!732999 mapRes!52310))))

(declare-fun condMapEmpty!52310 () Bool)

(declare-datatypes ((V!50217 0))(
  ( (V!50218 (val!16992 Int)) )
))
(declare-datatypes ((ValueCell!16019 0))(
  ( (ValueCellFull!16019 (v!19592 V!50217)) (EmptyCell!16019) )
))
(declare-datatypes ((array!84691 0))(
  ( (array!84692 (arr!40843 (Array (_ BitVec 32) ValueCell!16019)) (size!41394 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84691)

(declare-fun mapDefault!52310 () ValueCell!16019)

