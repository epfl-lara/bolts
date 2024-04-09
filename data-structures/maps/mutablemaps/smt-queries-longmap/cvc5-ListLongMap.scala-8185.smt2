; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100012 () Bool)

(assert start!100012)

(declare-fun b_free!25555 () Bool)

(declare-fun b_next!25555 () Bool)

(assert (=> start!100012 (= b_free!25555 (not b_next!25555))))

(declare-fun tp!89379 () Bool)

(declare-fun b_and!41991 () Bool)

(assert (=> start!100012 (= tp!89379 b_and!41991)))

(declare-fun res!791973 () Bool)

(declare-fun e!676906 () Bool)

(assert (=> start!100012 (=> (not res!791973) (not e!676906))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76936 0))(
  ( (array!76937 (arr!37114 (Array (_ BitVec 32) (_ BitVec 64))) (size!37651 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76936)

(assert (=> start!100012 (= res!791973 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37651 _keys!1208))))))

(assert (=> start!100012 e!676906))

(declare-fun tp_is_empty!30085 () Bool)

(assert (=> start!100012 tp_is_empty!30085))

(declare-fun array_inv!28202 (array!76936) Bool)

(assert (=> start!100012 (array_inv!28202 _keys!1208)))

(assert (=> start!100012 true))

(assert (=> start!100012 tp!89379))

(declare-datatypes ((V!45241 0))(
  ( (V!45242 (val!15099 Int)) )
))
(declare-datatypes ((ValueCell!14333 0))(
  ( (ValueCellFull!14333 (v!17738 V!45241)) (EmptyCell!14333) )
))
(declare-datatypes ((array!76938 0))(
  ( (array!76939 (arr!37115 (Array (_ BitVec 32) ValueCell!14333)) (size!37652 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76938)

(declare-fun e!676903 () Bool)

(declare-fun array_inv!28203 (array!76938) Bool)

(assert (=> start!100012 (and (array_inv!28203 _values!996) e!676903)))

(declare-fun b!1190652 () Bool)

(declare-fun res!791979 () Bool)

(assert (=> b!1190652 (=> (not res!791979) (not e!676906))))

(declare-datatypes ((List!26300 0))(
  ( (Nil!26297) (Cons!26296 (h!27505 (_ BitVec 64)) (t!38854 List!26300)) )
))
(declare-fun arrayNoDuplicates!0 (array!76936 (_ BitVec 32) List!26300) Bool)

(assert (=> b!1190652 (= res!791979 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26297))))

(declare-fun mapNonEmpty!46955 () Bool)

(declare-fun mapRes!46955 () Bool)

(declare-fun tp!89380 () Bool)

(declare-fun e!676904 () Bool)

(assert (=> mapNonEmpty!46955 (= mapRes!46955 (and tp!89380 e!676904))))

(declare-fun mapKey!46955 () (_ BitVec 32))

(declare-fun mapValue!46955 () ValueCell!14333)

(declare-fun mapRest!46955 () (Array (_ BitVec 32) ValueCell!14333))

(assert (=> mapNonEmpty!46955 (= (arr!37115 _values!996) (store mapRest!46955 mapKey!46955 mapValue!46955))))

(declare-fun mapIsEmpty!46955 () Bool)

(assert (=> mapIsEmpty!46955 mapRes!46955))

(declare-fun b!1190653 () Bool)

(assert (=> b!1190653 (= e!676904 tp_is_empty!30085)))

(declare-fun b!1190654 () Bool)

(declare-fun e!676909 () Bool)

(assert (=> b!1190654 (= e!676906 e!676909)))

(declare-fun res!791980 () Bool)

(assert (=> b!1190654 (=> (not res!791980) (not e!676909))))

(declare-fun lt!541506 () array!76936)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76936 (_ BitVec 32)) Bool)

(assert (=> b!1190654 (= res!791980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541506 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190654 (= lt!541506 (array!76937 (store (arr!37114 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37651 _keys!1208)))))

(declare-fun b!1190655 () Bool)

(declare-fun res!791977 () Bool)

(assert (=> b!1190655 (=> (not res!791977) (not e!676906))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1190655 (= res!791977 (and (= (size!37652 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37651 _keys!1208) (size!37652 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190656 () Bool)

(declare-fun e!676908 () Bool)

(assert (=> b!1190656 (= e!676903 (and e!676908 mapRes!46955))))

(declare-fun condMapEmpty!46955 () Bool)

(declare-fun mapDefault!46955 () ValueCell!14333)

