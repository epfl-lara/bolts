; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83334 () Bool)

(assert start!83334)

(declare-fun b_free!19299 () Bool)

(declare-fun b_next!19299 () Bool)

(assert (=> start!83334 (= b_free!19299 (not b_next!19299))))

(declare-fun tp!67176 () Bool)

(declare-fun b_and!30837 () Bool)

(assert (=> start!83334 (= tp!67176 b_and!30837)))

(declare-fun b!972221 () Bool)

(declare-fun res!650881 () Bool)

(declare-fun e!548038 () Bool)

(assert (=> b!972221 (=> (not res!650881) (not e!548038))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((array!60423 0))(
  ( (array!60424 (arr!29071 (Array (_ BitVec 32) (_ BitVec 64))) (size!29551 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60423)

(assert (=> b!972221 (= res!650881 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29551 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29551 _keys!1717))))))

(declare-fun b!972222 () Bool)

(declare-fun res!650879 () Bool)

(assert (=> b!972222 (=> (not res!650879) (not e!548038))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34579 0))(
  ( (V!34580 (val!11149 Int)) )
))
(declare-datatypes ((ValueCell!10617 0))(
  ( (ValueCellFull!10617 (v!13708 V!34579)) (EmptyCell!10617) )
))
(declare-datatypes ((array!60425 0))(
  ( (array!60426 (arr!29072 (Array (_ BitVec 32) ValueCell!10617)) (size!29552 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60425)

(declare-fun zeroValue!1367 () V!34579)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34579)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14400 0))(
  ( (tuple2!14401 (_1!7210 (_ BitVec 64)) (_2!7210 V!34579)) )
))
(declare-datatypes ((List!20290 0))(
  ( (Nil!20287) (Cons!20286 (h!21448 tuple2!14400) (t!28695 List!20290)) )
))
(declare-datatypes ((ListLongMap!13111 0))(
  ( (ListLongMap!13112 (toList!6571 List!20290)) )
))
(declare-fun contains!5619 (ListLongMap!13111 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3756 (array!60423 array!60425 (_ BitVec 32) (_ BitVec 32) V!34579 V!34579 (_ BitVec 32) Int) ListLongMap!13111)

(assert (=> b!972222 (= res!650879 (contains!5619 (getCurrentListMap!3756 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29071 _keys!1717) i!822)))))

(declare-fun b!972223 () Bool)

(declare-fun res!650880 () Bool)

(assert (=> b!972223 (=> (not res!650880) (not e!548038))))

(assert (=> b!972223 (= res!650880 (and (= (size!29552 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29551 _keys!1717) (size!29552 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972224 () Bool)

(declare-fun e!548039 () Bool)

(declare-fun tp_is_empty!22197 () Bool)

(assert (=> b!972224 (= e!548039 tp_is_empty!22197)))

(declare-fun b!972225 () Bool)

(declare-fun res!650877 () Bool)

(assert (=> b!972225 (=> (not res!650877) (not e!548038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972225 (= res!650877 (validKeyInArray!0 (select (arr!29071 _keys!1717) i!822)))))

(declare-fun b!972226 () Bool)

(declare-fun e!548040 () Bool)

(assert (=> b!972226 (= e!548040 tp_is_empty!22197)))

(declare-fun b!972227 () Bool)

(declare-fun e!548042 () Bool)

(assert (=> b!972227 (= e!548038 e!548042)))

(declare-fun res!650876 () Bool)

(assert (=> b!972227 (=> (not res!650876) (not e!548042))))

(declare-fun lt!431965 () (_ BitVec 64))

(assert (=> b!972227 (= res!650876 (validKeyInArray!0 lt!431965))))

(assert (=> b!972227 (= lt!431965 (select (arr!29071 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!431963 () ListLongMap!13111)

(assert (=> b!972227 (= lt!431963 (getCurrentListMap!3756 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972228 () Bool)

(declare-fun e!548043 () Bool)

(declare-fun mapRes!35305 () Bool)

(assert (=> b!972228 (= e!548043 (and e!548039 mapRes!35305))))

(declare-fun condMapEmpty!35305 () Bool)

(declare-fun mapDefault!35305 () ValueCell!10617)

(assert (=> b!972228 (= condMapEmpty!35305 (= (arr!29072 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10617)) mapDefault!35305)))))

(declare-fun res!650874 () Bool)

(assert (=> start!83334 (=> (not res!650874) (not e!548038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83334 (= res!650874 (validMask!0 mask!2147))))

(assert (=> start!83334 e!548038))

(assert (=> start!83334 true))

(declare-fun array_inv!22389 (array!60425) Bool)

(assert (=> start!83334 (and (array_inv!22389 _values!1425) e!548043)))

(assert (=> start!83334 tp_is_empty!22197))

(assert (=> start!83334 tp!67176))

(declare-fun array_inv!22390 (array!60423) Bool)

(assert (=> start!83334 (array_inv!22390 _keys!1717)))

(declare-fun mapIsEmpty!35305 () Bool)

(assert (=> mapIsEmpty!35305 mapRes!35305))

(declare-fun b!972229 () Bool)

(declare-fun res!650878 () Bool)

(assert (=> b!972229 (=> (not res!650878) (not e!548038))))

(declare-datatypes ((List!20291 0))(
  ( (Nil!20288) (Cons!20287 (h!21449 (_ BitVec 64)) (t!28696 List!20291)) )
))
(declare-fun arrayNoDuplicates!0 (array!60423 (_ BitVec 32) List!20291) Bool)

(assert (=> b!972229 (= res!650878 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20288))))

(declare-fun mapNonEmpty!35305 () Bool)

(declare-fun tp!67177 () Bool)

(assert (=> mapNonEmpty!35305 (= mapRes!35305 (and tp!67177 e!548040))))

(declare-fun mapRest!35305 () (Array (_ BitVec 32) ValueCell!10617))

(declare-fun mapValue!35305 () ValueCell!10617)

(declare-fun mapKey!35305 () (_ BitVec 32))

(assert (=> mapNonEmpty!35305 (= (arr!29072 _values!1425) (store mapRest!35305 mapKey!35305 mapValue!35305))))

(declare-fun b!972230 () Bool)

(assert (=> b!972230 (= e!548042 (not true))))

(declare-fun +!2847 (ListLongMap!13111 tuple2!14400) ListLongMap!13111)

(declare-fun get!15082 (ValueCell!10617 V!34579) V!34579)

(declare-fun dynLambda!1686 (Int (_ BitVec 64)) V!34579)

(assert (=> b!972230 (= lt!431963 (+!2847 (getCurrentListMap!3756 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14401 lt!431965 (get!15082 (select (arr!29072 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1686 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32355 0))(
  ( (Unit!32356) )
))
(declare-fun lt!431964 () Unit!32355)

(declare-fun lemmaListMapRecursiveValidKeyArray!258 (array!60423 array!60425 (_ BitVec 32) (_ BitVec 32) V!34579 V!34579 (_ BitVec 32) Int) Unit!32355)

(assert (=> b!972230 (= lt!431964 (lemmaListMapRecursiveValidKeyArray!258 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972231 () Bool)

(declare-fun res!650875 () Bool)

(assert (=> b!972231 (=> (not res!650875) (not e!548038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60423 (_ BitVec 32)) Bool)

(assert (=> b!972231 (= res!650875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83334 res!650874) b!972223))

(assert (= (and b!972223 res!650880) b!972231))

(assert (= (and b!972231 res!650875) b!972229))

(assert (= (and b!972229 res!650878) b!972221))

(assert (= (and b!972221 res!650881) b!972225))

(assert (= (and b!972225 res!650877) b!972222))

(assert (= (and b!972222 res!650879) b!972227))

(assert (= (and b!972227 res!650876) b!972230))

(assert (= (and b!972228 condMapEmpty!35305) mapIsEmpty!35305))

(assert (= (and b!972228 (not condMapEmpty!35305)) mapNonEmpty!35305))

(get-info :version)

(assert (= (and mapNonEmpty!35305 ((_ is ValueCellFull!10617) mapValue!35305)) b!972226))

(assert (= (and b!972228 ((_ is ValueCellFull!10617) mapDefault!35305)) b!972224))

(assert (= start!83334 b!972228))

(declare-fun b_lambda!14493 () Bool)

(assert (=> (not b_lambda!14493) (not b!972230)))

(declare-fun t!28694 () Bool)

(declare-fun tb!6255 () Bool)

(assert (=> (and start!83334 (= defaultEntry!1428 defaultEntry!1428) t!28694) tb!6255))

(declare-fun result!12479 () Bool)

(assert (=> tb!6255 (= result!12479 tp_is_empty!22197)))

(assert (=> b!972230 t!28694))

(declare-fun b_and!30839 () Bool)

(assert (= b_and!30837 (and (=> t!28694 result!12479) b_and!30839)))

(declare-fun m!899731 () Bool)

(assert (=> b!972231 m!899731))

(declare-fun m!899733 () Bool)

(assert (=> b!972222 m!899733))

(declare-fun m!899735 () Bool)

(assert (=> b!972222 m!899735))

(assert (=> b!972222 m!899733))

(assert (=> b!972222 m!899735))

(declare-fun m!899737 () Bool)

(assert (=> b!972222 m!899737))

(assert (=> b!972225 m!899735))

(assert (=> b!972225 m!899735))

(declare-fun m!899739 () Bool)

(assert (=> b!972225 m!899739))

(declare-fun m!899741 () Bool)

(assert (=> b!972229 m!899741))

(declare-fun m!899743 () Bool)

(assert (=> mapNonEmpty!35305 m!899743))

(declare-fun m!899745 () Bool)

(assert (=> b!972230 m!899745))

(declare-fun m!899747 () Bool)

(assert (=> b!972230 m!899747))

(declare-fun m!899749 () Bool)

(assert (=> b!972230 m!899749))

(assert (=> b!972230 m!899747))

(declare-fun m!899751 () Bool)

(assert (=> b!972230 m!899751))

(assert (=> b!972230 m!899745))

(assert (=> b!972230 m!899749))

(declare-fun m!899753 () Bool)

(assert (=> b!972230 m!899753))

(declare-fun m!899755 () Bool)

(assert (=> b!972230 m!899755))

(declare-fun m!899757 () Bool)

(assert (=> start!83334 m!899757))

(declare-fun m!899759 () Bool)

(assert (=> start!83334 m!899759))

(declare-fun m!899761 () Bool)

(assert (=> start!83334 m!899761))

(declare-fun m!899763 () Bool)

(assert (=> b!972227 m!899763))

(declare-fun m!899765 () Bool)

(assert (=> b!972227 m!899765))

(declare-fun m!899767 () Bool)

(assert (=> b!972227 m!899767))

(check-sat (not b_lambda!14493) (not b!972230) b_and!30839 (not b!972231) (not b!972222) (not b!972227) (not mapNonEmpty!35305) (not start!83334) (not b!972229) tp_is_empty!22197 (not b!972225) (not b_next!19299))
(check-sat b_and!30839 (not b_next!19299))
