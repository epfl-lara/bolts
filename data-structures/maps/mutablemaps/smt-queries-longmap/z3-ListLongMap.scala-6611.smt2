; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83580 () Bool)

(assert start!83580)

(declare-fun b_free!19539 () Bool)

(declare-fun b_next!19539 () Bool)

(assert (=> start!83580 (= b_free!19539 (not b_next!19539))))

(declare-fun tp!67906 () Bool)

(declare-fun b_and!31191 () Bool)

(assert (=> start!83580 (= tp!67906 b_and!31191)))

(declare-fun b!976178 () Bool)

(declare-fun e!550170 () Bool)

(declare-fun tp_is_empty!22443 () Bool)

(assert (=> b!976178 (= e!550170 tp_is_empty!22443)))

(declare-fun b!976179 () Bool)

(declare-fun e!550173 () Bool)

(assert (=> b!976179 (= e!550173 tp_is_empty!22443)))

(declare-fun mapNonEmpty!35674 () Bool)

(declare-fun mapRes!35674 () Bool)

(declare-fun tp!67905 () Bool)

(assert (=> mapNonEmpty!35674 (= mapRes!35674 (and tp!67905 e!550173))))

(declare-datatypes ((V!34907 0))(
  ( (V!34908 (val!11272 Int)) )
))
(declare-datatypes ((ValueCell!10740 0))(
  ( (ValueCellFull!10740 (v!13831 V!34907)) (EmptyCell!10740) )
))
(declare-fun mapRest!35674 () (Array (_ BitVec 32) ValueCell!10740))

(declare-datatypes ((array!60901 0))(
  ( (array!60902 (arr!29310 (Array (_ BitVec 32) ValueCell!10740)) (size!29790 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60901)

(declare-fun mapValue!35674 () ValueCell!10740)

(declare-fun mapKey!35674 () (_ BitVec 32))

(assert (=> mapNonEmpty!35674 (= (arr!29310 _values!1425) (store mapRest!35674 mapKey!35674 mapValue!35674))))

(declare-fun b!976180 () Bool)

(declare-fun res!653613 () Bool)

(declare-fun e!550169 () Bool)

(assert (=> b!976180 (=> (not res!653613) (not e!550169))))

(declare-datatypes ((array!60903 0))(
  ( (array!60904 (arr!29311 (Array (_ BitVec 32) (_ BitVec 64))) (size!29791 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60903)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976180 (= res!653613 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29791 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29791 _keys!1717))))))

(declare-fun b!976181 () Bool)

(declare-fun e!550168 () Bool)

(assert (=> b!976181 (= e!550169 e!550168)))

(declare-fun res!653616 () Bool)

(assert (=> b!976181 (=> (not res!653616) (not e!550168))))

(declare-datatypes ((tuple2!14604 0))(
  ( (tuple2!14605 (_1!7312 (_ BitVec 64)) (_2!7312 V!34907)) )
))
(declare-datatypes ((List!20475 0))(
  ( (Nil!20472) (Cons!20471 (h!21633 tuple2!14604) (t!28994 List!20475)) )
))
(declare-datatypes ((ListLongMap!13315 0))(
  ( (ListLongMap!13316 (toList!6673 List!20475)) )
))
(declare-fun lt!433049 () ListLongMap!13315)

(declare-fun contains!5704 (ListLongMap!13315 (_ BitVec 64)) Bool)

(assert (=> b!976181 (= res!653616 (contains!5704 lt!433049 (select (arr!29311 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34907)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34907)

(declare-fun getCurrentListMap!3858 (array!60903 array!60901 (_ BitVec 32) (_ BitVec 32) V!34907 V!34907 (_ BitVec 32) Int) ListLongMap!13315)

(assert (=> b!976181 (= lt!433049 (getCurrentListMap!3858 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun res!653612 () Bool)

(assert (=> start!83580 (=> (not res!653612) (not e!550169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83580 (= res!653612 (validMask!0 mask!2147))))

(assert (=> start!83580 e!550169))

(assert (=> start!83580 true))

(declare-fun e!550171 () Bool)

(declare-fun array_inv!22565 (array!60901) Bool)

(assert (=> start!83580 (and (array_inv!22565 _values!1425) e!550171)))

(assert (=> start!83580 tp_is_empty!22443))

(assert (=> start!83580 tp!67906))

(declare-fun array_inv!22566 (array!60903) Bool)

(assert (=> start!83580 (array_inv!22566 _keys!1717)))

(declare-fun b!976182 () Bool)

(declare-fun e!550172 () Bool)

(assert (=> b!976182 (= e!550168 e!550172)))

(declare-fun res!653610 () Bool)

(assert (=> b!976182 (=> (not res!653610) (not e!550172))))

(declare-fun lt!433048 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976182 (= res!653610 (validKeyInArray!0 lt!433048))))

(assert (=> b!976182 (= lt!433048 (select (arr!29311 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!433045 () ListLongMap!13315)

(assert (=> b!976182 (= lt!433045 (getCurrentListMap!3858 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976183 () Bool)

(assert (=> b!976183 (= e!550171 (and e!550170 mapRes!35674))))

(declare-fun condMapEmpty!35674 () Bool)

(declare-fun mapDefault!35674 () ValueCell!10740)

(assert (=> b!976183 (= condMapEmpty!35674 (= (arr!29310 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10740)) mapDefault!35674)))))

(declare-fun b!976184 () Bool)

(declare-fun res!653615 () Bool)

(assert (=> b!976184 (=> (not res!653615) (not e!550169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60903 (_ BitVec 32)) Bool)

(assert (=> b!976184 (= res!653615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!976185 () Bool)

(declare-fun res!653617 () Bool)

(assert (=> b!976185 (=> (not res!653617) (not e!550169))))

(declare-datatypes ((List!20476 0))(
  ( (Nil!20473) (Cons!20472 (h!21634 (_ BitVec 64)) (t!28995 List!20476)) )
))
(declare-fun arrayNoDuplicates!0 (array!60903 (_ BitVec 32) List!20476) Bool)

(assert (=> b!976185 (= res!653617 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20473))))

(declare-fun b!976186 () Bool)

(declare-fun res!653614 () Bool)

(assert (=> b!976186 (=> (not res!653614) (not e!550169))))

(assert (=> b!976186 (= res!653614 (validKeyInArray!0 (select (arr!29311 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35674 () Bool)

(assert (=> mapIsEmpty!35674 mapRes!35674))

(declare-fun b!976187 () Bool)

(declare-fun res!653611 () Bool)

(assert (=> b!976187 (=> (not res!653611) (not e!550169))))

(assert (=> b!976187 (= res!653611 (and (= (size!29790 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29791 _keys!1717) (size!29790 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976188 () Bool)

(assert (=> b!976188 (= e!550172 (not (contains!5704 lt!433045 (select (arr!29311 _keys!1717) i!822))))))

(declare-fun lt!433047 () tuple2!14604)

(declare-fun +!2883 (ListLongMap!13315 tuple2!14604) ListLongMap!13315)

(assert (=> b!976188 (contains!5704 (+!2883 lt!433049 lt!433047) (select (arr!29311 _keys!1717) i!822))))

(declare-datatypes ((Unit!32427 0))(
  ( (Unit!32428) )
))
(declare-fun lt!433051 () Unit!32427)

(declare-fun lt!433050 () V!34907)

(declare-fun addStillContains!616 (ListLongMap!13315 (_ BitVec 64) V!34907 (_ BitVec 64)) Unit!32427)

(assert (=> b!976188 (= lt!433051 (addStillContains!616 lt!433049 lt!433048 lt!433050 (select (arr!29311 _keys!1717) i!822)))))

(assert (=> b!976188 (= lt!433045 (+!2883 (getCurrentListMap!3858 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!433047))))

(assert (=> b!976188 (= lt!433047 (tuple2!14605 lt!433048 lt!433050))))

(declare-fun get!15200 (ValueCell!10740 V!34907) V!34907)

(declare-fun dynLambda!1722 (Int (_ BitVec 64)) V!34907)

(assert (=> b!976188 (= lt!433050 (get!15200 (select (arr!29310 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1722 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!433046 () Unit!32427)

(declare-fun lemmaListMapRecursiveValidKeyArray!294 (array!60903 array!60901 (_ BitVec 32) (_ BitVec 32) V!34907 V!34907 (_ BitVec 32) Int) Unit!32427)

(assert (=> b!976188 (= lt!433046 (lemmaListMapRecursiveValidKeyArray!294 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83580 res!653612) b!976187))

(assert (= (and b!976187 res!653611) b!976184))

(assert (= (and b!976184 res!653615) b!976185))

(assert (= (and b!976185 res!653617) b!976180))

(assert (= (and b!976180 res!653613) b!976186))

(assert (= (and b!976186 res!653614) b!976181))

(assert (= (and b!976181 res!653616) b!976182))

(assert (= (and b!976182 res!653610) b!976188))

(assert (= (and b!976183 condMapEmpty!35674) mapIsEmpty!35674))

(assert (= (and b!976183 (not condMapEmpty!35674)) mapNonEmpty!35674))

(get-info :version)

(assert (= (and mapNonEmpty!35674 ((_ is ValueCellFull!10740) mapValue!35674)) b!976179))

(assert (= (and b!976183 ((_ is ValueCellFull!10740) mapDefault!35674)) b!976178))

(assert (= start!83580 b!976183))

(declare-fun b_lambda!14607 () Bool)

(assert (=> (not b_lambda!14607) (not b!976188)))

(declare-fun t!28993 () Bool)

(declare-fun tb!6369 () Bool)

(assert (=> (and start!83580 (= defaultEntry!1428 defaultEntry!1428) t!28993) tb!6369))

(declare-fun result!12707 () Bool)

(assert (=> tb!6369 (= result!12707 tp_is_empty!22443)))

(assert (=> b!976188 t!28993))

(declare-fun b_and!31193 () Bool)

(assert (= b_and!31191 (and (=> t!28993 result!12707) b_and!31193)))

(declare-fun m!903519 () Bool)

(assert (=> b!976185 m!903519))

(declare-fun m!903521 () Bool)

(assert (=> b!976181 m!903521))

(assert (=> b!976181 m!903521))

(declare-fun m!903523 () Bool)

(assert (=> b!976181 m!903523))

(declare-fun m!903525 () Bool)

(assert (=> b!976181 m!903525))

(declare-fun m!903527 () Bool)

(assert (=> b!976188 m!903527))

(assert (=> b!976188 m!903521))

(declare-fun m!903529 () Bool)

(assert (=> b!976188 m!903529))

(declare-fun m!903531 () Bool)

(assert (=> b!976188 m!903531))

(declare-fun m!903533 () Bool)

(assert (=> b!976188 m!903533))

(assert (=> b!976188 m!903521))

(assert (=> b!976188 m!903527))

(declare-fun m!903535 () Bool)

(assert (=> b!976188 m!903535))

(assert (=> b!976188 m!903521))

(declare-fun m!903537 () Bool)

(assert (=> b!976188 m!903537))

(declare-fun m!903539 () Bool)

(assert (=> b!976188 m!903539))

(assert (=> b!976188 m!903521))

(declare-fun m!903541 () Bool)

(assert (=> b!976188 m!903541))

(assert (=> b!976188 m!903531))

(declare-fun m!903543 () Bool)

(assert (=> b!976188 m!903543))

(assert (=> b!976188 m!903539))

(assert (=> b!976188 m!903533))

(declare-fun m!903545 () Bool)

(assert (=> b!976188 m!903545))

(declare-fun m!903547 () Bool)

(assert (=> b!976182 m!903547))

(declare-fun m!903549 () Bool)

(assert (=> b!976182 m!903549))

(declare-fun m!903551 () Bool)

(assert (=> b!976182 m!903551))

(declare-fun m!903553 () Bool)

(assert (=> start!83580 m!903553))

(declare-fun m!903555 () Bool)

(assert (=> start!83580 m!903555))

(declare-fun m!903557 () Bool)

(assert (=> start!83580 m!903557))

(declare-fun m!903559 () Bool)

(assert (=> b!976184 m!903559))

(assert (=> b!976186 m!903521))

(assert (=> b!976186 m!903521))

(declare-fun m!903561 () Bool)

(assert (=> b!976186 m!903561))

(declare-fun m!903563 () Bool)

(assert (=> mapNonEmpty!35674 m!903563))

(check-sat (not start!83580) tp_is_empty!22443 b_and!31193 (not b!976182) (not b!976186) (not b!976188) (not b_next!19539) (not mapNonEmpty!35674) (not b!976185) (not b!976181) (not b_lambda!14607) (not b!976184))
(check-sat b_and!31193 (not b_next!19539))
