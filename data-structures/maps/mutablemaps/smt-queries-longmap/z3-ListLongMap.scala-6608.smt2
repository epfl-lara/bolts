; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83562 () Bool)

(assert start!83562)

(declare-fun b_free!19521 () Bool)

(declare-fun b_next!19521 () Bool)

(assert (=> start!83562 (= b_free!19521 (not b_next!19521))))

(declare-fun tp!67851 () Bool)

(declare-fun b_and!31155 () Bool)

(assert (=> start!83562 (= tp!67851 b_and!31155)))

(declare-fun b!975863 () Bool)

(declare-fun e!549991 () Bool)

(declare-fun e!549994 () Bool)

(declare-fun mapRes!35647 () Bool)

(assert (=> b!975863 (= e!549991 (and e!549994 mapRes!35647))))

(declare-fun condMapEmpty!35647 () Bool)

(declare-datatypes ((V!34883 0))(
  ( (V!34884 (val!11263 Int)) )
))
(declare-datatypes ((ValueCell!10731 0))(
  ( (ValueCellFull!10731 (v!13822 V!34883)) (EmptyCell!10731) )
))
(declare-datatypes ((array!60865 0))(
  ( (array!60866 (arr!29292 (Array (_ BitVec 32) ValueCell!10731)) (size!29772 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60865)

(declare-fun mapDefault!35647 () ValueCell!10731)

(assert (=> b!975863 (= condMapEmpty!35647 (= (arr!29292 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10731)) mapDefault!35647)))))

(declare-fun b!975864 () Bool)

(declare-fun res!653401 () Bool)

(declare-fun e!549995 () Bool)

(assert (=> b!975864 (=> (not res!653401) (not e!549995))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34883)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34883)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60867 0))(
  ( (array!60868 (arr!29293 (Array (_ BitVec 32) (_ BitVec 64))) (size!29773 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60867)

(declare-fun from!2118 () (_ BitVec 32))

(declare-datatypes ((tuple2!14590 0))(
  ( (tuple2!14591 (_1!7305 (_ BitVec 64)) (_2!7305 V!34883)) )
))
(declare-datatypes ((List!20461 0))(
  ( (Nil!20458) (Cons!20457 (h!21619 tuple2!14590) (t!28962 List!20461)) )
))
(declare-datatypes ((ListLongMap!13301 0))(
  ( (ListLongMap!13302 (toList!6666 List!20461)) )
))
(declare-fun contains!5697 (ListLongMap!13301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3851 (array!60867 array!60865 (_ BitVec 32) (_ BitVec 32) V!34883 V!34883 (_ BitVec 32) Int) ListLongMap!13301)

(assert (=> b!975864 (= res!653401 (contains!5697 (getCurrentListMap!3851 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29293 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35647 () Bool)

(assert (=> mapIsEmpty!35647 mapRes!35647))

(declare-fun b!975866 () Bool)

(declare-fun res!653397 () Bool)

(assert (=> b!975866 (=> (not res!653397) (not e!549995))))

(assert (=> b!975866 (= res!653397 (and (= (size!29772 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29773 _keys!1717) (size!29772 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975867 () Bool)

(declare-fun e!549996 () Bool)

(assert (=> b!975867 (= e!549996 (not (bvsge i!822 #b00000000000000000000000000000000)))))

(declare-fun lt!432908 () (_ BitVec 64))

(declare-fun lt!432909 () ListLongMap!13301)

(declare-fun +!2878 (ListLongMap!13301 tuple2!14590) ListLongMap!13301)

(declare-fun get!15189 (ValueCell!10731 V!34883) V!34883)

(declare-fun dynLambda!1717 (Int (_ BitVec 64)) V!34883)

(assert (=> b!975867 (= lt!432909 (+!2878 (getCurrentListMap!3851 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14591 lt!432908 (get!15189 (select (arr!29292 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1717 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32417 0))(
  ( (Unit!32418) )
))
(declare-fun lt!432910 () Unit!32417)

(declare-fun lemmaListMapRecursiveValidKeyArray!289 (array!60867 array!60865 (_ BitVec 32) (_ BitVec 32) V!34883 V!34883 (_ BitVec 32) Int) Unit!32417)

(assert (=> b!975867 (= lt!432910 (lemmaListMapRecursiveValidKeyArray!289 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975868 () Bool)

(declare-fun e!549992 () Bool)

(declare-fun tp_is_empty!22425 () Bool)

(assert (=> b!975868 (= e!549992 tp_is_empty!22425)))

(declare-fun b!975869 () Bool)

(declare-fun res!653399 () Bool)

(assert (=> b!975869 (=> (not res!653399) (not e!549995))))

(assert (=> b!975869 (= res!653399 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29773 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29773 _keys!1717))))))

(declare-fun b!975870 () Bool)

(declare-fun res!653395 () Bool)

(assert (=> b!975870 (=> (not res!653395) (not e!549995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975870 (= res!653395 (validKeyInArray!0 (select (arr!29293 _keys!1717) i!822)))))

(declare-fun b!975871 () Bool)

(declare-fun res!653398 () Bool)

(assert (=> b!975871 (=> (not res!653398) (not e!549995))))

(declare-datatypes ((List!20462 0))(
  ( (Nil!20459) (Cons!20458 (h!21620 (_ BitVec 64)) (t!28963 List!20462)) )
))
(declare-fun arrayNoDuplicates!0 (array!60867 (_ BitVec 32) List!20462) Bool)

(assert (=> b!975871 (= res!653398 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20459))))

(declare-fun mapNonEmpty!35647 () Bool)

(declare-fun tp!67852 () Bool)

(assert (=> mapNonEmpty!35647 (= mapRes!35647 (and tp!67852 e!549992))))

(declare-fun mapValue!35647 () ValueCell!10731)

(declare-fun mapKey!35647 () (_ BitVec 32))

(declare-fun mapRest!35647 () (Array (_ BitVec 32) ValueCell!10731))

(assert (=> mapNonEmpty!35647 (= (arr!29292 _values!1425) (store mapRest!35647 mapKey!35647 mapValue!35647))))

(declare-fun b!975872 () Bool)

(assert (=> b!975872 (= e!549995 e!549996)))

(declare-fun res!653394 () Bool)

(assert (=> b!975872 (=> (not res!653394) (not e!549996))))

(assert (=> b!975872 (= res!653394 (validKeyInArray!0 lt!432908))))

(assert (=> b!975872 (= lt!432908 (select (arr!29293 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!975872 (= lt!432909 (getCurrentListMap!3851 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975873 () Bool)

(assert (=> b!975873 (= e!549994 tp_is_empty!22425)))

(declare-fun b!975865 () Bool)

(declare-fun res!653396 () Bool)

(assert (=> b!975865 (=> (not res!653396) (not e!549995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60867 (_ BitVec 32)) Bool)

(assert (=> b!975865 (= res!653396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!653400 () Bool)

(assert (=> start!83562 (=> (not res!653400) (not e!549995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83562 (= res!653400 (validMask!0 mask!2147))))

(assert (=> start!83562 e!549995))

(assert (=> start!83562 true))

(declare-fun array_inv!22549 (array!60865) Bool)

(assert (=> start!83562 (and (array_inv!22549 _values!1425) e!549991)))

(assert (=> start!83562 tp_is_empty!22425))

(assert (=> start!83562 tp!67851))

(declare-fun array_inv!22550 (array!60867) Bool)

(assert (=> start!83562 (array_inv!22550 _keys!1717)))

(assert (= (and start!83562 res!653400) b!975866))

(assert (= (and b!975866 res!653397) b!975865))

(assert (= (and b!975865 res!653396) b!975871))

(assert (= (and b!975871 res!653398) b!975869))

(assert (= (and b!975869 res!653399) b!975870))

(assert (= (and b!975870 res!653395) b!975864))

(assert (= (and b!975864 res!653401) b!975872))

(assert (= (and b!975872 res!653394) b!975867))

(assert (= (and b!975863 condMapEmpty!35647) mapIsEmpty!35647))

(assert (= (and b!975863 (not condMapEmpty!35647)) mapNonEmpty!35647))

(get-info :version)

(assert (= (and mapNonEmpty!35647 ((_ is ValueCellFull!10731) mapValue!35647)) b!975868))

(assert (= (and b!975863 ((_ is ValueCellFull!10731) mapDefault!35647)) b!975873))

(assert (= start!83562 b!975863))

(declare-fun b_lambda!14589 () Bool)

(assert (=> (not b_lambda!14589) (not b!975867)))

(declare-fun t!28961 () Bool)

(declare-fun tb!6351 () Bool)

(assert (=> (and start!83562 (= defaultEntry!1428 defaultEntry!1428) t!28961) tb!6351))

(declare-fun result!12671 () Bool)

(assert (=> tb!6351 (= result!12671 tp_is_empty!22425)))

(assert (=> b!975867 t!28961))

(declare-fun b_and!31157 () Bool)

(assert (= b_and!31155 (and (=> t!28961 result!12671) b_and!31157)))

(declare-fun m!903151 () Bool)

(assert (=> start!83562 m!903151))

(declare-fun m!903153 () Bool)

(assert (=> start!83562 m!903153))

(declare-fun m!903155 () Bool)

(assert (=> start!83562 m!903155))

(declare-fun m!903157 () Bool)

(assert (=> b!975867 m!903157))

(declare-fun m!903159 () Bool)

(assert (=> b!975867 m!903159))

(declare-fun m!903161 () Bool)

(assert (=> b!975867 m!903161))

(assert (=> b!975867 m!903159))

(declare-fun m!903163 () Bool)

(assert (=> b!975867 m!903163))

(assert (=> b!975867 m!903157))

(assert (=> b!975867 m!903163))

(declare-fun m!903165 () Bool)

(assert (=> b!975867 m!903165))

(declare-fun m!903167 () Bool)

(assert (=> b!975867 m!903167))

(declare-fun m!903169 () Bool)

(assert (=> b!975872 m!903169))

(declare-fun m!903171 () Bool)

(assert (=> b!975872 m!903171))

(declare-fun m!903173 () Bool)

(assert (=> b!975872 m!903173))

(declare-fun m!903175 () Bool)

(assert (=> b!975871 m!903175))

(declare-fun m!903177 () Bool)

(assert (=> b!975870 m!903177))

(assert (=> b!975870 m!903177))

(declare-fun m!903179 () Bool)

(assert (=> b!975870 m!903179))

(declare-fun m!903181 () Bool)

(assert (=> b!975865 m!903181))

(declare-fun m!903183 () Bool)

(assert (=> mapNonEmpty!35647 m!903183))

(declare-fun m!903185 () Bool)

(assert (=> b!975864 m!903185))

(assert (=> b!975864 m!903177))

(assert (=> b!975864 m!903185))

(assert (=> b!975864 m!903177))

(declare-fun m!903187 () Bool)

(assert (=> b!975864 m!903187))

(check-sat tp_is_empty!22425 b_and!31157 (not b!975867) (not b_next!19521) (not start!83562) (not b!975865) (not b!975870) (not b!975872) (not b!975871) (not b_lambda!14589) (not b!975864) (not mapNonEmpty!35647))
(check-sat b_and!31157 (not b_next!19521))
