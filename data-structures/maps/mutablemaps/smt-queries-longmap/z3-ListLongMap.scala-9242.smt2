; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110838 () Bool)

(assert start!110838)

(declare-fun b_free!29637 () Bool)

(declare-fun b_next!29637 () Bool)

(assert (=> start!110838 (= b_free!29637 (not b_next!29637))))

(declare-fun tp!104233 () Bool)

(declare-fun b_and!47855 () Bool)

(assert (=> start!110838 (= tp!104233 b_and!47855)))

(declare-fun b!1311330 () Bool)

(declare-fun e!748111 () Bool)

(declare-fun tp_is_empty!35367 () Bool)

(assert (=> b!1311330 (= e!748111 tp_is_empty!35367)))

(declare-fun b!1311331 () Bool)

(declare-fun e!748113 () Bool)

(assert (=> b!1311331 (= e!748113 tp_is_empty!35367)))

(declare-fun b!1311332 () Bool)

(declare-fun res!870629 () Bool)

(declare-fun e!748114 () Bool)

(assert (=> b!1311332 (=> (not res!870629) (not e!748114))))

(declare-datatypes ((array!87685 0))(
  ( (array!87686 (arr!42318 (Array (_ BitVec 32) (_ BitVec 64))) (size!42869 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87685)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52259 0))(
  ( (V!52260 (val!17758 Int)) )
))
(declare-datatypes ((ValueCell!16785 0))(
  ( (ValueCellFull!16785 (v!20383 V!52259)) (EmptyCell!16785) )
))
(declare-datatypes ((array!87687 0))(
  ( (array!87688 (arr!42319 (Array (_ BitVec 32) ValueCell!16785)) (size!42870 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87687)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311332 (= res!870629 (and (= (size!42870 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42869 _keys!1628) (size!42870 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311333 () Bool)

(declare-fun res!870631 () Bool)

(assert (=> b!1311333 (=> (not res!870631) (not e!748114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87685 (_ BitVec 32)) Bool)

(assert (=> b!1311333 (= res!870631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!870632 () Bool)

(assert (=> start!110838 (=> (not res!870632) (not e!748114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110838 (= res!870632 (validMask!0 mask!2040))))

(assert (=> start!110838 e!748114))

(assert (=> start!110838 tp!104233))

(declare-fun array_inv!31961 (array!87685) Bool)

(assert (=> start!110838 (array_inv!31961 _keys!1628)))

(assert (=> start!110838 true))

(assert (=> start!110838 tp_is_empty!35367))

(declare-fun e!748112 () Bool)

(declare-fun array_inv!31962 (array!87687) Bool)

(assert (=> start!110838 (and (array_inv!31962 _values!1354) e!748112)))

(declare-fun b!1311334 () Bool)

(declare-fun res!870628 () Bool)

(assert (=> b!1311334 (=> (not res!870628) (not e!748114))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311334 (= res!870628 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42869 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311335 () Bool)

(declare-fun res!870630 () Bool)

(assert (=> b!1311335 (=> (not res!870630) (not e!748114))))

(declare-datatypes ((List!30217 0))(
  ( (Nil!30214) (Cons!30213 (h!31422 (_ BitVec 64)) (t!43830 List!30217)) )
))
(declare-fun arrayNoDuplicates!0 (array!87685 (_ BitVec 32) List!30217) Bool)

(assert (=> b!1311335 (= res!870630 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30214))))

(declare-fun b!1311336 () Bool)

(declare-fun mapRes!54679 () Bool)

(assert (=> b!1311336 (= e!748112 (and e!748113 mapRes!54679))))

(declare-fun condMapEmpty!54679 () Bool)

(declare-fun mapDefault!54679 () ValueCell!16785)

(assert (=> b!1311336 (= condMapEmpty!54679 (= (arr!42319 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16785)) mapDefault!54679)))))

(declare-fun mapNonEmpty!54679 () Bool)

(declare-fun tp!104234 () Bool)

(assert (=> mapNonEmpty!54679 (= mapRes!54679 (and tp!104234 e!748111))))

(declare-fun mapKey!54679 () (_ BitVec 32))

(declare-fun mapValue!54679 () ValueCell!16785)

(declare-fun mapRest!54679 () (Array (_ BitVec 32) ValueCell!16785))

(assert (=> mapNonEmpty!54679 (= (arr!42319 _values!1354) (store mapRest!54679 mapKey!54679 mapValue!54679))))

(declare-fun b!1311337 () Bool)

(assert (=> b!1311337 (= e!748114 false)))

(declare-fun lt!585406 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52259)

(declare-fun zeroValue!1296 () V!52259)

(declare-datatypes ((tuple2!23052 0))(
  ( (tuple2!23053 (_1!11536 (_ BitVec 64)) (_2!11536 V!52259)) )
))
(declare-datatypes ((List!30218 0))(
  ( (Nil!30215) (Cons!30214 (h!31423 tuple2!23052) (t!43831 List!30218)) )
))
(declare-datatypes ((ListLongMap!20721 0))(
  ( (ListLongMap!20722 (toList!10376 List!30218)) )
))
(declare-fun contains!8462 (ListLongMap!20721 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5332 (array!87685 array!87687 (_ BitVec 32) (_ BitVec 32) V!52259 V!52259 (_ BitVec 32) Int) ListLongMap!20721)

(assert (=> b!1311337 (= lt!585406 (contains!8462 (getCurrentListMap!5332 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54679 () Bool)

(assert (=> mapIsEmpty!54679 mapRes!54679))

(assert (= (and start!110838 res!870632) b!1311332))

(assert (= (and b!1311332 res!870629) b!1311333))

(assert (= (and b!1311333 res!870631) b!1311335))

(assert (= (and b!1311335 res!870630) b!1311334))

(assert (= (and b!1311334 res!870628) b!1311337))

(assert (= (and b!1311336 condMapEmpty!54679) mapIsEmpty!54679))

(assert (= (and b!1311336 (not condMapEmpty!54679)) mapNonEmpty!54679))

(get-info :version)

(assert (= (and mapNonEmpty!54679 ((_ is ValueCellFull!16785) mapValue!54679)) b!1311330))

(assert (= (and b!1311336 ((_ is ValueCellFull!16785) mapDefault!54679)) b!1311331))

(assert (= start!110838 b!1311336))

(declare-fun m!1200841 () Bool)

(assert (=> b!1311335 m!1200841))

(declare-fun m!1200843 () Bool)

(assert (=> mapNonEmpty!54679 m!1200843))

(declare-fun m!1200845 () Bool)

(assert (=> b!1311337 m!1200845))

(assert (=> b!1311337 m!1200845))

(declare-fun m!1200847 () Bool)

(assert (=> b!1311337 m!1200847))

(declare-fun m!1200849 () Bool)

(assert (=> b!1311333 m!1200849))

(declare-fun m!1200851 () Bool)

(assert (=> start!110838 m!1200851))

(declare-fun m!1200853 () Bool)

(assert (=> start!110838 m!1200853))

(declare-fun m!1200855 () Bool)

(assert (=> start!110838 m!1200855))

(check-sat (not b!1311337) tp_is_empty!35367 (not start!110838) (not b!1311333) (not b!1311335) (not b_next!29637) b_and!47855 (not mapNonEmpty!54679))
(check-sat b_and!47855 (not b_next!29637))
