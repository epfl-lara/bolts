; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112764 () Bool)

(assert start!112764)

(declare-fun b_free!31039 () Bool)

(declare-fun b_next!31039 () Bool)

(assert (=> start!112764 (= b_free!31039 (not b_next!31039))))

(declare-fun tp!108761 () Bool)

(declare-fun b_and!50027 () Bool)

(assert (=> start!112764 (= tp!108761 b_and!50027)))

(declare-fun b!1337097 () Bool)

(declare-fun res!887403 () Bool)

(declare-fun e!761413 () Bool)

(assert (=> b!1337097 (=> (not res!887403) (not e!761413))))

(declare-datatypes ((array!90729 0))(
  ( (array!90730 (arr!43824 (Array (_ BitVec 32) (_ BitVec 64))) (size!44375 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90729)

(declare-datatypes ((List!31241 0))(
  ( (Nil!31238) (Cons!31237 (h!32446 (_ BitVec 64)) (t!45560 List!31241)) )
))
(declare-fun arrayNoDuplicates!0 (array!90729 (_ BitVec 32) List!31241) Bool)

(assert (=> b!1337097 (= res!887403 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31238))))

(declare-fun b!1337098 () Bool)

(declare-fun res!887401 () Bool)

(assert (=> b!1337098 (=> (not res!887401) (not e!761413))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337098 (= res!887401 (validKeyInArray!0 (select (arr!43824 _keys!1590) from!1980)))))

(declare-fun b!1337099 () Bool)

(declare-fun e!761412 () Bool)

(declare-fun e!761411 () Bool)

(declare-fun mapRes!57104 () Bool)

(assert (=> b!1337099 (= e!761412 (and e!761411 mapRes!57104))))

(declare-fun condMapEmpty!57104 () Bool)

(declare-datatypes ((V!54369 0))(
  ( (V!54370 (val!18549 Int)) )
))
(declare-datatypes ((ValueCell!17576 0))(
  ( (ValueCellFull!17576 (v!21188 V!54369)) (EmptyCell!17576) )
))
(declare-datatypes ((array!90731 0))(
  ( (array!90732 (arr!43825 (Array (_ BitVec 32) ValueCell!17576)) (size!44376 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90731)

(declare-fun mapDefault!57104 () ValueCell!17576)

