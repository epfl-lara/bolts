; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111946 () Bool)

(assert start!111946)

(declare-fun b_free!30509 () Bool)

(declare-fun b_next!30509 () Bool)

(assert (=> start!111946 (= b_free!30509 (not b_next!30509))))

(declare-fun tp!107007 () Bool)

(declare-fun b_and!49123 () Bool)

(assert (=> start!111946 (= tp!107007 b_and!49123)))

(declare-fun b!1326087 () Bool)

(declare-fun e!755890 () Bool)

(declare-fun tp_is_empty!36329 () Bool)

(assert (=> b!1326087 (= e!755890 tp_is_empty!36329)))

(declare-fun b!1326088 () Bool)

(declare-fun res!880208 () Bool)

(declare-fun e!755886 () Bool)

(assert (=> b!1326088 (=> (not res!880208) (not e!755886))))

(declare-datatypes ((array!89525 0))(
  ( (array!89526 (arr!43231 (Array (_ BitVec 32) (_ BitVec 64))) (size!43782 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89525)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53541 0))(
  ( (V!53542 (val!18239 Int)) )
))
(declare-datatypes ((ValueCell!17266 0))(
  ( (ValueCellFull!17266 (v!20870 V!53541)) (EmptyCell!17266) )
))
(declare-datatypes ((array!89527 0))(
  ( (array!89528 (arr!43232 (Array (_ BitVec 32) ValueCell!17266)) (size!43783 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89527)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1326088 (= res!880208 (and (= (size!43783 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43782 _keys!1609) (size!43783 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326089 () Bool)

(declare-fun res!880209 () Bool)

(assert (=> b!1326089 (=> (not res!880209) (not e!755886))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326089 (= res!880209 (validKeyInArray!0 (select (arr!43231 _keys!1609) from!2000)))))

(declare-fun b!1326090 () Bool)

(assert (=> b!1326090 (= e!755886 (not true))))

(declare-datatypes ((tuple2!23680 0))(
  ( (tuple2!23681 (_1!11850 (_ BitVec 64)) (_2!11850 V!53541)) )
))
(declare-datatypes ((List!30848 0))(
  ( (Nil!30845) (Cons!30844 (h!32053 tuple2!23680) (t!44835 List!30848)) )
))
(declare-datatypes ((ListLongMap!21349 0))(
  ( (ListLongMap!21350 (toList!10690 List!30848)) )
))
(declare-fun lt!589896 () ListLongMap!21349)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8783 (ListLongMap!21349 (_ BitVec 64)) Bool)

(assert (=> b!1326090 (contains!8783 lt!589896 k!1164)))

(declare-fun zeroValue!1279 () V!53541)

(declare-datatypes ((Unit!43616 0))(
  ( (Unit!43617) )
))
(declare-fun lt!589895 () Unit!43616)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!215 ((_ BitVec 64) (_ BitVec 64) V!53541 ListLongMap!21349) Unit!43616)

(assert (=> b!1326090 (= lt!589895 (lemmaInListMapAfterAddingDiffThenInBefore!215 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589896))))

(declare-fun lt!589894 () ListLongMap!21349)

(assert (=> b!1326090 (contains!8783 lt!589894 k!1164)))

(declare-fun lt!589897 () Unit!43616)

(declare-fun minValue!1279 () V!53541)

(assert (=> b!1326090 (= lt!589897 (lemmaInListMapAfterAddingDiffThenInBefore!215 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589894))))

(declare-fun +!4605 (ListLongMap!21349 tuple2!23680) ListLongMap!21349)

(assert (=> b!1326090 (= lt!589894 (+!4605 lt!589896 (tuple2!23681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6323 (array!89525 array!89527 (_ BitVec 32) (_ BitVec 32) V!53541 V!53541 (_ BitVec 32) Int) ListLongMap!21349)

(declare-fun get!21824 (ValueCell!17266 V!53541) V!53541)

(declare-fun dynLambda!3642 (Int (_ BitVec 64)) V!53541)

(assert (=> b!1326090 (= lt!589896 (+!4605 (getCurrentListMapNoExtraKeys!6323 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23681 (select (arr!43231 _keys!1609) from!2000) (get!21824 (select (arr!43232 _values!1337) from!2000) (dynLambda!3642 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1326091 () Bool)

(declare-fun e!755887 () Bool)

(assert (=> b!1326091 (= e!755887 tp_is_empty!36329)))

(declare-fun b!1326092 () Bool)

(declare-fun e!755888 () Bool)

(declare-fun mapRes!56145 () Bool)

(assert (=> b!1326092 (= e!755888 (and e!755887 mapRes!56145))))

(declare-fun condMapEmpty!56145 () Bool)

(declare-fun mapDefault!56145 () ValueCell!17266)

