; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83526 () Bool)

(assert start!83526)

(declare-fun b_free!19485 () Bool)

(declare-fun b_next!19485 () Bool)

(assert (=> start!83526 (= b_free!19485 (not b_next!19485))))

(declare-fun tp!67743 () Bool)

(declare-fun b_and!31105 () Bool)

(assert (=> start!83526 (= tp!67743 b_and!31105)))

(declare-fun b!975277 () Bool)

(declare-fun res!652984 () Bool)

(declare-fun e!549692 () Bool)

(assert (=> b!975277 (=> (not res!652984) (not e!549692))))

(declare-datatypes ((array!60793 0))(
  ( (array!60794 (arr!29256 (Array (_ BitVec 32) (_ BitVec 64))) (size!29736 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60793)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975277 (= res!652984 (validKeyInArray!0 (select (arr!29256 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35593 () Bool)

(declare-fun mapRes!35593 () Bool)

(declare-fun tp!67744 () Bool)

(declare-fun e!549693 () Bool)

(assert (=> mapNonEmpty!35593 (= mapRes!35593 (and tp!67744 e!549693))))

(declare-fun mapKey!35593 () (_ BitVec 32))

(declare-datatypes ((V!34835 0))(
  ( (V!34836 (val!11245 Int)) )
))
(declare-datatypes ((ValueCell!10713 0))(
  ( (ValueCellFull!10713 (v!13804 V!34835)) (EmptyCell!10713) )
))
(declare-fun mapRest!35593 () (Array (_ BitVec 32) ValueCell!10713))

(declare-datatypes ((array!60795 0))(
  ( (array!60796 (arr!29257 (Array (_ BitVec 32) ValueCell!10713)) (size!29737 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60795)

(declare-fun mapValue!35593 () ValueCell!10713)

(assert (=> mapNonEmpty!35593 (= (arr!29257 _values!1425) (store mapRest!35593 mapKey!35593 mapValue!35593))))

(declare-fun b!975278 () Bool)

(declare-fun e!549691 () Bool)

(declare-fun e!549689 () Bool)

(assert (=> b!975278 (= e!549691 (and e!549689 mapRes!35593))))

(declare-fun condMapEmpty!35593 () Bool)

(declare-fun mapDefault!35593 () ValueCell!10713)

(assert (=> b!975278 (= condMapEmpty!35593 (= (arr!29257 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10713)) mapDefault!35593)))))

(declare-fun res!652989 () Bool)

(assert (=> start!83526 (=> (not res!652989) (not e!549692))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83526 (= res!652989 (validMask!0 mask!2147))))

(assert (=> start!83526 e!549692))

(assert (=> start!83526 true))

(declare-fun array_inv!22523 (array!60795) Bool)

(assert (=> start!83526 (and (array_inv!22523 _values!1425) e!549691)))

(declare-fun tp_is_empty!22389 () Bool)

(assert (=> start!83526 tp_is_empty!22389))

(assert (=> start!83526 tp!67743))

(declare-fun array_inv!22524 (array!60793) Bool)

(assert (=> start!83526 (array_inv!22524 _keys!1717)))

(declare-fun b!975279 () Bool)

(declare-fun res!652986 () Bool)

(assert (=> b!975279 (=> (not res!652986) (not e!549692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60793 (_ BitVec 32)) Bool)

(assert (=> b!975279 (= res!652986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975280 () Bool)

(declare-fun res!652988 () Bool)

(assert (=> b!975280 (=> (not res!652988) (not e!549692))))

(declare-datatypes ((List!20432 0))(
  ( (Nil!20429) (Cons!20428 (h!21590 (_ BitVec 64)) (t!28917 List!20432)) )
))
(declare-fun arrayNoDuplicates!0 (array!60793 (_ BitVec 32) List!20432) Bool)

(assert (=> b!975280 (= res!652988 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20429))))

(declare-fun b!975281 () Bool)

(declare-fun res!652987 () Bool)

(assert (=> b!975281 (=> (not res!652987) (not e!549692))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!975281 (= res!652987 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29736 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29736 _keys!1717))))))

(declare-fun b!975282 () Bool)

(declare-fun res!652990 () Bool)

(assert (=> b!975282 (=> (not res!652990) (not e!549692))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975282 (= res!652990 (and (= (size!29737 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29736 _keys!1717) (size!29737 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975283 () Bool)

(assert (=> b!975283 (= e!549693 tp_is_empty!22389)))

(declare-fun mapIsEmpty!35593 () Bool)

(assert (=> mapIsEmpty!35593 mapRes!35593))

(declare-fun b!975284 () Bool)

(declare-fun res!652985 () Bool)

(assert (=> b!975284 (=> (not res!652985) (not e!549692))))

(declare-fun zeroValue!1367 () V!34835)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34835)

(declare-datatypes ((tuple2!14560 0))(
  ( (tuple2!14561 (_1!7290 (_ BitVec 64)) (_2!7290 V!34835)) )
))
(declare-datatypes ((List!20433 0))(
  ( (Nil!20430) (Cons!20429 (h!21591 tuple2!14560) (t!28918 List!20433)) )
))
(declare-datatypes ((ListLongMap!13271 0))(
  ( (ListLongMap!13272 (toList!6651 List!20433)) )
))
(declare-fun contains!5683 (ListLongMap!13271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3836 (array!60793 array!60795 (_ BitVec 32) (_ BitVec 32) V!34835 V!34835 (_ BitVec 32) Int) ListLongMap!13271)

(assert (=> b!975284 (= res!652985 (contains!5683 (getCurrentListMap!3836 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29256 _keys!1717) i!822)))))

(declare-fun b!975285 () Bool)

(assert (=> b!975285 (= e!549689 tp_is_empty!22389)))

(declare-fun b!975286 () Bool)

(assert (=> b!975286 (= e!549692 false)))

(declare-fun lt!432808 () ListLongMap!13271)

(assert (=> b!975286 (= lt!432808 (getCurrentListMap!3836 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83526 res!652989) b!975282))

(assert (= (and b!975282 res!652990) b!975279))

(assert (= (and b!975279 res!652986) b!975280))

(assert (= (and b!975280 res!652988) b!975281))

(assert (= (and b!975281 res!652987) b!975277))

(assert (= (and b!975277 res!652984) b!975284))

(assert (= (and b!975284 res!652985) b!975286))

(assert (= (and b!975278 condMapEmpty!35593) mapIsEmpty!35593))

(assert (= (and b!975278 (not condMapEmpty!35593)) mapNonEmpty!35593))

(get-info :version)

(assert (= (and mapNonEmpty!35593 ((_ is ValueCellFull!10713) mapValue!35593)) b!975283))

(assert (= (and b!975278 ((_ is ValueCellFull!10713) mapDefault!35593)) b!975285))

(assert (= start!83526 b!975278))

(declare-fun m!902631 () Bool)

(assert (=> b!975279 m!902631))

(declare-fun m!902633 () Bool)

(assert (=> b!975280 m!902633))

(declare-fun m!902635 () Bool)

(assert (=> b!975284 m!902635))

(declare-fun m!902637 () Bool)

(assert (=> b!975284 m!902637))

(assert (=> b!975284 m!902635))

(assert (=> b!975284 m!902637))

(declare-fun m!902639 () Bool)

(assert (=> b!975284 m!902639))

(declare-fun m!902641 () Bool)

(assert (=> mapNonEmpty!35593 m!902641))

(declare-fun m!902643 () Bool)

(assert (=> start!83526 m!902643))

(declare-fun m!902645 () Bool)

(assert (=> start!83526 m!902645))

(declare-fun m!902647 () Bool)

(assert (=> start!83526 m!902647))

(assert (=> b!975277 m!902637))

(assert (=> b!975277 m!902637))

(declare-fun m!902649 () Bool)

(assert (=> b!975277 m!902649))

(declare-fun m!902651 () Bool)

(assert (=> b!975286 m!902651))

(check-sat b_and!31105 (not b_next!19485) tp_is_empty!22389 (not b!975277) (not b!975286) (not start!83526) (not mapNonEmpty!35593) (not b!975280) (not b!975284) (not b!975279))
(check-sat b_and!31105 (not b_next!19485))
