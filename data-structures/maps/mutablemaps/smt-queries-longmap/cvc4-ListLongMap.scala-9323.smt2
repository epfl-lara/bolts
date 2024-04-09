; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111414 () Bool)

(assert start!111414)

(declare-fun b_free!30035 () Bool)

(declare-fun b_next!30035 () Bool)

(assert (=> start!111414 (= b_free!30035 (not b_next!30035))))

(declare-fun tp!105581 () Bool)

(declare-fun b_and!48265 () Bool)

(assert (=> start!111414 (= tp!105581 b_and!48265)))

(declare-fun res!874704 () Bool)

(declare-fun e!752074 () Bool)

(assert (=> start!111414 (=> (not res!874704) (not e!752074))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111414 (= res!874704 (validMask!0 mask!2019))))

(assert (=> start!111414 e!752074))

(declare-datatypes ((array!88615 0))(
  ( (array!88616 (arr!42777 (Array (_ BitVec 32) (_ BitVec 64))) (size!43328 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88615)

(declare-fun array_inv!32259 (array!88615) Bool)

(assert (=> start!111414 (array_inv!32259 _keys!1609)))

(assert (=> start!111414 true))

(declare-fun tp_is_empty!35855 () Bool)

(assert (=> start!111414 tp_is_empty!35855))

(declare-datatypes ((V!52909 0))(
  ( (V!52910 (val!18002 Int)) )
))
(declare-datatypes ((ValueCell!17029 0))(
  ( (ValueCellFull!17029 (v!20630 V!52909)) (EmptyCell!17029) )
))
(declare-datatypes ((array!88617 0))(
  ( (array!88618 (arr!42778 (Array (_ BitVec 32) ValueCell!17029)) (size!43329 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88617)

(declare-fun e!752073 () Bool)

(declare-fun array_inv!32260 (array!88617) Bool)

(assert (=> start!111414 (and (array_inv!32260 _values!1337) e!752073)))

(assert (=> start!111414 tp!105581))

(declare-fun mapIsEmpty!55430 () Bool)

(declare-fun mapRes!55430 () Bool)

(assert (=> mapIsEmpty!55430 mapRes!55430))

(declare-fun b!1317839 () Bool)

(declare-fun e!752075 () Bool)

(assert (=> b!1317839 (= e!752075 tp_is_empty!35855)))

(declare-fun b!1317840 () Bool)

(declare-fun res!874702 () Bool)

(assert (=> b!1317840 (=> (not res!874702) (not e!752074))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1317840 (= res!874702 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43328 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317841 () Bool)

(declare-fun res!874701 () Bool)

(assert (=> b!1317841 (=> (not res!874701) (not e!752074))))

(declare-datatypes ((List!30507 0))(
  ( (Nil!30504) (Cons!30503 (h!31712 (_ BitVec 64)) (t!44122 List!30507)) )
))
(declare-fun arrayNoDuplicates!0 (array!88615 (_ BitVec 32) List!30507) Bool)

(assert (=> b!1317841 (= res!874701 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30504))))

(declare-fun b!1317842 () Bool)

(declare-fun res!874703 () Bool)

(assert (=> b!1317842 (=> (not res!874703) (not e!752074))))

(assert (=> b!1317842 (= res!874703 (and (= (size!43329 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43328 _keys!1609) (size!43329 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317843 () Bool)

(declare-fun e!752077 () Bool)

(assert (=> b!1317843 (= e!752077 tp_is_empty!35855)))

(declare-fun b!1317844 () Bool)

(assert (=> b!1317844 (= e!752073 (and e!752075 mapRes!55430))))

(declare-fun condMapEmpty!55430 () Bool)

(declare-fun mapDefault!55430 () ValueCell!17029)

