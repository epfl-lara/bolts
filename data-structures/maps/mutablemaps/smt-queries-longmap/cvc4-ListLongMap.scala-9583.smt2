; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113400 () Bool)

(assert start!113400)

(declare-fun b_free!31415 () Bool)

(declare-fun b_next!31415 () Bool)

(assert (=> start!113400 (= b_free!31415 (not b_next!31415))))

(declare-fun tp!110050 () Bool)

(declare-fun b_and!50693 () Bool)

(assert (=> start!113400 (= tp!110050 b_and!50693)))

(declare-fun b!1345433 () Bool)

(declare-fun res!892833 () Bool)

(declare-fun e!765616 () Bool)

(assert (=> b!1345433 (=> (not res!892833) (not e!765616))))

(declare-datatypes ((array!91627 0))(
  ( (array!91628 (arr!44265 (Array (_ BitVec 32) (_ BitVec 64))) (size!44816 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91627)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91627 (_ BitVec 32)) Bool)

(assert (=> b!1345433 (= res!892833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345434 () Bool)

(declare-fun res!892835 () Bool)

(assert (=> b!1345434 (=> (not res!892835) (not e!765616))))

(declare-datatypes ((V!54989 0))(
  ( (V!54990 (val!18782 Int)) )
))
(declare-fun minValue!1245 () V!54989)

(declare-fun zeroValue!1245 () V!54989)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17809 0))(
  ( (ValueCellFull!17809 (v!21428 V!54989)) (EmptyCell!17809) )
))
(declare-datatypes ((array!91629 0))(
  ( (array!91630 (arr!44266 (Array (_ BitVec 32) ValueCell!17809)) (size!44817 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91629)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24350 0))(
  ( (tuple2!24351 (_1!12185 (_ BitVec 64)) (_2!12185 V!54989)) )
))
(declare-datatypes ((List!31522 0))(
  ( (Nil!31519) (Cons!31518 (h!32727 tuple2!24350) (t!46101 List!31522)) )
))
(declare-datatypes ((ListLongMap!22019 0))(
  ( (ListLongMap!22020 (toList!11025 List!31522)) )
))
(declare-fun contains!9137 (ListLongMap!22019 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5917 (array!91627 array!91629 (_ BitVec 32) (_ BitVec 32) V!54989 V!54989 (_ BitVec 32) Int) ListLongMap!22019)

(assert (=> b!1345434 (= res!892835 (contains!9137 (getCurrentListMap!5917 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1345435 () Bool)

(declare-fun e!765620 () Bool)

(assert (=> b!1345435 (= e!765620 (not true))))

(declare-fun lt!595303 () ListLongMap!22019)

(assert (=> b!1345435 (contains!9137 lt!595303 k!1142)))

(declare-datatypes ((Unit!44065 0))(
  ( (Unit!44066) )
))
(declare-fun lt!595301 () Unit!44065)

(declare-fun lt!595302 () V!54989)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!392 ((_ BitVec 64) (_ BitVec 64) V!54989 ListLongMap!22019) Unit!44065)

(assert (=> b!1345435 (= lt!595301 (lemmaInListMapAfterAddingDiffThenInBefore!392 k!1142 (select (arr!44265 _keys!1571) from!1960) lt!595302 lt!595303))))

(declare-fun b!1345436 () Bool)

(declare-fun e!765618 () Bool)

(declare-fun e!765619 () Bool)

(declare-fun mapRes!57829 () Bool)

(assert (=> b!1345436 (= e!765618 (and e!765619 mapRes!57829))))

(declare-fun condMapEmpty!57829 () Bool)

(declare-fun mapDefault!57829 () ValueCell!17809)

