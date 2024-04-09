; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110392 () Bool)

(assert start!110392)

(declare-datatypes ((array!86915 0))(
  ( (array!86916 (arr!41938 (Array (_ BitVec 32) (_ BitVec 64))) (size!42489 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86915)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun e!745005 () Bool)

(declare-datatypes ((V!51723 0))(
  ( (V!51724 (val!17557 Int)) )
))
(declare-datatypes ((ValueCell!16584 0))(
  ( (ValueCellFull!16584 (v!20181 V!51723)) (EmptyCell!16584) )
))
(declare-datatypes ((array!86917 0))(
  ( (array!86918 (arr!41939 (Array (_ BitVec 32) ValueCell!16584)) (size!42490 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86917)

(declare-fun b!1305991 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1305991 (= e!745005 (and (= (size!42490 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42489 _keys!1628) (size!42490 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011) (not (= (size!42489 _keys!1628) (bvadd #b00000000000000000000000000000001 mask!2040)))))))

(declare-fun b!1305992 () Bool)

(declare-fun e!745004 () Bool)

(declare-fun e!745001 () Bool)

(declare-fun mapRes!54061 () Bool)

(assert (=> b!1305992 (= e!745004 (and e!745001 mapRes!54061))))

(declare-fun condMapEmpty!54061 () Bool)

(declare-fun mapDefault!54061 () ValueCell!16584)

(assert (=> b!1305992 (= condMapEmpty!54061 (= (arr!41939 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16584)) mapDefault!54061)))))

(declare-fun b!1305993 () Bool)

(declare-fun tp_is_empty!34965 () Bool)

(assert (=> b!1305993 (= e!745001 tp_is_empty!34965)))

(declare-fun mapNonEmpty!54061 () Bool)

(declare-fun tp!103142 () Bool)

(declare-fun e!745003 () Bool)

(assert (=> mapNonEmpty!54061 (= mapRes!54061 (and tp!103142 e!745003))))

(declare-fun mapRest!54061 () (Array (_ BitVec 32) ValueCell!16584))

(declare-fun mapValue!54061 () ValueCell!16584)

(declare-fun mapKey!54061 () (_ BitVec 32))

(assert (=> mapNonEmpty!54061 (= (arr!41939 _values!1354) (store mapRest!54061 mapKey!54061 mapValue!54061))))

(declare-fun res!867162 () Bool)

(assert (=> start!110392 (=> (not res!867162) (not e!745005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110392 (= res!867162 (validMask!0 mask!2040))))

(assert (=> start!110392 e!745005))

(assert (=> start!110392 true))

(declare-fun array_inv!31715 (array!86917) Bool)

(assert (=> start!110392 (and (array_inv!31715 _values!1354) e!745004)))

(declare-fun array_inv!31716 (array!86915) Bool)

(assert (=> start!110392 (array_inv!31716 _keys!1628)))

(declare-fun b!1305994 () Bool)

(assert (=> b!1305994 (= e!745003 tp_is_empty!34965)))

(declare-fun mapIsEmpty!54061 () Bool)

(assert (=> mapIsEmpty!54061 mapRes!54061))

(assert (= (and start!110392 res!867162) b!1305991))

(assert (= (and b!1305992 condMapEmpty!54061) mapIsEmpty!54061))

(assert (= (and b!1305992 (not condMapEmpty!54061)) mapNonEmpty!54061))

(get-info :version)

(assert (= (and mapNonEmpty!54061 ((_ is ValueCellFull!16584) mapValue!54061)) b!1305994))

(assert (= (and b!1305992 ((_ is ValueCellFull!16584) mapDefault!54061)) b!1305993))

(assert (= start!110392 b!1305992))

(declare-fun m!1197205 () Bool)

(assert (=> mapNonEmpty!54061 m!1197205))

(declare-fun m!1197207 () Bool)

(assert (=> start!110392 m!1197207))

(declare-fun m!1197209 () Bool)

(assert (=> start!110392 m!1197209))

(declare-fun m!1197211 () Bool)

(assert (=> start!110392 m!1197211))

(check-sat (not start!110392) (not mapNonEmpty!54061) tp_is_empty!34965)
(check-sat)
