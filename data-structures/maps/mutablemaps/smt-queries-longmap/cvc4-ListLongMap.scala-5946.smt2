; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77524 () Bool)

(assert start!77524)

(declare-fun mapNonEmpty!29473 () Bool)

(declare-fun mapRes!29473 () Bool)

(declare-fun tp!56533 () Bool)

(declare-fun e!505853 () Bool)

(assert (=> mapNonEmpty!29473 (= mapRes!29473 (and tp!56533 e!505853))))

(declare-datatypes ((V!29643 0))(
  ( (V!29644 (val!9305 Int)) )
))
(declare-datatypes ((ValueCell!8773 0))(
  ( (ValueCellFull!8773 (v!11810 V!29643)) (EmptyCell!8773) )
))
(declare-datatypes ((array!53064 0))(
  ( (array!53065 (arr!25488 (Array (_ BitVec 32) ValueCell!8773)) (size!25948 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53064)

(declare-fun mapRest!29473 () (Array (_ BitVec 32) ValueCell!8773))

(declare-fun mapKey!29473 () (_ BitVec 32))

(declare-fun mapValue!29473 () ValueCell!8773)

(assert (=> mapNonEmpty!29473 (= (arr!25488 _values!1152) (store mapRest!29473 mapKey!29473 mapValue!29473))))

(declare-fun b!902904 () Bool)

(declare-fun res!609339 () Bool)

(declare-fun e!505852 () Bool)

(assert (=> b!902904 (=> (not res!609339) (not e!505852))))

(declare-datatypes ((array!53066 0))(
  ( (array!53067 (arr!25489 (Array (_ BitVec 32) (_ BitVec 64))) (size!25949 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53066)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53066 (_ BitVec 32)) Bool)

(assert (=> b!902904 (= res!609339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902905 () Bool)

(declare-fun e!505854 () Bool)

(declare-fun tp_is_empty!18509 () Bool)

(assert (=> b!902905 (= e!505854 tp_is_empty!18509)))

(declare-fun b!902906 () Bool)

(assert (=> b!902906 (= e!505852 (bvsgt #b00000000000000000000000000000000 (size!25949 _keys!1386)))))

(declare-fun b!902907 () Bool)

(declare-fun res!609341 () Bool)

(assert (=> b!902907 (=> (not res!609341) (not e!505852))))

(declare-datatypes ((List!17983 0))(
  ( (Nil!17980) (Cons!17979 (h!19125 (_ BitVec 64)) (t!25374 List!17983)) )
))
(declare-fun arrayNoDuplicates!0 (array!53066 (_ BitVec 32) List!17983) Bool)

(assert (=> b!902907 (= res!609341 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17980))))

(declare-fun res!609342 () Bool)

(assert (=> start!77524 (=> (not res!609342) (not e!505852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77524 (= res!609342 (validMask!0 mask!1756))))

(assert (=> start!77524 e!505852))

(assert (=> start!77524 true))

(declare-fun e!505856 () Bool)

(declare-fun array_inv!19956 (array!53064) Bool)

(assert (=> start!77524 (and (array_inv!19956 _values!1152) e!505856)))

(declare-fun array_inv!19957 (array!53066) Bool)

(assert (=> start!77524 (array_inv!19957 _keys!1386)))

(declare-fun b!902908 () Bool)

(assert (=> b!902908 (= e!505853 tp_is_empty!18509)))

(declare-fun b!902909 () Bool)

(assert (=> b!902909 (= e!505856 (and e!505854 mapRes!29473))))

(declare-fun condMapEmpty!29473 () Bool)

(declare-fun mapDefault!29473 () ValueCell!8773)

