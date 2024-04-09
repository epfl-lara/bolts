; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77496 () Bool)

(assert start!77496)

(declare-fun mapNonEmpty!29431 () Bool)

(declare-fun mapRes!29431 () Bool)

(declare-fun tp!56491 () Bool)

(declare-fun e!505645 () Bool)

(assert (=> mapNonEmpty!29431 (= mapRes!29431 (and tp!56491 e!505645))))

(declare-datatypes ((V!29607 0))(
  ( (V!29608 (val!9291 Int)) )
))
(declare-datatypes ((ValueCell!8759 0))(
  ( (ValueCellFull!8759 (v!11796 V!29607)) (EmptyCell!8759) )
))
(declare-datatypes ((array!53012 0))(
  ( (array!53013 (arr!25462 (Array (_ BitVec 32) ValueCell!8759)) (size!25922 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53012)

(declare-fun mapKey!29431 () (_ BitVec 32))

(declare-fun mapRest!29431 () (Array (_ BitVec 32) ValueCell!8759))

(declare-fun mapValue!29431 () ValueCell!8759)

(assert (=> mapNonEmpty!29431 (= (arr!25462 _values!1152) (store mapRest!29431 mapKey!29431 mapValue!29431))))

(declare-fun b!902644 () Bool)

(declare-fun res!609205 () Bool)

(declare-fun e!505646 () Bool)

(assert (=> b!902644 (=> (not res!609205) (not e!505646))))

(declare-datatypes ((array!53014 0))(
  ( (array!53015 (arr!25463 (Array (_ BitVec 32) (_ BitVec 64))) (size!25923 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53014)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53014 (_ BitVec 32)) Bool)

(assert (=> b!902644 (= res!609205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902645 () Bool)

(declare-fun e!505643 () Bool)

(declare-fun tp_is_empty!18481 () Bool)

(assert (=> b!902645 (= e!505643 tp_is_empty!18481)))

(declare-fun mapIsEmpty!29431 () Bool)

(assert (=> mapIsEmpty!29431 mapRes!29431))

(declare-fun res!609207 () Bool)

(assert (=> start!77496 (=> (not res!609207) (not e!505646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77496 (= res!609207 (validMask!0 mask!1756))))

(assert (=> start!77496 e!505646))

(assert (=> start!77496 true))

(declare-fun e!505642 () Bool)

(declare-fun array_inv!19936 (array!53012) Bool)

(assert (=> start!77496 (and (array_inv!19936 _values!1152) e!505642)))

(declare-fun array_inv!19937 (array!53014) Bool)

(assert (=> start!77496 (array_inv!19937 _keys!1386)))

(declare-fun b!902646 () Bool)

(assert (=> b!902646 (= e!505646 false)))

(declare-fun lt!407861 () Bool)

(declare-datatypes ((List!17973 0))(
  ( (Nil!17970) (Cons!17969 (h!19115 (_ BitVec 64)) (t!25364 List!17973)) )
))
(declare-fun arrayNoDuplicates!0 (array!53014 (_ BitVec 32) List!17973) Bool)

(assert (=> b!902646 (= lt!407861 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17970))))

(declare-fun b!902647 () Bool)

(assert (=> b!902647 (= e!505645 tp_is_empty!18481)))

(declare-fun b!902648 () Bool)

(assert (=> b!902648 (= e!505642 (and e!505643 mapRes!29431))))

(declare-fun condMapEmpty!29431 () Bool)

(declare-fun mapDefault!29431 () ValueCell!8759)

