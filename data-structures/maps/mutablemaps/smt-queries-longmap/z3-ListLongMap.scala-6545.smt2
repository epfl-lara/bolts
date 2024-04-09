; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83184 () Bool)

(assert start!83184)

(declare-fun b_free!19149 () Bool)

(declare-fun b_next!19149 () Bool)

(assert (=> start!83184 (= b_free!19149 (not b_next!19149))))

(declare-fun tp!66726 () Bool)

(declare-fun b_and!30655 () Bool)

(assert (=> start!83184 (= tp!66726 b_and!30655)))

(declare-fun b!969961 () Bool)

(declare-fun res!649323 () Bool)

(declare-fun e!546866 () Bool)

(assert (=> b!969961 (=> (not res!649323) (not e!546866))))

(declare-datatypes ((array!60139 0))(
  ( (array!60140 (arr!28929 (Array (_ BitVec 32) (_ BitVec 64))) (size!29409 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60139)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60139 (_ BitVec 32)) Bool)

(assert (=> b!969961 (= res!649323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969962 () Bool)

(declare-fun res!649322 () Bool)

(assert (=> b!969962 (=> (not res!649322) (not e!546866))))

(declare-datatypes ((V!34379 0))(
  ( (V!34380 (val!11074 Int)) )
))
(declare-datatypes ((ValueCell!10542 0))(
  ( (ValueCellFull!10542 (v!13633 V!34379)) (EmptyCell!10542) )
))
(declare-datatypes ((array!60141 0))(
  ( (array!60142 (arr!28930 (Array (_ BitVec 32) ValueCell!10542)) (size!29410 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60141)

(declare-fun zeroValue!1367 () V!34379)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34379)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14286 0))(
  ( (tuple2!14287 (_1!7153 (_ BitVec 64)) (_2!7153 V!34379)) )
))
(declare-datatypes ((List!20178 0))(
  ( (Nil!20175) (Cons!20174 (h!21336 tuple2!14286) (t!28549 List!20178)) )
))
(declare-datatypes ((ListLongMap!12997 0))(
  ( (ListLongMap!12998 (toList!6514 List!20178)) )
))
(declare-fun contains!5569 (ListLongMap!12997 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3699 (array!60139 array!60141 (_ BitVec 32) (_ BitVec 32) V!34379 V!34379 (_ BitVec 32) Int) ListLongMap!12997)

(assert (=> b!969962 (= res!649322 (contains!5569 (getCurrentListMap!3699 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28929 _keys!1717) i!822)))))

(declare-fun res!649327 () Bool)

(assert (=> start!83184 (=> (not res!649327) (not e!546866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83184 (= res!649327 (validMask!0 mask!2147))))

(assert (=> start!83184 e!546866))

(assert (=> start!83184 true))

(declare-fun e!546865 () Bool)

(declare-fun array_inv!22283 (array!60141) Bool)

(assert (=> start!83184 (and (array_inv!22283 _values!1425) e!546865)))

(declare-fun tp_is_empty!22047 () Bool)

(assert (=> start!83184 tp_is_empty!22047))

(assert (=> start!83184 tp!66726))

(declare-fun array_inv!22284 (array!60139) Bool)

(assert (=> start!83184 (array_inv!22284 _keys!1717)))

(declare-fun b!969963 () Bool)

(declare-fun res!649325 () Bool)

(assert (=> b!969963 (=> (not res!649325) (not e!546866))))

(declare-datatypes ((List!20179 0))(
  ( (Nil!20176) (Cons!20175 (h!21337 (_ BitVec 64)) (t!28550 List!20179)) )
))
(declare-fun arrayNoDuplicates!0 (array!60139 (_ BitVec 32) List!20179) Bool)

(assert (=> b!969963 (= res!649325 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20176))))

(declare-fun b!969964 () Bool)

(declare-fun res!649324 () Bool)

(assert (=> b!969964 (=> (not res!649324) (not e!546866))))

(assert (=> b!969964 (= res!649324 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29409 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29409 _keys!1717))))))

(declare-fun mapNonEmpty!35080 () Bool)

(declare-fun mapRes!35080 () Bool)

(declare-fun tp!66727 () Bool)

(declare-fun e!546867 () Bool)

(assert (=> mapNonEmpty!35080 (= mapRes!35080 (and tp!66727 e!546867))))

(declare-fun mapRest!35080 () (Array (_ BitVec 32) ValueCell!10542))

(declare-fun mapValue!35080 () ValueCell!10542)

(declare-fun mapKey!35080 () (_ BitVec 32))

(assert (=> mapNonEmpty!35080 (= (arr!28930 _values!1425) (store mapRest!35080 mapKey!35080 mapValue!35080))))

(declare-fun b!969965 () Bool)

(declare-fun res!649326 () Bool)

(assert (=> b!969965 (=> (not res!649326) (not e!546866))))

(assert (=> b!969965 (= res!649326 (and (= (size!29410 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29409 _keys!1717) (size!29410 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969966 () Bool)

(declare-fun e!546864 () Bool)

(assert (=> b!969966 (= e!546864 tp_is_empty!22047)))

(declare-fun b!969967 () Bool)

(assert (=> b!969967 (= e!546865 (and e!546864 mapRes!35080))))

(declare-fun condMapEmpty!35080 () Bool)

(declare-fun mapDefault!35080 () ValueCell!10542)

(assert (=> b!969967 (= condMapEmpty!35080 (= (arr!28930 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10542)) mapDefault!35080)))))

(declare-fun b!969968 () Bool)

(assert (=> b!969968 (= e!546866 (or (bvslt from!2118 #b00000000000000000000000000000000) (bvsgt from!2118 (size!29409 _keys!1717))))))

(declare-fun b!969969 () Bool)

(declare-fun res!649321 () Bool)

(assert (=> b!969969 (=> (not res!649321) (not e!546866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969969 (= res!649321 (validKeyInArray!0 (select (arr!28929 _keys!1717) i!822)))))

(declare-fun b!969970 () Bool)

(assert (=> b!969970 (= e!546867 tp_is_empty!22047)))

(declare-fun mapIsEmpty!35080 () Bool)

(assert (=> mapIsEmpty!35080 mapRes!35080))

(assert (= (and start!83184 res!649327) b!969965))

(assert (= (and b!969965 res!649326) b!969961))

(assert (= (and b!969961 res!649323) b!969963))

(assert (= (and b!969963 res!649325) b!969964))

(assert (= (and b!969964 res!649324) b!969969))

(assert (= (and b!969969 res!649321) b!969962))

(assert (= (and b!969962 res!649322) b!969968))

(assert (= (and b!969967 condMapEmpty!35080) mapIsEmpty!35080))

(assert (= (and b!969967 (not condMapEmpty!35080)) mapNonEmpty!35080))

(get-info :version)

(assert (= (and mapNonEmpty!35080 ((_ is ValueCellFull!10542) mapValue!35080)) b!969970))

(assert (= (and b!969967 ((_ is ValueCellFull!10542) mapDefault!35080)) b!969966))

(assert (= start!83184 b!969967))

(declare-fun m!897883 () Bool)

(assert (=> b!969969 m!897883))

(assert (=> b!969969 m!897883))

(declare-fun m!897885 () Bool)

(assert (=> b!969969 m!897885))

(declare-fun m!897887 () Bool)

(assert (=> start!83184 m!897887))

(declare-fun m!897889 () Bool)

(assert (=> start!83184 m!897889))

(declare-fun m!897891 () Bool)

(assert (=> start!83184 m!897891))

(declare-fun m!897893 () Bool)

(assert (=> b!969963 m!897893))

(declare-fun m!897895 () Bool)

(assert (=> b!969962 m!897895))

(assert (=> b!969962 m!897883))

(assert (=> b!969962 m!897895))

(assert (=> b!969962 m!897883))

(declare-fun m!897897 () Bool)

(assert (=> b!969962 m!897897))

(declare-fun m!897899 () Bool)

(assert (=> b!969961 m!897899))

(declare-fun m!897901 () Bool)

(assert (=> mapNonEmpty!35080 m!897901))

(check-sat (not start!83184) (not b!969969) (not b!969962) tp_is_empty!22047 (not b!969961) b_and!30655 (not mapNonEmpty!35080) (not b_next!19149) (not b!969963))
(check-sat b_and!30655 (not b_next!19149))
