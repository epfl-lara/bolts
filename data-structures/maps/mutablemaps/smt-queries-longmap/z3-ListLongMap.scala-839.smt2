; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20144 () Bool)

(assert start!20144)

(declare-fun b_free!4791 () Bool)

(declare-fun b_next!4791 () Bool)

(assert (=> start!20144 (= b_free!4791 (not b_next!4791))))

(declare-fun tp!17405 () Bool)

(declare-fun b_and!11555 () Bool)

(assert (=> start!20144 (= tp!17405 b_and!11555)))

(declare-fun mapIsEmpty!8039 () Bool)

(declare-fun mapRes!8039 () Bool)

(assert (=> mapIsEmpty!8039 mapRes!8039))

(declare-fun b!197370 () Bool)

(declare-fun e!129894 () Bool)

(declare-fun tp_is_empty!4647 () Bool)

(assert (=> b!197370 (= e!129894 tp_is_empty!4647)))

(declare-fun res!93368 () Bool)

(declare-fun e!129895 () Bool)

(assert (=> start!20144 (=> (not res!93368) (not e!129895))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20144 (= res!93368 (validMask!0 mask!1149))))

(assert (=> start!20144 e!129895))

(declare-datatypes ((V!5843 0))(
  ( (V!5844 (val!2368 Int)) )
))
(declare-datatypes ((ValueCell!1980 0))(
  ( (ValueCellFull!1980 (v!4334 V!5843)) (EmptyCell!1980) )
))
(declare-datatypes ((array!8546 0))(
  ( (array!8547 (arr!4023 (Array (_ BitVec 32) ValueCell!1980)) (size!4348 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8546)

(declare-fun e!129892 () Bool)

(declare-fun array_inv!2615 (array!8546) Bool)

(assert (=> start!20144 (and (array_inv!2615 _values!649) e!129892)))

(assert (=> start!20144 true))

(assert (=> start!20144 tp_is_empty!4647))

(declare-datatypes ((array!8548 0))(
  ( (array!8549 (arr!4024 (Array (_ BitVec 32) (_ BitVec 64))) (size!4349 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8548)

(declare-fun array_inv!2616 (array!8548) Bool)

(assert (=> start!20144 (array_inv!2616 _keys!825)))

(assert (=> start!20144 tp!17405))

(declare-fun b!197371 () Bool)

(declare-fun res!93364 () Bool)

(assert (=> b!197371 (=> (not res!93364) (not e!129895))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197371 (= res!93364 (= (select (arr!4024 _keys!825) i!601) k0!843))))

(declare-fun b!197372 () Bool)

(declare-fun res!93370 () Bool)

(assert (=> b!197372 (=> (not res!93370) (not e!129895))))

(declare-datatypes ((List!2532 0))(
  ( (Nil!2529) (Cons!2528 (h!3170 (_ BitVec 64)) (t!7471 List!2532)) )
))
(declare-fun arrayNoDuplicates!0 (array!8548 (_ BitVec 32) List!2532) Bool)

(assert (=> b!197372 (= res!93370 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2529))))

(declare-fun b!197373 () Bool)

(declare-fun res!93369 () Bool)

(assert (=> b!197373 (=> (not res!93369) (not e!129895))))

(assert (=> b!197373 (= res!93369 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4349 _keys!825))))))

(declare-fun b!197374 () Bool)

(declare-fun e!129893 () Bool)

(assert (=> b!197374 (= e!129893 tp_is_empty!4647)))

(declare-fun b!197375 () Bool)

(assert (=> b!197375 (= e!129895 (bvsgt #b00000000000000000000000000000000 (size!4349 _keys!825)))))

(declare-datatypes ((tuple2!3596 0))(
  ( (tuple2!3597 (_1!1808 (_ BitVec 64)) (_2!1808 V!5843)) )
))
(declare-datatypes ((List!2533 0))(
  ( (Nil!2530) (Cons!2529 (h!3171 tuple2!3596) (t!7472 List!2533)) )
))
(declare-datatypes ((ListLongMap!2523 0))(
  ( (ListLongMap!2524 (toList!1277 List!2533)) )
))
(declare-fun lt!97738 () ListLongMap!2523)

(declare-fun zeroValue!615 () V!5843)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5843)

(declare-fun getCurrentListMapNoExtraKeys!234 (array!8548 array!8546 (_ BitVec 32) (_ BitVec 32) V!5843 V!5843 (_ BitVec 32) Int) ListLongMap!2523)

(assert (=> b!197375 (= lt!97738 (getCurrentListMapNoExtraKeys!234 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197376 () Bool)

(declare-fun res!93365 () Bool)

(assert (=> b!197376 (=> (not res!93365) (not e!129895))))

(assert (=> b!197376 (= res!93365 (and (= (size!4348 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4349 _keys!825) (size!4348 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8039 () Bool)

(declare-fun tp!17404 () Bool)

(assert (=> mapNonEmpty!8039 (= mapRes!8039 (and tp!17404 e!129894))))

(declare-fun mapRest!8039 () (Array (_ BitVec 32) ValueCell!1980))

(declare-fun mapValue!8039 () ValueCell!1980)

(declare-fun mapKey!8039 () (_ BitVec 32))

(assert (=> mapNonEmpty!8039 (= (arr!4023 _values!649) (store mapRest!8039 mapKey!8039 mapValue!8039))))

(declare-fun b!197377 () Bool)

(declare-fun res!93366 () Bool)

(assert (=> b!197377 (=> (not res!93366) (not e!129895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197377 (= res!93366 (validKeyInArray!0 k0!843))))

(declare-fun b!197378 () Bool)

(assert (=> b!197378 (= e!129892 (and e!129893 mapRes!8039))))

(declare-fun condMapEmpty!8039 () Bool)

(declare-fun mapDefault!8039 () ValueCell!1980)

(assert (=> b!197378 (= condMapEmpty!8039 (= (arr!4023 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1980)) mapDefault!8039)))))

(declare-fun b!197379 () Bool)

(declare-fun res!93367 () Bool)

(assert (=> b!197379 (=> (not res!93367) (not e!129895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8548 (_ BitVec 32)) Bool)

(assert (=> b!197379 (= res!93367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20144 res!93368) b!197376))

(assert (= (and b!197376 res!93365) b!197379))

(assert (= (and b!197379 res!93367) b!197372))

(assert (= (and b!197372 res!93370) b!197373))

(assert (= (and b!197373 res!93369) b!197377))

(assert (= (and b!197377 res!93366) b!197371))

(assert (= (and b!197371 res!93364) b!197375))

(assert (= (and b!197378 condMapEmpty!8039) mapIsEmpty!8039))

(assert (= (and b!197378 (not condMapEmpty!8039)) mapNonEmpty!8039))

(get-info :version)

(assert (= (and mapNonEmpty!8039 ((_ is ValueCellFull!1980) mapValue!8039)) b!197370))

(assert (= (and b!197378 ((_ is ValueCellFull!1980) mapDefault!8039)) b!197374))

(assert (= start!20144 b!197378))

(declare-fun m!224283 () Bool)

(assert (=> b!197379 m!224283))

(declare-fun m!224285 () Bool)

(assert (=> b!197377 m!224285))

(declare-fun m!224287 () Bool)

(assert (=> start!20144 m!224287))

(declare-fun m!224289 () Bool)

(assert (=> start!20144 m!224289))

(declare-fun m!224291 () Bool)

(assert (=> start!20144 m!224291))

(declare-fun m!224293 () Bool)

(assert (=> b!197372 m!224293))

(declare-fun m!224295 () Bool)

(assert (=> b!197375 m!224295))

(declare-fun m!224297 () Bool)

(assert (=> mapNonEmpty!8039 m!224297))

(declare-fun m!224299 () Bool)

(assert (=> b!197371 m!224299))

(check-sat (not mapNonEmpty!8039) (not b!197377) tp_is_empty!4647 (not b!197379) (not b!197375) (not b!197372) (not b_next!4791) (not start!20144) b_and!11555)
(check-sat b_and!11555 (not b_next!4791))
