; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83532 () Bool)

(assert start!83532)

(declare-fun b_free!19491 () Bool)

(declare-fun b_next!19491 () Bool)

(assert (=> start!83532 (= b_free!19491 (not b_next!19491))))

(declare-fun tp!67762 () Bool)

(declare-fun b_and!31111 () Bool)

(assert (=> start!83532 (= tp!67762 b_and!31111)))

(declare-fun b!975367 () Bool)

(declare-fun e!549734 () Bool)

(declare-fun tp_is_empty!22395 () Bool)

(assert (=> b!975367 (= e!549734 tp_is_empty!22395)))

(declare-fun b!975368 () Bool)

(declare-fun e!549737 () Bool)

(assert (=> b!975368 (= e!549737 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34843 0))(
  ( (V!34844 (val!11248 Int)) )
))
(declare-datatypes ((ValueCell!10716 0))(
  ( (ValueCellFull!10716 (v!13807 V!34843)) (EmptyCell!10716) )
))
(declare-datatypes ((array!60805 0))(
  ( (array!60806 (arr!29262 (Array (_ BitVec 32) ValueCell!10716)) (size!29742 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60805)

(declare-datatypes ((tuple2!14566 0))(
  ( (tuple2!14567 (_1!7293 (_ BitVec 64)) (_2!7293 V!34843)) )
))
(declare-datatypes ((List!20438 0))(
  ( (Nil!20435) (Cons!20434 (h!21596 tuple2!14566) (t!28923 List!20438)) )
))
(declare-datatypes ((ListLongMap!13277 0))(
  ( (ListLongMap!13278 (toList!6654 List!20438)) )
))
(declare-fun lt!432817 () ListLongMap!13277)

(declare-fun zeroValue!1367 () V!34843)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34843)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60807 0))(
  ( (array!60808 (arr!29263 (Array (_ BitVec 32) (_ BitVec 64))) (size!29743 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60807)

(declare-fun getCurrentListMap!3839 (array!60807 array!60805 (_ BitVec 32) (_ BitVec 32) V!34843 V!34843 (_ BitVec 32) Int) ListLongMap!13277)

(assert (=> b!975368 (= lt!432817 (getCurrentListMap!3839 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975369 () Bool)

(declare-fun res!653050 () Bool)

(assert (=> b!975369 (=> (not res!653050) (not e!549737))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5686 (ListLongMap!13277 (_ BitVec 64)) Bool)

(assert (=> b!975369 (= res!653050 (contains!5686 (getCurrentListMap!3839 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29263 _keys!1717) i!822)))))

(declare-fun b!975370 () Bool)

(declare-fun res!653051 () Bool)

(assert (=> b!975370 (=> (not res!653051) (not e!549737))))

(assert (=> b!975370 (= res!653051 (and (= (size!29742 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29743 _keys!1717) (size!29742 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35602 () Bool)

(declare-fun mapRes!35602 () Bool)

(assert (=> mapIsEmpty!35602 mapRes!35602))

(declare-fun b!975371 () Bool)

(declare-fun res!653047 () Bool)

(assert (=> b!975371 (=> (not res!653047) (not e!549737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60807 (_ BitVec 32)) Bool)

(assert (=> b!975371 (= res!653047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975372 () Bool)

(declare-fun res!653053 () Bool)

(assert (=> b!975372 (=> (not res!653053) (not e!549737))))

(declare-datatypes ((List!20439 0))(
  ( (Nil!20436) (Cons!20435 (h!21597 (_ BitVec 64)) (t!28924 List!20439)) )
))
(declare-fun arrayNoDuplicates!0 (array!60807 (_ BitVec 32) List!20439) Bool)

(assert (=> b!975372 (= res!653053 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20436))))

(declare-fun b!975373 () Bool)

(declare-fun res!653049 () Bool)

(assert (=> b!975373 (=> (not res!653049) (not e!549737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975373 (= res!653049 (validKeyInArray!0 (select (arr!29263 _keys!1717) i!822)))))

(declare-fun b!975374 () Bool)

(declare-fun e!549738 () Bool)

(assert (=> b!975374 (= e!549738 tp_is_empty!22395)))

(declare-fun b!975375 () Bool)

(declare-fun res!653048 () Bool)

(assert (=> b!975375 (=> (not res!653048) (not e!549737))))

(assert (=> b!975375 (= res!653048 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29743 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29743 _keys!1717))))))

(declare-fun res!653052 () Bool)

(assert (=> start!83532 (=> (not res!653052) (not e!549737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83532 (= res!653052 (validMask!0 mask!2147))))

(assert (=> start!83532 e!549737))

(assert (=> start!83532 true))

(declare-fun e!549735 () Bool)

(declare-fun array_inv!22527 (array!60805) Bool)

(assert (=> start!83532 (and (array_inv!22527 _values!1425) e!549735)))

(assert (=> start!83532 tp_is_empty!22395))

(assert (=> start!83532 tp!67762))

(declare-fun array_inv!22528 (array!60807) Bool)

(assert (=> start!83532 (array_inv!22528 _keys!1717)))

(declare-fun b!975376 () Bool)

(assert (=> b!975376 (= e!549735 (and e!549738 mapRes!35602))))

(declare-fun condMapEmpty!35602 () Bool)

(declare-fun mapDefault!35602 () ValueCell!10716)

(assert (=> b!975376 (= condMapEmpty!35602 (= (arr!29262 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10716)) mapDefault!35602)))))

(declare-fun mapNonEmpty!35602 () Bool)

(declare-fun tp!67761 () Bool)

(assert (=> mapNonEmpty!35602 (= mapRes!35602 (and tp!67761 e!549734))))

(declare-fun mapKey!35602 () (_ BitVec 32))

(declare-fun mapRest!35602 () (Array (_ BitVec 32) ValueCell!10716))

(declare-fun mapValue!35602 () ValueCell!10716)

(assert (=> mapNonEmpty!35602 (= (arr!29262 _values!1425) (store mapRest!35602 mapKey!35602 mapValue!35602))))

(assert (= (and start!83532 res!653052) b!975370))

(assert (= (and b!975370 res!653051) b!975371))

(assert (= (and b!975371 res!653047) b!975372))

(assert (= (and b!975372 res!653053) b!975375))

(assert (= (and b!975375 res!653048) b!975373))

(assert (= (and b!975373 res!653049) b!975369))

(assert (= (and b!975369 res!653050) b!975368))

(assert (= (and b!975376 condMapEmpty!35602) mapIsEmpty!35602))

(assert (= (and b!975376 (not condMapEmpty!35602)) mapNonEmpty!35602))

(get-info :version)

(assert (= (and mapNonEmpty!35602 ((_ is ValueCellFull!10716) mapValue!35602)) b!975367))

(assert (= (and b!975376 ((_ is ValueCellFull!10716) mapDefault!35602)) b!975374))

(assert (= start!83532 b!975376))

(declare-fun m!902697 () Bool)

(assert (=> b!975368 m!902697))

(declare-fun m!902699 () Bool)

(assert (=> b!975369 m!902699))

(declare-fun m!902701 () Bool)

(assert (=> b!975369 m!902701))

(assert (=> b!975369 m!902699))

(assert (=> b!975369 m!902701))

(declare-fun m!902703 () Bool)

(assert (=> b!975369 m!902703))

(declare-fun m!902705 () Bool)

(assert (=> start!83532 m!902705))

(declare-fun m!902707 () Bool)

(assert (=> start!83532 m!902707))

(declare-fun m!902709 () Bool)

(assert (=> start!83532 m!902709))

(declare-fun m!902711 () Bool)

(assert (=> mapNonEmpty!35602 m!902711))

(declare-fun m!902713 () Bool)

(assert (=> b!975372 m!902713))

(declare-fun m!902715 () Bool)

(assert (=> b!975371 m!902715))

(assert (=> b!975373 m!902701))

(assert (=> b!975373 m!902701))

(declare-fun m!902717 () Bool)

(assert (=> b!975373 m!902717))

(check-sat tp_is_empty!22395 (not start!83532) (not b!975369) (not b!975368) (not mapNonEmpty!35602) (not b_next!19491) (not b!975373) (not b!975371) (not b!975372) b_and!31111)
(check-sat b_and!31111 (not b_next!19491))
