; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97886 () Bool)

(assert start!97886)

(declare-fun b_free!23551 () Bool)

(declare-fun b_next!23551 () Bool)

(assert (=> start!97886 (= b_free!23551 (not b_next!23551))))

(declare-fun tp!83357 () Bool)

(declare-fun b_and!37907 () Bool)

(assert (=> start!97886 (= tp!83357 b_and!37907)))

(declare-fun res!748270 () Bool)

(declare-fun e!637850 () Bool)

(assert (=> start!97886 (=> (not res!748270) (not e!637850))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72988 0))(
  ( (array!72989 (arr!35143 (Array (_ BitVec 32) (_ BitVec 64))) (size!35680 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72988)

(assert (=> start!97886 (= res!748270 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35680 _keys!1208))))))

(assert (=> start!97886 e!637850))

(declare-fun tp_is_empty!28081 () Bool)

(assert (=> start!97886 tp_is_empty!28081))

(declare-fun array_inv!26860 (array!72988) Bool)

(assert (=> start!97886 (array_inv!26860 _keys!1208)))

(assert (=> start!97886 true))

(assert (=> start!97886 tp!83357))

(declare-datatypes ((V!42569 0))(
  ( (V!42570 (val!14097 Int)) )
))
(declare-datatypes ((ValueCell!13331 0))(
  ( (ValueCellFull!13331 (v!16731 V!42569)) (EmptyCell!13331) )
))
(declare-datatypes ((array!72990 0))(
  ( (array!72991 (arr!35144 (Array (_ BitVec 32) ValueCell!13331)) (size!35681 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72990)

(declare-fun e!637851 () Bool)

(declare-fun array_inv!26861 (array!72990) Bool)

(assert (=> start!97886 (and (array_inv!26861 _values!996) e!637851)))

(declare-fun b!1120020 () Bool)

(declare-fun res!748265 () Bool)

(assert (=> b!1120020 (=> (not res!748265) (not e!637850))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1120020 (= res!748265 (= (select (arr!35143 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43939 () Bool)

(declare-fun mapRes!43939 () Bool)

(declare-fun tp!83358 () Bool)

(declare-fun e!637853 () Bool)

(assert (=> mapNonEmpty!43939 (= mapRes!43939 (and tp!83358 e!637853))))

(declare-fun mapKey!43939 () (_ BitVec 32))

(declare-fun mapRest!43939 () (Array (_ BitVec 32) ValueCell!13331))

(declare-fun mapValue!43939 () ValueCell!13331)

(assert (=> mapNonEmpty!43939 (= (arr!35144 _values!996) (store mapRest!43939 mapKey!43939 mapValue!43939))))

(declare-fun b!1120021 () Bool)

(declare-fun e!637848 () Bool)

(assert (=> b!1120021 (= e!637851 (and e!637848 mapRes!43939))))

(declare-fun condMapEmpty!43939 () Bool)

(declare-fun mapDefault!43939 () ValueCell!13331)

