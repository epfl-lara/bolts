; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75020 () Bool)

(assert start!75020)

(declare-fun b_free!15481 () Bool)

(declare-fun b_next!15481 () Bool)

(assert (=> start!75020 (= b_free!15481 (not b_next!15481))))

(declare-fun tp!54150 () Bool)

(declare-fun b_and!25689 () Bool)

(assert (=> start!75020 (= tp!54150 b_and!25689)))

(declare-fun b!884489 () Bool)

(declare-fun res!600974 () Bool)

(declare-fun e!492261 () Bool)

(assert (=> b!884489 (=> (not res!600974) (not e!492261))))

(declare-datatypes ((array!51560 0))(
  ( (array!51561 (arr!24794 (Array (_ BitVec 32) (_ BitVec 64))) (size!25235 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51560)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51560 (_ BitVec 32)) Bool)

(assert (=> b!884489 (= res!600974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!884490 () Bool)

(declare-fun res!600969 () Bool)

(assert (=> b!884490 (=> (not res!600969) (not e!492261))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28681 0))(
  ( (V!28682 (val!8910 Int)) )
))
(declare-datatypes ((ValueCell!8423 0))(
  ( (ValueCellFull!8423 (v!11379 V!28681)) (EmptyCell!8423) )
))
(declare-datatypes ((array!51562 0))(
  ( (array!51563 (arr!24795 (Array (_ BitVec 32) ValueCell!8423)) (size!25236 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51562)

(assert (=> b!884490 (= res!600969 (and (= (size!25236 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25235 _keys!868) (size!25236 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!884491 () Bool)

(declare-fun e!492260 () Bool)

(declare-fun tp_is_empty!17725 () Bool)

(assert (=> b!884491 (= e!492260 tp_is_empty!17725)))

(declare-fun b!884492 () Bool)

(declare-fun res!600971 () Bool)

(assert (=> b!884492 (=> (not res!600971) (not e!492261))))

(declare-datatypes ((List!17708 0))(
  ( (Nil!17705) (Cons!17704 (h!18835 (_ BitVec 64)) (t!24991 List!17708)) )
))
(declare-fun arrayNoDuplicates!0 (array!51560 (_ BitVec 32) List!17708) Bool)

(assert (=> b!884492 (= res!600971 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17705))))

(declare-fun mapIsEmpty!28227 () Bool)

(declare-fun mapRes!28227 () Bool)

(assert (=> mapIsEmpty!28227 mapRes!28227))

(declare-fun b!884493 () Bool)

(declare-fun res!600972 () Bool)

(assert (=> b!884493 (=> (not res!600972) (not e!492261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884493 (= res!600972 (validMask!0 mask!1196))))

(declare-fun b!884494 () Bool)

(declare-fun e!492263 () Bool)

(assert (=> b!884494 (= e!492263 tp_is_empty!17725)))

(declare-fun b!884495 () Bool)

(declare-fun e!492262 () Bool)

(assert (=> b!884495 (= e!492262 (and e!492260 mapRes!28227))))

(declare-fun condMapEmpty!28227 () Bool)

(declare-fun mapDefault!28227 () ValueCell!8423)

