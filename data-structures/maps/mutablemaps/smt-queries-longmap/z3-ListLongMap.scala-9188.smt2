; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110514 () Bool)

(assert start!110514)

(declare-fun b!1306812 () Bool)

(declare-fun e!745683 () Bool)

(assert (=> b!1306812 (= e!745683 false)))

(declare-fun lt!584929 () Bool)

(declare-datatypes ((array!87071 0))(
  ( (array!87072 (arr!42011 (Array (_ BitVec 32) (_ BitVec 64))) (size!42562 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87071)

(declare-datatypes ((List!29993 0))(
  ( (Nil!29990) (Cons!29989 (h!31198 (_ BitVec 64)) (t!43606 List!29993)) )
))
(declare-fun arrayNoDuplicates!0 (array!87071 (_ BitVec 32) List!29993) Bool)

(assert (=> b!1306812 (= lt!584929 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29990))))

(declare-fun mapIsEmpty!54193 () Bool)

(declare-fun mapRes!54193 () Bool)

(assert (=> mapIsEmpty!54193 mapRes!54193))

(declare-fun b!1306813 () Bool)

(declare-fun e!745684 () Bool)

(declare-fun e!745682 () Bool)

(assert (=> b!1306813 (= e!745684 (and e!745682 mapRes!54193))))

(declare-fun condMapEmpty!54193 () Bool)

(declare-datatypes ((V!51827 0))(
  ( (V!51828 (val!17596 Int)) )
))
(declare-datatypes ((ValueCell!16623 0))(
  ( (ValueCellFull!16623 (v!20221 V!51827)) (EmptyCell!16623) )
))
(declare-datatypes ((array!87073 0))(
  ( (array!87074 (arr!42012 (Array (_ BitVec 32) ValueCell!16623)) (size!42563 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87073)

(declare-fun mapDefault!54193 () ValueCell!16623)

(assert (=> b!1306813 (= condMapEmpty!54193 (= (arr!42012 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16623)) mapDefault!54193)))))

(declare-fun b!1306814 () Bool)

(declare-fun res!867569 () Bool)

(assert (=> b!1306814 (=> (not res!867569) (not e!745683))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87071 (_ BitVec 32)) Bool)

(assert (=> b!1306814 (= res!867569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306815 () Bool)

(declare-fun e!745681 () Bool)

(declare-fun tp_is_empty!35043 () Bool)

(assert (=> b!1306815 (= e!745681 tp_is_empty!35043)))

(declare-fun mapNonEmpty!54193 () Bool)

(declare-fun tp!103274 () Bool)

(assert (=> mapNonEmpty!54193 (= mapRes!54193 (and tp!103274 e!745681))))

(declare-fun mapRest!54193 () (Array (_ BitVec 32) ValueCell!16623))

(declare-fun mapKey!54193 () (_ BitVec 32))

(declare-fun mapValue!54193 () ValueCell!16623)

(assert (=> mapNonEmpty!54193 (= (arr!42012 _values!1354) (store mapRest!54193 mapKey!54193 mapValue!54193))))

(declare-fun b!1306816 () Bool)

(declare-fun res!867568 () Bool)

(assert (=> b!1306816 (=> (not res!867568) (not e!745683))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306816 (= res!867568 (and (= (size!42563 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42562 _keys!1628) (size!42563 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!867567 () Bool)

(assert (=> start!110514 (=> (not res!867567) (not e!745683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110514 (= res!867567 (validMask!0 mask!2040))))

(assert (=> start!110514 e!745683))

(assert (=> start!110514 true))

(declare-fun array_inv!31761 (array!87073) Bool)

(assert (=> start!110514 (and (array_inv!31761 _values!1354) e!745684)))

(declare-fun array_inv!31762 (array!87071) Bool)

(assert (=> start!110514 (array_inv!31762 _keys!1628)))

(declare-fun b!1306811 () Bool)

(assert (=> b!1306811 (= e!745682 tp_is_empty!35043)))

(assert (= (and start!110514 res!867567) b!1306816))

(assert (= (and b!1306816 res!867568) b!1306814))

(assert (= (and b!1306814 res!867569) b!1306812))

(assert (= (and b!1306813 condMapEmpty!54193) mapIsEmpty!54193))

(assert (= (and b!1306813 (not condMapEmpty!54193)) mapNonEmpty!54193))

(get-info :version)

(assert (= (and mapNonEmpty!54193 ((_ is ValueCellFull!16623) mapValue!54193)) b!1306815))

(assert (= (and b!1306813 ((_ is ValueCellFull!16623) mapDefault!54193)) b!1306811))

(assert (= start!110514 b!1306813))

(declare-fun m!1197729 () Bool)

(assert (=> b!1306812 m!1197729))

(declare-fun m!1197731 () Bool)

(assert (=> b!1306814 m!1197731))

(declare-fun m!1197733 () Bool)

(assert (=> mapNonEmpty!54193 m!1197733))

(declare-fun m!1197735 () Bool)

(assert (=> start!110514 m!1197735))

(declare-fun m!1197737 () Bool)

(assert (=> start!110514 m!1197737))

(declare-fun m!1197739 () Bool)

(assert (=> start!110514 m!1197739))

(check-sat (not start!110514) (not b!1306812) (not mapNonEmpty!54193) tp_is_empty!35043 (not b!1306814))
(check-sat)
