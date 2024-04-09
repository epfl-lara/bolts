; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100850 () Bool)

(assert start!100850)

(declare-fun b_free!25953 () Bool)

(declare-fun b_next!25953 () Bool)

(assert (=> start!100850 (= b_free!25953 (not b_next!25953))))

(declare-fun tp!90866 () Bool)

(declare-fun b_and!42921 () Bool)

(assert (=> start!100850 (= tp!90866 b_and!42921)))

(declare-fun b!1206657 () Bool)

(declare-fun e!685300 () Bool)

(declare-fun e!685295 () Bool)

(assert (=> b!1206657 (= e!685300 e!685295)))

(declare-fun res!802496 () Bool)

(assert (=> b!1206657 (=> res!802496 e!685295)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206657 (= res!802496 (not (= from!1455 i!673)))))

(declare-datatypes ((array!78072 0))(
  ( (array!78073 (arr!37672 (Array (_ BitVec 32) (_ BitVec 64))) (size!38209 (_ BitVec 32))) )
))
(declare-fun lt!547401 () array!78072)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!46003 0))(
  ( (V!46004 (val!15385 Int)) )
))
(declare-fun minValue!944 () V!46003)

(declare-datatypes ((tuple2!19876 0))(
  ( (tuple2!19877 (_1!9948 (_ BitVec 64)) (_2!9948 V!46003)) )
))
(declare-datatypes ((List!26699 0))(
  ( (Nil!26696) (Cons!26695 (h!27904 tuple2!19876) (t!39639 List!26699)) )
))
(declare-datatypes ((ListLongMap!17857 0))(
  ( (ListLongMap!17858 (toList!8944 List!26699)) )
))
(declare-fun lt!547408 () ListLongMap!17857)

(declare-fun zeroValue!944 () V!46003)

(declare-datatypes ((ValueCell!14619 0))(
  ( (ValueCellFull!14619 (v!18031 V!46003)) (EmptyCell!14619) )
))
(declare-datatypes ((array!78074 0))(
  ( (array!78075 (arr!37673 (Array (_ BitVec 32) ValueCell!14619)) (size!38210 (_ BitVec 32))) )
))
(declare-fun lt!547409 () array!78074)

(declare-fun getCurrentListMapNoExtraKeys!5351 (array!78072 array!78074 (_ BitVec 32) (_ BitVec 32) V!46003 V!46003 (_ BitVec 32) Int) ListLongMap!17857)

(assert (=> b!1206657 (= lt!547408 (getCurrentListMapNoExtraKeys!5351 lt!547401 lt!547409 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78074)

(declare-fun dynLambda!3271 (Int (_ BitVec 64)) V!46003)

(assert (=> b!1206657 (= lt!547409 (array!78075 (store (arr!37673 _values!996) i!673 (ValueCellFull!14619 (dynLambda!3271 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38210 _values!996)))))

(declare-fun _keys!1208 () array!78072)

(declare-fun lt!547395 () ListLongMap!17857)

(assert (=> b!1206657 (= lt!547395 (getCurrentListMapNoExtraKeys!5351 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!58781 () Bool)

(declare-fun call!58791 () Bool)

(declare-fun call!58784 () Bool)

(assert (=> bm!58781 (= call!58791 call!58784)))

(declare-fun b!1206658 () Bool)

(declare-fun e!685291 () Bool)

(assert (=> b!1206658 (= e!685291 true)))

(declare-datatypes ((List!26700 0))(
  ( (Nil!26697) (Cons!26696 (h!27905 (_ BitVec 64)) (t!39640 List!26700)) )
))
(declare-fun arrayNoDuplicates!0 (array!78072 (_ BitVec 32) List!26700) Bool)

(assert (=> b!1206658 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26697)))

(declare-datatypes ((Unit!39923 0))(
  ( (Unit!39924) )
))
(declare-fun lt!547399 () Unit!39923)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78072 (_ BitVec 32) (_ BitVec 32)) Unit!39923)

(assert (=> b!1206658 (= lt!547399 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!685299 () Bool)

(assert (=> b!1206658 e!685299))

(declare-fun res!802499 () Bool)

(assert (=> b!1206658 (=> (not res!802499) (not e!685299))))

(declare-fun e!685289 () Bool)

(assert (=> b!1206658 (= res!802499 e!685289)))

(declare-fun c!118467 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1206658 (= c!118467 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547396 () Unit!39923)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!576 (array!78072 array!78074 (_ BitVec 32) (_ BitVec 32) V!46003 V!46003 (_ BitVec 64) (_ BitVec 32) Int) Unit!39923)

(assert (=> b!1206658 (= lt!547396 (lemmaListMapContainsThenArrayContainsFrom!576 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547403 () Unit!39923)

(declare-fun e!685296 () Unit!39923)

(assert (=> b!1206658 (= lt!547403 e!685296)))

(declare-fun c!118468 () Bool)

(declare-fun lt!547400 () Bool)

(assert (=> b!1206658 (= c!118468 (and (not lt!547400) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1206658 (= lt!547400 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1206659 () Bool)

(assert (=> b!1206659 call!58791))

(declare-fun lt!547402 () Unit!39923)

(declare-fun call!58788 () Unit!39923)

(assert (=> b!1206659 (= lt!547402 call!58788)))

(declare-fun e!685293 () Unit!39923)

(assert (=> b!1206659 (= e!685293 lt!547402)))

(declare-fun b!1206660 () Bool)

(declare-fun call!58787 () ListLongMap!17857)

(declare-fun e!685303 () Bool)

(declare-fun call!58786 () ListLongMap!17857)

(declare-fun -!1852 (ListLongMap!17857 (_ BitVec 64)) ListLongMap!17857)

(assert (=> b!1206660 (= e!685303 (= call!58786 (-!1852 call!58787 k0!934)))))

(declare-fun b!1206661 () Bool)

(declare-fun e!685304 () Bool)

(declare-fun e!685298 () Bool)

(declare-fun mapRes!47844 () Bool)

(assert (=> b!1206661 (= e!685304 (and e!685298 mapRes!47844))))

(declare-fun condMapEmpty!47844 () Bool)

(declare-fun mapDefault!47844 () ValueCell!14619)

(assert (=> b!1206661 (= condMapEmpty!47844 (= (arr!37673 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14619)) mapDefault!47844)))))

(declare-fun b!1206662 () Bool)

(declare-fun res!802497 () Bool)

(declare-fun e!685292 () Bool)

(assert (=> b!1206662 (=> (not res!802497) (not e!685292))))

(assert (=> b!1206662 (= res!802497 (and (= (size!38210 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38209 _keys!1208) (size!38210 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1206663 () Bool)

(declare-fun lt!547394 () Unit!39923)

(assert (=> b!1206663 (= e!685296 lt!547394)))

(declare-fun lt!547398 () Unit!39923)

(declare-fun call!58789 () Unit!39923)

(assert (=> b!1206663 (= lt!547398 call!58789)))

(declare-fun lt!547404 () ListLongMap!17857)

(declare-fun lt!547406 () ListLongMap!17857)

(declare-fun +!3973 (ListLongMap!17857 tuple2!19876) ListLongMap!17857)

(assert (=> b!1206663 (= lt!547404 (+!3973 lt!547406 (tuple2!19877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1206663 call!58784))

(declare-fun addStillContains!1037 (ListLongMap!17857 (_ BitVec 64) V!46003 (_ BitVec 64)) Unit!39923)

(assert (=> b!1206663 (= lt!547394 (addStillContains!1037 lt!547404 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!58790 () ListLongMap!17857)

(declare-fun contains!6947 (ListLongMap!17857 (_ BitVec 64)) Bool)

(assert (=> b!1206663 (contains!6947 call!58790 k0!934)))

(declare-fun b!1206664 () Bool)

(declare-fun e!685294 () Bool)

(assert (=> b!1206664 (= e!685292 e!685294)))

(declare-fun res!802498 () Bool)

(assert (=> b!1206664 (=> (not res!802498) (not e!685294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78072 (_ BitVec 32)) Bool)

(assert (=> b!1206664 (= res!802498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547401 mask!1564))))

(assert (=> b!1206664 (= lt!547401 (array!78073 (store (arr!37672 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38209 _keys!1208)))))

(declare-fun b!1206665 () Bool)

(declare-fun e!685297 () Unit!39923)

(declare-fun lt!547407 () Unit!39923)

(assert (=> b!1206665 (= e!685297 lt!547407)))

(assert (=> b!1206665 (= lt!547407 call!58788)))

(assert (=> b!1206665 call!58791))

(declare-fun b!1206666 () Bool)

(declare-fun arrayContainsKey!0 (array!78072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1206666 (= e!685289 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206667 () Bool)

(assert (=> b!1206667 (= e!685299 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!58783 () Bool)

(assert (=> bm!58783 (= call!58787 (getCurrentListMapNoExtraKeys!5351 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47844 () Bool)

(declare-fun tp!90865 () Bool)

(declare-fun e!685302 () Bool)

(assert (=> mapNonEmpty!47844 (= mapRes!47844 (and tp!90865 e!685302))))

(declare-fun mapKey!47844 () (_ BitVec 32))

(declare-fun mapValue!47844 () ValueCell!14619)

(declare-fun mapRest!47844 () (Array (_ BitVec 32) ValueCell!14619))

(assert (=> mapNonEmpty!47844 (= (arr!37673 _values!996) (store mapRest!47844 mapKey!47844 mapValue!47844))))

(declare-fun b!1206668 () Bool)

(declare-fun e!685290 () Bool)

(assert (=> b!1206668 (= e!685290 e!685291)))

(declare-fun res!802501 () Bool)

(assert (=> b!1206668 (=> res!802501 e!685291)))

(assert (=> b!1206668 (= res!802501 (not (contains!6947 lt!547406 k0!934)))))

(assert (=> b!1206668 (= lt!547406 (getCurrentListMapNoExtraKeys!5351 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!118470 () Bool)

(declare-fun bm!58784 () Bool)

(assert (=> bm!58784 (= call!58789 (addStillContains!1037 lt!547406 (ite (or c!118468 c!118470) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118468 c!118470) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1206669 () Bool)

(declare-fun c!118469 () Bool)

(assert (=> b!1206669 (= c!118469 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547400))))

(assert (=> b!1206669 (= e!685293 e!685297)))

(declare-fun b!1206670 () Bool)

(declare-fun res!802500 () Bool)

(assert (=> b!1206670 (=> (not res!802500) (not e!685292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1206670 (= res!802500 (validMask!0 mask!1564))))

(declare-fun bm!58785 () Bool)

(assert (=> bm!58785 (= call!58788 call!58789)))

(declare-fun b!1206671 () Bool)

(declare-fun res!802502 () Bool)

(assert (=> b!1206671 (=> (not res!802502) (not e!685292))))

(assert (=> b!1206671 (= res!802502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!58786 () Bool)

(assert (=> bm!58786 (= call!58786 (getCurrentListMapNoExtraKeys!5351 lt!547401 lt!547409 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206672 () Bool)

(declare-fun res!802489 () Bool)

(assert (=> b!1206672 (=> (not res!802489) (not e!685292))))

(assert (=> b!1206672 (= res!802489 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38209 _keys!1208))))))

(declare-fun bm!58787 () Bool)

(declare-fun call!58785 () ListLongMap!17857)

(assert (=> bm!58787 (= call!58785 call!58790)))

(declare-fun b!1206673 () Bool)

(assert (=> b!1206673 (= e!685296 e!685293)))

(assert (=> b!1206673 (= c!118470 (and (not lt!547400) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1206674 () Bool)

(assert (=> b!1206674 (= e!685294 (not e!685300))))

(declare-fun res!802493 () Bool)

(assert (=> b!1206674 (=> res!802493 e!685300)))

(assert (=> b!1206674 (= res!802493 (bvsgt from!1455 i!673))))

(assert (=> b!1206674 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!547397 () Unit!39923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78072 (_ BitVec 64) (_ BitVec 32)) Unit!39923)

(assert (=> b!1206674 (= lt!547397 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47844 () Bool)

(assert (=> mapIsEmpty!47844 mapRes!47844))

(declare-fun bm!58782 () Bool)

(assert (=> bm!58782 (= call!58784 (contains!6947 (ite c!118468 lt!547404 call!58785) k0!934))))

(declare-fun res!802491 () Bool)

(assert (=> start!100850 (=> (not res!802491) (not e!685292))))

(assert (=> start!100850 (= res!802491 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38209 _keys!1208))))))

(assert (=> start!100850 e!685292))

(declare-fun tp_is_empty!30657 () Bool)

(assert (=> start!100850 tp_is_empty!30657))

(declare-fun array_inv!28598 (array!78072) Bool)

(assert (=> start!100850 (array_inv!28598 _keys!1208)))

(assert (=> start!100850 true))

(assert (=> start!100850 tp!90866))

(declare-fun array_inv!28599 (array!78074) Bool)

(assert (=> start!100850 (and (array_inv!28599 _values!996) e!685304)))

(declare-fun b!1206675 () Bool)

(assert (=> b!1206675 (= e!685302 tp_is_empty!30657)))

(declare-fun b!1206676 () Bool)

(declare-fun res!802494 () Bool)

(assert (=> b!1206676 (=> (not res!802494) (not e!685292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1206676 (= res!802494 (validKeyInArray!0 k0!934))))

(declare-fun b!1206677 () Bool)

(declare-fun res!802495 () Bool)

(assert (=> b!1206677 (=> (not res!802495) (not e!685292))))

(assert (=> b!1206677 (= res!802495 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26697))))

(declare-fun b!1206678 () Bool)

(declare-fun Unit!39925 () Unit!39923)

(assert (=> b!1206678 (= e!685297 Unit!39925)))

(declare-fun b!1206679 () Bool)

(assert (=> b!1206679 (= e!685295 e!685290)))

(declare-fun res!802503 () Bool)

(assert (=> b!1206679 (=> res!802503 e!685290)))

(assert (=> b!1206679 (= res!802503 (not (= (select (arr!37672 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1206679 e!685303))

(declare-fun c!118471 () Bool)

(assert (=> b!1206679 (= c!118471 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547405 () Unit!39923)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1056 (array!78072 array!78074 (_ BitVec 32) (_ BitVec 32) V!46003 V!46003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39923)

(assert (=> b!1206679 (= lt!547405 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1056 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58788 () Bool)

(assert (=> bm!58788 (= call!58790 (+!3973 (ite c!118468 lt!547404 lt!547406) (ite c!118468 (tuple2!19877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118470 (tuple2!19877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1206680 () Bool)

(assert (=> b!1206680 (= e!685289 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547400) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1206681 () Bool)

(declare-fun res!802492 () Bool)

(assert (=> b!1206681 (=> (not res!802492) (not e!685292))))

(assert (=> b!1206681 (= res!802492 (= (select (arr!37672 _keys!1208) i!673) k0!934))))

(declare-fun b!1206682 () Bool)

(declare-fun res!802490 () Bool)

(assert (=> b!1206682 (=> (not res!802490) (not e!685294))))

(assert (=> b!1206682 (= res!802490 (arrayNoDuplicates!0 lt!547401 #b00000000000000000000000000000000 Nil!26697))))

(declare-fun b!1206683 () Bool)

(assert (=> b!1206683 (= e!685303 (= call!58786 call!58787))))

(declare-fun b!1206684 () Bool)

(assert (=> b!1206684 (= e!685298 tp_is_empty!30657)))

(assert (= (and start!100850 res!802491) b!1206670))

(assert (= (and b!1206670 res!802500) b!1206662))

(assert (= (and b!1206662 res!802497) b!1206671))

(assert (= (and b!1206671 res!802502) b!1206677))

(assert (= (and b!1206677 res!802495) b!1206672))

(assert (= (and b!1206672 res!802489) b!1206676))

(assert (= (and b!1206676 res!802494) b!1206681))

(assert (= (and b!1206681 res!802492) b!1206664))

(assert (= (and b!1206664 res!802498) b!1206682))

(assert (= (and b!1206682 res!802490) b!1206674))

(assert (= (and b!1206674 (not res!802493)) b!1206657))

(assert (= (and b!1206657 (not res!802496)) b!1206679))

(assert (= (and b!1206679 c!118471) b!1206660))

(assert (= (and b!1206679 (not c!118471)) b!1206683))

(assert (= (or b!1206660 b!1206683) bm!58786))

(assert (= (or b!1206660 b!1206683) bm!58783))

(assert (= (and b!1206679 (not res!802503)) b!1206668))

(assert (= (and b!1206668 (not res!802501)) b!1206658))

(assert (= (and b!1206658 c!118468) b!1206663))

(assert (= (and b!1206658 (not c!118468)) b!1206673))

(assert (= (and b!1206673 c!118470) b!1206659))

(assert (= (and b!1206673 (not c!118470)) b!1206669))

(assert (= (and b!1206669 c!118469) b!1206665))

(assert (= (and b!1206669 (not c!118469)) b!1206678))

(assert (= (or b!1206659 b!1206665) bm!58785))

(assert (= (or b!1206659 b!1206665) bm!58787))

(assert (= (or b!1206659 b!1206665) bm!58781))

(assert (= (or b!1206663 bm!58781) bm!58782))

(assert (= (or b!1206663 bm!58785) bm!58784))

(assert (= (or b!1206663 bm!58787) bm!58788))

(assert (= (and b!1206658 c!118467) b!1206666))

(assert (= (and b!1206658 (not c!118467)) b!1206680))

(assert (= (and b!1206658 res!802499) b!1206667))

(assert (= (and b!1206661 condMapEmpty!47844) mapIsEmpty!47844))

(assert (= (and b!1206661 (not condMapEmpty!47844)) mapNonEmpty!47844))

(get-info :version)

(assert (= (and mapNonEmpty!47844 ((_ is ValueCellFull!14619) mapValue!47844)) b!1206675))

(assert (= (and b!1206661 ((_ is ValueCellFull!14619) mapDefault!47844)) b!1206684))

(assert (= start!100850 b!1206661))

(declare-fun b_lambda!21405 () Bool)

(assert (=> (not b_lambda!21405) (not b!1206657)))

(declare-fun t!39638 () Bool)

(declare-fun tb!10761 () Bool)

(assert (=> (and start!100850 (= defaultEntry!1004 defaultEntry!1004) t!39638) tb!10761))

(declare-fun result!22101 () Bool)

(assert (=> tb!10761 (= result!22101 tp_is_empty!30657)))

(assert (=> b!1206657 t!39638))

(declare-fun b_and!42923 () Bool)

(assert (= b_and!42921 (and (=> t!39638 result!22101) b_and!42923)))

(declare-fun m!1112389 () Bool)

(assert (=> b!1206677 m!1112389))

(declare-fun m!1112391 () Bool)

(assert (=> b!1206658 m!1112391))

(declare-fun m!1112393 () Bool)

(assert (=> b!1206658 m!1112393))

(declare-fun m!1112395 () Bool)

(assert (=> b!1206658 m!1112395))

(declare-fun m!1112397 () Bool)

(assert (=> b!1206679 m!1112397))

(declare-fun m!1112399 () Bool)

(assert (=> b!1206679 m!1112399))

(declare-fun m!1112401 () Bool)

(assert (=> b!1206674 m!1112401))

(declare-fun m!1112403 () Bool)

(assert (=> b!1206674 m!1112403))

(declare-fun m!1112405 () Bool)

(assert (=> b!1206667 m!1112405))

(declare-fun m!1112407 () Bool)

(assert (=> bm!58788 m!1112407))

(declare-fun m!1112409 () Bool)

(assert (=> b!1206664 m!1112409))

(declare-fun m!1112411 () Bool)

(assert (=> b!1206664 m!1112411))

(declare-fun m!1112413 () Bool)

(assert (=> b!1206668 m!1112413))

(declare-fun m!1112415 () Bool)

(assert (=> b!1206668 m!1112415))

(declare-fun m!1112417 () Bool)

(assert (=> b!1206660 m!1112417))

(declare-fun m!1112419 () Bool)

(assert (=> b!1206671 m!1112419))

(declare-fun m!1112421 () Bool)

(assert (=> b!1206676 m!1112421))

(declare-fun m!1112423 () Bool)

(assert (=> bm!58784 m!1112423))

(declare-fun m!1112425 () Bool)

(assert (=> start!100850 m!1112425))

(declare-fun m!1112427 () Bool)

(assert (=> start!100850 m!1112427))

(declare-fun m!1112429 () Bool)

(assert (=> b!1206681 m!1112429))

(declare-fun m!1112431 () Bool)

(assert (=> b!1206682 m!1112431))

(assert (=> b!1206666 m!1112405))

(declare-fun m!1112433 () Bool)

(assert (=> b!1206663 m!1112433))

(declare-fun m!1112435 () Bool)

(assert (=> b!1206663 m!1112435))

(declare-fun m!1112437 () Bool)

(assert (=> b!1206663 m!1112437))

(declare-fun m!1112439 () Bool)

(assert (=> b!1206657 m!1112439))

(declare-fun m!1112441 () Bool)

(assert (=> b!1206657 m!1112441))

(declare-fun m!1112443 () Bool)

(assert (=> b!1206657 m!1112443))

(declare-fun m!1112445 () Bool)

(assert (=> b!1206657 m!1112445))

(declare-fun m!1112447 () Bool)

(assert (=> bm!58782 m!1112447))

(declare-fun m!1112449 () Bool)

(assert (=> bm!58786 m!1112449))

(assert (=> bm!58783 m!1112415))

(declare-fun m!1112451 () Bool)

(assert (=> b!1206670 m!1112451))

(declare-fun m!1112453 () Bool)

(assert (=> mapNonEmpty!47844 m!1112453))

(check-sat (not b!1206676) (not b!1206664) (not bm!58786) (not b!1206667) (not b!1206663) (not bm!58783) (not b!1206671) (not b!1206668) (not b_lambda!21405) (not b!1206660) (not b!1206657) (not b!1206679) b_and!42923 (not start!100850) (not b!1206666) (not b!1206674) (not b!1206670) (not mapNonEmpty!47844) (not bm!58782) tp_is_empty!30657 (not b_next!25953) (not bm!58784) (not bm!58788) (not b!1206658) (not b!1206677) (not b!1206682))
(check-sat b_and!42923 (not b_next!25953))
