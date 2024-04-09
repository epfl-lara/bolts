; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42022 () Bool)

(assert start!42022)

(declare-fun b_free!11587 () Bool)

(declare-fun b_next!11587 () Bool)

(assert (=> start!42022 (= b_free!11587 (not b_next!11587))))

(declare-fun tp!40777 () Bool)

(declare-fun b_and!20003 () Bool)

(assert (=> start!42022 (= tp!40777 b_and!20003)))

(declare-fun b!468903 () Bool)

(declare-fun e!274539 () Bool)

(declare-fun tp_is_empty!13015 () Bool)

(assert (=> b!468903 (= e!274539 tp_is_empty!13015)))

(declare-fun res!280303 () Bool)

(declare-fun e!274537 () Bool)

(assert (=> start!42022 (=> (not res!280303) (not e!274537))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42022 (= res!280303 (validMask!0 mask!1365))))

(assert (=> start!42022 e!274537))

(assert (=> start!42022 tp_is_empty!13015))

(assert (=> start!42022 tp!40777))

(assert (=> start!42022 true))

(declare-datatypes ((array!29763 0))(
  ( (array!29764 (arr!14304 (Array (_ BitVec 32) (_ BitVec 64))) (size!14656 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29763)

(declare-fun array_inv!10320 (array!29763) Bool)

(assert (=> start!42022 (array_inv!10320 _keys!1025)))

(declare-datatypes ((V!18459 0))(
  ( (V!18460 (val!6552 Int)) )
))
(declare-datatypes ((ValueCell!6164 0))(
  ( (ValueCellFull!6164 (v!8837 V!18459)) (EmptyCell!6164) )
))
(declare-datatypes ((array!29765 0))(
  ( (array!29766 (arr!14305 (Array (_ BitVec 32) ValueCell!6164)) (size!14657 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29765)

(declare-fun e!274540 () Bool)

(declare-fun array_inv!10321 (array!29765) Bool)

(assert (=> start!42022 (and (array_inv!10321 _values!833) e!274540)))

(declare-fun b!468904 () Bool)

(declare-fun mapRes!21217 () Bool)

(assert (=> b!468904 (= e!274540 (and e!274539 mapRes!21217))))

(declare-fun condMapEmpty!21217 () Bool)

(declare-fun mapDefault!21217 () ValueCell!6164)

