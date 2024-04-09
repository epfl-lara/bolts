; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96998 () Bool)

(assert start!96998)

(declare-fun b!1103058 () Bool)

(declare-fun e!629674 () Bool)

(declare-fun tp_is_empty!27281 () Bool)

(assert (=> b!1103058 (= e!629674 tp_is_empty!27281)))

(declare-fun res!736019 () Bool)

(declare-fun e!629672 () Bool)

(assert (=> start!96998 (=> (not res!736019) (not e!629672))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71436 0))(
  ( (array!71437 (arr!34374 (Array (_ BitVec 32) (_ BitVec 64))) (size!34911 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71436)

(assert (=> start!96998 (= res!736019 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34911 _keys!1208))))))

(assert (=> start!96998 e!629672))

(declare-fun array_inv!26328 (array!71436) Bool)

(assert (=> start!96998 (array_inv!26328 _keys!1208)))

(assert (=> start!96998 true))

(declare-datatypes ((V!41501 0))(
  ( (V!41502 (val!13697 Int)) )
))
(declare-datatypes ((ValueCell!12931 0))(
  ( (ValueCellFull!12931 (v!16329 V!41501)) (EmptyCell!12931) )
))
(declare-datatypes ((array!71438 0))(
  ( (array!71439 (arr!34375 (Array (_ BitVec 32) ValueCell!12931)) (size!34912 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71438)

(declare-fun e!629673 () Bool)

(declare-fun array_inv!26329 (array!71438) Bool)

(assert (=> start!96998 (and (array_inv!26329 _values!996) e!629673)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun b!1103059 () Bool)

(assert (=> b!1103059 (= e!629672 (and (= (size!34912 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34911 _keys!1208) (size!34912 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011) (= (size!34911 _keys!1208) (bvadd #b00000000000000000000000000000001 mask!1564)) (bvsgt #b00000000000000000000000000000000 (size!34911 _keys!1208))))))

(declare-fun mapIsEmpty!42718 () Bool)

(declare-fun mapRes!42718 () Bool)

(assert (=> mapIsEmpty!42718 mapRes!42718))

(declare-fun b!1103060 () Bool)

(declare-fun e!629676 () Bool)

(assert (=> b!1103060 (= e!629676 tp_is_empty!27281)))

(declare-fun b!1103061 () Bool)

(declare-fun res!736020 () Bool)

(assert (=> b!1103061 (=> (not res!736020) (not e!629672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103061 (= res!736020 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!42718 () Bool)

(declare-fun tp!81639 () Bool)

(assert (=> mapNonEmpty!42718 (= mapRes!42718 (and tp!81639 e!629676))))

(declare-fun mapRest!42718 () (Array (_ BitVec 32) ValueCell!12931))

(declare-fun mapValue!42718 () ValueCell!12931)

(declare-fun mapKey!42718 () (_ BitVec 32))

(assert (=> mapNonEmpty!42718 (= (arr!34375 _values!996) (store mapRest!42718 mapKey!42718 mapValue!42718))))

(declare-fun b!1103062 () Bool)

(assert (=> b!1103062 (= e!629673 (and e!629674 mapRes!42718))))

(declare-fun condMapEmpty!42718 () Bool)

(declare-fun mapDefault!42718 () ValueCell!12931)

