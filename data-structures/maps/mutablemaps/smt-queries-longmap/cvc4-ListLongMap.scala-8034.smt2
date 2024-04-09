; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99084 () Bool)

(assert start!99084)

(declare-fun b_free!24653 () Bool)

(declare-fun b_next!24653 () Bool)

(assert (=> start!99084 (= b_free!24653 (not b_next!24653))))

(declare-fun tp!86670 () Bool)

(declare-fun b_and!40169 () Bool)

(assert (=> start!99084 (= tp!86670 b_and!40169)))

(declare-fun b!1164427 () Bool)

(declare-fun res!772272 () Bool)

(declare-fun e!662091 () Bool)

(assert (=> b!1164427 (=> (not res!772272) (not e!662091))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164427 (= res!772272 (validMask!0 mask!1564))))

(declare-fun b!1164428 () Bool)

(declare-fun res!772264 () Bool)

(assert (=> b!1164428 (=> (not res!772264) (not e!662091))))

(declare-datatypes ((array!75150 0))(
  ( (array!75151 (arr!36222 (Array (_ BitVec 32) (_ BitVec 64))) (size!36759 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75150)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44037 0))(
  ( (V!44038 (val!14648 Int)) )
))
(declare-datatypes ((ValueCell!13882 0))(
  ( (ValueCellFull!13882 (v!17286 V!44037)) (EmptyCell!13882) )
))
(declare-datatypes ((array!75152 0))(
  ( (array!75153 (arr!36223 (Array (_ BitVec 32) ValueCell!13882)) (size!36760 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75152)

(assert (=> b!1164428 (= res!772264 (and (= (size!36760 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36759 _keys!1208) (size!36760 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164429 () Bool)

(declare-fun e!662090 () Bool)

(declare-fun e!662088 () Bool)

(declare-fun mapRes!45599 () Bool)

(assert (=> b!1164429 (= e!662090 (and e!662088 mapRes!45599))))

(declare-fun condMapEmpty!45599 () Bool)

(declare-fun mapDefault!45599 () ValueCell!13882)

