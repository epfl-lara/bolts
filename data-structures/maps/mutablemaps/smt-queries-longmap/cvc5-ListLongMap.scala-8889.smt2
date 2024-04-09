; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107972 () Bool)

(assert start!107972)

(declare-fun b!1275226 () Bool)

(declare-fun e!727992 () Bool)

(declare-datatypes ((array!83543 0))(
  ( (array!83544 (arr!40283 (Array (_ BitVec 32) (_ BitVec 64))) (size!40834 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83543)

(assert (=> b!1275226 (= e!727992 (bvsgt #b00000000000000000000000000000000 (size!40834 _keys!1427)))))

(declare-fun b!1275227 () Bool)

(declare-fun e!727991 () Bool)

(declare-fun e!727993 () Bool)

(declare-fun mapRes!51386 () Bool)

(assert (=> b!1275227 (= e!727991 (and e!727993 mapRes!51386))))

(declare-fun condMapEmpty!51386 () Bool)

(declare-datatypes ((V!49433 0))(
  ( (V!49434 (val!16698 Int)) )
))
(declare-datatypes ((ValueCell!15725 0))(
  ( (ValueCellFull!15725 (v!19292 V!49433)) (EmptyCell!15725) )
))
(declare-datatypes ((array!83545 0))(
  ( (array!83546 (arr!40284 (Array (_ BitVec 32) ValueCell!15725)) (size!40835 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83545)

(declare-fun mapDefault!51386 () ValueCell!15725)

