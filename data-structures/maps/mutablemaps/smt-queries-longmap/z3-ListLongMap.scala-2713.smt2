; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40106 () Bool)

(assert start!40106)

(declare-fun b_free!10365 () Bool)

(declare-fun b_next!10365 () Bool)

(assert (=> start!40106 (= b_free!10365 (not b_next!10365))))

(declare-fun tp!36623 () Bool)

(declare-fun b_and!18351 () Bool)

(assert (=> start!40106 (= tp!36623 b_and!18351)))

(declare-fun mapIsEmpty!18897 () Bool)

(declare-fun mapRes!18897 () Bool)

(assert (=> mapIsEmpty!18897 mapRes!18897))

(declare-fun b!437921 () Bool)

(declare-fun res!258566 () Bool)

(declare-fun e!258371 () Bool)

(assert (=> b!437921 (=> (not res!258566) (not e!258371))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437921 (= res!258566 (validMask!0 mask!1025))))

(declare-fun b!437922 () Bool)

(declare-fun e!258367 () Bool)

(assert (=> b!437922 (= e!258371 e!258367)))

(declare-fun res!258569 () Bool)

(assert (=> b!437922 (=> (not res!258569) (not e!258367))))

(declare-datatypes ((array!26831 0))(
  ( (array!26832 (arr!12862 (Array (_ BitVec 32) (_ BitVec 64))) (size!13214 (_ BitVec 32))) )
))
(declare-fun lt!201822 () array!26831)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26831 (_ BitVec 32)) Bool)

(assert (=> b!437922 (= res!258569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201822 mask!1025))))

(declare-fun _keys!709 () array!26831)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437922 (= lt!201822 (array!26832 (store (arr!12862 _keys!709) i!563 k0!794) (size!13214 _keys!709)))))

(declare-fun b!437923 () Bool)

(declare-fun e!258372 () Bool)

(declare-fun e!258369 () Bool)

(assert (=> b!437923 (= e!258372 (and e!258369 mapRes!18897))))

(declare-fun condMapEmpty!18897 () Bool)

(declare-datatypes ((V!16461 0))(
  ( (V!16462 (val!5803 Int)) )
))
(declare-datatypes ((ValueCell!5415 0))(
  ( (ValueCellFull!5415 (v!8046 V!16461)) (EmptyCell!5415) )
))
(declare-datatypes ((array!26833 0))(
  ( (array!26834 (arr!12863 (Array (_ BitVec 32) ValueCell!5415)) (size!13215 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26833)

(declare-fun mapDefault!18897 () ValueCell!5415)

(assert (=> b!437923 (= condMapEmpty!18897 (= (arr!12863 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5415)) mapDefault!18897)))))

(declare-fun b!437924 () Bool)

(declare-fun e!258373 () Bool)

(assert (=> b!437924 (= e!258367 e!258373)))

(declare-fun res!258568 () Bool)

(assert (=> b!437924 (=> (not res!258568) (not e!258373))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!437924 (= res!258568 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16461)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16461)

(declare-datatypes ((tuple2!7624 0))(
  ( (tuple2!7625 (_1!3822 (_ BitVec 64)) (_2!3822 V!16461)) )
))
(declare-datatypes ((List!7668 0))(
  ( (Nil!7665) (Cons!7664 (h!8520 tuple2!7624) (t!13432 List!7668)) )
))
(declare-datatypes ((ListLongMap!6551 0))(
  ( (ListLongMap!6552 (toList!3291 List!7668)) )
))
(declare-fun lt!201818 () ListLongMap!6551)

(declare-fun lt!201820 () array!26833)

(declare-fun getCurrentListMapNoExtraKeys!1473 (array!26831 array!26833 (_ BitVec 32) (_ BitVec 32) V!16461 V!16461 (_ BitVec 32) Int) ListLongMap!6551)

(assert (=> b!437924 (= lt!201818 (getCurrentListMapNoExtraKeys!1473 lt!201822 lt!201820 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16461)

(assert (=> b!437924 (= lt!201820 (array!26834 (store (arr!12863 _values!549) i!563 (ValueCellFull!5415 v!412)) (size!13215 _values!549)))))

(declare-fun lt!201821 () ListLongMap!6551)

(assert (=> b!437924 (= lt!201821 (getCurrentListMapNoExtraKeys!1473 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!18897 () Bool)

(declare-fun tp!36624 () Bool)

(declare-fun e!258368 () Bool)

(assert (=> mapNonEmpty!18897 (= mapRes!18897 (and tp!36624 e!258368))))

(declare-fun mapRest!18897 () (Array (_ BitVec 32) ValueCell!5415))

(declare-fun mapValue!18897 () ValueCell!5415)

(declare-fun mapKey!18897 () (_ BitVec 32))

(assert (=> mapNonEmpty!18897 (= (arr!12863 _values!549) (store mapRest!18897 mapKey!18897 mapValue!18897))))

(declare-fun res!258574 () Bool)

(assert (=> start!40106 (=> (not res!258574) (not e!258371))))

(assert (=> start!40106 (= res!258574 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13214 _keys!709))))))

(assert (=> start!40106 e!258371))

(declare-fun tp_is_empty!11517 () Bool)

(assert (=> start!40106 tp_is_empty!11517))

(assert (=> start!40106 tp!36623))

(assert (=> start!40106 true))

(declare-fun array_inv!9338 (array!26833) Bool)

(assert (=> start!40106 (and (array_inv!9338 _values!549) e!258372)))

(declare-fun array_inv!9339 (array!26831) Bool)

(assert (=> start!40106 (array_inv!9339 _keys!709)))

(declare-fun b!437925 () Bool)

(declare-fun res!258576 () Bool)

(assert (=> b!437925 (=> (not res!258576) (not e!258371))))

(assert (=> b!437925 (= res!258576 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13214 _keys!709))))))

(declare-fun b!437926 () Bool)

(assert (=> b!437926 (= e!258368 tp_is_empty!11517)))

(declare-fun b!437927 () Bool)

(assert (=> b!437927 (= e!258369 tp_is_empty!11517)))

(declare-fun b!437928 () Bool)

(declare-fun res!258565 () Bool)

(assert (=> b!437928 (=> (not res!258565) (not e!258371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437928 (= res!258565 (validKeyInArray!0 k0!794))))

(declare-fun b!437929 () Bool)

(declare-fun res!258570 () Bool)

(assert (=> b!437929 (=> (not res!258570) (not e!258371))))

(declare-fun arrayContainsKey!0 (array!26831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437929 (= res!258570 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!437930 () Bool)

(declare-fun res!258572 () Bool)

(assert (=> b!437930 (=> (not res!258572) (not e!258367))))

(declare-datatypes ((List!7669 0))(
  ( (Nil!7666) (Cons!7665 (h!8521 (_ BitVec 64)) (t!13433 List!7669)) )
))
(declare-fun arrayNoDuplicates!0 (array!26831 (_ BitVec 32) List!7669) Bool)

(assert (=> b!437930 (= res!258572 (arrayNoDuplicates!0 lt!201822 #b00000000000000000000000000000000 Nil!7666))))

(declare-fun b!437931 () Bool)

(declare-fun res!258564 () Bool)

(assert (=> b!437931 (=> (not res!258564) (not e!258371))))

(assert (=> b!437931 (= res!258564 (and (= (size!13215 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13214 _keys!709) (size!13215 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437932 () Bool)

(assert (=> b!437932 (= e!258373 (not true))))

(declare-fun +!1434 (ListLongMap!6551 tuple2!7624) ListLongMap!6551)

(assert (=> b!437932 (= (getCurrentListMapNoExtraKeys!1473 lt!201822 lt!201820 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1434 (getCurrentListMapNoExtraKeys!1473 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7625 k0!794 v!412)))))

(declare-datatypes ((Unit!12983 0))(
  ( (Unit!12984) )
))
(declare-fun lt!201819 () Unit!12983)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!612 (array!26831 array!26833 (_ BitVec 32) (_ BitVec 32) V!16461 V!16461 (_ BitVec 32) (_ BitVec 64) V!16461 (_ BitVec 32) Int) Unit!12983)

(assert (=> b!437932 (= lt!201819 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!612 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437933 () Bool)

(declare-fun res!258573 () Bool)

(assert (=> b!437933 (=> (not res!258573) (not e!258371))))

(assert (=> b!437933 (= res!258573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437934 () Bool)

(declare-fun res!258571 () Bool)

(assert (=> b!437934 (=> (not res!258571) (not e!258371))))

(assert (=> b!437934 (= res!258571 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7666))))

(declare-fun b!437935 () Bool)

(declare-fun res!258575 () Bool)

(assert (=> b!437935 (=> (not res!258575) (not e!258367))))

(assert (=> b!437935 (= res!258575 (bvsle from!863 i!563))))

(declare-fun b!437936 () Bool)

(declare-fun res!258567 () Bool)

(assert (=> b!437936 (=> (not res!258567) (not e!258371))))

(assert (=> b!437936 (= res!258567 (or (= (select (arr!12862 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12862 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!40106 res!258574) b!437921))

(assert (= (and b!437921 res!258566) b!437931))

(assert (= (and b!437931 res!258564) b!437933))

(assert (= (and b!437933 res!258573) b!437934))

(assert (= (and b!437934 res!258571) b!437925))

(assert (= (and b!437925 res!258576) b!437928))

(assert (= (and b!437928 res!258565) b!437936))

(assert (= (and b!437936 res!258567) b!437929))

(assert (= (and b!437929 res!258570) b!437922))

(assert (= (and b!437922 res!258569) b!437930))

(assert (= (and b!437930 res!258572) b!437935))

(assert (= (and b!437935 res!258575) b!437924))

(assert (= (and b!437924 res!258568) b!437932))

(assert (= (and b!437923 condMapEmpty!18897) mapIsEmpty!18897))

(assert (= (and b!437923 (not condMapEmpty!18897)) mapNonEmpty!18897))

(get-info :version)

(assert (= (and mapNonEmpty!18897 ((_ is ValueCellFull!5415) mapValue!18897)) b!437926))

(assert (= (and b!437923 ((_ is ValueCellFull!5415) mapDefault!18897)) b!437927))

(assert (= start!40106 b!437923))

(declare-fun m!425487 () Bool)

(assert (=> start!40106 m!425487))

(declare-fun m!425489 () Bool)

(assert (=> start!40106 m!425489))

(declare-fun m!425491 () Bool)

(assert (=> b!437932 m!425491))

(declare-fun m!425493 () Bool)

(assert (=> b!437932 m!425493))

(assert (=> b!437932 m!425493))

(declare-fun m!425495 () Bool)

(assert (=> b!437932 m!425495))

(declare-fun m!425497 () Bool)

(assert (=> b!437932 m!425497))

(declare-fun m!425499 () Bool)

(assert (=> b!437922 m!425499))

(declare-fun m!425501 () Bool)

(assert (=> b!437922 m!425501))

(declare-fun m!425503 () Bool)

(assert (=> b!437928 m!425503))

(declare-fun m!425505 () Bool)

(assert (=> b!437921 m!425505))

(declare-fun m!425507 () Bool)

(assert (=> b!437936 m!425507))

(declare-fun m!425509 () Bool)

(assert (=> b!437924 m!425509))

(declare-fun m!425511 () Bool)

(assert (=> b!437924 m!425511))

(declare-fun m!425513 () Bool)

(assert (=> b!437924 m!425513))

(declare-fun m!425515 () Bool)

(assert (=> b!437933 m!425515))

(declare-fun m!425517 () Bool)

(assert (=> b!437930 m!425517))

(declare-fun m!425519 () Bool)

(assert (=> b!437934 m!425519))

(declare-fun m!425521 () Bool)

(assert (=> b!437929 m!425521))

(declare-fun m!425523 () Bool)

(assert (=> mapNonEmpty!18897 m!425523))

(check-sat (not b!437921) (not b!437930) (not b_next!10365) (not b!437928) (not b!437934) tp_is_empty!11517 (not b!437924) (not mapNonEmpty!18897) (not start!40106) (not b!437929) (not b!437922) (not b!437932) b_and!18351 (not b!437933))
(check-sat b_and!18351 (not b_next!10365))
