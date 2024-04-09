; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83346 () Bool)

(assert start!83346)

(declare-fun b_free!19311 () Bool)

(declare-fun b_next!19311 () Bool)

(assert (=> start!83346 (= b_free!19311 (not b_next!19311))))

(declare-fun tp!67213 () Bool)

(declare-fun b_and!30861 () Bool)

(assert (=> start!83346 (= tp!67213 b_and!30861)))

(declare-fun b!972431 () Bool)

(declare-fun res!651018 () Bool)

(declare-fun e!548151 () Bool)

(assert (=> b!972431 (=> (not res!651018) (not e!548151))))

(declare-datatypes ((array!60445 0))(
  ( (array!60446 (arr!29082 (Array (_ BitVec 32) (_ BitVec 64))) (size!29562 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60445)

(declare-datatypes ((List!20297 0))(
  ( (Nil!20294) (Cons!20293 (h!21455 (_ BitVec 64)) (t!28714 List!20297)) )
))
(declare-fun arrayNoDuplicates!0 (array!60445 (_ BitVec 32) List!20297) Bool)

(assert (=> b!972431 (= res!651018 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20294))))

(declare-fun b!972432 () Bool)

(declare-fun res!651023 () Bool)

(assert (=> b!972432 (=> (not res!651023) (not e!548151))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!972432 (= res!651023 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29562 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29562 _keys!1717))))))

(declare-fun b!972433 () Bool)

(declare-fun e!548148 () Bool)

(declare-fun tp_is_empty!22209 () Bool)

(assert (=> b!972433 (= e!548148 tp_is_empty!22209)))

(declare-fun b!972435 () Bool)

(declare-fun res!651022 () Bool)

(assert (=> b!972435 (=> (not res!651022) (not e!548151))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34595 0))(
  ( (V!34596 (val!11155 Int)) )
))
(declare-datatypes ((ValueCell!10623 0))(
  ( (ValueCellFull!10623 (v!13714 V!34595)) (EmptyCell!10623) )
))
(declare-datatypes ((array!60447 0))(
  ( (array!60448 (arr!29083 (Array (_ BitVec 32) ValueCell!10623)) (size!29563 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60447)

(declare-fun zeroValue!1367 () V!34595)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34595)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14410 0))(
  ( (tuple2!14411 (_1!7215 (_ BitVec 64)) (_2!7215 V!34595)) )
))
(declare-datatypes ((List!20298 0))(
  ( (Nil!20295) (Cons!20294 (h!21456 tuple2!14410) (t!28715 List!20298)) )
))
(declare-datatypes ((ListLongMap!13121 0))(
  ( (ListLongMap!13122 (toList!6576 List!20298)) )
))
(declare-fun contains!5624 (ListLongMap!13121 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3761 (array!60445 array!60447 (_ BitVec 32) (_ BitVec 32) V!34595 V!34595 (_ BitVec 32) Int) ListLongMap!13121)

(assert (=> b!972435 (= res!651022 (contains!5624 (getCurrentListMap!3761 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29082 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35323 () Bool)

(declare-fun mapRes!35323 () Bool)

(assert (=> mapIsEmpty!35323 mapRes!35323))

(declare-fun b!972436 () Bool)

(declare-fun e!548150 () Bool)

(assert (=> b!972436 (= e!548150 (and e!548148 mapRes!35323))))

(declare-fun condMapEmpty!35323 () Bool)

(declare-fun mapDefault!35323 () ValueCell!10623)

(assert (=> b!972436 (= condMapEmpty!35323 (= (arr!29083 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10623)) mapDefault!35323)))))

(declare-fun mapNonEmpty!35323 () Bool)

(declare-fun tp!67212 () Bool)

(declare-fun e!548149 () Bool)

(assert (=> mapNonEmpty!35323 (= mapRes!35323 (and tp!67212 e!548149))))

(declare-fun mapValue!35323 () ValueCell!10623)

(declare-fun mapKey!35323 () (_ BitVec 32))

(declare-fun mapRest!35323 () (Array (_ BitVec 32) ValueCell!10623))

(assert (=> mapNonEmpty!35323 (= (arr!29083 _values!1425) (store mapRest!35323 mapKey!35323 mapValue!35323))))

(declare-fun b!972437 () Bool)

(declare-fun e!548146 () Bool)

(assert (=> b!972437 (= e!548146 (not true))))

(declare-fun lt!432017 () ListLongMap!13121)

(declare-fun lt!432018 () (_ BitVec 64))

(declare-fun +!2851 (ListLongMap!13121 tuple2!14410) ListLongMap!13121)

(declare-fun get!15090 (ValueCell!10623 V!34595) V!34595)

(declare-fun dynLambda!1690 (Int (_ BitVec 64)) V!34595)

(assert (=> b!972437 (= lt!432017 (+!2851 (getCurrentListMap!3761 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14411 lt!432018 (get!15090 (select (arr!29083 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1690 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32363 0))(
  ( (Unit!32364) )
))
(declare-fun lt!432019 () Unit!32363)

(declare-fun lemmaListMapRecursiveValidKeyArray!262 (array!60445 array!60447 (_ BitVec 32) (_ BitVec 32) V!34595 V!34595 (_ BitVec 32) Int) Unit!32363)

(assert (=> b!972437 (= lt!432019 (lemmaListMapRecursiveValidKeyArray!262 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972438 () Bool)

(declare-fun res!651024 () Bool)

(assert (=> b!972438 (=> (not res!651024) (not e!548151))))

(assert (=> b!972438 (= res!651024 (and (= (size!29563 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29562 _keys!1717) (size!29563 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972439 () Bool)

(assert (=> b!972439 (= e!548149 tp_is_empty!22209)))

(declare-fun b!972440 () Bool)

(declare-fun res!651020 () Bool)

(assert (=> b!972440 (=> (not res!651020) (not e!548151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972440 (= res!651020 (validKeyInArray!0 (select (arr!29082 _keys!1717) i!822)))))

(declare-fun b!972441 () Bool)

(assert (=> b!972441 (= e!548151 e!548146)))

(declare-fun res!651019 () Bool)

(assert (=> b!972441 (=> (not res!651019) (not e!548146))))

(assert (=> b!972441 (= res!651019 (validKeyInArray!0 lt!432018))))

(assert (=> b!972441 (= lt!432018 (select (arr!29082 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972441 (= lt!432017 (getCurrentListMap!3761 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!651021 () Bool)

(assert (=> start!83346 (=> (not res!651021) (not e!548151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83346 (= res!651021 (validMask!0 mask!2147))))

(assert (=> start!83346 e!548151))

(assert (=> start!83346 true))

(declare-fun array_inv!22395 (array!60447) Bool)

(assert (=> start!83346 (and (array_inv!22395 _values!1425) e!548150)))

(assert (=> start!83346 tp_is_empty!22209))

(assert (=> start!83346 tp!67213))

(declare-fun array_inv!22396 (array!60445) Bool)

(assert (=> start!83346 (array_inv!22396 _keys!1717)))

(declare-fun b!972434 () Bool)

(declare-fun res!651025 () Bool)

(assert (=> b!972434 (=> (not res!651025) (not e!548151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60445 (_ BitVec 32)) Bool)

(assert (=> b!972434 (= res!651025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83346 res!651021) b!972438))

(assert (= (and b!972438 res!651024) b!972434))

(assert (= (and b!972434 res!651025) b!972431))

(assert (= (and b!972431 res!651018) b!972432))

(assert (= (and b!972432 res!651023) b!972440))

(assert (= (and b!972440 res!651020) b!972435))

(assert (= (and b!972435 res!651022) b!972441))

(assert (= (and b!972441 res!651019) b!972437))

(assert (= (and b!972436 condMapEmpty!35323) mapIsEmpty!35323))

(assert (= (and b!972436 (not condMapEmpty!35323)) mapNonEmpty!35323))

(get-info :version)

(assert (= (and mapNonEmpty!35323 ((_ is ValueCellFull!10623) mapValue!35323)) b!972439))

(assert (= (and b!972436 ((_ is ValueCellFull!10623) mapDefault!35323)) b!972433))

(assert (= start!83346 b!972436))

(declare-fun b_lambda!14505 () Bool)

(assert (=> (not b_lambda!14505) (not b!972437)))

(declare-fun t!28713 () Bool)

(declare-fun tb!6267 () Bool)

(assert (=> (and start!83346 (= defaultEntry!1428 defaultEntry!1428) t!28713) tb!6267))

(declare-fun result!12503 () Bool)

(assert (=> tb!6267 (= result!12503 tp_is_empty!22209)))

(assert (=> b!972437 t!28713))

(declare-fun b_and!30863 () Bool)

(assert (= b_and!30861 (and (=> t!28713 result!12503) b_and!30863)))

(declare-fun m!899959 () Bool)

(assert (=> start!83346 m!899959))

(declare-fun m!899961 () Bool)

(assert (=> start!83346 m!899961))

(declare-fun m!899963 () Bool)

(assert (=> start!83346 m!899963))

(declare-fun m!899965 () Bool)

(assert (=> mapNonEmpty!35323 m!899965))

(declare-fun m!899967 () Bool)

(assert (=> b!972440 m!899967))

(assert (=> b!972440 m!899967))

(declare-fun m!899969 () Bool)

(assert (=> b!972440 m!899969))

(declare-fun m!899971 () Bool)

(assert (=> b!972434 m!899971))

(declare-fun m!899973 () Bool)

(assert (=> b!972441 m!899973))

(declare-fun m!899975 () Bool)

(assert (=> b!972441 m!899975))

(declare-fun m!899977 () Bool)

(assert (=> b!972441 m!899977))

(declare-fun m!899979 () Bool)

(assert (=> b!972435 m!899979))

(assert (=> b!972435 m!899967))

(assert (=> b!972435 m!899979))

(assert (=> b!972435 m!899967))

(declare-fun m!899981 () Bool)

(assert (=> b!972435 m!899981))

(declare-fun m!899983 () Bool)

(assert (=> b!972437 m!899983))

(declare-fun m!899985 () Bool)

(assert (=> b!972437 m!899985))

(declare-fun m!899987 () Bool)

(assert (=> b!972437 m!899987))

(assert (=> b!972437 m!899985))

(declare-fun m!899989 () Bool)

(assert (=> b!972437 m!899989))

(assert (=> b!972437 m!899983))

(assert (=> b!972437 m!899987))

(declare-fun m!899991 () Bool)

(assert (=> b!972437 m!899991))

(declare-fun m!899993 () Bool)

(assert (=> b!972437 m!899993))

(declare-fun m!899995 () Bool)

(assert (=> b!972431 m!899995))

(check-sat (not b!972435) b_and!30863 (not b!972437) (not b_next!19311) (not b!972431) (not b!972440) tp_is_empty!22209 (not b_lambda!14505) (not b!972441) (not mapNonEmpty!35323) (not start!83346) (not b!972434))
(check-sat b_and!30863 (not b_next!19311))
