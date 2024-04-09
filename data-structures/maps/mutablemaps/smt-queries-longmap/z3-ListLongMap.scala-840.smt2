; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20150 () Bool)

(assert start!20150)

(declare-fun b_free!4797 () Bool)

(declare-fun b_next!4797 () Bool)

(assert (=> start!20150 (= b_free!4797 (not b_next!4797))))

(declare-fun tp!17423 () Bool)

(declare-fun b_and!11561 () Bool)

(assert (=> start!20150 (= tp!17423 b_and!11561)))

(declare-fun res!93431 () Bool)

(declare-fun e!129940 () Bool)

(assert (=> start!20150 (=> (not res!93431) (not e!129940))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20150 (= res!93431 (validMask!0 mask!1149))))

(assert (=> start!20150 e!129940))

(declare-datatypes ((V!5851 0))(
  ( (V!5852 (val!2371 Int)) )
))
(declare-datatypes ((ValueCell!1983 0))(
  ( (ValueCellFull!1983 (v!4337 V!5851)) (EmptyCell!1983) )
))
(declare-datatypes ((array!8558 0))(
  ( (array!8559 (arr!4029 (Array (_ BitVec 32) ValueCell!1983)) (size!4354 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8558)

(declare-fun e!129936 () Bool)

(declare-fun array_inv!2617 (array!8558) Bool)

(assert (=> start!20150 (and (array_inv!2617 _values!649) e!129936)))

(assert (=> start!20150 true))

(declare-fun tp_is_empty!4653 () Bool)

(assert (=> start!20150 tp_is_empty!4653))

(declare-datatypes ((array!8560 0))(
  ( (array!8561 (arr!4030 (Array (_ BitVec 32) (_ BitVec 64))) (size!4355 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8560)

(declare-fun array_inv!2618 (array!8560) Bool)

(assert (=> start!20150 (array_inv!2618 _keys!825)))

(assert (=> start!20150 tp!17423))

(declare-fun b!197460 () Bool)

(declare-fun e!129938 () Bool)

(assert (=> b!197460 (= e!129938 tp_is_empty!4653)))

(declare-fun b!197461 () Bool)

(declare-fun res!93427 () Bool)

(assert (=> b!197461 (=> (not res!93427) (not e!129940))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197461 (= res!93427 (= (select (arr!4030 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8048 () Bool)

(declare-fun mapRes!8048 () Bool)

(declare-fun tp!17422 () Bool)

(assert (=> mapNonEmpty!8048 (= mapRes!8048 (and tp!17422 e!129938))))

(declare-fun mapRest!8048 () (Array (_ BitVec 32) ValueCell!1983))

(declare-fun mapKey!8048 () (_ BitVec 32))

(declare-fun mapValue!8048 () ValueCell!1983)

(assert (=> mapNonEmpty!8048 (= (arr!4029 _values!649) (store mapRest!8048 mapKey!8048 mapValue!8048))))

(declare-fun b!197462 () Bool)

(declare-fun res!93429 () Bool)

(assert (=> b!197462 (=> (not res!93429) (not e!129940))))

(assert (=> b!197462 (= res!93429 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4355 _keys!825))))))

(declare-fun b!197463 () Bool)

(declare-fun res!93433 () Bool)

(assert (=> b!197463 (=> (not res!93433) (not e!129940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197463 (= res!93433 (validKeyInArray!0 k0!843))))

(declare-fun b!197464 () Bool)

(declare-fun res!93428 () Bool)

(assert (=> b!197464 (=> (not res!93428) (not e!129940))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197464 (= res!93428 (and (= (size!4354 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4355 _keys!825) (size!4354 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197465 () Bool)

(declare-fun res!93432 () Bool)

(assert (=> b!197465 (=> (not res!93432) (not e!129940))))

(declare-datatypes ((List!2534 0))(
  ( (Nil!2531) (Cons!2530 (h!3172 (_ BitVec 64)) (t!7473 List!2534)) )
))
(declare-fun arrayNoDuplicates!0 (array!8560 (_ BitVec 32) List!2534) Bool)

(assert (=> b!197465 (= res!93432 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2531))))

(declare-fun b!197466 () Bool)

(declare-fun res!93430 () Bool)

(assert (=> b!197466 (=> (not res!93430) (not e!129940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8560 (_ BitVec 32)) Bool)

(assert (=> b!197466 (= res!93430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197467 () Bool)

(assert (=> b!197467 (= e!129940 false)))

(declare-datatypes ((tuple2!3598 0))(
  ( (tuple2!3599 (_1!1809 (_ BitVec 64)) (_2!1809 V!5851)) )
))
(declare-datatypes ((List!2535 0))(
  ( (Nil!2532) (Cons!2531 (h!3173 tuple2!3598) (t!7474 List!2535)) )
))
(declare-datatypes ((ListLongMap!2525 0))(
  ( (ListLongMap!2526 (toList!1278 List!2535)) )
))
(declare-fun lt!97753 () ListLongMap!2525)

(declare-fun v!520 () V!5851)

(declare-fun zeroValue!615 () V!5851)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5851)

(declare-fun getCurrentListMapNoExtraKeys!235 (array!8560 array!8558 (_ BitVec 32) (_ BitVec 32) V!5851 V!5851 (_ BitVec 32) Int) ListLongMap!2525)

(assert (=> b!197467 (= lt!97753 (getCurrentListMapNoExtraKeys!235 _keys!825 (array!8559 (store (arr!4029 _values!649) i!601 (ValueCellFull!1983 v!520)) (size!4354 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97752 () ListLongMap!2525)

(assert (=> b!197467 (= lt!97752 (getCurrentListMapNoExtraKeys!235 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8048 () Bool)

(assert (=> mapIsEmpty!8048 mapRes!8048))

(declare-fun b!197468 () Bool)

(declare-fun e!129939 () Bool)

(assert (=> b!197468 (= e!129939 tp_is_empty!4653)))

(declare-fun b!197469 () Bool)

(assert (=> b!197469 (= e!129936 (and e!129939 mapRes!8048))))

(declare-fun condMapEmpty!8048 () Bool)

(declare-fun mapDefault!8048 () ValueCell!1983)

(assert (=> b!197469 (= condMapEmpty!8048 (= (arr!4029 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1983)) mapDefault!8048)))))

(assert (= (and start!20150 res!93431) b!197464))

(assert (= (and b!197464 res!93428) b!197466))

(assert (= (and b!197466 res!93430) b!197465))

(assert (= (and b!197465 res!93432) b!197462))

(assert (= (and b!197462 res!93429) b!197463))

(assert (= (and b!197463 res!93433) b!197461))

(assert (= (and b!197461 res!93427) b!197467))

(assert (= (and b!197469 condMapEmpty!8048) mapIsEmpty!8048))

(assert (= (and b!197469 (not condMapEmpty!8048)) mapNonEmpty!8048))

(get-info :version)

(assert (= (and mapNonEmpty!8048 ((_ is ValueCellFull!1983) mapValue!8048)) b!197460))

(assert (= (and b!197469 ((_ is ValueCellFull!1983) mapDefault!8048)) b!197468))

(assert (= start!20150 b!197469))

(declare-fun m!224341 () Bool)

(assert (=> b!197465 m!224341))

(declare-fun m!224343 () Bool)

(assert (=> b!197466 m!224343))

(declare-fun m!224345 () Bool)

(assert (=> mapNonEmpty!8048 m!224345))

(declare-fun m!224347 () Bool)

(assert (=> b!197467 m!224347))

(declare-fun m!224349 () Bool)

(assert (=> b!197467 m!224349))

(declare-fun m!224351 () Bool)

(assert (=> b!197467 m!224351))

(declare-fun m!224353 () Bool)

(assert (=> start!20150 m!224353))

(declare-fun m!224355 () Bool)

(assert (=> start!20150 m!224355))

(declare-fun m!224357 () Bool)

(assert (=> start!20150 m!224357))

(declare-fun m!224359 () Bool)

(assert (=> b!197463 m!224359))

(declare-fun m!224361 () Bool)

(assert (=> b!197461 m!224361))

(check-sat (not b!197465) (not b_next!4797) (not b!197467) (not mapNonEmpty!8048) (not start!20150) (not b!197463) tp_is_empty!4653 b_and!11561 (not b!197466))
(check-sat b_and!11561 (not b_next!4797))
