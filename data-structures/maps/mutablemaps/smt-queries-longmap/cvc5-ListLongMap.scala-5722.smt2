; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74156 () Bool)

(assert start!74156)

(declare-fun res!592744 () Bool)

(declare-fun e!485507 () Bool)

(assert (=> start!74156 (=> (not res!592744) (not e!485507))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50464 0))(
  ( (array!50465 (arr!24258 (Array (_ BitVec 32) (_ BitVec 64))) (size!24699 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50464)

(assert (=> start!74156 (= res!592744 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24699 _keys!868))))))

(assert (=> start!74156 e!485507))

(assert (=> start!74156 true))

(declare-fun array_inv!19124 (array!50464) Bool)

(assert (=> start!74156 (array_inv!19124 _keys!868)))

(declare-datatypes ((V!27937 0))(
  ( (V!27938 (val!8631 Int)) )
))
(declare-datatypes ((ValueCell!8144 0))(
  ( (ValueCellFull!8144 (v!11052 V!27937)) (EmptyCell!8144) )
))
(declare-datatypes ((array!50466 0))(
  ( (array!50467 (arr!24259 (Array (_ BitVec 32) ValueCell!8144)) (size!24700 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50466)

(declare-fun e!485504 () Bool)

(declare-fun array_inv!19125 (array!50466) Bool)

(assert (=> start!74156 (and (array_inv!19125 _values!688) e!485504)))

(declare-fun mapNonEmpty!27353 () Bool)

(declare-fun mapRes!27353 () Bool)

(declare-fun tp!52553 () Bool)

(declare-fun e!485505 () Bool)

(assert (=> mapNonEmpty!27353 (= mapRes!27353 (and tp!52553 e!485505))))

(declare-fun mapKey!27353 () (_ BitVec 32))

(declare-fun mapRest!27353 () (Array (_ BitVec 32) ValueCell!8144))

(declare-fun mapValue!27353 () ValueCell!8144)

(assert (=> mapNonEmpty!27353 (= (arr!24259 _values!688) (store mapRest!27353 mapKey!27353 mapValue!27353))))

(declare-fun b!871897 () Bool)

(declare-fun res!592745 () Bool)

(assert (=> b!871897 (=> (not res!592745) (not e!485507))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50464 (_ BitVec 32)) Bool)

(assert (=> b!871897 (= res!592745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871898 () Bool)

(declare-fun e!485508 () Bool)

(assert (=> b!871898 (= e!485504 (and e!485508 mapRes!27353))))

(declare-fun condMapEmpty!27353 () Bool)

(declare-fun mapDefault!27353 () ValueCell!8144)

