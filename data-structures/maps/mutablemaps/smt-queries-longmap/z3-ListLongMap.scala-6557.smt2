; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83256 () Bool)

(assert start!83256)

(declare-fun b_free!19221 () Bool)

(declare-fun b_next!19221 () Bool)

(assert (=> start!83256 (= b_free!19221 (not b_next!19221))))

(declare-fun tp!66943 () Bool)

(declare-fun b_and!30727 () Bool)

(assert (=> start!83256 (= tp!66943 b_and!30727)))

(declare-fun b!970969 () Bool)

(declare-fun res!650005 () Bool)

(declare-fun e!547406 () Bool)

(assert (=> b!970969 (=> (not res!650005) (not e!547406))))

(declare-datatypes ((array!60271 0))(
  ( (array!60272 (arr!28995 (Array (_ BitVec 32) (_ BitVec 64))) (size!29475 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60271)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970969 (= res!650005 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29475 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29475 _keys!1717))))))

(declare-fun b!970970 () Bool)

(assert (=> b!970970 (= e!547406 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34475 0))(
  ( (V!34476 (val!11110 Int)) )
))
(declare-datatypes ((ValueCell!10578 0))(
  ( (ValueCellFull!10578 (v!13669 V!34475)) (EmptyCell!10578) )
))
(declare-datatypes ((array!60273 0))(
  ( (array!60274 (arr!28996 (Array (_ BitVec 32) ValueCell!10578)) (size!29476 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60273)

(declare-datatypes ((tuple2!14340 0))(
  ( (tuple2!14341 (_1!7180 (_ BitVec 64)) (_2!7180 V!34475)) )
))
(declare-datatypes ((List!20230 0))(
  ( (Nil!20227) (Cons!20226 (h!21388 tuple2!14340) (t!28601 List!20230)) )
))
(declare-datatypes ((ListLongMap!13051 0))(
  ( (ListLongMap!13052 (toList!6541 List!20230)) )
))
(declare-fun lt!431746 () ListLongMap!13051)

(declare-fun zeroValue!1367 () V!34475)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34475)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3726 (array!60271 array!60273 (_ BitVec 32) (_ BitVec 32) V!34475 V!34475 (_ BitVec 32) Int) ListLongMap!13051)

(assert (=> b!970970 (= lt!431746 (getCurrentListMap!3726 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35188 () Bool)

(declare-fun mapRes!35188 () Bool)

(declare-fun tp!66942 () Bool)

(declare-fun e!547407 () Bool)

(assert (=> mapNonEmpty!35188 (= mapRes!35188 (and tp!66942 e!547407))))

(declare-fun mapRest!35188 () (Array (_ BitVec 32) ValueCell!10578))

(declare-fun mapValue!35188 () ValueCell!10578)

(declare-fun mapKey!35188 () (_ BitVec 32))

(assert (=> mapNonEmpty!35188 (= (arr!28996 _values!1425) (store mapRest!35188 mapKey!35188 mapValue!35188))))

(declare-fun b!970971 () Bool)

(declare-fun res!650007 () Bool)

(assert (=> b!970971 (=> (not res!650007) (not e!547406))))

(declare-datatypes ((List!20231 0))(
  ( (Nil!20228) (Cons!20227 (h!21389 (_ BitVec 64)) (t!28602 List!20231)) )
))
(declare-fun arrayNoDuplicates!0 (array!60271 (_ BitVec 32) List!20231) Bool)

(assert (=> b!970971 (= res!650007 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20228))))

(declare-fun b!970972 () Bool)

(declare-fun res!650011 () Bool)

(assert (=> b!970972 (=> (not res!650011) (not e!547406))))

(declare-fun contains!5595 (ListLongMap!13051 (_ BitVec 64)) Bool)

(assert (=> b!970972 (= res!650011 (contains!5595 (getCurrentListMap!3726 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28995 _keys!1717) i!822)))))

(declare-fun b!970974 () Bool)

(declare-fun res!650008 () Bool)

(assert (=> b!970974 (=> (not res!650008) (not e!547406))))

(assert (=> b!970974 (= res!650008 (and (= (size!29476 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29475 _keys!1717) (size!29476 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970975 () Bool)

(declare-fun e!547405 () Bool)

(declare-fun e!547404 () Bool)

(assert (=> b!970975 (= e!547405 (and e!547404 mapRes!35188))))

(declare-fun condMapEmpty!35188 () Bool)

(declare-fun mapDefault!35188 () ValueCell!10578)

(assert (=> b!970975 (= condMapEmpty!35188 (= (arr!28996 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10578)) mapDefault!35188)))))

(declare-fun b!970976 () Bool)

(declare-fun tp_is_empty!22119 () Bool)

(assert (=> b!970976 (= e!547407 tp_is_empty!22119)))

(declare-fun b!970977 () Bool)

(declare-fun res!650006 () Bool)

(assert (=> b!970977 (=> (not res!650006) (not e!547406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970977 (= res!650006 (validKeyInArray!0 (select (arr!28995 _keys!1717) i!822)))))

(declare-fun b!970973 () Bool)

(assert (=> b!970973 (= e!547404 tp_is_empty!22119)))

(declare-fun res!650010 () Bool)

(assert (=> start!83256 (=> (not res!650010) (not e!547406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83256 (= res!650010 (validMask!0 mask!2147))))

(assert (=> start!83256 e!547406))

(assert (=> start!83256 true))

(declare-fun array_inv!22331 (array!60273) Bool)

(assert (=> start!83256 (and (array_inv!22331 _values!1425) e!547405)))

(assert (=> start!83256 tp_is_empty!22119))

(assert (=> start!83256 tp!66943))

(declare-fun array_inv!22332 (array!60271) Bool)

(assert (=> start!83256 (array_inv!22332 _keys!1717)))

(declare-fun mapIsEmpty!35188 () Bool)

(assert (=> mapIsEmpty!35188 mapRes!35188))

(declare-fun b!970978 () Bool)

(declare-fun res!650009 () Bool)

(assert (=> b!970978 (=> (not res!650009) (not e!547406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60271 (_ BitVec 32)) Bool)

(assert (=> b!970978 (= res!650009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83256 res!650010) b!970974))

(assert (= (and b!970974 res!650008) b!970978))

(assert (= (and b!970978 res!650009) b!970971))

(assert (= (and b!970971 res!650007) b!970969))

(assert (= (and b!970969 res!650005) b!970977))

(assert (= (and b!970977 res!650006) b!970972))

(assert (= (and b!970972 res!650011) b!970970))

(assert (= (and b!970975 condMapEmpty!35188) mapIsEmpty!35188))

(assert (= (and b!970975 (not condMapEmpty!35188)) mapNonEmpty!35188))

(get-info :version)

(assert (= (and mapNonEmpty!35188 ((_ is ValueCellFull!10578) mapValue!35188)) b!970976))

(assert (= (and b!970975 ((_ is ValueCellFull!10578) mapDefault!35188)) b!970973))

(assert (= start!83256 b!970975))

(declare-fun m!898617 () Bool)

(assert (=> mapNonEmpty!35188 m!898617))

(declare-fun m!898619 () Bool)

(assert (=> b!970971 m!898619))

(declare-fun m!898621 () Bool)

(assert (=> b!970972 m!898621))

(declare-fun m!898623 () Bool)

(assert (=> b!970972 m!898623))

(assert (=> b!970972 m!898621))

(assert (=> b!970972 m!898623))

(declare-fun m!898625 () Bool)

(assert (=> b!970972 m!898625))

(declare-fun m!898627 () Bool)

(assert (=> b!970978 m!898627))

(declare-fun m!898629 () Bool)

(assert (=> start!83256 m!898629))

(declare-fun m!898631 () Bool)

(assert (=> start!83256 m!898631))

(declare-fun m!898633 () Bool)

(assert (=> start!83256 m!898633))

(declare-fun m!898635 () Bool)

(assert (=> b!970970 m!898635))

(assert (=> b!970977 m!898623))

(assert (=> b!970977 m!898623))

(declare-fun m!898637 () Bool)

(assert (=> b!970977 m!898637))

(check-sat (not b!970970) b_and!30727 (not b!970978) (not start!83256) tp_is_empty!22119 (not mapNonEmpty!35188) (not b!970971) (not b!970972) (not b_next!19221) (not b!970977))
(check-sat b_and!30727 (not b_next!19221))
