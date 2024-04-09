; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83966 () Bool)

(assert start!83966)

(declare-fun b!980803 () Bool)

(declare-fun res!656482 () Bool)

(declare-fun e!552895 () Bool)

(assert (=> b!980803 (=> (not res!656482) (not e!552895))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35305 0))(
  ( (V!35306 (val!11421 Int)) )
))
(declare-datatypes ((ValueCell!10889 0))(
  ( (ValueCellFull!10889 (v!13983 V!35305)) (EmptyCell!10889) )
))
(declare-datatypes ((array!61483 0))(
  ( (array!61484 (arr!29595 (Array (_ BitVec 32) ValueCell!10889)) (size!30075 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61483)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61485 0))(
  ( (array!61486 (arr!29596 (Array (_ BitVec 32) (_ BitVec 64))) (size!30076 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61485)

(assert (=> b!980803 (= res!656482 (and (= (size!30075 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30076 _keys!1544) (size!30075 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980804 () Bool)

(declare-fun e!552896 () Bool)

(declare-fun tp_is_empty!22741 () Bool)

(assert (=> b!980804 (= e!552896 tp_is_empty!22741)))

(declare-fun mapIsEmpty!36140 () Bool)

(declare-fun mapRes!36140 () Bool)

(assert (=> mapIsEmpty!36140 mapRes!36140))

(declare-fun b!980805 () Bool)

(declare-fun e!552893 () Bool)

(assert (=> b!980805 (= e!552893 tp_is_empty!22741)))

(declare-fun b!980806 () Bool)

(assert (=> b!980806 (= e!552895 false)))

(declare-fun lt!435574 () Bool)

(declare-datatypes ((List!20649 0))(
  ( (Nil!20646) (Cons!20645 (h!21807 (_ BitVec 64)) (t!29340 List!20649)) )
))
(declare-fun arrayNoDuplicates!0 (array!61485 (_ BitVec 32) List!20649) Bool)

(assert (=> b!980806 (= lt!435574 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20646))))

(declare-fun mapNonEmpty!36140 () Bool)

(declare-fun tp!68654 () Bool)

(assert (=> mapNonEmpty!36140 (= mapRes!36140 (and tp!68654 e!552893))))

(declare-fun mapValue!36140 () ValueCell!10889)

(declare-fun mapKey!36140 () (_ BitVec 32))

(declare-fun mapRest!36140 () (Array (_ BitVec 32) ValueCell!10889))

(assert (=> mapNonEmpty!36140 (= (arr!29595 _values!1278) (store mapRest!36140 mapKey!36140 mapValue!36140))))

(declare-fun b!980807 () Bool)

(declare-fun res!656483 () Bool)

(assert (=> b!980807 (=> (not res!656483) (not e!552895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61485 (_ BitVec 32)) Bool)

(assert (=> b!980807 (= res!656483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!656484 () Bool)

(assert (=> start!83966 (=> (not res!656484) (not e!552895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83966 (= res!656484 (validMask!0 mask!1948))))

(assert (=> start!83966 e!552895))

(assert (=> start!83966 true))

(declare-fun e!552894 () Bool)

(declare-fun array_inv!22767 (array!61483) Bool)

(assert (=> start!83966 (and (array_inv!22767 _values!1278) e!552894)))

(declare-fun array_inv!22768 (array!61485) Bool)

(assert (=> start!83966 (array_inv!22768 _keys!1544)))

(declare-fun b!980808 () Bool)

(assert (=> b!980808 (= e!552894 (and e!552896 mapRes!36140))))

(declare-fun condMapEmpty!36140 () Bool)

(declare-fun mapDefault!36140 () ValueCell!10889)

