; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97784 () Bool)

(assert start!97784)

(declare-fun b_free!23449 () Bool)

(declare-fun b_next!23449 () Bool)

(assert (=> start!97784 (= b_free!23449 (not b_next!23449))))

(declare-fun tp!83051 () Bool)

(declare-fun b_and!37745 () Bool)

(assert (=> start!97784 (= tp!83051 b_and!37745)))

(declare-fun b!1117818 () Bool)

(declare-fun res!746590 () Bool)

(declare-fun e!636780 () Bool)

(assert (=> b!1117818 (=> (not res!746590) (not e!636780))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117818 (= res!746590 (validMask!0 mask!1564))))

(declare-fun b!1117819 () Bool)

(declare-fun e!636777 () Bool)

(assert (=> b!1117819 (= e!636777 true)))

(declare-datatypes ((V!42433 0))(
  ( (V!42434 (val!14046 Int)) )
))
(declare-fun zeroValue!944 () V!42433)

(declare-datatypes ((tuple2!17670 0))(
  ( (tuple2!17671 (_1!8845 (_ BitVec 64)) (_2!8845 V!42433)) )
))
(declare-datatypes ((List!24505 0))(
  ( (Nil!24502) (Cons!24501 (h!25710 tuple2!17670) (t!34993 List!24505)) )
))
(declare-datatypes ((ListLongMap!15651 0))(
  ( (ListLongMap!15652 (toList!7841 List!24505)) )
))
(declare-fun lt!497346 () ListLongMap!15651)

(declare-datatypes ((array!72790 0))(
  ( (array!72791 (arr!35044 (Array (_ BitVec 32) (_ BitVec 64))) (size!35581 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72790)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13280 0))(
  ( (ValueCellFull!13280 (v!16680 V!42433)) (EmptyCell!13280) )
))
(declare-datatypes ((array!72792 0))(
  ( (array!72793 (arr!35045 (Array (_ BitVec 32) ValueCell!13280)) (size!35582 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72792)

(declare-fun minValue!944 () V!42433)

(declare-fun getCurrentListMapNoExtraKeys!4302 (array!72790 array!72792 (_ BitVec 32) (_ BitVec 32) V!42433 V!42433 (_ BitVec 32) Int) ListLongMap!15651)

(assert (=> b!1117819 (= lt!497346 (getCurrentListMapNoExtraKeys!4302 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117820 () Bool)

(declare-fun res!746585 () Bool)

(assert (=> b!1117820 (=> (not res!746585) (not e!636780))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117820 (= res!746585 (validKeyInArray!0 k!934))))

(declare-fun b!1117822 () Bool)

(declare-fun e!636778 () Bool)

(assert (=> b!1117822 (= e!636778 (not e!636777))))

(declare-fun res!746589 () Bool)

(assert (=> b!1117822 (=> res!746589 e!636777)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117822 (= res!746589 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117822 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36597 0))(
  ( (Unit!36598) )
))
(declare-fun lt!497344 () Unit!36597)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72790 (_ BitVec 64) (_ BitVec 32)) Unit!36597)

(assert (=> b!1117822 (= lt!497344 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!43786 () Bool)

(declare-fun mapRes!43786 () Bool)

(assert (=> mapIsEmpty!43786 mapRes!43786))

(declare-fun mapNonEmpty!43786 () Bool)

(declare-fun tp!83052 () Bool)

(declare-fun e!636779 () Bool)

(assert (=> mapNonEmpty!43786 (= mapRes!43786 (and tp!83052 e!636779))))

(declare-fun mapKey!43786 () (_ BitVec 32))

(declare-fun mapRest!43786 () (Array (_ BitVec 32) ValueCell!13280))

(declare-fun mapValue!43786 () ValueCell!13280)

(assert (=> mapNonEmpty!43786 (= (arr!35045 _values!996) (store mapRest!43786 mapKey!43786 mapValue!43786))))

(declare-fun b!1117823 () Bool)

(declare-fun tp_is_empty!27979 () Bool)

(assert (=> b!1117823 (= e!636779 tp_is_empty!27979)))

(declare-fun b!1117824 () Bool)

(declare-fun res!746592 () Bool)

(assert (=> b!1117824 (=> (not res!746592) (not e!636780))))

(assert (=> b!1117824 (= res!746592 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35581 _keys!1208))))))

(declare-fun b!1117825 () Bool)

(declare-fun res!746587 () Bool)

(assert (=> b!1117825 (=> (not res!746587) (not e!636780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72790 (_ BitVec 32)) Bool)

(assert (=> b!1117825 (= res!746587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117821 () Bool)

(declare-fun res!746583 () Bool)

(assert (=> b!1117821 (=> (not res!746583) (not e!636780))))

(assert (=> b!1117821 (= res!746583 (= (select (arr!35044 _keys!1208) i!673) k!934))))

(declare-fun res!746582 () Bool)

(assert (=> start!97784 (=> (not res!746582) (not e!636780))))

(assert (=> start!97784 (= res!746582 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35581 _keys!1208))))))

(assert (=> start!97784 e!636780))

(assert (=> start!97784 tp_is_empty!27979))

(declare-fun array_inv!26790 (array!72790) Bool)

(assert (=> start!97784 (array_inv!26790 _keys!1208)))

(assert (=> start!97784 true))

(assert (=> start!97784 tp!83051))

(declare-fun e!636776 () Bool)

(declare-fun array_inv!26791 (array!72792) Bool)

(assert (=> start!97784 (and (array_inv!26791 _values!996) e!636776)))

(declare-fun b!1117826 () Bool)

(declare-fun e!636782 () Bool)

(assert (=> b!1117826 (= e!636782 tp_is_empty!27979)))

(declare-fun b!1117827 () Bool)

(assert (=> b!1117827 (= e!636776 (and e!636782 mapRes!43786))))

(declare-fun condMapEmpty!43786 () Bool)

(declare-fun mapDefault!43786 () ValueCell!13280)

