; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97728 () Bool)

(assert start!97728)

(declare-fun b!1116706 () Bool)

(declare-fun res!745730 () Bool)

(declare-fun e!636253 () Bool)

(assert (=> b!1116706 (=> (not res!745730) (not e!636253))))

(declare-datatypes ((array!72684 0))(
  ( (array!72685 (arr!34991 (Array (_ BitVec 32) (_ BitVec 64))) (size!35528 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72684)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1116706 (= res!745730 (= (select (arr!34991 _keys!1208) i!673) k!934))))

(declare-fun b!1116707 () Bool)

(declare-fun res!745728 () Bool)

(assert (=> b!1116707 (=> (not res!745728) (not e!636253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116707 (= res!745728 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43702 () Bool)

(declare-fun mapRes!43702 () Bool)

(declare-fun tp!82947 () Bool)

(declare-fun e!636255 () Bool)

(assert (=> mapNonEmpty!43702 (= mapRes!43702 (and tp!82947 e!636255))))

(declare-fun mapKey!43702 () (_ BitVec 32))

(declare-datatypes ((V!42357 0))(
  ( (V!42358 (val!14018 Int)) )
))
(declare-datatypes ((ValueCell!13252 0))(
  ( (ValueCellFull!13252 (v!16652 V!42357)) (EmptyCell!13252) )
))
(declare-fun mapRest!43702 () (Array (_ BitVec 32) ValueCell!13252))

(declare-fun mapValue!43702 () ValueCell!13252)

(declare-datatypes ((array!72686 0))(
  ( (array!72687 (arr!34992 (Array (_ BitVec 32) ValueCell!13252)) (size!35529 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72686)

(assert (=> mapNonEmpty!43702 (= (arr!34992 _values!996) (store mapRest!43702 mapKey!43702 mapValue!43702))))

(declare-fun b!1116708 () Bool)

(declare-fun res!745731 () Bool)

(assert (=> b!1116708 (=> (not res!745731) (not e!636253))))

(declare-datatypes ((List!24480 0))(
  ( (Nil!24477) (Cons!24476 (h!25685 (_ BitVec 64)) (t!34968 List!24480)) )
))
(declare-fun arrayNoDuplicates!0 (array!72684 (_ BitVec 32) List!24480) Bool)

(assert (=> b!1116708 (= res!745731 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24477))))

(declare-fun b!1116709 () Bool)

(declare-fun res!745726 () Bool)

(assert (=> b!1116709 (=> (not res!745726) (not e!636253))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1116709 (= res!745726 (and (= (size!35529 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35528 _keys!1208) (size!35529 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116710 () Bool)

(declare-fun e!636257 () Bool)

(assert (=> b!1116710 (= e!636257 (not true))))

(declare-fun arrayContainsKey!0 (array!72684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116710 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36555 0))(
  ( (Unit!36556) )
))
(declare-fun lt!497157 () Unit!36555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72684 (_ BitVec 64) (_ BitVec 32)) Unit!36555)

(assert (=> b!1116710 (= lt!497157 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116711 () Bool)

(declare-fun e!636252 () Bool)

(declare-fun tp_is_empty!27923 () Bool)

(assert (=> b!1116711 (= e!636252 tp_is_empty!27923)))

(declare-fun b!1116712 () Bool)

(assert (=> b!1116712 (= e!636253 e!636257)))

(declare-fun res!745723 () Bool)

(assert (=> b!1116712 (=> (not res!745723) (not e!636257))))

(declare-fun lt!497156 () array!72684)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72684 (_ BitVec 32)) Bool)

(assert (=> b!1116712 (= res!745723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497156 mask!1564))))

(assert (=> b!1116712 (= lt!497156 (array!72685 (store (arr!34991 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35528 _keys!1208)))))

(declare-fun res!745722 () Bool)

(assert (=> start!97728 (=> (not res!745722) (not e!636253))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97728 (= res!745722 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35528 _keys!1208))))))

(assert (=> start!97728 e!636253))

(declare-fun array_inv!26754 (array!72684) Bool)

(assert (=> start!97728 (array_inv!26754 _keys!1208)))

(assert (=> start!97728 true))

(declare-fun e!636254 () Bool)

(declare-fun array_inv!26755 (array!72686) Bool)

(assert (=> start!97728 (and (array_inv!26755 _values!996) e!636254)))

(declare-fun b!1116713 () Bool)

(declare-fun res!745725 () Bool)

(assert (=> b!1116713 (=> (not res!745725) (not e!636253))))

(assert (=> b!1116713 (= res!745725 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35528 _keys!1208))))))

(declare-fun b!1116714 () Bool)

(declare-fun res!745729 () Bool)

(assert (=> b!1116714 (=> (not res!745729) (not e!636257))))

(assert (=> b!1116714 (= res!745729 (arrayNoDuplicates!0 lt!497156 #b00000000000000000000000000000000 Nil!24477))))

(declare-fun b!1116715 () Bool)

(declare-fun res!745727 () Bool)

(assert (=> b!1116715 (=> (not res!745727) (not e!636253))))

(assert (=> b!1116715 (= res!745727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116716 () Bool)

(assert (=> b!1116716 (= e!636255 tp_is_empty!27923)))

(declare-fun mapIsEmpty!43702 () Bool)

(assert (=> mapIsEmpty!43702 mapRes!43702))

(declare-fun b!1116717 () Bool)

(declare-fun res!745724 () Bool)

(assert (=> b!1116717 (=> (not res!745724) (not e!636253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116717 (= res!745724 (validMask!0 mask!1564))))

(declare-fun b!1116718 () Bool)

(assert (=> b!1116718 (= e!636254 (and e!636252 mapRes!43702))))

(declare-fun condMapEmpty!43702 () Bool)

(declare-fun mapDefault!43702 () ValueCell!13252)

