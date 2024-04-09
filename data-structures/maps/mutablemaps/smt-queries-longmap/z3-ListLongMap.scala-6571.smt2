; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83340 () Bool)

(assert start!83340)

(declare-fun b_free!19305 () Bool)

(declare-fun b_next!19305 () Bool)

(assert (=> start!83340 (= b_free!19305 (not b_next!19305))))

(declare-fun tp!67194 () Bool)

(declare-fun b_and!30849 () Bool)

(assert (=> start!83340 (= tp!67194 b_and!30849)))

(declare-fun b!972326 () Bool)

(declare-fun res!650949 () Bool)

(declare-fun e!548092 () Bool)

(assert (=> b!972326 (=> (not res!650949) (not e!548092))))

(declare-datatypes ((array!60433 0))(
  ( (array!60434 (arr!29076 (Array (_ BitVec 32) (_ BitVec 64))) (size!29556 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60433)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60433 (_ BitVec 32)) Bool)

(assert (=> b!972326 (= res!650949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972327 () Bool)

(declare-fun res!650948 () Bool)

(assert (=> b!972327 (=> (not res!650948) (not e!548092))))

(declare-datatypes ((V!34587 0))(
  ( (V!34588 (val!11152 Int)) )
))
(declare-datatypes ((ValueCell!10620 0))(
  ( (ValueCellFull!10620 (v!13711 V!34587)) (EmptyCell!10620) )
))
(declare-datatypes ((array!60435 0))(
  ( (array!60436 (arr!29077 (Array (_ BitVec 32) ValueCell!10620)) (size!29557 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60435)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!972327 (= res!650948 (and (= (size!29557 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29556 _keys!1717) (size!29557 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972328 () Bool)

(declare-fun res!650947 () Bool)

(assert (=> b!972328 (=> (not res!650947) (not e!548092))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!972328 (= res!650947 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29556 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29556 _keys!1717))))))

(declare-fun b!972329 () Bool)

(declare-fun e!548097 () Bool)

(assert (=> b!972329 (= e!548092 e!548097)))

(declare-fun res!650946 () Bool)

(assert (=> b!972329 (=> (not res!650946) (not e!548097))))

(declare-fun lt!431990 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972329 (= res!650946 (validKeyInArray!0 lt!431990))))

(assert (=> b!972329 (= lt!431990 (select (arr!29076 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun zeroValue!1367 () V!34587)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34587)

(declare-datatypes ((tuple2!14404 0))(
  ( (tuple2!14405 (_1!7212 (_ BitVec 64)) (_2!7212 V!34587)) )
))
(declare-datatypes ((List!20293 0))(
  ( (Nil!20290) (Cons!20289 (h!21451 tuple2!14404) (t!28704 List!20293)) )
))
(declare-datatypes ((ListLongMap!13115 0))(
  ( (ListLongMap!13116 (toList!6573 List!20293)) )
))
(declare-fun lt!431992 () ListLongMap!13115)

(declare-fun getCurrentListMap!3758 (array!60433 array!60435 (_ BitVec 32) (_ BitVec 32) V!34587 V!34587 (_ BitVec 32) Int) ListLongMap!13115)

(assert (=> b!972329 (= lt!431992 (getCurrentListMap!3758 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972330 () Bool)

(declare-fun e!548095 () Bool)

(declare-fun e!548096 () Bool)

(declare-fun mapRes!35314 () Bool)

(assert (=> b!972330 (= e!548095 (and e!548096 mapRes!35314))))

(declare-fun condMapEmpty!35314 () Bool)

(declare-fun mapDefault!35314 () ValueCell!10620)

(assert (=> b!972330 (= condMapEmpty!35314 (= (arr!29077 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10620)) mapDefault!35314)))))

(declare-fun b!972331 () Bool)

(declare-fun tp_is_empty!22203 () Bool)

(assert (=> b!972331 (= e!548096 tp_is_empty!22203)))

(declare-fun b!972332 () Bool)

(declare-fun res!650952 () Bool)

(assert (=> b!972332 (=> (not res!650952) (not e!548092))))

(declare-datatypes ((List!20294 0))(
  ( (Nil!20291) (Cons!20290 (h!21452 (_ BitVec 64)) (t!28705 List!20294)) )
))
(declare-fun arrayNoDuplicates!0 (array!60433 (_ BitVec 32) List!20294) Bool)

(assert (=> b!972332 (= res!650952 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20291))))

(declare-fun mapNonEmpty!35314 () Bool)

(declare-fun tp!67195 () Bool)

(declare-fun e!548093 () Bool)

(assert (=> mapNonEmpty!35314 (= mapRes!35314 (and tp!67195 e!548093))))

(declare-fun mapKey!35314 () (_ BitVec 32))

(declare-fun mapValue!35314 () ValueCell!10620)

(declare-fun mapRest!35314 () (Array (_ BitVec 32) ValueCell!10620))

(assert (=> mapNonEmpty!35314 (= (arr!29077 _values!1425) (store mapRest!35314 mapKey!35314 mapValue!35314))))

(declare-fun b!972334 () Bool)

(declare-fun res!650953 () Bool)

(assert (=> b!972334 (=> (not res!650953) (not e!548092))))

(assert (=> b!972334 (= res!650953 (validKeyInArray!0 (select (arr!29076 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35314 () Bool)

(assert (=> mapIsEmpty!35314 mapRes!35314))

(declare-fun res!650950 () Bool)

(assert (=> start!83340 (=> (not res!650950) (not e!548092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83340 (= res!650950 (validMask!0 mask!2147))))

(assert (=> start!83340 e!548092))

(assert (=> start!83340 true))

(declare-fun array_inv!22391 (array!60435) Bool)

(assert (=> start!83340 (and (array_inv!22391 _values!1425) e!548095)))

(assert (=> start!83340 tp_is_empty!22203))

(assert (=> start!83340 tp!67194))

(declare-fun array_inv!22392 (array!60433) Bool)

(assert (=> start!83340 (array_inv!22392 _keys!1717)))

(declare-fun b!972333 () Bool)

(assert (=> b!972333 (= e!548097 (not true))))

(declare-fun +!2849 (ListLongMap!13115 tuple2!14404) ListLongMap!13115)

(declare-fun get!15086 (ValueCell!10620 V!34587) V!34587)

(declare-fun dynLambda!1688 (Int (_ BitVec 64)) V!34587)

(assert (=> b!972333 (= lt!431992 (+!2849 (getCurrentListMap!3758 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14405 lt!431990 (get!15086 (select (arr!29077 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1688 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32359 0))(
  ( (Unit!32360) )
))
(declare-fun lt!431991 () Unit!32359)

(declare-fun lemmaListMapRecursiveValidKeyArray!260 (array!60433 array!60435 (_ BitVec 32) (_ BitVec 32) V!34587 V!34587 (_ BitVec 32) Int) Unit!32359)

(assert (=> b!972333 (= lt!431991 (lemmaListMapRecursiveValidKeyArray!260 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972335 () Bool)

(assert (=> b!972335 (= e!548093 tp_is_empty!22203)))

(declare-fun b!972336 () Bool)

(declare-fun res!650951 () Bool)

(assert (=> b!972336 (=> (not res!650951) (not e!548092))))

(declare-fun contains!5621 (ListLongMap!13115 (_ BitVec 64)) Bool)

(assert (=> b!972336 (= res!650951 (contains!5621 (getCurrentListMap!3758 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29076 _keys!1717) i!822)))))

(assert (= (and start!83340 res!650950) b!972327))

(assert (= (and b!972327 res!650948) b!972326))

(assert (= (and b!972326 res!650949) b!972332))

(assert (= (and b!972332 res!650952) b!972328))

(assert (= (and b!972328 res!650947) b!972334))

(assert (= (and b!972334 res!650953) b!972336))

(assert (= (and b!972336 res!650951) b!972329))

(assert (= (and b!972329 res!650946) b!972333))

(assert (= (and b!972330 condMapEmpty!35314) mapIsEmpty!35314))

(assert (= (and b!972330 (not condMapEmpty!35314)) mapNonEmpty!35314))

(get-info :version)

(assert (= (and mapNonEmpty!35314 ((_ is ValueCellFull!10620) mapValue!35314)) b!972335))

(assert (= (and b!972330 ((_ is ValueCellFull!10620) mapDefault!35314)) b!972331))

(assert (= start!83340 b!972330))

(declare-fun b_lambda!14499 () Bool)

(assert (=> (not b_lambda!14499) (not b!972333)))

(declare-fun t!28703 () Bool)

(declare-fun tb!6261 () Bool)

(assert (=> (and start!83340 (= defaultEntry!1428 defaultEntry!1428) t!28703) tb!6261))

(declare-fun result!12491 () Bool)

(assert (=> tb!6261 (= result!12491 tp_is_empty!22203)))

(assert (=> b!972333 t!28703))

(declare-fun b_and!30851 () Bool)

(assert (= b_and!30849 (and (=> t!28703 result!12491) b_and!30851)))

(declare-fun m!899845 () Bool)

(assert (=> b!972336 m!899845))

(declare-fun m!899847 () Bool)

(assert (=> b!972336 m!899847))

(assert (=> b!972336 m!899845))

(assert (=> b!972336 m!899847))

(declare-fun m!899849 () Bool)

(assert (=> b!972336 m!899849))

(declare-fun m!899851 () Bool)

(assert (=> b!972332 m!899851))

(declare-fun m!899853 () Bool)

(assert (=> mapNonEmpty!35314 m!899853))

(declare-fun m!899855 () Bool)

(assert (=> start!83340 m!899855))

(declare-fun m!899857 () Bool)

(assert (=> start!83340 m!899857))

(declare-fun m!899859 () Bool)

(assert (=> start!83340 m!899859))

(declare-fun m!899861 () Bool)

(assert (=> b!972329 m!899861))

(declare-fun m!899863 () Bool)

(assert (=> b!972329 m!899863))

(declare-fun m!899865 () Bool)

(assert (=> b!972329 m!899865))

(declare-fun m!899867 () Bool)

(assert (=> b!972326 m!899867))

(declare-fun m!899869 () Bool)

(assert (=> b!972333 m!899869))

(declare-fun m!899871 () Bool)

(assert (=> b!972333 m!899871))

(declare-fun m!899873 () Bool)

(assert (=> b!972333 m!899873))

(assert (=> b!972333 m!899869))

(assert (=> b!972333 m!899873))

(declare-fun m!899875 () Bool)

(assert (=> b!972333 m!899875))

(assert (=> b!972333 m!899871))

(declare-fun m!899877 () Bool)

(assert (=> b!972333 m!899877))

(declare-fun m!899879 () Bool)

(assert (=> b!972333 m!899879))

(assert (=> b!972334 m!899847))

(assert (=> b!972334 m!899847))

(declare-fun m!899881 () Bool)

(assert (=> b!972334 m!899881))

(check-sat (not start!83340) b_and!30851 (not mapNonEmpty!35314) (not b_lambda!14499) (not b!972336) (not b!972333) (not b!972334) (not b_next!19305) (not b!972326) (not b!972329) tp_is_empty!22203 (not b!972332))
(check-sat b_and!30851 (not b_next!19305))
