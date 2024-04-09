; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101194 () Bool)

(assert start!101194)

(declare-fun b_free!26081 () Bool)

(declare-fun b_next!26081 () Bool)

(assert (=> start!101194 (= b_free!26081 (not b_next!26081))))

(declare-fun tp!91266 () Bool)

(declare-fun b_and!43289 () Bool)

(assert (=> start!101194 (= tp!91266 b_and!43289)))

(declare-datatypes ((V!46173 0))(
  ( (V!46174 (val!15449 Int)) )
))
(declare-fun zeroValue!944 () V!46173)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!60450 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14683 0))(
  ( (ValueCellFull!14683 (v!18103 V!46173)) (EmptyCell!14683) )
))
(declare-datatypes ((array!78330 0))(
  ( (array!78331 (arr!37796 (Array (_ BitVec 32) ValueCell!14683)) (size!38333 (_ BitVec 32))) )
))
(declare-fun lt!551840 () array!78330)

(declare-fun minValue!944 () V!46173)

(declare-datatypes ((tuple2!19992 0))(
  ( (tuple2!19993 (_1!10006 (_ BitVec 64)) (_2!10006 V!46173)) )
))
(declare-datatypes ((List!26811 0))(
  ( (Nil!26808) (Cons!26807 (h!28016 tuple2!19992) (t!39879 List!26811)) )
))
(declare-datatypes ((ListLongMap!17973 0))(
  ( (ListLongMap!17974 (toList!9002 List!26811)) )
))
(declare-fun call!60459 () ListLongMap!17973)

(declare-datatypes ((array!78332 0))(
  ( (array!78333 (arr!37797 (Array (_ BitVec 32) (_ BitVec 64))) (size!38334 (_ BitVec 32))) )
))
(declare-fun lt!551836 () array!78332)

(declare-fun getCurrentListMapNoExtraKeys!5407 (array!78332 array!78330 (_ BitVec 32) (_ BitVec 32) V!46173 V!46173 (_ BitVec 32) Int) ListLongMap!17973)

(assert (=> bm!60450 (= call!60459 (getCurrentListMapNoExtraKeys!5407 lt!551836 lt!551840 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213676 () Bool)

(declare-fun res!805933 () Bool)

(declare-fun e!689294 () Bool)

(assert (=> b!1213676 (=> (not res!805933) (not e!689294))))

(declare-datatypes ((List!26812 0))(
  ( (Nil!26809) (Cons!26808 (h!28017 (_ BitVec 64)) (t!39880 List!26812)) )
))
(declare-fun arrayNoDuplicates!0 (array!78332 (_ BitVec 32) List!26812) Bool)

(assert (=> b!1213676 (= res!805933 (arrayNoDuplicates!0 lt!551836 #b00000000000000000000000000000000 Nil!26809))))

(declare-fun b!1213677 () Bool)

(declare-fun res!805944 () Bool)

(declare-fun e!689299 () Bool)

(assert (=> b!1213677 (=> (not res!805944) (not e!689299))))

(declare-fun _keys!1208 () array!78332)

(declare-fun _values!996 () array!78330)

(assert (=> b!1213677 (= res!805944 (and (= (size!38333 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38334 _keys!1208) (size!38333 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!805945 () Bool)

(assert (=> start!101194 (=> (not res!805945) (not e!689299))))

(assert (=> start!101194 (= res!805945 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38334 _keys!1208))))))

(assert (=> start!101194 e!689299))

(declare-fun tp_is_empty!30785 () Bool)

(assert (=> start!101194 tp_is_empty!30785))

(declare-fun array_inv!28688 (array!78332) Bool)

(assert (=> start!101194 (array_inv!28688 _keys!1208)))

(assert (=> start!101194 true))

(assert (=> start!101194 tp!91266))

(declare-fun e!689304 () Bool)

(declare-fun array_inv!28689 (array!78330) Bool)

(assert (=> start!101194 (and (array_inv!28689 _values!996) e!689304)))

(declare-fun b!1213678 () Bool)

(declare-fun e!689292 () Bool)

(assert (=> b!1213678 (= e!689292 tp_is_empty!30785)))

(declare-fun call!60457 () ListLongMap!17973)

(declare-fun c!119882 () Bool)

(declare-fun c!119881 () Bool)

(declare-fun bm!60451 () Bool)

(declare-fun lt!551854 () ListLongMap!17973)

(declare-fun +!4027 (ListLongMap!17973 tuple2!19992) ListLongMap!17973)

(assert (=> bm!60451 (= call!60457 (+!4027 lt!551854 (ite (or c!119882 c!119881) (tuple2!19993 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19993 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!60460 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!60453 () ListLongMap!17973)

(declare-fun bm!60452 () Bool)

(declare-fun lt!551841 () ListLongMap!17973)

(declare-fun contains!7016 (ListLongMap!17973 (_ BitVec 64)) Bool)

(assert (=> bm!60452 (= call!60460 (contains!7016 (ite c!119882 lt!551841 call!60453) k!934))))

(declare-fun b!1213679 () Bool)

(declare-fun res!805936 () Bool)

(assert (=> b!1213679 (=> (not res!805936) (not e!689299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78332 (_ BitVec 32)) Bool)

(assert (=> b!1213679 (= res!805936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!60453 () Bool)

(declare-fun call!60458 () Bool)

(assert (=> bm!60453 (= call!60458 call!60460)))

(declare-fun b!1213680 () Bool)

(declare-fun res!805931 () Bool)

(assert (=> b!1213680 (=> (not res!805931) (not e!689299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213680 (= res!805931 (validKeyInArray!0 k!934))))

(declare-fun bm!60454 () Bool)

(declare-fun call!60455 () ListLongMap!17973)

(assert (=> bm!60454 (= call!60455 (getCurrentListMapNoExtraKeys!5407 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213681 () Bool)

(declare-datatypes ((Unit!40177 0))(
  ( (Unit!40178) )
))
(declare-fun e!689300 () Unit!40177)

(declare-fun Unit!40179 () Unit!40177)

(assert (=> b!1213681 (= e!689300 Unit!40179)))

(declare-fun b!1213682 () Bool)

(declare-fun e!689291 () Bool)

(assert (=> b!1213682 (= e!689291 tp_is_empty!30785)))

(declare-fun mapNonEmpty!48052 () Bool)

(declare-fun mapRes!48052 () Bool)

(declare-fun tp!91265 () Bool)

(assert (=> mapNonEmpty!48052 (= mapRes!48052 (and tp!91265 e!689292))))

(declare-fun mapRest!48052 () (Array (_ BitVec 32) ValueCell!14683))

(declare-fun mapValue!48052 () ValueCell!14683)

(declare-fun mapKey!48052 () (_ BitVec 32))

(assert (=> mapNonEmpty!48052 (= (arr!37796 _values!996) (store mapRest!48052 mapKey!48052 mapValue!48052))))

(declare-fun bm!60455 () Bool)

(declare-fun call!60454 () Unit!40177)

(declare-fun call!60456 () Unit!40177)

(assert (=> bm!60455 (= call!60454 call!60456)))

(declare-fun b!1213683 () Bool)

(assert (=> b!1213683 (= e!689299 e!689294)))

(declare-fun res!805934 () Bool)

(assert (=> b!1213683 (=> (not res!805934) (not e!689294))))

(assert (=> b!1213683 (= res!805934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551836 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213683 (= lt!551836 (array!78333 (store (arr!37797 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38334 _keys!1208)))))

(declare-fun mapIsEmpty!48052 () Bool)

(assert (=> mapIsEmpty!48052 mapRes!48052))

(declare-fun b!1213684 () Bool)

(assert (=> b!1213684 call!60458))

(declare-fun lt!551850 () Unit!40177)

(assert (=> b!1213684 (= lt!551850 call!60454)))

(assert (=> b!1213684 (= e!689300 lt!551850)))

(declare-fun b!1213685 () Bool)

(declare-fun lt!551855 () Bool)

(assert (=> b!1213685 (= c!119881 (and (not lt!551855) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!689295 () Unit!40177)

(declare-fun e!689301 () Unit!40177)

(assert (=> b!1213685 (= e!689295 e!689301)))

(declare-fun bm!60456 () Bool)

(declare-fun addStillContains!1085 (ListLongMap!17973 (_ BitVec 64) V!46173 (_ BitVec 64)) Unit!40177)

(assert (=> bm!60456 (= call!60456 (addStillContains!1085 (ite c!119882 lt!551841 lt!551854) (ite c!119882 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119881 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119882 minValue!944 (ite c!119881 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1213686 () Bool)

(declare-fun res!805938 () Bool)

(assert (=> b!1213686 (=> (not res!805938) (not e!689299))))

(assert (=> b!1213686 (= res!805938 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38334 _keys!1208))))))

(declare-fun b!1213687 () Bool)

(declare-fun res!805937 () Bool)

(assert (=> b!1213687 (=> (not res!805937) (not e!689299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1213687 (= res!805937 (validMask!0 mask!1564))))

(declare-fun b!1213688 () Bool)

(declare-fun res!805943 () Bool)

(assert (=> b!1213688 (=> (not res!805943) (not e!689299))))

(assert (=> b!1213688 (= res!805943 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26809))))

(declare-fun e!689290 () Bool)

(declare-fun b!1213689 () Bool)

(declare-fun -!1896 (ListLongMap!17973 (_ BitVec 64)) ListLongMap!17973)

(assert (=> b!1213689 (= e!689290 (= call!60459 (-!1896 call!60455 k!934)))))

(declare-fun b!1213690 () Bool)

(declare-fun e!689298 () Bool)

(declare-fun e!689303 () Bool)

(assert (=> b!1213690 (= e!689298 e!689303)))

(declare-fun res!805932 () Bool)

(assert (=> b!1213690 (=> res!805932 e!689303)))

(assert (=> b!1213690 (= res!805932 (not (= from!1455 i!673)))))

(declare-fun lt!551847 () ListLongMap!17973)

(assert (=> b!1213690 (= lt!551847 (getCurrentListMapNoExtraKeys!5407 lt!551836 lt!551840 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!551846 () V!46173)

(assert (=> b!1213690 (= lt!551840 (array!78331 (store (arr!37796 _values!996) i!673 (ValueCellFull!14683 lt!551846)) (size!38333 _values!996)))))

(declare-fun dynLambda!3317 (Int (_ BitVec 64)) V!46173)

(assert (=> b!1213690 (= lt!551846 (dynLambda!3317 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!551849 () ListLongMap!17973)

(assert (=> b!1213690 (= lt!551849 (getCurrentListMapNoExtraKeys!5407 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1213691 () Bool)

(assert (=> b!1213691 (= e!689304 (and e!689291 mapRes!48052))))

(declare-fun condMapEmpty!48052 () Bool)

(declare-fun mapDefault!48052 () ValueCell!14683)

