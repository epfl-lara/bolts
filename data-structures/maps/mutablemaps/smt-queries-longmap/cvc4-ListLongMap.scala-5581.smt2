; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73302 () Bool)

(assert start!73302)

(declare-fun b_free!14189 () Bool)

(declare-fun b_next!14189 () Bool)

(assert (=> start!73302 (= b_free!14189 (not b_next!14189))))

(declare-fun tp!50072 () Bool)

(declare-fun b_and!23555 () Bool)

(assert (=> start!73302 (= tp!50072 b_and!23555)))

(declare-fun b!854446 () Bool)

(declare-fun e!476484 () Bool)

(declare-fun tp_is_empty!16325 () Bool)

(assert (=> b!854446 (= e!476484 tp_is_empty!16325)))

(declare-fun res!580378 () Bool)

(declare-fun e!476479 () Bool)

(assert (=> start!73302 (=> (not res!580378) (not e!476479))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48830 0))(
  ( (array!48831 (arr!23442 (Array (_ BitVec 32) (_ BitVec 64))) (size!23883 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48830)

(assert (=> start!73302 (= res!580378 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23883 _keys!868))))))

(assert (=> start!73302 e!476479))

(assert (=> start!73302 tp_is_empty!16325))

(assert (=> start!73302 true))

(assert (=> start!73302 tp!50072))

(declare-fun array_inv!18560 (array!48830) Bool)

(assert (=> start!73302 (array_inv!18560 _keys!868)))

(declare-datatypes ((V!26813 0))(
  ( (V!26814 (val!8210 Int)) )
))
(declare-datatypes ((ValueCell!7723 0))(
  ( (ValueCellFull!7723 (v!10631 V!26813)) (EmptyCell!7723) )
))
(declare-datatypes ((array!48832 0))(
  ( (array!48833 (arr!23443 (Array (_ BitVec 32) ValueCell!7723)) (size!23884 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48832)

(declare-fun e!476481 () Bool)

(declare-fun array_inv!18561 (array!48832) Bool)

(assert (=> start!73302 (and (array_inv!18561 _values!688) e!476481)))

(declare-fun b!854447 () Bool)

(declare-fun res!580376 () Bool)

(assert (=> b!854447 (=> (not res!580376) (not e!476479))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854447 (= res!580376 (validMask!0 mask!1196))))

(declare-fun b!854448 () Bool)

(declare-fun e!476477 () Bool)

(declare-fun mapRes!26087 () Bool)

(assert (=> b!854448 (= e!476481 (and e!476477 mapRes!26087))))

(declare-fun condMapEmpty!26087 () Bool)

(declare-fun mapDefault!26087 () ValueCell!7723)

