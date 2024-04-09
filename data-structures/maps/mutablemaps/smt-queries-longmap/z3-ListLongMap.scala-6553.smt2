; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83232 () Bool)

(assert start!83232)

(declare-fun b_free!19197 () Bool)

(declare-fun b_next!19197 () Bool)

(assert (=> start!83232 (= b_free!19197 (not b_next!19197))))

(declare-fun tp!66870 () Bool)

(declare-fun b_and!30703 () Bool)

(assert (=> start!83232 (= tp!66870 b_and!30703)))

(declare-fun b!970613 () Bool)

(declare-fun e!547224 () Bool)

(declare-fun e!547227 () Bool)

(declare-fun mapRes!35152 () Bool)

(assert (=> b!970613 (= e!547224 (and e!547227 mapRes!35152))))

(declare-fun condMapEmpty!35152 () Bool)

(declare-datatypes ((V!34443 0))(
  ( (V!34444 (val!11098 Int)) )
))
(declare-datatypes ((ValueCell!10566 0))(
  ( (ValueCellFull!10566 (v!13657 V!34443)) (EmptyCell!10566) )
))
(declare-datatypes ((array!60225 0))(
  ( (array!60226 (arr!28972 (Array (_ BitVec 32) ValueCell!10566)) (size!29452 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60225)

(declare-fun mapDefault!35152 () ValueCell!10566)

(assert (=> b!970613 (= condMapEmpty!35152 (= (arr!28972 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10566)) mapDefault!35152)))))

(declare-fun mapNonEmpty!35152 () Bool)

(declare-fun tp!66871 () Bool)

(declare-fun e!547223 () Bool)

(assert (=> mapNonEmpty!35152 (= mapRes!35152 (and tp!66871 e!547223))))

(declare-fun mapKey!35152 () (_ BitVec 32))

(declare-fun mapValue!35152 () ValueCell!10566)

(declare-fun mapRest!35152 () (Array (_ BitVec 32) ValueCell!10566))

(assert (=> mapNonEmpty!35152 (= (arr!28972 _values!1425) (store mapRest!35152 mapKey!35152 mapValue!35152))))

(declare-fun b!970614 () Bool)

(declare-fun res!649760 () Bool)

(declare-fun e!547226 () Bool)

(assert (=> b!970614 (=> (not res!649760) (not e!547226))))

(declare-datatypes ((array!60227 0))(
  ( (array!60228 (arr!28973 (Array (_ BitVec 32) (_ BitVec 64))) (size!29453 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60227)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970614 (= res!649760 (validKeyInArray!0 (select (arr!28973 _keys!1717) i!822)))))

(declare-fun b!970615 () Bool)

(declare-fun res!649761 () Bool)

(assert (=> b!970615 (=> (not res!649761) (not e!547226))))

(declare-datatypes ((List!20211 0))(
  ( (Nil!20208) (Cons!20207 (h!21369 (_ BitVec 64)) (t!28582 List!20211)) )
))
(declare-fun arrayNoDuplicates!0 (array!60227 (_ BitVec 32) List!20211) Bool)

(assert (=> b!970615 (= res!649761 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20208))))

(declare-fun b!970616 () Bool)

(declare-fun res!649757 () Bool)

(assert (=> b!970616 (=> (not res!649757) (not e!547226))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970616 (= res!649757 (and (= (size!29452 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29453 _keys!1717) (size!29452 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970617 () Bool)

(declare-fun res!649759 () Bool)

(assert (=> b!970617 (=> (not res!649759) (not e!547226))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!970617 (= res!649759 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29453 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29453 _keys!1717))))))

(declare-fun mapIsEmpty!35152 () Bool)

(assert (=> mapIsEmpty!35152 mapRes!35152))

(declare-fun res!649762 () Bool)

(assert (=> start!83232 (=> (not res!649762) (not e!547226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83232 (= res!649762 (validMask!0 mask!2147))))

(assert (=> start!83232 e!547226))

(assert (=> start!83232 true))

(declare-fun array_inv!22315 (array!60225) Bool)

(assert (=> start!83232 (and (array_inv!22315 _values!1425) e!547224)))

(declare-fun tp_is_empty!22095 () Bool)

(assert (=> start!83232 tp_is_empty!22095))

(assert (=> start!83232 tp!66870))

(declare-fun array_inv!22316 (array!60227) Bool)

(assert (=> start!83232 (array_inv!22316 _keys!1717)))

(declare-fun b!970618 () Bool)

(assert (=> b!970618 (= e!547227 tp_is_empty!22095)))

(declare-fun b!970619 () Bool)

(assert (=> b!970619 (= e!547226 false)))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34443)

(declare-fun zeroValue!1367 () V!34443)

(declare-fun lt!431719 () Bool)

(declare-datatypes ((tuple2!14320 0))(
  ( (tuple2!14321 (_1!7170 (_ BitVec 64)) (_2!7170 V!34443)) )
))
(declare-datatypes ((List!20212 0))(
  ( (Nil!20209) (Cons!20208 (h!21370 tuple2!14320) (t!28583 List!20212)) )
))
(declare-datatypes ((ListLongMap!13031 0))(
  ( (ListLongMap!13032 (toList!6531 List!20212)) )
))
(declare-fun contains!5586 (ListLongMap!13031 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3716 (array!60227 array!60225 (_ BitVec 32) (_ BitVec 32) V!34443 V!34443 (_ BitVec 32) Int) ListLongMap!13031)

(assert (=> b!970619 (= lt!431719 (contains!5586 (getCurrentListMap!3716 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28973 _keys!1717) i!822)))))

(declare-fun b!970620 () Bool)

(declare-fun res!649758 () Bool)

(assert (=> b!970620 (=> (not res!649758) (not e!547226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60227 (_ BitVec 32)) Bool)

(assert (=> b!970620 (= res!649758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970621 () Bool)

(assert (=> b!970621 (= e!547223 tp_is_empty!22095)))

(assert (= (and start!83232 res!649762) b!970616))

(assert (= (and b!970616 res!649757) b!970620))

(assert (= (and b!970620 res!649758) b!970615))

(assert (= (and b!970615 res!649761) b!970617))

(assert (= (and b!970617 res!649759) b!970614))

(assert (= (and b!970614 res!649760) b!970619))

(assert (= (and b!970613 condMapEmpty!35152) mapIsEmpty!35152))

(assert (= (and b!970613 (not condMapEmpty!35152)) mapNonEmpty!35152))

(get-info :version)

(assert (= (and mapNonEmpty!35152 ((_ is ValueCellFull!10566) mapValue!35152)) b!970621))

(assert (= (and b!970613 ((_ is ValueCellFull!10566) mapDefault!35152)) b!970618))

(assert (= start!83232 b!970613))

(declare-fun m!898363 () Bool)

(assert (=> start!83232 m!898363))

(declare-fun m!898365 () Bool)

(assert (=> start!83232 m!898365))

(declare-fun m!898367 () Bool)

(assert (=> start!83232 m!898367))

(declare-fun m!898369 () Bool)

(assert (=> b!970614 m!898369))

(assert (=> b!970614 m!898369))

(declare-fun m!898371 () Bool)

(assert (=> b!970614 m!898371))

(declare-fun m!898373 () Bool)

(assert (=> b!970620 m!898373))

(declare-fun m!898375 () Bool)

(assert (=> b!970615 m!898375))

(declare-fun m!898377 () Bool)

(assert (=> mapNonEmpty!35152 m!898377))

(declare-fun m!898379 () Bool)

(assert (=> b!970619 m!898379))

(assert (=> b!970619 m!898369))

(assert (=> b!970619 m!898379))

(assert (=> b!970619 m!898369))

(declare-fun m!898381 () Bool)

(assert (=> b!970619 m!898381))

(check-sat (not b!970619) b_and!30703 (not start!83232) tp_is_empty!22095 (not b!970615) (not b!970620) (not b!970614) (not b_next!19197) (not mapNonEmpty!35152))
(check-sat b_and!30703 (not b_next!19197))
