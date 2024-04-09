; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131896 () Bool)

(assert start!131896)

(declare-fun b!1543604 () Bool)

(declare-fun e!859160 () Bool)

(declare-fun tp_is_empty!37853 () Bool)

(assert (=> b!1543604 (= e!859160 tp_is_empty!37853)))

(declare-fun b!1543605 () Bool)

(declare-fun e!859162 () Bool)

(declare-fun e!859159 () Bool)

(declare-fun mapRes!58483 () Bool)

(assert (=> b!1543605 (= e!859162 (and e!859159 mapRes!58483))))

(declare-fun condMapEmpty!58483 () Bool)

(declare-datatypes ((V!58913 0))(
  ( (V!58914 (val!19004 Int)) )
))
(declare-datatypes ((ValueCell!18016 0))(
  ( (ValueCellFull!18016 (v!21802 V!58913)) (EmptyCell!18016) )
))
(declare-datatypes ((array!102883 0))(
  ( (array!102884 (arr!49639 (Array (_ BitVec 32) ValueCell!18016)) (size!50190 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102883)

(declare-fun mapDefault!58483 () ValueCell!18016)

