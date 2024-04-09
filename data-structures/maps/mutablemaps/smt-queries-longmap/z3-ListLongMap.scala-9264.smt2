; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110970 () Bool)

(assert start!110970)

(declare-fun b_free!29769 () Bool)

(declare-fun b_next!29769 () Bool)

(assert (=> start!110970 (= b_free!29769 (not b_next!29769))))

(declare-fun tp!104629 () Bool)

(declare-fun b_and!47987 () Bool)

(assert (=> start!110970 (= tp!104629 b_and!47987)))

(declare-fun b!1313265 () Bool)

(declare-fun e!749104 () Bool)

(assert (=> b!1313265 (= e!749104 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52435 0))(
  ( (V!52436 (val!17824 Int)) )
))
(declare-fun minValue!1296 () V!52435)

(declare-datatypes ((ValueCell!16851 0))(
  ( (ValueCellFull!16851 (v!20449 V!52435)) (EmptyCell!16851) )
))
(declare-datatypes ((array!87943 0))(
  ( (array!87944 (arr!42447 (Array (_ BitVec 32) ValueCell!16851)) (size!42998 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87943)

(declare-fun zeroValue!1296 () V!52435)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585595 () Bool)

(declare-datatypes ((array!87945 0))(
  ( (array!87946 (arr!42448 (Array (_ BitVec 32) (_ BitVec 64))) (size!42999 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87945)

(declare-datatypes ((tuple2!23152 0))(
  ( (tuple2!23153 (_1!11586 (_ BitVec 64)) (_2!11586 V!52435)) )
))
(declare-datatypes ((List!30314 0))(
  ( (Nil!30311) (Cons!30310 (h!31519 tuple2!23152) (t!43927 List!30314)) )
))
(declare-datatypes ((ListLongMap!20821 0))(
  ( (ListLongMap!20822 (toList!10426 List!30314)) )
))
(declare-fun contains!8512 (ListLongMap!20821 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5382 (array!87945 array!87943 (_ BitVec 32) (_ BitVec 32) V!52435 V!52435 (_ BitVec 32) Int) ListLongMap!20821)

(assert (=> b!1313265 (= lt!585595 (contains!8512 (getCurrentListMap!5382 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313266 () Bool)

(declare-fun res!871973 () Bool)

(assert (=> b!1313266 (=> (not res!871973) (not e!749104))))

(assert (=> b!1313266 (= res!871973 (and (= (size!42998 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42999 _keys!1628) (size!42998 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313267 () Bool)

(declare-fun res!871972 () Bool)

(assert (=> b!1313267 (=> (not res!871972) (not e!749104))))

(assert (=> b!1313267 (= res!871972 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42999 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54877 () Bool)

(declare-fun mapRes!54877 () Bool)

(declare-fun tp!104630 () Bool)

(declare-fun e!749101 () Bool)

(assert (=> mapNonEmpty!54877 (= mapRes!54877 (and tp!104630 e!749101))))

(declare-fun mapKey!54877 () (_ BitVec 32))

(declare-fun mapRest!54877 () (Array (_ BitVec 32) ValueCell!16851))

(declare-fun mapValue!54877 () ValueCell!16851)

(assert (=> mapNonEmpty!54877 (= (arr!42447 _values!1354) (store mapRest!54877 mapKey!54877 mapValue!54877))))

(declare-fun b!1313268 () Bool)

(declare-fun res!871971 () Bool)

(assert (=> b!1313268 (=> (not res!871971) (not e!749104))))

(declare-datatypes ((List!30315 0))(
  ( (Nil!30312) (Cons!30311 (h!31520 (_ BitVec 64)) (t!43928 List!30315)) )
))
(declare-fun arrayNoDuplicates!0 (array!87945 (_ BitVec 32) List!30315) Bool)

(assert (=> b!1313268 (= res!871971 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30312))))

(declare-fun b!1313269 () Bool)

(declare-fun tp_is_empty!35499 () Bool)

(assert (=> b!1313269 (= e!749101 tp_is_empty!35499)))

(declare-fun res!871970 () Bool)

(assert (=> start!110970 (=> (not res!871970) (not e!749104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110970 (= res!871970 (validMask!0 mask!2040))))

(assert (=> start!110970 e!749104))

(assert (=> start!110970 tp!104629))

(declare-fun array_inv!32045 (array!87945) Bool)

(assert (=> start!110970 (array_inv!32045 _keys!1628)))

(assert (=> start!110970 true))

(assert (=> start!110970 tp_is_empty!35499))

(declare-fun e!749102 () Bool)

(declare-fun array_inv!32046 (array!87943) Bool)

(assert (=> start!110970 (and (array_inv!32046 _values!1354) e!749102)))

(declare-fun b!1313270 () Bool)

(declare-fun e!749103 () Bool)

(assert (=> b!1313270 (= e!749102 (and e!749103 mapRes!54877))))

(declare-fun condMapEmpty!54877 () Bool)

(declare-fun mapDefault!54877 () ValueCell!16851)

(assert (=> b!1313270 (= condMapEmpty!54877 (= (arr!42447 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16851)) mapDefault!54877)))))

(declare-fun b!1313271 () Bool)

(declare-fun res!871969 () Bool)

(assert (=> b!1313271 (=> (not res!871969) (not e!749104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87945 (_ BitVec 32)) Bool)

(assert (=> b!1313271 (= res!871969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54877 () Bool)

(assert (=> mapIsEmpty!54877 mapRes!54877))

(declare-fun b!1313272 () Bool)

(assert (=> b!1313272 (= e!749103 tp_is_empty!35499)))

(assert (= (and start!110970 res!871970) b!1313266))

(assert (= (and b!1313266 res!871973) b!1313271))

(assert (= (and b!1313271 res!871969) b!1313268))

(assert (= (and b!1313268 res!871971) b!1313267))

(assert (= (and b!1313267 res!871972) b!1313265))

(assert (= (and b!1313270 condMapEmpty!54877) mapIsEmpty!54877))

(assert (= (and b!1313270 (not condMapEmpty!54877)) mapNonEmpty!54877))

(get-info :version)

(assert (= (and mapNonEmpty!54877 ((_ is ValueCellFull!16851) mapValue!54877)) b!1313269))

(assert (= (and b!1313270 ((_ is ValueCellFull!16851) mapDefault!54877)) b!1313272))

(assert (= start!110970 b!1313270))

(declare-fun m!1202179 () Bool)

(assert (=> b!1313268 m!1202179))

(declare-fun m!1202181 () Bool)

(assert (=> start!110970 m!1202181))

(declare-fun m!1202183 () Bool)

(assert (=> start!110970 m!1202183))

(declare-fun m!1202185 () Bool)

(assert (=> start!110970 m!1202185))

(declare-fun m!1202187 () Bool)

(assert (=> b!1313271 m!1202187))

(declare-fun m!1202189 () Bool)

(assert (=> b!1313265 m!1202189))

(assert (=> b!1313265 m!1202189))

(declare-fun m!1202191 () Bool)

(assert (=> b!1313265 m!1202191))

(declare-fun m!1202193 () Bool)

(assert (=> mapNonEmpty!54877 m!1202193))

(check-sat b_and!47987 (not b!1313265) (not b!1313268) (not start!110970) tp_is_empty!35499 (not b_next!29769) (not b!1313271) (not mapNonEmpty!54877))
(check-sat b_and!47987 (not b_next!29769))
