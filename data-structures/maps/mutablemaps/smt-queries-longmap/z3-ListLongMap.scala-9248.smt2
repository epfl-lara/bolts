; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110874 () Bool)

(assert start!110874)

(declare-fun b_free!29673 () Bool)

(declare-fun b_next!29673 () Bool)

(assert (=> start!110874 (= b_free!29673 (not b_next!29673))))

(declare-fun tp!104342 () Bool)

(declare-fun b_and!47891 () Bool)

(assert (=> start!110874 (= tp!104342 b_and!47891)))

(declare-fun res!871067 () Bool)

(declare-fun e!748381 () Bool)

(assert (=> start!110874 (=> (not res!871067) (not e!748381))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110874 (= res!871067 (validMask!0 mask!2040))))

(assert (=> start!110874 e!748381))

(assert (=> start!110874 tp!104342))

(declare-datatypes ((array!87757 0))(
  ( (array!87758 (arr!42354 (Array (_ BitVec 32) (_ BitVec 64))) (size!42905 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87757)

(declare-fun array_inv!31985 (array!87757) Bool)

(assert (=> start!110874 (array_inv!31985 _keys!1628)))

(assert (=> start!110874 true))

(declare-fun tp_is_empty!35403 () Bool)

(assert (=> start!110874 tp_is_empty!35403))

(declare-datatypes ((V!52307 0))(
  ( (V!52308 (val!17776 Int)) )
))
(declare-datatypes ((ValueCell!16803 0))(
  ( (ValueCellFull!16803 (v!20401 V!52307)) (EmptyCell!16803) )
))
(declare-datatypes ((array!87759 0))(
  ( (array!87760 (arr!42355 (Array (_ BitVec 32) ValueCell!16803)) (size!42906 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87759)

(declare-fun e!748383 () Bool)

(declare-fun array_inv!31986 (array!87759) Bool)

(assert (=> start!110874 (and (array_inv!31986 _values!1354) e!748383)))

(declare-fun b!1311926 () Bool)

(declare-fun e!748385 () Bool)

(assert (=> b!1311926 (= e!748385 tp_is_empty!35403)))

(declare-fun b!1311927 () Bool)

(declare-fun res!871070 () Bool)

(assert (=> b!1311927 (=> (not res!871070) (not e!748381))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311927 (= res!871070 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311928 () Bool)

(assert (=> b!1311928 (= e!748381 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52307)

(declare-fun zeroValue!1296 () V!52307)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23084 0))(
  ( (tuple2!23085 (_1!11552 (_ BitVec 64)) (_2!11552 V!52307)) )
))
(declare-datatypes ((List!30245 0))(
  ( (Nil!30242) (Cons!30241 (h!31450 tuple2!23084) (t!43858 List!30245)) )
))
(declare-datatypes ((ListLongMap!20753 0))(
  ( (ListLongMap!20754 (toList!10392 List!30245)) )
))
(declare-fun contains!8478 (ListLongMap!20753 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5348 (array!87757 array!87759 (_ BitVec 32) (_ BitVec 32) V!52307 V!52307 (_ BitVec 32) Int) ListLongMap!20753)

(assert (=> b!1311928 (contains!8478 (getCurrentListMap!5348 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43314 0))(
  ( (Unit!43315) )
))
(declare-fun lt!585460 () Unit!43314)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!10 (array!87757 array!87759 (_ BitVec 32) (_ BitVec 32) V!52307 V!52307 (_ BitVec 64) (_ BitVec 32) Int) Unit!43314)

(assert (=> b!1311928 (= lt!585460 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!10 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1311929 () Bool)

(declare-fun res!871069 () Bool)

(assert (=> b!1311929 (=> (not res!871069) (not e!748381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87757 (_ BitVec 32)) Bool)

(assert (=> b!1311929 (= res!871069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311930 () Bool)

(declare-fun res!871065 () Bool)

(assert (=> b!1311930 (=> (not res!871065) (not e!748381))))

(declare-datatypes ((List!30246 0))(
  ( (Nil!30243) (Cons!30242 (h!31451 (_ BitVec 64)) (t!43859 List!30246)) )
))
(declare-fun arrayNoDuplicates!0 (array!87757 (_ BitVec 32) List!30246) Bool)

(assert (=> b!1311930 (= res!871065 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30243))))

(declare-fun mapNonEmpty!54733 () Bool)

(declare-fun mapRes!54733 () Bool)

(declare-fun tp!104341 () Bool)

(assert (=> mapNonEmpty!54733 (= mapRes!54733 (and tp!104341 e!748385))))

(declare-fun mapRest!54733 () (Array (_ BitVec 32) ValueCell!16803))

(declare-fun mapValue!54733 () ValueCell!16803)

(declare-fun mapKey!54733 () (_ BitVec 32))

(assert (=> mapNonEmpty!54733 (= (arr!42355 _values!1354) (store mapRest!54733 mapKey!54733 mapValue!54733))))

(declare-fun b!1311931 () Bool)

(declare-fun e!748384 () Bool)

(assert (=> b!1311931 (= e!748384 tp_is_empty!35403)))

(declare-fun b!1311932 () Bool)

(declare-fun res!871068 () Bool)

(assert (=> b!1311932 (=> (not res!871068) (not e!748381))))

(assert (=> b!1311932 (= res!871068 (and (= (size!42906 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42905 _keys!1628) (size!42906 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54733 () Bool)

(assert (=> mapIsEmpty!54733 mapRes!54733))

(declare-fun b!1311933 () Bool)

(declare-fun res!871064 () Bool)

(assert (=> b!1311933 (=> (not res!871064) (not e!748381))))

(assert (=> b!1311933 (= res!871064 (not (= (select (arr!42354 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1311934 () Bool)

(declare-fun res!871066 () Bool)

(assert (=> b!1311934 (=> (not res!871066) (not e!748381))))

(assert (=> b!1311934 (= res!871066 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42905 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311935 () Bool)

(declare-fun res!871063 () Bool)

(assert (=> b!1311935 (=> (not res!871063) (not e!748381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311935 (= res!871063 (validKeyInArray!0 (select (arr!42354 _keys!1628) from!2020)))))

(declare-fun b!1311936 () Bool)

(declare-fun res!871062 () Bool)

(assert (=> b!1311936 (=> (not res!871062) (not e!748381))))

(assert (=> b!1311936 (= res!871062 (contains!8478 (getCurrentListMap!5348 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311937 () Bool)

(assert (=> b!1311937 (= e!748383 (and e!748384 mapRes!54733))))

(declare-fun condMapEmpty!54733 () Bool)

(declare-fun mapDefault!54733 () ValueCell!16803)

(assert (=> b!1311937 (= condMapEmpty!54733 (= (arr!42355 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16803)) mapDefault!54733)))))

(assert (= (and start!110874 res!871067) b!1311932))

(assert (= (and b!1311932 res!871068) b!1311929))

(assert (= (and b!1311929 res!871069) b!1311930))

(assert (= (and b!1311930 res!871065) b!1311934))

(assert (= (and b!1311934 res!871066) b!1311936))

(assert (= (and b!1311936 res!871062) b!1311933))

(assert (= (and b!1311933 res!871064) b!1311935))

(assert (= (and b!1311935 res!871063) b!1311927))

(assert (= (and b!1311927 res!871070) b!1311928))

(assert (= (and b!1311937 condMapEmpty!54733) mapIsEmpty!54733))

(assert (= (and b!1311937 (not condMapEmpty!54733)) mapNonEmpty!54733))

(get-info :version)

(assert (= (and mapNonEmpty!54733 ((_ is ValueCellFull!16803) mapValue!54733)) b!1311926))

(assert (= (and b!1311937 ((_ is ValueCellFull!16803) mapDefault!54733)) b!1311931))

(assert (= start!110874 b!1311937))

(declare-fun m!1201259 () Bool)

(assert (=> b!1311930 m!1201259))

(declare-fun m!1201261 () Bool)

(assert (=> start!110874 m!1201261))

(declare-fun m!1201263 () Bool)

(assert (=> start!110874 m!1201263))

(declare-fun m!1201265 () Bool)

(assert (=> start!110874 m!1201265))

(declare-fun m!1201267 () Bool)

(assert (=> b!1311929 m!1201267))

(declare-fun m!1201269 () Bool)

(assert (=> b!1311936 m!1201269))

(assert (=> b!1311936 m!1201269))

(declare-fun m!1201271 () Bool)

(assert (=> b!1311936 m!1201271))

(declare-fun m!1201273 () Bool)

(assert (=> b!1311928 m!1201273))

(assert (=> b!1311928 m!1201273))

(declare-fun m!1201275 () Bool)

(assert (=> b!1311928 m!1201275))

(declare-fun m!1201277 () Bool)

(assert (=> b!1311928 m!1201277))

(declare-fun m!1201279 () Bool)

(assert (=> b!1311935 m!1201279))

(assert (=> b!1311935 m!1201279))

(declare-fun m!1201281 () Bool)

(assert (=> b!1311935 m!1201281))

(declare-fun m!1201283 () Bool)

(assert (=> mapNonEmpty!54733 m!1201283))

(assert (=> b!1311933 m!1201279))

(check-sat (not b!1311930) (not mapNonEmpty!54733) (not b!1311935) b_and!47891 (not b_next!29673) (not start!110874) tp_is_empty!35403 (not b!1311928) (not b!1311929) (not b!1311936))
(check-sat b_and!47891 (not b_next!29673))
