; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101454 () Bool)

(assert start!101454)

(declare-fun b_free!26263 () Bool)

(declare-fun b_next!26263 () Bool)

(assert (=> start!101454 (= b_free!26263 (not b_next!26263))))

(declare-fun tp!91821 () Bool)

(declare-fun b_and!43707 () Bool)

(assert (=> start!101454 (= tp!91821 b_and!43707)))

(declare-fun b!1218740 () Bool)

(declare-fun res!809522 () Bool)

(declare-fun e!692000 () Bool)

(assert (=> b!1218740 (=> (not res!809522) (not e!692000))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218740 (= res!809522 (validKeyInArray!0 k!934))))

(declare-fun res!809525 () Bool)

(assert (=> start!101454 (=> (not res!809525) (not e!692000))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78684 0))(
  ( (array!78685 (arr!37970 (Array (_ BitVec 32) (_ BitVec 64))) (size!38507 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78684)

(assert (=> start!101454 (= res!809525 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38507 _keys!1208))))))

(assert (=> start!101454 e!692000))

(declare-fun tp_is_empty!30967 () Bool)

(assert (=> start!101454 tp_is_empty!30967))

(declare-fun array_inv!28810 (array!78684) Bool)

(assert (=> start!101454 (array_inv!28810 _keys!1208)))

(assert (=> start!101454 true))

(assert (=> start!101454 tp!91821))

(declare-datatypes ((V!46417 0))(
  ( (V!46418 (val!15540 Int)) )
))
(declare-datatypes ((ValueCell!14774 0))(
  ( (ValueCellFull!14774 (v!18197 V!46417)) (EmptyCell!14774) )
))
(declare-datatypes ((array!78686 0))(
  ( (array!78687 (arr!37971 (Array (_ BitVec 32) ValueCell!14774)) (size!38508 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78686)

(declare-fun e!692002 () Bool)

(declare-fun array_inv!28811 (array!78686) Bool)

(assert (=> start!101454 (and (array_inv!28811 _values!996) e!692002)))

(declare-fun b!1218741 () Bool)

(declare-fun e!691999 () Bool)

(declare-fun e!692008 () Bool)

(assert (=> b!1218741 (= e!691999 e!692008)))

(declare-fun res!809520 () Bool)

(assert (=> b!1218741 (=> res!809520 e!692008)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1218741 (= res!809520 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46417)

(declare-fun lt!554028 () array!78686)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20124 0))(
  ( (tuple2!20125 (_1!10072 (_ BitVec 64)) (_2!10072 V!46417)) )
))
(declare-datatypes ((List!26944 0))(
  ( (Nil!26941) (Cons!26940 (h!28149 tuple2!20124) (t!40194 List!26944)) )
))
(declare-datatypes ((ListLongMap!18105 0))(
  ( (ListLongMap!18106 (toList!9068 List!26944)) )
))
(declare-fun lt!554033 () ListLongMap!18105)

(declare-fun minValue!944 () V!46417)

(declare-fun lt!554032 () array!78684)

(declare-fun getCurrentListMapNoExtraKeys!5472 (array!78684 array!78686 (_ BitVec 32) (_ BitVec 32) V!46417 V!46417 (_ BitVec 32) Int) ListLongMap!18105)

(assert (=> b!1218741 (= lt!554033 (getCurrentListMapNoExtraKeys!5472 lt!554032 lt!554028 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554031 () V!46417)

(assert (=> b!1218741 (= lt!554028 (array!78687 (store (arr!37971 _values!996) i!673 (ValueCellFull!14774 lt!554031)) (size!38508 _values!996)))))

(declare-fun dynLambda!3376 (Int (_ BitVec 64)) V!46417)

(assert (=> b!1218741 (= lt!554031 (dynLambda!3376 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554036 () ListLongMap!18105)

(assert (=> b!1218741 (= lt!554036 (getCurrentListMapNoExtraKeys!5472 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218742 () Bool)

(declare-fun res!809518 () Bool)

(declare-fun e!691998 () Bool)

(assert (=> b!1218742 (=> (not res!809518) (not e!691998))))

(declare-datatypes ((List!26945 0))(
  ( (Nil!26942) (Cons!26941 (h!28150 (_ BitVec 64)) (t!40195 List!26945)) )
))
(declare-fun arrayNoDuplicates!0 (array!78684 (_ BitVec 32) List!26945) Bool)

(assert (=> b!1218742 (= res!809518 (arrayNoDuplicates!0 lt!554032 #b00000000000000000000000000000000 Nil!26942))))

(declare-fun b!1218743 () Bool)

(declare-fun e!692004 () Bool)

(assert (=> b!1218743 (= e!692004 tp_is_empty!30967)))

(declare-fun b!1218744 () Bool)

(declare-fun res!809521 () Bool)

(assert (=> b!1218744 (=> (not res!809521) (not e!692000))))

(assert (=> b!1218744 (= res!809521 (and (= (size!38508 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38507 _keys!1208) (size!38508 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218745 () Bool)

(declare-fun mapRes!48334 () Bool)

(assert (=> b!1218745 (= e!692002 (and e!692004 mapRes!48334))))

(declare-fun condMapEmpty!48334 () Bool)

(declare-fun mapDefault!48334 () ValueCell!14774)

