; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109342 () Bool)

(assert start!109342)

(declare-fun b_free!28795 () Bool)

(declare-fun b_next!28795 () Bool)

(assert (=> start!109342 (= b_free!28795 (not b_next!28795))))

(declare-fun tp!101505 () Bool)

(declare-fun b_and!46895 () Bool)

(assert (=> start!109342 (= tp!101505 b_and!46895)))

(declare-fun b!1293414 () Bool)

(declare-fun e!738189 () Bool)

(declare-fun tp_is_empty!34435 () Bool)

(assert (=> b!1293414 (= e!738189 tp_is_empty!34435)))

(declare-fun b!1293415 () Bool)

(declare-fun e!738188 () Bool)

(declare-fun e!738185 () Bool)

(declare-fun mapRes!53213 () Bool)

(assert (=> b!1293415 (= e!738188 (and e!738185 mapRes!53213))))

(declare-fun condMapEmpty!53213 () Bool)

(declare-datatypes ((V!51017 0))(
  ( (V!51018 (val!17292 Int)) )
))
(declare-datatypes ((ValueCell!16319 0))(
  ( (ValueCellFull!16319 (v!19893 V!51017)) (EmptyCell!16319) )
))
(declare-datatypes ((array!85859 0))(
  ( (array!85860 (arr!41426 (Array (_ BitVec 32) ValueCell!16319)) (size!41977 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85859)

(declare-fun mapDefault!53213 () ValueCell!16319)

