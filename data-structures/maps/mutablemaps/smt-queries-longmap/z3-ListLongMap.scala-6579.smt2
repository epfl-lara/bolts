; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83388 () Bool)

(assert start!83388)

(declare-fun b_free!19353 () Bool)

(declare-fun b_next!19353 () Bool)

(assert (=> start!83388 (= b_free!19353 (not b_next!19353))))

(declare-fun tp!67338 () Bool)

(declare-fun b_and!30945 () Bool)

(assert (=> start!83388 (= tp!67338 b_and!30945)))

(declare-fun b!973166 () Bool)

(declare-fun e!548570 () Bool)

(assert (=> b!973166 (= e!548570 (not true))))

(declare-datatypes ((V!34651 0))(
  ( (V!34652 (val!11176 Int)) )
))
(declare-datatypes ((tuple2!14446 0))(
  ( (tuple2!14447 (_1!7233 (_ BitVec 64)) (_2!7233 V!34651)) )
))
(declare-fun lt!432373 () tuple2!14446)

(declare-datatypes ((array!60527 0))(
  ( (array!60528 (arr!29123 (Array (_ BitVec 32) (_ BitVec 64))) (size!29603 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60527)

(declare-datatypes ((List!20328 0))(
  ( (Nil!20325) (Cons!20324 (h!21486 tuple2!14446) (t!28787 List!20328)) )
))
(declare-datatypes ((ListLongMap!13157 0))(
  ( (ListLongMap!13158 (toList!6594 List!20328)) )
))
(declare-fun lt!432374 () ListLongMap!13157)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5639 (ListLongMap!13157 (_ BitVec 64)) Bool)

(declare-fun +!2865 (ListLongMap!13157 tuple2!14446) ListLongMap!13157)

(assert (=> b!973166 (contains!5639 (+!2865 lt!432374 lt!432373) (select (arr!29123 _keys!1717) i!822))))

(declare-datatypes ((Unit!32391 0))(
  ( (Unit!32392) )
))
(declare-fun lt!432371 () Unit!32391)

(declare-fun lt!432372 () V!34651)

(declare-fun lt!432375 () (_ BitVec 64))

(declare-fun addStillContains!604 (ListLongMap!13157 (_ BitVec 64) V!34651 (_ BitVec 64)) Unit!32391)

(assert (=> b!973166 (= lt!432371 (addStillContains!604 lt!432374 lt!432375 lt!432372 (select (arr!29123 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10644 0))(
  ( (ValueCellFull!10644 (v!13735 V!34651)) (EmptyCell!10644) )
))
(declare-datatypes ((array!60529 0))(
  ( (array!60530 (arr!29124 (Array (_ BitVec 32) ValueCell!10644)) (size!29604 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60529)

(declare-fun zeroValue!1367 () V!34651)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34651)

(declare-fun lt!432370 () ListLongMap!13157)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3779 (array!60527 array!60529 (_ BitVec 32) (_ BitVec 32) V!34651 V!34651 (_ BitVec 32) Int) ListLongMap!13157)

(assert (=> b!973166 (= lt!432370 (+!2865 (getCurrentListMap!3779 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432373))))

(assert (=> b!973166 (= lt!432373 (tuple2!14447 lt!432375 lt!432372))))

(declare-fun get!15118 (ValueCell!10644 V!34651) V!34651)

(declare-fun dynLambda!1704 (Int (_ BitVec 64)) V!34651)

(assert (=> b!973166 (= lt!432372 (get!15118 (select (arr!29124 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1704 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432376 () Unit!32391)

(declare-fun lemmaListMapRecursiveValidKeyArray!276 (array!60527 array!60529 (_ BitVec 32) (_ BitVec 32) V!34651 V!34651 (_ BitVec 32) Int) Unit!32391)

(assert (=> b!973166 (= lt!432376 (lemmaListMapRecursiveValidKeyArray!276 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973167 () Bool)

(declare-fun res!651527 () Bool)

(declare-fun e!548568 () Bool)

(assert (=> b!973167 (=> (not res!651527) (not e!548568))))

(assert (=> b!973167 (= res!651527 (and (= (size!29604 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29603 _keys!1717) (size!29604 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35386 () Bool)

(declare-fun mapRes!35386 () Bool)

(declare-fun tp!67339 () Bool)

(declare-fun e!548567 () Bool)

(assert (=> mapNonEmpty!35386 (= mapRes!35386 (and tp!67339 e!548567))))

(declare-fun mapRest!35386 () (Array (_ BitVec 32) ValueCell!10644))

(declare-fun mapValue!35386 () ValueCell!10644)

(declare-fun mapKey!35386 () (_ BitVec 32))

(assert (=> mapNonEmpty!35386 (= (arr!29124 _values!1425) (store mapRest!35386 mapKey!35386 mapValue!35386))))

(declare-fun res!651526 () Bool)

(assert (=> start!83388 (=> (not res!651526) (not e!548568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83388 (= res!651526 (validMask!0 mask!2147))))

(assert (=> start!83388 e!548568))

(assert (=> start!83388 true))

(declare-fun e!548565 () Bool)

(declare-fun array_inv!22427 (array!60529) Bool)

(assert (=> start!83388 (and (array_inv!22427 _values!1425) e!548565)))

(declare-fun tp_is_empty!22251 () Bool)

(assert (=> start!83388 tp_is_empty!22251))

(assert (=> start!83388 tp!67338))

(declare-fun array_inv!22428 (array!60527) Bool)

(assert (=> start!83388 (array_inv!22428 _keys!1717)))

(declare-fun b!973168 () Bool)

(declare-fun res!651524 () Bool)

(assert (=> b!973168 (=> (not res!651524) (not e!548568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973168 (= res!651524 (validKeyInArray!0 (select (arr!29123 _keys!1717) i!822)))))

(declare-fun b!973169 () Bool)

(assert (=> b!973169 (= e!548567 tp_is_empty!22251)))

(declare-fun b!973170 () Bool)

(declare-fun e!548566 () Bool)

(assert (=> b!973170 (= e!548566 tp_is_empty!22251)))

(declare-fun b!973171 () Bool)

(declare-fun res!651522 () Bool)

(assert (=> b!973171 (=> (not res!651522) (not e!548568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60527 (_ BitVec 32)) Bool)

(assert (=> b!973171 (= res!651522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973172 () Bool)

(declare-fun e!548571 () Bool)

(assert (=> b!973172 (= e!548571 e!548570)))

(declare-fun res!651523 () Bool)

(assert (=> b!973172 (=> (not res!651523) (not e!548570))))

(assert (=> b!973172 (= res!651523 (validKeyInArray!0 lt!432375))))

(assert (=> b!973172 (= lt!432375 (select (arr!29123 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!973172 (= lt!432370 (getCurrentListMap!3779 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973173 () Bool)

(assert (=> b!973173 (= e!548565 (and e!548566 mapRes!35386))))

(declare-fun condMapEmpty!35386 () Bool)

(declare-fun mapDefault!35386 () ValueCell!10644)

(assert (=> b!973173 (= condMapEmpty!35386 (= (arr!29124 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10644)) mapDefault!35386)))))

(declare-fun b!973174 () Bool)

(declare-fun res!651528 () Bool)

(assert (=> b!973174 (=> (not res!651528) (not e!548568))))

(declare-datatypes ((List!20329 0))(
  ( (Nil!20326) (Cons!20325 (h!21487 (_ BitVec 64)) (t!28788 List!20329)) )
))
(declare-fun arrayNoDuplicates!0 (array!60527 (_ BitVec 32) List!20329) Bool)

(assert (=> b!973174 (= res!651528 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20326))))

(declare-fun b!973175 () Bool)

(assert (=> b!973175 (= e!548568 e!548571)))

(declare-fun res!651525 () Bool)

(assert (=> b!973175 (=> (not res!651525) (not e!548571))))

(assert (=> b!973175 (= res!651525 (contains!5639 lt!432374 (select (arr!29123 _keys!1717) i!822)))))

(assert (=> b!973175 (= lt!432374 (getCurrentListMap!3779 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun mapIsEmpty!35386 () Bool)

(assert (=> mapIsEmpty!35386 mapRes!35386))

(declare-fun b!973176 () Bool)

(declare-fun res!651529 () Bool)

(assert (=> b!973176 (=> (not res!651529) (not e!548568))))

(assert (=> b!973176 (= res!651529 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29603 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29603 _keys!1717))))))

(assert (= (and start!83388 res!651526) b!973167))

(assert (= (and b!973167 res!651527) b!973171))

(assert (= (and b!973171 res!651522) b!973174))

(assert (= (and b!973174 res!651528) b!973176))

(assert (= (and b!973176 res!651529) b!973168))

(assert (= (and b!973168 res!651524) b!973175))

(assert (= (and b!973175 res!651525) b!973172))

(assert (= (and b!973172 res!651523) b!973166))

(assert (= (and b!973173 condMapEmpty!35386) mapIsEmpty!35386))

(assert (= (and b!973173 (not condMapEmpty!35386)) mapNonEmpty!35386))

(get-info :version)

(assert (= (and mapNonEmpty!35386 ((_ is ValueCellFull!10644) mapValue!35386)) b!973169))

(assert (= (and b!973173 ((_ is ValueCellFull!10644) mapDefault!35386)) b!973170))

(assert (= start!83388 b!973173))

(declare-fun b_lambda!14547 () Bool)

(assert (=> (not b_lambda!14547) (not b!973166)))

(declare-fun t!28786 () Bool)

(declare-fun tb!6309 () Bool)

(assert (=> (and start!83388 (= defaultEntry!1428 defaultEntry!1428) t!28786) tb!6309))

(declare-fun result!12587 () Bool)

(assert (=> tb!6309 (= result!12587 tp_is_empty!22251)))

(assert (=> b!973166 t!28786))

(declare-fun b_and!30947 () Bool)

(assert (= b_and!30945 (and (=> t!28786 result!12587) b_and!30947)))

(declare-fun m!900835 () Bool)

(assert (=> b!973174 m!900835))

(declare-fun m!900837 () Bool)

(assert (=> b!973168 m!900837))

(assert (=> b!973168 m!900837))

(declare-fun m!900839 () Bool)

(assert (=> b!973168 m!900839))

(declare-fun m!900841 () Bool)

(assert (=> b!973171 m!900841))

(assert (=> b!973175 m!900837))

(assert (=> b!973175 m!900837))

(declare-fun m!900843 () Bool)

(assert (=> b!973175 m!900843))

(declare-fun m!900845 () Bool)

(assert (=> b!973175 m!900845))

(declare-fun m!900847 () Bool)

(assert (=> b!973172 m!900847))

(declare-fun m!900849 () Bool)

(assert (=> b!973172 m!900849))

(declare-fun m!900851 () Bool)

(assert (=> b!973172 m!900851))

(declare-fun m!900853 () Bool)

(assert (=> mapNonEmpty!35386 m!900853))

(declare-fun m!900855 () Bool)

(assert (=> start!83388 m!900855))

(declare-fun m!900857 () Bool)

(assert (=> start!83388 m!900857))

(declare-fun m!900859 () Bool)

(assert (=> start!83388 m!900859))

(declare-fun m!900861 () Bool)

(assert (=> b!973166 m!900861))

(declare-fun m!900863 () Bool)

(assert (=> b!973166 m!900863))

(declare-fun m!900865 () Bool)

(assert (=> b!973166 m!900865))

(assert (=> b!973166 m!900837))

(assert (=> b!973166 m!900861))

(assert (=> b!973166 m!900865))

(declare-fun m!900867 () Bool)

(assert (=> b!973166 m!900867))

(assert (=> b!973166 m!900863))

(assert (=> b!973166 m!900837))

(declare-fun m!900869 () Bool)

(assert (=> b!973166 m!900869))

(declare-fun m!900871 () Bool)

(assert (=> b!973166 m!900871))

(declare-fun m!900873 () Bool)

(assert (=> b!973166 m!900873))

(assert (=> b!973166 m!900837))

(declare-fun m!900875 () Bool)

(assert (=> b!973166 m!900875))

(assert (=> b!973166 m!900873))

(declare-fun m!900877 () Bool)

(assert (=> b!973166 m!900877))

(check-sat (not b!973168) (not b!973166) (not b!973174) (not b!973171) (not start!83388) b_and!30947 (not b!973172) tp_is_empty!22251 (not b_next!19353) (not b_lambda!14547) (not mapNonEmpty!35386) (not b!973175))
(check-sat b_and!30947 (not b_next!19353))
