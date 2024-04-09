; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110772 () Bool)

(assert start!110772)

(declare-fun b_free!29571 () Bool)

(declare-fun b_next!29571 () Bool)

(assert (=> start!110772 (= b_free!29571 (not b_next!29571))))

(declare-fun tp!104035 () Bool)

(declare-fun b_and!47789 () Bool)

(assert (=> start!110772 (= tp!104035 b_and!47789)))

(declare-fun b!1310522 () Bool)

(declare-fun res!870119 () Bool)

(declare-fun e!747617 () Bool)

(assert (=> b!1310522 (=> (not res!870119) (not e!747617))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87557 0))(
  ( (array!87558 (arr!42254 (Array (_ BitVec 32) (_ BitVec 64))) (size!42805 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87557)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52171 0))(
  ( (V!52172 (val!17725 Int)) )
))
(declare-fun minValue!1296 () V!52171)

(declare-datatypes ((ValueCell!16752 0))(
  ( (ValueCellFull!16752 (v!20350 V!52171)) (EmptyCell!16752) )
))
(declare-datatypes ((array!87559 0))(
  ( (array!87560 (arr!42255 (Array (_ BitVec 32) ValueCell!16752)) (size!42806 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87559)

(declare-fun zeroValue!1296 () V!52171)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23006 0))(
  ( (tuple2!23007 (_1!11513 (_ BitVec 64)) (_2!11513 V!52171)) )
))
(declare-datatypes ((List!30170 0))(
  ( (Nil!30167) (Cons!30166 (h!31375 tuple2!23006) (t!43783 List!30170)) )
))
(declare-datatypes ((ListLongMap!20675 0))(
  ( (ListLongMap!20676 (toList!10353 List!30170)) )
))
(declare-fun contains!8439 (ListLongMap!20675 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5309 (array!87557 array!87559 (_ BitVec 32) (_ BitVec 32) V!52171 V!52171 (_ BitVec 32) Int) ListLongMap!20675)

(assert (=> b!1310522 (= res!870119 (contains!8439 (getCurrentListMap!5309 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310523 () Bool)

(assert (=> b!1310523 (= e!747617 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(assert (=> b!1310523 (contains!8439 (getCurrentListMap!5309 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43292 0))(
  ( (Unit!43293) )
))
(declare-fun lt!585307 () Unit!43292)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!20 (array!87557 array!87559 (_ BitVec 32) (_ BitVec 32) V!52171 V!52171 (_ BitVec 64) (_ BitVec 32) Int) Unit!43292)

(assert (=> b!1310523 (= lt!585307 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!20 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310524 () Bool)

(declare-fun res!870124 () Bool)

(assert (=> b!1310524 (=> (not res!870124) (not e!747617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310524 (= res!870124 (validKeyInArray!0 (select (arr!42254 _keys!1628) from!2020)))))

(declare-fun b!1310526 () Bool)

(declare-fun res!870125 () Bool)

(assert (=> b!1310526 (=> (not res!870125) (not e!747617))))

(assert (=> b!1310526 (= res!870125 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310527 () Bool)

(declare-fun res!870120 () Bool)

(assert (=> b!1310527 (=> (not res!870120) (not e!747617))))

(declare-datatypes ((List!30171 0))(
  ( (Nil!30168) (Cons!30167 (h!31376 (_ BitVec 64)) (t!43784 List!30171)) )
))
(declare-fun arrayNoDuplicates!0 (array!87557 (_ BitVec 32) List!30171) Bool)

(assert (=> b!1310527 (= res!870120 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30168))))

(declare-fun b!1310528 () Bool)

(declare-fun e!747618 () Bool)

(declare-fun tp_is_empty!35301 () Bool)

(assert (=> b!1310528 (= e!747618 tp_is_empty!35301)))

(declare-fun b!1310529 () Bool)

(declare-fun res!870123 () Bool)

(assert (=> b!1310529 (=> (not res!870123) (not e!747617))))

(assert (=> b!1310529 (= res!870123 (and (= (size!42806 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42805 _keys!1628) (size!42806 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54580 () Bool)

(declare-fun mapRes!54580 () Bool)

(assert (=> mapIsEmpty!54580 mapRes!54580))

(declare-fun mapNonEmpty!54580 () Bool)

(declare-fun tp!104036 () Bool)

(declare-fun e!747616 () Bool)

(assert (=> mapNonEmpty!54580 (= mapRes!54580 (and tp!104036 e!747616))))

(declare-fun mapRest!54580 () (Array (_ BitVec 32) ValueCell!16752))

(declare-fun mapKey!54580 () (_ BitVec 32))

(declare-fun mapValue!54580 () ValueCell!16752)

(assert (=> mapNonEmpty!54580 (= (arr!42255 _values!1354) (store mapRest!54580 mapKey!54580 mapValue!54580))))

(declare-fun b!1310530 () Bool)

(declare-fun e!747620 () Bool)

(assert (=> b!1310530 (= e!747620 (and e!747618 mapRes!54580))))

(declare-fun condMapEmpty!54580 () Bool)

(declare-fun mapDefault!54580 () ValueCell!16752)

(assert (=> b!1310530 (= condMapEmpty!54580 (= (arr!42255 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16752)) mapDefault!54580)))))

(declare-fun b!1310531 () Bool)

(declare-fun res!870121 () Bool)

(assert (=> b!1310531 (=> (not res!870121) (not e!747617))))

(assert (=> b!1310531 (= res!870121 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42805 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!870122 () Bool)

(assert (=> start!110772 (=> (not res!870122) (not e!747617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110772 (= res!870122 (validMask!0 mask!2040))))

(assert (=> start!110772 e!747617))

(assert (=> start!110772 tp!104035))

(declare-fun array_inv!31923 (array!87557) Bool)

(assert (=> start!110772 (array_inv!31923 _keys!1628)))

(assert (=> start!110772 true))

(assert (=> start!110772 tp_is_empty!35301))

(declare-fun array_inv!31924 (array!87559) Bool)

(assert (=> start!110772 (and (array_inv!31924 _values!1354) e!747620)))

(declare-fun b!1310525 () Bool)

(declare-fun res!870117 () Bool)

(assert (=> b!1310525 (=> (not res!870117) (not e!747617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87557 (_ BitVec 32)) Bool)

(assert (=> b!1310525 (= res!870117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310532 () Bool)

(assert (=> b!1310532 (= e!747616 tp_is_empty!35301)))

(declare-fun b!1310533 () Bool)

(declare-fun res!870118 () Bool)

(assert (=> b!1310533 (=> (not res!870118) (not e!747617))))

(assert (=> b!1310533 (= res!870118 (not (= (select (arr!42254 _keys!1628) from!2020) k0!1175)))))

(assert (= (and start!110772 res!870122) b!1310529))

(assert (= (and b!1310529 res!870123) b!1310525))

(assert (= (and b!1310525 res!870117) b!1310527))

(assert (= (and b!1310527 res!870120) b!1310531))

(assert (= (and b!1310531 res!870121) b!1310522))

(assert (= (and b!1310522 res!870119) b!1310533))

(assert (= (and b!1310533 res!870118) b!1310524))

(assert (= (and b!1310524 res!870124) b!1310526))

(assert (= (and b!1310526 res!870125) b!1310523))

(assert (= (and b!1310530 condMapEmpty!54580) mapIsEmpty!54580))

(assert (= (and b!1310530 (not condMapEmpty!54580)) mapNonEmpty!54580))

(get-info :version)

(assert (= (and mapNonEmpty!54580 ((_ is ValueCellFull!16752) mapValue!54580)) b!1310532))

(assert (= (and b!1310530 ((_ is ValueCellFull!16752) mapDefault!54580)) b!1310528))

(assert (= start!110772 b!1310530))

(declare-fun m!1200293 () Bool)

(assert (=> b!1310527 m!1200293))

(declare-fun m!1200295 () Bool)

(assert (=> b!1310525 m!1200295))

(declare-fun m!1200297 () Bool)

(assert (=> b!1310522 m!1200297))

(assert (=> b!1310522 m!1200297))

(declare-fun m!1200299 () Bool)

(assert (=> b!1310522 m!1200299))

(declare-fun m!1200301 () Bool)

(assert (=> b!1310524 m!1200301))

(assert (=> b!1310524 m!1200301))

(declare-fun m!1200303 () Bool)

(assert (=> b!1310524 m!1200303))

(assert (=> b!1310533 m!1200301))

(declare-fun m!1200305 () Bool)

(assert (=> b!1310523 m!1200305))

(assert (=> b!1310523 m!1200305))

(declare-fun m!1200307 () Bool)

(assert (=> b!1310523 m!1200307))

(declare-fun m!1200309 () Bool)

(assert (=> b!1310523 m!1200309))

(declare-fun m!1200311 () Bool)

(assert (=> mapNonEmpty!54580 m!1200311))

(declare-fun m!1200313 () Bool)

(assert (=> start!110772 m!1200313))

(declare-fun m!1200315 () Bool)

(assert (=> start!110772 m!1200315))

(declare-fun m!1200317 () Bool)

(assert (=> start!110772 m!1200317))

(check-sat (not mapNonEmpty!54580) (not b!1310524) (not b!1310522) b_and!47789 (not b_next!29571) (not b!1310527) (not b!1310525) tp_is_empty!35301 (not start!110772) (not b!1310523))
(check-sat b_and!47789 (not b_next!29571))
