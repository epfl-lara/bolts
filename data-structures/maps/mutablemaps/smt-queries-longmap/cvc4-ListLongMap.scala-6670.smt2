; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84024 () Bool)

(assert start!84024)

(declare-fun b_free!19751 () Bool)

(declare-fun b_next!19751 () Bool)

(assert (=> start!84024 (= b_free!19751 (not b_next!19751))))

(declare-fun tp!68776 () Bool)

(declare-fun b_and!31603 () Bool)

(assert (=> start!84024 (= tp!68776 b_and!31603)))

(declare-fun mapIsEmpty!36227 () Bool)

(declare-fun mapRes!36227 () Bool)

(assert (=> mapIsEmpty!36227 mapRes!36227))

(declare-fun b!981534 () Bool)

(declare-fun res!656937 () Bool)

(declare-fun e!553356 () Bool)

(assert (=> b!981534 (=> (not res!656937) (not e!553356))))

(declare-datatypes ((V!35381 0))(
  ( (V!35382 (val!11450 Int)) )
))
(declare-datatypes ((ValueCell!10918 0))(
  ( (ValueCellFull!10918 (v!14012 V!35381)) (EmptyCell!10918) )
))
(declare-datatypes ((array!61591 0))(
  ( (array!61592 (arr!29649 (Array (_ BitVec 32) ValueCell!10918)) (size!30129 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61591)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61593 0))(
  ( (array!61594 (arr!29650 (Array (_ BitVec 32) (_ BitVec 64))) (size!30130 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61593)

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!981534 (= res!656937 (and (= (size!30129 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30130 _keys!1544) (size!30129 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981535 () Bool)

(declare-fun res!656939 () Bool)

(assert (=> b!981535 (=> (not res!656939) (not e!553356))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981535 (= res!656939 (validKeyInArray!0 (select (arr!29650 _keys!1544) from!1932)))))

(declare-fun b!981536 () Bool)

(declare-fun res!656942 () Bool)

(assert (=> b!981536 (=> (not res!656942) (not e!553356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61593 (_ BitVec 32)) Bool)

(assert (=> b!981536 (= res!656942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981537 () Bool)

(declare-fun res!656938 () Bool)

(assert (=> b!981537 (=> (not res!656938) (not e!553356))))

(assert (=> b!981537 (= res!656938 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30130 _keys!1544))))))

(declare-fun b!981538 () Bool)

(declare-fun e!553357 () Bool)

(assert (=> b!981538 (= e!553356 e!553357)))

(declare-fun res!656940 () Bool)

(assert (=> b!981538 (=> (not res!656940) (not e!553357))))

(assert (=> b!981538 (= res!656940 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29650 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!435760 () V!35381)

(declare-fun get!15388 (ValueCell!10918 V!35381) V!35381)

(declare-fun dynLambda!1789 (Int (_ BitVec 64)) V!35381)

(assert (=> b!981538 (= lt!435760 (get!15388 (select (arr!29649 _values!1278) from!1932) (dynLambda!1789 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14770 0))(
  ( (tuple2!14771 (_1!7395 (_ BitVec 64)) (_2!7395 V!35381)) )
))
(declare-datatypes ((List!20676 0))(
  ( (Nil!20673) (Cons!20672 (h!21834 tuple2!14770) (t!29385 List!20676)) )
))
(declare-datatypes ((ListLongMap!13481 0))(
  ( (ListLongMap!13482 (toList!6756 List!20676)) )
))
(declare-fun lt!435757 () ListLongMap!13481)

(declare-fun minValue!1220 () V!35381)

(declare-fun zeroValue!1220 () V!35381)

(declare-fun getCurrentListMapNoExtraKeys!3416 (array!61593 array!61591 (_ BitVec 32) (_ BitVec 32) V!35381 V!35381 (_ BitVec 32) Int) ListLongMap!13481)

(assert (=> b!981538 (= lt!435757 (getCurrentListMapNoExtraKeys!3416 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981539 () Bool)

(declare-fun res!656936 () Bool)

(assert (=> b!981539 (=> (not res!656936) (not e!553356))))

(declare-datatypes ((List!20677 0))(
  ( (Nil!20674) (Cons!20673 (h!21835 (_ BitVec 64)) (t!29386 List!20677)) )
))
(declare-fun arrayNoDuplicates!0 (array!61593 (_ BitVec 32) List!20677) Bool)

(assert (=> b!981539 (= res!656936 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20674))))

(declare-fun b!981540 () Bool)

(assert (=> b!981540 (= e!553357 (not true))))

(declare-fun lt!435758 () tuple2!14770)

(declare-fun lt!435756 () tuple2!14770)

(declare-fun +!2960 (ListLongMap!13481 tuple2!14770) ListLongMap!13481)

(assert (=> b!981540 (= (+!2960 (+!2960 lt!435757 lt!435758) lt!435756) (+!2960 (+!2960 lt!435757 lt!435756) lt!435758))))

(assert (=> b!981540 (= lt!435756 (tuple2!14771 (select (arr!29650 _keys!1544) from!1932) lt!435760))))

(assert (=> b!981540 (= lt!435758 (tuple2!14771 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32595 0))(
  ( (Unit!32596) )
))
(declare-fun lt!435759 () Unit!32595)

(declare-fun addCommutativeForDiffKeys!622 (ListLongMap!13481 (_ BitVec 64) V!35381 (_ BitVec 64) V!35381) Unit!32595)

(assert (=> b!981540 (= lt!435759 (addCommutativeForDiffKeys!622 lt!435757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29650 _keys!1544) from!1932) lt!435760))))

(declare-fun b!981542 () Bool)

(declare-fun e!553355 () Bool)

(declare-fun tp_is_empty!22799 () Bool)

(assert (=> b!981542 (= e!553355 tp_is_empty!22799)))

(declare-fun b!981543 () Bool)

(declare-fun e!553358 () Bool)

(assert (=> b!981543 (= e!553358 (and e!553355 mapRes!36227))))

(declare-fun condMapEmpty!36227 () Bool)

(declare-fun mapDefault!36227 () ValueCell!10918)

