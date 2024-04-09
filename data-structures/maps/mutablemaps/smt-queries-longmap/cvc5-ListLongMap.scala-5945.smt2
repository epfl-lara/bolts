; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77514 () Bool)

(assert start!77514)

(declare-fun mapIsEmpty!29458 () Bool)

(declare-fun mapRes!29458 () Bool)

(assert (=> mapIsEmpty!29458 mapRes!29458))

(declare-fun b!902806 () Bool)

(declare-fun e!505780 () Bool)

(declare-fun tp_is_empty!18499 () Bool)

(assert (=> b!902806 (= e!505780 tp_is_empty!18499)))

(declare-fun res!609286 () Bool)

(declare-fun e!505778 () Bool)

(assert (=> start!77514 (=> (not res!609286) (not e!505778))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77514 (= res!609286 (validMask!0 mask!1756))))

(assert (=> start!77514 e!505778))

(assert (=> start!77514 true))

(declare-datatypes ((V!29631 0))(
  ( (V!29632 (val!9300 Int)) )
))
(declare-datatypes ((ValueCell!8768 0))(
  ( (ValueCellFull!8768 (v!11805 V!29631)) (EmptyCell!8768) )
))
(declare-datatypes ((array!53044 0))(
  ( (array!53045 (arr!25478 (Array (_ BitVec 32) ValueCell!8768)) (size!25938 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53044)

(declare-fun e!505777 () Bool)

(declare-fun array_inv!19948 (array!53044) Bool)

(assert (=> start!77514 (and (array_inv!19948 _values!1152) e!505777)))

(declare-datatypes ((array!53046 0))(
  ( (array!53047 (arr!25479 (Array (_ BitVec 32) (_ BitVec 64))) (size!25939 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53046)

(declare-fun array_inv!19949 (array!53046) Bool)

(assert (=> start!77514 (array_inv!19949 _keys!1386)))

(declare-fun b!902807 () Bool)

(declare-fun res!609287 () Bool)

(assert (=> b!902807 (=> (not res!609287) (not e!505778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53046 (_ BitVec 32)) Bool)

(assert (=> b!902807 (= res!609287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29458 () Bool)

(declare-fun tp!56518 () Bool)

(declare-fun e!505781 () Bool)

(assert (=> mapNonEmpty!29458 (= mapRes!29458 (and tp!56518 e!505781))))

(declare-fun mapRest!29458 () (Array (_ BitVec 32) ValueCell!8768))

(declare-fun mapKey!29458 () (_ BitVec 32))

(declare-fun mapValue!29458 () ValueCell!8768)

(assert (=> mapNonEmpty!29458 (= (arr!25478 _values!1152) (store mapRest!29458 mapKey!29458 mapValue!29458))))

(declare-fun b!902808 () Bool)

(assert (=> b!902808 (= e!505778 false)))

(declare-fun lt!407888 () Bool)

(declare-datatypes ((List!17979 0))(
  ( (Nil!17976) (Cons!17975 (h!19121 (_ BitVec 64)) (t!25370 List!17979)) )
))
(declare-fun arrayNoDuplicates!0 (array!53046 (_ BitVec 32) List!17979) Bool)

(assert (=> b!902808 (= lt!407888 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17976))))

(declare-fun b!902809 () Bool)

(assert (=> b!902809 (= e!505777 (and e!505780 mapRes!29458))))

(declare-fun condMapEmpty!29458 () Bool)

(declare-fun mapDefault!29458 () ValueCell!8768)

