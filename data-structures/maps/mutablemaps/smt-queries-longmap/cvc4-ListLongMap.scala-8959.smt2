; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108520 () Bool)

(assert start!108520)

(declare-fun b_free!28031 () Bool)

(declare-fun b_next!28031 () Bool)

(assert (=> start!108520 (= b_free!28031 (not b_next!28031))))

(declare-fun tp!99204 () Bool)

(declare-fun b_and!46101 () Bool)

(assert (=> start!108520 (= tp!99204 b_and!46101)))

(declare-fun b!1280287 () Bool)

(declare-fun e!731572 () Bool)

(declare-fun tp_is_empty!33671 () Bool)

(assert (=> b!1280287 (= e!731572 tp_is_empty!33671)))

(declare-fun res!850524 () Bool)

(declare-fun e!731574 () Bool)

(assert (=> start!108520 (=> (not res!850524) (not e!731574))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108520 (= res!850524 (validMask!0 mask!2175))))

(assert (=> start!108520 e!731574))

(assert (=> start!108520 tp_is_empty!33671))

(assert (=> start!108520 true))

(declare-datatypes ((V!49997 0))(
  ( (V!49998 (val!16910 Int)) )
))
(declare-datatypes ((ValueCell!15937 0))(
  ( (ValueCellFull!15937 (v!19508 V!49997)) (EmptyCell!15937) )
))
(declare-datatypes ((array!84373 0))(
  ( (array!84374 (arr!40686 (Array (_ BitVec 32) ValueCell!15937)) (size!41237 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84373)

(declare-fun e!731571 () Bool)

(declare-fun array_inv!30869 (array!84373) Bool)

(assert (=> start!108520 (and (array_inv!30869 _values!1445) e!731571)))

(declare-datatypes ((array!84375 0))(
  ( (array!84376 (arr!40687 (Array (_ BitVec 32) (_ BitVec 64))) (size!41238 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84375)

(declare-fun array_inv!30870 (array!84375) Bool)

(assert (=> start!108520 (array_inv!30870 _keys!1741)))

(assert (=> start!108520 tp!99204))

(declare-fun mapIsEmpty!52058 () Bool)

(declare-fun mapRes!52058 () Bool)

(assert (=> mapIsEmpty!52058 mapRes!52058))

(declare-fun b!1280288 () Bool)

(declare-fun e!731575 () Bool)

(assert (=> b!1280288 (= e!731571 (and e!731575 mapRes!52058))))

(declare-fun condMapEmpty!52058 () Bool)

(declare-fun mapDefault!52058 () ValueCell!15937)

