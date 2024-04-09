; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110784 () Bool)

(assert start!110784)

(declare-fun b_free!29583 () Bool)

(declare-fun b_next!29583 () Bool)

(assert (=> start!110784 (= b_free!29583 (not b_next!29583))))

(declare-fun tp!104071 () Bool)

(declare-fun b_and!47801 () Bool)

(assert (=> start!110784 (= tp!104071 b_and!47801)))

(declare-fun b!1310683 () Bool)

(declare-fun e!747709 () Bool)

(declare-fun e!747710 () Bool)

(declare-fun mapRes!54598 () Bool)

(assert (=> b!1310683 (= e!747709 (and e!747710 mapRes!54598))))

(declare-fun condMapEmpty!54598 () Bool)

(declare-datatypes ((V!52187 0))(
  ( (V!52188 (val!17731 Int)) )
))
(declare-datatypes ((ValueCell!16758 0))(
  ( (ValueCellFull!16758 (v!20356 V!52187)) (EmptyCell!16758) )
))
(declare-datatypes ((array!87579 0))(
  ( (array!87580 (arr!42265 (Array (_ BitVec 32) ValueCell!16758)) (size!42816 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87579)

(declare-fun mapDefault!54598 () ValueCell!16758)

(assert (=> b!1310683 (= condMapEmpty!54598 (= (arr!42265 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16758)) mapDefault!54598)))))

(declare-fun b!1310684 () Bool)

(declare-fun res!870227 () Bool)

(declare-fun e!747708 () Bool)

(assert (=> b!1310684 (=> (not res!870227) (not e!747708))))

(declare-datatypes ((array!87581 0))(
  ( (array!87582 (arr!42266 (Array (_ BitVec 32) (_ BitVec 64))) (size!42817 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87581)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310684 (= res!870227 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42817 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310685 () Bool)

(declare-fun res!870226 () Bool)

(assert (=> b!1310685 (=> (not res!870226) (not e!747708))))

(declare-datatypes ((List!30178 0))(
  ( (Nil!30175) (Cons!30174 (h!31383 (_ BitVec 64)) (t!43791 List!30178)) )
))
(declare-fun arrayNoDuplicates!0 (array!87581 (_ BitVec 32) List!30178) Bool)

(assert (=> b!1310685 (= res!870226 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30175))))

(declare-fun b!1310686 () Bool)

(declare-fun res!870223 () Bool)

(assert (=> b!1310686 (=> (not res!870223) (not e!747708))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87581 (_ BitVec 32)) Bool)

(assert (=> b!1310686 (= res!870223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310687 () Bool)

(declare-fun res!870225 () Bool)

(assert (=> b!1310687 (=> (not res!870225) (not e!747708))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310687 (= res!870225 (and (= (size!42816 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42817 _keys!1628) (size!42816 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310688 () Bool)

(declare-fun tp_is_empty!35313 () Bool)

(assert (=> b!1310688 (= e!747710 tp_is_empty!35313)))

(declare-fun mapNonEmpty!54598 () Bool)

(declare-fun tp!104072 () Bool)

(declare-fun e!747706 () Bool)

(assert (=> mapNonEmpty!54598 (= mapRes!54598 (and tp!104072 e!747706))))

(declare-fun mapValue!54598 () ValueCell!16758)

(declare-fun mapKey!54598 () (_ BitVec 32))

(declare-fun mapRest!54598 () (Array (_ BitVec 32) ValueCell!16758))

(assert (=> mapNonEmpty!54598 (= (arr!42265 _values!1354) (store mapRest!54598 mapKey!54598 mapValue!54598))))

(declare-fun b!1310682 () Bool)

(assert (=> b!1310682 (= e!747706 tp_is_empty!35313)))

(declare-fun res!870224 () Bool)

(assert (=> start!110784 (=> (not res!870224) (not e!747708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110784 (= res!870224 (validMask!0 mask!2040))))

(assert (=> start!110784 e!747708))

(assert (=> start!110784 tp!104071))

(declare-fun array_inv!31931 (array!87581) Bool)

(assert (=> start!110784 (array_inv!31931 _keys!1628)))

(assert (=> start!110784 true))

(assert (=> start!110784 tp_is_empty!35313))

(declare-fun array_inv!31932 (array!87579) Bool)

(assert (=> start!110784 (and (array_inv!31932 _values!1354) e!747709)))

(declare-fun mapIsEmpty!54598 () Bool)

(assert (=> mapIsEmpty!54598 mapRes!54598))

(declare-fun b!1310689 () Bool)

(assert (=> b!1310689 (= e!747708 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52187)

(declare-fun zeroValue!1296 () V!52187)

(declare-fun lt!585325 () Bool)

(declare-datatypes ((tuple2!23014 0))(
  ( (tuple2!23015 (_1!11517 (_ BitVec 64)) (_2!11517 V!52187)) )
))
(declare-datatypes ((List!30179 0))(
  ( (Nil!30176) (Cons!30175 (h!31384 tuple2!23014) (t!43792 List!30179)) )
))
(declare-datatypes ((ListLongMap!20683 0))(
  ( (ListLongMap!20684 (toList!10357 List!30179)) )
))
(declare-fun contains!8443 (ListLongMap!20683 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5313 (array!87581 array!87579 (_ BitVec 32) (_ BitVec 32) V!52187 V!52187 (_ BitVec 32) Int) ListLongMap!20683)

(assert (=> b!1310689 (= lt!585325 (contains!8443 (getCurrentListMap!5313 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110784 res!870224) b!1310687))

(assert (= (and b!1310687 res!870225) b!1310686))

(assert (= (and b!1310686 res!870223) b!1310685))

(assert (= (and b!1310685 res!870226) b!1310684))

(assert (= (and b!1310684 res!870227) b!1310689))

(assert (= (and b!1310683 condMapEmpty!54598) mapIsEmpty!54598))

(assert (= (and b!1310683 (not condMapEmpty!54598)) mapNonEmpty!54598))

(get-info :version)

(assert (= (and mapNonEmpty!54598 ((_ is ValueCellFull!16758) mapValue!54598)) b!1310682))

(assert (= (and b!1310683 ((_ is ValueCellFull!16758) mapDefault!54598)) b!1310688))

(assert (= start!110784 b!1310683))

(declare-fun m!1200409 () Bool)

(assert (=> start!110784 m!1200409))

(declare-fun m!1200411 () Bool)

(assert (=> start!110784 m!1200411))

(declare-fun m!1200413 () Bool)

(assert (=> start!110784 m!1200413))

(declare-fun m!1200415 () Bool)

(assert (=> b!1310686 m!1200415))

(declare-fun m!1200417 () Bool)

(assert (=> b!1310685 m!1200417))

(declare-fun m!1200419 () Bool)

(assert (=> b!1310689 m!1200419))

(assert (=> b!1310689 m!1200419))

(declare-fun m!1200421 () Bool)

(assert (=> b!1310689 m!1200421))

(declare-fun m!1200423 () Bool)

(assert (=> mapNonEmpty!54598 m!1200423))

(check-sat (not b!1310689) (not b!1310685) (not mapNonEmpty!54598) b_and!47801 tp_is_empty!35313 (not b_next!29583) (not b!1310686) (not start!110784))
(check-sat b_and!47801 (not b_next!29583))
