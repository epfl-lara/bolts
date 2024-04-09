; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101660 () Bool)

(assert start!101660)

(declare-fun b_free!26345 () Bool)

(declare-fun b_next!26345 () Bool)

(assert (=> start!101660 (= b_free!26345 (not b_next!26345))))

(declare-fun tp!92079 () Bool)

(declare-fun b_and!43943 () Bool)

(assert (=> start!101660 (= tp!92079 b_and!43943)))

(declare-fun b!1221835 () Bool)

(declare-fun res!811831 () Bool)

(declare-fun e!693930 () Bool)

(assert (=> b!1221835 (=> (not res!811831) (not e!693930))))

(declare-datatypes ((array!78856 0))(
  ( (array!78857 (arr!38052 (Array (_ BitVec 32) (_ BitVec 64))) (size!38589 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78856)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78856 (_ BitVec 32)) Bool)

(assert (=> b!1221835 (= res!811831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1221836 () Bool)

(declare-fun e!693928 () Bool)

(declare-fun e!693935 () Bool)

(assert (=> b!1221836 (= e!693928 e!693935)))

(declare-fun res!811830 () Bool)

(assert (=> b!1221836 (=> res!811830 e!693935)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221836 (= res!811830 (not (validKeyInArray!0 (select (arr!38052 _keys!1208) from!1455))))))

(declare-datatypes ((V!46525 0))(
  ( (V!46526 (val!15581 Int)) )
))
(declare-datatypes ((tuple2!20202 0))(
  ( (tuple2!20203 (_1!10111 (_ BitVec 64)) (_2!10111 V!46525)) )
))
(declare-datatypes ((List!27018 0))(
  ( (Nil!27015) (Cons!27014 (h!28223 tuple2!20202) (t!40350 List!27018)) )
))
(declare-datatypes ((ListLongMap!18183 0))(
  ( (ListLongMap!18184 (toList!9107 List!27018)) )
))
(declare-fun lt!555782 () ListLongMap!18183)

(declare-fun lt!555784 () ListLongMap!18183)

(assert (=> b!1221836 (= lt!555782 lt!555784)))

(declare-fun lt!555781 () ListLongMap!18183)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1951 (ListLongMap!18183 (_ BitVec 64)) ListLongMap!18183)

(assert (=> b!1221836 (= lt!555784 (-!1951 lt!555781 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14815 0))(
  ( (ValueCellFull!14815 (v!18243 V!46525)) (EmptyCell!14815) )
))
(declare-datatypes ((array!78858 0))(
  ( (array!78859 (arr!38053 (Array (_ BitVec 32) ValueCell!14815)) (size!38590 (_ BitVec 32))) )
))
(declare-fun lt!555779 () array!78858)

(declare-fun minValue!944 () V!46525)

(declare-fun zeroValue!944 () V!46525)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!555789 () array!78856)

(declare-fun getCurrentListMapNoExtraKeys!5505 (array!78856 array!78858 (_ BitVec 32) (_ BitVec 32) V!46525 V!46525 (_ BitVec 32) Int) ListLongMap!18183)

(assert (=> b!1221836 (= lt!555782 (getCurrentListMapNoExtraKeys!5505 lt!555789 lt!555779 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78858)

(assert (=> b!1221836 (= lt!555781 (getCurrentListMapNoExtraKeys!5505 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40384 0))(
  ( (Unit!40385) )
))
(declare-fun lt!555787 () Unit!40384)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1153 (array!78856 array!78858 (_ BitVec 32) (_ BitVec 32) V!46525 V!46525 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40384)

(assert (=> b!1221836 (= lt!555787 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1153 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1221838 () Bool)

(declare-fun e!693938 () Bool)

(declare-fun e!693929 () Bool)

(declare-fun mapRes!48469 () Bool)

(assert (=> b!1221838 (= e!693938 (and e!693929 mapRes!48469))))

(declare-fun condMapEmpty!48469 () Bool)

(declare-fun mapDefault!48469 () ValueCell!14815)

