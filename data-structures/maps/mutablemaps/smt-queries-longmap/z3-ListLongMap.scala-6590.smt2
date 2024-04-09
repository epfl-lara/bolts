; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83454 () Bool)

(assert start!83454)

(declare-fun b_free!19419 () Bool)

(declare-fun b_next!19419 () Bool)

(assert (=> start!83454 (= b_free!19419 (not b_next!19419))))

(declare-fun tp!67537 () Bool)

(declare-fun b_and!31039 () Bool)

(assert (=> start!83454 (= tp!67537 b_and!31039)))

(declare-fun mapIsEmpty!35485 () Bool)

(declare-fun mapRes!35485 () Bool)

(assert (=> mapIsEmpty!35485 mapRes!35485))

(declare-fun b!974224 () Bool)

(declare-fun res!652259 () Bool)

(declare-fun e!549144 () Bool)

(assert (=> b!974224 (=> (not res!652259) (not e!549144))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34739 0))(
  ( (V!34740 (val!11209 Int)) )
))
(declare-datatypes ((ValueCell!10677 0))(
  ( (ValueCellFull!10677 (v!13768 V!34739)) (EmptyCell!10677) )
))
(declare-datatypes ((array!60655 0))(
  ( (array!60656 (arr!29187 (Array (_ BitVec 32) ValueCell!10677)) (size!29667 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60655)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60657 0))(
  ( (array!60658 (arr!29188 (Array (_ BitVec 32) (_ BitVec 64))) (size!29668 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60657)

(assert (=> b!974224 (= res!652259 (and (= (size!29667 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29668 _keys!1717) (size!29667 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974225 () Bool)

(declare-fun e!549140 () Bool)

(declare-fun tp_is_empty!22317 () Bool)

(assert (=> b!974225 (= e!549140 tp_is_empty!22317)))

(declare-fun b!974226 () Bool)

(declare-fun res!652260 () Bool)

(assert (=> b!974226 (=> (not res!652260) (not e!549144))))

(declare-datatypes ((List!20378 0))(
  ( (Nil!20375) (Cons!20374 (h!21536 (_ BitVec 64)) (t!28863 List!20378)) )
))
(declare-fun arrayNoDuplicates!0 (array!60657 (_ BitVec 32) List!20378) Bool)

(assert (=> b!974226 (= res!652260 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20375))))

(declare-fun b!974227 () Bool)

(declare-fun e!549142 () Bool)

(assert (=> b!974227 (= e!549142 (and e!549140 mapRes!35485))))

(declare-fun condMapEmpty!35485 () Bool)

(declare-fun mapDefault!35485 () ValueCell!10677)

(assert (=> b!974227 (= condMapEmpty!35485 (= (arr!29187 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10677)) mapDefault!35485)))))

(declare-fun b!974228 () Bool)

(declare-fun res!652258 () Bool)

(assert (=> b!974228 (=> (not res!652258) (not e!549144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60657 (_ BitVec 32)) Bool)

(assert (=> b!974228 (= res!652258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974229 () Bool)

(declare-fun res!652261 () Bool)

(assert (=> b!974229 (=> (not res!652261) (not e!549144))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974229 (= res!652261 (validKeyInArray!0 (select (arr!29188 _keys!1717) i!822)))))

(declare-fun res!652255 () Bool)

(assert (=> start!83454 (=> (not res!652255) (not e!549144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83454 (= res!652255 (validMask!0 mask!2147))))

(assert (=> start!83454 e!549144))

(assert (=> start!83454 true))

(declare-fun array_inv!22473 (array!60655) Bool)

(assert (=> start!83454 (and (array_inv!22473 _values!1425) e!549142)))

(assert (=> start!83454 tp_is_empty!22317))

(assert (=> start!83454 tp!67537))

(declare-fun array_inv!22474 (array!60657) Bool)

(assert (=> start!83454 (array_inv!22474 _keys!1717)))

(declare-fun b!974230 () Bool)

(declare-fun res!652256 () Bool)

(assert (=> b!974230 (=> (not res!652256) (not e!549144))))

(declare-fun zeroValue!1367 () V!34739)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34739)

(declare-fun defaultEntry!1428 () Int)

(declare-datatypes ((tuple2!14502 0))(
  ( (tuple2!14503 (_1!7261 (_ BitVec 64)) (_2!7261 V!34739)) )
))
(declare-datatypes ((List!20379 0))(
  ( (Nil!20376) (Cons!20375 (h!21537 tuple2!14502) (t!28864 List!20379)) )
))
(declare-datatypes ((ListLongMap!13213 0))(
  ( (ListLongMap!13214 (toList!6622 List!20379)) )
))
(declare-fun contains!5662 (ListLongMap!13213 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3807 (array!60657 array!60655 (_ BitVec 32) (_ BitVec 32) V!34739 V!34739 (_ BitVec 32) Int) ListLongMap!13213)

(assert (=> b!974230 (= res!652256 (contains!5662 (getCurrentListMap!3807 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29188 _keys!1717) i!822)))))

(declare-fun b!974231 () Bool)

(declare-fun res!652257 () Bool)

(assert (=> b!974231 (=> (not res!652257) (not e!549144))))

(assert (=> b!974231 (= res!652257 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29668 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29668 _keys!1717))))))

(declare-fun b!974232 () Bool)

(assert (=> b!974232 (= e!549144 false)))

(declare-fun lt!432709 () ListLongMap!13213)

(assert (=> b!974232 (= lt!432709 (getCurrentListMap!3807 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974233 () Bool)

(declare-fun e!549143 () Bool)

(assert (=> b!974233 (= e!549143 tp_is_empty!22317)))

(declare-fun mapNonEmpty!35485 () Bool)

(declare-fun tp!67536 () Bool)

(assert (=> mapNonEmpty!35485 (= mapRes!35485 (and tp!67536 e!549143))))

(declare-fun mapRest!35485 () (Array (_ BitVec 32) ValueCell!10677))

(declare-fun mapKey!35485 () (_ BitVec 32))

(declare-fun mapValue!35485 () ValueCell!10677)

(assert (=> mapNonEmpty!35485 (= (arr!29187 _values!1425) (store mapRest!35485 mapKey!35485 mapValue!35485))))

(assert (= (and start!83454 res!652255) b!974224))

(assert (= (and b!974224 res!652259) b!974228))

(assert (= (and b!974228 res!652258) b!974226))

(assert (= (and b!974226 res!652260) b!974231))

(assert (= (and b!974231 res!652257) b!974229))

(assert (= (and b!974229 res!652261) b!974230))

(assert (= (and b!974230 res!652256) b!974232))

(assert (= (and b!974227 condMapEmpty!35485) mapIsEmpty!35485))

(assert (= (and b!974227 (not condMapEmpty!35485)) mapNonEmpty!35485))

(get-info :version)

(assert (= (and mapNonEmpty!35485 ((_ is ValueCellFull!10677) mapValue!35485)) b!974233))

(assert (= (and b!974227 ((_ is ValueCellFull!10677) mapDefault!35485)) b!974225))

(assert (= start!83454 b!974227))

(declare-fun m!901869 () Bool)

(assert (=> b!974226 m!901869))

(declare-fun m!901871 () Bool)

(assert (=> b!974229 m!901871))

(assert (=> b!974229 m!901871))

(declare-fun m!901873 () Bool)

(assert (=> b!974229 m!901873))

(declare-fun m!901875 () Bool)

(assert (=> b!974232 m!901875))

(declare-fun m!901877 () Bool)

(assert (=> start!83454 m!901877))

(declare-fun m!901879 () Bool)

(assert (=> start!83454 m!901879))

(declare-fun m!901881 () Bool)

(assert (=> start!83454 m!901881))

(declare-fun m!901883 () Bool)

(assert (=> mapNonEmpty!35485 m!901883))

(declare-fun m!901885 () Bool)

(assert (=> b!974228 m!901885))

(declare-fun m!901887 () Bool)

(assert (=> b!974230 m!901887))

(assert (=> b!974230 m!901871))

(assert (=> b!974230 m!901887))

(assert (=> b!974230 m!901871))

(declare-fun m!901889 () Bool)

(assert (=> b!974230 m!901889))

(check-sat (not mapNonEmpty!35485) (not b!974232) tp_is_empty!22317 (not b!974229) b_and!31039 (not b_next!19419) (not start!83454) (not b!974226) (not b!974228) (not b!974230))
(check-sat b_and!31039 (not b_next!19419))
