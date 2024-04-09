; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83548 () Bool)

(assert start!83548)

(declare-fun b_free!19507 () Bool)

(declare-fun b_next!19507 () Bool)

(assert (=> start!83548 (= b_free!19507 (not b_next!19507))))

(declare-fun tp!67810 () Bool)

(declare-fun b_and!31127 () Bool)

(assert (=> start!83548 (= tp!67810 b_and!31127)))

(declare-fun b!975618 () Bool)

(declare-fun res!653226 () Bool)

(declare-fun e!549869 () Bool)

(assert (=> b!975618 (=> (not res!653226) (not e!549869))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34865 0))(
  ( (V!34866 (val!11256 Int)) )
))
(declare-datatypes ((ValueCell!10724 0))(
  ( (ValueCellFull!10724 (v!13815 V!34865)) (EmptyCell!10724) )
))
(declare-datatypes ((array!60837 0))(
  ( (array!60838 (arr!29278 (Array (_ BitVec 32) ValueCell!10724)) (size!29758 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60837)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60839 0))(
  ( (array!60840 (arr!29279 (Array (_ BitVec 32) (_ BitVec 64))) (size!29759 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60839)

(assert (=> b!975618 (= res!653226 (and (= (size!29758 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29759 _keys!1717) (size!29758 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!653232 () Bool)

(assert (=> start!83548 (=> (not res!653232) (not e!549869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83548 (= res!653232 (validMask!0 mask!2147))))

(assert (=> start!83548 e!549869))

(assert (=> start!83548 true))

(declare-fun e!549866 () Bool)

(declare-fun array_inv!22539 (array!60837) Bool)

(assert (=> start!83548 (and (array_inv!22539 _values!1425) e!549866)))

(declare-fun tp_is_empty!22411 () Bool)

(assert (=> start!83548 tp_is_empty!22411))

(assert (=> start!83548 tp!67810))

(declare-fun array_inv!22540 (array!60839) Bool)

(assert (=> start!83548 (array_inv!22540 _keys!1717)))

(declare-fun mapIsEmpty!35626 () Bool)

(declare-fun mapRes!35626 () Bool)

(assert (=> mapIsEmpty!35626 mapRes!35626))

(declare-fun b!975619 () Bool)

(declare-fun e!549865 () Bool)

(assert (=> b!975619 (= e!549866 (and e!549865 mapRes!35626))))

(declare-fun condMapEmpty!35626 () Bool)

(declare-fun mapDefault!35626 () ValueCell!10724)

