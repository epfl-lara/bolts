; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110826 () Bool)

(assert start!110826)

(declare-fun b_free!29625 () Bool)

(declare-fun b_next!29625 () Bool)

(assert (=> start!110826 (= b_free!29625 (not b_next!29625))))

(declare-fun tp!104198 () Bool)

(declare-fun b_and!47843 () Bool)

(assert (=> start!110826 (= tp!104198 b_and!47843)))

(declare-fun b!1311186 () Bool)

(declare-fun res!870538 () Bool)

(declare-fun e!748022 () Bool)

(assert (=> b!1311186 (=> (not res!870538) (not e!748022))))

(declare-datatypes ((array!87661 0))(
  ( (array!87662 (arr!42306 (Array (_ BitVec 32) (_ BitVec 64))) (size!42857 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87661)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52243 0))(
  ( (V!52244 (val!17752 Int)) )
))
(declare-datatypes ((ValueCell!16779 0))(
  ( (ValueCellFull!16779 (v!20377 V!52243)) (EmptyCell!16779) )
))
(declare-datatypes ((array!87663 0))(
  ( (array!87664 (arr!42307 (Array (_ BitVec 32) ValueCell!16779)) (size!42858 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87663)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311186 (= res!870538 (and (= (size!42858 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42857 _keys!1628) (size!42858 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311187 () Bool)

(assert (=> b!1311187 (= e!748022 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52243)

(declare-fun zeroValue!1296 () V!52243)

(declare-fun lt!585388 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23044 0))(
  ( (tuple2!23045 (_1!11532 (_ BitVec 64)) (_2!11532 V!52243)) )
))
(declare-datatypes ((List!30209 0))(
  ( (Nil!30206) (Cons!30205 (h!31414 tuple2!23044) (t!43822 List!30209)) )
))
(declare-datatypes ((ListLongMap!20713 0))(
  ( (ListLongMap!20714 (toList!10372 List!30209)) )
))
(declare-fun contains!8458 (ListLongMap!20713 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5328 (array!87661 array!87663 (_ BitVec 32) (_ BitVec 32) V!52243 V!52243 (_ BitVec 32) Int) ListLongMap!20713)

(assert (=> b!1311187 (= lt!585388 (contains!8458 (getCurrentListMap!5328 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311188 () Bool)

(declare-fun res!870542 () Bool)

(assert (=> b!1311188 (=> (not res!870542) (not e!748022))))

(declare-datatypes ((List!30210 0))(
  ( (Nil!30207) (Cons!30206 (h!31415 (_ BitVec 64)) (t!43823 List!30210)) )
))
(declare-fun arrayNoDuplicates!0 (array!87661 (_ BitVec 32) List!30210) Bool)

(assert (=> b!1311188 (= res!870542 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30207))))

(declare-fun mapNonEmpty!54661 () Bool)

(declare-fun mapRes!54661 () Bool)

(declare-fun tp!104197 () Bool)

(declare-fun e!748021 () Bool)

(assert (=> mapNonEmpty!54661 (= mapRes!54661 (and tp!104197 e!748021))))

(declare-fun mapValue!54661 () ValueCell!16779)

(declare-fun mapRest!54661 () (Array (_ BitVec 32) ValueCell!16779))

(declare-fun mapKey!54661 () (_ BitVec 32))

(assert (=> mapNonEmpty!54661 (= (arr!42307 _values!1354) (store mapRest!54661 mapKey!54661 mapValue!54661))))

(declare-fun b!1311189 () Bool)

(declare-fun res!870539 () Bool)

(assert (=> b!1311189 (=> (not res!870539) (not e!748022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87661 (_ BitVec 32)) Bool)

(assert (=> b!1311189 (= res!870539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54661 () Bool)

(assert (=> mapIsEmpty!54661 mapRes!54661))

(declare-fun b!1311190 () Bool)

(declare-fun e!748024 () Bool)

(declare-fun e!748023 () Bool)

(assert (=> b!1311190 (= e!748024 (and e!748023 mapRes!54661))))

(declare-fun condMapEmpty!54661 () Bool)

(declare-fun mapDefault!54661 () ValueCell!16779)

(assert (=> b!1311190 (= condMapEmpty!54661 (= (arr!42307 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16779)) mapDefault!54661)))))

(declare-fun b!1311191 () Bool)

(declare-fun tp_is_empty!35355 () Bool)

(assert (=> b!1311191 (= e!748023 tp_is_empty!35355)))

(declare-fun res!870541 () Bool)

(assert (=> start!110826 (=> (not res!870541) (not e!748022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110826 (= res!870541 (validMask!0 mask!2040))))

(assert (=> start!110826 e!748022))

(assert (=> start!110826 tp!104198))

(declare-fun array_inv!31955 (array!87661) Bool)

(assert (=> start!110826 (array_inv!31955 _keys!1628)))

(assert (=> start!110826 true))

(assert (=> start!110826 tp_is_empty!35355))

(declare-fun array_inv!31956 (array!87663) Bool)

(assert (=> start!110826 (and (array_inv!31956 _values!1354) e!748024)))

(declare-fun b!1311192 () Bool)

(assert (=> b!1311192 (= e!748021 tp_is_empty!35355)))

(declare-fun b!1311193 () Bool)

(declare-fun res!870540 () Bool)

(assert (=> b!1311193 (=> (not res!870540) (not e!748022))))

(assert (=> b!1311193 (= res!870540 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42857 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!110826 res!870541) b!1311186))

(assert (= (and b!1311186 res!870538) b!1311189))

(assert (= (and b!1311189 res!870539) b!1311188))

(assert (= (and b!1311188 res!870542) b!1311193))

(assert (= (and b!1311193 res!870540) b!1311187))

(assert (= (and b!1311190 condMapEmpty!54661) mapIsEmpty!54661))

(assert (= (and b!1311190 (not condMapEmpty!54661)) mapNonEmpty!54661))

(get-info :version)

(assert (= (and mapNonEmpty!54661 ((_ is ValueCellFull!16779) mapValue!54661)) b!1311192))

(assert (= (and b!1311190 ((_ is ValueCellFull!16779) mapDefault!54661)) b!1311191))

(assert (= start!110826 b!1311190))

(declare-fun m!1200745 () Bool)

(assert (=> start!110826 m!1200745))

(declare-fun m!1200747 () Bool)

(assert (=> start!110826 m!1200747))

(declare-fun m!1200749 () Bool)

(assert (=> start!110826 m!1200749))

(declare-fun m!1200751 () Bool)

(assert (=> b!1311188 m!1200751))

(declare-fun m!1200753 () Bool)

(assert (=> mapNonEmpty!54661 m!1200753))

(declare-fun m!1200755 () Bool)

(assert (=> b!1311187 m!1200755))

(assert (=> b!1311187 m!1200755))

(declare-fun m!1200757 () Bool)

(assert (=> b!1311187 m!1200757))

(declare-fun m!1200759 () Bool)

(assert (=> b!1311189 m!1200759))

(check-sat tp_is_empty!35355 (not b!1311187) (not start!110826) (not b!1311188) (not b!1311189) (not b_next!29625) (not mapNonEmpty!54661) b_and!47843)
(check-sat b_and!47843 (not b_next!29625))
