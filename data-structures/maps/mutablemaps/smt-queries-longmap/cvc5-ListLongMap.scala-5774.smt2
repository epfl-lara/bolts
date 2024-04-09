; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74574 () Bool)

(assert start!74574)

(declare-fun b_free!15235 () Bool)

(declare-fun b_next!15235 () Bool)

(assert (=> start!74574 (= b_free!15235 (not b_next!15235))))

(declare-fun tp!53387 () Bool)

(declare-fun b_and!25129 () Bool)

(assert (=> start!74574 (= tp!53387 b_and!25129)))

(declare-fun b!878063 () Bool)

(declare-fun res!596636 () Bool)

(declare-fun e!488748 () Bool)

(assert (=> b!878063 (=> (not res!596636) (not e!488748))))

(declare-datatypes ((array!51066 0))(
  ( (array!51067 (arr!24555 (Array (_ BitVec 32) (_ BitVec 64))) (size!24996 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51066)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51066 (_ BitVec 32)) Bool)

(assert (=> b!878063 (= res!596636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878064 () Bool)

(declare-fun res!596637 () Bool)

(assert (=> b!878064 (=> (not res!596637) (not e!488748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878064 (= res!596637 (validMask!0 mask!1196))))

(declare-fun b!878065 () Bool)

(declare-fun res!596630 () Bool)

(assert (=> b!878065 (=> (not res!596630) (not e!488748))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!878065 (= res!596630 (and (= (select (arr!24555 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878067 () Bool)

(declare-fun e!488744 () Bool)

(declare-fun e!488745 () Bool)

(declare-fun mapRes!27834 () Bool)

(assert (=> b!878067 (= e!488744 (and e!488745 mapRes!27834))))

(declare-fun condMapEmpty!27834 () Bool)

(declare-datatypes ((V!28353 0))(
  ( (V!28354 (val!8787 Int)) )
))
(declare-datatypes ((ValueCell!8300 0))(
  ( (ValueCellFull!8300 (v!11223 V!28353)) (EmptyCell!8300) )
))
(declare-datatypes ((array!51068 0))(
  ( (array!51069 (arr!24556 (Array (_ BitVec 32) ValueCell!8300)) (size!24997 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51068)

(declare-fun mapDefault!27834 () ValueCell!8300)

