; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73154 () Bool)

(assert start!73154)

(declare-fun b_free!14041 () Bool)

(declare-fun b_next!14041 () Bool)

(assert (=> start!73154 (= b_free!14041 (not b_next!14041))))

(declare-fun tp!49628 () Bool)

(declare-fun b_and!23259 () Bool)

(assert (=> start!73154 (= tp!49628 b_and!23259)))

(declare-fun b!850968 () Bool)

(declare-fun res!578159 () Bool)

(declare-fun e!474703 () Bool)

(assert (=> b!850968 (=> (not res!578159) (not e!474703))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850968 (= res!578159 (validMask!0 mask!1196))))

(declare-fun b!850969 () Bool)

(declare-datatypes ((V!26617 0))(
  ( (V!26618 (val!8136 Int)) )
))
(declare-datatypes ((tuple2!10682 0))(
  ( (tuple2!10683 (_1!5351 (_ BitVec 64)) (_2!5351 V!26617)) )
))
(declare-datatypes ((List!16573 0))(
  ( (Nil!16570) (Cons!16569 (h!17700 tuple2!10682) (t!23068 List!16573)) )
))
(declare-datatypes ((ListLongMap!9465 0))(
  ( (ListLongMap!9466 (toList!4748 List!16573)) )
))
(declare-fun call!37979 () ListLongMap!9465)

(declare-fun v!557 () V!26617)

(declare-fun e!474708 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!37978 () ListLongMap!9465)

(declare-fun +!2091 (ListLongMap!9465 tuple2!10682) ListLongMap!9465)

(assert (=> b!850969 (= e!474708 (= call!37978 (+!2091 call!37979 (tuple2!10683 k!854 v!557))))))

(declare-fun b!850970 () Bool)

(declare-fun res!578151 () Bool)

(assert (=> b!850970 (=> (not res!578151) (not e!474703))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48542 0))(
  ( (array!48543 (arr!23298 (Array (_ BitVec 32) (_ BitVec 64))) (size!23739 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48542)

(declare-datatypes ((ValueCell!7649 0))(
  ( (ValueCellFull!7649 (v!10557 V!26617)) (EmptyCell!7649) )
))
(declare-datatypes ((array!48544 0))(
  ( (array!48545 (arr!23299 (Array (_ BitVec 32) ValueCell!7649)) (size!23740 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48544)

(assert (=> b!850970 (= res!578151 (and (= (size!23740 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23739 _keys!868) (size!23740 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850971 () Bool)

(declare-fun e!474704 () Bool)

(declare-fun e!474702 () Bool)

(declare-fun mapRes!25865 () Bool)

(assert (=> b!850971 (= e!474704 (and e!474702 mapRes!25865))))

(declare-fun condMapEmpty!25865 () Bool)

(declare-fun mapDefault!25865 () ValueCell!7649)

