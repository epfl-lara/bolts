; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97222 () Bool)

(assert start!97222)

(declare-fun b!1105591 () Bool)

(declare-fun e!631023 () Bool)

(declare-fun e!631021 () Bool)

(declare-fun mapRes!42943 () Bool)

(assert (=> b!1105591 (= e!631023 (and e!631021 mapRes!42943))))

(declare-fun condMapEmpty!42943 () Bool)

(declare-datatypes ((V!41683 0))(
  ( (V!41684 (val!13765 Int)) )
))
(declare-datatypes ((ValueCell!12999 0))(
  ( (ValueCellFull!12999 (v!16399 V!41683)) (EmptyCell!12999) )
))
(declare-datatypes ((array!71706 0))(
  ( (array!71707 (arr!34502 (Array (_ BitVec 32) ValueCell!12999)) (size!35039 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71706)

(declare-fun mapDefault!42943 () ValueCell!12999)

(assert (=> b!1105591 (= condMapEmpty!42943 (= (arr!34502 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12999)) mapDefault!42943)))))

(declare-fun b!1105592 () Bool)

(declare-fun res!737816 () Bool)

(declare-fun e!631022 () Bool)

(assert (=> b!1105592 (=> (not res!737816) (not e!631022))))

(declare-datatypes ((array!71708 0))(
  ( (array!71709 (arr!34503 (Array (_ BitVec 32) (_ BitVec 64))) (size!35040 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71708)

(declare-datatypes ((List!24197 0))(
  ( (Nil!24194) (Cons!24193 (h!25402 (_ BitVec 64)) (t!34469 List!24197)) )
))
(declare-fun arrayNoDuplicates!0 (array!71708 (_ BitVec 32) List!24197) Bool)

(assert (=> b!1105592 (= res!737816 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24194))))

(declare-fun b!1105593 () Bool)

(declare-fun e!631024 () Bool)

(assert (=> b!1105593 (= e!631022 e!631024)))

(declare-fun res!737817 () Bool)

(assert (=> b!1105593 (=> (not res!737817) (not e!631024))))

(declare-fun lt!495315 () array!71708)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71708 (_ BitVec 32)) Bool)

(assert (=> b!1105593 (= res!737817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495315 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105593 (= lt!495315 (array!71709 (store (arr!34503 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35040 _keys!1208)))))

(declare-fun b!1105594 () Bool)

(assert (=> b!1105594 (= e!631024 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105594 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36215 0))(
  ( (Unit!36216) )
))
(declare-fun lt!495314 () Unit!36215)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71708 (_ BitVec 64) (_ BitVec 32)) Unit!36215)

(assert (=> b!1105594 (= lt!495314 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1105595 () Bool)

(declare-fun res!737810 () Bool)

(assert (=> b!1105595 (=> (not res!737810) (not e!631022))))

(assert (=> b!1105595 (= res!737810 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35040 _keys!1208))))))

(declare-fun b!1105596 () Bool)

(declare-fun res!737815 () Bool)

(assert (=> b!1105596 (=> (not res!737815) (not e!631022))))

(assert (=> b!1105596 (= res!737815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!42943 () Bool)

(declare-fun tp!81864 () Bool)

(declare-fun e!631025 () Bool)

(assert (=> mapNonEmpty!42943 (= mapRes!42943 (and tp!81864 e!631025))))

(declare-fun mapValue!42943 () ValueCell!12999)

(declare-fun mapKey!42943 () (_ BitVec 32))

(declare-fun mapRest!42943 () (Array (_ BitVec 32) ValueCell!12999))

(assert (=> mapNonEmpty!42943 (= (arr!34502 _values!996) (store mapRest!42943 mapKey!42943 mapValue!42943))))

(declare-fun b!1105597 () Bool)

(declare-fun tp_is_empty!27417 () Bool)

(assert (=> b!1105597 (= e!631021 tp_is_empty!27417)))

(declare-fun mapIsEmpty!42943 () Bool)

(assert (=> mapIsEmpty!42943 mapRes!42943))

(declare-fun b!1105599 () Bool)

(assert (=> b!1105599 (= e!631025 tp_is_empty!27417)))

(declare-fun b!1105600 () Bool)

(declare-fun res!737814 () Bool)

(assert (=> b!1105600 (=> (not res!737814) (not e!631022))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1105600 (= res!737814 (and (= (size!35039 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35040 _keys!1208) (size!35039 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105601 () Bool)

(declare-fun res!737812 () Bool)

(assert (=> b!1105601 (=> (not res!737812) (not e!631024))))

(assert (=> b!1105601 (= res!737812 (arrayNoDuplicates!0 lt!495315 #b00000000000000000000000000000000 Nil!24194))))

(declare-fun b!1105602 () Bool)

(declare-fun res!737808 () Bool)

(assert (=> b!1105602 (=> (not res!737808) (not e!631022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105602 (= res!737808 (validMask!0 mask!1564))))

(declare-fun b!1105603 () Bool)

(declare-fun res!737811 () Bool)

(assert (=> b!1105603 (=> (not res!737811) (not e!631022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105603 (= res!737811 (validKeyInArray!0 k0!934))))

(declare-fun res!737813 () Bool)

(assert (=> start!97222 (=> (not res!737813) (not e!631022))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97222 (= res!737813 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35040 _keys!1208))))))

(assert (=> start!97222 e!631022))

(declare-fun array_inv!26414 (array!71708) Bool)

(assert (=> start!97222 (array_inv!26414 _keys!1208)))

(assert (=> start!97222 true))

(declare-fun array_inv!26415 (array!71706) Bool)

(assert (=> start!97222 (and (array_inv!26415 _values!996) e!631023)))

(declare-fun b!1105598 () Bool)

(declare-fun res!737809 () Bool)

(assert (=> b!1105598 (=> (not res!737809) (not e!631022))))

(assert (=> b!1105598 (= res!737809 (= (select (arr!34503 _keys!1208) i!673) k0!934))))

(assert (= (and start!97222 res!737813) b!1105602))

(assert (= (and b!1105602 res!737808) b!1105600))

(assert (= (and b!1105600 res!737814) b!1105596))

(assert (= (and b!1105596 res!737815) b!1105592))

(assert (= (and b!1105592 res!737816) b!1105595))

(assert (= (and b!1105595 res!737810) b!1105603))

(assert (= (and b!1105603 res!737811) b!1105598))

(assert (= (and b!1105598 res!737809) b!1105593))

(assert (= (and b!1105593 res!737817) b!1105601))

(assert (= (and b!1105601 res!737812) b!1105594))

(assert (= (and b!1105591 condMapEmpty!42943) mapIsEmpty!42943))

(assert (= (and b!1105591 (not condMapEmpty!42943)) mapNonEmpty!42943))

(get-info :version)

(assert (= (and mapNonEmpty!42943 ((_ is ValueCellFull!12999) mapValue!42943)) b!1105599))

(assert (= (and b!1105591 ((_ is ValueCellFull!12999) mapDefault!42943)) b!1105597))

(assert (= start!97222 b!1105591))

(declare-fun m!1025055 () Bool)

(assert (=> b!1105598 m!1025055))

(declare-fun m!1025057 () Bool)

(assert (=> b!1105601 m!1025057))

(declare-fun m!1025059 () Bool)

(assert (=> b!1105602 m!1025059))

(declare-fun m!1025061 () Bool)

(assert (=> b!1105603 m!1025061))

(declare-fun m!1025063 () Bool)

(assert (=> b!1105596 m!1025063))

(declare-fun m!1025065 () Bool)

(assert (=> b!1105593 m!1025065))

(declare-fun m!1025067 () Bool)

(assert (=> b!1105593 m!1025067))

(declare-fun m!1025069 () Bool)

(assert (=> b!1105592 m!1025069))

(declare-fun m!1025071 () Bool)

(assert (=> start!97222 m!1025071))

(declare-fun m!1025073 () Bool)

(assert (=> start!97222 m!1025073))

(declare-fun m!1025075 () Bool)

(assert (=> mapNonEmpty!42943 m!1025075))

(declare-fun m!1025077 () Bool)

(assert (=> b!1105594 m!1025077))

(declare-fun m!1025079 () Bool)

(assert (=> b!1105594 m!1025079))

(check-sat tp_is_empty!27417 (not b!1105592) (not b!1105601) (not mapNonEmpty!42943) (not b!1105602) (not start!97222) (not b!1105594) (not b!1105596) (not b!1105593) (not b!1105603))
(check-sat)
