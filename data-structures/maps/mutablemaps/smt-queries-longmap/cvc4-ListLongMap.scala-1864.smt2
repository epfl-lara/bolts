; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33630 () Bool)

(assert start!33630)

(declare-fun b_free!6857 () Bool)

(declare-fun b_next!6857 () Bool)

(assert (=> start!33630 (= b_free!6857 (not b_next!6857))))

(declare-fun tp!24074 () Bool)

(declare-fun b_and!14055 () Bool)

(assert (=> start!33630 (= tp!24074 b_and!14055)))

(declare-fun mapIsEmpty!11610 () Bool)

(declare-fun mapRes!11610 () Bool)

(assert (=> mapIsEmpty!11610 mapRes!11610))

(declare-fun res!183774 () Bool)

(declare-fun e!204763 () Bool)

(assert (=> start!33630 (=> (not res!183774) (not e!204763))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33630 (= res!183774 (validMask!0 mask!2385))))

(assert (=> start!33630 e!204763))

(assert (=> start!33630 true))

(declare-fun tp_is_empty!6809 () Bool)

(assert (=> start!33630 tp_is_empty!6809))

(assert (=> start!33630 tp!24074))

(declare-datatypes ((V!10055 0))(
  ( (V!10056 (val!3449 Int)) )
))
(declare-datatypes ((ValueCell!3061 0))(
  ( (ValueCellFull!3061 (v!5607 V!10055)) (EmptyCell!3061) )
))
(declare-datatypes ((array!17213 0))(
  ( (array!17214 (arr!8134 (Array (_ BitVec 32) ValueCell!3061)) (size!8486 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17213)

(declare-fun e!204764 () Bool)

(declare-fun array_inv!6046 (array!17213) Bool)

(assert (=> start!33630 (and (array_inv!6046 _values!1525) e!204764)))

(declare-datatypes ((array!17215 0))(
  ( (array!17216 (arr!8135 (Array (_ BitVec 32) (_ BitVec 64))) (size!8487 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17215)

(declare-fun array_inv!6047 (array!17215) Bool)

(assert (=> start!33630 (array_inv!6047 _keys!1895)))

(declare-fun b!333462 () Bool)

(declare-fun e!204761 () Bool)

(assert (=> b!333462 (= e!204764 (and e!204761 mapRes!11610))))

(declare-fun condMapEmpty!11610 () Bool)

(declare-fun mapDefault!11610 () ValueCell!3061)

