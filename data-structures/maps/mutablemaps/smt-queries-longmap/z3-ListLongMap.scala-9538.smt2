; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113128 () Bool)

(assert start!113128)

(declare-fun b_free!31143 () Bool)

(declare-fun b_next!31143 () Bool)

(assert (=> start!113128 (= b_free!31143 (not b_next!31143))))

(declare-fun tp!109235 () Bool)

(declare-fun b_and!50203 () Bool)

(assert (=> start!113128 (= tp!109235 b_and!50203)))

(declare-fun b!1340510 () Bool)

(declare-fun res!889354 () Bool)

(declare-fun e!763522 () Bool)

(assert (=> b!1340510 (=> (not res!889354) (not e!763522))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340510 (= res!889354 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340511 () Bool)

(declare-fun e!763526 () Bool)

(declare-fun e!763524 () Bool)

(declare-fun mapRes!57421 () Bool)

(assert (=> b!1340511 (= e!763526 (and e!763524 mapRes!57421))))

(declare-fun condMapEmpty!57421 () Bool)

(declare-datatypes ((V!54627 0))(
  ( (V!54628 (val!18646 Int)) )
))
(declare-datatypes ((ValueCell!17673 0))(
  ( (ValueCellFull!17673 (v!21292 V!54627)) (EmptyCell!17673) )
))
(declare-datatypes ((array!91097 0))(
  ( (array!91098 (arr!44000 (Array (_ BitVec 32) ValueCell!17673)) (size!44551 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91097)

(declare-fun mapDefault!57421 () ValueCell!17673)

(assert (=> b!1340511 (= condMapEmpty!57421 (= (arr!44000 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17673)) mapDefault!57421)))))

(declare-fun b!1340512 () Bool)

(declare-fun res!889355 () Bool)

(assert (=> b!1340512 (=> (not res!889355) (not e!763522))))

(declare-datatypes ((array!91099 0))(
  ( (array!91100 (arr!44001 (Array (_ BitVec 32) (_ BitVec 64))) (size!44552 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91099)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91099 (_ BitVec 32)) Bool)

(assert (=> b!1340512 (= res!889355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340513 () Bool)

(declare-fun res!889348 () Bool)

(assert (=> b!1340513 (=> (not res!889348) (not e!763522))))

(declare-datatypes ((List!31332 0))(
  ( (Nil!31329) (Cons!31328 (h!32537 (_ BitVec 64)) (t!45693 List!31332)) )
))
(declare-fun arrayNoDuplicates!0 (array!91099 (_ BitVec 32) List!31332) Bool)

(assert (=> b!1340513 (= res!889348 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31329))))

(declare-fun b!1340514 () Bool)

(declare-fun res!889352 () Bool)

(assert (=> b!1340514 (=> (not res!889352) (not e!763522))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1340514 (= res!889352 (not (= (select (arr!44001 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1340515 () Bool)

(assert (=> b!1340515 (= e!763522 (not true))))

(declare-datatypes ((tuple2!24148 0))(
  ( (tuple2!24149 (_1!12084 (_ BitVec 64)) (_2!12084 V!54627)) )
))
(declare-datatypes ((List!31333 0))(
  ( (Nil!31330) (Cons!31329 (h!32538 tuple2!24148) (t!45694 List!31333)) )
))
(declare-datatypes ((ListLongMap!21817 0))(
  ( (ListLongMap!21818 (toList!10924 List!31333)) )
))
(declare-fun lt!593947 () ListLongMap!21817)

(declare-fun contains!9036 (ListLongMap!21817 (_ BitVec 64)) Bool)

(assert (=> b!1340515 (contains!9036 lt!593947 k0!1142)))

(declare-fun zeroValue!1245 () V!54627)

(declare-datatypes ((Unit!43927 0))(
  ( (Unit!43928) )
))
(declare-fun lt!593946 () Unit!43927)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!323 ((_ BitVec 64) (_ BitVec 64) V!54627 ListLongMap!21817) Unit!43927)

(assert (=> b!1340515 (= lt!593946 (lemmaInListMapAfterAddingDiffThenInBefore!323 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593947))))

(declare-fun minValue!1245 () V!54627)

(declare-fun defaultEntry!1306 () Int)

(declare-fun +!4731 (ListLongMap!21817 tuple2!24148) ListLongMap!21817)

(declare-fun getCurrentListMapNoExtraKeys!6454 (array!91099 array!91097 (_ BitVec 32) (_ BitVec 32) V!54627 V!54627 (_ BitVec 32) Int) ListLongMap!21817)

(declare-fun get!22240 (ValueCell!17673 V!54627) V!54627)

(declare-fun dynLambda!3768 (Int (_ BitVec 64)) V!54627)

(assert (=> b!1340515 (= lt!593947 (+!4731 (getCurrentListMapNoExtraKeys!6454 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24149 (select (arr!44001 _keys!1571) from!1960) (get!22240 (select (arr!44000 _values!1303) from!1960) (dynLambda!3768 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!889347 () Bool)

(assert (=> start!113128 (=> (not res!889347) (not e!763522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113128 (= res!889347 (validMask!0 mask!1977))))

(assert (=> start!113128 e!763522))

(declare-fun tp_is_empty!37143 () Bool)

(assert (=> start!113128 tp_is_empty!37143))

(assert (=> start!113128 true))

(declare-fun array_inv!33091 (array!91099) Bool)

(assert (=> start!113128 (array_inv!33091 _keys!1571)))

(declare-fun array_inv!33092 (array!91097) Bool)

(assert (=> start!113128 (and (array_inv!33092 _values!1303) e!763526)))

(assert (=> start!113128 tp!109235))

(declare-fun mapIsEmpty!57421 () Bool)

(assert (=> mapIsEmpty!57421 mapRes!57421))

(declare-fun b!1340516 () Bool)

(declare-fun e!763523 () Bool)

(assert (=> b!1340516 (= e!763523 tp_is_empty!37143)))

(declare-fun b!1340517 () Bool)

(declare-fun res!889353 () Bool)

(assert (=> b!1340517 (=> (not res!889353) (not e!763522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340517 (= res!889353 (validKeyInArray!0 (select (arr!44001 _keys!1571) from!1960)))))

(declare-fun b!1340518 () Bool)

(assert (=> b!1340518 (= e!763524 tp_is_empty!37143)))

(declare-fun b!1340519 () Bool)

(declare-fun res!889349 () Bool)

(assert (=> b!1340519 (=> (not res!889349) (not e!763522))))

(assert (=> b!1340519 (= res!889349 (and (= (size!44551 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44552 _keys!1571) (size!44551 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340520 () Bool)

(declare-fun res!889350 () Bool)

(assert (=> b!1340520 (=> (not res!889350) (not e!763522))))

(assert (=> b!1340520 (= res!889350 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44552 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340521 () Bool)

(declare-fun res!889351 () Bool)

(assert (=> b!1340521 (=> (not res!889351) (not e!763522))))

(declare-fun getCurrentListMap!5827 (array!91099 array!91097 (_ BitVec 32) (_ BitVec 32) V!54627 V!54627 (_ BitVec 32) Int) ListLongMap!21817)

(assert (=> b!1340521 (= res!889351 (contains!9036 (getCurrentListMap!5827 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57421 () Bool)

(declare-fun tp!109234 () Bool)

(assert (=> mapNonEmpty!57421 (= mapRes!57421 (and tp!109234 e!763523))))

(declare-fun mapRest!57421 () (Array (_ BitVec 32) ValueCell!17673))

(declare-fun mapValue!57421 () ValueCell!17673)

(declare-fun mapKey!57421 () (_ BitVec 32))

(assert (=> mapNonEmpty!57421 (= (arr!44000 _values!1303) (store mapRest!57421 mapKey!57421 mapValue!57421))))

(assert (= (and start!113128 res!889347) b!1340519))

(assert (= (and b!1340519 res!889349) b!1340512))

(assert (= (and b!1340512 res!889355) b!1340513))

(assert (= (and b!1340513 res!889348) b!1340520))

(assert (= (and b!1340520 res!889350) b!1340521))

(assert (= (and b!1340521 res!889351) b!1340514))

(assert (= (and b!1340514 res!889352) b!1340517))

(assert (= (and b!1340517 res!889353) b!1340510))

(assert (= (and b!1340510 res!889354) b!1340515))

(assert (= (and b!1340511 condMapEmpty!57421) mapIsEmpty!57421))

(assert (= (and b!1340511 (not condMapEmpty!57421)) mapNonEmpty!57421))

(get-info :version)

(assert (= (and mapNonEmpty!57421 ((_ is ValueCellFull!17673) mapValue!57421)) b!1340516))

(assert (= (and b!1340511 ((_ is ValueCellFull!17673) mapDefault!57421)) b!1340518))

(assert (= start!113128 b!1340511))

(declare-fun b_lambda!24329 () Bool)

(assert (=> (not b_lambda!24329) (not b!1340515)))

(declare-fun t!45692 () Bool)

(declare-fun tb!12165 () Bool)

(assert (=> (and start!113128 (= defaultEntry!1306 defaultEntry!1306) t!45692) tb!12165))

(declare-fun result!25413 () Bool)

(assert (=> tb!12165 (= result!25413 tp_is_empty!37143)))

(assert (=> b!1340515 t!45692))

(declare-fun b_and!50205 () Bool)

(assert (= b_and!50203 (and (=> t!45692 result!25413) b_and!50205)))

(declare-fun m!1228289 () Bool)

(assert (=> b!1340514 m!1228289))

(declare-fun m!1228291 () Bool)

(assert (=> mapNonEmpty!57421 m!1228291))

(assert (=> b!1340517 m!1228289))

(assert (=> b!1340517 m!1228289))

(declare-fun m!1228293 () Bool)

(assert (=> b!1340517 m!1228293))

(declare-fun m!1228295 () Bool)

(assert (=> start!113128 m!1228295))

(declare-fun m!1228297 () Bool)

(assert (=> start!113128 m!1228297))

(declare-fun m!1228299 () Bool)

(assert (=> start!113128 m!1228299))

(declare-fun m!1228301 () Bool)

(assert (=> b!1340512 m!1228301))

(declare-fun m!1228303 () Bool)

(assert (=> b!1340521 m!1228303))

(assert (=> b!1340521 m!1228303))

(declare-fun m!1228305 () Bool)

(assert (=> b!1340521 m!1228305))

(declare-fun m!1228307 () Bool)

(assert (=> b!1340515 m!1228307))

(declare-fun m!1228309 () Bool)

(assert (=> b!1340515 m!1228309))

(declare-fun m!1228311 () Bool)

(assert (=> b!1340515 m!1228311))

(declare-fun m!1228313 () Bool)

(assert (=> b!1340515 m!1228313))

(assert (=> b!1340515 m!1228309))

(declare-fun m!1228315 () Bool)

(assert (=> b!1340515 m!1228315))

(assert (=> b!1340515 m!1228311))

(assert (=> b!1340515 m!1228289))

(assert (=> b!1340515 m!1228307))

(declare-fun m!1228317 () Bool)

(assert (=> b!1340515 m!1228317))

(declare-fun m!1228319 () Bool)

(assert (=> b!1340515 m!1228319))

(declare-fun m!1228321 () Bool)

(assert (=> b!1340513 m!1228321))

(check-sat (not start!113128) (not b!1340521) (not b!1340515) (not b_lambda!24329) b_and!50205 (not b!1340517) (not b!1340513) (not mapNonEmpty!57421) tp_is_empty!37143 (not b_next!31143) (not b!1340512))
(check-sat b_and!50205 (not b_next!31143))
