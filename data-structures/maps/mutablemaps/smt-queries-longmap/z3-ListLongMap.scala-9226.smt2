; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110742 () Bool)

(assert start!110742)

(declare-fun b_free!29541 () Bool)

(declare-fun b_next!29541 () Bool)

(assert (=> start!110742 (= b_free!29541 (not b_next!29541))))

(declare-fun tp!103946 () Bool)

(declare-fun b_and!47759 () Bool)

(assert (=> start!110742 (= tp!103946 b_and!47759)))

(declare-fun b!1309982 () Bool)

(declare-fun res!869712 () Bool)

(declare-fun e!747391 () Bool)

(assert (=> b!1309982 (=> (not res!869712) (not e!747391))))

(declare-datatypes ((array!87497 0))(
  ( (array!87498 (arr!42224 (Array (_ BitVec 32) (_ BitVec 64))) (size!42775 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87497)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309982 (= res!869712 (not (= (select (arr!42224 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1309983 () Bool)

(declare-fun e!747393 () Bool)

(declare-fun tp_is_empty!35271 () Bool)

(assert (=> b!1309983 (= e!747393 tp_is_empty!35271)))

(declare-fun b!1309984 () Bool)

(declare-fun e!747395 () Bool)

(declare-fun e!747394 () Bool)

(declare-fun mapRes!54535 () Bool)

(assert (=> b!1309984 (= e!747395 (and e!747394 mapRes!54535))))

(declare-fun condMapEmpty!54535 () Bool)

(declare-datatypes ((V!52131 0))(
  ( (V!52132 (val!17710 Int)) )
))
(declare-datatypes ((ValueCell!16737 0))(
  ( (ValueCellFull!16737 (v!20335 V!52131)) (EmptyCell!16737) )
))
(declare-datatypes ((array!87499 0))(
  ( (array!87500 (arr!42225 (Array (_ BitVec 32) ValueCell!16737)) (size!42776 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87499)

(declare-fun mapDefault!54535 () ValueCell!16737)

(assert (=> b!1309984 (= condMapEmpty!54535 (= (arr!42225 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16737)) mapDefault!54535)))))

(declare-fun b!1309985 () Bool)

(declare-fun res!869719 () Bool)

(assert (=> b!1309985 (=> (not res!869719) (not e!747391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309985 (= res!869719 (validKeyInArray!0 (select (arr!42224 _keys!1628) from!2020)))))

(declare-fun mapIsEmpty!54535 () Bool)

(assert (=> mapIsEmpty!54535 mapRes!54535))

(declare-fun mapNonEmpty!54535 () Bool)

(declare-fun tp!103945 () Bool)

(assert (=> mapNonEmpty!54535 (= mapRes!54535 (and tp!103945 e!747393))))

(declare-fun mapRest!54535 () (Array (_ BitVec 32) ValueCell!16737))

(declare-fun mapKey!54535 () (_ BitVec 32))

(declare-fun mapValue!54535 () ValueCell!16737)

(assert (=> mapNonEmpty!54535 (= (arr!42225 _values!1354) (store mapRest!54535 mapKey!54535 mapValue!54535))))

(declare-fun b!1309986 () Bool)

(assert (=> b!1309986 (= e!747391 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun minValue!1296 () V!52131)

(declare-fun zeroValue!1296 () V!52131)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22982 0))(
  ( (tuple2!22983 (_1!11501 (_ BitVec 64)) (_2!11501 V!52131)) )
))
(declare-datatypes ((List!30148 0))(
  ( (Nil!30145) (Cons!30144 (h!31353 tuple2!22982) (t!43761 List!30148)) )
))
(declare-datatypes ((ListLongMap!20651 0))(
  ( (ListLongMap!20652 (toList!10341 List!30148)) )
))
(declare-fun contains!8427 (ListLongMap!20651 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5297 (array!87497 array!87499 (_ BitVec 32) (_ BitVec 32) V!52131 V!52131 (_ BitVec 32) Int) ListLongMap!20651)

(assert (=> b!1309986 (contains!8427 (getCurrentListMap!5297 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43272 0))(
  ( (Unit!43273) )
))
(declare-fun lt!585262 () Unit!43272)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!10 (array!87497 array!87499 (_ BitVec 32) (_ BitVec 32) V!52131 V!52131 (_ BitVec 64) (_ BitVec 32) Int) Unit!43272)

(assert (=> b!1309986 (= lt!585262 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!10 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1309987 () Bool)

(declare-fun res!869713 () Bool)

(assert (=> b!1309987 (=> (not res!869713) (not e!747391))))

(assert (=> b!1309987 (= res!869713 (contains!8427 (getCurrentListMap!5297 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309988 () Bool)

(assert (=> b!1309988 (= e!747394 tp_is_empty!35271)))

(declare-fun b!1309989 () Bool)

(declare-fun res!869717 () Bool)

(assert (=> b!1309989 (=> (not res!869717) (not e!747391))))

(declare-datatypes ((List!30149 0))(
  ( (Nil!30146) (Cons!30145 (h!31354 (_ BitVec 64)) (t!43762 List!30149)) )
))
(declare-fun arrayNoDuplicates!0 (array!87497 (_ BitVec 32) List!30149) Bool)

(assert (=> b!1309989 (= res!869717 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30146))))

(declare-fun res!869715 () Bool)

(assert (=> start!110742 (=> (not res!869715) (not e!747391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110742 (= res!869715 (validMask!0 mask!2040))))

(assert (=> start!110742 e!747391))

(assert (=> start!110742 tp!103946))

(declare-fun array_inv!31903 (array!87497) Bool)

(assert (=> start!110742 (array_inv!31903 _keys!1628)))

(assert (=> start!110742 true))

(assert (=> start!110742 tp_is_empty!35271))

(declare-fun array_inv!31904 (array!87499) Bool)

(assert (=> start!110742 (and (array_inv!31904 _values!1354) e!747395)))

(declare-fun b!1309990 () Bool)

(declare-fun res!869714 () Bool)

(assert (=> b!1309990 (=> (not res!869714) (not e!747391))))

(assert (=> b!1309990 (= res!869714 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42775 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309991 () Bool)

(declare-fun res!869716 () Bool)

(assert (=> b!1309991 (=> (not res!869716) (not e!747391))))

(assert (=> b!1309991 (= res!869716 (and (= (size!42776 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42775 _keys!1628) (size!42776 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309992 () Bool)

(declare-fun res!869718 () Bool)

(assert (=> b!1309992 (=> (not res!869718) (not e!747391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87497 (_ BitVec 32)) Bool)

(assert (=> b!1309992 (= res!869718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309993 () Bool)

(declare-fun res!869720 () Bool)

(assert (=> b!1309993 (=> (not res!869720) (not e!747391))))

(assert (=> b!1309993 (= res!869720 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!110742 res!869715) b!1309991))

(assert (= (and b!1309991 res!869716) b!1309992))

(assert (= (and b!1309992 res!869718) b!1309989))

(assert (= (and b!1309989 res!869717) b!1309990))

(assert (= (and b!1309990 res!869714) b!1309987))

(assert (= (and b!1309987 res!869713) b!1309982))

(assert (= (and b!1309982 res!869712) b!1309985))

(assert (= (and b!1309985 res!869719) b!1309993))

(assert (= (and b!1309993 res!869720) b!1309986))

(assert (= (and b!1309984 condMapEmpty!54535) mapIsEmpty!54535))

(assert (= (and b!1309984 (not condMapEmpty!54535)) mapNonEmpty!54535))

(get-info :version)

(assert (= (and mapNonEmpty!54535 ((_ is ValueCellFull!16737) mapValue!54535)) b!1309983))

(assert (= (and b!1309984 ((_ is ValueCellFull!16737) mapDefault!54535)) b!1309988))

(assert (= start!110742 b!1309984))

(declare-fun m!1199903 () Bool)

(assert (=> start!110742 m!1199903))

(declare-fun m!1199905 () Bool)

(assert (=> start!110742 m!1199905))

(declare-fun m!1199907 () Bool)

(assert (=> start!110742 m!1199907))

(declare-fun m!1199909 () Bool)

(assert (=> b!1309982 m!1199909))

(assert (=> b!1309985 m!1199909))

(assert (=> b!1309985 m!1199909))

(declare-fun m!1199911 () Bool)

(assert (=> b!1309985 m!1199911))

(declare-fun m!1199913 () Bool)

(assert (=> mapNonEmpty!54535 m!1199913))

(declare-fun m!1199915 () Bool)

(assert (=> b!1309987 m!1199915))

(assert (=> b!1309987 m!1199915))

(declare-fun m!1199917 () Bool)

(assert (=> b!1309987 m!1199917))

(declare-fun m!1199919 () Bool)

(assert (=> b!1309986 m!1199919))

(assert (=> b!1309986 m!1199919))

(declare-fun m!1199921 () Bool)

(assert (=> b!1309986 m!1199921))

(declare-fun m!1199923 () Bool)

(assert (=> b!1309986 m!1199923))

(declare-fun m!1199925 () Bool)

(assert (=> b!1309989 m!1199925))

(declare-fun m!1199927 () Bool)

(assert (=> b!1309992 m!1199927))

(check-sat (not mapNonEmpty!54535) tp_is_empty!35271 (not b!1309986) (not start!110742) (not b!1309992) (not b!1309985) (not b!1309989) (not b_next!29541) (not b!1309987) b_and!47759)
(check-sat b_and!47759 (not b_next!29541))
