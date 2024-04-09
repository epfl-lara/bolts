; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113144 () Bool)

(assert start!113144)

(declare-fun b_free!31159 () Bool)

(declare-fun b_next!31159 () Bool)

(assert (=> start!113144 (= b_free!31159 (not b_next!31159))))

(declare-fun tp!109283 () Bool)

(declare-fun b_and!50235 () Bool)

(assert (=> start!113144 (= tp!109283 b_and!50235)))

(declare-fun b!1340814 () Bool)

(declare-fun e!763642 () Bool)

(assert (=> b!1340814 (= e!763642 (not true))))

(declare-datatypes ((V!54649 0))(
  ( (V!54650 (val!18654 Int)) )
))
(declare-datatypes ((tuple2!24160 0))(
  ( (tuple2!24161 (_1!12090 (_ BitVec 64)) (_2!12090 V!54649)) )
))
(declare-datatypes ((List!31344 0))(
  ( (Nil!31341) (Cons!31340 (h!32549 tuple2!24160) (t!45721 List!31344)) )
))
(declare-datatypes ((ListLongMap!21829 0))(
  ( (ListLongMap!21830 (toList!10930 List!31344)) )
))
(declare-fun lt!593994 () ListLongMap!21829)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9042 (ListLongMap!21829 (_ BitVec 64)) Bool)

(assert (=> b!1340814 (contains!9042 lt!593994 k!1142)))

(declare-fun zeroValue!1245 () V!54649)

(declare-datatypes ((Unit!43937 0))(
  ( (Unit!43938) )
))
(declare-fun lt!593995 () Unit!43937)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!328 ((_ BitVec 64) (_ BitVec 64) V!54649 ListLongMap!21829) Unit!43937)

(assert (=> b!1340814 (= lt!593995 (lemmaInListMapAfterAddingDiffThenInBefore!328 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593994))))

(declare-fun minValue!1245 () V!54649)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((array!91127 0))(
  ( (array!91128 (arr!44015 (Array (_ BitVec 32) (_ BitVec 64))) (size!44566 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91127)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17681 0))(
  ( (ValueCellFull!17681 (v!21300 V!54649)) (EmptyCell!17681) )
))
(declare-datatypes ((array!91129 0))(
  ( (array!91130 (arr!44016 (Array (_ BitVec 32) ValueCell!17681)) (size!44567 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91129)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun +!4736 (ListLongMap!21829 tuple2!24160) ListLongMap!21829)

(declare-fun getCurrentListMapNoExtraKeys!6459 (array!91127 array!91129 (_ BitVec 32) (_ BitVec 32) V!54649 V!54649 (_ BitVec 32) Int) ListLongMap!21829)

(declare-fun get!22251 (ValueCell!17681 V!54649) V!54649)

(declare-fun dynLambda!3773 (Int (_ BitVec 64)) V!54649)

(assert (=> b!1340814 (= lt!593994 (+!4736 (getCurrentListMapNoExtraKeys!6459 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24161 (select (arr!44015 _keys!1571) from!1960) (get!22251 (select (arr!44016 _values!1303) from!1960) (dynLambda!3773 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340815 () Bool)

(declare-fun e!763646 () Bool)

(declare-fun e!763643 () Bool)

(declare-fun mapRes!57445 () Bool)

(assert (=> b!1340815 (= e!763646 (and e!763643 mapRes!57445))))

(declare-fun condMapEmpty!57445 () Bool)

(declare-fun mapDefault!57445 () ValueCell!17681)

