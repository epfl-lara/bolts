; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110862 () Bool)

(assert start!110862)

(declare-fun b_free!29661 () Bool)

(declare-fun b_next!29661 () Bool)

(assert (=> start!110862 (= b_free!29661 (not b_next!29661))))

(declare-fun tp!104305 () Bool)

(declare-fun b_and!47879 () Bool)

(assert (=> start!110862 (= tp!104305 b_and!47879)))

(declare-fun b!1311710 () Bool)

(declare-fun res!870900 () Bool)

(declare-fun e!748294 () Bool)

(assert (=> b!1311710 (=> (not res!870900) (not e!748294))))

(declare-datatypes ((array!87733 0))(
  ( (array!87734 (arr!42342 (Array (_ BitVec 32) (_ BitVec 64))) (size!42893 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87733)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311710 (= res!870900 (validKeyInArray!0 (select (arr!42342 _keys!1628) from!2020)))))

(declare-fun b!1311711 () Bool)

(declare-fun res!870904 () Bool)

(assert (=> b!1311711 (=> (not res!870904) (not e!748294))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52291 0))(
  ( (V!52292 (val!17770 Int)) )
))
(declare-datatypes ((ValueCell!16797 0))(
  ( (ValueCellFull!16797 (v!20395 V!52291)) (EmptyCell!16797) )
))
(declare-datatypes ((array!87735 0))(
  ( (array!87736 (arr!42343 (Array (_ BitVec 32) ValueCell!16797)) (size!42894 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87735)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311711 (= res!870904 (and (= (size!42894 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42893 _keys!1628) (size!42894 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311712 () Bool)

(declare-fun e!748295 () Bool)

(declare-fun tp_is_empty!35391 () Bool)

(assert (=> b!1311712 (= e!748295 tp_is_empty!35391)))

(declare-fun b!1311713 () Bool)

(assert (=> b!1311713 (= e!748294 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52291)

(declare-fun zeroValue!1296 () V!52291)

(declare-datatypes ((tuple2!23076 0))(
  ( (tuple2!23077 (_1!11548 (_ BitVec 64)) (_2!11548 V!52291)) )
))
(declare-datatypes ((List!30238 0))(
  ( (Nil!30235) (Cons!30234 (h!31443 tuple2!23076) (t!43851 List!30238)) )
))
(declare-datatypes ((ListLongMap!20745 0))(
  ( (ListLongMap!20746 (toList!10388 List!30238)) )
))
(declare-fun contains!8474 (ListLongMap!20745 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5344 (array!87733 array!87735 (_ BitVec 32) (_ BitVec 32) V!52291 V!52291 (_ BitVec 32) Int) ListLongMap!20745)

(assert (=> b!1311713 (contains!8474 (getCurrentListMap!5344 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43310 0))(
  ( (Unit!43311) )
))
(declare-fun lt!585442 () Unit!43310)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!8 (array!87733 array!87735 (_ BitVec 32) (_ BitVec 32) V!52291 V!52291 (_ BitVec 64) (_ BitVec 32) Int) Unit!43310)

(assert (=> b!1311713 (= lt!585442 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!8 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun mapNonEmpty!54715 () Bool)

(declare-fun mapRes!54715 () Bool)

(declare-fun tp!104306 () Bool)

(assert (=> mapNonEmpty!54715 (= mapRes!54715 (and tp!104306 e!748295))))

(declare-fun mapRest!54715 () (Array (_ BitVec 32) ValueCell!16797))

(declare-fun mapKey!54715 () (_ BitVec 32))

(declare-fun mapValue!54715 () ValueCell!16797)

(assert (=> mapNonEmpty!54715 (= (arr!42343 _values!1354) (store mapRest!54715 mapKey!54715 mapValue!54715))))

(declare-fun res!870901 () Bool)

(assert (=> start!110862 (=> (not res!870901) (not e!748294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110862 (= res!870901 (validMask!0 mask!2040))))

(assert (=> start!110862 e!748294))

(assert (=> start!110862 tp!104305))

(declare-fun array_inv!31977 (array!87733) Bool)

(assert (=> start!110862 (array_inv!31977 _keys!1628)))

(assert (=> start!110862 true))

(assert (=> start!110862 tp_is_empty!35391))

(declare-fun e!748293 () Bool)

(declare-fun array_inv!31978 (array!87735) Bool)

(assert (=> start!110862 (and (array_inv!31978 _values!1354) e!748293)))

(declare-fun b!1311714 () Bool)

(declare-fun res!870908 () Bool)

(assert (=> b!1311714 (=> (not res!870908) (not e!748294))))

(assert (=> b!1311714 (= res!870908 (contains!8474 (getCurrentListMap!5344 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54715 () Bool)

(assert (=> mapIsEmpty!54715 mapRes!54715))

(declare-fun b!1311715 () Bool)

(declare-fun res!870903 () Bool)

(assert (=> b!1311715 (=> (not res!870903) (not e!748294))))

(assert (=> b!1311715 (= res!870903 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311716 () Bool)

(declare-fun res!870902 () Bool)

(assert (=> b!1311716 (=> (not res!870902) (not e!748294))))

(assert (=> b!1311716 (= res!870902 (not (= (select (arr!42342 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1311717 () Bool)

(declare-fun res!870905 () Bool)

(assert (=> b!1311717 (=> (not res!870905) (not e!748294))))

(assert (=> b!1311717 (= res!870905 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42893 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311718 () Bool)

(declare-fun e!748292 () Bool)

(assert (=> b!1311718 (= e!748293 (and e!748292 mapRes!54715))))

(declare-fun condMapEmpty!54715 () Bool)

(declare-fun mapDefault!54715 () ValueCell!16797)

(assert (=> b!1311718 (= condMapEmpty!54715 (= (arr!42343 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16797)) mapDefault!54715)))))

(declare-fun b!1311719 () Bool)

(declare-fun res!870906 () Bool)

(assert (=> b!1311719 (=> (not res!870906) (not e!748294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87733 (_ BitVec 32)) Bool)

(assert (=> b!1311719 (= res!870906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311720 () Bool)

(declare-fun res!870907 () Bool)

(assert (=> b!1311720 (=> (not res!870907) (not e!748294))))

(declare-datatypes ((List!30239 0))(
  ( (Nil!30236) (Cons!30235 (h!31444 (_ BitVec 64)) (t!43852 List!30239)) )
))
(declare-fun arrayNoDuplicates!0 (array!87733 (_ BitVec 32) List!30239) Bool)

(assert (=> b!1311720 (= res!870907 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30236))))

(declare-fun b!1311721 () Bool)

(assert (=> b!1311721 (= e!748292 tp_is_empty!35391)))

(assert (= (and start!110862 res!870901) b!1311711))

(assert (= (and b!1311711 res!870904) b!1311719))

(assert (= (and b!1311719 res!870906) b!1311720))

(assert (= (and b!1311720 res!870907) b!1311717))

(assert (= (and b!1311717 res!870905) b!1311714))

(assert (= (and b!1311714 res!870908) b!1311716))

(assert (= (and b!1311716 res!870902) b!1311710))

(assert (= (and b!1311710 res!870900) b!1311715))

(assert (= (and b!1311715 res!870903) b!1311713))

(assert (= (and b!1311718 condMapEmpty!54715) mapIsEmpty!54715))

(assert (= (and b!1311718 (not condMapEmpty!54715)) mapNonEmpty!54715))

(get-info :version)

(assert (= (and mapNonEmpty!54715 ((_ is ValueCellFull!16797) mapValue!54715)) b!1311712))

(assert (= (and b!1311718 ((_ is ValueCellFull!16797) mapDefault!54715)) b!1311721))

(assert (= start!110862 b!1311718))

(declare-fun m!1201103 () Bool)

(assert (=> b!1311714 m!1201103))

(assert (=> b!1311714 m!1201103))

(declare-fun m!1201105 () Bool)

(assert (=> b!1311714 m!1201105))

(declare-fun m!1201107 () Bool)

(assert (=> start!110862 m!1201107))

(declare-fun m!1201109 () Bool)

(assert (=> start!110862 m!1201109))

(declare-fun m!1201111 () Bool)

(assert (=> start!110862 m!1201111))

(declare-fun m!1201113 () Bool)

(assert (=> b!1311710 m!1201113))

(assert (=> b!1311710 m!1201113))

(declare-fun m!1201115 () Bool)

(assert (=> b!1311710 m!1201115))

(declare-fun m!1201117 () Bool)

(assert (=> b!1311713 m!1201117))

(assert (=> b!1311713 m!1201117))

(declare-fun m!1201119 () Bool)

(assert (=> b!1311713 m!1201119))

(declare-fun m!1201121 () Bool)

(assert (=> b!1311713 m!1201121))

(declare-fun m!1201123 () Bool)

(assert (=> mapNonEmpty!54715 m!1201123))

(declare-fun m!1201125 () Bool)

(assert (=> b!1311720 m!1201125))

(assert (=> b!1311716 m!1201113))

(declare-fun m!1201127 () Bool)

(assert (=> b!1311719 m!1201127))

(check-sat b_and!47879 (not mapNonEmpty!54715) (not b!1311713) tp_is_empty!35391 (not start!110862) (not b!1311720) (not b!1311714) (not b_next!29661) (not b!1311719) (not b!1311710))
(check-sat b_and!47879 (not b_next!29661))
