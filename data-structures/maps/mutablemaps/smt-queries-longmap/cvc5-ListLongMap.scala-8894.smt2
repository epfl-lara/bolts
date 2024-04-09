; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108040 () Bool)

(assert start!108040)

(declare-fun b!1275632 () Bool)

(declare-fun e!728309 () Bool)

(declare-fun e!728305 () Bool)

(declare-fun mapRes!51443 () Bool)

(assert (=> b!1275632 (= e!728309 (and e!728305 mapRes!51443))))

(declare-fun condMapEmpty!51443 () Bool)

(declare-datatypes ((V!49473 0))(
  ( (V!49474 (val!16713 Int)) )
))
(declare-datatypes ((ValueCell!15740 0))(
  ( (ValueCellFull!15740 (v!19308 V!49473)) (EmptyCell!15740) )
))
(declare-datatypes ((array!83609 0))(
  ( (array!83610 (arr!40312 (Array (_ BitVec 32) ValueCell!15740)) (size!40863 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83609)

(declare-fun mapDefault!51443 () ValueCell!15740)

