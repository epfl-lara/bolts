; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74792 () Bool)

(assert start!74792)

(declare-fun b_free!15367 () Bool)

(declare-fun b_next!15367 () Bool)

(assert (=> start!74792 (= b_free!15367 (not b_next!15367))))

(declare-fun tp!53796 () Bool)

(declare-fun b_and!25403 () Bool)

(assert (=> start!74792 (= tp!53796 b_and!25403)))

(declare-fun b!881221 () Bool)

(declare-fun e!490446 () Bool)

(declare-fun tp_is_empty!17611 () Bool)

(assert (=> b!881221 (= e!490446 tp_is_empty!17611)))

(declare-fun mapIsEmpty!28044 () Bool)

(declare-fun mapRes!28044 () Bool)

(assert (=> mapIsEmpty!28044 mapRes!28044))

(declare-fun b!881222 () Bool)

(declare-fun res!598798 () Bool)

(declare-fun e!490443 () Bool)

(assert (=> b!881222 (=> (not res!598798) (not e!490443))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881222 (= res!598798 (validKeyInArray!0 k!854))))

(declare-fun b!881223 () Bool)

(declare-fun e!490442 () Bool)

(declare-fun e!490445 () Bool)

(assert (=> b!881223 (= e!490442 (and e!490445 mapRes!28044))))

(declare-fun condMapEmpty!28044 () Bool)

(declare-datatypes ((V!28529 0))(
  ( (V!28530 (val!8853 Int)) )
))
(declare-datatypes ((ValueCell!8366 0))(
  ( (ValueCellFull!8366 (v!11305 V!28529)) (EmptyCell!8366) )
))
(declare-datatypes ((array!51332 0))(
  ( (array!51333 (arr!24684 (Array (_ BitVec 32) ValueCell!8366)) (size!25125 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51332)

(declare-fun mapDefault!28044 () ValueCell!8366)

