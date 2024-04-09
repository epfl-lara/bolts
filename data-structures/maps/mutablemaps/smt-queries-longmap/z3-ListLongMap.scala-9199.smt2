; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110580 () Bool)

(assert start!110580)

(declare-fun b_free!29379 () Bool)

(declare-fun b_next!29379 () Bool)

(assert (=> start!110580 (= b_free!29379 (not b_next!29379))))

(declare-fun tp!103459 () Bool)

(declare-fun b_and!47597 () Bool)

(assert (=> start!110580 (= tp!103459 b_and!47597)))

(declare-fun b!1307586 () Bool)

(declare-fun res!868046 () Bool)

(declare-fun e!746176 () Bool)

(assert (=> b!1307586 (=> (not res!868046) (not e!746176))))

(declare-datatypes ((array!87191 0))(
  ( (array!87192 (arr!42071 (Array (_ BitVec 32) (_ BitVec 64))) (size!42622 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87191)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51915 0))(
  ( (V!51916 (val!17629 Int)) )
))
(declare-datatypes ((ValueCell!16656 0))(
  ( (ValueCellFull!16656 (v!20254 V!51915)) (EmptyCell!16656) )
))
(declare-datatypes ((array!87193 0))(
  ( (array!87194 (arr!42072 (Array (_ BitVec 32) ValueCell!16656)) (size!42623 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87193)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307586 (= res!868046 (and (= (size!42623 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42622 _keys!1628) (size!42623 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!868047 () Bool)

(assert (=> start!110580 (=> (not res!868047) (not e!746176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110580 (= res!868047 (validMask!0 mask!2040))))

(assert (=> start!110580 e!746176))

(assert (=> start!110580 tp!103459))

(declare-fun array_inv!31799 (array!87191) Bool)

(assert (=> start!110580 (array_inv!31799 _keys!1628)))

(assert (=> start!110580 true))

(declare-fun tp_is_empty!35109 () Bool)

(assert (=> start!110580 tp_is_empty!35109))

(declare-fun e!746177 () Bool)

(declare-fun array_inv!31800 (array!87193) Bool)

(assert (=> start!110580 (and (array_inv!31800 _values!1354) e!746177)))

(declare-fun mapIsEmpty!54292 () Bool)

(declare-fun mapRes!54292 () Bool)

(assert (=> mapIsEmpty!54292 mapRes!54292))

(declare-fun b!1307587 () Bool)

(assert (=> b!1307587 (= e!746176 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51915)

(declare-fun zeroValue!1296 () V!51915)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585019 () Bool)

(declare-datatypes ((tuple2!22860 0))(
  ( (tuple2!22861 (_1!11440 (_ BitVec 64)) (_2!11440 V!51915)) )
))
(declare-datatypes ((List!30033 0))(
  ( (Nil!30030) (Cons!30029 (h!31238 tuple2!22860) (t!43646 List!30033)) )
))
(declare-datatypes ((ListLongMap!20529 0))(
  ( (ListLongMap!20530 (toList!10280 List!30033)) )
))
(declare-fun contains!8366 (ListLongMap!20529 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5236 (array!87191 array!87193 (_ BitVec 32) (_ BitVec 32) V!51915 V!51915 (_ BitVec 32) Int) ListLongMap!20529)

(assert (=> b!1307587 (= lt!585019 (contains!8366 (getCurrentListMap!5236 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307588 () Bool)

(declare-fun e!746180 () Bool)

(assert (=> b!1307588 (= e!746177 (and e!746180 mapRes!54292))))

(declare-fun condMapEmpty!54292 () Bool)

(declare-fun mapDefault!54292 () ValueCell!16656)

(assert (=> b!1307588 (= condMapEmpty!54292 (= (arr!42072 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16656)) mapDefault!54292)))))

(declare-fun b!1307589 () Bool)

(declare-fun res!868049 () Bool)

(assert (=> b!1307589 (=> (not res!868049) (not e!746176))))

(declare-datatypes ((List!30034 0))(
  ( (Nil!30031) (Cons!30030 (h!31239 (_ BitVec 64)) (t!43647 List!30034)) )
))
(declare-fun arrayNoDuplicates!0 (array!87191 (_ BitVec 32) List!30034) Bool)

(assert (=> b!1307589 (= res!868049 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30031))))

(declare-fun mapNonEmpty!54292 () Bool)

(declare-fun tp!103460 () Bool)

(declare-fun e!746178 () Bool)

(assert (=> mapNonEmpty!54292 (= mapRes!54292 (and tp!103460 e!746178))))

(declare-fun mapKey!54292 () (_ BitVec 32))

(declare-fun mapRest!54292 () (Array (_ BitVec 32) ValueCell!16656))

(declare-fun mapValue!54292 () ValueCell!16656)

(assert (=> mapNonEmpty!54292 (= (arr!42072 _values!1354) (store mapRest!54292 mapKey!54292 mapValue!54292))))

(declare-fun b!1307590 () Bool)

(declare-fun res!868045 () Bool)

(assert (=> b!1307590 (=> (not res!868045) (not e!746176))))

(assert (=> b!1307590 (= res!868045 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42622 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307591 () Bool)

(assert (=> b!1307591 (= e!746180 tp_is_empty!35109)))

(declare-fun b!1307592 () Bool)

(assert (=> b!1307592 (= e!746178 tp_is_empty!35109)))

(declare-fun b!1307593 () Bool)

(declare-fun res!868048 () Bool)

(assert (=> b!1307593 (=> (not res!868048) (not e!746176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87191 (_ BitVec 32)) Bool)

(assert (=> b!1307593 (= res!868048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110580 res!868047) b!1307586))

(assert (= (and b!1307586 res!868046) b!1307593))

(assert (= (and b!1307593 res!868048) b!1307589))

(assert (= (and b!1307589 res!868049) b!1307590))

(assert (= (and b!1307590 res!868045) b!1307587))

(assert (= (and b!1307588 condMapEmpty!54292) mapIsEmpty!54292))

(assert (= (and b!1307588 (not condMapEmpty!54292)) mapNonEmpty!54292))

(get-info :version)

(assert (= (and mapNonEmpty!54292 ((_ is ValueCellFull!16656) mapValue!54292)) b!1307592))

(assert (= (and b!1307588 ((_ is ValueCellFull!16656) mapDefault!54292)) b!1307591))

(assert (= start!110580 b!1307588))

(declare-fun m!1198237 () Bool)

(assert (=> b!1307589 m!1198237))

(declare-fun m!1198239 () Bool)

(assert (=> mapNonEmpty!54292 m!1198239))

(declare-fun m!1198241 () Bool)

(assert (=> b!1307593 m!1198241))

(declare-fun m!1198243 () Bool)

(assert (=> b!1307587 m!1198243))

(assert (=> b!1307587 m!1198243))

(declare-fun m!1198245 () Bool)

(assert (=> b!1307587 m!1198245))

(declare-fun m!1198247 () Bool)

(assert (=> start!110580 m!1198247))

(declare-fun m!1198249 () Bool)

(assert (=> start!110580 m!1198249))

(declare-fun m!1198251 () Bool)

(assert (=> start!110580 m!1198251))

(check-sat (not start!110580) (not b!1307589) b_and!47597 (not b!1307593) (not mapNonEmpty!54292) tp_is_empty!35109 (not b_next!29379) (not b!1307587))
(check-sat b_and!47597 (not b_next!29379))
