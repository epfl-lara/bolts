; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109834 () Bool)

(assert start!109834)

(declare-fun b_free!29191 () Bool)

(declare-fun b_next!29191 () Bool)

(assert (=> start!109834 (= b_free!29191 (not b_next!29191))))

(declare-fun tp!102707 () Bool)

(declare-fun b_and!47315 () Bool)

(assert (=> start!109834 (= tp!102707 b_and!47315)))

(declare-fun bm!63666 () Bool)

(declare-datatypes ((Unit!42985 0))(
  ( (Unit!42986) )
))
(declare-fun call!63674 () Unit!42985)

(declare-fun call!63671 () Unit!42985)

(assert (=> bm!63666 (= call!63674 call!63671)))

(declare-fun b!1300504 () Bool)

(declare-fun e!741871 () Bool)

(declare-fun tp_is_empty!34831 () Bool)

(assert (=> b!1300504 (= e!741871 tp_is_empty!34831)))

(declare-fun b!1300505 () Bool)

(declare-fun e!741865 () Unit!42985)

(declare-fun Unit!42987 () Unit!42985)

(assert (=> b!1300505 (= e!741865 Unit!42987)))

(declare-fun b!1300506 () Bool)

(declare-fun e!741869 () Bool)

(assert (=> b!1300506 (= e!741869 tp_is_empty!34831)))

(declare-fun b!1300507 () Bool)

(declare-fun call!63669 () Bool)

(assert (=> b!1300507 call!63669))

(declare-fun lt!581364 () Unit!42985)

(assert (=> b!1300507 (= lt!581364 call!63674)))

(declare-datatypes ((V!51545 0))(
  ( (V!51546 (val!17490 Int)) )
))
(declare-datatypes ((tuple2!22710 0))(
  ( (tuple2!22711 (_1!11365 (_ BitVec 64)) (_2!11365 V!51545)) )
))
(declare-datatypes ((List!29868 0))(
  ( (Nil!29865) (Cons!29864 (h!31073 tuple2!22710) (t!43449 List!29868)) )
))
(declare-datatypes ((ListLongMap!20379 0))(
  ( (ListLongMap!20380 (toList!10205 List!29868)) )
))
(declare-fun lt!581366 () ListLongMap!20379)

(declare-fun call!63670 () ListLongMap!20379)

(assert (=> b!1300507 (= lt!581366 call!63670)))

(declare-fun e!741868 () Unit!42985)

(assert (=> b!1300507 (= e!741868 lt!581364)))

(declare-fun bm!63668 () Bool)

(declare-fun call!63672 () Bool)

(assert (=> bm!63668 (= call!63669 call!63672)))

(declare-fun mapIsEmpty!53822 () Bool)

(declare-fun mapRes!53822 () Bool)

(assert (=> mapIsEmpty!53822 mapRes!53822))

(declare-fun b!1300508 () Bool)

(declare-fun res!864295 () Bool)

(declare-fun e!741866 () Bool)

(assert (=> b!1300508 (=> (not res!864295) (not e!741866))))

(declare-datatypes ((array!86635 0))(
  ( (array!86636 (arr!41809 (Array (_ BitVec 32) (_ BitVec 64))) (size!42360 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86635)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300508 (= res!864295 (validKeyInArray!0 (select (arr!41809 _keys!1741) from!2144)))))

(declare-fun b!1300509 () Bool)

(declare-fun res!864290 () Bool)

(assert (=> b!1300509 (=> (not res!864290) (not e!741866))))

(declare-fun minValue!1387 () V!51545)

(declare-fun zeroValue!1387 () V!51545)

(declare-datatypes ((ValueCell!16517 0))(
  ( (ValueCellFull!16517 (v!20096 V!51545)) (EmptyCell!16517) )
))
(declare-datatypes ((array!86637 0))(
  ( (array!86638 (arr!41810 (Array (_ BitVec 32) ValueCell!16517)) (size!42361 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86637)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun contains!8267 (ListLongMap!20379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5177 (array!86635 array!86637 (_ BitVec 32) (_ BitVec 32) V!51545 V!51545 (_ BitVec 32) Int) ListLongMap!20379)

(assert (=> b!1300509 (= res!864290 (contains!8267 (getCurrentListMap!5177 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1300510 () Bool)

(declare-fun res!864296 () Bool)

(assert (=> b!1300510 (=> (not res!864296) (not e!741866))))

(declare-datatypes ((List!29869 0))(
  ( (Nil!29866) (Cons!29865 (h!31074 (_ BitVec 64)) (t!43450 List!29869)) )
))
(declare-fun arrayNoDuplicates!0 (array!86635 (_ BitVec 32) List!29869) Bool)

(assert (=> b!1300510 (= res!864296 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29866))))

(declare-fun b!1300511 () Bool)

(declare-fun e!741870 () Unit!42985)

(declare-fun lt!581369 () Unit!42985)

(assert (=> b!1300511 (= e!741870 lt!581369)))

(declare-fun lt!581367 () ListLongMap!20379)

(declare-fun call!63673 () ListLongMap!20379)

(assert (=> b!1300511 (= lt!581367 call!63673)))

(declare-fun lt!581368 () ListLongMap!20379)

(declare-fun +!4432 (ListLongMap!20379 tuple2!22710) ListLongMap!20379)

(assert (=> b!1300511 (= lt!581368 (+!4432 lt!581367 (tuple2!22711 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581363 () Unit!42985)

(assert (=> b!1300511 (= lt!581363 call!63671)))

(assert (=> b!1300511 call!63672))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!69 ((_ BitVec 64) (_ BitVec 64) V!51545 ListLongMap!20379) Unit!42985)

(assert (=> b!1300511 (= lt!581369 (lemmaInListMapAfterAddingDiffThenInBefore!69 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581367))))

(assert (=> b!1300511 (contains!8267 lt!581367 k!1205)))

(declare-fun lt!581370 () ListLongMap!20379)

(declare-fun c!124549 () Bool)

(declare-fun c!124550 () Bool)

(declare-fun bm!63669 () Bool)

(assert (=> bm!63669 (= call!63672 (contains!8267 (ite c!124550 lt!581368 (ite c!124549 lt!581366 lt!581370)) k!1205))))

(declare-fun bm!63670 () Bool)

(assert (=> bm!63670 (= call!63671 (lemmaInListMapAfterAddingDiffThenInBefore!69 k!1205 (ite c!124550 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124549 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124550 minValue!1387 (ite c!124549 zeroValue!1387 minValue!1387)) (ite c!124550 lt!581368 (ite c!124549 lt!581366 lt!581370))))))

(declare-fun mapNonEmpty!53822 () Bool)

(declare-fun tp!102708 () Bool)

(assert (=> mapNonEmpty!53822 (= mapRes!53822 (and tp!102708 e!741869))))

(declare-fun mapValue!53822 () ValueCell!16517)

(declare-fun mapRest!53822 () (Array (_ BitVec 32) ValueCell!16517))

(declare-fun mapKey!53822 () (_ BitVec 32))

(assert (=> mapNonEmpty!53822 (= (arr!41810 _values!1445) (store mapRest!53822 mapKey!53822 mapValue!53822))))

(declare-fun b!1300512 () Bool)

(declare-fun res!864289 () Bool)

(assert (=> b!1300512 (=> (not res!864289) (not e!741866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86635 (_ BitVec 32)) Bool)

(assert (=> b!1300512 (= res!864289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1300513 () Bool)

(assert (=> b!1300513 (= e!741866 (not true))))

(assert (=> b!1300513 (not (contains!8267 (ListLongMap!20380 Nil!29865) k!1205))))

(declare-fun lt!581365 () Unit!42985)

(declare-fun emptyContainsNothing!199 ((_ BitVec 64)) Unit!42985)

(assert (=> b!1300513 (= lt!581365 (emptyContainsNothing!199 k!1205))))

(declare-fun lt!581361 () Unit!42985)

(assert (=> b!1300513 (= lt!581361 e!741870)))

(declare-fun lt!581362 () Bool)

(assert (=> b!1300513 (= c!124550 (and (not lt!581362) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1300513 (= lt!581362 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1300514 () Bool)

(declare-fun res!864294 () Bool)

(assert (=> b!1300514 (=> (not res!864294) (not e!741866))))

(assert (=> b!1300514 (= res!864294 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42360 _keys!1741))))))

(declare-fun b!1300515 () Bool)

(declare-fun res!864293 () Bool)

(assert (=> b!1300515 (=> (not res!864293) (not e!741866))))

(assert (=> b!1300515 (= res!864293 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42360 _keys!1741))))))

(declare-fun b!1300516 () Bool)

(assert (=> b!1300516 (= e!741870 e!741868)))

(assert (=> b!1300516 (= c!124549 (and (not lt!581362) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63671 () Bool)

(assert (=> bm!63671 (= call!63670 call!63673)))

(declare-fun res!864292 () Bool)

(assert (=> start!109834 (=> (not res!864292) (not e!741866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109834 (= res!864292 (validMask!0 mask!2175))))

(assert (=> start!109834 e!741866))

(assert (=> start!109834 tp_is_empty!34831))

(assert (=> start!109834 true))

(declare-fun e!741864 () Bool)

(declare-fun array_inv!31633 (array!86637) Bool)

(assert (=> start!109834 (and (array_inv!31633 _values!1445) e!741864)))

(declare-fun array_inv!31634 (array!86635) Bool)

(assert (=> start!109834 (array_inv!31634 _keys!1741)))

(assert (=> start!109834 tp!102707))

(declare-fun bm!63667 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6145 (array!86635 array!86637 (_ BitVec 32) (_ BitVec 32) V!51545 V!51545 (_ BitVec 32) Int) ListLongMap!20379)

(assert (=> bm!63667 (= call!63673 (getCurrentListMapNoExtraKeys!6145 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1300517 () Bool)

(assert (=> b!1300517 (= e!741864 (and e!741871 mapRes!53822))))

(declare-fun condMapEmpty!53822 () Bool)

(declare-fun mapDefault!53822 () ValueCell!16517)

