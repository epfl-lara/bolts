; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42008 () Bool)

(assert start!42008)

(declare-fun b_free!11573 () Bool)

(declare-fun b_next!11573 () Bool)

(assert (=> start!42008 (= b_free!11573 (not b_next!11573))))

(declare-fun tp!40734 () Bool)

(declare-fun b_and!19989 () Bool)

(assert (=> start!42008 (= tp!40734 b_and!19989)))

(declare-fun res!280198 () Bool)

(declare-fun e!274412 () Bool)

(assert (=> start!42008 (=> (not res!280198) (not e!274412))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42008 (= res!280198 (validMask!0 mask!1365))))

(assert (=> start!42008 e!274412))

(declare-fun tp_is_empty!13001 () Bool)

(assert (=> start!42008 tp_is_empty!13001))

(assert (=> start!42008 tp!40734))

(assert (=> start!42008 true))

(declare-datatypes ((array!29735 0))(
  ( (array!29736 (arr!14290 (Array (_ BitVec 32) (_ BitVec 64))) (size!14642 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29735)

(declare-fun array_inv!10308 (array!29735) Bool)

(assert (=> start!42008 (array_inv!10308 _keys!1025)))

(declare-datatypes ((V!18439 0))(
  ( (V!18440 (val!6545 Int)) )
))
(declare-datatypes ((ValueCell!6157 0))(
  ( (ValueCellFull!6157 (v!8830 V!18439)) (EmptyCell!6157) )
))
(declare-datatypes ((array!29737 0))(
  ( (array!29738 (arr!14291 (Array (_ BitVec 32) ValueCell!6157)) (size!14643 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29737)

(declare-fun e!274413 () Bool)

(declare-fun array_inv!10309 (array!29737) Bool)

(assert (=> start!42008 (and (array_inv!10309 _values!833) e!274413)))

(declare-fun b!468735 () Bool)

(declare-fun e!274414 () Bool)

(declare-fun mapRes!21196 () Bool)

(assert (=> b!468735 (= e!274413 (and e!274414 mapRes!21196))))

(declare-fun condMapEmpty!21196 () Bool)

(declare-fun mapDefault!21196 () ValueCell!6157)

