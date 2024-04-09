; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100596 () Bool)

(assert start!100596)

(declare-fun b_free!25883 () Bool)

(declare-fun b_next!25883 () Bool)

(assert (=> start!100596 (= b_free!25883 (not b_next!25883))))

(declare-fun tp!90640 () Bool)

(declare-fun b_and!42667 () Bool)

(assert (=> start!100596 (= tp!90640 b_and!42667)))

(declare-fun b!1202537 () Bool)

(declare-fun c!117644 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!545044 () Bool)

(assert (=> b!1202537 (= c!117644 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545044))))

(declare-datatypes ((Unit!39791 0))(
  ( (Unit!39792) )
))
(declare-fun e!682893 () Unit!39791)

(declare-fun e!682899 () Unit!39791)

(assert (=> b!1202537 (= e!682893 e!682899)))

(declare-fun b!1202538 () Bool)

(declare-fun res!800450 () Bool)

(declare-fun e!682898 () Bool)

(assert (=> b!1202538 (=> (not res!800450) (not e!682898))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202538 (= res!800450 (validKeyInArray!0 k!934))))

(declare-fun b!1202539 () Bool)

(declare-fun e!682900 () Unit!39791)

(declare-fun lt!545035 () Unit!39791)

(assert (=> b!1202539 (= e!682900 lt!545035)))

(declare-fun lt!545038 () Unit!39791)

(declare-fun call!57797 () Unit!39791)

(assert (=> b!1202539 (= lt!545038 call!57797)))

(declare-datatypes ((V!45909 0))(
  ( (V!45910 (val!15350 Int)) )
))
(declare-datatypes ((tuple2!19808 0))(
  ( (tuple2!19809 (_1!9914 (_ BitVec 64)) (_2!9914 V!45909)) )
))
(declare-datatypes ((List!26637 0))(
  ( (Nil!26634) (Cons!26633 (h!27842 tuple2!19808) (t!39507 List!26637)) )
))
(declare-datatypes ((ListLongMap!17789 0))(
  ( (ListLongMap!17790 (toList!8910 List!26637)) )
))
(declare-fun lt!545036 () ListLongMap!17789)

(declare-fun lt!545043 () ListLongMap!17789)

(declare-fun zeroValue!944 () V!45909)

(declare-fun +!3947 (ListLongMap!17789 tuple2!19808) ListLongMap!17789)

(assert (=> b!1202539 (= lt!545036 (+!3947 lt!545043 (tuple2!19809 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!57795 () Bool)

(assert (=> b!1202539 call!57795))

(declare-fun minValue!944 () V!45909)

(declare-fun addStillContains!1010 (ListLongMap!17789 (_ BitVec 64) V!45909 (_ BitVec 64)) Unit!39791)

(assert (=> b!1202539 (= lt!545035 (addStillContains!1010 lt!545036 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!57799 () ListLongMap!17789)

(declare-fun contains!6910 (ListLongMap!17789 (_ BitVec 64)) Bool)

(assert (=> b!1202539 (contains!6910 call!57799 k!934)))

(declare-fun b!1202540 () Bool)

(declare-fun res!800451 () Bool)

(declare-fun e!682894 () Bool)

(assert (=> b!1202540 (=> (not res!800451) (not e!682894))))

(declare-datatypes ((array!77924 0))(
  ( (array!77925 (arr!37603 (Array (_ BitVec 32) (_ BitVec 64))) (size!38140 (_ BitVec 32))) )
))
(declare-fun lt!545041 () array!77924)

(declare-datatypes ((List!26638 0))(
  ( (Nil!26635) (Cons!26634 (h!27843 (_ BitVec 64)) (t!39508 List!26638)) )
))
(declare-fun arrayNoDuplicates!0 (array!77924 (_ BitVec 32) List!26638) Bool)

(assert (=> b!1202540 (= res!800451 (arrayNoDuplicates!0 lt!545041 #b00000000000000000000000000000000 Nil!26635))))

(declare-fun b!1202541 () Bool)

(declare-fun res!800455 () Bool)

(assert (=> b!1202541 (=> (not res!800455) (not e!682898))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202541 (= res!800455 (validMask!0 mask!1564))))

(declare-fun b!1202542 () Bool)

(declare-fun res!800458 () Bool)

(assert (=> b!1202542 (=> (not res!800458) (not e!682898))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!77924)

(assert (=> b!1202542 (= res!800458 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38140 _keys!1208))))))

(declare-fun mapIsEmpty!47723 () Bool)

(declare-fun mapRes!47723 () Bool)

(assert (=> mapIsEmpty!47723 mapRes!47723))

(declare-fun b!1202543 () Bool)

(declare-fun res!800456 () Bool)

(assert (=> b!1202543 (=> (not res!800456) (not e!682898))))

(assert (=> b!1202543 (= res!800456 (= (select (arr!37603 _keys!1208) i!673) k!934))))

(declare-fun call!57800 () ListLongMap!17789)

(declare-fun b!1202536 () Bool)

(declare-fun call!57802 () ListLongMap!17789)

(declare-fun e!682902 () Bool)

(declare-fun -!1827 (ListLongMap!17789 (_ BitVec 64)) ListLongMap!17789)

(assert (=> b!1202536 (= e!682902 (= call!57802 (-!1827 call!57800 k!934)))))

(declare-fun res!800462 () Bool)

(assert (=> start!100596 (=> (not res!800462) (not e!682898))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100596 (= res!800462 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38140 _keys!1208))))))

(assert (=> start!100596 e!682898))

(declare-fun tp_is_empty!30587 () Bool)

(assert (=> start!100596 tp_is_empty!30587))

(declare-fun array_inv!28546 (array!77924) Bool)

(assert (=> start!100596 (array_inv!28546 _keys!1208)))

(assert (=> start!100596 true))

(assert (=> start!100596 tp!90640))

(declare-datatypes ((ValueCell!14584 0))(
  ( (ValueCellFull!14584 (v!17989 V!45909)) (EmptyCell!14584) )
))
(declare-datatypes ((array!77926 0))(
  ( (array!77927 (arr!37604 (Array (_ BitVec 32) ValueCell!14584)) (size!38141 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77926)

(declare-fun e!682903 () Bool)

(declare-fun array_inv!28547 (array!77926) Bool)

(assert (=> start!100596 (and (array_inv!28547 _values!996) e!682903)))

(declare-fun c!117643 () Bool)

(declare-fun bm!57792 () Bool)

(declare-fun c!117645 () Bool)

(assert (=> bm!57792 (= call!57799 (+!3947 (ite c!117643 lt!545036 lt!545043) (ite c!117643 (tuple2!19809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117645 (tuple2!19809 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1202544 () Bool)

(assert (=> b!1202544 (= e!682900 e!682893)))

(assert (=> b!1202544 (= c!117645 (and (not lt!545044) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!47723 () Bool)

(declare-fun tp!90639 () Bool)

(declare-fun e!682905 () Bool)

(assert (=> mapNonEmpty!47723 (= mapRes!47723 (and tp!90639 e!682905))))

(declare-fun mapValue!47723 () ValueCell!14584)

(declare-fun mapRest!47723 () (Array (_ BitVec 32) ValueCell!14584))

(declare-fun mapKey!47723 () (_ BitVec 32))

(assert (=> mapNonEmpty!47723 (= (arr!37604 _values!996) (store mapRest!47723 mapKey!47723 mapValue!47723))))

(declare-fun b!1202545 () Bool)

(declare-fun e!682897 () Bool)

(assert (=> b!1202545 (= e!682897 tp_is_empty!30587)))

(declare-fun b!1202546 () Bool)

(declare-fun lt!545037 () Unit!39791)

(assert (=> b!1202546 (= e!682899 lt!545037)))

(declare-fun call!57798 () Unit!39791)

(assert (=> b!1202546 (= lt!545037 call!57798)))

(declare-fun call!57796 () Bool)

(assert (=> b!1202546 call!57796))

(declare-fun b!1202547 () Bool)

(declare-fun e!682895 () Bool)

(declare-fun e!682901 () Bool)

(assert (=> b!1202547 (= e!682895 e!682901)))

(declare-fun res!800461 () Bool)

(assert (=> b!1202547 (=> res!800461 e!682901)))

(assert (=> b!1202547 (= res!800461 (not (contains!6910 lt!545043 k!934)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5321 (array!77924 array!77926 (_ BitVec 32) (_ BitVec 32) V!45909 V!45909 (_ BitVec 32) Int) ListLongMap!17789)

(assert (=> b!1202547 (= lt!545043 (getCurrentListMapNoExtraKeys!5321 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202548 () Bool)

(assert (=> b!1202548 call!57796))

(declare-fun lt!545031 () Unit!39791)

(assert (=> b!1202548 (= lt!545031 call!57798)))

(assert (=> b!1202548 (= e!682893 lt!545031)))

(declare-fun bm!57793 () Bool)

(declare-fun lt!545032 () array!77926)

(assert (=> bm!57793 (= call!57802 (getCurrentListMapNoExtraKeys!5321 lt!545041 lt!545032 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57794 () Bool)

(assert (=> bm!57794 (= call!57800 (getCurrentListMapNoExtraKeys!5321 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!57801 () ListLongMap!17789)

(declare-fun bm!57795 () Bool)

(assert (=> bm!57795 (= call!57795 (contains!6910 (ite c!117643 lt!545036 call!57801) k!934))))

(declare-fun b!1202549 () Bool)

(assert (=> b!1202549 (= e!682901 true)))

(declare-fun lt!545039 () Unit!39791)

(assert (=> b!1202549 (= lt!545039 e!682900)))

(assert (=> b!1202549 (= c!117643 (and (not lt!545044) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202549 (= lt!545044 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1202550 () Bool)

(declare-fun e!682896 () Bool)

(assert (=> b!1202550 (= e!682896 e!682895)))

(declare-fun res!800463 () Bool)

(assert (=> b!1202550 (=> res!800463 e!682895)))

(assert (=> b!1202550 (= res!800463 (not (= (select (arr!37603 _keys!1208) from!1455) k!934)))))

(assert (=> b!1202550 e!682902))

(declare-fun c!117646 () Bool)

(assert (=> b!1202550 (= c!117646 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545042 () Unit!39791)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1032 (array!77924 array!77926 (_ BitVec 32) (_ BitVec 32) V!45909 V!45909 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39791)

(assert (=> b!1202550 (= lt!545042 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1032 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202551 () Bool)

(declare-fun res!800454 () Bool)

(assert (=> b!1202551 (=> (not res!800454) (not e!682898))))

(assert (=> b!1202551 (= res!800454 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26635))))

(declare-fun bm!57796 () Bool)

(assert (=> bm!57796 (= call!57798 call!57797)))

(declare-fun b!1202552 () Bool)

(assert (=> b!1202552 (= e!682905 tp_is_empty!30587)))

(declare-fun b!1202553 () Bool)

(declare-fun res!800452 () Bool)

(assert (=> b!1202553 (=> (not res!800452) (not e!682898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77924 (_ BitVec 32)) Bool)

(assert (=> b!1202553 (= res!800452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!57797 () Bool)

(assert (=> bm!57797 (= call!57801 call!57799)))

(declare-fun b!1202554 () Bool)

(assert (=> b!1202554 (= e!682898 e!682894)))

(declare-fun res!800457 () Bool)

(assert (=> b!1202554 (=> (not res!800457) (not e!682894))))

(assert (=> b!1202554 (= res!800457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545041 mask!1564))))

(assert (=> b!1202554 (= lt!545041 (array!77925 (store (arr!37603 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38140 _keys!1208)))))

(declare-fun b!1202555 () Bool)

(declare-fun res!800453 () Bool)

(assert (=> b!1202555 (=> (not res!800453) (not e!682898))))

(assert (=> b!1202555 (= res!800453 (and (= (size!38141 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38140 _keys!1208) (size!38141 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1202556 () Bool)

(assert (=> b!1202556 (= e!682903 (and e!682897 mapRes!47723))))

(declare-fun condMapEmpty!47723 () Bool)

(declare-fun mapDefault!47723 () ValueCell!14584)

