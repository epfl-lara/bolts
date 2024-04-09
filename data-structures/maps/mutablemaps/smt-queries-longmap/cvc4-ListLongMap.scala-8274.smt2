; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100754 () Bool)

(assert start!100754)

(declare-fun b_free!25919 () Bool)

(declare-fun b_next!25919 () Bool)

(assert (=> start!100754 (= b_free!25919 (not b_next!25919))))

(declare-fun tp!90758 () Bool)

(declare-fun b_and!42817 () Bool)

(assert (=> start!100754 (= tp!90758 b_and!42817)))

(declare-fun b!1204864 () Bool)

(declare-fun res!801588 () Bool)

(declare-fun e!684270 () Bool)

(assert (=> b!1204864 (=> (not res!801588) (not e!684270))))

(declare-datatypes ((array!78002 0))(
  ( (array!78003 (arr!37639 (Array (_ BitVec 32) (_ BitVec 64))) (size!38176 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78002)

(declare-datatypes ((List!26671 0))(
  ( (Nil!26668) (Cons!26667 (h!27876 (_ BitVec 64)) (t!39577 List!26671)) )
))
(declare-fun arrayNoDuplicates!0 (array!78002 (_ BitVec 32) List!26671) Bool)

(assert (=> b!1204864 (= res!801588 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26668))))

(declare-fun b!1204865 () Bool)

(declare-datatypes ((Unit!39873 0))(
  ( (Unit!39874) )
))
(declare-fun e!684259 () Unit!39873)

(declare-fun lt!546401 () Unit!39873)

(assert (=> b!1204865 (= e!684259 lt!546401)))

(declare-fun call!58342 () Unit!39873)

(assert (=> b!1204865 (= lt!546401 call!58342)))

(declare-fun call!58341 () Bool)

(assert (=> b!1204865 call!58341))

(declare-fun mapNonEmpty!47787 () Bool)

(declare-fun mapRes!47787 () Bool)

(declare-fun tp!90757 () Bool)

(declare-fun e!684256 () Bool)

(assert (=> mapNonEmpty!47787 (= mapRes!47787 (and tp!90757 e!684256))))

(declare-fun mapKey!47787 () (_ BitVec 32))

(declare-datatypes ((V!45957 0))(
  ( (V!45958 (val!15368 Int)) )
))
(declare-datatypes ((ValueCell!14602 0))(
  ( (ValueCellFull!14602 (v!18012 V!45957)) (EmptyCell!14602) )
))
(declare-datatypes ((array!78004 0))(
  ( (array!78005 (arr!37640 (Array (_ BitVec 32) ValueCell!14602)) (size!38177 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78004)

(declare-fun mapRest!47787 () (Array (_ BitVec 32) ValueCell!14602))

(declare-fun mapValue!47787 () ValueCell!14602)

(assert (=> mapNonEmpty!47787 (= (arr!37640 _values!996) (store mapRest!47787 mapKey!47787 mapValue!47787))))

(declare-fun b!1204866 () Bool)

(declare-fun res!801595 () Bool)

(assert (=> b!1204866 (=> (not res!801595) (not e!684270))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1204866 (= res!801595 (validMask!0 mask!1564))))

(declare-fun b!1204868 () Bool)

(declare-fun e!684267 () Bool)

(assert (=> b!1204868 (= e!684267 (bvslt (size!38176 _keys!1208) #b01111111111111111111111111111111))))

(declare-fun e!684257 () Bool)

(assert (=> b!1204868 e!684257))

(declare-fun res!801587 () Bool)

(assert (=> b!1204868 (=> (not res!801587) (not e!684257))))

(declare-fun e!684269 () Bool)

(assert (=> b!1204868 (= res!801587 e!684269)))

(declare-fun c!118129 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1204868 (= c!118129 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!45957)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45957)

(declare-fun lt!546404 () Unit!39873)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!566 (array!78002 array!78004 (_ BitVec 32) (_ BitVec 32) V!45957 V!45957 (_ BitVec 64) (_ BitVec 32) Int) Unit!39873)

(assert (=> b!1204868 (= lt!546404 (lemmaListMapContainsThenArrayContainsFrom!566 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546414 () Unit!39873)

(declare-fun e!684265 () Unit!39873)

(assert (=> b!1204868 (= lt!546414 e!684265)))

(declare-fun c!118127 () Bool)

(declare-fun lt!546410 () Bool)

(assert (=> b!1204868 (= c!118127 (and (not lt!546410) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1204868 (= lt!546410 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1204869 () Bool)

(declare-fun e!684260 () Bool)

(declare-fun e!684266 () Bool)

(assert (=> b!1204869 (= e!684260 (and e!684266 mapRes!47787))))

(declare-fun condMapEmpty!47787 () Bool)

(declare-fun mapDefault!47787 () ValueCell!14602)

