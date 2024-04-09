; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83250 () Bool)

(assert start!83250)

(declare-fun b_free!19215 () Bool)

(declare-fun b_next!19215 () Bool)

(assert (=> start!83250 (= b_free!19215 (not b_next!19215))))

(declare-fun tp!66925 () Bool)

(declare-fun b_and!30721 () Bool)

(assert (=> start!83250 (= tp!66925 b_and!30721)))

(declare-fun b!970880 () Bool)

(declare-fun res!649943 () Bool)

(declare-fun e!547359 () Bool)

(assert (=> b!970880 (=> (not res!649943) (not e!547359))))

(declare-datatypes ((array!60259 0))(
  ( (array!60260 (arr!28989 (Array (_ BitVec 32) (_ BitVec 64))) (size!29469 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60259)

(declare-datatypes ((List!20225 0))(
  ( (Nil!20222) (Cons!20221 (h!21383 (_ BitVec 64)) (t!28596 List!20225)) )
))
(declare-fun arrayNoDuplicates!0 (array!60259 (_ BitVec 32) List!20225) Bool)

(assert (=> b!970880 (= res!649943 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20222))))

(declare-fun b!970881 () Bool)

(declare-fun res!649944 () Bool)

(assert (=> b!970881 (=> (not res!649944) (not e!547359))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970881 (= res!649944 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29469 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29469 _keys!1717))))))

(declare-fun b!970882 () Bool)

(declare-fun res!649948 () Bool)

(assert (=> b!970882 (=> (not res!649948) (not e!547359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970882 (= res!649948 (validKeyInArray!0 (select (arr!28989 _keys!1717) i!822)))))

(declare-fun b!970883 () Bool)

(declare-fun e!547361 () Bool)

(declare-fun tp_is_empty!22113 () Bool)

(assert (=> b!970883 (= e!547361 tp_is_empty!22113)))

(declare-fun b!970884 () Bool)

(declare-fun res!649942 () Bool)

(assert (=> b!970884 (=> (not res!649942) (not e!547359))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34467 0))(
  ( (V!34468 (val!11107 Int)) )
))
(declare-datatypes ((ValueCell!10575 0))(
  ( (ValueCellFull!10575 (v!13666 V!34467)) (EmptyCell!10575) )
))
(declare-datatypes ((array!60261 0))(
  ( (array!60262 (arr!28990 (Array (_ BitVec 32) ValueCell!10575)) (size!29470 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60261)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970884 (= res!649942 (and (= (size!29470 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29469 _keys!1717) (size!29470 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35179 () Bool)

(declare-fun mapRes!35179 () Bool)

(assert (=> mapIsEmpty!35179 mapRes!35179))

(declare-fun b!970885 () Bool)

(declare-fun res!649947 () Bool)

(assert (=> b!970885 (=> (not res!649947) (not e!547359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60259 (_ BitVec 32)) Bool)

(assert (=> b!970885 (= res!649947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970886 () Bool)

(declare-fun e!547358 () Bool)

(assert (=> b!970886 (= e!547358 (and e!547361 mapRes!35179))))

(declare-fun condMapEmpty!35179 () Bool)

(declare-fun mapDefault!35179 () ValueCell!10575)

(assert (=> b!970886 (= condMapEmpty!35179 (= (arr!28990 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10575)) mapDefault!35179)))))

(declare-fun b!970887 () Bool)

(declare-fun e!547360 () Bool)

(assert (=> b!970887 (= e!547360 tp_is_empty!22113)))

(declare-fun mapNonEmpty!35179 () Bool)

(declare-fun tp!66924 () Bool)

(assert (=> mapNonEmpty!35179 (= mapRes!35179 (and tp!66924 e!547360))))

(declare-fun mapKey!35179 () (_ BitVec 32))

(declare-fun mapValue!35179 () ValueCell!10575)

(declare-fun mapRest!35179 () (Array (_ BitVec 32) ValueCell!10575))

(assert (=> mapNonEmpty!35179 (= (arr!28990 _values!1425) (store mapRest!35179 mapKey!35179 mapValue!35179))))

(declare-fun b!970888 () Bool)

(assert (=> b!970888 (= e!547359 false)))

(declare-fun zeroValue!1367 () V!34467)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34467)

(declare-datatypes ((tuple2!14334 0))(
  ( (tuple2!14335 (_1!7177 (_ BitVec 64)) (_2!7177 V!34467)) )
))
(declare-datatypes ((List!20226 0))(
  ( (Nil!20223) (Cons!20222 (h!21384 tuple2!14334) (t!28597 List!20226)) )
))
(declare-datatypes ((ListLongMap!13045 0))(
  ( (ListLongMap!13046 (toList!6538 List!20226)) )
))
(declare-fun lt!431737 () ListLongMap!13045)

(declare-fun getCurrentListMap!3723 (array!60259 array!60261 (_ BitVec 32) (_ BitVec 32) V!34467 V!34467 (_ BitVec 32) Int) ListLongMap!13045)

(assert (=> b!970888 (= lt!431737 (getCurrentListMap!3723 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!970879 () Bool)

(declare-fun res!649946 () Bool)

(assert (=> b!970879 (=> (not res!649946) (not e!547359))))

(declare-fun contains!5593 (ListLongMap!13045 (_ BitVec 64)) Bool)

(assert (=> b!970879 (= res!649946 (contains!5593 (getCurrentListMap!3723 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28989 _keys!1717) i!822)))))

(declare-fun res!649945 () Bool)

(assert (=> start!83250 (=> (not res!649945) (not e!547359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83250 (= res!649945 (validMask!0 mask!2147))))

(assert (=> start!83250 e!547359))

(assert (=> start!83250 true))

(declare-fun array_inv!22327 (array!60261) Bool)

(assert (=> start!83250 (and (array_inv!22327 _values!1425) e!547358)))

(assert (=> start!83250 tp_is_empty!22113))

(assert (=> start!83250 tp!66925))

(declare-fun array_inv!22328 (array!60259) Bool)

(assert (=> start!83250 (array_inv!22328 _keys!1717)))

(assert (= (and start!83250 res!649945) b!970884))

(assert (= (and b!970884 res!649942) b!970885))

(assert (= (and b!970885 res!649947) b!970880))

(assert (= (and b!970880 res!649943) b!970881))

(assert (= (and b!970881 res!649944) b!970882))

(assert (= (and b!970882 res!649948) b!970879))

(assert (= (and b!970879 res!649946) b!970888))

(assert (= (and b!970886 condMapEmpty!35179) mapIsEmpty!35179))

(assert (= (and b!970886 (not condMapEmpty!35179)) mapNonEmpty!35179))

(get-info :version)

(assert (= (and mapNonEmpty!35179 ((_ is ValueCellFull!10575) mapValue!35179)) b!970887))

(assert (= (and b!970886 ((_ is ValueCellFull!10575) mapDefault!35179)) b!970883))

(assert (= start!83250 b!970886))

(declare-fun m!898551 () Bool)

(assert (=> b!970885 m!898551))

(declare-fun m!898553 () Bool)

(assert (=> start!83250 m!898553))

(declare-fun m!898555 () Bool)

(assert (=> start!83250 m!898555))

(declare-fun m!898557 () Bool)

(assert (=> start!83250 m!898557))

(declare-fun m!898559 () Bool)

(assert (=> mapNonEmpty!35179 m!898559))

(declare-fun m!898561 () Bool)

(assert (=> b!970880 m!898561))

(declare-fun m!898563 () Bool)

(assert (=> b!970879 m!898563))

(declare-fun m!898565 () Bool)

(assert (=> b!970879 m!898565))

(assert (=> b!970879 m!898563))

(assert (=> b!970879 m!898565))

(declare-fun m!898567 () Bool)

(assert (=> b!970879 m!898567))

(declare-fun m!898569 () Bool)

(assert (=> b!970888 m!898569))

(assert (=> b!970882 m!898565))

(assert (=> b!970882 m!898565))

(declare-fun m!898571 () Bool)

(assert (=> b!970882 m!898571))

(check-sat (not b_next!19215) (not b!970880) (not b!970888) (not b!970882) (not mapNonEmpty!35179) (not start!83250) (not b!970879) tp_is_empty!22113 (not b!970885) b_and!30721)
(check-sat b_and!30721 (not b_next!19215))
