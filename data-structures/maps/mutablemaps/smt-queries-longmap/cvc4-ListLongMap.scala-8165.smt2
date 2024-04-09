; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99896 () Bool)

(assert start!99896)

(declare-fun b_free!25439 () Bool)

(declare-fun b_next!25439 () Bool)

(assert (=> start!99896 (= b_free!25439 (not b_next!25439))))

(declare-fun tp!89031 () Bool)

(declare-fun b_and!41759 () Bool)

(assert (=> start!99896 (= tp!89031 b_and!41759)))

(declare-fun b!1187831 () Bool)

(declare-fun e!675445 () Bool)

(declare-fun e!675435 () Bool)

(assert (=> b!1187831 (= e!675445 e!675435)))

(declare-fun res!789827 () Bool)

(assert (=> b!1187831 (=> res!789827 e!675435)))

(declare-datatypes ((array!76706 0))(
  ( (array!76707 (arr!36999 (Array (_ BitVec 32) (_ BitVec 64))) (size!37536 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76706)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1187831 (= res!789827 (not (= (select (arr!36999 _keys!1208) from!1455) k!934)))))

(declare-fun b!1187832 () Bool)

(declare-fun res!789834 () Bool)

(declare-fun e!675443 () Bool)

(assert (=> b!1187832 (=> (not res!789834) (not e!675443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187832 (= res!789834 (validKeyInArray!0 k!934))))

(declare-fun b!1187833 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!76706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187833 (= e!675435 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187834 () Bool)

(declare-fun e!675436 () Bool)

(declare-fun e!675441 () Bool)

(assert (=> b!1187834 (= e!675436 e!675441)))

(declare-fun res!789826 () Bool)

(assert (=> b!1187834 (=> res!789826 e!675441)))

(assert (=> b!1187834 (= res!789826 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45085 0))(
  ( (V!45086 (val!15041 Int)) )
))
(declare-fun zeroValue!944 () V!45085)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14275 0))(
  ( (ValueCellFull!14275 (v!17680 V!45085)) (EmptyCell!14275) )
))
(declare-datatypes ((array!76708 0))(
  ( (array!76709 (arr!37000 (Array (_ BitVec 32) ValueCell!14275)) (size!37537 (_ BitVec 32))) )
))
(declare-fun lt!540226 () array!76708)

(declare-fun minValue!944 () V!45085)

(declare-fun lt!540220 () array!76706)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19438 0))(
  ( (tuple2!19439 (_1!9729 (_ BitVec 64)) (_2!9729 V!45085)) )
))
(declare-datatypes ((List!26198 0))(
  ( (Nil!26195) (Cons!26194 (h!27403 tuple2!19438) (t!38636 List!26198)) )
))
(declare-datatypes ((ListLongMap!17419 0))(
  ( (ListLongMap!17420 (toList!8725 List!26198)) )
))
(declare-fun lt!540211 () ListLongMap!17419)

(declare-fun getCurrentListMapNoExtraKeys!5140 (array!76706 array!76708 (_ BitVec 32) (_ BitVec 32) V!45085 V!45085 (_ BitVec 32) Int) ListLongMap!17419)

(assert (=> b!1187834 (= lt!540211 (getCurrentListMapNoExtraKeys!5140 lt!540220 lt!540226 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76708)

(declare-fun lt!540225 () V!45085)

(assert (=> b!1187834 (= lt!540226 (array!76709 (store (arr!37000 _values!996) i!673 (ValueCellFull!14275 lt!540225)) (size!37537 _values!996)))))

(declare-fun dynLambda!3097 (Int (_ BitVec 64)) V!45085)

(assert (=> b!1187834 (= lt!540225 (dynLambda!3097 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!540215 () ListLongMap!17419)

(assert (=> b!1187834 (= lt!540215 (getCurrentListMapNoExtraKeys!5140 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187836 () Bool)

(declare-fun e!675439 () Bool)

(assert (=> b!1187836 (= e!675443 e!675439)))

(declare-fun res!789829 () Bool)

(assert (=> b!1187836 (=> (not res!789829) (not e!675439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76706 (_ BitVec 32)) Bool)

(assert (=> b!1187836 (= res!789829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540220 mask!1564))))

(assert (=> b!1187836 (= lt!540220 (array!76707 (store (arr!36999 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37536 _keys!1208)))))

(declare-fun b!1187837 () Bool)

(declare-fun e!675440 () Bool)

(declare-fun tp_is_empty!29969 () Bool)

(assert (=> b!1187837 (= e!675440 tp_is_empty!29969)))

(declare-fun b!1187838 () Bool)

(declare-fun res!789833 () Bool)

(assert (=> b!1187838 (=> (not res!789833) (not e!675443))))

(assert (=> b!1187838 (= res!789833 (= (select (arr!36999 _keys!1208) i!673) k!934))))

(declare-fun b!1187839 () Bool)

(declare-fun e!675444 () Bool)

(assert (=> b!1187839 (= e!675444 tp_is_empty!29969)))

(declare-fun mapNonEmpty!46781 () Bool)

(declare-fun mapRes!46781 () Bool)

(declare-fun tp!89032 () Bool)

(assert (=> mapNonEmpty!46781 (= mapRes!46781 (and tp!89032 e!675440))))

(declare-fun mapRest!46781 () (Array (_ BitVec 32) ValueCell!14275))

(declare-fun mapValue!46781 () ValueCell!14275)

(declare-fun mapKey!46781 () (_ BitVec 32))

(assert (=> mapNonEmpty!46781 (= (arr!37000 _values!996) (store mapRest!46781 mapKey!46781 mapValue!46781))))

(declare-fun b!1187840 () Bool)

(declare-fun res!789828 () Bool)

(assert (=> b!1187840 (=> (not res!789828) (not e!675443))))

(declare-datatypes ((List!26199 0))(
  ( (Nil!26196) (Cons!26195 (h!27404 (_ BitVec 64)) (t!38637 List!26199)) )
))
(declare-fun arrayNoDuplicates!0 (array!76706 (_ BitVec 32) List!26199) Bool)

(assert (=> b!1187840 (= res!789828 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26196))))

(declare-fun b!1187841 () Bool)

(declare-fun res!789835 () Bool)

(assert (=> b!1187841 (=> (not res!789835) (not e!675443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187841 (= res!789835 (validMask!0 mask!1564))))

(declare-fun b!1187842 () Bool)

(declare-fun e!675437 () Bool)

(assert (=> b!1187842 (= e!675437 true)))

(declare-fun lt!540213 () ListLongMap!17419)

(declare-fun lt!540221 () ListLongMap!17419)

(declare-fun -!1710 (ListLongMap!17419 (_ BitVec 64)) ListLongMap!17419)

(assert (=> b!1187842 (= (-!1710 lt!540213 k!934) lt!540221)))

(declare-fun lt!540222 () V!45085)

(declare-datatypes ((Unit!39329 0))(
  ( (Unit!39330) )
))
(declare-fun lt!540227 () Unit!39329)

(declare-fun lt!540214 () ListLongMap!17419)

(declare-fun addRemoveCommutativeForDiffKeys!217 (ListLongMap!17419 (_ BitVec 64) V!45085 (_ BitVec 64)) Unit!39329)

(assert (=> b!1187842 (= lt!540227 (addRemoveCommutativeForDiffKeys!217 lt!540214 (select (arr!36999 _keys!1208) from!1455) lt!540222 k!934))))

(declare-fun lt!540218 () ListLongMap!17419)

(declare-fun lt!540212 () ListLongMap!17419)

(assert (=> b!1187842 (and (= lt!540215 lt!540213) (= lt!540218 lt!540212))))

(declare-fun lt!540210 () tuple2!19438)

(declare-fun +!3927 (ListLongMap!17419 tuple2!19438) ListLongMap!17419)

(assert (=> b!1187842 (= lt!540213 (+!3927 lt!540214 lt!540210))))

(assert (=> b!1187842 (not (= (select (arr!36999 _keys!1208) from!1455) k!934))))

(declare-fun lt!540217 () Unit!39329)

(declare-fun e!675442 () Unit!39329)

(assert (=> b!1187842 (= lt!540217 e!675442)))

(declare-fun c!117230 () Bool)

(assert (=> b!1187842 (= c!117230 (= (select (arr!36999 _keys!1208) from!1455) k!934))))

(assert (=> b!1187842 e!675445))

(declare-fun res!789831 () Bool)

(assert (=> b!1187842 (=> (not res!789831) (not e!675445))))

(assert (=> b!1187842 (= res!789831 (= lt!540211 lt!540221))))

(assert (=> b!1187842 (= lt!540221 (+!3927 lt!540218 lt!540210))))

(assert (=> b!1187842 (= lt!540210 (tuple2!19439 (select (arr!36999 _keys!1208) from!1455) lt!540222))))

(declare-fun get!18995 (ValueCell!14275 V!45085) V!45085)

(assert (=> b!1187842 (= lt!540222 (get!18995 (select (arr!37000 _values!996) from!1455) lt!540225))))

(declare-fun b!1187843 () Bool)

(declare-fun res!789825 () Bool)

(assert (=> b!1187843 (=> (not res!789825) (not e!675443))))

(assert (=> b!1187843 (= res!789825 (and (= (size!37537 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37536 _keys!1208) (size!37537 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!46781 () Bool)

(assert (=> mapIsEmpty!46781 mapRes!46781))

(declare-fun b!1187844 () Bool)

(declare-fun Unit!39331 () Unit!39329)

(assert (=> b!1187844 (= e!675442 Unit!39331)))

(declare-fun b!1187845 () Bool)

(declare-fun e!675434 () Bool)

(assert (=> b!1187845 (= e!675434 (and e!675444 mapRes!46781))))

(declare-fun condMapEmpty!46781 () Bool)

(declare-fun mapDefault!46781 () ValueCell!14275)

