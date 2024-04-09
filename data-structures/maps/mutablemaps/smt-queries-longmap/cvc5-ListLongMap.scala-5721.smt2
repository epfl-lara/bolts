; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74150 () Bool)

(assert start!74150)

(declare-fun b!871834 () Bool)

(declare-fun res!592707 () Bool)

(declare-fun e!485462 () Bool)

(assert (=> b!871834 (=> (not res!592707) (not e!485462))))

(declare-datatypes ((array!50452 0))(
  ( (array!50453 (arr!24252 (Array (_ BitVec 32) (_ BitVec 64))) (size!24693 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50452)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50452 (_ BitVec 32)) Bool)

(assert (=> b!871834 (= res!592707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871835 () Bool)

(declare-fun res!592709 () Bool)

(assert (=> b!871835 (=> (not res!592709) (not e!485462))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27929 0))(
  ( (V!27930 (val!8628 Int)) )
))
(declare-datatypes ((ValueCell!8141 0))(
  ( (ValueCellFull!8141 (v!11049 V!27929)) (EmptyCell!8141) )
))
(declare-datatypes ((array!50454 0))(
  ( (array!50455 (arr!24253 (Array (_ BitVec 32) ValueCell!8141)) (size!24694 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50454)

(assert (=> b!871835 (= res!592709 (and (= (size!24694 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24693 _keys!868) (size!24694 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871836 () Bool)

(declare-fun e!485460 () Bool)

(declare-fun e!485463 () Bool)

(declare-fun mapRes!27344 () Bool)

(assert (=> b!871836 (= e!485460 (and e!485463 mapRes!27344))))

(declare-fun condMapEmpty!27344 () Bool)

(declare-fun mapDefault!27344 () ValueCell!8141)

