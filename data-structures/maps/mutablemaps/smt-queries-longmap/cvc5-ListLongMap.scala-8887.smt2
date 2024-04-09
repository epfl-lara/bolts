; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107954 () Bool)

(assert start!107954)

(declare-fun mapIsEmpty!51365 () Bool)

(declare-fun mapRes!51365 () Bool)

(assert (=> mapIsEmpty!51365 mapRes!51365))

(declare-fun b!1275142 () Bool)

(declare-fun e!727895 () Bool)

(declare-fun tp_is_empty!33235 () Bool)

(assert (=> b!1275142 (= e!727895 tp_is_empty!33235)))

(declare-fun b!1275143 () Bool)

(declare-fun e!727897 () Bool)

(declare-fun e!727899 () Bool)

(assert (=> b!1275143 (= e!727897 (and e!727899 mapRes!51365))))

(declare-fun condMapEmpty!51365 () Bool)

(declare-datatypes ((V!49417 0))(
  ( (V!49418 (val!16692 Int)) )
))
(declare-datatypes ((ValueCell!15719 0))(
  ( (ValueCellFull!15719 (v!19286 V!49417)) (EmptyCell!15719) )
))
(declare-datatypes ((array!83521 0))(
  ( (array!83522 (arr!40273 (Array (_ BitVec 32) ValueCell!15719)) (size!40824 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83521)

(declare-fun mapDefault!51365 () ValueCell!15719)

