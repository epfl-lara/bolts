; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82048 () Bool)

(assert start!82048)

(declare-fun b_free!18443 () Bool)

(declare-fun b_next!18443 () Bool)

(assert (=> start!82048 (= b_free!18443 (not b_next!18443))))

(declare-fun tp!64138 () Bool)

(declare-fun b_and!29947 () Bool)

(assert (=> start!82048 (= tp!64138 b_and!29947)))

(declare-fun b!956437 () Bool)

(declare-fun res!640503 () Bool)

(declare-fun e!538998 () Bool)

(assert (=> b!956437 (=> (not res!640503) (not e!538998))))

(declare-datatypes ((array!58235 0))(
  ( (array!58236 (arr!27993 (Array (_ BitVec 32) (_ BitVec 64))) (size!28473 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58235)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58235 (_ BitVec 32)) Bool)

(assert (=> b!956437 (= res!640503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956438 () Bool)

(declare-fun e!538999 () Bool)

(declare-fun tp_is_empty!21059 () Bool)

(assert (=> b!956438 (= e!538999 tp_is_empty!21059)))

(declare-fun b!956439 () Bool)

(declare-fun e!539000 () Bool)

(declare-fun e!539001 () Bool)

(declare-fun mapRes!33550 () Bool)

(assert (=> b!956439 (= e!539000 (and e!539001 mapRes!33550))))

(declare-fun condMapEmpty!33550 () Bool)

(declare-datatypes ((V!33061 0))(
  ( (V!33062 (val!10580 Int)) )
))
(declare-datatypes ((ValueCell!10048 0))(
  ( (ValueCellFull!10048 (v!13135 V!33061)) (EmptyCell!10048) )
))
(declare-datatypes ((array!58237 0))(
  ( (array!58238 (arr!27994 (Array (_ BitVec 32) ValueCell!10048)) (size!28474 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58237)

(declare-fun mapDefault!33550 () ValueCell!10048)

