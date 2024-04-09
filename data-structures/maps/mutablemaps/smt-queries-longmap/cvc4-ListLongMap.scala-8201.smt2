; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100112 () Bool)

(assert start!100112)

(declare-fun b_free!25655 () Bool)

(declare-fun b_next!25655 () Bool)

(assert (=> start!100112 (= b_free!25655 (not b_next!25655))))

(declare-fun tp!89679 () Bool)

(declare-fun b_and!42191 () Bool)

(assert (=> start!100112 (= tp!89679 b_and!42191)))

(declare-fun b!1193002 () Bool)

(declare-fun res!793779 () Bool)

(declare-fun e!678106 () Bool)

(assert (=> b!1193002 (=> (not res!793779) (not e!678106))))

(declare-datatypes ((array!77134 0))(
  ( (array!77135 (arr!37213 (Array (_ BitVec 32) (_ BitVec 64))) (size!37750 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77134)

(declare-datatypes ((List!26380 0))(
  ( (Nil!26377) (Cons!26376 (h!27585 (_ BitVec 64)) (t!39034 List!26380)) )
))
(declare-fun arrayNoDuplicates!0 (array!77134 (_ BitVec 32) List!26380) Bool)

(assert (=> b!1193002 (= res!793779 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26377))))

(declare-fun b!1193003 () Bool)

(declare-fun e!678108 () Bool)

(assert (=> b!1193003 (= e!678108 true)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!45373 0))(
  ( (V!45374 (val!15149 Int)) )
))
(declare-fun minValue!944 () V!45373)

(declare-datatypes ((ValueCell!14383 0))(
  ( (ValueCellFull!14383 (v!17788 V!45373)) (EmptyCell!14383) )
))
(declare-datatypes ((array!77136 0))(
  ( (array!77137 (arr!37214 (Array (_ BitVec 32) ValueCell!14383)) (size!37751 (_ BitVec 32))) )
))
(declare-fun lt!542403 () array!77136)

(declare-fun zeroValue!944 () V!45373)

(declare-fun _values!996 () array!77136)

(declare-fun lt!542406 () array!77134)

(declare-datatypes ((tuple2!19622 0))(
  ( (tuple2!19623 (_1!9821 (_ BitVec 64)) (_2!9821 V!45373)) )
))
(declare-datatypes ((List!26381 0))(
  ( (Nil!26378) (Cons!26377 (h!27586 tuple2!19622) (t!39035 List!26381)) )
))
(declare-datatypes ((ListLongMap!17603 0))(
  ( (ListLongMap!17604 (toList!8817 List!26381)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5231 (array!77134 array!77136 (_ BitVec 32) (_ BitVec 32) V!45373 V!45373 (_ BitVec 32) Int) ListLongMap!17603)

(declare-fun -!1791 (ListLongMap!17603 (_ BitVec 64)) ListLongMap!17603)

(assert (=> b!1193003 (= (getCurrentListMapNoExtraKeys!5231 lt!542406 lt!542403 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1791 (getCurrentListMapNoExtraKeys!5231 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39518 0))(
  ( (Unit!39519) )
))
(declare-fun lt!542402 () Unit!39518)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!997 (array!77134 array!77136 (_ BitVec 32) (_ BitVec 32) V!45373 V!45373 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39518)

(assert (=> b!1193003 (= lt!542402 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!997 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193004 () Bool)

(declare-fun e!678107 () Bool)

(assert (=> b!1193004 (= e!678107 e!678108)))

(declare-fun res!793778 () Bool)

(assert (=> b!1193004 (=> res!793778 e!678108)))

(assert (=> b!1193004 (= res!793778 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542401 () ListLongMap!17603)

(assert (=> b!1193004 (= lt!542401 (getCurrentListMapNoExtraKeys!5231 lt!542406 lt!542403 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3170 (Int (_ BitVec 64)) V!45373)

(assert (=> b!1193004 (= lt!542403 (array!77137 (store (arr!37214 _values!996) i!673 (ValueCellFull!14383 (dynLambda!3170 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37751 _values!996)))))

(declare-fun lt!542404 () ListLongMap!17603)

(assert (=> b!1193004 (= lt!542404 (getCurrentListMapNoExtraKeys!5231 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1193005 () Bool)

(declare-fun e!678105 () Bool)

(declare-fun tp_is_empty!30185 () Bool)

(assert (=> b!1193005 (= e!678105 tp_is_empty!30185)))

(declare-fun b!1193006 () Bool)

(declare-fun res!793771 () Bool)

(assert (=> b!1193006 (=> (not res!793771) (not e!678106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77134 (_ BitVec 32)) Bool)

(assert (=> b!1193006 (= res!793771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193007 () Bool)

(declare-fun res!793773 () Bool)

(assert (=> b!1193007 (=> (not res!793773) (not e!678106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193007 (= res!793773 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47105 () Bool)

(declare-fun mapRes!47105 () Bool)

(assert (=> mapIsEmpty!47105 mapRes!47105))

(declare-fun b!1193008 () Bool)

(declare-fun res!793776 () Bool)

(assert (=> b!1193008 (=> (not res!793776) (not e!678106))))

(assert (=> b!1193008 (= res!793776 (and (= (size!37751 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37750 _keys!1208) (size!37751 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!793772 () Bool)

(assert (=> start!100112 (=> (not res!793772) (not e!678106))))

(assert (=> start!100112 (= res!793772 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37750 _keys!1208))))))

(assert (=> start!100112 e!678106))

(assert (=> start!100112 tp_is_empty!30185))

(declare-fun array_inv!28270 (array!77134) Bool)

(assert (=> start!100112 (array_inv!28270 _keys!1208)))

(assert (=> start!100112 true))

(assert (=> start!100112 tp!89679))

(declare-fun e!678104 () Bool)

(declare-fun array_inv!28271 (array!77136) Bool)

(assert (=> start!100112 (and (array_inv!28271 _values!996) e!678104)))

(declare-fun b!1193009 () Bool)

(declare-fun res!793775 () Bool)

(declare-fun e!678109 () Bool)

(assert (=> b!1193009 (=> (not res!793775) (not e!678109))))

(assert (=> b!1193009 (= res!793775 (arrayNoDuplicates!0 lt!542406 #b00000000000000000000000000000000 Nil!26377))))

(declare-fun b!1193010 () Bool)

(assert (=> b!1193010 (= e!678104 (and e!678105 mapRes!47105))))

(declare-fun condMapEmpty!47105 () Bool)

(declare-fun mapDefault!47105 () ValueCell!14383)

