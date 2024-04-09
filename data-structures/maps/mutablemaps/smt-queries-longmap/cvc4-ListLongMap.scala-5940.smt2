; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77488 () Bool)

(assert start!77488)

(declare-fun mapNonEmpty!29419 () Bool)

(declare-fun mapRes!29419 () Bool)

(declare-fun tp!56479 () Bool)

(declare-fun e!505583 () Bool)

(assert (=> mapNonEmpty!29419 (= mapRes!29419 (and tp!56479 e!505583))))

(declare-datatypes ((V!29595 0))(
  ( (V!29596 (val!9287 Int)) )
))
(declare-datatypes ((ValueCell!8755 0))(
  ( (ValueCellFull!8755 (v!11792 V!29595)) (EmptyCell!8755) )
))
(declare-datatypes ((array!52998 0))(
  ( (array!52999 (arr!25455 (Array (_ BitVec 32) ValueCell!8755)) (size!25915 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52998)

(declare-fun mapValue!29419 () ValueCell!8755)

(declare-fun mapKey!29419 () (_ BitVec 32))

(declare-fun mapRest!29419 () (Array (_ BitVec 32) ValueCell!8755))

(assert (=> mapNonEmpty!29419 (= (arr!25455 _values!1152) (store mapRest!29419 mapKey!29419 mapValue!29419))))

(declare-fun b!902572 () Bool)

(declare-fun res!609169 () Bool)

(declare-fun e!505582 () Bool)

(assert (=> b!902572 (=> (not res!609169) (not e!505582))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53000 0))(
  ( (array!53001 (arr!25456 (Array (_ BitVec 32) (_ BitVec 64))) (size!25916 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53000)

(assert (=> b!902572 (= res!609169 (and (= (size!25915 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25916 _keys!1386) (size!25915 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!29419 () Bool)

(assert (=> mapIsEmpty!29419 mapRes!29419))

(declare-fun b!902573 () Bool)

(declare-fun e!505584 () Bool)

(declare-fun e!505585 () Bool)

(assert (=> b!902573 (= e!505584 (and e!505585 mapRes!29419))))

(declare-fun condMapEmpty!29419 () Bool)

(declare-fun mapDefault!29419 () ValueCell!8755)

