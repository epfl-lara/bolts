; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110484 () Bool)

(assert start!110484)

(declare-fun b!1306541 () Bool)

(declare-fun e!745460 () Bool)

(declare-fun e!745458 () Bool)

(declare-fun mapRes!54148 () Bool)

(assert (=> b!1306541 (= e!745460 (and e!745458 mapRes!54148))))

(declare-fun condMapEmpty!54148 () Bool)

(declare-datatypes ((V!51787 0))(
  ( (V!51788 (val!17581 Int)) )
))
(declare-datatypes ((ValueCell!16608 0))(
  ( (ValueCellFull!16608 (v!20206 V!51787)) (EmptyCell!16608) )
))
(declare-datatypes ((array!87017 0))(
  ( (array!87018 (arr!41984 (Array (_ BitVec 32) ValueCell!16608)) (size!42535 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87017)

(declare-fun mapDefault!54148 () ValueCell!16608)

(assert (=> b!1306541 (= condMapEmpty!54148 (= (arr!41984 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16608)) mapDefault!54148)))))

(declare-fun mapIsEmpty!54148 () Bool)

(assert (=> mapIsEmpty!54148 mapRes!54148))

(declare-fun b!1306542 () Bool)

(declare-fun tp_is_empty!35013 () Bool)

(assert (=> b!1306542 (= e!745458 tp_is_empty!35013)))

(declare-fun b!1306543 () Bool)

(declare-fun res!867432 () Bool)

(declare-fun e!745456 () Bool)

(assert (=> b!1306543 (=> (not res!867432) (not e!745456))))

(declare-datatypes ((array!87019 0))(
  ( (array!87020 (arr!41985 (Array (_ BitVec 32) (_ BitVec 64))) (size!42536 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87019)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306543 (= res!867432 (and (= (size!42535 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42536 _keys!1628) (size!42535 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306545 () Bool)

(declare-fun res!867433 () Bool)

(assert (=> b!1306545 (=> (not res!867433) (not e!745456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87019 (_ BitVec 32)) Bool)

(assert (=> b!1306545 (= res!867433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306544 () Bool)

(declare-fun e!745457 () Bool)

(assert (=> b!1306544 (= e!745457 tp_is_empty!35013)))

(declare-fun res!867434 () Bool)

(assert (=> start!110484 (=> (not res!867434) (not e!745456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110484 (= res!867434 (validMask!0 mask!2040))))

(assert (=> start!110484 e!745456))

(assert (=> start!110484 true))

(declare-fun array_inv!31741 (array!87017) Bool)

(assert (=> start!110484 (and (array_inv!31741 _values!1354) e!745460)))

(declare-fun array_inv!31742 (array!87019) Bool)

(assert (=> start!110484 (array_inv!31742 _keys!1628)))

(declare-fun b!1306546 () Bool)

(assert (=> b!1306546 (= e!745456 false)))

(declare-fun lt!584884 () Bool)

(declare-datatypes ((List!29984 0))(
  ( (Nil!29981) (Cons!29980 (h!31189 (_ BitVec 64)) (t!43597 List!29984)) )
))
(declare-fun arrayNoDuplicates!0 (array!87019 (_ BitVec 32) List!29984) Bool)

(assert (=> b!1306546 (= lt!584884 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29981))))

(declare-fun mapNonEmpty!54148 () Bool)

(declare-fun tp!103229 () Bool)

(assert (=> mapNonEmpty!54148 (= mapRes!54148 (and tp!103229 e!745457))))

(declare-fun mapRest!54148 () (Array (_ BitVec 32) ValueCell!16608))

(declare-fun mapKey!54148 () (_ BitVec 32))

(declare-fun mapValue!54148 () ValueCell!16608)

(assert (=> mapNonEmpty!54148 (= (arr!41984 _values!1354) (store mapRest!54148 mapKey!54148 mapValue!54148))))

(assert (= (and start!110484 res!867434) b!1306543))

(assert (= (and b!1306543 res!867432) b!1306545))

(assert (= (and b!1306545 res!867433) b!1306546))

(assert (= (and b!1306541 condMapEmpty!54148) mapIsEmpty!54148))

(assert (= (and b!1306541 (not condMapEmpty!54148)) mapNonEmpty!54148))

(get-info :version)

(assert (= (and mapNonEmpty!54148 ((_ is ValueCellFull!16608) mapValue!54148)) b!1306544))

(assert (= (and b!1306541 ((_ is ValueCellFull!16608) mapDefault!54148)) b!1306542))

(assert (= start!110484 b!1306541))

(declare-fun m!1197549 () Bool)

(assert (=> b!1306545 m!1197549))

(declare-fun m!1197551 () Bool)

(assert (=> start!110484 m!1197551))

(declare-fun m!1197553 () Bool)

(assert (=> start!110484 m!1197553))

(declare-fun m!1197555 () Bool)

(assert (=> start!110484 m!1197555))

(declare-fun m!1197557 () Bool)

(assert (=> b!1306546 m!1197557))

(declare-fun m!1197559 () Bool)

(assert (=> mapNonEmpty!54148 m!1197559))

(check-sat (not b!1306546) (not mapNonEmpty!54148) (not start!110484) tp_is_empty!35013 (not b!1306545))
(check-sat)
