; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110472 () Bool)

(assert start!110472)

(declare-fun mapIsEmpty!54130 () Bool)

(declare-fun mapRes!54130 () Bool)

(assert (=> mapIsEmpty!54130 mapRes!54130))

(declare-fun b!1306433 () Bool)

(declare-fun res!867379 () Bool)

(declare-fun e!745366 () Bool)

(assert (=> b!1306433 (=> (not res!867379) (not e!745366))))

(declare-datatypes ((array!86993 0))(
  ( (array!86994 (arr!41972 (Array (_ BitVec 32) (_ BitVec 64))) (size!42523 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86993)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86993 (_ BitVec 32)) Bool)

(assert (=> b!1306433 (= res!867379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!867378 () Bool)

(assert (=> start!110472 (=> (not res!867378) (not e!745366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110472 (= res!867378 (validMask!0 mask!2040))))

(assert (=> start!110472 e!745366))

(assert (=> start!110472 true))

(declare-datatypes ((V!51771 0))(
  ( (V!51772 (val!17575 Int)) )
))
(declare-datatypes ((ValueCell!16602 0))(
  ( (ValueCellFull!16602 (v!20200 V!51771)) (EmptyCell!16602) )
))
(declare-datatypes ((array!86995 0))(
  ( (array!86996 (arr!41973 (Array (_ BitVec 32) ValueCell!16602)) (size!42524 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86995)

(declare-fun e!745369 () Bool)

(declare-fun array_inv!31735 (array!86995) Bool)

(assert (=> start!110472 (and (array_inv!31735 _values!1354) e!745369)))

(declare-fun array_inv!31736 (array!86993) Bool)

(assert (=> start!110472 (array_inv!31736 _keys!1628)))

(declare-fun mapNonEmpty!54130 () Bool)

(declare-fun tp!103211 () Bool)

(declare-fun e!745367 () Bool)

(assert (=> mapNonEmpty!54130 (= mapRes!54130 (and tp!103211 e!745367))))

(declare-fun mapKey!54130 () (_ BitVec 32))

(declare-fun mapValue!54130 () ValueCell!16602)

(declare-fun mapRest!54130 () (Array (_ BitVec 32) ValueCell!16602))

(assert (=> mapNonEmpty!54130 (= (arr!41973 _values!1354) (store mapRest!54130 mapKey!54130 mapValue!54130))))

(declare-fun b!1306434 () Bool)

(declare-fun res!867380 () Bool)

(assert (=> b!1306434 (=> (not res!867380) (not e!745366))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306434 (= res!867380 (and (= (size!42524 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42523 _keys!1628) (size!42524 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306435 () Bool)

(declare-fun tp_is_empty!35001 () Bool)

(assert (=> b!1306435 (= e!745367 tp_is_empty!35001)))

(declare-fun b!1306436 () Bool)

(assert (=> b!1306436 (= e!745366 false)))

(declare-fun lt!584866 () Bool)

(declare-datatypes ((List!29979 0))(
  ( (Nil!29976) (Cons!29975 (h!31184 (_ BitVec 64)) (t!43592 List!29979)) )
))
(declare-fun arrayNoDuplicates!0 (array!86993 (_ BitVec 32) List!29979) Bool)

(assert (=> b!1306436 (= lt!584866 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29976))))

(declare-fun b!1306437 () Bool)

(declare-fun e!745370 () Bool)

(assert (=> b!1306437 (= e!745369 (and e!745370 mapRes!54130))))

(declare-fun condMapEmpty!54130 () Bool)

(declare-fun mapDefault!54130 () ValueCell!16602)

(assert (=> b!1306437 (= condMapEmpty!54130 (= (arr!41973 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16602)) mapDefault!54130)))))

(declare-fun b!1306438 () Bool)

(assert (=> b!1306438 (= e!745370 tp_is_empty!35001)))

(assert (= (and start!110472 res!867378) b!1306434))

(assert (= (and b!1306434 res!867380) b!1306433))

(assert (= (and b!1306433 res!867379) b!1306436))

(assert (= (and b!1306437 condMapEmpty!54130) mapIsEmpty!54130))

(assert (= (and b!1306437 (not condMapEmpty!54130)) mapNonEmpty!54130))

(get-info :version)

(assert (= (and mapNonEmpty!54130 ((_ is ValueCellFull!16602) mapValue!54130)) b!1306435))

(assert (= (and b!1306437 ((_ is ValueCellFull!16602) mapDefault!54130)) b!1306438))

(assert (= start!110472 b!1306437))

(declare-fun m!1197477 () Bool)

(assert (=> b!1306433 m!1197477))

(declare-fun m!1197479 () Bool)

(assert (=> start!110472 m!1197479))

(declare-fun m!1197481 () Bool)

(assert (=> start!110472 m!1197481))

(declare-fun m!1197483 () Bool)

(assert (=> start!110472 m!1197483))

(declare-fun m!1197485 () Bool)

(assert (=> mapNonEmpty!54130 m!1197485))

(declare-fun m!1197487 () Bool)

(assert (=> b!1306436 m!1197487))

(check-sat (not mapNonEmpty!54130) (not b!1306436) tp_is_empty!35001 (not start!110472) (not b!1306433))
(check-sat)
